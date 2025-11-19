@interface OKActionBindingMotion
+ (id)supportedSettings;
- (BOOL)respondsToAction:(id)a3 isTouchCountAgnostic:(BOOL)a4;
- (OKActionBindingMotion)init;
- (OKActionBindingMotion)initWithSettings:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)handleLongPress:(id)a3;
- (void)loadForResponder:(id)a3 scope:(unint64_t)a4;
- (void)unload;
@end

@implementation OKActionBindingMotion

- (OKActionBindingMotion)init
{
  v3.receiver = self;
  v3.super_class = OKActionBindingMotion;
  result = [(OKActionBinding *)&v3 init];
  if (result)
  {
    result->_numberOfTouchesRequired = 1;
    result->_motionInterval = 0.25;
    result->_motionContext = 0;
    result->_motionManager = 0;
    result->_motionAttitudeReference = 0;
    result->_motionQueue = 0;
    result->_shouldForwardMotion = 0;
    result->_lastYaw = 0.0;
    result->_lastRoll = 0.0;
    result->_lastPitch = 0.0;
    result->_lastRotationX = 0.0;
    result->_lastRotationY = 0.0;
    result->_lastRotationZ = 0.0;
    result->_lastLocation = *MEMORY[0x277CBF348];
    result->_longPressGestureRecognizer = 0;
  }

  return result;
}

- (OKActionBindingMotion)initWithSettings:(id)a3
{
  v9.receiver = self;
  v9.super_class = OKActionBindingMotion;
  v4 = [(OKActionBinding *)&v9 initWithSettings:?];
  if (v4)
  {
    v5 = [a3 objectForKey:@"numberOfTouchesRequired"];
    if (v5)
    {
      v4->_numberOfTouchesRequired = [v5 unsignedIntegerValue];
    }

    v6 = [a3 objectForKey:@"motionInterval"];
    if (v6)
    {
      [v6 doubleValue];
      v4->_motionInterval = v7;
    }
  }

  return v4;
}

- (void)dealloc
{
  motionManager = self->_motionManager;
  if (motionManager)
  {
    [(CMMotionManager *)motionManager stopDeviceMotionUpdates];

    self->_motionManager = 0;
  }

  motionAttitudeReference = self->_motionAttitudeReference;
  if (motionAttitudeReference)
  {

    self->_motionAttitudeReference = 0;
  }

  motionQueue = self->_motionQueue;
  if (motionQueue)
  {
    [(NSOperationQueue *)motionQueue cancelAllOperations];

    self->_motionQueue = 0;
  }

  longPressGestureRecognizer = self->_longPressGestureRecognizer;
  if (longPressGestureRecognizer)
  {
    [-[UILongPressGestureRecognizer view](longPressGestureRecognizer "view")];

    self->_longPressGestureRecognizer = 0;
  }

  motionContext = self->_motionContext;
  if (motionContext)
  {

    self->_motionContext = 0;
  }

  v8.receiver = self;
  v8.super_class = OKActionBindingMotion;
  [(OKActionBinding *)&v8 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = OKActionBindingMotion;
  v4 = [(OKActionBindingProxy *)&v7 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    [v4 setNumberOfTouchesRequired:self->_numberOfTouchesRequired];
    [v5 setMotionInterval:self->_motionInterval];
  }

  return v5;
}

+ (id)supportedSettings
{
  v11[2] = *MEMORY[0x277D85DE8];
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___OKActionBindingMotion;
  v2 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{objc_msgSendSuper2(&v5, sel_supportedSettings)}];
  v10[0] = @"numberOfTouchesRequired";
  v8[0] = @"type";
  v8[1] = @"default";
  v9[0] = &unk_287AF1D00;
  v9[1] = &unk_287AF1D18;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  v10[1] = @"motionInterval";
  v11[0] = v3;
  v6[0] = @"type";
  v6[1] = @"default";
  v7[0] = &unk_287AF1D30;
  v7[1] = &unk_287AF2418;
  v11[1] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  [v2 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v11, v10, 2)}];
  return v2;
}

