@interface SCROGenericHIDDriver
- (BOOL)_HIDSetMainCells:(const char *)a3 length:(int64_t)a4;
- (BOOL)_HIDSetMainCells_Legacy:(const char *)a3 length:(int64_t)a4;
- (BOOL)setMainCells:(const char *)a3 length:(int64_t)a4;
- (BOOL)unloadDriver;
- (SCROGenericHIDDriver)init;
- (id)_HIDGetInputEvents;
- (id)genericControlRankComparator;
- (id)getInputEvents;
- (id)getRevelantHIDElementsFromRoot;
- (id)rowSizeArray;
- (int)_HIDLoadDriverWithIOElement:(id)a3;
- (int)brailleInputMode;
- (int)loadDriverWithIOElement:(id)a3;
- (int64_t)_calculateMinRowSize:(id)a3;
- (int64_t)_mainSizeLegacy;
- (int64_t)mainSize;
- (int64_t)rowSize;
- (unsigned)_eventForGenericControl:(__IOHIDValue *)a3;
- (unsigned)_eventForScreenReaderControl:(__IOHIDValue *)a3;
- (void)_buildRankingTable;
- (void)_flushCells:(const char *)a3 withLength:(int64_t)a4 forElement:(__IOHIDElement *)a5;
- (void)_parseElementsForUsages:(id)a3 intoArray:(id)a4;
- (void)_parseRowConfiguration;
- (void)dealloc;
- (void)setMainCellsArray:(id)a3;
@end

@implementation SCROGenericHIDDriver

