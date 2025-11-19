@interface TASPAdvertisement
+ (id)TASPAdvertisementBatteryStateToString:(int64_t)a3;
+ (id)TASPAdvertisementDeviceTypeToString:(unint64_t)a3;
+ (id)TASPAdvertisementTypeToString:(unint64_t)a3;
- (BOOL)hasHawkeyeAdvertisementPolicy;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (TASPAdvertisement)initWithAddress:(id)a3 advertisementData:(id)a4 status:(unsigned __int8)a5 reserved:(id)a6 rssi:(int64_t)a7 scanDate:(id)a8 detailsBitmask:(unsigned int)a9 uuid:(id)a10 protocolID:(id)a11;
- (TASPAdvertisement)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionDictionary;
- (id)getLatestAdvTypeToString:(id)a3;
- (int64_t)getBatteryState;
- (unint64_t)getAirPodsBudPosition:(int64_t)a3;
- (unint64_t)getDeviceType;
- (unint64_t)getType;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithOSLogCoder:(id)a3 options:(unint64_t)a4 maxLength:(unint64_t)a5;
@end

@implementation TASPAdvertisement

- (unint64_t)getDeviceType
{
  status = self->_status;
  result = (status >> 4) & 3;
  if (((status >> 4) & 3) > 1)
  {
    if (result == 3)
    {
      return 3;
    }

    else
    {
      return 2;
    }
  }

  else if (!result)
  {
    if ([(TASPAdvertisement *)self isPosh]&& ![(TASPAdvertisement *)self isApple])
    {
      return 4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (unint64_t)getType
{
  if ([(TASPAdvertisement *)self isNearOwner])
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (NSString)description
{
  v3 = [(TASPAdvertisement *)self descriptionDictionary];
  v10 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONStringFromNSDictionary:v3 error:&v10];
  v5 = v10;
  if (v5)
  {
    v6 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      [(TAOutgoingRequests *)v6 description];
    }

    v7 = [MEMORY[0x277CCACA8] string];
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;

  return v8;
}

- (id)descriptionDictionary
{
  v33[14] = *MEMORY[0x277D85DE8];
  v32[0] = @"EventType";
  v3 = objc_opt_class();
  v31 = NSStringFromClass(v3);
  v33[0] = v31;
  v32[1] = @"Address";
  v30 = [(TASPAdvertisement *)self address];
  v29 = [v30 hexString];
  v33[1] = v29;
  v32[2] = @"Data";
  v28 = [(TASPAdvertisement *)self advertisementData];
  v27 = [v28 hexString];
  v33[2] = v27;
  v32[3] = @"Status";
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[TASPAdvertisement status](self, "status")}];
  v33[3] = v26;
  v32[4] = @"Reserved";
  v25 = [(TASPAdvertisement *)self reserved];
  v24 = [v25 hexString];
  v33[4] = v24;
  v32[5] = @"RSSI";
  v23 = [MEMORY[0x277CCABB0] numberWithInteger:{-[TASPAdvertisement rssi](self, "rssi")}];
  v33[5] = v23;
  v32[6] = @"Date";
  v22 = [(TASPAdvertisement *)self scanDate];
  v21 = [v22 getDateString];
  v33[6] = v21;
  v32[7] = @"Type";
  v20 = [TASPAdvertisement TASPAdvertisementTypeToString:[(TASPAdvertisement *)self getType]];
  v33[7] = v20;
  v32[8] = @"DeviceType";
  v19 = [TASPAdvertisement TASPAdvertisementDeviceTypeToString:[(TASPAdvertisement *)self getDeviceType]];
  v33[8] = v19;
  v32[9] = @"UUID";
  v4 = [(TASPAdvertisement *)self uuid];
  if (v4)
  {
    v18 = [(TASPAdvertisement *)self uuid];
    v5 = [v18 UUIDString];
  }

  else
  {
    v5 = &stru_287F632C0;
  }

  v33[9] = v5;
  v32[10] = @"BatteryState";
  v6 = [TASPAdvertisement TASPAdvertisementBatteryStateToString:[(TASPAdvertisement *)self getBatteryState]];
  v33[10] = v6;
  v32[11] = @"DetailsBitmask";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[TASPAdvertisement detailsBitmask](self, "detailsBitmask")}];
  v33[11] = v7;
  v32[12] = @"DetailsBitmaskString";
  v8 = MEMORY[0x277CCACA8];
  if ([(TASPAdvertisement *)self isPosh])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  if ([(TASPAdvertisement *)self isApple])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  if ([(TASPAdvertisement *)self isNearOwner])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v12 = [v8 stringWithFormat:@"isPosh, %@, isApple, %@, isNearOwner, %@", v9, v10, v11];
  v33[12] = v12;
  v32[13] = @"ProtocolIDString";
  v13 = [(TASPAdvertisement *)self protocolID];
  if (v13)
  {
    v8 = [(TASPAdvertisement *)self protocolID];
    v14 = [v8 stringValue];
  }

  else
  {
    v14 = @"0";
  }

  v33[13] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:14];
  if (v13)
  {
  }

  if (v4)
  {
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (int64_t)getBatteryState
{
  status = self->_status;
  v3 = 2;
  if ((status & 0xC0) != 0x80)
  {
    v3 = (status & 0xC0) == 64;
  }

  if (status <= 0xBF)
  {
    return v3;
  }

  else
  {
    return 3;
  }
}

- (TASPAdvertisement)initWithAddress:(id)a3 advertisementData:(id)a4 status:(unsigned __int8)a5 reserved:(id)a6 rssi:(int64_t)a7 scanDate:(id)a8 detailsBitmask:(unsigned int)a9 uuid:(id)a10 protocolID:(id)a11
{
  v17 = a3;
  v18 = a4;
  v19 = a6;
  v20 = a8;
  v21 = a10;
  v22 = a11;
  v39.receiver = self;
  v39.super_class = TASPAdvertisement;
  v23 = [(TASPAdvertisement *)&v39 init];
  if (!v23)
  {
LABEL_15:
    v24 = v23;
    goto LABEL_16;
  }

  v24 = 0;
  if (v17 && v18 && v19 && v20)
  {
    v25 = [v17 copy];
    address = v23->_address;
    v23->_address = v25;

    v27 = [v18 copy];
    advertisementData = v23->_advertisementData;
    v23->_advertisementData = v27;

    v23->_status = a5;
    v29 = [v19 copy];
    reserved = v23->_reserved;
    v23->_reserved = v29;

    v23->_rssi = a7;
    v31 = [v20 copy];
    scanDate = v23->_scanDate;
    v23->_scanDate = v31;

    if (v21)
    {
      v33 = [v21 copy];
    }

    else
    {
      v33 = 0;
    }

    uuid = v23->_uuid;
    v23->_uuid = v33;

    if (v22)
    {
      v35 = [v22 copy];
    }

    else
    {
      v35 = 0;
    }

    protocolID = v23->_protocolID;
    v23->_protocolID = v35;

    v23->_detailsBitmask = a9;
    if ([(NSData *)v23->_reserved length]&& [(TASPAdvertisement *)v23 isApple])
    {
      v38 = 0;
      [(NSData *)v23->_reserved getBytes:&v38 length:1];
      v23->_beepOnMoveHigh = (v38 & 4) != 0;
    }

    goto LABEL_15;
  }

LABEL_16:

  return v24;
}

+ (id)TASPAdvertisementTypeToString:(unint64_t)a3
{
  if (a3 > 2)
  {
    return @"Invalid";
  }

  else
  {
    return off_279DD1B20[a3];
  }
}

+ (id)TASPAdvertisementDeviceTypeToString:(unint64_t)a3
{
  if (a3 > 4)
  {
    return @"Invalid";
  }

  else
  {
    return off_279DD1B38[a3];
  }
}

- (id)getLatestAdvTypeToString:(id)a3
{
  v4 = a3;
  if ([(TASPAdvertisement *)self isPosh]&& [(TASPAdvertisement *)self isApple])
  {
    if (v4)
    {
      v5 = @":AP";
LABEL_17:
      v7 = [v4 stringByAppendingString:v5];

      goto LABEL_18;
    }

    v7 = @"AP";
  }

  else
  {
    if (![(TASPAdvertisement *)self isPosh]|| [(TASPAdvertisement *)self isApple])
    {
      v6 = [(TASPAdvertisement *)self isApple];
      if (v6)
      {
        v7 = @"A";
      }

      else
      {
        v7 = @"NA";
      }

      if (v6)
      {
        v5 = @":A";
      }

      else
      {
        v5 = @":NA";
      }

      if (!v4)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    if (v4)
    {
      v5 = @":P";
      goto LABEL_17;
    }

    v7 = @"P";
  }

LABEL_18:

  return v7;
}

+ (id)TASPAdvertisementBatteryStateToString:(int64_t)a3
{
  if (a3 > 3)
  {
    return @"Invalid";
  }

  else
  {
    return off_279DD1B60[a3];
  }
}

- (unint64_t)getAirPodsBudPosition:(int64_t)a3
{
  v3 = a3;
  v12 = *MEMORY[0x277D85DE8];
  if (a3 > 1)
  {
    v5 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      v7[0] = 68289282;
      v7[1] = 0;
      v8 = 2082;
      v9 = "";
      v10 = 1026;
      v11 = v3;
      _os_log_impl(&dword_26F2E2000, v5, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:received unexpected part identifier for AirPods bud, partIdentifier:%{public}d}", v7, 0x18u);
    }

    result = 0;
  }

  else if (([(TASPAdvertisement *)self status]>> (1 - a3)))
  {
    result = 1;
  }

  else
  {
    result = 2;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(TASPAdvertisement *)self scanDate];
      v7 = [(TASPAdvertisement *)v5 scanDate];
      if ([v6 isEqualToDate:v7])
      {
        v8 = [(TASPAdvertisement *)self advertisementData];
        v9 = [(TASPAdvertisement *)v5 advertisementData];
        if ([v8 isEqualToData:v9] && (v10 = -[TASPAdvertisement status](self, "status"), v10 == -[TASPAdvertisement status](v5, "status")))
        {
          v11 = [(TASPAdvertisement *)self reserved];
          v12 = [(TASPAdvertisement *)v5 reserved];
          if ([v11 isEqualToData:v12] && (v13 = -[TASPAdvertisement rssi](self, "rssi"), v13 == -[TASPAdvertisement rssi](v5, "rssi")))
          {
            v14 = [(TASPAdvertisement *)self address];
            v22 = [(TASPAdvertisement *)v5 address];
            if ([v14 isEqualToData:?])
            {
              v21 = v14;
              v15 = [(TASPAdvertisement *)self detailsBitmask];
              if (v15 == [(TASPAdvertisement *)v5 detailsBitmask])
              {
                v20 = [(TASPAdvertisement *)self protocolID];
                v16 = [v20 intValue];
                v17 = [(TASPAdvertisement *)v5 protocolID];
                v18 = v16 == [v17 intValue];
              }

              else
              {
                v18 = 0;
              }

              v14 = v21;
            }

            else
            {
              v18 = 0;
            }
          }

          else
          {
            v18 = 0;
          }
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  return v18;
}

- (unint64_t)hash
{
  v3 = [(TASPAdvertisement *)self rssi];
  if (v3 >= 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = -v3;
  }

  v18 = v4;
  v5 = [(TASPAdvertisement *)self scanDate];
  v17 = [v5 hash];
  v6 = [(TASPAdvertisement *)self advertisementData];
  v7 = [v6 hash];
  v8 = [(TASPAdvertisement *)self status];
  v9 = [(TASPAdvertisement *)self reserved];
  v10 = [v9 hash];
  v11 = [(TASPAdvertisement *)self address];
  v12 = [v11 hash];
  v13 = [(TASPAdvertisement *)self detailsBitmask];
  v14 = [(TASPAdvertisement *)self protocolID];
  v15 = v12 ^ v13 ^ [v14 intValue];

  return v17 ^ v7 ^ v18 ^ v8 ^ v10 ^ v15;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TASPAdvertisement *)self address];
  [v4 encodeObject:v5 forKey:@"Address"];

  v6 = [(TASPAdvertisement *)self advertisementData];
  [v4 encodeObject:v6 forKey:@"Data"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[TASPAdvertisement status](self, "status")}];
  [v4 encodeObject:v7 forKey:@"Status"];

  v8 = [(TASPAdvertisement *)self reserved];
  [v4 encodeObject:v8 forKey:@"Reserved"];

  [v4 encodeInteger:-[TASPAdvertisement rssi](self forKey:{"rssi"), @"RSSI"}];
  v9 = [(TASPAdvertisement *)self scanDate];
  [v4 encodeObject:v9 forKey:@"Date"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[TASPAdvertisement detailsBitmask](self, "detailsBitmask")}];
  [v4 encodeObject:v10 forKey:@"DetailsBitmask"];

  v11 = [(TASPAdvertisement *)self uuid];
  [v4 encodeObject:v11 forKey:@"UUID"];

  v12 = [(TASPAdvertisement *)self protocolID];
  [v4 encodeInt:objc_msgSend(v12 forKey:{"intValue"), @"ProtocolIDString"}];
}

