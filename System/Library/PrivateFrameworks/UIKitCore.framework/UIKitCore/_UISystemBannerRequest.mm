@interface _UISystemBannerRequest
- (BOOL)isEqual:(id)equal;
- (_UISystemBannerRequest)init;
- (_UISystemBannerRequest)initWithBSXPCCoder:(id)coder;
- (void)encodeWithBSXPCCoder:(id)coder;
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
  primaryTitleText = [(_UISystemBannerRequest *)self primaryTitleText];

  secondaryTitleText = [(_UISystemBannerRequest *)self secondaryTitleText];
  v6 = primaryTitleText | secondaryTitleText;

  if (!v6)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UISystemBannerRequest.m" lineNumber:34 description:@"System banner request must contain some text"];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    primaryTitleText = [(_UISystemBannerRequest *)self primaryTitleText];
    primaryTitleText2 = [v5 primaryTitleText];
    v8 = primaryTitleText;
    v9 = primaryTitleText2;
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

    secondaryTitleText = [(_UISystemBannerRequest *)self secondaryTitleText];
    secondaryTitleText2 = [v5 secondaryTitleText];
    v13 = secondaryTitleText;
    v16 = secondaryTitleText2;
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

- (_UISystemBannerRequest)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(_UISystemBannerRequest *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeStringForKey:@"primaryText"];
    [(_UISystemBannerRequest *)v5 setPrimaryTitleText:v6];

    v7 = [coderCopy decodeStringForKey:@"secondaryText"];
    [(_UISystemBannerRequest *)v5 setSecondaryTitleText:v7];

    [coderCopy decodeDoubleForKey:@"bannerTimeoutDuration"];
    [(_UISystemBannerRequest *)v5 setBannerTimeoutDuration:?];
    [coderCopy decodeDoubleForKey:@"preferredMinimumBannerWidth"];
    [(_UISystemBannerRequest *)v5 setPreferredMinimumBannerWidth:?];
    [coderCopy decodeDoubleForKey:@"preferredMaximumBannerWidth"];
    [(_UISystemBannerRequest *)v5 setPreferredMaximumBannerWidth:?];
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  primaryTitleText = [(_UISystemBannerRequest *)self primaryTitleText];
  [coderCopy encodeObject:primaryTitleText forKey:@"primaryText"];

  secondaryTitleText = [(_UISystemBannerRequest *)self secondaryTitleText];
  [coderCopy encodeObject:secondaryTitleText forKey:@"secondaryText"];

  [(_UISystemBannerRequest *)self bannerTimeoutDuration];
  [coderCopy encodeDouble:@"bannerTimeoutDuration" forKey:?];
  [(_UISystemBannerRequest *)self preferredMinimumBannerWidth];
  [coderCopy encodeDouble:@"preferredMinimumBannerWidth" forKey:?];
  [(_UISystemBannerRequest *)self preferredMaximumBannerWidth];
  [coderCopy encodeDouble:@"preferredMaximumBannerWidth" forKey:?];
}

@end