- (SCROGenericHIDDriver)init
{
  v13.receiver = self;
  v13.super_class = SCROGenericHIDDriver;
  v2 = [(SCROGenericHIDDriver *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->_isDriverLoaded = 0;
    p_setMainCellsSEL = &v2->_setMainCellsSEL;
    if ("_HIDSetMainCells:length:")
    {
      *p_setMainCellsSEL = "_HIDSetMainCells:length:";
      v5 = "_HIDSetMainCells:length:";
    }

    else
    {
      v5 = 0;
      *p_setMainCellsSEL = 0;
    }

    v2->_setMainCellsIMP = [(SCROGenericHIDDriver *)v2 methodForSelector:v5];
    p_getInputEventsSEL = &v3->_getInputEventsSEL;
    if ("_HIDGetInputEvents")
    {
      *p_getInputEventsSEL = "_HIDGetInputEvents";
      v7 = "_HIDGetInputEvents";
    }

    else
    {
      v7 = 0;
      *p_getInputEventsSEL = 0;
    }

    v3->_getInputEventsIMP = [(SCROGenericHIDDriver *)v3 methodForSelector:v7];
    v8 = +[NSMutableArray array];
    enqueuedEvents = v3->_enqueuedEvents;
    v3->_enqueuedEvents = v8;

    v10 = objc_alloc_init(NSLock);
    eventLock = v3->_eventLock;
    v3->_eventLock = v10;

    v3->_numberOfBrailleCells = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v3;
}

- (void)dealloc
{
  [(SCROGenericHIDDriver *)self unloadDriver];
  v3.receiver = self;
  v3.super_class = SCROGenericHIDDriver;
  [(SCROGenericHIDDriver *)&v3 dealloc];
}

- (int)loadDriverWithIOElement:(id)a3
{
  v4 = a3;
  v5 = [v4 transport];
  v6 = _SCROD_LOG();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [NSNumber numberWithUnsignedInt:v5];
    v10 = 138412546;
    v11 = v4;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Loading IO element %@ - transport: %@", &v10, 0x16u);
  }

  if (v5 == 8 || v5 == 4)
  {
    if ([v4 conformsToProtocol:&OBJC_PROTOCOL___SCROIOHIDElementProtocol])
    {
      v8 = [(SCROGenericHIDDriver *)self _HIDLoadDriverWithIOElement:v4];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 3;
  }

  return v8;
}

- (BOOL)unloadDriver
{
  v3 = _SCROD_LOG();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Unloading GenericHID Braille Driver", v6, 2u);
  }

  self->_hasBeenUnloaded = 1;
  if (self->_isDriverLoaded)
  {
    self->_isDriverLoaded = 0;
    hidDevice = self->_hidDevice;
    if (hidDevice)
    {
      IOHIDDeviceClose(hidDevice, 0);
      CFRelease(self->_hidDevice);
      self->_hidDevice = 0;
    }

    if (self->_ioSystemFilterClient)
    {
      IOHIDEventSystemClientUnregisterEventFilterCallback();
    }
  }

  return 1;
}

- (int)brailleInputMode
{
  if (self->_keyboardInputSupported)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (int64_t)_mainSizeLegacy
{
  v2 = IOHIDDeviceCopyMatchingElements(self->_hidDevice, &off_8C00, 0);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = v2;
  ReportCount = [(__CFArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (ReportCount)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != ReportCount; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if (!IOHIDElementIsArray(v7))
        {
          ReportCount = IOHIDElementGetReportCount(v7);
          goto LABEL_11;
        }
      }

      ReportCount = [(__CFArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (ReportCount)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return ReportCount;
}

- (int64_t)mainSize
{
  if (self->_isLegacy)
  {

    return [(SCROGenericHIDDriver *)self _mainSizeLegacy];
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v2 = [&off_8CA0 countByEnumeratingWithState:&v26 objects:v33 count:16];
    if (v2)
    {
      v3 = v2;
      v4 = 0;
      v20 = *v27;
      do
      {
        for (i = 0; i != v3; i = i + 1)
        {
          if (*v27 != v20)
          {
            objc_enumerationMutation(&off_8CA0);
          }

          v6 = *(*(&v26 + 1) + 8 * i);
          v31[0] = @"UsagePage";
          v31[1] = @"Usage";
          v32[0] = &off_85C0;
          v32[1] = v6;
          v7 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:2, v20];
          v8 = IOHIDDeviceCopyMatchingElements(self->_hidDevice, v7, 0);
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v9 = v8;
          v10 = [(__CFArray *)v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
          if (v10)
          {
            v11 = v10;
            ReportCount = 0;
            v13 = *v23;
            do
            {
              for (j = 0; j != v11; j = j + 1)
              {
                if (*v23 != v13)
                {
                  objc_enumerationMutation(v9);
                }

                v15 = *(*(&v22 + 1) + 8 * j);
                if (!IOHIDElementIsArray(v15) && ReportCount-- < 1)
                {
                  ReportCount = IOHIDElementGetReportCount(v15);
                  v4 += IOHIDElementGetReportCount(v15);
                }
              }

              v11 = [(__CFArray *)v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
            }

            while (v11);
          }
        }

        v3 = [&off_8CA0 countByEnumeratingWithState:&v26 objects:v33 count:16];
      }

      while (v3);
    }

    else
    {
      v4 = 0;
    }

    numberOfBrailleCells = self->_numberOfBrailleCells;
    if (v4 >= numberOfBrailleCells)
    {
      v18 = self->_numberOfBrailleCells;
    }

    else
    {
      v18 = v4;
    }

    if (numberOfBrailleCells == 0x7FFFFFFFFFFFFFFFLL)
    {
      return v4;
    }

    else
    {
      return v18;
    }
  }
}

- (id)getInputEvents
{
  if (self->_getInputEventsSEL)
  {
    getInputEventsSEL = self->_getInputEventsSEL;
  }

  return (self->_getInputEventsIMP)();
}

- (BOOL)setMainCells:(const char *)a3 length:(int64_t)a4
{
  if (self->_setMainCellsSEL)
  {
    setMainCellsSEL = self->_setMainCellsSEL;
  }

  return (self->_setMainCellsIMP)();
}

- (int)_HIDLoadDriverWithIOElement:(id)a3
{
  v4 = a3;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 bundleIdentifier];
  if (v6)
  {
    if (self->_isDriverLoaded)
    {
      [(SCROGenericHIDDriver *)self unloadDriver];
    }

    v7 = [v4 hidDevice];
    if (v7)
    {
      self->_hidDevice = v7;
      device = v7;
      v8 = IOHIDDeviceGetProperty(v7, @"DeviceUsagePairs");
      -[SCROGenericHIDDriver setVendorId:](self, "setVendorId:", [v4 vendorId]);
      -[SCROGenericHIDDriver setProductId:](self, "setProductId:", [v4 productId]);
      v9 = _SCROD_LOG();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [NSNumber numberWithUnsignedInt:[(SCROGenericHIDDriver *)self vendorId]];
        v11 = [NSNumber numberWithUnsignedInt:[(SCROGenericHIDDriver *)self productId]];
        [v4 manufacturerName];
        v13 = v12 = self;
        v14 = [v4 productName];
        *buf = 138413058;
        v60 = v10;
        v61 = 2112;
        v62 = v11;
        v63 = 2112;
        v64 = v13;
        v65 = 2112;
        v66 = v14;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "HID braille display: VendorID %@ and product id: %@, maker %@, product %@", buf, 0x2Au);

        self = v12;
      }

      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v15 = v8;
      v16 = [v15 countByEnumeratingWithState:&v53 objects:v58 count:16];
      if (v16)
      {
        v17 = v16;
        v48 = self;
        v44 = v6;
        v45 = v5;
        v46 = v4;
        v18 = 0;
        v19 = *v54;
        do
        {
          v20 = v15;
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v54 != v19)
            {
              objc_enumerationMutation(v20);
            }

            v22 = *(*(&v53 + 1) + 8 * i);
            v23 = [v22 objectForKeyedSubscript:@"DeviceUsagePage"];
            v24 = [v22 objectForKeyedSubscript:@"DeviceUsage"];
            if ([v23 isEqual:&off_85C0])
            {
              if ([v24 isEqual:&off_8620])
              {
                v48->_isLegacy = 1;
              }

              if (([v24 isEqual:&off_8620] & 1) != 0 || objc_msgSend(v24, "isEqual:", &off_8638))
              {
                v18 = 1;
                v48->_keyboardInputSupported = 1;
              }
            }
          }

          v15 = v20;
          v17 = [v20 countByEnumeratingWithState:&v53 objects:v58 count:16];
        }

        while (v17);

        v4 = v46;
        if (v18)
        {
          v25 = IOHIDDeviceOpen(device, 0);
          if (v25)
          {
            v26 = v25;
            v27 = _SCROD_LOG();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              LODWORD(v60) = v26 & 0x3FFF;
              _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "Failed to load GenericHID braille driver because we failed to open the HIDDevice: %d", buf, 8u);
            }

            v28 = 1;
          }

          else
          {
            [(SCROGenericHIDDriver *)v48 _buildRankingTable];
            Current = CFRunLoopGetCurrent();
            IOHIDDeviceScheduleWithRunLoop(device, Current, kCFRunLoopDefaultMode);
            IOHIDDeviceRegisterRemovalCallback(device, sub_1F60, v48);
            IOHIDDeviceRegisterInputValueCallback(v48->_hidDevice, sub_2048, v48);
            v48->_hidDevice = device;
            CFRetain(device);
            v48->_isDriverLoaded = 1;
            v32 = IOHIDDeviceCopyMatchingElements(v48->_hidDevice, &off_8C28, 0);
            v49 = 0u;
            v50 = 0u;
            v51 = 0u;
            v52 = 0u;
            v27 = v32;
            v33 = [v27 countByEnumeratingWithState:&v49 objects:v57 count:16];
            if (v33)
            {
              v34 = v33;
              v35 = *v50;
              do
              {
                for (j = 0; j != v34; j = j + 1)
                {
                  if (*v50 != v35)
                  {
                    objc_enumerationMutation(v27);
                  }

                  v37 = *(*(&v49 + 1) + 8 * j);
                  if (IOHIDElementGetReportSize(v37) == 128)
                  {
                    v38 = mach_absolute_time();
                    v39 = IOHIDValueCreateWithBytes(0, v37, v38, byte_CF00, 16);
                    if (v39)
                    {
                      v40 = v39;
                      v41 = _SCROD_LOG();
                      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412290;
                        v60 = v40;
                        _os_log_impl(&dword_0, v41, OS_LOG_TYPE_DEFAULT, "Reported back screen reader: %@", buf, 0xCu);
                      }

                      IOHIDDeviceSetValue(v48->_hidDevice, v37, v40);
                      CFRelease(v40);
                    }
                  }
                }

                v34 = [v27 countByEnumeratingWithState:&v49 objects:v57 count:16];
              }

              while (v34);
            }

            [(SCROGenericHIDDriver *)v48 _parseRowConfiguration];
            v48->_ioSystemFilterClient = IOHIDEventSystemClientCreate();
            CFRunLoopGetCurrent();
            IOHIDEventSystemClientScheduleWithRunLoop();
            ioSystemFilterClient = v48->_ioSystemFilterClient;
            IOHIDEventSystemClientRegisterEventFilterCallbackWithPriority();
            v43 = _SCROD_LOG();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v60 = v15;
              _os_log_impl(&dword_0, v43, OS_LOG_TYPE_DEFAULT, "Successful load generic hid: %@", buf, 0xCu);
            }

            v28 = 0;
            v5 = v45;
            v4 = v46;
            v6 = v44;
          }

LABEL_35:

          goto LABEL_36;
        }
      }

      else
      {
      }

      v27 = _SCROD_LOG();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v60 = v15;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "Could not match usage for generic hid: %@", buf, 0xCu);
      }

      v28 = 3;
      goto LABEL_35;
    }

    v15 = _SCROD_LOG();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v29 = "Failed to load GenericHID braille driver because there is no hidDevice";
      goto LABEL_29;
    }
  }

  else
  {
    v15 = _SCROD_LOG();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v29 = "Failed to load GenericHID braille driver because we have no bundle identifier";
LABEL_29:
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, v29, buf, 2u);
    }
  }

  v28 = 1;
