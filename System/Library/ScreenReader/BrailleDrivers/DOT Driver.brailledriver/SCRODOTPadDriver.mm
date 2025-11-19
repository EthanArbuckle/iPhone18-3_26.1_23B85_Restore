@interface SCRODOTPadDriver
- (BOOL)_setMainTextCells:(const char *)a3 length:(int64_t)a4;
- (BOOL)setMainCells:(const char *)a3 length:(int64_t)a4;
- (BOOL)unloadDriver;
- (SCRODOTPadDriver)init;
- (id)_getInputEvents;
- (id)getInputEvents;
- (int)_BTLELoadDriverWithIOElement:(id)a3;
- (int)loadDriverWithIOElement:(id)a3;
- (void)_dequeueData;
- (void)_enqueueData:(id)a3;
- (void)_processCommand:(id)a3;
- (void)_removeQueuedDataWithType:(int64_t)a3;
- (void)centralManager:(id)a3 didConnectPeripheral:(id)a4;
- (void)centralManager:(id)a3 didDisconnectPeripheral:(id)a4 error:(id)a5;
- (void)dealloc;
- (void)displayCanvas;
- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didDiscoverServices:(id)a4;
- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didWriteValueForCharacteristic:(id)a4 error:(id)a5;
@end

@implementation SCRODOTPadDriver

- (SCRODOTPadDriver)init
{
  v15.receiver = self;
  v15.super_class = SCRODOTPadDriver;
  v2 = [(SCRODOTPadDriver *)&v15 init];
  v3 = v2;
  if (v2)
  {
    v2->_isDriverLoaded = 0;
    p_setMainCellsSEL = &v2->_setMainCellsSEL;
    if ("_setMainTextCells:length:")
    {
      *p_setMainCellsSEL = "_setMainTextCells:length:";
      v5 = "_setMainTextCells:length:";
    }

    else
    {
      v5 = 0;
      *p_setMainCellsSEL = 0;
    }

    v2->_setMainCellsIMP = [(SCRODOTPadDriver *)v2 methodForSelector:v5];
    p_getInputEventsSEL = &v3->_getInputEventsSEL;
    if ("_getInputEvents")
    {
      *p_getInputEventsSEL = "_getInputEvents";
      v7 = "_getInputEvents";
    }

    else
    {
      v7 = 0;
      *p_getInputEventsSEL = 0;
    }

    v3->_getInputEventsIMP = [(SCRODOTPadDriver *)v3 methodForSelector:v7];
    v8 = +[NSMutableArray array];
    inputEvents = v3->_inputEvents;
    v3->_inputEvents = v8;

    v10 = +[NSMutableArray array];
    queuedLines = v3->_queuedLines;
    v3->_queuedLines = v10;

    v12 = dispatch_queue_create("dot.pad.data.writing.queue", 0);
    dataWritingQueue = v3->_dataWritingQueue;
    v3->_dataWritingQueue = v12;
  }

  return v3;
}

- (void)dealloc
{
  [(SCRODOTPadDriver *)self unloadDriver];
  v3.receiver = self;
  v3.super_class = SCRODOTPadDriver;
  [(SCRODOTPadDriver *)&v3 dealloc];
}

- (int)loadDriverWithIOElement:(id)a3
{
  v4 = a3;
  if ([v4 transport] == 32 && objc_msgSend(v4, "conformsToProtocol:", &OBJC_PROTOCOL___SCROIOBTLESerialElementProtocol))
  {
    v5 = [(SCRODOTPadDriver *)self _BTLELoadDriverWithIOElement:v4];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)unloadDriver
{
  v3 = _SCROD_LOG();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = self;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Unload driver: %@", &v7, 0xCu);
  }

  if (self->_peripheral)
  {
    [(CBCentralManager *)self->_central cancelPeripheralConnection:?];
    peripheral = self->_peripheral;
    self->_peripheral = 0;
  }

  central = self->_central;
  self->_central = 0;

  *&self->_isDriverLoaded = 256;
  return 1;
}

- (id)getInputEvents
{
  if (self->_getInputEventsSEL)
  {
    getInputEventsSEL = self->_getInputEventsSEL;
  }

  return (self->_getInputEventsIMP)();
}

- (id)_getInputEvents
{
  v3 = [(NSMutableArray *)self->_inputEvents copy];
  [(NSMutableArray *)self->_inputEvents removeAllObjects];

  return v3;
}

