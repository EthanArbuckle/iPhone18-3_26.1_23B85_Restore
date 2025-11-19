@interface BKMousePointerAnnotationController
- (void)_updateEventsPerSecond;
- (void)dealloc;
- (void)invalidate;
- (void)observeMouseAbsolutePointDidChange:(CGPoint)a3;
- (void)observeMouseAvailabilityDidChange:(BOOL)a3;
- (void)observeMouseButtonMaskDidChange:(unsigned int)a3;
- (void)observeMouseModelPointDidChange:(CGPoint)a3 display:(id)a4 reason:(id)a5;
- (void)observeMouseRelativePointDidChange:(CGPoint)a3;
- (void)observeMouseScrollPhaseDidChange:(unsigned __int16)a3;
- (void)observeMouseTouchCountDidChange:(int64_t)a3;
@end

@implementation BKMousePointerAnnotationController

- (void)observeMouseAvailabilityDidChange:(BOOL)a3
{
  if (!a3)
  {
    [(BKDisplayAnnotationController *)self->_currentAnnotationController removeAnnotationsForKeyPath:@"mouse"];
  }
}

- (void)observeMouseTouchCountDidChange:(int64_t)a3
{
  v4 = self->_currentAnnotationController;
  if (v4)
  {
    v7 = v4;
    if (a3 < 1)
    {
      [(BKDisplayAnnotationController *)v4 removeAnnotationsForKeyPath:@"mouse.touchState"];
    }

    else
    {
      v5 = [NSString stringWithFormat:@"touches:%d", a3];
      v6 = [BKDisplayAnnotation subannotationWithString:v5];
      [(BKDisplayAnnotationController *)v7 setAnnotation:v6 forKeyPath:@"mouse.touchState"];
    }

    v4 = v7;
  }
}

- (void)observeMouseButtonMaskDidChange:(unsigned int)a3
{
  v4 = self->_currentAnnotationController;
  v6 = v4;
  if (v4)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v7 = @"primary button down";
      }

      else if (a3 == 2)
      {
        v7 = @"secondary button down";
      }

      else
      {
        v8 = a3;
        v5.i32[0] = a3;
        v9 = vcnt_s8(v5);
        v9.i16[0] = vaddlv_u8(v9);
        v10 = v9.i32[0];
        if (v9.i32[0] == 1)
        {
          v11 = @"button {";
        }

        else
        {
          v11 = @"buttons {";
        }

        [NSMutableString stringWithString:v11];
        v20[0] = 0;
        v20[1] = v20;
        v20[2] = 0x2020000000;
        v21 = 0;
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v16 = sub_1000534F4;
        v17 = &unk_1000FB818;
        v7 = v19 = v20;
        v18 = v7;
        v12 = v15;
        v13 = 0;
        v22 = 0;
        do
        {
          if (((1 << v13) & v8) != 0)
          {
            v16(v12);
            if (v22)
            {
              break;
            }

            --v10;
          }

          if (v13 > 0x3E)
          {
            break;
          }

          ++v13;
        }

        while (v10 > 0);

        [(__CFString *)v7 appendString:@"} down"];
        _Block_object_dispose(v20, 8);
      }

      v14 = [BKDisplayAnnotation subannotationWithString:v7];
      [(BKDisplayAnnotationController *)v6 setAnnotation:v14 forKeyPath:@"mouse.buttons"];
    }

    else
    {
      [(BKDisplayAnnotationController *)v4 removeAnnotationsForKeyPath:@"mouse.buttons"];
    }
  }
}

- (void)observeMouseScrollPhaseDidChange:(unsigned __int16)a3
{
  v3 = a3;
  v4 = self->_currentAnnotationController;
  if (v4)
  {
    v8 = v4;
    if (v3)
    {
      v5 = BKNSStringFromIOHIDEventPhase();
      v6 = [NSString stringWithFormat:@"phased scroll (%@)", v5];

      v7 = [BKDisplayAnnotation subannotationWithString:v6];
      [(BKDisplayAnnotationController *)v8 setAnnotation:v7 forKeyPath:@"mouse.scrollstatus"];
    }

    else
    {
      [(BKDisplayAnnotationController *)v4 removeAnnotationsForKeyPath:@"mouse.scrollstatus"];
    }

    v4 = v8;
  }
}