LABEL_36:

  return v28;
}

- (BOOL)_HIDSetMainCells_Legacy:(const char *)a3 length:(int64_t)a4
{
  v6 = IOHIDDeviceCopyMatchingElements(self->_hidDevice, &off_8C50, 0);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = v6;
  v8 = [(__CFArray *)v7 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v30;
    do
    {
      v12 = 0;
      do
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v29 + 1) + 8 * v12);
        if (!IOHIDElementIsArray(v13) && v10-- < 1)
        {
          ReportCount = IOHIDElementGetReportCount(v13);
          LogicalMin = IOHIDElementGetLogicalMin(v13);
          v17 = IOHIDElementGetLogicalMax(v13) - LogicalMin;
          if (v17 <= 254)
          {
            v18 = _SCROD_LOG();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              v34 = v17;
              _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Braille display does not support 8 dots, has maximum range of - %ld", buf, 0xCu);
            }
          }

          if (IOHIDElementGetReportCount(v13) < a4)
          {
            v19 = _SCROD_LOG();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              v20 = IOHIDElementGetReportCount(v13);
              *buf = 134218240;
              v34 = a4;
              v35 = 2048;
              v36 = v20;
              _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "Braille display does not support writing %ld cells -- truncating to %ld", buf, 0x16u);
            }
          }

          v10 = ReportCount;
          v21 = mach_absolute_time();
          v22 = IOHIDValueCreateWithBytes(0, v13, v21, a3, a4);
          if (v22)
          {
            v23 = v22;
            v24 = IOHIDDeviceSetValue(self->_hidDevice, v13, v22);
            CFRelease(v23);
            if (v24)
            {
              v25 = _SCROD_LOG();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "Failed to set value for display cell element", buf, 2u);
              }
            }
          }
        }

        v12 = v12 + 1;
      }

      while (v9 != v12);
      v26 = [(__CFArray *)v7 countByEnumeratingWithState:&v29 objects:v37 count:16];
      v9 = v26;
    }

    while (v26);
  }

  return 1;
}