- (BOOL)respondsToAction:(id)a3 isTouchCountAgnostic:(BOOL)a4
{
  v7 = [(OKActionBindingProxy *)self scope];
  result = 0;
  if (([a3 scope] & v7) != 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (a4 || [a3 touchCount] == self->_numberOfTouchesRequired))
    {
      return 1;
    }
  }

  return result;
}

- (void)loadForResponder:(id)a3 scope:(unint64_t)a4
{
  v4 = a4;
  v33.receiver = self;
  v33.super_class = OKActionBindingMotion;
  [OKActionBindingProxy loadForResponder:sel_loadForResponder_scope_ scope:?];
  if (v4)
  {
    if ([(OKActionBindingMotion *)self numberOfTouchesRequired])
    {
      self->_shouldForwardMotion = 0;
      v7 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel_handleLongPress_];
      self->_longPressGestureRecognizer = v7;
      [(UILongPressGestureRecognizer *)v7 setDelegate:self];
      [(UILongPressGestureRecognizer *)self->_longPressGestureRecognizer setNumberOfTouchesRequired:[(OKActionBindingMotion *)self numberOfTouchesRequired]];
      [(UILongPressGestureRecognizer *)self->_longPressGestureRecognizer setNumberOfTapsRequired:0];
      [(UILongPressGestureRecognizer *)self->_longPressGestureRecognizer setMinimumPressDuration:0.25];
      [(UILongPressGestureRecognizer *)self->_longPressGestureRecognizer setAllowableMovement:0.0];
      v8 = [a3 actionView];
      if (v8)
      {
        [v8 addGestureRecognizer:self->_longPressGestureRecognizer];
      }
    }

    else
    {
      self->_shouldForwardMotion = 1;
    }

    motionManager = self->_motionManager;
    if (!motionManager)
    {
      motionManager = objc_alloc_init(MEMORY[0x277CC1CD8]);
      self->_motionManager = motionManager;
    }

    if ([(CMMotionManager *)motionManager isDeviceMotionAvailable])
    {
      if (!self->_motionQueue)
      {
        v10 = objc_alloc_init(MEMORY[0x277CCABD8]);
        self->_motionQueue = v10;
        [(NSOperationQueue *)v10 setMaxConcurrentOperationCount:1];
      }

      [(CMMotionManager *)self->_motionManager setDeviceMotionUpdateInterval:self->_motionInterval];
      v11 = [MEMORY[0x277D62800] weakReferenceHolderWithObject:self];
      v32[0] = 0;
      v32[1] = v32;
      v32[2] = 0x2020000000;
      v32[3] = 0;
      v31[0] = 0;
      v31[1] = v31;
      v31[2] = 0x2020000000;
      v31[3] = 0;
      v30[0] = 0;
      v30[1] = v30;
      v30[2] = 0x2020000000;
      v30[3] = 0;
      v29[0] = 0;
      v29[1] = v29;
      v29[2] = 0x2020000000;
      v29[3] = 0;
      v28[0] = 0;
      v28[1] = v28;
      v28[2] = 0x2020000000;
      v28[3] = 0;
      v27[0] = 0;
      v27[1] = v27;
      v27[2] = 0x2020000000;
      v27[3] = 0;
      v26[0] = 0;
      v26[1] = v26;
      v26[2] = 0x2020000000;
      v26[3] = 0x3FB99999A0000000;
      v24[3] = 0x3FB99999A0000000;
      v25[0] = 0;
      v25[1] = v25;
      v25[2] = 0x2020000000;
      v25[3] = 0x3FB99999A0000000;
      v24[0] = 0;
      v24[1] = v24;
      v24[2] = 0x2020000000;
      v23[0] = 0;
      v23[1] = v23;
      v23[2] = 0x2020000000;
      v23[3] = 0x3FE0000000000000;
      v22[0] = 0;
      v22[1] = v22;
      v22[2] = 0x2020000000;
      v22[3] = 0x3FB99999A0000000;
      v21[0] = 0;
      v21[1] = v21;
      v21[2] = 0x2020000000;
      v21[3] = 0x3FB99999A0000000;
      v20[0] = 0;
      v20[1] = v20;
      v20[2] = 0x2020000000;
      v20[3] = 0x3FB99999A0000000;
      v19[0] = 0;
      v19[1] = v19;
      v19[2] = 0x2020000000;
      v19[3] = 0x3FE0000000000000;
      v18[0] = 0;
      v18[1] = v18;
      v18[2] = 0x2020000000;
      v18[3] = 0x3FB99999A0000000;
      v17[0] = 0;
      v17[1] = v17;
      v17[2] = 0x2020000000;
      v17[3] = 0x3FB99999A0000000;
      v16[0] = 0;
      v16[1] = v16;
      v16[2] = 0x2020000000;
      v16[3] = 0x3FB99999A0000000;
      v15[0] = 0;
      v15[1] = v15;
      v15[2] = 0x2020000000;
      v15[3] = 0x3FE0000000000000;
      v12 = self->_motionManager;
      motionQueue = self->_motionQueue;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __48__OKActionBindingMotion_loadForResponder_scope___block_invoke;
      v14[3] = &unk_279C916B0;
      v14[6] = v32;
      v14[7] = v31;
      v14[8] = v30;
      v14[9] = v29;
      v14[10] = v28;
      v14[11] = v27;
      v14[4] = v11;
      v14[5] = self;
      v14[12] = v24;
      v14[13] = v26;
      v14[14] = v23;
      v14[15] = v25;
      v14[16] = v20;
      v14[17] = v22;
      v14[18] = v19;
      v14[19] = v21;
      v14[20] = v16;
      v14[21] = v18;
      v14[22] = v15;
      v14[23] = v17;
      [(CMMotionManager *)v12 startDeviceMotionUpdatesUsingReferenceFrame:2 toQueue:motionQueue withHandler:v14, v22, v21, v20];
      _Block_object_dispose(v15, 8);
      _Block_object_dispose(v16, 8);
      _Block_object_dispose(v17, 8);
      _Block_object_dispose(v18, 8);
      _Block_object_dispose(v19, 8);
      _Block_object_dispose(v20, 8);
      _Block_object_dispose(v21, 8);
      _Block_object_dispose(v22, 8);
      _Block_object_dispose(v23, 8);
      _Block_object_dispose(v24, 8);
      _Block_object_dispose(v25, 8);
      _Block_object_dispose(v26, 8);
      _Block_object_dispose(v27, 8);
      _Block_object_dispose(v28, 8);
      _Block_object_dispose(v29, 8);
      _Block_object_dispose(v30, 8);
      _Block_object_dispose(v31, 8);
      _Block_object_dispose(v32, 8);
    }
  }
}

