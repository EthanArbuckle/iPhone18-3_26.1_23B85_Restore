@interface TSDgPTPPortStatistics
- (TSDgPTPPortStatistics)init;
- (TSDgPTPPortStatistics)initWithPort:(id)a3;
@end

@implementation TSDgPTPPortStatistics

- (TSDgPTPPortStatistics)init
{
  v3 = [NSString stringWithUTF8String:"[TSDgPTPPortStatistics init]"];
  [NSException raise:NSInvalidArgumentException format:@"Do not call %@", v3];

  return 0;
}

- (TSDgPTPPortStatistics)initWithPort:(id)a3
{
  v4 = a3;
  v64.receiver = self;
  v64.super_class = TSDgPTPPortStatistics;
  v5 = [(TSDgPTPPortStatistics *)&v64 init];
  if (v5)
  {
    v5->_portType = [v4 portType];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [NSString alloc];
      v7 = [v4 interfaceName];
      v8 = [v6 initWithFormat:@"Ethernet|%@", v7];
      portIdentifier = v5->_portIdentifier;
      v5->_portIdentifier = v8;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [NSString alloc];
        v7 = [v4 interfaceName];
        portIdentifier = [v4 destinationAddressString];
        v11 = [v10 initWithFormat:@"LLPtP|%@|%@", v7, portIdentifier];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [NSString alloc];
          v7 = [v4 interfaceName];
          portIdentifier = [v4 destinationAddressString];
          v11 = [v12 initWithFormat:@"UDPv4PtP|%@|%@", v7, portIdentifier];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = [NSString alloc];
            v7 = [v4 interfaceName];
            portIdentifier = [v4 destinationAddressString];
            v11 = [v13 initWithFormat:@"UDPv6PtP|%@|%@", v7, portIdentifier];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = [NSString alloc];
              v7 = [v4 interfaceName];
              portIdentifier = [v4 destinationAddressString];
              v11 = [v14 initWithFormat:@"LLEtE|%@|%@", v7, portIdentifier];
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v15 = [NSString alloc];
                v7 = [v4 interfaceName];
                portIdentifier = [v4 destinationAddressString];
                v11 = [v15 initWithFormat:@"UDPv4EtE|%@|%@", v7, portIdentifier];
              }

              else
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  goto LABEL_18;
                }

                v16 = [NSString alloc];
                v7 = [v4 interfaceName];
                portIdentifier = [v4 destinationAddressString];
                v11 = [v16 initWithFormat:@"UDPv6EtE|%@|%@", v7, portIdentifier];
              }
            }
          }
        }
      }

      v17 = v5->_portIdentifier;
      v5->_portIdentifier = v11;
    }