- (BOOL)_HIDSetMainCells:(const char *)a3 length:(int64_t)a4
{
  if (self->_isLegacy)
  {

    return [SCROGenericHIDDriver _HIDSetMainCells_Legacy:"_HIDSetMainCells_Legacy:length:" length:?];
  }

  else
  {
    if (![(SCROGenericHIDDriver *)self shouldUseMultiRow])
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v30 = [&off_8CB8 countByEnumeratingWithState:&v38 objects:v49 count:16];
      if (v30)
      {
        v29 = *v39;
        do
        {
          v6 = 0;
          do
          {
            if (*v39 != v29)
            {
              objc_enumerationMutation(&off_8CB8);
            }

            v32 = v6;
            v7 = *(*(&v38 + 1) + 8 * v6);
            v47[0] = @"UsagePage";
            v47[1] = @"Usage";
            v48[0] = &off_85C0;
            v48[1] = v7;
            v31 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:2, v29];
            v8 = IOHIDDeviceCopyMatchingElements(self->_hidDevice, v31, 0);
            v34 = 0u;
            v35 = 0u;
            v36 = 0u;
            v37 = 0u;
            v9 = v8;
            v10 = [(__CFArray *)v9 countByEnumeratingWithState:&v34 objects:v46 count:16];
            if (v10)
            {
              v11 = v10;
              v12 = 0;
              v13 = *v35;
              do
              {
                for (i = 0; i != v11; i = i + 1)
                {
                  if (*v35 != v13)
                  {
                    objc_enumerationMutation(v9);
                  }

                  v15 = *(*(&v34 + 1) + 8 * i);
                  if (!IOHIDElementIsArray(v15) && v12-- < 1)
                  {
                    ReportCount = IOHIDElementGetReportCount(v15);
                    LogicalMin = IOHIDElementGetLogicalMin(v15);
                    v19 = IOHIDElementGetLogicalMax(v15) - LogicalMin;
                    if (v19 <= 254)
                    {
                      v20 = _SCROD_LOG();
                      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 134217984;
                        v43 = v19;
                        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "Braille display does not support 8 dots, has maximum range of - %ld", buf, 0xCu);
                      }
                    }

                    v21 = IOHIDElementGetReportCount(v15);
                    v22 = self;
                    numberOfBrailleCells = self->_numberOfBrailleCells;
                    if (numberOfBrailleCells >= v21)
                    {
                      v24 = v21;
                    }

                    else
                    {
                      v24 = self->_numberOfBrailleCells;
                    }

                    v25 = v24 & ~(v24 >> 63);
                    if (numberOfBrailleCells == 0x7FFFFFFFFFFFFFFFLL)
                    {
                      v26 = v21;
                    }

                    else
                    {
                      v26 = v25;
                    }

                    if (a4 <= v26)
                    {
                      v26 = a4;
                    }

                    else
                    {
                      v27 = _SCROD_LOG();
                      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 134218240;
                        v43 = a4;
                        v44 = 2048;
                        v45 = v26;
                        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "Braille display does not support writing %ld cells -- truncating to %ld", buf, 0x16u);
                      }

                      a4 = v26;
                      v22 = self;
                    }

                    v12 = ReportCount;
                    [(SCROGenericHIDDriver *)v22 _flushCells:a3 withLength:v26 forElement:v15];
                    a3 += v26;
                  }
                }

                v11 = [(__CFArray *)v9 countByEnumeratingWithState:&v34 objects:v46 count:16];
              }

              while (v11);
            }

            v6 = v32 + 1;
          }

          while ((v32 + 1) != v30);
          v30 = [&off_8CB8 countByEnumeratingWithState:&v38 objects:v49 count:16];
        }

        while (v30);
      }
    }

    return 1;
  }
}

