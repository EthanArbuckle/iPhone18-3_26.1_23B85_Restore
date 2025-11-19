@interface VKNavigationPuck
- ($F24F406B2B787EFB06265DBA3D28CBD5)presentationCoordinate;
- (VKEdgeInsets)annotationTrackingEdgeInsets;
- (VKNavigationPuck)initWithAnimationRunner:(AnimationRunner *)a3;
- (void)dealloc;
- (void)runAnimation:(id)a3;
- (void)setAnimatingToCoordinate:(BOOL)a3;
- (void)setAnnotation:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setPresentationCoordinate:(id)a3;
- (void)setStale:(BOOL)a3;
- (void)setTracking:(BOOL)a3;
@end

@implementation VKNavigationPuck

- ($F24F406B2B787EFB06265DBA3D28CBD5)presentationCoordinate
{
  if (self->_tracking || self->_animatingToCoordinate)
  {
    v2 = vmulq_f64(*(self->_navigationPuck + 8), vdupq_n_s64(0x404CA5DC1A63C1F8uLL));
    v3 = v2.f64[1];
  }

  else
  {
    [(VKAnnotation *)self->_annotation coordinate];
  }

  result.var0 = v2.f64[0];
  result.var1 = v3;
  return result;
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v9 = *MEMORY[0x1E69E9840];
  navigationPuck = self->_navigationPuck;
  if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
  }

  v5 = GEOGetVectorKitVKDefaultLog_log;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = "false";
    if (v3)
    {
      v6 = "true";
    }

    v7 = 136315138;
    v8 = v6;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "NavigationPuck set enabled: %s", &v7, 0xCu);
  }

  navigationPuck[48] = v3;
}

- (void)setAnimatingToCoordinate:(BOOL)a3
{
  if (self->_animatingToCoordinate != a3)
  {
    v3 = a3;
    [(VKNavigationPuck *)self presentationCoordinate];
    self->_animatingToCoordinate = v3;
    if (v3)
    {
      navigationPuck = self->_navigationPuck;
      v5.f64[1] = v6;
      *(navigationPuck + 8) = vmulq_f64(v5, vdupq_n_s64(0x3F91DF46A2529D39uLL));
      *(navigationPuck + 3) = 0;
    }
  }
}

- (void)setTracking:(BOOL)a3
{
  if (self->_tracking != a3)
  {
    v3 = a3;
    [(VKNavigationPuck *)self presentationCoordinate];
    self->_tracking = v3;
    if (v3)
    {
      navigationPuck = self->_navigationPuck;
      v5.f64[1] = v6;
      *(navigationPuck + 8) = vmulq_f64(v5, vdupq_n_s64(0x3F91DF46A2529D39uLL));
      *(navigationPuck + 3) = 0;
    }
  }
}

- (void)setPresentationCoordinate:(id)a3
{
  navigationPuck = self->_navigationPuck;
  var1 = a3.var1;
  *(navigationPuck + 8) = vmulq_f64(a3, vdupq_n_s64(0x3F91DF46A2529D39uLL));
  *(navigationPuck + 3) = 0;
}

- (void)setAnnotation:(id)a3
{
  v5 = a3;
  if (self->_annotation != v5)
  {
    v11 = v5;
    objc_storeStrong(&self->_annotation, a3);
    navigationPuck = self->_navigationPuck;
    [(VKAnnotation *)self->_annotation coordinate];
    v10 = v7;
    [(VKAnnotation *)self->_annotation coordinate];
    v8.f64[0] = v10;
    v8.f64[1] = v9;
    *(navigationPuck + 8) = vmulq_f64(v8, vdupq_n_s64(0x3F91DF46A2529D39uLL));
    *(navigationPuck + 3) = 0;
    v5 = v11;
  }
}

- (void)setStale:(BOOL)a3
{
  if (self->_stale != a3)
  {
    v10 = v4;
    v11 = v3;
    if (a3)
    {
      v9 = 4004;
    }

    else
    {
      v9 = 4005;
    }

    [MEMORY[0x1E69A1598] captureUserAction:v9 target:505 value:{0, v10, v11, v5, v6}];
    self->_stale = a3;
  }
}

- (void)runAnimation:(id)a3
{
  v5 = a3;
  animationRunner = self->_animationRunner;
  if (animationRunner)
  {
    md::AnimationRunner::runAnimation(animationRunner, v5);
  }
}

- (VKEdgeInsets)annotationTrackingEdgeInsets
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)dealloc
{
  navigationPuck = self->_navigationPuck;
  if (navigationPuck)
  {
    MEMORY[0x1B8C62190](navigationPuck, 0x1020C40E65606A5);
  }

  v4.receiver = self;
  v4.super_class = VKNavigationPuck;
  [(VKNavigationPuck *)&v4 dealloc];
}

- (VKNavigationPuck)initWithAnimationRunner:(AnimationRunner *)a3
{
  v6.receiver = self;
  v6.super_class = VKNavigationPuck;
  v4 = [(VKNavigationPuck *)&v6 init];
  if (v4)
  {
    v4->_animationRunner = a3;
    v4->_stale = 1;
    operator new();
  }

  return 0;
}

@end