- (BOOL)setMainCells:(const char *)a3 length:(int64_t)a4
{
  if (self->_setMainCellsSEL)
  {
    setMainCellsSEL = self->_setMainCellsSEL;
  }

  return (self->_setMainCellsIMP)();
}

- (BOOL)_setMainTextCells:(const char *)a3 length:(int64_t)a4
{
  writeCharacteristic = self->_writeCharacteristic;
  if (writeCharacteristic)
  {
    __chkstk_darwin();
    v9 = &v20 - ((v8 + 25) & 0xFFFFFFFFFFFFFFF0);
    bzero(v9, v8 + 10);
    *v9 = 21930;
    v9[2] = 0;
    v9[3] = a4 + 6;
    *(v9 + 1) = 512;
    v9[8] = 0;
    if (a4 >= 1)
    {
      v10 = v9 + 9;
      v11 = a4;
      do
      {
        v12 = *a3++;
        *v10++ = (2 * v12) & 0x70 | v12 & 0x87 | (v12 >> 3) & 8;
        --v11;
      }

      while (v11);
    }

    if ((a4 + 9) < 5)
    {
      v15 = -91;
    }

    else
    {
      v13 = v9 + 4;
      v14 = a4 + 5;
      v15 = -91;
      do
      {
        v16 = *v13++;
        v15 ^= v16;
        --v14;
      }

      while (v14);
    }

    v9[a4 + 9] = v15;
    v17 = [NSData dataWithBytes:v9 length:a4 + 10];
    [(SCRODOTPadDriver *)self _removeQueuedDataWithType:2];
    v18 = objc_opt_new();
    [v18 setData:v17];
    [v18 setType:2];
    [(SCRODOTPadDriver *)self _enqueueData:v18];
  }

  return writeCharacteristic != 0;
}

- (void)_removeQueuedDataWithType:(int64_t)a3
{
  dataWritingQueue = self->_dataWritingQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1AA0;
  v4[3] = &unk_8208;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(dataWritingQueue, v4);
}

- (void)_enqueueData:(id)a3
{
  v4 = a3;
  dataWritingQueue = self->_dataWritingQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1BE8;
  v7[3] = &unk_8230;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(dataWritingQueue, v7);
}

- (void)_dequeueData
{
  dataWritingQueue = self->_dataWritingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1D84;
  block[3] = &unk_8258;
  block[4] = self;
  dispatch_async(dataWritingQueue, block);
}

- (void)displayCanvas
{
  if (self->_writeCharacteristic)
  {
    [(SCRODOTPadDriver *)self _removeQueuedDataWithType:1];
    v3 = [(SCRO2DBrailleCanvasDOT *)self->_canvas mainCells];
    v4 = [(SCRODOTPadDriver *)self canvasHeight];
    v5 = [(SCRODOTPadDriver *)self canvasWidth];
    v24 = v4;
    if (v4 >= 1)
    {
      v6 = v5;
      v7 = 0;
      v8 = v5 + 10;
      v23 = v5 + 6;
      v9 = v5 + 9;
      v22 = v5 + 5;
      do
      {
        __chkstk_darwin();
        v10 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
        bzero(v10, v8);
        *v10 = 21930;
        *(v10 + 2) = 0;
        *(v10 + 3) = v23;
        v11 = v7 + 1;
        *(v10 + 4) = v7 + 1;
        *(v10 + 5) = 2;
        if (v6 >= 1)
        {
          v12 = v10 + 9;
          v13 = v6;
          v14 = v3;
          do
          {
            v15 = *v14++;
            *v12++ = (2 * v15) & 0x70 | v15 & 0x87 | (v15 >> 3) & 8;
            --v13;
          }

          while (v13);
        }

        if (v9 < 5)
        {
          v17 = -91;
        }

        else
        {
          v16 = (v10 + 2);
          v17 = -91;
          v18 = v22;
          do
          {
            v19 = *v16++;
            v17 ^= v19;
            --v18;
          }

          while (v18);
        }

        *(v10 + v9) = v17;
        v20 = [NSData dataWithBytes:&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) length:v8, v22];
        v21 = objc_opt_new();
        [v21 setData:v20];
        [v21 setType:1];
        [v21 setCanvasRow:v7];
        [(SCRODOTPadDriver *)self _enqueueData:v21];

        v3 += v6;
        ++v7;
      }

      while (v11 != v24);
    }
  }
}

- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5
{
  v6 = [a4 value];
  if ([v6 length])
  {
    while (1)
    {
      [v6 length];
      __chkstk_darwin();
      v8 = &v13 - v7;
      [v6 getBytes:&v13 - v7 length:{objc_msgSend(v6, "length")}];
      if ([v6 length] < 4)
      {
        break;
      }

      if (*v8 != 170)
      {
        break;
      }

      if (v8[1] != 85)
      {
        break;
      }

      v9 = __rev16(*(v8 + 1)) + 4;
      if (v9 > [v6 length])
      {
        break;
      }

      v10 = [v6 subdataWithRange:{0, v9}];
      [(SCRODOTPadDriver *)self _processCommand:v10];
      if (v9 >= [v6 length])
      {

        break;
      }

      v11 = [v6 subdataWithRange:{v9, objc_msgSend(v6, "length") - v9}];

      v12 = [v11 length];
      v6 = v11;
      if (!v12)
      {
        goto LABEL_11;
      }
    }
  }

  v11 = v6;
LABEL_11:
}

- (void)_processCommand:(id)a3
{
  v4 = a3;
  v5 = &v44 - (([v4 length] + 15) & 0xFFFFFFFFFFFFFFF0);
  [v4 getBytes:v5 length:{objc_msgSend(v4, "length")}];
  v6 = v5[5];
  if (v5[4])
  {
    v7 = 0;
  }

  else
  {
    v7 = v6 == 3;
  }

  if (v7)
  {
    v11 = 0;
    v10 = 0;
    v9 = v5[6] == 18;
    goto LABEL_11;
  }

  if (v6 != 2)
  {
LABEL_10:
    v9 = 0;
    v11 = 0;
    v10 = 0;
    goto LABEL_11;
  }

  v8 = v5[6];
  if (v8 != 2)
  {
    if (v8 == 1)
    {
      v9 = 0;
      v10 = v5[8] == 0;
      v11 = v5[8] == 1;
LABEL_11:
      v12 = 1;
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v9 = 0;
  v11 = 0;
  v10 = 0;
  v12 = v5[8] != 0;
LABEL_12:
  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = sub_27F8;
  v56[3] = &unk_8258;
  v56[4] = self;
  v13 = objc_retainBlock(v56);
  v14 = v13;
  if (!v10)
  {
    if (v11)
    {
      byte_D388 = 0;
    }

    else if (v12 || (byte_D388 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_40:
    (v13[2])(v13);
    goto LABEL_59;
  }

  byte_D388 = 1;
  if (!v12)
  {
    goto LABEL_40;
  }

LABEL_18:
  v15 = 0;
  v16 = 0;
  for (i = 8; i != 12; ++i)
  {
    if ([v4 length] > i)
    {
      v16 = (v5[i] << v15) + v16;
    }

    v15 += 8;
  }

  v18 = _SCROD_BRAILLE_LOG();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [NSNumber numberWithInt:v16];
    *buf = 138412290;
    v60 = v19;
    _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Got data command: %@", buf, 0xCu);
  }

  if (!self->_pressedFunctionButtons)
  {
    v20 = +[NSMutableSet set];
    pressedFunctionButtons = self->_pressedFunctionButtons;
    self->_pressedFunctionButtons = v20;

    v22 = +[NSMutableSet set];
    pressedArrowButtons = self->_pressedArrowButtons;
    self->_pressedArrowButtons = v22;
  }

  v46 = &v44;
  v47 = v4;
  v45 = v14;
  if (v9)
  {
    v54 = 0uLL;
    v55 = 0uLL;
    v52 = 0uLL;
    v53 = 0uLL;
    v24 = [&off_8568 countByEnumeratingWithState:&v52 objects:v58 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v53;
      v27 = 1;
      do
      {
        for (j = 0; j != v25; j = j + 1)
        {
          if (*v53 != v26)
          {
            objc_enumerationMutation(&off_8568);
          }

          v29 = *(*(&v52 + 1) + 8 * j);
          v30 = [v29 intValue] & v16;
          v31 = [(NSMutableSet *)self->_pressedArrowButtons containsObject:v29];
          if (v30 < 1)
          {
            if (v31)
            {
              [(NSMutableSet *)self->_pressedArrowButtons removeObject:v29];
              v27 = v27 & 0xFFFE00FF | ([v29 intValue] << 8);
            }
          }

          else if ((v31 & 1) == 0)
          {
            [(NSMutableSet *)self->_pressedArrowButtons addObject:v29];
            v27 = v27 & 0xFFFE00FF | ([v29 intValue] << 8) | 0x10000;
          }
        }

        v25 = [&off_8568 countByEnumeratingWithState:&v52 objects:v58 count:16];
      }

      while (v25);
      goto LABEL_55;
    }
  }

  else
  {
    v50 = 0uLL;
    v51 = 0uLL;
    v48 = 0uLL;
    v49 = 0uLL;
    v32 = [&off_8580 countByEnumeratingWithState:&v48 objects:v57 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v49;
      v27 = 1;
      do
      {
        for (k = 0; k != v33; k = k + 1)
        {
          if (*v49 != v34)
          {
            objc_enumerationMutation(&off_8580);
          }

          v36 = *(*(&v48 + 1) + 8 * k);
          v37 = [v36 intValue] & v16;
          v38 = [(NSMutableSet *)self->_pressedFunctionButtons containsObject:v36];
          if (v37 < 1)
          {
            if (v38)
            {
              [(NSMutableSet *)self->_pressedFunctionButtons removeObject:v36];
              v27 = v27 & 0xFFFE00FF | ([v36 intValue] << 8);
            }
          }

          else if ((v38 & 1) == 0)
          {
            [(NSMutableSet *)self->_pressedFunctionButtons addObject:v36];
            v27 = v27 & 0xFFFE00FF | ([v36 intValue] << 8) | 0x10000;
          }
        }

        v33 = [&off_8580 countByEnumeratingWithState:&v48 objects:v57 count:16];
      }

      while (v33);
      goto LABEL_55;
    }
  }

  v27 = 1;
LABEL_55:
  inputEvents = self->_inputEvents;
  v40 = [NSNumber numberWithUnsignedInt:v27];
  [(NSMutableArray *)inputEvents addObject:v40];

  v41 = _SCROD_BRAILLE_LOG();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    v42 = [NSNumber numberWithUnsignedInt:v27];
    *buf = 138412290;
    v60 = v42;
    _os_log_impl(&dword_0, v41, OS_LOG_TYPE_DEFAULT, "Input event: %@", buf, 0xCu);
  }

  v4 = v47;
  v14 = v45;
  if (v27 != 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_driverDelegate);
    [WeakRetained brailleDriverDidReceiveInput];
  }

LABEL_59:
}

- (void)peripheral:(id)a3 didWriteValueForCharacteristic:(id)a4 error:(id)a5
{
  v5 = _SCROD_LOG();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Got write value update", v6, 2u);
  }
}