- (id)_HIDGetInputEvents
{
  [(NSLock *)self->_eventLock lock];
  v3 = [(NSMutableArray *)self->_enqueuedEvents copy];
  [(NSMutableArray *)self->_enqueuedEvents removeAllObjects];
  [(NSLock *)self->_eventLock unlock];

  return v3;
}

- (unsigned)_eventForScreenReaderControl:(__IOHIDValue *)a3
{
  Element = IOHIDValueGetElement(a3);
  Usage = IOHIDElementGetUsage(Element);
  if (!Usage)
  {
    return 0;
  }

  if (IOHIDValueGetIntegerValue(a3) <= 0)
  {
    v6 = 6;
  }

  else
  {
    v6 = 65542;
  }

  return v6 | (16 * Usage) | 0x3000;
}

- (unsigned)_eventForGenericControl:(__IOHIDValue *)a3
{
  Element = IOHIDValueGetElement(a3);
  Cookie = IOHIDElementGetCookie(Element);
  if (qword_CF78 != -1)
  {
    sub_4E08();
  }

  genericControlRanking = self->_genericControlRanking;
  v8 = [NSNumber numberWithInt:Cookie];
  v9 = [(NSMutableDictionary *)genericControlRanking objectForKey:v8];

  if ([v9 controlType] == &dword_0 + 1)
  {
    v10 = 0x40000;
    v11 = &off_8CD0;
  }

  else if ([v9 controlType] == &dword_0 + 2)
  {
    v10 = 393216;
    v11 = &off_8CE8;
  }

  else
  {
    if ([v9 controlType] || (v16 = objc_msgSend(v9, "finalRank"), v11 = &off_8D00, objc_msgSend(&off_8D00, "count") <= v16))
    {
      v15 = 0;
      goto LABEL_15;
    }

    v10 = 0x20000;
  }

  if (IOHIDValueGetIntegerValue(a3) <= 0)
  {
    v12 = 6;
  }

  else
  {
    v12 = 65542;
  }

  v13 = [v9 finalRank];
  v14 = v12 | (16 * sub_2EEC(v13, v13, v11)) & 0xF9FFF0;
  v15 = (v14 | ([v9 finalRank] << 24)) + v10 + 0x1000000;
LABEL_15:

  return v15;
}

