@interface AppleTypeCRetimerFirmwareRequestCreatorOS
- (AppleTypeCRetimerFirmwareRequestCreatorOS)initWithOptions:(id)a3 logFunction:(void *)a4 logContext:(void *)a5;
- (BOOL)parseOptions:(id)a3;
- (id)generateHashForSubfile:(id)a3;
- (void)generateRequestDictionary;
@end

@implementation AppleTypeCRetimerFirmwareRequestCreatorOS

- (AppleTypeCRetimerFirmwareRequestCreatorOS)initWithOptions:(id)a3 logFunction:(void *)a4 logContext:(void *)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = AppleTypeCRetimerFirmwareRequestCreatorOS;
  v9 = [(AppleTypeCRetimerRestoreInfoHelperOS *)&v13 initWithOptions:v8 logFunction:a4 logContext:a5];
  v10 = v9;
  if (v9)
  {
    if (![(AppleTypeCRetimerFirmwareRequestCreatorOS *)v9 parseOptions:v8])
    {
      v11 = 0;
      goto LABEL_6;
    }

    [(AppleTypeCRetimerFirmwareRequestCreatorOS *)v10 generateRequestDictionary];
  }

  v11 = v10;
LABEL_6:

  return v11;
}

- (BOOL)parseOptions:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"FirmwareData"];
  if (!v5)
  {
    v32 = @"Unable to locate firmware data";
LABEL_14:
    [(AppleTypeCRetimerRestoreInfoHelperOS *)self log:v32];
    v25 = 0;
    goto LABEL_15;
  }

  v6 = [[FTABFileOS alloc] initWithData:v5];
  ftab = self->_ftab;
  self->_ftab = v6;

  v8 = self->_ftab;
  if (!v8)
  {
    v32 = @"Failed to parse ftab";
    goto LABEL_14;
  }

  v9 = [(FTABFileOS *)v8 subfileWithTag:@"rrko"];
  rrko = self->_rrko;
  self->_rrko = v9;

  if (!self->_rrko)
  {
    v32 = @"Failed to locate rrko file in ftab";
    goto LABEL_14;
  }

  v11 = [(FTABFileOS *)self->_ftab subfileWithTag:@"rkos"];
  rkos = self->_rkos;
  self->_rkos = v11;

  if (!self->_rkos)
  {
    v32 = @"Failed to locate rkos file in ftab";
    goto LABEL_14;
  }

  v13 = [v4 objectForKeyedSubscript:@"DeviceInfo"];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 objectForKeyedSubscript:@"TagNumber"];
    v16 = v15;
    if (v15)
    {
      self->_tagNumber = [v15 unsignedCharValue];
      v17 = [v14 objectForKeyedSubscript:@"HardwareID"];
      v18 = v17;
      if (v17)
      {
        v19 = [v17 objectForKeyedSubscript:@"ChipID"];
        self->_chipID = [v19 unsignedShortValue];
        v20 = [v18 objectForKeyedSubscript:@"BoardID"];
        self->_boardID = [v20 unsignedShortValue];
        v21 = [v18 objectForKeyedSubscript:@"SecurityEpoch"];
        self->_securityEpoch = [v21 unsignedCharValue];
        v39 = [v18 objectForKeyedSubscript:@"ProductionStatus"];
        self->_productionStatus = [v39 unsignedCharValue];
        v38 = [v18 objectForKeyedSubscript:@"SecurityMode"];
        self->_securityMode = [v38 unsignedCharValue];
        v37 = [v18 objectForKeyedSubscript:@"SecurityDomain"];
        self->_securityDomain = [v37 unsignedCharValue];
        v36 = [v18 objectForKeyedSubscript:@"ECID"];
        self->_ecid = [v36 unsignedLongLongValue];
        v22 = [v18 objectForKeyedSubscript:@"Nonce"];
        nonce = self->_nonce;
        self->_nonce = v22;

        v24 = self->_nonce;
        v25 = v24 != 0;
        if (v24)
        {
          v35 = v19;
          v26 = [v18 objectForKeyedSubscript:@"ChipRev"];
          self->_chipRev = [v26 unsignedCharValue];
          v34 = v16;
          v27 = v21;
          v28 = v20;
          v29 = [v18 objectForKeyedSubscript:@"Demote"];
          self->_demote = [v29 BOOLValue];
          v30 = v29;
          v20 = v28;
          v21 = v27;
          v16 = v34;

          v31 = v26;
          v19 = v35;
        }

        else
        {
          [(AppleTypeCRetimerRestoreInfoHelperOS *)self log:@"Nonce missing from hardware dictionary"];
        }
      }

      else
      {
        [(AppleTypeCRetimerRestoreInfoHelperOS *)self log:@"Unable to locate hardware ID data"];
        v25 = 0;
      }
    }

    else
    {
      [(AppleTypeCRetimerRestoreInfoHelperOS *)self log:@"Unable to locate tag number in device info"];
      v25 = 0;
    }
  }

  else
  {
    [(AppleTypeCRetimerRestoreInfoHelperOS *)self log:@"Unable to locate device info"];
    v25 = 0;
  }

