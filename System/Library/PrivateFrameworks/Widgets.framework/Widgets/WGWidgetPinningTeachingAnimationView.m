@interface WGWidgetPinningTeachingAnimationView
- (WGWidgetPinningTeachingAnimationView)init;
- (double)_durationForState:(unint64_t)a3;
- (unint64_t)_stateFollowingState:(unint64_t)a3;
- (void)_setState:(unint64_t)a3;
- (void)_setTimerToNextState:(id)a3;
- (void)_updateMaterials;
@end

@implementation WGWidgetPinningTeachingAnimationView

- (WGWidgetPinningTeachingAnimationView)init
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11.receiver = self;
  v11.super_class = WGWidgetPinningTeachingAnimationView;
  v4 = [(BSUICAPackageView *)&v11 initWithPackageName:@"widgets-pinning-teaching" inBundle:v3];

  if (v4)
  {
    v5 = [(BSUICAPackageView *)v4 publishedObjectWithName:@"materials"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v4->_materialsLayer, v5);
    }

    v6 = [(BSUICAPackageView *)v4 publishedObjectWithName:@"pages"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v4->_pagesLayer, v6);
    }

    v7 = [(BSUICAPackageView *)v4 publishedObjectWithName:@"page 1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v4->_page1Layer, v7);
    }

    if ([(WGWidgetPinningTeachingAnimationView *)v4 _shouldReverseLayoutDirection])
    {
      memset(&v10, 0, sizeof(v10));
      CGAffineTransformMakeScale(&v10, -1.0, 1.0);
      v9 = v10;
      [(WGWidgetPinningTeachingAnimationView *)v4 setTransform:&v9];
    }
  }

  return v4;
}

- (void)_setState:(unint64_t)a3
{
  v27 = *MEMORY[0x277D85DE8];
  if (self->_state != a3)
  {
    v5 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
    {
      state = self->_state;
      v7 = v5;
      v8 = NSStringFromWGWidgetPinningTeachingAnimationViewState(state);
      *buf = 138412290;
      v26 = v8;
      _os_log_impl(&dword_27425E000, v7, OS_LOG_TYPE_DEFAULT, "WGWidgetPinningTeachingAnimationView setState: %@", buf, 0xCu);
    }

    v9 = self->_state;
    self->_state = a3;
    if (a3 <= 2)
    {
      if (a3 < 2)
      {
        v10 = 0;
        v11 = @"page 1";
        v12 = @"unsquished";
        goto LABEL_15;
      }

      if (a3 == 2)
      {
        v13 = v9 != 0;
        v12 = @"squished";
LABEL_22:
        [(BSUICAPackageView *)self setState:v12 onLayer:self->_page1Layer animated:v13 transitionSpeed:0 completion:1.0];
      }

LABEL_23:
      [(WGWidgetPinningTeachingAnimationView *)self _durationForState:self->_state];
      v16 = v15;
      v17 = [(WGWidgetPinningTeachingAnimationView *)self _stateFollowingState:self->_state];
      objc_initWeak(buf, self);
      v18 = MEMORY[0x277CBEBB8];
      v20 = MEMORY[0x277D85DD0];
      v21 = 3221225472;
      v22 = __50__WGWidgetPinningTeachingAnimationView__setState___block_invoke;
      v23 = &unk_279ED0858;
      objc_copyWeak(v24, buf);
      v24[1] = v17;
      v19 = [v18 scheduledTimerWithTimeInterval:0 repeats:&v20 block:v16];
      [(WGWidgetPinningTeachingAnimationView *)self _setTimerToNextState:v19, v20, v21, v22, v23];

      objc_destroyWeak(v24);
      objc_destroyWeak(buf);
      return;
    }

    if (a3 != 5)
    {
      if (a3 == 4)
      {
        v12 = 0;
        v11 = @"page 1";
        goto LABEL_14;
      }

      if (a3 != 3)
      {
        goto LABEL_23;
      }
    }

    v12 = 0;
    v11 = @"page 2";
LABEL_14:
    v10 = 1;
LABEL_15:
    v13 = a3 != 1 && v9 != 0;
    [(BSUICAPackageView *)self setState:v11 onLayer:self->_pagesLayer animated:v13 transitionSpeed:0 completion:1.0];
    if (v10)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }
}

void __50__WGWidgetPinningTeachingAnimationView__setState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setState:*(a1 + 40)];
}

- (void)_setTimerToNextState:(id)a3
{
  v5 = a3;
  timerToNextState = self->_timerToNextState;
  if (timerToNextState != v5)
  {
    if (timerToNextState)
    {
      [(NSTimer *)timerToNextState invalidate];
    }

    objc_storeStrong(&self->_timerToNextState, a3);
  }

  MEMORY[0x2821F96F8]();
}

- (void)_updateMaterials
{
  v3 = [(WGWidgetPinningTeachingAnimationView *)self traitCollection];
  v4 = [v3 userInterfaceStyle];

  if (v4 == 2)
  {
    v5 = @"dark";
  }

  else
  {
    v5 = @"light";
  }

  materialsLayer = self->_materialsLayer;

  [(BSUICAPackageView *)self setState:v5 onLayer:materialsLayer animated:1 transitionSpeed:0 completion:1.0];
}

- (double)_durationForState:(unint64_t)a3
{
  result = 0.0;
  if (a3 - 1 <= 4)
  {
    return dbl_2742AE818[a3 - 1];
  }

  return result;
}

- (unint64_t)_stateFollowingState:(unint64_t)a3
{
  if ((self->_state + 1) % 6 <= 1)
  {
    return 1;
  }

  else
  {
    return (self->_state + 1) % 6;
  }
}

@end