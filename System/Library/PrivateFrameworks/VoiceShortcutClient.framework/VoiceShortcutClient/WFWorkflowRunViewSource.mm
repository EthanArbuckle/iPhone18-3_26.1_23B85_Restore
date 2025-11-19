@interface WFWorkflowRunViewSource
- (BOOL)isEqual:(id)a3;
- (CGRect)originFrame;
- (UIView)originView;
- (WFWorkflowRunViewSource)initWithCoder:(id)a3;
- (WFWorkflowRunViewSource)initWithView:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)refresh;
- (void)updateSourceView:(id)a3;
@end

@implementation WFWorkflowRunViewSource

- (CGRect)originFrame
{
  x = self->_originFrame.origin.x;
  y = self->_originFrame.origin.y;
  width = self->_originFrame.size.width;
  height = self->_originFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIView)originView
{
  WeakRetained = objc_loadWeakRetained(&self->_originView);

  return WeakRetained;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = WFWorkflowRunViewSource;
  v4 = [(WFWorkflowRunViewSource *)&v11 description];
  v5 = [(WFWorkflowRunViewSource *)self renderID];
  v6 = [(WFWorkflowRunViewSource *)self contextID];
  v7 = MEMORY[0x1E696B098];
  [(WFWorkflowRunViewSource *)self originFrame];
  v8 = [v7 valueWithCGRect:?];
  v9 = [v3 stringWithFormat:@"<%@, renderID: %llu, contextID: %u, originFrame: %@>", v4, v5, v6, v8];

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(WFWorkflowRunViewSource *)self uuid];
  v7 = [v6 copyWithZone:a3];
  v8 = *(v5 + 24);
  *(v5 + 24) = v7;

  *(v5 + 32) = [(WFWorkflowRunViewSource *)self renderID];
  *(v5 + 8) = [(WFWorkflowRunViewSource *)self contextID];
  [(WFWorkflowRunViewSource *)self originFrame];
  *(v5 + 40) = v9;
  *(v5 + 48) = v10;
  *(v5 + 56) = v11;
  *(v5 + 64) = v12;
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFWorkflowRunViewSource *)self uuid];
  [v4 encodeObject:v5 forKey:@"uuid"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[WFWorkflowRunViewSource renderID](self, "renderID")}];
  [v4 encodeObject:v6 forKey:@"renderID"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[WFWorkflowRunViewSource contextID](self, "contextID")}];
  [v4 encodeObject:v7 forKey:@"contextID"];

  v8 = MEMORY[0x1E696B098];
  [(WFWorkflowRunViewSource *)self originFrame];
  v9 = [v8 valueWithCGRect:?];
  [v4 encodeObject:v9 forKey:@"originFrame"];
}

