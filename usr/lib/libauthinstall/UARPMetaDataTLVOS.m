@interface UARPMetaDataTLVOS
+ (id)metaDataTable;
+ (id)tlvFromKey:(id)a3 value:(id)a4;
- (UARPMetaDataTLVOS)init;
- (UARPMetaDataTLVOS)initWithType:(unsigned int)a3 length:(unsigned int)a4 value:(void *)a5;
- (id)generateTLV;
@end

@implementation UARPMetaDataTLVOS

- (UARPMetaDataTLVOS)init
{
  v3.receiver = self;
  v3.super_class = UARPMetaDataTLVOS;
  return [(UARPMetaDataTLVOS *)&v3 init];
}

- (UARPMetaDataTLVOS)initWithType:(unsigned int)a3 length:(unsigned int)a4 value:(void *)a5
{
  v13.receiver = self;
  v13.super_class = UARPMetaDataTLVOS;
  v8 = [(UARPMetaDataTLVOS *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_tlvType = a3;
    v8->_tlvLength = a4;
    v10 = [MEMORY[0x29EDB8DA0] dataWithBytes:a5 length:a4];
    tlvValue = v9->_tlvValue;
    v9->_tlvValue = v10;
  }

  return v9;
}

+ (id)tlvFromKey:(id)a3 value:(id)a4
{
  v26 = *MEMORY[0x29EDCA608];
  v5 = a3;
  v20 = a4;
  v6 = +[UARPMetaDataTLVOS metaDataTable];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = [v12 objectForKeyedSubscript:@"Name"];
        if (![v5 caseInsensitiveCompare:v13])
        {
          v14 = [v12 objectForKeyedSubscript:@"Value"];
          v15 = [v14 unsignedLongValue] + 2001563392;
          if (v15 <= 0x35 && ((0x3F036601FFFFFFuLL >> v15) & 1) != 0)
          {
            v16 = [(__objc2_class *)*off_29EE9BB48[v15] tlvFromPropertyListValue:v20];
            v17 = v9;
            v9 = v16;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v18 = *MEMORY[0x29EDCA608];

  return v9;
}

+ (id)metaDataTable
{
  if (metaDataTable_once != -1)
  {
    +[UARPMetaDataTLVOS metaDataTable];
  }

  v3 = metaDataTable_table;

  return v3;
}

void __34__UARPMetaDataTLVOS_metaDataTable__block_invoke()
{
  v0 = objc_opt_new();
  v1 = +[UARPTLVPersonalizationRequiredOS metaDataTableEntry];
  [v0 addObject:v1];

  v2 = +[UARPTLVPersonalizationPayloadTagOS metaDataTableEntry];
  [v0 addObject:v2];

  v3 = +[UARPTLVPersonalizationSuperBinaryAssetIDOS metaDataTableEntry];
  [v0 addObject:v3];

  v4 = +[UARPTLVPersonalizationManifestPrefixOS metaDataTableEntry];
  [v0 addObject:v4];

  v5 = +[UARPTLVPersonalizationBoardIDOS metaDataTableEntry];
  [v0 addObject:v5];

  v6 = +[UARPTLVPersonalizationChipIDOS metaDataTableEntry];
  [v0 addObject:v6];

  v7 = +[UARPTLVPersonalizationECIDOS metaDataTableEntry];
  [v0 addObject:v7];

  v8 = +[UARPTLVPersonalizationECIDDataOS metaDataTableEntry];
  [v0 addObject:v8];

  v9 = +[UARPTLVPersonalizationNonceOS metaDataTableEntry];
  [v0 addObject:v9];

  v10 = +[UARPTLVPersonalizationNonceHashOS metaDataTableEntry];
  [v0 addObject:v10];

  v11 = +[UARPTLVPersonalizationSecurityDomainOS metaDataTableEntry];
  [v0 addObject:v11];

  v12 = +[UARPTLVPersonalizationSecurityModeOS metaDataTableEntry];
  [v0 addObject:v12];

  v13 = +[UARPTLVPersonalizationProductionModeOS metaDataTableEntry];
  [v0 addObject:v13];

  v14 = +[UARPTLVPersonalizationChipEpochOS metaDataTableEntry];
  [v0 addObject:v14];

  v15 = +[UARPTLVPersonalizationEnableMixMatchOS metaDataTableEntry];
  [v0 addObject:v15];

  v16 = +[UARPTLVPersonalizationSuperBinaryPayloadIndexOS metaDataTableEntry];
  [v0 addObject:v16];

  v17 = +[UARPTLVPersonalizationChipRevisionOS metaDataTableEntry];
  [v0 addObject:v17];

  v18 = +[UARPTLVPersonalizationFTABSubfileTagOS metaDataTableEntry];
  [v0 addObject:v18];

  v19 = +[UARPTLVPersonalizationFTABSubfileLongnameOS metaDataTableEntry];
  [v0 addObject:v19];

  v20 = +[UARPTLVPersonalizationFTABSubfileDigestOS metaDataTableEntry];
  [v0 addObject:v20];

  v21 = +[UARPTLVPersonalizationFTABSubfileHashAlgorithmOS metaDataTableEntry];
  [v0 addObject:v21];

  v22 = +[UARPTLVPersonalizationFTABSubfileESECOS metaDataTableEntry];
  [v0 addObject:v22];

  v23 = +[UARPTLVPersonalizationFTABSubfileEPROOS metaDataTableEntry];
  [v0 addObject:v23];

  v24 = +[UARPTLVPersonalizationFTABSubfileTrustedOS metaDataTableEntry];
  [v0 addObject:v24];

  v25 = +[UARPTLVPersonalizationSoCLiveNonceOS metaDataTableEntry];
  [v0 addObject:v25];

  v26 = +[UARPTLVPersonalizationPrefixNeedsLogicalUnitNumberOS metaDataTableEntry];
  [v0 addObject:v26];

  v27 = +[UARPTLVPersonalizationSuffixNeedsLogicalUnitNumberOS metaDataTableEntry];
  [v0 addObject:v27];

  v28 = +[UARPTLVPersonalizationLogicalUnitNumberOS metaDataTableEntry];
  [v0 addObject:v28];

  v29 = +[UARPTLVPersonalizationTicketNeedsLogicalUnitNumberOS metaDataTableEntry];
  [v0 addObject:v29];

  v30 = +[UARPTLVHostPersonalizationRequiredOS metaDataTableEntry];
  [v0 addObject:v30];

  v31 = +[UARPTLVRequiredPersonalizationOptionOS metaDataTableEntry];
  [v0 addObject:v31];

  v32 = +[UARPTLVPersonalizationFTABPayloadOS metaDataTableEntry];
  [v0 addObject:v32];

  v33 = +[UARPTLVPersonalizedManifestOS metaDataTableEntry];
  [v0 addObject:v33];

  v34 = +[UARPTLVPersonalizationLifeOS metaDataTableEntry];
  [v0 addObject:v34];

  v35 = +[UARPTLVPersonalizationProvisioningOS metaDataTableEntry];
  [v0 addObject:v35];

  v36 = +[UARPTLVPersonalizationManifestEpochOS metaDataTableEntry];
  [v0 addObject:v36];

  v37 = +[UARPTLVPersonalizationManifestSuffixOS metaDataTableEntry];
  [v0 addObject:v37];

  v38 = [MEMORY[0x29EDB8D80] arrayWithArray:v0];
  v39 = metaDataTable_table;
  metaDataTable_table = v38;
}

- (id)generateTLV
{
  v3 = objc_alloc_init(MEMORY[0x29EDB8DF8]);
  v7 = uarpHtonl(self->_tlvType);
  [v3 appendBytes:&v7 length:4];
  v6 = uarpHtonl(self->_tlvLength);
  [v3 appendBytes:&v6 length:4];
  [v3 appendData:self->_tlvValue];
  v4 = [MEMORY[0x29EDB8DA0] dataWithData:v3];

  return v4;
}

@end