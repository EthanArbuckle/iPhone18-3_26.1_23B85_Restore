@interface TSDgPTPPortStatistics
- (TSDgPTPPortStatistics)init;
- (TSDgPTPPortStatistics)initWithPort:(id)port;
@end

@implementation TSDgPTPPortStatistics

- (TSDgPTPPortStatistics)init
{
  v3 = [NSString stringWithUTF8String:"[TSDgPTPPortStatistics init]"];
  [NSException raise:NSInvalidArgumentException format:@"Do not call %@", v3];

  return 0;
}

- (TSDgPTPPortStatistics)initWithPort:(id)port
{
  portCopy = port;
  v64.receiver = self;
  v64.super_class = TSDgPTPPortStatistics;
  v5 = [(TSDgPTPPortStatistics *)&v64 init];
  if (v5)
  {
    v5->_portType = [portCopy portType];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [NSString alloc];
      interfaceName = [portCopy interfaceName];
      v8 = [v6 initWithFormat:@"Ethernet|%@", interfaceName];
      portIdentifier = v5->_portIdentifier;
      v5->_portIdentifier = v8;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [NSString alloc];
        interfaceName = [portCopy interfaceName];
        portIdentifier = [portCopy destinationAddressString];
        portIdentifier = [v10 initWithFormat:@"LLPtP|%@|%@", interfaceName, portIdentifier];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [NSString alloc];
          interfaceName = [portCopy interfaceName];
          portIdentifier = [portCopy destinationAddressString];
          portIdentifier = [v12 initWithFormat:@"UDPv4PtP|%@|%@", interfaceName, portIdentifier];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = [NSString alloc];
            interfaceName = [portCopy interfaceName];
            portIdentifier = [portCopy destinationAddressString];
            portIdentifier = [v13 initWithFormat:@"UDPv6PtP|%@|%@", interfaceName, portIdentifier];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = [NSString alloc];
              interfaceName = [portCopy interfaceName];
              portIdentifier = [portCopy destinationAddressString];
              portIdentifier = [v14 initWithFormat:@"LLEtE|%@|%@", interfaceName, portIdentifier];
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v15 = [NSString alloc];
                interfaceName = [portCopy interfaceName];
                portIdentifier = [portCopy destinationAddressString];
                portIdentifier = [v15 initWithFormat:@"UDPv4EtE|%@|%@", interfaceName, portIdentifier];
              }

              else
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  goto LABEL_18;
                }

                v16 = [NSString alloc];
                interfaceName = [portCopy interfaceName];
                portIdentifier = [portCopy destinationAddressString];
                portIdentifier = [v16 initWithFormat:@"UDPv6EtE|%@|%@", interfaceName, portIdentifier];
              }
            }
          }
        }
      }

      v17 = v5->_portIdentifier;
      v5->_portIdentifier = portIdentifier;
    }

LABEL_18:
    v5->_portRole = [portCopy portRole];
    service = [portCopy service];
    iodProperties = [service iodProperties];

    if (iodProperties)
    {
      v20 = [iodProperties objectForKeyedSubscript:@"ReceivedSyncCounter"];
      v5->_receivedSyncCounter = [v20 unsignedIntValue];

      v21 = [iodProperties objectForKeyedSubscript:@"ReceivedFollowUpCounter"];
      v5->_receivedFollowUpCounter = [v21 unsignedIntValue];

      v22 = [iodProperties objectForKeyedSubscript:@"ReceivedAnnounceCounter"];
      v5->_receivedAnnounceCounter = [v22 unsignedIntValue];

      v23 = [iodProperties objectForKeyedSubscript:@"ReceivedSignalCounter"];
      v5->_receivedSignalCounter = [v23 unsignedIntValue];

      v5->_receivedPacketDiscardCounter = 0;
      v24 = [iodProperties objectForKeyedSubscript:@"SyncReceiptTimeoutCounter"];
      v5->_syncReceiptTimeoutCounter = [v24 unsignedIntValue];

      v25 = [iodProperties objectForKeyedSubscript:@"AnnounceReceiptTimeoutCounter"];
      v5->_announceReceiptTimeoutCounter = [v25 unsignedIntValue];

      v26 = [iodProperties objectForKeyedSubscript:@"AllowedLostResponsesExceededCounter"];
      v5->_allowedLostResponsesExceededCounter = [v26 unsignedIntValue];

      v27 = [iodProperties objectForKeyedSubscript:@"TransmittedSyncCounter"];
      v5->_transmittedSyncCounter = [v27 unsignedIntValue];

      v28 = [iodProperties objectForKeyedSubscript:@"TransmittedFollowUpCounter"];
      v5->_transmittedFollowUpCounter = [v28 unsignedIntValue];

      v29 = [iodProperties objectForKeyedSubscript:@"TransmittedAnnounceCounter"];
      v5->_transmittedAnnounceCounter = [v29 unsignedIntValue];

      v30 = [iodProperties objectForKeyedSubscript:@"TransmittedSignalCounter"];
      v5->_transmittedSignalCounter = [v30 unsignedIntValue];

      v31 = [iodProperties objectForKeyedSubscript:@"TransmittedPacketDiscardCounter"];
      v5->_transmittedPacketDiscardCounter = [v31 unsignedIntValue];

      v32 = [iodProperties objectForKeyedSubscript:@"AttemptedSyncCounter"];
      v5->_attemptedSyncCounter = [v32 unsignedIntValue];

      v33 = [iodProperties objectForKeyedSubscript:@"AttemptedFollowUpCounter"];
      v5->_attemptedFollowUpCounter = [v33 unsignedIntValue];

      v34 = [iodProperties objectForKeyedSubscript:@"AttemptedAnnounceCounter"];
      v5->_attemptedAnnounceCounter = [v34 unsignedIntValue];

      v35 = [iodProperties objectForKeyedSubscript:@"AttemptedSignalCounter"];
      v5->_attemptedSignalCounter = [v35 unsignedIntValue];

      v36 = [iodProperties objectForKeyedSubscript:@"RawDelayExceededCounter"];
      v5->_rawDelayExceededCounter = [v36 unsignedIntValue];

      v37 = [iodProperties objectForKeyedSubscript:@"RawDelayMeasurementCounter"];
      v5->_rawDelayMeasurementCounter = [v37 unsignedIntValue];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v38 = [iodProperties objectForKeyedSubscript:@"ReceivedPDelayRequestCounter"];
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
        v46 = [iodProperties objectForKeyedSubscript:v45];
        *(&v5->super.isa + v44) = [v46 unsignedIntValue];

        v47 = [iodProperties objectForKeyedSubscript:v40];
        *(&v5->super.isa + v43) = [v47 unsignedIntValue];

        v48 = [iodProperties objectForKeyedSubscript:v39];
        *(&v5->super.isa + v42) = [v48 unsignedIntValue];

        v49 = [iodProperties objectForKeyedSubscript:v56];
        *(&v5->super.isa + v41) = [v49 unsignedIntValue];

        v50 = [iodProperties objectForKeyedSubscript:v58];
        *(&v5->super.isa + v55) = [v50 unsignedIntValue];

        v51 = [iodProperties objectForKeyedSubscript:v60];
        *(&v5->super.isa + v57) = [v51 unsignedIntValue];

        v52 = [iodProperties objectForKeyedSubscript:v62];
        *(&v5->super.isa + v59) = [v52 unsignedIntValue];

        v53 = [iodProperties objectForKeyedSubscript:v63];
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