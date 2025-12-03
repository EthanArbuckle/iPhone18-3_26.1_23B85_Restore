@interface WiFiUsageParsedBeacon
+ (void)defaults;
+ (void)initialize;
+ (void)updateConfig;
- (BOOL)parseApName:(char *)name length:(unint64_t)length endOfBuffer:(char *)buffer;
- (BOOL)parseBeaconIE:(char *)e endOfBuffer:(char *)buffer;
- (BOOL)parseDSSS:(char *)s length:(unint64_t)length endOfBuffer:(char *)buffer;
- (BOOL)parseHE6GHz:(char *)hz length:(unint64_t)length endOfBuffer:(char *)buffer;
- (BOOL)parseHECapa:(char *)capa length:(unint64_t)length endOfBuffer:(char *)buffer;
- (BOOL)parseHTCapa:(char *)capa length:(unint64_t)length endOfBuffer:(char *)buffer;
- (BOOL)parseHTOp:(char *)op length:(unint64_t)length endOfBuffer:(char *)buffer;
- (BOOL)parseNormalIE:(unsigned __int8)e from:(char *)from length:(unint64_t)length endOfBuffer:(char *)buffer;
- (BOOL)parseRNR:(char *)r length:(unint64_t)length endOfBuffer:(char *)buffer;
- (BOOL)parseSSID:(char *)d length:(unint64_t)length endOfBuffer:(char *)buffer;
- (BOOL)parseVHTCapa:(char *)capa length:(unint64_t)length endOfBuffer:(char *)buffer;
- (WiFiUsageParsedBeacon)initWithBeaconData:(id)data andAdditionalMetadata:(id)metadata;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation WiFiUsageParsedBeacon

- (BOOL)parseBeaconIE:(char *)e endOfBuffer:(char *)buffer
{
  v7 = objc_autoreleasePoolPush();
  if (e >= buffer)
  {
    v65 = 1;
    goto LABEL_41;
  }

  context = v7;
  bufferCopy = buffer;
  selfCopy = self;
  while (1)
  {
    v9 = e + 2;
    v8 = *e;
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"IE value %d", v8];
    lastParsedOK = self->_lastParsedOK;
    self->_lastParsedOK = v10;

    if (e + 2 > buffer)
    {
      NSLog(&cfstr_SReachedEndOfB.isa, "[WiFiUsageParsedBeacon parseBeaconIE:endOfBuffer:]", v8, e + 1, 1, e + 2, buffer);
      goto LABEL_39;
    }

    v12 = e[1];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Len value of IE %d", v8];
    v14 = self->_lastParsedOK;
    self->_lastParsedOK = v13;

    if (&v9[v12] > buffer)
    {
      NSLog(&cfstr_SReachedEndOfB_0.isa, "[WiFiUsageParsedBeacon parseBeaconIE:endOfBuffer:]", v8, v12, e + 2, v12, &v9[v12], buffer);
      goto LABEL_39;
    }

    eCopy = e;
    v15 = objc_autoreleasePoolPush();
    v16 = MEMORY[0x277CCACA8];
    v17 = +[WiFiUsageAccessPointProfile prefixForCA];
    v18 = [v16 stringWithFormat:@"%@%u", v17, v8];

    v72 = v15;
    if (v8 == 255)
    {
      v31 = v18;
      v32 = eCopy + 3;
      if (eCopy + 3 > buffer)
      {
        NSLog(&cfstr_SReachedEndOfI.isa, "[WiFiUsageParsedBeacon parseBeaconIE:endOfBuffer:]");

        objc_autoreleasePoolPop(v15);
LABEL_35:
        v65 = 1;
        goto LABEL_40;
      }

      v33 = *v9;
      v34 = v12 - 1;
      v35 = [WiFiUsageParsedBeacon isValidIE:v33 ofLen:(v12 - 1) withIsExtended:1];
      extendedIEList = selfCopy->_extendedIEList;
      v37 = MEMORY[0x277CCACA8];
      v38 = +[WiFiUsageAccessPointProfile prefixForCA];
      v39 = [v37 stringWithFormat:@"%@255_%d_isValid", v38, v33];
      [(NSMutableDictionary *)extendedIEList setValue:v35 forKey:v39];

      v70 = v35;
      if (v35 && ([v35 BOOLValue] & 1) == 0)
      {
        v40 = selfCopy->_extendedIEList;
        v41 = MEMORY[0x277CCACA8];
        v42 = +[WiFiUsageAccessPointProfile prefixForCA];
        v43 = [v41 stringWithFormat:@"%@255_%u_isValid", v42, v33];
        v44 = [(NSMutableDictionary *)v40 objectForKeyedSubscript:v43];
        NSLog(&cfstr_SElementUHhuIs.isa, "[WiFiUsageParsedBeacon parseBeaconIE:endOfBuffer:]", 255, v33, v44);
      }

      v12 = v34;
      if (![(WiFiUsageParsedBeacon *)selfCopy parseExtendedIE:v33 from:v32 length:v34 endOfBuffer:buffer])
      {
        NSLog(&cfstr_SElementHhuHhu.isa, "[WiFiUsageParsedBeacon parseBeaconIE:endOfBuffer:]", 255, v33);

        v66 = v72;
        goto LABEL_38;
      }

      self = selfCopy;
      v45 = selfCopy->_extendedIEList;
      v46 = [MEMORY[0x277CBEA90] dataWithBytes:v32 length:v34];
      v47 = MEMORY[0x277CCACA8];
      v48 = +[WiFiUsageAccessPointProfile prefixForCA];
      v49 = v33;
      v50 = [v47 stringWithFormat:@"%@255_%d", v48, v33];
      [(NSMutableDictionary *)v45 setValue:v46 forKey:v50];

      v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"Payload value of IE %hhu_%hhu", 255, v49];
      v52 = selfCopy->_lastParsedOK;
      selfCopy->_lastParsedOK = v51;

      v53 = 3;
      v54 = v72;
      v22 = v31;
      goto LABEL_27;
    }

    v19 = [WiFiUsageParsedBeacon isValidIE:v8 ofLen:v12 withIsExtended:0];
    taggedIEList = selfCopy->_taggedIEList;
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_isValid", v18];
    [(NSMutableDictionary *)taggedIEList setValue:v19 forKey:v21];

    v22 = v18;
    if (v19 && ([v19 BOOLValue] & 1) == 0)
    {
      v23 = [(NSMutableDictionary *)selfCopy->_taggedIEList objectForKeyedSubscript:v18];
      NSLog(&cfstr_SElementHhuIsI.isa, "[WiFiUsageParsedBeacon parseBeaconIE:endOfBuffer:]", v8, v23);
    }

    if (v8 != 221)
    {
      break;
    }

    v70 = v19;
    v24 = v18;
    __memcpy_chk();
    v25 = MEMORY[0x277CCACA8];
    v26 = +[WiFiUsageAccessPointProfile prefixForCA];
    v27 = v26;
    if (v12 < 4)
    {
      v30 = [v25 stringWithFormat:@"%@%02X:%02X:%02X%@%@", v26, 0, 0, 0, &stru_28487EF20, &stru_28487EF20];
    }

    else
    {
      v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"-%d", 0];
      v29 = v28;
      if (v12 == 4)
      {
        v30 = [v25 stringWithFormat:@"%@%02X:%02X:%02X%@%@", v27, 0, 0, 0, v28, &stru_28487EF20];
      }

      else
      {
        v59 = [MEMORY[0x277CCACA8] stringWithFormat:@"-%d", 0];
        v30 = [v25 stringWithFormat:@"%@%02X:%02X:%02X%@%@", v27, 0, 0, 0, v29, v59];
      }
    }

    v54 = v72;
    v22 = v24;

    self = selfCopy;
    vendorIEList = selfCopy->_vendorIEList;
    v61 = [MEMORY[0x277CBEA90] dataWithBytes:v9 length:v12];
    [(NSMutableDictionary *)vendorIEList setValue:v61 forKey:v30];

    v62 = [MEMORY[0x277CCACA8] stringWithFormat:@"Payload value of IE %d_%@", 221, v30];
    v63 = selfCopy->_lastParsedOK;
    selfCopy->_lastParsedOK = v62;

    v53 = 2;
