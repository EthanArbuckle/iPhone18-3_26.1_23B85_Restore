@interface OFUIWindowDraggingSession
- (BOOL)itemsContainObject:(id)object;
- (CGPoint)position;
- (CGSize)presentationViewSize;
- (OFUIWindowDraggingSession)init;
- (OFUIWindowDraggingSession)initWithWindow:(id)window items:(id)items position:(CGPoint)position source:(id)source;
- (id)_hitDestinationInSuperview:(id)superview;
- (id)_hitDestinationInView:(id)view;
- (id)objectsForPasteboardType:(id)type transcodeBlock:(id)block cache:(BOOL)cache;
- (void)_finishPresentationViewWithCompletion:(id)completion;
- (void)_updateBadge;
- (void)_updateDraggingInSameWindow;
- (void)_updatePresentationViewWithCompletion:(id)completion;
- (void)_updateView:(id)view orientation:(int64_t)orientation animated:(BOOL)animated;
- (void)addItem:(id)item;
- (void)beginDragging;
- (void)dealloc;
- (void)endDragging:(BOOL)dragging;
- (void)moveToPosition:(CGPoint)position;
- (void)updateDragging;
- (void)updatePresentationViewOrientation:(id)orientation;
@end

@implementation OFUIWindowDraggingSession

- (OFUIWindowDraggingSession)init
{
  v6.receiver = self;
  v6.super_class = OFUIWindowDraggingSession;
  v2 = [(OFUIWindowDraggingSession *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_window = 0;
    v2->_items = objc_alloc_init(MEMORY[0x277CBEB18]);
    v3->_animation = 1;
    v3->_source = 0;
    v3->_destination = 0;
    *&v3->_formation = vdupq_n_s64(2uLL);
    v3->_destinationOperation = 1;
    v3->_showBadge = 1;
    v3->_badgeView = 0;
    v3->_badgeLabel = 0;
    v3->_state = 1;
    v3->_delayUpdates = 1;
    v3->_presentationView = 0;
    v3->_position = *MEMORY[0x277CBF348];
    v3->_presentationViewSize = *MEMORY[0x277CBF3A8];
    -[OFUIWindowDraggingSession setPasteboard:](v3, "setPasteboard:", [MEMORY[0x277D75810] pasteboardWithUniqueName]);
    [(UIPasteboard *)v3->_pasteboard setPersistent:1];
    v3->_pasteboardCache = objc_alloc_init(MEMORY[0x277CBEB38]);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_updatePresentationViewOrientation_ name:*MEMORY[0x277D76658] object:{objc_msgSend(MEMORY[0x277D75128], "sharedApplication")}];
  }

  return v3;
}

- (OFUIWindowDraggingSession)initWithWindow:(id)window items:(id)items position:(CGPoint)position source:(id)source
{
  y = position.y;
  x = position.x;
  v26 = *MEMORY[0x277D85DE8];
  v11 = [(OFUIWindowDraggingSession *)self init];
  v12 = v11;
  if (v11)
  {
    v11->_window = window;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v13 = [items countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v13)
    {
      v14 = *v22;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(items);
          }

          v16 = *(*(&v21 + 1) + 8 * i);
          v17 = [objc_msgSend(v16 "object")];
          if (v17)
          {
            -[UIPasteboard addItems:](v12->_pasteboard, "addItems:", [MEMORY[0x277CBEA60] arrayWithObject:v17]);
            [(NSMutableArray *)v12->_items addObject:v16];
            pasteboardCache = v12->_pasteboardCache;
            objc_sync_enter(pasteboardCache);
            [(NSMutableDictionary *)v12->_pasteboardCache removeAllObjects];
            objc_sync_exit(pasteboardCache);
          }
        }

        v13 = [items countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v13);
    }

    if ([(NSMutableArray *)v12->_items count])
    {
      [(OFUIWindowDraggingSession *)v12 setSource:source];
      v12->_position.x = x;
      v12->_position.y = y;
    }

    else
    {
      v19 = v12;
      return 0;
    }
  }

  return v12;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76658] object:{objc_msgSend(MEMORY[0x277D75128], "sharedApplication")}];
  if (self->_window)
  {
    self->_window = 0;
  }

  items = self->_items;
  if (items)
  {

    self->_items = 0;
  }

  source = self->_source;
  if (source)
  {

    self->_source = 0;
  }

  destination = self->_destination;
  if (destination)
  {

    self->_destination = 0;
  }

  badgeView = self->_badgeView;
  if (badgeView)
  {

    self->_badgeView = 0;
  }

  badgeLabel = self->_badgeLabel;
  if (badgeLabel)
  {

    self->_badgeLabel = 0;
  }

  presentationView = self->_presentationView;
  if (presentationView)
  {

    self->_presentationView = 0;
  }

  [MEMORY[0x277D75810] removePasteboardWithName:{-[UIPasteboard name](self->_pasteboard, "name")}];
  pasteboard = self->_pasteboard;
  if (pasteboard)
  {

    self->_pasteboard = 0;
  }

  pasteboardCache = self->_pasteboardCache;
  if (pasteboardCache)
  {

    self->_pasteboardCache = 0;
  }

  v12.receiver = self;
  v12.super_class = OFUIWindowDraggingSession;
  [(OFUIWindowDraggingSession *)&v12 dealloc];
}

