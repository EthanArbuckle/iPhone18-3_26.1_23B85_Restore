@interface PKPaymentRemoteInstrumentThumbnailView
- (PKPaymentRemoteInstrumentThumbnailView)initWithRemotePaymentInstrument:(id)instrument thumbnailSize:(CGSize)size;
- (void)_prepareConstraints;
- (void)_updateCardImage:(CGImage *)image size:(CGSize)size;
@end

@implementation PKPaymentRemoteInstrumentThumbnailView

- (PKPaymentRemoteInstrumentThumbnailView)initWithRemotePaymentInstrument:(id)instrument thumbnailSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  instrumentCopy = instrument;
  v42.receiver = self;
  v42.super_class = PKPaymentRemoteInstrumentThumbnailView;
  v8 = [(PKPaymentRemoteInstrumentThumbnailView *)&v42 init];
  if (!v8)
  {
    goto LABEL_29;
  }

  v9 = objc_alloc(MEMORY[0x277D755E8]);
  v10 = *MEMORY[0x277CBF3A0];
  v11 = *(MEMORY[0x277CBF3A0] + 8);
  v12 = *(MEMORY[0x277CBF3A0] + 16);
  v13 = *(MEMORY[0x277CBF3A0] + 24);
  v14 = [v9 initWithFrame:{*MEMORY[0x277CBF3A0], v11, v12, v13}];
  placeholderImageView = v8->_placeholderImageView;
  v8->_placeholderImageView = v14;

  v16 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v10, v11, v12, v13}];
  cardImageView = v8->_cardImageView;
  v8->_cardImageView = v16;

  v18 = 1;
  [(UIImageView *)v8->_cardImageView setContentMode:1];
  primaryPaymentApplication = [instrumentCopy primaryPaymentApplication];
  paymentNetworkIdentifier = [primaryPaymentApplication paymentNetworkIdentifier];
  v21 = 0;
  if (paymentNetworkIdentifier <= 11)
  {
    if (paymentNetworkIdentifier <= 2)
    {
      if (paymentNetworkIdentifier == 1)
      {
        v18 = 0;
        v21 = @"AmericanExpressRemoteCard";
      }

      else if (paymentNetworkIdentifier == 2)
      {
        v18 = 0;
        v21 = @"DiscoverRemoteCard";
      }

      goto LABEL_22;
    }

    if (paymentNetworkIdentifier == 3)
    {
      v18 = 0;
      v21 = @"MastercardRemoteCard";
      goto LABEL_22;
    }

    if (paymentNetworkIdentifier != 4)
    {
      if (paymentNetworkIdentifier == 11)
      {
        v18 = 0;
        v21 = @"ChinaUnionPayRemoteCard";
      }

      goto LABEL_22;
    }

    goto LABEL_17;
  }

  if (paymentNetworkIdentifier <= 15)
  {
    switch(paymentNetworkIdentifier)
    {
      case 12:
        v18 = 0;
        v21 = @"EftposRemoteCard";
        break;
      case 13:
        v18 = 0;
        v21 = @"InteracRemoteCard";
        break;
      case 15:
        v18 = 0;
        v21 = @"MaestroRemoteCard";
        break;
    }

    goto LABEL_22;
  }

  if ((paymentNetworkIdentifier - 16) < 2)
  {
LABEL_17:
    v18 = 0;
    v21 = @"VisaRemoteCard";
  }

