@interface DBSArrangementLayoutViewController
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (CGPoint)unitDragPoint;
- (CGSize)externalDisplaySize;
- (CGSize)nativeDisplaySize;
- (DBSArrangementLayoutViewController)initWithNativeDisplaySize:(CGSize)size nativeDisplayName:(id)name externalDisplaySize:(CGSize)displaySize externalDisplayName:(id)displayName currentNativeDisplayLocation:(unint64_t)location;
- (id)currentDisplayIconView;
- (id)nativeDisplayImageWithWidth:(double)width;
- (void)didDrag:(id)drag;
- (void)didTap:(id)tap;
- (void)loadView;
- (void)updateCurrentDisplayLocation:(unint64_t)location;
- (void)updateOrientationTo:(int64_t)to withNativeDisplaySize:(CGSize)size;
@end

@implementation DBSArrangementLayoutViewController

- (DBSArrangementLayoutViewController)initWithNativeDisplaySize:(CGSize)size nativeDisplayName:(id)name externalDisplaySize:(CGSize)displaySize externalDisplayName:(id)displayName currentNativeDisplayLocation:(unint64_t)location
{
  height = displaySize.height;
  width = displaySize.width;
  v12 = size.height;
  v13 = size.width;
  nameCopy = name;
  displayNameCopy = displayName;
  v20.receiver = self;
  v20.super_class = DBSArrangementLayoutViewController;
  v17 = [(DBSArrangementLayoutViewController *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_nativeDisplaySize.width = v13;
    v17->_nativeDisplaySize.height = v12;
    objc_storeStrong(&v17->_nativeDisplayName, name);
    v18->_externalDisplaySize.width = width;
    v18->_externalDisplaySize.height = height;
    objc_storeStrong(&v18->_externalDisplayName, displayName);
    v18->_nativeDisplayLocation = location;
  }

  return v18;
}

- (void)updateCurrentDisplayLocation:(unint64_t)location
{
  if (self->_nativeDisplayLocation != location)
  {
    self->_nativeDisplayLocation = location;
    view = [(DBSArrangementLayoutViewController *)self view];
    [view placeCurrentDisplayAtLocation:location];
  }
}

- (id)nativeDisplayImageWithWidth:(double)width
{
  delegate = [(DBSArrangementLayoutViewController *)self delegate];
  v5 = [delegate nativeDisplayImageWithWidth:width];

  return v5;
}

- (void)loadView
{
  v18 = [[DBSArrangementLayoutView alloc] initWithDataSource:self];
  [(DBSArrangementLayoutViewController *)self setView:v18];
  [(DBSArrangementLayoutView *)v18 setDataSource:self];
  v3 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:self action:sel_didDrag_];
  view = [(DBSArrangementLayoutViewController *)self view];
  [view addGestureRecognizer:v3];

  [v3 setDelegate:self];
  [(DBSArrangementLayoutViewController *)self setDragGestureRecognizer:v3];
  v5 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_didTap_];
  view2 = [(DBSArrangementLayoutViewController *)self view];
  [view2 addGestureRecognizer:v5];

  [v5 setDelegate:self];
  [(DBSArrangementLayoutViewController *)self setTapGestureRecogniser:v5];
  view3 = [(DBSArrangementLayoutViewController *)self view];
  [view3 placeCurrentDisplayAtLocation:{-[DBSArrangementLayoutViewController nativeDisplayLocation](self, "nativeDisplayLocation")}];

  v8 = [DBSNativeDisplayIconView alloc];
  nativeDisplayName = [(DBSArrangementLayoutViewController *)self nativeDisplayName];
  v10 = [(DBSNativeDisplayIconView *)v8 initWithFrame:nativeDisplayName displayName:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(DBSArrangementLayoutViewController *)self setDragView:v10];

  dragView = [(DBSArrangementLayoutViewController *)self dragView];
  [dragView setTranslatesAutoresizingMaskIntoConstraints:1];

  dragView2 = [(DBSArrangementLayoutViewController *)self dragView];
  [dragView2 setIsCurrentDisplayLocation:1];

  northDisplay = [(DBSArrangementLayoutView *)v18 northDisplay];
  imageView = [northDisplay imageView];
  image = [imageView image];
  dragView3 = [(DBSArrangementLayoutViewController *)self dragView];
  imageView2 = [dragView3 imageView];
  [imageView2 setImage:image];
}

