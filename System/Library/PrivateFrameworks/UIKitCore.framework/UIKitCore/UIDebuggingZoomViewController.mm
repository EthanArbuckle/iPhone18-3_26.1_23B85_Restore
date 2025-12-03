@interface UIDebuggingZoomViewController
- (CGImage)newCaptureSnapshotAtRect:(CGRect)rect window:(id)window;
- (UIDebuggingZoomViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)drawLinesAtPoint:(CGPoint)point;
- (id)drawViewLinesAtPoint:(CGPoint)point forView:(id)view;
- (void)dealloc;
- (void)toggleDirection:(id)direction;
- (void)toggleMeasuring:(id)measuring;
- (void)toggleMode:(id)mode;
- (void)updateGesture:(id)gesture;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation UIDebuggingZoomViewController

- (UIDebuggingZoomViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v10.receiver = self;
  v10.super_class = UIDebuggingZoomViewController;
  v4 = [(UIViewController *)&v10 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = dispatch_group_create();
    group = v4->_group;
    v4->_group = v5;

    v7 = dispatch_get_global_queue(0, 0);
    queue = v4->_queue;
    v4->_queue = v7;

    v4->_currentDirection = 0;
  }

  return v4;
}

- (void)viewDidLoad
{
  v56[6] = *MEMORY[0x1E69E9840];
  v54.receiver = self;
  v54.super_class = UIDebuggingZoomViewController;
  [(UIViewController *)&v54 viewDidLoad];
  view = [(UIViewController *)self view];
  v4 = +[UIColor whiteColor];
  [view setBackgroundColor:v4];

  v5 = [[UILabel alloc] initWithFrame:0.0, 0.0, 200.0, 50.0];
  v6 = +[UIColor blackColor];
  [(UILabel *)v5 setTextColor:v6];

  v7 = [off_1E70ECC18 systemFontOfSize:10.0];
  [(UILabel *)v5 setFont:v7];

  [(UIDebuggingZoomViewController *)self setLabel:v5];
  label = [(UIDebuggingZoomViewController *)self label];
  [label setTranslatesAutoresizingMaskIntoConstraints:0];

  view2 = [(UIViewController *)self view];
  v10 = v5;
  [view2 addSubview:v5];

  v11 = [[UILabel alloc] initWithFrame:0.0, 0.0, 200.0, 50.0];
  v12 = +[UIColor blackColor];
  [(UILabel *)v11 setTextColor:v12];

  v13 = [off_1E70ECC18 systemFontOfSize:10.0];
  [(UILabel *)v11 setFont:v13];

  [(UIDebuggingZoomViewController *)self setDistanceLabel:v11];
  distanceLabel = [(UIDebuggingZoomViewController *)self distanceLabel];
  [distanceLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  view3 = [(UIViewController *)self view];
  [view3 addSubview:v11];

  v16 = objc_alloc_init(UIDebuggingZoomLoupeView);
  [(UIDebuggingZoomViewController *)self setLoupe:v16];

  loupe = [(UIDebuggingZoomViewController *)self loupe];
  [loupe setDelegate:self];

  loupe2 = [(UIDebuggingZoomViewController *)self loupe];
  [loupe2 setTranslatesAutoresizingMaskIntoConstraints:0];

  view4 = [(UIViewController *)self view];
  loupe3 = [(UIDebuggingZoomViewController *)self loupe];
  [view4 addSubview:loupe3];

  v21 = [[UISegmentedControl alloc] initWithItems:&unk_1EFE2DDF8];
  [(UISegmentedControl *)v21 setSelectedSegmentIndex:0];
  [(UIControl *)v21 addTarget:self action:sel_toggleDirection_ forControlEvents:4096];
  [(UIDebuggingZoomViewController *)self setDirectionSegmentedControl:v21];
  view5 = [(UIViewController *)self view];
  [view5 addSubview:v21];

  v23 = objc_alloc_init(UISwitch);
  [(UIView *)v23 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIControl *)v23 addTarget:self action:sel_toggleMode_ forControlEvents:4096];
  view6 = [(UIViewController *)self view];
  v25 = v23;
  v53 = v23;
  [view6 addSubview:v23];

  v26 = [[UILabel alloc] initWithFrame:0.0, 0.0, 200.0, 20.0];
  v27 = +[UIColor blackColor];
  [(UILabel *)v26 setTextColor:v27];

  v28 = [off_1E70ECC18 systemFontOfSize:10.0];
  [(UILabel *)v26 setFont:v28];

  [(UIView *)v26 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)v26 setText:@"View Mode"];
  view7 = [(UIViewController *)self view];
  [view7 addSubview:v26];

  v56[0] = v21;
  v55[0] = @"segment";
  v55[1] = @"loupe";
  loupe4 = [(UIDebuggingZoomViewController *)self loupe];
  v56[1] = loupe4;
  v56[2] = v10;
  v31 = v10;
  v55[2] = @"label";
  v55[3] = @"distanceLabel";
  v56[3] = v11;
  v56[4] = v25;
  v55[4] = @"switch";
  v55[5] = @"modeLabel";
  v56[5] = v26;
  v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:6];

  array = [MEMORY[0x1E695DF70] array];
  [(UIView *)v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  v34 = MEMORY[0x1E69977A0];
  view8 = [(UIViewController *)self view];
  v36 = [v34 constraintWithItem:view8 attribute:9 relatedBy:0 toItem:v21 attribute:9 multiplier:1.0 constant:0.0];
  [array addObject:v36];

  v37 = MEMORY[0x1E69977A0];
  view9 = [(UIViewController *)self view];
  v39 = [v37 constraintWithItem:v21 attribute:3 relatedBy:0 toItem:view9 attribute:3 multiplier:1.0 constant:10.0];
  [array addObject:v39];

  v40 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:@"V:[segment]-padding-[loupe(>=loupesize)]" options:0 metrics:&unk_1EFE34B58 views:v32];
  [array addObjectsFromArray:v40];

  v41 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:@"V:[segment]-padding-[switch]" options:0 metrics:&unk_1EFE34B58 views:v32];
  [array addObjectsFromArray:v41];

  v42 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:@"H:|-padding-[loupe(>=loupesize)]-padding-[switch]-padding-|" options:0 metrics:&unk_1EFE34B58 views:v32];
  [array addObjectsFromArray:v42];

  v43 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:@"V:[switch]-padding-[modeLabel]" options:0 metrics:&unk_1EFE34B58 views:v32];
  [array addObjectsFromArray:v43];

  v44 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:@"H:|-padding-[loupe(>=loupesize)]-padding-[modeLabel(>=labelsize)]-padding-|" options:0 metrics:&unk_1EFE34B58 views:v32];
  [array addObjectsFromArray:v44];

  v45 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:@"V:[loupe]-padding-[label]" options:0 metrics:&unk_1EFE34B58 views:v32];
  [array addObjectsFromArray:v45];

  v46 = MEMORY[0x1E69977A0];
  view10 = [(UIViewController *)self view];
  v48 = [v46 constraintWithItem:view10 attribute:9 relatedBy:0 toItem:v31 attribute:9 multiplier:1.0 constant:0.0];
  [array addObject:v48];

  v49 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:@"V:[label]-5-[distanceLabel]-padding-|" options:0 metrics:&unk_1EFE34B58 views:v32];
  [array addObjectsFromArray:v49];

  v50 = MEMORY[0x1E69977A0];
  view11 = [(UIViewController *)self view];
  v52 = [v50 constraintWithItem:view11 attribute:9 relatedBy:0 toItem:v11 attribute:9 multiplier:1.0 constant:0.0];
  [array addObject:v52];

  [MEMORY[0x1E69977A0] activateConstraints:array];
  [(UIViewController *)self setEdgesForExtendedLayout:0];
  [(UIViewController *)self setExtendedLayoutIncludesOpaqueBars:0];
}

