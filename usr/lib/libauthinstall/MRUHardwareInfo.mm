@interface MRUHardwareInfo
- (MRUHardwareInfo)initWithChipID:(unsigned int)a3 chipRev:(unsigned int)a4 boardID:(unsigned int)a5 securityEpoch:(unsigned int)a6 productionStatus:(BOOL)a7 securityMode:(BOOL)a8 securityDomain:(unsigned int)a9 ecid:(unint64_t)a10;
- (MRUHardwareInfo)initWithCoder:(id)a3;
- (MRUHardwareInfo)initWithOptions:(id)a3 error:(id *)a4;
- (NSDictionary)asDictionary;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MRUHardwareInfo

- (MRUHardwareInfo)initWithChipID:(unsigned int)a3 chipRev:(unsigned int)a4 boardID:(unsigned int)a5 securityEpoch:(unsigned int)a6 productionStatus:(BOOL)a7 securityMode:(BOOL)a8 securityDomain:(unsigned int)a9 ecid:(unint64_t)a10
{
  v17.receiver = self;
  v17.super_class = MRUHardwareInfo;
  result = [(MRUHardwareInfo *)&v17 init];
  if (result)
  {
    result->_chipID = a3;
    result->_chipRev = a4;
    result->_boardID = a5;
    result->_securityEpoch = a6;
    result->_productionStatus = a7;
    result->_securityMode = a8;
    result->_securityDomain = a9;
    result->_ecid = a10;
  }

  return result;
}

- (MRUHardwareInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = MRUHardwareInfo;
  v5 = [(MRUHardwareInfo *)&v23 init];
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = [v4 decodeObjectForKey:@"chipID"];
  v7 = v6;
  if (v6)
  {
    v5->_chipID = [(MRUHardwareInfo *)v6 unsignedIntValue];
    v8 = [v4 decodeObjectForKey:@"chipRev"];
    if (v8)
    {
      v9 = v8;
      v5->_chipRev = [v8 unsignedIntValue];
      v10 = [v4 decodeObjectForKey:@"boardID"];
      if (v10)
      {
        v11 = v10;
        v5->_boardID = [v10 unsignedIntValue];
        v12 = [v4 decodeObjectForKey:@"securityEpoch"];
        if (v12)
        {
          v13 = v12;
          v5->_securityEpoch = [v12 unsignedIntValue];
          v14 = [v4 decodeObjectForKey:@"productionStatus"];
          if (v14)
          {
            v15 = v14;
            v5->_productionStatus = [v14 unsignedIntValue] != 0;
            v16 = [v4 decodeObjectForKey:@"securityMode"];
            if (v16)
            {
              v17 = v16;
              v5->_securityMode = [v16 unsignedIntValue] != 0;
              v18 = [v4 decodeObjectForKey:@"securityDomain"];
              if (v18)
              {
                v19 = v18;
                v5->_securityDomain = [v18 unsignedIntValue];
                v20 = [v4 decodeObjectForKey:@"ecid"];
                if (v20)
                {
                  v21 = v20;
                  v5->_ecid = [v20 unsignedLongLongValue];

LABEL_11:
                  v7 = v5;
                  goto LABEL_19;
                }
              }
            }
          }
        }
      }
    }

    v7 = 0;
  }

LABEL_19:

  return v7;
}

