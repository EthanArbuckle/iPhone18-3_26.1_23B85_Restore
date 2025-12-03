@interface TSDClockStatistics
- (TSDClockStatistics)initWithClockIdentifier:(unint64_t)identifier;
- (void)dealloc;
- (void)didBeginClockGrandmasterChangeWithGrandmasterID:(unint64_t)d localPort:(unsigned __int16)port forClock:(id)clock;
- (void)didChangeClockMasterForClock:(id)clock;
- (void)didChangeLockStateTo:(int)to forClock:(id)clock;
- (void)didEndClockGrandmasterChangeWithGrandmasterID:(unint64_t)d localPort:(unsigned __int16)port forClock:(id)clock;
- (void)didGetStatsOfLocalPortNumber:(unint64_t)number mean:(unint64_t)mean median:(unint64_t)median stddev:(unint64_t)stddev min:(unint64_t)min max:(unint64_t)max numberOfSamples:(unsigned int)samples forClock:(id)self0;
- (void)didProcessSync:(id)sync;
- (void)didResetClock:(id)clock;
- (void)finalizeClock;
- (void)logStatistics;
@end

@implementation TSDClockStatistics

- (void)logStatistics
{
  v3 = mach_absolute_time();
  clock = self->_clock;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = self->_clock;
    v6 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      clockIdentifier = [(TSDKernelClock *)self->_clock clockIdentifier];
      *buf = 134217984;
      *&buf[4] = clockIdentifier;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "PTP Clock Statistics for 0x%016llx\n", buf, 0xCu);
    }

    v8 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      grandmasterIdentity = [(TSDKernelClock *)v5 grandmasterIdentity];
      *buf = 134217984;
      *&buf[4] = grandmasterIdentity;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "    Grandmaster Identity: 0x%016llx\n", buf, 0xCu);
    }

    lockState = [(TSDKernelClock *)v5 lockState];
    if (lockState > 2)
    {
      v11 = @"Unknown";
    }

    else
    {
      v11 = off_10004CAF8[lockState];
    }

    v15 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      uTF8String = [(__CFString *)v11 UTF8String];
      *buf = 136315138;
      *&buf[4] = uTF8String;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "    Clock lock state: %s\n", buf, 0xCu);
    }

    v384 = 0;
    v383 = 0;
    v382 = 0;
    v381 = 0;
    v380 = 0;
    v379 = 0;
    v378 = 0;
    v377 = 0;
    v17 = [(TSDKernelClock *)v5 getMachAbsoluteRateRatioNumerator:&v384 denominator:&v383 machAnchor:&v382 andDomainAnchor:&v380 forGrandmasterIdentity:&v379 portNumber:&v378 withError:&v377];
    v18 = v377;
    v19 = &_os_log_default;
    v20 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    if (v17)
    {
      if (v20)
      {
        *buf = 134218496;
        *&buf[4] = v384;
        *&buf[12] = 2048;
        v388 = v383;
        v389 = 2048;
        v390 = v384 / v383;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "    Mach Rate Ratio: %llu/%llu (%0.12f)\n", buf, 0x20u);
      }

      v21 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *&buf[4] = v382;
        *&buf[12] = 2048;
        v388 = v380;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "    Mach Anchors: %llu, %llu\n", buf, 0x16u);
      }

      v22 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *&buf[4] = v379;
        *&buf[12] = 1024;
        LODWORD(v388) = v378;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "    Mach Sync Identity: 0x%016llx.%hu\n", buf, 0x12u);
      }
    }

    else if (v20)
    {
      localizedDescription = [v18 localizedDescription];
      uTF8String2 = [localizedDescription UTF8String];
      *buf = 136315138;
      *&buf[4] = uTF8String2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "    Mach Sync Info: failed to get rate ratio and anchors with error %s\n", buf, 0xCu);
    }

    v376 = v18;
    v30 = [(TSDKernelClock *)v5 getTimeSyncTimeRateRatioNumerator:&v384 denominator:&v383 timeSyncAnchor:&v381 andDomainAnchor:&v380 forGrandmasterIdentity:&v379 portNumber:&v378 withError:&v376];
    v285 = v376;

    v31 = &_os_log_default;
    v32 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    v286 = v3;
    if (v30)
    {
      if (v32)
      {
        *buf = 134218496;
        *&buf[4] = v384;
        *&buf[12] = 2048;
        v388 = v383;
        v389 = 2048;
        v390 = v384 / v383;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "    TimeSync Rate Ratio: %llu/%llu (%0.12f)\n", buf, 0x20u);
      }

      selfCopy2 = self;

      v34 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *&buf[4] = v381;
        *&buf[12] = 2048;
        v388 = v380;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "    TimeSync Anchors: %llu, %llu\n", buf, 0x16u);
      }

      v35 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *&buf[4] = v379;
        *&buf[12] = 1024;
        LODWORD(v388) = v378;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "    TimeSync Sync Identity: 0x%016llx.%hu\n", buf, 0x12u);
      }
    }

    else
    {
      selfCopy2 = self;
      if (v32)
      {
        localizedDescription2 = [v285 localizedDescription];
        uTF8String3 = [localizedDescription2 UTF8String];
        *buf = 136315138;
        *&buf[4] = uTF8String3;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "    TimeSync Sync Info: failed to get rate ratio and anchors with error %s\n", buf, 0xCu);
      }
    }

    ports = [(TSDKernelClock *)v5 ports];
    v295 = +[NSMutableDictionary dictionary];
    v347 = +[NSMutableDictionary dictionary];
    v372 = 0u;
    v373 = 0u;
    v374 = 0u;
    v375 = 0u;
    obj = ports;
    v45 = [obj countByEnumeratingWithState:&v372 objects:v386 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v373;
      do
      {
        for (i = 0; i != v46; i = i + 1)
        {
          if (*v373 != v47)
          {
            objc_enumerationMutation(obj);
          }

          v49 = *(*(&v372 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              continue;
            }
          }

          statistics = [v49 statistics];
          if (statistics)
          {
            v51 = statistics;
            portIdentifier = [statistics portIdentifier];
            [v295 setObject:v51 forKeyedSubscript:portIdentifier];

            portIdentifier2 = [v51 portIdentifier];
            [v347 setObject:v49 forKeyedSubscript:portIdentifier2];
          }
        }

        v46 = [obj countByEnumeratingWithState:&v372 objects:v386 count:16];
      }

      while (v46);
    }

    v54 = selfCopy2;
    if (!selfCopy2->_firstStatistics)
    {
      v55 = +[TSDClockManager sharedClockManager];
      v340 = [v55 machAbsoluteTicksToNanoseconds:v286 - selfCopy2->_lastStatisticsTime];

      v370 = 0u;
      v371 = 0u;
      v368 = 0u;
      v369 = 0u;
      v56 = v295;
      v297 = [v56 countByEnumeratingWithState:&v368 objects:v385 count:16];
      if (!v297)
      {
        goto LABEL_493;
      }

      v296 = *v369;
      v287 = v56;
      v288 = selfCopy2;
      while (1)
      {
        for (j = 0; j != v297; j = j + 1)
        {
          if (*v369 != v296)
          {
            objc_enumerationMutation(v56);
          }

          v58 = *(*(&v368 + 1) + 8 * j);
          v59 = [v347 objectForKeyedSubscript:v58];
          v60 = [v56 objectForKeyedSubscript:v58];
          v61 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "    Port:\n", buf, 2u);
          }

          portType = [v60 portType];
          if (portType <= 3)
          {
            if (portType > 1)
            {
              if (portType == 2)
              {
                v69 = &_os_log_default;
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  v64 = "        Port Type: Unicast Link Layer PtP\n";
                  goto LABEL_95;
                }
              }

              else
              {
                v66 = &_os_log_default;
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  v64 = "        Port Type: Unicast UDPv4 PtP\n";
                  goto LABEL_95;
                }
              }
            }

            else if (portType)
            {
              if (portType != 1)
              {
                goto LABEL_97;
              }

              v65 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                v64 = "        Port Type: Ethernet\n";
LABEL_95:
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v64, buf, 2u);
              }
            }

            else
            {
              v68 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                v64 = "        Port Type: Unknown\n";
                goto LABEL_95;
              }
            }
          }

          else if (portType <= 5)
          {
            if (portType == 4)
            {
              v71 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                v64 = "        Port Type: Unicast UDPv6 PtP\n";
                goto LABEL_95;
              }
            }

            else
            {
              v67 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                v64 = "        Port Type: Unicast Link Layer EtE\n";
                goto LABEL_95;
              }
            }
          }

          else
          {
            switch(portType)
            {
              case 6:
                v70 = &_os_log_default;
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  v64 = "        Port Type: Unicast UDPv4 EtE\n";
                  goto LABEL_95;
                }

                break;
              case 7:
                v72 = &_os_log_default;
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  v64 = "        Port Type: Unicast UDPv6 EtE\n";
                  goto LABEL_95;
                }

                break;
              case 8:
                v63 = &_os_log_default;
                if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                {
                  break;
                }

                *buf = 0;
                v64 = "        Port Type: Local Clock\n";
                goto LABEL_95;
              default:
                goto LABEL_97;
            }
          }