LABEL_27:
    v19 = v70;
LABEL_28:
    v64 = &eCopy[v53];

    objc_autoreleasePoolPop(v54);
    e = &v64[v12];
    buffer = bufferCopy;
    if (e >= bufferCopy)
    {
      goto LABEL_35;
    }
  }

  self = selfCopy;
  v54 = v72;
  if ([(WiFiUsageParsedBeacon *)selfCopy parseNormalIE:v8 from:v9 length:v12 endOfBuffer:buffer])
  {
    if (v12)
    {
      v55 = selfCopy->_taggedIEList;
      v56 = [MEMORY[0x277CBEA90] dataWithBytes:v9 length:v12];
      [(NSMutableDictionary *)v55 setValue:v56 forKey:v22];
    }

    v57 = [MEMORY[0x277CCACA8] stringWithFormat:@"Payload value of IE %hhu", v8];
    v58 = selfCopy->_lastParsedOK;
    selfCopy->_lastParsedOK = v57;

    v53 = 2;
    goto LABEL_28;
  }

  NSLog(&cfstr_SElementHhuIsI_0.isa, "[WiFiUsageParsedBeacon parseBeaconIE:endOfBuffer:]", v8);

  v66 = v72;
LABEL_38:
  objc_autoreleasePoolPop(v66);
LABEL_39:
  v65 = 0;
LABEL_40:
  v7 = context;
LABEL_41:
  objc_autoreleasePoolPop(v7);
  return v65;
}

- (WiFiUsageParsedBeacon)initWithBeaconData:(id)data andAdditionalMetadata:(id)metadata
{
  dataCopy = data;
  metadataCopy = metadata;
  v21.receiver = self;
  v21.super_class = WiFiUsageParsedBeacon;
  v8 = [(WiFiUsageParsedBeacon *)&v21 init];
  if (v8)
  {
    v9 = [dataCopy length];
    bytes = [dataCopy bytes];
    if (v9 >= 0x25)
    {
      v11 = bytes;
      v12 = *(bytes + 32);
      v13 = *(bytes + 34);
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02x:%02x:%02x:%02x:%02x:%02x", *(bytes + 16), *(bytes + 17), *(bytes + 18), *(bytes + 19), *(bytes + 20), *(bytes + 21)];
      [(WiFiUsageParsedBeacon *)v8 setBssid:v14];

      [(WiFiUsageParsedBeacon *)v8 setBeaconInterval:v12];
      [(WiFiUsageParsedBeacon *)v8 setCapabilities:v13];
      [(WiFiUsageParsedBeacon *)v8 setChannel:0];
      [(WiFiUsageParsedBeacon *)v8 setBand:0];
      [(WiFiUsageParsedBeacon *)v8 setHasHT:0];
      [(WiFiUsageParsedBeacon *)v8 setHasVHT:0];
      [(WiFiUsageParsedBeacon *)v8 setHasHE:0];
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      [(WiFiUsageParsedBeacon *)v8 setTaggedIEList:dictionary];

      dictionary2 = [MEMORY[0x277CBEB38] dictionary];
      [(WiFiUsageParsedBeacon *)v8 setVendorIEList:dictionary2];

      dictionary3 = [MEMORY[0x277CBEB38] dictionary];
      [(WiFiUsageParsedBeacon *)v8 setExtendedIEList:dictionary3];

      [(WiFiUsageParsedBeacon *)v8 setParsingSuccessful:1];
      [(WiFiUsageParsedBeacon *)v8 setColocated6Ghz:0];
      [(WiFiUsageParsedBeacon *)v8 setColocated6GhzIsPSC:0];
      [(WiFiUsageParsedBeacon *)v8 setApName:0];
      v18 = [metadataCopy objectForKey:@"IS_BEACON_AT_HE_RATE"];
      [(WiFiUsageParsedBeacon *)v8 setIsBeaconAtHeRate:v18];

      -[WiFiUsageParsedBeacon setParsingSuccessful:](v8, "setParsingSuccessful:", -[WiFiUsageParsedBeacon parseBeaconIE:endOfBuffer:](v8, "parseBeaconIE:endOfBuffer:", v11 + 36, [dataCopy bytes] + objc_msgSend(dataCopy, "length")));
      if (!v8->_band && v8->_channel)
      {
        if (v8->_channel <= 0x13u)
        {
          v19 = 2;
        }

        else
        {
          v19 = 5;
        }

        [(WiFiUsageParsedBeacon *)v8 setBand:v19];
      }
    }

    else
    {
      NSLog(&cfstr_SInvalidBeacon.isa, "[WiFiUsageParsedBeacon initWithBeaconData:andAdditionalMetadata:]", v9);

      v8 = 0;
    }
  }

  return v8;
}

