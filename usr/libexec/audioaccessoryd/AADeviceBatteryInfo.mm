@interface AADeviceBatteryInfo
- (BOOL)caseWithBudsChargingComplete;
- (BOOL)wasConnectedInLast:(double)a3;
- (NSArray)nonStaleBatteries;
- (void)updateWithNewInfo:(id)a3;
@end

@implementation AADeviceBatteryInfo

- (void)updateWithNewInfo:(id)a3
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [a3 batteries];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v10 + 1) + 8 * v8) copy];
        [(AADeviceBatteryInfo *)self setBatteryInMap:v9];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  v4 = [(AADeviceBatteryInfo *)self batteries];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 type] != 5 && (objc_msgSend(v9, "stale") & 1) == 0)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BOOL)wasConnectedInLast:(double)a3
{
  v5 = +[AAPairedDeviceDaemon sharedAAPairedDeviceDaemon];
  v6 = [(AADeviceBatteryInfo *)self identifier];
  v7 = [v5 deviceWithIdentifier:v6];

  if (v7)
  {
    v8 = [NSDate dateWithTimeIntervalSinceNow:-a3];
    v9 = [v7 lastSeenConnectedTime];
    if (v9)
    {
      v10 = [v8 earlierDate:v9];
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
  v3 = [(AADeviceBatteryInfo *)self batteryCase];

  if (v3)
  {
    v4 = [(AADeviceBatteryInfo *)self batteryCase];
    v5 = [v4 charging];

    if (!v5)
    {
      goto LABEL_12;
    }

    v6 = [(AADeviceBatteryInfo *)self batteryCase];
    v7 = [v6 fullyCharged];

    if (!v7)
    {
      goto LABEL_12;
    }

    v8 = [(AADeviceBatteryInfo *)self batteryLeft];

    LOBYTE(v3) = v8 != 0;
    if (v8)
    {
      v9 = [(AADeviceBatteryInfo *)self batteryLeft];
      v10 = [v9 charging];

      if (!v10)
      {
        goto LABEL_12;
      }

      v11 = [(AADeviceBatteryInfo *)self batteryLeft];
      v12 = [v11 fullyCharged];

      if (!v12)
      {
        goto LABEL_12;
      }
    }

    v13 = [(AADeviceBatteryInfo *)self batteryRight];

    if (!v13)
    {
      return v3;
    }

    v14 = [(AADeviceBatteryInfo *)self batteryRight];
    v15 = [v14 charging];

    if (!v15)
    {
LABEL_12:
      LOBYTE(v3) = 0;
      return v3;
    }

    v16 = [(AADeviceBatteryInfo *)self batteryRight];
    LODWORD(v3) = [v16 fullyCharged];

    if (v3)
    {
      LOBYTE(v3) = 1;
    }
  }

  return v3;
}

@end