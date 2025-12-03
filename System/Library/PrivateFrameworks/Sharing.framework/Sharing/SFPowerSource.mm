@interface SFPowerSource
- (BOOL)isEqual:(id)equal;
- (BOOL)isInternal;
- (BOOL)wirelessCharging;
- (NSArray)LEDs;
- (SFPowerSource)init;
- (SFPowerSource)initWithCoder:(id)coder;
- (id)description;
- (id)detailedDescription;
- (int)publish;
- (int64_t)matID;
- (unint64_t)hash;
- (unsigned)updateWithPowerAdapterDetails:(id)details;
- (unsigned)updateWithPowerSourceDescription:(id)description;
- (void)_updateWithCoder:(id)coder;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
- (void)lowPowerModeChanged:(int)changed;
- (void)startLowPowerMonitoringIfAppropriate;
- (void)updateWithPowerSource:(id)source;
@end

@implementation SFPowerSource

- (int64_t)matID
{
  if (!IsAppleInternalBuild() || ![(SFPowerSource *)self wirelessCharging]|| !BOOLeanValueForPreference(@"EnableAnyCharger", 0))
  {
    goto LABEL_19;
  }

  if ([(SFPowerSource *)self isInternal])
  {
    return 123456789;
  }

  accessoryCategory = [(SFPowerSource *)self accessoryCategory];
  v4 = accessoryCategory;
  if (accessoryCategory == @"Battery Case" || accessoryCategory && (v5 = [(__CFString *)accessoryCategory isEqual:@"Battery Case"], v4, (v5 & 1) != 0))
  {
LABEL_16:

    return 123456789;
  }

  accessoryCategory2 = [(SFPowerSource *)self accessoryCategory];
  v7 = accessoryCategory2;
  if (accessoryCategory2 == @"Watch" || accessoryCategory2 && (v8 = [(__CFString *)accessoryCategory2 isEqual:@"Watch"], v7, (v8 & 1) != 0) || ([(SFPowerSource *)self partID], v9 = objc_claimAutoreleasedReturnValue(), v9 == @"Case"))
  {

    goto LABEL_16;
  }

  v10 = v9;
  if (v9)
  {
    v11 = [(__CFString *)v9 isEqual:@"Case"];

    if ((v11 & 1) == 0)
    {
      goto LABEL_19;
    }

    return 123456789;
  }

LABEL_19:

  return [(SFPowerSource *)self adapterSourceID];
}

- (id)description
{
  v66 = 0;
  selfCopy = self;
  NSAppendPrintF();
  v3 = 0;
  v4 = v3;
  sourceID = self->_sourceID;
  if (sourceID)
  {
    v65 = v3;
    selfCopy = sourceID;
    NSAppendPrintF();
    v6 = v65;

    v4 = v6;
  }

  accessoryCategory = self->_accessoryCategory;
  if (accessoryCategory)
  {
    v64 = v4;
    selfCopy = accessoryCategory;
    NSAppendPrintF();
    v8 = v4;

    v4 = v8;
  }

  accessoryID = self->_accessoryID;
  if (accessoryID)
  {
    v63 = v4;
    selfCopy = accessoryID;
    NSAppendPrintF();
    v10 = v4;

    v4 = v10;
  }

  batteryCaseAddress = self->_batteryCaseAddress;
  if (batteryCaseAddress)
  {
    v62 = v4;
    selfCopy = batteryCaseAddress;
    NSAppendPrintF();
    v12 = v4;

    v4 = v12;
  }

  chargeLevel = self->_chargeLevel;
  if (chargeLevel != 0.0)
  {
    v61 = v4;
    v57 = chargeLevel * 100.0;
    v14 = 45;
    if (self->_charging)
    {
      v14 = 43;
    }

    selfCopy = v14;
    NSAppendPrintF();
    v15 = v61;

    v4 = v15;
  }

  groupID = self->_groupID;
  if (groupID)
  {
    v60[24] = v4;
    selfCopy = groupID;
    NSAppendPrintF();
    v17 = v4;

    v4 = v17;
  }

  if ([(SFPowerSource *)self matID:selfCopy])
  {
    v60[23] = v4;
    matID = [(SFPowerSource *)self matID];
    NSAppendPrintF();
    v18 = v4;

    if ([(SFPowerSource *)self matID]== 0xFFFF)
    {
      v60[22] = v18;
      NSAppendPrintF();
      v19 = v18;

      v18 = v19;
    }

    if ([(SFPowerSource *)self matID]== 123456789)
    {
      v60[21] = v18;
      NSAppendPrintF();
      v4 = v18;
    }

    else
    {
      v4 = v18;
    }
  }

  partID = self->_partID;
  if (partID)
  {
    v60[20] = v4;
    v54 = partID;
    NSAppendPrintF();
    v21 = v4;

    v4 = v21;
  }

  productID = self->_productID;
  if (productID)
  {
    v60[19] = v4;
    v54 = productID;
    NSAppendPrintF();
    v23 = v4;

    v4 = v23;
  }

  color = self->_color;
  if (color != -1)
  {
    v60[18] = v4;
    v54 = color;
    NSAppendPrintF();
    v25 = v4;

    v4 = v25;
  }

  adapterErrorFlags = self->_adapterErrorFlags;
  if (adapterErrorFlags)
  {
    v60[17] = v4;
    v54 = adapterErrorFlags;
    NSAppendPrintF();
    v27 = v4;

    v4 = v27;
  }

  adapterFamilyCode = self->_adapterFamilyCode;
  if (adapterFamilyCode)
  {
    v60[16] = v4;
    v54 = adapterFamilyCode;
    NSAppendPrintF();
    v29 = v4;

    v4 = v29;
  }

  adapterName = self->_adapterName;
  if (adapterName)
  {
    v60[15] = v4;
    v54 = adapterName;
    NSAppendPrintF();
    v31 = v4;

    v4 = v31;
  }

  if (self->_adapterSharedSource)
  {
    v60[14] = v4;
    v54 = "yes";
    NSAppendPrintF();
    v32 = v4;

    v4 = v32;
  }

  adapterSourceID = self->_adapterSourceID;
  if (adapterSourceID)
  {
    v60[13] = v4;
    v54 = adapterSourceID;
    NSAppendPrintF();
    v34 = v4;

    v4 = v34;
  }

  if (self->_showChargingUI)
  {
    v60[12] = v4;
    v54 = "yes";
    NSAppendPrintF();
    v35 = v4;

    v4 = v35;
  }

  familyCode = self->_familyCode;
  if (familyCode)
  {
    v60[11] = v4;
    v54 = familyCode;
    NSAppendPrintF();
    v37 = v4;

    v4 = v37;
  }

  if ([(NSArray *)self->_LEDs count])
  {
    v60[10] = v4;
    LEDs = self->_LEDs;
    NSAppendPrintF();
    v38 = v4;

    v4 = v38;
  }

  if (self->_maxCapacity > 0.0)
  {
    v60[9] = v4;
    NSAppendPrintF();
    v39 = v4;

    v4 = v39;
  }

  if (self->_vendorID)
  {
    v60[8] = v4;
    NSAppendPrintF();
    v40 = v4;

    v4 = v40;
  }

  if (self->_temperature)
  {
    v60[7] = v4;
    NSAppendPrintF();
    v41 = v4;

    v4 = v41;
  }

  if (self->_type)
  {
    v60[6] = v4;
    NSAppendPrintF();
    v42 = v4;

    v4 = v42;
  }

  if (self->_transportType)
  {
    v60[5] = v4;
    NSAppendPrintF();
    v43 = v4;

    v4 = v43;
  }

  if (self->_name)
  {
    v60[4] = v4;
    NSAppendPrintF();
    v44 = v4;

    v4 = v44;
  }

  if (self->_lowPowerModeEnabled)
  {
    v60[3] = v4;
    NSAppendPrintF();
    v45 = v4;

    v4 = v45;
  }

  if (self->_lowWarnLevel != 0.0)
  {
    v60[2] = v4;
    NSAppendPrintF();
    v46 = v4;

    v4 = v46;
  }

  if (self->_powerState)
  {
    v60[1] = v4;
    NSAppendPrintF();
    v47 = v4;

    powerState = self->_powerState;
    if (powerState == 1)
    {
      if (self->_charging)
      {
        v60[0] = v47;
        v49 = v60;
      }

      else
      {
        v59 = v47;
        v49 = &v59;
      }
    }

    else
    {
      v58 = v47;
      if (powerState <= 4)
      {
        v50 = off_1E788D9B8[powerState];
      }

      v49 = &v58;
    }

    NSAppendPrintF();
    v4 = *v49;
  }

  NSAppendPrintF();
  v51 = v4;

  return v4;
}

