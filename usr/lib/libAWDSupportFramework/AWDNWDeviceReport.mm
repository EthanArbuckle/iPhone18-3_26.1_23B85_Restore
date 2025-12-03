@interface AWDNWDeviceReport
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCellularMode:(id)mode;
- (int)StringAsMotionState:(id)state;
- (int)StringAsThermalPressure:(id)pressure;
- (int)cellularMode;
- (int)motionState;
- (int)thermalPressure;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasBatteryAtCriticalLevel:(BOOL)level;
- (void)setHasBatteryAtWarnLevel:(BOOL)level;
- (void)setHasBatteryCurrentCapacity:(BOOL)capacity;
- (void)setHasBatteryDesignCapacity:(BOOL)capacity;
- (void)setHasBatteryExternalPowerIsConnected:(BOOL)connected;
- (void)setHasBatteryFullyCharged:(BOOL)charged;
- (void)setHasBatteryIsCharging:(BOOL)charging;
- (void)setHasBatteryMaximumCapacity:(BOOL)capacity;
- (void)setHasBatteryPercentage:(BOOL)percentage;
- (void)setHasBatteryTimeRemaining:(BOOL)remaining;
- (void)setHasBatteryVoltage:(BOOL)voltage;
- (void)setHasCellularMode:(BOOL)mode;
- (void)setHasDevicePluggedIn:(BOOL)in;
- (void)setHasDeviceScreenOn:(BOOL)on;
- (void)setHasMotionState:(BOOL)state;
- (void)setHasThermalPressure:(BOOL)pressure;
- (void)writeTo:(id)to;
@end

@implementation AWDNWDeviceReport

- (void)dealloc
{
  [(AWDNWDeviceReport *)self setBatteryAccumulator:0];
  v3.receiver = self;
  v3.super_class = AWDNWDeviceReport;
  [(AWDNWDeviceReport *)&v3 dealloc];
}