uint64_t __48__OKActionBindingMotion_loadForResponder_scope___block_invoke(uint64_t a1, void *a2)
{
  result = [*(a1 + 32) object];
  if (!result)
  {
    return result;
  }

  v5 = result;
  if (*(result + 120) != 1)
  {
    *(*(*(a1 + 104) + 8) + 24) = 0x3FB99999A0000000;
    *(*(*(a1 + 120) + 8) + 24) = 0x3FB99999A0000000;
    *(*(*(a1 + 96) + 8) + 24) = 0x3FB99999A0000000;
    *(*(*(a1 + 112) + 8) + 24) = 0x3FE0000000000000;
    *(*(*(a1 + 136) + 8) + 24) = 0x3FB99999A0000000;
    *(*(*(a1 + 152) + 8) + 24) = 0x3FB99999A0000000;
    *(*(*(a1 + 128) + 8) + 24) = 0x3FB99999A0000000;
    *(*(*(a1 + 144) + 8) + 24) = 0x3FE0000000000000;
    *(*(*(a1 + 168) + 8) + 24) = 0x3FB99999A0000000;
    *(*(*(a1 + 184) + 8) + 24) = 0x3FB99999A0000000;
    *(*(*(a1 + 160) + 8) + 24) = 0x3FB99999A0000000;
    *(*(*(a1 + 176) + 8) + 24) = 0x3FE0000000000000;
    return result;
  }

  if (![result motionAttitudeReference])
  {
    [v5 setMotionAttitudeReference:{objc_msgSend(a2, "attitude")}];
  }

  v6 = [a2 attitude];
  if ([v5 motionAttitudeReference])
  {
    [v6 multiplyByInverseOfAttitude:{objc_msgSend(v5, "motionAttitudeReference")}];
  }

  [v6 roll];
  *(*(*(a1 + 48) + 8) + 24) = v7;
  [v6 pitch];
  *(*(*(a1 + 56) + 8) + 24) = v8;
  [v6 yaw];
  *(*(*(a1 + 64) + 8) + 24) = v9;
  result = [objc_msgSend(MEMORY[0x277D75128] "sharedApplication")];
  if (result > 2)
  {
    if (result != 3 && result != 4)
    {
      return result;
    }

    *(*(*(a1 + 72) + 8) + 24) = -*(*(*(a1 + 48) + 8) + 24);
    v11 = *(a1 + 56);
  }

  else
  {
    if (result != 1)
    {
      if (result != 2)
      {
        return result;
      }

      *(*(*(a1 + 72) + 8) + 24) = -*(*(*(a1 + 56) + 8) + 24);
      v10 = -*(*(*(a1 + 48) + 8) + 24);
      goto LABEL_17;
    }

    *(*(*(a1 + 72) + 8) + 24) = *(*(*(a1 + 56) + 8) + 24);
    v11 = *(a1 + 48);
  }

  v10 = *(*(v11 + 8) + 24);
LABEL_17:
  *(*(*(a1 + 80) + 8) + 24) = v10;
  *(*(*(a1 + 88) + 8) + 24) = -*(*(*(a1 + 64) + 8) + 24);
  v12 = *(*(a1 + 40) + 176);
  *(*(*(a1 + 96) + 8) + 24) = *(*(*(a1 + 96) + 8) + 24) + *(*(*(a1 + 104) + 8) + 24);
  v13 = *(*(*(a1 + 96) + 8) + 24);
  *(*(*(a1 + 112) + 8) + 24) = v13 / (v13 + *(*(*(a1 + 120) + 8) + 24));
  v14 = *(*(*(a1 + 112) + 8) + 24);
  v15 = v12 + v14 * (*(*(*(a1 + 72) + 8) + 24) - v12);
  *(*(*(a1 + 96) + 8) + 24) = (1.0 - v14) * *(*(*(a1 + 96) + 8) + 24);
  *&v14 = *(*(a1 + 40) + 184);
  *(*(*(a1 + 128) + 8) + 24) = *(*(*(a1 + 128) + 8) + 24) + *(*(*(a1 + 136) + 8) + 24);
  v16 = *(*(*(a1 + 128) + 8) + 24);
  *(*(*(a1 + 144) + 8) + 24) = v16 / (v16 + *(*(*(a1 + 152) + 8) + 24));
  v17 = *(*(*(a1 + 144) + 8) + 24);
  v18 = *&v14 + v17 * (*(*(*(a1 + 80) + 8) + 24) - *&v14);
  *(*(*(a1 + 128) + 8) + 24) = (1.0 - v17) * *(*(*(a1 + 128) + 8) + 24);
  v19 = v18;
  *&v18 = *(*(a1 + 40) + 192);
  *(*(*(a1 + 160) + 8) + 24) = *(*(*(a1 + 160) + 8) + 24) + *(*(*(a1 + 168) + 8) + 24);
  v20 = *(*(*(a1 + 160) + 8) + 24);
  *(*(*(a1 + 176) + 8) + 24) = v20 / (v20 + *(*(*(a1 + 184) + 8) + 24));
  v21 = *(*(*(a1 + 176) + 8) + 24);
  v22 = *&v18 + v21 * (*(*(*(a1 + 88) + 8) + 24) - *&v18);
  *(*(*(a1 + 160) + 8) + 24) = (1.0 - v21) * *(*(*(a1 + 160) + 8) + 24);
  v23 = *(a1 + 40);
  if (!*(v23 + 112))
  {
    *(*(a1 + 40) + 112) = objc_alloc_init(MEMORY[0x277CBEB38]);
    v23 = *(a1 + 40);
  }

  v24 = +[OKActionMotion motionActionWithState:location:touchCount:rotationX:rotationY:rotationZ:context:](OKActionMotion, "motionActionWithState:location:touchCount:rotationX:rotationY:rotationZ:context:", 2, [v23 numberOfTouchesRequired], *(*(a1 + 40) + 112), *(v23 + 200), *(v23 + 208), v15, v19, v22);
  if (![v5 numberOfTouchesRequired])
  {
    [v24 setIsInstantaneous:1];
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __48__OKActionBindingMotion_loadForResponder_scope___block_invoke_2;
  v25[3] = &unk_279C90078;
  v25[4] = *(a1 + 32);
  v25[5] = v24;
  result = [v5 performBlockOnMainThread:v25];
  v5[20] = *(*(*(a1 + 48) + 8) + 24);
  v5[21] = *(*(*(a1 + 56) + 8) + 24);
  v5[19] = *(*(*(a1 + 64) + 8) + 24);
  v5[22] = *(*(*(a1 + 72) + 8) + 24);
  v5[23] = *(*(*(a1 + 80) + 8) + 24);
  v5[24] = *(*(*(a1 + 88) + 8) + 24);
  return result;
}

uint64_t __48__OKActionBindingMotion_loadForResponder_scope___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  v3 = *(a1 + 40);

  return [v2 performAction:v3];
}

