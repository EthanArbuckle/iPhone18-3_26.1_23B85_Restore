@interface PNPDeviceState
- (BOOL)isEqual:(id)a3;
- (NSString)displayName;
- (PNPDeviceState)init;
- (PNPDeviceState)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(PNPDeviceState *)self name];
  [v4 setName:v5];

  [(PNPDeviceState *)self batteryLevel];
  [v4 setBatteryLevel:?];
  [v4 setEdge:{-[PNPDeviceState edge](self, "edge")}];
  [v4 setOrientation:{-[PNPDeviceState orientation](self, "orientation")}];
  [v4 setBatteryLevelUnknown:{-[PNPDeviceState batteryLevelUnknown](self, "batteryLevelUnknown")}];
  v6 = [(PNPDeviceState *)self identifier];
  [v4 setIdentifier:v6];

  [v4 setIsCharging:{-[PNPDeviceState isCharging](self, "isCharging")}];
  [v4 setDeviceType:{-[PNPDeviceState deviceType](self, "deviceType")}];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 name];
    v7 = [(PNPDeviceState *)self name];
    v8 = [v6 isEqualToString:v7];

    if (v8)
    {
      [v5 batteryLevel];
      v10 = v9;
      [(PNPDeviceState *)self batteryLevel];
      if (v10 == v11)
      {
        v12 = [v5 edge];
        if (v12 == [(PNPDeviceState *)self edge])
        {
          v13 = [v5 orientation];
          if (v13 == [(PNPDeviceState *)self orientation])
          {
            v14 = [v5 batteryLevelUnknown];
            if (v14 == [(PNPDeviceState *)self batteryLevelUnknown])
            {
              v15 = [v5 isCharging];
              if (v15 == [(PNPDeviceState *)self isCharging])
              {
                v16 = [v5 identifier];
                if (!v16)
                {
                  v7 = [(PNPDeviceState *)self identifier];
                  if (!v7)
                  {
                    goto LABEL_12;
                  }
                }

                v17 = [v5 identifier];
                v18 = [(PNPDeviceState *)self identifier];
                v19 = [v17 isEqual:v18];

                if (v16)
                {

                  if (v19)
                  {
LABEL_12:
                    v20 = [v5 deviceType];
                    v21 = v20 == [(PNPDeviceState *)self deviceType];
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

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(PNPDeviceState *)self name];
  [v6 encodeObject:v4 forKey:@"name"];

  [(PNPDeviceState *)self batteryLevel];
  [v6 encodeDouble:@"batteryLevel" forKey:?];
  [v6 encodeInteger:-[PNPDeviceState edge](self forKey:{"edge"), @"edge"}];
  [v6 encodeInteger:-[PNPDeviceState orientation](self forKey:{"orientation"), @"orientation"}];
  [v6 encodeBool:-[PNPDeviceState batteryLevelUnknown](self forKey:{"batteryLevelUnknown"), @"batteryLevelUnknown"}];
  [v6 encodeBool:-[PNPDeviceState isCharging](self forKey:{"isCharging"), @"charging"}];
  v5 = [(PNPDeviceState *)self identifier];
  [v6 encodeObject:v5 forKey:@"identifier"];

  [v6 encodeInteger:-[PNPDeviceState deviceType](self forKey:{"deviceType"), @"deviceType"}];
}

- (PNPDeviceState)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PNPDeviceState *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  name = v5->_name;
  v5->_name = v6;

  [v4 decodeDoubleForKey:@"batteryLevel"];
  v5->_batteryLevel = v8;
  v5->_edge = [v4 decodeIntegerForKey:@"edge"];
  v5->_orientation = [v4 decodeIntegerForKey:@"orientation"];
  v5->_batteryLevelUnknown = [v4 decodeBoolForKey:@"batteryLevelUnknown"];
  v5->_isCharging = [v4 decodeBoolForKey:@"charging"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];

  identifier = v5->_identifier;
  v5->_identifier = v9;

  return v5;
}

- (NSString)displayName
{
  v3 = [(PNPDeviceState *)self name];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
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