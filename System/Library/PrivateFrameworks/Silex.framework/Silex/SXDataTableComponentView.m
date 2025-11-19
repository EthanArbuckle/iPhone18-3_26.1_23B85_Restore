@interface SXDataTableComponentView
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (SXComponentController)componentController;
- (SXDataTableComponentView)initWithDOMObjectProvider:(id)a3 viewport:(id)a4 presentationDelegate:(id)a5 componentStyleRendererFactory:(id)a6 imageViewFactory:(id)a7 componentActionHandler:(id)a8 textComponentLayoutHosting:(id)a9 componentController:(id)a10 adIgnorableViewFactory:(id)a11 config:(id)a12;
- (SXTextComponentLayoutHosting)textComponentLayoutHosting;
- (id)contentViewForBehavior:(id)a3;
- (id)dataTableView:(id)a3 viewForCellAtIndexPath:(id)a4 constraintToSize:(CGSize)a5;
- (id)descriptorForIndexPath:(id)a3;
- (void)addTextStorageForIndexPath:(id)a3 toCollectior:(id)a4;
- (void)dealloc;
- (void)presentComponentWithChanges:(id)a3;
- (void)receivedInfo:(id)a3 fromLayoutingPhaseWithIdentifier:(id)a4;
- (void)setupShadowsIfNeeded;
- (void)updateShadowOpacity;
- (void)updateTangierController;
@end

@implementation SXDataTableComponentView

- (SXDataTableComponentView)initWithDOMObjectProvider:(id)a3 viewport:(id)a4 presentationDelegate:(id)a5 componentStyleRendererFactory:(id)a6 imageViewFactory:(id)a7 componentActionHandler:(id)a8 textComponentLayoutHosting:(id)a9 componentController:(id)a10 adIgnorableViewFactory:(id)a11 config:(id)a12
{
  v27 = a7;
  v26 = a8;
  v18 = a9;
  v19 = a10;
  v25 = a11;
  v20 = a12;
  v28.receiver = self;
  v28.super_class = SXDataTableComponentView;
  v21 = [(SXComponentView *)&v28 initWithDOMObjectProvider:a3 viewport:a4 presentationDelegate:a5 componentStyleRendererFactory:a6];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_imageViewFactory, a7);
    objc_storeStrong(&v22->_componentActionHandler, a8);
    objc_storeWeak(&v22->_textComponentLayoutHosting, v18);
    objc_storeWeak(&v22->_componentController, v19);
    objc_storeStrong(&v22->_adIgnorableViewFactory, a11);
    objc_storeStrong(&v22->_config, a12);
  }

  return v22;
}

