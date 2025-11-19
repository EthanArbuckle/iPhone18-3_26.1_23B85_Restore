@interface W5WiFiStatus
- (BOOL)conformsToProtocol:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToWiFiStatus:(id)a3;
- (W5WiFiStatus)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setCachedScanResults:(id)a3;
- (void)setDnsAddresses:(id)a3;
- (void)setIpv4Addresses:(id)a3;
- (void)setIpv6Addresses:(id)a3;
- (void)setLinkQualityUpdates:(id)a3;
- (void)setSupportedChannels:(id)a3;
@end

@implementation W5WiFiStatus

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = W5WiFiStatus;
  [(W5WiFiStatus *)&v3 dealloc];
}

- (void)setIpv4Addresses:(id)a3
{
  ipv4Addresses = self->_ipv4Addresses;
  if (ipv4Addresses != a3)
  {

    self->_ipv4Addresses = 0;
    if (a3)
    {
      v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:0];
      if (v6)
      {
        v7 = v6;
        v8 = MEMORY[0x277CCAAC8];
        v9 = MEMORY[0x277CBEB98];
        v10 = objc_opt_class();
        self->_ipv4Addresses = [v8 unarchivedObjectOfClasses:objc_msgSend(v9 fromData:"setWithObjects:" error:{v10, objc_opt_class(), 0), v7, 0}];
      }
    }
  }
}

- (void)setIpv6Addresses:(id)a3
{
  ipv6Addresses = self->_ipv6Addresses;
  if (ipv6Addresses != a3)
  {

    self->_ipv6Addresses = 0;
    if (a3)
    {
      v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:0];
      if (v6)
      {
        v7 = v6;
        v8 = MEMORY[0x277CCAAC8];
        v9 = MEMORY[0x277CBEB98];
        v10 = objc_opt_class();
        self->_ipv6Addresses = [v8 unarchivedObjectOfClasses:objc_msgSend(v9 fromData:"setWithObjects:" error:{v10, objc_opt_class(), 0), v7, 0}];
      }
    }
  }
}

- (void)setDnsAddresses:(id)a3
{
  dnsAddresses = self->_dnsAddresses;
  if (dnsAddresses != a3)
  {

    self->_dnsAddresses = 0;
    if (a3)
    {
      v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:0];
      if (v6)
      {
        v7 = v6;
        v8 = MEMORY[0x277CCAAC8];
        v9 = MEMORY[0x277CBEB98];
        v10 = objc_opt_class();
        self->_dnsAddresses = [v8 unarchivedObjectOfClasses:objc_msgSend(v9 fromData:"setWithObjects:" error:{v10, objc_opt_class(), 0), v7, 0}];
      }
    }
  }
}

- (void)setCachedScanResults:(id)a3
{
  cachedScanResults = self->_cachedScanResults;
  if (cachedScanResults != a3)
  {

    self->_cachedScanResults = 0;
    if (a3)
    {
      v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:0];
      if (v6)
      {
        v7 = v6;
        v8 = MEMORY[0x277CCAAC8];
        v9 = MEMORY[0x277CBEB98];
        v10 = objc_opt_class();
        self->_cachedScanResults = [v8 unarchivedObjectOfClasses:objc_msgSend(v9 fromData:"setWithObjects:" error:{v10, objc_opt_class(), 0), v7, 0}];
      }
    }
  }
}

- (void)setSupportedChannels:(id)a3
{
  supportedChannels = self->_supportedChannels;
  if (supportedChannels != a3)
  {

    self->_supportedChannels = 0;
    if (a3)
    {
      v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:0];
      if (v6)
      {
        v7 = v6;
        v8 = MEMORY[0x277CCAAC8];
        v9 = MEMORY[0x277CBEB98];
        v10 = objc_opt_class();
        self->_supportedChannels = [v8 unarchivedObjectOfClasses:objc_msgSend(v9 fromData:"setWithObjects:" error:{v10, objc_opt_class(), 0), v7, 0}];
      }
    }
  }
}

- (void)setLinkQualityUpdates:(id)a3
{
  linkQualityUpdates = self->_linkQualityUpdates;
  if (linkQualityUpdates != a3)
  {

    self->_linkQualityUpdates = 0;
    if (a3)
    {
      v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:0];
      if (v6)
      {
        v7 = v6;
        v8 = MEMORY[0x277CCAAC8];
        v9 = MEMORY[0x277CBEB98];
        v10 = objc_opt_class();
        self->_linkQualityUpdates = [v8 unarchivedObjectOfClasses:objc_msgSend(v9 fromData:"setWithObjects:" error:{v10, objc_opt_class(), 0), v7, 0}];
      }
    }
  }
}