LABEL_97:
          v73 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            interfaceName = [v59 interfaceName];
            uTF8String4 = [interfaceName UTF8String];
            *buf = 136315138;
            *&buf[4] = uTF8String4;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "        Interface: %s\n", buf, 0xCu);
          }

          v76 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            destinationAddressString = [v59 destinationAddressString];
            uTF8String5 = [destinationAddressString UTF8String];
            *buf = 136315138;
            *&buf[4] = uTF8String5;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "        Destination Address: %s\n", buf, 0xCu);
          }

          v79 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            propagationDelay = [v59 propagationDelay];
            *buf = 67109120;
            *&buf[4] = propagationDelay;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "        Propgation Delay: %u\n", buf, 8u);
          }

          v81 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            minimumPropagationDelay = [v59 minimumPropagationDelay];
            *buf = 67109120;
            *&buf[4] = minimumPropagationDelay;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "        Minimum Propagation Delay: %u\n", buf, 8u);
          }

          v83 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            maximumPropagationDelay = [v59 maximumPropagationDelay];
            *buf = 67109120;
            *&buf[4] = maximumPropagationDelay;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "        Maximum Propagation Delay: %u\n", buf, 8u);
          }

          v85 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            minimumRawDelay = [v59 minimumRawDelay];
            *buf = 67109120;
            *&buf[4] = minimumRawDelay;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "        Minimum Raw Delay: %u\n", buf, 8u);
          }

          v87 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            maximumRawDelay = [v59 maximumRawDelay];
            *buf = 67109120;
            *&buf[4] = maximumRawDelay;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "        Maximum Raw Delay: %u\n", buf, 8u);
          }

          v89 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            portNumber = [v59 portNumber];
            *buf = 67109120;
            *&buf[4] = portNumber;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "        Local Clock Port Number: %hu\n", buf, 8u);
          }

          v91 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            remoteClockIdentity = [v59 remoteClockIdentity];
            *buf = 134217984;
            *&buf[4] = remoteClockIdentity;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "        Remote Clock Identity: 0x%016llx\n", buf, 0xCu);
          }

          v93 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            remotePortNumber = [v59 remotePortNumber];
            *buf = 67109120;
            *&buf[4] = remotePortNumber;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "        Remote Clock Port Number: %hu\n", buf, 8u);
          }

          portRole = [v59 portRole];
          if (portRole <= 1)
          {
            if (portRole)
            {
              if (portRole != 1)
              {
                goto LABEL_135;
              }

              v98 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                v97 = "        Port Role: Disabled\n";
LABEL_133:
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v97, buf, 2u);
              }
            }

            else
            {
              v101 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                v97 = "        Port Role: Unknown\n";
                goto LABEL_133;
              }
            }
          }

          else
          {
            switch(portRole)
            {
              case 2:
                v99 = &_os_log_default;
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  v97 = "        Port Role: Passive\n";
                  goto LABEL_133;
                }

                break;
              case 3:
                v100 = &_os_log_default;
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  v97 = "        Port Role: Slave\n";
                  goto LABEL_133;
                }

                break;
              case 4:
                v96 = &_os_log_default;
                if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                {
                  break;
                }

                *buf = 0;
                v97 = "        Port Role: Master\n";
                goto LABEL_133;
              default:
                goto LABEL_135;
            }
          }

LABEL_135:
          v102 = [(NSDictionary *)v54->_lastStatistics objectForKeyedSubscript:v58];

          if (!v102)
          {
            goto LABEL_491;
          }

          v339 = j;
          v103 = [(NSDictionary *)v54->_lastStatistics objectForKeyedSubscript:v58];
          portRole2 = [v103 portRole];
          if (portRole2 != [v60 portRole])
          {
            v105 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "        Port Role changed since last statistics log. Ignore expected counts.\n", buf, 2u);
            }
          }

          if ([v60 portRole] == 3 || objc_msgSend(v60, "portRole") == 2)
          {
            v106 = v340 / sub_100017D7C([v59 remoteSyncLogMeanInterval]);
            v107 = v340 / sub_100017D7C([v59 remoteAnnounceLogMeanInterval]);
          }

          else
          {
            LODWORD(v107) = 0;
            LODWORD(v106) = 0;
          }

          v345 = v59;
          if ([v60 portRole] == 4)
          {
            v354 = v340 / sub_100017D7C([v59 localSyncLogMeanInterval]);
            v363 = v340 / sub_100017D7C([v59 localAnnounceLogMeanInterval]);
          }

          else
          {
            LODWORD(v363) = 0;
            LODWORD(v354) = 0;
          }

          receivedSyncCounter = [v60 receivedSyncCounter];
          receivedSyncCounter2 = [v103 receivedSyncCounter];
          v108 = receivedSyncCounter - receivedSyncCounter2;
          receivedFollowUpCounter = [v60 receivedFollowUpCounter];
          receivedFollowUpCounter2 = [v103 receivedFollowUpCounter];
          receivedAnnounceCounter = [v60 receivedAnnounceCounter];
          receivedAnnounceCounter2 = [v103 receivedAnnounceCounter];
          receivedSignalCounter = [v60 receivedSignalCounter];
          receivedSignalCounter2 = [v103 receivedSignalCounter];
          receivedPacketDiscardCounter = [v60 receivedPacketDiscardCounter];
          receivedPacketDiscardCounter2 = [v103 receivedPacketDiscardCounter];
          syncReceiptTimeoutCounter = [v60 syncReceiptTimeoutCounter];
          syncReceiptTimeoutCounter2 = [v103 syncReceiptTimeoutCounter];
          announceReceiptTimeoutCounter = [v60 announceReceiptTimeoutCounter];
          announceReceiptTimeoutCounter2 = [v103 announceReceiptTimeoutCounter];
          allowedLostResponsesExceededCounter = [v60 allowedLostResponsesExceededCounter];
          allowedLostResponsesExceededCounter2 = [v103 allowedLostResponsesExceededCounter];
          transmittedSyncCounter = [v60 transmittedSyncCounter];
          transmittedSyncCounter2 = [v103 transmittedSyncCounter];
          transmittedFollowUpCounter = [v60 transmittedFollowUpCounter];
          transmittedFollowUpCounter2 = [v103 transmittedFollowUpCounter];
          transmittedAnnounceCounter = [v60 transmittedAnnounceCounter];
          transmittedAnnounceCounter2 = [v103 transmittedAnnounceCounter];
          transmittedSignalCounter = [v60 transmittedSignalCounter];
          transmittedSignalCounter2 = [v103 transmittedSignalCounter];
          transmittedPacketDiscardCounter = [v60 transmittedPacketDiscardCounter];
          transmittedPacketDiscardCounter2 = [v103 transmittedPacketDiscardCounter];
          attemptedSyncCounter = [v60 attemptedSyncCounter];
          attemptedSyncCounter2 = [v103 attemptedSyncCounter];
          attemptedFollowUpCounter = [v60 attemptedFollowUpCounter];
          attemptedFollowUpCounter2 = [v103 attemptedFollowUpCounter];
          attemptedAnnounceCounter = [v60 attemptedAnnounceCounter];
          attemptedAnnounceCounter2 = [v103 attemptedAnnounceCounter];
          attemptedSignalCounter = [v60 attemptedSignalCounter];
          attemptedSignalCounter2 = [v103 attemptedSignalCounter];
          rawDelayExceededCounter = [v60 rawDelayExceededCounter];
          rawDelayExceededCounter2 = [v103 rawDelayExceededCounter];
          rawDelayMeasurementCounter = [v60 rawDelayMeasurementCounter];
          rawDelayMeasurementCounter2 = [v103 rawDelayMeasurementCounter];
          v111 = (v106 + 9) / 0xAu;
          v112 = &_os_log_default;
          v113 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
          v114 = receivedSyncCounter - receivedSyncCounter2 < v106 - v111 && v106 >= v111;
          if (v114 || v108 > v111 + v106)
          {
            if (!v113)
            {
              goto LABEL_157;
            }

            *buf = 67109632;
            *&buf[4] = receivedSyncCounter - receivedSyncCounter2;
            *&buf[8] = 1024;
            *&buf[10] = v106;
            LOWORD(v388) = 1024;
            *(&v388 + 2) = (v106 + 9) / 0xAu;
            v115 = "        Received Sync Counter: %u out of expected bounds (%u ± %u)\n";
            v116 = 20;
          }

          else
          {
            if (!v113)
            {
              goto LABEL_157;
            }

            *buf = 67109376;
            *&buf[4] = receivedSyncCounter - receivedSyncCounter2;
            *&buf[8] = 1024;
            *&buf[10] = v106;
            v115 = "        Received Sync Counter: %u expected %u\n";
            v116 = 14;
          }

          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v115, buf, v116);