- (void)presentComponentWithChanges:(id)a3
{
  v52.receiver = self;
  v52.super_class = SXDataTableComponentView;
  [(SXComponentView *)&v52 presentComponentWithChanges:*&a3.var0 & 0xFFFFFFLL];
  v4 = [(SXDataTableComponentView *)self tableView];

  if (!v4)
  {
    v5 = [(SXDataTableComponentView *)self dataTableComponentController];
    v6 = [v5 numberOfRows];
    v7 = [(SXDataTableComponentView *)self dataTableComponentController];
    v8 = +[SXDataTableDictionary dataTableDictionaryWithRows:andColumns:](SXDataTableDictionary, "dataTableDictionaryWithRows:andColumns:", v6, [v7 numberOfColumns]);
    [(SXDataTableComponentView *)self setTextViews:v8];

    v9 = [(SXDataTableComponentView *)self dataTableComponentController];
    v10 = [v9 numberOfRows];
    v11 = [(SXDataTableComponentView *)self dataTableComponentController];
    v12 = +[SXDataTableDictionary dataTableDictionaryWithRows:andColumns:](SXDataTableDictionary, "dataTableDictionaryWithRows:andColumns:", v10, [v11 numberOfColumns]);
    [(SXDataTableComponentView *)self setImageViews:v12];

    v13 = objc_alloc_init(SXScrollView);
    v14 = objc_alloc_init(SXTangierDragItemProvider);
    v15 = [SXTangierController alloc];
    v16 = [(SXComponentView *)self viewport];
    v17 = [(SXDataTableComponentView *)self componentActionHandler];
    v18 = [(SXDataTableComponentView *)self componentController];
    v19 = [(SXComponentView *)self DOMObjectProvider];
    v20 = [(SXDataTableComponentView *)self adIgnorableViewFactory];
    v21 = [(SXDataTableComponentView *)self config];
    v22 = [(SXTangierController *)v15 initWithViewport:v16 scrollView:v13 componentActionHandler:v17 dragItemProvider:v14 componentController:v18 componentInteractionManager:0 DOMObjectProvider:v19 adIgnorableViewFactory:v20 config:v21];
    [(SXDataTableComponentView *)self setTangierController:v22];

    v23 = [(SXDataTableComponentView *)self tangierController];
    [v23 setDelegate:self];

    v24 = [(SXComponentView *)self presentationDelegate];
    v25 = [v24 textSelectionManager];
    v26 = [(SXDataTableComponentView *)self tangierController];
    [v25 addTextSelecting:v26];

    v27 = [SXScrollView alloc];
    v28 = [(SXScrollView *)v27 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(SXDataTableComponentView *)self setScrollView:v28];

    v29 = [(SXDataTableComponentView *)self scrollView];
    v30 = [(SXDataTableComponentView *)self tangierController];
    v31 = [v30 cvc];
    v32 = [v31 view];
    [v29 addSubview:v32];

    v33 = [(SXDataTableComponentView *)self scrollView];
    v34 = [(SXDataTableComponentView *)self tangierController];
    v35 = [v34 icc];
    [v33 setDelegate:v35];

    v36 = [[SXDataTableView alloc] initWithDataSource:?];
    [(SXDataTableComponentView *)self setTableView:v36];

    v37 = [(SXDataTableComponentView *)self tangierController];
    v38 = [v37 cvc];
    v39 = [v38 view];
    v40 = [(SXDataTableComponentView *)self tableView];
    [v39 addSubview:v40];

    v41 = [(SXComponentView *)self contentView];
    v42 = [(SXDataTableComponentView *)self scrollView];
    [v41 addSubview:v42];
  }

  v43 = [(SXDataTableComponentView *)self tableView];
  v44 = [(SXDataTableComponentView *)self dataTableComponentController];
  [(SXDataTableView *)v43 setDataSource:v44];

  v45 = [(SXDataTableComponentView *)self tableView];
  v46 = [(SXDataTableComponentView *)self blueprint];
  [SXDataTableView setBlueprint:];

  v47 = [(SXDataTableComponentView *)self scrollView];
  [(SXComponentView *)self contentFrame];
  [v47 setFrame:?];

  v48 = [(SXDataTableComponentView *)self scrollView];
  v49 = [(SXDataTableComponentView *)self tableView];
  [v49 bounds];
  [v48 setContentSize:{v50, v51}];

  [(SXDataTableComponentView *)self setupShadowsIfNeeded];
  [(SXDataTableComponentView *)self updateTangierController];
}

- (void)dealloc
{
  v3 = [(SXDataTableComponentView *)self tangierController];
  [v3 teardown];

  v4.receiver = self;
  v4.super_class = SXDataTableComponentView;
  [(SXComponentView *)&v4 dealloc];
}

- (void)receivedInfo:(id)a3 fromLayoutingPhaseWithIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v10.receiver = self;
  v10.super_class = SXDataTableComponentView;
  [(SXComponentView *)&v10 receivedInfo:v7 fromLayoutingPhaseWithIdentifier:v8];
  if ([v8 isEqualToString:@"blueprint"])
  {
    v9 = &OBJC_IVAR___SXDataTableComponentView__blueprint;
LABEL_5:
    objc_storeStrong((&self->super.super.super.super.isa + *v9), a3);
    goto LABEL_6;
  }

  if ([v8 isEqualToString:@"component_controller"])
  {
    v9 = &OBJC_IVAR___SXDataTableComponentView__dataTableComponentController;
    goto LABEL_5;
  }

LABEL_6:
}

