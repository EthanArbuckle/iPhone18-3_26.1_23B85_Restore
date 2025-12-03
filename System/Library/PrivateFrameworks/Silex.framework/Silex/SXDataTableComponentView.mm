@interface SXDataTableComponentView
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (SXComponentController)componentController;
- (SXDataTableComponentView)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegate:(id)delegate componentStyleRendererFactory:(id)factory imageViewFactory:(id)viewFactory componentActionHandler:(id)handler textComponentLayoutHosting:(id)hosting componentController:(id)self0 adIgnorableViewFactory:(id)self1 config:(id)self2;
- (SXTextComponentLayoutHosting)textComponentLayoutHosting;
- (id)contentViewForBehavior:(id)behavior;
- (id)dataTableView:(id)view viewForCellAtIndexPath:(id)path constraintToSize:(CGSize)size;
- (id)descriptorForIndexPath:(id)path;
- (void)addTextStorageForIndexPath:(id)path toCollectior:(id)collectior;
- (void)dealloc;
- (void)presentComponentWithChanges:(id)changes;
- (void)receivedInfo:(id)info fromLayoutingPhaseWithIdentifier:(id)identifier;
- (void)setupShadowsIfNeeded;
- (void)updateShadowOpacity;
- (void)updateTangierController;
@end

@implementation SXDataTableComponentView

- (SXDataTableComponentView)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegate:(id)delegate componentStyleRendererFactory:(id)factory imageViewFactory:(id)viewFactory componentActionHandler:(id)handler textComponentLayoutHosting:(id)hosting componentController:(id)self0 adIgnorableViewFactory:(id)self1 config:(id)self2
{
  viewFactoryCopy = viewFactory;
  handlerCopy = handler;
  hostingCopy = hosting;
  controllerCopy = controller;
  ignorableViewFactoryCopy = ignorableViewFactory;
  configCopy = config;
  v28.receiver = self;
  v28.super_class = SXDataTableComponentView;
  v21 = [(SXComponentView *)&v28 initWithDOMObjectProvider:provider viewport:viewport presentationDelegate:delegate componentStyleRendererFactory:factory];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_imageViewFactory, viewFactory);
    objc_storeStrong(&v22->_componentActionHandler, handler);
    objc_storeWeak(&v22->_textComponentLayoutHosting, hostingCopy);
    objc_storeWeak(&v22->_componentController, controllerCopy);
    objc_storeStrong(&v22->_adIgnorableViewFactory, ignorableViewFactory);
    objc_storeStrong(&v22->_config, config);
  }

  return v22;
}

