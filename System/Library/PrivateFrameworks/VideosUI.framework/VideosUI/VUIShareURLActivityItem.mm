@interface VUIShareURLActivityItem
- (VUIShareURLActivityItem)initWithURL:(id)l title:(id)title subtitle:(id)subtitle isMusicItem:(BOOL)item;
- (id)activityViewControllerLinkPresentationMetadata:(id)metadata;
- (id)copyWithZone:(_NSZone *)zone;
- (void)cancel;
- (void)fetch;
- (void)setMetadataTitle;
@end

@implementation VUIShareURLActivityItem

- (VUIShareURLActivityItem)initWithURL:(id)l title:(id)title subtitle:(id)subtitle isMusicItem:(BOOL)item
{
  lCopy = l;
  titleCopy = title;
  subtitleCopy = subtitle;
  v19.receiver = self;
  v19.super_class = VUIShareURLActivityItem;
  v14 = [(VUIShareURLActivityItem *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_shareURL, l);
    objc_storeStrong(&v15->_title, title);
    objc_storeStrong(&v15->_subtitle, subtitle);
    v15->_isMusicItem = item;
    v16 = objc_alloc_init(MEMORY[0x1E696ECA0]);
    metadata = v15->_metadata;
    v15->_metadata = v16;

    [(LPLinkMetadata *)v15->_metadata setURL:v15->_shareURL];
    [(VUIShareURLActivityItem *)v15 setMetadataTitle];
  }

  return v15;
}

- (void)fetch
{
  v3 = objc_alloc_init(MEMORY[0x1E696ECE0]);
  [v3 setShouldFetchSubresources:1];
  objc_initWeak(&location, self);
  shareURL = self->_shareURL;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __32__VUIShareURLActivityItem_fetch__block_invoke;
  v8[3] = &unk_1E87326F0;
  objc_copyWeak(&v10, &location);
  v5 = v3;
  v9 = v5;
  [(LPMetadataProvider *)v5 startFetchingMetadataForURL:shareURL completionHandler:v8];
  provider = self->_provider;
  self->_provider = v5;
  v7 = v5;

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __32__VUIShareURLActivityItem_fetch__block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[6];
    if (*(a1 + 32) == v6)
    {
      WeakRetained[6] = 0;

      objc_storeStrong(v5 + 8, a2);
      [v5 setMetadataTitle];
      v7 = [MEMORY[0x1E696AD80] notificationWithName:@"UpdateActivityItem" object:0];
      v8 = [MEMORY[0x1E696AD88] defaultCenter];
      [v8 postNotification:v7];
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  shareURL = self->_shareURL;
  title = self->_title;
  subtitle = self->_subtitle;
  isMusicItem = self->_isMusicItem;

  return [v4 initWithURL:shareURL title:title subtitle:subtitle isMusicItem:isMusicItem];
}

- (void)cancel
{
  provider = self->_provider;
  if (provider)
  {
    [(LPMetadataProvider *)provider cancel];
  }
}

- (id)activityViewControllerLinkPresentationMetadata:(id)metadata
{
  if (!self->_metadata)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696ECA0]);
    metadata = self->_metadata;
    self->_metadata = v4;

    [(LPLinkMetadata *)self->_metadata setURL:self->_shareURL];
  }

  [(VUIShareURLActivityItem *)self setMetadataTitle];
  v6 = self->_metadata;

  return v6;
}

- (void)setMetadataTitle
{
  [(LPLinkMetadata *)self->_metadata setTitle:self->_title];
  [(LPLinkMetadata *)self->_metadata setSummary:self->_subtitle];
  isMusicItem = self->_isMusicItem;
  specialization = [(LPLinkMetadata *)self->_metadata specialization];
  if (isMusicItem)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      specialization2 = [(LPLinkMetadata *)self->_metadata specialization];
    }

    else
    {
      specialization2 = objc_alloc_init(MEMORY[0x1E696ED50]);
    }

    v9 = specialization2;
    [specialization2 setName:self->_title];
  }

  else
  {
    objc_opt_class();
    v7 = objc_opt_isKindOfClass();

    if (v7)
    {
      specialization3 = [(LPLinkMetadata *)self->_metadata specialization];
    }

    else
    {
      specialization3 = objc_alloc_init(MEMORY[0x1E696EC30]);
    }

    v9 = specialization3;
    [specialization3 setTitle:self->_title];
  }

  [v9 setSubtitle:self->_subtitle];
  [(LPLinkMetadata *)self->_metadata setSpecialization:v9];
}

@end