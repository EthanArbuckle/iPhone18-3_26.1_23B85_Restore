@interface WPScanRequest
- (WPScanRequest)init;
- (WPScanRequest)initWithCoder:(id)coder;
- (id)convertUseCaseToString:(id)string;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)setBlobValue:(id)value;
- (void)setMaskValue:(id)value;
@end

@implementation WPScanRequest

- (id)description
{
  [(WPScanRequest *)self scanningRates];
  if (v29 == 0xFFFF)
  {
    v25 = @"No Scan";
  }

  else
  {
    v3 = MEMORY[0x277CCACA8];
    [(WPScanRequest *)self scanningRates];
    v25 = [v3 stringWithFormat:@"%ld", v28];
  }

  [(WPScanRequest *)self scanningRates];
  if (v27 == 0xFFFF)
  {
    v24 = @"No Scan";
  }

  else
  {
    v4 = MEMORY[0x277CCACA8];
    [(WPScanRequest *)self scanningRates];
    v24 = [v4 stringWithFormat:@"%ld", v26];
  }

  v23 = MEMORY[0x277CCACA8];
  clientType = [(WPScanRequest *)self clientType];
  blobValue = [(WPScanRequest *)self blobValue];
  maskValue = [(WPScanRequest *)self maskValue];
  activeScanning = [(WPScanRequest *)self activeScanning];
  allowDuplicates = [(WPScanRequest *)self allowDuplicates];
  scanWhenLocked = [(WPScanRequest *)self scanWhenLocked];
  rssiThreshold = [(WPScanRequest *)self rssiThreshold];
  integerValue = [rssiThreshold integerValue];
  peers = [(WPScanRequest *)self peers];
  nearbyScanMode = [(WPScanRequest *)self nearbyScanMode];
  advBuffer = [(WPScanRequest *)self advBuffer];
  priorityCritical = [(WPScanRequest *)self priorityCritical];
  range = [(WPScanRequest *)self range];
  retainDuplicates = [(WPScanRequest *)self retainDuplicates];
  useCaseList = [(WPScanRequest *)self useCaseList];
  v14 = [(WPScanRequest *)self convertUseCaseToString:useCaseList];
  v15 = [v23 stringWithFormat:@"scan request of type %ld, blob: %@, mask %@, active: %d, duplicates: %d, screen on: %@, screen off: %@, locked: %d, rssi: %ld, peers: %@ nearby scan mode: %ld, advbuf: %ld, priority critical: %d, range: %d, retain duplicates: %d, usecases: %@", clientType, blobValue, maskValue, activeScanning, allowDuplicates, v25, v24, scanWhenLocked, integerValue, peers, nearbyScanMode, advBuffer, priorityCritical, range, retainDuplicates, v14];

  return v15;
}

