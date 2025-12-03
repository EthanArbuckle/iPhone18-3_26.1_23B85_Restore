@interface BKBootUIOverlayVendor
+ (id)sharedInstance;
- (BKBootUIOverlayVendor)initWithFirstBootDetector:(id)detector;
- (id)currentOverlayWithLevel:(float)level;
@end

@implementation BKBootUIOverlayVendor

- (id)currentOverlayWithLevel:(float)level
{
  isFirstBoot = [(BKFirstBootDetector *)self->_firstBootDetector isFirstBoot];
  v5 = sub_1000524BC();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (isFirstBoot)
  {
    if (v6)
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Current bootUI is an Apple Logo", &v15, 2u);
    }

    v8 = +[CADisplay mainDisplay];
    *&v9 = level;
    v10 = [BKDisplayRenderOverlayAppleLogo overlayWithLevel:v8 display:v9];
  }

  else
  {
    if (v6)
    {
      *&v7 = level;
      v11 = [NSNumber numberWithFloat:v7];
      v15 = 138412290;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Current bootUI is the spinny, level %@", &v15, 0xCu);
    }

    v12 = +[CADisplay mainDisplay];
    *&v13 = level;
    v10 = [BKDisplayRenderOverlaySpinny overlayWithLevel:v12 display:v13];

    [v10 setBackground:1];
  }

  return v10;
}

- (BKBootUIOverlayVendor)initWithFirstBootDetector:(id)detector
{
  detectorCopy = detector;
  v9.receiver = self;
  v9.super_class = BKBootUIOverlayVendor;
  v6 = [(BKBootUIOverlayVendor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_firstBootDetector, detector);
  }

  return v7;
}

+ (id)sharedInstance
{
  if (qword_100126128 != -1)
  {
    dispatch_once(&qword_100126128, &stru_1000FD098);
  }

  v3 = qword_100126120;

  return v3;
}

@end