- (void)presentComponentWithChanges:(id)changes
{
  v52.receiver = self;
  v52.super_class = SXDataTableComponentView;
  [(SXComponentView *)&v52 presentComponentWithChanges:*&changes.var0 & 0xFFFFFFLL];
  tableView = [(SXDataTableComponentView *)self tableView];

  if (!tableView)
  {
    dataTableComponentController = [(SXDataTableComponentView *)self dataTableComponentController];
    numberOfRows = [dataTableComponentController numberOfRows];
    dataTableComponentController2 = [(SXDataTableComponentView *)self dataTableComponentController];
    v8 = +[SXDataTableDictionary dataTableDictionaryWithRows:andColumns:](SXDataTableDictionary, "dataTableDictionaryWithRows:andColumns:", numberOfRows, [dataTableComponentController2 numberOfColumns]);
    [(SXDataTableComponentView *)self setTextViews:v8];

    dataTableComponentController3 = [(SXDataTableComponentView *)self dataTableComponentController];
    numberOfRows2 = [dataTableComponentController3 numberOfRows];
    dataTableComponentController4 = [(SXDataTableComponentView *)self dataTableComponentController];
    v12 = +[SXDataTableDictionary dataTableDictionaryWithRows:andColumns:](SXDataTableDictionary, "dataTableDictionaryWithRows:andColumns:", numberOfRows2, [dataTableComponentController4 numberOfColumns]);
    [(SXDataTableComponentView *)self setImageViews:v12];

    v13 = objc_alloc_init(SXScrollView);
    v14 = objc_alloc_init(SXTangierDragItemProvider);
    v15 = [SXTangierController alloc];
    viewport = [(SXComponentView *)self viewport];
    componentActionHandler = [(SXDataTableComponentView *)self componentActionHandler];
    componentController = [(SXDataTableComponentView *)self componentController];
    dOMObjectProvider = [(SXComponentView *)self DOMObjectProvider];
    adIgnorableViewFactory = [(SXDataTableComponentView *)self adIgnorableViewFactory];
    config = [(SXDataTableComponentView *)self config];
    v22 = [(SXTangierController *)v15 initWithViewport:viewport scrollView:v13 componentActionHandler:componentActionHandler dragItemProvider:v14 componentController:componentController componentInteractionManager:0 DOMObjectProvider:dOMObjectProvider adIgnorableViewFactory:adIgnorableViewFactory config:config];
    [(SXDataTableComponentView *)self setTangierController:v22];

    tangierController = [(SXDataTableComponentView *)self tangierController];
    [tangierController setDelegate:self];

    presentationDelegate = [(SXComponentView *)self presentationDelegate];
    textSelectionManager = [presentationDelegate textSelectionManager];
    tangierController2 = [(SXDataTableComponentView *)self tangierController];
    [textSelectionManager addTextSelecting:tangierController2];

    v27 = [SXScrollView alloc];
    v28 = [(SXScrollView *)v27 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(SXDataTableComponentView *)self setScrollView:v28];

    scrollView = [(SXDataTableComponentView *)self scrollView];
    tangierController3 = [(SXDataTableComponentView *)self tangierController];
    v31 = [tangierController3 cvc];
    view = [v31 view];
    [scrollView addSubview:view];

    scrollView2 = [(SXDataTableComponentView *)self scrollView];
    tangierController4 = [(SXDataTableComponentView *)self tangierController];
    v35 = [tangierController4 icc];
    [scrollView2 setDelegate:v35];

    v36 = [[SXDataTableView alloc] initWithDataSource:?];
    [(SXDataTableComponentView *)self setTableView:v36];

    tangierController5 = [(SXDataTableComponentView *)self tangierController];
    v38 = [tangierController5 cvc];
    view2 = [v38 view];
    tableView2 = [(SXDataTableComponentView *)self tableView];
    [view2 addSubview:tableView2];

    contentView = [(SXComponentView *)self contentView];
    scrollView3 = [(SXDataTableComponentView *)self scrollView];
    [contentView addSubview:scrollView3];
  }

  tableView3 = [(SXDataTableComponentView *)self tableView];
  dataTableComponentController5 = [(SXDataTableComponentView *)self dataTableComponentController];
  [(SXDataTableView *)tableView3 setDataSource:dataTableComponentController5];

  tableView4 = [(SXDataTableComponentView *)self tableView];
  blueprint = [(SXDataTableComponentView *)self blueprint];
  [SXDataTableView setBlueprint:];

  scrollView4 = [(SXDataTableComponentView *)self scrollView];
  [(SXComponentView *)self contentFrame];
  [scrollView4 setFrame:?];

  scrollView5 = [(SXDataTableComponentView *)self scrollView];
  tableView5 = [(SXDataTableComponentView *)self tableView];
  [tableView5 bounds];
  [scrollView5 setContentSize:{v50, v51}];

  [(SXDataTableComponentView *)self setupShadowsIfNeeded];
  [(SXDataTableComponentView *)self updateTangierController];
}

- (void)dealloc
{
  tangierController = [(SXDataTableComponentView *)self tangierController];
  [tangierController teardown];

  v4.receiver = self;
  v4.super_class = SXDataTableComponentView;
  [(SXComponentView *)&v4 dealloc];
}

