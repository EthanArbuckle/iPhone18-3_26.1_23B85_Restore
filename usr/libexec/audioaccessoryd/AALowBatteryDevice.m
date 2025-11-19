@interface AALowBatteryDevice
+ (id)trackerKeyForIdentifier:(id)a3 andType:(unsigned __int8)a4;
- (AALowBatteryDevice)initWithDictFromPrefs:(id)a3;
- (NSString)trackerKey;
- (id)toPrefsDict;
@end

@implementation AALowBatteryDevice

+ (id)trackerKeyForIdentifier:(id)a3 andType:(unsigned __int8)a4
{
  if (a4 > 2u)
  {
    v6 = "?";
  }

  else
  {
    v6 = off_1002B7BE8[a4];
  }

  return [NSString stringWithFormat:@"%@--%s", a3, v6, v4, v5];
}

- (AALowBatteryDevice)initWithDictFromPrefs:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = AALowBatteryDevice;
  v5 = [(AALowBatteryDevice *)&v17 init];
  if (v5)
  {
    v5->_color = CFDictionaryGetInt64Ranged();
    CFStringGetTypeID();
    v6 = CFDictionaryGetTypedValue();
    deviceAddress = v5->_deviceAddress;
    v5->_deviceAddress = v6;

    CFStringGetTypeID();
    v8 = CFDictionaryGetTypedValue();
    identifier = v5->_identifier;
    v5->_identifier = v8;

    CFStringGetTypeID();
    v10 = CFDictionaryGetTypedValue();
    name = v5->_name;
    v5->_name = v10;

    CFDictionaryGetDouble();
    v5->_lastBatteryLevel = v12;
    v5->_lastBatteryType = CFDictionaryGetInt64Ranged();
    CFDictionaryGetDouble();
    v5->_lastSeenTime = v13;
    v5->_productID = CFDictionaryGetInt64Ranged();
    CFDictionaryGetDouble();
    v5->_reportTime = v14;
    v5->_type = CFDictionaryGetInt64Ranged();
    v15 = v5;
  }

  return v5;
}

- (id)toPrefsDict
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [NSNumber numberWithUnsignedChar:[(AALowBatteryDevice *)self color]];
  [v3 setObject:v4 forKeyedSubscript:@"color"];

  v5 = [(AALowBatteryDevice *)self deviceAddress];
  if (v5)
  {
    [v3 setObject:v5 forKeyedSubscript:@"deviceAddress"];
  }

  v6 = [(AALowBatteryDevice *)self identifier];
  [v3 setObject:v6 forKeyedSubscript:@"id"];

  v7 = [(AALowBatteryDevice *)self name];
  if (v7)
  {
    [v3 setObject:v7 forKeyedSubscript:@"name"];
  }

  [(AALowBatteryDevice *)self lastBatteryLevel];
  v8 = [NSNumber numberWithDouble:?];
  [v3 setObject:v8 forKeyedSubscript:@"batteryLevelLast"];

  v9 = [NSNumber numberWithInteger:[(AALowBatteryDevice *)self lastBatteryType]];
  [v3 setObject:v9 forKeyedSubscript:@"batteryType"];

  [(AALowBatteryDevice *)self lastSeenTime];
  v10 = [NSNumber numberWithDouble:?];
  [v3 setObject:v10 forKeyedSubscript:@"lastSeen"];

  v11 = [NSNumber numberWithUnsignedInt:[(AALowBatteryDevice *)self productID]];
  [v3 setObject:v11 forKeyedSubscript:@"productID"];

  [(AALowBatteryDevice *)self reportTime];
  v12 = [NSNumber numberWithDouble:?];
  [v3 setObject:v12 forKeyedSubscript:@"reportTime"];

  v13 = [NSNumber numberWithUnsignedChar:[(AALowBatteryDevice *)self type]];
  [v3 setObject:v13 forKeyedSubscript:@"notificationType"];

  return v3;
}

- (NSString)trackerKey
{
  v3 = [(AALowBatteryDevice *)self identifier];
  v4 = [AALowBatteryDevice trackerKeyForIdentifier:v3 andType:[(AALowBatteryDevice *)self type]];

  return v4;
}

@end