- (void)toggleMode:(id)mode
{
  modeCopy = mode;
  -[UIDebuggingZoomViewController setUseViewForEdges:](self, "setUseViewForEdges:", [modeCopy isOn]);
  isOn = [modeCopy isOn];

  if ((isOn & 1) == 0)
  {
    v6 = *MEMORY[0x1E695F058];
    v7 = *(MEMORY[0x1E695F058] + 8);
    v8 = *(MEMORY[0x1E695F058] + 16);
    v9 = *(MEMORY[0x1E695F058] + 24);
    lineView = [(UIDebuggingZoomViewController *)self lineView];
    [lineView setRect:{v6, v7, v8, v9}];

    lineView2 = [(UIDebuggingZoomViewController *)self lineView];
    [lineView2 setNeedsDisplay];
  }
}

- (void)toggleDirection:(id)direction
{
  directionCopy = direction;
  selectedSegmentIndex = [directionCopy selectedSegmentIndex];
  v5 = +[UIDebuggingInformationOverlay overlay];
  v6 = v5;
  if (selectedSegmentIndex)
  {
    touchCaptureEnabled = [v5 touchCaptureEnabled];

    if ((touchCaptureEnabled & 1) == 0)
    {
      v8 = +[UIDebuggingInformationOverlay overlay];
      [v8 setTouchCaptureEnabled:1];

      lineView = [(UIDebuggingZoomViewController *)self lineView];
      [lineView setHidden:0];
    }

    if ([directionCopy selectedSegmentIndex] == 1)
    {
      selfCopy2 = self;
      v11 = 0;
    }

    else
    {
      selfCopy2 = self;
      v11 = 1;
    }

    [(UIDebuggingZoomViewController *)selfCopy2 setCurrentDirection:v11];
  }

  else
  {
    [v5 setTouchCaptureEnabled:0];

    lineView2 = [(UIDebuggingZoomViewController *)self lineView];
    [lineView2 setHidden:1];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v18.receiver = self;
  v18.super_class = UIDebuggingZoomViewController;
  [(UIViewController *)&v18 viewDidAppear:appear];
  lineView = [(UIDebuggingZoomViewController *)self lineView];

  if (!lineView)
  {
    v5 = [UIDebuggingZoomLineView alloc];
    view = [(UIViewController *)self view];
    window = [view window];
    [window frame];
    v8 = [(UIDebuggingZoomLineView *)v5 initWithFrame:?];
    [(UIDebuggingZoomViewController *)self setLineView:v8];

    view2 = [(UIViewController *)self view];
    window2 = [view2 window];
    rootViewController = [window2 rootViewController];
    view3 = [rootViewController view];
    lineView2 = [(UIDebuggingZoomViewController *)self lineView];
    [view3 insertSubview:lineView2 atIndex:0];

    v14 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:sel_updateGesture_];
    lineView3 = [(UIDebuggingZoomViewController *)self lineView];
    [lineView3 addGestureRecognizer:v14];

    [(UIDebuggingZoomViewController *)self setPan:v14];
    lineView4 = [(UIDebuggingZoomViewController *)self lineView];
    v17 = +[UIDebuggingInformationOverlay overlay];
    [lineView4 setHidden:{objc_msgSend(v17, "touchCaptureEnabled") ^ 1}];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = UIDebuggingZoomViewController;
  [(UIViewController *)&v6 viewWillDisappear:disappear];
  lineView = [(UIDebuggingZoomViewController *)self lineView];
  [lineView setHidden:1];

  v5 = +[UIDebuggingInformationOverlay overlay];
  [v5 setTouchCaptureEnabled:0];
}

- (void)updateGesture:(id)gesture
{
  gestureCopy = gesture;
  v4 = [gestureCopy state] == 2;
  v5 = gestureCopy;
  if (v4)
  {
    [gestureCopy locationInView:0];
    v7 = v6;
    v9 = v8;
    loupe = [(UIDebuggingZoomViewController *)self loupe];
    [loupe setCurrentlyInspectedPoint:{v7, v9}];

    v11 = +[UIDebuggingInformationOverlay overlay];
    inspectedWindow = [v11 inspectedWindow];
    v13 = [inspectedWindow hitTest:0 withEvent:{v7, v9}];

    superview = [v13 superview];
    [v13 frame];
    [superview convertPoint:0 toView:?];
    v16 = v15;
    v18 = v17;
    [v13 frame];
    v20 = v19;
    v22 = v21;

    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    label = [(UIDebuggingZoomViewController *)self label];
    [label setText:v24];

    if ([(UIDebuggingZoomViewController *)self useViewForEdges])
    {
      lineView = [(UIDebuggingZoomViewController *)self lineView];
      [lineView setRect:{v16, v18, v20, v22}];

      lastViewSeen = [(UIDebuggingZoomViewController *)self lastViewSeen];

      if (lastViewSeen)
      {
        lastViewSeen2 = [(UIDebuggingZoomViewController *)self lastViewSeen];
        v29 = [(UIDebuggingZoomViewController *)self drawViewLinesAtPoint:lastViewSeen2 forView:v7, v9];

        goto LABEL_9;
      }

      v30 = [(UIDebuggingZoomViewController *)self drawViewLinesAtPoint:0 forView:v7, v9];
    }

    else
    {
      v30 = [(UIDebuggingZoomViewController *)self drawLinesAtPoint:v7, v9];
    }

    v29 = v30;
LABEL_9:
    lineView2 = [(UIDebuggingZoomViewController *)self lineView];
    v32 = [v29 objectAtIndexedSubscript:0];
    [v32 CGPointValue];
    [lineView2 setStart:?];

    lineView3 = [(UIDebuggingZoomViewController *)self lineView];
    v34 = [v29 objectAtIndexedSubscript:1];
    [v34 CGPointValue];
    [lineView3 setEnd:?];

    currentDirection = [(UIDebuggingZoomViewController *)self currentDirection];
    if (currentDirection == 1)
    {
      v36 = MEMORY[0x1E696AEC0];
      lineView4 = [(UIDebuggingZoomViewController *)self lineView];
      [lineView4 end];
      v44 = v43;
      lineView5 = [(UIDebuggingZoomViewController *)self lineView];
      [lineView5 start];
      v42 = v44 - v45;
    }

    else
    {
      if (currentDirection)
      {
LABEL_14:

        v5 = gestureCopy;
        goto LABEL_15;
      }

      v36 = MEMORY[0x1E696AEC0];
      lineView4 = [(UIDebuggingZoomViewController *)self lineView];
      [lineView4 end];
      v39 = v38;
      lineView5 = [(UIDebuggingZoomViewController *)self lineView];
      [lineView5 start];
      v42 = v39 - v41;
    }

    v46 = [v36 stringWithFormat:@"%.1f", *&v42];
    distanceLabel = [(UIDebuggingZoomViewController *)self distanceLabel];
    [distanceLabel setText:v46];

    goto LABEL_14;
  }

LABEL_15:
}

- (void)toggleMeasuring:(id)measuring
{
  v4 = +[UIDebuggingInformationOverlay overlay];
  touchCaptureEnabled = [v4 touchCaptureEnabled];

  v6 = +[UIDebuggingInformationOverlay overlay];
  [v6 setTouchCaptureEnabled:touchCaptureEnabled ^ 1];

  lineView = [(UIDebuggingZoomViewController *)self lineView];
  [lineView setHidden:touchCaptureEnabled];
}

- (id)drawLinesAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  image = self->_image;
  if (!image)
  {
    v7 = +[UIDebuggingInformationOverlay overlay];
    inspectedWindow = [v7 inspectedWindow];

    [inspectedWindow frame];
    self->_image = [(UIDebuggingZoomViewController *)self newCaptureSnapshotAtRect:inspectedWindow window:?];

    image = self->_image;
  }

  BitsPerPixel = CGImageGetBitsPerPixel(image);
  BytesPerRow = CGImageGetBytesPerRow(image);
  array = [MEMORY[0x1E695DF70] array];
  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen scale];
  v14 = v13;

  DataProvider = CGImageGetDataProvider(image);
  v16 = CGDataProviderCopyData(DataProvider);
  BytePtr = CFDataGetBytePtr(v16);
  if (BytePtr)
  {
    v18 = BytePtr;
    v42 = 0;
    v43 = &v42;
    v44 = 0x2020000000;
    v45 = 0;
    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v41 = 0;
    v19 = round(x * v14);
    v20 = round(y * v14);
    if ([(UIDebuggingZoomViewController *)self currentDirection])
    {
      v21 = v19;
    }

    else
    {
      v21 = v20;
    }

    v39[3] = v21;
    v43[3] = v21;
    group = [(UIDebuggingZoomViewController *)self group];
    queue = [(UIDebuggingZoomViewController *)self queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__UIDebuggingZoomViewController_drawLinesAtPoint___block_invoke;
    block[3] = &unk_1E7127EC8;
    *&block[6] = v19;
    *&block[7] = v20;
    block[8] = BytesPerRow;
    block[9] = BitsPerPixel;
    block[10] = v18;
    block[11] = &v18[(v20 * BytesPerRow + v19 * (BitsPerPixel >> 3))];
    block[4] = self;
    block[5] = &v42;
    dispatch_group_async(group, queue, block);

    group2 = [(UIDebuggingZoomViewController *)self group];
    queue2 = [(UIDebuggingZoomViewController *)self queue];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __50__UIDebuggingZoomViewController_drawLinesAtPoint___block_invoke_2;
    v36[3] = &unk_1E7127EF0;
    *&v36[7] = v19;
    *&v36[8] = v20;
    v36[9] = BytesPerRow;
    v36[10] = BitsPerPixel;
    v36[11] = v18;
    v36[12] = &v18[(v20 * BytesPerRow + v19 * (BitsPerPixel >> 3))];
    v36[4] = self;
    v36[5] = &v38;
    v36[6] = image;
    dispatch_group_async(group2, queue2, v36);

    group3 = [(UIDebuggingZoomViewController *)self group];
    dispatch_group_wait(group3, 0xFFFFFFFFFFFFFFFFLL);

    currentDirection = [(UIDebuggingZoomViewController *)self currentDirection];
    v28 = v39[3] / v14;
    if (currentDirection)
    {
      v29 = v43[3] / v14;
      v30 = v20 / v14;
      v31 = v39[3] / v14;
      v28 = v30;
    }

    else
    {
      v31 = v19 / v14;
      v30 = v43[3] / v14;
      v29 = v19 / v14;
    }

    v32 = [MEMORY[0x1E696B098] valueWithCGPoint:{v29, v30}];
    [array addObject:v32];

    v33 = [MEMORY[0x1E696B098] valueWithCGPoint:{v31, v28}];
    [array addObject:v33];

    _Block_object_dispose(&v38, 8);
    _Block_object_dispose(&v42, 8);
  }

  CFRelease(v16);
  v34 = [array copy];

  return v34;
}