- (BOOL)wirelessCharging
{
  v3 = [(SFPowerSource *)self charging]&& IsAppleInternalBuild() && BOOLeanValueForPreference(@"EnableAnyCharger", 0) != 0;
  accessoryCategory = [(SFPowerSource *)self accessoryCategory];
  v5 = accessoryCategory;
  if (accessoryCategory != @"Battery Case")
  {
    if (!accessoryCategory)
    {
      goto LABEL_12;
    }

    v6 = [(__CFString *)accessoryCategory isEqual:@"Battery Case"];

    if (!v6)
    {
      goto LABEL_12;
    }
  }

  transportType = [(SFPowerSource *)self transportType];
  if (transportType != @"AID")
  {
    v8 = transportType;
    if (transportType)
    {
      v9 = [(__CFString *)transportType isEqual:@"AID"];

      if (v9)
      {
        goto LABEL_15;
      }

LABEL_13:
      adapterFamilyCode = [(SFPowerSource *)self adapterFamilyCode];
      goto LABEL_16;
    }

LABEL_12:

    goto LABEL_13;
  }

LABEL_15:
  adapterFamilyCode = [(SFPowerSource *)self familyCode];
LABEL_16:
  v11 = adapterFamilyCode;
  charging = [(SFPowerSource *)self charging];
  groupID = [(SFPowerSource *)self groupID];
  if (groupID == @"Internal")
  {
    goto LABEL_25;
  }

  v14 = groupID;
  if (groupID)
  {
    v15 = [(__CFString *)groupID isEqual:@"Internal"];

    if (v15)
    {
      goto LABEL_25;
    }
  }

  accessoryCategory2 = [(SFPowerSource *)self accessoryCategory];
  if (accessoryCategory2 == @"Battery Case")
  {
    goto LABEL_25;
  }

  v17 = accessoryCategory2;
  if (accessoryCategory2)
  {
    v18 = [(__CFString *)accessoryCategory2 isEqual:@"Battery Case"];

    if (v18)
    {
      goto LABEL_25;
    }
  }

  accessoryCategory3 = [(SFPowerSource *)self accessoryCategory];
  if (accessoryCategory3 == @"Watch" || (v20 = accessoryCategory3) != 0 && (v21 = [(__CFString *)accessoryCategory3 isEqual:@"Watch"], v20, v20, v21))
  {
LABEL_25:
    v22 = v11 == -536723452 && charging;
  }

  else
  {
    partID = [(SFPowerSource *)self partID];
    if (partID != @"Case")
    {
      v26 = partID;
      if (!partID)
      {
        return 0;
      }

      v27 = [(__CFString *)partID isEqual:@"Case"];

      if (!v27)
      {
        return 0;
      }
    }

    if ([(SFPowerSource *)self adapterSourceID])
    {
      v28 = [(SFPowerSource *)self adapterSourceID]!= 0xFFFF;
    }

    else
    {
      v28 = 0;
    }

    if (v11 == -536723452)
    {
      v28 = 1;
    }

    v22 = v28 && (v28 || charging);
  }

  return v22 || v3;
}

- (BOOL)isInternal
{
  type = [(SFPowerSource *)self type];
  v3 = type;
  if (type == @"InternalBattery")
  {
    v4 = 1;
  }

  else if (type)
  {
    v4 = [(__CFString *)type isEqual:@"InternalBattery"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)startLowPowerMonitoringIfAppropriate
{
  if ([(SFPowerSource *)self isInternal]&& self->_lowPowerMonitoringToken == -1)
  {
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __53__SFPowerSource_startLowPowerMonitoringIfAppropriate__block_invoke;
    handler[3] = &unk_1E788CB60;
    handler[4] = self;
    if (!notify_register_dispatch("com.apple.system.batterysavermode", &self->_lowPowerMonitoringToken, MEMORY[0x1E69E96A0], handler))
    {
      [(SFPowerSource *)self lowPowerModeChanged:self->_lowPowerMonitoringToken];
    }
  }
}

- (SFPowerSource)init
{
  v6.receiver = self;
  v6.super_class = SFPowerSource;
  v2 = [(SFPowerSource *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_lowPowerMonitoringToken = -1;
    v2->_color = -1;
    v4 = v2;
  }

  return v3;
}

- (SFPowerSource)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFPowerSource *)self init];
  v6 = v5;
  if (v5)
  {
    [(SFPowerSource *)v5 _updateWithCoder:coderCopy];
    v7 = v6;
  }

  return v6;
}