- (void)setHasBatteryPercentage:(BOOL)percentage
{
  if (percentage)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasBatteryCurrentCapacity:(BOOL)capacity
{
  if (capacity)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (void)setHasBatteryMaximumCapacity:(BOOL)capacity
{
  if (capacity)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasBatteryDesignCapacity:(BOOL)capacity
{
  if (capacity)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasBatteryVoltage:(BOOL)voltage
{
  if (voltage)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasBatteryTimeRemaining:(BOOL)remaining
{
  if (remaining)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasBatteryExternalPowerIsConnected:(BOOL)connected
{
  if (connected)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasBatteryIsCharging:(BOOL)charging
{
  if (charging)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasBatteryFullyCharged:(BOOL)charged
{
  if (charged)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasBatteryAtWarnLevel:(BOOL)level
{
  if (level)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasBatteryAtCriticalLevel:(BOOL)level
{
  if (level)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasDevicePluggedIn:(BOOL)in
{
  if (in)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasDeviceScreenOn:(BOOL)on
{
  if (on)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (int)motionState
{
  if (*(&self->_has + 1))
  {
    return self->_motionState;
  }

  else
  {
    return 0;
  }
}

- (void)setHasMotionState:(BOOL)state
{
  if (state)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (int)StringAsMotionState:(id)state
{
  if ([state isEqualToString:@"NW_DEVICE_MOTION_STATE_UNKNOWN"])
  {
    return 0;
  }

  if ([state isEqualToString:@"NW_DEVICE_MOTION_STATE_STATIONARY"])
  {
    return 1;
  }

  if ([state isEqualToString:@"NW_DEVICE_MOTION_STATE_MOVING"])
  {
    return 2;
  }

  if ([state isEqualToString:@"NW_DEVICE_MOTION_STATE_WALKING"])
  {
    return 3;
  }

  if ([state isEqualToString:@"NW_DEVICE_MOTION_STATE_RUNNING"])
  {
    return 4;
  }

  if ([state isEqualToString:@"NW_DEVICE_MOTION_STATE_VEHICULAR"])
  {
    return 5;
  }

  return 0;
}

- (int)thermalPressure
{
  if ((*(&self->_has + 1) & 2) != 0)
  {
    return self->_thermalPressure;
  }

  else
  {
    return 0;
  }
}

- (void)setHasThermalPressure:(BOOL)pressure
{
  if (pressure)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (int)StringAsThermalPressure:(id)pressure
{
  if ([pressure isEqualToString:@"NW_DEVICE_THERMAL_PRESSURE_NOMINAL"])
  {
    return 0;
  }

  if ([pressure isEqualToString:@"NW_DEVICE_THERMAL_PRESSURE_MODERATE_MAC"])
  {
    return 1;
  }

  if ([pressure isEqualToString:@"NW_DEVICE_THERMAL_PRESSURE_HEAVY_MAC"])
  {
    return 2;
  }

  if ([pressure isEqualToString:@"NW_DEVICE_THERMAL_PRESSURE_TRAPPING_MAC"])
  {
    return 3;
  }

  if ([pressure isEqualToString:@"NW_DEVICE_THERMAL_PRESSURE_SLEEPING_MAC"])
  {
    return 4;
  }

  if ([pressure isEqualToString:@"NW_DEVICE_THERMAL_PRESSURE_LIGHT"])
  {
    return 10;
  }

  if ([pressure isEqualToString:@"NW_DEVICE_THERMAL_PRESSURE_MODERATE"])
  {
    return 20;
  }

  if ([pressure isEqualToString:@"NW_DEVICE_THERMAL_PRESSURE_HEAVY"])
  {
    return 30;
  }

  if ([pressure isEqualToString:@"NW_DEVICE_THERMAL_PRESSURE_TRAPPING"])
  {
    return 40;
  }

  if ([pressure isEqualToString:@"NW_DEVICE_THERMAL_PRESSURE_SLEEPING"])
  {
    return 50;
  }

  return 0;
}

- (int)cellularMode
{
  if ((*&self->_has & 0x80) != 0)
  {
    return self->_cellularMode;
  }

  else
  {
    return 0;
  }
}

- (void)setHasCellularMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (int)StringAsCellularMode:(id)mode
{
  if ([mode isEqualToString:@"NW_DEVICE_CELLULAR_MODE_UNKNOWN"])
  {
    return 0;
  }

  if ([mode isEqualToString:@"NW_DEVICE_CELLULAR_MODE_OFF"])
  {
    return 1;
  }

  if ([mode isEqualToString:@"NW_DEVICE_CELLULAR_MODE_AUTO"])
  {
    return 2;
  }

  if ([mode isEqualToString:@"NW_DEVICE_CELLULAR_MODE_ON"])
  {
    return 3;
  }

  return 0;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDNWDeviceReport;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDNWDeviceReport description](&v3, sel_description), -[AWDNWDeviceReport dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((*&has & 0x10) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_batteryPercentage), @"batteryPercentage"}];
    has = self->_has;
    if ((*&has & 2) == 0)
    {
LABEL_3:
      if ((*&has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((*&has & 2) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_batteryCurrentCapacity), @"batteryCurrentCapacity"}];
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_4:
    if ((*&has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_batteryMaximumCapacity), @"batteryMaximumCapacity"}];
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_5:
    if ((*&has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_batteryDesignCapacity), @"batteryDesignCapacity"}];
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_6:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_batteryAbsoluteCapacity), @"batteryAbsoluteCapacity"}];
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_7:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_batteryVoltage), @"batteryVoltage"}];
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_8:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_batteryTimeRemaining), @"batteryTimeRemaining"}];
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_9:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_batteryExternalPowerIsConnected), @"batteryExternalPowerIsConnected"}];
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_10:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_batteryIsCharging), @"batteryIsCharging"}];
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_11:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_batteryFullyCharged), @"batteryFullyCharged"}];
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_12:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_batteryAtWarnLevel), @"batteryAtWarnLevel"}];
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_13:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_batteryAtCriticalLevel), @"batteryAtCriticalLevel"}];
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_14:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_devicePluggedIn), @"devicePluggedIn"}];
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_15:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_deviceScreenOn), @"deviceScreenOn"}];
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_16:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_17;
    }

