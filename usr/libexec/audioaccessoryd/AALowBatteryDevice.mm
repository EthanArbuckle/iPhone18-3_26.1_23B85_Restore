@interface AALowBatteryDevice
+ (id)trackerKeyForIdentifier:(id)identifier andType:(unsigned __int8)type;
- (AALowBatteryDevice)initWithDictFromPrefs:(id)prefs;
- (NSString)trackerKey;
- (id)toPrefsDict;
@end

@implementation AALowBatteryDevice

+ (id)trackerKeyForIdentifier:(id)identifier andType:(unsigned __int8)type
{
  if (type > 2u)
  {
    v6 = "?";
  }

  else
  {
    v6 = off_1002B7BE8[type];
  }

  return [NSString stringWithFormat:@"%@--%s", identifier, v6, v4, v5];
}

- (AALowBatteryDevice)initWithDictFromPrefs:(id)prefs
{
  prefsCopy = prefs;
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

  deviceAddress = [(AALowBatteryDevice *)self deviceAddress];
  if (deviceAddress)
  {
    [v3 setObject:deviceAddress forKeyedSubscript:@"deviceAddress"];
  }

  identifier = [(AALowBatteryDevice *)self identifier];
  [v3 setObject:identifier forKeyedSubscript:@"id"];

  name = [(AALowBatteryDevice *)self name];
  if (name)
  {
    [v3 setObject:name forKeyedSubscript:@"name"];
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
  identifier = [(AALowBatteryDevice *)self identifier];
  v4 = [AALowBatteryDevice trackerKeyForIdentifier:identifier andType:[(AALowBatteryDevice *)self type]];

  return v4;
}

@end