- (void)receivedInfo:(id)info fromLayoutingPhaseWithIdentifier:(id)identifier
{
  infoCopy = info;
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = SXDataTableComponentView;
  [(SXComponentView *)&v10 receivedInfo:infoCopy fromLayoutingPhaseWithIdentifier:identifierCopy];
  if ([identifierCopy isEqualToString:@"blueprint"])
  {
    v9 = &OBJC_IVAR___SXDataTableComponentView__blueprint;
LABEL_5:
    objc_storeStrong((&self->super.super.super.super.isa + *v9), info);
    goto LABEL_6;
  }

  if ([identifierCopy isEqualToString:@"component_controller"])
  {
    v9 = &OBJC_IVAR___SXDataTableComponentView__dataTableComponentController;
    goto LABEL_5;
  }

LABEL_6:
}

- (id)dataTableView:(id)view viewForCellAtIndexPath:(id)path constraintToSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  var1 = path.var1;
  var0 = path.var0;
  dataTableComponentController = [(SXDataTableComponentView *)self dataTableComponentController];
  cellObjects = [dataTableComponentController cellObjects];
  v12 = [cellObjects objectForIndexPath:{var0, var1}];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    dataTableComponentController2 = [(SXDataTableComponentView *)self dataTableComponentController];
    textLayouters = [dataTableComponentController2 textLayouters];
    v15 = [textLayouters objectForIndexPath:{var0, var1}];

    [v15 boundingSize];
    v17 = v16;
    textViews = [(SXDataTableComponentView *)self textViews];
    v19 = [textViews objectForIndexPath:{var0, var1}];

    if (!v19)
    {
      v19 = [[SXTextView alloc] initWithFrame:0.0, 0.0, width, v17];
      textViews2 = [(SXDataTableComponentView *)self textViews];
      [textViews2 setObject:v19 forIndexPath:{var0, var1}];

      tangierController = [(SXDataTableComponentView *)self tangierController];
      [tangierController didStartPresentingTextView:v19];
    }

    [(SXTextView *)v19 setFrame:0.0, 0.0, width, v17];
    [(SXTextView *)v19 setTextLayouter:v15];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v19 = 0;
      goto LABEL_18;
    }

    v15 = v12;
    var1 = [(SXDataTableComponentView *)self descriptorForIndexPath:var0, var1];
    format = [var1 format];
    [format maximumWidth];
    if (v22)
    {
      unitConverter = [(SXComponentView *)self unitConverter];
      maximumWidth = [format maximumWidth];
      [unitConverter convertValueToPoints:{maximumWidth, v25}];
      v27 = v26;

      if (width >= v27)
      {
        width = v27;
      }
    }

    [format maximumHeight];
    if (v28)
    {
      unitConverter2 = [(SXComponentView *)self unitConverter];
      maximumHeight = [format maximumHeight];
      [unitConverter2 convertValueToPoints:{maximumHeight, v31}];
      v33 = v32;

      if (height >= v33)
      {
        height = v33;
      }
    }

    imageViews = [(SXDataTableComponentView *)self imageViews];
    v19 = [imageViews objectForIndexPath:{var0, var1}];

    if (!v19)
    {
      imageViewFactory = [(SXDataTableComponentView *)self imageViewFactory];
      v19 = [imageViewFactory imageViewForResource:v15];

      [(SXTextView *)v19 addInterestInImageQuality:0 forObject:self];
      imageViews2 = [(SXDataTableComponentView *)self imageViews];
      [imageViews2 setObject:v19 forIndexPath:{var0, var1}];
    }

    [v15 sizeThatFits:{width, height}];
    [(SXTextView *)v19 setFrame:0.0, 0.0, v37, v38];
    [(SXTextView *)v19 bounds];
    [(SXTextView *)v19 setPreferredImageSize:v39, v40];
  }

LABEL_18:

  return v19;
}

- (void)updateTangierController
{
  tangierController = [(SXDataTableComponentView *)self tangierController];
  tableView = [(SXDataTableComponentView *)self tableView];
  [tableView bounds];
  Width = CGRectGetWidth(v9);
  tableView2 = [(SXDataTableComponentView *)self tableView];
  [tableView2 bounds];
  [tangierController setUnscaledCanvasRect:{0.0, 0.0, Width, CGRectGetHeight(v10)}];

  tangierController2 = [(SXDataTableComponentView *)self tangierController];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__SXDataTableComponentView_updateTangierController__block_invoke;
  v8[3] = &unk_1E8500888;
  v8[4] = self;
  [tangierController2 updateInfosWithBlock:v8];
}