- (id)description
{
  v92 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  [v3 appendFormat:@"MAC Address: %@ (hw=%@)\n", self->_macAddress, self->_hardwareMACAddress];
  [v3 appendFormat:@"Interface Name: %@\n", self->_interfaceName];
  if (self->_powerOn)
  {
    v4 = "On";
  }

  else
  {
    v4 = "Off";
  }

  v5 = [(NSData *)self->_power length];
  v6 = 0;
  if (v5 == 24)
  {
    v6 = [(NSData *)self->_power bytes];
  }

  [v3 appendFormat:@"Power: %s [%@]\n", v4, W5DescriptionForPower(v6)];
  [v3 appendFormat:@"Mode: %@\n", W5DescriptionForOpMode(self->_opMode)];
  v7 = [(NSString *)self->_ssidString redactedForWiFi];
  if ([MEMORY[0x277D02B10] logRedactionDisabled])
  {
    ssid = self->_ssid;
  }

  else
  {
    ssid = @"<redacted>";
  }

  [v3 appendFormat:@"SSID: %@ (%@)\n", v7, ssid];
  [v3 appendFormat:@"BSSID: %@\n", -[NSString redactedForWiFi](self->_bssid, "redactedForWiFi")];
  [v3 appendFormat:@"RSSI: %ld\n", self->_rssi];
  [v3 appendFormat:@"CCA: %ld\n", self->_cca];
  [v3 appendFormat:@"Tx Per: %ld\n", self->_txPacketErrorRate];
  [v3 appendFormat:@"Noise: %ld\n", self->_noise];
  [v3 appendFormat:@"Tx Rate: %.1f\n", *&self->_txRate];
  [v3 appendFormat:@"Security: %@\n", W5DescriptionForSecurity(self->_security)];
  [v3 appendFormat:@"EAPOL Mode: %@\n", W5DescriptionForEAPOLControlMode(self->_eapolControlMode)];
  [v3 appendFormat:@"EAPOL Supplicant: %@\n", W5DescriptionForEAPOLSupplicantState(self->_eapolSupplicantState)];
  [v3 appendFormat:@"PHY Mode: %@\n", W5DescriptionForPHYMode(self->_phyMode)];
  [v3 appendFormat:@"MCS Index: %ld\n", self->_mcsIndex];
  [v3 appendFormat:@"Guard Interval: %ld\n", self->_guardInterval];
  [v3 appendFormat:@"NSS: %ld\n", self->_numberOfSpacialStreams];
  [v3 appendFormat:@"Channel: %@\n", -[W5WiFiChannel description](self->_channel, "description")];
  [v3 appendFormat:@"Country Code: %@\n", self->_countryCode];
  [v3 appendFormat:@"Supported Channels: %@\n", -[NSArray componentsJoinedByString:](self->_supportedChannels, "componentsJoinedByString:", @", ")];
  v9 = [(NSArray *)self->_capabilities containsObject:&unk_288342138];
  v10 = "No";
  if (v9)
  {
    v10 = "Yes";
  }

  [v3 appendFormat:@"Supports 6e: %s\n", v10];
  [v3 appendFormat:@"Scan Cache Count: %lu\n", -[NSArray count](self->_cachedScanResults, "count")];
  [v3 appendFormat:@"Link Quality Updates: %lu\n", -[NSArray count](self->_linkQualityUpdates, "count")];
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  linkQualityUpdates = self->_linkQualityUpdates;
  v12 = [(NSArray *)linkQualityUpdates countByEnumeratingWithState:&v84 objects:v91 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v85;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v85 != v14)
        {
          objc_enumerationMutation(linkQualityUpdates);
        }

        [v3 appendFormat:@"\t%@\n", *(*(&v84 + 1) + 8 * i)];
      }

      v13 = [(NSArray *)linkQualityUpdates countByEnumeratingWithState:&v84 objects:v91 count:16];
    }

    while (v13);
  }

  [v3 appendFormat:@"NetworkServiceID: %@\n", self->_networkServiceID];
  [v3 appendFormat:@"IPv4ConfigMethod: %@\n", W5DescriptionForIPv4ConfigMethod(self->_ipv4ConfigMethod)];
  [v3 appendFormat:@"IPv4 Addresses: %lu\n", -[NSArray count](self->_ipv4Addresses, "count")];
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  ipv4Addresses = self->_ipv4Addresses;
  v17 = [(NSArray *)ipv4Addresses countByEnumeratingWithState:&v80 objects:v90 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v81;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v81 != v19)
        {
          objc_enumerationMutation(ipv4Addresses);
        }

        [v3 appendFormat:@"\t%@\n", *(*(&v80 + 1) + 8 * j)];
      }

      v18 = [(NSArray *)ipv4Addresses countByEnumeratingWithState:&v80 objects:v90 count:16];
    }

    while (v18);
  }

  [v3 appendFormat:@"IPv4 Router: %@\n", self->_ipv4RouterAddress];
  [v3 appendFormat:@"IPv6ConfigMethod: %@\n", W5DescriptionForIPv6ConfigMethod(self->_ipv6ConfigMethod)];
  [v3 appendFormat:@"IPv6 Addresses: %lu\n", -[NSArray count](self->_ipv6Addresses, "count")];
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  ipv6Addresses = self->_ipv6Addresses;
  v22 = [(NSArray *)ipv6Addresses countByEnumeratingWithState:&v76 objects:v89 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v77;
    do
    {
      for (k = 0; k != v23; ++k)
      {
        if (*v77 != v24)
        {
          objc_enumerationMutation(ipv6Addresses);
        }

        [v3 appendFormat:@"\t%@\n", *(*(&v76 + 1) + 8 * k)];
      }

      v23 = [(NSArray *)ipv6Addresses countByEnumeratingWithState:&v76 objects:v89 count:16];
    }

    while (v23);
  }

  [v3 appendFormat:@"IPv6 Router: %@\n", self->_ipv6RouterAddress];
  [v3 appendFormat:@"DNS Addresses: %lu\n", -[NSArray count](self->_dnsAddresses, "count")];
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  dnsAddresses = self->_dnsAddresses;
  v27 = [(NSArray *)dnsAddresses countByEnumeratingWithState:&v72 objects:v88 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v73;
    do
    {
      for (m = 0; m != v28; ++m)
      {
        if (*v73 != v29)
        {
          objc_enumerationMutation(dnsAddresses);
        }

        [v3 appendFormat:@"\t%@\n", *(*(&v72 + 1) + 8 * m)];
      }

      v28 = [(NSArray *)dnsAddresses countByEnumeratingWithState:&v72 objects:v88 count:16];
    }

    while (v28);
  }

  [v3 appendFormat:@"BTC Mode: %@\n", W5DescriptionForBTCMode(self->_btcMode)];
  btcConfig = self->_btcConfig;
  if (btcConfig)
  {
    if (self->_btcProfiles2GHz)
    {
      [(NSData *)btcConfig length];
      v32 = *([(NSData *)self->_btcConfig bytes]+ 4) ? "Enabled" : "Disabled";
      [v3 appendFormat:@"BTC Profile 2.4 GHz: %s\n", v32];
      [(NSData *)self->_btcConfig length];
      if (*([(NSData *)self->_btcConfig bytes]+ 4))
      {
        [(NSData *)self->_btcProfiles2GHz length];
        if (*([(NSData *)self->_btcProfiles2GHz bytes]+ 8))
        {
          if ([(NSData *)self->_btcProfiles2GHz length]== 572)
          {
            v33 = [(NSData *)self->_btcProfiles2GHz bytes];
          }

          else
          {
            v33 = 0;
          }

          [(NSData *)self->_btcConfig length];
          v34 = &v33[140 * *([(NSData *)self->_btcConfig bytes]+ 8)];
          v64 = *(v34 + 12);
          v35 = *(v34 + 28);
          v36 = *(v34 + 44);
          v37 = *(v34 + 76);
          v67 = *(v34 + 60);
          v68 = v37;
          v65 = v35;
          v66 = v36;
          v38 = *(v34 + 92);
          v39 = *(v34 + 108);
          v40 = *(v34 + 124);
          *&v71[12] = *(v34 + 136);
          v70 = v39;
          *v71 = v40;
          v69 = v38;
          [v3 appendString:{W5DescriptionForBTCProfile(&v64, @"\t"}];
        }
      }
    }

    v41 = self->_btcConfig;
    if (v41 && self->_btcProfiles5GHz)
    {
      [(NSData *)v41 length];
      v42 = *([(NSData *)self->_btcConfig bytes]+ 12) ? "Enabled" : "Disabled";
      [v3 appendFormat:@"BTC Profile 5 GHz: %s\n", v42];
      [(NSData *)self->_btcConfig length];
      if (*([(NSData *)self->_btcConfig bytes]+ 12))
      {
        [(NSData *)self->_btcProfiles5GHz length];
        if (*([(NSData *)self->_btcProfiles5GHz bytes]+ 8))
        {
          if ([(NSData *)self->_btcProfiles5GHz length]== 572)
          {
            v43 = [(NSData *)self->_btcProfiles5GHz bytes];
          }

          else
          {
            v43 = 0;
          }

          [(NSData *)self->_btcConfig length];
          v44 = &v43[140 * *([(NSData *)self->_btcConfig bytes]+ 16)];
          v64 = *(v44 + 12);
          v45 = *(v44 + 28);
          v46 = *(v44 + 44);
          v47 = *(v44 + 76);
          v67 = *(v44 + 60);
          v68 = v47;
          v65 = v45;
          v66 = v46;
          v48 = *(v44 + 92);
          v49 = *(v44 + 108);
          v50 = *(v44 + 124);
          *&v71[12] = *(v44 + 136);
          v70 = v49;
          *v71 = v50;
          v69 = v48;
          [v3 appendString:{W5DescriptionForBTCProfile(&v64, @"\t"}];
        }
      }
    }
  }

  if ([(NSData *)self->_chainAck length]== 24)
  {
    v51 = [(NSData *)self->_chainAck bytes];
  }

  else
  {
    v51 = 0;
  }

  [v3 appendFormat:@"Chain Ack: [%@]\n", W5DescriptionForChainAck(v51)];
  txChainPower = self->_txChainPower;
  if (txChainPower)
  {
    [(NSData *)txChainPower length];
    if (*([(NSData *)self->_txChainPower bytes]+ 4))
    {
      [(NSData *)self->_txChainPower length];
      if (*([(NSData *)self->_txChainPower bytes]+ 4) >= 1)
      {
        v53 = 0;
        v54 = 8;
        do
        {
          [(NSData *)self->_txChainPower length];
          [v3 appendFormat:@"Tx Chain Power[%i]: %@\n", v53, W5DescriptionForChainPowerState(*(-[NSData bytes](self->_txChainPower, "bytes") + v54))];
          [(NSData *)self->_txChainPower length];
          if (*([(NSData *)self->_txChainPower bytes]+ v54) == 2)
          {
            [(NSData *)self->_txChainPower length];
            v55 = [(NSData *)self->_txChainPower bytes];
            v56 = *&v55[v54];
            LODWORD(v65) = *&v55[v54 + 16];
            v64 = v56;
            [v3 appendString:{W5DescriptionForTxChainPower(&v64, @"\t"}];
          }

          ++v53;
          [(NSData *)self->_txChainPower length];
          v54 += 20;
        }

        while (v53 < *([(NSData *)self->_txChainPower bytes]+ 4));
      }
    }
  }

  desense = self->_desense;
  if (desense && self->_desenseLevel)
  {
    if ([(NSData *)desense length]== 16)
    {
      v58 = [(NSData *)self->_desense bytes];
    }

    else
    {
      v58 = 0;
    }

    if ([(NSData *)self->_desenseLevel length]== 8)
    {
      v59 = [(NSData *)self->_desenseLevel bytes];
    }

    else
    {
      v59 = 0;
    }

    [v3 appendFormat:@"Desense: %@\n", W5DescriptionForDesense(v58, v59)];
  }

  if (self->_smartCCADesenseSupported)
  {
    v60 = "Supported";
  }

  else
  {
    v60 = "Not Supported";
  }

  [v3 appendFormat:@"SmartCCA/Desense: %s (USB=%d)\n", v60, self->_smartCCADesenseUSBPresence];
  if (self->_isSnifferSupported)
  {
    v61 = "Supported";
  }

  else
  {
    v61 = "Not Supported";
  }

  [v3 appendFormat:@"Sniffer: %s\n", v61];
  result = [v3 copy];
  v63 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)conformsToProtocol:(id)a3
{
  v5.receiver = self;
  v5.super_class = W5WiFiStatus;
  if (-[W5WiFiStatus conformsToProtocol:](&v5, sel_conformsToProtocol_) || ([a3 isEqual:&unk_288343878] & 1) != 0)
  {
    return 1;
  }

  else
  {
    return [a3 isEqual:&unk_2883436F0];
  }
}

- (BOOL)isEqualToWiFiStatus:(id)a3
{
  macAddress = self->_macAddress;
  if (!macAddress)
  {
    if (![a3 macAddress])
    {
      goto LABEL_5;
    }

    macAddress = self->_macAddress;
  }

  v6 = -[NSString isEqual:](macAddress, "isEqual:", [a3 macAddress]);
  if (!v6)
  {
    return v6;
  }

LABEL_5:
  hardwareMACAddress = self->_hardwareMACAddress;
  if (!hardwareMACAddress)
  {
    if (![a3 hardwareMACAddress])
    {
      goto LABEL_9;
    }

    hardwareMACAddress = self->_hardwareMACAddress;
  }

  v6 = -[NSString isEqual:](hardwareMACAddress, "isEqual:", [a3 hardwareMACAddress]);
  if (!v6)
  {
    return v6;
  }

LABEL_9:
  interfaceName = self->_interfaceName;
  if (!interfaceName)
  {
    if (![a3 interfaceName])
    {
      goto LABEL_13;
    }

    interfaceName = self->_interfaceName;
  }

  v6 = -[NSString isEqual:](interfaceName, "isEqual:", [a3 interfaceName]);
  if (!v6)
  {
    return v6;
  }

LABEL_13:
  capabilities = self->_capabilities;
  if (!capabilities)
  {
    if (![a3 capabilities])
    {
      goto LABEL_17;
    }

    capabilities = self->_capabilities;
  }

  v6 = -[NSArray isEqual:](capabilities, "isEqual:", [a3 capabilities]);
  if (!v6)
  {
    return v6;
  }

LABEL_17:
  powerOn = self->_powerOn;
  if (powerOn != [a3 powerOn])
  {
    goto LABEL_130;
  }

  v6 = -[NSData isEqualToData:](self->_power, "isEqualToData:", [a3 power]);
  if (!v6)
  {
    return v6;
  }

  opMode = self->_opMode;
  if (opMode != [a3 opMode])
  {
    goto LABEL_130;
  }

  ssidString = self->_ssidString;
  if (!ssidString)
  {
    if (![a3 ssidString])
    {
      goto LABEL_24;
    }

    ssidString = self->_ssidString;
  }

  v6 = -[NSString isEqual:](ssidString, "isEqual:", [a3 ssidString]);
  if (!v6)
  {
    return v6;
  }

LABEL_24:
  ssid = self->_ssid;
  if (!ssid)
  {
    if (![a3 ssid])
    {
      goto LABEL_28;
    }

    ssid = self->_ssid;
  }

  v6 = -[NSData isEqual:](ssid, "isEqual:", [a3 ssid]);
  if (!v6)
  {
    return v6;
  }

LABEL_28:
  bssid = self->_bssid;
  if (!bssid)
  {
    if (![a3 bssid])
    {
      goto LABEL_32;
    }

    bssid = self->_bssid;
  }

  v6 = -[NSString isEqual:](bssid, "isEqual:", [a3 bssid]);
  if (!v6)
  {
    return v6;
  }

LABEL_32:
  rssi = self->_rssi;
  if (rssi != [a3 rssi])
  {
    goto LABEL_130;
  }

  cca = self->_cca;
  if (cca != [a3 cca])
  {
    goto LABEL_130;
  }

  txPacketErrorRate = self->_txPacketErrorRate;
  if (txPacketErrorRate != [a3 txPacketErrorRate])
  {
    goto LABEL_130;
  }

  noise = self->_noise;
  if (noise != [a3 noise])
  {
    goto LABEL_130;
  }

  txRate = self->_txRate;
  [a3 txRate];
  if (txRate != v20)
  {
    goto LABEL_130;
  }

  security = self->_security;
  if (security != [a3 security])
  {
    goto LABEL_130;
  }

  eapolControlMode = self->_eapolControlMode;
  if (eapolControlMode != [a3 eapolControlMode])
  {
    goto LABEL_130;
  }

  eapolSupplicantState = self->_eapolSupplicantState;
  if (eapolSupplicantState != [a3 eapolSupplicantState])
  {
    goto LABEL_130;
  }

  phyMode = self->_phyMode;
  if (phyMode != [a3 phyMode])
  {
    goto LABEL_130;
  }

  mcsIndex = self->_mcsIndex;
  if (mcsIndex != [a3 mcsIndex])
  {
    goto LABEL_130;
  }

  guardInterval = self->_guardInterval;
  if (guardInterval != [a3 guardInterval])
  {
    goto LABEL_130;
  }

  numberOfSpacialStreams = self->_numberOfSpacialStreams;
  if (numberOfSpacialStreams != [a3 numberOfSpacialStreams])
  {
    goto LABEL_130;
  }

  channel = self->_channel;
  if (!channel)
  {
    if (![a3 channel])
    {
      goto LABEL_48;
    }

    channel = self->_channel;
  }

  v6 = -[W5WiFiChannel isEqual:](channel, "isEqual:", [a3 channel]);
  if (!v6)
  {
    return v6;
  }

LABEL_48:
  supportedChannels = self->_supportedChannels;
  if (!supportedChannels)
  {
    if (![a3 supportedChannels])
    {
      goto LABEL_52;
    }

    supportedChannels = self->_supportedChannels;
  }

  v6 = -[NSArray isEqual:](supportedChannels, "isEqual:", [a3 supportedChannels]);
  if (!v6)
  {
    return v6;
  }

LABEL_52:
  countryCode = self->_countryCode;
  if (!countryCode)
  {
    if (![a3 countryCode])
    {
      goto LABEL_56;
    }

    countryCode = self->_countryCode;
  }

  v6 = -[NSString isEqual:](countryCode, "isEqual:", [a3 countryCode]);
  if (!v6)
  {
    return v6;
  }

LABEL_56:
  networkServiceID = self->_networkServiceID;
  if (!networkServiceID)
  {
    if (![a3 networkServiceID])
    {
      goto LABEL_60;
    }

    networkServiceID = self->_networkServiceID;
  }

  v6 = -[NSString isEqual:](networkServiceID, "isEqual:", [a3 networkServiceID]);
  if (!v6)
  {
    return v6;
  }

LABEL_60:
  ipv4ConfigMethod = self->_ipv4ConfigMethod;
  if (ipv4ConfigMethod != [a3 ipv4ConfigMethod])
  {
    goto LABEL_130;
  }

  ipv6ConfigMethod = self->_ipv6ConfigMethod;
  if (ipv6ConfigMethod != [a3 ipv6ConfigMethod])
  {
    goto LABEL_130;
  }

  ipv4Addresses = self->_ipv4Addresses;
  if (!ipv4Addresses)
  {
    if (![a3 ipv4Addresses])
    {
      goto LABEL_66;
    }

    ipv4Addresses = self->_ipv4Addresses;
  }

  v6 = -[NSArray isEqual:](ipv4Addresses, "isEqual:", [a3 ipv4Addresses]);
  if (!v6)
  {
    return v6;
  }

LABEL_66:
  ipv6Addresses = self->_ipv6Addresses;
  if (!ipv6Addresses)
  {
    if (![a3 ipv6Addresses])
    {
      goto LABEL_70;
    }

    ipv6Addresses = self->_ipv6Addresses;
  }

  v6 = -[NSArray isEqual:](ipv6Addresses, "isEqual:", [a3 ipv6Addresses]);
  if (!v6)
  {
    return v6;
  }

LABEL_70:
  ipv4RouterAddress = self->_ipv4RouterAddress;
  if (!ipv4RouterAddress)
  {
    if (![a3 ipv4RouterAddress])
    {
      goto LABEL_74;
    }

    ipv4RouterAddress = self->_ipv4RouterAddress;
  }

  v6 = -[NSString isEqual:](ipv4RouterAddress, "isEqual:", [a3 ipv4RouterAddress]);
  if (!v6)
  {
    return v6;
  }

LABEL_74:
  ipv6RouterAddress = self->_ipv6RouterAddress;
  if (!ipv6RouterAddress)
  {
    if (![a3 ipv6RouterAddress])
    {
      goto LABEL_78;
    }

    ipv6RouterAddress = self->_ipv6RouterAddress;
  }

  v6 = -[NSString isEqual:](ipv6RouterAddress, "isEqual:", [a3 ipv6RouterAddress]);
  if (!v6)
  {
    return v6;
  }

LABEL_78:
  dnsAddresses = self->_dnsAddresses;
  if (!dnsAddresses)
  {
    if (![a3 dnsAddresses])
    {
      goto LABEL_82;
    }

    dnsAddresses = self->_dnsAddresses;
  }

  v6 = -[NSArray isEqual:](dnsAddresses, "isEqual:", [a3 dnsAddresses]);
  if (!v6)
  {
    return v6;
  }

LABEL_82:
  chainAck = self->_chainAck;
  if (!chainAck)
  {
    if (![a3 chainAck])
    {
      goto LABEL_86;
    }

    chainAck = self->_chainAck;
  }

  v6 = -[NSData isEqualToData:](chainAck, "isEqualToData:", [a3 chainAck]);
  if (!v6)
  {
    return v6;
  }

LABEL_86:
  txChainPower = self->_txChainPower;
  if (!txChainPower)
  {
    if (![a3 txChainPower])
    {
      goto LABEL_90;
    }

    txChainPower = self->_txChainPower;
  }

  v6 = -[NSData isEqualToData:](txChainPower, "isEqualToData:", [a3 txChainPower]);
  if (!v6)
  {
    return v6;
  }

LABEL_90:
  desense = self->_desense;
  if (!desense)
  {
    if (![a3 desense])
    {
      goto LABEL_94;
    }

    desense = self->_desense;
  }

  v6 = -[NSData isEqualToData:](desense, "isEqualToData:", [a3 desense]);
  if (!v6)
  {
    return v6;
  }

LABEL_94:
  desenseLevel = self->_desenseLevel;
  if (!desenseLevel)
  {
    if (![a3 desenseLevel])
    {
      goto LABEL_98;
    }

    desenseLevel = self->_desenseLevel;
  }

  v6 = -[NSData isEqualToData:](desenseLevel, "isEqualToData:", [a3 desenseLevel]);
  if (!v6)
  {
    return v6;
  }

LABEL_98:
  btcConfig = self->_btcConfig;
  if (!btcConfig)
  {
    if (![a3 btcConfig])
    {
      goto LABEL_102;
    }

    btcConfig = self->_btcConfig;
  }

  v6 = -[NSData isEqualToData:](btcConfig, "isEqualToData:", [a3 btcConfig]);
  if (!v6)
  {
    return v6;
  }

LABEL_102:
  btcProfiles2GHz = self->_btcProfiles2GHz;
  if (!btcProfiles2GHz)
  {
    if (![a3 btcProfiles2GHz])
    {
      goto LABEL_106;
    }

    btcProfiles2GHz = self->_btcProfiles2GHz;
  }

  v6 = -[NSData isEqualToData:](btcProfiles2GHz, "isEqualToData:", [a3 btcProfiles2GHz]);
  if (!v6)
  {
    return v6;
  }

LABEL_106:
  btcProfiles5GHz = self->_btcProfiles5GHz;
  if (!btcProfiles5GHz)
  {
    if (![a3 btcProfiles5GHz])
    {
      goto LABEL_110;
    }

    btcProfiles5GHz = self->_btcProfiles5GHz;
  }

  v6 = -[NSData isEqualToData:](btcProfiles5GHz, "isEqualToData:", [a3 btcProfiles5GHz]);
  if (!v6)
  {
    return v6;
  }

LABEL_110:
  btcMode = self->_btcMode;
  if (btcMode != [a3 btcMode])
  {
    goto LABEL_130;
  }

  linkQualityUpdates = self->_linkQualityUpdates;
  if (!linkQualityUpdates)
  {
    if (![a3 linkQualityUpdates])
    {
      goto LABEL_115;
    }

    linkQualityUpdates = self->_linkQualityUpdates;
  }

  v6 = -[NSArray isEqual:](linkQualityUpdates, "isEqual:", [a3 linkQualityUpdates]);
  if (!v6)
  {
    return v6;
  }

LABEL_115:
  lastJoinedScanResult = self->_lastJoinedScanResult;
  if (!lastJoinedScanResult)
  {
    if (![a3 lastJoinedScanResult])
    {
      goto LABEL_119;
    }

    lastJoinedScanResult = self->_lastJoinedScanResult;
  }

  v6 = -[W5WiFiScanResult isEqual:](lastJoinedScanResult, "isEqual:", [a3 lastJoinedScanResult]);
  if (!v6)
  {
    return v6;
  }

LABEL_119:
  lastJoinedPreferredNetwork = self->_lastJoinedPreferredNetwork;
  if (lastJoinedPreferredNetwork)
  {
    goto LABEL_122;
  }

  if ([a3 lastJoinedPreferredNetwork])
  {
    lastJoinedPreferredNetwork = self->_lastJoinedPreferredNetwork;
LABEL_122:
    v6 = -[W5WiFiPreferredNetwork isEqual:](lastJoinedPreferredNetwork, "isEqual:", [a3 lastJoinedPreferredNetwork]);
    if (!v6)
    {
      return v6;
    }
  }

  cachedScanResults = self->_cachedScanResults;
  if (!cachedScanResults)
  {
    if (![a3 cachedScanResults])
    {
LABEL_127:
      smartCCADesenseSupported = self->_smartCCADesenseSupported;
      if (smartCCADesenseSupported == [a3 smartCCADesenseSupported])
      {
        smartCCADesenseUSBPresence = self->_smartCCADesenseUSBPresence;
        if (smartCCADesenseUSBPresence == [a3 smartCCADesenseUSBPresence])
        {
          isSnifferSupported = self->_isSnifferSupported;
          LOBYTE(v6) = isSnifferSupported == [a3 isSnifferSupported];
          return v6;
        }
      }

LABEL_130:
      LOBYTE(v6) = 0;
      return v6;
    }

    cachedScanResults = self->_cachedScanResults;
  }

  v6 = -[NSArray isEqual:](cachedScanResults, "isEqual:", [a3 cachedScanResults]);
  if (v6)
  {
    goto LABEL_127;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  if (!a3)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(W5WiFiStatus *)self isEqualToWiFiStatus:a3];
}

- (unint64_t)hash
{
  v47 = [(NSString *)self->_macAddress hash];
  v48 = [(NSString *)self->_hardwareMACAddress hash];
  v46 = [(NSString *)self->_interfaceName hash];
  v45 = [(NSArray *)self->_capabilities hash];
  powerOn = self->_powerOn;
  v44 = [(NSData *)self->_power hash];
  opMode = self->_opMode;
  v42 = [(NSString *)self->_ssidString hash];
  v40 = [(NSData *)self->_ssid hash];
  v43 = [(NSString *)self->_bssid hash];
  v39 = [objc_msgSend(MEMORY[0x277CCABB0] numberWithInteger:{self->_rssi), "hash"}];
  v37 = [objc_msgSend(MEMORY[0x277CCABB0] numberWithUnsignedInteger:{self->_cca), "hash"}];
  v36 = [objc_msgSend(MEMORY[0x277CCABB0] numberWithUnsignedInteger:{self->_txPacketErrorRate), "hash"}];
  v35 = [objc_msgSend(MEMORY[0x277CCABB0] numberWithInteger:{self->_noise), "hash"}];
  v34 = [objc_msgSend(MEMORY[0x277CCABB0] numberWithDouble:{self->_txRate), "hash"}];
  eapolSupplicantState = self->_eapolSupplicantState;
  eapolControlMode = self->_eapolControlMode;
  phyMode = self->_phyMode;
  v3 = *&self->_security;
  v29 = v3;
  v30 = *&self->_guardInterval;
  v33 = [(W5WiFiChannel *)self->_channel hash];
  v32 = [(NSArray *)self->_supportedChannels hash];
  v31 = [(NSString *)self->_countryCode hash];
  v28 = [(NSString *)self->_networkServiceID hash];
  ipv4ConfigMethod = self->_ipv4ConfigMethod;
  ipv6ConfigMethod = self->_ipv6ConfigMethod;
  v23 = [(NSArray *)self->_ipv4Addresses hash];
  v21 = [(NSArray *)self->_ipv6Addresses hash];
  v20 = [(NSString *)self->_ipv4RouterAddress hash];
  v19 = [(NSString *)self->_ipv6RouterAddress hash];
  v18 = [(NSArray *)self->_dnsAddresses hash];
  v17 = [(NSData *)self->_chainAck hash];
  v16 = [(NSData *)self->_txChainPower hash];
  v4 = [(NSData *)self->_desense hash];
  v5 = [(NSData *)self->_desenseLevel hash];
  v6 = [(NSData *)self->_btcConfig hash];
  btcMode = self->_btcMode;
  v8 = [(NSData *)self->_btcProfiles2GHz hash];
  v9 = [(NSData *)self->_btcProfiles5GHz hash];
  v10 = [(NSArray *)self->_linkQualityUpdates hash];
  v11 = [(W5WiFiScanResult *)self->_lastJoinedScanResult hash];
  v12 = [(W5WiFiPreferredNetwork *)self->_lastJoinedPreferredNetwork hash];
  v13 = [(NSArray *)self->_cachedScanResults hash];
  v14 = veorq_s8(v29, v30);
  return *&veor_s8(*v14.i8, *&vextq_s8(v14, v14, 8uLL)) ^ ipv4ConfigMethod ^ ipv6ConfigMethod ^ opMode ^ eapolControlMode ^ eapolSupplicantState ^ phyMode ^ btcMode ^ v13 ^ v12 ^ v11 ^ v10 ^ (powerOn ^ self->_smartCCADesenseSupported ^ self->_smartCCADesenseUSBPresence ^ self->_isSnifferSupported) & 1 ^ v9 ^ v8 ^ v6 ^ v5 ^ v4 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v23 ^ v28 ^ v31 ^ v32 ^ v33 ^ v34 ^ v35 ^ v36 ^ v37 ^ v39 ^ v43 ^ v40 ^ v42 ^ v44 ^ v45 ^ v46 ^ v47 ^ v48;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[W5WiFiStatus allocWithZone:?]];
  [(W5WiFiStatus *)v4 setMacAddress:self->_macAddress];
  [(W5WiFiStatus *)v4 setHardwareMACAddress:self->_hardwareMACAddress];
  [(W5WiFiStatus *)v4 setInterfaceName:self->_interfaceName];
  [(W5WiFiStatus *)v4 setCapabilities:self->_capabilities];
  [(W5WiFiStatus *)v4 setPower:self->_power];
  [(W5WiFiStatus *)v4 setPowerOn:self->_powerOn];
  [(W5WiFiStatus *)v4 setOpMode:self->_opMode];
  [(W5WiFiStatus *)v4 setSsidString:self->_ssidString];
  [(W5WiFiStatus *)v4 setSsid:self->_ssid];
  [(W5WiFiStatus *)v4 setBssid:self->_bssid];
  [(W5WiFiStatus *)v4 setRssi:self->_rssi];
  [(W5WiFiStatus *)v4 setCca:self->_cca];
  [(W5WiFiStatus *)v4 setTxPacketErrorRate:self->_txPacketErrorRate];
  [(W5WiFiStatus *)v4 setNoise:self->_noise];
  [(W5WiFiStatus *)v4 setTxRate:self->_txRate];
  [(W5WiFiStatus *)v4 setPhyMode:self->_phyMode];
  [(W5WiFiStatus *)v4 setMcsIndex:self->_mcsIndex];
  [(W5WiFiStatus *)v4 setGuardInterval:self->_guardInterval];
  [(W5WiFiStatus *)v4 setNumberOfSpacialStreams:self->_numberOfSpacialStreams];
  [(W5WiFiStatus *)v4 setSecurity:self->_security];
  [(W5WiFiStatus *)v4 setEapolControlMode:self->_eapolControlMode];
  [(W5WiFiStatus *)v4 setEapolSupplicantState:self->_eapolSupplicantState];
  [(W5WiFiStatus *)v4 setChannel:self->_channel];
  [(W5WiFiStatus *)v4 setSupportedChannels:self->_supportedChannels];
  [(W5WiFiStatus *)v4 setCountryCode:self->_countryCode];
  [(W5WiFiStatus *)v4 setNetworkServiceID:self->_networkServiceID];
  [(W5WiFiStatus *)v4 setIpv4ConfigMethod:self->_ipv4ConfigMethod];
  [(W5WiFiStatus *)v4 setIpv6ConfigMethod:self->_ipv6ConfigMethod];
  [(W5WiFiStatus *)v4 setIpv4Addresses:self->_ipv4Addresses];
  [(W5WiFiStatus *)v4 setIpv6Addresses:self->_ipv6Addresses];
  [(W5WiFiStatus *)v4 setIpv4RouterAddress:self->_ipv4RouterAddress];
  [(W5WiFiStatus *)v4 setIpv6RouterAddress:self->_ipv6RouterAddress];
  [(W5WiFiStatus *)v4 setDnsAddresses:self->_dnsAddresses];
  [(W5WiFiStatus *)v4 setChainAck:self->_chainAck];
  [(W5WiFiStatus *)v4 setTxChainPower:self->_txChainPower];
  [(W5WiFiStatus *)v4 setDesense:self->_desense];
  [(W5WiFiStatus *)v4 setDesenseLevel:self->_desenseLevel];
  [(W5WiFiStatus *)v4 setBtcConfig:self->_btcConfig];
  [(W5WiFiStatus *)v4 setBtcMode:self->_btcMode];
  [(W5WiFiStatus *)v4 setBtcProfiles2GHz:self->_btcProfiles2GHz];
  [(W5WiFiStatus *)v4 setBtcProfiles5GHz:self->_btcProfiles5GHz];
  [(W5WiFiStatus *)v4 setLinkQualityUpdates:self->_linkQualityUpdates];
  [(W5WiFiStatus *)v4 setLastJoinedScanResult:self->_lastJoinedScanResult];
  [(W5WiFiStatus *)v4 setLastJoinedPreferredNetwork:self->_lastJoinedPreferredNetwork];
  [(W5WiFiStatus *)v4 setCachedScanResults:self->_cachedScanResults];
  [(W5WiFiStatus *)v4 setSmartCCADesenseSupported:self->_smartCCADesenseSupported];
  [(W5WiFiStatus *)v4 setSmartCCADesenseUSBPresence:self->_smartCCADesenseUSBPresence];
  [(W5WiFiStatus *)v4 setIsSnifferSupported:self->_isSnifferSupported];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_macAddress forKey:@"_macAddress"];
  [a3 encodeObject:self->_hardwareMACAddress forKey:@"_hardwareMACAddress"];
  [a3 encodeObject:self->_interfaceName forKey:@"_interfaceName"];
  [a3 encodeObject:self->_capabilities forKey:@"_capabilities"];
  [a3 encodeBool:self->_powerOn forKey:@"_powerOn"];
  [a3 encodeObject:self->_power forKey:@"_power"];
  [a3 encodeInt:self->_opMode forKey:@"_opMode"];
  [a3 encodeObject:self->_ssidString forKey:@"_ssidString"];
  [a3 encodeObject:self->_ssid forKey:@"_ssid"];
  [a3 encodeObject:self->_bssid forKey:@"_bssid"];
  [a3 encodeInteger:self->_rssi forKey:@"_rssi"];
  [a3 encodeInteger:self->_cca forKey:@"_cca"];
  [a3 encodeInteger:self->_txPacketErrorRate forKey:@"_txPacketErrorRate"];
  [a3 encodeInteger:self->_noise forKey:@"_noise"];
  [a3 encodeDouble:@"_txRate" forKey:self->_txRate];
  [a3 encodeInteger:self->_security forKey:@"_security"];
  [a3 encodeInt:self->_eapolControlMode forKey:@"_eapolControlMode"];
  [a3 encodeInt:self->_eapolSupplicantState forKey:@"_eapolSupplicantState"];
  [a3 encodeInt:self->_phyMode forKey:@"_phyMode"];
  [a3 encodeInteger:self->_mcsIndex forKey:@"_mcsIndex"];
  [a3 encodeInteger:self->_guardInterval forKey:@"_guardInterval"];
  [a3 encodeInteger:self->_numberOfSpacialStreams forKey:@"_numberOfSpacialStreams"];
  [a3 encodeObject:self->_channel forKey:@"_channel"];
  [a3 encodeObject:self->_supportedChannels forKey:@"_supportedChannels"];
  [a3 encodeObject:self->_countryCode forKey:@"_countryCode"];
  [a3 encodeObject:self->_networkServiceID forKey:@"_networkServiceID"];
  [a3 encodeInteger:self->_ipv4ConfigMethod forKey:@"_ipv4ConfigMethod"];
  [a3 encodeInteger:self->_ipv6ConfigMethod forKey:@"_ipv6ConfigMethod"];
  [a3 encodeObject:self->_ipv4Addresses forKey:@"_ipv4Addresses"];
  [a3 encodeObject:self->_ipv6Addresses forKey:@"_ipv6Addresses"];
  [a3 encodeObject:self->_ipv4RouterAddress forKey:@"_ipv4RouterAddress"];
  [a3 encodeObject:self->_ipv6RouterAddress forKey:@"_ipv6RouterAddress"];
  [a3 encodeObject:self->_dnsAddresses forKey:@"_dnsAddresses"];
  [a3 encodeObject:self->_chainAck forKey:@"_chainAck"];
  [a3 encodeObject:self->_txChainPower forKey:@"_txChainPower"];
  [a3 encodeObject:self->_desense forKey:@"_desense"];
  [a3 encodeObject:self->_desenseLevel forKey:@"_desenseLevel"];
  [a3 encodeObject:self->_btcConfig forKey:@"_btcConfig"];
  [a3 encodeObject:self->_btcProfiles2GHz forKey:@"_btcProfiles2GHz"];
  [a3 encodeObject:self->_btcProfiles5GHz forKey:@"_btcProfiles5GHz"];
  [a3 encodeInt:self->_btcMode forKey:@"_btcMode"];
  [a3 encodeObject:self->_linkQualityUpdates forKey:@"_linkQualityUpdates"];
  [a3 encodeObject:self->_lastJoinedScanResult forKey:@"_lastJoinedScanResult"];
  [a3 encodeObject:self->_lastJoinedPreferredNetwork forKey:@"_lastJoinedPreferredNetwork"];
  [a3 encodeObject:self->_cachedScanResults forKey:@"_cachedScanResults"];
  [a3 encodeBool:self->_smartCCADesenseSupported forKey:@"_smartCCADesenseSupported"];
  [a3 encodeBool:self->_smartCCADesenseUSBPresence forKey:@"_smartCCADesenseUSBPresence"];
  isSnifferSupported = self->_isSnifferSupported;

  [a3 encodeBool:isSnifferSupported forKey:@"_isSnifferSupported"];
}