- (void)_updateView:(id)view orientation:(int64_t)orientation animated:(BOOL)animated
{
  animatedCopy = animated;
  if ((orientation - 3) > 1)
  {
    v8 = 0.0;
    if ((orientation - 1) <= 1)
    {
      if (orientation == 2)
      {
        v8 = 565.486678;
      }

      else
      {
        v8 = 0.0;
      }
    }
  }

  else
  {
    v7 = 282.743339;
    if (orientation != 3)
    {
      v7 = 0.0;
    }

    if (orientation == 4)
    {
      v8 = -282.743339;
    }

    else
    {
      v8 = v7;
    }
  }

  areAnimationsEnabled = [MEMORY[0x277D75D18] areAnimationsEnabled];
  if (animatedCopy)
  {
    [MEMORY[0x277D75D18] beginAnimations:0 context:0];
  }

  else
  {
    [MEMORY[0x277D75D18] setAnimationsEnabled:0];
  }

  CGAffineTransformMakeRotation(&v10, v8 / 180.0);
  [view setTransform:&v10];
  if (animatedCopy)
  {
    [MEMORY[0x277D75D18] commitAnimations];
  }

  else
  {
    [MEMORY[0x277D75D18] setAnimationsEnabled:areAnimationsEnabled];
  }
}

