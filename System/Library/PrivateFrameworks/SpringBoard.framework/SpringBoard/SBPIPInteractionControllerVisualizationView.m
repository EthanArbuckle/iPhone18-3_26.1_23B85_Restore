@interface SBPIPInteractionControllerVisualizationView
- (CGRect)_backgroundFrame;
- (CGRect)_unionFrame;
- (SBPIPPositionGeometryContext)extendedGeometryContext;
- (SBPIPPositionGeometryContext)mainGeometryContext;
- (SBPIPPositionInteractionStateContext)interactionContext;
- (void)layoutSubviews;
- (void)setExtendedGeometryContext:(SBPIPPositionGeometryContext *)a3;
- (void)setInteractionContext:(SBPIPPositionInteractionStateContext *)a3;
- (void)setMainGeometryContext:(SBPIPPositionGeometryContext *)a3;
@end

@implementation SBPIPInteractionControllerVisualizationView

- (void)layoutSubviews
{
  v76 = *MEMORY[0x277D85DE8];
  v74.receiver = self;
  v74.super_class = SBPIPInteractionControllerVisualizationView;
  [(SBPIPInteractionControllerVisualizationView *)&v74 layoutSubviews];
  containerView = self->_containerView;
  v4 = &OBJC_IVAR___SBWiFiManager__currentNetworkIsIOSHotspot;
  v5 = &OBJC_IVAR___SBWiFiManager__currentNetworkIsIOSHotspot;
  v6 = &OBJC_IVAR___SBWiFiManager__currentNetworkIsIOSHotspot;
  if (!containerView)
  {
    v7 = [(SBPIPInteractionControllerVisualizationView *)self layer];
    [v7 setAllowsHitTesting:0];

    v8 = objc_alloc_init(MEMORY[0x277D75D18]);
    v9 = self->_containerView;
    self->_containerView = v8;

    [(UIView *)self->_containerView setUserInteractionEnabled:0];
    v10 = objc_alloc(MEMORY[0x277D75D18]);
    v11 = [v10 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    insetsGeometryView = self->_insetsGeometryView;
    self->_insetsGeometryView = v11;

    v13 = self->_insetsGeometryView;
    v14 = [MEMORY[0x277D75348] systemOrangeColor];
    [(UIView *)v13 setBackgroundColor:v14];

    [(UIView *)self->_insetsGeometryView setUserInteractionEnabled:0];
    [(UIView *)self->_containerView addSubview:self->_insetsGeometryView];
    v15 = objc_alloc_init(MEMORY[0x277D75D18]);
    unionView = self->_unionView;
    self->_unionView = v15;

    [(UIView *)self->_unionView setUserInteractionEnabled:0];
    v17 = self->_unionView;
    v18 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.2];
    [(UIView *)v17 setBackgroundColor:v18];

    v19 = objc_alloc_init(MEMORY[0x277D75D18]);
    mainGeometryView = self->_mainGeometryView;
    self->_mainGeometryView = v19;

    v21 = self->_mainGeometryView;
    v22 = [MEMORY[0x277D75348] systemYellowColor];
    v23 = [v22 colorWithAlphaComponent:0.2];
    [(UIView *)v21 setBackgroundColor:v23];

    v24 = objc_alloc_init(MEMORY[0x277D75D18]);
    extendedGeometryView = self->_extendedGeometryView;
    self->_extendedGeometryView = v24;

    v26 = self->_extendedGeometryView;
    v27 = [MEMORY[0x277D75348] systemRedColor];
    v28 = [v27 colorWithAlphaComponent:0.2];
    [(UIView *)v26 setBackgroundColor:v28];

    v4 = &OBJC_IVAR___SBWiFiManager__currentNetworkIsIOSHotspot;
    [(UIView *)self->_containerView addSubview:self->_unionView];
    v6 = &OBJC_IVAR___SBWiFiManager__currentNetworkIsIOSHotspot;
    [(UIView *)self->_containerView addSubview:self->_mainGeometryView];
    [(UIView *)self->_containerView addSubview:self->_extendedGeometryView];
    v5 = &OBJC_IVAR___SBWiFiManager__currentNetworkIsIOSHotspot;
    v29 = objc_alloc_init(MEMORY[0x277D75D18]);
    fakePIPView = self->_fakePIPView;
    self->_fakePIPView = v29;

    v31 = self->_fakePIPView;
    v32 = [MEMORY[0x277D75348] systemMintColor];
    [(UIView *)v31 setBackgroundColor:v32];

    [(UIView *)self->_containerView addSubview:self->_fakePIPView];
    [(SBPIPInteractionControllerVisualizationView *)self addSubview:self->_containerView];
    containerView = self->_containerView;
  }

  v33 = *(MEMORY[0x277CBF2C0] + 16);
  *&v73.a = *MEMORY[0x277CBF2C0];
  *&v73.c = v33;
  *&v73.tx = *(MEMORY[0x277CBF2C0] + 32);
  [(UIView *)containerView setTransform:&v73];
  v34 = self->_containerView;
  [(SBPIPInteractionControllerVisualizationView *)self _unionFrame];
  [(UIView *)v34 setFrame:?];
  v35 = v4[755];
  v36 = *(&self->super.super.super.isa + v35);
  [(SBPIPInteractionControllerVisualizationView *)self _backgroundFrame];
  [v36 setFrame:?];
  [(UIView *)self->_extendedGeometryView setFrame:self->_extendedGeometryContext.containerBounds.origin.x, self->_extendedGeometryContext.containerBounds.origin.y, self->_extendedGeometryContext.containerBounds.size.width, self->_extendedGeometryContext.containerBounds.size.height];
  v37 = v5[756];
  [*(&self->super.super.super.isa + v37) setFrame:{self->_mainGeometryContext.containerBounds.origin.x, self->_mainGeometryContext.containerBounds.origin.y, self->_mainGeometryContext.containerBounds.size.width, self->_mainGeometryContext.containerBounds.size.height}];
  v38 = self->_insetsGeometryView;
  UIRectInset();
  [(UIView *)v38 setFrame:?];
  v39 = [(UIView *)self->_extendedGeometryView layer];
  v40 = [MEMORY[0x277D75348] yellowColor];
  [v39 setBorderColor:{objc_msgSend(v40, "CGColor")}];

  v41 = [*(&self->super.super.super.isa + v37) layer];
  v42 = [MEMORY[0x277D75348] yellowColor];
  [v41 setBorderColor:{objc_msgSend(v42, "CGColor")}];

  v43 = [*(&self->super.super.super.isa + v37) layer];
  [v43 setBorderWidth:20.0];

  v44 = [(UIView *)self->_extendedGeometryView layer];
  [v44 setBorderWidth:20.0];

  v45 = v6[758];
  [*(&self->super.super.super.isa + v45) setSize:{self->_mainGeometryContext.pipCurrentSize.width, self->_mainGeometryContext.pipCurrentSize.height}];
  [*(&self->super.super.super.isa + v45) setCenter:{self->_interactionContext.currentPosition.x, self->_interactionContext.currentPosition.y}];
  [(UIView *)self->_containerView bounds];
  v46 = 300.0 / CGRectGetWidth(v77);
  [(UIView *)self->_containerView bounds];
  v47 = 300.0 / CGRectGetHeight(v78);
  if (v46 >= v47)
  {
    v48 = v47;
  }

  else
  {
    v48 = v46;
  }

  v49 = self->_containerView;
  CGAffineTransformMakeScale(&v73, v48, v48);
  [(UIView *)v49 setTransform:&v73];
  [(SBPIPInteractionControllerVisualizationView *)self bounds];
  UIRectGetCenter();
  v51 = v50;
  v53 = v52;
  [*(&self->super.super.super.isa + v35) frame];
  v55 = v51 - v54 * v48;
  [*(&self->super.super.super.isa + v35) frame];
  [(UIView *)self->_containerView setCenter:v55, v53 - v56 * v48];
  v57 = [MEMORY[0x277CBEB58] setWithArray:self->_regionViews];
  v58 = [(_UIHyperregionUnion *)self->_regionUnion _regions];
  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = __61__SBPIPInteractionControllerVisualizationView_layoutSubviews__block_invoke;
  v71[3] = &unk_2783B0B78;
  v71[4] = self;
  v59 = v57;
  v72 = v59;
  [v58 enumerateObjectsUsingBlock:v71];

  regionViews = self->_regionViews;
  v61 = [v59 allObjects];
  [(NSMutableArray *)regionViews removeObjectsInArray:v61];

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v62 = v59;
  v63 = [v62 countByEnumeratingWithState:&v67 objects:v75 count:16];
  if (v63)
  {
    v64 = v63;
    v65 = *v68;
    do
    {
      for (i = 0; i != v64; ++i)
      {
        if (*v68 != v65)
        {
          objc_enumerationMutation(v62);
        }

        [*(*(&v67 + 1) + 8 * i) removeFromSuperview];
      }

      v64 = [v62 countByEnumeratingWithState:&v67 objects:v75 count:16];
    }

    while (v64);
  }
}

