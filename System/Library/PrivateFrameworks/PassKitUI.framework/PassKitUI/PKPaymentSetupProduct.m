@interface PKPaymentSetupProduct
@end

@implementation PKPaymentSetupProduct

void __63__PKPaymentSetupProduct_PKUIUtilities__digitalCardCachedImage___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v12 = v4;
  if (v4)
  {
    v5 = v4;
  }

  else if (*(a1 + 32) || ([*(a1 + 40) paymentOptions], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "firstObject"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "cardType"), v7, v6, v8 != 103))
  {
    v5 = PKUIDynamicImageNamed(@"Placeholder_transit_card", @"Placeholder_transit_card_Dark");
  }

  else
  {
    v5 = PKUIImageNamed(@"SuicaCard");
  }

  v9 = v5;
  v10 = [*(a1 + 40) imageAssets];
  [v10 setDigitalCardImage:{objc_msgSend(v9, "CGImage")}];

  v11 = *(a1 + 48);
  if (v11)
  {
    (*(v11 + 16))(v11, 1, v12);
  }
}

void __63__PKPaymentSetupProduct_PKUIUtilities__plasticCardCachedImage___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v12 = v4;
  if (v4)
  {
    v5 = v4;
  }

  else if (*(a1 + 32) || ([*(a1 + 40) paymentOptions], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "firstObject"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "cardType"), v7, v6, v8 != 103))
  {
    v5 = PKUIDynamicImageNamed(@"Placeholder_transit_card", @"Placeholder_transit_card_Dark");
  }

  else
  {
    v5 = PKUIImageNamed(@"SuicaCard");
  }

  v9 = v5;
  v10 = [*(a1 + 40) imageAssets];
  [v10 setPlasticCardImage:{objc_msgSend(v9, "CGImage")}];

  v11 = *(a1 + 48);
  if (v11)
  {
    (*(v11 + 16))(v11, 1, v12);
  }
}

void __79__PKPaymentSetupProduct_PKUIUtilities__thumbnailCachedImageForSize_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  if (v7)
  {
    v5 = [*(a1 + 32) imageAssets];
    [v5 setThumbnailImage:{objc_msgSend(v7, "CGImage")}];
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, a2, v7);
  }
}

void __56__PKPaymentSetupProduct_PKUIUtilities__logoCachedImage___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    v4 = [*(a1 + 32) imageAssets];
    [v4 setLogoImage:{objc_msgSend(v6, "CGImage")}];
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, 1, v6);
  }
}

@end