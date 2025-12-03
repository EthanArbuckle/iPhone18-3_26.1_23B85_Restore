@interface SUCarrierDownloadPolicyProperties
- (BOOL)_BOOLForKey:(id)key defaultValue:(BOOL)value;
- (SUCarrierDownloadPolicyProperties)init;
- (id)_getOverriddenProperties;
- (id)_keys;
- (id)_numberForKey:(id)key;
- (id)description;
- (int64_t)_integerForKey:(id)key defaultValue:(int64_t)value;
- (int64_t)_longLongForKey:(id)key defaultValue:(int64_t)value;
- (int64_t)maximumDownloadSizeInBytes;
- (int64_t)peakEndHour;
- (int64_t)peakStartHour;
- (unint64_t)_unsignedIntegerForKey:(id)key defaultValue:(int64_t)value;
- (unint64_t)numberOfDaysToWaitForCellularDownload;
@end

@implementation SUCarrierDownloadPolicyProperties

- (SUCarrierDownloadPolicyProperties)init
{
  v39 = *MEMORY[0x277D85DE8];
  v37.receiver = self;
  v37.super_class = SUCarrierDownloadPolicyProperties;
  v2 = [(SUCarrierDownloadPolicyProperties *)&v37 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    keyMap = v2->_keyMap;
    v2->_keyMap = v3;

    _keys = [(SUCarrierDownloadPolicyProperties *)v2 _keys];
    v6 = +[CTDataDelegate sharedInstance];
    getPreferredDataSubscriptionContext = [v6 getPreferredDataSubscriptionContext];

    if (getPreferredDataSubscriptionContext)
    {
      v32 = v2;
      v15 = [objc_alloc(MEMORY[0x277CC3620]) initWithBundleType:2];
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v30 = _keys;
      obj = _keys;
      v16 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v34;
        do
        {
          v19 = 0;
          do
          {
            if (*v34 != v18)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v33 + 1) + 8 * v19);
            v21 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"OTASoftwareUpdate", v20, 0}];
            v22 = +[CTDataDelegate sharedInstance];
            getCTClient = [v22 getCTClient];
            v24 = [getCTClient copyCarrierBundleValueWithDefault:getPreferredDataSubscriptionContext keyHierarchy:v21 bundleType:v15 error:0];

            if (v24)
            {
              [(NSMutableDictionary *)v32->_keyMap setObject:v24 forKeyedSubscript:v20];
            }

            ++v19;
          }

          while (v17 != v19);
          v17 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
        }

        while (v17);
      }

      v2 = v32;
      _keys = v30;
    }

    else
    {
      SULogInfo(@"Failed to get preferred CTXPCServiceSubscriptionContext", v8, v9, v10, v11, v12, v13, v14, v29);
    }

    v25 = v2->_keyMap;
    _getOverriddenProperties = [(SUCarrierDownloadPolicyProperties *)v2 _getOverriddenProperties];
    [(NSMutableDictionary *)v25 addEntriesFromDictionary:_getOverriddenProperties];
  }

  v27 = *MEMORY[0x277D85DE8];
  return v2;
}

- (int64_t)maximumDownloadSizeInBytes
{
  result = [(SUCarrierDownloadPolicyProperties *)self _longLongForKey:@"MaxBytesOverCellular" defaultValue:-1];
  if (result < 0)
  {
    return -1;
  }

  return result;
}

- (unint64_t)numberOfDaysToWaitForCellularDownload
{
  v2 = [(SUCarrierDownloadPolicyProperties *)self _integerForKey:@"DaysToWaitForCellularDownload" defaultValue:0];
  v3 = 28;
  if (v2 < 28)
  {
    v3 = v2;
  }

  return v3 & ~(v3 >> 63);
}

- (int64_t)peakStartHour
{
  v3 = [(SUCarrierDownloadPolicyProperties *)self _integerForKey:@"PeakStartTime" defaultValue:-1];
  if ([(SUCarrierDownloadPolicyProperties *)self _isValidHour:v3])
  {
    return v3;
  }

  else
  {
    return -1;
  }
}

- (int64_t)peakEndHour
{
  v3 = [(SUCarrierDownloadPolicyProperties *)self _integerForKey:@"PeakEndTime" defaultValue:-1];
  if ([(SUCarrierDownloadPolicyProperties *)self _isValidHour:v3])
  {
    return v3;
  }

  else
  {
    return -1;
  }
}