- (void)_updateWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  NSDecodeObjectIfPresent();
  [(SFPowerSource *)self setAccessoryCategory:0];
  v5 = coderCopy;
  objc_opt_class();
  NSDecodeObjectIfPresent();

  [(SFPowerSource *)self setAccessoryID:0];
  v6 = v5;
  objc_opt_class();
  NSDecodeObjectIfPresent();

  [(SFPowerSource *)self setBatteryCaseAddress:0];
  v7 = v6;
  v8 = 0;
  if ([v7 containsValueForKey:@"adapterErrorFlag"])
  {
    v8 = [v7 decodeIntegerForKey:@"adapterErrorFlag"];
  }

  [(SFPowerSource *)self setAdapterErrorFlags:v8];
  v9 = v7;
  if ([v9 containsValueForKey:@"adapterFamilyCode"])
  {
    v10 = [v9 decodeIntegerForKey:@"adapterFamilyCode"];
  }

  else
  {
    v10 = 0;
  }

  [(SFPowerSource *)self setAdapterFamilyCode:v10];
  v11 = v9;
  objc_opt_class();
  NSDecodeObjectIfPresent();

  [(SFPowerSource *)self setAdapterName:0];
  v12 = v11;
  if ([v12 containsValueForKey:@"adapterSharedSource"])
  {
    v13 = [v12 decodeBoolForKey:@"adapterSharedSource"];
  }

  else
  {
    v13 = 0;
  }

  [(SFPowerSource *)self setAdapterSharedSource:v13];
  v14 = v12;
  if ([v14 containsValueForKey:@"adapterSourceID"])
  {
    v15 = [v14 decodeIntegerForKey:@"adapterSourceID"];
  }

  else
  {
    v15 = 0;
  }

  [(SFPowerSource *)self setAdapterSourceID:v15];
  v16 = v14;
  if ([v16 containsValueForKey:@"charging"])
  {
    v17 = [v16 decodeBoolForKey:@"charging"];
  }

  else
  {
    v17 = 0;
  }

  [(SFPowerSource *)self setCharging:v17];
  v18 = v16;
  v19 = 0.0;
  if ([v18 containsValueForKey:@"chargeLevel"])
  {
    [v18 decodeDoubleForKey:@"chargeLevel"];
    v19 = v20;
  }

  [(SFPowerSource *)self setChargeLevel:v19];
  v21 = v18;
  if ([v21 containsValueForKey:@"color"])
  {
    v22 = [v21 decodeIntegerForKey:@"color"];
  }

  else
  {
    v22 = -1;
  }

  [(SFPowerSource *)self setColor:v22];
  v23 = v21;
  if ([v23 containsValueForKey:@"familyCode"])
  {
    v24 = [v23 decodeIntegerForKey:@"familyCode"];
  }

  else
  {
    v24 = 0;
  }

  [(SFPowerSource *)self setFamilyCode:v24];
  v25 = v23;
  objc_opt_class();
  NSDecodeObjectIfPresent();

  [(SFPowerSource *)self setGroupID:0];
  objc_opt_class();
  NSDecodeNSArrayOfClassIfPresent();
  [(SFPowerSource *)self setLEDs:0];
  v26 = v25;
  v27 = 0.0;
  v28 = 0.0;
  if ([v26 containsValueForKey:@"lowWarnLevel"])
  {
    [v26 decodeDoubleForKey:@"lowWarnLevel"];
    v28 = v29;
  }

  [(SFPowerSource *)self setLowWarnLevel:v28];
  v30 = v26;
  if ([v30 containsValueForKey:@"maxCapacity"])
  {
    [v30 decodeDoubleForKey:@"maxCapacity"];
    v27 = v31;
  }

  [(SFPowerSource *)self setMaxCapacity:v27];
  v32 = v30;
  objc_opt_class();
  NSDecodeObjectIfPresent();

  [(SFPowerSource *)self setName:0];
  v33 = v32;
  objc_opt_class();
  NSDecodeObjectIfPresent();

  [(SFPowerSource *)self setPartID:0];
  v34 = v33;
  objc_opt_class();
  NSDecodeObjectIfPresent();

  [(SFPowerSource *)self setPartName:0];
  NSDecodeSInt64RangedIfPresent();
  [(SFPowerSource *)self setPowerState:0];
  v35 = v34;
  v36 = 0;
  if ([v35 containsValueForKey:@"productID"])
  {
    v36 = [v35 decodeIntegerForKey:@"productID"];
  }

  [(SFPowerSource *)self setProductID:v36];
  NSDecodeSInt64RangedIfPresent();
  [(SFPowerSource *)self setRole:0];
  v37 = v35;
  v38 = 0;
  if ([v37 containsValueForKey:@"sourceID"])
  {
    v38 = [v37 decodeIntegerForKey:@"sourceID"];
  }

  [(SFPowerSource *)self setSourceID:v38];
  v39 = v37;
  objc_opt_class();
  NSDecodeObjectIfPresent();

  [(SFPowerSource *)self setState:0];
  v40 = v39;
  v41 = 0;
  if ([v40 containsValueForKey:@"temperature"])
  {
    v41 = [v40 decodeIntegerForKey:@"temperature"];
  }

  [(SFPowerSource *)self setTemperature:v41];
  v42 = v40;
  objc_opt_class();
  NSDecodeObjectIfPresent();

  [(SFPowerSource *)self setTransportType:0];
  v43 = v42;
  objc_opt_class();
  NSDecodeObjectIfPresent();

  [(SFPowerSource *)self setType:0];
  v44 = v43;
  v45 = 0;
  if ([v44 containsValueForKey:@"vendorID"])
  {
    v45 = [v44 decodeIntegerForKey:@"vendorID"];
  }

  [(SFPowerSource *)self setVendorID:v45];
  ioKitDescription = self->_ioKitDescription;
  self->_ioKitDescription = 0;

  v47 = v44;
  objc_opt_class();
  NSDecodeStandardContainerIfPresent();

  self->_present = 0;
  v48 = v47;
  if ([v48 containsValueForKey:@"present"])
  {
    self->_present = [v48 decodeBoolForKey:@"present"];
  }

  [(SFPowerSource *)self startLowPowerMonitoringIfAppropriate];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accessoryCategory = self->_accessoryCategory;
  if (accessoryCategory)
  {
    [coderCopy encodeObject:accessoryCategory forKey:@"accessoryCategory"];
  }

  accessoryID = self->_accessoryID;
  if (accessoryID)
  {
    [coderCopy encodeObject:accessoryID forKey:@"accessoryID"];
  }

  adapterErrorFlags = self->_adapterErrorFlags;
  if (adapterErrorFlags)
  {
    [coderCopy encodeInteger:adapterErrorFlags forKey:@"adapterErrorFlag"];
  }

  adapterFamilyCode = self->_adapterFamilyCode;
  if (adapterFamilyCode)
  {
    [coderCopy encodeInteger:adapterFamilyCode forKey:@"adapterFamilyCode"];
  }

  adapterName = self->_adapterName;
  if (adapterName)
  {
    [coderCopy encodeObject:adapterName forKey:@"adapterName"];
  }

  if (self->_adapterSharedSource)
  {
    [coderCopy encodeBool:1 forKey:@"adapterSharedSource"];
  }

  adapterSourceID = self->_adapterSourceID;
  if (adapterSourceID)
  {
    [coderCopy encodeInteger:adapterSourceID forKey:@"adapterSourceID"];
  }

  batteryCaseAddress = self->_batteryCaseAddress;
  if (batteryCaseAddress)
  {
    [coderCopy encodeObject:batteryCaseAddress forKey:@"batteryCaseAddress"];
  }

  if (self->_charging)
  {
    [coderCopy encodeBool:1 forKey:@"charging"];
  }

  if (self->_chargeLevel > 0.0)
  {
    [coderCopy encodeDouble:@"chargeLevel" forKey:?];
  }

  color = self->_color;
  if (color != -1)
  {
    [coderCopy encodeInteger:color forKey:@"color"];
  }

  familyCode = self->_familyCode;
  if (familyCode)
  {
    [coderCopy encodeInteger:familyCode forKey:@"familyCode"];
  }

  groupID = self->_groupID;
  if (groupID)
  {
    [coderCopy encodeObject:groupID forKey:@"groupID"];
  }

  if ([(NSArray *)self->_LEDs count])
  {
    [coderCopy encodeObject:self->_LEDs forKey:@"LEDs"];
  }

  if (self->_lowPowerModeEnabled)
  {
    [coderCopy encodeBool:1 forKey:@"lowPowerMode"];
  }

  v14 = coderCopy;
  if (self->_lowWarnLevel > 0.0)
  {
    [coderCopy encodeDouble:@"lowWarnLevel" forKey:?];
    v14 = coderCopy;
  }

  if (self->_maxCapacity > 0.0)
  {
    [coderCopy encodeDouble:@"maxCapacity" forKey:?];
    v14 = coderCopy;
  }

  name = self->_name;
  if (name)
  {
    [coderCopy encodeObject:name forKey:@"name"];
    v14 = coderCopy;
  }

  partID = self->_partID;
  if (partID)
  {
    [coderCopy encodeObject:partID forKey:@"partID"];
    v14 = coderCopy;
  }

  partName = self->_partName;
  if (partName)
  {
    [coderCopy encodeObject:partName forKey:@"partName"];
    v14 = coderCopy;
  }

  powerState = self->_powerState;
  if (powerState)
  {
    [coderCopy encodeInteger:powerState forKey:@"powerState"];
    v14 = coderCopy;
  }

  productID = self->_productID;
  if (productID)
  {
    [coderCopy encodeInteger:productID forKey:@"productID"];
    v14 = coderCopy;
  }

  role = self->_role;
  if (role)
  {
    [coderCopy encodeInteger:role forKey:@"role"];
    v14 = coderCopy;
  }

  sourceID = self->_sourceID;
  if (sourceID)
  {
    [coderCopy encodeInteger:sourceID forKey:@"sourceID"];
    v14 = coderCopy;
  }

  state = self->_state;
  if (state)
  {
    [coderCopy encodeObject:state forKey:@"state"];
    v14 = coderCopy;
  }

  temperature = self->_temperature;
  if (temperature)
  {
    [coderCopy encodeInteger:temperature forKey:@"temperature"];
    v14 = coderCopy;
  }

  transportType = self->_transportType;
  if (transportType)
  {
    [coderCopy encodeObject:transportType forKey:@"transportType"];
    v14 = coderCopy;
  }

  type = self->_type;
  if (type)
  {
    [coderCopy encodeObject:type forKey:@"type"];
    v14 = coderCopy;
  }

  vendorID = self->_vendorID;
  if (vendorID)
  {
    [coderCopy encodeInteger:vendorID forKey:@"vendorID"];
    v14 = coderCopy;
  }

  ioKitDescription = self->_ioKitDescription;
  if (ioKitDescription)
  {
    [coderCopy encodeObject:ioKitDescription forKey:@"ioKitDictionary"];
    v14 = coderCopy;
  }

  if (self->_present)
  {
    [coderCopy encodeBool:1 forKey:@"present"];
    v14 = coderCopy;
  }
}

