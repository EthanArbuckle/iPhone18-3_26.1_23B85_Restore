@interface SKUIViewControllerContainerCollectionView
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (void)_beginDynamicHysteresisIncreaseWithCompetingScrollView:(id)view;
- (void)_endDynamicHysteresisIncrease;
- (void)_updateStateForDynamicHysteresisIncrease;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation SKUIViewControllerContainerCollectionView

- (void)dealloc
{
  [(SKUIViewControllerContainerCollectionView *)self _endDynamicHysteresisIncrease];
  v3.receiver = self;
  v3.super_class = SKUIViewControllerContainerCollectionView;
  [(SKUIViewControllerContainerCollectionView *)&v3 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v13 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v13)
      {
        [(SKUIViewControllerContainerCollectionView *)v13 observeValueForKeyPath:v14 ofObject:v15 change:v16 context:v17, v18, v19, v20];
      }
    }
  }

  if (_SKUIViewControllerContainerCollectionViewPanGestureRecognizerStateObservationContext == context)
  {
    panGestureRecognizer = [(SKUIViewControllerContainerCollectionView *)self panGestureRecognizer];
    if (([panGestureRecognizer state] - 3) <= 2)
    {
      [(SKUIViewControllerContainerCollectionView *)self _endDynamicHysteresisIncrease];
    }
  }

  else
  {
    v22.receiver = self;
    v22.super_class = SKUIViewControllerContainerCollectionView;
    [(SKUIViewControllerContainerCollectionView *)&v22 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v9)
      {
        [(SKUIViewControllerContainerCollectionView *)v9 gestureRecognizer:v10 shouldBeRequiredToFailByGestureRecognizer:v11, v12, v13, v14, v15, v16];
      }
    }
  }

  panGestureRecognizer = [(SKUIViewControllerContainerCollectionView *)self panGestureRecognizer];

  if (panGestureRecognizer == recognizerCopy)
  {
    delegate = [gestureRecognizerCopy delegate];
    if (delegate != self)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = delegate;
        panGestureRecognizer2 = [(SKUIViewControllerContainerCollectionView *)v19 panGestureRecognizer];

        if (panGestureRecognizer2 == gestureRecognizerCopy && _SKUIScrollViewIsCompetingWithScrollView(self, v19) && (_SKUIScrollViewWantsToBeginTrackingImmediately(v19) & 1) != 0)
        {
          [(SKUIViewControllerContainerCollectionView *)self _beginDynamicHysteresisIncreaseWithCompetingScrollView:v19];

          v21 = 1;
          goto LABEL_17;
        }
      }
    }
  }

  if ([+[SKUIViewControllerContainerCollectionView superclass](SKUIViewControllerContainerCollectionView "superclass")])
  {
    v23.receiver = self;
    v23.super_class = SKUIViewControllerContainerCollectionView;
    v21 = [(SKUIViewControllerContainerCollectionView *)&v23 gestureRecognizer:recognizerCopy shouldBeRequiredToFailByGestureRecognizer:gestureRecognizerCopy];
  }

  else
  {
    v21 = 0;
  }

LABEL_17:

  return v21;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v9)
      {
        [(SKUIViewControllerContainerCollectionView *)v9 gestureRecognizer:v10 shouldRequireFailureOfGestureRecognizer:v11, v12, v13, v14, v15, v16];
      }
    }
  }

  panGestureRecognizer = [(SKUIViewControllerContainerCollectionView *)self panGestureRecognizer];

  if (panGestureRecognizer != recognizerCopy)
  {
    goto LABEL_14;
  }

  delegate = [gestureRecognizerCopy delegate];
  if (delegate == self)
  {
    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_13;
  }

  v19 = delegate;
  panGestureRecognizer2 = [(SKUIViewControllerContainerCollectionView *)v19 panGestureRecognizer];

  if (panGestureRecognizer2 != gestureRecognizerCopy || !_SKUIScrollViewIsCompetingWithScrollView(self, v19))
  {

LABEL_13:
    goto LABEL_14;
  }

  v21 = _SKUIScrollViewWantsToBeginTrackingImmediately(self);

  if (v21)
  {
    v22 = 1;
    goto LABEL_17;
  }