- (void)didDrag:(id)drag
{
  dragCopy = drag;
  currentDisplayIconView = [(DBSArrangementLayoutViewController *)self currentDisplayIconView];
  if ([dragCopy state] == 1)
  {
    [currentDisplayIconView frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    dragView = [(DBSArrangementLayoutViewController *)self dragView];
    superview = [dragView superview];

    if (!superview)
    {
      arrangementView = [(DBSArrangementLayoutViewController *)self arrangementView];
      northDisplay = [arrangementView northDisplay];
      imageView = [northDisplay imageView];
      image = [imageView image];
      dragView2 = [(DBSArrangementLayoutViewController *)self dragView];
      imageView2 = [dragView2 imageView];
      [imageView2 setImage:image];

      view = [(DBSArrangementLayoutViewController *)self view];
      dragView3 = [(DBSArrangementLayoutViewController *)self dragView];
      [view addSubview:dragView3];
    }

    [dragCopy locationInView:currentDisplayIconView];
    v24 = v23;
    v26 = v25;
    v60.origin.x = v6;
    v60.origin.y = v8;
    v60.size.width = v10;
    v60.size.height = v12;
    v27 = v24 / CGRectGetWidth(v60);
    v61.origin.x = v6;
    v61.origin.y = v8;
    v61.size.width = v10;
    v61.size.height = v12;
    [(DBSArrangementLayoutViewController *)self setUnitDragPoint:v27, v26 / CGRectGetHeight(v61)];
    [currentDisplayIconView frame];
    [(DBSNativeDisplayIconView *)self->_dragView setFrame:?];
    currentDisplayIconView2 = [(DBSArrangementLayoutViewController *)self currentDisplayIconView];
    [currentDisplayIconView2 setIsCurrentDisplayLocation:0];
    goto LABEL_5;
  }

  if ([dragCopy state] == 2)
  {
    [(DBSNativeDisplayIconView *)self->_dragView frame];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    view2 = [(DBSArrangementLayoutViewController *)self view];
    [dragCopy locationInView:view2];
    v39 = v38;
    v41 = v40;

    [(DBSArrangementLayoutViewController *)self unitDragPoint];
    v43 = v42;
    v62.origin.x = v30;
    v62.origin.y = v32;
    v62.size.width = v34;
    v62.size.height = v36;
    v44 = v39 - v43 * CGRectGetWidth(v62);
    [(DBSArrangementLayoutViewController *)self unitDragPoint];
    v46 = v45;
    v63.origin.x = v30;
    v63.origin.y = v32;
    v63.size.width = v34;
    v63.size.height = v36;
    v47 = v41 - v46 * CGRectGetHeight(v63);
    v64.origin.x = v30;
    v64.origin.y = v32;
    v64.size.width = v34;
    v64.size.height = v36;
    Width = CGRectGetWidth(v64);
    v65.origin.x = v30;
    v65.origin.y = v32;
    v65.size.width = v34;
    v65.size.height = v36;
    [(DBSNativeDisplayIconView *)self->_dragView setFrame:v44, v47, Width, CGRectGetHeight(v65)];
  }

  else
  {
    if ([dragCopy state] == 3)
    {
      [(DBSArrangementLayoutViewController *)self setUnitDragPoint:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
      arrangementView2 = [(DBSArrangementLayoutViewController *)self arrangementView];
      dragView4 = [(DBSArrangementLayoutViewController *)self dragView];
      [dragView4 frame];
      MidX = CGRectGetMidX(v66);
      dragView5 = [(DBSArrangementLayoutViewController *)self dragView];
      [dragView5 frame];
      v53 = [arrangementView2 displayLocationForPointInView:{MidX, CGRectGetMidY(v67)}];

      dragView6 = [(DBSArrangementLayoutViewController *)self dragView];
      [dragView6 removeFromSuperview];

      [(DBSArrangementLayoutViewController *)self setNativeDisplayLocation:v53];
      arrangementView3 = [(DBSArrangementLayoutViewController *)self arrangementView];
      [arrangementView3 placeCurrentDisplayAtLocation:v53];

      currentDisplayIconView2 = [(DBSArrangementLayoutViewController *)self delegate];
      [currentDisplayIconView2 nativeDisplayLocationDidChange:v53];
LABEL_5:

      goto LABEL_8;
    }

    if ([dragCopy state] == 4)
    {
      [(DBSArrangementLayoutViewController *)self setUnitDragPoint:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
      dragView7 = [(DBSArrangementLayoutViewController *)self dragView];
      [dragView7 removeFromSuperview];

      arrangementView4 = [(DBSArrangementLayoutViewController *)self arrangementView];
      [arrangementView4 placeCurrentDisplayAtLocation:{-[DBSArrangementLayoutViewController nativeDisplayLocation](self, "nativeDisplayLocation")}];
    }
  }

LABEL_8:
}

- (void)didTap:(id)tap
{
  tapCopy = tap;
  arrangementView = [(DBSArrangementLayoutViewController *)self arrangementView];
  [tapCopy locationInView:arrangementView];
  v6 = v5;
  v8 = v7;

  northDisplay = [arrangementView northDisplay];
  [northDisplay bounds];
  [northDisplay convertRect:arrangementView toView:?];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  eastDisplay = [arrangementView eastDisplay];
  [eastDisplay bounds];
  [eastDisplay convertRect:arrangementView toView:?];
  v20 = v19;
  v22 = v21;
  v46 = v24;
  v47 = v23;
  southDisplay = [arrangementView southDisplay];
  [southDisplay bounds];
  [southDisplay convertRect:arrangementView toView:?];
  v44 = v27;
  v45 = v26;
  v42 = v29;
  v43 = v28;
  westDisplay = [arrangementView westDisplay];
  [westDisplay bounds];
  [westDisplay convertRect:arrangementView toView:?];
  v40 = v32;
  v41 = v31;
  v38 = v34;
  v39 = v33;
  nativeDisplayLocation = [(DBSArrangementLayoutViewController *)self nativeDisplayLocation];
  v54.origin.x = v11;
  v54.origin.y = v13;
  v54.size.width = v15;
  v54.size.height = v17;
  v50.x = v6;
  v50.y = v8;
  if (CGRectContainsPoint(v54, v50))
  {
    nativeDisplayLocation = 0;
  }

  else
  {
    v55.origin.x = v20;
    v55.origin.y = v22;
    v55.size.height = v46;
    v55.size.width = v47;
    v51.x = v6;
    v51.y = v8;
    if (CGRectContainsPoint(v55, v51))
    {
      nativeDisplayLocation = 1;
    }

    else
    {
      v56.origin.y = v44;
      v56.origin.x = v45;
      v56.size.height = v42;
      v56.size.width = v43;
      v52.x = v6;
      v52.y = v8;
      if (CGRectContainsPoint(v56, v52))
      {
        nativeDisplayLocation = 2;
      }

      else
      {
        v57.origin.y = v40;
        v57.origin.x = v41;
        v57.size.height = v38;
        v57.size.width = v39;
        v53.x = v6;
        v53.y = v8;
        if (CGRectContainsPoint(v57, v53))
        {
          nativeDisplayLocation = 3;
        }
      }
    }
  }

  [(DBSArrangementLayoutViewController *)self setNativeDisplayLocation:nativeDisplayLocation];
  arrangementView2 = [(DBSArrangementLayoutViewController *)self arrangementView];
  [arrangementView2 placeCurrentDisplayAtLocation:nativeDisplayLocation];

  delegate = [(DBSArrangementLayoutViewController *)self delegate];
  [delegate nativeDisplayLocationDidChange:nativeDisplayLocation];
}

- (id)currentDisplayIconView
{
  nativeDisplayLocation = [(DBSArrangementLayoutViewController *)self nativeDisplayLocation];
  v4 = 0;
  if (nativeDisplayLocation > 1)
  {
    if (nativeDisplayLocation == 2)
    {
      arrangementView = [(DBSArrangementLayoutViewController *)self arrangementView];
      southDisplay = [arrangementView southDisplay];
    }

    else
    {
      if (nativeDisplayLocation != 3)
      {
        goto LABEL_11;
      }

      arrangementView = [(DBSArrangementLayoutViewController *)self arrangementView];
      southDisplay = [arrangementView westDisplay];
    }
  }

  else if (nativeDisplayLocation)
  {
    if (nativeDisplayLocation != 1)
    {
      goto LABEL_11;
    }

    arrangementView = [(DBSArrangementLayoutViewController *)self arrangementView];
    southDisplay = [arrangementView eastDisplay];
  }

  else
  {
    arrangementView = [(DBSArrangementLayoutViewController *)self arrangementView];
    southDisplay = [arrangementView northDisplay];
  }

  v4 = southDisplay;

LABEL_11:

  return v4;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  dragGestureRecognizer = [(DBSArrangementLayoutViewController *)self dragGestureRecognizer];

  if (dragGestureRecognizer == beginCopy)
  {
    currentDisplayIconView = [(DBSArrangementLayoutViewController *)self currentDisplayIconView];
    [beginCopy locationInView:currentDisplayIconView];
    v9 = v14;
    v11 = v15;
    arrangementView2 = currentDisplayIconView;
  }

  else
  {
    tapGestureRecogniser = [(DBSArrangementLayoutViewController *)self tapGestureRecogniser];

    if (tapGestureRecogniser != beginCopy)
    {
LABEL_7:
      v17 = 0;
      goto LABEL_8;
    }

    arrangementView = [(DBSArrangementLayoutViewController *)self arrangementView];
    [beginCopy locationInView:arrangementView];
    v9 = v8;
    v11 = v10;

    arrangementView2 = [(DBSArrangementLayoutViewController *)self arrangementView];
    currentDisplayIconView = arrangementView2;
  }

  [arrangementView2 bounds];
  v19.x = v9;
  v19.y = v11;
  v16 = CGRectContainsPoint(v20, v19);

  if (!v16)
  {
    goto LABEL_7;
  }

  v17 = 1;
LABEL_8:

  return v17;
}

- (void)updateOrientationTo:(int64_t)to withNativeDisplaySize:(CGSize)size
{
  [(DBSArrangementLayoutViewController *)self setNativeDisplaySize:size.width, size.height];
  arrangementView = [(DBSArrangementLayoutViewController *)self arrangementView];
  [arrangementView updateForOrientation:to];
}

- (CGSize)nativeDisplaySize
{
  width = self->_nativeDisplaySize.width;
  height = self->_nativeDisplaySize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)externalDisplaySize
{
  width = self->_externalDisplaySize.width;
  height = self->_externalDisplaySize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)unitDragPoint
{
  x = self->_unitDragPoint.x;
  y = self->_unitDragPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end