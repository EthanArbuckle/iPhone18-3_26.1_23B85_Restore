@interface RPTFluidSplitViewTestParameters
- (RPTFluidSplitViewTestParameters)initWithTestName:(id)a3 splitViewController:(id)a4 completionHandler:(id)a5;
- (id)composerBlock;
@end

@implementation RPTFluidSplitViewTestParameters

- (RPTFluidSplitViewTestParameters)initWithTestName:(id)a3 splitViewController:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v26.receiver = self;
  v26.super_class = RPTFluidSplitViewTestParameters;
  v10 = [(RPTFluidSplitViewTestParameters *)&v26 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_splitViewController, a4);
    v12 = [v8 viewControllerForColumn:0];
    primaryController = v11->_primaryController;
    v11->_primaryController = v12;

    v14 = [v8 viewControllerForColumn:1];
    supplementalController = v11->_supplementalController;
    v11->_supplementalController = v14;

    v16 = [v8 view];
    v17 = [v16 window];
    v18 = [v8 view];
    v19 = [v18 window];
    v20 = [v19 screen];
    v21 = [RPTCoordinateSpaceConverter converterFromWindow:v17 toScreen:v20];
    conversion = v11->_conversion;
    v11->_conversion = v21;

    v23 = MEMORY[0x2667162B0](v9);
    completionHandler = v11->_completionHandler;
    v11->_completionHandler = v23;
  }

  return v11;
}

- (id)composerBlock
{
  v3 = [(UIViewController *)self->_supplementalController view];
  v4 = RPTGetBoundsForView(v3);
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = [(RPTFluidSplitViewTestParameters *)self conversion];
  [v11 convertPoint:{RPTCGRectGetMidpointAlongSide(0, v4, v6, v8, v10)}];
  v13 = v12;
  v15 = v14;

  v16 = [(RPTFluidSplitViewTestParameters *)self conversion];
  [v16 convertPoint:{RPTCGRectGetMidpointAlongSide(2, v4, v6, v8, v10)}];
  v18 = v17;
  v20 = v19;

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __48__RPTFluidSplitViewTestParameters_composerBlock__block_invoke;
  v23[3] = &__block_descriptor_64_e23_v16__0___RPTComposer__8l;
  v23[4] = v13;
  v23[5] = v15;
  v23[6] = v18;
  v23[7] = v20;
  v21 = MEMORY[0x2667162B0](v23);

  return v21;
}

void __48__RPTFluidSplitViewTestParameters_composerBlock__block_invoke(double *a1, void *a2)
{
  v5 = a2;
  [v5 pointerOrFingerTapDown:{a1[4], a1[5]}];
  [v5 pointerOrFingerMoveToPoint:a1[6] duration:{a1[7], 1.0}];
  [v5 advanceTime:0.2];
  [v5 pointerOrFingerMoveToPoint:a1[4] duration:{a1[5], 1.0}];
  [v5 advanceTime:0.2];
  [v5 pointerOrFingerMoveToPoint:a1[6] duration:{a1[7], 0.6}];
  [v5 pointerOrFingerMoveToPoint:a1[4] duration:{a1[5], 0.6}];
  [v5 pointerOrFingerMoveToPoint:a1[6] duration:{a1[7], 0.3}];
  [v5 pointerOrFingerMoveToPoint:a1[4] duration:{a1[5], 0.3}];
  [v5 pointerOrFingerTapUp:{a1[4], a1[5]}];
  v3 = [v5 interactionOptions];
  v4 = [v3 prefersPointer];

  if ((v4 & 1) == 0)
  {
    [v5 advanceTime:0.5];
    [v5 sendFlickWithStartPoint:a1[4] endPoint:a1[5] duration:{a1[6], a1[7], 0.6}];
    [v5 advanceTime:2.0];
    [v5 sendFlickWithStartPoint:a1[6] endPoint:a1[7] duration:{a1[4], a1[5], 0.6}];
  }
}

@end