- (id)dictionaryRepresentation
{
  v106 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [WiFiUsagePrivacyFilter reformatMACAddress:self->_bssid];
  [dictionary setObject:v4 forKeyedSubscript:@"bssid"];

  v5 = [WiFiUsagePrivacyFilter sanitizedOUI:self->_bssid];
  [dictionary setObject:v5 forKeyedSubscript:@"oui"];

  v6 = [dictionary objectForKeyedSubscript:@"oui"];
  v7 = [dictionary objectForKeyedSubscript:@"bssid"];
  v8 = [v7 substringToIndex:8];
  v9 = [v6 isEqualToString:v8];

  if ((v9 & 1) == 0)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [dictionary setObject:v10 forKeyedSubscript:@"oui_was_sanitized"];
  }

  v11 = [MEMORY[0x277CCABB0] numberWithShort:self->_beaconInterval];
  [dictionary setObject:v11 forKeyedSubscript:@"BeaconInterval"];

  v12 = [MEMORY[0x277CCABB0] numberWithShort:self->_capabilities];
  [dictionary setObject:v12 forKeyedSubscript:@"Capabilities"];

  if (self->_band)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithShort:?];
    [dictionary setObject:v13 forKeyedSubscript:@"Band"];
  }

  v14 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasHT];
  [dictionary setObject:v14 forKeyedSubscript:@"isHT"];

  v15 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasVHT];
  [dictionary setObject:v15 forKeyedSubscript:@"isVHT"];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasHE];
  [dictionary setObject:v16 forKeyedSubscript:@"isHE"];

  v17 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasEHT];
  [dictionary setObject:v17 forKeyedSubscript:@"isEHT"];

  if (self->_hasHT)
  {
    if (self->_htRxNSS)
    {
      v18 = [MEMORY[0x277CCABB0] numberWithShort:?];
      [dictionary setObject:v18 forKeyedSubscript:@"HtRxNSS"];
    }

    if (self->_htTxNSS)
    {
      v19 = [MEMORY[0x277CCABB0] numberWithShort:?];
      [dictionary setObject:v19 forKeyedSubscript:@"HtTxNSS"];
    }
  }

  if (self->_hasVHT)
  {
    if (self->_vhtRxNSS)
    {
      v20 = [MEMORY[0x277CCABB0] numberWithShort:?];
      [dictionary setObject:v20 forKeyedSubscript:@"VhtRxNSS"];
    }

    if (self->_vhtTxNSS)
    {
      v21 = [MEMORY[0x277CCABB0] numberWithShort:?];
      [dictionary setObject:v21 forKeyedSubscript:@"VhtTxNSS"];
    }
  }

  if (self->_hasHE)
  {
    if (self->_heRxNSS)
    {
      v22 = [MEMORY[0x277CCABB0] numberWithShort:?];
      [dictionary setObject:v22 forKeyedSubscript:@"HeRxNSS"];
    }

    if (self->_heTxNSS)
    {
      v23 = [MEMORY[0x277CCABB0] numberWithShort:?];
      [dictionary setObject:v23 forKeyedSubscript:@"HeTxNSS"];
    }

    v24 = [MEMORY[0x277CCABB0] numberWithShort:self->_ap6gPowerMode];
    [dictionary setObject:v24 forKeyedSubscript:@"ap6gPowerMode"];
  }

  v25 = [MEMORY[0x277CCABB0] numberWithBool:self->_colocated6Ghz];
  [dictionary setObject:v25 forKeyedSubscript:@"hasColocated6Ghz"];

  if (self->_colocated6Ghz)
  {
    v26 = [MEMORY[0x277CCABB0] numberWithBool:self->_colocated6GhzIsPSC];
    [dictionary setObject:v26 forKeyedSubscript:@"colocated6GhzIsPSC"];
  }

  apName = self->_apName;
  if (apName)
  {
    [dictionary setObject:apName forKeyedSubscript:@"apName"];
  }

  v28 = objc_opt_new();
  v29 = v28;
  if (self->_hasColocatedMLD6G)
  {
    [v28 addObject:@"6G"];
  }

  if (self->_hasColocatedMLD5G)
  {
    [v29 addObject:@"5G"];
  }

  if (self->_hasColocatedMLD2G)
  {
    [v29 addObject:@"2G"];
  }

  v78 = v29;
  v30 = [v29 componentsJoinedByString:{@", "}];
  [dictionary setObject:v30 forKeyedSubscript:@"hasColocatedMLOs"];

  [dictionary addEntriesFromDictionary:self->_taggedIEList];
  [dictionary addEntriesFromDictionary:self->_vendorIEList];
  v79 = dictionary;
  [dictionary addEntriesFromDictionary:self->_extendedIEList];
  v31 = objc_opt_new();
  v32 = objc_opt_new();
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  selfCopy = self;
  allKeys = [(NSMutableDictionary *)self->_taggedIEList allKeys];
  v34 = [MEMORY[0x277CCAC30] predicateWithFormat:@"NOT (SELF ENDSWITH \"_isValid\""];
  v35 = [allKeys filteredArrayUsingPredicate:v34];

  v36 = [v35 countByEnumeratingWithState:&v97 objects:v105 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v98;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v98 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v97 + 1) + 8 * i);
        v41 = MEMORY[0x277CCABB0];
        v42 = +[WiFiUsageAccessPointProfile prefixForCA];
        v43 = [v40 substringFromIndex:{objc_msgSend(v42, "length")}];
        v44 = [v41 numberWithInteger:{objc_msgSend(v43, "integerValue")}];
        [v32 addObject:v44];
      }

      v37 = [v35 countByEnumeratingWithState:&v97 objects:v105 count:16];
    }

    while (v37);
  }

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v45 = [v32 sortedArrayUsingSelector:?];
  v46 = [v45 countByEnumeratingWithState:&v93 objects:v104 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v94;
    do
    {
      for (j = 0; j != v47; ++j)
      {
        if (*v94 != v48)
        {
          objc_enumerationMutation(v45);
        }

        [v31 appendFormat:@"%@|", *(*(&v93 + 1) + 8 * j)];
      }

      v47 = [v45 countByEnumeratingWithState:&v93 objects:v104 count:16];
    }

    while (v47);
  }

  [v32 removeAllObjects];
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  allKeys2 = [(NSMutableDictionary *)selfCopy->_extendedIEList allKeys];
  v51 = [MEMORY[0x277CCAC30] predicateWithFormat:@"NOT (SELF ENDSWITH \"_isValid\""];
  v52 = [allKeys2 filteredArrayUsingPredicate:v51];

  v53 = [v52 countByEnumeratingWithState:&v89 objects:v103 count:16];
  if (v53)
  {
    v54 = v53;
    v55 = *v90;
    do
    {
      for (k = 0; k != v54; ++k)
      {
        if (*v90 != v55)
        {
          objc_enumerationMutation(v52);
        }

        v57 = *(*(&v89 + 1) + 8 * k);
        v58 = MEMORY[0x277CCABB0];
        v59 = +[WiFiUsageAccessPointProfile prefixForCA];
        v60 = [v57 substringFromIndex:{objc_msgSend(v59, "length") + 4}];
        v61 = [v58 numberWithInteger:{objc_msgSend(v60, "integerValue")}];
        [v32 addObject:v61];
      }

      v54 = [v52 countByEnumeratingWithState:&v89 objects:v103 count:16];
    }

    while (v54);
  }

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v62 = [v32 sortedArrayUsingSelector:sel_compare_];
  v63 = [v62 countByEnumeratingWithState:&v85 objects:v102 count:16];
  if (v63)
  {
    v64 = v63;
    v65 = *v86;
    do
    {
      for (m = 0; m != v64; ++m)
      {
        if (*v86 != v65)
        {
          objc_enumerationMutation(v62);
        }

        [v31 appendFormat:@"255_%@|", *(*(&v85 + 1) + 8 * m)];
      }

      v64 = [v62 countByEnumeratingWithState:&v85 objects:v102 count:16];
    }

    while (v64);
  }

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  allKeys3 = [(NSMutableDictionary *)selfCopy->_vendorIEList allKeys];
  v68 = [allKeys3 sortedArrayUsingSelector:sel_compare_];

  v69 = [v68 countByEnumeratingWithState:&v81 objects:v101 count:16];
  if (v69)
  {
    v70 = v69;
    v71 = *v82;
    do
    {
      for (n = 0; n != v70; ++n)
      {
        if (*v82 != v71)
        {
          objc_enumerationMutation(v68);
        }

        v73 = *(*(&v81 + 1) + 8 * n);
        v74 = +[WiFiUsageAccessPointProfile prefixForCA];
        v75 = [v73 substringFromIndex:{objc_msgSend(v74, "length")}];
        [v31 appendFormat:@"%@|", v75];
      }

      v70 = [v68 countByEnumeratingWithState:&v81 objects:v101 count:16];
    }

    while (v70);
  }

  [v79 setObject:v31 forKeyedSubscript:@"IEs_in_frame"];
  [v79 setValue:0 forKey:@"BeaconInformationElement_221_isValid"];
  [v79 setObject:selfCopy->_isBeaconAtHeRate forKeyedSubscript:@"isBeaconAtHeRate"];

  v76 = *MEMORY[0x277D85DE8];

  return v79;
}

