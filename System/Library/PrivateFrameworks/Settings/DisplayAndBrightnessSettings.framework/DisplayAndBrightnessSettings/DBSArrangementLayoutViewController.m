@interface DBSArrangementLayoutViewController
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (CGPoint)unitDragPoint;
- (CGSize)externalDisplaySize;
- (CGSize)nativeDisplaySize;
- (DBSArrangementLayoutViewController)initWithNativeDisplaySize:(CGSize)a3 nativeDisplayName:(id)a4 externalDisplaySize:(CGSize)a5 externalDisplayName:(id)a6 currentNativeDisplayLocation:(unint64_t)a7;
- (id)currentDisplayIconView;
- (id)nativeDisplayImageWithWidth:(double)a3;
- (void)didDrag:(id)a3;
- (void)didTap:(id)a3;
- (void)loadView;
- (void)updateCurrentDisplayLocation:(unint64_t)a3;
- (void)updateOrientationTo:(int64_t)a3 withNativeDisplaySize:(CGSize)a4;
@end

@implementation DBSArrangementLayoutViewController

- (DBSArrangementLayoutViewController)initWithNativeDisplaySize:(CGSize)a3 nativeDisplayName:(id)a4 externalDisplaySize:(CGSize)a5 externalDisplayName:(id)a6 currentNativeDisplayLocation:(unint64_t)a7
{
  height = a5.height;
  width = a5.width;
  v12 = a3.height;
  v13 = a3.width;
  v15 = a4;
  v16 = a6;
  v20.receiver = self;
  v20.super_class = DBSArrangementLayoutViewController;
  v17 = [(DBSArrangementLayoutViewController *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_nativeDisplaySize.width = v13;
    v17->_nativeDisplaySize.height = v12;
    objc_storeStrong(&v17->_nativeDisplayName, a4);
    v18->_externalDisplaySize.width = width;
    v18->_externalDisplaySize.height = height;
    objc_storeStrong(&v18->_externalDisplayName, a6);
    v18->_nativeDisplayLocation = a7;
  }

  return v18;
}

- (void)updateCurrentDisplayLocation:(unint64_t)a3
{
  if (self->_nativeDisplayLocation != a3)
  {
    self->_nativeDisplayLocation = a3;
    v5 = [(DBSArrangementLayoutViewController *)self view];
    [v5 placeCurrentDisplayAtLocation:a3];
  }
}

- (id)nativeDisplayImageWithWidth:(double)a3
{
  v4 = [(DBSArrangementLayoutViewController *)self delegate];
  v5 = [v4 nativeDisplayImageWithWidth:a3];

  return v5;
}

- (void)loadView
{
  v18 = [[DBSArrangementLayoutView alloc] initWithDataSource:self];
  [(DBSArrangementLayoutViewController *)self setView:v18];
  [(DBSArrangementLayoutView *)v18 setDataSource:self];
  v3 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:self action:sel_didDrag_];
  v4 = [(DBSArrangementLayoutViewController *)self view];
  [v4 addGestureRecognizer:v3];

  [v3 setDelegate:self];
  [(DBSArrangementLayoutViewController *)self setDragGestureRecognizer:v3];
  v5 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_didTap_];
  v6 = [(DBSArrangementLayoutViewController *)self view];
  [v6 addGestureRecognizer:v5];

  [v5 setDelegate:self];
  [(DBSArrangementLayoutViewController *)self setTapGestureRecogniser:v5];
  v7 = [(DBSArrangementLayoutViewController *)self view];
  [v7 placeCurrentDisplayAtLocation:{-[DBSArrangementLayoutViewController nativeDisplayLocation](self, "nativeDisplayLocation")}];

  v8 = [DBSNativeDisplayIconView alloc];
  v9 = [(DBSArrangementLayoutViewController *)self nativeDisplayName];
  v10 = [(DBSNativeDisplayIconView *)v8 initWithFrame:v9 displayName:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(DBSArrangementLayoutViewController *)self setDragView:v10];

  v11 = [(DBSArrangementLayoutViewController *)self dragView];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:1];

  v12 = [(DBSArrangementLayoutViewController *)self dragView];
  [v12 setIsCurrentDisplayLocation:1];

  v13 = [(DBSArrangementLayoutView *)v18 northDisplay];
  v14 = [v13 imageView];
  v15 = [v14 image];
  v16 = [(DBSArrangementLayoutViewController *)self dragView];
  v17 = [v16 imageView];
  [v17 setImage:v15];
}