void __51__SXDataTableComponentView_updateTangierController__block_invoke(uint64_t a1, void *a2)
{
  v14 = a2;
  v3 = [*(a1 + 32) blueprint];
  v4 = [v3 numberOfRows];

  v5 = [*(a1 + 32) tableView];
  v6 = [(SXDataTableView *)v5 blueprint];
  v7 = [v6 numberOfColumns];

  v8 = [*(a1 + 32) component];
  v9 = [v8 dataOrientation];

  if (v9)
  {
    if (v7)
    {
      for (i = 0; i != v7; ++i)
      {
        if (v4)
        {
          for (j = 0; j != v4; ++j)
          {
            [*(a1 + 32) addTextStorageForIndexPath:j toCollectior:{i, v14}];
          }
        }
      }
    }
  }

  else if (v4)
  {
    for (k = 0; k != v4; ++k)
    {
      if (v7)
      {
        for (m = 0; m != v7; ++m)
        {
          [*(a1 + 32) addTextStorageForIndexPath:k toCollectior:{m, v14}];
        }
      }
    }
  }
}

- (void)addTextStorageForIndexPath:(id)path toCollectior:(id)collectior
{
  var1 = path.var1;
  var0 = path.var0;
  collectiorCopy = collectior;
  textViews = [(SXDataTableComponentView *)self textViews];
  v8 = [textViews objectForIndexPath:{var0, var1}];

  dataTableComponentController = [(SXDataTableComponentView *)self dataTableComponentController];
  textLayouters = [dataTableComponentController textLayouters];
  v11 = [textLayouters objectForIndexPath:{var0, var1}];

  if (v8 && v11)
  {
    wpStorage = [v11 wpStorage];
    wpLayout = [v11 wpLayout];
    component = [(SXComponentView *)self component];
    identifier = [component identifier];
    var1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{row: %lu, column: %lu}", var0, var1];
    [collectiorCopy addTextStorage:wpStorage withLayout:wpLayout forNamedFlow:identifier directLayerHostView:v8 selectable:1 componentIdentifier:var1];
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  touchCopy = touch;
  view = [recognizer view];
  [touchCopy locationInView:view];
  v9 = v8;
  v11 = v10;

  tableView = [(SXDataTableComponentView *)self tableView];
  v13 = [(SXDataTableView *)tableView indexPathForPoint:v9, v11];
  v15 = v14;

  if (v15 == -1 && v13 == -1)
  {
    return 0;
  }

  dataTableComponentController = [(SXDataTableComponentView *)self dataTableComponentController];
  v18 = [dataTableComponentController indexPathIsHeader:{v13, v15}];

  return v18;
}

- (void)setupShadowsIfNeeded
{
  leftShadow = [(SXDataTableComponentView *)self leftShadow];
  if (leftShadow)
  {
  }

  else
  {
    rightShadow = [(SXDataTableComponentView *)self rightShadow];

    if (!rightShadow)
    {
      goto LABEL_5;
    }
  }

  leftShadow2 = [(SXDataTableComponentView *)self leftShadow];
  [leftShadow2 removeFromSuperlayer];

  rightShadow2 = [(SXDataTableComponentView *)self rightShadow];
  [rightShadow2 removeFromSuperlayer];

LABEL_5:
  scrollView = [(SXDataTableComponentView *)self scrollView];
  [scrollView contentSize];
  v9 = v8;
  scrollView2 = [(SXDataTableComponentView *)self scrollView];
  [scrollView2 bounds];
  Width = CGRectGetWidth(v61);

  if (v9 > Width)
  {
    layer = [MEMORY[0x1E6979398] layer];
    [(SXDataTableComponentView *)self setLeftShadow:layer];

    leftShadow3 = [(SXDataTableComponentView *)self leftShadow];
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [leftShadow3 setBackgroundColor:{objc_msgSend(blackColor, "CGColor")}];

    leftShadow4 = [(SXDataTableComponentView *)self leftShadow];
    scrollView3 = [(SXDataTableComponentView *)self scrollView];
    [scrollView3 frame];
    v17 = CGRectGetMinX(v62) + -4.0;
    scrollView4 = [(SXDataTableComponentView *)self scrollView];
    [scrollView4 bounds];
    [leftShadow4 setFrame:{v17, 0.0, 0.0, CGRectGetHeight(v63)}];

    leftShadow5 = [(SXDataTableComponentView *)self leftShadow];
    v20 = MEMORY[0x1E69DC728];
    scrollView5 = [(SXDataTableComponentView *)self scrollView];
    [scrollView5 bounds];
    v22 = [v20 bezierPathWithRect:{1.0, -4.0, 1.0, CGRectGetHeight(v64) + 8.0}];
    [leftShadow5 setShadowPath:{objc_msgSend(v22, "CGPath")}];

    leftShadow6 = [(SXDataTableComponentView *)self leftShadow];
    blackColor2 = [MEMORY[0x1E69DC888] blackColor];
    [leftShadow6 setShadowColor:{objc_msgSend(blackColor2, "CGColor")}];

    leftShadow7 = [(SXDataTableComponentView *)self leftShadow];
    [leftShadow7 setShadowRadius:3.0];

    leftShadow8 = [(SXDataTableComponentView *)self leftShadow];
    LODWORD(v27) = 1.0;
    [leftShadow8 setShadowOpacity:v27];

    leftShadow9 = [(SXDataTableComponentView *)self leftShadow];
    [leftShadow9 setShadowOffset:{0.0, 0.0}];

    layer2 = [MEMORY[0x1E6979398] layer];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [layer2 setBackgroundColor:{objc_msgSend(whiteColor, "CGColor")}];

    scrollView6 = [(SXDataTableComponentView *)self scrollView];
    [scrollView6 bounds];
    [layer2 setFrame:{4.0, -8.0, 16.0, CGRectGetHeight(v65) + 16.0}];

    leftShadow10 = [(SXDataTableComponentView *)self leftShadow];
    [leftShadow10 setMask:layer2];

    layer3 = [MEMORY[0x1E6979398] layer];
    [(SXDataTableComponentView *)self setRightShadow:layer3];

    rightShadow3 = [(SXDataTableComponentView *)self rightShadow];
    blackColor3 = [MEMORY[0x1E69DC888] blackColor];
    [rightShadow3 setBackgroundColor:{objc_msgSend(blackColor3, "CGColor")}];

    rightShadow4 = [(SXDataTableComponentView *)self rightShadow];
    scrollView7 = [(SXDataTableComponentView *)self scrollView];
    [scrollView7 bounds];
    v37 = CGRectGetWidth(v66) + 4.0;
    scrollView8 = [(SXDataTableComponentView *)self scrollView];
    [scrollView8 bounds];
    [rightShadow4 setFrame:{v37, 0.0, 0.0, CGRectGetHeight(v67)}];

    rightShadow5 = [(SXDataTableComponentView *)self rightShadow];
    v40 = MEMORY[0x1E69DC728];
    scrollView9 = [(SXDataTableComponentView *)self scrollView];
    [scrollView9 bounds];
    v42 = [v40 bezierPathWithRect:{-1.0, -4.0, 1.0, CGRectGetHeight(v68) + 8.0}];
    [rightShadow5 setShadowPath:{objc_msgSend(v42, "CGPath")}];

    rightShadow6 = [(SXDataTableComponentView *)self rightShadow];
    blackColor4 = [MEMORY[0x1E69DC888] blackColor];
    [rightShadow6 setShadowColor:{objc_msgSend(blackColor4, "CGColor")}];

    rightShadow7 = [(SXDataTableComponentView *)self rightShadow];
    [rightShadow7 setShadowRadius:3.0];

    rightShadow8 = [(SXDataTableComponentView *)self rightShadow];
    LODWORD(v47) = 1.0;
    [rightShadow8 setShadowOpacity:v47];

    rightShadow9 = [(SXDataTableComponentView *)self rightShadow];
    [rightShadow9 setShadowOffset:{0.0, 0.0}];

    layer4 = [MEMORY[0x1E6979398] layer];
    whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
    [layer4 setBackgroundColor:{objc_msgSend(whiteColor2, "CGColor")}];

    scrollView10 = [(SXDataTableComponentView *)self scrollView];
    [scrollView10 bounds];
    [layer4 setFrame:{-20.0, -8.0, 16.0, CGRectGetHeight(v69) + 16.0}];

    rightShadow10 = [(SXDataTableComponentView *)self rightShadow];
    [rightShadow10 setMask:layer4];

    [(SXDataTableComponentView *)self updateShadowOpacity];
    contentView = [(SXComponentView *)self contentView];
    layer5 = [contentView layer];
    leftShadow11 = [(SXDataTableComponentView *)self leftShadow];
    [layer5 addSublayer:leftShadow11];

    contentView2 = [(SXComponentView *)self contentView];
    layer6 = [contentView2 layer];
    rightShadow11 = [(SXDataTableComponentView *)self rightShadow];
    [layer6 addSublayer:rightShadow11];
  }
}

- (void)updateShadowOpacity
{
  scrollView = [(SXDataTableComponentView *)self scrollView];
  [scrollView contentOffset];
  v5 = v4;
  v6 = 0.0;
  if (v4 <= 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = 1.0;
  }

  scrollView2 = [(SXDataTableComponentView *)self scrollView];
  [scrollView2 contentOffset];
  v10 = v9;
  scrollView3 = [(SXDataTableComponentView *)self scrollView];
  [scrollView3 bounds];
  v12 = v10 + CGRectGetWidth(v29);
  scrollView4 = [(SXDataTableComponentView *)self scrollView];
  [scrollView4 contentSize];
  v15 = v14;
  if (v12 < v14)
  {
    v6 = 1.0;
  }

  leftShadow = [(SXDataTableComponentView *)self leftShadow];
  [leftShadow opacity];
  v18 = v17;

  if (v7 != v18)
  {
    leftShadow2 = [(SXDataTableComponentView *)self leftShadow];
    v20 = leftShadow2;
    v21 = 0.0;
    if (v5 > 0.0)
    {
      *&v21 = 1.0;
    }

    [leftShadow2 setOpacity:v21];
  }

  rightShadow = [(SXDataTableComponentView *)self rightShadow];
  [rightShadow opacity];
  v24 = v23;

  if (v6 != v24)
  {
    rightShadow2 = [(SXDataTableComponentView *)self rightShadow];
    v27 = rightShadow2;
    v26 = 0.0;
    if (v12 < v15)
    {
      *&v26 = 1.0;
    }

    [rightShadow2 setOpacity:v26];
  }
}

- (id)contentViewForBehavior:(id)behavior
{
  behaviorCopy = behavior;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && [behaviorCopy windowed] || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    selfCopy = [(SXComponentView *)self fillView];
  }

  else
  {
    selfCopy = self;
  }

  v6 = selfCopy;

  return v6;
}

- (id)descriptorForIndexPath:(id)path
{
  var1 = path.var1;
  var0 = path.var0;
  component = [(SXComponentView *)self component];
  if ([component dataOrientation])
  {
    var1 = var0;
  }

  component2 = [(SXComponentView *)self component];
  data = [component2 data];
  descriptors = [data descriptors];
  v10 = [descriptors objectAtIndex:var1];

  return v10;
}

- (SXTextComponentLayoutHosting)textComponentLayoutHosting
{
  WeakRetained = objc_loadWeakRetained(&self->_textComponentLayoutHosting);

  return WeakRetained;
}

- (SXComponentController)componentController
{
  WeakRetained = objc_loadWeakRetained(&self->_componentController);

  return WeakRetained;
}

@end