- (void)_updateBadge
{
  if (!self->_showBadge)
  {
    if (self->_badgeView)
    {
      [(UILabel *)self->_badgeLabel removeFromSuperview];
      [(UIView *)self->_badgeView removeFromSuperview];
      badgeLabel = self->_badgeLabel;
      if (badgeLabel)
      {

        self->_badgeLabel = 0;
      }

      badgeView = self->_badgeView;
      if (badgeView)
      {

        self->_badgeView = 0;
      }
    }

    return;
  }

  v4 = *MEMORY[0x277CBF348];
  v3 = *(MEMORY[0x277CBF348] + 8);
  if (self->_source && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(OFUIWindowDraggingSource *)self->_source draggingSource:self badgeCenterForItem:[(NSMutableArray *)self->_items firstObject]];
    v4 = v5;
    v3 = v6;
  }

  [(UIView *)self->_presentationView bounds];
  v8 = v4 - v7 * 0.0500000007 + -9.0;
  [(UIView *)self->_presentationView bounds];
  v10 = v3 - v9 * 0.0500000007 + -9.0;
  v11 = self->_badgeView;
  if (v11)
  {
    [(UIView *)v11 setFrame:v8, v10, 36.0, 36.0];
  }

  else
  {
    self->_badgeView = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{OFCGRectMakeAlignRectOnPixels(v8, v10, 36.0, 36.0)}];
    -[UIView setBackgroundColor:](self->_badgeView, "setBackgroundColor:", [MEMORY[0x277D75348] clearColor]);
    [(UIView *)self->_presentationView addSubview:self->_badgeView];
    [(UIView *)self->_badgeView setHidden:1];
    [(UIView *)self->_badgeView bounds];
    v15 = v14 + -15.0;
    [(UIView *)self->_badgeView bounds];
    self->_badgeLabel = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{OFCGRectMakeAlignRectOnPixels(7.0, 0.0, v15, v16 + -3.0)}];
    -[UILabel setFont:](self->_badgeLabel, "setFont:", [MEMORY[0x277D74300] fontWithName:@"HelveticaNeue-Bold" size:14.0]);
    [(UILabel *)self->_badgeLabel setTextAlignment:1];
    -[UILabel setTextColor:](self->_badgeLabel, "setTextColor:", [MEMORY[0x277D75348] colorWithWhite:0.899999976 alpha:1.0]);
    -[UILabel setBackgroundColor:](self->_badgeLabel, "setBackgroundColor:", [MEMORY[0x277D75348] clearColor]);
    [(UILabel *)self->_badgeLabel setMinimumScaleFactor:0.699999988];
    [(UILabel *)self->_badgeLabel setAdjustsFontSizeToFitWidth:1];
    [(UIView *)self->_badgeView addSubview:self->_badgeLabel];
    [(UILabel *)self->_badgeLabel setHidden:1];
  }

  v17 = __ROR8__(self->_destinationOperation - 2, 1);
  if (v17 <= 2)
  {
    if (v17)
    {
      if (v17 == 1)
      {
        v18 = self->_badgeView;
LABEL_26:
        [(UIView *)v18 setHidden:1];
        v26 = self->_badgeLabel;

        [(UILabel *)v26 setHidden:1];
        return;
      }

      goto LABEL_21;
    }

    v22 = [(NSMutableArray *)self->_items count];
    v18 = self->_badgeView;
    if (!v22)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if (v17 == 3)
  {
    [(UIView *)self->_badgeView setHidden:0];
    [(UILabel *)self->_badgeLabel setHidden:1];
    v23 = MEMORY[0x277D755B8];
    v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v25 = @"badgeDelete";
    goto LABEL_30;
  }

  if (v17 == 7)
  {
    v18 = self->_badgeView;
LABEL_25:
    [(UIView *)v18 setHidden:0];
    [(UILabel *)self->_badgeLabel setHidden:1];
    v23 = MEMORY[0x277D755B8];
    v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v25 = @"badgeCopy";
LABEL_30:
    v27 = [objc_msgSend(v23 imageWithContentsOfFile:{objc_msgSend(v24, "pathForResource:ofType:", v25, @"png", "CGImage"}];
    layer = [(UIView *)self->_badgeView layer];

    [(CALayer *)layer setContents:v27];
    return;
  }

LABEL_21:
  v19 = [(NSMutableArray *)self->_items count];
  v18 = self->_badgeView;
  if (v19 < 2)
  {
    goto LABEL_26;
  }

  [(UIView *)v18 setHidden:0];
  [(UILabel *)self->_badgeLabel setHidden:0];
  -[CALayer setContents:](-[UIView layer](self->_badgeView, "layer"), "setContents:", [objc_msgSend(MEMORY[0x277D755B8] imageWithContentsOfFile:{objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "pathForResource:ofType:", @"badgeCopyBlank", @"png", "CGImage"}]);
  if ([(NSMutableArray *)self->_items count]> 0x63)
  {
    v21 = self->_badgeLabel;
    v20 = @"9+";
  }

  else
  {
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", -[NSMutableArray count](self->_items, "count")];
    v21 = self->_badgeLabel;
  }

  [(UILabel *)v21 setText:v20];
}

- (void)_updatePresentationViewWithCompletion:(id)completion
{
  v65 = *MEMORY[0x277D85DE8];
  if ([(NSMutableArray *)self->_items count])
  {
    completionCopy = completion;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    items = self->_items;
    v6 = [(NSMutableArray *)items countByEnumeratingWithState:&v60 objects:v64 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v50 = 0;
      v9 = *v61;
      v53 = *(MEMORY[0x277CBF3A0] + 8);
      v54 = *MEMORY[0x277CBF3A0];
      v51 = *(MEMORY[0x277CBF3A0] + 24);
      v52 = *(MEMORY[0x277CBF3A0] + 16);
      v10 = *MEMORY[0x277CBF3A8];
      v11 = *(MEMORY[0x277CBF3A8] + 8);
      do
      {
        v12 = 0;
        do
        {
          if (*v61 != v9)
          {
            objc_enumerationMutation(items);
          }

          v13 = *(*(&v60 + 1) + 8 * v12);
          if ([v13 imageView] && !objc_msgSend(objc_msgSend(v13, "imageView"), "superview"))
          {
            if (self->_source && (objc_opt_respondsToSelector() & 1) != 0)
            {
              [(OFUIWindowDraggingSource *)self->_source draggingSource:self originalFrameForItem:v13];
              v15 = v14;
              v17 = v16;
              v19 = v18;
              v21 = v20;
              v22 = 1;
            }

            else
            {
              v22 = 0;
              v21 = v51;
              v19 = v52;
              v17 = v53;
              v15 = v54;
            }

            v66.origin.x = v15;
            v66.origin.y = v17;
            v66.size.width = v19;
            v66.size.height = v21;
            IsEmpty = CGRectIsEmpty(v66);
            width = self->_presentationViewSize.width;
            height = self->_presentationViewSize.height;
            if (IsEmpty)
            {
              x = self->_position.x;
              if (width == v10 && height == v11)
              {
                v15 = x + -32.0;
                v17 = self->_position.y + -32.0;
                v21 = 64.0;
                v19 = 64.0;
              }

              else
              {
                v15 = x - width * 0.5;
                v17 = self->_position.y - height * 0.5;
                v21 = self->_presentationViewSize.height;
                v19 = self->_presentationViewSize.width;
              }
            }

            if (width == v10 && height == v11)
            {
              self->_presentationViewSize.width = v19;
              self->_presentationViewSize.height = v21;
            }

            if (-v8 == v12)
            {
              v27 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, self->_presentationViewSize.width, self->_presentationViewSize.height}];
              self->_presentationView = v27;
              -[OFUIWindowDraggingSession _updateView:orientation:animated:](self, "_updateView:orientation:animated:", v27, [objc_msgSend(MEMORY[0x277D75128] "sharedApplication")], 0);
              [(UIView *)self->_presentationView setUserInteractionEnabled:0];
              v67.origin.x = v15;
              v67.origin.y = v17;
              v67.size.width = v19;
              v67.size.height = v21;
              MidX = CGRectGetMidX(v67);
              v68.origin.x = v15;
              v68.origin.y = v17;
              v68.size.width = v19;
              v68.size.height = v21;
              [(UIView *)self->_presentationView setCenter:MidX, CGRectGetMidY(v68)];
              [(OFUIWindow *)self->_window addSubview:self->_presentationView];
              v50 = 1;
            }

            if (v22)
            {
              [(UIView *)self->_presentationView convertRect:self->_window fromView:0.0, 0.0, v19, v21];
              v30 = v29;
              v55 = v17;
              v56 = v15;
              v31 = v10;
              v33 = v32;
              v34 = v11;
              v36 = v35;
              v38 = v37;
              imageView = [v13 imageView];
              v40 = v30;
              v41 = v33;
              v10 = v31;
              v42 = v36;
              v11 = v34;
              v17 = v55;
              v15 = v56;
              v43 = v38;
            }

            else
            {
              imageView = [v13 imageView];
              v40 = 0.0;
              v41 = 0.0;
              v42 = v19;
              v43 = v21;
            }

            [imageView setBounds:{v40, v41, v42, v43}];
            presentationView = self->_presentationView;
            v69.origin.x = v15;
            v69.origin.y = v17;
            v69.size.width = v19;
            v69.size.height = v21;
            v45 = CGRectGetMidX(v69);
            v70.origin.x = v15;
            v70.origin.y = v17;
            v70.size.width = v19;
            v70.size.height = v21;
            [(UIView *)presentationView convertPoint:self->_window fromView:v45, CGRectGetMidY(v70)];
            [objc_msgSend(v13 "imageView")];
            -[UIView addSubview:](self->_presentationView, "addSubview:", [v13 imageView]);
            -[UIView sendSubviewToBack:](self->_presentationView, "sendSubviewToBack:", [v13 imageView]);
            if (self->_source && (objc_opt_respondsToSelector() & 1) != 0)
            {
              [(OFUIWindowDraggingSource *)self->_source draggingSource:self prepareItem:v13];
            }
          }

          ++v12;
        }

        while (v7 != v12);
        v8 += v7;
        v48 = [(NSMutableArray *)items countByEnumeratingWithState:&v60 objects:v64 count:16];
        v7 = v48;
      }

      while (v48);
    }

    else
    {
      v50 = 0;
    }

    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __67__OFUIWindowDraggingSession__updatePresentationViewWithCompletion___block_invoke;
    v58[3] = &unk_279C8A190;
    v58[4] = self;
    v59 = v50 & 1;
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __67__OFUIWindowDraggingSession__updatePresentationViewWithCompletion___block_invoke_2;
    v57[3] = &unk_279C8A1B8;
    v57[4] = completionCopy;
    [MEMORY[0x277D75D18] animateWithDuration:2 delay:v58 options:v57 animations:0.200000003 completion:0.0];
  }
}

uint64_t __67__OFUIWindowDraggingSession__updatePresentationViewWithCompletion___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 112) bounds];
  MidX = CGRectGetMidX(v39);
  [*(*(a1 + 32) + 112) bounds];
  MidY = CGRectGetMidY(v40);
  [*(*(a1 + 32) + 112) bounds];
  v5 = v4;
  [*(*(a1 + 32) + 112) bounds];
  if (v5 < v6)
  {
    v5 = v6;
  }

  if (*(a1 + 40) == 1)
  {
    [*(*(a1 + 32) + 112) setCenter:{*(*(a1 + 32) + 136), *(*(a1 + 32) + 144)}];
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = *(*(a1 + 32) + 16);
  result = [v7 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (result)
  {
    v9 = result;
    v10 = 0;
    v11 = v5 * 0.150000006;
    v25 = 3.14159265;
    v24 = 180.0;
    v12 = *v34;
    do
    {
      v13 = 0;
      do
      {
        if (*v34 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v33 + 1) + 8 * v13);
        v15 = *(a1 + 32);
        v16 = *(v15 + 48);
        switch(v16)
        {
          case 8:
            [objc_msgSend(*(*(&v33 + 1) + 8 * v13) "imageView")];
            CGAffineTransformMakeScale(&v26, 1.10000002, 1.10000002);
            v18 = [v14 imageView];
            *&t1.a = *&v26.a;
            *&t1.c = *&v26.c;
            v19 = *&v26.tx;
            break;
          case 4:
            [*(v15 + 112) bounds];
            [objc_msgSend(v14 "imageView")];
            CGAffineTransformMakeScale(&v27, 1.10000002, 1.10000002);
            v18 = [v14 imageView];
            *&t1.a = *&v27.a;
            *&t1.c = *&v27.c;
            v19 = *&v27.tx;
            break;
          case 2:
            [objc_msgSend(*(*(&v33 + 1) + 8 * v13) "imageView")];
            if (v10)
            {
              if (v10 > 3)
              {
                CGAffineTransformMakeScale(&t1, 0.699999988, 0.699999988);
                [v14 rotation];
                CGAffineTransformMakeRotation(&t2, v21 * v25 / v24);
                CGAffineTransformConcat(&v28, &t1, &t2);
                v18 = [v14 imageView];
                *&t1.a = *&v28.a;
                *&t1.c = *&v28.c;
                v19 = *&v28.tx;
              }

              else
              {
                CGAffineTransformMakeScale(&t1, 1.10000002, 1.10000002);
                [v14 rotation];
                CGAffineTransformMakeRotation(&t2, v17 * v25 / v24);
                CGAffineTransformConcat(&v30, &t1, &t2);
                v18 = [v14 imageView];
                *&t1.a = *&v30.a;
                *&t1.c = *&v30.c;
                v19 = *&v30.tx;
              }
            }

            else
            {
              CGAffineTransformMakeScale(&v32, 1.10000002, 1.10000002);
              v18 = [v14 imageView];
              *&t1.a = *&v32.a;
              *&t1.c = *&v32.c;
              v19 = *&v32.tx;
            }

            break;
          default:
            goto LABEL_21;
        }

        *&t1.tx = v19;
        [v18 setTransform:{&t1, *&v24, *&v25}];
LABEL_21:
        v22 = [objc_msgSend(v14 imageView];
        LODWORD(v23) = 1051931443;
        [v22 setShadowOpacity:v23];
        ++v10;
        ++v13;
      }

      while (v9 != v13);
      result = [v7 countByEnumeratingWithState:&v33 objects:v37 count:16];
      v9 = result;
    }

    while (result);
  }

  return result;
}

- (void)_finishPresentationViewWithCompletion:(id)completion
{
  selfCopy = self;
  v54 = *MEMORY[0x277D85DE8];
  if ([(NSMutableArray *)self->_items count])
  {
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v47 = __67__OFUIWindowDraggingSession__finishPresentationViewWithCompletion___block_invoke;
    v48 = &unk_279C8A1E0;
    v49 = selfCopy;
    completionCopy = completion;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = [(UIView *)selfCopy->_presentationView subviews];
    v5 = [(NSArray *)obj countByEnumeratingWithState:&v42 objects:v53 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v43;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v43 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v42 + 1) + 8 * i);
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v10 = selfCopy;
          items = selfCopy->_items;
          v12 = [(NSMutableArray *)items countByEnumeratingWithState:&v38 objects:v52 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v39;
LABEL_9:
            v15 = 0;
            while (1)
            {
              if (*v39 != v14)
              {
                objc_enumerationMutation(items);
              }

              if ([objc_msgSend(*(*(&v38 + 1) + 8 * v15) "imageView")])
              {
                break;
              }

              if (v13 == ++v15)
              {
                v13 = [(NSMutableArray *)items countByEnumeratingWithState:&v38 objects:v52 count:16];
                if (v13)
                {
                  goto LABEL_9;
                }

                break;
              }
            }
          }

          selfCopy = v10;
        }

        v6 = [(NSArray *)obj countByEnumeratingWithState:&v42 objects:v53 count:16];
      }

      while (v6);
    }

    animation = selfCopy->_animation;
    if (animation == 16)
    {
      v17 = objc_alloc(MEMORY[0x277D755E8]);
      [(UIView *)selfCopy->_presentationView bounds];
      v18 = [v17 initWithFrame:?];
      obja = [MEMORY[0x277D755B8] imageWithContentsOfFile:{objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "pathForResource:ofType:", @"poof1", @"png"}];
      v19 = [MEMORY[0x277D755B8] imageWithContentsOfFile:{objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "pathForResource:ofType:", @"poof2", @"png"}];
      v20 = [MEMORY[0x277D755B8] imageWithContentsOfFile:{objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "pathForResource:ofType:", @"poof3", @"png"}];
      v21 = [MEMORY[0x277D755B8] imageWithContentsOfFile:{objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "pathForResource:ofType:", @"poof4", @"png"}];
      [v18 setAnimationImages:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:", obja, v19, v20, v21, objc_msgSend(MEMORY[0x277D755B8], "imageWithContentsOfFile:", objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "pathForResource:ofType:", @"poof5", @"png", 0)}];
      [v18 setAnimationDuration:0.25];
      [v18 setAnimationRepeatCount:1];
      [(UIView *)selfCopy->_presentationView addSubview:v18];

      v36 = 0u;
      v37 = 0u;
      v35 = 0u;
      v34 = 0u;
      v22 = selfCopy->_items;
      v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v34 objects:v51 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v35;
        do
        {
          for (j = 0; j != v24; ++j)
          {
            if (*v35 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v34 + 1) + 8 * j);
            if ([v27 imageView])
            {
              [objc_msgSend(v27 "imageView")];
            }
          }

          v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v34 objects:v51 count:16];
        }

        while (v24);
      }

      [v18 startAnimating];
      v28 = dispatch_time(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __67__OFUIWindowDraggingSession__finishPresentationViewWithCompletion___block_invoke_2;
      block[3] = &unk_279C89D60;
      block[4] = v46;
      dispatch_after(v28, MEMORY[0x277D85CD0], block);
    }

    else if (animation == 1)
    {
      (v47)(v46, 1);
    }

    else
    {
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __67__OFUIWindowDraggingSession__finishPresentationViewWithCompletion___block_invoke_3;
      v32[3] = &unk_279C89F90;
      v32[4] = selfCopy;
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __67__OFUIWindowDraggingSession__finishPresentationViewWithCompletion___block_invoke_4;
      v31[3] = &unk_279C8A1B8;
      v31[4] = v46;
      [MEMORY[0x277D75D18] animateWithDuration:v32 animations:v31 completion:0.200000003];
    }
  }
}

