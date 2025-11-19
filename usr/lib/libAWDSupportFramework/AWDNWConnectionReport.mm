@interface AWDNWConnectionReport
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAppleApp:(id)a3;
- (int)StringAsAppleHost:(id)a3;
- (int)StringAsConnectedAddressFamily:(id)a3;
- (int)StringAsConnectedInterfaceType:(id)a3;
- (int)StringAsConnectionMode:(id)a3;
- (int)StringAsDnsProtocol:(id)a3;
- (int)StringAsDnsProvider:(id)a3;
- (int)StringAsFailureReason:(id)a3;
- (int)StringAsFirstAddressFamily:(id)a3;
- (int)StringAsStackLevel:(id)a3;
- (int)StringAsTlsVersion:(id)a3;
- (int)StringAsTransportProtocol:(id)a3;
- (int)StringAsUsedProxyType:(id)a3;
- (int)appleApp;
- (int)appleHost;
- (int)connectedAddressFamily;
- (int)connectedInterfaceType;
- (int)connectionMode;
- (int)dnsProtocol;
- (int)dnsProvider;
- (int)failureReason;
- (int)firstAddressFamily;
- (int)stackLevel;
- (int)tlsVersion;
- (int)transportProtocol;
- (int)usedProxyType;
- (unint64_t)hash;
- (void)addActivities:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasAppleApp:(BOOL)a3;
- (void)setHasAppleHost:(BOOL)a3;
- (void)setHasBytesDuplicate:(BOOL)a3;
- (void)setHasBytesIn:(BOOL)a3;
- (void)setHasBytesOut:(BOOL)a3;
- (void)setHasBytesOutOfOrder:(BOOL)a3;
- (void)setHasBytesRetransmitted:(BOOL)a3;
- (void)setHasConnectedAddressFamily:(BOOL)a3;
- (void)setHasConnectedAddressIndex:(BOOL)a3;
- (void)setHasConnectedInterfaceType:(BOOL)a3;
- (void)setHasConnectionMode:(BOOL)a3;
- (void)setHasConnectionReuseCount:(BOOL)a3;
- (void)setHasCurrentRTT:(BOOL)a3;
- (void)setHasCustomProxyConfigured:(BOOL)a3;
- (void)setHasDataStallCount:(BOOL)a3;
- (void)setHasDnsProtocol:(BOOL)a3;
- (void)setHasDnsProvider:(BOOL)a3;
- (void)setHasFailureReason:(BOOL)a3;
- (void)setHasFallbackEligible:(BOOL)a3;
- (void)setHasFirstAddressFamily:(BOOL)a3;
- (void)setHasFirstParty:(BOOL)a3;
- (void)setHasFlowConnectMilliseconds:(BOOL)a3;
- (void)setHasFlowDurationMilliseconds:(BOOL)a3;
- (void)setHasIpv4AddressCount:(BOOL)a3;
- (void)setHasIpv4Available:(BOOL)a3;
- (void)setHasIpv4DNSServerCount:(BOOL)a3;
- (void)setHasIpv6AddressCount:(BOOL)a3;
- (void)setHasIpv6Available:(BOOL)a3;
- (void)setHasIpv6DNSServerCount:(BOOL)a3;
- (void)setHasIsDaemon:(BOOL)a3;
- (void)setHasIsPathConstrained:(BOOL)a3;
- (void)setHasIsPathExpensive:(BOOL)a3;
- (void)setHasMultipathBytesInCell:(BOOL)a3;
- (void)setHasMultipathBytesInInitial:(BOOL)a3;
- (void)setHasMultipathBytesInWiFi:(BOOL)a3;
- (void)setHasMultipathBytesOutCell:(BOOL)a3;
- (void)setHasMultipathBytesOutInitial:(BOOL)a3;
- (void)setHasMultipathBytesOutWiFi:(BOOL)a3;
- (void)setHasMultipathConfigured:(BOOL)a3;
- (void)setHasMultipathServiceType:(BOOL)a3;
- (void)setHasPacketsIn:(BOOL)a3;
- (void)setHasPacketsOut:(BOOL)a3;
- (void)setHasPathTriggerMilliseconds:(BOOL)a3;
- (void)setHasProhibitsConstrained:(BOOL)a3;
- (void)setHasProhibitsExpensive:(BOOL)a3;
- (void)setHasProxyMilliseconds:(BOOL)a3;
- (void)setHasRTTvariance:(BOOL)a3;
- (void)setHasResolutionMilliseconds:(BOOL)a3;
- (void)setHasResolutionRequired:(BOOL)a3;
- (void)setHasSecondsSinceInterfaceChange:(BOOL)a3;
- (void)setHasSmoothedRTT:(BOOL)a3;
- (void)setHasStackLevel:(BOOL)a3;
- (void)setHasSynRetransmissionCount:(BOOL)a3;
- (void)setHasSynthesizedExtraIPv6Address:(BOOL)a3;
- (void)setHasSynthesizedIPv6Address:(BOOL)a3;
- (void)setHasSystemProxyConfigured:(BOOL)a3;
- (void)setHasTfoConfigured:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)setHasTlsConfigured:(BOOL)a3;
- (void)setHasTlsHandshakeTimedOut:(BOOL)a3;
- (void)setHasTlsMilliseconds:(BOOL)a3;
- (void)setHasTlsVersion:(BOOL)a3;
- (void)setHasTlsVersionTimeout:(BOOL)a3;
- (void)setHasTrafficClass:(BOOL)a3;
- (void)setHasTransportProtocol:(BOOL)a3;
- (void)setHasTriggeredPath:(BOOL)a3;
- (void)setHasUsedFallback:(BOOL)a3;
- (void)setHasUsedProxyType:(BOOL)a3;
- (void)setHasWeakFallback:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDNWConnectionReport

- (void)dealloc
{
  [(AWDNWConnectionReport *)self setProcessName:0];
  [(AWDNWConnectionReport *)self setActivities:0];
  [(AWDNWConnectionReport *)self setConnectionUUID:0];
  [(AWDNWConnectionReport *)self setL2Report:0];
  [(AWDNWConnectionReport *)self setDeviceReport:0];
  [(AWDNWConnectionReport *)self setBundleID:0];
  [(AWDNWConnectionReport *)self setEffectiveBundleID:0];
  v3.receiver = self;
  v3.super_class = AWDNWConnectionReport;
  [(AWDNWConnectionReport *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)a3
{
  v3 = 0x100000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFEFFFFFFFFLL | v3;
}

- (void)setHasTriggeredPath:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 8) = *(&self->_has + 8) & 0xEF | v3;
}

- (void)setHasSystemProxyConfigured:(BOOL)a3
{
  v3 = 0x4000000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBFFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasCustomProxyConfigured:(BOOL)a3
{
  v3 = 0x1000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFEFFFFFFFFFFFFLL | v3;
}

- (int)usedProxyType
{
  if ((*(&self->_has + 5) & 0x80) != 0)
  {
    return self->_usedProxyType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasUsedProxyType:(BOOL)a3
{
  v3 = 0x800000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFF7FFFFFFFFFFFLL | v3;
}

- (int)StringAsUsedProxyType:(id)a3
{
  if ([a3 isEqualToString:@"NW_PROXY_TYPE_NONE"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"NW_PROXY_TYPE_DIRECT"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"NW_PROXY_TYPE_HTTP"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"NW_PROXY_TYPE_HTTPS"])
  {
    return 3;
  }

  if ([a3 isEqualToString:@"NW_PROXY_TYPE_SOCKS"])
  {
    return 4;
  }

  return 0;
}

- (void)setHasFallbackEligible:(BOOL)a3
{
  v3 = 0x2000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFDFFFFFFFFFFFFLL | v3;
}

- (void)setHasWeakFallback:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 8) = *(&self->_has + 8) & 0xBF | v3;
}

- (void)setHasUsedFallback:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 8) = *(&self->_has + 8) & 0xDF | v3;
}

- (void)setHasResolutionRequired:(BOOL)a3
{
  v3 = 0x800000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FFFFFFFFFFFFFFLL | v3;
}

- (void)setHasTlsConfigured:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 8) = *(&self->_has + 8) & 0xFD | v3;
}

- (void)setHasTfoConfigured:(BOOL)a3
{
  v3 = 0x8000000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x8000000000000000 | *&self->_has & 0x7FFFFFFFFFFFFFFFLL;
}

- (void)setHasMultipathConfigured:(BOOL)a3
{
  v3 = 0x100000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasTrafficClass:(BOOL)a3
{
  v3 = 0x400000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFBFFFFFFFFLL | v3;
}

- (int)failureReason
{
  if ((*(&self->_has + 5) & 4) != 0)
  {
    return self->_failureReason;
  }

  else
  {
    return 0;
  }
}

- (void)setHasFailureReason:(BOOL)a3
{
  v3 = 0x40000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFBFFFFFFFFFFLL | v3;
}

- (int)StringAsFailureReason:(id)a3
{
  if ([a3 isEqualToString:@"NW_FAILURE_REASON_NONE"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"NW_FAILURE_REASON_PATH"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"NW_FAILURE_REASON_RESOLVER"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"NW_FAILURE_REASON_FLOW"])
  {
    return 3;
  }

  if ([a3 isEqualToString:@"NW_FAILURE_REASON_TLS"])
  {
    return 4;
  }

  return 0;
}

- (void)setHasPathTriggerMilliseconds:(BOOL)a3
{
  v3 = 0x2000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFDFFFFFFLL | v3;
}

- (void)setHasResolutionMilliseconds:(BOOL)a3
{
  v3 = 0x10000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFEFFFFFFFLL | v3;
}

- (void)setHasProxyMilliseconds:(BOOL)a3
{
  v3 = 0x4000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFBFFFFFFLL | v3;
}

- (void)setHasFlowConnectMilliseconds:(BOOL)a3
{
  v3 = 1024;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFBFFLL | v3;
}

- (void)setHasTlsMilliseconds:(BOOL)a3
{
  v3 = 0x200000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFDFFFFFFFFLL | v3;
}

- (void)setHasFlowDurationMilliseconds:(BOOL)a3
{
  v3 = 2048;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFF7FFLL | v3;
}

- (void)setHasIpv4AddressCount:(BOOL)a3
{
  v3 = 4096;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFEFFFLL | v3;
}

- (void)setHasIpv6AddressCount:(BOOL)a3
{
  v3 = 0x4000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFBFFFLL | v3;
}

- (void)setHasSynthesizedIPv6Address:(BOOL)a3
{
  v3 = 0x2000000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFFFFFFFFFFFFFFLL | v3;
}

- (int)firstAddressFamily
{
  if ((*(&self->_has + 5) & 8) != 0)
  {
    return self->_firstAddressFamily;
  }

  else
  {
    return 0;
  }
}

- (void)setHasFirstAddressFamily:(BOOL)a3
{
  v3 = 0x80000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFF7FFFFFFFFFFLL | v3;
}

- (int)StringAsFirstAddressFamily:(id)a3
{
  if ([a3 isEqualToString:@"NW_ADDRESS_FAMILY_OTHER"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"NW_ADDRESS_FAMILY_IPV4"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"NW_ADDRESS_FAMILY_IPV6"])
  {
    return 2;
  }

  return 0;
}

- (int)connectedAddressFamily
{
  if ((*(&self->_has + 4) & 0x20) != 0)
  {
    return self->_connectedAddressFamily;
  }

  else
  {
    return 0;
  }
}

- (void)setHasConnectedAddressFamily:(BOOL)a3
{
  v3 = 0x2000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFDFFFFFFFFFLL | v3;
}

- (int)StringAsConnectedAddressFamily:(id)a3
{
  if ([a3 isEqualToString:@"NW_ADDRESS_FAMILY_OTHER"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"NW_ADDRESS_FAMILY_IPV4"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"NW_ADDRESS_FAMILY_IPV6"])
  {
    return 2;
  }

  return 0;
}

- (void)setHasConnectedAddressIndex:(BOOL)a3
{
  v3 = 64;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFBFLL | v3;
}

- (int)connectedInterfaceType
{
  if ((*(&self->_has + 4) & 0x40) != 0)
  {
    return self->_connectedInterfaceType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasConnectedInterfaceType:(BOOL)a3
{
  v3 = 0x4000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFBFFFFFFFFFLL | v3;
}

- (int)StringAsConnectedInterfaceType:(id)a3
{
  if ([a3 isEqualToString:@"NW_INTERFACE_TYPE_OTHER"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"NW_INTERFACE_TYPE_WIFI"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"NW_INTERFACE_TYPE_CELLULAR"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"NW_INTERFACE_TYPE_WIRED"])
  {
    return 3;
  }

  return 0;
}

- (void)setHasConnectionReuseCount:(BOOL)a3
{
  v3 = 128;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFF7FLL | v3;
}

- (void)setHasDataStallCount:(BOOL)a3
{
  v3 = 512;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFDFFLL | v3;
}

- (int)connectionMode
{
  if ((*(&self->_has + 4) & 0x80) != 0)
  {
    return self->_connectionMode;
  }

  else
  {
    return 0;
  }
}

- (void)setHasConnectionMode:(BOOL)a3
{
  v3 = 0x8000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFF7FFFFFFFFFLL | v3;
}

- (int)StringAsConnectionMode:(id)a3
{
  if ([a3 isEqualToString:@"NW_CONNECTION_MODE_NONE"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"NW_CONNECTION_MODE_STREAM"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"NW_CONNECTION_MODE_DATAGRAM"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"NW_CONNECTION_MODE_MESSAGE"])
  {
    return 3;
  }

  return 0;
}

- (int)appleHost
{
  if ((*(&self->_has + 4) & 0x10) != 0)
  {
    return self->_appleHost;
  }

  else
  {
    return 0;
  }
}

- (void)setHasAppleHost:(BOOL)a3
{
  v3 = 0x1000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFEFFFFFFFFFLL | v3;
}

- (int)StringAsAppleHost:(id)a3
{
  if ([a3 isEqualToString:@"NW_APPLE_HOST_NONE"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"NW_APPLE_HOST_APPLE_COM"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"NW_APPLE_HOST_ICLOUD_COM"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"NW_APPLE_HOST_MZSTATIC_COM"])
  {
    return 3;
  }

  if ([a3 isEqualToString:@"NW_APPLE_HOST_ME_COM"])
  {
    return 4;
  }

  return 0;
}

- (int)appleApp
{
  if ((*(&self->_has + 4) & 8) != 0)
  {
    return self->_appleApp;
  }

  else
  {
    return 0;
  }
}

- (void)setHasAppleApp:(BOOL)a3
{
  v3 = 0x800000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFF7FFFFFFFFLL | v3;
}

- (int)StringAsAppleApp:(id)a3
{
  if ([a3 isEqualToString:@"NW_APPLE_APP_NONE"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"NW_APPLE_APP_MESSAGES"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"NW_APPLE_APP_SAFARI"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"NW_APPLE_APP_MAIL"])
  {
    return 3;
  }

  if ([a3 isEqualToString:@"NW_APPLE_APP_MAPS"])
  {
    return 4;
  }

  if ([a3 isEqualToString:@"NW_APPLE_APP_PHOTOS"])
  {
    return 5;
  }

  if ([a3 isEqualToString:@"NW_APPLE_APP_MUSIC"])
  {
    return 6;
  }

  if ([a3 isEqualToString:@"NW_APPLE_APP_APP_STORE"])
  {
    return 7;
  }

  if ([a3 isEqualToString:@"NW_APPLE_APP_ITUNES_STORE"])
  {
    return 8;
  }

  if ([a3 isEqualToString:@"NW_APPLE_APP_SIRI"])
  {
    return 9;
  }

  return 0;
}

- (int)tlsVersion
{
  if ((*(&self->_has + 5) & 0x20) != 0)
  {
    return self->_tlsVersion;
  }

  else
  {
    return 0;
  }
}

- (void)setHasTlsVersion:(BOOL)a3
{
  v3 = 0x200000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFDFFFFFFFFFFFLL | v3;
}

- (int)StringAsTlsVersion:(id)a3
{
  if ([a3 isEqualToString:@"NW_TLS_VERSION_NONE"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"NW_TLS_VERSION_SSL_3"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"NW_TLS_VERSION_TLS_1_0"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"NW_TLS_VERSION_TLS_1_1"])
  {
    return 3;
  }

  if ([a3 isEqualToString:@"NW_TLS_VERSION_TLS_1_2"])
  {
    return 4;
  }

  if ([a3 isEqualToString:@"NW_TLS_VERSION_TLS_1_3"])
  {
    return 5;
  }

  if ([a3 isEqualToString:@"NW_TLS_VERSION_DTLS_1_0"])
  {
    return 6;
  }

  return 0;
}

- (int)stackLevel
{
  if ((*(&self->_has + 5) & 0x10) != 0)
  {
    return self->_stackLevel;
  }

  else
  {
    return 0;
  }
}

- (void)setHasStackLevel:(BOOL)a3
{
  v3 = 0x100000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFEFFFFFFFFFFFLL | v3;
}

- (int)StringAsStackLevel:(id)a3
{
  if ([a3 isEqualToString:@"NW_STACK_LEVEL_UNDEFINED"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"NW_STACK_LEVEL_APPLICATION_SOCKET"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"NW_STACK_LEVEL_APPLICATION"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"NW_STACK_LEVEL_TRANSPORT"])
  {
    return 3;
  }

  if ([a3 isEqualToString:@"NW_STACK_LEVEL_INTERNET"])
  {
    return 4;
  }

  if ([a3 isEqualToString:@"NW_STACK_LEVEL_LINK"])
  {
    return 5;
  }

  return 0;
}

- (void)setHasIpv4Available:(BOOL)a3
{
  v3 = 0x8000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7FFFFFFFFFFFFLL | v3;
}

- (void)setHasIpv6Available:(BOOL)a3
{
  v3 = 0x10000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEFFFFFFFFFFFFFLL | v3;
}

- (void)setHasIpv4DNSServerCount:(BOOL)a3
{
  v3 = 0x2000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFDFFFLL | v3;
}

- (void)setHasIpv6DNSServerCount:(BOOL)a3
{
  v3 = 0x8000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFF7FFFLL | v3;
}

- (void)setHasTlsVersionTimeout:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 8) = *(&self->_has + 8) & 0xF7 | v3;
}

- (void)setHasSynthesizedExtraIPv6Address:(BOOL)a3
{
  v3 = 0x1000000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasBytesIn:(BOOL)a3
{
  v3 = 4;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFFBLL | v3;
}

- (void)setHasBytesOut:(BOOL)a3
{
  v3 = 8;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFF7 | v3;
}

- (void)setHasBytesDuplicate:(BOOL)a3
{
  v3 = 2;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFFDLL | v3;
}

- (void)setHasBytesOutOfOrder:(BOOL)a3
{
  v3 = 16;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFEFLL | v3;
}

- (void)setHasBytesRetransmitted:(BOOL)a3
{
  v3 = 32;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFDFLL | v3;
}

- (void)setHasPacketsIn:(BOOL)a3
{
  v3 = 0x800000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFF7FFFFFLL | v3;
}

- (void)setHasPacketsOut:(BOOL)a3
{
  v3 = 0x1000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFEFFFFFFLL | v3;
}

- (void)setHasCurrentRTT:(BOOL)a3
{
  v3 = 256;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFEFFLL | v3;
}

- (void)setHasSmoothedRTT:(BOOL)a3
{
  v3 = 0x40000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFBFFFFFFFLL | v3;
}

- (void)setHasRTTvariance:(BOOL)a3
{
  v3 = 0x8000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFF7FFFFFFLL | v3;
}

- (void)setHasSynRetransmissionCount:(BOOL)a3
{
  v3 = 0x80000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFF7FFFFFFFLL | v3;
}

- (void)setHasMultipathServiceType:(BOOL)a3
{
  v3 = 0x400000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFBFFFFFLL | v3;
}

- (void)setHasFirstParty:(BOOL)a3
{
  v3 = 0x4000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFBFFFFFFFFFFFFLL | v3;
}

- (void)setHasMultipathBytesInCell:(BOOL)a3
{
  v3 = 0x10000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFEFFFFLL | v3;
}

- (void)setHasMultipathBytesOutCell:(BOOL)a3
{
  v3 = 0x80000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFF7FFFFLL | v3;
}

- (void)setHasMultipathBytesInWiFi:(BOOL)a3
{
  v3 = 0x40000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFBFFFFLL | v3;
}

- (void)setHasMultipathBytesOutWiFi:(BOOL)a3
{
  v3 = 0x200000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFDFFFFFLL | v3;
}

- (void)setHasMultipathBytesInInitial:(BOOL)a3
{
  v3 = 0x20000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFDFFFFLL | v3;
}

- (void)setHasMultipathBytesOutInitial:(BOOL)a3
{
  v3 = 0x100000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFEFFFFFLL | v3;
}

- (void)setHasSecondsSinceInterfaceChange:(BOOL)a3
{
  v3 = 0x20000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFDFFFFFFFLL | v3;
}

- (void)setHasIsDaemon:(BOOL)a3
{
  v3 = 0x20000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDFFFFFFFFFFFFFLL | v3;
}

- (void)addActivities:(id)a3
{
  activities = self->_activities;
  if (!activities)
  {
    activities = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_activities = activities;
  }

  [(NSMutableArray *)activities addObject:a3];
}

- (void)setHasTlsHandshakeTimedOut:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 8) = *(&self->_has + 8) & 0xFB | v3;
}

