@interface PNPDeviceState
- (BOOL)isEqual:(id)equal;
- (NSString)displayName;
- (PNPDeviceState)init;
- (PNPDeviceState)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PNPDeviceState

- (PNPDeviceState)init
{
  v4.receiver = self;
  v4.super_class = PNPDeviceState;
  v2 = [(PNPDeviceState *)&v4 init];
  [(PNPDeviceState *)v2 setEdge:4];
  [(PNPDeviceState *)v2 setBatteryLevelUnknown:1];
  v2->_isCharging = 1;
  v2->_deviceType = 0;
  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  name = [(PNPDeviceState *)self name];
  [v4 setName:name];

  [(PNPDeviceState *)self batteryLevel];
  [v4 setBatteryLevel:?];
  [v4 setEdge:{-[PNPDeviceState edge](self, "edge")}];
  [v4 setOrientation:{-[PNPDeviceState orientation](self, "orientation")}];
  [v4 setBatteryLevelUnknown:{-[PNPDeviceState batteryLevelUnknown](self, "batteryLevelUnknown")}];
  identifier = [(PNPDeviceState *)self identifier];
  [v4 setIdentifier:identifier];

  [v4 setIsCharging:{-[PNPDeviceState isCharging](self, "isCharging")}];
  [v4 setDeviceType:{-[PNPDeviceState deviceType](self, "deviceType")}];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    name = [v5 name];
    name2 = [(PNPDeviceState *)self name];
    v8 = [name isEqualToString:name2];

    if (v8)
    {
      [v5 batteryLevel];
      v10 = v9;
      [(PNPDeviceState *)self batteryLevel];
      if (v10 == v11)
      {
        edge = [v5 edge];
        if (edge == [(PNPDeviceState *)self edge])
        {
          orientation = [v5 orientation];
          if (orientation == [(PNPDeviceState *)self orientation])
          {
            batteryLevelUnknown = [v5 batteryLevelUnknown];
            if (batteryLevelUnknown == [(PNPDeviceState *)self batteryLevelUnknown])
            {
              isCharging = [v5 isCharging];
              if (isCharging == [(PNPDeviceState *)self isCharging])
              {
                identifier = [v5 identifier];
                if (!identifier)
                {
                  name2 = [(PNPDeviceState *)self identifier];
                  if (!name2)
                  {
                    goto LABEL_12;
                  }
                }

                identifier2 = [v5 identifier];
                identifier3 = [(PNPDeviceState *)self identifier];
                v19 = [identifier2 isEqual:identifier3];

                if (identifier)
                {

                  if (v19)
                  {
LABEL_12:
                    deviceType = [v5 deviceType];
                    v21 = deviceType == [(PNPDeviceState *)self deviceType];
LABEL_16:

                    goto LABEL_17;
                  }
                }

                else
                {

                  if (v19)
                  {
                    goto LABEL_12;
                  }
                }
              }
            }
          }
        }
      }
    }

    v21 = 0;
    goto LABEL_16;
  }

  v21 = 0;
LABEL_17:

  return v21;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(PNPDeviceState *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  [(PNPDeviceState *)self batteryLevel];
  [coderCopy encodeDouble:@"batteryLevel" forKey:?];
  [coderCopy encodeInteger:-[PNPDeviceState edge](self forKey:{"edge"), @"edge"}];
  [coderCopy encodeInteger:-[PNPDeviceState orientation](self forKey:{"orientation"), @"orientation"}];
  [coderCopy encodeBool:-[PNPDeviceState batteryLevelUnknown](self forKey:{"batteryLevelUnknown"), @"batteryLevelUnknown"}];
  [coderCopy encodeBool:-[PNPDeviceState isCharging](self forKey:{"isCharging"), @"charging"}];
  identifier = [(PNPDeviceState *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  [coderCopy encodeInteger:-[PNPDeviceState deviceType](self forKey:{"deviceType"), @"deviceType"}];
}

- (PNPDeviceState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(PNPDeviceState *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  name = v5->_name;
  v5->_name = v6;

  [coderCopy decodeDoubleForKey:@"batteryLevel"];
  v5->_batteryLevel = v8;
  v5->_edge = [coderCopy decodeIntegerForKey:@"edge"];
  v5->_orientation = [coderCopy decodeIntegerForKey:@"orientation"];
  v5->_batteryLevelUnknown = [coderCopy decodeBoolForKey:@"batteryLevelUnknown"];
  v5->_isCharging = [coderCopy decodeBoolForKey:@"charging"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];

  identifier = v5->_identifier;
  v5->_identifier = v9;

  return v5;
}

- (NSString)displayName
{
  name = [(PNPDeviceState *)self name];
  v4 = name;
  if (name)
  {
    v5 = name;
  }

  else
  {
    v6 = PencilPairingUIBundle();
    v5 = [v6 localizedStringForKey:@"APPLE_PENCIL_NAME" value:&stru_286FDFDB8 table:0];
  }

  if ([(PNPDeviceState *)self deviceType]== 4)
  {
    v7 = PencilPairingUIBundle();
    v8 = [v7 localizedStringForKey:@"APPLE_PENCIL_NAME_PRO" value:&stru_286FDFDB8 table:@"PencilPairingSqueeze-B532"];

    v5 = v8;
  }

  if (v5)
  {
    v9 = v5;
  }

  else
  {
    v10 = PencilPairingUIBundle();
    v9 = [v10 localizedStringForKey:@"APPLE_PENCIL_NAME" value:&stru_286FDFDB8 table:0];
  }

  return v9;
}

@end