- (int)_BTLELoadDriverWithIOElement:(id)a3
{
  v4 = a3;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 bundleIdentifier];
  v7 = _SCROD_LOG();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v43 = v4;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Loading BTLE element: %@", buf, 0xCu);
  }

  if (v6)
  {
    if (self->_isDriverLoaded)
    {
      [(SCRODOTPadDriver *)self unloadDriver];
    }

    v8 = [v5 infoDictionary];
    v9 = [v8 objectForKey:kSCROBrailleDriverModels];
    v10 = [(__CFString *)v4 peripheral];
    v11 = [v10 name];

    v41 = v11;
    if ([v11 hasPrefix:@"DotPad320"])
    {
      v12 = @"com.apple.braille.driver.dot.pad.320";
    }

    else if ([v11 hasPrefix:@"DotPad832"])
    {
      v12 = @"com.apple.braille.driver.dot.pad.832";
    }

    else if ([v11 hasPrefix:@"DotPocket12"])
    {
      v12 = @"com.apple.braille.driver.dot.mini.12";
    }

    else
    {
      v12 = 0;
    }

    modelIdentifier = self->_modelIdentifier;
    self->_modelIdentifier = &v12->isa;

    v15 = [v9 objectForKey:v12];
    v16 = v15;
    if (v15)
    {
      v38 = v9;
      v39 = v8;
      v40 = v6;
      v17 = [v15 objectForKey:kSCROBrailleDriverMainDisplaySize];
      self->_mainSize = [v17 unsignedCharValue];

      v18 = [v16 objectForKey:kSCROBrailleDriverStatusDisplaySize];
      self->_statusSize = [v18 unsignedCharValue];

      v19 = [v16 objectForKey:@"canvasHeight"];
      self->_canvasHeight = [v19 integerValue];

      v20 = [v16 objectForKey:@"canvasWidth"];
      self->_canvasWidth = [v20 integerValue];

      v21 = [NSMutableArray arrayWithCapacity:self->_canvasWidth];
      canvasLines = self->_canvasLines;
      self->_canvasLines = v21;

      if (self->_canvasWidth >= 1)
      {
        v23 = 0;
        do
        {
          v24 = self->_canvasLines;
          v25 = objc_opt_new();
          [(NSMutableArray *)v24 addObject:v25];

          ++v23;
        }

        while (v23 < self->_canvasWidth);
      }

      v26 = _SCROD_LOG();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [NSNumber numberWithInteger:self->_mainSize];
        v28 = [NSNumber numberWithInteger:self->_statusSize];
        v29 = [NSNumber numberWithInteger:self->_canvasWidth];
        v30 = [NSNumber numberWithInteger:self->_canvasHeight];
        *buf = 138413314;
        v43 = v27;
        v44 = 2112;
        v45 = v28;
        v46 = 2112;
        v47 = v29;
        v48 = 2112;
        v49 = v30;
        v50 = 2112;
        v51 = v12;
        _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "Dot main size: %@, statusSize: %@, canvas: {%@, %@} : %@", buf, 0x34u);
      }

      v31 = [(__CFString *)v4 central];
      v32 = [(__CFString *)v4 peripheral];
      v33 = _SCROD_LOG();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v43 = v32;
        _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEFAULT, "BTLE Dot Pad %@", buf, 0xCu);
      }

      v9 = v38;
      if (v31 && v32)
      {
        objc_storeStrong(&self->_central, v31);
        objc_storeStrong(&self->_peripheral, v32);
        v34 = [[SCRO2DBrailleCanvasDOT alloc] initWithWidth:2 * self->_canvasWidth initWithHeight:4 * self->_canvasHeight];
        canvas = self->_canvas;
        self->_canvas = v34;

        self->_runLoopToStop = CFRunLoopGetCurrent();
        self->_hasBeenUnloaded = 0;
        [(CBPeripheral *)self->_peripheral setDelegate:self];
        [(CBCentralManager *)self->_central setDelegate:self];
        [(CBCentralManager *)self->_central connectPeripheral:self->_peripheral options:0];
        v13 = 0;
        self->_isDriverLoaded = 1;
      }

      else
      {
        v36 = _SCROD_LOG();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEFAULT, "Failed to load DOTPad braille driver because there is no peripheral or central", buf, 2u);
        }

        v13 = 1;
      }

      v8 = v39;
      v6 = v40;
    }

    else
    {
      v31 = _SCROD_LOG();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v43 = v12;
        v44 = 2112;
        v45 = v9;
        _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "Failed to load Dotpad braille driver, Unknown model identifier [%{public}@] %@", buf, 0x16u);
      }

      v13 = 1;
    }
  }

  else
  {
    v8 = _SCROD_LOG();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Failed to load DOTPad braille driver because we have no bundle identifier", buf, 2u);
    }

    v13 = 1;
  }

  return v13;
}

