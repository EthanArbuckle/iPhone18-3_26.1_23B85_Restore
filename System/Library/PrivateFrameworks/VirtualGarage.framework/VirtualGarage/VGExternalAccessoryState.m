@interface VGExternalAccessoryState
- (NSString)name;
- (id)description;
- (void)_updateWithVehicleInfo:(id)a3;
@end

@implementation VGExternalAccessoryState

- (NSString)name
{
  displayName = self->_displayName;
  if (!displayName)
  {
    displayName = self->_mapsDisplayName;
  }

  return displayName;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@:%p, _displayName=%@, _mapsDisplayName=%@>", v5, self, self->_displayName, self->_mapsDisplayName];

  return v6;
}

- (void)_updateWithVehicleInfo:(id)a3
{
  v129 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CC5F00];
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x277CC5F00]];

  if (v6)
  {
    v7 = [v4 objectForKeyedSubscript:v5];
    v8 = [v7 copy];
    displayName = self->_displayName;
    self->_displayName = v8;
  }

  v10 = *MEMORY[0x277CC5F20];
  v11 = [v4 objectForKeyedSubscript:*MEMORY[0x277CC5F20]];

  if (v11)
  {
    v12 = [v4 objectForKeyedSubscript:v10];
    v13 = [v12 copy];
    mapsDisplayName = self->_mapsDisplayName;
    self->_mapsDisplayName = v13;
  }

  v15 = *MEMORY[0x277CC5F18];
  v16 = [v4 objectForKeyedSubscript:*MEMORY[0x277CC5F18]];

  if (v16)
  {
    v17 = [v4 objectForKeyedSubscript:v15];
    v18 = [v17 copy];
    manufacturer = self->_manufacturer;
    self->_manufacturer = v18;
  }

  v20 = *MEMORY[0x277CC5F40];
  v21 = [v4 objectForKeyedSubscript:*MEMORY[0x277CC5F40]];

  if (v21)
  {
    v22 = [v4 objectForKeyedSubscript:v20];
    v23 = [v22 copy];
    model = self->_model;
    self->_model = v23;
  }

  v25 = *MEMORY[0x277CC5FA0];
  v26 = [v4 objectForKeyedSubscript:*MEMORY[0x277CC5FA0]];

  if (v26)
  {
    v27 = [v4 objectForKeyedSubscript:v25];
    v28 = [v27 copy];
    year = self->_year;
    self->_year = v28;
  }

  v30 = *MEMORY[0x277CC5F98];
  v31 = [v4 objectForKeyedSubscript:*MEMORY[0x277CC5F98]];

  if (v31)
  {
    v32 = [v4 objectForKeyedSubscript:v30];
    v33 = [v32 copy];
    colorHex = self->_colorHex;
    self->_colorHex = v33;
  }

  v35 = *MEMORY[0x277CC5F30];
  v36 = [v4 objectForKeyedSubscript:*MEMORY[0x277CC5F30]];

  v37 = 0x277CCA000uLL;
  if (v36)
  {
    v38 = [v4 objectForKeyedSubscript:v35];
    [v38 doubleValue];
    v40 = v39;

    v41 = objc_alloc(MEMORY[0x277CCAB10]);
    v42 = [MEMORY[0x277CCAE20] kilometers];
    v43 = [v41 initWithDoubleValue:v42 unit:v40];
    maxEVRange = self->_maxEVRange;
    self->_maxEVRange = v43;
  }

  v45 = *MEMORY[0x277CC5EF0];
  v46 = [v4 objectForKeyedSubscript:*MEMORY[0x277CC5EF0]];

  if (v46)
  {
    v47 = [v4 objectForKeyedSubscript:v45];
    v48 = [v47 copy];
    consumptionArguments = self->_consumptionArguments;
    self->_consumptionArguments = v48;
  }

  v50 = *MEMORY[0x277CC5EE8];
  v51 = [v4 objectForKeyedSubscript:*MEMORY[0x277CC5EE8]];

  if (v51)
  {
    v52 = [v4 objectForKeyedSubscript:v50];
    v53 = [v52 copy];
    chargingArguments = self->_chargingArguments;
    self->_chargingArguments = v53;
  }

  v55 = *MEMORY[0x277CC5F08];
  v56 = [v4 objectForKeyedSubscript:*MEMORY[0x277CC5F08]];

  if (v56)
  {
    v57 = [v4 objectForKeyedSubscript:v55];
    v58 = MEMORY[0x277CCABB0];
    [v57 doubleValue];
    v60 = [v58 numberWithDouble:v59 * 0.00001];
    batteryCharge = self->_batteryCharge;
    self->_batteryCharge = v60;
  }

  v62 = *MEMORY[0x277CC5F38];
  v63 = [v4 objectForKeyedSubscript:*MEMORY[0x277CC5F38]];

  if (v63)
  {
    v64 = [v4 objectForKeyedSubscript:v62];
    [v64 doubleValue];
    v66 = v65 * 0.001;

    v67 = objc_alloc(MEMORY[0x277CCAB10]);
    v68 = [MEMORY[0x277CCADF8] kilowattHours];
    v69 = [v67 initWithDoubleValue:v68 unit:v66];
    minBatteryCapacity = self->_minBatteryCapacity;
    self->_minBatteryCapacity = v69;
  }

  v71 = *MEMORY[0x277CC5EF8];
  v72 = [v4 objectForKeyedSubscript:*MEMORY[0x277CC5EF8]];

  if (v72)
  {
    v73 = [v4 objectForKeyedSubscript:v71];
    [v73 doubleValue];
    v75 = v74 * 0.001;

    v76 = objc_alloc(MEMORY[0x277CCAB10]);
    v77 = [MEMORY[0x277CCADF8] kilowattHours];
    v78 = [v76 initWithDoubleValue:v77 unit:v75];
    currentBatteryCapacity = self->_currentBatteryCapacity;
    self->_currentBatteryCapacity = v78;
  }

  v80 = *MEMORY[0x277CC5F28];
  v81 = [v4 objectForKeyedSubscript:*MEMORY[0x277CC5F28]];

  if (v81)
  {
    v82 = [v4 objectForKeyedSubscript:v80];
    [v82 doubleValue];
    v84 = v83 * 0.001;

    v85 = objc_alloc(MEMORY[0x277CCAB10]);
    v86 = [MEMORY[0x277CCADF8] kilowattHours];
    v87 = [v85 initWithDoubleValue:v86 unit:v84];
    maxBatteryCapacity = self->_maxBatteryCapacity;
    self->_maxBatteryCapacity = v87;
  }

  v89 = *MEMORY[0x277CC5F90];
  v90 = [v4 objectForKeyedSubscript:*MEMORY[0x277CC5F90]];

  if (v90)
  {
    self->_supportedConnectors = [v4 objectForKeyedSubscript:v89];
  }

  powerByConnector = self->_powerByConnector;
  if (powerByConnector)
  {
    v92 = [(NSDictionary *)powerByConnector mutableCopy];
  }

  else
  {
    v92 = objc_opt_new();
  }

  v122 = self;
  v123 = v92;
  if (_updateWithVehicleInfo__onceToken != -1)
  {
    dispatch_once(&_updateWithVehicleInfo__onceToken, &__block_literal_global_459);
  }

  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v93 = _updateWithVehicleInfo__powerKeys;
  v94 = [v93 countByEnumeratingWithState:&v124 objects:v128 count:16];
  if (v94)
  {
    v95 = v94;
    v96 = *v125;
    do
    {
      for (i = 0; i != v95; ++i)
      {
        if (*v125 != v96)
        {
          objc_enumerationMutation(v93);
        }

        v98 = *(*(&v124 + 1) + 8 * i);
        v99 = [v4 objectForKeyedSubscript:{v98, v122}];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v99 doubleValue];
          v101 = v100;
          v102 = v4;
          v103 = objc_alloc(*(v37 + 2832));
          [MEMORY[0x277CCAE30] watts];
          v105 = v104 = v37;
          v106 = [v103 initWithDoubleValue:v105 unit:v101];
          v107 = [_updateWithVehicleInfo__powerKeys objectForKeyedSubscript:v98];
          [v123 setObject:v106 forKeyedSubscript:v107];

          v4 = v102;
          v37 = v104;
        }
      }

      v95 = [v93 countByEnumeratingWithState:&v124 objects:v128 count:16];
    }

    while (v95);
  }

  v108 = [v123 copy];
  v109 = v122;
  v110 = v122->_powerByConnector;
  v122->_powerByConnector = v108;

  v111 = *MEMORY[0x277CC5F10];
  v112 = [v4 objectForKeyedSubscript:*MEMORY[0x277CC5F10]];
  if (v112)
  {
    v113 = v112;
    v114 = [v4 objectForKeyedSubscript:v111];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v116 = [v4 objectForKeyedSubscript:v111];
      v122->_isCharging = [v116 BOOLValue];
    }
  }

  v117 = *MEMORY[0x277CC5EE0];
  v118 = [v4 objectForKeyedSubscript:{*MEMORY[0x277CC5EE0], v122}];

  if (v118)
  {
    v119 = [v4 objectForKeyedSubscript:v117];
    activeConnector = v109->_activeConnector;
    v109->_activeConnector = v119;
  }

  v121 = *MEMORY[0x277D85DE8];
}

