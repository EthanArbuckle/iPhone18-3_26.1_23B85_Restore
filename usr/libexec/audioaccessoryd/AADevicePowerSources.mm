@interface AADevicePowerSources
- (BOOL)_updateCaseLedInfoInDetails:(id)a3;
- (BOOL)_updateCombinedPartsInDetails:(id)a3;
- (OpaqueIOPSPowerSourceID)_createPowerSource;
- (OpaqueIOPSPowerSourceID)_powerSourceIDForType:(int64_t)a3;
- (id)_batteryTypeToIOPSPartIdentifier:(int64_t)a3;
- (id)_powerSourceDetailsForType:(int64_t)a3;
- (id)_updatedPowerSourceDetailsForBattery:(id)a3;
- (id)description;
- (void)_publishBatteryWithType:(int64_t)a3;
- (void)_publishPowerSourceForBatteryWithType:(int64_t)a3 details:(id)a4;
- (void)_publishToIOKit;
- (void)_releasePowerSource:(OpaqueIOPSPowerSourceID *)a3;
- (void)_setPowerSource:(OpaqueIOPSPowerSourceID *)a3 details:(id)a4;
- (void)_setPowerSourceDetails:(id)a3 forType:(int64_t)a4;
- (void)_setPowerSourceID:(OpaqueIOPSPowerSourceID *)a3 forType:(int64_t)a4;
- (void)_unpublishFromIOKit;
- (void)_unpublishPowerSourceForBatteryWithType:(int64_t)a3;
- (void)publishWithUpdatedBatteryInfo:(id)a3;
- (void)unpublish;
@end

@implementation AADevicePowerSources

- (id)description
{
  NSAppendPrintF();
  v3 = 0;
  if ([(AADevicePowerSources *)self powerSourceCaseID])
  {
    NSAppendPrintF();
    v4 = v3;

    v3 = v4;
  }

  if ([(AADevicePowerSources *)self powerSourceCombinedLeftRightID])
  {
    NSAppendPrintF();
    v5 = v3;

    v3 = v5;
  }

  if ([(AADevicePowerSources *)self powerSourceLeftID])
  {
    NSAppendPrintF();
    v6 = v3;

    v3 = v6;
  }

  if ([(AADevicePowerSources *)self powerSourceRightID])
  {
    NSAppendPrintF();
    v7 = v3;

    v3 = v7;
  }

  if ([(AADevicePowerSources *)self powerSourceMainID])
  {
    NSAppendPrintF();
    v8 = v3;

    v3 = v8;
  }

  NSAppendPrintF();
  v9 = v3;

  v10 = [(AADevicePowerSources *)self powerSourceCaseDetails];
  if (v10)
  {
    NSAppendPrintF();
    v11 = v9;

    v9 = v11;
  }

  v12 = [(AADevicePowerSources *)self powerSourceCombinedLeftRightDetails];
  if (v12)
  {
    NSAppendPrintF();
    v13 = v9;

    v9 = v13;
  }

  v14 = [(AADevicePowerSources *)self powerSourceLeftDetails];
  if (v14)
  {
    NSAppendPrintF();
    v15 = v9;

    v9 = v15;
  }

  v16 = [(AADevicePowerSources *)self powerSourceRightDetails];
  if (v16)
  {
    NSAppendPrintF();
    v17 = v9;

    v9 = v17;
  }

  v18 = [(AADevicePowerSources *)self powerSourceMainDetails];
  if (v18)
  {
    NSAppendPrintF();
    v19 = v9;

    v9 = v19;
  }

  return v9;
}