LABEL_157:
          v117 = receivedFollowUpCounter - receivedFollowUpCounter2;

          v118 = &_os_log_default;
          v119 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
          v120 = v117 >= v108 - 1 || receivedSyncCounter == receivedSyncCounter2;
          v289 = v108 + 1;
          v290 = v108 - 1;
          if (v120 && v117 <= v108 + 1)
          {
            v121 = receivedAnnounceCounter;
            if (!v119)
            {
              goto LABEL_168;
            }

            *buf = 67109376;
            *&buf[4] = v117;
            *&buf[8] = 1024;
            *&buf[10] = receivedSyncCounter - receivedSyncCounter2;
            v122 = "        Received FollowUp Counter: %u expected %u\n";
          }

          else
          {
            v121 = receivedAnnounceCounter;
            if (!v119)
            {
              goto LABEL_168;
            }

            *buf = 67109376;
            *&buf[4] = v117;
            *&buf[8] = 1024;
            *&buf[10] = receivedSyncCounter - receivedSyncCounter2;
            v122 = "        Received FollowUp Counter: %u out of expected bounds (%u ± 1)\n";
          }

          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v122, buf, 0xEu);
LABEL_168:
          v123 = v121 - receivedAnnounceCounter2;

          v124 = (v107 + 9) / 0xAu;
          v125 = &_os_log_default;
          v126 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
          v127 = v121 - receivedAnnounceCounter2 < v107 - v124 && v107 >= v124;
          if (v127 || v123 > v124 + v107)
          {
            if (!v126)
            {
              goto LABEL_178;
            }

            *buf = 67109632;
            *&buf[4] = v121 - receivedAnnounceCounter2;
            *&buf[8] = 1024;
            *&buf[10] = v107;
            LOWORD(v388) = 1024;
            *(&v388 + 2) = (v107 + 9) / 0xAu;
            v128 = "        Received Announce Counter: %u out of expected bounds (%u ± %u)\n";
            v129 = 20;
          }

          else
          {
            if (!v126)
            {
              goto LABEL_178;
            }

            *buf = 67109376;
            *&buf[4] = v121 - receivedAnnounceCounter2;
            *&buf[8] = 1024;
            *&buf[10] = v107;
            v128 = "        Received Announce Counter: %u expected %u\n";
            v129 = 14;
          }

          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v128, buf, v129);
LABEL_178:

          v130 = &_os_log_default;
          v131 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
          v132 = receivedSignalCounter - receivedSignalCounter2 >= v123 - 1 || v121 == receivedAnnounceCounter2;
          if (v132 && receivedSignalCounter - receivedSignalCounter2 <= v123 + 1)
          {
            if (!v131)
            {
              goto LABEL_189;
            }

            *buf = 67109376;
            *&buf[4] = receivedSignalCounter - receivedSignalCounter2;
            *&buf[8] = 1024;
            *&buf[10] = v121 - receivedAnnounceCounter2;
            v133 = "        Received Signal Counter: %u expected %u\n";
          }

          else
          {
            if (!v131)
            {
              goto LABEL_189;
            }

            *buf = 67109376;
            *&buf[4] = receivedSignalCounter - receivedSignalCounter2;
            *&buf[8] = 1024;
            *&buf[10] = v121 - receivedAnnounceCounter2;
            v133 = "        Received Signal Counter: %u out of expected bounds (%u ± 1)\n";
          }

          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v133, buf, 0xEu);
LABEL_189:

          v134 = &_os_log_default;
          v135 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
          if (receivedPacketDiscardCounter == receivedPacketDiscardCounter2)
          {
            if (!v135)
            {
              goto LABEL_195;
            }

            *buf = 67109120;
            v136 = "        Received Packet Discard Counter: %u\n";
          }

          else
          {
            if (!v135)
            {
              goto LABEL_195;
            }

            *buf = 67109120;
            *&buf[4] = receivedPacketDiscardCounter - receivedPacketDiscardCounter2;
            v136 = "        Received Packet Discard Counter: %u greater than 0\n";
          }

          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v136, buf, 8u);
LABEL_195:

          v137 = &_os_log_default;
          v138 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
          if (syncReceiptTimeoutCounter == syncReceiptTimeoutCounter2)
          {
            if (!v138)
            {
              goto LABEL_201;
            }

            *buf = 67109120;
            v139 = "        Received Sync Receipt Timeout Counter: %u\n";
          }

          else
          {
            if (!v138)
            {
              goto LABEL_201;
            }

            *buf = 67109120;
            *&buf[4] = syncReceiptTimeoutCounter - syncReceiptTimeoutCounter2;
            v139 = "        Received Sync Receipt Timeout Counter: %u greater than 0\n";
          }

          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v139, buf, 8u);
LABEL_201:

          v140 = &_os_log_default;
          v141 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
          if (announceReceiptTimeoutCounter == announceReceiptTimeoutCounter2)
          {
            if (!v141)
            {
              goto LABEL_207;
            }

            *buf = 67109120;
            v142 = "        Received Announce Receipt Timeout Counter: %u\n";
          }

          else
          {
            if (!v141)
            {
              goto LABEL_207;
            }

            *buf = 67109120;
            *&buf[4] = announceReceiptTimeoutCounter - announceReceiptTimeoutCounter2;
            v142 = "        Received Announce Receipt Timeout Counter: %u greater than 0\n";
          }

          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v142, buf, 8u);
LABEL_207:

          v143 = &_os_log_default;
          v144 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
          if (allowedLostResponsesExceededCounter == allowedLostResponsesExceededCounter2)
          {
            if (!v144)
            {
              goto LABEL_213;
            }

            *buf = 67109120;
            v145 = "        Received Allowed Lost Responses Exceeded Counter: %u\n";
          }

          else
          {
            if (!v144)
            {
              goto LABEL_213;
            }

            *buf = 67109120;
            *&buf[4] = allowedLostResponsesExceededCounter - allowedLostResponsesExceededCounter2;
            v145 = "        Received Allowed Lost Responses Exceeded Counter: %u greater than 0\n";
          }

          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v145, buf, 8u);
LABEL_213:
          v146 = transmittedSyncCounter - transmittedSyncCounter2;

          v147 = (v354 + 9) / 0xAu;
          v148 = &_os_log_default;
          v149 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
          v150 = transmittedSyncCounter - transmittedSyncCounter2 < v354 - v147 && v354 >= v147;
          if (v150 || v146 > v147 + v354)
          {
            if (!v149)
            {
              goto LABEL_223;
            }

            *buf = 67109632;
            *&buf[4] = transmittedSyncCounter - transmittedSyncCounter2;
            *&buf[8] = 1024;
            *&buf[10] = v354;
            LOWORD(v388) = 1024;
            *(&v388 + 2) = (v354 + 9) / 0xAu;
            v151 = "        Transmitted Sync Counter: %u out of expected bounds (%u ± %u)\n";
            v152 = 20;
          }

          else
          {
            if (!v149)
            {
              goto LABEL_223;
            }

            *buf = 67109376;
            *&buf[4] = transmittedSyncCounter - transmittedSyncCounter2;
            *&buf[8] = 1024;
            *&buf[10] = v354;
            v151 = "        Transmitted Sync Counter: %u expected %u\n";
            v152 = 14;
          }

          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v151, buf, v152);
LABEL_223:

          v153 = &_os_log_default;
          v154 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
          v155 = transmittedFollowUpCounter - transmittedFollowUpCounter2 >= v146 - 1 || transmittedSyncCounter == transmittedSyncCounter2;
          if (v155 && transmittedFollowUpCounter - transmittedFollowUpCounter2 <= v146 + 1)
          {
            if (!v154)
            {
              goto LABEL_234;
            }

            *buf = 67109376;
            *&buf[4] = transmittedFollowUpCounter - transmittedFollowUpCounter2;
            *&buf[8] = 1024;
            *&buf[10] = transmittedSyncCounter - transmittedSyncCounter2;
            v156 = "        Transmitted FollowUp Counter: %u expected %u\n";
          }

          else
          {
            if (!v154)
            {
              goto LABEL_234;
            }

            *buf = 67109376;
            *&buf[4] = transmittedFollowUpCounter - transmittedFollowUpCounter2;
            *&buf[8] = 1024;
            *&buf[10] = transmittedSyncCounter - transmittedSyncCounter2;
            v156 = "        Transmitted FollowUp Counter: %u out of expected bounds (%u ± 1)\n";
          }

          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v156, buf, 0xEu);