void __51__VGExternalAccessoryState__updateWithVehicleInfo___block_invoke()
{
  v8[9] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CC5F50];
  v7[0] = *MEMORY[0x277CC5F48];
  v7[1] = v0;
  v8[0] = &unk_2880E5C50;
  v8[1] = &unk_2880E5C68;
  v1 = *MEMORY[0x277CC5F58];
  v7[2] = *MEMORY[0x277CC5F70];
  v7[3] = v1;
  v8[2] = &unk_2880E5C80;
  v8[3] = &unk_2880E5C98;
  v2 = *MEMORY[0x277CC5F68];
  v7[4] = *MEMORY[0x277CC5F78];
  v7[5] = v2;
  v8[4] = &unk_2880E5CB0;
  v8[5] = &unk_2880E5CC8;
  v3 = *MEMORY[0x277CC5F88];
  v7[6] = *MEMORY[0x277CC5F60];
  v7[7] = v3;
  v8[6] = &unk_2880E5CE0;
  v8[7] = &unk_2880E5CF8;
  v7[8] = *MEMORY[0x277CC5F80];
  v8[8] = &unk_2880E5D10;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:9];
  v5 = _updateWithVehicleInfo__powerKeys;
  _updateWithVehicleInfo__powerKeys = v4;

  v6 = *MEMORY[0x277D85DE8];
}

@end