LABEL_22:
  PKScreenScale();
  v23 = llround(width * v22);
  v24 = llround(height * v22);
  v25 = MEMORY[0x277D38240];
  manifestHash = [instrumentCopy manifestHash];
  hexEncoding = [manifestHash hexEncoding];
  v28 = [v25 thumbnailCachePathForManifestHash:hexEncoding size:0 planningToWrite:{v23, v24}];

  v29 = [objc_alloc(MEMORY[0x277D755B8]) initWithContentsOfFile:v28];
  if (v29)
  {
    cardImageView = [(PKPaymentRemoteInstrumentThumbnailView *)v8 cardImageView];
    [cardImageView setImage:v29];
  }

  else
  {
    if (v18)
    {
      cardImageView = 0;
    }

    else
    {
      v31 = MEMORY[0x277D755B8];
      v32 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      cardImageView = [v31 imageNamed:v21 inBundle:v32 compatibleWithTraitCollection:0];
    }

    cardImageView2 = [(PKPaymentRemoteInstrumentThumbnailView *)v8 cardImageView];
    [cardImageView2 setImage:cardImageView];
  }

  objc_initWeak(&location, v8);
  mEMORY[0x277D37E40] = [MEMORY[0x277D37E40] sharedService];
  v36 = MEMORY[0x277D85DD0];
  v37 = 3221225472;
  v38 = __88__PKPaymentRemoteInstrumentThumbnailView_initWithRemotePaymentInstrument_thumbnailSize___block_invoke;
  v39 = &unk_279A00380;
  objc_copyWeak(v40, &location);
  v40[1] = *&width;
  v40[2] = *&height;
  [mEMORY[0x277D37E40] requestInstrumentThumbnail:instrumentCopy forRemoteDevice:0 size:&v36 completion:{v23, v24}];

  [(PKPaymentRemoteInstrumentThumbnailView *)v8 addSubview:v8->_cardImageView, v36, v37, v38, v39];
  [(PKPaymentRemoteInstrumentThumbnailView *)v8 _prepareConstraints];
  objc_destroyWeak(v40);
  objc_destroyWeak(&location);

LABEL_29:
  return v8;
}

void __88__PKPaymentRemoteInstrumentThumbnailView_initWithRemotePaymentInstrument_thumbnailSize___block_invoke(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __88__PKPaymentRemoteInstrumentThumbnailView_initWithRemotePaymentInstrument_thumbnailSize___block_invoke_2;
  v4[3] = &unk_279A00358;
  objc_copyWeak(v5, (a1 + 32));
  v5[1] = cf;
  v6 = *(a1 + 40);
  dispatch_async(MEMORY[0x277D85CD0], v4);
  objc_destroyWeak(v5);
}

void __88__PKPaymentRemoteInstrumentThumbnailView_initWithRemotePaymentInstrument_thumbnailSize___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateCardImage:*(a1 + 40) size:{*(a1 + 48), *(a1 + 56)}];

  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

- (void)_prepareConstraints
{
  [(PKPaymentRemoteInstrumentThumbnailView *)self setTranslatesAutoresizingMaskIntoConstraints:0];
  cardImageView = [(PKPaymentRemoteInstrumentThumbnailView *)self cardImageView];
  [cardImageView setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = MEMORY[0x277CCAAD0];
  cardImageView2 = [(PKPaymentRemoteInstrumentThumbnailView *)self cardImageView];
  v6 = [v4 constraintWithItem:cardImageView2 attribute:7 relatedBy:0 toItem:self attribute:7 multiplier:1.0 constant:0.0];
  [v6 setActive:1];

  v7 = MEMORY[0x277CCAAD0];
  cardImageView3 = [(PKPaymentRemoteInstrumentThumbnailView *)self cardImageView];
  v9 = [v7 constraintWithItem:cardImageView3 attribute:8 relatedBy:0 toItem:self attribute:8 multiplier:1.0 constant:0.0];
  [v9 setActive:1];

  v10 = MEMORY[0x277CCAAD0];
  cardImageView4 = [(PKPaymentRemoteInstrumentThumbnailView *)self cardImageView];
  v12 = [v10 constraintWithItem:cardImageView4 attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
  [v12 setActive:1];

  v13 = MEMORY[0x277CCAAD0];
  cardImageView5 = [(PKPaymentRemoteInstrumentThumbnailView *)self cardImageView];
  v14 = [v13 constraintWithItem:cardImageView5 attribute:10 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:0.0];
  [v14 setActive:1];
}

- (void)_updateCardImage:(CGImage *)image size:(CGSize)size
{
  v6 = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:image];
  cardImageView = [(PKPaymentRemoteInstrumentThumbnailView *)self cardImageView];
  [cardImageView setImage:v6];

  [(PKPaymentRemoteInstrumentThumbnailView *)self setNeedsLayout];
}

@end