LABEL_234:
          v157 = transmittedAnnounceCounter - transmittedAnnounceCounter2;

          v158 = transmittedAnnounceCounter - transmittedAnnounceCounter2 < v363 - 1 && v363 != 0;
          v159 = &_os_log_default;
          v160 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
          if (v158 || v157 > v363 + 1)
          {
            if (!v160)
            {
              goto LABEL_244;
            }

            *buf = 67109376;
            *&buf[4] = transmittedAnnounceCounter - transmittedAnnounceCounter2;
            *&buf[8] = 1024;
            *&buf[10] = v363;
            v161 = "        Transmitted Announce Counter: %u out of expected bounds (%u ± 1)\n";
          }

          else
          {
            if (!v160)
            {
              goto LABEL_244;
            }

            *buf = 67109376;
            *&buf[4] = transmittedAnnounceCounter - transmittedAnnounceCounter2;
            *&buf[8] = 1024;
            *&buf[10] = v363;
            v161 = "        Transmitted Announce Counter: %u expected %u\n";
          }

          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v161, buf, 0xEu);
LABEL_244:

          v162 = &_os_log_default;
          v163 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
          v164 = transmittedSignalCounter - transmittedSignalCounter2 >= v157 - 1 || transmittedAnnounceCounter == transmittedAnnounceCounter2;
          if (v164 && transmittedSignalCounter - transmittedSignalCounter2 <= v157 + 1)
          {
            if (!v163)
            {
              goto LABEL_255;
            }

            *buf = 67109376;
            *&buf[4] = transmittedSignalCounter - transmittedSignalCounter2;
            *&buf[8] = 1024;
            *&buf[10] = transmittedAnnounceCounter - transmittedAnnounceCounter2;
            v165 = "        Transmitted Signal Counter: %u expected %u\n";
          }

          else
          {
            if (!v163)
            {
              goto LABEL_255;
            }

            *buf = 67109376;
            *&buf[4] = transmittedSignalCounter - transmittedSignalCounter2;
            *&buf[8] = 1024;
            *&buf[10] = transmittedAnnounceCounter - transmittedAnnounceCounter2;
            v165 = "        Transmitted Signal Counter: %u out of expected bounds (%u ± 1)\n";
          }

          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v165, buf, 0xEu);
LABEL_255:

          v166 = &_os_log_default;
          v167 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
          if (transmittedPacketDiscardCounter == transmittedPacketDiscardCounter2)
          {
            if (!v167)
            {
              goto LABEL_261;
            }

            *buf = 67109120;
            v168 = "        Transmitted Packet Discard Counter: %u\n";
          }

          else
          {
            if (!v167)
            {
              goto LABEL_261;
            }

            *buf = 67109120;
            *&buf[4] = transmittedPacketDiscardCounter - transmittedPacketDiscardCounter2;
            v168 = "        Transmitted Packet Discard Counter: %u greater than 0\n";
          }

          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v168, buf, 8u);
LABEL_261:

          v169 = &_os_log_default;
          v170 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
          v171 = attemptedSyncCounter - attemptedSyncCounter2 < v354 - v147 && v354 >= v147;
          if (v171 || attemptedSyncCounter - attemptedSyncCounter2 > v147 + v354)
          {
            if (!v170)
            {
              goto LABEL_271;
            }

            *buf = 67109632;
            *&buf[4] = attemptedSyncCounter - attemptedSyncCounter2;
            *&buf[8] = 1024;
            *&buf[10] = v354;
            LOWORD(v388) = 1024;
            *(&v388 + 2) = (v354 + 9) / 0xAu;
            v172 = "        Attempted Sync Counter: %u out of expected bounds (%u ± %u)\n";
            v173 = 20;
          }

          else
          {
            if (!v170)
            {
              goto LABEL_271;
            }

            *buf = 67109376;
            *&buf[4] = attemptedSyncCounter - attemptedSyncCounter2;
            *&buf[8] = 1024;
            *&buf[10] = v354;
            v172 = "        Attempted Sync Counter: %u expected %u\n";
            v173 = 14;
          }

          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v172, buf, v173);
LABEL_271:

          v174 = &_os_log_default;
          v175 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
          v176 = attemptedFollowUpCounter - attemptedFollowUpCounter2 >= v146 - 1 || transmittedSyncCounter == transmittedSyncCounter2;
          if (v176 && attemptedFollowUpCounter - attemptedFollowUpCounter2 <= v146 + 1)
          {
            v59 = v345;
            v177 = v363 + 1;
            if (!v175)
            {
              goto LABEL_282;
            }

            *buf = 67109376;
            *&buf[4] = attemptedFollowUpCounter - attemptedFollowUpCounter2;
            *&buf[8] = 1024;
            *&buf[10] = transmittedSyncCounter - transmittedSyncCounter2;
            v178 = "        Attempted FollowUp Counter: %u expected %u\n";
          }

          else
          {
            v59 = v345;
            v177 = v363 + 1;
            if (!v175)
            {
              goto LABEL_282;
            }

            *buf = 67109376;
            *&buf[4] = attemptedFollowUpCounter - attemptedFollowUpCounter2;
            *&buf[8] = 1024;
            *&buf[10] = transmittedSyncCounter - transmittedSyncCounter2;
            v178 = "        Attempted FollowUp Counter: %u out of expected bounds (%u ± 1)\n";
          }

          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v178, buf, 0xEu);
LABEL_282:

          v179 = &_os_log_default;
          v180 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
          v181 = attemptedAnnounceCounter - attemptedAnnounceCounter2 >= v363 - 1 || v363 == 0;
          if (v181 && attemptedAnnounceCounter - attemptedAnnounceCounter2 <= v177)
          {
            if (!v180)
            {
              goto LABEL_293;
            }

            *buf = 67109376;
            *&buf[4] = attemptedAnnounceCounter - attemptedAnnounceCounter2;
            *&buf[8] = 1024;
            *&buf[10] = v363;
            v182 = "        Attempted Announce Counter: %u expected %u\n";
          }

          else
          {
            if (!v180)
            {
              goto LABEL_293;
            }

            *buf = 67109376;
            *&buf[4] = attemptedAnnounceCounter - attemptedAnnounceCounter2;
            *&buf[8] = 1024;
            *&buf[10] = v363;
            v182 = "        Attempted Announce Counter: %u out of expected bounds (%u ± 1)\n";
          }

          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v182, buf, 0xEu);
LABEL_293:

          v183 = &_os_log_default;
          v184 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
          v185 = attemptedSignalCounter - attemptedSignalCounter2 >= v157 - 1 || transmittedAnnounceCounter == transmittedAnnounceCounter2;
          if (v185 && attemptedSignalCounter - attemptedSignalCounter2 <= v157 + 1)
          {
            if (!v184)
            {
              goto LABEL_304;
            }

            *buf = 67109376;
            *&buf[4] = attemptedSignalCounter - attemptedSignalCounter2;
            *&buf[8] = 1024;
            *&buf[10] = transmittedAnnounceCounter - transmittedAnnounceCounter2;
            v186 = "        Attempted Signal Counter: %u expected %u\n";
          }

          else
          {
            if (!v184)
            {
              goto LABEL_304;
            }

            *buf = 67109376;
            *&buf[4] = attemptedSignalCounter - attemptedSignalCounter2;
            *&buf[8] = 1024;
            *&buf[10] = transmittedAnnounceCounter - transmittedAnnounceCounter2;
            v186 = "        Attempted Signal Counter: %u out of expected bounds (%u ± 1)\n";
          }

          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v186, buf, 0xEu);