uint64_t __67__OFUIWindowDraggingSession__finishPresentationViewWithCompletion___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(*(a1 + 32) + 16);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (*(*(a1 + 32) + 32))
        {
          v7 = *(*(&v9 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [*(*(a1 + 32) + 32) draggingSource:*(a1 + 32) cleanupItem:v7];
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  [*(*(a1 + 32) + 112) removeFromSuperview];
  return (*(*(a1 + 40) + 16))();
}

uint64_t __67__OFUIWindowDraggingSession__finishPresentationViewWithCompletion___block_invoke_3(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v2 = *(*(a1 + 32) + 16);
  result = [v2 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v39;
    v6 = *(MEMORY[0x277CBF3A0] + 8);
    v35 = *MEMORY[0x277CBF3A0];
    v7 = *(MEMORY[0x277CBF3A0] + 16);
    v8 = *(MEMORY[0x277CBF3A0] + 24);
    sx = 0.0000999999975;
    v9 = MEMORY[0x277CBF2C0];
    do
    {
      v10 = 0;
      do
      {
        if (*v39 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v11 = *(*(&v38 + 1) + 8 * v10);
        if ([v11 imageView])
        {
          v12 = *(a1 + 32);
          v13 = v12[3];
          switch(v13)
          {
            case 8:
              CGAffineTransformMakeScale(&v36, sx, sx);
              v33 = [v11 imageView];
              v37 = v36;
              [v33 setTransform:&v37];
              [objc_msgSend(v11 "imageView")];
              break;
            case 4:
              v14 = v8;
              v15 = v7;
              v16 = v6;
              v17 = v35;
              if (v12[5])
              {
                v14 = v8;
                v15 = v7;
                v16 = v6;
                v17 = v35;
                if (objc_opt_respondsToSelector())
                {
                  [*(*(a1 + 32) + 40) draggingDestination:*(a1 + 32) originalFrameForItem:v11];
LABEL_16:
                  v17 = v18;
                  v16 = v19;
                  v15 = v20;
                  v14 = v21;
                }
              }

LABEL_17:
              v44.origin.x = v17;
              v44.origin.y = v16;
              v44.size.width = v15;
              v44.size.height = v14;
              v22 = 0.0;
              if (!CGRectIsEmpty(v44))
              {
                v23 = *(*(a1 + 32) + 112);
                v45.origin.x = v17;
                v45.origin.y = v16;
                v45.size.width = v15;
                v45.size.height = v14;
                MidX = CGRectGetMidX(v45);
                v46.origin.x = v17;
                v46.origin.y = v16;
                v46.size.width = v15;
                v46.size.height = v14;
                [v23 convertPoint:*(*(a1 + 32) + 8) fromView:{MidX, CGRectGetMidY(v46)}];
                [objc_msgSend(v11 "imageView")];
                [*(*(a1 + 32) + 112) convertRect:*(*(a1 + 32) + 8) fromView:{0.0, 0.0, v15, v14}];
                [objc_msgSend(v11 "imageView")];
                v22 = 1.0;
              }

              [objc_msgSend(v11 "imageView")];
              v31 = [v11 imageView];
              v32 = v9[1];
              *&v37.a = *v9;
              *&v37.c = v32;
              *&v37.tx = v9[2];
              [v31 setTransform:&v37];
              break;
            case 2:
              v14 = v8;
              v15 = v7;
              v16 = v6;
              v17 = v35;
              if (v12[4])
              {
                v14 = v8;
                v15 = v7;
                v16 = v6;
                v17 = v35;
                if (objc_opt_respondsToSelector())
                {
                  [*(*(a1 + 32) + 32) draggingSource:*(a1 + 32) originalFrameForItem:v11];
                  goto LABEL_16;
                }
              }

              goto LABEL_17;
          }

          [objc_msgSend(objc_msgSend(v11 "imageView")];
        }

        ++v10;
      }

      while (v4 != v10);
      result = [v2 countByEnumeratingWithState:&v38 objects:v42 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

- (id)_hitDestinationInSuperview:(id)superview
{
  if (!superview || ([superview conformsToProtocol:&unk_287AE7C70] & 1) != 0)
  {
    return superview;
  }

  superview = [superview superview];

  return [(OFUIWindowDraggingSession *)self _hitDestinationInSuperview:superview];
}

- (id)_hitDestinationInView:(id)view
{
  window = self->_window;
  [view convertPoint:window fromView:{self->_position.x, self->_position.y}];
  v5 = [(OFUIWindow *)window hitTest:0 withEvent:?];
  v6 = v5;
  if (!v5 || ([v5 conformsToProtocol:&unk_287AE7C70] & 1) != 0)
  {
    return v6;
  }

  superview = [v6 superview];

  return [(OFUIWindowDraggingSession *)self _hitDestinationInSuperview:superview];
}

- (void)beginDragging
{
  if (self->_state == 1)
  {
    if ((v7[7] = v2, v7[8] = v3, self->_state = 2, !self->_source) || (objc_opt_respondsToSelector() & 1) == 0 || ((v5 = [(OFUIWindowDraggingSource *)self->_source draggingSourceWillBegin:self], self->_sourceOperation = v5, v5 != 4) ? (v6 = v5 == 2) : (v6 = 1), v6))
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __42__OFUIWindowDraggingSession_beginDragging__block_invoke;
      v7[3] = &unk_279C8A208;
      v7[4] = self;
      [(OFUIWindowDraggingSession *)self _updatePresentationViewWithCompletion:v7];
    }
  }
}

uint64_t __42__OFUIWindowDraggingSession_beginDragging__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 32))
  {
    v3 = objc_opt_respondsToSelector();
    v2 = *(a1 + 32);
    if (v3)
    {
      [*(v2 + 32) draggingSourceDidBegin:?];
      v2 = *(a1 + 32);
    }
  }

  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v2, @"OFUIWindowDraggingNotificationDraggingSessionUserInfoKey", 0}];
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  v5 = *(a1 + 32);

  return [v5 updateDragging];
}

- (BOOL)itemsContainObject:(id)object
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  items = self->_items;
  v5 = [(NSMutableArray *)items countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(items);
        }

        if ([objc_msgSend(*(*(&v10 + 1) + 8 * v8) "object")])
        {
          LOBYTE(v5) = 1;
          return v5;
        }

        ++v8;
      }

      while (v6 != v8);
      v5 = [(NSMutableArray *)items countByEnumeratingWithState:&v10 objects:v14 count:16];
      v6 = v5;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  return v5;
}