- (void)dealloc
{
  [(SFPowerSource *)self invalidate];
  v3.receiver = self;
  v3.super_class = SFPowerSource;
  [(SFPowerSource *)&v3 dealloc];
}

- (unint64_t)hash
{
  sourceID = self->_sourceID;
  v4 = [(NSString *)self->_accessoryID hash]^ sourceID;
  v5 = [(NSData *)self->_batteryCaseAddress hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_groupID hash];
  v7 = [(NSString *)self->_accessoryCategory hash];
  return v6 ^ v7 ^ [(NSString *)self->_partID hash];
}

- (id)detailedDescription
{
  if (self->_ioKitAdapterDescription)
  {
    ioKitDescription = self->_ioKitDescription;
    ioKitAdapterDescription = self->_ioKitAdapterDescription;
  }

  else
  {
    v5 = self->_ioKitDescription;
  }

  v2 = NSPrintF();

  return v2;
}

- (int)publish
{
  v69 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v60 = selfCopy;
  if (selfCopy->_psID || (v54 = IOPSCreatePowerSource()) == 0)
  {
    v59 = objc_alloc_init(MEMORY[0x1E695DF90]);
    accessoryCategory = selfCopy->_accessoryCategory;
    if (accessoryCategory)
    {
      [(NSDictionary *)v59 setObject:accessoryCategory forKeyedSubscript:@"Accessory Category"];
    }

    accessoryID = selfCopy->_accessoryID;
    if (accessoryID)
    {
      [(NSDictionary *)v59 setObject:accessoryID forKeyedSubscript:@"Accessory Identifier"];
    }

    batteryCaseAddress = selfCopy->_batteryCaseAddress;
    if (batteryCaseAddress)
    {
      [(NSDictionary *)v59 setObject:batteryCaseAddress forKeyedSubscript:@"Address"];
    }

    v6 = [MEMORY[0x1E696AD98] numberWithBool:{selfCopy->_charging, &selfCopy->_psID}];
    [(NSDictionary *)v59 setObject:v6 forKeyedSubscript:@"Is Charging"];

    v7 = [MEMORY[0x1E696AD98] numberWithInt:fabs(selfCopy->_chargeLevel + -1.0) < 0.00000011920929];
    [(NSDictionary *)v59 setObject:v7 forKeyedSubscript:@"Is Charged"];

    v8 = [MEMORY[0x1E696AD98] numberWithInt:(selfCopy->_chargeLevel * 100.0)];
    [(NSDictionary *)v59 setObject:v8 forKeyedSubscript:@"Current Capacity"];

    if (selfCopy->_color != -1)
    {
      v9 = [MEMORY[0x1E696AD98] numberWithInteger:?];
      [(NSDictionary *)v59 setObject:v9 forKeyedSubscript:@"Device Color"];
    }

    groupID = selfCopy->_groupID;
    if (groupID)
    {
      [(NSDictionary *)v59 setObject:groupID forKeyedSubscript:@"Group Identifier"];
    }

    if ([(NSArray *)selfCopy->_LEDs count])
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      obj = selfCopy->_LEDs;
      v12 = [(NSArray *)obj countByEnumeratingWithState:&v62 objects:v68 count:16];
      if (v12)
      {
        v13 = *v63;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v63 != v13)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v62 + 1) + 8 * i);
            v16 = MEMORY[0x1E696AEC0];
            lEDState = [v15 LEDState];
            v18 = "?";
            if (lEDState <= 2)
            {
              v18 = off_1E788D9E0[lEDState];
            }

            v19 = [v16 stringWithUTF8String:v18];
            v20 = MEMORY[0x1E696AEC0];
            lEDColor = [v15 LEDColor];
            v22 = "?";
            if (lEDColor <= 4)
            {
              v22 = off_1E788D9F8[lEDColor];
            }

            v23 = [v20 stringWithUTF8String:v22];
            v66[0] = @"State";
            v66[1] = @"Color";
            v67[0] = v19;
            v67[1] = v23;
            v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v67 forKeys:v66 count:2];
            [v11 addObject:v24];
          }

          v12 = [(NSArray *)obj countByEnumeratingWithState:&v62 objects:v68 count:16];
        }

        while (v12);
      }

      [(NSDictionary *)v59 setObject:v11 forKeyedSubscript:@"LEDs"];
    }

    v25 = [MEMORY[0x1E696AD98] numberWithBool:selfCopy->_lowPowerModeEnabled];
    [(NSDictionary *)v59 setObject:v25 forKeyedSubscript:@"LPM Active"];

    lowWarnLevel = selfCopy->_lowWarnLevel;
    if (lowWarnLevel > 0.0)
    {
      v27 = [MEMORY[0x1E696AD98] numberWithInt:(lowWarnLevel * 100.0)];
      [(NSDictionary *)v59 setObject:v27 forKeyedSubscript:@"Low Warn Level"];
    }

    v28 = [MEMORY[0x1E696AD98] numberWithDouble:selfCopy->_maxCapacity];
    [(NSDictionary *)v59 setObject:v28 forKeyedSubscript:@"Max Capacity"];

    name = selfCopy->_name;
    if (name)
    {
      [(NSDictionary *)v59 setObject:name forKeyedSubscript:@"Name"];
    }

    partID = selfCopy->_partID;
    if (partID)
    {
      [(NSDictionary *)v59 setObject:partID forKeyedSubscript:@"Part Identifier"];
    }

    partName = selfCopy->_partName;
    if (partName)
    {
      [(NSDictionary *)v59 setObject:partName forKeyedSubscript:@"Part Name"];
    }

    if (selfCopy->_productID)
    {
      v32 = [MEMORY[0x1E696AD98] numberWithInteger:?];
      [(NSDictionary *)v59 setObject:v32 forKeyedSubscript:@"Product ID"];
    }

    state = selfCopy->_state;
    if (state)
    {
      [(NSDictionary *)v59 setObject:state forKeyedSubscript:@"Power Source State"];
    }

    v34 = [MEMORY[0x1E696AD98] numberWithInteger:selfCopy->_temperature];
    [(NSDictionary *)v59 setObject:v34 forKeyedSubscript:@"Temperature"];

    transportType = selfCopy->_transportType;
    if (transportType)
    {
      [(NSDictionary *)v59 setObject:transportType forKeyedSubscript:@"Transport Type"];
    }

    type = selfCopy->_type;
    if (type)
    {
      [(NSDictionary *)v59 setObject:type forKeyedSubscript:@"Type"];
    }

    if (selfCopy->_vendorID)
    {
      v37 = [MEMORY[0x1E696AD98] numberWithInteger:?];
      [(NSDictionary *)v59 setObject:v37 forKeyedSubscript:@"Vendor ID"];
    }

    v38 = selfCopy->_type;
    if (v38 == @"Accessory Source" || (v39 = v38) != 0 && (v40 = [(__CFString *)v38 isEqual:@"Accessory Source"], v39, v40))
    {
      v41 = objc_alloc_init(MEMORY[0x1E695DF90]);
      if (selfCopy->_adapterErrorFlags)
      {
        v42 = [MEMORY[0x1E696AD98] numberWithInteger:?];
        [v41 setObject:v42 forKeyedSubscript:@"ErrorFlags"];
      }

      if (selfCopy->_adapterFamilyCode)
      {
        v43 = [MEMORY[0x1E696AD98] numberWithInteger:?];
        [v41 setObject:v43 forKeyedSubscript:@"FamilyCode"];
      }

      adapterName = selfCopy->_adapterName;
      if (adapterName)
      {
        [v41 setObject:adapterName forKeyedSubscript:@"Name"];
      }

      v45 = [MEMORY[0x1E696AD98] numberWithBool:selfCopy->_adapterSharedSource];
      [v41 setObject:v45 forKeyedSubscript:@"SharedSource"];

      if (selfCopy->_adapterSourceID)
      {
        v46 = [MEMORY[0x1E696AD98] numberWithInteger:?];
        [v41 setObject:v46 forKeyedSubscript:@"Source"];
      }

      [(NSDictionary *)v59 setObject:v41 forKeyedSubscript:@"AdapterDetails"];
    }

    v47 = v59;
    if (!v59)
    {
      goto LABEL_65;
    }

    p_ioKitDescription = &selfCopy->_ioKitDescription;
    ioKitDescription = selfCopy->_ioKitDescription;
    v50 = v59;
    v51 = ioKitDescription;
    v52 = v51;
    if (v50 == v51)
    {

      v47 = v59;
    }

    else
    {
      if (v51)
      {
        v53 = [(NSDictionary *)v50 isEqual:v51];

        v47 = v59;
        if (v53)
        {
          goto LABEL_65;
        }
      }

      else
      {

        v47 = v59;
      }

      objc_storeStrong(p_ioKitDescription, v47);
      v55 = *v58;
      v54 = IOPSSetPowerSourceDetails();
      v47 = v59;
      if (v54)
      {
        goto LABEL_66;
      }
    }

