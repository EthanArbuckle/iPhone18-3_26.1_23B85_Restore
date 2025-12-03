@interface PUIDPointerShapeMorphingView
- (PUIDPointerShapeMorphingView)initWithFrame:(CGRect)frame;
- (void)_resetToStableStateWithPath:(id)path;
- (void)dealloc;
- (void)setPath:(id)path animated:(BOOL)animated completion:(id)completion;
@end

@implementation PUIDPointerShapeMorphingView

- (PUIDPointerShapeMorphingView)initWithFrame:(CGRect)frame
{
  v40.receiver = self;
  v40.super_class = PUIDPointerShapeMorphingView;
  v3 = [(PUIDPointerShapeMorphingView *)&v40 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_lock._os_unfair_lock_opaque = 0;
    v5 = +[PUIDPointerDomain rootSettings];
    settings = v4->_settings;
    v4->_settings = v5;

    v7 = [UIView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v11 = [v7 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    filteredView = v4->_filteredView;
    v4->_filteredView = v11;

    v13 = [CAFilter filterWithType:kCAFilterAlphaThreshold];
    v14 = [CAFilter filterWithType:kCAFilterGaussianBlur];
    [v14 setValue:&off_10004C5E0 forKey:kCAFilterInputRadius];
    layer = [(UIView *)v4->_filteredView layer];
    v41[0] = v14;
    v41[1] = v13;
    v16 = [NSArray arrayWithObjects:v41 count:2];
    [layer setFilters:v16];

    layer2 = [(UIView *)v4->_filteredView layer];
    [layer2 setValue:&__kCFBooleanFalse forKeyPath:@"filters.alphaThreshold.enabled"];

    v18 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    containerView = v4->_containerView;
    v4->_containerView = v18;

    layer3 = [(UIView *)v4->_containerView layer];
    [layer3 setAllowsGroupBlending:0];

    [(UIView *)v4->_filteredView addSubview:v4->_containerView];
    height = [[PUIDShapeView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    shapeView = v4->_shapeView;
    v4->_shapeView = height;

    layer4 = [(PUIDShapeView *)v4->_shapeView layer];
    v24 = kCAFilterPlusL;
    [layer4 setCompositingFilter:kCAFilterPlusL];

    [(UIView *)v4->_containerView addSubview:v4->_shapeView];
    v25 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    animationContainerView = v4->_animationContainerView;
    v4->_animationContainerView = v25;

    layer5 = [(UIView *)v4->_animationContainerView layer];
    [layer5 setAllowsGroupBlending:0];

    [(UIView *)v4->_filteredView addSubview:v4->_animationContainerView];
    height2 = [[PUIDShapeView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    animationShapeView = v4->_animationShapeView;
    v4->_animationShapeView = height2;

    layer6 = [(PUIDShapeView *)v4->_animationShapeView layer];
    [layer6 setCompositingFilter:v24];

    [(UIView *)v4->_animationContainerView addSubview:v4->_animationShapeView];
    v31 = [[UIView alloc] initWithFrame:{0.0, 0.0, 1.0, 1.0}];
    animationCircleView = v4->_animationCircleView;
    v4->_animationCircleView = v31;

    [(UIView *)v4->_animationCircleView _setCornerRadius:0.5];
    v33 = v4->_animationCircleView;
    fillColor = [(PUIDShapeView *)v4->_animationShapeView fillColor];
    [(UIView *)v33 setBackgroundColor:fillColor];

    [(UIView *)v4->_animationCircleView setAlpha:0.0];
    layer7 = [(UIView *)v4->_animationCircleView layer];
    [layer7 setCompositingFilter:v24];

    [(UIView *)v4->_filteredView addSubview:v4->_animationCircleView];
    v36 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    animationSnapshotView = v4->_animationSnapshotView;
    v4->_animationSnapshotView = v36;

    layer8 = [(UIView *)v4->_animationSnapshotView layer];
    [layer8 setCompositingFilter:v24];

    [(UIView *)v4->_animationContainerView addSubview:v4->_animationSnapshotView];
    [(PUIDPointerShapeMorphingView *)v4 addSubview:v4->_filteredView];
  }

  return v4;
}

- (void)dealloc
{
  [(UIViewFloatAnimatableProperty *)self->_animatableProperty invalidate];
  v3.receiver = self;
  v3.super_class = PUIDPointerShapeMorphingView;
  [(PUIDPointerShapeMorphingView *)&v3 dealloc];
}

- (void)setPath:(id)path animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  pathCopy = path;
  completionCopy = completion;
  path = self->_path;
  *&v176.size.width = pathCopy;
  if (path != pathCopy && ([(UIBezierPath *)path isEqual:pathCopy]& 1) == 0)
  {
    v11 = [(UIBezierPath *)pathCopy copy];
    v12 = self->_path;
    self->_path = v11;

    os_unfair_lock_lock(&self->_lock);
    v169 = (self->_animationGenerationID + 1);
    self->_animationGenerationID = v169;
    os_unfair_lock_unlock(&self->_lock);
    if (animatedCopy)
    {
      v159 = completionCopy;
      [(UIBezierPath *)self->_path bounds];
      v165 = v14;
      v167 = v13;
      v162 = v16;
      v163 = v15;
      animatableProperty = self->_animatableProperty;
      *&v176.origin.y = animatableProperty;
      if (animatableProperty)
      {
        [(UIViewFloatAnimatableProperty *)animatableProperty presentationValue];
        v173 = v18;
        path = [(PUIDShapeView *)self->_shapeView path];
        [path bounds];
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;
        layer = [(PUIDShapeView *)self->_shapeView layer];
        presentationLayer = [layer presentationLayer];
        v30 = presentationLayer;
        if (presentationLayer)
        {
          [presentationLayer affineTransform];
        }

        else
        {
          memset(&v222, 0, 48);
        }

        v243.origin.x = v21;
        v243.origin.y = v23;
        v243.size.width = v25;
        v243.size.height = v27;
        v244 = CGRectApplyAffineTransform(v243, &v222);
        v176.origin.x = v244.origin.x;
        y = v244.origin.y;
        val = v244.size.width;
        r1 = v244.size.height;

        path2 = [(PUIDShapeView *)self->_animationShapeView path];
        [path2 bounds];
        v44 = v43;
        v46 = v45;
        v48 = v47;
        v50 = v49;
        layer2 = [(PUIDShapeView *)self->_animationShapeView layer];
        presentationLayer2 = [layer2 presentationLayer];
        v53 = presentationLayer2;
        if (presentationLayer2)
        {
          [presentationLayer2 affineTransform];
        }

        else
        {
          memset(&v222, 0, 48);
        }

        v245.origin.x = v44;
        v245.origin.y = v46;
        v245.size.width = v48;
        v245.size.height = v50;
        v246 = CGRectApplyAffineTransform(v245, &v222);
        x = v246.origin.x;
        v55 = v246.origin.y;
        width = v246.size.width;
        height = v246.size.height;

        layer3 = [(UIView *)self->_animationCircleView layer];
        presentationLayer3 = [layer3 presentationLayer];
        [presentationLayer3 frame];
        v61 = v60;
        v63 = v62;
        v65 = v64;
        v67 = v66;

        v247.origin.x = v176.origin.x;
        v247.origin.y = y;
        v247.size.width = val;
        v247.size.height = r1;
        v252.origin.x = x;
        v252.origin.y = v55;
        v252.size.width = width;
        v252.size.height = height;
        v248 = CGRectUnion(v247, v252);
        v253.origin.x = v61;
        v253.origin.y = v63;
        v253.size.width = v65;
        v253.size.height = v67;
        v249 = CGRectUnion(v248, v253);
        v34 = v249.origin.x;
        v36 = v249.origin.y;
        v38 = v249.size.width;
        v40 = v249.size.height;
        v68 = vcvtpd_u64_f64(v249.size.width);
        v241[0] = IOSurfacePropertyKeyWidth;
        v69 = [NSNumber numberWithUnsignedLong:v68];
        v70 = vcvtpd_u64_f64(v40);
        v242[0] = v69;
        v241[1] = IOSurfacePropertyKeyHeight;
        v71 = [NSNumber numberWithUnsignedLong:v70];
        v242[1] = v71;
        v241[2] = IOSurfacePropertyKeyBytesPerElement;
        v72 = [NSNumber numberWithUnsignedLong:4];
        v73 = (4 * v68 + 1020) & 0xFFFFFFFFFFFFFC00;
        v242[2] = v72;
        v241[3] = IOSurfacePropertyKeyBytesPerRow;
        v74 = [NSNumber numberWithUnsignedLong:v73];
        v242[3] = v74;
        v242[4] = &off_10004C5F8;
        v241[4] = IOSurfacePropertyKeyPixelFormat;
        v241[5] = IOSurfacePropertyKeyAllocSize;
        v75 = [NSNumber numberWithUnsignedLong:v73 * v70];
        v242[5] = v75;
        *&v176.origin.x = [NSDictionary dictionaryWithObjects:v242 forKeys:v241 count:6];

        v41 = [[IOSurface alloc] initWithProperties:*&v176.origin.x];
        if (v41)
        {
          v240[0] = kCASnapshotModeLayer;
          v239[0] = kCASnapshotMode;
          v239[1] = kCASnapshotDisplayName;
          v172 = +[CADisplay mainDisplay];
          name = [v172 name];
          v240[1] = name;
          v240[2] = v41;
          v239[2] = kCASnapshotDestination;
          v239[3] = kCASnapshotTransform;
          CATransform3DMakeTranslation(&v222, -v34, -v36, 0.0);
          v77 = [NSValue valueWithCATransform3D:&v222];
          v240[3] = v77;
          v239[4] = kCASnapshotContextId;
          layer4 = [(PUIDPointerShapeMorphingView *)self layer];
          context = [layer4 context];
          v80 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [context contextId]);
          v240[4] = v80;
          v239[5] = kCASnapshotLayerId;
          layer5 = [(UIView *)self->_filteredView layer];
          v82 = [NSNumber numberWithUnsignedLongLong:layer5];
          v240[5] = v82;
          v83 = [NSDictionary dictionaryWithObjects:v240 forKeys:v239 count:6];

          CARenderServerSnapshot();
        }

        [(UIViewFloatAnimatableProperty *)self->_animatableProperty invalidate];
        v84 = self->_animatableProperty;
        self->_animatableProperty = 0;
      }

      else
      {
        path3 = [(PUIDShapeView *)self->_shapeView path];
        [path3 bounds];
        v34 = v33;
        v36 = v35;
        v38 = v37;
        v40 = v39;

        v41 = 0;
        v173 = 0.0;
      }

      v85 = objc_alloc_init(UIViewFloatAnimatableProperty);
      v86 = self->_animatableProperty;
      vala = v85;
      self->_animatableProperty = v85;

      [(UIViewFloatAnimatableProperty *)self->_animatableProperty setValue:0.0];
      if (*&v176.origin.y)
      {
        v87 = self->_animatableProperty;
        [(PUIDPointerSettings *)self->_settings customMorphInitialVelocityProgressMultiplier];
        [(UIViewFloatAnimatableProperty *)v87 setVelocity:(1.0 - v173) * v88];
      }

      v214[0] = _NSConcreteStackBlock;
      v214[1] = 3221225472;
      v214[2] = sub_10001CF80;
      v214[3] = &unk_100049438;
      v221 = *&v176.origin.y != 0;
      v214[4] = self;
      v148 = v41;
      v215 = v148;
      v217 = v34;
      v218 = v36;
      v219 = v38;
      v220 = v40;
      v216 = *&v176.size.width;
      [UIView _performWithoutRetargetingAnimations:v214];
      if (v38 >= v163)
      {
        v89 = v163;
      }

      else
      {
        v89 = v38;
      }

      if (v38 >= v163)
      {
        v90 = v38;
      }

      else
      {
        v90 = v163;
      }

      if (v40 >= v162)
      {
        v91 = v162;
      }

      else
      {
        v91 = v40;
      }

      if (v40 >= v162)
      {
        v92 = v40;
      }

      else
      {
        v92 = v162;
      }

      v93 = v90 * 0.3 + v89 * 0.7;
      v94 = v92 * 0.3 + v91 * 0.7;
      v250.origin.x = v167 * 0.5 + v34 * 0.5;
      v250.origin.y = v165 * 0.5 + v36 * 0.5;
      v250.size.width = v163 * 0.5 + v38 * 0.5;
      v250.size.height = v162 * 0.5 + v40 * 0.5;
      v149 = v94;
      v150 = v93;
      v251 = CGRectInset(v250, (v250.size.width - v93) * 0.5, (v250.size.height - v94) * 0.5);
      v95 = v251.origin.x;
      v96 = v251.origin.y;
      v97 = v251.size.width;
      v98 = v251.size.height;
      *&v176.origin.y = [CAKeyframeAnimation animationWithKeyPath:@"transform"];
      v99 = *&CATransform3DIdentity.m33;
      *&v222.m31 = *&CATransform3DIdentity.m31;
      v174 = *&v222.m31;
      *&v222.m33 = v99;
      r1a = v99;
      v155 = *&CATransform3DIdentity.m43;
      *&v222.m41 = *&CATransform3DIdentity.m41;
      v156 = *&v222.m41;
      *&v222.m43 = v155;
      v153 = *&CATransform3DIdentity.m13;
      *&v222.m11 = *&CATransform3DIdentity.m11;
      v154 = *&v222.m11;
      *&v222.m13 = v153;
      v151 = *&CATransform3DIdentity.m23;
      *&v222.m21 = *&CATransform3DIdentity.m21;
      v152 = *&v222.m21;
      *&v222.m23 = v151;
      v100 = [NSValue valueWithCATransform3D:&v222];
      v238[0] = v100;
      memset(&v227, 0, sizeof(v227));
      CGAffineTransformMakeTranslation(&v227, -v34, -v36);
      memset(&v226, 0, sizeof(v226));
      CGAffineTransformMakeScale(&v226, v97 / v38, v98 / v40);
      memset(&v225, 0, sizeof(v225));
      CGAffineTransformMakeTranslation(&v225, v95, v96);
      t1 = v226;
      t2 = v225;
      CGAffineTransformConcat(&v222, &t1, &t2);
      t2 = v227;
      CGAffineTransformConcat(&t1, &t2, &v222);
      CATransform3DMakeAffineTransform(&v222, &t1);
      v101 = [NSValue valueWithCATransform3D:&v222];
      v238[1] = v101;
      v102 = [NSArray arrayWithObjects:v238 count:2];
      [*&v176.origin.y setValues:v102];

      [*&v176.origin.y setKeyTimes:&off_10004C7A8];
      v103 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
      v237 = v103;
      v104 = [NSArray arrayWithObjects:&v237 count:1];
      [*&v176.origin.y setTimingFunctions:v104];

      [*&v176.origin.y setRemovedOnCompletion:0];
      [*&v176.origin.y setFillMode:kCAFillModeBoth];
      [*&v176.origin.y setDuration:1.0];
      *&v176.origin.x = [CAKeyframeAnimation animationWithKeyPath:@"transform"];
      memset(&v227, 0, sizeof(v227));
      CGAffineTransformMakeTranslation(&v227, -v167, -v165);
      memset(&v226, 0, sizeof(v226));
      CGAffineTransformMakeScale(&v226, v97 / v163, v98 / v162);
      memset(&v225, 0, sizeof(v225));
      CGAffineTransformMakeTranslation(&v225, v95, v96);
      t1 = v226;
      t2 = v225;
      CGAffineTransformConcat(&v222, &t1, &t2);
      t2 = v227;
      CGAffineTransformConcat(&t1, &t2, &v222);
      CATransform3DMakeAffineTransform(&v222, &t1);
      v105 = [NSValue valueWithCATransform3D:&v222];
      v236[0] = v105;
      *&v222.m31 = v174;
      *&v222.m33 = r1a;
      *&v222.m41 = v156;
      *&v222.m43 = v155;
      *&v222.m11 = v154;
      *&v222.m13 = v153;
      *&v222.m21 = v152;
      *&v222.m23 = v151;
      v106 = [NSValue valueWithCATransform3D:&v222];
      v236[1] = v106;
      v107 = [NSArray arrayWithObjects:v236 count:2];
      [*&v176.origin.x setValues:v107];

      [*&v176.origin.x setKeyTimes:&off_10004C7C0];
      v108 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
      v235 = v108;
      v109 = [NSArray arrayWithObjects:&v235 count:1];
      [*&v176.origin.x setTimingFunctions:v109];

      [*&v176.origin.x setRemovedOnCompletion:0];
      [*&v176.origin.x setFillMode:kCAFillModeBoth];
      [*&v176.origin.x setDuration:1.0];
      v175 = [CAKeyframeAnimation animationWithKeyPath:@"transform"];
      memset(&v227, 0, sizeof(v227));
      CGAffineTransformMakeTranslation(&v227, 0.5, 0.5);
      memset(&v226, 0, sizeof(v226));
      CGAffineTransformMakeScale(&v226, v38, v40);
      memset(&v225, 0, sizeof(v225));
      CGAffineTransformMakeTranslation(&v225, v34, v36);
      t1 = v226;
      t2 = v225;
      CGAffineTransformConcat(&v222, &t1, &t2);
      t2 = v227;
      CGAffineTransformConcat(&t1, &t2, &v222);
      CATransform3DMakeAffineTransform(&v222, &t1);
      v110 = [NSValue valueWithCATransform3D:&v222];
      v234[0] = v110;
      memset(&v227, 0, sizeof(v227));
      CGAffineTransformMakeTranslation(&v227, 0.5, 0.5);
      memset(&v226, 0, sizeof(v226));
      CGAffineTransformMakeScale(&v226, v97, v98);
      memset(&v225, 0, sizeof(v225));
      CGAffineTransformMakeTranslation(&v225, v95, v96);
      t1 = v226;
      t2 = v225;
      CGAffineTransformConcat(&v222, &t1, &t2);
      t2 = v227;
      CGAffineTransformConcat(&t1, &t2, &v222);
      CATransform3DMakeAffineTransform(&v222, &t1);
      v111 = [NSValue valueWithCATransform3D:&v222];
      v234[1] = v111;
      memset(&v227, 0, sizeof(v227));
      CGAffineTransformMakeTranslation(&v227, 0.5, 0.5);
      memset(&v226, 0, sizeof(v226));
      CGAffineTransformMakeScale(&v226, v163, v162);
      memset(&v225, 0, sizeof(v225));
      CGAffineTransformMakeTranslation(&v225, v167, v165);
      t1 = v226;
      t2 = v225;
      CGAffineTransformConcat(&v222, &t1, &t2);
      t2 = v227;
      CGAffineTransformConcat(&t1, &t2, &v222);
      CATransform3DMakeAffineTransform(&v222, &t1);
      v112 = [NSValue valueWithCATransform3D:&v222];
      v234[2] = v112;
      v113 = [NSArray arrayWithObjects:v234 count:3];
      [v175 setValues:v113];

      [v175 setKeyTimes:&off_10004C7D8];
      v114 = [CAMediaTimingFunction functionWithName:?];
      v233[0] = v114;
      v115 = [CAMediaTimingFunction functionWithName:?];
      v233[1] = v115;
      v116 = [NSArray arrayWithObjects:v233 count:2];
      [v175 setTimingFunctions:v116];

      [v175 setRemovedOnCompletion:0];
      [v175 setFillMode:kCAFillModeBoth];
      [v175 setDuration:1.0];
      v117 = [CAKeyframeAnimation animationWithKeyPath:@"opacity"];
      [v117 setValues:&off_10004C7F0];
      [v117 setKeyTimes:&off_10004C808];
      [v117 setRemovedOnCompletion:0];
      [v117 setFillMode:kCAFillModeBoth];
      [v117 setDuration:1.0];
      v118 = [CAKeyframeAnimation animationWithKeyPath:@"opacity"];
      [v118 setValues:&off_10004C820];
      [v118 setKeyTimes:&off_10004C838];
      v119 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
      v232 = v119;
      v120 = [NSArray arrayWithObjects:&v232 count:1];
      [v118 setTimingFunctions:v120];

      [v118 setRemovedOnCompletion:0];
      [v118 setFillMode:kCAFillModeBoth];
      [v118 setDuration:1.0];
      v121 = [CAKeyframeAnimation animationWithKeyPath:@"opacity"];
      [v121 setValues:&off_10004C850];
      [v121 setKeyTimes:&off_10004C868];
      v122 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
      v231 = v122;
      v123 = [NSArray arrayWithObjects:&v231 count:1];
      [v121 setTimingFunctions:v123];

      [v121 setRemovedOnCompletion:0];
      [v121 setFillMode:kCAFillModeBoth];
      [v121 setDuration:1.0];
      v124 = [CAKeyframeAnimation animationWithKeyPath:@"opacity"];
      [v124 setValues:&off_10004C880];
      [v124 setRemovedOnCompletion:0];
      [v124 setFillMode:kCAFillModeBoth];
      [v124 setDuration:1.0];
      v125 = [CAKeyframeAnimation animationWithKeyPath:@"opacity"];
      [v125 setValues:&off_10004C898];
      [v125 setRemovedOnCompletion:0];
      [v125 setFillMode:kCAFillModeBoth];
      [v125 setDuration:1.0];
      if (v150 >= v149)
      {
        v126 = v149;
      }

      else
      {
        v126 = v150;
      }

      v127 = [CAKeyframeAnimation animationWithKeyPath:@"filters.gaussianBlur.inputRadius"];
      v230[0] = &off_10004C5E0;
      v128 = [NSNumber numberWithDouble:v126 * 0.2];
      v230[1] = v128;
      v230[2] = &off_10004C5E0;
      v129 = [NSArray arrayWithObjects:v230 count:3];
      [v127 setValues:v129];

      v130 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];
      v229[0] = v130;
      v131 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
      v229[1] = v131;
      v132 = [NSArray arrayWithObjects:v229 count:2];
      [v127 setTimingFunctions:v132];

      [v127 setDuration:1.0];
      objc_initWeak(&v222, self);
      v203[0] = _NSConcreteStackBlock;
      v203[1] = 3221225472;
      v203[2] = sub_10001D0E8;
      v203[3] = &unk_100049460;
      objc_copyWeak(&v213, &v222);
      *&v176.origin.y = *&v176.origin.y;
      v204 = v176.origin.y;
      v133 = *&v176.origin.x;
      v205 = v133;
      *&v176.origin.x = v175;
      v206 = v176.origin.x;
      v134 = v117;
      v207 = v134;
      v135 = v118;
      v208 = v135;
      v136 = v121;
      v209 = v136;
      v137 = v124;
      v210 = v137;
      v138 = v125;
      v211 = v138;
      v139 = v127;
      v212 = v139;
      v201[0] = _NSConcreteStackBlock;
      v201[1] = 3221225472;
      v201[2] = sub_10001D8E4;
      v201[3] = &unk_100049350;
      v140 = objc_retainBlock(v203);
      v202 = v140;
      [UIView _performWithoutRetargetingAnimations:v201];
      objc_initWeak(&v227, vala);
      v228 = self->_animatableProperty;
      v141 = [NSArray arrayWithObjects:&v228 count:1];
      v197[0] = _NSConcreteStackBlock;
      v197[1] = 3221225472;
      v197[2] = sub_10001D8FC;
      v197[3] = &unk_100049488;
      objc_copyWeak(&v199, &v222);
      v200[1] = v169;
      objc_copyWeak(v200, &v227);
      v170 = v140;
      v198 = v170;
      v185[0] = _NSConcreteStackBlock;
      v185[1] = 3221225472;
      v185[2] = sub_10001D9B4;
      v185[3] = &unk_1000494B0;
      objc_copyWeak(&v195, &v222);
      v196[1] = v169;
      objc_copyWeak(v196, &v227);
      v164 = *&v176.origin.y;
      v186 = v164;
      v166 = v133;
      v187 = v166;
      v168 = *&v176.origin.x;
      v188 = v168;
      *&v176.origin.x = v134;
      v189 = v176.origin.x;
      *&v176.origin.y = v135;
      v190 = v176.origin.y;
      v142 = v136;
      v191 = v142;
      v143 = v137;
      v192 = v143;
      v144 = v138;
      v193 = v144;
      v145 = v139;
      v194 = v145;
      [UIView _createTransformerWithInputAnimatableProperties:v141 modelValueSetter:v197 presentationValueSetter:v185];

      customShapeMorphAnimationSettings = [(PUIDPointerSettings *)self->_settings customShapeMorphAnimationSettings];
      v183[0] = _NSConcreteStackBlock;
      v183[1] = 3221225472;
      v183[2] = sub_10001DECC;
      v183[3] = &unk_100048BA8;
      v184 = vala;
      *&v176.size.height = _NSConcreteStackBlock;
      v177 = 3221225472;
      v178 = sub_10001DED8;
      v179 = &unk_1000494D8;
      v147 = v184;
      v180 = v147;
      objc_copyWeak(v182, &v222);
      v182[1] = v169;
      v181 = v159;
      [UIView _animateUsingSpringBehavior:customShapeMorphAnimationSettings tracking:0 animations:v183 completion:&v176.size.height];

      objc_destroyWeak(v182);
      objc_destroyWeak(v196);
      objc_destroyWeak(&v195);

      objc_destroyWeak(v200);
      objc_destroyWeak(&v199);
      objc_destroyWeak(&v227);

      objc_destroyWeak(&v213);
      objc_destroyWeak(&v222);

      completionCopy = v159;
      goto LABEL_36;
    }

    [(UIViewFloatAnimatableProperty *)self->_animatableProperty invalidate];
    v31 = self->_animatableProperty;
    self->_animatableProperty = 0;

    [(PUIDPointerShapeMorphingView *)self _resetToStableStateWithPath:pathCopy];
  }

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1);
  }

LABEL_36:
}

- (void)_resetToStableStateWithPath:(id)path
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001E05C;
  v4[3] = &unk_100048A28;
  v4[4] = self;
  pathCopy = path;
  v3 = pathCopy;
  [UIView _performWithoutRetargetingAnimations:v4];
}

@end