- (MRUHardwareInfo)initWithOptions:(id)a3 error:(id *)a4
{
  v67[1] = *MEMORY[0x29EDCA608];
  v6 = a3;
  v51.receiver = self;
  v51.super_class = MRUHardwareInfo;
  v7 = [(MRUHardwareInfo *)&v51 init];
  if (!v7)
  {
LABEL_35:
    v40 = v7;
    goto LABEL_36;
  }

  v8 = [v6 objectForKeyedSubscript:@"chipID"];
  if (!v8)
  {
    if (*a4)
    {
      v24 = MEMORY[0x29EDB9FA0];
      v66 = *MEMORY[0x29EDB9ED8];
      v25 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"No chipID in options dict"];
      v67[0] = v25;
      v26 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v67 forKeys:&v66 count:1];
      *a4 = [v24 errorWithDomain:@"com.apple.Manta.MantaRestoreUtils" code:1 userInfo:v26];
    }

    goto LABEL_31;
  }

  v9 = v8;
  v7->_chipID = [v8 unsignedIntValue];
  v10 = [v6 objectForKeyedSubscript:@"bundlePath"];
  if (!v10)
  {
    if (*a4)
    {
      v27 = MEMORY[0x29EDB9FA0];
      v64 = *MEMORY[0x29EDB9ED8];
      v28 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"No chipRev in options dict"];
      v65 = v28;
      v29 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
      *a4 = [v27 errorWithDomain:@"com.apple.Manta.MantaRestoreUtils" code:1 userInfo:v29];
    }

    goto LABEL_30;
  }

  v11 = v10;
  v7->_chipRev = [v10 unsignedIntValue];
  v12 = [v6 objectForKeyedSubscript:@"boardID"];
  if (!v12)
  {
    if (*a4)
    {
      v30 = MEMORY[0x29EDB9FA0];
      v62 = *MEMORY[0x29EDB9ED8];
      v31 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"No boardID in options dict"];
      v63 = v31;
      v32 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
      *a4 = [v30 errorWithDomain:@"com.apple.Manta.MantaRestoreUtils" code:1 userInfo:v32];
    }

    goto LABEL_29;
  }

  v13 = v12;
  v7->_boardID = [v12 unsignedIntValue];
  v14 = [v6 objectForKeyedSubscript:@"securityEpoch"];
  if (!v14)
  {
    if (*a4)
    {
      v33 = MEMORY[0x29EDB9FA0];
      v60 = *MEMORY[0x29EDB9ED8];
      v34 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"No securityEpoch in options dict"];
      v61 = v34;
      v35 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
      *a4 = [v33 errorWithDomain:@"com.apple.Manta.MantaRestoreUtils" code:1 userInfo:v35];
    }

    goto LABEL_28;
  }

  v15 = v14;
  v7->_securityEpoch = [v14 unsignedIntValue];
  v16 = [v6 objectForKeyedSubscript:@"productionStatus"];
  if (!v16)
  {
    if (*a4)
    {
      v48 = MEMORY[0x29EDB9FA0];
      v58 = *MEMORY[0x29EDB9ED8];
      v36 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"No productionStatus in options dict"];
      v59 = v36;
      v37 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
      *a4 = [v48 errorWithDomain:@"com.apple.Manta.MantaRestoreUtils" code:1 userInfo:v37];
    }

    goto LABEL_27;
  }

  v17 = v16;
  v7->_productionStatus = [v16 BOOLValue];
  v18 = [v6 objectForKeyedSubscript:@"securityMode"];
  if (!v18)
  {
    if (!*a4)
    {
LABEL_26:

LABEL_27:
LABEL_28:

LABEL_29:
LABEL_30:

      goto LABEL_31;
    }

    v49 = MEMORY[0x29EDB9FA0];
    v56 = *MEMORY[0x29EDB9ED8];
    v19 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"No securityMode in options dict"];
    v57 = v19;
    v38 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
    *a4 = [v49 errorWithDomain:@"com.apple.Manta.MantaRestoreUtils" code:1 userInfo:v38];