LABEL_37:
    thermalPressure = self->_thermalPressure;
    if (thermalPressure > 9)
    {
      if (thermalPressure <= 29)
      {
        if (thermalPressure == 10)
        {
          v8 = @"NW_DEVICE_THERMAL_PRESSURE_LIGHT";
          goto LABEL_61;
        }

        if (thermalPressure == 20)
        {
          v8 = @"NW_DEVICE_THERMAL_PRESSURE_MODERATE";
          goto LABEL_61;
        }
      }

      else
      {
        switch(thermalPressure)
        {
          case 30:
            v8 = @"NW_DEVICE_THERMAL_PRESSURE_HEAVY";
            goto LABEL_61;
          case 40:
            v8 = @"NW_DEVICE_THERMAL_PRESSURE_TRAPPING";
            goto LABEL_61;
          case 50:
            v8 = @"NW_DEVICE_THERMAL_PRESSURE_SLEEPING";
            goto LABEL_61;
        }
      }
    }

    else if (thermalPressure <= 1)
    {
      if (!thermalPressure)
      {
        v8 = @"NW_DEVICE_THERMAL_PRESSURE_NOMINAL";
        goto LABEL_61;
      }

      if (thermalPressure == 1)
      {
        v8 = @"NW_DEVICE_THERMAL_PRESSURE_MODERATE_MAC";
        goto LABEL_61;
      }
    }

    else
    {
      switch(thermalPressure)
      {
        case 2:
          v8 = @"NW_DEVICE_THERMAL_PRESSURE_HEAVY_MAC";
          goto LABEL_61;
        case 3:
          v8 = @"NW_DEVICE_THERMAL_PRESSURE_TRAPPING_MAC";
          goto LABEL_61;
        case 4:
          v8 = @"NW_DEVICE_THERMAL_PRESSURE_SLEEPING_MAC";
          goto LABEL_61;
      }
    }

    v8 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_thermalPressure];
LABEL_61:
    [dictionary setObject:v8 forKey:@"thermalPressure"];
    if ((*&self->_has & 0x80) == 0)
    {
      goto LABEL_66;
    }

LABEL_62:
    cellularMode = self->_cellularMode;
    if (cellularMode >= 4)
    {
      v10 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_cellularMode];
    }

    else
    {
      v10 = off_29EE329D0[cellularMode];
    }

    [dictionary setObject:v10 forKey:@"cellularMode"];
    goto LABEL_66;
  }

LABEL_33:
  motionState = self->_motionState;
  if (motionState >= 6)
  {
    v6 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_motionState];
  }

  else
  {
    v6 = off_29EE329A0[motionState];
  }

  [dictionary setObject:v6 forKey:@"motionState"];
  has = self->_has;
  if ((*&has & 0x200) != 0)
  {
    goto LABEL_37;
  }

LABEL_17:
  if ((*&has & 0x80) != 0)
  {
    goto LABEL_62;
  }