uint64_t __50__UIDebuggingZoomViewController_drawLinesAtPoint___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56) + 1.0;
  if ([*(a1 + 32) currentDirection])
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  while (v4 > 0.0)
  {
    v5 = [*(a1 + 32) currentDirection];
    v4 = v3 + -1.0;
    v6 = v2 + -1.0;
    if (v5)
    {
      v2 = v2 + -1.0;
    }

    else
    {
      v3 = v3 + -1.0;
    }

    if (v5)
    {
      v4 = v6;
    }

    v7 = *(a1 + 88);
    if (*(v7 + 3))
    {
      v8 = *(a1 + 80) + (v3 * *(a1 + 64) + v2 * (*(a1 + 72) >> 3));
      if (*(v8 + 3))
      {
        v9 = 0.0;
        for (i = 1; i != 4; ++i)
        {
          v9 = v9 + ((*(v7 + i) - *(v8 + i)) * (*(v7 + i) - *(v8 + i)));
        }

        v11 = v9;
        if (sqrtf(v11) > 10.0)
        {
          break;
        }
      }
    }
  }

  result = [*(a1 + 32) currentDirection];
  if (result)
  {
    v13 = v2;
  }

  else
  {
    v13 = v3;
  }

  *(*(*(a1 + 40) + 8) + 24) = v13;
  return result;
}