- (void)_buildRankingTable
{
  if (!self->_genericControlRanking)
  {
    v3 = +[NSMutableDictionary dictionary];
    genericControlRanking = self->_genericControlRanking;
    self->_genericControlRanking = v3;

    v75 = +[NSMutableArray array];
    v71 = self;
    [(SCROGenericHIDDriver *)self getRevelantHIDElementsFromRoot];
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v74 = v90 = 0u;
    obj = [v74 allKeys];
    v76 = [obj countByEnumeratingWithState:&v87 objects:v92 count:16];
    if (v76)
    {
      v73 = *v88;
      do
      {
        for (i = 0; i != v76; i = i + 1)
        {
          if (*v88 != v73)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v87 + 1) + 8 * i);
          v7 = [v74 objectForKey:v6];
          Usage = IOHIDElementGetUsage(v7);
          UsagePage = IOHIDElementGetUsagePage(v7);
          v10 = objc_alloc_init(SCROGenericHIDControlInfo);
          [(SCROGenericHIDControlInfo *)v10 setUsage:Usage];
          [(SCROGenericHIDControlInfo *)v10 setUsagePage:UsagePage];
          -[SCROGenericHIDControlInfo setCookie:](v10, "setCookie:", [v6 unsignedIntegerValue]);
          Parent = IOHIDElementGetParent(v7);
          if (Parent)
          {
            v12 = Parent;
            v77 = UsagePage;
            v78 = Usage;
            v79 = i;
            v13 = 0;
            v14 = 0;
            v81 = Usage - 540;
            do
            {
              if (IOHIDElementGetType(v12) == kIOHIDElementTypeCollection)
              {
                if (!v14)
                {
                  v14 = v12;
                }

                v15 = IOHIDElementGetUsage(v12);
                v16 = IOHIDElementGetUsagePage(v12);
                if (v16 == 10)
                {
                  if (![(SCROGenericHIDControlInfo *)v10 instanceNumber])
                  {
                    [(SCROGenericHIDControlInfo *)v10 setInstanceNumber:v15];
                  }
                }

                else if (v16 == 65 && ![(SCROGenericHIDControlInfo *)v10 collectionUsage])
                {
                  [(SCROGenericHIDControlInfo *)v10 setCollectionUsage:v15];
                }

                if (v12 == v14 && v81 <= 2)
                {
                  v17 = IOHIDElementGetChildren(v12);
                  v83 = 0u;
                  v84 = 0u;
                  v85 = 0u;
                  v86 = 0u;
                  v18 = [v17 countByEnumeratingWithState:&v83 objects:v91 count:16];
                  if (v18)
                  {
                    v19 = v18;
                    v20 = *v84;
                    do
                    {
                      for (j = 0; j != v19; j = j + 1)
                      {
                        if (*v84 != v20)
                        {
                          objc_enumerationMutation(v17);
                        }

                        v22 = *(*(&v83 + 1) + 8 * j);
                        v23 = IOHIDElementGetUsage(v22);
                        v24 = IOHIDElementGetUsagePage(v22);
                        v26 = v23 == 542 && v24 == 65;
                        v13 |= v26;
                      }

                      v19 = [v17 countByEnumeratingWithState:&v83 objects:v91 count:16];
                    }

                    while (v19);
                  }

                  v14 = v12;
                }
              }

              v12 = IOHIDElementGetParent(v12);
            }

            while (v12);
            v27 = v13 ^ 1;
            i = v79;
            LODWORD(UsagePage) = v77;
            LODWORD(Usage) = v78;
          }

          else
          {
            v27 = 1;
          }

          if (UsagePage == 65)
          {
            v28 = ((Usage - 540) < 3) & v27;
            if ((Usage - 528) >= 0xA)
            {
              v29 = v28;
            }

            else
            {
              v29 = 2;
            }

            [(SCROGenericHIDControlInfo *)v10 setControlType:v29];
          }

          [v75 addObject:v10];
        }

        v76 = [obj countByEnumeratingWithState:&v87 objects:v92 count:16];
      }

      while (v76);
    }

    v30 = [v75 indexesOfObjectsPassingTest:&stru_8348];
    v31 = [v75 indexesOfObjectsPassingTest:&stru_8368];
    v32 = [v75 indexesOfObjectsPassingTest:&stru_8388];
    v82 = v30;
    v33 = [v75 objectsAtIndexes:v30];
    v34 = [v33 mutableCopy];

    v80 = v31;
    v35 = [v75 objectsAtIndexes:v31];
    v36 = [v35 mutableCopy];

    v37 = [v75 objectsAtIndexes:v32];
    v38 = [v37 mutableCopy];

    v39 = [(SCROGenericHIDDriver *)v71 genericControlRankComparator];
    [v34 sortUsingComparator:v39];

    v40 = [(SCROGenericHIDDriver *)v71 genericControlRankComparator];
    [v36 sortUsingComparator:v40];

    v41 = [(SCROGenericHIDDriver *)v71 genericControlRankComparator];
    [v38 sortUsingComparator:v41];

    if ([v34 count])
    {
      v42 = 0;
      v43 = 1;
      do
      {
        v44 = [v34 count];
        v45 = [v34 objectAtIndexedSubscript:v42];
        [v45 setFinalRank:v44 + ~v42];

        v46 = v71->_genericControlRanking;
        v47 = [v34 objectAtIndexedSubscript:v42];
        v48 = [v34 objectAtIndexedSubscript:v42];
        v49 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v48 cookie]);
        [(NSMutableDictionary *)v46 setObject:v47 forKey:v49];

        v42 = v43;
        v50 = [v34 count] > v43++;
      }

      while (v50);
    }

    if ([v36 count])
    {
      v51 = 0;
      v52 = 1;
      do
      {
        v53 = [v36 count];
        v54 = [v36 objectAtIndexedSubscript:v51];
        [v54 setFinalRank:v53 + ~v51];

        v55 = v71->_genericControlRanking;
        v56 = [v36 objectAtIndexedSubscript:v51];
        v57 = [v36 objectAtIndexedSubscript:v51];
        v58 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v57 cookie]);
        [(NSMutableDictionary *)v55 setObject:v56 forKey:v58];

        v51 = v52;
        v50 = [v36 count] > v52++;
      }

      while (v50);
    }

    if ([v38 count])
    {
      v59 = 0;
      v60 = 1;
      do
      {
        v61 = [v38 count] + ~v59;
        v62 = [v38 objectAtIndexedSubscript:v59];
        v63 = [v62 usage];

        if (v63 - 533 >= 5)
        {
          v64 = 0;
        }

        else
        {
          v64 = v63 - 533;
        }

        if (v63 - 528 <= 4)
        {
          v65 = v63 - 528;
        }

        else
        {
          v65 = v64;
        }

        v66 = [v38 objectAtIndexedSubscript:v59];
        [v66 setFinalRank:5 * (v61 / 5) + v65];

        v67 = v71->_genericControlRanking;
        v68 = [v38 objectAtIndexedSubscript:v59];
        v69 = [v38 objectAtIndexedSubscript:v59];
        v70 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v69 cookie]);
        [(NSMutableDictionary *)v67 setObject:v68 forKey:v70];

        v59 = v60;
        v50 = [v38 count] > v60++;
      }

      while (v50);
    }
  }
}

