@interface UIPDFPlacementController
- (CGRect)boundsForObjectAtIndex:(unint64_t)a3;
- (UIPDFPlacementController)initWithAnnotations:(id)a3 viewSize:(CGSize)a4;
- (double)yForObjectAtIndex:(unint64_t)a3;
- (id)viewAtIndex:(unint64_t)a3;
- (void)dealloc;
- (void)layoutViews:(double)a3;
- (void)shift:(double)a3;
@end

@implementation UIPDFPlacementController

- (UIPDFPlacementController)initWithAnnotations:(id)a3 viewSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v21 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = UIPDFPlacementController;
  v7 = [(UIPDFPlacementController *)&v19 init];
  v8 = v7;
  if (v7)
  {
    v7->_viewSize.width = width;
    v7->_viewSize.height = height;
    v7->_popups = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = [a3 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(a3);
          }

          v13 = *(*(&v15 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(NSMutableArray *)v8->_popups addObject:v13];
          }
        }

        v10 = [a3 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v10);
    }
  }

  return v8;
}

- (void)dealloc
{
  [(NSMutableArray *)self->_popups removeAllObjects];

  v3.receiver = self;
  v3.super_class = UIPDFPlacementController;
  [(UIPDFPlacementController *)&v3 dealloc];
}

- (CGRect)boundsForObjectAtIndex:(unint64_t)a3
{
  v4 = [objc_msgSend(-[NSMutableArray objectAtIndex:](self->_popups objectAtIndex:{a3), "parent"), "selection"}];
  if ([v4 numberOfRectangles])
  {
    v16 = 0u;
    v17 = 0u;
    memset(&v15, 0, sizeof(v15));
    [v4 getBounds:&v16 transform:&v15 index:0];
    v14 = v15;
    if (!CGAffineTransformIsIdentity(&v14))
    {
      v14 = v15;
      *&v16 = boundsForRotatedSelection(&v14, *&v16, *(&v16 + 1), *&v17, *(&v17 + 1));
      *(&v16 + 1) = v5;
      *&v17 = v6;
      *(&v17 + 1) = v7;
    }

    v8 = [(UIPDFPlacementController *)self pageView];
    [(UIPDFPageView *)v8 convertRectFromPDFPageSpace:v16, v17];
  }

  else
  {
    v13 = *(MEMORY[0x1E695F058] + 16);
    v16 = *MEMORY[0x1E695F058];
    v17 = v13;
    v10 = *(&v16 + 1);
    v9 = *&v16;
    v12 = *(&v17 + 1);
    v11 = *&v17;
  }

  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (double)yForObjectAtIndex:(unint64_t)a3
{
  [(UIPDFPlacementController *)self boundsForObjectAtIndex:a3];

  return CGRectGetMinY(*&v3);
}

- (id)viewAtIndex:(unint64_t)a3
{
  v3 = [(NSMutableArray *)self->_popups objectAtIndex:a3];

  return [v3 annotationView];
}

- (void)shift:(double)a3
{
  v4 = [(NSMutableArray *)self->_popups count];
  if (v4)
  {
    v5 = v4;
    for (i = 0; i != v5; ++i)
    {
      v7 = [(UIPDFPlacementController *)self viewAtIndex:i];
      [v7 frame];
      [v7 setFrame:?];
    }
  }
}

- (void)layoutViews:(double)a3
{
  v5 = [(NSMutableArray *)self->_popups count];
  if (v5)
  {
    v6 = v5;
    v61 = a3;
    [[(UIPDFPageView *)[(UIPDFPlacementController *)self pageView] page] cropBox];
    [(UIPDFPageView *)self->pageView convertRectFromPDFPageSpace:?];
    x = v69.origin.x;
    y = v69.origin.y;
    width = v69.size.width;
    height = v69.size.height;
    v11 = self->_viewSize.height;
    MaxY = CGRectGetMaxY(v69);
    v70.origin.x = x;
    v70.origin.y = y;
    v70.size.width = width;
    v70.size.height = height;
    MinY = CGRectGetMinY(v70);
    v71.origin.x = x;
    v71.origin.y = y;
    v71.size.width = width;
    v71.size.height = height;
    MaxX = CGRectGetMaxX(v71);
    v16 = self->_viewSize.width;
    v15 = self->_viewSize.height;
    v17 = MaxX - v16;
    [(NSMutableArray *)self->_popups sortUsingFunction:sortByYAscendingThenX context:0];
    v18 = 0;
    v67 = MinY;
    do
    {
      [(UIPDFPlacementController *)self yForObjectAtIndex:v18];
      if (v19 >= MinY)
      {
        v20 = v19;
      }

      else
      {
        v20 = MinY;
      }

      MinY = v11 + v20;
      [objc_msgSend(-[NSMutableArray objectAtIndex:](self->_popups objectAtIndex:{v18++), "annotationView"), "setFrame:", v17, v20, v16, v15}];
    }

    while (v6 != v18);
    v21 = [(UIPDFPlacementController *)self viewAtIndex:0];
    v22 = v6 - 1;
    v23 = [(UIPDFPlacementController *)self viewAtIndex:v6 - 1];
    [v23 frame];
    v25 = v11 + CGRectGetMinY(v72);
    if (v25 > MaxY)
    {
      [v21 frame];
      v26 = CGRectGetMinY(v73);
      v24 = v67;
      if (v26 - v67 > v15 && v25 > MaxY)
      {
        v28 = v6 - 2;
        v66 = MaxY;
        do
        {
          if (v22)
          {
            v29 = v28;
            do
            {
              v30 = [(UIPDFPlacementController *)self viewAtIndex:v29 + 1];
              v31 = [(UIPDFPlacementController *)self viewAtIndex:v29];
              [v30 frame];
              v33 = v32;
              v35 = v34;
              v37 = v36;
              v39 = v38;
              [v31 frame];
              v40 = CGRectGetMaxY(v74);
              v75.origin.x = v33;
              v75.origin.y = v35;
              v75.size.width = v37;
              v75.size.height = v39;
              v41 = CGRectGetMinY(v75);
              [v30 setFrame:{v33, v35 - v11, v37, v39}];
              v42 = v11 + v40;
              if (!v29)
              {
                break;
              }

              --v29;
            }

            while (v41 < v42);
            MaxY = v66;
            if (v41 < v42)
            {
              [v21 frame];
              v44 = v43;
              v63 = v45;
              v64 = v43;
              v47 = v46;
              v48 = v45;
              v65 = v49;
              [-[UIPDFPlacementController viewAtIndex:](self viewAtIndex:{1), "frame"}];
              v51 = v50;
              v53 = v52;
              v55 = v54;
              recta = v56;
              v76.origin.x = v44;
              v76.origin.y = v47;
              v76.size.width = v48;
              v76.size.height = v65;
              v57 = CGRectGetMaxY(v76);
              v77.origin.x = v51;
              v77.origin.y = v53;
              v77.size.width = v55;
              v77.size.height = recta;
              MaxY = v66;
              [v21 setFrame:{v64, v47 - (v57 - CGRectGetMinY(v77)), v63, v65}];
            }
          }

          [v23 frame];
          v58 = CGRectGetMinY(v78);
          [v21 frame];
          v59 = CGRectGetMinY(v79);
          v24 = v11 + v58;
        }

        while (v59 - v67 > v15 && v24 > MaxY);
      }
    }

    [(UIPDFPlacementController *)self shift:v61, v24];
  }
}

@end