- (void)unload
{
  v7.receiver = self;
  v7.super_class = OKActionBindingMotion;
  [(OKActionBindingProxy *)&v7 unload];
  motionContext = self->_motionContext;
  if (motionContext)
  {

    self->_motionContext = 0;
  }

  if ([(OKActionBindingProxy *)self scope]== 1)
  {
    if ([(OKActionBindingMotion *)self numberOfTouchesRequired])
    {
      longPressGestureRecognizer = self->_longPressGestureRecognizer;
      if (longPressGestureRecognizer)
      {
        [-[UILongPressGestureRecognizer view](longPressGestureRecognizer "view")];

        self->_longPressGestureRecognizer = 0;
      }
    }

    motionManager = self->_motionManager;
    if (motionManager)
    {
      [(CMMotionManager *)motionManager stopDeviceMotionUpdates];

      self->_motionManager = 0;
    }

    motionQueue = self->_motionQueue;
    if (motionQueue)
    {
      [(NSOperationQueue *)motionQueue cancelAllOperations];

      self->_motionQueue = 0;
    }

    self->_shouldForwardMotion = 0;
    self->_lastYaw = 0.0;
    self->_lastPitch = 0.0;
    self->_lastRoll = 0.0;
    self->_lastRotationX = 0.0;
    self->_lastRotationY = 0.0;
    self->_lastRotationZ = 0.0;
    self->_lastLocation = *MEMORY[0x277CBF348];
  }
}