- (void)observeMouseModelPointDidChange:(CGPoint)a3 display:(id)a4 reason:(id)a5
{
  y = a3.y;
  x = a3.x;
  v22 = a4;
  v10 = a5;
  v11 = self->_currentAnnotationController;
  if (self->_currentDisplay != v22)
  {
    objc_storeStrong(&self->_currentDisplay, a4);
    [(BKDisplayAnnotationController *)self->_currentAnnotationController removeAnnotationsForKeyPath:@"mouse"];
    v12 = [BKDisplayAnnotationController annotationControllerForDisplay:v22];
    currentAnnotationController = self->_currentAnnotationController;
    self->_currentAnnotationController = v12;
  }

  v14 = objc_alloc_init(BKDisplayAnnotationLocation);
  [(BKDisplayAnnotationLocation *)v14 setSuperBias:0.0, 0.0];
  [(BKDisplayAnnotationLocation *)v14 setPoint:x, y];
  v15 = [(BKDisplayAnnotationController *)v11 annotationForKeyPath:@"mouse"];
  v16 = v15;
  if (v15)
  {
    [v15 setLocation:v14];
  }

  else
  {
    v17 = [BKDisplayAnnotation annotationWithRectangleSize:48.0, 48.0];
    v18 = objc_alloc_init(BKDisplayAnnotationContainedSubnodeRenderer);
    [v17 setLocation:v14];
    v19 = +[BKDisplayAnnotationStyle pointerStyle];
    [v17 setStyleModifier:v19];

    [v17 setRenderer:v18];
    [v17 setSubnodeScreenEdgeTreatment:2];
    [(BKDisplayAnnotationController *)v11 setAnnotation:v17 forKeyPath:@"mouse"];
  }

  v20 = [NSString stringWithFormat:@"%g, %g -- %@", *&x, *&y, v10];
  v21 = [BKDisplayAnnotation subannotationWithString:v20];
  [(BKDisplayAnnotationController *)v11 setAnnotation:v21 forKeyPath:@"mouse.location"];
}

- (void)observeMouseAbsolutePointDidChange:(CGPoint)a3
{
  currentAnnotationController = self->_currentAnnotationController;
  if (currentAnnotationController)
  {
    y = a3.y;
    x = a3.x;
    v6 = currentAnnotationController;
    v8 = [NSString stringWithFormat:@"abs: %.4g, %.4g", *&x, *&y];
    v7 = [BKDisplayAnnotation subannotationWithString:v8];
    [(BKDisplayAnnotationController *)v6 setAnnotation:v7 forKeyPath:@"mouse.relpoint"];
  }
}

- (void)observeMouseRelativePointDidChange:(CGPoint)a3
{
  currentAnnotationController = self->_currentAnnotationController;
  if (currentAnnotationController)
  {
    y = a3.y;
    x = a3.x;
    v6 = currentAnnotationController;
    v8 = [NSString stringWithFormat:@"rel: %.4g, %.4g", *&x, *&y];
    v7 = [BKDisplayAnnotation subannotationWithString:v8];
    [(BKDisplayAnnotationController *)v6 setAnnotation:v7 forKeyPath:@"mouse.relpoint"];
  }
}

- (void)_updateEventsPerSecond
{
  +[NSDate timeIntervalSinceReferenceDate];
  v4 = v3;
  if (v3 - self->_startTime > 1.0)
  {
    currentAnnotationController = self->_currentAnnotationController;
    if (currentAnnotationController)
    {
      inputEventsPerSecond = self->_inputEventsPerSecond;
      outputEventsPerSecond = self->_outputEventsPerSecond;
      v8 = currentAnnotationController;
      v9 = [NSString stringWithFormat:@"Hz in:%d / out:%d", inputEventsPerSecond, outputEventsPerSecond];
      v10 = [BKDisplayAnnotation subannotationWithString:v9];
      [(BKDisplayAnnotationController *)v8 setAnnotation:v10 forKeyPath:@"mouse.Hz"];
    }

    self->_startTime = v4;
    self->_inputEventsPerSecond = 0;
    self->_outputEventsPerSecond = 0;
  }
}

- (void)invalidate
{
  [(BKDisplayAnnotationController *)self->_currentAnnotationController removeAnnotationsForKeyPath:@"mouse"];
  currentAnnotationController = self->_currentAnnotationController;
  self->_currentAnnotationController = 0;

  currentDisplay = self->_currentDisplay;
  self->_currentDisplay = 0;
}

- (void)dealloc
{
  if (self->_currentAnnotationController)
  {
    v4 = [NSString stringWithFormat:@"must invalidate BKMousePointerAnnotationController before dealloc"];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v5 = NSStringFromSelector(a2);
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 138544642;
      v10 = v5;
      v11 = 2114;
      v12 = v7;
      v13 = 2048;
      v14 = self;
      v15 = 2114;
      v16 = @"BKMousePointerAnnotationController.m";
      v17 = 1024;
      v18 = 40;
      v19 = 2114;
      v20 = v4;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v4 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x100053E18);
  }

  v8.receiver = self;
  v8.super_class = BKMousePointerAnnotationController;
  [(BKMousePointerAnnotationController *)&v8 dealloc];
}

@end