- (void)addItem:(id)item
{
  if (-[OFUIWindowDraggingSession isDragging](self, "isDragging") && !-[OFUIWindowDraggingSession itemsContainObject:](self, "itemsContainObject:", [item object]) && (!self->_source || (objc_opt_respondsToSelector() & 1) == 0 || -[OFUIWindowDraggingSource draggingSource:willAddItem:](self->_source, "draggingSource:willAddItem:", self, item)))
  {
    v5 = [objc_msgSend(item "object")];
    if (v5)
    {
      -[UIPasteboard addItems:](self->_pasteboard, "addItems:", [MEMORY[0x277CBEA60] arrayWithObject:v5]);
      [(NSMutableArray *)self->_items addObject:item];
      pasteboardCache = self->_pasteboardCache;
      objc_sync_enter(pasteboardCache);
      [(NSMutableDictionary *)self->_pasteboardCache removeAllObjects];
      objc_sync_exit(pasteboardCache);
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __37__OFUIWindowDraggingSession_addItem___block_invoke;
      v7[3] = &unk_279C8A230;
      v7[4] = self;
      v7[5] = item;
      [(OFUIWindowDraggingSession *)self _updatePresentationViewWithCompletion:v7];
    }
  }
}

uint64_t __37__OFUIWindowDraggingSession_addItem___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[4])
  {
    v3 = objc_opt_respondsToSelector();
    v2 = *(a1 + 32);
    if (v3)
    {
      [v2[4] draggingSource:v2 didAddItem:*(a1 + 40)];
      v2 = *(a1 + 32);
    }
  }

  return [v2 updateDragging];
}

