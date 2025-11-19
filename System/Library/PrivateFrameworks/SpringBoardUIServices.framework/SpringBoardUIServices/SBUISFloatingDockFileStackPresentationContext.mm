@interface SBUISFloatingDockFileStackPresentationContext
+ (id)fileStackRequestDescription:(int64_t)a3;
- (CGRect)anchorFrame;
- (CGRect)dockFrame;
- (CGSize)iconImageInfoSize;
- (SBUISFloatingDockFileStackPresentationContext)initWithContext:(id)a3;
- (SBUISFloatingDockFileStackPresentationContext)initWithContextIdentifier:(id)a3;
- (SBUISFloatingDockFileStackPresentationContext)initWithFileStackIconIdentifier:(id)a3;
- (SBUISFloatingDockFileStackPresentationContext)initWithFileStackIconIdentifier:(id)a3 request:(int64_t)a4;
- (SBUISFloatingDockFileStackPresentationContext)initWithFileStackPresentationContextIdentifier:(id)a3 iconIdentifier:(id)a4 url:(id)a5 sortingBy:(id)a6 sortingOrderAscending:(BOOL)a7 displayMode:(id)a8 anchorFrame:(CGRect)a9 dockFrame:(CGRect)a10 sourceLayerRenderId:(id)a11 sourceContextId:(id)a12 openIndicatorLayerRenderId:(id)a13 openIndicatorContextId:(id)a14 iconImageInfoSize:(CGSize)a15 iconImageInfoScale:(id)a16 iconImageInfoContinuousCornerRadius:(id)a17 request:(int64_t)a18;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation SBUISFloatingDockFileStackPresentationContext

- (SBUISFloatingDockFileStackPresentationContext)initWithContextIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SBUISFloatingDockFileStackPresentationContext *)self iconIdentifier];
  v6 = [MEMORY[0x1E695DFF8] URLWithString:@"/DownloadNotSentinel"];
  v7 = [(SBUISFloatingDockFileStackPresentationContext *)self initWithFileStackPresentationContextIdentifier:v4 iconIdentifier:v5 url:v6 sortingBy:@"FileName" sortingOrderAscending:1 displayMode:@"FanOut" anchorFrame:*MEMORY[0x1E695F058] dockFrame:*(MEMORY[0x1E695F058] + 8) request:*(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24), *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24), 300];

  return v7;
}

- (SBUISFloatingDockFileStackPresentationContext)initWithFileStackIconIdentifier:(id)a3
{
  v4 = MEMORY[0x1E696AFB0];
  v5 = a3;
  v6 = [v4 UUID];
  v7 = [v6 UUIDString];
  v8 = [MEMORY[0x1E695DFF8] URLWithString:@"/DownloadNotSentinel"];
  v9 = [(SBUISFloatingDockFileStackPresentationContext *)self initWithFileStackPresentationContextIdentifier:v7 iconIdentifier:v5 url:v8 sortingBy:@"FileName" sortingOrderAscending:1 displayMode:@"FanOut" anchorFrame:*MEMORY[0x1E695F058] dockFrame:*(MEMORY[0x1E695F058] + 8) request:*(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24), *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24), 201];

  return v9;
}

- (SBUISFloatingDockFileStackPresentationContext)initWithFileStackIconIdentifier:(id)a3 request:(int64_t)a4
{
  v6 = MEMORY[0x1E696AFB0];
  v7 = a3;
  v8 = [v6 UUID];
  v9 = [v8 UUIDString];
  v10 = [MEMORY[0x1E695DFF8] URLWithString:@"/DownloadNotSentinel"];
  v11 = [(SBUISFloatingDockFileStackPresentationContext *)self initWithFileStackPresentationContextIdentifier:v9 iconIdentifier:v7 url:v10 sortingBy:@"FileName" sortingOrderAscending:1 displayMode:@"FanOut" anchorFrame:*MEMORY[0x1E695F058] dockFrame:*(MEMORY[0x1E695F058] + 8) request:*(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24), *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24), a4];

  return v11;
}

