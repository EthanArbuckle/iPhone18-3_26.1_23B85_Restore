@interface RPTFluidSplitViewTestParameters
- (RPTFluidSplitViewTestParameters)initWithTestName:(id)name splitViewController:(id)controller completionHandler:(id)handler;
- (id)composerBlock;
@end

@implementation RPTFluidSplitViewTestParameters

- (RPTFluidSplitViewTestParameters)initWithTestName:(id)name splitViewController:(id)controller completionHandler:(id)handler
{
  controllerCopy = controller;
  handlerCopy = handler;
  v26.receiver = self;
  v26.super_class = RPTFluidSplitViewTestParameters;
  v10 = [(RPTFluidSplitViewTestParameters *)&v26 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_splitViewController, controller);
    v12 = [controllerCopy viewControllerForColumn:0];
    primaryController = v11->_primaryController;
    v11->_primaryController = v12;

    v14 = [controllerCopy viewControllerForColumn:1];
    supplementalController = v11->_supplementalController;
    v11->_supplementalController = v14;

    view = [controllerCopy view];
    window = [view window];
    view2 = [controllerCopy view];
    window2 = [view2 window];
    screen = [window2 screen];
    v21 = [RPTCoordinateSpaceConverter converterFromWindow:window toScreen:screen];
    conversion = v11->_conversion;
    v11->_conversion = v21;

    v23 = MEMORY[0x2667162B0](handlerCopy);
    completionHandler = v11->_completionHandler;
    v11->_completionHandler = v23;
  }

  return v11;
}

- (id)composerBlock
{
  view = [(UIViewController *)self->_supplementalController view];
  v4 = RPTGetBoundsForView(view);
  v6 = v5;
  v8 = v7;
  v10 = v9;

  conversion = [(RPTFluidSplitViewTestParameters *)self conversion];
  [conversion convertPoint:{RPTCGRectGetMidpointAlongSide(0, v4, v6, v8, v10)}];
  v13 = v12;
  v15 = v14;

  conversion2 = [(RPTFluidSplitViewTestParameters *)self conversion];
  [conversion2 convertPoint:{RPTCGRectGetMidpointAlongSide(2, v4, v6, v8, v10)}];
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