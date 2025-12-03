@interface AADeviceBatteryInfo
- (BOOL)caseWithBudsChargingComplete;
- (BOOL)wasConnectedInLast:(double)last;
- (NSArray)nonStaleBatteries;
- (void)updateWithNewInfo:(id)info;
@end

@implementation AADeviceBatteryInfo

- (void)updateWithNewInfo:(id)info
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  batteries = [info batteries];
  v5 = [batteries countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(batteries);
        }

        v9 = [*(*(&v10 + 1) + 8 * v8) copy];
        [(AADeviceBatteryInfo *)self setBatteryInMap:v9];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [batteries countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (NSArray)nonStaleBatteries
{
  v3 = objc_alloc_init(NSMutableArray);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  batteries = [(AADeviceBatteryInfo *)self batteries];
  v5 = [batteries countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(batteries);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 type] != 5 && (objc_msgSend(v9, "stale") & 1) == 0)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [batteries countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BOOL)wasConnectedInLast:(double)last
{
  v5 = +[AAPairedDeviceDaemon sharedAAPairedDeviceDaemon];
  identifier = [(AADeviceBatteryInfo *)self identifier];
  v7 = [v5 deviceWithIdentifier:identifier];

  if (v7)
  {
    v8 = [NSDate dateWithTimeIntervalSinceNow:-last];
    lastSeenConnectedTime = [v7 lastSeenConnectedTime];
    if (lastSeenConnectedTime)
    {
      v10 = [v8 earlierDate:lastSeenConnectedTime];
      v11 = v10 == v8;

      if (dword_1002F6620 <= 10 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
      {
        sub_1001DA2D8();
      }
    }

    else
    {
      sub_1001DA360(v7, &v13);
      v11 = v13;
    }
  }

  else
  {
    if (sub_1001DA3E4(self, &v14, &v15))
    {
      v11 = v15;
      goto LABEL_8;
    }

    v11 = 0;
    v8 = v14;
  }

LABEL_8:
  return v11;
}

- (BOOL)caseWithBudsChargingComplete
{
  batteryCase = [(AADeviceBatteryInfo *)self batteryCase];

  if (batteryCase)
  {
    batteryCase2 = [(AADeviceBatteryInfo *)self batteryCase];
    charging = [batteryCase2 charging];

    if (!charging)
    {
      goto LABEL_12;
    }

    batteryCase3 = [(AADeviceBatteryInfo *)self batteryCase];
    fullyCharged = [batteryCase3 fullyCharged];

    if (!fullyCharged)
    {
      goto LABEL_12;
    }

    batteryLeft = [(AADeviceBatteryInfo *)self batteryLeft];

    LOBYTE(batteryCase) = batteryLeft != 0;
    if (batteryLeft)
    {
      batteryLeft2 = [(AADeviceBatteryInfo *)self batteryLeft];
      charging2 = [batteryLeft2 charging];

      if (!charging2)
      {
        goto LABEL_12;
      }

      batteryLeft3 = [(AADeviceBatteryInfo *)self batteryLeft];
      fullyCharged2 = [batteryLeft3 fullyCharged];

      if (!fullyCharged2)
      {
        goto LABEL_12;
      }
    }

    batteryRight = [(AADeviceBatteryInfo *)self batteryRight];

    if (!batteryRight)
    {
      return batteryCase;
    }

    batteryRight2 = [(AADeviceBatteryInfo *)self batteryRight];
    charging3 = [batteryRight2 charging];

    if (!charging3)
    {
LABEL_12:
      LOBYTE(batteryCase) = 0;
      return batteryCase;
    }

    batteryRight3 = [(AADeviceBatteryInfo *)self batteryRight];
    LODWORD(batteryCase) = [batteryRight3 fullyCharged];

    if (batteryCase)
    {
      LOBYTE(batteryCase) = 1;
    }
  }

  return batteryCase;
}

@end