LABEL_304:

          v187 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = rawDelayExceededCounter - rawDelayExceededCounter2;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "        Raw Delay Exceeded Counter: %u\n", buf, 8u);
          }

          v188 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = rawDelayMeasurementCounter - rawDelayMeasurementCounter2;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "        Raw Delay Measurements Counter: %u\n", buf, 8u);
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v344 = sub_100017D7C([v59 localPDelayLogMeanInterval]);
            v189 = v340 / sub_100017D7C([v59 remotePDelayLogMeanInterval]);
            receivedPDelayRequestCounter = [v60 receivedPDelayRequestCounter];
            receivedPDelayRequestCounter2 = [v103 receivedPDelayRequestCounter];
            v192 = receivedPDelayRequestCounter - receivedPDelayRequestCounter2;
            transmittedPDelayResponseCounter = [v60 transmittedPDelayResponseCounter];
            transmittedPDelayResponseCounter2 = [v103 transmittedPDelayResponseCounter];
            transmittedPDelayResponseFollowUpCounter = [v60 transmittedPDelayResponseFollowUpCounter];
            transmittedPDelayResponseFollowUpCounter2 = [v103 transmittedPDelayResponseFollowUpCounter];
            attemptedPDelayResponseCounter = [v60 attemptedPDelayResponseCounter];
            attemptedPDelayResponseCounter2 = [v103 attemptedPDelayResponseCounter];
            attemptedPDelayResponseFollowUpCounter = [v60 attemptedPDelayResponseFollowUpCounter];
            attemptedPDelayResponseFollowUpCounter2 = [v103 attemptedPDelayResponseFollowUpCounter];
            transmittedPDelayRequestCounter = [v60 transmittedPDelayRequestCounter];
            transmittedPDelayRequestCounter2 = [v103 transmittedPDelayRequestCounter];
            attemptedPDelayRequestCounter = [v60 attemptedPDelayRequestCounter];
            attemptedPDelayRequestCounter2 = [v103 attemptedPDelayRequestCounter];
            receivedPDelayResponseCounter = [v60 receivedPDelayResponseCounter];
            receivedPDelayResponseCounter2 = [v103 receivedPDelayResponseCounter];
            receivedPDelayResponseFollowUpCounter = [v60 receivedPDelayResponseFollowUpCounter];
            receivedPDelayResponseFollowUpCounter2 = [v103 receivedPDelayResponseFollowUpCounter];
            v194 = (v189 + 9) / 0xAu;
            v195 = &_os_log_default;
            v196 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
            v197 = receivedPDelayRequestCounter - receivedPDelayRequestCounter2 < v189 - v194 && v189 >= v194;
            if (v197 || v192 > v194 + v189)
            {
              if (v196)
              {
                *buf = 67109632;
                *&buf[4] = receivedPDelayRequestCounter - receivedPDelayRequestCounter2;
                *&buf[8] = 1024;
                *&buf[10] = v189;
                LOWORD(v388) = 1024;
                *(&v388 + 2) = (v189 + 9) / 0xAu;
                v198 = "        Received PDelay Request Counter: %u out of expected bounds (%u ± %u)\n";
                v199 = 20;
LABEL_332:
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v198, buf, v199);
              }
            }

            else if (v196)
            {
              *buf = 67109376;
              *&buf[4] = receivedPDelayRequestCounter - receivedPDelayRequestCounter2;
              *&buf[8] = 1024;
              *&buf[10] = v189;
              v198 = "        Received PDelay Request Counter: %u expected %u\n";
              v199 = 14;
              goto LABEL_332;
            }

            v211 = transmittedPDelayResponseCounter - transmittedPDelayResponseCounter2;

            v212 = v192 - 1;
            v213 = &_os_log_default;
            v214 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
            v215 = transmittedPDelayResponseCounter - transmittedPDelayResponseCounter2 >= v192 - 1 || receivedPDelayRequestCounter == receivedPDelayRequestCounter2;
            v216 = v192 + 1;
            if (v215 && v211 <= v216)
            {
              if (v214)
              {
                *buf = 67109376;
                *&buf[4] = v211;
                *&buf[8] = 1024;
                *&buf[10] = receivedPDelayRequestCounter - receivedPDelayRequestCounter2;
                v217 = "        Transmitted PDelay Response Counter: %u expected %u\n";
                goto LABEL_343;
              }
            }

            else if (v214)
            {
              *buf = 67109376;
              *&buf[4] = v211;
              *&buf[8] = 1024;
              *&buf[10] = receivedPDelayRequestCounter - receivedPDelayRequestCounter2;
              v217 = "        Transmitted PDelay Response Counter: %u out of expected bounds (%u ± 1)\n";
LABEL_343:
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v217, buf, 0xEu);
            }

            v218 = &_os_log_default;
            v219 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
            v220 = transmittedPDelayResponseFollowUpCounter - transmittedPDelayResponseFollowUpCounter2 >= v212 || receivedPDelayRequestCounter == receivedPDelayRequestCounter2;
            if (v220 && transmittedPDelayResponseFollowUpCounter - transmittedPDelayResponseFollowUpCounter2 <= v216)
            {
              if (v219)
              {
                *buf = 67109376;
                *&buf[4] = transmittedPDelayResponseFollowUpCounter - transmittedPDelayResponseFollowUpCounter2;
                *&buf[8] = 1024;
                *&buf[10] = receivedPDelayRequestCounter - receivedPDelayRequestCounter2;
                v221 = "        Transmitted PDelay Response FollowUp Counter: %u expected %u\n";
                goto LABEL_354;
              }
            }

            else if (v219)
            {
              *buf = 67109376;
              *&buf[4] = transmittedPDelayResponseFollowUpCounter - transmittedPDelayResponseFollowUpCounter2;
              *&buf[8] = 1024;
              *&buf[10] = receivedPDelayRequestCounter - receivedPDelayRequestCounter2;
              v221 = "        Transmitted PDelay Response FollowUp Counter: %u out of expected bounds (%u ± 1)\n";
LABEL_354:
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v221, buf, 0xEu);
            }

            v222 = &_os_log_default;
            v223 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
            v224 = attemptedPDelayResponseCounter - attemptedPDelayResponseCounter2 >= v212 || receivedPDelayRequestCounter == receivedPDelayRequestCounter2;
            if (v224 && attemptedPDelayResponseCounter - attemptedPDelayResponseCounter2 <= v216)
            {
              if (v223)
              {
                *buf = 67109376;
                *&buf[4] = attemptedPDelayResponseCounter - attemptedPDelayResponseCounter2;
                *&buf[8] = 1024;
                *&buf[10] = receivedPDelayRequestCounter - receivedPDelayRequestCounter2;
                v225 = "        Attempted PDelay Response Counter: %u expected %u\n";
                goto LABEL_365;
              }
            }

            else if (v223)
            {
              *buf = 67109376;
              *&buf[4] = attemptedPDelayResponseCounter - attemptedPDelayResponseCounter2;
              *&buf[8] = 1024;
              *&buf[10] = receivedPDelayRequestCounter - receivedPDelayRequestCounter2;
              v225 = "        Attempted PDelay Response Counter: %u out of expected bounds (%u ± 1)\n";
LABEL_365:
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v225, buf, 0xEu);
            }

            v226 = &_os_log_default;
            v227 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
            v228 = attemptedPDelayResponseFollowUpCounter - attemptedPDelayResponseFollowUpCounter2 >= v212 || receivedPDelayRequestCounter == receivedPDelayRequestCounter2;
            if (v228 && attemptedPDelayResponseFollowUpCounter - attemptedPDelayResponseFollowUpCounter2 <= v216)
            {
              if (v227)
              {
                *buf = 67109376;
                *&buf[4] = attemptedPDelayResponseFollowUpCounter - attemptedPDelayResponseFollowUpCounter2;
                *&buf[8] = 1024;
                *&buf[10] = receivedPDelayRequestCounter - receivedPDelayRequestCounter2;
                v229 = "        Attempted PDelay Response FollowUp Counter: %u expected %u\n";
                goto LABEL_376;
              }
            }

            else if (v227)
            {
              *buf = 67109376;
              *&buf[4] = attemptedPDelayResponseFollowUpCounter - attemptedPDelayResponseFollowUpCounter2;
              *&buf[8] = 1024;
              *&buf[10] = receivedPDelayRequestCounter - receivedPDelayRequestCounter2;
              v229 = "        Attempted PDelay Response FollowUp Counter: %u out of expected bounds (%u ± 1)\n";
LABEL_376:
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v229, buf, 0xEu);
            }

            v230 = transmittedPDelayRequestCounter - transmittedPDelayRequestCounter2;
            v231 = v340 / v344;

            v232 = ((v340 / v344) + 9) / 0xA;
            v233 = v340 / v344 - v232;
            v234 = &_os_log_default;
            v235 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
            v236 = transmittedPDelayRequestCounter - transmittedPDelayRequestCounter2 < v233 && v231 >= v232;
            v237 = v232 + v231;
            if (v236 || v230 > v237)
            {
              if (v235)
              {
                *buf = 67109632;
                *&buf[4] = transmittedPDelayRequestCounter - transmittedPDelayRequestCounter2;
                *&buf[8] = 1024;
                *&buf[10] = v340 / v344;
                LOWORD(v388) = 1024;
                *(&v388 + 2) = (*&buf[10] + 9) / 0xAu;
                v238 = "        Transmitted PDelay Request Counter: %u out of expected bounds (%u ± %u)\n";
                v239 = 20;
LABEL_386:
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v238, buf, v239);
              }
            }

            else if (v235)
            {
              *buf = 67109376;
              *&buf[4] = transmittedPDelayRequestCounter - transmittedPDelayRequestCounter2;
              *&buf[8] = 1024;
              *&buf[10] = v340 / v344;
              v238 = "        Transmitted PDelay Request Counter: %u expected %u\n";
              v239 = 14;
              goto LABEL_386;
            }

            v240 = &_os_log_default;
            v241 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
            v242 = attemptedPDelayRequestCounter - attemptedPDelayRequestCounter2 < v233 && v231 >= v232;
            if (v242 || attemptedPDelayRequestCounter - attemptedPDelayRequestCounter2 > v237)
            {
              if (v241)
              {
                *buf = 67109632;
                *&buf[4] = attemptedPDelayRequestCounter - attemptedPDelayRequestCounter2;
                *&buf[8] = 1024;
                *&buf[10] = v340 / v344;
                LOWORD(v388) = 1024;
                *(&v388 + 2) = (*&buf[10] + 9) / 0xAu;
                v243 = "        Attempted PDelay Request Counter: %u out of expected bounds (%u ± %u)\n";
                v244 = 20;
LABEL_396:
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v243, buf, v244);
              }
            }

            else if (v241)
            {
              *buf = 67109376;
              *&buf[4] = attemptedPDelayRequestCounter - attemptedPDelayRequestCounter2;
              *&buf[8] = 1024;
              *&buf[10] = v340 / v344;
              v243 = "        Attempted PDelay Request Counter: %u expected %u\n";
              v244 = 14;
              goto LABEL_396;
            }

            v245 = &_os_log_default;
            v246 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
            v247 = receivedPDelayResponseCounter - receivedPDelayResponseCounter2 >= v230 - 1 || transmittedPDelayRequestCounter == transmittedPDelayRequestCounter2;
            v248 = v230 + 1;
            if (v247 && receivedPDelayResponseCounter - receivedPDelayResponseCounter2 <= v248)
            {
              v59 = v345;
              if (v246)
              {
                *buf = 67109376;
                *&buf[4] = receivedPDelayResponseCounter - receivedPDelayResponseCounter2;
                *&buf[8] = 1024;
                *&buf[10] = transmittedPDelayRequestCounter - transmittedPDelayRequestCounter2;
                v249 = "        Received PDelay Response Counter: %u expected %u\n";
                goto LABEL_407;
              }
            }

            else
            {
              v59 = v345;
              if (v246)
              {
                *buf = 67109376;
                *&buf[4] = receivedPDelayResponseCounter - receivedPDelayResponseCounter2;
                *&buf[8] = 1024;
                *&buf[10] = transmittedPDelayRequestCounter - transmittedPDelayRequestCounter2;
                v249 = "        Received PDelay Response Counter: %u out of expected bounds (%u ± 1)\n";
LABEL_407:
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v249, buf, 0xEu);
              }
            }

            v250 = &_os_log_default;
            v251 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
            v252 = receivedPDelayResponseFollowUpCounter - receivedPDelayResponseFollowUpCounter2 >= v230 - 1 || transmittedPDelayRequestCounter == transmittedPDelayRequestCounter2;
            if (v252 && receivedPDelayResponseFollowUpCounter - receivedPDelayResponseFollowUpCounter2 <= v248)
            {
              if (v251)
              {
                *buf = 67109376;
                *&buf[4] = receivedPDelayResponseFollowUpCounter - receivedPDelayResponseFollowUpCounter2;
                *&buf[8] = 1024;
                *&buf[10] = transmittedPDelayRequestCounter - transmittedPDelayRequestCounter2;
                v253 = "        Received PDelay Response FollowUp Counter: %u expected %u\n";
                goto LABEL_418;
              }

LABEL_489:

              goto LABEL_490;
            }

            if (!v251)
            {
              goto LABEL_489;
            }

            *buf = 67109376;
            *&buf[4] = receivedPDelayResponseFollowUpCounter - receivedPDelayResponseFollowUpCounter2;
            *&buf[8] = 1024;
            *&buf[10] = transmittedPDelayRequestCounter - transmittedPDelayRequestCounter2;
            v253 = "        Received PDelay Response FollowUp Counter: %u out of expected bounds (%u ± 1)\n";
