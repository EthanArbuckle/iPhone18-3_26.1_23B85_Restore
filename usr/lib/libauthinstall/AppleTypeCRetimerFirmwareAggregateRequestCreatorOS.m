@interface AppleTypeCRetimerFirmwareAggregateRequestCreatorOS
- (AppleTypeCRetimerFirmwareAggregateRequestCreatorOS)initWithOptions:(id)a3 logFunction:(void *)a4 logContext:(void *)a5;
- (BOOL)generateRequestDictionary;
- (BOOL)parseOptions:(id)a3;
- (id)generateHashForData:(id)a3;
@end

@implementation AppleTypeCRetimerFirmwareAggregateRequestCreatorOS

- (AppleTypeCRetimerFirmwareAggregateRequestCreatorOS)initWithOptions:(id)a3 logFunction:(void *)a4 logContext:(void *)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = AppleTypeCRetimerFirmwareAggregateRequestCreatorOS;
  v9 = [(AppleTypeCRetimerRestoreInfoHelperOS *)&v13 initWithOptions:v8 logFunction:a4 logContext:a5];
  v10 = v9;
  if (!v9 || [(AppleTypeCRetimerFirmwareAggregateRequestCreatorOS *)v9 parseOptions:v8]&& [(AppleTypeCRetimerFirmwareAggregateRequestCreatorOS *)v10 generateRequestDictionary])
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)parseOptions:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"FirmwareData"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [[FTABFileOS alloc] initWithData:v5];
    v7 = v6;
    if (v6)
    {
      v8 = [(FTABFileOS *)v6 subfileWithTag:@"rrko"];
      if (v8)
      {
        v9 = v8;
        v10 = [(UARPSuperBinaryOS *)v8 data];
        rrkoData = self->_rrkoData;
        self->_rrkoData = v10;

        v12 = [(FTABFileOS *)v7 subfileWithTag:@"rkos"];
        if (v12)
        {
          v13 = v12;
          v14 = [v12 data];
          rkosData = self->_rkosData;
          self->_rkosData = v14;

          v16 = [(FTABFileOS *)v7 subfileWithTag:@"cphy"];
          v17 = v16;
          if (v16)
          {
            v18 = [v16 data];
            cphyData = self->_cphyData;
            self->_cphyData = v18;
          }

          else
          {
            [(AppleTypeCRetimerRestoreInfoHelperOS *)self log:@"No cphy data found"];
          }

          goto LABEL_21;
        }

        [(AppleTypeCRetimerRestoreInfoHelperOS *)self log:@"Failed to locate rkos file in ftab"];
        goto LABEL_33;
      }

      v40 = @"Failed to locate rrko file in ftab";
    }

    else
    {
      v21 = [[UARPSuperBinaryOS alloc] initWithData:v5 delegate:0 delegateQueue:0];
      if (v21)
      {
        v9 = v21;
        v22 = [[UARPAssetTagOS alloc] initWithString:@"RRKO"];
        v23 = [(UARPSuperBinaryOS *)v9 payloadWith4ccTag:v22];
        if (v23)
        {
          v24 = v23;
          v25 = [v23 payloadData];
          v26 = self->_rrkoData;
          self->_rrkoData = v25;

          v27 = [[UARPAssetTagOS alloc] initWithString:@"FIRM"];
          v28 = [(UARPSuperBinaryOS *)v9 payloadWith4ccTag:v27];
          if (v28)
          {
            v29 = v28;
            v51 = v27;
            v30 = [FTABFileOS alloc];
            v31 = [v29 payloadData];
            v32 = [(FTABFileOS *)v30 initWithData:v31];

            if (v32)
            {
              v33 = [(FTABFileOS *)v32 subfileWithTag:@"rkos"];
              v34 = v33;
              if (v33)
              {
                v35 = [v33 data];
                v36 = self->_rkosData;
                self->_rkosData = v35;

                v37 = [(FTABFileOS *)v32 subfileWithTag:@"cphy"];
                if (v37)
                {
                  v38 = [v37 data];
                  v39 = self->_cphyData;
                  self->_cphyData = v38;
                }

                else
                {
                  [(AppleTypeCRetimerRestoreInfoHelperOS *)self log:@"No cphy data found", 0];
                }
              }

              else
              {
                [(AppleTypeCRetimerRestoreInfoHelperOS *)self log:@"Failed to locate rkos file in super binary ftab"];
              }

              if (v34)
              {
LABEL_21:
                v41 = [v4 objectForKeyedSubscript:@"DeviceInfo"];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v42 = [v41 objectForKeyedSubscript:@"InfoArray"];
                  deviceInfoArray = self->_deviceInfoArray;
                  self->_deviceInfoArray = v42;

                  v44 = self->_deviceInfoArray;
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v45 = [v41 objectForKeyedSubscript:@"APInfo"];
                    apParameters = self->_apParameters;
                    self->_apParameters = v45;

                    v20 = 1;
LABEL_28:

LABEL_35:
                    goto LABEL_36;
                  }

                  v47 = @"Failed to locate device info array";
                }

                else
                {
                  v47 = @"Failed to locate device info";
                }

                [(AppleTypeCRetimerRestoreInfoHelperOS *)self log:v47];
                v20 = 0;
                goto LABEL_28;
              }

LABEL_34:
              v20 = 0;
              goto LABEL_35;
            }

            [(AppleTypeCRetimerRestoreInfoHelperOS *)self log:@"Failed to parse FTAB in super binary"];

            v48 = v51;
          }

          else
          {
            [(AppleTypeCRetimerRestoreInfoHelperOS *)self log:@"Failed to locate FTAB in super binary"];
            v48 = v27;
          }
        }

        else
        {
          [(AppleTypeCRetimerRestoreInfoHelperOS *)self log:@"Failed to locate rrko file in super binary"];
        }

