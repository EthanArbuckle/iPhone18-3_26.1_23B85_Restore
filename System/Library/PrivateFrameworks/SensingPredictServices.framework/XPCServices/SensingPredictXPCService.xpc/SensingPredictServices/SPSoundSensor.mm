@interface SPSoundSensor
+ (id)sharedSoundSensorModule;
- (BOOL)subscribeToNoiseLevelForClient:(id)a3 callback:(id)a4;
- (BOOL)unsubscribeFromNoiseLevel:(id)a3;
- (BOOL)unsubscribeFromSound:(id)a3;
- (SPSoundSensor)init;
- (void)_activate;
- (void)_invalidate;
- (void)activate;
- (void)invalidate;
- (void)setNoiseLevel:(float)a3;
@end

@implementation SPSoundSensor

+ (id)sharedSoundSensorModule
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001660;
  block[3] = &unk_100010630;
  block[4] = a1;
  if (qword_1000161E8 != -1)
  {
    dispatch_once(&qword_1000161E8, block);
  }

  v2 = qword_1000161E0;

  return v2;
}

- (SPSoundSensor)init
{
  v15.receiver = self;
  v15.super_class = SPSoundSensor;
  v2 = [(SPSoundSensor *)&v15 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("SPSoundSensor", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v6 = objc_alloc_init(NSMutableArray);
    soundSubscribers = v2->_soundSubscribers;
    v2->_soundSubscribers = v6;

    v8 = objc_alloc_init(NSMutableArray);
    noiseLevelSubscribers = v2->_noiseLevelSubscribers;
    v2->_noiseLevelSubscribers = v8;

    v2->_currentSoundState[2] = 0;
    *v2->_currentSoundState = 0;
    v16[0] = &off_100010E58;
    v16[1] = &off_100010E70;
    v17[0] = &off_100010EA0;
    v17[1] = &off_100010EA0;
    v16[2] = &off_100010E88;
    v17[2] = &off_100010EA0;
    v10 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:3];
    soundTypeToThreshold = v2->_soundTypeToThreshold;
    v2->_soundTypeToThreshold = v10;

    v2->_currentNoiseLevel = 0;
    v12 = +[_TtC24SensingPredictXPCService31SPAudioAccessoryDeviceHIDClient shared];
    sphid = v2->_sphid;
    v2->_sphid = v12;
  }

  return v2;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001864;
  block[3] = &unk_100010658;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  if (!self->_activateCalled)
  {
    self->_activateCalled = 1;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100001950;
    v4[3] = &unk_100010680;
    v4[4] = self;
    v3 = objc_retainBlock(v4);
    [(SPAudioAccessoryDeviceHIDClient *)self->_sphid ReceiveNoiseLevelWithBlock:v3];
    [(SPAudioAccessoryDeviceHIDClient *)self->_sphid MarkSessionStartWithAppName:@"SPSoundSensor"];
    if (dword_100015D30 <= 50 && (dword_100015D30 != -1 || _LogCategory_Initialize()))
    {
      sub_100009548();
    }
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000019CC;
  block[3] = &unk_100010658;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  self->_activateCalled = 0;
  [(SPAudioAccessoryDeviceHIDClient *)self->_sphid MarkSessionStopWithAppName:@"SPSoundSensor"];
  if (dword_100015D30 <= 50 && (dword_100015D30 != -1 || _LogCategory_Initialize()))
  {
    sub_10000957C();
  }
}

- (void)setNoiseLevel:(float)a3
{
  if (a3 <= 90.0)
  {
    v3 = 5;
  }

  else
  {
    v3 = 6;
  }

  if (a3 > 75.0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 4;
  }

  if (a3 > 60.0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 3;
  }

  if (a3 > 45.0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 2;
  }

  if (a3 >= 30.0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1;
  }

  if (v7 != self->_currentNoiseLevel)
  {
    self->_currentNoiseLevel = v7;
    if (dword_100015D30 <= 50 && (dword_100015D30 != -1 || _LogCategory_Initialize()))
    {
      sub_100009658();
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = self->_noiseLevelSubscribers;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v15 + 1) + 8 * i) callback];
          v14[2](v14, v7);
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }
}

- (BOOL)subscribeToNoiseLevelForClient:(id)a3 callback:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(NoiseLevelSubscriber);
  [(NoiseLevelSubscriber *)v8 setClient:v7];

  [(NoiseLevelSubscriber *)v8 setCallback:v6];
  [(NSMutableArray *)self->_noiseLevelSubscribers addObject:v8];
  v6[2](v6, self->_currentNoiseLevel);

  if (dword_100015D30 <= 50 && (dword_100015D30 != -1 || _LogCategory_Initialize()))
  {
    sub_1000096FC();
  }

  return 1;
}

- (BOOL)unsubscribeFromSound:(id)a3
{
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_soundSubscribers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 client];

        if (v11 == v4)
        {
          if (dword_100015D30 <= 50 && (dword_100015D30 != -1 || _LogCategory_Initialize()))
          {
            sub_100009718();
          }

          [(NSMutableArray *)self->_soundSubscribers removeObject:v10];

          v12 = 1;
          goto LABEL_17;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  if (dword_100015D30 <= 50 && (dword_100015D30 != -1 || _LogCategory_Initialize()))
  {
    sub_10000974C();
  }

  v12 = 0;
LABEL_17:

  return v12;
}

- (BOOL)unsubscribeFromNoiseLevel:(id)a3
{
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_noiseLevelSubscribers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 client];

        if (v11 == v4)
        {
          if (dword_100015D30 <= 50 && (dword_100015D30 != -1 || _LogCategory_Initialize()))
          {
            sub_100009780();
          }

          [(NSMutableArray *)self->_noiseLevelSubscribers removeObject:v10];

          v12 = 1;
          goto LABEL_17;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  if (dword_100015D30 <= 50 && (dword_100015D30 != -1 || _LogCategory_Initialize()))
  {
    sub_1000097B4();
  }

  v12 = 0;
LABEL_17:

  return v12;
}

@end