- (id)description
{
  v71 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCAB68];
  if (self->_parsingSuccessful)
  {
    v6 = @"successful";
  }

  else
  {
    v6 = @"FAILED";
  }

  v7 = [WiFiUsagePrivacyFilter sanitizedOUI:self->_bssid];
  v48 = v6;
  selfCopy = self;
  v55 = [v5 stringWithFormat:@"Beacon parsing %@.\noui: %@\nBeaconInterval:%d\nCapabilities:0x%02X\nBand:%u\tChannel:%u", v48, v7, self->_beaconInterval, self->_capabilities, self->_band, self->_channel];

  if (self->_colocated6Ghz)
  {
    if (self->_colocated6GhzIsPSC)
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    [v55 appendFormat:@"hasColocated6Ghz: YES onPSCchan:%@", v9];
  }

  if (self->_apName)
  {
    [v55 appendFormat:@"\napName:%@", self->_apName];
  }

  if (self->_hasHT)
  {
    if (self->_htInfo)
    {
      [v55 appendFormat:@"\nHtInfo:0x%02X", self->_htInfo];
    }

    if (self->_htAMPDUParams)
    {
      [v55 appendFormat:@" HtAMPDUParams:0x%02X", self->_htAMPDUParams];
    }

    if (self->_htExtendedCapabilities)
    {
      [v55 appendFormat:@" HtExtendedCapabilities:0x%02X", self->_htExtendedCapabilities];
    }

    if (self->_htTxBFCapabilities)
    {
      [v55 appendFormat:@" HtTxBFCapabilities:0x%02X", self->_htTxBFCapabilities];
    }

    if (self->_htAntennaSelection)
    {
      [v55 appendFormat:@" HtAntennaSelection:0x%02X", self->_htAntennaSelection];
    }

    if (self->_htRxNSS)
    {
      [v55 appendFormat:@" HtRxNSS:%d", self->_htRxNSS];
    }

    if (self->_htTxNSS)
    {
      [v55 appendFormat:@" HtTxNSS:%d", self->_htTxNSS];
    }
  }

  if (self->_hasVHT)
  {
    if (self->_vhtInfo)
    {
      [v55 appendFormat:@"\nVhtInfo:0x%02X", self->_vhtInfo];
    }

    if (self->_vhtRxMCSMap)
    {
      [v55 appendFormat:@" VhtRxMCSMap:0x%02X", self->_vhtRxMCSMap];
    }

    if (self->_vhtRxMaxRate)
    {
      [v55 appendFormat:@" VhtRxMaxRate:0x%02X", self->_vhtRxMaxRate];
    }

    if (self->_vhtTxMCSMap)
    {
      [v55 appendFormat:@" VhtTxMCSMap:0x%02X", self->_vhtTxMCSMap];
    }

    if (self->_vhtTxMaxRate)
    {
      [v55 appendFormat:@" VhtTxMaxRate:0x%02X", self->_vhtTxMaxRate];
    }

    if (self->_vhtRxNSS)
    {
      [v55 appendFormat:@" VhtRxNSS:%d", self->_vhtRxNSS];
    }

    if (self->_vhtTxNSS)
    {
      [v55 appendFormat:@" VhtTxNSS:%d", self->_vhtTxNSS];
    }
  }

  if (self->_hasHE)
  {
    if (self->_heMACInfo)
    {
      [v55 appendFormat:@"\nHE MAC Info:%@", self->_heMACInfo];
    }

    if (self->_hePHYInfo)
    {
      [v55 appendFormat:@" HE PHY Info:%@", self->_hePHYInfo];
    }

    if (self->_heRxNSS)
    {
      [v55 appendFormat:@" HeRxNSS:%d", self->_heRxNSS];
    }

    if (self->_heTxNSS)
    {
      [v55 appendFormat:@" HeTxNSS:%d", self->_heTxNSS];
    }
  }

  if (self->_hasEHT)
  {
    v10 = @"NO";
    if (self->_hasColocatedMLD2G)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    if (self->_hasColocatedMLD5G)
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    if (self->_hasColocatedMLD6G)
    {
      v10 = @"YES";
    }

    [v55 appendFormat:@"\ncolocatedMLD_2G:%@ colocatedMLD_5G:%@ colocatedMLD_6G:%@", v11, v12, v10];
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  allKeys = [(NSMutableDictionary *)self->_taggedIEList allKeys];
  v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"NOT (SELF ENDSWITH \"_isValid\""];
  v15 = [allKeys filteredArrayUsingPredicate:v14];

  obj = v15;
  v16 = [v15 countByEnumeratingWithState:&v64 objects:v70 count:16];
  v17 = 0x277CCA000uLL;
  v52 = v16;
  v54 = selfCopy;
  if (v16)
  {
    v50 = *v65;
    do
    {
      v18 = 0;
      do
      {
        if (*v65 != v50)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v64 + 1) + 8 * v18);
        v20 = [(NSMutableDictionary *)selfCopy->_taggedIEList objectForKeyedSubscript:v19];
        taggedIEList = selfCopy->_taggedIEList;
        v22 = [*(v17 + 3240) stringWithFormat:@"%@_isValid", v19];
        v23 = [(NSMutableDictionary *)taggedIEList objectForKeyedSubscript:v22];
        if (v23)
        {
          v24 = selfCopy->_taggedIEList;
          v2 = [*(v17 + 3240) stringWithFormat:@"%@_isValid", v19];
          bytes = [(NSMutableDictionary *)v24 objectForKeyedSubscript:v2];
          if ([bytes BOOLValue])
          {
            v25 = &stru_28487EF20;
          }

          else
          {
            v25 = @" (invalid!) :";
          }
        }

        else
        {
          v25 = &stru_28487EF20;
        }

        v26 = +[WiFiUsagePrivacyFilter toHEXString:length:](WiFiUsagePrivacyFilter, "toHEXString:length:", [v20 bytes], objc_msgSend(v20, "length"));
        [v55 appendFormat:@"\n%@%@:(%@)", v19, v25, v26];

        if (v23)
        {
        }

        ++v18;
        selfCopy = v54;
        v17 = 0x277CCA000;
      }

      while (v52 != v18);
      v52 = [obj countByEnumeratingWithState:&v64 objects:v70 count:16];
    }

    while (v52);
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  allKeys2 = [(NSMutableDictionary *)selfCopy->_vendorIEList allKeys];
  v28 = [allKeys2 countByEnumeratingWithState:&v60 objects:v69 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v61;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v61 != v30)
        {
          objc_enumerationMutation(allKeys2);
        }

        v32 = *(*(&v60 + 1) + 8 * i);
        v33 = [(NSMutableDictionary *)selfCopy->_vendorIEList objectForKeyedSubscript:v32];
        bytes = [v33 bytes];
        v2 = +[WiFiUsagePrivacyFilter toHEXString:length:](WiFiUsagePrivacyFilter, "toHEXString:length:", bytes, [v33 length]);
        [v55 appendFormat:@"\n%@:(%@)", v32, v2];
      }

      v29 = [allKeys2 countByEnumeratingWithState:&v60 objects:v69 count:16];
    }

    while (v29);
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  allKeys3 = [(NSMutableDictionary *)selfCopy->_extendedIEList allKeys];
  v35 = [MEMORY[0x277CCAC30] predicateWithFormat:@"NOT (SELF ENDSWITH \"_isValid\""];
  v36 = [allKeys3 filteredArrayUsingPredicate:v35];

  v53 = [v36 countByEnumeratingWithState:&v56 objects:v68 count:16];
  if (v53)
  {
    v51 = *v57;
    do
    {
      for (j = 0; j != v53; ++j)
      {
        if (*v57 != v51)
        {
          objc_enumerationMutation(v36);
        }

        v38 = *(*(&v56 + 1) + 8 * j);
        v39 = [(NSMutableDictionary *)selfCopy->_extendedIEList objectForKeyedSubscript:v38];
        v40 = selfCopy->_taggedIEList;
        v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_isValid", v38];
        v42 = [(NSMutableDictionary *)v40 objectForKeyedSubscript:v41];
        if (v42)
        {
          v43 = selfCopy->_taggedIEList;
          v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_isValid", v38];
          bytes = [(NSMutableDictionary *)v43 objectForKeyedSubscript:v2];
          if ([bytes BOOLValue])
          {
            v44 = &stru_28487EF20;
          }

          else
          {
            v44 = @" (invalid!) :";
          }
        }

        else
        {
          v44 = &stru_28487EF20;
        }

        v45 = +[WiFiUsagePrivacyFilter toHEXString:length:](WiFiUsagePrivacyFilter, "toHEXString:length:", [v39 bytes], objc_msgSend(v39, "length"));
        [v55 appendFormat:@"\n%@%@:(%@)", v38, v44, v45];

        if (v42)
        {
        }

        selfCopy = v54;
      }

      v53 = [v36 countByEnumeratingWithState:&v56 objects:v68 count:16];
    }

    while (v53);
  }

  v46 = *MEMORY[0x277D85DE8];

  return v55;
}