- (WPScanRequest)init
{
  v17.receiver = self;
  v17.super_class = WPScanRequest;
  v2 = [(WPScanRequest *)&v17 init];
  v3 = v2;
  if (v2)
  {
    *&v4 = 0xFFFFLL;
    *(&v4 + 1) = 0xFFFFLL;
    *(v2 + 104) = v4;
    *(v2 + 15) = 0xFFFFLL;
    v2[10] = 1;
    v5 = *(v2 + 3);
    *(v2 + 3) = &unk_288201988;

    array = [MEMORY[0x277CBEA60] array];
    v7 = *(v3 + 7);
    *(v3 + 7) = array;

    v3[9] = 0;
    *(v3 + 11) = 0;
    dictionary = [MEMORY[0x277CBEAC0] dictionary];
    v9 = *(v3 + 6);
    *(v3 + 6) = dictionary;

    data = [MEMORY[0x277CBEA90] data];
    v11 = *(v3 + 4);
    *(v3 + 4) = data;

    data2 = [MEMORY[0x277CBEA90] data];
    v13 = *(v3 + 5);
    *(v3 + 5) = data2;

    v3[8] = 28;
    *(v3 + 8) = 0;
    *(v3 + 72) = xmmword_2729CD2D0;
    *(v3 + 13) = 0;
    v3[15] = 0;
    array2 = [MEMORY[0x277CBEA60] array];
    v15 = *(v3 + 11);
    *(v3 + 11) = array2;

    *(v3 + 8) = 0;
    *(v3 + 12) = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v4)
  {
    [v4 setClientType:{-[WPScanRequest clientType](self, "clientType")}];
    [(WPScanRequest *)self scanningRates];
    v12 = v14;
    v13 = v15;
    [v4 setScanningRates:&v12];
    [v4 setAllowDuplicates:{-[WPScanRequest allowDuplicates](self, "allowDuplicates")}];
    [v4 setScanCache:{-[WPScanRequest scanCache](self, "scanCache")}];
    [v4 setScanWhenLocked:{-[WPScanRequest scanWhenLocked](self, "scanWhenLocked")}];
    [v4 setActiveScanning:{-[WPScanRequest activeScanning](self, "activeScanning")}];
    rssiThreshold = [(WPScanRequest *)self rssiThreshold];
    [v4 setRssiThreshold:rssiThreshold];

    blobValue = [(WPScanRequest *)self blobValue];
    [v4 setBlobValue:blobValue];

    maskValue = [(WPScanRequest *)self maskValue];
    [v4 setMaskValue:maskValue];

    options = [(WPScanRequest *)self options];
    [v4 setOptions:options];

    peers = [(WPScanRequest *)self peers];
    [v4 setPeers:peers];

    [(WPScanRequest *)self updateTime];
    [v4 setUpdateTime:?];
    [v4 setNearbyScanMode:{-[WPScanRequest nearbyScanMode](self, "nearbyScanMode")}];
    [v4 setAdvBuffer:{-[WPScanRequest advBuffer](self, "advBuffer")}];
    [v4 setPriorityCritical:{-[WPScanRequest priorityCritical](self, "priorityCritical")}];
    [v4 setRange:{-[WPScanRequest range](self, "range")}];
    [v4 setHoldVoucher:{-[WPScanRequest holdVoucher](self, "holdVoucher")}];
    useCaseList = [(WPScanRequest *)self useCaseList];
    [v4 setUseCaseList:useCaseList];

    [v4 setRetainDuplicates:{-[WPScanRequest retainDuplicates](self, "retainDuplicates")}];
    [v4 setStartPending:{-[WPScanRequest startPending](self, "startPending")}];
    [v4 setRequestedAtNsec:{-[WPScanRequest requestedAtNsec](self, "requestedAtNsec")}];
  }

  return v4;
}