LABEL_14:
  if ([+[SKUIViewControllerContainerCollectionView superclass](SKUIViewControllerContainerCollectionView "superclass")])
  {
    v24.receiver = self;
    v24.super_class = SKUIViewControllerContainerCollectionView;
    v22 = [(SKUIViewControllerContainerCollectionView *)&v24 gestureRecognizer:recognizerCopy shouldRequireFailureOfGestureRecognizer:gestureRecognizerCopy];
  }

  else
  {
    v22 = 0;
  }

LABEL_17:

  return v22;
}

- (void)_beginDynamicHysteresisIncreaseWithCompetingScrollView:(id)view
{
  viewCopy = view;
  v5 = viewCopy;
  if (!self->_forcingIncreasedPanGestureRecognizerHysteresis)
  {
    panGestureRecognizer = [viewCopy panGestureRecognizer];
    [panGestureRecognizer _hysteresis];
    self->_competingScrollViewPanGestureRecognizerHysteresis = v7;

    panGestureRecognizer2 = [(SKUIViewControllerContainerCollectionView *)self panGestureRecognizer];
    [panGestureRecognizer2 _hysteresis];
    self->_originalPanGestureRecognizerHysteresis = v9;
    [panGestureRecognizer2 _setHysteresis:88.0];
    [panGestureRecognizer2 addObserver:self forKeyPath:@"state" options:0 context:_SKUIViewControllerContainerCollectionViewPanGestureRecognizerStateObservationContext];
    self->_forcingIncreasedPanGestureRecognizerHysteresis = 1;
    objc_initWeak(&location, self);
    v10 = *MEMORY[0x277CBECE8];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __100__SKUIViewControllerContainerCollectionView__beginDynamicHysteresisIncreaseWithCompetingScrollView___block_invoke;
    v12[3] = &unk_2782010F0;
    objc_copyWeak(&v13, &location);
    self->_runLoopObserver = CFRunLoopObserverCreateWithHandler(v10, 0x20uLL, 1u, 0, v12);
    Main = CFRunLoopGetMain();
    CFRunLoopAddObserver(Main, self->_runLoopObserver, *MEMORY[0x277CBF048]);
    CFRunLoopAddObserver(Main, self->_runLoopObserver, *MEMORY[0x277D77228]);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __100__SKUIViewControllerContainerCollectionView__beginDynamicHysteresisIncreaseWithCompetingScrollView___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateStateForDynamicHysteresisIncrease];
}

- (void)_endDynamicHysteresisIncrease
{
  if (self->_forcingIncreasedPanGestureRecognizerHysteresis)
  {
    self->_competingScrollViewPanGestureRecognizerHysteresis = 0.0;
    panGestureRecognizer = [(SKUIViewControllerContainerCollectionView *)self panGestureRecognizer];
    [panGestureRecognizer _setHysteresis:self->_originalPanGestureRecognizerHysteresis];
    [panGestureRecognizer removeObserver:self forKeyPath:@"state" context:&_SKUIViewControllerContainerCollectionViewPanGestureRecognizerStateObservationContext];
    self->_originalPanGestureRecognizerHysteresis = 0.0;
    self->_forcingIncreasedPanGestureRecognizerHysteresis = 0;
    if (self->_runLoopObserver)
    {
      Main = CFRunLoopGetMain();
      CFRunLoopRemoveObserver(Main, self->_runLoopObserver, *MEMORY[0x277CBF048]);
      CFRunLoopRemoveObserver(Main, self->_runLoopObserver, *MEMORY[0x277D77228]);
      CFRelease(self->_runLoopObserver);
      self->_runLoopObserver = 0;
    }
  }
}

- (void)_updateStateForDynamicHysteresisIncrease
{
  panGestureRecognizer = [(SKUIViewControllerContainerCollectionView *)self panGestureRecognizer];
  if (![panGestureRecognizer state])
  {
    [panGestureRecognizer translationInView:self];
    v4 = fabs(v3);
    v6 = fabs(v5);
    if (v6 > v4 && v6 > self->_competingScrollViewPanGestureRecognizerHysteresis)
    {
      [panGestureRecognizer setState:5];
    }
  }
}

@end