LABEL_15:
  return v25;
}

- (id)generateHashForSubfile:(id)a3
{
  v11 = *MEMORY[0x29EDCA608];
  memset(&v9, 0, sizeof(v9));
  v3 = a3;
  CC_SHA384_Init(&v9);
  v4 = [v3 dataPointer];
  v5 = [v3 dataLength];

  CC_SHA384_Update(&v9, v4, v5);
  CC_SHA384_Final(md, &v9);
  v6 = [MEMORY[0x29EDB8DA0] dataWithBytes:md length:48];
  v7 = *MEMORY[0x29EDCA608];

  return v6;
}

- (void)generateRequestDictionary
{
  v60[4] = *MEMORY[0x29EDCA608];
  tagNumber = self->_tagNumber;
  v4 = [MEMORY[0x29EDB8E00] dictionary];
  v45 = tagNumber;
  v5 = [MEMORY[0x29EDBA0F8] stringWithValidatedFormat:@"@Timer%u validFormatSpecifiers:Ticket" error:@"%u", 0, tagNumber];
  v6 = MEMORY[0x29EDB8EB0];
  v50 = v5;
  [v4 setObject:? forKeyedSubscript:?];
  v7 = [MEMORY[0x29EDBA0F8] stringWithValidatedFormat:@"Timer validFormatSpecifiers:BoardID error:%u", @"%u", 0, tagNumber];
  v8 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:self->_boardID];
  v49 = v7;
  [v4 setObject:v8 forKeyedSubscript:v7];

  v9 = [MEMORY[0x29EDBA0F8] stringWithValidatedFormat:@"Timer validFormatSpecifiers:ChipID error:%u", @"%u", 0, tagNumber];
  v10 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:self->_chipID];
  v48 = v9;
  [v4 setObject:v10 forKeyedSubscript:v9];

  v11 = [MEMORY[0x29EDBA0F8] stringWithValidatedFormat:@"Timer validFormatSpecifiers:ECID error:%u", @"%u", 0, tagNumber];
  v12 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:self->_ecid];
  v47 = v11;
  [v4 setObject:v12 forKeyedSubscript:v11];

  v46 = [MEMORY[0x29EDBA0F8] stringWithValidatedFormat:@"Timer validFormatSpecifiers:Nonce error:%u", @"%u", 0, tagNumber];
  [v4 setObject:self->_nonce forKeyedSubscript:?];
  v13 = [MEMORY[0x29EDBA0F8] stringWithValidatedFormat:@"Timer validFormatSpecifiers:ProductionMode error:%u", @"%u", 0, tagNumber];
  v14 = MEMORY[0x29EDB8EA8];
  v15 = v6;
  if (self->_productionStatus)
  {
    v16 = v6;
  }

  else
  {
    v16 = MEMORY[0x29EDB8EA8];
  }

  v44 = v13;
  [v4 setObject:v16 forKeyedSubscript:?];
  v17 = [MEMORY[0x29EDBA0F8] stringWithValidatedFormat:@"Timer validFormatSpecifiers:SecurityDomain error:%u", @"%u", 0, tagNumber];
  v18 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:self->_securityDomain];
  v43 = v17;
  [v4 setObject:v18 forKeyedSubscript:v17];

  v19 = [MEMORY[0x29EDBA0F8] stringWithValidatedFormat:@"Timer validFormatSpecifiers:SecurityMode error:%u", @"%u", 0, tagNumber];
  if (self->_securityMode)
  {
    v20 = v15;
  }

  else
  {
    v20 = v14;
  }

  v42 = v19;
  [v4 setObject:v20 forKeyedSubscript:?];
  v52 = [(AppleTypeCRetimerFirmwareRequestCreatorOS *)self generateHashForSubfile:self->_rkos];
  v51 = [MEMORY[0x29EDBA0F8] stringWithValidatedFormat:@"Timer validFormatSpecifiers:RTKitOS error:%u", @"%u", 0, tagNumber];
  productionStatus = self->_productionStatus;
  if (self->_demote && self->_productionStatus)
  {
    v57[0] = @"Digest";
    v57[1] = @"EPRO";
    v58[0] = v52;
    v58[1] = MEMORY[0x29EDB8EA8];
    v58[2] = v15;
    v57[2] = @"DPRO";
    v57[3] = @"ESEC";
    v58[3] = v15;
    v58[4] = MEMORY[0x29EDB8EA8];
    v57[4] = @"Trusted";
    v22 = MEMORY[0x29EDB8DC0];
    v23 = v58;
    v24 = v57;
    v25 = 5;
  }

  else
  {
    v59[0] = @"Digest";
    v59[1] = @"EPRO";
    if (productionStatus)
    {
      v26 = v15;
    }

    else
    {
      v26 = MEMORY[0x29EDB8EA8];
    }

    v60[0] = v52;
    v60[1] = v26;
    if (self->_securityMode)
    {
      v27 = v15;
    }

    else
    {
      v27 = MEMORY[0x29EDB8EA8];
    }

    v59[2] = @"ESEC";
    v59[3] = @"Trusted";
    v60[2] = v27;
    v60[3] = v15;
    v22 = MEMORY[0x29EDB8DC0];
    v23 = v60;
    v24 = v59;
    v25 = 4;
  }

  v28 = [v22 dictionaryWithObjects:v23 forKeys:v24 count:v25];
  [v4 setObject:v28 forKeyedSubscript:v51];

  v29 = [(AppleTypeCRetimerFirmwareRequestCreatorOS *)self generateHashForSubfile:self->_rrko];
  v30 = [MEMORY[0x29EDBA0F8] stringWithValidatedFormat:@"Timer validFormatSpecifiers:RestoreRTKitOS error:%u", @"%u", 0, v45];
  v31 = self->_productionStatus;
  if (self->_demote && self->_productionStatus)
  {
    v53[0] = @"Digest";
    v53[1] = @"EPRO";
    v54[0] = v29;
    v54[1] = MEMORY[0x29EDB8EA8];
    v54[2] = v15;
    v53[2] = @"DPRO";
    v53[3] = @"ESEC";
    v54[3] = v15;
    v54[4] = MEMORY[0x29EDB8EA8];
    v53[4] = @"Trusted";
    v32 = MEMORY[0x29EDB8DC0];
    v33 = v54;
    v34 = v53;
    v35 = 5;
  }

  else
  {
    v55[0] = @"Digest";
    v55[1] = @"EPRO";
    if (v31)
    {
      v36 = v15;
    }

    else
    {
      v36 = MEMORY[0x29EDB8EA8];
    }

    v56[0] = v29;
    v56[1] = v36;
    if (self->_securityMode)
    {
      v37 = v15;
    }

    else
    {
      v37 = MEMORY[0x29EDB8EA8];
    }

    v55[2] = @"ESEC";
    v55[3] = @"Trusted";
    v56[2] = v37;
    v56[3] = v15;
    v32 = MEMORY[0x29EDB8DC0];
    v33 = v56;
    v34 = v55;
    v35 = 4;
  }

  v38 = [v32 dictionaryWithObjects:v33 forKeys:v34 count:v35];
  [v4 setObject:v38 forKeyedSubscript:v30];

  v39 = [MEMORY[0x29EDB8DC0] dictionaryWithDictionary:v4];
  requestDictionary = self->_requestDictionary;
  self->_requestDictionary = v39;

  [(AppleTypeCRetimerRestoreInfoHelperOS *)self verboseLog:@"ATCRT %u: request dictionary = %@", self->_tagNumber - 1, self->_requestDictionary];
  v41 = *MEMORY[0x29EDCA608];
}

@end