- (W5WiFiStatus)initWithCoder:(id)a3
{
  v21.receiver = self;
  v21.super_class = W5WiFiStatus;
  v4 = [(W5WiFiStatus *)&v21 init];
  if (v4)
  {
    v4->_macAddress = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"_macAddress", "copy"}];
    v4->_hardwareMACAddress = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"_hardwareMACAddress", "copy"}];
    v4->_interfaceName = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"_interfaceName", "copy"}];
    v5 = MEMORY[0x277CBEB98];
    v6 = objc_opt_class();
    v4->_capabilities = [objc_msgSend(a3 decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, objc_opt_class(), 0), @"_capabilities", "copy"}];
    v4->_powerOn = [a3 decodeBoolForKey:@"_powerOn"];
    v4->_power = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"_power", "copy"}];
    v4->_opMode = [a3 decodeIntForKey:@"_opMode"];
    v4->_ssidString = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"_ssidString", "copy"}];
    v4->_ssid = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"_ssid", "copy"}];
    v4->_bssid = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"_bssid", "copy"}];
    v4->_rssi = [a3 decodeIntegerForKey:@"_rssi"];
    v4->_cca = [a3 decodeIntegerForKey:@"_cca"];
    v4->_txPacketErrorRate = [a3 decodeIntegerForKey:@"_txPacketErrorRate"];
    v4->_noise = [a3 decodeIntegerForKey:@"_noise"];
    [a3 decodeDoubleForKey:@"_txRate"];
    v4->_txRate = v7;
    v4->_security = [a3 decodeIntegerForKey:@"_security"];
    v4->_eapolControlMode = [a3 decodeIntForKey:@"_eapolControlMode"];
    v4->_eapolSupplicantState = [a3 decodeIntForKey:@"_eapolSupplicantState"];
    v4->_phyMode = [a3 decodeIntForKey:@"_phyMode"];
    v4->_mcsIndex = [a3 decodeIntegerForKey:@"_mcsIndex"];
    v4->_guardInterval = [a3 decodeIntegerForKey:@"_guardInterval"];
    v4->_numberOfSpacialStreams = [a3 decodeIntegerForKey:@"_numberOfSpacialStreams"];
    v4->_channel = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"_channel", "copy"}];
    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v4->_supportedChannels = [objc_msgSend(a3 decodeObjectOfClasses:objc_msgSend(v8 forKey:{"setWithObjects:", v9, objc_opt_class(), 0), @"_supportedChannels", "copy"}];
    v4->_countryCode = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"_countryCode", "copy"}];
    v4->_networkServiceID = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"_networkServiceID", "copy"}];
    v4->_ipv4ConfigMethod = [a3 decodeIntegerForKey:@"_ipv4ConfigMethod"];
    v4->_ipv6ConfigMethod = [a3 decodeIntegerForKey:@"_ipv6ConfigMethod"];
    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v4->_ipv4Addresses = [objc_msgSend(a3 decodeObjectOfClasses:objc_msgSend(v10 forKey:{"setWithObjects:", v11, objc_opt_class(), 0), @"_ipv4Addresses", "copy"}];
    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v4->_ipv6Addresses = [objc_msgSend(a3 decodeObjectOfClasses:objc_msgSend(v12 forKey:{"setWithObjects:", v13, objc_opt_class(), 0), @"_ipv6Addresses", "copy"}];
    v4->_ipv4RouterAddress = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"_ipv4RouterAddress", "copy"}];
    v4->_ipv6RouterAddress = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"_ipv6RouterAddress", "copy"}];
    v14 = MEMORY[0x277CBEB98];
    v15 = objc_opt_class();
    v4->_dnsAddresses = [objc_msgSend(a3 decodeObjectOfClasses:objc_msgSend(v14 forKey:{"setWithObjects:", v15, objc_opt_class(), 0), @"_dnsAddresses", "copy"}];
    v4->_chainAck = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"_chainAck", "copy"}];
    v4->_txChainPower = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"_txChainPower", "copy"}];
    v4->_desense = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"_desense", "copy"}];
    v4->_desenseLevel = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"_desenseLevel", "copy"}];
    v4->_btcConfig = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"_btcConfig", "copy"}];
    v4->_btcProfiles2GHz = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"_btcProfiles2GHz", "copy"}];
    v4->_btcProfiles5GHz = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"_btcProfiles5GHz", "copy"}];
    v4->_btcMode = [a3 decodeIntForKey:@"_btcMode"];
    v16 = MEMORY[0x277CBEB98];
    v17 = objc_opt_class();
    v4->_linkQualityUpdates = [objc_msgSend(a3 decodeObjectOfClasses:objc_msgSend(v16 forKey:{"setWithObjects:", v17, objc_opt_class(), 0), @"_linkQualityUpdates", "copy"}];
    v4->_lastJoinedScanResult = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"_lastJoinedScanResult", "copy"}];
    v4->_lastJoinedPreferredNetwork = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"_lastJoinedPreferredNetwork", "copy"}];
    v18 = MEMORY[0x277CBEB98];
    v19 = objc_opt_class();
    v4->_cachedScanResults = [objc_msgSend(a3 decodeObjectOfClasses:objc_msgSend(v18 forKey:{"setWithObjects:", v19, objc_opt_class(), 0), @"_cachedScanResults", "copy"}];
    v4->_smartCCADesenseSupported = [a3 decodeBoolForKey:@"_smartCCADesenseSupported"];
    v4->_smartCCADesenseUSBPresence = [a3 decodeBoolForKey:@"_smartCCADesenseUSBPresence"];
    v4->_isSnifferSupported = [a3 decodeBoolForKey:@"_isSnifferSupported"];
  }

  return v4;
}

@end