- (void)handleLongPress:(id)a3
{
  if ([a3 state] == 1)
  {
    [(OKActionBindingMotion *)self setMotionAttitudeReference:[(CMDeviceMotion *)[(CMMotionManager *)self->_motionManager deviceMotion] attitude]];
    v5 = 0;
    v6 = 1;
    self->_shouldForwardMotion = 1;
  }

  else if ([a3 state] == 2)
  {
    v5 = 1;
    v6 = 2;
  }

  else if ([a3 state] == 3)
  {
    v5 = 0;
    self->_shouldForwardMotion = 0;
    v6 = 3;
  }

  else if ([a3 state] == 5 || objc_msgSend(a3, "state") == 4)
  {
    self->_shouldForwardMotion = 0;
    motionAttitudeReference = self->_motionAttitudeReference;
    if (motionAttitudeReference)
    {

      v5 = 0;
      self->_motionAttitudeReference = 0;
    }

    else
    {
      v5 = 0;
    }

    v6 = 4;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  [(OKActionBindingProxy *)self locationForActionFromGesture:a3];
  self->_lastLocation.x = v8;
  self->_lastLocation.y = v9;
  if ((v5 & 1) == 0)
  {
    if (!self->_motionContext)
    {
      self->_motionContext = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    v10 = [OKActionMotion motionActionWithState:v6 location:[(OKActionBindingMotion *)self numberOfTouchesRequired] touchCount:self->_motionContext rotationX:self->_lastLocation.x rotationY:self->_lastLocation.y rotationZ:self->_lastRotationX context:self->_lastRotationY, self->_lastRotationZ];

    [(OKActionBindingProxy *)self performAction:v10];
  }
}

@end