- (BOOL)parseNormalIE:(unsigned __int8)e from:(char *)from length:(unint64_t)length endOfBuffer:(char *)buffer
{
  if (e <= 60)
  {
    if (!e)
    {
      return [(WiFiUsageParsedBeacon *)self parseSSID:from length:length endOfBuffer:buffer];
    }

    if (e != 3)
    {
      if (e == 45)
      {
        return [(WiFiUsageParsedBeacon *)self parseHTCapa:from length:length endOfBuffer:buffer];
      }

      return 1;
    }

    return [(WiFiUsageParsedBeacon *)self parseDSSS:from length:length endOfBuffer:buffer];
  }

  else if (e > 190)
  {
    if (e != 191)
    {
      if (e == 201)
      {
        return [(WiFiUsageParsedBeacon *)self parseRNR:from length:length endOfBuffer:buffer];
      }

      return 1;
    }

    return [(WiFiUsageParsedBeacon *)self parseVHTCapa:from length:length endOfBuffer:buffer];
  }

  else
  {
    if (e != 61)
    {
      if (e == 133)
      {
        return [(WiFiUsageParsedBeacon *)self parseApName:from length:length endOfBuffer:buffer];
      }

      return 1;
    }

    return [(WiFiUsageParsedBeacon *)self parseHTOp:from length:length endOfBuffer:buffer];
  }
}