void __61__SBPIPInteractionControllerVisualizationView_layoutSubviews__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v27 = a2;
  v5 = *(*(a1 + 32) + 456);
  if (!v5)
  {
    v6 = [MEMORY[0x277CBEB18] array];
    v7 = *(a1 + 32);
    v8 = *(v7 + 456);
    *(v7 + 456) = v6;

    v5 = *(*(a1 + 32) + 456);
  }

  if ([v5 count] <= a3)
  {
    v9 = *(*(a1 + 32) + 456);
    v10 = objc_alloc_init(MEMORY[0x277D75D18]);
    [v9 addObject:v10];
  }

  v11 = [*(*(a1 + 32) + 456) objectAtIndexedSubscript:a3];
  v12 = [MEMORY[0x277D75348] systemOrangeColor];
  v13 = [v12 colorWithAlphaComponent:0.2];
  [v11 setBackgroundColor:v13];

  v14 = [*(*(a1 + 32) + 456) objectAtIndexedSubscript:a3];
  [v27 sb_debugFrame];
  [v14 setFrame:?];

  v15 = [*(*(a1 + 32) + 456) objectAtIndexedSubscript:a3];
  [v15 frame];
  Width = CGRectGetWidth(v29);

  v17 = [*(*(a1 + 32) + 456) objectAtIndexedSubscript:a3];
  v18 = [v17 layer];
  if (Width >= 25.0)
  {
    [MEMORY[0x277D75348] whiteColor];
  }

  else
  {
    [MEMORY[0x277D75348] redColor];
  }
  v19 = ;
  [v18 setBorderColor:{objc_msgSend(v19, "CGColor")}];

  v20 = [*(*(a1 + 32) + 456) objectAtIndexedSubscript:a3];
  v21 = [v20 layer];
  [v21 setBorderWidth:20.0];

  v22 = *(a1 + 32);
  v23 = *(v22 + 408);
  v24 = [*(v22 + 456) objectAtIndexedSubscript:a3];
  [v23 addSubview:v24];

  v25 = *(a1 + 40);
  v26 = [*(*(a1 + 32) + 456) objectAtIndexedSubscript:a3];
  [v25 removeObject:v26];
}