- (id)description
{
  v14 = MEMORY[0x277CCACA8];
  if ([(SUCarrierDownloadPolicyProperties *)self isDownloadFree])
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  v13 = v3;
  if ([(SUCarrierDownloadPolicyProperties *)self isDownloadAllowable])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  if ([(SUCarrierDownloadPolicyProperties *)self isDownloadAllowableOver2G])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  if ([(SUCarrierDownloadPolicyProperties *)self isAutoDownloadAllowable])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  maximumDownloadSizeInBytes = [(SUCarrierDownloadPolicyProperties *)self maximumDownloadSizeInBytes];
  numberOfDaysToWaitForCellularDownload = [(SUCarrierDownloadPolicyProperties *)self numberOfDaysToWaitForCellularDownload];
  peakStartHour = [(SUCarrierDownloadPolicyProperties *)self peakStartHour];
  peakEndHour = [(SUCarrierDownloadPolicyProperties *)self peakEndHour];
  if ([(SUCarrierDownloadPolicyProperties *)self allowInexpensiveHDMUnlimited])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  return [v14 stringWithFormat:@"SUDownloadPolicy <%p>:\n            \tisDownloadFree: %@\n            \tisDownloadAllowable: %@\n            \tisDownloadAllowableOver2G: %@\n            \tisAutoDownloadAllowable: %@\n            \tmaximumDownloadSizeInBytes: %llu\n            \tnumberOfDaysToWaitForCellularDownload: %lu\n            \tpeakStartHour: %ld\n            \tpeakEndHour: %ld\n            \tAllowEnhancedDownloadOnNRHDM: %@\n", self, v13, v4, v5, v6, maximumDownloadSizeInBytes, numberOfDaysToWaitForCellularDownload, peakStartHour, peakEndHour, v11];
}

- (BOOL)_BOOLForKey:(id)key defaultValue:(BOOL)value
{
  v5 = [(SUCarrierDownloadPolicyProperties *)self _numberForKey:key];
  v6 = v5;
  if (v5)
  {
    value = [v5 BOOLValue];
  }

  return value;
}

- (int64_t)_longLongForKey:(id)key defaultValue:(int64_t)value
{
  v5 = [(SUCarrierDownloadPolicyProperties *)self _numberForKey:key];
  v6 = v5;
  if (v5)
  {
    value = [v5 longLongValue];
  }

  return value;
}

- (unint64_t)_unsignedIntegerForKey:(id)key defaultValue:(int64_t)value
{
  v5 = [(SUCarrierDownloadPolicyProperties *)self _numberForKey:key];
  v6 = v5;
  if (v5)
  {
    value = [v5 unsignedIntegerValue];
  }

  return value;
}

- (int64_t)_integerForKey:(id)key defaultValue:(int64_t)value
{
  v5 = [(SUCarrierDownloadPolicyProperties *)self _numberForKey:key];
  v6 = v5;
  if (v5)
  {
    value = [v5 integerValue];
  }

  return value;
}

- (id)_numberForKey:(id)key
{
  v3 = [(NSMutableDictionary *)self->_keyMap objectForKey:key];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_getOverriddenProperties
{
  v30 = *MEMORY[0x277D85DE8];
  _keys = [(SUCarrierDownloadPolicyProperties *)self _keys];
  v24 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v24 setNumberStyle:1];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = +[SUPreferences sharedInstance];
  overrideCarrierDownloadPolicyProperties = [v4 overrideCarrierDownloadPolicyProperties];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = _keys;
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        v12 = [overrideCarrierDownloadPolicyProperties objectForKey:v11];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_12;
          }

          v13 = [v24 numberFromString:v12];
        }

        v14 = v13;
        if (v13)
        {
          [dictionary setSafeObject:v13 forKey:v11];
        }

LABEL_12:
      }

      v8 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v8);
  }

  if ([dictionary count])
  {
    SULogInfo(@"[PREFERENCES] Override properties with %@", v15, v16, v17, v18, v19, v20, v21, dictionary);
  }

  v22 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (id)_keys
{
  v5[9] = *MEMORY[0x277D85DE8];
  v5[0] = @"SoftwareUpdateOptInRequired";
  v5[1] = @"AllowDownloadOverCellular";
  v5[2] = @"AllowDownloadOver2G";
  v5[3] = @"DaysToWaitForCellularDownload";
  v5[4] = @"AllowAutomaticDownloadOverCellular";
  v5[5] = @"MaxBytesOverCellular";
  v5[6] = @"PeakStartTime";
  v5[7] = @"PeakEndTime";
  v5[8] = @"AllowEnhancedDownloadOnNRHDM";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:9];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end