- (void)moveToPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  if ([(OFUIWindowDraggingSession *)self isDragging])
  {
    self->_position.x = x;
    self->_position.y = y;
    [(UIView *)self->_presentationView setCenter:x, y];
    if (self->_source && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [(OFUIWindowDraggingSource *)self->_source draggingSourceDidMove:self];
    }

    [(OFUIWindowDraggingSession *)self updateDragging];
  }
}

- (void)_updateDraggingInSameWindow
{
  if (self->_destination && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = [(OFUIWindowDraggingDestination *)self->_destination draggingDestinationUpdated:self];
    v4 = v3 == 1 && self->_sourceOperation == 4;
    v5 = 8;
    if (!v4)
    {
      v5 = v3;
    }

    self->_destinationOperation = v5;

    [(OFUIWindowDraggingSession *)self _updateBadge];
  }
}

- (void)updateDragging
{
  v17 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__updateDraggingInSameWindow object:0];
  if (![(OFUIWindowDraggingSession *)self isDragging])
  {
    return;
  }

  [(OFUIWindowDraggingSession *)self setState:4];
  v3 = [(OFUIWindowDraggingSession *)self _hitDestinationInView:self->_window];
  destination = self->_destination;
  if (destination != v3)
  {
    if (destination)
    {
      v5 = objc_opt_respondsToSelector();
      if (!v3)
      {
        if (v5)
        {
          [(OFUIWindowDraggingDestination *)self->_destination draggingDestinationExited:self];
        }

        goto LABEL_24;
      }

      if (v5)
      {
        [(OFUIWindowDraggingDestination *)self->_destination draggingDestinationExited:self];
      }
    }

    else if (!v3)
    {
      goto LABEL_28;
    }

    [(OFUIWindowDraggingSession *)self setDestination:v3];
    if (self->_destination && (objc_opt_respondsToSelector() & 1) != 0)
    {
      self->_destinationOperation = [(OFUIWindowDraggingDestination *)self->_destination draggingDestinationEntered:self];
LABEL_28:
      if (self->_source)
      {
        if (objc_opt_respondsToSelector())
        {
          v14 = 0u;
          v15 = 0u;
          v12 = 0u;
          v13 = 0u;
          items = self->_items;
          v8 = [(NSMutableArray *)items countByEnumeratingWithState:&v12 objects:v16 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v13;
            do
            {
              for (i = 0; i != v9; ++i)
              {
                if (*v13 != v10)
                {
                  objc_enumerationMutation(items);
                }

                [(OFUIWindowDraggingSource *)self->_source draggingSource:self updateItem:*(*(&v12 + 1) + 8 * i)];
              }

              v9 = [(NSMutableArray *)items countByEnumeratingWithState:&v12 objects:v16 count:16];
            }

            while (v9);
          }
        }
      }

      if (self->_delayUpdates)
      {
        [(OFUIWindowDraggingSession *)self performSelector:sel__updateDraggingInSameWindow withObject:0 afterDelay:0.0500000007];
      }

      else
      {
        [(OFUIWindowDraggingSession *)self _updateDraggingInSameWindow];
      }

      return;
    }

LABEL_24:
    [(OFUIWindowDraggingSession *)self setDestination:0];
    if (self->_sourceOperation == 4)
    {
      v6 = 8;
    }

    else
    {
      v6 = 1;
    }

    self->_destinationOperation = v6;
    goto LABEL_28;
  }

  if (!v3)
  {
    if (self->_destinationOperation != 8)
    {
      self->_destinationOperation = 1;
    }

    [(OFUIWindowDraggingSession *)self _updateBadge];
  }

  if (self->_delayUpdates)
  {

    [(OFUIWindowDraggingSession *)self performSelector:sel__updateDraggingInSameWindow withObject:0 afterDelay:0.0500000007];
  }

  else
  {

    [(OFUIWindowDraggingSession *)self _updateDraggingInSameWindow];
  }
}