- (CGRect)_unionFrame
{
  v8 = CGRectUnion(*MEMORY[0x277CBF3A0], self->_mainGeometryContext.containerBounds);
  x = self->_extendedGeometryContext.containerBounds.origin.x;
  y = self->_extendedGeometryContext.containerBounds.origin.y;
  width = self->_extendedGeometryContext.containerBounds.size.width;
  height = self->_extendedGeometryContext.containerBounds.size.height;

  return CGRectUnion(v8, *&x);
}

- (CGRect)_backgroundFrame
{
  p_mainGeometryContext = &self->_mainGeometryContext;
  v7 = CGRectUnion(*MEMORY[0x277CBF3A0], self->_mainGeometryContext.containerBounds);
  p_extendedGeometryContext = &self->_extendedGeometryContext;
  result = CGRectUnion(v7, p_extendedGeometryContext->containerBounds);
  x = p_mainGeometryContext->containerBounds.origin.x;
  y = p_mainGeometryContext->containerBounds.origin.y;
  if (x >= p_extendedGeometryContext->containerBounds.origin.x)
  {
    x = p_extendedGeometryContext->containerBounds.origin.x;
  }

  if (y >= p_extendedGeometryContext->containerBounds.origin.y)
  {
    y = p_extendedGeometryContext->containerBounds.origin.y;
  }

  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (SBPIPPositionGeometryContext)mainGeometryContext
{
  v3 = *&self[3].edgeInsets.top;
  *&retstr->stashedMinimumPadding.top = self[3].containerBounds.size;
  *&retstr->stashedMinimumPadding.bottom = v3;
  *&retstr->offscreenCorners = *&self[3].edgeInsets.bottom;
  pipStashedSize = self[3].pipStashedSize;
  *&retstr->edgeInsets.top = self[3].pipLastSteadySize;
  *&retstr->edgeInsets.bottom = pipStashedSize;
  origin = self[3].containerBounds.origin;
  *&retstr->minimumPadding.top = self[3].pipAnchorPointOffset;
  *&retstr->minimumPadding.bottom = origin;
  v6 = *&self[2].stashedMinimumPadding.bottom;
  retstr->pipStashedSize = *&self[2].stashedMinimumPadding.top;
  retstr->pipAnchorPointOffset = v6;
  pipCurrentSize = self[3].pipCurrentSize;
  retstr->containerBounds.origin = *&self[2].offscreenCorners;
  retstr->containerBounds.size = pipCurrentSize;
  v8 = *&self[2].minimumPadding.bottom;
  retstr->pipCurrentSize = *&self[2].minimumPadding.top;
  retstr->pipLastSteadySize = v8;
  return self;
}

- (void)setMainGeometryContext:(SBPIPPositionGeometryContext *)a3
{
  self->_mainGeometryContext.pipCurrentSize = a3->pipCurrentSize;
  origin = a3->containerBounds.origin;
  pipLastSteadySize = a3->pipLastSteadySize;
  pipStashedSize = a3->pipStashedSize;
  self->_mainGeometryContext.pipAnchorPointOffset = a3->pipAnchorPointOffset;
  self->_mainGeometryContext.containerBounds.origin = origin;
  self->_mainGeometryContext.pipLastSteadySize = pipLastSteadySize;
  self->_mainGeometryContext.pipStashedSize = pipStashedSize;
  v6 = *&a3->minimumPadding.top;
  size = a3->containerBounds.size;
  v7 = *&a3->edgeInsets.top;
  *&self->_mainGeometryContext.edgeInsets.bottom = *&a3->edgeInsets.bottom;
  *&self->_mainGeometryContext.minimumPadding.top = v6;
  self->_mainGeometryContext.containerBounds.size = size;
  *&self->_mainGeometryContext.edgeInsets.top = v7;
  v9 = *&a3->offscreenCorners;
  v11 = *&a3->minimumPadding.bottom;
  v10 = *&a3->stashedMinimumPadding.top;
  *&self->_mainGeometryContext.stashedMinimumPadding.bottom = *&a3->stashedMinimumPadding.bottom;
  *&self->_mainGeometryContext.offscreenCorners = v9;
  *&self->_mainGeometryContext.minimumPadding.bottom = v11;
  *&self->_mainGeometryContext.stashedMinimumPadding.top = v10;
}

- (SBPIPPositionGeometryContext)extendedGeometryContext
{
  v3 = *&self[4].edgeInsets.top;
  *&retstr->stashedMinimumPadding.top = self[4].containerBounds.size;
  *&retstr->stashedMinimumPadding.bottom = v3;
  *&retstr->offscreenCorners = *&self[4].edgeInsets.bottom;
  pipStashedSize = self[4].pipStashedSize;
  *&retstr->edgeInsets.top = self[4].pipLastSteadySize;
  *&retstr->edgeInsets.bottom = pipStashedSize;
  origin = self[4].containerBounds.origin;
  *&retstr->minimumPadding.top = self[4].pipAnchorPointOffset;
  *&retstr->minimumPadding.bottom = origin;
  v6 = *&self[3].stashedMinimumPadding.bottom;
  retstr->pipStashedSize = *&self[3].stashedMinimumPadding.top;
  retstr->pipAnchorPointOffset = v6;
  pipCurrentSize = self[4].pipCurrentSize;
  retstr->containerBounds.origin = *&self[3].offscreenCorners;
  retstr->containerBounds.size = pipCurrentSize;
  v8 = *&self[3].minimumPadding.bottom;
  retstr->pipCurrentSize = *&self[3].minimumPadding.top;
  retstr->pipLastSteadySize = v8;
  return self;
}

- (void)setExtendedGeometryContext:(SBPIPPositionGeometryContext *)a3
{
  self->_extendedGeometryContext.pipCurrentSize = a3->pipCurrentSize;
  origin = a3->containerBounds.origin;
  pipLastSteadySize = a3->pipLastSteadySize;
  pipStashedSize = a3->pipStashedSize;
  self->_extendedGeometryContext.pipAnchorPointOffset = a3->pipAnchorPointOffset;
  self->_extendedGeometryContext.containerBounds.origin = origin;
  self->_extendedGeometryContext.pipLastSteadySize = pipLastSteadySize;
  self->_extendedGeometryContext.pipStashedSize = pipStashedSize;
  v6 = *&a3->minimumPadding.top;
  size = a3->containerBounds.size;
  v7 = *&a3->edgeInsets.top;
  *&self->_extendedGeometryContext.edgeInsets.bottom = *&a3->edgeInsets.bottom;
  *&self->_extendedGeometryContext.minimumPadding.top = v6;
  self->_extendedGeometryContext.containerBounds.size = size;
  *&self->_extendedGeometryContext.edgeInsets.top = v7;
  v9 = *&a3->offscreenCorners;
  v11 = *&a3->minimumPadding.bottom;
  v10 = *&a3->stashedMinimumPadding.top;
  *&self->_extendedGeometryContext.stashedMinimumPadding.bottom = *&a3->stashedMinimumPadding.bottom;
  *&self->_extendedGeometryContext.offscreenCorners = v9;
  *&self->_extendedGeometryContext.minimumPadding.bottom = v11;
  *&self->_extendedGeometryContext.stashedMinimumPadding.top = v10;
}

- (SBPIPPositionInteractionStateContext)interactionContext
{
  v3 = *&self[7].projectedPosition.y;
  *&retstr->initialPosition.y = *&self[7].isStashed;
  *&retstr->currentPosition.y = v3;
  retstr->projectedPositionStashProgress = self[7].initialPosition.y;
  v4 = *&self[6].currentPositionStashProgress;
  *&retstr->isStashed = self[6].currentPosition;
  *&retstr->projectedPosition.y = v4;
  return self;
}

- (void)setInteractionContext:(SBPIPPositionInteractionStateContext *)a3
{
  *&self->_interactionContext.isStashed = *&a3->isStashed;
  v4 = *&a3->initialPosition.y;
  v3 = *&a3->currentPosition.y;
  v5 = *&a3->projectedPosition.y;
  self->_interactionContext.projectedPositionStashProgress = a3->projectedPositionStashProgress;
  *&self->_interactionContext.initialPosition.y = v4;
  *&self->_interactionContext.currentPosition.y = v3;
  *&self->_interactionContext.projectedPosition.y = v5;
}

@end