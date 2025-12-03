@interface TVRUINowPlayingInfoActivityItem
- (TVRUINowPlayingInfoActivityItem)initWithNowPlayingInfo:(id)info shareShow:(BOOL)show;
- (id)_shareURL;
- (id)_subtitle;
- (id)_title;
- (id)activityViewControllerLinkMetadata:(id)metadata;
@end

@implementation TVRUINowPlayingInfoActivityItem

- (TVRUINowPlayingInfoActivityItem)initWithNowPlayingInfo:(id)info shareShow:(BOOL)show
{
  infoCopy = info;
  v14.receiver = self;
  v14.super_class = TVRUINowPlayingInfoActivityItem;
  v8 = [(TVRUINowPlayingInfoActivityItem *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_nowPlayingInfo, info);
    v9->_shareShow = show;
    defaultSessionConfiguration = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
    [defaultSessionConfiguration setHTTPMaximumConnectionsPerHost:1];
    v11 = [MEMORY[0x277CCAD30] sessionWithConfiguration:defaultSessionConfiguration];
    urlSession = v9->_urlSession;
    v9->_urlSession = v11;
  }

  return v9;
}

- (id)activityViewControllerLinkMetadata:(id)metadata
{
  metadataCopy = metadata;
  v5 = objc_alloc_init(MEMORY[0x277CD46C8]);
  _shareURL = [(TVRUINowPlayingInfoActivityItem *)self _shareURL];
  [v5 setURL:_shareURL];

  v7 = objc_alloc_init(MEMORY[0x277CD4698]);
  _title = [(TVRUINowPlayingInfoActivityItem *)self _title];
  [v7 setTitle:_title];

  _subtitle = [(TVRUINowPlayingInfoActivityItem *)self _subtitle];
  [v7 setSubtitle:_subtitle];

  if ([(TVRUINowPlayingInfoActivityItem *)self shareShow])
  {
    objc_initWeak(&location, self);
    v10 = objc_alloc_init(MEMORY[0x277CCAA88]);
    imageItemProvider = self->_imageItemProvider;
    self->_imageItemProvider = v10;

    v12 = self->_imageItemProvider;
    v13 = objc_opt_class();
    v14 = v36;
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __70__TVRUINowPlayingInfoActivityItem_activityViewControllerLinkMetadata___block_invoke;
    v36[3] = &unk_279D881C8;
    objc_copyWeak(&v37, &location);
    [(NSItemProvider *)v12 registerObjectOfClass:v13 visibility:0 loadHandler:v36];
    v15 = objc_alloc(MEMORY[0x277CD46B0]);
    imageItemProvider = [(TVRUINowPlayingInfoActivityItem *)self imageItemProvider];
    v17 = [v15 initWithItemProvider:imageItemProvider properties:0 placeholderImage:0];

    [v7 setArtwork:v17];
  }

  else
  {
    nowPlayingInfo = [(TVRUINowPlayingInfoActivityItem *)self nowPlayingInfo];
    imageData = [nowPlayingInfo imageData];
    if (imageData)
    {
      v20 = imageData;
      nowPlayingInfo2 = [(TVRUINowPlayingInfoActivityItem *)self nowPlayingInfo];
      imageDataIsPlaceholder = [nowPlayingInfo2 imageDataIsPlaceholder];
      bOOLValue = [imageDataIsPlaceholder BOOLValue];

      if ((bOOLValue & 1) == 0)
      {
        v24 = objc_alloc(MEMORY[0x277CD46B0]);
        nowPlayingInfo3 = [(TVRUINowPlayingInfoActivityItem *)self nowPlayingInfo];
        imageData2 = [nowPlayingInfo3 imageData];
        v27 = [v24 initWithData:imageData2 MIMEType:@"image/png"];

        [v7 setArtwork:v27];
        goto LABEL_9;
      }
    }

    else
    {
    }

    objc_initWeak(&location, self);
    v28 = objc_alloc_init(MEMORY[0x277CCAA88]);
    v29 = self->_imageItemProvider;
    self->_imageItemProvider = v28;

    v30 = self->_imageItemProvider;
    v31 = objc_opt_class();
    v14 = v34;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __70__TVRUINowPlayingInfoActivityItem_activityViewControllerLinkMetadata___block_invoke_4;
    v34[3] = &unk_279D881C8;
    objc_copyWeak(&v35, &location);
    [(NSItemProvider *)v30 registerObjectOfClass:v31 visibility:0 loadHandler:v34];
    v32 = [objc_alloc(MEMORY[0x277CD46B0]) initWithItemProvider:self->_imageItemProvider properties:0 placeholderImage:0];
    [v7 setArtwork:v32];
  }

  objc_destroyWeak(v14 + 4);
  objc_destroyWeak(&location);
LABEL_9:
  [v5 setSpecialization:v7];

  return v5;
}

