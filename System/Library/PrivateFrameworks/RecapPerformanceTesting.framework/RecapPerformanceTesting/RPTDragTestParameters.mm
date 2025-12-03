@interface RPTDragTestParameters
- (RPTDragTestParameters)initWithTestName:(id)name window:(id)window completionHandler:(id)handler;
- (id)composerBlock;
- (void)_makeDraggableVectors:(CGVector *)vectors forWindow:(id)window;
- (void)prepareWithComposer:(id)composer;
@end

@implementation RPTDragTestParameters

- (void)prepareWithComposer:(id)composer
{
  window = [(RPTDragTestParameters *)self window];
  [window _rpt_safeVisibleFrameOfScreen];
  v6 = v5;
  v8 = v7;

  window2 = [(RPTDragTestParameters *)self window];
  [window2 _rpt_moveToSafeTopLeftOfScreemVisibleFrameAndResize:{v6 * 0.5, v8 * 0.5}];
}

- (RPTDragTestParameters)initWithTestName:(id)name window:(id)window completionHandler:(id)handler
{
  nameCopy = name;
  windowCopy = window;
  handlerCopy = handler;
  v19.receiver = self;
  v19.super_class = RPTDragTestParameters;
  v12 = [(RPTDragTestParameters *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_testName, name);
    objc_storeStrong(&v13->_window, window);
    v14 = MEMORY[0x2667162B0](handlerCopy);
    completionHandler = v13->_completionHandler;
    v13->_completionHandler = v14;

    v16 = [RPTCoordinateSpaceConverter converterFromWindow:windowCopy];
    conversion = v13->_conversion;
    v13->_conversion = v16;
  }

  return v13;
}

- (void)_makeDraggableVectors:(CGVector *)vectors forWindow:(id)window
{
  windowCopy = window;
  [windowCopy _rpt_safeVisibleFrameOfScreen];
  v7 = v6;
  v27 = v8;
  v28 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [windowCopy nsWindowFrame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v29.origin.x = v7;
  v29.origin.y = v9;
  v29.size.width = v11;
  v29.size.height = v13;
  Width = CGRectGetWidth(v29);
  v30.origin.x = v15;
  v30.origin.y = v17;
  v30.size.width = v19;
  v30.size.height = v21;
  v23 = Width - CGRectGetWidth(v30);
  v31.origin.y = v27;
  v31.origin.x = v28;
  v31.size.width = v11;
  v31.size.height = v13;
  Height = CGRectGetHeight(v31);
  v32.origin.x = v15;
  v32.origin.y = v17;
  v32.size.width = v19;
  v32.size.height = v21;
  v25 = CGRectGetHeight(v32);
  vectors->dx = v23;
  v26 = Height - v25;
  vectors->dy = 0.0;
  vectors[1].dx = 0.0;
  vectors[1].dy = v26;
  vectors[2].dx = -v23;
  vectors[2].dy = 0.0;
  vectors[3].dx = 0.0;
  vectors[3].dy = -v26;
}

- (id)composerBlock
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__RPTDragTestParameters_composerBlock__block_invoke;
  v4[3] = &unk_279AF38A8;
  v4[4] = self;
  v2 = MEMORY[0x2667162B0](v4, a2);

  return v2;
}

void __38__RPTDragTestParameters_composerBlock__block_invoke(uint64_t a1, void *a2)
{
  v11[8] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v4 window];
  [v4 _makeDraggableVectors:v11 forWindow:v5];

  v6 = [RPTDragInteraction alloc];
  v7 = [*(a1 + 32) window];
  v8 = [(RPTDragInteraction *)v6 initByDraggingWindow:v7 byDelta:v11[0], v11[1]];

  [v8 invokeWithComposer:v3 duration:1.25];
  for (i = 0; i != 6; i += 2)
  {
    v10 = v8;
    v8 = [v8 _andThenDragBy:{v11[i + 2], v11[i + 3]}];

    [v8 invokeWithComposer:v3 duration:1.25];
  }
}

@end