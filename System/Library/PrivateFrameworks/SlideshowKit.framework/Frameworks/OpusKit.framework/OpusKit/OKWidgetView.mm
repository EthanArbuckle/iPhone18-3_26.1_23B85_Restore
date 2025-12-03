@interface OKWidgetView
- (BOOL)_canRespondToEventWithPoint:(CGPoint)point;
- (BOOL)downloadIndicatorEnabled;
- (BOOL)isActivityIndicatorVisible;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (void)commonInit;
- (void)dealloc;
- (void)setActivityIndicatorVisible:(BOOL)visible;
- (void)updateProgressIndicator:(double)indicator;
@end

@implementation OKWidgetView

- (void)commonInit
{
  v15.receiver = self;
  v15.super_class = OKWidgetView;
  [(OKWidgetViewProxy *)&v15 commonInit];
  if ([(OKWidgetView *)self downloadIndicatorEnabled])
  {
    v3 = [OKRoundProgressView alloc];
    [(OKWidgetView *)self frame];
    v5 = v4;
    if ([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] == 1)
    {
      v6 = 26.0;
    }

    else
    {
      v6 = 17.0;
    }

    v7 = v5 - v6;
    [(OKWidgetView *)self frame];
    v9 = v8;
    if ([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] == 1)
    {
      v10 = 26.0;
    }

    else
    {
      v10 = 17.0;
    }

    v11 = v9 - v10;
    if ([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] == 1)
    {
      v12 = 26.0;
    }

    else
    {
      v12 = 17.0;
    }

    if ([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] == 1)
    {
      v13 = 26.0;
    }

    else
    {
      v13 = 17.0;
    }

    v14 = [(OKRoundProgressView *)v3 initWithFrame:0 style:v7, v11, v12, v13];
    self->_roundProgressView = v14;
    [(OKRoundProgressView *)v14 setAlpha:0.0];
  }
}

- (void)dealloc
{
  roundProgressView = self->_roundProgressView;
  if (roundProgressView)
  {

    self->_roundProgressView = 0;
  }

  v4.receiver = self;
  v4.super_class = OKWidgetView;
  [(OKWidgetViewProxy *)&v4 dealloc];
}

- (BOOL)_canRespondToEventWithPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  p_eventsInset = &self->super._eventsInset;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->super._eventsInset.top, *MEMORY[0x277D768C8]), vceqq_f64(*&self->super._eventsInset.bottom, *(MEMORY[0x277D768C8] + 16))))) & 1) != 0 || ([(OFUIView *)[(OKWidgetViewProxy *)self contentView] frame], left = p_eventsInset->left, v21.origin.x = v8 + left, v21.origin.y = p_eventsInset->top + v9, v21.size.width = v10 - (left + p_eventsInset->right), v21.size.height = v11 - (p_eventsInset->top + p_eventsInset->bottom), v20.x = x, v20.y = y, v12 = CGRectContainsPoint(v21, v20)))
  {
    if (self->super._ignoreEventsOnTransparentPixels && [objc_msgSend(-[OKWidgetView superview](self "superview")])
    {
      v19.width = 1.0;
      v19.height = 1.0;
      UIGraphicsBeginImageContextWithOptions(v19, 0, 1.0);
      [(OKWidgetView *)self frame];
      Width = CGRectGetWidth(v22);
      [(OKWidgetView *)self frame];
      [(OKWidgetView *)self drawViewHierarchyInRect:0 afterScreenUpdates:-x, -y, Width, CGRectGetHeight(v23)];
      ImageFromCurrentImageContext = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
      DataProvider = CGImageGetDataProvider([(UIImage *)ImageFromCurrentImageContext CGImage]);
      v16 = CGDataProviderCopyData(DataProvider);
      BytePtr = CFDataGetBytePtr(v16);
      CFRelease(v16);
      LOBYTE(v12) = BytePtr[3] == 255;
    }

    else
    {
      LOBYTE(v12) = 1;
    }
  }

  return v12;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  v21 = *MEMORY[0x277D85DE8];
  LODWORD(v8) = [(OKWidgetView *)self _canRespondToEventWithPoint:?];
  if (v8)
  {
    v19.receiver = self;
    v19.super_class = OKWidgetView;
    if (![(OKWidgetView *)&v19 pointInside:event withEvent:x, y])
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      subWidgetViews = self->super._subWidgetViews;
      v8 = [(NSMutableArray *)subWidgetViews countByEnumeratingWithState:&v15 objects:v20 count:16];
      if (!v8)
      {
        return v8;
      }

      v10 = v8;
      v11 = *v16;
LABEL_7:
      v12 = 0;
      while (1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(subWidgetViews);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        [(OKWidgetView *)self convertPoint:v13 toView:x, y];
        if ([v13 pointInside:event withEvent:?])
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [(NSMutableArray *)subWidgetViews countByEnumeratingWithState:&v15 objects:v20 count:16];
          LOBYTE(v8) = 0;
          if (v10)
          {
            goto LABEL_7;
          }

          return v8;
        }
      }
    }

    LOBYTE(v8) = 1;
  }

  return v8;
}

