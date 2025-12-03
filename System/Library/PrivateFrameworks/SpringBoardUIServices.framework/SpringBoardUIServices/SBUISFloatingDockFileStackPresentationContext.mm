@interface SBUISFloatingDockFileStackPresentationContext
+ (id)fileStackRequestDescription:(int64_t)description;
- (CGRect)anchorFrame;
- (CGRect)dockFrame;
- (CGSize)iconImageInfoSize;
- (SBUISFloatingDockFileStackPresentationContext)initWithContext:(id)context;
- (SBUISFloatingDockFileStackPresentationContext)initWithContextIdentifier:(id)identifier;
- (SBUISFloatingDockFileStackPresentationContext)initWithFileStackIconIdentifier:(id)identifier;
- (SBUISFloatingDockFileStackPresentationContext)initWithFileStackIconIdentifier:(id)identifier request:(int64_t)request;
- (SBUISFloatingDockFileStackPresentationContext)initWithFileStackPresentationContextIdentifier:(id)identifier iconIdentifier:(id)iconIdentifier url:(id)url sortingBy:(id)by sortingOrderAscending:(BOOL)ascending displayMode:(id)mode anchorFrame:(CGRect)frame dockFrame:(CGRect)self0 sourceLayerRenderId:(id)self1 sourceContextId:(id)self2 openIndicatorLayerRenderId:(id)self3 openIndicatorContextId:(id)self4 iconImageInfoSize:(CGSize)self5 iconImageInfoScale:(id)self6 iconImageInfoContinuousCornerRadius:(id)self7 request:(int64_t)self8;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation SBUISFloatingDockFileStackPresentationContext

- (SBUISFloatingDockFileStackPresentationContext)initWithContextIdentifier:(id)identifier
{
  identifierCopy = identifier;
  iconIdentifier = [(SBUISFloatingDockFileStackPresentationContext *)self iconIdentifier];
  v6 = [MEMORY[0x1E695DFF8] URLWithString:@"/DownloadNotSentinel"];
  v7 = [(SBUISFloatingDockFileStackPresentationContext *)self initWithFileStackPresentationContextIdentifier:identifierCopy iconIdentifier:iconIdentifier url:v6 sortingBy:@"FileName" sortingOrderAscending:1 displayMode:@"FanOut" anchorFrame:*MEMORY[0x1E695F058] dockFrame:*(MEMORY[0x1E695F058] + 8) request:*(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24), *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24), 300];

  return v7;
}

- (SBUISFloatingDockFileStackPresentationContext)initWithFileStackIconIdentifier:(id)identifier
{
  v4 = MEMORY[0x1E696AFB0];
  identifierCopy = identifier;
  uUID = [v4 UUID];
  uUIDString = [uUID UUIDString];
  v8 = [MEMORY[0x1E695DFF8] URLWithString:@"/DownloadNotSentinel"];
  v9 = [(SBUISFloatingDockFileStackPresentationContext *)self initWithFileStackPresentationContextIdentifier:uUIDString iconIdentifier:identifierCopy url:v8 sortingBy:@"FileName" sortingOrderAscending:1 displayMode:@"FanOut" anchorFrame:*MEMORY[0x1E695F058] dockFrame:*(MEMORY[0x1E695F058] + 8) request:*(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24), *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24), 201];

  return v9;
}

- (SBUISFloatingDockFileStackPresentationContext)initWithFileStackIconIdentifier:(id)identifier request:(int64_t)request
{
  v6 = MEMORY[0x1E696AFB0];
  identifierCopy = identifier;
  uUID = [v6 UUID];
  uUIDString = [uUID UUIDString];
  v10 = [MEMORY[0x1E695DFF8] URLWithString:@"/DownloadNotSentinel"];
  request = [(SBUISFloatingDockFileStackPresentationContext *)self initWithFileStackPresentationContextIdentifier:uUIDString iconIdentifier:identifierCopy url:v10 sortingBy:@"FileName" sortingOrderAscending:1 displayMode:@"FanOut" anchorFrame:*MEMORY[0x1E695F058] dockFrame:*(MEMORY[0x1E695F058] + 8) request:*(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24), *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24), request];

  return request;
}