uint64_t __50__UIDebuggingZoomViewController_drawLinesAtPoint___block_invoke_2(uint64_t a1)
{
  Width = CGImageGetWidth(*(a1 + 48));
  Height = CGImageGetHeight(*(a1 + 48));
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = [*(a1 + 32) currentDirection];
  v8 = -1.0;
  if (v6)
  {
    v4 = v4 + -1.0;
    v9 = (Width - 1);
    if (v4 >= v9)
    {
      goto LABEL_17;
    }

    v10 = (Height - 1);
  }

  else
  {
    v5 = v5 + -1.0;
    v10 = (Height - 1);
    if (v5 >= v10)
    {
      goto LABEL_17;
    }

    v9 = (Width - 1);
  }

  do
  {
    v11 = [*(a1 + 32) currentDirection];
    v8 = v5 + 1.0;
    v12 = v5 + 1.0 < v10;
    v7 = v4 + 1.0;
    v13 = v4 + 1.0 < v9;
    if (v11)
    {
      v4 = v4 + 1.0;
    }

    else
    {
      v5 = v5 + 1.0;
    }

    if (v11)
    {
      v12 = v13;
    }

    v14 = *(a1 + 96);
    if (*(v14 + 3))
    {
      v7 = v4 * (*(a1 + 80) >> 3);
      v8 = v5 * *(a1 + 72) + v7;
      v15 = *(a1 + 88) + v8;
      if (*(v15 + 3))
      {
        v8 = 0.0;
        for (i = 1; i != 4; ++i)
        {
          v7 = ((*(v14 + i) - *(v15 + i)) * (*(v14 + i) - *(v15 + i)));
          v8 = v8 + v7;
        }

        v17 = v8;
        *&v8 = sqrtf(v17);
        v12 &= *&v8 <= 10.0;
      }
    }
  }

  while ((v12 & 1) != 0);
LABEL_17:
  result = [*(a1 + 32) currentDirection];
  if (result == 1)
  {
    v19 = v4;
  }

  else
  {
    v19 = v5;
  }

  *(*(*(a1 + 40) + 8) + 24) = v19;
  return result;
}