LABEL_418:
            v254 = 14;
LABEL_488:
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v253, buf, v254);
            goto LABEL_489;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v60 portRole] == 4)
            {
              v200 = transmittedSyncCounter - transmittedSyncCounter2;
            }

            else
            {
              v200 = 0;
            }

            if ([v60 portRole] == 3)
            {
              v201 = receivedSyncCounter - receivedSyncCounter2;
            }

            else
            {
              v201 = 0;
            }

            v359 = v201;
            receivedDelayRequestCounter = [v60 receivedDelayRequestCounter];
            receivedDelayRequestCounter2 = [v103 receivedDelayRequestCounter];
            v204 = receivedDelayRequestCounter - receivedDelayRequestCounter2;
            transmittedDelayResponseCounter = [v60 transmittedDelayResponseCounter];
            transmittedDelayResponseCounter2 = [v103 transmittedDelayResponseCounter];
            attemptedDelayResponseCounter = [v60 attemptedDelayResponseCounter];
            attemptedDelayResponseCounter2 = [v103 attemptedDelayResponseCounter];
            transmittedDelayRequestCounter = [v60 transmittedDelayRequestCounter];
            transmittedDelayRequestCounter2 = [v103 transmittedDelayRequestCounter];
            attemptedDelayRequestCounter = [v60 attemptedDelayRequestCounter];
            attemptedDelayRequestCounter2 = [v103 attemptedDelayRequestCounter];
            receivedDelayResponseCounter = [v60 receivedDelayResponseCounter];
            receivedDelayResponseCounter2 = [v103 receivedDelayResponseCounter];
            supersededSyncCounter = [v60 supersededSyncCounter];
            supersededSyncCounter2 = [v103 supersededSyncCounter];
            supersededDelayCounter = [v60 supersededDelayCounter];
            supersededDelayCounter2 = [v103 supersededDelayCounter];
            v207 = receivedDelayRequestCounter - receivedDelayRequestCounter2 < v200 - 1 && v200 != 0;
            v208 = &_os_log_default;
            v209 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
            if (v207 || v204 > v200 + 1)
            {
              if (v209)
              {
                *buf = 67109376;
                *&buf[4] = receivedDelayRequestCounter - receivedDelayRequestCounter2;
                *&buf[8] = 1024;
                *&buf[10] = v200;
                v210 = "        Received Delay Request Counter: %u out of expected bounds (%u ± 1)\n";
LABEL_421:
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v210, buf, 0xEu);
              }
            }

            else if (v209)
            {
              *buf = 67109376;
              *&buf[4] = receivedDelayRequestCounter - receivedDelayRequestCounter2;
              *&buf[8] = 1024;
              *&buf[10] = v200;
              v210 = "        Received Delay Request Counter: %u expected %u\n";
              goto LABEL_421;
            }

            v255 = transmittedDelayResponseCounter - transmittedDelayResponseCounter2;

            v256 = &_os_log_default;
            v257 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
            v258 = transmittedDelayResponseCounter - transmittedDelayResponseCounter2 >= v204 - 1 || receivedDelayRequestCounter == receivedDelayRequestCounter2;
            v259 = v204 + 1;
            if (v258 && v255 <= v259)
            {
              if (v257)
              {
                *buf = 67109376;
                *&buf[4] = v255;
                *&buf[8] = 1024;
                *&buf[10] = receivedDelayRequestCounter - receivedDelayRequestCounter2;
                v260 = "        Transmitted Delay Response Counter: %u expected %u\n";
                goto LABEL_432;
              }
            }

            else if (v257)
            {
              *buf = 67109376;
              *&buf[4] = v255;
              *&buf[8] = 1024;
              *&buf[10] = receivedDelayRequestCounter - receivedDelayRequestCounter2;
              v260 = "        Transmitted Delay Response Counter: %u out of expected bounds (%u ± 1)\n";
LABEL_432:
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v260, buf, 0xEu);
            }

            v261 = &_os_log_default;
            v262 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
            v263 = attemptedDelayResponseCounter - attemptedDelayResponseCounter2 >= v204 - 1 || receivedDelayRequestCounter == receivedDelayRequestCounter2;
            if (v263 && attemptedDelayResponseCounter - attemptedDelayResponseCounter2 <= v259)
            {
              v59 = v345;
              v264 = v290;
              if (v262)
              {
                *buf = 67109376;
                *&buf[4] = attemptedDelayResponseCounter - attemptedDelayResponseCounter2;
                *&buf[8] = 1024;
                *&buf[10] = v204;
                v265 = "        Attempted Delay Response Counter: %u expected %u\n";
                goto LABEL_443;
              }
            }

            else
            {
              v59 = v345;
              v264 = v290;
              if (v262)
              {
                *buf = 67109376;
                *&buf[4] = attemptedDelayResponseCounter - attemptedDelayResponseCounter2;
                *&buf[8] = 1024;
                *&buf[10] = v204;
                v265 = "        Attempted Delay Response Counter: %u out of expected bounds (%u ± 1)\n";
LABEL_443:
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v265, buf, 0xEu);
              }
            }

            v266 = &_os_log_default;
            v267 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
            v268 = transmittedDelayRequestCounter - transmittedDelayRequestCounter2 >= v264 || receivedSyncCounter == receivedSyncCounter2;
            if (v268 && transmittedDelayRequestCounter - transmittedDelayRequestCounter2 <= v289)
            {
              if (v267)
              {
                *buf = 67109376;
                *&buf[4] = transmittedDelayRequestCounter - transmittedDelayRequestCounter2;
                *&buf[8] = 1024;
                *&buf[10] = receivedSyncCounter - receivedSyncCounter2;
                v269 = "        Transmitted Delay Request Counter: %u expected %u\n";
                goto LABEL_454;
              }
            }

            else if (v267)
            {
              *buf = 67109376;
              *&buf[4] = transmittedDelayRequestCounter - transmittedDelayRequestCounter2;
              *&buf[8] = 1024;
              *&buf[10] = receivedSyncCounter - receivedSyncCounter2;
              v269 = "        Transmitted Delay Request Counter: %u out of expected bounds (%u ± 1)\n";
LABEL_454:
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v269, buf, 0xEu);
            }

            v270 = &_os_log_default;
            v271 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
            v272 = attemptedDelayRequestCounter - attemptedDelayRequestCounter2 >= v264 || receivedSyncCounter == receivedSyncCounter2;
            if (v272 && attemptedDelayRequestCounter - attemptedDelayRequestCounter2 <= v289)
            {
              if (v271)
              {
                *buf = 67109376;
                *&buf[4] = attemptedDelayRequestCounter - attemptedDelayRequestCounter2;
                *&buf[8] = 1024;
                *&buf[10] = receivedSyncCounter - receivedSyncCounter2;
                v273 = "        Attempted Delay Request Counter: %u expected %u\n";
                goto LABEL_465;
              }
            }

            else if (v271)
            {
              *buf = 67109376;
              *&buf[4] = attemptedDelayRequestCounter - attemptedDelayRequestCounter2;
              *&buf[8] = 1024;
              *&buf[10] = receivedSyncCounter - receivedSyncCounter2;
              v273 = "        Attempted Delay Request Counter: %u out of expected bounds (%u ± 1)\n";
LABEL_465:
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v273, buf, 0xEu);
            }

            v274 = receivedDelayResponseCounter - receivedDelayResponseCounter2 < v359 - 1 && v359 != 0;
            v275 = &_os_log_default;
            v276 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
            if (v274 || receivedDelayResponseCounter - receivedDelayResponseCounter2 > v359 + 1)
            {
              if (v276)
              {
                *buf = 67109376;
                *&buf[4] = receivedDelayResponseCounter - receivedDelayResponseCounter2;
                *&buf[8] = 1024;
                *&buf[10] = v359;
                v277 = "        Received Delay Response Counter: %u out of expected bounds (%u ± 1)\n";
LABEL_475:
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v277, buf, 0xEu);
              }
            }

            else if (v276)
            {
              *buf = 67109376;
              *&buf[4] = receivedDelayResponseCounter - receivedDelayResponseCounter2;
              *&buf[8] = 1024;
              *&buf[10] = v359;
              v277 = "        Received Delay Response Counter: %u expected %u\n";
              goto LABEL_475;
            }

            v278 = &_os_log_default;
            v279 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
            if (supersededSyncCounter == supersededSyncCounter2)
            {
              if (v279)
              {
                *buf = 67109120;
                v280 = "        Superseded Sync Counter: %u expected 0\n";
                goto LABEL_481;
              }
            }

            else if (v279)
            {
              *buf = 67109120;
              *&buf[4] = supersededSyncCounter - supersededSyncCounter2;
              v280 = "        Superseded Sync Counter: %u out of expected bounds (0)\n";
LABEL_481:
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v280, buf, 8u);
            }

            v281 = &_os_log_default;
            v282 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
            if (supersededDelayCounter == supersededDelayCounter2)
            {
              if (!v282)
              {
                goto LABEL_489;
              }

              *buf = 67109120;
              v253 = "        Superseded Delay Counter: %u expected 0\n";
            }

            else
            {
              if (!v282)
              {
                goto LABEL_489;
              }

              *buf = 67109120;
              *&buf[4] = supersededDelayCounter - supersededDelayCounter2;
              v253 = "        Superseded Delay Counter: %u out of expected bounds (0)\n";
            }

            v254 = 8;
            goto LABEL_488;
          }