- (void)endDragging:(BOOL)dragging
{
  draggingCopy = dragging;
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__updateDraggingInSameWindow object:0];
  if (self->_state == 2)
  {
    [(OFUIWindowDraggingSession *)self updateDragging];
  }

  if (self->_showBadge)
  {
    [(UILabel *)self->_badgeLabel removeFromSuperview];
    [(UIView *)self->_badgeView removeFromSuperview];
    badgeLabel = self->_badgeLabel;
    if (badgeLabel)
    {

      self->_badgeLabel = 0;
    }

    badgeView = self->_badgeView;
    if (badgeView)
    {

      self->_badgeView = 0;
    }
  }

  if (draggingCopy)
  {
    v7 = 8;
  }

  else
  {
    v7 = 32;
  }

  [(OFUIWindowDraggingSession *)self setState:v7];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __41__OFUIWindowDraggingSession_endDragging___block_invoke;
  v14[3] = &unk_279C8A208;
  v14[4] = self;
  if (draggingCopy || !self->_destination || (destinationOperation = self->_destinationOperation, destinationOperation == 8) || destinationOperation == 1)
  {
    if (self->_destinationOperation == 8)
    {
      self->_animation = 16;
      if (self->_destination && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [(OFUIWindowDraggingDestination *)self->_destination draggingDestinationWillEnd:self cancelled:1];
      }

      v9 = v13;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __41__OFUIWindowDraggingSession_endDragging___block_invoke_2;
      v13[3] = &unk_279C8A1B8;
LABEL_33:
      v10 = v9 + 4;
      goto LABEL_34;
    }

LABEL_29:
    self->_animation = 2;
    if (self->_destination && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [(OFUIWindowDraggingDestination *)self->_destination draggingDestinationWillEnd:self cancelled:1];
    }

    v9 = v11;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __41__OFUIWindowDraggingSession_endDragging___block_invoke_4;
    v11[3] = &unk_279C8A1B8;
    goto LABEL_33;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0 || ![(OFUIWindowDraggingDestination *)self->_destination prepareForDragOperation:self]|| !self->_destination || (objc_opt_respondsToSelector() & 1) == 0 || ![(OFUIWindowDraggingDestination *)self->_destination performDragOperation:self])
  {
    goto LABEL_29;
  }

  if (self->_destination && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(OFUIWindowDraggingDestination *)self->_destination draggingDestinationWillEnd:self cancelled:0];
  }

  v11[5] = MEMORY[0x277D85DD0];
  v11[6] = 3221225472;
  v11[7] = __41__OFUIWindowDraggingSession_endDragging___block_invoke_3;
  v11[8] = &unk_279C8A1E0;
  v11[9] = self;
  v10 = &v12;