- (BOOL)parseHTCapa:(char *)capa length:(unint64_t)length endOfBuffer:(char *)buffer
{
  v14 = *MEMORY[0x277D85DE8];
  if (length)
  {
    v5 = capa + 26 > buffer;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  if (v5)
  {
    NSLog(&cfstr_SReachedEndOfB_2.isa, a2, "[WiFiUsageParsedBeacon parseHTCapa:length:endOfBuffer:]", 45);
  }

  else
  {
    *v13 = *capa;
    *&v13[10] = *(capa + 10);
    [(WiFiUsageParsedBeacon *)self setHasHT:1];
    [(WiFiUsageParsedBeacon *)self setHtInfo:*v13];
    [(WiFiUsageParsedBeacon *)self setHtAMPDUParams:v13[2]];
    [(WiFiUsageParsedBeacon *)self setHtExtendedCapabilities:*&v13[19]];
    [(WiFiUsageParsedBeacon *)self setHtAntennaSelection:v13[25]];
    [(WiFiUsageParsedBeacon *)self setHtTxBFCapabilities:*&v13[21]];
    v8 = 0;
    v9 = 0;
    do
    {
      if (v13[v8 + 3])
      {
        v9 = v8 + 1;
      }

      ++v8;
    }

    while (v8 != 4);
    if ((~v13[15] & 3) != 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = (v13[15] >> 2) & 3;
    }

    [(WiFiUsageParsedBeacon *)self setHtRxNSS:v9];
    [(WiFiUsageParsedBeacon *)self setHtTxNSS:v10];
  }

  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)parseVHTCapa:(char *)capa length:(unint64_t)length endOfBuffer:(char *)buffer
{
  if (length)
  {
    v5 = capa + 12 > buffer;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  if (v5)
  {
    NSLog(&cfstr_SReachedEndOfB_2.isa, a2, "[WiFiUsageParsedBeacon parseVHTCapa:length:endOfBuffer:]", 191);
  }

  else
  {
    v8 = *capa;
    v9 = *(capa + 2);
    v10 = *(capa + 3);
    v11 = *(capa + 4);
    v12 = *(capa + 5);
    [(WiFiUsageParsedBeacon *)self setHasVHT:1];
    [(WiFiUsageParsedBeacon *)self setVhtInfo:v8];
    [(WiFiUsageParsedBeacon *)self setVhtRxMCSMap:v9];
    [(WiFiUsageParsedBeacon *)self setVhtTxMCSMap:v11];
    [(WiFiUsageParsedBeacon *)self setVhtRxMaxRate:v10];
    [(WiFiUsageParsedBeacon *)self setVhtTxMaxRate:v12];
    v13 = 0;
    v14 = 0;
    v15 = 0;
    do
    {
      if ((~(v9 >> v13) & 3) != 0)
      {
        v15 = v14 + 1;
      }

      ++v14;
      v13 += 2;
    }

    while (v14 != 8);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    do
    {
      if ((~(v11 >> v16) & 3) != 0)
      {
        v18 = v17 + 1;
      }

      ++v17;
      v16 += 2;
    }

    while (v17 != 8);
    [(WiFiUsageParsedBeacon *)self setVhtRxNSS:v15];
    [(WiFiUsageParsedBeacon *)self setVhtTxNSS:v18];
  }

  return v6;
}

- (BOOL)parseHECapa:(char *)capa length:(unint64_t)length endOfBuffer:(char *)buffer
{
  v28 = *MEMORY[0x277D85DE8];
  if (length)
  {
    v7 = (capa + 21);
    if (capa + 21 <= buffer)
    {
      *v27 = *capa;
      *&v27[13] = *(capa + 13);
      [(WiFiUsageParsedBeacon *)self setHasHE:1];
      v12 = [MEMORY[0x277CBEA90] dataWithBytes:v27 length:6];
      [(WiFiUsageParsedBeacon *)self setHeMACInfo:v12];

      v13 = [MEMORY[0x277CBEA90] dataWithBytes:&v27[6] length:11];
      [(WiFiUsageParsedBeacon *)self setHePHYInfo:v13];

      [(WiFiUsageParsedBeacon *)self setHeRxMCSMap80MHz:*&v27[17]];
      [(WiFiUsageParsedBeacon *)self setHeTxMCSMap80MHz:*&v27[19]];
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = v27[6];
      do
      {
        if ((~(*&v27[17] >> v14) & 3) != 0)
        {
          v16 = v15 + 1;
        }

        ++v15;
        v14 += 2;
      }

      while (v15 != 8);
      v18 = 0;
      v19 = 0;
      v20 = 0;
      do
      {
        if ((~(*&v27[19] >> v18) & 3) != 0)
        {
          v20 = v19 + 1;
        }

        ++v19;
        v18 += 2;
      }

      while (v19 != 8);
      v21 = length - 21;
      [(WiFiUsageParsedBeacon *)self setHeRxNSS:v16];
      [(WiFiUsageParsedBeacon *)self setHeTxNSS:v20];
      if ((v17 & 4) != 0)
      {
        if (length == 21 || capa + 23 > buffer)
        {
          NSLog(&cfstr_SReachedEndOfB_4.isa, v22, v23, "[WiFiUsageParsedBeacon parseHECapa:length:endOfBuffer:]", 35);
          goto LABEL_4;
        }

        if (length == 23 || (v24 = capa + 25, capa + 25 > buffer))
        {
          NSLog(&cfstr_SReachedEndOfB_5.isa, v22, v23, "[WiFiUsageParsedBeacon parseHECapa:length:endOfBuffer:]", 35);
          goto LABEL_4;
        }

        v25 = *(capa + 23);
        v21 = length - 25;
        [(WiFiUsageParsedBeacon *)self setHeRxMCSMap160MHz:*v7];
        [(WiFiUsageParsedBeacon *)self setHeTxMCSMap160MHz:v25];
        v7 = v24;
        if ((v17 & 8) == 0)
        {
LABEL_16:
          result = 1;
          goto LABEL_5;
        }
      }

      else if ((v17 & 8) == 0)
      {
        goto LABEL_16;
      }

      if (!v21 || v7 + 1 > buffer)
      {
        NSLog(&cfstr_SReachedEndOfB_6.isa, v22, v23, "[WiFiUsageParsedBeacon parseHECapa:length:endOfBuffer:]", 35);
        goto LABEL_4;
      }

      if (v21 == 2 || v7 + 2 > buffer)
      {
        NSLog(&cfstr_SReachedEndOfB_7.isa, v22, v23, "[WiFiUsageParsedBeacon parseHECapa:length:endOfBuffer:]", 35);
        goto LABEL_4;
      }

      v26 = v7[1];
      [(WiFiUsageParsedBeacon *)self setHeRxMCSMap8080MHz:*v7];
      [(WiFiUsageParsedBeacon *)self setHeTxMCSMap8080MHz:v26];
      goto LABEL_16;
    }
  }

  NSLog(&cfstr_SReachedEndOfB_3.isa, a2, capa, "[WiFiUsageParsedBeacon parseHECapa:length:endOfBuffer:]", 35);
LABEL_4:
  result = 0;
LABEL_5:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)parseRNR:(char *)r length:(unint64_t)length endOfBuffer:(char *)buffer
{
  v5 = r + 4;
  if (r + 4 < buffer)
  {
    bufferCopy = buffer;
    v7 = &r[length];
    do
    {
      if (v7 <= v5 || length < 4uLL)
      {
        break;
      }

      rCopy = r;
      lengthCopy = length;
      v8 = *r;
      v37 = r[3];
      v9 = HIBYTE(*r);
      v10 = *r & 3;
      v11 = v10 == 1 && v9 == 3;
      v12 = !v11;
      if (v10)
      {
        v13 = 0;
      }

      else
      {
        v13 = v9 == 16;
      }

      if (v13)
      {
        v14 = 0;
      }

      else
      {
        v14 = v12;
      }

      v38 = v14;
      v39 = r[2];
      v15 = *r;
      v16 = 11;
      if (v15 <= 0xBFF)
      {
        v16 = 0;
      }

      if ((v8 & 0xFE00) == 0x800 || (v8 & 0xFB00) == 512)
      {
        v18 = (v9 - 1);
      }

      else
      {
        v18 = v16;
      }

      if (v15 > 0xBFF || (v19 = 0, v9 <= 0xB) && ((1 << v9) & 0x860) != 0)
      {
        shortSSID = [(WiFiUsageParsedBeacon *)self shortSSID];
        if (v15 <= 0x6FF)
        {
          v21 = 1;
        }

        else
        {
          v21 = 7;
        }

        if (shortSSID)
        {
          v19 = v21;
        }

        else
        {
          v19 = 0;
        }
      }

      if (v8 >= 0x100u)
      {
        v22 = 0;
        v23 = &v5[v9];
        if (v23 > v7 || v23 > bufferCopy)
        {
LABEL_48:
          v31 = v39 - 131;
          if (v22)
          {
            v32 = v31 > 4;
          }

          else
          {
            v32 = 1;
          }

          if (!v32)
          {
            [(WiFiUsageParsedBeacon *)self setColocated6Ghz:1];
            v33 = [MEMORY[0x277CBEB98] setWithArray:&unk_2848BACB8];
            v34 = [MEMORY[0x277CCABB0] numberWithShort:v37];
            v35 = [v33 containsObject:v34];

            if (v35)
            {
              [(WiFiUsageParsedBeacon *)self setColocated6GhzIsPSC:1];
            }
          }

          if (((v38 | v22 ^ 1) & 1) == 0)
          {
            if ((v39 - 81) > 3)
            {
              if ((v39 - 115) <= 0xF)
              {
                [(WiFiUsageParsedBeacon *)self setHasColocatedMLD5G:1];
              }
            }

            else
            {
              [(WiFiUsageParsedBeacon *)self setHasColocatedMLD2G:1];
            }

            if (v31 <= 4)
            {
              [(WiFiUsageParsedBeacon *)self setHasColocatedMLD6G:1];
            }
          }
        }

        else
        {
          LOBYTE(v24) = 0;
          v25 = ((v8 >> 4) + 1) * v9;
          while (1)
          {
            if (v19)
            {
              v26 = v7;
              v27 = bufferCopy;
              v28 = *&v5[v19];
              v11 = v28 == [(WiFiUsageParsedBeacon *)self shortSSID];
              bufferCopy = v27;
              v7 = v26;
              if (!v11)
              {
                break;
              }
            }

            v24 = (v24 + v9);
            if (v24 < v25)
            {
              v29 = &v23[v24];
              if (v29 <= v7 && v29 <= bufferCopy)
              {
                continue;
              }
            }

            v22 = (v5[v18] >> 6) & 1;
            goto LABEL_48;
          }
        }
      }

      r = &rCopy[v9 + 4];
      LOBYTE(length) = lengthCopy - (v9 + 4);
      v5 = r + 4;
    }

    while (r + 4 < bufferCopy);
  }

  return 1;
}

- (BOOL)parseSSID:(char *)d length:(unint64_t)length endOfBuffer:(char *)buffer
{
  if (length)
  {
    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:d length:length encoding:1];
    [(WiFiUsageParsedBeacon *)self setSsid:v6];

    ssid = [(WiFiUsageParsedBeacon *)self ssid];
    [ssid UTF8String];
    ssid2 = [(WiFiUsageParsedBeacon *)self ssid];
    [ssid2 length];
    v9 = CNCRC();

    if (!v9)
    {
      [(WiFiUsageParsedBeacon *)self setShortSSID:0];
    }
  }

  return 1;
}

- (BOOL)parseApName:(char *)name length:(unint64_t)length endOfBuffer:(char *)buffer
{
  v13 = *MEMORY[0x277D85DE8];
  if (length > 0x1D)
  {
    *v12 = *name;
    *&v12[14] = *(name + 14);
    v6 = objc_alloc(MEMORY[0x277CCACA8]);
    v7 = strnlen((v12 | 0xA), 0x10uLL);
    if (v7 >= 0x10)
    {
      v8 = 16;
    }

    else
    {
      v8 = v7;
    }

    v9 = [v6 initWithBytes:v12 | 0xA length:v8 encoding:1];
    [(WiFiUsageParsedBeacon *)self setApName:v9];
  }

  else
  {
    NSLog(&cfstr_SIeDTooShortLu.isa, a2, name, "[WiFiUsageParsedBeacon parseApName:length:endOfBuffer:]", 133, length, 30);
  }

  v10 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)parseDSSS:(char *)s length:(unint64_t)length endOfBuffer:(char *)buffer
{
  if (length)
  {
    v5 = s + 1 > buffer;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  if (v5)
  {
    NSLog(&cfstr_SReachedEndOfB_2.isa, a2, "[WiFiUsageParsedBeacon parseDSSS:length:endOfBuffer:]", 3);
  }

  else
  {
    [(WiFiUsageParsedBeacon *)self setChannel:*s];
  }

  return v6;
}

- (BOOL)parseHTOp:(char *)op length:(unint64_t)length endOfBuffer:(char *)buffer
{
  if (length)
  {
    v5 = op + 8 > buffer;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  if (v5)
  {
    NSLog(&cfstr_SReachedEndOfB_2.isa, a2, "[WiFiUsageParsedBeacon parseHTOp:length:endOfBuffer:]", 61);
  }

  else
  {
    channel = self->_channel;
    if (self->_channel)
    {
      if (channel != *op)
      {
        NSLog(&cfstr_SFoundPrimaryC.isa, a2, "[WiFiUsageParsedBeacon parseHTOp:length:endOfBuffer:]", *op, channel);
        channel = *op;
      }
    }

    else
    {
      channel = *op;
    }

    [(WiFiUsageParsedBeacon *)self setChannel:channel];
  }

  return v6;
}

- (BOOL)parseHE6GHz:(char *)hz length:(unint64_t)length endOfBuffer:(char *)buffer
{
  if (length)
  {
    v5 = hz + 5 > buffer;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  if (v5)
  {
    NSLog(&cfstr_SReachedEndOfB_2.isa, a2, "[WiFiUsageParsedBeacon parseHE6GHz:length:endOfBuffer:]", 59);
  }

  else
  {
    channel = self->_channel;
    if (self->_channel)
    {
      if (channel != *hz)
      {
        NSLog(&cfstr_SFoundPrimaryC_0.isa, a2, "[WiFiUsageParsedBeacon parseHE6GHz:length:endOfBuffer:]", *hz, channel);
        channel = *hz;
      }
    }

    else
    {
      channel = *hz;
    }

    [(WiFiUsageParsedBeacon *)self setChannel:channel];
    [(WiFiUsageParsedBeacon *)self setBand:6];
    [(WiFiUsageParsedBeacon *)self setAp6gPowerMode:hz[1] & 0xF];
  }

  return v6;
}

+ (void)defaults
{
  v2 = _elementsLenLimits;
  _elementsLenLimits = 0;

  v3 = _extendedElementsLenLimits;
  _extendedElementsLenLimits = 0;
}

+ (void)initialize
{
  [self defaults];

  [self updateConfig];
}

+ (void)updateConfig
{
  v3 = @"elements";
  v4 = [WiFiUsageBeaconParsingConfiguration getConfigForKey:@"elements"];
  obj = v4;
  if (!v4)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = obj;
  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_6;
  }

  v6 = _elementsLenLimits;
  _elementsLenLimits = obj;
  v7 = obj;

  v3 = @"extendedElements";
  obj = [WiFiUsageBeaconParsingConfiguration getConfigForKey:@"extendedElements"];

  v4 = obj;
  if (!obj)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  v8 = objc_opt_isKindOfClass();
  v4 = obj;
  if (v8)
  {
    objc_storeStrong(&_extendedElementsLenLimits, obj);
  }

  else
  {
LABEL_6:
    NSLog(&cfstr_SImpossibleToP.isa, "+[WiFiUsageParsedBeacon updateConfig]", v3, v4);
    [self defaults];
  }
}

@end