- (id)drawViewLinesAtPoint:(CGPoint)point forView:(id)view
{
  y = point.y;
  x = point.x;
  v28[2] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  if (viewCopy)
  {
    inspectedWindow = viewCopy;
    window = [viewCopy window];
    [window convertPoint:inspectedWindow toView:{x, y}];
    x = v10;
    y = v11;
  }

  else
  {
    window = +[UIDebuggingInformationOverlay overlay];
    inspectedWindow = [window inspectedWindow];
  }

  v12 = [inspectedWindow hitTest:0 withEvent:{x, y}];
  currentDirection = [(UIDebuggingZoomViewController *)self currentDirection];
  [v12 bounds];
  [v12 convertPoint:0 toView:?];
  if (currentDirection)
  {
    v16 = v14;
    v17 = [MEMORY[0x1E696B098] valueWithCGPoint:?];
    v27[0] = v17;
    v18 = MEMORY[0x1E696B098];
    [v12 bounds];
    v20 = [v18 valueWithCGPoint:{v16 + v19, y}];
    v27[1] = v20;
    v21 = v27;
  }

  else
  {
    v22 = v15;
    v17 = [MEMORY[0x1E696B098] valueWithCGPoint:x];
    v28[0] = v17;
    v23 = MEMORY[0x1E696B098];
    [v12 bounds];
    v20 = [v23 valueWithCGPoint:{x, v22 + v24}];
    v28[1] = v20;
    v21 = v28;
  }

  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];

  return v25;
}