- (TASPAdvertisement)initWithCoder:(id)a3
{
  v3 = a3;
  v19 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"Address"];
  v18 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"Data"];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"Status"];
  v17 = [v4 unsignedCharValue];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"Reserved"];
  v6 = [v3 decodeIntegerForKey:@"RSSI"];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"Date"];
  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"DetailsBitmask"];
  v9 = [v8 unsignedCharValue];
  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
  v11 = MEMORY[0x277CCABB0];
  v12 = [v3 decodeIntForKey:@"ProtocolIDString"];

  v13 = [v11 numberWithInt:v12];
  LODWORD(v16) = v9;
  v14 = [(TASPAdvertisement *)self initWithAddress:v19 advertisementData:v18 status:v17 reserved:v5 rssi:v6 scanDate:v7 detailsBitmask:v16 uuid:v10 protocolID:v13];

  return v14;
}

- (void)encodeWithOSLogCoder:(id)a3 options:(unint64_t)a4 maxLength:(unint64_t)a5
{
  v8 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  [v8 appendBytes:objc_msgSend(v7 length:{"bytes"), objc_msgSend(v7, "length")}];

  objc_autoreleasePoolPop(v6);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TASPAdvertisement alloc];
  uuid = self->_uuid;
  LODWORD(v7) = self->_detailsBitmask;
  return [(TASPAdvertisement *)v4 initWithAddress:self->_address advertisementData:self->_advertisementData status:self->_status reserved:self->_reserved rssi:self->_rssi scanDate:self->_scanDate detailsBitmask:v7 uuid:uuid protocolID:self->_protocolID];
}

- (BOOL)hasHawkeyeAdvertisementPolicy
{
  v3 = [(TASPAdvertisement *)self getDeviceType];
  if (v3 != 1)
  {
    LOBYTE(v3) = [(TASPAdvertisement *)self getDeviceType]== 2 || [(TASPAdvertisement *)self getDeviceType]== 4;
  }

  return v3;
}

@end