- (SBUISFloatingDockFileStackPresentationContext)initWithContext:(id)a3
{
  v3 = a3;
  v39 = [v3 uuid];
  v34 = [v3 iconIdentifier];
  v4 = [v3 url];
  v5 = [v3 sortingBy];
  v36 = [v3 sortingOrderAscending];
  v35 = [v3 displayMode];
  [v3 anchorFrame];
  v32 = v7;
  v33 = v6;
  v9 = v8;
  v11 = v10;
  [v3 dockFrame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v31 = [v3 sourceLayerRenderId];
  v20 = [v3 sourceContextId];
  v21 = [v3 openIndicatorLayerRenderId];
  v22 = [v3 openIndicatorContextId];
  [v3 iconImageInfoSize];
  v24 = v23;
  v26 = v25;
  v27 = [v3 iconImageInfoScale];
  v28 = [v3 iconImageInfoContinuousCornerRadius];
  v29 = [v3 request];

  v38 = [(SBUISFloatingDockFileStackPresentationContext *)self initWithFileStackPresentationContextIdentifier:v39 iconIdentifier:v34 url:v4 sortingBy:v5 sortingOrderAscending:v36 displayMode:v35 anchorFrame:v33 dockFrame:v32 sourceLayerRenderId:v9 sourceContextId:v11 openIndicatorLayerRenderId:v13 openIndicatorContextId:v15 iconImageInfoSize:v17 iconImageInfoScale:v19 iconImageInfoContinuousCornerRadius:v31 request:v20, v21, v22, v24, v26, v27, v28, v29];
  return v38;
}

- (SBUISFloatingDockFileStackPresentationContext)initWithFileStackPresentationContextIdentifier:(id)a3 iconIdentifier:(id)a4 url:(id)a5 sortingBy:(id)a6 sortingOrderAscending:(BOOL)a7 displayMode:(id)a8 anchorFrame:(CGRect)a9 dockFrame:(CGRect)a10 sourceLayerRenderId:(id)a11 sourceContextId:(id)a12 openIndicatorLayerRenderId:(id)a13 openIndicatorContextId:(id)a14 iconImageInfoSize:(CGSize)a15 iconImageInfoScale:(id)a16 iconImageInfoContinuousCornerRadius:(id)a17 request:(int64_t)a18
{
  height = a10.size.height;
  width = a10.size.width;
  y = a10.origin.y;
  x = a10.origin.x;
  v25 = a9.size.height;
  v26 = a9.size.width;
  v27 = a9.origin.y;
  v28 = a9.origin.x;
  v29 = a3;
  v30 = a4;
  v63 = a5;
  v31 = a6;
  v32 = a8;
  v33 = a11;
  v34 = a12;
  v35 = a13;
  v36 = a14;
  v37 = v31;
  v62 = a16;
  v38 = a17;
  v64.receiver = self;
  v64.super_class = SBUISFloatingDockFileStackPresentationContext;
  v39 = [(SBUISFloatingDockFileStackPresentationContext *)&v64 init];
  if (v39)
  {
    v40 = [v29 copy];
    uuid = v39->_uuid;
    v39->_uuid = v40;

    v42 = [v30 copy];
    iconIdentifier = v39->_iconIdentifier;
    v39->_iconIdentifier = v42;

    v44 = [v63 copy];
    url = v39->_url;
    v39->_url = v44;

    v46 = [v37 copy];
    sortingBy = v39->_sortingBy;
    v39->_sortingBy = v46;

    v39->_sortingOrderAscending = a7;
    v48 = [v32 copy];
    displayMode = v39->_displayMode;
    v39->_displayMode = v48;

    v39->_anchorFrame.origin.x = v28;
    v39->_anchorFrame.origin.y = v27;
    v39->_anchorFrame.size.width = v26;
    v39->_anchorFrame.size.height = v25;
    v39->_dockFrame.origin.x = x;
    v39->_dockFrame.origin.y = y;
    v39->_dockFrame.size.width = width;
    v39->_dockFrame.size.height = height;
    v50 = [v33 copy];
    sourceLayerRenderId = v39->_sourceLayerRenderId;
    v39->_sourceLayerRenderId = v50;

    v52 = [v34 copy];
    sourceContextId = v39->_sourceContextId;
    v39->_sourceContextId = v52;

    v54 = [v35 copy];
    openIndicatorLayerRenderId = v39->_openIndicatorLayerRenderId;
    v39->_openIndicatorLayerRenderId = v54;

    v56 = [v36 copy];
    openIndicatorContextId = v39->_openIndicatorContextId;
    v39->_openIndicatorContextId = v56;

    v39->_iconImageInfoSize = a15;
    objc_storeStrong(&v39->_iconImageInfoScale, a16);
    objc_storeStrong(&v39->_iconImageInfoContinuousCornerRadius, a17);
    v39->_request = a18;
  }

  return v39;
}

+ (id)fileStackRequestDescription:(int64_t)a3
{
  if (a3 <= 106)
  {
    if (a3 <= 102)
    {
      if (a3 != 100)
      {
        if (a3 == 101)
        {
          return @"SBUISFloatingDockFileStackRequestCloseFromHost";
        }

        if (a3 == 102)
        {
          return @"SBUISFloatingDockFileStackRequestIconAddedFromHost";
        }

        return @"Unknown request";
      }

      return @"SBUISFloatingDockFileStackRequestOpenFromHost";
    }

    else if (a3 > 104)
    {
      if (a3 == 105)
      {
        return @"SBUISFloatingDockFileStackRequestFinishDownloadAnimationDidEndFromHost";
      }

      else
      {
        return @"SBUISFloatingDockFileStackRequestOpenWithoutAnimationFromHost";
      }
    }

    else if (a3 == 103)
    {
      return @"SBUISFloatingDockFileStackRequestIconRemovedFromHost";
    }

    else
    {
      return @"SBUISFloatingDockFileStackRequestFinishDownloadAnimationWillBeginFromHost";
    }
  }

  else
  {
    if (a3 > 202)
    {
      if (a3 > 300)
      {
        if (a3 == 301)
        {
          return @"SBUISFloatingDockFileStackRequestAcknowledgeFinishOpeningAnimationFromClient";
        }

        if (a3 == 302)
        {
          return @"SBUISFloatingDockFileStackRequestAcknowledgeFinishClosingAnimationFromClient";
        }
      }

      else
      {
        if (a3 == 203)
        {
          return @"SBUISFloatingDockFileStackRequestIconRemovedFromClient";
        }

        if (a3 == 300)
        {
          return @"SBUISFloatingDockFileStackRequestCompletionFromClient";
        }
      }

      return @"Unknown request";
    }

    if (a3 <= 200)
    {
      if (a3 == 107)
      {
        return @"SBUISFloatingDockFileStackRequestCloseWithoutAnimationFromHost";
      }

      if (a3 == 200)
      {
        return @"SBUISFloatingDockFileStackRequestOpenFromClient";
      }

      return @"Unknown request";
    }

    if (a3 == 201)
    {
      return @"SBUISFloatingDockFileStackRequestCloseFromClient";
    }

    else
    {
      return @"SBUISFloatingDockFileStackRequestIconAddedFromClient";
    }
  }
}

- (id)succinctDescription
{
  v2 = [(SBUISFloatingDockFileStackPresentationContext *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [(SBUISFloatingDockFileStackPresentationContext *)self uuid];
  [v3 appendString:v4 withName:@"uuid"];

  v5 = [(SBUISFloatingDockFileStackPresentationContext *)self iconIdentifier];
  [v3 appendString:v5 withName:@"identifier"];

  v6 = [(SBUISFloatingDockFileStackPresentationContext *)self url];
  v7 = [v6 absoluteString];
  [v3 appendString:v7 withName:@"url"];

  v8 = [(SBUISFloatingDockFileStackPresentationContext *)self sortingBy];
  [v3 appendString:v8 withName:@"sortingBy"];

  v9 = [v3 appendBool:-[SBUISFloatingDockFileStackPresentationContext sortingOrderAscending](self withName:{"sortingOrderAscending"), @"sortingOrderAscending"}];
  v10 = [(SBUISFloatingDockFileStackPresentationContext *)self displayMode];
  [v3 appendString:v10 withName:@"displayMode"];

  [(SBUISFloatingDockFileStackPresentationContext *)self anchorFrame];
  v11 = NSStringFromCGRect(v32);
  [v3 appendString:v11 withName:@"anchorFrame"];

  [(SBUISFloatingDockFileStackPresentationContext *)self dockFrame];
  v12 = NSStringFromCGRect(v33);
  [v3 appendString:v12 withName:@"dockFrame"];

  v13 = [(SBUISFloatingDockFileStackPresentationContext *)self sourceLayerRenderId];

  if (v13)
  {
    v14 = MEMORY[0x1E696AEC0];
    v15 = [(SBUISFloatingDockFileStackPresentationContext *)self sourceLayerRenderId];
    v16 = [v14 stringWithFormat:@"%llu", objc_msgSend(v15, "unsignedLongLongValue")];
    [v3 appendString:v16 withName:@"sourceLayerRenderId"];
  }

  v17 = [(SBUISFloatingDockFileStackPresentationContext *)self sourceContextId];

  if (v17)
  {
    v18 = MEMORY[0x1E696AEC0];
    v19 = [(SBUISFloatingDockFileStackPresentationContext *)self sourceContextId];
    v20 = [v18 stringWithFormat:@"%u", objc_msgSend(v19, "unsignedIntValue")];
    [v3 appendString:v20 withName:@"sourceContextId"];
  }

  v21 = [(SBUISFloatingDockFileStackPresentationContext *)self openIndicatorLayerRenderId];

  if (v21)
  {
    v22 = MEMORY[0x1E696AEC0];
    v23 = [(SBUISFloatingDockFileStackPresentationContext *)self openIndicatorLayerRenderId];
    v24 = [v22 stringWithFormat:@"%llu", objc_msgSend(v23, "unsignedLongLongValue")];
    [v3 appendString:v24 withName:@"openIndicatorLayerRenderId"];
  }

  v25 = [(SBUISFloatingDockFileStackPresentationContext *)self openIndicatorContextId];

  if (v25)
  {
    v26 = MEMORY[0x1E696AEC0];
    v27 = [(SBUISFloatingDockFileStackPresentationContext *)self openIndicatorContextId];
    v28 = [v26 stringWithFormat:@"%u", objc_msgSend(v27, "unsignedIntValue")];
    [v3 appendString:v28 withName:@"openIndicatorContextId"];
  }

  v29 = [objc_opt_class() fileStackRequestDescription:{-[SBUISFloatingDockFileStackPresentationContext request](self, "request")}];
  [v3 appendString:v29 withName:@"request"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBUISFloatingDockFileStackPresentationContext *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (CGRect)anchorFrame
{
  objc_copyStruct(v6, &self->_anchorFrame, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)dockFrame
{
  objc_copyStruct(v6, &self->_dockFrame, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGSize)iconImageInfoSize
{
  objc_copyStruct(v4, &self->_iconImageInfoSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

@end