- (WPScanRequest)initWithCoder:(id)coder
{
  v29[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = WPScanRequest;
  v5 = [(WPScanRequest *)&v27 init];
  if (v5)
  {
    v5->_clientType = [coderCopy decodeIntegerForKey:@"kClientType"];
    v5->_scanningRates.screenOffInterval = [coderCopy decodeIntegerForKey:@"kScanningRatesScreenOff"];
    v5->_scanningRates.screenOnInterval = [coderCopy decodeIntegerForKey:@"kScanningRatesScreenOn"];
    v5->_scanningRates.window = [coderCopy decodeIntegerForKey:@"kScanningRatesWindow"];
    v5->_scanWhenLocked = [coderCopy decodeBoolForKey:@"kScanWhenLocked"];
    v5->_scanCache = [coderCopy decodeBoolForKey:@"kWPScanCache"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kRSSIThreshold"];
    rssiThreshold = v5->_rssiThreshold;
    v5->_rssiThreshold = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kBlobValue"];
    blobValue = v5->_blobValue;
    v5->_blobValue = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kMaskValue"];
    maskValue = v5->_maskValue;
    v5->_maskValue = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kScanningOptions"];
    options = v5->_options;
    v5->_options = v12;

    v14 = MEMORY[0x277CBEB98];
    v29[0] = objc_opt_class();
    v29[1] = objc_opt_class();
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
    v16 = [v14 setWithArray:v15];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"kPeers"];
    peers = v5->_peers;
    v5->_peers = v17;

    v5->_allowDuplicates = [coderCopy decodeBoolForKey:@"kAllowDuplicates"];
    v5->_activeScanning = [coderCopy decodeBoolForKey:@"kActiveScanning"];
    [coderCopy decodeDoubleForKey:@"kUpdateTime"];
    v5->_updateTime = v19;
    v5->_nearbyScanMode = [coderCopy decodeIntegerForKey:@"kNearbyScanMode"];
    v5->_advBuffer = [coderCopy decodeIntegerForKey:@"kAdvBuffer"];
    v5->_priorityCritical = [coderCopy decodeBoolForKey:@"kPriorityCritical"];
    v5->_range = [coderCopy decodeBoolForKey:@"kRange"];
    v5->_holdVoucher = [coderCopy decodeBoolForKey:@"kHoldVoucher"];
    v20 = MEMORY[0x277CBEB98];
    v28[0] = objc_opt_class();
    v28[1] = objc_opt_class();
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
    v22 = [v20 setWithArray:v21];
    v23 = [coderCopy decodeObjectOfClasses:v22 forKey:@"kUseCases"];
    useCaseList = v5->_useCaseList;
    v5->_useCaseList = v23;

    v5->_retainDuplicates = [coderCopy decodeBoolForKey:@"kRetainDuplicates"];
    v5->_startPending = [coderCopy decodeBoolForKey:@"kStartPending"];
    v5->_requestedAtNsec = [coderCopy decodeInt64ForKey:@"kRequestedAtNsec"];
  }

  v25 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[WPScanRequest clientType](self forKey:{"clientType"), @"kClientType"}];
  [(WPScanRequest *)self scanningRates];
  [coderCopy encodeInteger:v13 forKey:@"kScanningRatesScreenOn"];
  [(WPScanRequest *)self scanningRates];
  [coderCopy encodeInteger:v12 forKey:@"kScanningRatesScreenOff"];
  [(WPScanRequest *)self scanningRates];
  [coderCopy encodeInteger:v11 forKey:@"kScanningRatesWindow"];
  [coderCopy encodeBool:-[WPScanRequest scanWhenLocked](self forKey:{"scanWhenLocked"), @"kScanWhenLocked"}];
  [coderCopy encodeBool:-[WPScanRequest scanCache](self forKey:{"scanCache"), @"kWPScanCache"}];
  rssiThreshold = [(WPScanRequest *)self rssiThreshold];
  [coderCopy encodeObject:rssiThreshold forKey:@"kRSSIThreshold"];

  blobValue = [(WPScanRequest *)self blobValue];
  [coderCopy encodeObject:blobValue forKey:@"kBlobValue"];

  maskValue = [(WPScanRequest *)self maskValue];
  [coderCopy encodeObject:maskValue forKey:@"kMaskValue"];

  options = [(WPScanRequest *)self options];
  [coderCopy encodeObject:options forKey:@"kScanningOptions"];

  peers = [(WPScanRequest *)self peers];
  [coderCopy encodeObject:peers forKey:@"kPeers"];

  [coderCopy encodeBool:-[WPScanRequest allowDuplicates](self forKey:{"allowDuplicates"), @"kAllowDuplicates"}];
  [coderCopy encodeBool:-[WPScanRequest activeScanning](self forKey:{"activeScanning"), @"kActiveScanning"}];
  [(WPScanRequest *)self updateTime];
  [coderCopy encodeDouble:@"kUpdateTime" forKey:?];
  [coderCopy encodeInteger:-[WPScanRequest nearbyScanMode](self forKey:{"nearbyScanMode"), @"kNearbyScanMode"}];
  [coderCopy encodeInteger:-[WPScanRequest advBuffer](self forKey:{"advBuffer"), @"kAdvBuffer"}];
  [coderCopy encodeBool:-[WPScanRequest priorityCritical](self forKey:{"priorityCritical"), @"kPriorityCritical"}];
  [coderCopy encodeBool:-[WPScanRequest range](self forKey:{"range"), @"kRange"}];
  [coderCopy encodeBool:-[WPScanRequest holdVoucher](self forKey:{"holdVoucher"), @"kHoldVoucher"}];
  useCaseList = [(WPScanRequest *)self useCaseList];
  [coderCopy encodeObject:useCaseList forKey:@"kUseCases"];

  [coderCopy encodeBool:-[WPScanRequest retainDuplicates](self forKey:{"retainDuplicates"), @"kRetainDuplicates"}];
  [coderCopy encodeBool:-[WPScanRequest startPending](self forKey:{"startPending"), @"kStartPending"}];
  [coderCopy encodeInt64:-[WPScanRequest requestedAtNsec](self forKey:{"requestedAtNsec"), @"kRequestedAtNsec"}];
}