uint64_t __70__TVRUINowPlayingInfoActivityItem_activityViewControllerLinkMetadata___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_alloc_init(MEMORY[0x277D6C540]);
  [WeakRetained setMediaInfoRequest:v5];

  v6 = [WeakRetained mediaInfoRequest];
  v7 = [WeakRetained nowPlayingInfo];
  v8 = [v7 metadata];
  v9 = [v8 showID];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70__TVRUINowPlayingInfoActivityItem_activityViewControllerLinkMetadata___block_invoke_2;
  v12[3] = &unk_279D881A0;
  v12[4] = WeakRetained;
  v13 = v3;
  v10 = v3;
  [v6 requestForCanonicalID:v9 completion:v12];

  return 0;
}

void __70__TVRUINowPlayingInfoActivityItem_activityViewControllerLinkMetadata___block_invoke_2(uint64_t a1, void *a2)
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
    v11[2] = __70__TVRUINowPlayingInfoActivityItem_activityViewControllerLinkMetadata___block_invoke_3;
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

void __70__TVRUINowPlayingInfoActivityItem_activityViewControllerLinkMetadata___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, void *a4)
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

uint64_t __70__TVRUINowPlayingInfoActivityItem_activityViewControllerLinkMetadata___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained nowPlayingInfo];
  v6 = [v5 metadata];
  v7 = [v6 imageURLTemplate];

  if (v7)
  {
    v8 = MEMORY[0x277D6C500];
    v9 = [WeakRetained nowPlayingInfo];
    v10 = [v9 metadata];
    v11 = [v10 imageURLTemplate];
    v12 = [v8 imageTemplateWithString:v11];

    v13 = [v12 urlForSize:{384.0, 216.0}];
    v14 = [WeakRetained urlSession];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __70__TVRUINowPlayingInfoActivityItem_activityViewControllerLinkMetadata___block_invoke_5;
    v17[3] = &unk_279D88178;
    v18 = v3;
    v15 = [v14 dataTaskWithURL:v13 completionHandler:v17];

    [v15 resume];
  }

  else
  {
    (*(v3 + 2))(v3, 0, 0);
  }

  return 0;
}

void __70__TVRUINowPlayingInfoActivityItem_activityViewControllerLinkMetadata___block_invoke_5(uint64_t a1, void *a2, uint64_t a3, void *a4)
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

- (id)_shareURL
{
  shareShow = [(TVRUINowPlayingInfoActivityItem *)self shareShow];
  nowPlayingInfo = [(TVRUINowPlayingInfoActivityItem *)self nowPlayingInfo];
  metadata = [nowPlayingInfo metadata];
  v6 = metadata;
  if (shareShow)
  {
    [metadata showProductPageURL];
  }

  else
  {
    [metadata productPageURL];
  }
  v7 = ;

  return v7;
}

- (id)_title
{
  nowPlayingInfo = [(TVRUINowPlayingInfoActivityItem *)self nowPlayingInfo];
  metadata = [nowPlayingInfo metadata];
  title = [metadata title];

  return title;
}

- (id)_subtitle
{
  nowPlayingInfo = [(TVRUINowPlayingInfoActivityItem *)self nowPlayingInfo];
  metadata = [nowPlayingInfo metadata];
  if ([metadata kind] == 2)
  {
    shareShow = [(TVRUINowPlayingInfoActivityItem *)self shareShow];

    if (shareShow)
    {
      v6 = 0;
      goto LABEL_7;
    }

    v16 = MEMORY[0x277CCACA8];
    nowPlayingInfo = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    metadata = [nowPlayingInfo localizedStringForKey:@"TVRUIEpisodeShareSubtitle" value:&stru_287E6AEF8 table:@"Localizable"];
    nowPlayingInfo2 = [(TVRUINowPlayingInfoActivityItem *)self nowPlayingInfo];
    metadata2 = [nowPlayingInfo2 metadata];
    title = [metadata2 title];
    nowPlayingInfo3 = [(TVRUINowPlayingInfoActivityItem *)self nowPlayingInfo];
    metadata3 = [nowPlayingInfo3 metadata];
    seasonNumber = [metadata3 seasonNumber];
    nowPlayingInfo4 = [(TVRUINowPlayingInfoActivityItem *)self nowPlayingInfo];
    metadata4 = [nowPlayingInfo4 metadata];
    episodeNumber = [metadata4 episodeNumber];
    v6 = [v16 localizedStringWithFormat:metadata, title, seasonNumber, episodeNumber];
  }

  else
  {
    v6 = 0;
  }

LABEL_7:

  return v6;
}

@end