- (void)setHasIsPathExpensive:(BOOL)a3
{
  v3 = 0x80000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7FFFFFFFFFFFFFLL | v3;
}

- (void)setHasIsPathConstrained:(BOOL)a3
{
  v3 = 0x40000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBFFFFFFFFFFFFFLL | v3;
}

- (void)setHasProhibitsExpensive:(BOOL)a3
{
  v3 = 0x400000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasProhibitsConstrained:(BOOL)a3
{
  v3 = 0x200000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFFFFFFFFFFFFFFLL | v3;
}

- (int)transportProtocol
{
  if ((*(&self->_has + 5) & 0x40) != 0)
  {
    return self->_transportProtocol;
  }

  else
  {
    return 0;
  }
}

- (void)setHasTransportProtocol:(BOOL)a3
{
  v3 = 0x400000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFBFFFFFFFFFFFLL | v3;
}

- (int)StringAsTransportProtocol:(id)a3
{
  if ([a3 isEqualToString:@"NW_TRANSPORT_PROTOCOL_UNKNOWN"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"NW_TRANSPORT_PROTOCOL_TCP"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"NW_TRANSPORT_PROTOCOL_UDP"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"NW_TRANSPORT_PROTOCOL_QUIC"])
  {
    return 3;
  }

  return 0;
}

- (int)dnsProtocol
{
  if (*(&self->_has + 5))
  {
    return self->_dnsProtocol;
  }

  else
  {
    return 0;
  }
}

- (void)setHasDnsProtocol:(BOOL)a3
{
  v3 = 0x10000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFEFFFFFFFFFFLL | v3;
}

- (int)StringAsDnsProtocol:(id)a3
{
  if ([a3 isEqualToString:@"NW_DNS_PROTOCOL_UNKNOWN"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"NW_DNS_PROTOCOL_UDP"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"NW_DNS_PROTOCOL_TCP"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"NW_DNS_PROTOCOL_TLS"])
  {
    return 3;
  }

  if ([a3 isEqualToString:@"NW_DNS_PROTOCOL_HTTPS"])
  {
    return 4;
  }

  return 0;
}

- (int)dnsProvider
{
  if ((*(&self->_has + 5) & 2) != 0)
  {
    return self->_dnsProvider;
  }

  else
  {
    return 0;
  }
}

- (void)setHasDnsProvider:(BOOL)a3
{
  v3 = 0x20000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFDFFFFFFFFFFLL | v3;
}

- (int)StringAsDnsProvider:(id)a3
{
  if ([a3 isEqualToString:@"NW_DNS_PROVIDER_UNKNOWN"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"NW_DNS_PROVIDER_CLOUDFLARE"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"NW_DNS_PROVIDER_GOOGLE"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"NW_DNS_PROVIDER_QUAD9"])
  {
    return 3;
  }

  return 0;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDNWConnectionReport;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDNWConnectionReport description](&v3, sel_description), -[AWDNWConnectionReport dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  p_has = &self->_has;
  if (*(&self->_has + 4))
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  if ((*(&self->_has + 8) & 0x10) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_triggeredPath), @"triggeredPath"}];
  }

  v5 = *p_has;
  if ((*p_has & 0x4000000000000000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_systemProxyConfigured), @"systemProxyConfigured"}];
    v5 = *p_has;
    if ((*p_has & 0x1000000000000) == 0)
    {
LABEL_7:
      if ((v5 & 0x800000000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_99;
    }
  }

  else if ((v5 & 0x1000000000000) == 0)
  {
    goto LABEL_7;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_customProxyConfigured), @"customProxyConfigured"}];
  v5 = *p_has;
  if ((*p_has & 0x800000000000) == 0)
  {
LABEL_8:
    if ((v5 & 0x2000000000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_99:
  usedProxyType = self->_usedProxyType;
  if (usedProxyType >= 5)
  {
    v18 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_usedProxyType];
  }

  else
  {
    v18 = off_29EE327B0[usedProxyType];
  }

  [v3 setObject:v18 forKey:@"usedProxyType"];
  if ((*p_has & 0x2000000000000) != 0)
  {
LABEL_9:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_fallbackEligible), @"fallbackEligible"}];
  }

LABEL_10:
  v6 = *(&self->_has + 8);
  if ((v6 & 0x40) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_weakFallback), @"weakFallback"}];
    v6 = *(&self->_has + 8);
  }

  if ((v6 & 0x20) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_usedFallback), @"usedFallback"}];
  }

  if ((*(&self->_has + 7) & 8) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_resolutionRequired), @"resolutionRequired"}];
  }

  if ((*(&self->_has + 8) & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_tlsConfigured), @"tlsConfigured"}];
  }

  v7 = *p_has;
  if ((*p_has & 0x8000000000000000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_tfoConfigured), @"tfoConfigured"}];
    v7 = *p_has;
    if ((*p_has & 0x100000000000000) == 0)
    {
LABEL_20:
      if ((v7 & 0x400000000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_132;
    }
  }

  else if ((v7 & 0x100000000000000) == 0)
  {
    goto LABEL_20;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_multipathConfigured), @"multipathConfigured"}];
  v7 = *p_has;
  if ((*p_has & 0x400000000) == 0)
  {
LABEL_21:
    if ((v7 & 0x40000000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_133;
  }

LABEL_132:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_trafficClass), @"trafficClass"}];
  v7 = *p_has;
  if ((*p_has & 0x40000000000) == 0)
  {
LABEL_22:
    if ((v7 & 0x2000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_144;
  }

LABEL_133:
  failureReason = self->_failureReason;
  if (failureReason >= 5)
  {
    v22 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_failureReason];
  }

  else
  {
    v22 = off_29EE327D8[failureReason];
  }

  [v3 setObject:v22 forKey:@"failureReason"];
  v7 = *p_has;
  if ((*p_has & 0x2000000) == 0)
  {
LABEL_23:
    if ((v7 & 0x10000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_145;
  }

LABEL_144:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_pathTriggerMilliseconds), @"pathTriggerMilliseconds"}];
  v7 = *p_has;
  if ((*p_has & 0x10000000) == 0)
  {
LABEL_24:
    if ((v7 & 0x4000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_146;
  }

LABEL_145:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_resolutionMilliseconds), @"resolutionMilliseconds"}];
  v7 = *p_has;
  if ((*p_has & 0x4000000) == 0)
  {
LABEL_25:
    if ((v7 & 0x400) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_147;
  }

LABEL_146:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_proxyMilliseconds), @"proxyMilliseconds"}];
  v7 = *p_has;
  if ((*p_has & 0x400) == 0)
  {
LABEL_26:
    if ((v7 & 0x200000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_148;
  }

LABEL_147:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_flowConnectMilliseconds), @"flowConnectMilliseconds"}];
  v7 = *p_has;
  if ((*p_has & 0x200000000) == 0)
  {
LABEL_27:
    if ((v7 & 0x800) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_149;
  }

LABEL_148:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tlsMilliseconds), @"tlsMilliseconds"}];
  v7 = *p_has;
  if ((*p_has & 0x800) == 0)
  {
LABEL_28:
    if ((v7 & 0x1000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_150;
  }

LABEL_149:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_flowDurationMilliseconds), @"flowDurationMilliseconds"}];
  v7 = *p_has;
  if ((*p_has & 0x1000) == 0)
  {
LABEL_29:
    if ((v7 & 0x4000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_151;
  }

LABEL_150:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_ipv4AddressCount), @"ipv4AddressCount"}];
  v7 = *p_has;
  if ((*p_has & 0x4000) == 0)
  {
LABEL_30:
    if ((v7 & 0x2000000000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_152;
  }

LABEL_151:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_ipv6AddressCount), @"ipv6AddressCount"}];
  v7 = *p_has;
  if ((*p_has & 0x2000000000000000) == 0)
  {
LABEL_31:
    if ((v7 & 0x80000000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_153;
  }

LABEL_152:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_synthesizedIPv6Address), @"synthesizedIPv6Address"}];
  v7 = *p_has;
  if ((*p_has & 0x80000000000) == 0)
  {
LABEL_32:
    if ((v7 & 0x2000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_161;
  }

LABEL_153:
  firstAddressFamily = self->_firstAddressFamily;
  if (firstAddressFamily >= 3)
  {
    v26 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_firstAddressFamily];
  }

  else
  {
    v26 = off_29EE32800[firstAddressFamily];
  }

  [v3 setObject:v26 forKey:@"firstAddressFamily"];
  v7 = *p_has;
  if ((*p_has & 0x2000000000) == 0)
  {
LABEL_33:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_172;
  }

LABEL_161:
  connectedAddressFamily = self->_connectedAddressFamily;
  if (connectedAddressFamily >= 3)
  {
    v30 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_connectedAddressFamily];
  }

  else
  {
    v30 = off_29EE32800[connectedAddressFamily];
  }

  [v3 setObject:v30 forKey:@"connectedAddressFamily"];
  v7 = *p_has;
  if ((*p_has & 0x40) == 0)
  {
LABEL_34:
    if ((v7 & 0x4000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_173;
  }

LABEL_172:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_connectedAddressIndex), @"connectedAddressIndex"}];
  v7 = *p_has;
  if ((*p_has & 0x4000000000) == 0)
  {
LABEL_35:
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_177;
  }

LABEL_173:
  connectedInterfaceType = self->_connectedInterfaceType;
  if (connectedInterfaceType >= 4)
  {
    v35 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_connectedInterfaceType];
  }

  else
  {
    v35 = off_29EE32818[connectedInterfaceType];
  }

  [v3 setObject:v35 forKey:@"connectedInterfaceType"];
  v7 = *p_has;
  if ((*p_has & 0x80) == 0)
  {
LABEL_36:
    if ((v7 & 0x200) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_178;
  }

LABEL_177:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_connectionReuseCount), @"connectionReuseCount"}];
  v7 = *p_has;
  if ((*p_has & 0x200) == 0)
  {
LABEL_37:
    if ((v7 & 0x8000000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_179;
  }

LABEL_178:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_dataStallCount), @"dataStallCount"}];
  v7 = *p_has;
  if ((*p_has & 0x8000000000) == 0)
  {
LABEL_38:
    if ((v7 & 0x1000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_183;
  }

LABEL_179:
  connectionMode = self->_connectionMode;
  if (connectionMode >= 4)
  {
    v37 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_connectionMode];
  }

  else
  {
    v37 = off_29EE32838[connectionMode];
  }

  [v3 setObject:v37 forKey:@"connectionMode"];
  v7 = *p_has;
  if ((*p_has & 0x1000000000) == 0)
  {
LABEL_39:
    if ((v7 & 0x800000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_187;
  }

LABEL_183:
  appleHost = self->_appleHost;
  if (appleHost >= 5)
  {
    v39 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_appleHost];
  }

  else
  {
    v39 = off_29EE32858[appleHost];
  }

  [v3 setObject:v39 forKey:@"appleHost"];
  v7 = *p_has;
  if ((*p_has & 0x800000000) == 0)
  {
LABEL_40:
    if ((v7 & 0x200000000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_191;
  }

LABEL_187:
  appleApp = self->_appleApp;
  if (appleApp >= 0xA)
  {
    v41 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_appleApp];
  }

  else
  {
    v41 = off_29EE32880[appleApp];
  }

  [v3 setObject:v41 forKey:@"appleApp"];
  v7 = *p_has;
  if ((*p_has & 0x200000000000) == 0)
  {
LABEL_41:
    if ((v7 & 0x100000000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_195;
  }

LABEL_191:
  tlsVersion = self->_tlsVersion;
  if (tlsVersion >= 7)
  {
    v43 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_tlsVersion];
  }

  else
  {
    v43 = off_29EE328D0[tlsVersion];
  }

  [v3 setObject:v43 forKey:@"tlsVersion"];
  v7 = *p_has;
  if ((*p_has & 0x100000000000) == 0)
  {
LABEL_42:
    if ((v7 & 0x8000000000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_199;
  }

LABEL_195:
  stackLevel = self->_stackLevel;
  if (stackLevel >= 6)
  {
    v45 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_stackLevel];
  }

  else
  {
    v45 = off_29EE32908[stackLevel];
  }

  [v3 setObject:v45 forKey:@"stackLevel"];
  v7 = *p_has;
  if ((*p_has & 0x8000000000000) == 0)
  {
LABEL_43:
    if ((v7 & 0x10000000000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_200;
  }

LABEL_199:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_ipv4Available), @"ipv4Available"}];
  v7 = *p_has;
  if ((*p_has & 0x10000000000000) == 0)
  {
LABEL_44:
    if ((v7 & 0x2000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_201;
  }

LABEL_200:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_ipv6Available), @"ipv6Available"}];
  v7 = *p_has;
  if ((*p_has & 0x2000) == 0)
  {
LABEL_45:
    if ((v7 & 0x8000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

LABEL_201:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_ipv4DNSServerCount), @"ipv4DNSServerCount"}];
  if ((*p_has & 0x8000) != 0)
  {
LABEL_46:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_ipv6DNSServerCount), @"ipv6DNSServerCount"}];
  }

LABEL_47:
  if ((*(&self->_has + 8) & 8) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_tlsVersionTimeout), @"tlsVersionTimeout"}];
  }

  v8 = *p_has;
  if ((*p_has & 0x1000000000000000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_synthesizedExtraIPv6Address), @"synthesizedExtraIPv6Address"}];
    v8 = *p_has;
    if ((*p_has & 4) == 0)
    {
LABEL_51:
      if ((v8 & 8) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_103;
    }
  }

  else if ((v8 & 4) == 0)
  {
    goto LABEL_51;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_bytesIn), @"bytesIn"}];
  v8 = *p_has;
  if ((*p_has & 8) == 0)
  {
LABEL_52:
    if ((v8 & 2) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_104;
  }

LABEL_103:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_bytesOut), @"bytesOut"}];
  v8 = *p_has;
  if ((*p_has & 2) == 0)
  {
LABEL_53:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_105;
  }

LABEL_104:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_bytesDuplicate), @"bytesDuplicate"}];
  v8 = *p_has;
  if ((*p_has & 0x10) == 0)
  {
LABEL_54:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_106;
  }

LABEL_105:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_bytesOutOfOrder), @"bytesOutOfOrder"}];
  v8 = *p_has;
  if ((*p_has & 0x20) == 0)
  {
LABEL_55:
    if ((v8 & 0x800000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_107;
  }

LABEL_106:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_bytesRetransmitted), @"bytesRetransmitted"}];
  v8 = *p_has;
  if ((*p_has & 0x800000) == 0)
  {
LABEL_56:
    if ((v8 & 0x1000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_108;
  }

LABEL_107:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_packetsIn), @"packetsIn"}];
  v8 = *p_has;
  if ((*p_has & 0x1000000) == 0)
  {
LABEL_57:
    if ((v8 & 0x100) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_109;
  }

LABEL_108:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_packetsOut), @"packetsOut"}];
  v8 = *p_has;
  if ((*p_has & 0x100) == 0)
  {
LABEL_58:
    if ((v8 & 0x40000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_110;
  }

LABEL_109:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_currentRTT), @"currentRTT"}];
  v8 = *p_has;
  if ((*p_has & 0x40000000) == 0)
  {
LABEL_59:
    if ((v8 & 1) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_111;
  }

LABEL_110:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_smoothedRTT), @"smoothedRTT"}];
  v8 = *p_has;
  if ((*p_has & 1) == 0)
  {
LABEL_60:
    if ((v8 & 0x8000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_112;
  }

LABEL_111:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_bestRTT), @"bestRTT"}];
  v8 = *p_has;
  if ((*p_has & 0x8000000) == 0)
  {
LABEL_61:
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

LABEL_112:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rTTvariance), @"RTTvariance"}];
  if ((*p_has & 0x80000000) != 0)
  {
LABEL_62:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_synRetransmissionCount), @"synRetransmissionCount"}];
  }

LABEL_63:
  if (*(&self->_has + 8))
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_tfoUsed), @"tfoUsed"}];
  }

  v9 = *p_has;
  if ((*p_has & 0x400000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_multipathServiceType), @"multipathServiceType"}];
    v9 = *p_has;
    if ((*p_has & 0x4000000000000) == 0)
    {
LABEL_67:
      if ((v9 & 0x10000) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_116;
    }
  }

  else if ((v9 & 0x4000000000000) == 0)
  {
    goto LABEL_67;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_firstParty), @"firstParty"}];
  v9 = *p_has;
  if ((*p_has & 0x10000) == 0)
  {
LABEL_68:
    if ((v9 & 0x80000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_117;
  }

LABEL_116:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_multipathBytesInCell), @"multipathBytesInCell"}];
  v9 = *p_has;
  if ((*p_has & 0x80000) == 0)
  {
LABEL_69:
    if ((v9 & 0x40000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_118;
  }

LABEL_117:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_multipathBytesOutCell), @"multipathBytesOutCell"}];
  v9 = *p_has;
  if ((*p_has & 0x40000) == 0)
  {
LABEL_70:
    if ((v9 & 0x200000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_119;
  }

LABEL_118:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_multipathBytesInWiFi), @"multipathBytesInWiFi"}];
  v9 = *p_has;
  if ((*p_has & 0x200000) == 0)
  {
LABEL_71:
    if ((v9 & 0x20000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_120;
  }

LABEL_119:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_multipathBytesOutWiFi), @"multipathBytesOutWiFi"}];
  v9 = *p_has;
  if ((*p_has & 0x20000) == 0)
  {
LABEL_72:
    if ((v9 & 0x100000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_121;
  }

LABEL_120:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_multipathBytesInInitial), @"multipathBytesInInitial"}];
  v9 = *p_has;
  if ((*p_has & 0x100000) == 0)
  {
LABEL_73:
    if ((v9 & 0x20000000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_122;
  }

LABEL_121:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_multipathBytesOutInitial), @"multipathBytesOutInitial"}];
  v9 = *p_has;
  if ((*p_has & 0x20000000) == 0)
  {
LABEL_74:
    if ((v9 & 0x20000000000000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_75;
  }

LABEL_122:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_secondsSinceInterfaceChange), @"secondsSinceInterfaceChange"}];
  if ((*p_has & 0x20000000000000) != 0)
  {
LABEL_75:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_isDaemon), @"isDaemon"}];
  }

LABEL_76:
  processName = self->_processName;
  if (processName)
  {
    [v3 setObject:processName forKey:@"processName"];
  }

  activities = self->_activities;
  if (activities)
  {
    [v3 setObject:activities forKey:@"activities"];
  }

  connectionUUID = self->_connectionUUID;
  if (connectionUUID)
  {
    [v3 setObject:connectionUUID forKey:@"connectionUUID"];
  }

  if ((*(&self->_has + 8) & 4) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_tlsHandshakeTimedOut), @"tlsHandshakeTimedOut"}];
  }

  v13 = *p_has;
  if ((*p_has & 0x80000000000000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_isPathExpensive), @"isPathExpensive"}];
    v13 = *p_has;
    if ((*p_has & 0x40000000000000) == 0)
    {
LABEL_86:
      if ((v13 & 0x400000000000000) == 0)
      {
        goto LABEL_87;
      }

      goto LABEL_126;
    }
  }

  else if ((v13 & 0x40000000000000) == 0)
  {
    goto LABEL_86;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_isPathConstrained), @"isPathConstrained"}];
  v13 = *p_has;
  if ((*p_has & 0x400000000000000) == 0)
  {
LABEL_87:
    if ((v13 & 0x200000000000000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_88;
  }

LABEL_126:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_prohibitsExpensive), @"prohibitsExpensive"}];
  if ((*p_has & 0x200000000000000) != 0)
  {
LABEL_88:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_prohibitsConstrained), @"prohibitsConstrained"}];
  }

LABEL_89:
  l2Report = self->_l2Report;
  if (l2Report)
  {
    [v3 setObject:-[AWDNWL2Report dictionaryRepresentation](l2Report forKey:{"dictionaryRepresentation"), @"l2Report"}];
  }

  deviceReport = self->_deviceReport;
  if (deviceReport)
  {
    [v3 setObject:-[AWDNWDeviceReport dictionaryRepresentation](deviceReport forKey:{"dictionaryRepresentation"), @"deviceReport"}];
  }

  v16 = *p_has;
  if ((*p_has & 0x400000000000) != 0)
  {
    transportProtocol = self->_transportProtocol;
    if (transportProtocol >= 4)
    {
      v20 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_transportProtocol];
    }

    else
    {
      v20 = off_29EE32938[transportProtocol];
    }

    [v3 setObject:v20 forKey:@"transportProtocol"];
    v16 = *p_has;
    if ((*p_has & 0x10000000000) == 0)
    {
LABEL_95:
      if ((v16 & 0x20000000000) == 0)
      {
        goto LABEL_165;
      }

      goto LABEL_157;
    }
  }

  else if ((v16 & 0x10000000000) == 0)
  {
    goto LABEL_95;
  }

  dnsProtocol = self->_dnsProtocol;
  if (dnsProtocol >= 5)
  {
    v24 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_dnsProtocol];
  }

  else
  {
    v24 = off_29EE32958[dnsProtocol];
  }

  [v3 setObject:v24 forKey:@"dnsProtocol"];
  if ((*p_has & 0x20000000000) != 0)
  {
LABEL_157:
    dnsProvider = self->_dnsProvider;
    if (dnsProvider >= 4)
    {
      v28 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_dnsProvider];
    }

    else
    {
      v28 = off_29EE32980[dnsProvider];
    }

    [v3 setObject:v28 forKey:@"dnsProvider"];
  }