- (void)setMaskValue:(id)value
{
  valueCopy = value;
  if ([(NSData *)valueCopy length]>= 0x17)
  {
    [MEMORY[0x277CBEAD8] raise:@"MaskValueTooLong" format:{@"The mask value provided %@ is longer than the %ld bytes", valueCopy, 22}];
  }

  maskValue = self->_maskValue;
  self->_maskValue = valueCopy;
}

- (void)setBlobValue:(id)value
{
  valueCopy = value;
  if ([(NSData *)valueCopy length]>= 0x17)
  {
    [MEMORY[0x277CBEAD8] raise:@"BlobValueTooLong" format:{@"The blob value provided %@ is longer than the %ld bytes", valueCopy, 22}];
  }

  blobValue = self->_blobValue;
  self->_blobValue = valueCopy;
}

- (id)convertUseCaseToString:(id)string
{
  v21 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  string = [MEMORY[0x277CCAB68] string];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = stringCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = MEMORY[0x277CCACA8];
        integerValue = [*(*(&v16 + 1) + 8 * i) integerValue];
        if (integerValue < 0x20000)
        {
          if (integerValue <= 0x20000)
          {
            switch(integerValue)
            {
              case 65536:
                v12 = "FindMyAction";
                break;
              case 65537:
                v12 = "FindMyBackground";
                break;
              case 65538:
                v12 = "FindMyActionHELE";
                break;
              case 65539:
                v12 = "FindMyBackgroundHELE";
                break;
              case 65540:
                v12 = "FindMyActionTransient";
                break;
              case 65541:
                v12 = "FindMyBackgroundTransient";
                break;
              case 65542:
                v12 = "FindMyActionHELETransient";
                break;
              case 65543:
                v12 = "FindMyBackgroundHELETransient";
                break;
              case 65544:
                v12 = "FindMyNotOptedIn";
                break;
              case 65545:
                v12 = "FindMyOptedIn";
                break;
              case 65546:
                v12 = "FindMySepAlertsEnabled";
                break;
              case 65547:
                v12 = "FindMyTemporaryAggressiveLegacy";
                break;
              case 65548:
                v12 = "FindMyTemporaryLongAggressive";
                break;
              case 65549:
                v12 = "FindMyBTFindingUserInitiated";
                break;
              case 65550:
                v12 = "FindMyHELE";
                break;
              case 65551:
                v12 = "FindMyBeaconOnDemand";
                break;
              case 65552:
                v12 = "FindMyWildTimedScan";
                break;
              case 65553:
                v12 = "FindMyBackgroundLeechScan";
                break;
              case 65554:
                v12 = "FindMySnifferMode";
                break;
              case 65555:
                v12 = "FindMyUnpair";
                break;
              case 65556:
                v12 = "FindMyUnpairHELE";
                break;
              case 65557:
                v12 = "FindMyPlaySound";
                break;
              case 65558:
                v12 = "FindMyPlaySoundHELE";
                break;
              case 65559:
                v12 = "FindMyNotOptedInBeepOnMoveWaking";
                break;
              case 65560:
                v12 = "FindMyUTTransient";
                break;
              case 65561:
                v12 = "FindMyUTHELETransient";
                break;
              case 65562:
                v12 = "FindMyActionExtendedRange";
                break;
              case 65563:
                v12 = "FindMyActionExtendedRangeLE2M";
                break;
              case 65564:
                v12 = "FindMyActionExtendedRangeTransient";
                break;
              case 65565:
                v12 = "FindMyPlaySoundExtendedRange";
                break;
              case 65566:
                v12 = "FindMyPair";
                break;
              case 65567:
                v12 = "FindMyTemporaryAggressiveLegacyExtendedRange";
                break;
              default:
                JUMPOUT(0);
            }
          }

          else
          {
            v12 = "Unspecified";
            switch(integerValue)
            {
              case 0:
                break;
              case 1:
                v12 = "HealthKit";
                break;
              case 2:
                v12 = "HomeKit";
                break;
              case 3:
                v12 = "FindMyObjectConnection";
                break;
              case 4:
                v12 = "FindMyObjectConnectionTransient";
                break;
              case 5:
                v12 = "MIDI";
                break;
              case 6:
                v12 = "Continuity";
                break;
              case 7:
                v12 = "InstantHotSpot";
                break;
              case 8:
                v12 = "NearBy";
                break;
              case 9:
                v12 = "Sharing";
                break;
              case 10:
                v12 = "HearingSupport";
                break;
              case 11:
                v12 = "Magnet";
                break;
              case 12:
                v12 = "HID";
                break;
              case 13:
                v12 = "LEA";
                break;
              case 14:
                v12 = "External";
                break;
              case 15:
                v12 = "ExternalMedical";
                break;
              case 16:
                v12 = "ExternalLock";
                break;
              case 17:
                v12 = "ExternalWatch";
                break;
              case 18:
                v12 = "SmartRouting";
                break;
              case 19:
                v12 = "DigitalID";
                break;
              case 20:
                v12 = "DigitalKey";
                break;
              case 21:
                v12 = "DigitalCarKey";
                break;
              case 22:
                v12 = "HeySiri";
                break;
              case 23:
                v12 = "ThirdPartyApp";
                break;
              case 24:
                v12 = "CNJ";
                break;
              default:
                switch(integerValue)
                {
                  case 256:
                    v12 = "DevicePresenceDetection";
                    break;
                  case 257:
                    v12 = "AudioBox";
                    break;
                  case 258:
                    v12 = "SIMTransfer";
                    break;
                  case 259:
                    v12 = "ProximityScreenOnLeechScan";
                    break;
                  case 260:
                    v12 = "MacMigrate";
                    break;
                  case 263:
                    v12 = "HIDUARTService";
                    break;
                  case 264:
                    v12 = "AccessibilitySwitchControlPairing";
                    break;
                  case 265:
                    v12 = "BaseBandFastConnect";
                    break;
                  case 266:
                    v12 = "SafetyAlerts";
                    break;
                  case 267:
                    v12 = "LECarPlay";
                    break;
                  case 268:
                    v12 = "TCCBluetooth";
                    break;
                  case 269:
                    v12 = "AOPBufferLeech";
                    break;
                  case 270:
                    v12 = "HighPriorityScanWiFi";
                    break;
                  default:
                    goto LABEL_215;
                }

                break;
            }
          }
        }

        else if (integerValue > 0x80000)
        {
          if (integerValue < 0x100000)
          {
            if (integerValue <= 851968)
            {
              if (integerValue >= 655360)
              {
                if (integerValue <= 720896)
                {
                  if (integerValue == 655360)
                  {
                    v12 = "AccessDigitalHomeKey";
                    goto LABEL_216;
                  }

                  if (integerValue == 720896)
                  {
                    v12 = "SoftwareUpdateBTWake";
                    goto LABEL_216;
                  }
                }

                else
                {
                  switch(integerValue)
                  {
                    case 720897:
                      v12 = "SofrwareUpdateOutboxControllerAuth";
                      goto LABEL_216;
                    case 786432:
                      v12 = "ProxControlDeviceClose";
                      goto LABEL_216;
                    case 851968:
                      v12 = "DCTProtocolTelephony";
                      goto LABEL_216;
                  }
                }

                goto LABEL_215;
              }

              if (integerValue > 524290)
              {
                switch(integerValue)
                {
                  case 524291:
                    v12 = "MicroLocationLeech";
                    goto LABEL_216;
                  case 589824:
                    v12 = "FindNearbyRemote";
                    goto LABEL_216;
                  case 589825:
                    v12 = "FindNearbyPencil";
                    goto LABEL_216;
                }

LABEL_215:
                v12 = "?";
                goto LABEL_216;
              }

              if (integerValue == 524289)
              {
                v12 = "ADPDBuffer";
              }

              else
              {
                v12 = "MicroLocation";
              }
            }

            else
            {
              if (integerValue <= 983041)
              {
                if (integerValue <= 917504)
                {
                  if (integerValue == 851969)
                  {
                    v12 = "DCTProtocolDataAndTelephony";
                    goto LABEL_216;
                  }

                  if (integerValue == 917504)
                  {
                    v12 = "NearbyFaceTime";
                    goto LABEL_216;
                  }
                }

                else
                {
                  switch(integerValue)
                  {
                    case 917505:
                      v12 = "NearbyFaceTimeData";
                      goto LABEL_216;
                    case 983040:
                      v12 = "SOSBeaconPartA";
                      goto LABEL_216;
                    case 983041:
                      v12 = "SOSBeaconPartB";
                      goto LABEL_216;
                  }
                }

                goto LABEL_215;
              }

              if (integerValue > 983044)
              {
                switch(integerValue)
                {
                  case 983045:
                    v12 = "SOSBeaconActivateScan";
                    goto LABEL_216;
                  case 983046:
                    v12 = "SOSBeaconActivateAdvA";
                    goto LABEL_216;
                  case 983047:
                    v12 = "SOSBeaconActivateAdvB";
                    goto LABEL_216;
                }

                goto LABEL_215;
              }

              if (integerValue == 983042)
              {
                v12 = "SOSBeaconPrecisionFindResponse";
              }

              else if (integerValue == 983043)
              {
                v12 = "SOSBeaconPrecisionFindRequest";
              }

              else
              {
                v12 = "SOSBeaconScan";
              }
            }
          }

          else
          {
            if (integerValue <= 2147418111)
            {
              switch(integerValue)
              {
                case 1048576:
                  v12 = "DOS";
                  goto LABEL_216;
                case 1048577:
                  v12 = "DOD";
                  goto LABEL_216;
                case 1114112:
                  v12 = "ProximityServiceDeviceSetup";
                  goto LABEL_216;
              }

              goto LABEL_215;
            }

            switch(integerValue)
            {
              case 2147418112:
                v12 = "InternalTestNoLockScan";
                break;
              case 2147418113:
                v12 = "InternalTestNoScreenOffScan";
                break;
              case 2147418114:
                v12 = "InternalTestScanWithNoDups";
                break;
              case 2147418115:
                v12 = "InternalTestScanWithDups";
                break;
              case 2147418116:
                v12 = "InternalTestScanFor20Seconds";
                break;
              case 2147418117:
                v12 = "InternalTestActiveScan";
                break;
              case 2147418118:
                v12 = "InternalTestUUIDScan";
                break;
              case 2147418119:
                v12 = "InternalTestScanFor10ClockSeconds";
                break;
              case 2147418120:
                v12 = "InternalTestScanBoost";
                break;
              case 2147418121:
                v12 = "InternalTestDiscoveryScanWithMRC";
                break;
              case 2147418122:
                v12 = "InternalTestAdvWithHigherPower";
                break;
              case 2147418123:
                v12 = "InternalTestScanLowDutyCycleMCOnly";
                break;
              case 2147418124:
                v12 = "InternalTestUUIDScanWithMinRSSI";
                break;
              case 2147418125:
                v12 = "InternalTestUUIDScanWithMinRSSIMediumLow";
                break;
              case 2147418126:
                v12 = "InternalTestAdvWithHigherPowerServiceDataConnectable";
                break;
              case 2147418127:
                v12 = "InternalTestAdvWithHigherPowerServiceDataNonConnectable";
                break;
              case 2147418128:
                v12 = "InternalTestAdvWithHigherPowerServiceDataS2";
                break;
              case 2147418129:
                v12 = "InternalTestAdvWithHigherPowerServiceDataS8";
                break;
              case 2147418130:
                v12 = "InternalTestDiscoveryScanCodedPHY";
                break;
              default:
                goto LABEL_215;
            }
          }
        }

        else if (integerValue >= 196608)
        {
          if (integerValue > 393218)
          {
            if (integerValue > 458752)
            {
              switch(integerValue)
              {
                case 0x70001:
                  v12 = "PrecisionFindingFindee";
                  goto LABEL_216;
                case 0x70002:
                  v12 = "SpatialHandoffHome";
                  goto LABEL_216;
                case 0x80000:
                  v12 = "ADPD";
                  goto LABEL_216;
              }
            }

            else
            {
              switch(integerValue)
              {
                case 393219:
                  v12 = "AppleIDSignIn";
                  goto LABEL_216;
                case 393220:
                  v12 = "AppleIDSignInSettings";
                  goto LABEL_216;
                case 458752:
                  v12 = "PrecisionFindingFinder";
                  goto LABEL_216;
              }
            }

            goto LABEL_215;
          }

          if (integerValue < 393216)
          {
            switch(integerValue)
            {
              case 196608:
                v12 = "DigitalIDTSA";
                goto LABEL_216;
              case 262144:
                v12 = "DigitalCarKeyThirdParty";
                goto LABEL_216;
              case 327680:
                v12 = "RapportThirdParty";
                goto LABEL_216;
            }

            goto LABEL_215;
          }

          if (integerValue == 393216)
          {
            v12 = "CaptiveNetworkJoin";
          }

          else if (integerValue == 393217)
          {
            v12 = "UseCaseSIMTransfer";
          }

          else
          {
            v12 = "MacSetup";
          }
        }

        else
        {
          switch(integerValue)
          {
            case 131072:
              v12 = "SharingDefault";
              break;
            case 131073:
              v12 = "SharingPhoneAutoUnlock";
              break;
            case 131074:
              v12 = "SharingSiriWatchAuth";
              break;
            case 131075:
              v12 = "SharingMacAutoUnlock";
              break;
            case 131076:
              v12 = "SharingEDTScreenOn";
              break;
            case 131077:
              v12 = "SharingEDTWiFiDisabled";
              break;
            case 131078:
              v12 = "SharingEDTWombatEligibleAsDefaultCamera";
              break;
            case 131079:
              v12 = "SharingEDTWombatCameraPicker";
              break;
            case 131080:
              v12 = "SharingWombatBackground";
              break;
            case 131081:
              v12 = "SharingUniversalControl";
              break;
            case 131082:
              v12 = "SharingPeopleProximity";
              break;
            case 131083:
              v12 = "SharingEDTEnsembleOpenDisplayPrefs";
              break;
            case 131084:
              v12 = "SharingEDTNearbydMotionStopped";
              break;
            case 131085:
              v12 = "SharingDoubleBoostGenericScan";
              break;
            case 131086:
              v12 = "SharingEDTIncomingAdvertisement ";
              break;
            case 131087:
              v12 = "SharingEDTWombatStreamStart";
              break;
            case 131088:
              v12 = "SharingOYAutoUnlock";
              break;
            case 131090:
              v12 = "SharingAirDrop";
              break;
            case 131091:
              v12 = "SharingNearbyInvitationHost";
              break;
            case 131092:
              v12 = "SharingNearbyInvitationParticipant";
              break;
            case 131093:
              v12 = "SharingAirDropAskToAirDrop";
              break;
            case 131094:
              v12 = "SharingAirDropTempIdentity";
              break;
            case 131095:
              v12 = "SharingAirDropNeedsCLink";
              break;
            case 131096:
              v12 = "SharingRemoteWidgetUpdate";
              break;
            case 131097:
              v12 = "SharingCountryCodeUpdate";
              break;
            case 131098:
              v12 = "SharingMacPhoneAutoUnlock";
              break;
            case 131099:
              v12 = "SharingVisionProDiscovery";
              break;
            case 131100:
              v12 = "SharingVisionProStateChange";
              break;
            case 131101:
              v12 = "SharingContinuityScreen";
              break;
            case 131102:
              v12 = "SharingEDTRemoteDisplay";
              break;
            case 131103:
              v12 = "SharingHomePodSetup";
              break;
            default:
              goto LABEL_215;
          }
        }

LABEL_216:
        v13 = [v10 stringWithUTF8String:v12];
        [string appendFormat:@"%@ ", v13];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x277D85DE8];

  return string;
}

@end