- (void)publishWithUpdatedBatteryInfo:(id)a3
{
  [(AADevicePowerSources *)self setBatteryInfo:a3];
  [(AADevicePowerSources *)self _publishToIOKit];
  if (dword_1002F6C58 <= 30 && (dword_1002F6C58 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F1288(self);
  }
}

- (void)unpublish
{
  [(AADevicePowerSources *)self setBatteryInfo:0];

  [(AADevicePowerSources *)self _unpublishFromIOKit];
}

- (void)_publishToIOKit
{
  [(AADevicePowerSources *)self _publishBatteryWithType:1];
  [(AADevicePowerSources *)self _publishBatteryWithType:4];
  v3 = [(AADevicePowerSources *)self batteryInfo];
  v4 = [v3 batteryCombinedLeftRight];

  if (v4)
  {
    [(AADevicePowerSources *)self _unpublishPowerSourceForBatteryWithType:2];
    [(AADevicePowerSources *)self _unpublishPowerSourceForBatteryWithType:3];
    v5 = 5;
  }

  else
  {
    [(AADevicePowerSources *)self _unpublishPowerSourceForBatteryWithType:5];
    [(AADevicePowerSources *)self _publishBatteryWithType:2];
    v5 = 3;
  }

  [(AADevicePowerSources *)self _publishBatteryWithType:v5];
}

- (void)_unpublishFromIOKit
{
  [(AADevicePowerSources *)self _unpublishPowerSourceForBatteryWithType:1];
  [(AADevicePowerSources *)self _unpublishPowerSourceForBatteryWithType:4];
  [(AADevicePowerSources *)self _unpublishPowerSourceForBatteryWithType:2];
  [(AADevicePowerSources *)self _unpublishPowerSourceForBatteryWithType:3];

  [(AADevicePowerSources *)self _unpublishPowerSourceForBatteryWithType:5];
}

- (void)_publishBatteryWithType:(int64_t)a3
{
  v5 = [(AADevicePowerSources *)self batteryInfo];
  v7 = [v5 batteryForType:a3];

  if (v7)
  {
    v6 = [(AADevicePowerSources *)self _updatedPowerSourceDetailsForBattery:?];
    if (v6)
    {
      [(AADevicePowerSources *)self _publishPowerSourceForBatteryWithType:a3 details:v6];
    }
  }

  else
  {
    [(AADevicePowerSources *)self _unpublishPowerSourceForBatteryWithType:a3];
  }
}

- (id)_updatedPowerSourceDetailsForBattery:(id)a3
{
  v5 = a3;
  v6 = -[AADevicePowerSources _powerSourceDetailsForType:](self, "_powerSourceDetailsForType:", [v5 type]);
  v106 = v5;
  v105 = [v5 isCaseBattery];
  v7 = v6 == 0;
  if (v6)
  {
    goto LABEL_14;
  }

  v6 = objc_alloc_init(NSMutableDictionary);
  -[AADevicePowerSources _setPowerSourceDetails:forType:](self, "_setPowerSourceDetails:forType:", v6, [v5 type]);
  if (v105)
  {
    v3 = [(AADevicePowerSources *)self batteryInfo];
    v8 = [v3 caseIdentifier];
    if (v8)
    {
      v9 = v8;
      v10 = [(AADevicePowerSources *)self batteryInfo];
      v11 = [v10 caseIdentifier];

LABEL_6:
      goto LABEL_7;
    }
  }

  v12 = [(AADevicePowerSources *)self batteryInfo];
  v11 = [v12 identifier];

  if (v105)
  {
    goto LABEL_6;
  }

LABEL_7:
  if (v105)
  {
    v13 = @"Audio Battery Case";
  }

  else
  {
    v13 = @"Headset";
  }

  [v6 setObject:v13 forKeyedSubscript:@"Accessory Category"];
  [v6 setObject:v11 forKeyedSubscript:@"Accessory Identifier"];
  [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:@"Is Present"];
  [v6 setObject:&off_1002CB840 forKeyedSubscript:@"Max Capacity"];
  [v5 lowLevel];
  v15 = [NSNumber numberWithInt:(v14 * 100.0)];
  [v6 setObject:v15 forKeyedSubscript:@"Low Warn Level"];

  v16 = -[AADevicePowerSources _batteryTypeToIOPSPartIdentifier:](self, "_batteryTypeToIOPSPartIdentifier:", [v5 type]);
  [v6 setObject:v16 forKeyedSubscript:@"Part Identifier"];

  if ([v5 inAACP])
  {
    v17 = @"Bluetooth";
  }

  else
  {
    v17 = @"Bluetooth LE";
  }

  [v6 setObject:v17 forKeyedSubscript:@"Transport Type"];
  [v6 setObject:@"Accessory Source" forKeyedSubscript:@"Type"];
  [v6 setObject:&off_1002CB858 forKeyedSubscript:@"Vendor ID"];
  [v6 setObject:&off_1002CB870 forKeyedSubscript:@"Vendor ID Source"];

LABEL_14:
  v18 = [v6 objectForKeyedSubscript:@"Product ID"];
  v104 = v18;
  if (!v18 || ![v18 unsignedIntValue])
  {
    v19 = [(AADevicePowerSources *)self batteryInfo];
    v20 = [v19 productID];

    if (v20)
    {
      v21 = [(AADevicePowerSources *)self batteryInfo];
      v22 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v21 productID]);
      [v6 setObject:v22 forKeyedSubscript:@"Product ID"];

      v7 = 1;
    }
  }

  v23 = [v6 objectForKeyedSubscript:@"Name"];
  v24 = self;
  v25 = [(AADevicePowerSources *)self batteryInfo];
  [v25 name];
  if (v105)
    v26 = {;
    v27 = [AADeviceLocalization caseNameWithDeviceName:v26];
  }

  else
    v27 = {;
  }

  if (v27)
  {
    v28 = v23;
    v29 = v27;
    v30 = v29;
    if (v28 != v29)
    {
      if (v28)
      {
        v31 = [v28 isEqual:v29];

        if (v31)
        {
          goto LABEL_33;
        }
      }

      else
      {
      }

      [v6 setObject:v30 forKeyedSubscript:@"Name"];
      if ([v106 type] == 2)
      {
        v32 = @" 🅛";
      }

      else
      {
        if ([v106 type] != 3)
        {
          v7 = 1;
          goto LABEL_33;
        }

        v32 = @" 🅡";
      }

      v28 = [(AADevicePowerSources *)v24 batteryInfo];
      v30 = [v28 name];
      v33 = [v30 stringByAppendingString:v32];
      [v6 setObject:v33 forKeyedSubscript:@"Part Name"];

      v7 = 1;
    }
  }