LABEL_165:
  bundleID = self->_bundleID;
  if (bundleID)
  {
    [v3 setObject:bundleID forKey:@"bundleID"];
  }

  effectiveBundleID = self->_effectiveBundleID;
  if (effectiveBundleID)
  {
    [v3 setObject:effectiveBundleID forKey:@"effectiveBundleID"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v95 = *MEMORY[0x29EDCA608];
  p_has = &self->_has;
  if (*(&self->_has + 4))
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if ((*(p_has + 8) & 0x10) != 0)
  {
    triggeredPath = self->_triggeredPath;
    PBDataWriterWriteBOOLField();
  }

  v7 = *p_has;
  if ((*p_has & 0x4000000000000000) != 0)
  {
    systemProxyConfigured = self->_systemProxyConfigured;
    PBDataWriterWriteBOOLField();
    v7 = *p_has;
    if ((*p_has & 0x1000000000000) == 0)
    {
LABEL_7:
      if ((v7 & 0x800000000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_109;
    }
  }

  else if ((v7 & 0x1000000000000) == 0)
  {
    goto LABEL_7;
  }

  customProxyConfigured = self->_customProxyConfigured;
  PBDataWriterWriteBOOLField();
  v7 = *p_has;
  if ((*p_has & 0x800000000000) == 0)
  {
LABEL_8:
    if ((v7 & 0x2000000000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_109:
  usedProxyType = self->_usedProxyType;
  PBDataWriterWriteInt32Field();
  if ((*p_has & 0x2000000000000) != 0)
  {
LABEL_9:
    fallbackEligible = self->_fallbackEligible;
    PBDataWriterWriteBOOLField();
  }

LABEL_10:
  v9 = *(p_has + 8);
  if ((v9 & 0x40) != 0)
  {
    weakFallback = self->_weakFallback;
    PBDataWriterWriteBOOLField();
    v9 = *(p_has + 8);
  }

  if ((v9 & 0x20) != 0)
  {
    usedFallback = self->_usedFallback;
    PBDataWriterWriteBOOLField();
  }

  if ((*(p_has + 7) & 8) != 0)
  {
    resolutionRequired = self->_resolutionRequired;
    PBDataWriterWriteBOOLField();
  }

  if ((*(p_has + 8) & 2) != 0)
  {
    tlsConfigured = self->_tlsConfigured;
    PBDataWriterWriteBOOLField();
  }

  v14 = *p_has;
  if ((*p_has & 0x8000000000000000) != 0)
  {
    tfoConfigured = self->_tfoConfigured;
    PBDataWriterWriteBOOLField();
    v14 = *p_has;
    if ((*p_has & 0x100000000000000) == 0)
    {
LABEL_20:
      if ((v14 & 0x400000000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_143;
    }
  }

  else if ((v14 & 0x100000000000000) == 0)
  {
    goto LABEL_20;
  }

  multipathConfigured = self->_multipathConfigured;
  PBDataWriterWriteBOOLField();
  v14 = *p_has;
  if ((*p_has & 0x400000000) == 0)
  {
LABEL_21:
    if ((v14 & 0x40000000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_144;
  }

LABEL_143:
  trafficClass = self->_trafficClass;
  PBDataWriterWriteUint64Field();
  v14 = *p_has;
  if ((*p_has & 0x40000000000) == 0)
  {
LABEL_22:
    if ((v14 & 0x2000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_145;
  }

LABEL_144:
  failureReason = self->_failureReason;
  PBDataWriterWriteInt32Field();
  v14 = *p_has;
  if ((*p_has & 0x2000000) == 0)
  {
LABEL_23:
    if ((v14 & 0x10000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_146;
  }

LABEL_145:
  pathTriggerMilliseconds = self->_pathTriggerMilliseconds;
  PBDataWriterWriteUint64Field();
  v14 = *p_has;
  if ((*p_has & 0x10000000) == 0)
  {
LABEL_24:
    if ((v14 & 0x4000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_147;
  }

LABEL_146:
  resolutionMilliseconds = self->_resolutionMilliseconds;
  PBDataWriterWriteUint64Field();
  v14 = *p_has;
  if ((*p_has & 0x4000000) == 0)
  {
LABEL_25:
    if ((v14 & 0x400) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_148;
  }

LABEL_147:
  proxyMilliseconds = self->_proxyMilliseconds;
  PBDataWriterWriteUint64Field();
  v14 = *p_has;
  if ((*p_has & 0x400) == 0)
  {
LABEL_26:
    if ((v14 & 0x200000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_149;
  }

LABEL_148:
  flowConnectMilliseconds = self->_flowConnectMilliseconds;
  PBDataWriterWriteUint64Field();
  v14 = *p_has;
  if ((*p_has & 0x200000000) == 0)
  {
LABEL_27:
    if ((v14 & 0x800) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_150;
  }

LABEL_149:
  tlsMilliseconds = self->_tlsMilliseconds;
  PBDataWriterWriteUint64Field();
  v14 = *p_has;
  if ((*p_has & 0x800) == 0)
  {
LABEL_28:
    if ((v14 & 0x1000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_151;
  }

LABEL_150:
  flowDurationMilliseconds = self->_flowDurationMilliseconds;
  PBDataWriterWriteUint64Field();
  v14 = *p_has;
  if ((*p_has & 0x1000) == 0)
  {
LABEL_29:
    if ((v14 & 0x4000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_152;
  }

LABEL_151:
  ipv4AddressCount = self->_ipv4AddressCount;
  PBDataWriterWriteUint64Field();
  v14 = *p_has;
  if ((*p_has & 0x4000) == 0)
  {
LABEL_30:
    if ((v14 & 0x2000000000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_153;
  }

LABEL_152:
  ipv6AddressCount = self->_ipv6AddressCount;
  PBDataWriterWriteUint64Field();
  v14 = *p_has;
  if ((*p_has & 0x2000000000000000) == 0)
  {
LABEL_31:
    if ((v14 & 0x80000000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_154;
  }

LABEL_153:
  synthesizedIPv6Address = self->_synthesizedIPv6Address;
  PBDataWriterWriteBOOLField();
  v14 = *p_has;
  if ((*p_has & 0x80000000000) == 0)
  {
LABEL_32:
    if ((v14 & 0x2000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_155;
  }

LABEL_154:
  firstAddressFamily = self->_firstAddressFamily;
  PBDataWriterWriteInt32Field();
  v14 = *p_has;
  if ((*p_has & 0x2000000000) == 0)
  {
LABEL_33:
    if ((v14 & 0x40) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_156;
  }

LABEL_155:
  connectedAddressFamily = self->_connectedAddressFamily;
  PBDataWriterWriteInt32Field();
  v14 = *p_has;
  if ((*p_has & 0x40) == 0)
  {
LABEL_34:
    if ((v14 & 0x4000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_157;
  }

LABEL_156:
  connectedAddressIndex = self->_connectedAddressIndex;
  PBDataWriterWriteUint64Field();
  v14 = *p_has;
  if ((*p_has & 0x4000000000) == 0)
  {
LABEL_35:
    if ((v14 & 0x80) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_158;
  }

LABEL_157:
  connectedInterfaceType = self->_connectedInterfaceType;
  PBDataWriterWriteInt32Field();
  v14 = *p_has;
  if ((*p_has & 0x80) == 0)
  {
LABEL_36:
    if ((v14 & 0x200) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_159;
  }

LABEL_158:
  connectionReuseCount = self->_connectionReuseCount;
  PBDataWriterWriteUint64Field();
  v14 = *p_has;
  if ((*p_has & 0x200) == 0)
  {
LABEL_37:
    if ((v14 & 0x8000000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_160;
  }

LABEL_159:
  dataStallCount = self->_dataStallCount;
  PBDataWriterWriteUint64Field();
  v14 = *p_has;
  if ((*p_has & 0x8000000000) == 0)
  {
LABEL_38:
    if ((v14 & 0x1000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_161;
  }

LABEL_160:
  connectionMode = self->_connectionMode;
  PBDataWriterWriteInt32Field();
  v14 = *p_has;
  if ((*p_has & 0x1000000000) == 0)
  {
LABEL_39:
    if ((v14 & 0x800000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_162;
  }

LABEL_161:
  appleHost = self->_appleHost;
  PBDataWriterWriteInt32Field();
  v14 = *p_has;
  if ((*p_has & 0x800000000) == 0)
  {
LABEL_40:
    if ((v14 & 0x200000000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_163;
  }

LABEL_162:
  appleApp = self->_appleApp;
  PBDataWriterWriteInt32Field();
  v14 = *p_has;
  if ((*p_has & 0x200000000000) == 0)
  {
LABEL_41:
    if ((v14 & 0x100000000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_164;
  }

LABEL_163:
  tlsVersion = self->_tlsVersion;
  PBDataWriterWriteInt32Field();
  v14 = *p_has;
  if ((*p_has & 0x100000000000) == 0)
  {
LABEL_42:
    if ((v14 & 0x8000000000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_165;
  }

LABEL_164:
  stackLevel = self->_stackLevel;
  PBDataWriterWriteInt32Field();
  v14 = *p_has;
  if ((*p_has & 0x8000000000000) == 0)
  {
LABEL_43:
    if ((v14 & 0x10000000000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_166;
  }

LABEL_165:
  ipv4Available = self->_ipv4Available;
  PBDataWriterWriteBOOLField();
  v14 = *p_has;
  if ((*p_has & 0x10000000000000) == 0)
  {
LABEL_44:
    if ((v14 & 0x2000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_167;
  }

LABEL_166:
  ipv6Available = self->_ipv6Available;
  PBDataWriterWriteBOOLField();
  v14 = *p_has;
  if ((*p_has & 0x2000) == 0)
  {
LABEL_45:
    if ((v14 & 0x8000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

LABEL_167:
  ipv4DNSServerCount = self->_ipv4DNSServerCount;
  PBDataWriterWriteUint64Field();
  if ((*p_has & 0x8000) != 0)
  {
LABEL_46:
    ipv6DNSServerCount = self->_ipv6DNSServerCount;
    PBDataWriterWriteUint64Field();
  }

LABEL_47:
  if ((*(p_has + 8) & 8) != 0)
  {
    tlsVersionTimeout = self->_tlsVersionTimeout;
    PBDataWriterWriteBOOLField();
  }

  v17 = *p_has;
  if ((*p_has & 0x1000000000000000) != 0)
  {
    synthesizedExtraIPv6Address = self->_synthesizedExtraIPv6Address;
    PBDataWriterWriteBOOLField();
    v17 = *p_has;
    if ((*p_has & 4) == 0)
    {
LABEL_51:
      if ((v17 & 8) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_113;
    }
  }

  else if ((v17 & 4) == 0)
  {
    goto LABEL_51;
  }

  bytesIn = self->_bytesIn;
  PBDataWriterWriteUint64Field();
  v17 = *p_has;
  if ((*p_has & 8) == 0)
  {
LABEL_52:
    if ((v17 & 2) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_114;
  }

LABEL_113:
  bytesOut = self->_bytesOut;
  PBDataWriterWriteUint64Field();
  v17 = *p_has;
  if ((*p_has & 2) == 0)
  {
LABEL_53:
    if ((v17 & 0x10) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_115;
  }

LABEL_114:
  bytesDuplicate = self->_bytesDuplicate;
  PBDataWriterWriteUint64Field();
  v17 = *p_has;
  if ((*p_has & 0x10) == 0)
  {
LABEL_54:
    if ((v17 & 0x20) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_116;
  }

LABEL_115:
  bytesOutOfOrder = self->_bytesOutOfOrder;
  PBDataWriterWriteUint64Field();
  v17 = *p_has;
  if ((*p_has & 0x20) == 0)
  {
LABEL_55:
    if ((v17 & 0x800000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_117;
  }

LABEL_116:
  bytesRetransmitted = self->_bytesRetransmitted;
  PBDataWriterWriteUint64Field();
  v17 = *p_has;
  if ((*p_has & 0x800000) == 0)
  {
LABEL_56:
    if ((v17 & 0x1000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_118;
  }

LABEL_117:
  packetsIn = self->_packetsIn;
  PBDataWriterWriteUint64Field();
  v17 = *p_has;
  if ((*p_has & 0x1000000) == 0)
  {
LABEL_57:
    if ((v17 & 0x100) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_119;
  }

LABEL_118:
  packetsOut = self->_packetsOut;
  PBDataWriterWriteUint64Field();
  v17 = *p_has;
  if ((*p_has & 0x100) == 0)
  {
LABEL_58:
    if ((v17 & 0x40000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_120;
  }

LABEL_119:
  currentRTT = self->_currentRTT;
  PBDataWriterWriteUint64Field();
  v17 = *p_has;
  if ((*p_has & 0x40000000) == 0)
  {
LABEL_59:
    if ((v17 & 1) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_121;
  }

LABEL_120:
  smoothedRTT = self->_smoothedRTT;
  PBDataWriterWriteUint64Field();
  v17 = *p_has;
  if ((*p_has & 1) == 0)
  {
LABEL_60:
    if ((v17 & 0x8000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_122;
  }

LABEL_121:
  bestRTT = self->_bestRTT;
  PBDataWriterWriteUint64Field();
  v17 = *p_has;
  if ((*p_has & 0x8000000) == 0)
  {
LABEL_61:
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

LABEL_122:
  rTTvariance = self->_rTTvariance;
  PBDataWriterWriteUint64Field();
  if ((*p_has & 0x80000000) != 0)
  {
LABEL_62:
    synRetransmissionCount = self->_synRetransmissionCount;
    PBDataWriterWriteUint64Field();
  }

LABEL_63:
  if (*(p_has + 8))
  {
    tfoUsed = self->_tfoUsed;
    PBDataWriterWriteBOOLField();
  }

  v20 = *p_has;
  if ((*p_has & 0x400000) != 0)
  {
    multipathServiceType = self->_multipathServiceType;
    PBDataWriterWriteUint64Field();
    v20 = *p_has;
    if ((*p_has & 0x4000000000000) == 0)
    {
LABEL_67:
      if ((v20 & 0x10000) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_126;
    }
  }

  else if ((v20 & 0x4000000000000) == 0)
  {
    goto LABEL_67;
  }

  firstParty = self->_firstParty;
  PBDataWriterWriteBOOLField();
  v20 = *p_has;
  if ((*p_has & 0x10000) == 0)
  {
LABEL_68:
    if ((v20 & 0x80000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_127;
  }

LABEL_126:
  multipathBytesInCell = self->_multipathBytesInCell;
  PBDataWriterWriteUint64Field();
  v20 = *p_has;
  if ((*p_has & 0x80000) == 0)
  {
LABEL_69:
    if ((v20 & 0x40000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_128;
  }

LABEL_127:
  multipathBytesOutCell = self->_multipathBytesOutCell;
  PBDataWriterWriteUint64Field();
  v20 = *p_has;
  if ((*p_has & 0x40000) == 0)
  {
LABEL_70:
    if ((v20 & 0x200000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_129;
  }

LABEL_128:
  multipathBytesInWiFi = self->_multipathBytesInWiFi;
  PBDataWriterWriteUint64Field();
  v20 = *p_has;
  if ((*p_has & 0x200000) == 0)
  {
LABEL_71:
    if ((v20 & 0x20000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_130;
  }

LABEL_129:
  multipathBytesOutWiFi = self->_multipathBytesOutWiFi;
  PBDataWriterWriteUint64Field();
  v20 = *p_has;
  if ((*p_has & 0x20000) == 0)
  {
LABEL_72:
    if ((v20 & 0x100000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_131;
  }

LABEL_130:
  multipathBytesInInitial = self->_multipathBytesInInitial;
  PBDataWriterWriteUint64Field();
  v20 = *p_has;
  if ((*p_has & 0x100000) == 0)
  {
LABEL_73:
    if ((v20 & 0x20000000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_132;
  }

LABEL_131:
  multipathBytesOutInitial = self->_multipathBytesOutInitial;
  PBDataWriterWriteUint64Field();
  v20 = *p_has;
  if ((*p_has & 0x20000000) == 0)
  {
LABEL_74:
    if ((v20 & 0x20000000000000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_75;
  }

LABEL_132:
  secondsSinceInterfaceChange = self->_secondsSinceInterfaceChange;
  PBDataWriterWriteUint64Field();
  if ((*p_has & 0x20000000000000) != 0)
  {
LABEL_75:
    isDaemon = self->_isDaemon;
    PBDataWriterWriteBOOLField();
  }

LABEL_76:
  if (self->_processName)
  {
    PBDataWriterWriteStringField();
  }

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  activities = self->_activities;
  v23 = [(NSMutableArray *)activities countByEnumeratingWithState:&v90 objects:v94 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v91;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v91 != v25)
        {
          objc_enumerationMutation(activities);
        }

        v27 = *(*(&v90 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v24 = [(NSMutableArray *)activities countByEnumeratingWithState:&v90 objects:v94 count:16];
    }

    while (v24);
  }

  if (self->_connectionUUID)
  {
    PBDataWriterWriteStringField();
  }

  if ((*(p_has + 8) & 4) != 0)
  {
    tlsHandshakeTimedOut = self->_tlsHandshakeTimedOut;
    PBDataWriterWriteBOOLField();
  }

  v29 = *p_has;
  if ((*p_has & 0x80000000000000) != 0)
  {
    isPathExpensive = self->_isPathExpensive;
    PBDataWriterWriteBOOLField();
    v29 = *p_has;
    if ((*p_has & 0x40000000000000) == 0)
    {
LABEL_91:
      if ((v29 & 0x400000000000000) == 0)
      {
        goto LABEL_92;
      }

      goto LABEL_136;
    }
  }

  else if ((v29 & 0x40000000000000) == 0)
  {
    goto LABEL_91;
  }

  isPathConstrained = self->_isPathConstrained;
  PBDataWriterWriteBOOLField();
  v29 = *p_has;
  if ((*p_has & 0x400000000000000) == 0)
  {
LABEL_92:
    if ((v29 & 0x200000000000000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_93;
  }

LABEL_136:
  prohibitsExpensive = self->_prohibitsExpensive;
  PBDataWriterWriteBOOLField();
  if ((*p_has & 0x200000000000000) != 0)
  {
LABEL_93:
    prohibitsConstrained = self->_prohibitsConstrained;
    PBDataWriterWriteBOOLField();
  }

LABEL_94:
  if (self->_l2Report)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_deviceReport)
  {
    PBDataWriterWriteSubmessage();
  }

  v31 = *p_has;
  if ((*p_has & 0x400000000000) != 0)
  {
    transportProtocol = self->_transportProtocol;
    PBDataWriterWriteInt32Field();
    v31 = *p_has;
    if ((*p_has & 0x10000000000) == 0)
    {
LABEL_100:
      if ((v31 & 0x20000000000) == 0)
      {
        goto LABEL_102;
      }

      goto LABEL_101;
    }
  }

  else if ((v31 & 0x10000000000) == 0)
  {
    goto LABEL_100;
  }

  dnsProtocol = self->_dnsProtocol;
  PBDataWriterWriteInt32Field();
  if ((*p_has & 0x20000000000) != 0)
  {
LABEL_101:
    dnsProvider = self->_dnsProvider;
    PBDataWriterWriteInt32Field();
  }

LABEL_102:
  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_effectiveBundleID)
  {
    PBDataWriterWriteStringField();
  }

  v33 = *MEMORY[0x29EDCA608];
}

- (void)copyTo:(id)a3
{
  p_has = &self->_has;
  if (*(&self->_has + 4))
  {
    *(a3 + 33) = self->_timestamp;
    *(a3 + 53) |= 0x100000000uLL;
  }

  if ((*(&self->_has + 8) & 0x10) != 0)
  {
    *(a3 + 420) = self->_triggeredPath;
    *(a3 + 432) |= 0x10u;
  }

  has = *p_has;
  if ((*p_has & 0x4000000000000000) != 0)
  {
    *(a3 + 414) = self->_systemProxyConfigured;
    *(a3 + 53) |= 0x4000000000000000uLL;
    has = self->_has;
    if ((has & 0x1000000000000) == 0)
    {
LABEL_7:
      if ((has & 0x800000000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_107;
    }
  }

  else if ((has & 0x1000000000000) == 0)
  {
    goto LABEL_7;
  }

  *(a3 + 400) = self->_customProxyConfigured;
  *(a3 + 53) |= 0x1000000000000uLL;
  has = self->_has;
  if ((has & 0x800000000000) == 0)
  {
LABEL_8:
    if ((has & 0x2000000000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_107:
  *(a3 + 99) = self->_usedProxyType;
  *(a3 + 53) |= 0x800000000000uLL;
  if ((*&self->_has & 0x2000000000000) != 0)
  {
LABEL_9:
    *(a3 + 401) = self->_fallbackEligible;
    *(a3 + 53) |= 0x2000000000000uLL;
  }

LABEL_10:
  v7 = *(&self->_has + 8);
  if ((v7 & 0x40) != 0)
  {
    *(a3 + 422) = self->_weakFallback;
    *(a3 + 432) |= 0x40u;
    v7 = *(&self->_has + 8);
  }

  if ((v7 & 0x20) != 0)
  {
    *(a3 + 421) = self->_usedFallback;
    *(a3 + 432) |= 0x20u;
  }

  if ((*(&self->_has + 7) & 8) != 0)
  {
    *(a3 + 411) = self->_resolutionRequired;
    *(a3 + 53) |= 0x800000000000000uLL;
  }

  if ((*(&self->_has + 8) & 2) != 0)
  {
    *(a3 + 417) = self->_tlsConfigured;
    *(a3 + 432) |= 2u;
  }

  v8 = *p_has;
  if ((*p_has & 0x8000000000000000) != 0)
  {
    *(a3 + 415) = self->_tfoConfigured;
    *(a3 + 53) |= 0x8000000000000000;
    v8 = self->_has;
    if ((v8 & 0x100000000000000) == 0)
    {
LABEL_20:
      if ((v8 & 0x400000000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_141;
    }
  }

  else if ((v8 & 0x100000000000000) == 0)
  {
    goto LABEL_20;
  }

  *(a3 + 408) = self->_multipathConfigured;
  *(a3 + 53) |= 0x100000000000000uLL;
  v8 = self->_has;
  if ((v8 & 0x400000000) == 0)
  {
LABEL_21:
    if ((v8 & 0x40000000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_142;
  }

LABEL_141:
  *(a3 + 35) = self->_trafficClass;
  *(a3 + 53) |= 0x400000000uLL;
  v8 = self->_has;
  if ((v8 & 0x40000000000) == 0)
  {
LABEL_22:
    if ((v8 & 0x2000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_143;
  }

LABEL_142:
  *(a3 + 90) = self->_failureReason;
  *(a3 + 53) |= 0x40000000000uLL;
  v8 = self->_has;
  if ((v8 & 0x2000000) == 0)
  {
LABEL_23:
    if ((v8 & 0x10000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_144;
  }

LABEL_143:
  *(a3 + 26) = self->_pathTriggerMilliseconds;
  *(a3 + 53) |= 0x2000000uLL;
  v8 = self->_has;
  if ((v8 & 0x10000000) == 0)
  {
LABEL_24:
    if ((v8 & 0x4000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_145;
  }

LABEL_144:
  *(a3 + 29) = self->_resolutionMilliseconds;
  *(a3 + 53) |= 0x10000000uLL;
  v8 = self->_has;
  if ((v8 & 0x4000000) == 0)
  {
LABEL_25:
    if ((v8 & 0x400) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_146;
  }

LABEL_145:
  *(a3 + 27) = self->_proxyMilliseconds;
  *(a3 + 53) |= 0x4000000uLL;
  v8 = self->_has;
  if ((v8 & 0x400) == 0)
  {
LABEL_26:
    if ((v8 & 0x200000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_147;
  }

LABEL_146:
  *(a3 + 11) = self->_flowConnectMilliseconds;
  *(a3 + 53) |= 0x400uLL;
  v8 = self->_has;
  if ((v8 & 0x200000000) == 0)
  {
LABEL_27:
    if ((v8 & 0x800) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_148;
  }

LABEL_147:
  *(a3 + 34) = self->_tlsMilliseconds;
  *(a3 + 53) |= 0x200000000uLL;
  v8 = self->_has;
  if ((v8 & 0x800) == 0)
  {
LABEL_28:
    if ((v8 & 0x1000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_149;
  }

LABEL_148:
  *(a3 + 12) = self->_flowDurationMilliseconds;
  *(a3 + 53) |= 0x800uLL;
  v8 = self->_has;
  if ((v8 & 0x1000) == 0)
  {
LABEL_29:
    if ((v8 & 0x4000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_150;
  }

LABEL_149:
  *(a3 + 13) = self->_ipv4AddressCount;
  *(a3 + 53) |= 0x1000uLL;
  v8 = self->_has;
  if ((v8 & 0x4000) == 0)
  {
LABEL_30:
    if ((v8 & 0x2000000000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_151;
  }

LABEL_150:
  *(a3 + 15) = self->_ipv6AddressCount;
  *(a3 + 53) |= 0x4000uLL;
  v8 = self->_has;
  if ((v8 & 0x2000000000000000) == 0)
  {
LABEL_31:
    if ((v8 & 0x80000000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_152;
  }

LABEL_151:
  *(a3 + 413) = self->_synthesizedIPv6Address;
  *(a3 + 53) |= 0x2000000000000000uLL;
  v8 = self->_has;
  if ((v8 & 0x80000000000) == 0)
  {
LABEL_32:
    if ((v8 & 0x2000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_153;
  }

LABEL_152:
  *(a3 + 91) = self->_firstAddressFamily;
  *(a3 + 53) |= 0x80000000000uLL;
  v8 = self->_has;
  if ((v8 & 0x2000000000) == 0)
  {
LABEL_33:
    if ((v8 & 0x40) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_154;
  }

LABEL_153:
  *(a3 + 78) = self->_connectedAddressFamily;
  *(a3 + 53) |= 0x2000000000uLL;
  v8 = self->_has;
  if ((v8 & 0x40) == 0)
  {
LABEL_34:
    if ((v8 & 0x4000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_155;
  }

LABEL_154:
  *(a3 + 7) = self->_connectedAddressIndex;
  *(a3 + 53) |= 0x40uLL;
  v8 = self->_has;
  if ((v8 & 0x4000000000) == 0)
  {
LABEL_35:
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_156;
  }

LABEL_155:
  *(a3 + 79) = self->_connectedInterfaceType;
  *(a3 + 53) |= 0x4000000000uLL;
  v8 = self->_has;
  if ((v8 & 0x80) == 0)
  {
LABEL_36:
    if ((v8 & 0x200) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_157;
  }

LABEL_156:
  *(a3 + 8) = self->_connectionReuseCount;
  *(a3 + 53) |= 0x80uLL;
  v8 = self->_has;
  if ((v8 & 0x200) == 0)
  {
LABEL_37:
    if ((v8 & 0x8000000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_158;
  }

LABEL_157:
  *(a3 + 10) = self->_dataStallCount;
  *(a3 + 53) |= 0x200uLL;
  v8 = self->_has;
  if ((v8 & 0x8000000000) == 0)
  {
LABEL_38:
    if ((v8 & 0x1000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_159;
  }

LABEL_158:
  *(a3 + 80) = self->_connectionMode;
  *(a3 + 53) |= 0x8000000000uLL;
  v8 = self->_has;
  if ((v8 & 0x1000000000) == 0)
  {
LABEL_39:
    if ((v8 & 0x800000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_160;
  }

LABEL_159:
  *(a3 + 75) = self->_appleHost;
  *(a3 + 53) |= 0x1000000000uLL;
  v8 = self->_has;
  if ((v8 & 0x800000000) == 0)
  {
LABEL_40:
    if ((v8 & 0x200000000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_161;
  }

LABEL_160:
  *(a3 + 74) = self->_appleApp;
  *(a3 + 53) |= 0x800000000uLL;
  v8 = self->_has;
  if ((v8 & 0x200000000000) == 0)
  {
LABEL_41:
    if ((v8 & 0x100000000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_162;
  }

LABEL_161:
  *(a3 + 97) = self->_tlsVersion;
  *(a3 + 53) |= 0x200000000000uLL;
  v8 = self->_has;
  if ((v8 & 0x100000000000) == 0)
  {
LABEL_42:
    if ((v8 & 0x8000000000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_163;
  }

LABEL_162:
  *(a3 + 96) = self->_stackLevel;
  *(a3 + 53) |= 0x100000000000uLL;
  v8 = self->_has;
  if ((v8 & 0x8000000000000) == 0)
  {
LABEL_43:
    if ((v8 & 0x10000000000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_164;
  }

LABEL_163:
  *(a3 + 403) = self->_ipv4Available;
  *(a3 + 53) |= 0x8000000000000uLL;
  v8 = self->_has;
  if ((v8 & 0x10000000000000) == 0)
  {
LABEL_44:
    if ((v8 & 0x2000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_165;
  }

LABEL_164:
  *(a3 + 404) = self->_ipv6Available;
  *(a3 + 53) |= 0x10000000000000uLL;
  v8 = self->_has;
  if ((v8 & 0x2000) == 0)
  {
LABEL_45:
    if ((v8 & 0x8000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

LABEL_165:
  *(a3 + 14) = self->_ipv4DNSServerCount;
  *(a3 + 53) |= 0x2000uLL;
  if ((*&self->_has & 0x8000) != 0)
  {
LABEL_46:
    *(a3 + 16) = self->_ipv6DNSServerCount;
    *(a3 + 53) |= 0x8000uLL;
  }

LABEL_47:
  if ((*(&self->_has + 8) & 8) != 0)
  {
    *(a3 + 419) = self->_tlsVersionTimeout;
    *(a3 + 432) |= 8u;
  }

  v9 = *p_has;
  if ((*p_has & 0x1000000000000000) != 0)
  {
    *(a3 + 412) = self->_synthesizedExtraIPv6Address;
    *(a3 + 53) |= 0x1000000000000000uLL;
    v9 = self->_has;
    if ((v9 & 4) == 0)
    {
LABEL_51:
      if ((v9 & 8) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_111;
    }
  }

  else if ((v9 & 4) == 0)
  {
    goto LABEL_51;
  }

  *(a3 + 3) = self->_bytesIn;
  *(a3 + 53) |= 4uLL;
  v9 = self->_has;
  if ((v9 & 8) == 0)
  {
LABEL_52:
    if ((v9 & 2) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_112;
  }

LABEL_111:
  *(a3 + 4) = self->_bytesOut;
  *(a3 + 53) |= 8uLL;
  v9 = self->_has;
  if ((v9 & 2) == 0)
  {
LABEL_53:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_113;
  }

LABEL_112:
  *(a3 + 2) = self->_bytesDuplicate;
  *(a3 + 53) |= 2uLL;
  v9 = self->_has;
  if ((v9 & 0x10) == 0)
  {
LABEL_54:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_114;
  }

LABEL_113:
  *(a3 + 5) = self->_bytesOutOfOrder;
  *(a3 + 53) |= 0x10uLL;
  v9 = self->_has;
  if ((v9 & 0x20) == 0)
  {
LABEL_55:
    if ((v9 & 0x800000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_115;
  }

LABEL_114:
  *(a3 + 6) = self->_bytesRetransmitted;
  *(a3 + 53) |= 0x20uLL;
  v9 = self->_has;
  if ((v9 & 0x800000) == 0)
  {
LABEL_56:
    if ((v9 & 0x1000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_116;
  }

LABEL_115:
  *(a3 + 24) = self->_packetsIn;
  *(a3 + 53) |= 0x800000uLL;
  v9 = self->_has;
  if ((v9 & 0x1000000) == 0)
  {
LABEL_57:
    if ((v9 & 0x100) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_117;
  }

LABEL_116:
  *(a3 + 25) = self->_packetsOut;
  *(a3 + 53) |= 0x1000000uLL;
  v9 = self->_has;
  if ((v9 & 0x100) == 0)
  {
LABEL_58:
    if ((v9 & 0x40000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_118;
  }

LABEL_117:
  *(a3 + 9) = self->_currentRTT;
  *(a3 + 53) |= 0x100uLL;
  v9 = self->_has;
  if ((v9 & 0x40000000) == 0)
  {
LABEL_59:
    if ((v9 & 1) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_119;
  }

LABEL_118:
  *(a3 + 31) = self->_smoothedRTT;
  *(a3 + 53) |= 0x40000000uLL;
  v9 = self->_has;
  if ((v9 & 1) == 0)
  {
LABEL_60:
    if ((v9 & 0x8000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_120;
  }

LABEL_119:
  *(a3 + 1) = self->_bestRTT;
  *(a3 + 53) |= 1uLL;
  v9 = self->_has;
  if ((v9 & 0x8000000) == 0)
  {
LABEL_61:
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

LABEL_120:
  *(a3 + 28) = self->_rTTvariance;
  *(a3 + 53) |= 0x8000000uLL;
  if ((*&self->_has & 0x80000000) != 0)
  {
LABEL_62:
    *(a3 + 32) = self->_synRetransmissionCount;
    *(a3 + 53) |= 0x80000000uLL;
  }

LABEL_63:
  if (*(&self->_has + 8))
  {
    *(a3 + 416) = self->_tfoUsed;
    *(a3 + 432) |= 1u;
  }

  v10 = *p_has;
  if ((*p_has & 0x400000) != 0)
  {
    *(a3 + 23) = self->_multipathServiceType;
    *(a3 + 53) |= 0x400000uLL;
    v10 = self->_has;
    if ((v10 & 0x4000000000000) == 0)
    {
LABEL_67:
      if ((v10 & 0x10000) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_124;
    }
  }

  else if ((v10 & 0x4000000000000) == 0)
  {
    goto LABEL_67;
  }

  *(a3 + 402) = self->_firstParty;
  *(a3 + 53) |= 0x4000000000000uLL;
  v10 = self->_has;
  if ((v10 & 0x10000) == 0)
  {
LABEL_68:
    if ((v10 & 0x80000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_125;
  }

LABEL_124:
  *(a3 + 17) = self->_multipathBytesInCell;
  *(a3 + 53) |= 0x10000uLL;
  v10 = self->_has;
  if ((v10 & 0x80000) == 0)
  {
LABEL_69:
    if ((v10 & 0x40000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_126;
  }

LABEL_125:
  *(a3 + 20) = self->_multipathBytesOutCell;
  *(a3 + 53) |= 0x80000uLL;
  v10 = self->_has;
  if ((v10 & 0x40000) == 0)
  {
LABEL_70:
    if ((v10 & 0x200000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_127;
  }

LABEL_126:
  *(a3 + 19) = self->_multipathBytesInWiFi;
  *(a3 + 53) |= 0x40000uLL;
  v10 = self->_has;
  if ((v10 & 0x200000) == 0)
  {
LABEL_71:
    if ((v10 & 0x20000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_128;
  }

LABEL_127:
  *(a3 + 22) = self->_multipathBytesOutWiFi;
  *(a3 + 53) |= 0x200000uLL;
  v10 = self->_has;
  if ((v10 & 0x20000) == 0)
  {
LABEL_72:
    if ((v10 & 0x100000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_129;
  }

LABEL_128:
  *(a3 + 18) = self->_multipathBytesInInitial;
  *(a3 + 53) |= 0x20000uLL;
  v10 = self->_has;
  if ((v10 & 0x100000) == 0)
  {
LABEL_73:
    if ((v10 & 0x20000000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_130;
  }

LABEL_129:
  *(a3 + 21) = self->_multipathBytesOutInitial;
  *(a3 + 53) |= 0x100000uLL;
  v10 = self->_has;
  if ((v10 & 0x20000000) == 0)
  {
LABEL_74:
    if ((v10 & 0x20000000000000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_75;
  }

LABEL_130:
  *(a3 + 30) = self->_secondsSinceInterfaceChange;
  *(a3 + 53) |= 0x20000000uLL;
  if ((*&self->_has & 0x20000000000000) != 0)
  {
LABEL_75:
    *(a3 + 405) = self->_isDaemon;
    *(a3 + 53) |= 0x20000000000000uLL;
  }

LABEL_76:
  if (self->_processName)
  {
    [a3 setProcessName:?];
  }

  if ([(AWDNWConnectionReport *)self activitiesCount])
  {
    [a3 clearActivities];
    v11 = [(AWDNWConnectionReport *)self activitiesCount];
    if (v11)
    {
      v12 = v11;
      for (i = 0; i != v12; ++i)
      {
        [a3 addActivities:{-[AWDNWConnectionReport activitiesAtIndex:](self, "activitiesAtIndex:", i)}];
      }
    }
  }

  if (self->_connectionUUID)
  {
    [a3 setConnectionUUID:?];
  }

  if ((*(p_has + 8) & 4) != 0)
  {
    *(a3 + 418) = self->_tlsHandshakeTimedOut;
    *(a3 + 432) |= 4u;
  }

  v14 = *p_has;
  if ((*p_has & 0x80000000000000) != 0)
  {
    *(a3 + 407) = self->_isPathExpensive;
    *(a3 + 53) |= 0x80000000000000uLL;
    v14 = self->_has;
    if ((v14 & 0x40000000000000) == 0)
    {
LABEL_88:
      if ((v14 & 0x400000000000000) == 0)
      {
        goto LABEL_89;
      }

      goto LABEL_134;
    }
  }

  else if ((v14 & 0x40000000000000) == 0)
  {
    goto LABEL_88;
  }

  *(a3 + 406) = self->_isPathConstrained;
  *(a3 + 53) |= 0x40000000000000uLL;
  v14 = self->_has;
  if ((v14 & 0x400000000000000) == 0)
  {
LABEL_89:
    if ((v14 & 0x200000000000000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_90;
  }

LABEL_134:
  *(a3 + 410) = self->_prohibitsExpensive;
  *(a3 + 53) |= 0x400000000000000uLL;
  if ((*&self->_has & 0x200000000000000) != 0)
  {
LABEL_90:
    *(a3 + 409) = self->_prohibitsConstrained;
    *(a3 + 53) |= 0x200000000000000uLL;
  }

LABEL_91:
  if (self->_l2Report)
  {
    [a3 setL2Report:?];
  }

  if (self->_deviceReport)
  {
    [a3 setDeviceReport:?];
  }

  v15 = *p_has;
  if ((*p_has & 0x400000000000) != 0)
  {
    *(a3 + 98) = self->_transportProtocol;
    *(a3 + 53) |= 0x400000000000uLL;
    v15 = self->_has;
    if ((v15 & 0x10000000000) == 0)
    {
LABEL_97:
      if ((v15 & 0x20000000000) == 0)
      {
        goto LABEL_99;
      }

      goto LABEL_98;
    }
  }

  else if ((v15 & 0x10000000000) == 0)
  {
    goto LABEL_97;
  }

  *(a3 + 86) = self->_dnsProtocol;
  *(a3 + 53) |= 0x10000000000uLL;
  if ((*&self->_has & 0x20000000000) != 0)
  {
LABEL_98:
    *(a3 + 87) = self->_dnsProvider;
    *(a3 + 53) |= 0x20000000000uLL;
  }

LABEL_99:
  if (self->_bundleID)
  {
    [a3 setBundleID:?];
  }

  if (self->_effectiveBundleID)
  {

    [a3 setEffectiveBundleID:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v28 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  p_has = &self->_has;
  if (*(&self->_has + 4))
  {
    *(v5 + 264) = self->_timestamp;
    *(v5 + 424) |= 0x100000000uLL;
  }

  if ((*(&self->_has + 8) & 0x10) != 0)
  {
    *(v5 + 420) = self->_triggeredPath;
    *(v5 + 432) |= 0x10u;
  }

  has = *p_has;
  if ((*p_has & 0x4000000000000000) != 0)
  {
    *(v5 + 414) = self->_systemProxyConfigured;
    *(v5 + 424) |= 0x4000000000000000uLL;
    has = self->_has;
    if ((has & 0x1000000000000) == 0)
    {
LABEL_7:
      if ((has & 0x800000000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_97;
    }
  }

  else if ((has & 0x1000000000000) == 0)
  {
    goto LABEL_7;
  }

  *(v5 + 400) = self->_customProxyConfigured;
  *(v5 + 424) |= 0x1000000000000uLL;
  has = self->_has;
  if ((has & 0x800000000000) == 0)
  {
LABEL_8:
    if ((has & 0x2000000000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_97:
  *(v5 + 396) = self->_usedProxyType;
  *(v5 + 424) |= 0x800000000000uLL;
  if ((*&self->_has & 0x2000000000000) != 0)
  {
LABEL_9:
    *(v5 + 401) = self->_fallbackEligible;
    *(v5 + 424) |= 0x2000000000000uLL;
  }

LABEL_10:
  v9 = *(&self->_has + 8);
  if ((v9 & 0x40) != 0)
  {
    *(v5 + 422) = self->_weakFallback;
    *(v5 + 432) |= 0x40u;
    v9 = *(&self->_has + 8);
  }

  if ((v9 & 0x20) != 0)
  {
    *(v5 + 421) = self->_usedFallback;
    *(v5 + 432) |= 0x20u;
  }

  if ((*(&self->_has + 7) & 8) != 0)
  {
    *(v5 + 411) = self->_resolutionRequired;
    *(v5 + 424) |= 0x800000000000000uLL;
  }

  if ((*(&self->_has + 8) & 2) != 0)
  {
    *(v5 + 417) = self->_tlsConfigured;
    *(v5 + 432) |= 2u;
  }

  v10 = *p_has;
  if ((*p_has & 0x8000000000000000) != 0)
  {
    *(v5 + 415) = self->_tfoConfigured;
    *(v5 + 424) |= 0x8000000000000000;
    v10 = self->_has;
    if ((v10 & 0x100000000000000) == 0)
    {
LABEL_20:
      if ((v10 & 0x400000000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_131;
    }
  }

  else if ((v10 & 0x100000000000000) == 0)
  {
    goto LABEL_20;
  }

  *(v5 + 408) = self->_multipathConfigured;
  *(v5 + 424) |= 0x100000000000000uLL;
  v10 = self->_has;
  if ((v10 & 0x400000000) == 0)
  {
LABEL_21:
    if ((v10 & 0x40000000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_132;
  }

LABEL_131:
  *(v5 + 280) = self->_trafficClass;
  *(v5 + 424) |= 0x400000000uLL;
  v10 = self->_has;
  if ((v10 & 0x40000000000) == 0)
  {
LABEL_22:
    if ((v10 & 0x2000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_133;
  }

LABEL_132:
  *(v5 + 360) = self->_failureReason;
  *(v5 + 424) |= 0x40000000000uLL;
  v10 = self->_has;
  if ((v10 & 0x2000000) == 0)
  {
LABEL_23:
    if ((v10 & 0x10000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_134;
  }

LABEL_133:
  *(v5 + 208) = self->_pathTriggerMilliseconds;
  *(v5 + 424) |= 0x2000000uLL;
  v10 = self->_has;
  if ((v10 & 0x10000000) == 0)
  {
LABEL_24:
    if ((v10 & 0x4000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_135;
  }

LABEL_134:
  *(v5 + 232) = self->_resolutionMilliseconds;
  *(v5 + 424) |= 0x10000000uLL;
  v10 = self->_has;
  if ((v10 & 0x4000000) == 0)
  {
LABEL_25:
    if ((v10 & 0x400) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_136;
  }

LABEL_135:
  *(v5 + 216) = self->_proxyMilliseconds;
  *(v5 + 424) |= 0x4000000uLL;
  v10 = self->_has;
  if ((v10 & 0x400) == 0)
  {
LABEL_26:
    if ((v10 & 0x200000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_137;
  }

LABEL_136:
  *(v5 + 88) = self->_flowConnectMilliseconds;
  *(v5 + 424) |= 0x400uLL;
  v10 = self->_has;
  if ((v10 & 0x200000000) == 0)
  {
LABEL_27:
    if ((v10 & 0x800) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_138;
  }

LABEL_137:
  *(v5 + 272) = self->_tlsMilliseconds;
  *(v5 + 424) |= 0x200000000uLL;
  v10 = self->_has;
  if ((v10 & 0x800) == 0)
  {
LABEL_28:
    if ((v10 & 0x1000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_139;
  }

LABEL_138:
  *(v5 + 96) = self->_flowDurationMilliseconds;
  *(v5 + 424) |= 0x800uLL;
  v10 = self->_has;
  if ((v10 & 0x1000) == 0)
  {
LABEL_29:
    if ((v10 & 0x4000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_140;
  }

LABEL_139:
  *(v5 + 104) = self->_ipv4AddressCount;
  *(v5 + 424) |= 0x1000uLL;
  v10 = self->_has;
  if ((v10 & 0x4000) == 0)
  {
LABEL_30:
    if ((v10 & 0x2000000000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_141;
  }

LABEL_140:
  *(v5 + 120) = self->_ipv6AddressCount;
  *(v5 + 424) |= 0x4000uLL;
  v10 = self->_has;
  if ((v10 & 0x2000000000000000) == 0)
  {
LABEL_31:
    if ((v10 & 0x80000000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_142;
  }

LABEL_141:
  *(v5 + 413) = self->_synthesizedIPv6Address;
  *(v5 + 424) |= 0x2000000000000000uLL;
  v10 = self->_has;
  if ((v10 & 0x80000000000) == 0)
  {
LABEL_32:
    if ((v10 & 0x2000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_143;
  }

LABEL_142:
  *(v5 + 364) = self->_firstAddressFamily;
  *(v5 + 424) |= 0x80000000000uLL;
  v10 = self->_has;
  if ((v10 & 0x2000000000) == 0)
  {
LABEL_33:
    if ((v10 & 0x40) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_144;
  }

LABEL_143:
  *(v5 + 312) = self->_connectedAddressFamily;
  *(v5 + 424) |= 0x2000000000uLL;
  v10 = self->_has;
  if ((v10 & 0x40) == 0)
  {
LABEL_34:
    if ((v10 & 0x4000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_145;
  }

LABEL_144:
  *(v5 + 56) = self->_connectedAddressIndex;
  *(v5 + 424) |= 0x40uLL;
  v10 = self->_has;
  if ((v10 & 0x4000000000) == 0)
  {
LABEL_35:
    if ((v10 & 0x80) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_146;
  }

LABEL_145:
  *(v5 + 316) = self->_connectedInterfaceType;
  *(v5 + 424) |= 0x4000000000uLL;
  v10 = self->_has;
  if ((v10 & 0x80) == 0)
  {
LABEL_36:
    if ((v10 & 0x200) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_147;
  }

LABEL_146:
  *(v5 + 64) = self->_connectionReuseCount;
  *(v5 + 424) |= 0x80uLL;
  v10 = self->_has;
  if ((v10 & 0x200) == 0)
  {
LABEL_37:
    if ((v10 & 0x8000000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_148;
  }

LABEL_147:
  *(v5 + 80) = self->_dataStallCount;
  *(v5 + 424) |= 0x200uLL;
  v10 = self->_has;
  if ((v10 & 0x8000000000) == 0)
  {
LABEL_38:
    if ((v10 & 0x1000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_149;
  }

LABEL_148:
  *(v5 + 320) = self->_connectionMode;
  *(v5 + 424) |= 0x8000000000uLL;
  v10 = self->_has;
  if ((v10 & 0x1000000000) == 0)
  {
LABEL_39:
    if ((v10 & 0x800000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_150;
  }

LABEL_149:
  *(v5 + 300) = self->_appleHost;
  *(v5 + 424) |= 0x1000000000uLL;
  v10 = self->_has;
  if ((v10 & 0x800000000) == 0)
  {
LABEL_40:
    if ((v10 & 0x200000000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_151;
  }

LABEL_150:
  *(v5 + 296) = self->_appleApp;
  *(v5 + 424) |= 0x800000000uLL;
  v10 = self->_has;
  if ((v10 & 0x200000000000) == 0)
  {
LABEL_41:
    if ((v10 & 0x100000000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_152;
  }

LABEL_151:
  *(v5 + 388) = self->_tlsVersion;
  *(v5 + 424) |= 0x200000000000uLL;
  v10 = self->_has;
  if ((v10 & 0x100000000000) == 0)
  {
LABEL_42:
    if ((v10 & 0x8000000000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_153;
  }

LABEL_152:
  *(v5 + 384) = self->_stackLevel;
  *(v5 + 424) |= 0x100000000000uLL;
  v10 = self->_has;
  if ((v10 & 0x8000000000000) == 0)
  {
LABEL_43:
    if ((v10 & 0x10000000000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_154;
  }

LABEL_153:
  *(v5 + 403) = self->_ipv4Available;
  *(v5 + 424) |= 0x8000000000000uLL;
  v10 = self->_has;
  if ((v10 & 0x10000000000000) == 0)
  {
LABEL_44:
    if ((v10 & 0x2000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_155;
  }

LABEL_154:
  *(v5 + 404) = self->_ipv6Available;
  *(v5 + 424) |= 0x10000000000000uLL;
  v10 = self->_has;
  if ((v10 & 0x2000) == 0)
  {
LABEL_45:
    if ((v10 & 0x8000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

LABEL_155:
  *(v5 + 112) = self->_ipv4DNSServerCount;
  *(v5 + 424) |= 0x2000uLL;
  if ((*&self->_has & 0x8000) != 0)
  {
LABEL_46:
    *(v5 + 128) = self->_ipv6DNSServerCount;
    *(v5 + 424) |= 0x8000uLL;
  }

LABEL_47:
  if ((*(&self->_has + 8) & 8) != 0)
  {
    *(v5 + 419) = self->_tlsVersionTimeout;
    *(v5 + 432) |= 8u;
  }

  v11 = *p_has;
  if ((*p_has & 0x1000000000000000) != 0)
  {
    *(v5 + 412) = self->_synthesizedExtraIPv6Address;
    *(v5 + 424) |= 0x1000000000000000uLL;
    v11 = self->_has;
    if ((v11 & 4) == 0)
    {
LABEL_51:
      if ((v11 & 8) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_101;
    }
  }

  else if ((v11 & 4) == 0)
  {
    goto LABEL_51;
  }

  *(v5 + 24) = self->_bytesIn;
  *(v5 + 424) |= 4uLL;
  v11 = self->_has;
  if ((v11 & 8) == 0)
  {
LABEL_52:
    if ((v11 & 2) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_102;
  }

LABEL_101:
  *(v5 + 32) = self->_bytesOut;
  *(v5 + 424) |= 8uLL;
  v11 = self->_has;
  if ((v11 & 2) == 0)
  {
LABEL_53:
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_103;
  }

LABEL_102:
  *(v5 + 16) = self->_bytesDuplicate;
  *(v5 + 424) |= 2uLL;
  v11 = self->_has;
  if ((v11 & 0x10) == 0)
  {
LABEL_54:
    if ((v11 & 0x20) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_104;
  }

LABEL_103:
  *(v5 + 40) = self->_bytesOutOfOrder;
  *(v5 + 424) |= 0x10uLL;
  v11 = self->_has;
  if ((v11 & 0x20) == 0)
  {
LABEL_55:
    if ((v11 & 0x800000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_105;
  }

LABEL_104:
  *(v5 + 48) = self->_bytesRetransmitted;
  *(v5 + 424) |= 0x20uLL;
  v11 = self->_has;
  if ((v11 & 0x800000) == 0)
  {
LABEL_56:
    if ((v11 & 0x1000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_106;
  }

LABEL_105:
  *(v5 + 192) = self->_packetsIn;
  *(v5 + 424) |= 0x800000uLL;
  v11 = self->_has;
  if ((v11 & 0x1000000) == 0)
  {
LABEL_57:
    if ((v11 & 0x100) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_107;
  }

LABEL_106:
  *(v5 + 200) = self->_packetsOut;
  *(v5 + 424) |= 0x1000000uLL;
  v11 = self->_has;
  if ((v11 & 0x100) == 0)
  {
LABEL_58:
    if ((v11 & 0x40000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_108;
  }

LABEL_107:
  *(v5 + 72) = self->_currentRTT;
  *(v5 + 424) |= 0x100uLL;
  v11 = self->_has;
  if ((v11 & 0x40000000) == 0)
  {
LABEL_59:
    if ((v11 & 1) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_109;
  }

LABEL_108:
  *(v5 + 248) = self->_smoothedRTT;
  *(v5 + 424) |= 0x40000000uLL;
  v11 = self->_has;
  if ((v11 & 1) == 0)
  {
LABEL_60:
    if ((v11 & 0x8000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_110;
  }

LABEL_109:
  *(v5 + 8) = self->_bestRTT;
  *(v5 + 424) |= 1uLL;
  v11 = self->_has;
  if ((v11 & 0x8000000) == 0)
  {
LABEL_61:
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

LABEL_110:
  *(v5 + 224) = self->_rTTvariance;
  *(v5 + 424) |= 0x8000000uLL;
  if ((*&self->_has & 0x80000000) != 0)
  {
LABEL_62:
    *(v5 + 256) = self->_synRetransmissionCount;
    *(v5 + 424) |= 0x80000000uLL;
  }

LABEL_63:
  if (*(&self->_has + 8))
  {
    *(v5 + 416) = self->_tfoUsed;
    *(v5 + 432) |= 1u;
  }

  v12 = *p_has;
  if ((*p_has & 0x400000) != 0)
  {
    *(v5 + 184) = self->_multipathServiceType;
    *(v5 + 424) |= 0x400000uLL;
    v12 = self->_has;
    if ((v12 & 0x4000000000000) == 0)
    {
LABEL_67:
      if ((v12 & 0x10000) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_114;
    }
  }

  else if ((v12 & 0x4000000000000) == 0)
  {
    goto LABEL_67;
  }

  *(v5 + 402) = self->_firstParty;
  *(v5 + 424) |= 0x4000000000000uLL;
  v12 = self->_has;
  if ((v12 & 0x10000) == 0)
  {
LABEL_68:
    if ((v12 & 0x80000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_115;
  }

LABEL_114:
  *(v5 + 136) = self->_multipathBytesInCell;
  *(v5 + 424) |= 0x10000uLL;
  v12 = self->_has;
  if ((v12 & 0x80000) == 0)
  {
LABEL_69:
    if ((v12 & 0x40000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_116;
  }

LABEL_115:
  *(v5 + 160) = self->_multipathBytesOutCell;
  *(v5 + 424) |= 0x80000uLL;
  v12 = self->_has;
  if ((v12 & 0x40000) == 0)
  {
LABEL_70:
    if ((v12 & 0x200000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_117;
  }

LABEL_116:
  *(v5 + 152) = self->_multipathBytesInWiFi;
  *(v5 + 424) |= 0x40000uLL;
  v12 = self->_has;
  if ((v12 & 0x200000) == 0)
  {
LABEL_71:
    if ((v12 & 0x20000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_118;
  }

LABEL_117:
  *(v5 + 176) = self->_multipathBytesOutWiFi;
  *(v5 + 424) |= 0x200000uLL;
  v12 = self->_has;
  if ((v12 & 0x20000) == 0)
  {
LABEL_72:
    if ((v12 & 0x100000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_119;
  }

LABEL_118:
  *(v5 + 144) = self->_multipathBytesInInitial;
  *(v5 + 424) |= 0x20000uLL;
  v12 = self->_has;
  if ((v12 & 0x100000) == 0)
  {
LABEL_73:
    if ((v12 & 0x20000000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_120;
  }

LABEL_119:
  *(v5 + 168) = self->_multipathBytesOutInitial;
  *(v5 + 424) |= 0x100000uLL;
  v12 = self->_has;
  if ((v12 & 0x20000000) == 0)
  {
LABEL_74:
    if ((v12 & 0x20000000000000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_75;
  }

LABEL_120:
  *(v5 + 240) = self->_secondsSinceInterfaceChange;
  *(v5 + 424) |= 0x20000000uLL;
  if ((*&self->_has & 0x20000000000000) != 0)
  {
LABEL_75:
    *(v5 + 405) = self->_isDaemon;
    *(v5 + 424) |= 0x20000000000000uLL;
  }

LABEL_76:

  *(v6 + 376) = [(NSString *)self->_processName copyWithZone:a3];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  activities = self->_activities;
  v14 = [(NSMutableArray *)activities countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v24;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(activities);
        }

        v18 = [*(*(&v23 + 1) + 8 * i) copyWithZone:a3];
        [v6 addActivities:v18];
      }

      v15 = [(NSMutableArray *)activities countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v15);
  }

  *(v6 + 328) = [(NSString *)self->_connectionUUID copyWithZone:a3];
  if ((*(&self->_has + 8) & 4) != 0)
  {
    *(v6 + 418) = self->_tlsHandshakeTimedOut;
    *(v6 + 432) |= 4u;
  }

  v19 = *p_has;
  if ((*p_has & 0x80000000000000) != 0)
  {
    *(v6 + 407) = self->_isPathExpensive;
    *(v6 + 424) |= 0x80000000000000uLL;
    v19 = self->_has;
    if ((v19 & 0x40000000000000) == 0)
    {
LABEL_87:
      if ((v19 & 0x400000000000000) == 0)
      {
        goto LABEL_88;
      }

      goto LABEL_124;
    }
  }

  else if ((v19 & 0x40000000000000) == 0)
  {
    goto LABEL_87;
  }

  *(v6 + 406) = self->_isPathConstrained;
  *(v6 + 424) |= 0x40000000000000uLL;
  v19 = self->_has;
  if ((v19 & 0x400000000000000) == 0)
  {
LABEL_88:
    if ((v19 & 0x200000000000000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_89;
  }

LABEL_124:
  *(v6 + 410) = self->_prohibitsExpensive;
  *(v6 + 424) |= 0x400000000000000uLL;
  if ((*&self->_has & 0x200000000000000) != 0)
  {
LABEL_89:
    *(v6 + 409) = self->_prohibitsConstrained;
    *(v6 + 424) |= 0x200000000000000uLL;
  }

LABEL_90:

  *(v6 + 368) = [(AWDNWL2Report *)self->_l2Report copyWithZone:a3];
  *(v6 + 336) = [(AWDNWDeviceReport *)self->_deviceReport copyWithZone:a3];
  v20 = *p_has;
  if ((*p_has & 0x400000000000) == 0)
  {
    if ((v20 & 0x10000000000) == 0)
    {
      goto LABEL_92;
    }

LABEL_127:
    *(v6 + 344) = self->_dnsProtocol;
    *(v6 + 424) |= 0x10000000000uLL;
    if ((*&self->_has & 0x20000000000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_93;
  }

  *(v6 + 392) = self->_transportProtocol;
  *(v6 + 424) |= 0x400000000000uLL;
  v20 = self->_has;
  if ((v20 & 0x10000000000) != 0)
  {
    goto LABEL_127;
  }

LABEL_92:
  if ((v20 & 0x20000000000) != 0)
  {
LABEL_93:
    *(v6 + 348) = self->_dnsProvider;
    *(v6 + 424) |= 0x20000000000uLL;
  }

LABEL_94:

  *(v6 + 304) = [(NSString *)self->_bundleID copyWithZone:a3];
  *(v6 + 352) = [(NSString *)self->_effectiveBundleID copyWithZone:a3];
  v21 = *MEMORY[0x29EDCA608];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (!v5)
  {
    return v5;
  }

  has = self->_has;
  v7 = *(a3 + 53);
  if ((has & 0x100000000) != 0)
  {
    if ((v7 & 0x100000000) == 0 || self->_timestamp != *(a3 + 33))
    {
      goto LABEL_440;
    }
  }

  else if ((v7 & 0x100000000) != 0)
  {
    goto LABEL_440;
  }

  v8 = *(a3 + 432);
  if ((*(&self->_has + 8) & 0x10) != 0)
  {
    if ((*(a3 + 432) & 0x10) == 0)
    {
      goto LABEL_440;
    }

    v9 = *(a3 + 420);
    if (self->_triggeredPath)
    {
      if ((*(a3 + 420) & 1) == 0)
      {
        goto LABEL_440;
      }
    }

    else if (*(a3 + 420))
    {
      goto LABEL_440;
    }
  }

  else if ((*(a3 + 432) & 0x10) != 0)
  {
    goto LABEL_440;
  }

  if ((has & 0x4000000000000000) != 0)
  {
    if ((v7 & 0x4000000000000000) == 0)
    {
      goto LABEL_440;
    }

    v10 = *(a3 + 414);
    if (self->_systemProxyConfigured)
    {
      if ((*(a3 + 414) & 1) == 0)
      {
        goto LABEL_440;
      }
    }

    else if (*(a3 + 414))
    {
      goto LABEL_440;
    }
  }

  else if ((v7 & 0x4000000000000000) != 0)
  {
    goto LABEL_440;
  }

  if ((has & 0x1000000000000) != 0)
  {
    if ((v7 & 0x1000000000000) == 0)
    {
      goto LABEL_440;
    }

    v11 = *(a3 + 400);
    if (self->_customProxyConfigured)
    {
      if ((*(a3 + 400) & 1) == 0)
      {
        goto LABEL_440;
      }
    }

    else if (*(a3 + 400))
    {
      goto LABEL_440;
    }
  }

  else if ((v7 & 0x1000000000000) != 0)
  {
    goto LABEL_440;
  }

  if ((has & 0x800000000000) != 0)
  {
    if ((v7 & 0x800000000000) == 0 || self->_usedProxyType != *(a3 + 99))
    {
      goto LABEL_440;
    }
  }

  else if ((v7 & 0x800000000000) != 0)
  {
    goto LABEL_440;
  }

  if ((has & 0x2000000000000) != 0)
  {
    if ((v7 & 0x2000000000000) == 0)
    {
      goto LABEL_440;
    }

    v12 = *(a3 + 401);
    if (self->_fallbackEligible)
    {
      if ((*(a3 + 401) & 1) == 0)
      {
        goto LABEL_440;
      }
    }

    else if (*(a3 + 401))
    {
      goto LABEL_440;
    }
  }

  else if ((v7 & 0x2000000000000) != 0)
  {
    goto LABEL_440;
  }

  if ((*(&self->_has + 8) & 0x40) != 0)
  {
    if ((*(a3 + 432) & 0x40) == 0)
    {
      goto LABEL_440;
    }

    v13 = *(a3 + 422);
    if (self->_weakFallback)
    {
      if ((*(a3 + 422) & 1) == 0)
      {
        goto LABEL_440;
      }
    }

    else if (*(a3 + 422))
    {
      goto LABEL_440;
    }
  }

  else if ((*(a3 + 432) & 0x40) != 0)
  {
    goto LABEL_440;
  }

  if ((*(&self->_has + 8) & 0x20) != 0)
  {
    if ((*(a3 + 432) & 0x20) == 0)
    {
      goto LABEL_440;
    }

    v14 = *(a3 + 421);
    if (self->_usedFallback)
    {
      if ((*(a3 + 421) & 1) == 0)
      {
        goto LABEL_440;
      }
    }

    else if (*(a3 + 421))
    {
      goto LABEL_440;
    }
  }

  else if ((*(a3 + 432) & 0x20) != 0)
  {
    goto LABEL_440;
  }

  p_has = &self->_has;
  v48 = (a3 + 424);
  if ((has & 0x800000000000000) != 0)
  {
    if ((v7 & 0x800000000000000) == 0)
    {
      goto LABEL_440;
    }

    v15 = *(a3 + 411);
    if (self->_resolutionRequired)
    {
      if ((*(a3 + 411) & 1) == 0)
      {
        goto LABEL_440;
      }
    }

    else if (*(a3 + 411))
    {
      goto LABEL_440;
    }
  }

  else if ((v7 & 0x800000000000000) != 0)
  {
    goto LABEL_440;
  }

  if ((*(&self->_has + 8) & 2) != 0)
  {
    if ((*(a3 + 432) & 2) == 0)
    {
      goto LABEL_440;
    }

    v16 = *(a3 + 417);
    if (self->_tlsConfigured)
    {
      if ((*(a3 + 417) & 1) == 0)
      {
        goto LABEL_440;
      }
    }

    else if (*(a3 + 417))
    {
      goto LABEL_440;
    }
  }

  else if ((*(a3 + 432) & 2) != 0)
  {
    goto LABEL_440;
  }

  if (has < 0)
  {
    if ((v7 & 0x8000000000000000) == 0)
    {
      goto LABEL_440;
    }

    v17 = *(a3 + 415);
    if (self->_tfoConfigured)
    {
      if ((*(a3 + 415) & 1) == 0)
      {
        goto LABEL_440;
      }
    }

    else if (*(a3 + 415))
    {
      goto LABEL_440;
    }
  }

  else if (v7 < 0)
  {
    goto LABEL_440;
  }

  if ((has & 0x100000000000000) != 0)
  {
    if ((v7 & 0x100000000000000) == 0)
    {
      goto LABEL_440;
    }

    v18 = *(a3 + 408);
    if (self->_multipathConfigured)
    {
      if ((*(a3 + 408) & 1) == 0)
      {
        goto LABEL_440;
      }
    }

    else if (*(a3 + 408))
    {
      goto LABEL_440;
    }
  }

  else if ((v7 & 0x100000000000000) != 0)
  {
    goto LABEL_440;
  }

  if ((has & 0x400000000) != 0)
  {
    if ((v7 & 0x400000000) == 0 || self->_trafficClass != *(a3 + 35))
    {
      goto LABEL_440;
    }
  }

  else if ((v7 & 0x400000000) != 0)
  {
    goto LABEL_440;
  }

  if ((has & 0x40000000000) != 0)
  {
    if ((v7 & 0x40000000000) == 0 || self->_failureReason != *(a3 + 90))
    {
      goto LABEL_440;
    }
  }

  else if ((v7 & 0x40000000000) != 0)
  {
    goto LABEL_440;
  }

  if ((has & 0x2000000) != 0)
  {
    if ((v7 & 0x2000000) == 0 || self->_pathTriggerMilliseconds != *(a3 + 26))
    {
      goto LABEL_440;
    }
  }

  else if ((v7 & 0x2000000) != 0)
  {
    goto LABEL_440;
  }

  if ((has & 0x10000000) != 0)
  {
    if ((v7 & 0x10000000) == 0 || self->_resolutionMilliseconds != *(a3 + 29))
    {
      goto LABEL_440;
    }
  }

  else if ((v7 & 0x10000000) != 0)
  {
    goto LABEL_440;
  }

  if ((has & 0x4000000) != 0)
  {
    if ((v7 & 0x4000000) == 0 || self->_proxyMilliseconds != *(a3 + 27))
    {
      goto LABEL_440;
    }
  }

  else if ((v7 & 0x4000000) != 0)
  {
    goto LABEL_440;
  }

  if ((has & 0x400) != 0)
  {
    if ((v7 & 0x400) == 0 || self->_flowConnectMilliseconds != *(a3 + 11))
    {
      goto LABEL_440;
    }
  }

  else if ((v7 & 0x400) != 0)
  {
    goto LABEL_440;
  }

  if ((has & 0x200000000) != 0)
  {
    if ((v7 & 0x200000000) == 0 || self->_tlsMilliseconds != *(a3 + 34))
    {
      goto LABEL_440;
    }
  }

  else if ((v7 & 0x200000000) != 0)
  {
    goto LABEL_440;
  }

  if ((has & 0x800) != 0)
  {
    if ((v7 & 0x800) == 0 || self->_flowDurationMilliseconds != *(a3 + 12))
    {
      goto LABEL_440;
    }
  }

  else if ((v7 & 0x800) != 0)
  {
    goto LABEL_440;
  }

  if ((has & 0x1000) != 0)
  {
    if ((v7 & 0x1000) == 0 || self->_ipv4AddressCount != *(a3 + 13))
    {
      goto LABEL_440;
    }
  }

  else if ((v7 & 0x1000) != 0)
  {
    goto LABEL_440;
  }

  if ((has & 0x4000) != 0)
  {
    if ((v7 & 0x4000) == 0 || self->_ipv6AddressCount != *(a3 + 15))
    {
      goto LABEL_440;
    }
  }

  else if ((v7 & 0x4000) != 0)
  {
    goto LABEL_440;
  }

  if ((has & 0x2000000000000000) != 0)
  {
    if ((v7 & 0x2000000000000000) == 0)
    {
      goto LABEL_440;
    }

    v19 = *(a3 + 413);
    if (self->_synthesizedIPv6Address)
    {
      if ((*(a3 + 413) & 1) == 0)
      {
        goto LABEL_440;
      }
    }

    else if (*(a3 + 413))
    {
      goto LABEL_440;
    }
  }

  else if ((v7 & 0x2000000000000000) != 0)
  {
    goto LABEL_440;
  }

  if ((has & 0x80000000000) != 0)
  {
    if ((v7 & 0x80000000000) == 0 || self->_firstAddressFamily != *(a3 + 91))
    {
      goto LABEL_440;
    }
  }

  else if ((v7 & 0x80000000000) != 0)
  {
    goto LABEL_440;
  }

  if ((has & 0x2000000000) != 0)
  {
    if ((v7 & 0x2000000000) == 0 || self->_connectedAddressFamily != *(a3 + 78))
    {
      goto LABEL_440;
    }
  }

  else if ((v7 & 0x2000000000) != 0)
  {
    goto LABEL_440;
  }

  if ((has & 0x40) != 0)
  {
    if ((v7 & 0x40) == 0 || self->_connectedAddressIndex != *(a3 + 7))
    {
      goto LABEL_440;
    }
  }

  else if ((v7 & 0x40) != 0)
  {
    goto LABEL_440;
  }

  if ((has & 0x4000000000) != 0)
  {
    if ((v7 & 0x4000000000) == 0 || self->_connectedInterfaceType != *(a3 + 79))
    {
      goto LABEL_440;
    }
  }

  else if ((v7 & 0x4000000000) != 0)
  {
    goto LABEL_440;
  }

  if ((has & 0x80) != 0)
  {
    if ((v7 & 0x80) == 0 || self->_connectionReuseCount != *(a3 + 8))
    {
      goto LABEL_440;
    }
  }

  else if ((v7 & 0x80) != 0)
  {
    goto LABEL_440;
  }

  if ((has & 0x200) != 0)
  {
    if ((v7 & 0x200) == 0 || self->_dataStallCount != *(a3 + 10))
    {
      goto LABEL_440;
    }
  }

  else if ((v7 & 0x200) != 0)
  {
    goto LABEL_440;
  }

  if ((has & 0x8000000000) != 0)
  {
    if ((v7 & 0x8000000000) == 0 || self->_connectionMode != *(a3 + 80))
    {
      goto LABEL_440;
    }
  }

  else if ((v7 & 0x8000000000) != 0)
  {
    goto LABEL_440;
  }

  if ((has & 0x1000000000) != 0)
  {
    if ((v7 & 0x1000000000) == 0 || self->_appleHost != *(a3 + 75))
    {
      goto LABEL_440;
    }
  }

  else if ((v7 & 0x1000000000) != 0)
  {
    goto LABEL_440;
  }

  if ((has & 0x800000000) != 0)
  {
    if ((v7 & 0x800000000) == 0 || self->_appleApp != *(a3 + 74))
    {
      goto LABEL_440;
    }
  }

  else if ((v7 & 0x800000000) != 0)
  {
    goto LABEL_440;
  }

  if ((has & 0x200000000000) != 0)
  {
    if ((v7 & 0x200000000000) == 0 || self->_tlsVersion != *(a3 + 97))
    {
      goto LABEL_440;
    }
  }

  else if ((v7 & 0x200000000000) != 0)
  {
    goto LABEL_440;
  }

  if ((has & 0x100000000000) != 0)
  {
    if ((v7 & 0x100000000000) == 0 || self->_stackLevel != *(a3 + 96))
    {
      goto LABEL_440;
    }
  }

  else if ((v7 & 0x100000000000) != 0)
  {
    goto LABEL_440;
  }

  if ((has & 0x8000000000000) != 0)
  {
    if ((v7 & 0x8000000000000) == 0)
    {
      goto LABEL_440;
    }

    v20 = *(a3 + 403);
    if (self->_ipv4Available)
    {
      if ((*(a3 + 403) & 1) == 0)
      {
        goto LABEL_440;
      }
    }

    else if (*(a3 + 403))
    {
      goto LABEL_440;
    }
  }

  else if ((v7 & 0x8000000000000) != 0)
  {
    goto LABEL_440;
  }

  if ((has & 0x10000000000000) != 0)
  {
    if ((v7 & 0x10000000000000) == 0)
    {
      goto LABEL_440;
    }

    v21 = *(a3 + 404);
    if (self->_ipv6Available)
    {
      if ((*(a3 + 404) & 1) == 0)
      {
        goto LABEL_440;
      }
    }

    else if (*(a3 + 404))
    {
      goto LABEL_440;
    }
  }

  else if ((v7 & 0x10000000000000) != 0)
  {
    goto LABEL_440;
  }

  if ((has & 0x2000) != 0)
  {
    if ((v7 & 0x2000) == 0 || self->_ipv4DNSServerCount != *(a3 + 14))
    {
      goto LABEL_440;
    }
  }

  else if ((v7 & 0x2000) != 0)
  {
    goto LABEL_440;
  }

  if ((has & 0x8000) != 0)
  {
    if ((v7 & 0x8000) == 0 || self->_ipv6DNSServerCount != *(a3 + 16))
    {
      goto LABEL_440;
    }
  }

  else if ((v7 & 0x8000) != 0)
  {
    goto LABEL_440;
  }

  if ((*(&self->_has + 8) & 8) != 0)
  {
    if ((*(a3 + 432) & 8) == 0)
    {
      goto LABEL_440;
    }

    v22 = *(a3 + 419);
    if (self->_tlsVersionTimeout)
    {
      if ((*(a3 + 419) & 1) == 0)
      {
        goto LABEL_440;
      }
    }

    else if (*(a3 + 419))
    {
      goto LABEL_440;
    }
  }

  else if ((*(a3 + 432) & 8) != 0)
  {
    goto LABEL_440;
  }

  if ((has & 0x1000000000000000) != 0)
  {
    if ((v7 & 0x1000000000000000) == 0)
    {
      goto LABEL_440;
    }

    v23 = *(a3 + 412);
    if (self->_synthesizedExtraIPv6Address)
    {
      if ((*(a3 + 412) & 1) == 0)
      {
        goto LABEL_440;
      }
    }

    else if (*(a3 + 412))
    {
      goto LABEL_440;
    }
  }

  else if ((v7 & 0x1000000000000000) != 0)
  {
    goto LABEL_440;
  }

  if ((has & 4) != 0)
  {
    if ((v7 & 4) == 0 || self->_bytesIn != *(a3 + 3))
    {
      goto LABEL_440;
    }
  }

  else if ((v7 & 4) != 0)
  {
    goto LABEL_440;
  }

  if ((has & 8) != 0)
  {
    if ((v7 & 8) == 0 || self->_bytesOut != *(a3 + 4))
    {
      goto LABEL_440;
    }
  }

  else if ((v7 & 8) != 0)
  {
    goto LABEL_440;
  }

  if ((has & 2) != 0)
  {
    if ((v7 & 2) == 0 || self->_bytesDuplicate != *(a3 + 2))
    {
      goto LABEL_440;
    }
  }

  else if ((v7 & 2) != 0)
  {
    goto LABEL_440;
  }

  v24 = *v48;
  if ((has & 0x10) != 0)
  {
    if ((v24 & 0x10) == 0 || self->_bytesOutOfOrder != *(a3 + 5))
    {
      goto LABEL_440;
    }
  }

  else if ((v24 & 0x10) != 0)
  {
    goto LABEL_440;
  }

  if ((has & 0x20) != 0)
  {
    if ((v24 & 0x20) == 0 || self->_bytesRetransmitted != *(a3 + 6))
    {
      goto LABEL_440;
    }
  }

  else if ((v24 & 0x20) != 0)
  {
    goto LABEL_440;
  }

  if ((has & 0x800000) != 0)
  {
    if ((v24 & 0x800000) == 0 || self->_packetsIn != *(a3 + 24))
    {
      goto LABEL_440;
    }
  }

  else if ((v24 & 0x800000) != 0)
  {
    goto LABEL_440;
  }

  if ((has & 0x1000000) != 0)
  {
    if ((v24 & 0x1000000) == 0 || self->_packetsOut != *(a3 + 25))
    {
      goto LABEL_440;
    }
  }

  else if ((v24 & 0x1000000) != 0)
  {
    goto LABEL_440;
  }

  if ((has & 0x100) != 0)
  {
    if ((v24 & 0x100) == 0 || self->_currentRTT != *(a3 + 9))
    {
      goto LABEL_440;
    }
  }

  else if ((v24 & 0x100) != 0)
  {
    goto LABEL_440;
  }

  if ((has & 0x40000000) != 0)
  {
    if ((v24 & 0x40000000) == 0 || self->_smoothedRTT != *(a3 + 31))
    {
      goto LABEL_440;
    }
  }

  else if ((v24 & 0x40000000) != 0)
  {
    goto LABEL_440;
  }

  if (has)
  {
    if ((v24 & 1) == 0 || self->_bestRTT != *(a3 + 1))
    {
      goto LABEL_440;
    }
  }

  else if (v24)
  {
    goto LABEL_440;
  }

  if ((has & 0x8000000) != 0)
  {
    if ((v24 & 0x8000000) == 0 || self->_rTTvariance != *(a3 + 28))
    {
      goto LABEL_440;
    }
  }

  else if ((v24 & 0x8000000) != 0)
  {
    goto LABEL_440;
  }

  if ((has & 0x80000000) != 0)
  {
    if ((v24 & 0x80000000) == 0 || self->_synRetransmissionCount != *(a3 + 32))
    {
      goto LABEL_440;
    }
  }

  else if ((v24 & 0x80000000) != 0)
  {
    goto LABEL_440;
  }

  v25 = *(a3 + 432);
  if (*(&self->_has + 8))
  {
    if ((*(a3 + 432) & 1) == 0)
    {
      goto LABEL_440;
    }

    v26 = *(a3 + 416);
    if (self->_tfoUsed)
    {
      if ((*(a3 + 416) & 1) == 0)
      {
        goto LABEL_440;
      }
    }

    else if (*(a3 + 416))
    {
      goto LABEL_440;
    }
  }

  else if (*(a3 + 432))
  {
    goto LABEL_440;
  }

  if ((has & 0x400000) != 0)
  {
    if ((v24 & 0x400000) == 0 || self->_multipathServiceType != *(a3 + 23))
    {
      goto LABEL_440;
    }
  }

  else if ((v24 & 0x400000) != 0)
  {
    goto LABEL_440;
  }

  if ((has & 0x4000000000000) != 0)
  {
    if ((v24 & 0x4000000000000) == 0)
    {
      goto LABEL_440;
    }

    v27 = *(a3 + 402);
    if (self->_firstParty)
    {
      if ((*(a3 + 402) & 1) == 0)
      {
        goto LABEL_440;
      }
    }

    else if (*(a3 + 402))
    {
      goto LABEL_440;
    }
  }

  else if ((v24 & 0x4000000000000) != 0)
  {
    goto LABEL_440;
  }

  if ((has & 0x10000) != 0)
  {
    if ((v24 & 0x10000) == 0 || self->_multipathBytesInCell != *(a3 + 17))
    {
      goto LABEL_440;
    }
  }

  else if ((v24 & 0x10000) != 0)
  {
    goto LABEL_440;
  }

  if ((has & 0x80000) != 0)
  {
    if ((v24 & 0x80000) == 0 || self->_multipathBytesOutCell != *(a3 + 20))
    {
      goto LABEL_440;
    }
  }

  else if ((v24 & 0x80000) != 0)
  {
    goto LABEL_440;
  }

  if ((has & 0x40000) != 0)
  {
    if ((v24 & 0x40000) == 0 || self->_multipathBytesInWiFi != *(a3 + 19))
    {
      goto LABEL_440;
    }
  }

  else if ((v24 & 0x40000) != 0)
  {
    goto LABEL_440;
  }

  if ((has & 0x200000) != 0)
  {
    if ((v24 & 0x200000) == 0 || self->_multipathBytesOutWiFi != *(a3 + 22))
    {
      goto LABEL_440;
    }
  }

  else if ((v24 & 0x200000) != 0)
  {
    goto LABEL_440;
  }

  if ((has & 0x20000) != 0)
  {
    if ((v24 & 0x20000) == 0 || self->_multipathBytesInInitial != *(a3 + 18))
    {
      goto LABEL_440;
    }
  }

  else if ((v24 & 0x20000) != 0)
  {
    goto LABEL_440;
  }

  if ((has & 0x100000) != 0)
  {
    if ((v24 & 0x100000) == 0 || self->_multipathBytesOutInitial != *(a3 + 21))
    {
      goto LABEL_440;
    }
  }

  else if ((v24 & 0x100000) != 0)
  {
    goto LABEL_440;
  }

  if ((has & 0x20000000) != 0)
  {
    if ((v24 & 0x20000000) == 0 || self->_secondsSinceInterfaceChange != *(a3 + 30))
    {
      goto LABEL_440;
    }
  }

  else if ((v24 & 0x20000000) != 0)
  {
    goto LABEL_440;
  }

  if ((has & 0x20000000000000) != 0)
  {
    if ((v24 & 0x20000000000000) == 0)
    {
      goto LABEL_440;
    }

    v28 = *(a3 + 405);
    if (self->_isDaemon)
    {
      if ((*(a3 + 405) & 1) == 0)
      {
        goto LABEL_440;
      }
    }

    else if (*(a3 + 405))
    {
      goto LABEL_440;
    }
  }

  else if ((v24 & 0x20000000000000) != 0)
  {
    goto LABEL_440;
  }

  processName = self->_processName;
  if (processName | *(a3 + 47))
  {
    v5 = [(NSString *)processName isEqual:?];
    if (!v5)
    {
      return v5;
    }
  }

  activities = self->_activities;
  if (activities | *(a3 + 36))
  {
    v5 = [(NSMutableArray *)activities isEqual:?];
    if (!v5)
    {
      return v5;
    }
  }

  connectionUUID = self->_connectionUUID;
  if (connectionUUID | *(a3 + 41))
  {
    v5 = [(NSString *)connectionUUID isEqual:?];
    if (!v5)
    {
      return v5;
    }
  }

  v32 = *(a3 + 432);
  if ((*(&self->_has + 8) & 4) != 0)
  {
    if ((*(a3 + 432) & 4) == 0)
    {
      goto LABEL_440;
    }

    v33 = *(a3 + 418);
    if (self->_tlsHandshakeTimedOut)
    {
      if ((*(a3 + 418) & 1) == 0)
      {
        goto LABEL_440;
      }
    }

    else if (*(a3 + 418))
    {
      goto LABEL_440;
    }
  }

  else if ((*(a3 + 432) & 4) != 0)
  {
    goto LABEL_440;
  }

  v34 = *p_has;
  v35 = *v48;
  if ((*p_has & 0x80000000000000) != 0)
  {
    if ((v35 & 0x80000000000000) == 0)
    {
      goto LABEL_440;
    }

    v36 = *(a3 + 407);
    if (self->_isPathExpensive)
    {
      if ((*(a3 + 407) & 1) == 0)
      {
        goto LABEL_440;
      }
    }

    else if (*(a3 + 407))
    {
      goto LABEL_440;
    }
  }

  else if ((v35 & 0x80000000000000) != 0)
  {
    goto LABEL_440;
  }

  if ((v34 & 0x40000000000000) != 0)
  {
    if ((v35 & 0x40000000000000) == 0)
    {
      goto LABEL_440;
    }

    v37 = *(a3 + 406);
    if (self->_isPathConstrained)
    {
      if ((*(a3 + 406) & 1) == 0)
      {
        goto LABEL_440;
      }
    }

    else if (*(a3 + 406))
    {
      goto LABEL_440;
    }
  }

  else if ((v35 & 0x40000000000000) != 0)
  {
    goto LABEL_440;
  }

  if ((v34 & 0x400000000000000) != 0)
  {
    if ((v35 & 0x400000000000000) == 0)
    {
      goto LABEL_440;
    }

    v38 = *(a3 + 410);
    if (self->_prohibitsExpensive)
    {
      if ((*(a3 + 410) & 1) == 0)
      {
        goto LABEL_440;
      }
    }

    else if (*(a3 + 410))
    {
      goto LABEL_440;
    }
  }

  else if ((v35 & 0x400000000000000) != 0)
  {
    goto LABEL_440;
  }

  if ((v34 & 0x200000000000000) != 0)
  {
    if ((v35 & 0x200000000000000) == 0)
    {
      goto LABEL_440;
    }

    v39 = *(a3 + 409);
    if (self->_prohibitsConstrained)
    {
      if ((*(a3 + 409) & 1) == 0)
      {
        goto LABEL_440;
      }
    }

    else if (*(a3 + 409))
    {
      goto LABEL_440;
    }
  }

  else if ((v35 & 0x200000000000000) != 0)
  {
    goto LABEL_440;
  }

  l2Report = self->_l2Report;
  if (l2Report | *(a3 + 46))
  {
    v5 = [(AWDNWL2Report *)l2Report isEqual:?];
    if (!v5)
    {
      return v5;
    }
  }

  deviceReport = self->_deviceReport;
  if (deviceReport | *(a3 + 42))
  {
    v5 = [(AWDNWDeviceReport *)deviceReport isEqual:?];
    if (!v5)
    {
      return v5;
    }
  }

  v42 = *p_has;
  v43 = *v48;
  if ((*p_has & 0x400000000000) != 0)
  {
    if ((v43 & 0x400000000000) == 0 || self->_transportProtocol != *(a3 + 98))
    {
      goto LABEL_440;
    }
  }

  else if ((v43 & 0x400000000000) != 0)
  {
    goto LABEL_440;
  }

  if ((v42 & 0x10000000000) != 0)
  {
    if ((v43 & 0x10000000000) == 0 || self->_dnsProtocol != *(a3 + 86))
    {
      goto LABEL_440;
    }
  }

  else if ((v43 & 0x10000000000) != 0)
  {
    goto LABEL_440;
  }

  if ((v42 & 0x20000000000) != 0)
  {
    if ((v43 & 0x20000000000) == 0 || self->_dnsProvider != *(a3 + 87))
    {
      goto LABEL_440;
    }

    goto LABEL_436;
  }

  if ((v43 & 0x20000000000) != 0)
  {
LABEL_440:
    LOBYTE(v5) = 0;
    return v5;
  }

LABEL_436:
  bundleID = self->_bundleID;
  if (!(bundleID | *(a3 + 38)) || (v5 = [(NSString *)bundleID isEqual:?]) != 0)
  {
    effectiveBundleID = self->_effectiveBundleID;
    if (effectiveBundleID | *(a3 + 44))
    {

      LOBYTE(v5) = [(NSString *)effectiveBundleID isEqual:?];
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  p_has = &self->_has;
  has = self->_has;
  if ((has & 0x100000000) != 0)
  {
    v85 = 2654435761u * self->_timestamp;
  }

  else
  {
    v85 = 0;
  }

  if ((*(&self->_has + 8) & 0x10) != 0)
  {
    v84 = 2654435761 * self->_triggeredPath;
    if ((has & 0x4000000000000000) != 0)
    {
LABEL_6:
      v83 = 2654435761 * self->_systemProxyConfigured;
      if ((has & 0x1000000000000) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_69;
    }
  }

  else
  {
    v84 = 0;
    if ((has & 0x4000000000000000) != 0)
    {
      goto LABEL_6;
    }
  }

  v83 = 0;
  if ((has & 0x1000000000000) != 0)
  {
LABEL_7:
    v82 = 2654435761 * self->_customProxyConfigured;
    if ((has & 0x800000000000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_70;
  }

LABEL_69:
  v82 = 0;
  if ((has & 0x800000000000) != 0)
  {
LABEL_8:
    v81 = 2654435761 * self->_usedProxyType;
    if ((has & 0x2000000000000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_71;
  }

LABEL_70:
  v81 = 0;
  if ((has & 0x2000000000000) != 0)
  {
LABEL_9:
    v80 = 2654435761 * self->_fallbackEligible;
    if ((*(&self->_has + 8) & 0x40) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_72;
  }

LABEL_71:
  v80 = 0;
  if ((*(&self->_has + 8) & 0x40) != 0)
  {
LABEL_10:
    v79 = 2654435761 * self->_weakFallback;
    if ((*(&self->_has + 8) & 0x20) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_73;
  }

LABEL_72:
  v79 = 0;
  if ((*(&self->_has + 8) & 0x20) != 0)
  {
LABEL_11:
    v78 = 2654435761 * self->_usedFallback;
    if ((has & 0x800000000000000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_74;
  }

LABEL_73:
  v78 = 0;
  if ((has & 0x800000000000000) != 0)
  {
LABEL_12:
    v77 = 2654435761 * self->_resolutionRequired;
    if ((*(&self->_has + 8) & 2) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_75;
  }

LABEL_74:
  v77 = 0;
  if ((*(&self->_has + 8) & 2) != 0)
  {
LABEL_13:
    v76 = 2654435761 * self->_tlsConfigured;
    if (has < 0)
    {
      goto LABEL_14;
    }

    goto LABEL_76;
  }

LABEL_75:
  v76 = 0;
  if (has < 0)
  {
LABEL_14:
    v75 = 2654435761 * self->_tfoConfigured;
    if ((has & 0x100000000000000) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_77;
  }

LABEL_76:
  v75 = 0;
  if ((has & 0x100000000000000) != 0)
  {
LABEL_15:
    v74 = 2654435761 * self->_multipathConfigured;
    if ((has & 0x400000000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_78;
  }

LABEL_77:
  v74 = 0;
  if ((has & 0x400000000) != 0)
  {
LABEL_16:
    v73 = 2654435761u * self->_trafficClass;
    if ((has & 0x40000000000) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_79;
  }

LABEL_78:
  v73 = 0;
  if ((has & 0x40000000000) != 0)
  {
LABEL_17:
    v72 = 2654435761 * self->_failureReason;
    if ((has & 0x2000000) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_80;
  }

LABEL_79:
  v72 = 0;
  if ((has & 0x2000000) != 0)
  {
LABEL_18:
    v71 = 2654435761u * self->_pathTriggerMilliseconds;
    if ((has & 0x10000000) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_81;
  }

LABEL_80:
  v71 = 0;
  if ((has & 0x10000000) != 0)
  {
LABEL_19:
    v70 = 2654435761u * self->_resolutionMilliseconds;
    if ((has & 0x4000000) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_82;
  }

LABEL_81:
  v70 = 0;
  if ((has & 0x4000000) != 0)
  {
LABEL_20:
    v69 = 2654435761u * self->_proxyMilliseconds;
    if ((has & 0x400) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_83;
  }

LABEL_82:
  v69 = 0;
  if ((has & 0x400) != 0)
  {
LABEL_21:
    v68 = 2654435761u * self->_flowConnectMilliseconds;
    if ((has & 0x200000000) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_84;
  }

LABEL_83:
  v68 = 0;
  if ((has & 0x200000000) != 0)
  {
LABEL_22:
    v67 = 2654435761u * self->_tlsMilliseconds;
    if ((has & 0x800) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_85;
  }

LABEL_84:
  v67 = 0;
  if ((has & 0x800) != 0)
  {
LABEL_23:
    v66 = 2654435761u * self->_flowDurationMilliseconds;
    if ((has & 0x1000) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_86;
  }

LABEL_85:
  v66 = 0;
  if ((has & 0x1000) != 0)
  {
LABEL_24:
    v65 = 2654435761u * self->_ipv4AddressCount;
    if ((has & 0x4000) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_87;
  }

LABEL_86:
  v65 = 0;
  if ((has & 0x4000) != 0)
  {
LABEL_25:
    v64 = 2654435761u * self->_ipv6AddressCount;
    if ((has & 0x2000000000000000) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_88;
  }

LABEL_87:
  v64 = 0;
  if ((has & 0x2000000000000000) != 0)
  {
LABEL_26:
    v63 = 2654435761 * self->_synthesizedIPv6Address;
    if ((has & 0x80000000000) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_89;
  }

LABEL_88:
  v63 = 0;
  if ((has & 0x80000000000) != 0)
  {
LABEL_27:
    v62 = 2654435761 * self->_firstAddressFamily;
    if ((has & 0x2000000000) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_90;
  }

LABEL_89:
  v62 = 0;
  if ((has & 0x2000000000) != 0)
  {
LABEL_28:
    v61 = 2654435761 * self->_connectedAddressFamily;
    if ((has & 0x40) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_91;
  }

LABEL_90:
  v61 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_29:
    v60 = 2654435761u * self->_connectedAddressIndex;
    if ((has & 0x4000000000) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_92;
  }

LABEL_91:
  v60 = 0;
  if ((has & 0x4000000000) != 0)
  {
LABEL_30:
    v59 = 2654435761 * self->_connectedInterfaceType;
    if ((has & 0x80) != 0)
    {
      goto LABEL_31;
    }

    goto LABEL_93;
  }

LABEL_92:
  v59 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_31:
    v58 = 2654435761u * self->_connectionReuseCount;
    if ((has & 0x200) != 0)
    {
      goto LABEL_32;
    }

    goto LABEL_94;
  }

LABEL_93:
  v58 = 0;
  if ((has & 0x200) != 0)
  {
LABEL_32:
    v57 = 2654435761u * self->_dataStallCount;
    if ((has & 0x8000000000) != 0)
    {
      goto LABEL_33;
    }

    goto LABEL_95;
  }

LABEL_94:
  v57 = 0;
  if ((has & 0x8000000000) != 0)
  {
LABEL_33:
    v56 = 2654435761 * self->_connectionMode;
    if ((has & 0x1000000000) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_96;
  }

LABEL_95:
  v56 = 0;
  if ((has & 0x1000000000) != 0)
  {
LABEL_34:
    v55 = 2654435761 * self->_appleHost;
    if ((has & 0x800000000) != 0)
    {
      goto LABEL_35;
    }

    goto LABEL_97;
  }

LABEL_96:
  v55 = 0;
  if ((has & 0x800000000) != 0)
  {
LABEL_35:
    v54 = 2654435761 * self->_appleApp;
    if ((has & 0x200000000000) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_98;
  }

LABEL_97:
  v54 = 0;
  if ((has & 0x200000000000) != 0)
  {
LABEL_36:
    v53 = 2654435761 * self->_tlsVersion;
    if ((has & 0x100000000000) != 0)
    {
      goto LABEL_37;
    }

    goto LABEL_99;
  }

LABEL_98:
  v53 = 0;
  if ((has & 0x100000000000) != 0)
  {
LABEL_37:
    v52 = 2654435761 * self->_stackLevel;
    if ((has & 0x8000000000000) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_100;
  }

LABEL_99:
  v52 = 0;
  if ((has & 0x8000000000000) != 0)
  {
LABEL_38:
    v51 = 2654435761 * self->_ipv4Available;
    if ((has & 0x10000000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_101;
  }

LABEL_100:
  v51 = 0;
  if ((has & 0x10000000000000) != 0)
  {
LABEL_39:
    v50 = 2654435761 * self->_ipv6Available;
    if ((has & 0x2000) != 0)
    {
      goto LABEL_40;
    }

    goto LABEL_102;
  }

LABEL_101:
  v50 = 0;
  if ((has & 0x2000) != 0)
  {
LABEL_40:
    v49 = 2654435761u * self->_ipv4DNSServerCount;
    if ((has & 0x8000) != 0)
    {
      goto LABEL_41;
    }

    goto LABEL_103;
  }

LABEL_102:
  v49 = 0;
  if ((has & 0x8000) != 0)
  {
LABEL_41:
    v48 = 2654435761u * self->_ipv6DNSServerCount;
    if ((*(&self->_has + 8) & 8) != 0)
    {
      goto LABEL_42;
    }

    goto LABEL_104;
  }

LABEL_103:
  v48 = 0;
  if ((*(&self->_has + 8) & 8) != 0)
  {
LABEL_42:
    v47 = 2654435761 * self->_tlsVersionTimeout;
    if ((has & 0x1000000000000000) != 0)
    {
      goto LABEL_43;
    }

    goto LABEL_105;
  }

LABEL_104:
  v47 = 0;
  if ((has & 0x1000000000000000) != 0)
  {
LABEL_43:
    v46 = 2654435761 * self->_synthesizedExtraIPv6Address;
    if ((has & 4) != 0)
    {
      goto LABEL_44;
    }

    goto LABEL_106;
  }

LABEL_105:
  v46 = 0;
  if ((has & 4) != 0)
  {
LABEL_44:
    v45 = 2654435761u * self->_bytesIn;
    if ((has & 8) != 0)
    {
      goto LABEL_45;
    }

    goto LABEL_107;
  }

LABEL_106:
  v45 = 0;
  if ((has & 8) != 0)
  {
LABEL_45:
    v44 = 2654435761u * self->_bytesOut;
    if ((has & 2) != 0)
    {
      goto LABEL_46;
    }

    goto LABEL_108;
  }

LABEL_107:
  v44 = 0;
  if ((has & 2) != 0)
  {
LABEL_46:
    v43 = 2654435761u * self->_bytesDuplicate;
    if ((has & 0x10) != 0)
    {
      goto LABEL_47;
    }

    goto LABEL_109;
  }

LABEL_108:
  v43 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_47:
    v42 = 2654435761u * self->_bytesOutOfOrder;
    if ((has & 0x20) != 0)
    {
      goto LABEL_48;
    }

    goto LABEL_110;
  }

LABEL_109:
  v42 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_48:
    v41 = 2654435761u * self->_bytesRetransmitted;
    if ((has & 0x800000) != 0)
    {
      goto LABEL_49;
    }

    goto LABEL_111;
  }

LABEL_110:
  v41 = 0;
  if ((has & 0x800000) != 0)
  {
LABEL_49:
    v40 = 2654435761u * self->_packetsIn;
    if ((has & 0x1000000) != 0)
    {
      goto LABEL_50;
    }

    goto LABEL_112;
  }

LABEL_111:
  v40 = 0;
  if ((has & 0x1000000) != 0)
  {
LABEL_50:
    v39 = 2654435761u * self->_packetsOut;
    if ((has & 0x100) != 0)
    {
      goto LABEL_51;
    }

    goto LABEL_113;
  }

LABEL_112:
  v39 = 0;
  if ((has & 0x100) != 0)
  {
LABEL_51:
    v38 = 2654435761u * self->_currentRTT;
    if ((has & 0x40000000) != 0)
    {
      goto LABEL_52;
    }

    goto LABEL_114;
  }

LABEL_113:
  v38 = 0;
  if ((has & 0x40000000) != 0)
  {
LABEL_52:
    v37 = 2654435761u * self->_smoothedRTT;
    if (has)
    {
      goto LABEL_53;
    }

    goto LABEL_115;
  }

LABEL_114:
  v37 = 0;
  if (has)
  {
LABEL_53:
    v36 = 2654435761u * self->_bestRTT;
    if ((has & 0x8000000) != 0)
    {
      goto LABEL_54;
    }

    goto LABEL_116;
  }

LABEL_115:
  v36 = 0;
  if ((has & 0x8000000) != 0)
  {
LABEL_54:
    v35 = 2654435761u * self->_rTTvariance;
    if ((has & 0x80000000) != 0)
    {
      goto LABEL_55;
    }

    goto LABEL_117;
  }

LABEL_116:
  v35 = 0;
  if ((has & 0x80000000) != 0)
  {
LABEL_55:
    v34 = 2654435761u * self->_synRetransmissionCount;
    if (*(&self->_has + 8))
    {
      goto LABEL_56;
    }

    goto LABEL_118;
  }

LABEL_117:
  v34 = 0;
  if (*(&self->_has + 8))
  {
LABEL_56:
    v33 = 2654435761 * self->_tfoUsed;
    if ((has & 0x400000) != 0)
    {
      goto LABEL_57;
    }

    goto LABEL_119;
  }

LABEL_118:
  v33 = 0;
  if ((has & 0x400000) != 0)
  {
LABEL_57:
    v32 = 2654435761u * self->_multipathServiceType;
    if ((has & 0x4000000000000) != 0)
    {
      goto LABEL_58;
    }

    goto LABEL_120;
  }

LABEL_119:
  v32 = 0;
  if ((has & 0x4000000000000) != 0)
  {
LABEL_58:
    v31 = 2654435761 * self->_firstParty;
    if ((has & 0x10000) != 0)
    {
      goto LABEL_59;
    }

    goto LABEL_121;
  }

LABEL_120:
  v31 = 0;
  if ((has & 0x10000) != 0)
  {
LABEL_59:
    v30 = 2654435761u * self->_multipathBytesInCell;
    if ((has & 0x80000) != 0)
    {
      goto LABEL_60;
    }

    goto LABEL_122;
  }

LABEL_121:
  v30 = 0;
  if ((has & 0x80000) != 0)
  {
LABEL_60:
    v29 = 2654435761u * self->_multipathBytesOutCell;
    if ((has & 0x40000) != 0)
    {
      goto LABEL_61;
    }

    goto LABEL_123;
  }

LABEL_122:
  v29 = 0;
  if ((has & 0x40000) != 0)
  {
LABEL_61:
    v28 = 2654435761u * self->_multipathBytesInWiFi;
    if ((has & 0x200000) != 0)
    {
      goto LABEL_62;
    }

    goto LABEL_124;
  }

LABEL_123:
  v28 = 0;
  if ((has & 0x200000) != 0)
  {
LABEL_62:
    v27 = 2654435761u * self->_multipathBytesOutWiFi;
    if ((has & 0x20000) != 0)
    {
      goto LABEL_63;
    }

    goto LABEL_125;
  }

LABEL_124:
  v27 = 0;
  if ((has & 0x20000) != 0)
  {
LABEL_63:
    v26 = 2654435761u * self->_multipathBytesInInitial;
    if ((has & 0x100000) != 0)
    {
      goto LABEL_64;
    }

    goto LABEL_126;
  }

LABEL_125:
  v26 = 0;
  if ((has & 0x100000) != 0)
  {
LABEL_64:
    v25 = 2654435761u * self->_multipathBytesOutInitial;
    if ((has & 0x20000000) != 0)
    {
      goto LABEL_65;
    }

LABEL_127:
    v24 = 0;
    if ((has & 0x20000000000000) != 0)
    {
      goto LABEL_66;
    }

    goto LABEL_128;
  }

LABEL_126:
  v25 = 0;
  if ((has & 0x20000000) == 0)
  {
    goto LABEL_127;
  }

LABEL_65:
  v24 = 2654435761u * self->_secondsSinceInterfaceChange;
  if ((has & 0x20000000000000) != 0)
  {
LABEL_66:
    v23 = 2654435761 * self->_isDaemon;
    goto LABEL_129;
  }

LABEL_128:
  v23 = 0;
LABEL_129:
  v22 = [(NSString *)self->_processName hash];
  v21 = [(NSMutableArray *)self->_activities hash];
  v5 = [(NSString *)self->_connectionUUID hash];
  if ((*(p_has + 8) & 4) != 0)
  {
    v6 = 2654435761 * self->_tlsHandshakeTimedOut;
  }

  else
  {
    v6 = 0;
  }

  v7 = *p_has;
  if ((*p_has & 0x80000000000000) != 0)
  {
    v8 = 2654435761 * self->_isPathExpensive;
    if ((v7 & 0x40000000000000) != 0)
    {
LABEL_134:
      v9 = 2654435761 * self->_isPathConstrained;
      if ((v7 & 0x400000000000000) != 0)
      {
        goto LABEL_135;
      }

LABEL_139:
      v10 = 0;
      if ((v7 & 0x200000000000000) != 0)
      {
        goto LABEL_136;
      }

      goto LABEL_140;
    }
  }

  else
  {
    v8 = 0;
    if ((v7 & 0x40000000000000) != 0)
    {
      goto LABEL_134;
    }
  }

  v9 = 0;
  if ((v7 & 0x400000000000000) == 0)
  {
    goto LABEL_139;
  }

LABEL_135:
  v10 = 2654435761 * self->_prohibitsExpensive;
  if ((v7 & 0x200000000000000) != 0)
  {
LABEL_136:
    v11 = 2654435761 * self->_prohibitsConstrained;
    goto LABEL_141;
  }

LABEL_140:
  v11 = 0;
LABEL_141:
  v12 = [(AWDNWL2Report *)self->_l2Report hash];
  v13 = [(AWDNWDeviceReport *)self->_deviceReport hash];
  v14 = *p_has;
  if ((*p_has & 0x400000000000) == 0)
  {
    v15 = 0;
    if ((v14 & 0x10000000000) != 0)
    {
      goto LABEL_143;
    }

LABEL_146:
    v16 = 0;
    if ((v14 & 0x20000000000) != 0)
    {
      goto LABEL_144;
    }

LABEL_147:
    v17 = 0;
    goto LABEL_148;
  }

  v15 = 2654435761 * self->_transportProtocol;
  if ((v14 & 0x10000000000) == 0)
  {
    goto LABEL_146;
  }

LABEL_143:
  v16 = 2654435761 * self->_dnsProtocol;
  if ((v14 & 0x20000000000) == 0)
  {
    goto LABEL_147;
  }

LABEL_144:
  v17 = 2654435761 * self->_dnsProvider;
LABEL_148:
  v18 = v84 ^ v85 ^ v83 ^ v82 ^ v81 ^ v80 ^ v79 ^ v78 ^ v77 ^ v76 ^ v75 ^ v74 ^ v73 ^ v72 ^ v71 ^ v70 ^ v69 ^ v68 ^ v67 ^ v66 ^ v65 ^ v64 ^ v63 ^ v62 ^ v61 ^ v60 ^ v59 ^ v58 ^ v57 ^ v56 ^ v55 ^ v54 ^ v53 ^ v52 ^ v51 ^ v50 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v5 ^ v6 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
  v19 = v15 ^ v16 ^ v17 ^ [(NSString *)self->_bundleID hash];
  return v18 ^ v19 ^ [(NSString *)self->_effectiveBundleID hash];
}

- (void)mergeFrom:(id)a3
{
  v28 = *MEMORY[0x29EDCA608];
  v5 = a3 + 424;
  if (*(a3 + 428))
  {
    self->_timestamp = *(a3 + 33);
    *&self->_has |= 0x100000000uLL;
  }

  if ((*(a3 + 432) & 0x10) != 0)
  {
    self->_triggeredPath = *(a3 + 420);
    *(&self->_has + 8) |= 0x10u;
  }

  v6 = *v5;
  if ((*v5 & 0x4000000000000000) != 0)
  {
    self->_systemProxyConfigured = *(a3 + 414);
    *&self->_has |= 0x4000000000000000uLL;
    v6 = *(a3 + 53);
    if ((v6 & 0x1000000000000) == 0)
    {
LABEL_7:
      if ((v6 & 0x800000000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_99;
    }
  }

  else if ((v6 & 0x1000000000000) == 0)
  {
    goto LABEL_7;
  }

  self->_customProxyConfigured = *(a3 + 400);
  *&self->_has |= 0x1000000000000uLL;
  v6 = *(a3 + 53);
  if ((v6 & 0x800000000000) == 0)
  {
LABEL_8:
    if ((v6 & 0x2000000000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_99:
  self->_usedProxyType = *(a3 + 99);
  *&self->_has |= 0x800000000000uLL;
  if ((*(a3 + 53) & 0x2000000000000) != 0)
  {
LABEL_9:
    self->_fallbackEligible = *(a3 + 401);
    *&self->_has |= 0x2000000000000uLL;
  }

LABEL_10:
  v7 = *(a3 + 432);
  if ((v7 & 0x40) != 0)
  {
    self->_weakFallback = *(a3 + 422);
    *(&self->_has + 8) |= 0x40u;
    v7 = *(a3 + 432);
  }

  if ((v7 & 0x20) != 0)
  {
    self->_usedFallback = *(a3 + 421);
    *(&self->_has + 8) |= 0x20u;
  }

  if ((*(a3 + 431) & 8) != 0)
  {
    self->_resolutionRequired = *(a3 + 411);
    *&self->_has |= 0x800000000000000uLL;
  }

  if ((*(a3 + 432) & 2) != 0)
  {
    self->_tlsConfigured = *(a3 + 417);
    *(&self->_has + 8) |= 2u;
  }

  v8 = *v5;
  if ((*v5 & 0x8000000000000000) != 0)
  {
    self->_tfoConfigured = *(a3 + 415);
    *&self->_has |= 0x8000000000000000;
    v8 = *(a3 + 53);
    if ((v8 & 0x100000000000000) == 0)
    {
LABEL_20:
      if ((v8 & 0x400000000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_130;
    }
  }

  else if ((v8 & 0x100000000000000) == 0)
  {
    goto LABEL_20;
  }

  self->_multipathConfigured = *(a3 + 408);
  *&self->_has |= 0x100000000000000uLL;
  v8 = *(a3 + 53);
  if ((v8 & 0x400000000) == 0)
  {
LABEL_21:
    if ((v8 & 0x40000000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_131;
  }

LABEL_130:
  self->_trafficClass = *(a3 + 35);
  *&self->_has |= 0x400000000uLL;
  v8 = *(a3 + 53);
  if ((v8 & 0x40000000000) == 0)
  {
LABEL_22:
    if ((v8 & 0x2000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_132;
  }

LABEL_131:
  self->_failureReason = *(a3 + 90);
  *&self->_has |= 0x40000000000uLL;
  v8 = *(a3 + 53);
  if ((v8 & 0x2000000) == 0)
  {
LABEL_23:
    if ((v8 & 0x10000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_133;
  }

LABEL_132:
  self->_pathTriggerMilliseconds = *(a3 + 26);
  *&self->_has |= 0x2000000uLL;
  v8 = *(a3 + 53);
  if ((v8 & 0x10000000) == 0)
  {
LABEL_24:
    if ((v8 & 0x4000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_134;
  }

LABEL_133:
  self->_resolutionMilliseconds = *(a3 + 29);
  *&self->_has |= 0x10000000uLL;
  v8 = *(a3 + 53);
  if ((v8 & 0x4000000) == 0)
  {
LABEL_25:
    if ((v8 & 0x400) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_135;
  }

LABEL_134:
  self->_proxyMilliseconds = *(a3 + 27);
  *&self->_has |= 0x4000000uLL;
  v8 = *(a3 + 53);
  if ((v8 & 0x400) == 0)
  {
LABEL_26:
    if ((v8 & 0x200000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_136;
  }

LABEL_135:
  self->_flowConnectMilliseconds = *(a3 + 11);
  *&self->_has |= 0x400uLL;
  v8 = *(a3 + 53);
  if ((v8 & 0x200000000) == 0)
  {
LABEL_27:
    if ((v8 & 0x800) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_137;
  }

LABEL_136:
  self->_tlsMilliseconds = *(a3 + 34);
  *&self->_has |= 0x200000000uLL;
  v8 = *(a3 + 53);
  if ((v8 & 0x800) == 0)
  {
LABEL_28:
    if ((v8 & 0x1000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_138;
  }

LABEL_137:
  self->_flowDurationMilliseconds = *(a3 + 12);
  *&self->_has |= 0x800uLL;
  v8 = *(a3 + 53);
  if ((v8 & 0x1000) == 0)
  {
LABEL_29:
    if ((v8 & 0x4000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_139;
  }

LABEL_138:
  self->_ipv4AddressCount = *(a3 + 13);
  *&self->_has |= 0x1000uLL;
  v8 = *(a3 + 53);
  if ((v8 & 0x4000) == 0)
  {
LABEL_30:
    if ((v8 & 0x2000000000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_140;
  }

LABEL_139:
  self->_ipv6AddressCount = *(a3 + 15);
  *&self->_has |= 0x4000uLL;
  v8 = *(a3 + 53);
  if ((v8 & 0x2000000000000000) == 0)
  {
LABEL_31:
    if ((v8 & 0x80000000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_141;
  }

LABEL_140:
  self->_synthesizedIPv6Address = *(a3 + 413);
  *&self->_has |= 0x2000000000000000uLL;
  v8 = *(a3 + 53);
  if ((v8 & 0x80000000000) == 0)
  {
LABEL_32:
    if ((v8 & 0x2000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_142;
  }

LABEL_141:
  self->_firstAddressFamily = *(a3 + 91);
  *&self->_has |= 0x80000000000uLL;
  v8 = *(a3 + 53);
  if ((v8 & 0x2000000000) == 0)
  {
LABEL_33:
    if ((v8 & 0x40) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_143;
  }

LABEL_142:
  self->_connectedAddressFamily = *(a3 + 78);
  *&self->_has |= 0x2000000000uLL;
  v8 = *(a3 + 53);
  if ((v8 & 0x40) == 0)
  {
LABEL_34:
    if ((v8 & 0x4000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_144;
  }

LABEL_143:
  self->_connectedAddressIndex = *(a3 + 7);
  *&self->_has |= 0x40uLL;
  v8 = *(a3 + 53);
  if ((v8 & 0x4000000000) == 0)
  {
LABEL_35:
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_145;
  }

LABEL_144:
  self->_connectedInterfaceType = *(a3 + 79);
  *&self->_has |= 0x4000000000uLL;
  v8 = *(a3 + 53);
  if ((v8 & 0x80) == 0)
  {
LABEL_36:
    if ((v8 & 0x200) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_146;
  }

LABEL_145:
  self->_connectionReuseCount = *(a3 + 8);
  *&self->_has |= 0x80uLL;
  v8 = *(a3 + 53);
  if ((v8 & 0x200) == 0)
  {
LABEL_37:
    if ((v8 & 0x8000000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_147;
  }

LABEL_146:
  self->_dataStallCount = *(a3 + 10);
  *&self->_has |= 0x200uLL;
  v8 = *(a3 + 53);
  if ((v8 & 0x8000000000) == 0)
  {
LABEL_38:
    if ((v8 & 0x1000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_148;
  }

LABEL_147:
  self->_connectionMode = *(a3 + 80);
  *&self->_has |= 0x8000000000uLL;
  v8 = *(a3 + 53);
  if ((v8 & 0x1000000000) == 0)
  {
LABEL_39:
    if ((v8 & 0x800000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_149;
  }

LABEL_148:
  self->_appleHost = *(a3 + 75);
  *&self->_has |= 0x1000000000uLL;
  v8 = *(a3 + 53);
  if ((v8 & 0x800000000) == 0)
  {
LABEL_40:
    if ((v8 & 0x200000000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_150;
  }

LABEL_149:
  self->_appleApp = *(a3 + 74);
  *&self->_has |= 0x800000000uLL;
  v8 = *(a3 + 53);
  if ((v8 & 0x200000000000) == 0)
  {
LABEL_41:
    if ((v8 & 0x100000000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_151;
  }

LABEL_150:
  self->_tlsVersion = *(a3 + 97);
  *&self->_has |= 0x200000000000uLL;
  v8 = *(a3 + 53);
  if ((v8 & 0x100000000000) == 0)
  {
LABEL_42:
    if ((v8 & 0x8000000000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_152;
  }

LABEL_151:
  self->_stackLevel = *(a3 + 96);
  *&self->_has |= 0x100000000000uLL;
  v8 = *(a3 + 53);
  if ((v8 & 0x8000000000000) == 0)
  {
LABEL_43:
    if ((v8 & 0x10000000000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_153;
  }

LABEL_152:
  self->_ipv4Available = *(a3 + 403);
  *&self->_has |= 0x8000000000000uLL;
  v8 = *(a3 + 53);
  if ((v8 & 0x10000000000000) == 0)
  {
LABEL_44:
    if ((v8 & 0x2000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_154;
  }

LABEL_153:
  self->_ipv6Available = *(a3 + 404);
  *&self->_has |= 0x10000000000000uLL;
  v8 = *(a3 + 53);
  if ((v8 & 0x2000) == 0)
  {
LABEL_45:
    if ((v8 & 0x8000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

LABEL_154:
  self->_ipv4DNSServerCount = *(a3 + 14);
  *&self->_has |= 0x2000uLL;
  if ((*(a3 + 53) & 0x8000) != 0)
  {
LABEL_46:
    self->_ipv6DNSServerCount = *(a3 + 16);
    *&self->_has |= 0x8000uLL;
  }

LABEL_47:
  if ((*(a3 + 432) & 8) != 0)
  {
    self->_tlsVersionTimeout = *(a3 + 419);
    *(&self->_has + 8) |= 8u;
  }

  v9 = *v5;
  if ((*v5 & 0x1000000000000000) != 0)
  {
    self->_synthesizedExtraIPv6Address = *(a3 + 412);
    *&self->_has |= 0x1000000000000000uLL;
    v9 = *(a3 + 53);
    if ((v9 & 4) == 0)
    {
LABEL_51:
      if ((v9 & 8) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_103;
    }
  }

  else if ((v9 & 4) == 0)
  {
    goto LABEL_51;
  }

  self->_bytesIn = *(a3 + 3);
  *&self->_has |= 4uLL;
  v9 = *(a3 + 53);
  if ((v9 & 8) == 0)
  {
LABEL_52:
    if ((v9 & 2) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_104;
  }

LABEL_103:
  self->_bytesOut = *(a3 + 4);
  *&self->_has |= 8uLL;
  v9 = *(a3 + 53);
  if ((v9 & 2) == 0)
  {
LABEL_53:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_105;
  }

LABEL_104:
  self->_bytesDuplicate = *(a3 + 2);
  *&self->_has |= 2uLL;
  v9 = *(a3 + 53);
  if ((v9 & 0x10) == 0)
  {
LABEL_54:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_106;
  }

LABEL_105:
  self->_bytesOutOfOrder = *(a3 + 5);
  *&self->_has |= 0x10uLL;
  v9 = *(a3 + 53);
  if ((v9 & 0x20) == 0)
  {
LABEL_55:
    if ((v9 & 0x800000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_107;
  }

LABEL_106:
  self->_bytesRetransmitted = *(a3 + 6);
  *&self->_has |= 0x20uLL;
  v9 = *(a3 + 53);
  if ((v9 & 0x800000) == 0)
  {
LABEL_56:
    if ((v9 & 0x1000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_108;
  }

LABEL_107:
  self->_packetsIn = *(a3 + 24);
  *&self->_has |= 0x800000uLL;
  v9 = *(a3 + 53);
  if ((v9 & 0x1000000) == 0)
  {
LABEL_57:
    if ((v9 & 0x100) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_109;
  }

LABEL_108:
  self->_packetsOut = *(a3 + 25);
  *&self->_has |= 0x1000000uLL;
  v9 = *(a3 + 53);
  if ((v9 & 0x100) == 0)
  {
LABEL_58:
    if ((v9 & 0x40000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_110;
  }

LABEL_109:
  self->_currentRTT = *(a3 + 9);
  *&self->_has |= 0x100uLL;
  v9 = *(a3 + 53);
  if ((v9 & 0x40000000) == 0)
  {
LABEL_59:
    if ((v9 & 1) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_111;
  }

LABEL_110:
  self->_smoothedRTT = *(a3 + 31);
  *&self->_has |= 0x40000000uLL;
  v9 = *(a3 + 53);
  if ((v9 & 1) == 0)
  {
LABEL_60:
    if ((v9 & 0x8000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_112;
  }

LABEL_111:
  self->_bestRTT = *(a3 + 1);
  *&self->_has |= 1uLL;
  v9 = *(a3 + 53);
  if ((v9 & 0x8000000) == 0)
  {
LABEL_61:
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

LABEL_112:
  self->_rTTvariance = *(a3 + 28);
  *&self->_has |= 0x8000000uLL;
  if ((*(a3 + 53) & 0x80000000) != 0)
  {
LABEL_62:
    self->_synRetransmissionCount = *(a3 + 32);
    *&self->_has |= 0x80000000uLL;
  }

LABEL_63:
  if (*(a3 + 432))
  {
    self->_tfoUsed = *(a3 + 416);
    *(&self->_has + 8) |= 1u;
  }

  v10 = *v5;
  if ((*v5 & 0x400000) != 0)
  {
    self->_multipathServiceType = *(a3 + 23);
    *&self->_has |= 0x400000uLL;
    v10 = *(a3 + 53);
    if ((v10 & 0x4000000000000) == 0)
    {
LABEL_67:
      if ((v10 & 0x10000) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_116;
    }
  }

  else if ((v10 & 0x4000000000000) == 0)
  {
    goto LABEL_67;
  }

  self->_firstParty = *(a3 + 402);
  *&self->_has |= 0x4000000000000uLL;
  v10 = *(a3 + 53);
  if ((v10 & 0x10000) == 0)
  {
LABEL_68:
    if ((v10 & 0x80000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_117;
  }

LABEL_116:
  self->_multipathBytesInCell = *(a3 + 17);
  *&self->_has |= 0x10000uLL;
  v10 = *(a3 + 53);
  if ((v10 & 0x80000) == 0)
  {
LABEL_69:
    if ((v10 & 0x40000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_118;
  }

LABEL_117:
  self->_multipathBytesOutCell = *(a3 + 20);
  *&self->_has |= 0x80000uLL;
  v10 = *(a3 + 53);
  if ((v10 & 0x40000) == 0)
  {
LABEL_70:
    if ((v10 & 0x200000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_119;
  }

LABEL_118:
  self->_multipathBytesInWiFi = *(a3 + 19);
  *&self->_has |= 0x40000uLL;
  v10 = *(a3 + 53);
  if ((v10 & 0x200000) == 0)
  {
LABEL_71:
    if ((v10 & 0x20000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_120;
  }

LABEL_119:
  self->_multipathBytesOutWiFi = *(a3 + 22);
  *&self->_has |= 0x200000uLL;
  v10 = *(a3 + 53);
  if ((v10 & 0x20000) == 0)
  {
LABEL_72:
    if ((v10 & 0x100000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_121;
  }

LABEL_120:
  self->_multipathBytesInInitial = *(a3 + 18);
  *&self->_has |= 0x20000uLL;
  v10 = *(a3 + 53);
  if ((v10 & 0x100000) == 0)
  {
LABEL_73:
    if ((v10 & 0x20000000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_122;
  }

LABEL_121:
  self->_multipathBytesOutInitial = *(a3 + 21);
  *&self->_has |= 0x100000uLL;
  v10 = *(a3 + 53);
  if ((v10 & 0x20000000) == 0)
  {
LABEL_74:
    if ((v10 & 0x20000000000000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_75;
  }

LABEL_122:
  self->_secondsSinceInterfaceChange = *(a3 + 30);
  *&self->_has |= 0x20000000uLL;
  if ((*(a3 + 53) & 0x20000000000000) != 0)
  {
LABEL_75:
    self->_isDaemon = *(a3 + 405);
    *&self->_has |= 0x20000000000000uLL;
  }

LABEL_76:
  if (*(a3 + 47))
  {
    [(AWDNWConnectionReport *)self setProcessName:?];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = *(a3 + 36);
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(AWDNWConnectionReport *)self addActivities:*(*(&v23 + 1) + 8 * i)];
      }

      v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v13);
  }

  if (*(a3 + 41))
  {
    [(AWDNWConnectionReport *)self setConnectionUUID:?];
  }

  if ((v5[8] & 4) != 0)
  {
    self->_tlsHandshakeTimedOut = *(a3 + 418);
    *(&self->_has + 8) |= 4u;
  }

  v16 = *v5;
  if ((*v5 & 0x80000000000000) != 0)
  {
    self->_isPathExpensive = *(a3 + 407);
    *&self->_has |= 0x80000000000000uLL;
    v16 = *(a3 + 53);
    if ((v16 & 0x40000000000000) == 0)
    {
LABEL_91:
      if ((v16 & 0x400000000000000) == 0)
      {
        goto LABEL_92;
      }

      goto LABEL_126;
    }
  }

  else if ((v16 & 0x40000000000000) == 0)
  {
    goto LABEL_91;
  }

  self->_isPathConstrained = *(a3 + 406);
  *&self->_has |= 0x40000000000000uLL;
  v16 = *(a3 + 53);
  if ((v16 & 0x400000000000000) == 0)
  {
LABEL_92:
    if ((v16 & 0x200000000000000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_93;
  }

LABEL_126:
  self->_prohibitsExpensive = *(a3 + 410);
  *&self->_has |= 0x400000000000000uLL;
  if ((*(a3 + 53) & 0x200000000000000) != 0)
  {
LABEL_93:
    self->_prohibitsConstrained = *(a3 + 409);
    *&self->_has |= 0x200000000000000uLL;
  }

LABEL_94:
  l2Report = self->_l2Report;
  v18 = *(a3 + 46);
  if (l2Report)
  {
    if (v18)
    {
      [(AWDNWL2Report *)l2Report mergeFrom:?];
    }
  }

  else if (v18)
  {
    [(AWDNWConnectionReport *)self setL2Report:?];
  }

  deviceReport = self->_deviceReport;
  v20 = *(a3 + 42);
  if (deviceReport)
  {
    if (v20)
    {
      [(AWDNWDeviceReport *)deviceReport mergeFrom:?];
    }
  }

  else if (v20)
  {
    [(AWDNWConnectionReport *)self setDeviceReport:?];
  }

  v21 = *v5;
  if ((*v5 & 0x400000000000) != 0)
  {
    self->_transportProtocol = *(a3 + 98);
    *&self->_has |= 0x400000000000uLL;
    v21 = *(a3 + 53);
    if ((v21 & 0x10000000000) == 0)
    {
LABEL_165:
      if ((v21 & 0x20000000000) == 0)
      {
        goto LABEL_167;
      }

      goto LABEL_166;
    }
  }

  else if ((v21 & 0x10000000000) == 0)
  {
    goto LABEL_165;
  }

  self->_dnsProtocol = *(a3 + 86);
  *&self->_has |= 0x10000000000uLL;
  if ((*(a3 + 53) & 0x20000000000) != 0)
  {
LABEL_166:
    self->_dnsProvider = *(a3 + 87);
    *&self->_has |= 0x20000000000uLL;
  }

LABEL_167:
  if (*(a3 + 38))
  {
    [(AWDNWConnectionReport *)self setBundleID:?];
  }

  if (*(a3 + 44))
  {
    [(AWDNWConnectionReport *)self setEffectiveBundleID:?];
  }

  v22 = *MEMORY[0x29EDCA608];
}

@end