LABEL_34:
  *v10 = v14;
  [(OFUIWindowDraggingSession *)self _finishPresentationViewWithCompletion:?];
}

uint64_t __41__OFUIWindowDraggingSession_endDragging___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (*(v4 + 40))
  {
    v5 = objc_opt_respondsToSelector();
    v4 = *(a1 + 32);
    if (v5)
    {
      [*(v4 + 40) draggingDestinationEnded:v4 cancelled:a2];
      v4 = *(a1 + 32);
    }
  }

  if (*(v4 + 32))
  {
    v6 = objc_opt_respondsToSelector();
    v4 = *(a1 + 32);
    if (v6)
    {
      [*(v4 + 32) draggingSourceDidEnd:v4 cancelled:a2];
      v4 = *(a1 + 32);
    }
  }

  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v4, @"OFUIWindowDraggingNotificationDraggingSessionUserInfoKey", 0}];
  v8 = [MEMORY[0x277CCAB98] defaultCenter];

  return [v8 postNotificationName:@"OFUIWindowDraggingEndedNotificationName" object:0 userInfo:v7];
}

uint64_t __41__OFUIWindowDraggingSession_endDragging___block_invoke_3(uint64_t a1)
{
  if (*(*(a1 + 32) + 40) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [*(*(a1 + 32) + 40) concludeDragOperation:?];
  }

  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)updatePresentationViewOrientation:(id)orientation
{
  presentationView = self->_presentationView;
  sharedApplication = [objc_msgSend(MEMORY[0x277D75128] sharedApplication];

  [(OFUIWindowDraggingSession *)self _updateView:presentationView orientation:sharedApplication animated:1];
}

- (id)objectsForPasteboardType:(id)type transcodeBlock:(id)block cache:(BOOL)cache
{
  cacheCopy = cache;
  pasteboardCache = self->_pasteboardCache;
  objc_sync_enter(pasteboardCache);
  v10 = [(NSMutableDictionary *)self->_pasteboardCache objectForKey:type];
  objc_sync_exit(pasteboardCache);
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v12 = (*(block + 2))(block, -[UIPasteboard valuesForPasteboardType:inItemSet:](self->_pasteboard, "valuesForPasteboardType:inItemSet:", type, -[UIPasteboard itemSetWithPasteboardTypes:](self->_pasteboard, "itemSetWithPasteboardTypes:", [MEMORY[0x277CBEA60] arrayWithObject:type])));
    v13 = v12;
    if (cacheCopy && v12)
    {
      [(NSMutableDictionary *)self->_pasteboardCache setObject:v12 forKey:type];
    }

    v11 = v13;
  }

  return v11;
}

- (CGPoint)position
{
  x = self->_position.x;
  y = self->_position.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)presentationViewSize
{
  width = self->_presentationViewSize.width;
  height = self->_presentationViewSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end