- (void)dealloc
{
  image = self->_image;
  if (image)
  {
    CFRelease(image);
  }

  v4.receiver = self;
  v4.super_class = UIDebuggingZoomViewController;
  [(UIViewController *)&v4 dealloc];
}

- (CGImage)newCaptureSnapshotAtRect:(CGRect)rect window:(id)window
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v68[16] = *MEMORY[0x1E69E9840];
  windowCopy = window;
  v54 = [MEMORY[0x1E695DF70] arrayWithCapacity:10];
  _fbsScene = [(UIWindow *)windowCopy _fbsScene];
  screen = [windowCopy screen];
  v11 = [UIWindow allWindowsIncludingInternalWindows:1 onlyVisibleWindows:1 forScreen:screen];

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v56 = v11;
  v55 = _fbsScene;
  v58 = [v56 countByEnumeratingWithState:&v63 objects:v68 count:16];
  if (v58)
  {
    v57 = *v64;
    do
    {
      for (i = 0; i != v58; ++i)
      {
        if (*v64 != v57)
        {
          objc_enumerationMutation(v56);
        }

        v13 = *(*(&v63 + 1) + 8 * i);
        _fbsScene2 = [(UIWindow *)windowCopy _fbsScene];
        v15 = _fbsScene;
        v16 = v15;
        if (_fbsScene2 == v15)
        {
        }

        else
        {
          if (!_fbsScene || !_fbsScene2 || ([_fbsScene2 settings], v17 = windowCopy, v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "frame"), v20 = v19, v22 = v21, v24 = v23, v26 = v25, objc_msgSend(v16, "settings"), v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v27, "frame"), v70.origin.x = v28, v70.origin.y = v29, v70.size.width = v30, v70.size.height = v31, v69.origin.x = v20, v69.origin.y = v22, v69.size.width = v24, v69.size.height = v26, v32 = CGRectEqualToRect(v69, v70), v27, _fbsScene = v55, v18, windowCopy = v17, !v32))
          {

LABEL_14:
            continue;
          }

          settings = [_fbsScene2 settings];
          interfaceOrientation = [settings interfaceOrientation];
          settings2 = [v16 settings];
          interfaceOrientation2 = [settings2 interfaceOrientation];

          windowCopy = v17;
          v37 = interfaceOrientation == interfaceOrientation2;
          _fbsScene = v55;
          if (!v37)
          {
            goto LABEL_14;
          }
        }

        v38 = +[UIDebuggingInformationOverlay overlay];

        if (v13 != v38)
        {
          [v54 addObject:v13];
        }
      }

      v58 = [v56 countByEnumeratingWithState:&v63 objects:v68 count:16];
    }

    while (v58);
  }

  v39 = [v54 count];
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v53 - v40;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v42 = v54;
  v43 = [v42 countByEnumeratingWithState:&v59 objects:v67 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = 0;
    v46 = *v60;
    do
    {
      v47 = 0;
      v48 = v45;
      do
      {
        if (*v60 != v46)
        {
          objc_enumerationMutation(v42);
        }

        v45 = v48 + 1;
        *&v41[4 * v48++] = [*(*(&v59 + 1) + 8 * v47++) _contextId];
      }

      while (v44 != v47);
      v44 = [v42 countByEnumeratingWithState:&v59 objects:v67 count:16];
    }

    while (v44);
  }

  else
  {
    v45 = 0;
  }

  height = [UIWindow createIOSurfaceWithContextIds:v41 count:v45 frame:x, y, width, height];
  if (height)
  {
    v50 = height;
    v51 = _UICreateCGImageFromIOSurfaceWithOptions(height, 0);
    CFRelease(v50);
  }

  else
  {
    v51 = 0;
  }

  return v51;
}

@end