LABEL_33:
  v103 = v23;
  v34 = [v6 objectForKeyedSubscript:@"Group Identifier"];
  v35 = [(AADevicePowerSources *)v24 batteryInfo];
  v36 = [v35 findMyGroupIdentifier];
  v37 = v36;
  v102 = v27;
  if (v36)
  {
    v38 = v36;
  }

  else
  {
    [(AADevicePowerSources *)v24 batteryInfo];
    v40 = v39 = v7;
    v38 = [v40 identifier];

    v7 = v39;
  }

  v41 = v38;
  v42 = v34;
  v43 = v42;
  v44 = v24;
  v100 = v42;
  if (v41 == v42)
  {

    goto LABEL_43;
  }

  if ((v42 == 0) == (v41 != 0))
  {

    goto LABEL_42;
  }

  v45 = [v41 isEqual:v42];

  if ((v45 & 1) == 0)
  {
LABEL_42:
    [v6 setObject:v41 forKeyedSubscript:@"Group Identifier"];
    v7 = 1;
  }

LABEL_43:
  [v106 level];
  v47 = [NSNumber numberWithInt:(v46 * 100.0)];
  v48 = [v6 objectForKeyedSubscript:@"Current Capacity"];
  v49 = v47;
  v50 = v48;
  v51 = v50;
  if (v49 == v50)
  {

    goto LABEL_50;
  }

  if ((v49 != 0) == (v50 == 0))
  {

    goto LABEL_49;
  }

  v52 = [v49 isEqual:v50];

  if ((v52 & 1) == 0)
  {
LABEL_49:
    [v6 setObject:v49 forKeyedSubscript:@"Current Capacity"];
    v7 = 1;
  }