LABEL_66:
  batteryAccumulator = self->_batteryAccumulator;
  if (batteryAccumulator)
  {
    [dictionary setObject:-[AWDNWAccumulator dictionaryRepresentation](batteryAccumulator forKey:{"dictionaryRepresentation"), @"batteryAccumulator"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if ((*&has & 0x10) != 0)
  {
    batteryPercentage = self->_batteryPercentage;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((*&has & 2) == 0)
    {
LABEL_3:
      if ((*&has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((*&has & 2) == 0)
  {
    goto LABEL_3;
  }

  batteryCurrentCapacity = self->_batteryCurrentCapacity;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_4:
    if ((*&has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  batteryMaximumCapacity = self->_batteryMaximumCapacity;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_5:
    if ((*&has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  batteryDesignCapacity = self->_batteryDesignCapacity;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_6:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_27:
  batteryAbsoluteCapacity = self->_batteryAbsoluteCapacity;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_7:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  batteryVoltage = self->_batteryVoltage;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_8:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  batteryTimeRemaining = self->_batteryTimeRemaining;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_9:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  batteryExternalPowerIsConnected = self->_batteryExternalPowerIsConnected;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_10:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  batteryIsCharging = self->_batteryIsCharging;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_11:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  batteryFullyCharged = self->_batteryFullyCharged;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_12:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_33:
  batteryAtWarnLevel = self->_batteryAtWarnLevel;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_13:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

LABEL_34:
  batteryAtCriticalLevel = self->_batteryAtCriticalLevel;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_14:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_36;
  }

LABEL_35:
  devicePluggedIn = self->_devicePluggedIn;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_15:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_37;
  }

LABEL_36:
  deviceScreenOn = self->_deviceScreenOn;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_16:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

LABEL_37:
  motionState = self->_motionState;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_17:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_38:
  thermalPressure = self->_thermalPressure;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_18:
    cellularMode = self->_cellularMode;
    PBDataWriterWriteInt32Field();
  }

LABEL_19:
  if (self->_batteryAccumulator)
  {

    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((*&has & 0x10) != 0)
  {
    *(to + 9) = self->_batteryPercentage;
    *(to + 17) |= 0x10u;
    has = self->_has;
    if ((*&has & 2) == 0)
    {
LABEL_3:
      if ((*&has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((*&has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(to + 6) = self->_batteryCurrentCapacity;
  *(to + 17) |= 2u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_4:
    if ((*&has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(to + 8) = self->_batteryMaximumCapacity;
  *(to + 17) |= 8u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_5:
    if ((*&has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(to + 7) = self->_batteryDesignCapacity;
  *(to + 17) |= 4u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_6:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(to + 2) = self->_batteryAbsoluteCapacity;
  *(to + 17) |= 1u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_7:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(to + 11) = self->_batteryVoltage;
  *(to + 17) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_8:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(to + 10) = self->_batteryTimeRemaining;
  *(to + 17) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_9:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(to + 62) = self->_batteryExternalPowerIsConnected;
  *(to + 17) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_10:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(to + 64) = self->_batteryIsCharging;
  *(to + 17) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_11:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(to + 63) = self->_batteryFullyCharged;
  *(to + 17) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_12:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(to + 61) = self->_batteryAtWarnLevel;
  *(to + 17) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_13:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(to + 60) = self->_batteryAtCriticalLevel;
  *(to + 17) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_14:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(to + 65) = self->_devicePluggedIn;
  *(to + 17) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_15:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(to + 66) = self->_deviceScreenOn;
  *(to + 17) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_16:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(to + 13) = self->_motionState;
  *(to + 17) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_17:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_36:
  *(to + 14) = self->_thermalPressure;
  *(to + 17) |= 0x200u;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_18:
    *(to + 12) = self->_cellularMode;
    *(to + 17) |= 0x80u;
  }

LABEL_19:
  batteryAccumulator = self->_batteryAccumulator;
  if (batteryAccumulator)
  {
    [to setBatteryAccumulator:batteryAccumulator];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((*&has & 0x10) != 0)
  {
    *(v5 + 36) = self->_batteryPercentage;
    *(v5 + 68) |= 0x10u;
    has = self->_has;
    if ((*&has & 2) == 0)
    {
LABEL_3:
      if ((*&has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((*&has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 24) = self->_batteryCurrentCapacity;
  *(v5 + 68) |= 2u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_4:
    if ((*&has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(v5 + 32) = self->_batteryMaximumCapacity;
  *(v5 + 68) |= 8u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_5:
    if ((*&has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v5 + 28) = self->_batteryDesignCapacity;
  *(v5 + 68) |= 4u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_6:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v5 + 8) = self->_batteryAbsoluteCapacity;
  *(v5 + 68) |= 1u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_7:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(v5 + 44) = self->_batteryVoltage;
  *(v5 + 68) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_8:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(v5 + 40) = self->_batteryTimeRemaining;
  *(v5 + 68) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_9:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v5 + 62) = self->_batteryExternalPowerIsConnected;
  *(v5 + 68) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_10:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v5 + 64) = self->_batteryIsCharging;
  *(v5 + 68) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_11:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(v5 + 63) = self->_batteryFullyCharged;
  *(v5 + 68) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_12:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(v5 + 61) = self->_batteryAtWarnLevel;
  *(v5 + 68) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_13:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(v5 + 60) = self->_batteryAtCriticalLevel;
  *(v5 + 68) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_14:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(v5 + 65) = self->_devicePluggedIn;
  *(v5 + 68) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_15:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(v5 + 66) = self->_deviceScreenOn;
  *(v5 + 68) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_16:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_17;
    }

LABEL_35:
    *(v5 + 56) = self->_thermalPressure;
    *(v5 + 68) |= 0x200u;
    if ((*&self->_has & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_34:
  *(v5 + 52) = self->_motionState;
  *(v5 + 68) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x200) != 0)
  {
    goto LABEL_35;
  }

LABEL_17:
  if ((*&has & 0x80) != 0)
  {
LABEL_18:
    *(v5 + 48) = self->_cellularMode;
    *(v5 + 68) |= 0x80u;
  }

LABEL_19:

  v6[2] = [(AWDNWAccumulator *)self->_batteryAccumulator copyWithZone:zone];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (!v5)
  {
    return v5;
  }

  has = self->_has;
  v7 = *(equal + 17);
  if ((*&has & 0x10) != 0)
  {
    if ((v7 & 0x10) == 0 || self->_batteryPercentage != *(equal + 9))
    {
      goto LABEL_110;
    }
  }

  else if ((v7 & 0x10) != 0)
  {
    goto LABEL_110;
  }

  if ((*&has & 2) != 0)
  {
    if ((v7 & 2) == 0 || self->_batteryCurrentCapacity != *(equal + 6))
    {
      goto LABEL_110;
    }
  }

  else if ((v7 & 2) != 0)
  {
    goto LABEL_110;
  }

  if ((*&has & 8) != 0)
  {
    if ((v7 & 8) == 0 || self->_batteryMaximumCapacity != *(equal + 8))
    {
      goto LABEL_110;
    }
  }

  else if ((v7 & 8) != 0)
  {
    goto LABEL_110;
  }

  if ((*&has & 4) != 0)
  {
    if ((v7 & 4) == 0 || self->_batteryDesignCapacity != *(equal + 7))
    {
      goto LABEL_110;
    }
  }

  else if ((v7 & 4) != 0)
  {
    goto LABEL_110;
  }

  if (*&has)
  {
    if ((v7 & 1) == 0 || self->_batteryAbsoluteCapacity != *(equal + 2))
    {
      goto LABEL_110;
    }
  }

  else if (v7)
  {
    goto LABEL_110;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v7 & 0x40) == 0 || self->_batteryVoltage != *(equal + 11))
    {
      goto LABEL_110;
    }
  }

  else if ((v7 & 0x40) != 0)
  {
    goto LABEL_110;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v7 & 0x20) == 0 || self->_batteryTimeRemaining != *(equal + 10))
    {
      goto LABEL_110;
    }
  }

  else if ((v7 & 0x20) != 0)
  {
    goto LABEL_110;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v7 & 0x1000) == 0)
    {
      goto LABEL_110;
    }

    v8 = *(equal + 62);
    if (self->_batteryExternalPowerIsConnected)
    {
      if ((*(equal + 62) & 1) == 0)
      {
        goto LABEL_110;
      }
    }

    else if (*(equal + 62))
    {
      goto LABEL_110;
    }
  }

  else if ((v7 & 0x1000) != 0)
  {
    goto LABEL_110;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v7 & 0x4000) == 0)
    {
      goto LABEL_110;
    }

    v9 = *(equal + 64);
    if (self->_batteryIsCharging)
    {
      if ((*(equal + 64) & 1) == 0)
      {
        goto LABEL_110;
      }
    }

    else if (*(equal + 64))
    {
      goto LABEL_110;
    }
  }

  else if ((v7 & 0x4000) != 0)
  {
    goto LABEL_110;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v7 & 0x2000) == 0)
    {
      goto LABEL_110;
    }

    v10 = *(equal + 63);
    if (self->_batteryFullyCharged)
    {
      if ((*(equal + 63) & 1) == 0)
      {
        goto LABEL_110;
      }
    }

    else if (*(equal + 63))
    {
      goto LABEL_110;
    }
  }

  else if ((v7 & 0x2000) != 0)
  {
    goto LABEL_110;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v7 & 0x800) == 0)
    {
      goto LABEL_110;
    }

    v11 = *(equal + 61);
    if (self->_batteryAtWarnLevel)
    {
      if ((*(equal + 61) & 1) == 0)
      {
        goto LABEL_110;
      }
    }

    else if (*(equal + 61))
    {
      goto LABEL_110;
    }
  }

  else if ((v7 & 0x800) != 0)
  {
    goto LABEL_110;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v7 & 0x400) == 0)
    {
      goto LABEL_110;
    }

    v12 = *(equal + 60);
    if (self->_batteryAtCriticalLevel)
    {
      if ((*(equal + 60) & 1) == 0)
      {
        goto LABEL_110;
      }
    }

    else if (*(equal + 60))
    {
      goto LABEL_110;
    }
  }

  else if ((v7 & 0x400) != 0)
  {
    goto LABEL_110;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v7 & 0x8000) == 0)
    {
      goto LABEL_110;
    }

    v13 = *(equal + 65);
    if (self->_devicePluggedIn)
    {
      if ((*(equal + 65) & 1) == 0)
      {
        goto LABEL_110;
      }
    }

    else if (*(equal + 65))
    {
      goto LABEL_110;
    }
  }

  else if ((v7 & 0x8000) != 0)
  {
    goto LABEL_110;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v7 & 0x10000) != 0)
    {
      v14 = *(equal + 66);
      if (self->_deviceScreenOn)
      {
        if ((*(equal + 66) & 1) == 0)
        {
          goto LABEL_110;
        }
      }

      else if (*(equal + 66))
      {
        goto LABEL_110;
      }

      goto LABEL_51;
    }

LABEL_110:
    LOBYTE(v5) = 0;
    return v5;
  }

  if ((v7 & 0x10000) != 0)
  {
    goto LABEL_110;
  }

LABEL_51:
  if ((*&has & 0x100) != 0)
  {
    if ((v7 & 0x100) == 0 || self->_motionState != *(equal + 13))
    {
      goto LABEL_110;
    }
  }

  else if ((v7 & 0x100) != 0)
  {
    goto LABEL_110;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v7 & 0x200) == 0 || self->_thermalPressure != *(equal + 14))
    {
      goto LABEL_110;
    }
  }

  else if ((v7 & 0x200) != 0)
  {
    goto LABEL_110;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v7 & 0x80) == 0 || self->_cellularMode != *(equal + 12))
    {
      goto LABEL_110;
    }
  }

  else if ((v7 & 0x80) != 0)
  {
    goto LABEL_110;
  }

  batteryAccumulator = self->_batteryAccumulator;
  if (batteryAccumulator | *(equal + 2))
  {

    LOBYTE(v5) = [(AWDNWAccumulator *)batteryAccumulator isEqual:?];
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((*&has & 0x10) != 0)
  {
    v7 = 2654435761 * self->_batteryPercentage;
    if ((*&has & 2) != 0)
    {
LABEL_3:
      v8 = 2654435761 * self->_batteryCurrentCapacity;
      if ((*&has & 8) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v7 = 0;
    if ((*&has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
  if ((*&has & 8) != 0)
  {
LABEL_4:
    v9 = 2654435761 * self->_batteryMaximumCapacity;
    if ((*&has & 4) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  v9 = 0;
  if ((*&has & 4) != 0)
  {
LABEL_5:
    v10 = 2654435761 * self->_batteryDesignCapacity;
    if (*&has)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  v10 = 0;
  if (*&has)
  {
LABEL_6:
    v11 = 2654435761 * self->_batteryAbsoluteCapacity;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  v11 = 0;
  if ((*&has & 0x40) != 0)
  {
LABEL_7:
    v12 = 2654435761 * self->_batteryVoltage;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  v12 = 0;
  if ((*&has & 0x20) != 0)
  {
LABEL_8:
    v13 = 2654435761 * self->_batteryTimeRemaining;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  v13 = 0;
  if ((*&has & 0x1000) != 0)
  {
LABEL_9:
    v14 = 2654435761 * self->_batteryExternalPowerIsConnected;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  v14 = 0;
  if ((*&has & 0x4000) != 0)
  {
LABEL_10:
    v15 = 2654435761 * self->_batteryIsCharging;
    if ((*&has & 0x2000) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  v15 = 0;
  if ((*&has & 0x2000) != 0)
  {
LABEL_11:
    v16 = 2654435761 * self->_batteryFullyCharged;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  v16 = 0;
  if ((*&has & 0x800) != 0)
  {
LABEL_12:
    v17 = 2654435761 * self->_batteryAtWarnLevel;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  v17 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_13:
    v18 = 2654435761 * self->_batteryAtCriticalLevel;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  v18 = 0;
  if ((*&has & 0x8000) != 0)
  {
LABEL_14:
    v19 = 2654435761 * self->_devicePluggedIn;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_15;
    }

LABEL_30:
    v20 = 0;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_31;
  }

LABEL_29:
  v19 = 0;
  if ((*&has & 0x10000) == 0)
  {
    goto LABEL_30;
  }

LABEL_15:
  v20 = 2654435761 * self->_deviceScreenOn;
  if ((*&has & 0x100) != 0)
  {
LABEL_16:
    v21 = 2654435761 * self->_motionState;
    goto LABEL_32;
  }

LABEL_31:
  v21 = 0;
LABEL_32:
  v25 = v2;
  if ((*&has & 0x200) != 0)
  {
    v22 = 2654435761 * self->_thermalPressure;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_34;
    }

LABEL_36:
    v23 = 0;
    return v8 ^ v7 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ [(AWDNWAccumulator *)self->_batteryAccumulator hash:v3];
  }

  v22 = 0;
  if ((*&has & 0x80) == 0)
  {
    goto LABEL_36;
  }

LABEL_34:
  v23 = 2654435761 * self->_cellularMode;
  return v8 ^ v7 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ [(AWDNWAccumulator *)self->_batteryAccumulator hash:v3];
}

- (void)mergeFrom:(id)from
{
  v3 = *(from + 17);
  if ((v3 & 0x10) != 0)
  {
    self->_batteryPercentage = *(from + 9);
    *&self->_has |= 0x10u;
    v3 = *(from + 17);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_batteryCurrentCapacity = *(from + 6);
  *&self->_has |= 2u;
  v3 = *(from + 17);
  if ((v3 & 8) == 0)
  {
LABEL_4:
    if ((v3 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_batteryMaximumCapacity = *(from + 8);
  *&self->_has |= 8u;
  v3 = *(from + 17);
  if ((v3 & 4) == 0)
  {
LABEL_5:
    if ((v3 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_batteryDesignCapacity = *(from + 7);
  *&self->_has |= 4u;
  v3 = *(from + 17);
  if ((v3 & 1) == 0)
  {
LABEL_6:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_batteryAbsoluteCapacity = *(from + 2);
  *&self->_has |= 1u;
  v3 = *(from + 17);
  if ((v3 & 0x40) == 0)
  {
LABEL_7:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_batteryVoltage = *(from + 11);
  *&self->_has |= 0x40u;
  v3 = *(from + 17);
  if ((v3 & 0x20) == 0)
  {
LABEL_8:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_batteryTimeRemaining = *(from + 10);
  *&self->_has |= 0x20u;
  v3 = *(from + 17);
  if ((v3 & 0x1000) == 0)
  {
LABEL_9:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_batteryExternalPowerIsConnected = *(from + 62);
  *&self->_has |= 0x1000u;
  v3 = *(from + 17);
  if ((v3 & 0x4000) == 0)
  {
LABEL_10:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_batteryIsCharging = *(from + 64);
  *&self->_has |= 0x4000u;
  v3 = *(from + 17);
  if ((v3 & 0x2000) == 0)
  {
LABEL_11:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_batteryFullyCharged = *(from + 63);
  *&self->_has |= 0x2000u;
  v3 = *(from + 17);
  if ((v3 & 0x800) == 0)
  {
LABEL_12:
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_batteryAtWarnLevel = *(from + 61);
  *&self->_has |= 0x800u;
  v3 = *(from + 17);
  if ((v3 & 0x400) == 0)
  {
LABEL_13:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  self->_batteryAtCriticalLevel = *(from + 60);
  *&self->_has |= 0x400u;
  v3 = *(from + 17);
  if ((v3 & 0x8000) == 0)
  {
LABEL_14:
    if ((v3 & 0x10000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  self->_devicePluggedIn = *(from + 65);
  *&self->_has |= 0x8000u;
  v3 = *(from + 17);
  if ((v3 & 0x10000) == 0)
  {
LABEL_15:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  self->_deviceScreenOn = *(from + 66);
  *&self->_has |= 0x10000u;
  v3 = *(from + 17);
  if ((v3 & 0x100) == 0)
  {
LABEL_16:
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  self->_motionState = *(from + 13);
  *&self->_has |= 0x100u;
  v3 = *(from + 17);
  if ((v3 & 0x200) == 0)
  {
LABEL_17:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_37:
  self->_thermalPressure = *(from + 14);
  *&self->_has |= 0x200u;
  if ((*(from + 17) & 0x80) != 0)
  {
LABEL_18:
    self->_cellularMode = *(from + 12);
    *&self->_has |= 0x80u;
  }

LABEL_19:
  v4 = *(from + 2);
  if (self->_batteryAccumulator)
  {
    if (v4)
    {
      [(AWDNWAccumulator *)self->_batteryAccumulator mergeFrom:?];
    }
  }

  else if (v4)
  {
    [(AWDNWDeviceReport *)self setBatteryAccumulator:?];
  }
}

@end