LABEL_33:
        goto LABEL_34;
      }

      v40 = @"Failed to parse firmware data";
    }

    [(AppleTypeCRetimerRestoreInfoHelperOS *)self log:v40];
    goto LABEL_34;
  }

  [(AppleTypeCRetimerRestoreInfoHelperOS *)self log:@"Unable to locate firmware data"];
  v20 = 0;
LABEL_36:

  return v20;
}

- (id)generateHashForData:(id)a3
{
  v12 = *MEMORY[0x29EDCA608];
  memset(&v10, 0, sizeof(v10));
  v3 = a3;
  CC_SHA384_Init(&v10);
  v4 = v3;
  v5 = [v4 bytes];
  v6 = [v3 length];

  CC_SHA384_Update(&v10, v5, v6);
  CC_SHA384_Final(md, &v10);
  v7 = [MEMORY[0x29EDB8DA0] dataWithBytes:md length:48];
  v8 = *MEMORY[0x29EDCA608];

  return v7;
}

- (BOOL)generateRequestDictionary
{
  v2 = self;
  v119 = *MEMORY[0x29EDCA608];
  v3 = [(AppleTypeCRetimerFirmwareAggregateRequestCreatorOS *)self generateHashForData:self->_rkosData];
  v4 = [(AppleTypeCRetimerFirmwareAggregateRequestCreatorOS *)v2 generateHashForData:v2->_rrkoData];
  if (v2->_cphyData)
  {
    v5 = [(AppleTypeCRetimerFirmwareAggregateRequestCreatorOS *)v2 generateHashForData:?];
  }

  else
  {
    v5 = 0;
  }

  v100 = [MEMORY[0x29EDB8E00] dictionary];
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  obj = v2->_deviceInfoArray;
  v87 = [(NSArray *)obj countByEnumeratingWithState:&v102 objects:v118 count:16];
  if (v87)
  {
    v89 = *v103;
    v84 = v4;
    v85 = v3;
    v83 = v5;
    v90 = v2;
LABEL_6:
    v6 = 0;
    while (1)
    {
      if (*v103 != v89)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v102 + 1) + 8 * v6);
      v8 = [v7 objectForKeyedSubscript:@"TagNumber"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      v9 = [v8 unsignedCharValue];
      v10 = [v7 objectForKeyedSubscript:@"HardwareID"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [(AppleTypeCRetimerRestoreInfoHelperOS *)v90 log:@"Unable to locate hardware ID data"];
        goto LABEL_90;
      }

      v95 = v6;
      v11 = [MEMORY[0x29EDBA0F8] stringWithValidatedFormat:@"@Timer%u validFormatSpecifiers:Ticket" error:@"%u", 0, v9];
      [v100 setObject:MEMORY[0x29EDB8EB0] forKeyedSubscript:v11];
      v12 = [v10 objectForKeyedSubscript:@"BoardID"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [(AppleTypeCRetimerRestoreInfoHelperOS *)v90 log:@"Unable to locate board ID for tag %u", v9];
        v72 = v12;
        goto LABEL_89;
      }

      v98 = v12;
      v99 = [MEMORY[0x29EDBA0F8] stringWithValidatedFormat:@"Timer validFormatSpecifiers:BoardID error:%u", @"%u", 0, v9];
      [v100 setObject:v12 forKeyedSubscript:v99];
      v13 = [v10 objectForKeyedSubscript:@"ChipID"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [(AppleTypeCRetimerRestoreInfoHelperOS *)v90 log:@"Unable to locate board ID for tag %u", v9];
        v73 = v13;
        goto LABEL_88;
      }

      v96 = v13;
      v97 = [MEMORY[0x29EDBA0F8] stringWithValidatedFormat:@"Timer validFormatSpecifiers:ChipID error:%u", @"%u", 0, v9];
      [v100 setObject:v13 forKeyedSubscript:v97];
      v14 = [v10 objectForKeyedSubscript:@"ECID"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [(AppleTypeCRetimerRestoreInfoHelperOS *)v90 log:@"Unable to locate ECID for tag %u", v9];

        v73 = v13;
LABEL_88:

        v72 = v98;
LABEL_89:

LABEL_90:
LABEL_91:

LABEL_92:
        v71 = 0;
        v4 = v84;
        v3 = v85;
        v5 = v83;
        v68 = v100;
        goto LABEL_93;
      }

      v94 = v8;
      v93 = [MEMORY[0x29EDBA0F8] stringWithValidatedFormat:@"Timer validFormatSpecifiers:ECID error:%u", @"%u", 0, v9];
      [v100 setObject:v14 forKeyedSubscript:?];
      v15 = [v10 objectForKeyedSubscript:@"Nonce"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [(AppleTypeCRetimerRestoreInfoHelperOS *)v90 log:@"Unable to locate nonce for tag %u", v9];

        v8 = v94;
        goto LABEL_91;
      }

      v91 = v11;
      v92 = [MEMORY[0x29EDBA0F8] stringWithValidatedFormat:@"Timer validFormatSpecifiers:Nonce error:%u", @"%u", 0, v9];
      [v100 setObject:v15 forKeyedSubscript:?];
      v16 = [v10 objectForKeyedSubscript:@"ProductionStatus"];
      objc_opt_class();
      v101 = v16;
      if (objc_opt_isKindOfClass())
      {
        v17 = [MEMORY[0x29EDBA0F8] stringWithValidatedFormat:@"Timer validFormatSpecifiers:ProductionMode error:%u", @"%u", 0, v9];
        v18 = v16;
        v19 = v17;
        if ([v18 unsignedCharValue])
        {
          v20 = MEMORY[0x29EDB8EB0];
        }

        else
        {
          v20 = MEMORY[0x29EDB8EA8];
        }

        v86 = v19;
        [v100 setObject:v20 forKeyedSubscript:v19];
        v21 = [v10 objectForKeyedSubscript:@"SecurityDomain"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v81 = [MEMORY[0x29EDBA0F8] stringWithValidatedFormat:@"Timer validFormatSpecifiers:SecurityDomain error:%u", @"%u", 0, v9];
          v82 = v21;
          [v100 setObject:v21 forKeyedSubscript:?];
          v22 = [v10 objectForKeyedSubscript:@"SecurityMode"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v23 = [MEMORY[0x29EDBA0F8] stringWithValidatedFormat:@"Timer validFormatSpecifiers:SecurityMode error:%u", @"%u", 0, v9];
            if ([v22 unsignedCharValue])
            {
              v24 = MEMORY[0x29EDB8EB0];
            }

            else
            {
              v24 = MEMORY[0x29EDB8EA8];
            }

            v77 = v23;
            [v100 setObject:v24 forKeyedSubscript:v23];
            v25 = [v10 objectForKeyedSubscript:@"Demote"];
            if (v25 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              v60 = v25;
              v36 = v22;
              [(AppleTypeCRetimerRestoreInfoHelperOS *)v90 log:@"Invalid demote setting for tag %u", v9];
              v33 = 0;
              v34 = v11;
              v28 = v98;
            }

            else
            {
              v26 = [v7 objectForKeyedSubscript:@"Trusted"];
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();
              v80 = MEMORY[0x29EDB8EB0];
              v28 = v98;
              if (isKindOfClass)
              {
                v80 = v26;
              }

              v76 = v26;
              v79 = [MEMORY[0x29EDBA0F8] stringWithValidatedFormat:@"Timer validFormatSpecifiers:RTKitOS error:%u", @"%u", 0, v9];
              if ([v25 BOOLValue] && objc_msgSend(v101, "unsignedCharValue"))
              {
                v114[0] = @"Digest";
                v114[1] = @"EPRO";
                v115[0] = v85;
                v115[1] = MEMORY[0x29EDB8EA8];
                v114[2] = @"DPRO";
                v114[3] = @"ESEC";
                v115[2] = MEMORY[0x29EDB8EB0];
                v115[3] = MEMORY[0x29EDB8EB0];
                v114[4] = @"Trusted";
                v115[4] = MEMORY[0x29EDB8EA8];
                v29 = MEMORY[0x29EDB8DC0];
                v30 = v115;
                v31 = v114;
                v32 = 5;
              }

              else
              {
                v117[0] = v85;
                v116[0] = @"Digest";
                v116[1] = @"EPRO";
                v37 = [v101 unsignedCharValue];
                v38 = MEMORY[0x29EDB8EB0];
                v39 = MEMORY[0x29EDB8EA8];
                if (v37)
                {
                  v40 = MEMORY[0x29EDB8EB0];
                }

                else
                {
                  v40 = MEMORY[0x29EDB8EA8];
                }

                v117[1] = v40;
                v116[2] = @"ESEC";
                if ([v22 unsignedCharValue])
                {
                  v41 = v38;
                }

                else
                {
                  v41 = v39;
                }

                v117[2] = v41;
                v116[3] = @"Trusted";
                if ([v80 BOOLValue])
                {
                  v42 = v38;
                }

                else
                {
                  v42 = v39;
                }

                v117[3] = v42;
                v29 = MEMORY[0x29EDB8DC0];
                v30 = v117;
                v31 = v116;
                v32 = 4;
              }

              v43 = [v29 dictionaryWithObjects:v30 forKeys:v31 count:v32];
              [v100 setObject:v43 forKeyedSubscript:v79];

              v78 = [MEMORY[0x29EDBA0F8] stringWithValidatedFormat:@"Timer validFormatSpecifiers:RestoreRTKitOS error:%u", @"%u", 0, v9];
              if ([v25 BOOLValue] && objc_msgSend(v101, "unsignedCharValue"))
              {
                v110[0] = @"Digest";
                v110[1] = @"EPRO";
                v111[0] = v84;
                v111[1] = MEMORY[0x29EDB8EA8];
                v110[2] = @"DPRO";
                v110[3] = @"ESEC";
                v111[2] = MEMORY[0x29EDB8EB0];
                v111[3] = MEMORY[0x29EDB8EB0];
                v110[4] = @"Trusted";
                v111[4] = MEMORY[0x29EDB8EA8];
                v44 = MEMORY[0x29EDB8DC0];
                v45 = v111;
                v46 = v110;
                v47 = 5;
              }

              else
              {
                v113[0] = v84;
                v112[0] = @"Digest";
                v112[1] = @"EPRO";
                v48 = [v101 unsignedCharValue];
                v49 = MEMORY[0x29EDB8EB0];
                v50 = MEMORY[0x29EDB8EA8];
                if (v48)
                {
                  v51 = MEMORY[0x29EDB8EB0];
                }

                else
                {
                  v51 = MEMORY[0x29EDB8EA8];
                }

                v113[1] = v51;
                v112[2] = @"ESEC";
                if ([v22 unsignedCharValue])
                {
                  v52 = v49;
                }

                else
                {
                  v52 = v50;
                }

                v113[2] = v52;
                v112[3] = @"Trusted";
                if ([v80 BOOLValue])
                {
                  v53 = v49;
                }

                else
                {
                  v53 = v50;
                }

                v113[3] = v53;
                v44 = MEMORY[0x29EDB8DC0];
                v45 = v113;
                v46 = v112;
                v47 = 4;
              }

              v54 = [v44 dictionaryWithObjects:v45 forKeys:v46 count:v47];
              [v100 setObject:v54 forKeyedSubscript:v78];

              if (v90->_cphyData)
              {
                v55 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Timer, AppleTypeCPhyFirmware, %u", v9];
                if ([v25 BOOLValue] && objc_msgSend(v101, "unsignedCharValue"))
                {
                  v106[0] = @"Digest";
                  v106[1] = @"EPRO";
                  v107[0] = v83;
                  v107[1] = MEMORY[0x29EDB8EA8];
                  v106[2] = @"DPRO";
                  v106[3] = @"ESEC";
                  v107[2] = MEMORY[0x29EDB8EB0];
                  v107[3] = MEMORY[0x29EDB8EB0];
                  v106[4] = @"Trusted";
                  v107[4] = MEMORY[0x29EDB8EA8];
                  v56 = MEMORY[0x29EDB8DC0];
                  v57 = v107;
                  v58 = v106;
                  v59 = 5;
                }

                else
                {
                  v109[0] = v83;
                  v108[0] = @"Digest";
                  v108[1] = @"EPRO";
                  v61 = [v101 unsignedCharValue];
                  v62 = MEMORY[0x29EDB8EB0];
                  v63 = MEMORY[0x29EDB8EA8];
                  if (v61)
                  {
                    v64 = MEMORY[0x29EDB8EB0];
                  }

                  else
                  {
                    v64 = MEMORY[0x29EDB8EA8];
                  }

                  v109[1] = v64;
                  v108[2] = @"ESEC";
                  if ([v22 unsignedCharValue])
                  {
                    v65 = v62;
                  }

                  else
                  {
                    v65 = v63;
                  }

                  v109[2] = v65;
                  v108[3] = @"Trusted";
                  if ([v80 BOOLValue])
                  {
                    v66 = v62;
                  }

                  else
                  {
                    v66 = v63;
                  }

                  v109[3] = v66;
                  v56 = MEMORY[0x29EDB8DC0];
                  v57 = v109;
                  v58 = v108;
                  v59 = 4;
                }

                v67 = [v56 dictionaryWithObjects:v57 forKeys:v58 count:v59];
                [v100 setObject:v67 forKeyedSubscript:v55];
              }

              v60 = v25;
              v36 = v22;

              v33 = 1;
              v34 = v91;
            }
          }

          else
          {
            v36 = v22;
            [(AppleTypeCRetimerRestoreInfoHelperOS *)v90 log:@"Unable to locate security mode for tag %u", v9];
            v33 = 0;
            v34 = v11;
            v28 = v98;
          }

          v35 = v96;
          v21 = v82;
        }

        else
        {
          [(AppleTypeCRetimerRestoreInfoHelperOS *)v90 log:@"Unable to locate security domain for tag %u", v9];
          v33 = 0;
          v34 = v11;
          v28 = v98;
          v35 = v96;
        }
      }

      else
      {
        [(AppleTypeCRetimerRestoreInfoHelperOS *)v90 log:@"Unable to locate production status for tag %u", v9];
        v33 = 0;
        v34 = v11;
        v28 = v98;
        v35 = v96;
      }

      if (!v33)
      {
        goto LABEL_92;
      }

      v6 = v95 + 1;
      if (v87 == v95 + 1)
      {
        v4 = v84;
        v3 = v85;
        v5 = v83;
        v2 = v90;
        v87 = [(NSArray *)obj countByEnumeratingWithState:&v102 objects:v118 count:16];
        if (v87)
        {
          goto LABEL_6;
        }

        goto LABEL_80;
      }
    }

    [(AppleTypeCRetimerRestoreInfoHelperOS *)v90 log:@"Unable to locate tag number in device info"];
    goto LABEL_91;
  }

LABEL_80:

  v68 = v100;
  if (v2->_apParameters)
  {
    [v100 addEntriesFromDictionary:?];
  }

  v69 = [MEMORY[0x29EDB8DC0] dictionaryWithDictionary:v100];
  requestDictionary = v2->_requestDictionary;
  v2->_requestDictionary = v69;

  [(AppleTypeCRetimerRestoreInfoHelperOS *)v2 verboseLog:@"ATCRT request dictionary = %@", v2->_requestDictionary];
  v71 = 1;
LABEL_93:

  v74 = *MEMORY[0x29EDCA608];
  return v71;
}

@end