- (WFWorkflowRunViewSource)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = WFWorkflowRunViewSource;
  v5 = [(WFWorkflowRunViewSource *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"renderID"];
    v5->_renderID = [v8 unsignedLongLongValue];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contextID"];
    v5->_contextID = [v9 unsignedIntValue];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"originFrame"];
    [v10 CGRectValue];
    v5->_originFrame.origin.x = v11;
    v5->_originFrame.origin.y = v12;
    v5->_originFrame.size.width = v13;
    v5->_originFrame.size.height = v14;
    v15 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v2 = [(WFWorkflowRunViewSource *)self uuid];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    v6 = v4;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = [(WFWorkflowRunViewSource *)v6 uuid];
      v8 = [(WFWorkflowRunViewSource *)self uuid];
      v9 = [v7 isEqual:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (void)refresh
{
  v3 = [(WFWorkflowRunViewSource *)self originView];
  v4 = [v3 layer];
  [(WFWorkflowRunViewSource *)self setRenderID:CALayerGetRenderId()];

  v5 = [(WFWorkflowRunViewSource *)self originView];
  v6 = [v5 layer];
  v7 = CALayerGetContext();
  -[WFWorkflowRunViewSource setContextID:](self, "setContextID:", [v7 contextId]);

  v22 = [(WFWorkflowRunViewSource *)self originView];
  v8 = [v22 superview];
  v9 = [(WFWorkflowRunViewSource *)self originView];
  [v9 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [(WFWorkflowRunViewSource *)self originView];
  v19 = [v18 window];
  v20 = [v19 rootViewController];
  v21 = [v20 view];
  [v8 convertRect:v21 toView:{v11, v13, v15, v17}];
  [(WFWorkflowRunViewSource *)self setOriginFrame:?];
}

- (void)updateSourceView:(id)a3
{
  v37 = a3;
  [(WFWorkflowRunViewSource *)self setOriginView:v37];
  if (v37)
  {
    v4 = [v37 layer];
    RenderId = CALayerGetRenderId();

    v6 = [(WFWorkflowRunViewSource *)self renderID];
    v7 = v6 != RenderId;
    if (v6 != RenderId)
    {
      [(WFWorkflowRunViewSource *)self setRenderID:RenderId];
    }

    v8 = [v37 layer];
    v9 = CALayerGetContext();
    v10 = [v9 contextId];

    v11 = [(WFWorkflowRunViewSource *)self contextID];
    if (v10 && v11 != v10)
    {
      [(WFWorkflowRunViewSource *)self setContextID:v10];
      v7 = 1;
    }

    v12 = [v37 superview];
    [v37 frame];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = [v37 window];
    v22 = [v21 rootViewController];
    v23 = [v22 view];
    [v12 convertRect:v23 toView:{v14, v16, v18, v20}];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;

    [(WFWorkflowRunViewSource *)self originFrame];
    v41.origin.x = v25;
    v41.origin.y = v27;
    v41.size.width = v29;
    v41.size.height = v31;
    if (CGRectEqualToRect(v39, v41))
    {
      if (!v7)
      {
        goto LABEL_16;
      }
    }

    else
    {
      [(WFWorkflowRunViewSource *)self setOriginFrame:v25, v27, v29, v31];
    }

LABEL_15:
    v36 = [MEMORY[0x1E696AD88] defaultCenter];
    [v36 postNotificationName:@"WFWorkflowRunViewSourceUpdatedNotification" object:self userInfo:MEMORY[0x1E695E0F8]];

    goto LABEL_16;
  }

  [(WFWorkflowRunViewSource *)self originFrame];
  v32 = *MEMORY[0x1E695F058];
  v33 = *(MEMORY[0x1E695F058] + 8);
  v34 = *(MEMORY[0x1E695F058] + 16);
  v35 = *(MEMORY[0x1E695F058] + 24);
  v42.origin.x = *MEMORY[0x1E695F058];
  v42.origin.y = v33;
  v42.size.width = v34;
  v42.size.height = v35;
  if (!CGRectEqualToRect(v40, v42) || [(WFWorkflowRunViewSource *)self renderID]|| [(WFWorkflowRunViewSource *)self contextID])
  {
    [(WFWorkflowRunViewSource *)self setOriginFrame:v32, v33, v34, v35];
    [(WFWorkflowRunViewSource *)self setRenderID:0];
    [(WFWorkflowRunViewSource *)self setContextID:0];
    goto LABEL_15;
  }

LABEL_16:
}

- (WFWorkflowRunViewSource)initWithView:(id)a3
{
  v4 = a3;
  if (v4 && (v28.receiver = self, v28.super_class = WFWorkflowRunViewSource, (self = [(WFWorkflowRunViewSource *)&v28 init]) != 0))
  {
    v5 = [MEMORY[0x1E696AFB0] UUID];
    uuid = self->_uuid;
    self->_uuid = v5;

    v7 = [v4 layer];
    self->_renderID = CALayerGetRenderId();

    v8 = [v4 layer];
    v9 = CALayerGetContext();
    self->_contextID = [v9 contextId];

    v10 = [v4 superview];
    [v4 frame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = [v4 window];
    v20 = [v19 rootViewController];
    v21 = [v20 view];
    [v10 convertRect:v21 toView:{v12, v14, v16, v18}];
    self->_originFrame.origin.x = v22;
    self->_originFrame.origin.y = v23;
    self->_originFrame.size.width = v24;
    self->_originFrame.size.height = v25;

    objc_storeWeak(&self->_originView, v4);
    self = self;
    v26 = self;
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

@end