LABEL_50:
  v53 = [v106 charging];
  v54 = @"Battery Power";
  if (v53)
  {
    v54 = @"AC Power";
  }

  v55 = v54;
  v56 = [v6 objectForKeyedSubscript:@"Power Source State"];
  v57 = v55;
  v58 = v56;
  v59 = v58;
  v101 = v41;
  if (v57 == v58)
  {

    goto LABEL_59;
  }

  if (!v58)
  {

    goto LABEL_58;
  }

  v60 = [(__CFString *)v57 isEqual:v58];

  if ((v60 & 1) == 0)
  {
LABEL_58:
    [v6 setObject:v57 forKeyedSubscript:@"Power Source State"];
    v7 = 1;
  }

LABEL_59:
  v61 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v106 charging]);
  v62 = [v6 objectForKeyedSubscript:@"Is Charging"];
  v63 = v61;
  v64 = v62;
  v65 = v64;
  if (v63 == v64)
  {

LABEL_66:
    goto LABEL_67;
  }

  if ((v63 != 0) == (v64 == 0))
  {

    goto LABEL_65;
  }

  v66 = [v63 isEqual:v64];

  if ((v66 & 1) == 0)
  {
LABEL_65:
    v63 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v106 charging]);
    [v6 setObject:v63 forKeyedSubscript:@"Is Charging"];
    v7 = 1;
    goto LABEL_66;
  }

LABEL_67:
  [v106 level];
  v68 = [NSNumber numberWithInt:fabs(v67 + -1.0) < 0.00000011920929];
  v69 = [v6 objectForKeyedSubscript:@"Is Charged"];
  v70 = v68;
  v71 = v69;
  v72 = v71;
  v99 = v57;
  if (v70 == v71)
  {
    v73 = v49;

    goto LABEL_74;
  }

  v73 = v49;
  if ((v70 != 0) == (v71 == 0))
  {

    goto LABEL_73;
  }

  v74 = [v70 isEqual:v71];

  if ((v74 & 1) == 0)
  {
LABEL_73:
    [v6 setObject:v70 forKeyedSubscript:@"Is Charged"];
    v7 = 1;
  }

LABEL_74:
  v75 = v7;
  v76 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v106 chargingOBC]);
  v77 = [v6 objectForKeyedSubscript:@"Optimized Battery Charging Engaged"];
  v78 = v76;
  v79 = v77;
  v80 = v79;
  if (v78 == v79)
  {

    goto LABEL_81;
  }

  if ((v78 != 0) == (v79 == 0))
  {

    goto LABEL_80;
  }

  v81 = [v78 isEqual:v79];

  if ((v81 & 1) == 0)
  {
LABEL_80:
    [v6 setObject:v78 forKeyedSubscript:@"Optimized Battery Charging Engaged"];
    v75 = 1;
  }

LABEL_81:
  v82 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", (137 * [v106 chargingOBCTimeUntilCharged]) >> 13);
  v83 = [v6 objectForKeyedSubscript:@"Time to Full Charge"];
  v84 = v82;
  v85 = v83;
  v86 = v85;
  if (v84 == v85)
  {

    goto LABEL_88;
  }

  if ((v84 != 0) == (v85 == 0))
  {

    goto LABEL_87;
  }

  v87 = [v84 isEqual:v85];

  if ((v87 & 1) == 0)
  {
LABEL_87:
    [v6 setObject:v84 forKeyedSubscript:@"Time to Full Charge"];
    v75 = 1;
  }

LABEL_88:
  v88 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v106 chargingDEOC]);
  v89 = [v6 objectForKeyedSubscript:@"Dynamic End of Charging Engaged"];
  v90 = v88;
  v91 = v89;
  v92 = v91;
  if (v90 == v91)
  {
  }

  else
  {
    if ((v90 != 0) != (v91 == 0))
    {
      v93 = [v90 isEqual:v91];

      if (v93)
      {
        goto LABEL_95;
      }
    }

    else
    {
    }

    [v6 setObject:v90 forKeyedSubscript:@"Dynamic End of Charging Engaged"];
    v75 = 1;
  }