- (id)getRevelantHIDElementsFromRoot
{
  v2 = IOHIDDeviceCopyMatchingElements(self->_hidDevice, &off_8C78, 0);
  v3 = +[NSMutableDictionary dictionary];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v2;
  v22 = [(__CFArray *)obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v22)
  {
    v21 = *v29;
    do
    {
      v4 = 0;
      do
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = v4;
        v5 = *(*(&v28 + 1) + 8 * v4);
        v6 = +[NSMutableArray array];
        [v6 addObject:v5];
        while ([v6 count])
        {
          v7 = [v6 firstObject];
          [v6 removeObjectAtIndex:0];
          v8 = IOHIDElementGetChildren(v7);
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v9 = [v8 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v25;
            do
            {
              for (i = 0; i != v10; i = i + 1)
              {
                if (*v25 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                v13 = *(*(&v24 + 1) + 8 * i);
                Usage = IOHIDElementGetUsage(v13);
                UsagePage = IOHIDElementGetUsagePage(v13);
                if (Usage - 528 < 0xF && UsagePage == 65 || UsagePage == 9)
                {
                  v18 = [NSNumber numberWithInt:IOHIDElementGetCookie(v13)];
                  [v3 setObject:v13 forKey:v18];
                }
              }

              v10 = [v8 countByEnumeratingWithState:&v24 objects:v32 count:16];
            }

            while (v10);
          }

          [v6 addObjectsFromArray:v8];
        }

        v4 = v23 + 1;
      }

      while ((v23 + 1) != v22);
      v22 = [(__CFArray *)obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v22);
  }

  return v3;
}

- (id)genericControlRankComparator
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_3B04;
  v5[3] = &unk_83B0;
  v5[4] = self;
  v2 = objc_retainBlock(v5);
  v3 = objc_retainBlock(v2);

  return v3;
}

- (void)_parseRowConfiguration
{
  v3 = objc_alloc_init(NSMutableArray);
  [(SCROGenericHIDDriver *)self _parseElementsForUsages:&off_8D78 intoArray:v3];
  physicalMainSizeArray = self->_physicalMainSizeArray;
  self->_physicalMainSizeArray = v3;
  v5 = v3;

  self->_rowCount = [(NSArray *)self->_physicalMainSizeArray count];
  v6 = [(SCROGenericHIDDriver *)self _calculateMinRowSize:v5];

  self->_physicalRowSize = v6;
}

- (void)_parseElementsForUsages:(id)a3 intoArray:(id)a4
{
  v5 = a3;
  v6 = a4;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v22 = [v5 countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v22)
  {
    v20 = *v30;
    do
    {
      v7 = 0;
      do
      {
        if (*v30 != v20)
        {
          objc_enumerationMutation(v5);
        }

        v24 = v7;
        v8 = *(*(&v29 + 1) + 8 * v7);
        v36[0] = @"UsagePage";
        v36[1] = @"Usage";
        v37[0] = &off_85C0;
        v37[1] = v8;
        v23 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:2];
        v9 = IOHIDDeviceCopyMatchingElements(self->_hidDevice, v23, 0);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v10 = v9;
        v11 = [(__CFArray *)v10 countByEnumeratingWithState:&v25 objects:v35 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v26;
          do
          {
            for (i = 0; i != v12; i = i + 1)
            {
              if (*v26 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v25 + 1) + 8 * i);
              LogicalMin = IOHIDElementGetLogicalMin(v15);
              v17 = IOHIDElementGetLogicalMax(v15) - LogicalMin;
              if (v17 <= 254)
              {
                v18 = _SCROD_LOG();
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 134217984;
                  v34 = v17;
                  _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "A row of Braille display does not support 8 dots, has maximum range of - %ld", buf, 0xCu);
                }
              }

              v19 = [NSNumber numberWithUnsignedInt:IOHIDElementGetReportCount(v15)];
              [v6 addObject:v19];
            }

            v12 = [(__CFArray *)v10 countByEnumeratingWithState:&v25 objects:v35 count:16];
          }

          while (v12);
        }

        v7 = v24 + 1;
      }

      while ((v24 + 1) != v22);
      v22 = [v5 countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v22);
  }
}

- (int64_t)_calculateMinRowSize:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = [v3 firstObject];
    v5 = [v4 integerValue];

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v13 + 1) + 8 * v10) integerValue];
          if (v11 < v5)
          {
            v5 = v11;
          }

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)rowSizeArray
{
  if (self->_numberOfBrailleCells == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = [(NSArray *)self->_physicalMainSizeArray copy];
  }

  else
  {
    v3 = objc_alloc_init(NSMutableArray);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = self->_physicalMainSizeArray;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v13 + 1) + 8 * i) integerValue];
          numberOfBrailleCells = self->_numberOfBrailleCells;
          if (v9 < numberOfBrailleCells)
          {
            numberOfBrailleCells = v9;
          }

          v11 = [NSNumber numberWithInteger:numberOfBrailleCells & ~(numberOfBrailleCells >> 63)];
          [v3 addObject:v11];
        }

        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }
  }

  return v3;
}