- (void)centralManager:(id)a3 didConnectPeripheral:(id)a4
{
  v5 = a4;
  [v5 setDelegate:self];
  [v5 discoverServices:0];
}

- (void)centralManager:(id)a3 didDisconnectPeripheral:(id)a4 error:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = _SCROD_LOG();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Disconnect : %@ %@", &v11, 0x16u);
  }

  [(SCRODOTPadDriver *)self unloadDriver];
  v10 = +[NSNotificationCenter defaultCenter];
  [v10 postNotificationName:@"SCROBrailleDriverProtocolUnloadNotification" object:self userInfo:0];
}

- (void)peripheral:(id)a3 didDiscoverServices:(id)a4
{
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 services];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 discoverCharacteristics:0 forService:*(*(&v10 + 1) + 8 * v9)];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [a4 characteristics];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = _SCROD_LOG();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v23 = v11;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Discovered characteristic: %@", buf, 0xCu);
        }

        [(CBPeripheral *)self->_peripheral readValueForCharacteristic:v11];
        [(CBPeripheral *)self->_peripheral setNotifyValue:1 forCharacteristic:v11];
        v13 = [(CBCharacteristic *)v11 UUID];
        v14 = [v13 UUIDString];
        v15 = [v14 length];

        if (v15 && ([(CBCharacteristic *)v11 properties]& 8) != 0)
        {
          objc_storeStrong(&self->_writeCharacteristic, v11);
          v16 = _SCROD_LOG();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            writeCharacteristic = self->_writeCharacteristic;
            *buf = 138412290;
            v23 = writeCharacteristic;
            _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "Set write charactistic: %@", buf, 0xCu);
          }

          [(SCRODOTPadDriver *)self displayCanvas];
          goto LABEL_16;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:
}

@end