LABEL_95:
  if (v105)
  {
    v94 = [(AADevicePowerSources *)v44 batteryInfo];
    v95 = [v94 caseVersion];

    if (v95 == 1)
    {
      v75 |= [(AADevicePowerSources *)v44 _updateCaseLedInfoInDetails:v6];
    }
  }

  if ([v106 type] == 5)
  {
    v75 |= [(AADevicePowerSources *)v44 _updateCombinedPartsInDetails:v6];
  }

  if (v75)
  {
    v96 = v6;
  }

  else
  {
    v96 = 0;
  }

  v97 = v96;

  return v96;
}

- (BOOL)_updateCaseLedInfoInDetails:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"LEDs"];
  v6 = v5;
  if (v5 && [v5 count])
  {
    v7 = [v6 objectAtIndexedSubscript:0];
  }

  else
  {
    v7 = 0;
  }

  v28[0] = @"State";
  v8 = [(AADevicePowerSources *)self batteryInfo];
  v9 = [v8 caseLedStatus];
  v10 = "Off";
  if (v9 == 1)
  {
    v10 = "Blinking";
  }

  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = "Solid";
  }

  v12 = [NSString stringWithUTF8String:v11];
  v28[1] = @"Color";
  v29[0] = v12;
  v13 = [(AADevicePowerSources *)self batteryInfo];
  v14 = [v13 caseLedColor];
  if (v14 > 3)
  {
    v15 = "?";
  }

  else
  {
    v15 = off_1002B9B00[v14];
  }

  v16 = [NSString stringWithUTF8String:v15];
  v29[1] = v16;
  v17 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:2];

  if (v7)
  {
    v18 = [v17 objectForKeyedSubscript:@"State"];
    v19 = [v7 objectForKeyedSubscript:@"State"];

    v20 = [v17 objectForKeyedSubscript:@"Color"];
    v21 = [v7 objectForKeyedSubscript:@"Color"];

    if (v18 == v19 && v20 == v21)
    {
      v22 = 0;
    }

    else
    {
      if (dword_1002F6C58 <= 10 && (dword_1002F6C58 != -1 || _LogCategory_Initialize()))
      {
        sub_1001F12E4();
      }

      v26 = v17;
      v22 = 1;
      v24 = [NSArray arrayWithObjects:&v26 count:1];
      [v4 setObject:v24 forKeyedSubscript:@"LEDs"];
    }
  }

  else
  {
    v27 = v17;
    v23 = [NSArray arrayWithObjects:&v27 count:1];
    [v4 setObject:v23 forKeyedSubscript:@"LEDs"];

    v22 = 1;
    if (dword_1002F6C58 <= 10)
    {
      if (dword_1002F6C58 != -1 || _LogCategory_Initialize())
      {
        sub_1001F1324();
      }

      v22 = 1;
    }
  }

  return v22;
}