LABEL_65:
    v54 = 0;
    v50 = v47;
    goto LABEL_66;
  }

  v50 = 0;
LABEL_66:

  objc_sync_exit(v60);
  v56 = *MEMORY[0x1E69E9840];
  return v54;
}

- (void)invalidate
{
  obj = self;
  objc_sync_enter(obj);
  v2 = obj;
  lowPowerMonitoringToken = obj->_lowPowerMonitoringToken;
  if (lowPowerMonitoringToken != -1)
  {
    notify_cancel(lowPowerMonitoringToken);
    v2 = obj;
    obj->_lowPowerMonitoringToken = -1;
  }

  if (v2->_psID)
  {
    IOPSReleasePowerSource();
    v2 = obj;
    obj->_psID = 0;
  }

  objc_sync_exit(v2);
}

- (NSArray)LEDs
{
  if (self->_LEDs)
  {
    return self->_LEDs;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (void)lowPowerModeChanged:(int)changed
{
  state64 = 0;
  if (!notify_get_state(changed, &state64))
  {
    v4 = state64;
    v5 = state64 != 0;
    if (v5 != [(SFPowerSource *)self isLowPowerModeEnabled])
    {
      [(SFPowerSource *)self willChangeValueForKey:@"lowPowerModeEnabled"];
      self->_lowPowerModeEnabled = v4 != 0;
      [(SFPowerSource *)self didChangeValueForKey:@"lowPowerModeEnabled"];
    }
  }
}

- (unsigned)updateWithPowerAdapterDetails:(id)details
{
  detailsCopy = details;
  objc_storeStrong(&self->_ioKitAdapterDescription, details);
  if (CFDictionaryGetInt64Ranged() == self->_adapterFamilyCode)
  {
    v6 = 0;
  }

  else
  {
    [(SFPowerSource *)self setAdapterFamilyCode:?];
    v6 = 256;
  }

  CFStringGetTypeID();
  v7 = CFDictionaryGetTypedValue();
  adapterName = self->_adapterName;
  v9 = v7;
  v10 = adapterName;
  v11 = v10;
  if (v9 == v10)
  {

    goto LABEL_11;
  }

  if ((v9 != 0) == (v10 == 0))
  {

    goto LABEL_10;
  }

  v12 = [(NSString *)v9 isEqual:v10];

  if ((v12 & 1) == 0)
  {
LABEL_10:
    [(SFPowerSource *)self setAdapterName:v9];
    v6 = 256;
  }

LABEL_11:
  Int64 = CFDictionaryGetInt64();
  if (self->_adapterSharedSource != (Int64 != 0))
  {
    [(SFPowerSource *)self setAdapterSharedSource:Int64 != 0];
    v6 = 256;
  }

  if (CFDictionaryGetInt64Ranged() != self->_adapterSourceID)
  {
    [(SFPowerSource *)self setAdapterSourceID:?];
    v6 = 256;
  }

  if (CFDictionaryGetInt64Ranged() != self->_adapterErrorFlags)
  {
    [(SFPowerSource *)self setAdapterErrorFlags:?];
    v6 |= 0x100u;
  }

  [(SFPowerSource *)self startLowPowerMonitoringIfAppropriate];

  return v6;
}

- (void)updateWithPowerSource:(id)source
{
  v4 = MEMORY[0x1E696ACC8];
  sourceCopy = source;
  v9 = [[v4 alloc] initRequiringSecureCoding:1];
  [sourceCopy encodeWithCoder:v9];

  v6 = objc_alloc(MEMORY[0x1E696ACD0]);
  encodedData = [v9 encodedData];
  v8 = [v6 initForReadingFromData:encodedData error:0];

  [(SFPowerSource *)self _updateWithCoder:v8];
  [v8 finishDecoding];
}

- (unsigned)updateWithPowerSourceDescription:(id)description
{
  v136 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  objc_storeStrong(&self->_ioKitDescription, description);
  self->_present = 1;
  CFStringGetTypeID();
  v6 = CFDictionaryGetTypedValue();
  v7 = v6;
  if (!v6)
  {
    goto LABEL_7;
  }

  accessoryCategory = self->_accessoryCategory;
  v9 = v6;
  v10 = accessoryCategory;
  v11 = v10;
  if (v9 == v10)
  {

    goto LABEL_7;
  }

  if (v10)
  {
    v12 = [(NSString *)v9 isEqual:v10];

    if ((v12 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    v13 = 0;
    goto LABEL_10;
  }

LABEL_9:
  [(SFPowerSource *)self setAccessoryCategory:v9];
  v13 = 1;
LABEL_10:
  CFStringGetTypeID();
  v14 = CFDictionaryGetTypedValue();

  if (!v14)
  {
    goto LABEL_18;
  }

  accessoryID = self->_accessoryID;
  v16 = v14;
  v17 = accessoryID;
  v18 = v17;
  if (v16 == v17)
  {

    goto LABEL_18;
  }

  if (!v17)
  {

    goto LABEL_17;
  }

  v19 = [(NSString *)v16 isEqual:v17];

  if ((v19 & 1) == 0)
  {
LABEL_17:
    [(SFPowerSource *)self setAccessoryID:v16];
    v13 = 1;
  }

LABEL_18:
  CFDataGetTypeID();
  v20 = CFDictionaryGetTypedValue();
  v21 = v20;
  if (!v20)
  {
    goto LABEL_26;
  }

  batteryCaseAddress = self->_batteryCaseAddress;
  v23 = v20;
  v24 = batteryCaseAddress;
  v25 = v24;
  if (v23 == v24)
  {

    goto LABEL_26;
  }

  if (!v24)
  {

    goto LABEL_25;
  }

  v26 = [(NSData *)v23 isEqual:v24];

  if ((v26 & 1) == 0)
  {
LABEL_25:
    [(SFPowerSource *)self setBatteryCaseAddress:v23];
    v13 = 1;
  }

LABEL_26:
  Int64 = CFDictionaryGetInt64();
  v28 = CFDictionaryGetInt64();
  if (self->_charging != ((Int64 | v28) != 0))
  {
    [(SFPowerSource *)self setCharging:?];
    v13 |= 4u;
  }

  if (self->_showChargingUI != (v28 != 0))
  {
    [(SFPowerSource *)self setShowChargingUI:v28 != 0];
    v13 |= 4u;
  }

  CFDictionaryGetDouble();
  v30 = v29;
  CFDictionaryGetDouble();
  v32 = v31;
  v33 = v30 * 100.0 / v31 / 100.0;
  if (v33 > 1.0)
  {
    v33 = 1.0;
  }

  if (v33 < 0.0)
  {
    v33 = 0.0;
  }

  if (v33 != self->_chargeLevel)
  {
    [(SFPowerSource *)self setChargeLevel:?];
    v13 |= 2u;
  }

  if (CFDictionaryGetInt64Ranged() != self->_color)
  {
    [(SFPowerSource *)self setColor:?];
    v13 |= 1u;
  }

  CFStringGetTypeID();
  v34 = CFDictionaryGetTypedValue();

  if (v34)
  {
    groupID = self->_groupID;
    v36 = v34;
    v37 = groupID;
    v38 = v37;
    if (v36 == v37)
    {

      goto LABEL_46;
    }

    if (v37)
    {
      v39 = [(NSString *)v36 isEqual:v37];

      if (v39)
      {
        goto LABEL_46;
      }
    }

    else
    {
    }

    [(SFPowerSource *)self setGroupID:v36];
    v13 |= 1u;
  }

LABEL_46:
  if (CFDictionaryGetInt64Ranged() != self->_familyCode)
  {
    [(SFPowerSource *)self setFamilyCode:?];
    v13 |= 1u;
  }

  CFArrayGetTypeID();
  v40 = CFDictionaryGetTypedValue();
  if ([v40 count])
  {
    LEDs = self->_LEDs;
    v42 = v40;
    v43 = LEDs;
    v44 = v43;
    if (v42 == v43)
    {
    }

    else
    {
      if ((v42 != 0) != (v43 == 0))
      {
        v45 = [(NSArray *)v42 isEqual:v43];

        if (v45)
        {
          goto LABEL_88;
        }
      }

      else
      {
      }

      v125 = v34;
      v126 = v40;
      v127 = v21;
      v128 = v13;
      selfCopy = self;
      v130 = descriptionCopy;
      v46 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v131 = 0u;
      v132 = 0u;
      v133 = 0u;
      v134 = 0u;
      v47 = v42;
      v48 = [(NSArray *)v47 countByEnumeratingWithState:&v131 objects:v135 count:16];
      if (v48)
      {
        v49 = v48;
        v50 = *v132;
        do
        {
          for (i = 0; i != v49; ++i)
          {
            if (*v132 != v50)
            {
              objc_enumerationMutation(v47);
            }

            v52 = *(*(&v131 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v53 = objc_alloc_init(SFPowerSourceLEDInfo);
              CFStringGetTypeID();
              uTF8String = [CFDictionaryGetTypedValue() UTF8String];
              if (uTF8String)
              {
                v55 = uTF8String;
                if (!strcmp(uTF8String, "Green"))
                {
                  v56 = 1;
                }

                else if (!strcmp(v55, "Orange"))
                {
                  v56 = 2;
                }

                else if (!strcmp(v55, "White"))
                {
                  v56 = 3;
                }

                else
                {
                  v56 = 4 * (strcmp(v55, "Red") == 0);
                }

                [(SFPowerSourceLEDInfo *)v53 setLEDColor:v56, v125, v126, v127];
              }

              CFStringGetTypeID();
              uTF8String2 = [CFDictionaryGetTypedValue() UTF8String];
              if (uTF8String2)
              {
                v58 = uTF8String2;
                if (!strcmp(uTF8String2, "Off"))
                {
                  v59 = 0;
                }

                else if (!strcmp(v58, "Solid"))
                {
                  v59 = 1;
                }

                else
                {
                  v59 = 2 * (strcmp(v58, "Blinking") == 0);
                }

                [(SFPowerSourceLEDInfo *)v53 setLEDState:v59, v125, v126, v127];
              }

              [v46 addObject:{v53, v125, v126, v127}];
            }
          }

          v49 = [(NSArray *)v47 countByEnumeratingWithState:&v131 objects:v135 count:16];
        }

        while (v49);
      }

      self = selfCopy;
      v60 = selfCopy->_LEDs;
      v61 = v46;
      v42 = v61;
      if (v60 == v61)
      {

        descriptionCopy = v130;
        v13 = v128;
        v40 = v126;
        v21 = v127;
        v34 = v125;
      }

      else
      {
        v13 = v128;
        v40 = v126;
        v21 = v127;
        v34 = v125;
        if ((v61 == 0) != (v60 != 0))
        {
          v62 = [(NSArray *)v60 isEqual:v61];

          descriptionCopy = v130;
          if (v62)
          {
            goto LABEL_87;
          }
        }

        else
        {

          descriptionCopy = v130;
        }

        v63 = [(NSArray *)v42 copy:v125];
        [(SFPowerSource *)selfCopy setLEDs:v63];

        v13 = v128 | 1;
      }
    }

LABEL_87:
  }

LABEL_88:
  v64 = CFDictionaryGetInt64();
  if (self->_lowPowerModeEnabled != (v64 != 0))
  {
    [(SFPowerSource *)self setLowPowerModeEnabled:v64 != 0];
    v13 |= 4u;
  }

  CFDictionaryGetDouble();
  if (v65 / 100.0 != self->_lowWarnLevel)
  {
    [(SFPowerSource *)self setLowWarnLevel:?];
    v13 |= 1u;
  }

  if (v32 != self->_maxCapacity)
  {
    [(SFPowerSource *)self setMaxCapacity:v32];
    v13 |= 4u;
  }

  CFStringGetTypeID();
  v66 = CFDictionaryGetTypedValue();

  if (v66)
  {
    name = self->_name;
    v68 = v66;
    v69 = name;
    v70 = v69;
    if (v68 == v69)
    {

      goto LABEL_102;
    }

    if (v69)
    {
      v71 = [(NSString *)v68 isEqual:v69];

      if (v71)
      {
        goto LABEL_102;
      }
    }

    else
    {
    }

    [(SFPowerSource *)self setName:v68, v125, v126, v127];
    v13 |= 1u;
  }

LABEL_102:
  CFStringGetTypeID();
  v72 = CFDictionaryGetTypedValue();

  if (!v72)
  {
    goto LABEL_110;
  }

  partID = self->_partID;
  v74 = v72;
  v75 = partID;
  v76 = v75;
  if (v74 == v75)
  {

    goto LABEL_110;
  }

  if (!v75)
  {

    goto LABEL_109;
  }

  v77 = [(NSString *)v74 isEqual:v75];

  if ((v77 & 1) == 0)
  {
LABEL_109:
    [(SFPowerSource *)self setPartID:v74, v125, v126, v127];
    v13 |= 1u;
  }

LABEL_110:
  CFStringGetTypeID();
  v78 = CFDictionaryGetTypedValue();

  if (!v78)
  {
    goto LABEL_118;
  }

  partName = self->_partName;
  v80 = v78;
  v81 = partName;
  v82 = v81;
  if (v80 == v81)
  {

    goto LABEL_118;
  }

  if (!v81)
  {

    goto LABEL_117;
  }

  v83 = [(NSString *)v80 isEqual:v81];

  if ((v83 & 1) == 0)
  {
LABEL_117:
    [(SFPowerSource *)self setPartName:v80, v125, v126, v127];
    v13 |= 1u;
  }

LABEL_118:
  CFStringGetTypeID();
  v84 = CFDictionaryGetTypedValue();

  v85 = v84;
  v86 = v85;
  if (v85 == @"Off Line")
  {
LABEL_121:
    v88 = 1;
    goto LABEL_132;
  }

  if (!v85)
  {
    goto LABEL_128;
  }

  v87 = [(__CFString *)v85 isEqual:@"Off Line"];

  if (v87)
  {
    goto LABEL_121;
  }

  v89 = v86;
  if (v89 == @"AC Power" || (v90 = v89, v91 = [(__CFString *)v89 isEqual:@"AC Power"], v90, (v91 & 1) != 0) || (v92 = v90, v92 == @"UPS Power") || (v93 = v92, v94 = [(__CFString *)v92 isEqual:@"UPS Power"], v93, v94))
  {
    if (CFDictionaryGetInt64())
    {
      v88 = 4;
    }

    else if (CFDictionaryGetInt64())
    {
      v88 = 4;
    }

    else
    {
      v88 = 3;
    }
  }

  else
  {
LABEL_128:
    v88 = 2;
  }

LABEL_132:
  if (v88 != self->_powerState)
  {
    [(SFPowerSource *)self setPowerState:?];
    v13 |= 4u;
  }

  if (CFDictionaryGetInt64Ranged() != self->_productID)
  {
    [(SFPowerSource *)self setProductID:?];
    v13 |= 1u;
  }

  CFStringGetTypeID();
  v95 = CFDictionaryGetTypedValue();

  if (v95)
  {
    state = self->_state;
    v97 = v95;
    v98 = state;
    v99 = v98;
    if (v97 == v98)
    {

      goto LABEL_144;
    }

    if (v98)
    {
      v100 = [(NSString *)v97 isEqual:v98];

      if (v100)
      {
        goto LABEL_144;
      }
    }

    else
    {
    }

    [(SFPowerSource *)self setState:v97, v125, v126, v127];
    v13 |= 4u;
  }

LABEL_144:
  if (CFDictionaryGetInt64Ranged() != self->_temperature)
  {
    [(SFPowerSource *)self setTemperature:?];
    v13 |= 1u;
  }

  CFStringGetTypeID();
  v101 = CFDictionaryGetTypedValue();

  if (v101)
  {
    transportType = self->_transportType;
    v103 = v101;
    v104 = transportType;
    v105 = v104;
    if (v103 == v104)
    {

      goto LABEL_154;
    }

    if (v104)
    {
      v106 = [(NSString *)v103 isEqual:v104];

      if (v106)
      {
        goto LABEL_154;
      }
    }

    else
    {
    }

    [(SFPowerSource *)self setTransportType:v103, v125, v126, v127];
    v13 |= 1u;
  }

LABEL_154:
  CFStringGetTypeID();
  v107 = CFDictionaryGetTypedValue();

  if (!v107)
  {
    goto LABEL_162;
  }

  type = self->_type;
  v109 = v107;
  v110 = type;
  v111 = v110;
  if (v109 == v110)
  {

    goto LABEL_162;
  }

  if (!v110)
  {

    goto LABEL_161;
  }

  v112 = [(NSString *)v109 isEqual:v110];

  if ((v112 & 1) == 0)
  {
LABEL_161:
    [(SFPowerSource *)self setType:v109, v125, v126, v127];
    v13 |= 1u;
  }

LABEL_162:
  if (CFDictionaryGetInt64Ranged() != self->_vendorID)
  {
    [(SFPowerSource *)self setVendorID:?];
    v13 |= 1u;
  }

  v113 = self->_type;
  if (v113 == @"Accessory Source" || (v114 = v113) != 0 && (v115 = [(__CFString *)v113 isEqual:@"Accessory Source"], v114, v115))
  {
    CFDictionaryGetTypeID();
    v116 = CFDictionaryGetTypedValue();
    v117 = v116;
    if (v116)
    {
      ioKitAdapterDescription = self->_ioKitAdapterDescription;
      v119 = v116;
      v120 = ioKitAdapterDescription;
      v121 = v120;
      if (v119 == v120)
      {
      }

      else
      {
        if (v120)
        {
          v122 = [(NSDictionary *)v119 isEqual:v120];

          if (v122)
          {
            goto LABEL_175;
          }
        }

        else
        {
        }

        v13 |= [(SFPowerSource *)self updateWithPowerAdapterDetails:v119, v125, v126, v127];
      }
    }

LABEL_175:
  }

  [(SFPowerSource *)self startLowPowerMonitoringIfAppropriate:v125];

  v123 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = 0;
    goto LABEL_42;
  }

  v5 = equalCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sourceID = self->_sourceID;
    if (sourceID == [v5 sourceID])
    {
      accessoryID = self->_accessoryID;
      accessoryID = [v5 accessoryID];
      p_isa = accessoryID;
      v10 = accessoryID;
      v11 = v10;
      if (p_isa == v10)
      {
      }

      else
      {
        if ((p_isa != 0) == (v10 == 0))
        {
          v13 = 0;
          v16 = v10;
LABEL_38:

          goto LABEL_39;
        }

        v12 = [(NSString *)p_isa isEqual:v10];

        if (!v12)
        {
          v13 = 0;
LABEL_40:

          goto LABEL_41;
        }
      }

      batteryCaseAddress = self->_batteryCaseAddress;
      batteryCaseAddress = [v5 batteryCaseAddress];
      v16 = batteryCaseAddress;
      v17 = batteryCaseAddress;
      p_isa = &v17->super.isa;
      if (v16 == v17)
      {
      }

      else
      {
        if ((v16 != 0) == (v17 == 0))
        {
          v13 = 0;
          v21 = &v17->super.isa;
LABEL_37:

          goto LABEL_38;
        }

        v18 = [(NSData *)v16 isEqual:v17];

        if (!v18)
        {
          v13 = 0;
LABEL_39:

          goto LABEL_40;
        }
      }

      groupID = self->_groupID;
      groupID = [v5 groupID];
      v21 = groupID;
      v22 = groupID;
      v16 = v22;
      if (v21 == v22)
      {
      }

      else
      {
        if ((v21 != 0) == (v22 == 0))
        {
          v13 = 0;
          v26 = &v22->super.isa;
LABEL_36:

          goto LABEL_37;
        }

        v23 = [(NSString *)v21 isEqual:v22];

        if (!v23)
        {
          v13 = 0;
          goto LABEL_38;
        }
      }

      accessoryCategory = self->_accessoryCategory;
      accessoryCategory = [v5 accessoryCategory];
      v26 = accessoryCategory;
      v27 = accessoryCategory;
      v21 = v27;
      if (v26 == v27)
      {
      }

      else
      {
        if ((v26 != 0) == (v27 == 0))
        {
          v13 = 0;
          v31 = v27;
LABEL_35:

          goto LABEL_36;
        }

        v28 = [(NSString *)v26 isEqual:v27];

        if (!v28)
        {
          v13 = 0;
          goto LABEL_37;
        }
      }

      partID = self->_partID;
      partID = [v5 partID];
      v31 = partID;
      v32 = partID;
      v26 = v32;
      if (v31 == v32)
      {
        v13 = 1;
      }

      else if ((v31 != 0) == (v32 == 0))
      {
        v13 = 0;
      }

      else
      {
        v13 = [(NSString *)v31 isEqual:v32];
      }

      goto LABEL_35;
    }
  }

  v13 = 0;
LABEL_41:

LABEL_42:
  return v13;
}

@end