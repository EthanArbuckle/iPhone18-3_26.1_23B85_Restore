@interface _UISystemBannerRequest
- (BOOL)isEqual:(id)a3;
- (_UISystemBannerRequest)init;
- (_UISystemBannerRequest)initWithBSXPCCoder:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)postBanner;
- (void)verifyParameters;
@end

@implementation _UISystemBannerRequest

- (_UISystemBannerRequest)init
{
  v5.receiver = self;
  v5.super_class = _UISystemBannerRequest;
  v2 = [(_UISystemBannerRequest *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(_UISystemBannerRequest *)v2 setBannerTimeoutDuration:2.5];
  }

  return v3;
}

- (void)verifyParameters
{
  v4 = [(_UISystemBannerRequest *)self primaryTitleText];

  v5 = [(_UISystemBannerRequest *)self secondaryTitleText];
  v6 = v4 | v5;

  if (!v6)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"_UISystemBannerRequest.m" lineNumber:34 description:@"System banner request must contain some text"];
  }
}

- (void)postBanner
{
  [(_UISystemBannerRequest *)self verifyParameters];
  v3 = objc_opt_new();
  overlayService = self->_overlayService;
  self->_overlayService = v3;

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36___UISystemBannerRequest_postBanner__block_invoke;
  v6[3] = &unk_1E70F3590;
  v6[4] = self;
  v5 = [_UIOBannerRequestAction actionForSystemBannerRequest:v6 completionHandler:?];
  [(_UIOverlayService *)self->_overlayService sendOverlayAction:v5];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(_UISystemBannerRequest *)self primaryTitleText];
    v7 = [v5 primaryTitleText];
    v8 = v6;
    v9 = v7;
    v10 = v9;
    if (v8 == v9)
    {
    }

    else
    {
      LOBYTE(v11) = 0;
      v12 = v9;
      v13 = v8;
      if (!v8 || !v9)
      {
LABEL_15:

LABEL_16:
        goto LABEL_17;
      }

      v11 = [v8 isEqual:v9];

      if (!v11)
      {
        goto LABEL_16;
      }
    }

    v14 = [(_UISystemBannerRequest *)self secondaryTitleText];
    v15 = [v5 secondaryTitleText];
    v13 = v14;
    v16 = v15;
    v12 = v16;
    if (v13 == v16)
    {
      LOBYTE(v11) = 1;
    }

    else
    {
      LOBYTE(v11) = 0;
      if (v13 && v16)
      {
        LOBYTE(v11) = [v13 isEqual:v16];
      }
    }

    goto LABEL_15;
  }

  LOBYTE(v11) = 0;
LABEL_17:

  return v11;
}

- (_UISystemBannerRequest)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(_UISystemBannerRequest *)self init];
  if (v5)
  {
    v6 = [v4 decodeStringForKey:@"primaryText"];
    [(_UISystemBannerRequest *)v5 setPrimaryTitleText:v6];

    v7 = [v4 decodeStringForKey:@"secondaryText"];
    [(_UISystemBannerRequest *)v5 setSecondaryTitleText:v7];

    [v4 decodeDoubleForKey:@"bannerTimeoutDuration"];
    [(_UISystemBannerRequest *)v5 setBannerTimeoutDuration:?];
    [v4 decodeDoubleForKey:@"preferredMinimumBannerWidth"];
    [(_UISystemBannerRequest *)v5 setPreferredMinimumBannerWidth:?];
    [v4 decodeDoubleForKey:@"preferredMaximumBannerWidth"];
    [(_UISystemBannerRequest *)v5 setPreferredMaximumBannerWidth:?];
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v6 = a3;
  v4 = [(_UISystemBannerRequest *)self primaryTitleText];
  [v6 encodeObject:v4 forKey:@"primaryText"];

  v5 = [(_UISystemBannerRequest *)self secondaryTitleText];
  [v6 encodeObject:v5 forKey:@"secondaryText"];

  [(_UISystemBannerRequest *)self bannerTimeoutDuration];
  [v6 encodeDouble:@"bannerTimeoutDuration" forKey:?];
  [(_UISystemBannerRequest *)self preferredMinimumBannerWidth];
  [v6 encodeDouble:@"preferredMinimumBannerWidth" forKey:?];
  [(_UISystemBannerRequest *)self preferredMaximumBannerWidth];
  [v6 encodeDouble:@"preferredMaximumBannerWidth" forKey:?];
}

@end