LABEL_490:

          v56 = v287;
          v54 = v288;
          j = v339;
LABEL_491:
        }

        v297 = [v56 countByEnumeratingWithState:&v368 objects:v385 count:16];
        if (!v297)
        {
LABEL_493:

          break;
        }
      }
    }

    v54->_firstStatistics = 0;
    v54->_lastStatisticsTime = v286;
    objc_storeStrong(&v54->_lastStatistics, v295);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      clockIdentifier2 = [(TSDKernelClock *)self->_clock clockIdentifier];
      *buf = 134217984;
      *&buf[4] = clockIdentifier2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Clock Statistics for 0x%016llx\n", buf, 0xCu);
    }

    lockState2 = [(TSDKernelClock *)self->_clock lockState];
    if (lockState2 > 2)
    {
      v14 = @"Unknown";
    }

    else
    {
      v14 = off_10004CAF8[lockState2];
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      uTF8String6 = [(__CFString *)v14 UTF8String];
      *buf = 136315138;
      *&buf[4] = uTF8String6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "    Clock lock state: %s\n", buf, 0xCu);
    }

    v384 = 0;
    v383 = 0;
    v382 = 0;
    v381 = 0;
    v380 = 0;
    v24 = self->_clock;
    v367 = 0;
    v25 = [(TSDKernelClock *)v24 getMachAbsoluteRateRatioNumerator:&v384 denominator:&v383 machAnchor:&v382 andDomainAnchor:&v380 withError:&v367];
    v26 = v367;
    v27 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    if (v25)
    {
      if (v27)
      {
        *buf = 134218496;
        *&buf[4] = v384;
        *&buf[12] = 2048;
        v388 = v383;
        v389 = 2048;
        v390 = v384 / v383;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "    Mach Rate Ratio: %llu/%llu (%0.12f)\n", buf, 0x20u);
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *&buf[4] = v382;
        *&buf[12] = 2048;
        v388 = v380;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "    Mach Anchors: %llu, %llu\n", buf, 0x16u);
      }
    }

    else if (v27)
    {
      localizedDescription3 = [v26 localizedDescription];
      uTF8String7 = [localizedDescription3 UTF8String];
      *buf = 136315138;
      *&buf[4] = uTF8String7;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "    Mach Sync Info: failed to get rate ratio and anchors with error %s\n", buf, 0xCu);
    }

    v38 = self->_clock;
    v366 = v26;
    v39 = [(TSDKernelClock *)v38 getTimeSyncTimeRateRatioNumerator:&v384 denominator:&v383 timeSyncAnchor:&v381 andDomainAnchor:&v380 withError:&v366];
    v40 = v366;

    v41 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    if (v39)
    {
      if (v41)
      {
        *buf = 134218496;
        *&buf[4] = v384;
        *&buf[12] = 2048;
        v388 = v383;
        v389 = 2048;
        v390 = v384 / v383;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "    TimeSync Rate Ratio: %llu/%llu (%0.12f)\n", buf, 0x20u);
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *&buf[4] = v381;
        *&buf[12] = 2048;
        v388 = v380;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "    TimeSync Anchors: %llu, %llu\n", buf, 0x16u);
      }
    }

    else if (v41)
    {
      localizedDescription4 = [v40 localizedDescription];
      uTF8String8 = [localizedDescription4 UTF8String];
      *buf = 136315138;
      *&buf[4] = uTF8String8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "    TimeSync Sync Info: failed to get rate ratio and anchors with error %s\n", buf, 0xCu);
    }
  }
}