LABEL_25:
    goto LABEL_26;
  }

  v19 = v18;
  v7->_securityMode = [v18 BOOLValue];
  v20 = [v6 objectForKeyedSubscript:@"securityDomain"];
  if (!v20)
  {
    if (*a4)
    {
      v46 = MEMORY[0x29EDB9FA0];
      v54 = *MEMORY[0x29EDB9ED8];
      v50 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"No securityDomain in options dict"];
      v55 = v50;
      v39 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
      *a4 = [v46 errorWithDomain:@"com.apple.Manta.MantaRestoreUtils" code:1 userInfo:v39];
    }

    goto LABEL_25;
  }

  v21 = v20;
  v7->_securityDomain = [v20 unsignedIntValue];
  v22 = [v6 objectForKeyedSubscript:@"ecid"];
  if (v22)
  {
    v23 = v22;
    v7->_ecid = [v22 unsignedLongLongValue];
    v22 = v23;
  }

  else if (*a4)
  {
    v45 = MEMORY[0x29EDB9FA0];
    v52 = *MEMORY[0x29EDB9ED8];
    v47 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"No ecid in options dict"];
    v53 = v47;
    v44 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
    *a4 = [v45 errorWithDomain:@"com.apple.Manta.MantaRestoreUtils" code:1 userInfo:v44];

    v22 = 0;
  }

  v41 = v22;

  if (v41)
  {
    goto LABEL_35;
  }

LABEL_31:
  v40 = 0;
LABEL_36:

  v42 = *MEMORY[0x29EDCA608];
  return v40;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x29EDBA070];
  chipID = self->_chipID;
  v6 = a3;
  v7 = [v4 numberWithUnsignedInt:chipID];
  [v6 encodeObject:v7 forKey:@"chipID"];

  v8 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_chipRev];
  [v6 encodeObject:v8 forKey:@"chipRev"];

  v9 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_boardID];
  [v6 encodeObject:v9 forKey:@"boardID"];

  v10 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_securityEpoch];
  [v6 encodeObject:v10 forKey:@"securityEpoch"];

  v11 = [MEMORY[0x29EDBA070] numberWithBool:self->_productionStatus];
  [v6 encodeObject:v11 forKey:@"productionStatus"];

  v12 = [MEMORY[0x29EDBA070] numberWithBool:self->_securityMode];
  [v6 encodeObject:v12 forKey:@"securityMode"];

  v13 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_securityDomain];
  [v6 encodeObject:v13 forKey:@"securityDomain"];

  v14 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:self->_ecid];
  [v6 encodeObject:v14 forKey:@"ecid"];
}

- (NSDictionary)asDictionary
{
  v15[8] = *MEMORY[0x29EDCA608];
  v14[0] = @"chipID";
  v3 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_chipID];
  v15[0] = v3;
  v14[1] = @"bundlePath";
  v4 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_chipRev];
  v15[1] = v4;
  v14[2] = @"boardID";
  v5 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_boardID];
  v15[2] = v5;
  v14[3] = @"securityEpoch";
  v6 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_securityEpoch];
  v15[3] = v6;
  v14[4] = @"productionStatus";
  v7 = [MEMORY[0x29EDBA070] numberWithBool:self->_productionStatus];
  v15[4] = v7;
  v14[5] = @"securityMode";
  v8 = [MEMORY[0x29EDBA070] numberWithBool:self->_securityMode];
  v15[5] = v8;
  v14[6] = @"securityDomain";
  v9 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_securityDomain];
  v15[6] = v9;
  v14[7] = @"ecid";
  v10 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:self->_ecid];
  v15[7] = v10;
  v11 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v15 forKeys:v14 count:8];

  v12 = *MEMORY[0x29EDCA608];

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x29EDBA050];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = objc_msgSend(v3, "stringWithFormat:", @"%@(\n"), v5;

  [v6 appendFormat:@"\tchipID: %u\n", self->_chipID];
  [v6 appendFormat:@"\tchipRev: %u\n", self->_chipRev];
  [v6 appendFormat:@"\tboardID: %u\n", self->_boardID];
  [v6 appendFormat:@"\tsecurityEpoch: %u\n", self->_securityEpoch];
  [v6 appendFormat:@"\tproductionStatus: %u\n", self->_productionStatus];
  [v6 appendFormat:@"\tsecurityMode: %u\n", self->_securityMode];
  [v6 appendFormat:@"\tsecurityDomain: %u\n", self->_securityDomain];
  [v6 appendFormat:@"\tecid: %llu\n", self->_ecid];
  [v6 appendString:@""]);
  v7 = [MEMORY[0x29EDBA0F8] stringWithString:v6];

  return v7;
}

@end