- (BOOL)downloadIndicatorEnabled
{
  presentationViewController = [(OKWidgetViewProxy *)self presentationViewController];

  return [(OKPresentationViewControllerProxy *)presentationViewController downloadIndicatorEnabled];
}

- (BOOL)isActivityIndicatorVisible
{
  downloadIndicatorEnabled = [(OKWidgetView *)self downloadIndicatorEnabled];
  if (downloadIndicatorEnabled)
  {
    LOBYTE(downloadIndicatorEnabled) = [(OKRoundProgressView *)self->_roundProgressView superview]!= 0;
  }

  return downloadIndicatorEnabled;
}

- (void)setActivityIndicatorVisible:(BOOL)visible
{
  visibleCopy = visible;
  if ([(OKWidgetView *)self downloadIndicatorEnabled])
  {
    isActivityIndicatorVisible = [(OKWidgetView *)self isActivityIndicatorVisible];
    if (visibleCopy)
    {
      if (!isActivityIndicatorVisible)
      {
        [(OKRoundProgressView *)self->_roundProgressView setAlpha:0.0];
        roundProgressView = self->_roundProgressView;
        [(OKWidgetView *)self bounds];
        v8 = v7;
        if ([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] == 1)
        {
          v9 = 32.0;
        }

        else
        {
          v9 = 23.0;
        }

        v10 = v8 - v9;
        [(OKWidgetView *)self bounds];
        v12 = v11;
        if ([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] == 1)
        {
          v13 = 32.0;
        }

        else
        {
          v13 = 23.0;
        }

        v14 = v12 - v13;
        if ([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] == 1)
        {
          v15 = 26.0;
        }

        else
        {
          v15 = 17.0;
        }

        if ([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] == 1)
        {
          v16 = 26.0;
        }

        else
        {
          v16 = 17.0;
        }

        [(OKRoundProgressView *)roundProgressView setFrame:v10, v14, v15, v16];
        [(OKRoundProgressView *)self->_roundProgressView setAutoresizingMask:45];
        [(OKWidgetView *)self addSubview:self->_roundProgressView];
        [(OKRoundProgressView *)self->_roundProgressView resetProgress];
        [(OKRoundProgressView *)self->_roundProgressView startProgressTimer];
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __44__OKWidgetView_setActivityIndicatorVisible___block_invoke;
        v19[3] = &unk_279C8E818;
        v19[4] = self;
        [MEMORY[0x277D75D18] animateWithDuration:v19 animations:0.25];
      }
    }

    else if (isActivityIndicatorVisible)
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __44__OKWidgetView_setActivityIndicatorVisible___block_invoke_2;
      v18[3] = &unk_279C8E818;
      v18[4] = self;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __44__OKWidgetView_setActivityIndicatorVisible___block_invoke_3;
      v17[3] = &unk_279C8FA38;
      v17[4] = self;
      [MEMORY[0x277D75D18] animateWithDuration:v18 animations:v17 completion:0.25];
    }
  }
}

uint64_t __44__OKWidgetView_setActivityIndicatorVisible___block_invoke_3(uint64_t a1)
{
  [*(*(a1 + 32) + 1480) stopProgressTimer];
  [*(*(a1 + 32) + 1480) resetProgress];
  v2 = *(*(a1 + 32) + 1480);

  return [v2 removeFromSuperview];
}

- (void)updateProgressIndicator:(double)indicator
{
  if ([(OKWidgetView *)self downloadIndicatorEnabled])
  {
    roundProgressView = self->_roundProgressView;

    [(OKRoundProgressView *)roundProgressView setProgress:indicator];
  }
}

@end