- (TSDClockStatistics)initWithClockIdentifier:(unint64_t)identifier
{
  v11.receiver = self;
  v11.super_class = TSDClockStatistics;
  v4 = [(TSDClockStatistics *)&v11 init];
  v5 = v4;
  if (v4)
  {
    if (identifier == -1)
    {
      sub_10002B904(v4);
      return 0;
    }

    else
    {
      v4->_clockIdentifier = identifier;
      v4->_firstStatistics = 1;
      v6 = +[TSDClockManager sharedClockManager];
      v7 = [v6 clockWithClockIdentifier:{-[TSDClockStatistics clockIdentifier](v5, "clockIdentifier")}];

      if (v7)
      {
        objc_storeStrong(&v5->_clock, v7);
        v8 = dispatch_get_global_queue(0, 0);
        v10 = v7;
        v5->_stateDumpHandler = os_state_add_handler();

        [(TSDKernelClock *)v5->_clock addClient:v5, _NSConcreteStackBlock, 3221225472, sub_100017C24, &unk_10004CAD8];
      }

      else
      {
        sub_10002B838(v5);
        v5 = 0;
      }
    }
  }

  return v5;
}

- (void)finalizeClock
{
  [(TSDKernelClock *)self->_clock removeClient:self];
  [(TSDKernelClock *)self->_clock finalizeNotifications];
  clock = self->_clock;
  self->_clock = 0;
}

- (void)didResetClock:(id)clock
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    clockIdentifier = [(TSDClockStatistics *)self clockIdentifier];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "0x%016llx: reset clock\n", &v4, 0xCu);
  }
}

- (void)didChangeClockMasterForClock:(id)clock
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    clockIdentifier = [(TSDClockStatistics *)self clockIdentifier];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "0x%016llx: master clock changed\n", &v4, 0xCu);
  }
}

- (void)didChangeLockStateTo:(int)to forClock:(id)clock
{
  clockCopy = clock;
  if (to > 2)
  {
    v7 = @"Unknown";
  }

  else
  {
    v7 = off_10004CAF8[to];
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218498;
    clockIdentifier = [(TSDClockStatistics *)self clockIdentifier];
    v10 = 1024;
    toCopy = to;
    v12 = 2080;
    uTF8String = [(__CFString *)v7 UTF8String];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "0x%016llx: set lock state to %u (%s)\n", &v8, 0x1Cu);
  }

  if (to == 2)
  {
    self->_hasSyncedSinceLocked = 0;
  }
}

- (void)didBeginClockGrandmasterChangeWithGrandmasterID:(unint64_t)d localPort:(unsigned __int16)port forClock:(id)clock
{
  portCopy = port;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218496;
    clockIdentifier = [(TSDClockStatistics *)self clockIdentifier];
    v10 = 2048;
    dCopy = d;
    v12 = 1024;
    v13 = portCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "0x%016llx: begin grandmaster change GMID 0x%016llx local port %hu\n", &v8, 0x1Cu);
  }
}

- (void)didEndClockGrandmasterChangeWithGrandmasterID:(unint64_t)d localPort:(unsigned __int16)port forClock:(id)clock
{
  portCopy = port;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218496;
    clockIdentifier = [(TSDClockStatistics *)self clockIdentifier];
    v10 = 2048;
    dCopy = d;
    v12 = 1024;
    v13 = portCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "0x%016llx: end grandmaster change GMID 0x%016llx local port %hu\n", &v8, 0x1Cu);
  }
}

- (void)didProcessSync:(id)sync
{
  syncCopy = sync;
  v5 = syncCopy;
  if (!self->_hasSyncedSinceLocked)
  {
    v27 = 0;
    v28 = 0;
    v25 = 0;
    v26 = 0;
    v23 = 0;
    v24 = 0;
    v22 = 0;
    v21 = 0;
    v6 = [syncCopy getMachAbsoluteRateRatioNumerator:&v28 denominator:&v27 machAnchor:&v26 andDomainAnchor:&v24 forGrandmasterIdentity:&v23 portNumber:&v22 withError:&v21];
    v7 = v21;
    v8 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        clockIdentifier = [(TSDClockStatistics *)self clockIdentifier];
        *buf = 134219520;
        v30 = clockIdentifier;
        v31 = 2048;
        v32 = v28;
        v33 = 2048;
        v34 = v27;
        v35 = 2048;
        v36 = v26;
        v37 = 2048;
        v38 = v24;
        v39 = 2048;
        v40 = v23;
        v41 = 1024;
        v42 = v22;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "0x%016llx: First MachSync %llu,%llu,%llu,%llu,0x%016llx,%hu\n", buf, 0x44u);
      }
    }

    else if (v8)
    {
      clockIdentifier2 = [(TSDClockStatistics *)self clockIdentifier];
      localizedDescription = [v7 localizedDescription];
      uTF8String = [localizedDescription UTF8String];
      *buf = 134218242;
      v30 = clockIdentifier2;
      v31 = 2080;
      v32 = uTF8String;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "0x%016llx: failed to get mach rate ratio and anchors with error %s\n", buf, 0x16u);
    }

    v20 = v7;
    v13 = [v5 getTimeSyncTimeRateRatioNumerator:&v28 denominator:&v27 timeSyncAnchor:&v25 andDomainAnchor:&v24 forGrandmasterIdentity:&v23 portNumber:&v22 withError:&v20];
    v14 = v20;

    v15 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (v15)
      {
        clockIdentifier3 = [(TSDClockStatistics *)self clockIdentifier];
        *buf = 134219520;
        v30 = clockIdentifier3;
        v31 = 2048;
        v32 = v28;
        v33 = 2048;
        v34 = v27;
        v35 = 2048;
        v36 = v25;
        v37 = 2048;
        v38 = v24;
        v39 = 2048;
        v40 = v23;
        v41 = 1024;
        v42 = v22;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "0x%016llx: First TimeSync %llu,%llu,%llu,%llu,0x%016llx,%hu\n", buf, 0x44u);
      }
    }

    else if (v15)
    {
      clockIdentifier4 = [(TSDClockStatistics *)self clockIdentifier];
      localizedDescription2 = [v14 localizedDescription];
      uTF8String2 = [localizedDescription2 UTF8String];
      *buf = 134218242;
      v30 = clockIdentifier4;
      v31 = 2080;
      v32 = uTF8String2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "0x%016llx: failed to get timesync rate ratio and anchors with error %s\n", buf, 0x16u);
    }

    self->_hasSyncedSinceLocked = 1;
  }
}

- (void)didGetStatsOfLocalPortNumber:(unint64_t)number mean:(unint64_t)mean median:(unint64_t)median stddev:(unint64_t)stddev min:(unint64_t)min max:(unint64_t)max numberOfSamples:(unsigned int)samples forClock:(id)self0
{
  v14 = [clock portWithPortNumber:number];
  remoteClockIdentity = [v14 remoteClockIdentity];
  v16 = BYTE5(remoteClockIdentity);
  v17 = remoteClockIdentity >> 40;
  v32[0] = @"LocalLinkType";
  v31 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v14 localLinkType]);
  v33[0] = v31;
  v32[1] = @"RemoteLinkType";
  v30 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v14 remoteLinkType]);
  v33[1] = v30;
  v32[2] = @"LocalTimestampingMode";
  v29 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v14 localTimestampingMode]);
  v33[2] = v29;
  v32[3] = @"RemoteTimestampingMode";
  v28 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v14 remoteTimestampingMode]);
  v33[3] = v28;
  v32[4] = @"PortType";
  v18 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v14 portType]);
  v33[4] = v18;
  v32[5] = @"MinimumDelay";
  v19 = [NSNumber numberWithDouble:min / 1000.0];
  v33[5] = v19;
  v32[6] = @"MaximumDelay";
  v20 = [NSNumber numberWithDouble:max / 1000.0];
  v33[6] = v20;
  v32[7] = @"MeanDelay";
  v21 = [NSNumber numberWithDouble:mean / 1000.0];
  v33[7] = v21;
  v32[8] = @"MedianDelay";
  v22 = [NSNumber numberWithDouble:median / 1000.0];
  v33[8] = v22;
  v32[9] = @"StandardDeviation";
  v23 = [NSNumber numberWithDouble:stddev / 1000.0];
  v33[9] = v23;
  v32[10] = @"NumberOfSamples";
  v24 = [NSNumber numberWithUnsignedInt:samples];
  v33[10] = v24;
  v32[11] = @"RemoteOUI";
  v25 = [NSString stringWithFormat:@"%02x-%02x-%02x", WORD1(v17), BYTE1(v17), v16];
  v33[11] = v25;
  v26 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:12];

  AnalyticsSendEvent();
}

- (void)dealloc
{
  if (self->_stateDumpHandler)
  {
    os_state_remove_handler();
  }

  v3.receiver = self;
  v3.super_class = TSDClockStatistics;
  [(TSDClockStatistics *)&v3 dealloc];
}

@end