- (SBUISFloatingDockFileStackPresentationContext)initWithContext:(id)context
{
  contextCopy = context;
  uuid = [contextCopy uuid];
  iconIdentifier = [contextCopy iconIdentifier];
  v4 = [contextCopy url];
  sortingBy = [contextCopy sortingBy];
  sortingOrderAscending = [contextCopy sortingOrderAscending];
  displayMode = [contextCopy displayMode];
  [contextCopy anchorFrame];
  v32 = v7;
  v33 = v6;
  v9 = v8;
  v11 = v10;
  [contextCopy dockFrame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sourceLayerRenderId = [contextCopy sourceLayerRenderId];
  sourceContextId = [contextCopy sourceContextId];
  openIndicatorLayerRenderId = [contextCopy openIndicatorLayerRenderId];
  openIndicatorContextId = [contextCopy openIndicatorContextId];
  [contextCopy iconImageInfoSize];
  v24 = v23;
  v26 = v25;
  iconImageInfoScale = [contextCopy iconImageInfoScale];
  iconImageInfoContinuousCornerRadius = [contextCopy iconImageInfoContinuousCornerRadius];
  request = [contextCopy request];

  v38 = [(SBUISFloatingDockFileStackPresentationContext *)self initWithFileStackPresentationContextIdentifier:uuid iconIdentifier:iconIdentifier url:v4 sortingBy:sortingBy sortingOrderAscending:sortingOrderAscending displayMode:displayMode anchorFrame:v33 dockFrame:v32 sourceLayerRenderId:v9 sourceContextId:v11 openIndicatorLayerRenderId:v13 openIndicatorContextId:v15 iconImageInfoSize:v17 iconImageInfoScale:v19 iconImageInfoContinuousCornerRadius:sourceLayerRenderId request:sourceContextId, openIndicatorLayerRenderId, openIndicatorContextId, v24, v26, iconImageInfoScale, iconImageInfoContinuousCornerRadius, request];
  return v38;
}

- (SBUISFloatingDockFileStackPresentationContext)initWithFileStackPresentationContextIdentifier:(id)identifier iconIdentifier:(id)iconIdentifier url:(id)url sortingBy:(id)by sortingOrderAscending:(BOOL)ascending displayMode:(id)mode anchorFrame:(CGRect)frame dockFrame:(CGRect)self0 sourceLayerRenderId:(id)self1 sourceContextId:(id)self2 openIndicatorLayerRenderId:(id)self3 openIndicatorContextId:(id)self4 iconImageInfoSize:(CGSize)self5 iconImageInfoScale:(id)self6 iconImageInfoContinuousCornerRadius:(id)self7 request:(int64_t)self8
{
  height = dockFrame.size.height;
  width = dockFrame.size.width;
  y = dockFrame.origin.y;
  x = dockFrame.origin.x;
  v25 = frame.size.height;
  v26 = frame.size.width;
  v27 = frame.origin.y;
  v28 = frame.origin.x;
  identifierCopy = identifier;
  iconIdentifierCopy = iconIdentifier;
  urlCopy = url;
  byCopy = by;
  modeCopy = mode;
  idCopy = id;
  contextIdCopy = contextId;
  renderIdCopy = renderId;
  indicatorContextIdCopy = indicatorContextId;
  v37 = byCopy;
  scaleCopy = scale;
  radiusCopy = radius;
  v64.receiver = self;
  v64.super_class = SBUISFloatingDockFileStackPresentationContext;
  v39 = [(SBUISFloatingDockFileStackPresentationContext *)&v64 init];
  if (v39)
  {
    v40 = [identifierCopy copy];
    uuid = v39->_uuid;
    v39->_uuid = v40;

    v42 = [iconIdentifierCopy copy];
    iconIdentifier = v39->_iconIdentifier;
    v39->_iconIdentifier = v42;

    v44 = [urlCopy copy];
    url = v39->_url;
    v39->_url = v44;

    v46 = [v37 copy];
    sortingBy = v39->_sortingBy;
    v39->_sortingBy = v46;

    v39->_sortingOrderAscending = ascending;
    v48 = [modeCopy copy];
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
    v50 = [idCopy copy];
    sourceLayerRenderId = v39->_sourceLayerRenderId;
    v39->_sourceLayerRenderId = v50;

    v52 = [contextIdCopy copy];
    sourceContextId = v39->_sourceContextId;
    v39->_sourceContextId = v52;

    v54 = [renderIdCopy copy];
    openIndicatorLayerRenderId = v39->_openIndicatorLayerRenderId;
    v39->_openIndicatorLayerRenderId = v54;

    v56 = [indicatorContextIdCopy copy];
    openIndicatorContextId = v39->_openIndicatorContextId;
    v39->_openIndicatorContextId = v56;

    v39->_iconImageInfoSize = size;
    objc_storeStrong(&v39->_iconImageInfoScale, scale);
    objc_storeStrong(&v39->_iconImageInfoContinuousCornerRadius, radius);
    v39->_request = request;
  }

  return v39;
}

+ (id)fileStackRequestDescription:(int64_t)description
{
  if (description <= 106)
  {
    if (description <= 102)
    {
      if (description != 100)
      {
        if (description == 101)
        {
          return @"SBUISFloatingDockFileStackRequestCloseFromHost";
        }

        if (description == 102)
        {
          return @"SBUISFloatingDockFileStackRequestIconAddedFromHost";
        }

        return @"Unknown request";
      }

      return @"SBUISFloatingDockFileStackRequestOpenFromHost";
    }

    else if (description > 104)
    {
      if (description == 105)
      {
        return @"SBUISFloatingDockFileStackRequestFinishDownloadAnimationDidEndFromHost";
      }

      else
      {
        return @"SBUISFloatingDockFileStackRequestOpenWithoutAnimationFromHost";
      }
    }

    else if (description == 103)
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
    if (description > 202)
    {
      if (description > 300)
      {
        if (description == 301)
        {
          return @"SBUISFloatingDockFileStackRequestAcknowledgeFinishOpeningAnimationFromClient";
        }

        if (description == 302)
        {
          return @"SBUISFloatingDockFileStackRequestAcknowledgeFinishClosingAnimationFromClient";
        }
      }

      else
      {
        if (description == 203)
        {
          return @"SBUISFloatingDockFileStackRequestIconRemovedFromClient";
        }

        if (description == 300)
        {
          return @"SBUISFloatingDockFileStackRequestCompletionFromClient";
        }
      }

      return @"Unknown request";
    }

    if (description <= 200)
    {
      if (description == 107)
      {
        return @"SBUISFloatingDockFileStackRequestCloseWithoutAnimationFromHost";
      }

      if (description == 200)
      {
        return @"SBUISFloatingDockFileStackRequestOpenFromClient";
      }

      return @"Unknown request";
    }

    if (description == 201)
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
  succinctDescriptionBuilder = [(SBUISFloatingDockFileStackPresentationContext *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  uuid = [(SBUISFloatingDockFileStackPresentationContext *)self uuid];
  [v3 appendString:uuid withName:@"uuid"];

  iconIdentifier = [(SBUISFloatingDockFileStackPresentationContext *)self iconIdentifier];
  [v3 appendString:iconIdentifier withName:@"identifier"];

  v6 = [(SBUISFloatingDockFileStackPresentationContext *)self url];
  absoluteString = [v6 absoluteString];
  [v3 appendString:absoluteString withName:@"url"];

  sortingBy = [(SBUISFloatingDockFileStackPresentationContext *)self sortingBy];
  [v3 appendString:sortingBy withName:@"sortingBy"];

  v9 = [v3 appendBool:-[SBUISFloatingDockFileStackPresentationContext sortingOrderAscending](self withName:{"sortingOrderAscending"), @"sortingOrderAscending"}];
  displayMode = [(SBUISFloatingDockFileStackPresentationContext *)self displayMode];
  [v3 appendString:displayMode withName:@"displayMode"];

  [(SBUISFloatingDockFileStackPresentationContext *)self anchorFrame];
  v11 = NSStringFromCGRect(v32);
  [v3 appendString:v11 withName:@"anchorFrame"];

  [(SBUISFloatingDockFileStackPresentationContext *)self dockFrame];
  v12 = NSStringFromCGRect(v33);
  [v3 appendString:v12 withName:@"dockFrame"];

  sourceLayerRenderId = [(SBUISFloatingDockFileStackPresentationContext *)self sourceLayerRenderId];

  if (sourceLayerRenderId)
  {
    v14 = MEMORY[0x1E696AEC0];
    sourceLayerRenderId2 = [(SBUISFloatingDockFileStackPresentationContext *)self sourceLayerRenderId];
    v16 = [v14 stringWithFormat:@"%llu", objc_msgSend(sourceLayerRenderId2, "unsignedLongLongValue")];
    [v3 appendString:v16 withName:@"sourceLayerRenderId"];
  }

  sourceContextId = [(SBUISFloatingDockFileStackPresentationContext *)self sourceContextId];

  if (sourceContextId)
  {
    v18 = MEMORY[0x1E696AEC0];
    sourceContextId2 = [(SBUISFloatingDockFileStackPresentationContext *)self sourceContextId];
    v20 = [v18 stringWithFormat:@"%u", objc_msgSend(sourceContextId2, "unsignedIntValue")];
    [v3 appendString:v20 withName:@"sourceContextId"];
  }

  openIndicatorLayerRenderId = [(SBUISFloatingDockFileStackPresentationContext *)self openIndicatorLayerRenderId];

  if (openIndicatorLayerRenderId)
  {
    v22 = MEMORY[0x1E696AEC0];
    openIndicatorLayerRenderId2 = [(SBUISFloatingDockFileStackPresentationContext *)self openIndicatorLayerRenderId];
    v24 = [v22 stringWithFormat:@"%llu", objc_msgSend(openIndicatorLayerRenderId2, "unsignedLongLongValue")];
    [v3 appendString:v24 withName:@"openIndicatorLayerRenderId"];
  }

  openIndicatorContextId = [(SBUISFloatingDockFileStackPresentationContext *)self openIndicatorContextId];

  if (openIndicatorContextId)
  {
    v26 = MEMORY[0x1E696AEC0];
    openIndicatorContextId2 = [(SBUISFloatingDockFileStackPresentationContext *)self openIndicatorContextId];
    v28 = [v26 stringWithFormat:@"%u", objc_msgSend(openIndicatorContextId2, "unsignedIntValue")];
    [v3 appendString:v28 withName:@"openIndicatorContextId"];
  }

  v29 = [objc_opt_class() fileStackRequestDescription:{-[SBUISFloatingDockFileStackPresentationContext request](self, "request")}];
  [v3 appendString:v29 withName:@"request"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBUISFloatingDockFileStackPresentationContext *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
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