LABEL_18:
    v5->_portRole = [v4 portRole];
    v18 = [v4 service];
    v19 = [v18 iodProperties];

    if (v19)
    {
      v20 = [v19 objectForKeyedSubscript:@"ReceivedSyncCounter"];
      v5->_receivedSyncCounter = [v20 unsignedIntValue];

      v21 = [v19 objectForKeyedSubscript:@"ReceivedFollowUpCounter"];
      v5->_receivedFollowUpCounter = [v21 unsignedIntValue];

      v22 = [v19 objectForKeyedSubscript:@"ReceivedAnnounceCounter"];
      v5->_receivedAnnounceCounter = [v22 unsignedIntValue];

      v23 = [v19 objectForKeyedSubscript:@"ReceivedSignalCounter"];
      v5->_receivedSignalCounter = [v23 unsignedIntValue];

      v5->_receivedPacketDiscardCounter = 0;
      v24 = [v19 objectForKeyedSubscript:@"SyncReceiptTimeoutCounter"];
      v5->_syncReceiptTimeoutCounter = [v24 unsignedIntValue];

      v25 = [v19 objectForKeyedSubscript:@"AnnounceReceiptTimeoutCounter"];
      v5->_announceReceiptTimeoutCounter = [v25 unsignedIntValue];

      v26 = [v19 objectForKeyedSubscript:@"AllowedLostResponsesExceededCounter"];
      v5->_allowedLostResponsesExceededCounter = [v26 unsignedIntValue];

      v27 = [v19 objectForKeyedSubscript:@"TransmittedSyncCounter"];
      v5->_transmittedSyncCounter = [v27 unsignedIntValue];

      v28 = [v19 objectForKeyedSubscript:@"TransmittedFollowUpCounter"];
      v5->_transmittedFollowUpCounter = [v28 unsignedIntValue];

      v29 = [v19 objectForKeyedSubscript:@"TransmittedAnnounceCounter"];
      v5->_transmittedAnnounceCounter = [v29 unsignedIntValue];

      v30 = [v19 objectForKeyedSubscript:@"TransmittedSignalCounter"];
      v5->_transmittedSignalCounter = [v30 unsignedIntValue];

      v31 = [v19 objectForKeyedSubscript:@"TransmittedPacketDiscardCounter"];
      v5->_transmittedPacketDiscardCounter = [v31 unsignedIntValue];

      v32 = [v19 objectForKeyedSubscript:@"AttemptedSyncCounter"];
      v5->_attemptedSyncCounter = [v32 unsignedIntValue];

      v33 = [v19 objectForKeyedSubscript:@"AttemptedFollowUpCounter"];
      v5->_attemptedFollowUpCounter = [v33 unsignedIntValue];

      v34 = [v19 objectForKeyedSubscript:@"AttemptedAnnounceCounter"];
      v5->_attemptedAnnounceCounter = [v34 unsignedIntValue];

      v35 = [v19 objectForKeyedSubscript:@"AttemptedSignalCounter"];
      v5->_attemptedSignalCounter = [v35 unsignedIntValue];

      v36 = [v19 objectForKeyedSubscript:@"RawDelayExceededCounter"];
      v5->_rawDelayExceededCounter = [v36 unsignedIntValue];

      v37 = [v19 objectForKeyedSubscript:@"RawDelayMeasurementCounter"];
      v5->_rawDelayMeasurementCounter = [v37 unsignedIntValue];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v38 = [v19 objectForKeyedSubscript:@"ReceivedPDelayRequestCounter"];
        v5->_receivedPDelayRequestCounter = [v38 unsignedIntValue];

        v62 = @"ReceivedPDelayResponseCounter";
        v63 = @"ReceivedPDelayResponseFollowUpCounter";
        v39 = @"AttemptedPDelayResponseCounter";
        v40 = @"TransmittedPDelayResponseFollowUpCounter";
        v60 = @"AttemptedPDelayRequestCounter";
        v61 = 124;
        v58 = @"TransmittedPDelayRequestCounter";
        v59 = 120;
        v56 = @"AttemptedPDelayResponseFollowUpCounter";
        v57 = 116;
        v55 = 112;
        v41 = 108;
        v42 = 104;
        v43 = 100;
        v44 = 96;
        v45 = @"TransmittedPDelayResponseCounter";
LABEL_23:
        v46 = [v19 objectForKeyedSubscript:v45];
        *(&v5->super.isa + v44) = [v46 unsignedIntValue];

        v47 = [v19 objectForKeyedSubscript:v40];
        *(&v5->super.isa + v43) = [v47 unsignedIntValue];

        v48 = [v19 objectForKeyedSubscript:v39];
        *(&v5->super.isa + v42) = [v48 unsignedIntValue];

        v49 = [v19 objectForKeyedSubscript:v56];
        *(&v5->super.isa + v41) = [v49 unsignedIntValue];

        v50 = [v19 objectForKeyedSubscript:v58];
        *(&v5->super.isa + v55) = [v50 unsignedIntValue];

        v51 = [v19 objectForKeyedSubscript:v60];
        *(&v5->super.isa + v57) = [v51 unsignedIntValue];

        v52 = [v19 objectForKeyedSubscript:v62];
        *(&v5->super.isa + v59) = [v52 unsignedIntValue];

        v53 = [v19 objectForKeyedSubscript:v63];
        *(&v5->super.isa + v61) = [v53 unsignedIntValue];

        goto LABEL_24;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v62 = @"SupersededSyncCounter";
        v63 = @"SupersededDelayCounter";
        v39 = @"AttemptedDelayResponseCounter";
        v40 = @"TransmittedDelayResponseCounter";
        v60 = @"ReceivedDelayResponseCounter";
        v61 = 156;
        v58 = @"AttemptedDelayRequestCounter";
        v59 = 152;
        v56 = @"TransmittedDelayRequestCounter";
        v57 = 148;
        v55 = 144;
        v41 = 140;
        v42 = 136;
        v43 = 132;
        v44 = 128;
        v45 = @"ReceivedDelayRequestCounter";
        goto LABEL_23;
      }
    }

LABEL_24:
  }

  return v5;
}

@end