- (int64_t)rowSize
{
  numberOfBrailleCells = self->_numberOfBrailleCells;
  if (self->_physicalRowSize >= numberOfBrailleCells)
  {
    physicalRowSize = self->_numberOfBrailleCells;
  }

  else
  {
    physicalRowSize = self->_physicalRowSize;
  }

  v4 = physicalRowSize & ~(physicalRowSize >> 63);
  if (numberOfBrailleCells == 0x7FFFFFFFFFFFFFFFLL)
  {
    return self->_physicalRowSize;
  }

  else
  {
    return v4;
  }
}

- (void)setMainCellsArray:(id)a3
{
  v28 = a3;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v24 = [&off_8D90 countByEnumeratingWithState:&v35 objects:v46 count:16];
  if (v24)
  {
    v4 = 0;
    v23 = *v36;
    v5 = kSCROBrailleUnicodeCharacterBase;
    do
    {
      v6 = 0;
      do
      {
        if (*v36 != v23)
        {
          objc_enumerationMutation(&off_8D90);
        }

        v26 = v6;
        v7 = *(*(&v35 + 1) + 8 * v6);
        v44[0] = @"UsagePage";
        v44[1] = @"Usage";
        v45[0] = &off_85C0;
        v45[1] = v7;
        v25 = [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:2];
        v8 = IOHIDDeviceCopyMatchingElements(self->_hidDevice, v25, 0);
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        obj = v8;
        v30 = [(__CFArray *)obj countByEnumeratingWithState:&v31 objects:v43 count:16];
        if (v30)
        {
          v29 = *v32;
          while (2)
          {
            for (i = 0; i != v30; i = i + 1)
            {
              if (*v32 != v29)
              {
                objc_enumerationMutation(obj);
              }

              v10 = *(*(&v31 + 1) + 8 * i);
              if (v4 >= [(SCROGenericHIDDriver *)self rowCount])
              {
                v20 = _SCROD_LOG();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                {
                  v21 = [NSNumber numberWithInteger:[(SCROGenericHIDDriver *)self rowCount]];
                  *buf = 138412290;
                  v40 = v21;
                  _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "Found less number of rows than was initially reported (%@). Ignoring remaining elements", buf, 0xCu);
                }

                goto LABEL_29;
              }

              v11 = [v28 objectAtIndex:v4];
              v12 = [(SCROGenericHIDDriver *)self rowSize];
              ReportCount = IOHIDElementGetReportCount(v10);
              if (v12 > ReportCount)
              {
                v12 = ReportCount;
                v14 = _SCROD_LOG();
                if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
                {
                  v15 = [NSNumber numberWithInteger:v4];
                  v16 = [NSNumber numberWithInteger:v12];
                  *buf = 138412546;
                  v40 = v15;
                  v41 = 2112;
                  v42 = v16;
                  _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Found less number of cells in the row %@ than was initially reported. Truncating to %@", buf, 0x16u);
                }
              }

              v17 = malloc_type_calloc(v12, 1uLL, 0x100004077774924uLL);
              if (v12 >= 1)
              {
                for (j = 0; j != v12; ++j)
                {
                  if (j >= [v11 length])
                  {
                    LOBYTE(v19) = 0;
                  }

                  else
                  {
                    v19 = [v11 characterAtIndex:j] - v5;
                    if (v19 >= 0x100)
                    {
                      sub_4E1C(a2, self);
                    }
                  }

                  v17[j] = v19;
                }
              }

              [(SCROGenericHIDDriver *)self _flushCells:v17 withLength:v12 forElement:v10];
              free(v17);
              ++v4;
            }

            v30 = [(__CFArray *)obj countByEnumeratingWithState:&v31 objects:v43 count:16];
            if (v30)
            {
              continue;
            }

            break;
          }
        }

LABEL_29:

        v6 = v26 + 1;
      }

      while ((v26 + 1) != v24);
      v24 = [&off_8D90 countByEnumeratingWithState:&v35 objects:v46 count:16];
    }

    while (v24);
  }
}

- (void)_flushCells:(const char *)a3 withLength:(int64_t)a4 forElement:(__IOHIDElement *)a5
{
  keys = a5;
  v9 = mach_absolute_time();
  v11 = IOHIDValueCreateWithBytes(0, a5, v9, a3, a4);
  if (v11)
  {
    v10 = CFDictionaryCreate(kCFAllocatorDefault, &keys, &v11, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    IOHIDDeviceSetValueMultipleWithCallback(self->_hidDevice, v10, 5.0, sub_4CC8, 0);
    CFRelease(v10);
  }
}

@end