- (BOOL)_updateCombinedPartsInDetails:(id)a3
{
  v4 = a3;
  v5 = [(AADevicePowerSources *)self batteryInfo];
  v6 = [v5 batteryLeft];
  v7 = [(AADevicePowerSources *)self _updatedPowerSourceDetailsForBattery:v6];

  v8 = [(AADevicePowerSources *)self batteryInfo];
  v9 = [v8 batteryRight];
  v10 = [(AADevicePowerSources *)self _updatedPowerSourceDetailsForBattery:v9];

  if (dword_1002F6C58 <= 10 && (dword_1002F6C58 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F1364();
  }

  v11 = +[NSMutableArray array];
  v12 = [(AADevicePowerSources *)self _powerSourceDetailsForType:2];

  if (v12)
  {
    [v11 addObject:v12];
  }

  else if (dword_1002F6C58 <= 90 && (dword_1002F6C58 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F13C4(self);
  }

  v13 = [(AADevicePowerSources *)self _powerSourceDetailsForType:3];

  if (v13)
  {
    [v11 addObject:v13];
  }

  else if (dword_1002F6C58 <= 90 && (dword_1002F6C58 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F1420(self);
  }

  [v4 setObject:v11 forKeyedSubscript:@"Combined Parts"];

  return (v7 | v10) != 0;
}

- (void)_publishPowerSourceForBatteryWithType:(int64_t)a3 details:(id)a4
{
  v7 = a4;
  v6 = [(AADevicePowerSources *)self _powerSourceIDForType:a3];
  if (!v6)
  {
    if (dword_1002F6C58 <= 30 && (dword_1002F6C58 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F147C(a3);
    }

    v6 = [(AADevicePowerSources *)self _createPowerSource];
    [(AADevicePowerSources *)self _setPowerSourceID:v6 forType:a3];
  }

  if (dword_1002F6C58 <= 30 && (dword_1002F6C58 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F14DC(a3);
  }

  [(AADevicePowerSources *)self _setPowerSource:v6 details:v7];
}

- (void)_unpublishPowerSourceForBatteryWithType:(int64_t)a3
{
  v5 = [(AADevicePowerSources *)self _powerSourceIDForType:?];
  if (v5)
  {
    v6 = v5;
    if (dword_1002F6C58 <= 30 && (dword_1002F6C58 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F153C(a3);
    }

    [(AADevicePowerSources *)self _releasePowerSource:v6];
    [(AADevicePowerSources *)self _setPowerSourceID:0 forType:a3];
  }

  v7 = [(AADevicePowerSources *)self _powerSourceDetailsForType:a3];
  if (v7)
  {
    v8 = v7;
    if (dword_1002F6C58 <= 30 && (dword_1002F6C58 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F159C(a3);
    }

    [(AADevicePowerSources *)self _setPowerSourceDetails:0 forType:a3];
    v7 = v8;
    if (a3 == 5)
    {
      [(AADevicePowerSources *)self _setPowerSourceDetails:0 forType:2];
      [(AADevicePowerSources *)self _setPowerSourceDetails:0 forType:3];
      v7 = v8;
    }
  }
}

- (id)_powerSourceDetailsForType:(int64_t)a3
{
  v4 = 0;
  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      v4 = [(AADevicePowerSources *)self powerSourceCaseDetails];
    }

    else if (a3 == 2)
    {
      v4 = [(AADevicePowerSources *)self powerSourceLeftDetails];
    }
  }

  else
  {
    switch(a3)
    {
      case 3:
        v4 = [(AADevicePowerSources *)self powerSourceRightDetails];
        break;
      case 4:
        v4 = [(AADevicePowerSources *)self powerSourceMainDetails];
        break;
      case 5:
        v4 = [(AADevicePowerSources *)self powerSourceCombinedLeftRightDetails];
        break;
    }
  }

  return v4;
}

- (void)_setPowerSourceDetails:(id)a3 forType:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  v8 = v6;
  if (dword_1002F6C58 <= 10)
  {
    if (dword_1002F6C58 != -1 || (v6 = _LogCategory_Initialize(), v7 = v8, v6))
    {
      v6 = sub_1001F15FC(a4);
      v7 = v8;
    }
  }

  if (a4 <= 2)
  {
    if (a4 == 1)
    {
      v6 = [(AADevicePowerSources *)self setPowerSourceCaseDetails:v8];
    }

    else
    {
      if (a4 != 2)
      {
        goto LABEL_16;
      }

      v6 = [(AADevicePowerSources *)self setPowerSourceLeftDetails:v8];
    }
  }

  else
  {
    switch(a4)
    {
      case 3:
        v6 = [(AADevicePowerSources *)self setPowerSourceRightDetails:v8];
        break;
      case 4:
        v6 = [(AADevicePowerSources *)self setPowerSourceMainDetails:v8];
        break;
      case 5:
        v6 = [(AADevicePowerSources *)self setPowerSourceCombinedLeftRightDetails:v8];
        break;
      default:
        goto LABEL_16;
    }
  }

  v7 = v8;
LABEL_16:

  _objc_release_x1(v6, v7);
}

- (OpaqueIOPSPowerSourceID)_powerSourceIDForType:(int64_t)a3
{
  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      return [(AADevicePowerSources *)self powerSourceCaseID];
    }

    if (a3 == 2)
    {
      return [(AADevicePowerSources *)self powerSourceLeftID];
    }
  }

  else
  {
    switch(a3)
    {
      case 3:
        return [(AADevicePowerSources *)self powerSourceRightID];
      case 4:
        return [(AADevicePowerSources *)self powerSourceMainID];
      case 5:
        return [(AADevicePowerSources *)self powerSourceCombinedLeftRightID];
    }
  }

  return 0;
}

- (void)_setPowerSourceID:(OpaqueIOPSPowerSourceID *)a3 forType:(int64_t)a4
{
  if (a3)
  {
    if (dword_1002F6C58 <= 10 && (dword_1002F6C58 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F165C(a4);
    }
  }

  else if (dword_1002F6C58 <= 10 && (dword_1002F6C58 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F16BC(a4);
  }

  if (a4 <= 2)
  {
    if (a4 == 1)
    {

      [(AADevicePowerSources *)self setPowerSourceCaseID:a3];
    }

    else if (a4 == 2)
    {

      [(AADevicePowerSources *)self setPowerSourceLeftID:a3];
    }
  }

  else
  {
    switch(a4)
    {
      case 3:

        [(AADevicePowerSources *)self setPowerSourceRightID:a3];
        break;
      case 4:

        [(AADevicePowerSources *)self setPowerSourceMainID:a3];
        break;
      case 5:

        [(AADevicePowerSources *)self setPowerSourceCombinedLeftRightID:a3];
        break;
    }
  }
}

- (id)_batteryTypeToIOPSPartIdentifier:(int64_t)a3
{
  if ((a3 - 1) > 4)
  {
    return @"Other";
  }

  else
  {
    return *(&off_1002B9B50 + a3 - 1);
  }
}

- (OpaqueIOPSPowerSourceID)_createPowerSource
{
  if (IOPSCreatePowerSource())
  {
    if (dword_1002F6C58 <= 90 && (dword_1002F6C58 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F171C();
    }
  }

  else if (dword_1002F6C58 <= 10 && (dword_1002F6C58 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F1774();
  }

  return 0;
}

- (void)_releasePowerSource:(OpaqueIOPSPowerSourceID *)a3
{
  if (a3)
  {
    if (IOPSReleasePowerSource())
    {
      if (dword_1002F6C58 <= 90 && (dword_1002F6C58 != -1 || _LogCategory_Initialize()))
      {
        sub_1001F17A8();
      }
    }

    else if (dword_1002F6C58 <= 10 && (dword_1002F6C58 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F1804();
    }
  }
}

- (void)_setPowerSource:(OpaqueIOPSPowerSourceID *)a3 details:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (a3)
  {
    v7 = v5;
    v5 = IOPSSetPowerSourceDetails();
    if (v5)
    {
      v6 = v7;
      if (dword_1002F6C58 <= 90)
      {
        if (dword_1002F6C58 != -1 || (v5 = _LogCategory_Initialize(), v6 = v7, v5))
        {
          sub_1001F1824();
LABEL_14:
          v6 = v7;
        }
      }
    }

    else
    {
      v6 = v7;
      if (dword_1002F6C58 <= 10)
      {
        if (dword_1002F6C58 != -1 || (v5 = _LogCategory_Initialize(), v6 = v7, v5))
        {
          v5 = sub_1001F1880();
          goto LABEL_14;
        }
      }
    }
  }

  _objc_release_x1(v5, v6);
}

@end