- (void)didDrag:(id)a3
{
  v58 = a3;
  v4 = [(DBSArrangementLayoutViewController *)self currentDisplayIconView];
  if ([v58 state] == 1)
  {
    [v4 frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [(DBSArrangementLayoutViewController *)self dragView];
    v14 = [v13 superview];

    if (!v14)
    {
      v15 = [(DBSArrangementLayoutViewController *)self arrangementView];
      v16 = [v15 northDisplay];
      v17 = [v16 imageView];
      v18 = [v17 image];
      v19 = [(DBSArrangementLayoutViewController *)self dragView];
      v20 = [v19 imageView];
      [v20 setImage:v18];

      v21 = [(DBSArrangementLayoutViewController *)self view];
      v22 = [(DBSArrangementLayoutViewController *)self dragView];
      [v21 addSubview:v22];
    }

    [v58 locationInView:v4];
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
    [v4 frame];
    [(DBSNativeDisplayIconView *)self->_dragView setFrame:?];
    v28 = [(DBSArrangementLayoutViewController *)self currentDisplayIconView];
    [v28 setIsCurrentDisplayLocation:0];
    goto LABEL_5;
  }

  if ([v58 state] == 2)
  {
    [(DBSNativeDisplayIconView *)self->_dragView frame];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v37 = [(DBSArrangementLayoutViewController *)self view];
    [v58 locationInView:v37];
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
    if ([v58 state] == 3)
    {
      [(DBSArrangementLayoutViewController *)self setUnitDragPoint:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
      v49 = [(DBSArrangementLayoutViewController *)self arrangementView];
      v50 = [(DBSArrangementLayoutViewController *)self dragView];
      [v50 frame];
      MidX = CGRectGetMidX(v66);
      v52 = [(DBSArrangementLayoutViewController *)self dragView];
      [v52 frame];
      v53 = [v49 displayLocationForPointInView:{MidX, CGRectGetMidY(v67)}];

      v54 = [(DBSArrangementLayoutViewController *)self dragView];
      [v54 removeFromSuperview];

      [(DBSArrangementLayoutViewController *)self setNativeDisplayLocation:v53];
      v55 = [(DBSArrangementLayoutViewController *)self arrangementView];
      [v55 placeCurrentDisplayAtLocation:v53];

      v28 = [(DBSArrangementLayoutViewController *)self delegate];
      [v28 nativeDisplayLocationDidChange:v53];
LABEL_5:

      goto LABEL_8;
    }

    if ([v58 state] == 4)
    {
      [(DBSArrangementLayoutViewController *)self setUnitDragPoint:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
      v56 = [(DBSArrangementLayoutViewController *)self dragView];
      [v56 removeFromSuperview];

      v57 = [(DBSArrangementLayoutViewController *)self arrangementView];
      [v57 placeCurrentDisplayAtLocation:{-[DBSArrangementLayoutViewController nativeDisplayLocation](self, "nativeDisplayLocation")}];
    }
  }

LABEL_8:
}

- (void)didTap:(id)a3
{
  v4 = a3;
  v48 = [(DBSArrangementLayoutViewController *)self arrangementView];
  [v4 locationInView:v48];
  v6 = v5;
  v8 = v7;

  v9 = [v48 northDisplay];
  [v9 bounds];
  [v9 convertRect:v48 toView:?];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [v48 eastDisplay];
  [v18 bounds];
  [v18 convertRect:v48 toView:?];
  v20 = v19;
  v22 = v21;
  v46 = v24;
  v47 = v23;
  v25 = [v48 southDisplay];
  [v25 bounds];
  [v25 convertRect:v48 toView:?];
  v44 = v27;
  v45 = v26;
  v42 = v29;
  v43 = v28;
  v30 = [v48 westDisplay];
  [v30 bounds];
  [v30 convertRect:v48 toView:?];
  v40 = v32;
  v41 = v31;
  v38 = v34;
  v39 = v33;
  v35 = [(DBSArrangementLayoutViewController *)self nativeDisplayLocation];
  v54.origin.x = v11;
  v54.origin.y = v13;
  v54.size.width = v15;
  v54.size.height = v17;
  v50.x = v6;
  v50.y = v8;
  if (CGRectContainsPoint(v54, v50))
  {
    v35 = 0;
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
      v35 = 1;
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
        v35 = 2;
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
          v35 = 3;
        }
      }
    }
  }

  [(DBSArrangementLayoutViewController *)self setNativeDisplayLocation:v35];
  v36 = [(DBSArrangementLayoutViewController *)self arrangementView];
  [v36 placeCurrentDisplayAtLocation:v35];

  v37 = [(DBSArrangementLayoutViewController *)self delegate];
  [v37 nativeDisplayLocationDidChange:v35];
}

- (id)currentDisplayIconView
{
  v3 = [(DBSArrangementLayoutViewController *)self nativeDisplayLocation];
  v4 = 0;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v5 = [(DBSArrangementLayoutViewController *)self arrangementView];
      v6 = [v5 southDisplay];
    }

    else
    {
      if (v3 != 3)
      {
        goto LABEL_11;
      }

      v5 = [(DBSArrangementLayoutViewController *)self arrangementView];
      v6 = [v5 westDisplay];
    }
  }

  else if (v3)
  {
    if (v3 != 1)
    {
      goto LABEL_11;
    }

    v5 = [(DBSArrangementLayoutViewController *)self arrangementView];
    v6 = [v5 eastDisplay];
  }

  else
  {
    v5 = [(DBSArrangementLayoutViewController *)self arrangementView];
    v6 = [v5 northDisplay];
  }

  v4 = v6;

LABEL_11:

  return v4;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(DBSArrangementLayoutViewController *)self dragGestureRecognizer];

  if (v5 == v4)
  {
    v13 = [(DBSArrangementLayoutViewController *)self currentDisplayIconView];
    [v4 locationInView:v13];
    v9 = v14;
    v11 = v15;
    v12 = v13;
  }

  else
  {
    v6 = [(DBSArrangementLayoutViewController *)self tapGestureRecogniser];

    if (v6 != v4)
    {
LABEL_7:
      v17 = 0;
      goto LABEL_8;
    }

    v7 = [(DBSArrangementLayoutViewController *)self arrangementView];
    [v4 locationInView:v7];
    v9 = v8;
    v11 = v10;

    v12 = [(DBSArrangementLayoutViewController *)self arrangementView];
    v13 = v12;
  }

  [v12 bounds];
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

- (void)updateOrientationTo:(int64_t)a3 withNativeDisplaySize:(CGSize)a4
{
  [(DBSArrangementLayoutViewController *)self setNativeDisplaySize:a4.width, a4.height];
  v6 = [(DBSArrangementLayoutViewController *)self arrangementView];
  [v6 updateForOrientation:a3];
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