- (id)dataTableView:(id)a3 viewForCellAtIndexPath:(id)a4 constraintToSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  var1 = a4.var1;
  var0 = a4.var0;
  v10 = [(SXDataTableComponentView *)self dataTableComponentController];
  v11 = [v10 cellObjects];
  v12 = [v11 objectForIndexPath:{var0, var1}];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [(SXDataTableComponentView *)self dataTableComponentController];
    v14 = [v13 textLayouters];
    v15 = [v14 objectForIndexPath:{var0, var1}];

    [v15 boundingSize];
    v17 = v16;
    v18 = [(SXDataTableComponentView *)self textViews];
    v19 = [v18 objectForIndexPath:{var0, var1}];

    if (!v19)
    {
      v19 = [[SXTextView alloc] initWithFrame:0.0, 0.0, width, v17];
      v41 = [(SXDataTableComponentView *)self textViews];
      [v41 setObject:v19 forIndexPath:{var0, var1}];

      v42 = [(SXDataTableComponentView *)self tangierController];
      [v42 didStartPresentingTextView:v19];
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
    v20 = [(SXDataTableComponentView *)self descriptorForIndexPath:var0, var1];
    v21 = [v20 format];
    [v21 maximumWidth];
    if (v22)
    {
      v23 = [(SXComponentView *)self unitConverter];
      v24 = [v21 maximumWidth];
      [v23 convertValueToPoints:{v24, v25}];
      v27 = v26;

      if (width >= v27)
      {
        width = v27;
      }
    }

    [v21 maximumHeight];
    if (v28)
    {
      v29 = [(SXComponentView *)self unitConverter];
      v30 = [v21 maximumHeight];
      [v29 convertValueToPoints:{v30, v31}];
      v33 = v32;

      if (height >= v33)
      {
        height = v33;
      }
    }

    v34 = [(SXDataTableComponentView *)self imageViews];
    v19 = [v34 objectForIndexPath:{var0, var1}];

    if (!v19)
    {
      v35 = [(SXDataTableComponentView *)self imageViewFactory];
      v19 = [v35 imageViewForResource:v15];

      [(SXTextView *)v19 addInterestInImageQuality:0 forObject:self];
      v36 = [(SXDataTableComponentView *)self imageViews];
      [v36 setObject:v19 forIndexPath:{var0, var1}];
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
  v3 = [(SXDataTableComponentView *)self tangierController];
  v4 = [(SXDataTableComponentView *)self tableView];
  [v4 bounds];
  Width = CGRectGetWidth(v9);
  v6 = [(SXDataTableComponentView *)self tableView];
  [v6 bounds];
  [v3 setUnscaledCanvasRect:{0.0, 0.0, Width, CGRectGetHeight(v10)}];

  v7 = [(SXDataTableComponentView *)self tangierController];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__SXDataTableComponentView_updateTangierController__block_invoke;
  v8[3] = &unk_1E8500888;
  v8[4] = self;
  [v7 updateInfosWithBlock:v8];
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

- (void)addTextStorageForIndexPath:(id)a3 toCollectior:(id)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v17 = a4;
  v7 = [(SXDataTableComponentView *)self textViews];
  v8 = [v7 objectForIndexPath:{var0, var1}];

  v9 = [(SXDataTableComponentView *)self dataTableComponentController];
  v10 = [v9 textLayouters];
  v11 = [v10 objectForIndexPath:{var0, var1}];

  if (v8 && v11)
  {
    v12 = [v11 wpStorage];
    v13 = [v11 wpLayout];
    v14 = [(SXComponentView *)self component];
    v15 = [v14 identifier];
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{row: %lu, column: %lu}", var0, var1];
    [v17 addTextStorage:v12 withLayout:v13 forNamedFlow:v15 directLayerHostView:v8 selectable:1 componentIdentifier:v16];
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a4;
  v7 = [a3 view];
  [v6 locationInView:v7];
  v9 = v8;
  v11 = v10;

  v12 = [(SXDataTableComponentView *)self tableView];
  v13 = [(SXDataTableView *)v12 indexPathForPoint:v9, v11];
  v15 = v14;

  if (v15 == -1 && v13 == -1)
  {
    return 0;
  }

  v17 = [(SXDataTableComponentView *)self dataTableComponentController];
  v18 = [v17 indexPathIsHeader:{v13, v15}];

  return v18;
}

- (void)setupShadowsIfNeeded
{
  v3 = [(SXDataTableComponentView *)self leftShadow];
  if (v3)
  {
  }

  else
  {
    v4 = [(SXDataTableComponentView *)self rightShadow];

    if (!v4)
    {
      goto LABEL_5;
    }
  }

  v5 = [(SXDataTableComponentView *)self leftShadow];
  [v5 removeFromSuperlayer];

  v6 = [(SXDataTableComponentView *)self rightShadow];
  [v6 removeFromSuperlayer];

LABEL_5:
  v7 = [(SXDataTableComponentView *)self scrollView];
  [v7 contentSize];
  v9 = v8;
  v10 = [(SXDataTableComponentView *)self scrollView];
  [v10 bounds];
  Width = CGRectGetWidth(v61);

  if (v9 > Width)
  {
    v12 = [MEMORY[0x1E6979398] layer];
    [(SXDataTableComponentView *)self setLeftShadow:v12];

    v13 = [(SXDataTableComponentView *)self leftShadow];
    v14 = [MEMORY[0x1E69DC888] blackColor];
    [v13 setBackgroundColor:{objc_msgSend(v14, "CGColor")}];

    v15 = [(SXDataTableComponentView *)self leftShadow];
    v16 = [(SXDataTableComponentView *)self scrollView];
    [v16 frame];
    v17 = CGRectGetMinX(v62) + -4.0;
    v18 = [(SXDataTableComponentView *)self scrollView];
    [v18 bounds];
    [v15 setFrame:{v17, 0.0, 0.0, CGRectGetHeight(v63)}];

    v19 = [(SXDataTableComponentView *)self leftShadow];
    v20 = MEMORY[0x1E69DC728];
    v21 = [(SXDataTableComponentView *)self scrollView];
    [v21 bounds];
    v22 = [v20 bezierPathWithRect:{1.0, -4.0, 1.0, CGRectGetHeight(v64) + 8.0}];
    [v19 setShadowPath:{objc_msgSend(v22, "CGPath")}];

    v23 = [(SXDataTableComponentView *)self leftShadow];
    v24 = [MEMORY[0x1E69DC888] blackColor];
    [v23 setShadowColor:{objc_msgSend(v24, "CGColor")}];

    v25 = [(SXDataTableComponentView *)self leftShadow];
    [v25 setShadowRadius:3.0];

    v26 = [(SXDataTableComponentView *)self leftShadow];
    LODWORD(v27) = 1.0;
    [v26 setShadowOpacity:v27];

    v28 = [(SXDataTableComponentView *)self leftShadow];
    [v28 setShadowOffset:{0.0, 0.0}];

    v59 = [MEMORY[0x1E6979398] layer];
    v29 = [MEMORY[0x1E69DC888] whiteColor];
    [v59 setBackgroundColor:{objc_msgSend(v29, "CGColor")}];

    v30 = [(SXDataTableComponentView *)self scrollView];
    [v30 bounds];
    [v59 setFrame:{4.0, -8.0, 16.0, CGRectGetHeight(v65) + 16.0}];

    v31 = [(SXDataTableComponentView *)self leftShadow];
    [v31 setMask:v59];

    v32 = [MEMORY[0x1E6979398] layer];
    [(SXDataTableComponentView *)self setRightShadow:v32];

    v33 = [(SXDataTableComponentView *)self rightShadow];
    v34 = [MEMORY[0x1E69DC888] blackColor];
    [v33 setBackgroundColor:{objc_msgSend(v34, "CGColor")}];

    v35 = [(SXDataTableComponentView *)self rightShadow];
    v36 = [(SXDataTableComponentView *)self scrollView];
    [v36 bounds];
    v37 = CGRectGetWidth(v66) + 4.0;
    v38 = [(SXDataTableComponentView *)self scrollView];
    [v38 bounds];
    [v35 setFrame:{v37, 0.0, 0.0, CGRectGetHeight(v67)}];

    v39 = [(SXDataTableComponentView *)self rightShadow];
    v40 = MEMORY[0x1E69DC728];
    v41 = [(SXDataTableComponentView *)self scrollView];
    [v41 bounds];
    v42 = [v40 bezierPathWithRect:{-1.0, -4.0, 1.0, CGRectGetHeight(v68) + 8.0}];
    [v39 setShadowPath:{objc_msgSend(v42, "CGPath")}];

    v43 = [(SXDataTableComponentView *)self rightShadow];
    v44 = [MEMORY[0x1E69DC888] blackColor];
    [v43 setShadowColor:{objc_msgSend(v44, "CGColor")}];

    v45 = [(SXDataTableComponentView *)self rightShadow];
    [v45 setShadowRadius:3.0];

    v46 = [(SXDataTableComponentView *)self rightShadow];
    LODWORD(v47) = 1.0;
    [v46 setShadowOpacity:v47];

    v48 = [(SXDataTableComponentView *)self rightShadow];
    [v48 setShadowOffset:{0.0, 0.0}];

    v49 = [MEMORY[0x1E6979398] layer];
    v50 = [MEMORY[0x1E69DC888] whiteColor];
    [v49 setBackgroundColor:{objc_msgSend(v50, "CGColor")}];

    v51 = [(SXDataTableComponentView *)self scrollView];
    [v51 bounds];
    [v49 setFrame:{-20.0, -8.0, 16.0, CGRectGetHeight(v69) + 16.0}];

    v52 = [(SXDataTableComponentView *)self rightShadow];
    [v52 setMask:v49];

    [(SXDataTableComponentView *)self updateShadowOpacity];
    v53 = [(SXComponentView *)self contentView];
    v54 = [v53 layer];
    v55 = [(SXDataTableComponentView *)self leftShadow];
    [v54 addSublayer:v55];

    v56 = [(SXComponentView *)self contentView];
    v57 = [v56 layer];
    v58 = [(SXDataTableComponentView *)self rightShadow];
    [v57 addSublayer:v58];
  }
}

- (void)updateShadowOpacity
{
  v3 = [(SXDataTableComponentView *)self scrollView];
  [v3 contentOffset];
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

  v8 = [(SXDataTableComponentView *)self scrollView];
  [v8 contentOffset];
  v10 = v9;
  v11 = [(SXDataTableComponentView *)self scrollView];
  [v11 bounds];
  v12 = v10 + CGRectGetWidth(v29);
  v13 = [(SXDataTableComponentView *)self scrollView];
  [v13 contentSize];
  v15 = v14;
  if (v12 < v14)
  {
    v6 = 1.0;
  }

  v16 = [(SXDataTableComponentView *)self leftShadow];
  [v16 opacity];
  v18 = v17;

  if (v7 != v18)
  {
    v19 = [(SXDataTableComponentView *)self leftShadow];
    v20 = v19;
    v21 = 0.0;
    if (v5 > 0.0)
    {
      *&v21 = 1.0;
    }

    [v19 setOpacity:v21];
  }

  v22 = [(SXDataTableComponentView *)self rightShadow];
  [v22 opacity];
  v24 = v23;

  if (v6 != v24)
  {
    v25 = [(SXDataTableComponentView *)self rightShadow];
    v27 = v25;
    v26 = 0.0;
    if (v12 < v15)
    {
      *&v26 = 1.0;
    }

    [v25 setOpacity:v26];
  }
}

- (id)contentViewForBehavior:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && [v4 windowed] || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v5 = [(SXComponentView *)self fillView];
  }

  else
  {
    v5 = self;
  }

  v6 = v5;

  return v6;
}

- (id)descriptorForIndexPath:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v6 = [(SXComponentView *)self component];
  if ([v6 dataOrientation])
  {
    var1 = var0;
  }

  v7 = [(SXComponentView *)self component];
  v8 = [v7 data];
  v9 = [v8 descriptors];
  v10 = [v9 objectAtIndex:var1];

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