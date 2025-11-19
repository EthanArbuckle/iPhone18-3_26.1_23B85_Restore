@interface TSDClockStatistics
- (TSDClockStatistics)initWithClockIdentifier:(unint64_t)a3;
- (void)dealloc;
- (void)didBeginClockGrandmasterChangeWithGrandmasterID:(unint64_t)a3 localPort:(unsigned __int16)a4 forClock:(id)a5;
- (void)didChangeClockMasterForClock:(id)a3;
- (void)didChangeLockStateTo:(int)a3 forClock:(id)a4;
- (void)didEndClockGrandmasterChangeWithGrandmasterID:(unint64_t)a3 localPort:(unsigned __int16)a4 forClock:(id)a5;
- (void)didGetStatsOfLocalPortNumber:(unint64_t)a3 mean:(unint64_t)a4 median:(unint64_t)a5 stddev:(unint64_t)a6 min:(unint64_t)a7 max:(unint64_t)a8 numberOfSamples:(unsigned int)a9 forClock:(id)a10;
- (void)didProcessSync:(id)a3;
- (void)didResetClock:(id)a3;
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
      v7 = [(TSDKernelClock *)self->_clock clockIdentifier];
      *buf = 134217984;
      *&buf[4] = v7;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "PTP Clock Statistics for 0x%016llx\n", buf, 0xCu);
    }

    v8 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(TSDKernelClock *)v5 grandmasterIdentity];
      *buf = 134217984;
      *&buf[4] = v9;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "    Grandmaster Identity: 0x%016llx\n", buf, 0xCu);
    }

    v10 = [(TSDKernelClock *)v5 lockState];
    if (v10 > 2)
    {
      v11 = @"Unknown";
    }

    else
    {
      v11 = off_10004CAF8[v10];
    }

    v15 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(__CFString *)v11 UTF8String];
      *buf = 136315138;
      *&buf[4] = v16;
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
      v28 = [v18 localizedDescription];
      v29 = [v28 UTF8String];
      *buf = 136315138;
      *&buf[4] = v29;
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

      v33 = self;

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
      v33 = self;
      if (v32)
      {
        v42 = [v285 localizedDescription];
        v43 = [v42 UTF8String];
        *buf = 136315138;
        *&buf[4] = v43;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "    TimeSync Sync Info: failed to get rate ratio and anchors with error %s\n", buf, 0xCu);
      }
    }

    v44 = [(TSDKernelClock *)v5 ports];
    v295 = +[NSMutableDictionary dictionary];
    v347 = +[NSMutableDictionary dictionary];
    v372 = 0u;
    v373 = 0u;
    v374 = 0u;
    v375 = 0u;
    obj = v44;
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

          v50 = [v49 statistics];
          if (v50)
          {
            v51 = v50;
            v52 = [v50 portIdentifier];
            [v295 setObject:v51 forKeyedSubscript:v52];

            v53 = [v51 portIdentifier];
            [v347 setObject:v49 forKeyedSubscript:v53];
          }
        }

        v46 = [obj countByEnumeratingWithState:&v372 objects:v386 count:16];
      }

      while (v46);
    }

    v54 = v33;
    if (!v33->_firstStatistics)
    {
      v55 = +[TSDClockManager sharedClockManager];
      v340 = [v55 machAbsoluteTicksToNanoseconds:v286 - v33->_lastStatisticsTime];

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
      v288 = v33;
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

          v62 = [v60 portType];
          if (v62 <= 3)
          {
            if (v62 > 1)
            {
              if (v62 == 2)
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

            else if (v62)
            {
              if (v62 != 1)
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

          else if (v62 <= 5)
          {
            if (v62 == 4)
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
            switch(v62)
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
            v74 = [v59 interfaceName];
            v75 = [v74 UTF8String];
            *buf = 136315138;
            *&buf[4] = v75;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "        Interface: %s\n", buf, 0xCu);
          }

          v76 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            v77 = [v59 destinationAddressString];
            v78 = [v77 UTF8String];
            *buf = 136315138;
            *&buf[4] = v78;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "        Destination Address: %s\n", buf, 0xCu);
          }

          v79 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            v80 = [v59 propagationDelay];
            *buf = 67109120;
            *&buf[4] = v80;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "        Propgation Delay: %u\n", buf, 8u);
          }

          v81 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            v82 = [v59 minimumPropagationDelay];
            *buf = 67109120;
            *&buf[4] = v82;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "        Minimum Propagation Delay: %u\n", buf, 8u);
          }

          v83 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            v84 = [v59 maximumPropagationDelay];
            *buf = 67109120;
            *&buf[4] = v84;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "        Maximum Propagation Delay: %u\n", buf, 8u);
          }

          v85 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            v86 = [v59 minimumRawDelay];
            *buf = 67109120;
            *&buf[4] = v86;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "        Minimum Raw Delay: %u\n", buf, 8u);
          }

          v87 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            v88 = [v59 maximumRawDelay];
            *buf = 67109120;
            *&buf[4] = v88;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "        Maximum Raw Delay: %u\n", buf, 8u);
          }

          v89 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            v90 = [v59 portNumber];
            *buf = 67109120;
            *&buf[4] = v90;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "        Local Clock Port Number: %hu\n", buf, 8u);
          }

          v91 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            v92 = [v59 remoteClockIdentity];
            *buf = 134217984;
            *&buf[4] = v92;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "        Remote Clock Identity: 0x%016llx\n", buf, 0xCu);
          }

          v93 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            v94 = [v59 remotePortNumber];
            *buf = 67109120;
            *&buf[4] = v94;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "        Remote Clock Port Number: %hu\n", buf, 8u);
          }

          v95 = [v59 portRole];
          if (v95 <= 1)
          {
            if (v95)
            {
              if (v95 != 1)
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
            switch(v95)
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
          v104 = [v103 portRole];
          if (v104 != [v60 portRole])
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

          v343 = [v60 receivedSyncCounter];
          v341 = [v103 receivedSyncCounter];
          v108 = v343 - v341;
          v109 = [v60 receivedFollowUpCounter];
          v110 = [v103 receivedFollowUpCounter];
          v302 = [v60 receivedAnnounceCounter];
          v301 = [v103 receivedAnnounceCounter];
          v300 = [v60 receivedSignalCounter];
          v299 = [v103 receivedSignalCounter];
          v304 = [v60 receivedPacketDiscardCounter];
          v303 = [v103 receivedPacketDiscardCounter];
          v306 = [v60 syncReceiptTimeoutCounter];
          v305 = [v103 syncReceiptTimeoutCounter];
          v308 = [v60 announceReceiptTimeoutCounter];
          v307 = [v103 announceReceiptTimeoutCounter];
          v310 = [v60 allowedLostResponsesExceededCounter];
          v309 = [v103 allowedLostResponsesExceededCounter];
          v351 = [v60 transmittedSyncCounter];
          v348 = [v103 transmittedSyncCounter];
          v312 = [v60 transmittedFollowUpCounter];
          v311 = [v103 transmittedFollowUpCounter];
          v360 = [v60 transmittedAnnounceCounter];
          v357 = [v103 transmittedAnnounceCounter];
          v314 = [v60 transmittedSignalCounter];
          v313 = [v103 transmittedSignalCounter];
          v316 = [v60 transmittedPacketDiscardCounter];
          v315 = [v103 transmittedPacketDiscardCounter];
          v318 = [v60 attemptedSyncCounter];
          v317 = [v103 attemptedSyncCounter];
          v324 = [v60 attemptedFollowUpCounter];
          v321 = [v103 attemptedFollowUpCounter];
          v330 = [v60 attemptedAnnounceCounter];
          v327 = [v103 attemptedAnnounceCounter];
          v336 = [v60 attemptedSignalCounter];
          v333 = [v103 attemptedSignalCounter];
          v292 = [v60 rawDelayExceededCounter];
          v291 = [v103 rawDelayExceededCounter];
          v294 = [v60 rawDelayMeasurementCounter];
          v293 = [v103 rawDelayMeasurementCounter];
          v111 = (v106 + 9) / 0xAu;
          v112 = &_os_log_default;
          v113 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
          v114 = v343 - v341 < v106 - v111 && v106 >= v111;
          if (v114 || v108 > v111 + v106)
          {
            if (!v113)
            {
              goto LABEL_157;
            }

            *buf = 67109632;
            *&buf[4] = v343 - v341;
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
            *&buf[4] = v343 - v341;
            *&buf[8] = 1024;
            *&buf[10] = v106;
            v115 = "        Received Sync Counter: %u expected %u\n";
            v116 = 14;
          }

          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v115, buf, v116);
LABEL_157:
          v117 = v109 - v110;

          v118 = &_os_log_default;
          v119 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
          v120 = v117 >= v108 - 1 || v343 == v341;
          v289 = v108 + 1;
          v290 = v108 - 1;
          if (v120 && v117 <= v108 + 1)
          {
            v121 = v302;
            if (!v119)
            {
              goto LABEL_168;
            }

            *buf = 67109376;
            *&buf[4] = v117;
            *&buf[8] = 1024;
            *&buf[10] = v343 - v341;
            v122 = "        Received FollowUp Counter: %u expected %u\n";
          }

          else
          {
            v121 = v302;
            if (!v119)
            {
              goto LABEL_168;
            }

            *buf = 67109376;
            *&buf[4] = v117;
            *&buf[8] = 1024;
            *&buf[10] = v343 - v341;
            v122 = "        Received FollowUp Counter: %u out of expected bounds (%u ± 1)\n";
          }

          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v122, buf, 0xEu);
LABEL_168:
          v123 = v121 - v301;

          v124 = (v107 + 9) / 0xAu;
          v125 = &_os_log_default;
          v126 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
          v127 = v121 - v301 < v107 - v124 && v107 >= v124;
          if (v127 || v123 > v124 + v107)
          {
            if (!v126)
            {
              goto LABEL_178;
            }

            *buf = 67109632;
            *&buf[4] = v121 - v301;
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
            *&buf[4] = v121 - v301;
            *&buf[8] = 1024;
            *&buf[10] = v107;
            v128 = "        Received Announce Counter: %u expected %u\n";
            v129 = 14;
          }

          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v128, buf, v129);
LABEL_178:

          v130 = &_os_log_default;
          v131 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
          v132 = v300 - v299 >= v123 - 1 || v121 == v301;
          if (v132 && v300 - v299 <= v123 + 1)
          {
            if (!v131)
            {
              goto LABEL_189;
            }

            *buf = 67109376;
            *&buf[4] = v300 - v299;
            *&buf[8] = 1024;
            *&buf[10] = v121 - v301;
            v133 = "        Received Signal Counter: %u expected %u\n";
          }

          else
          {
            if (!v131)
            {
              goto LABEL_189;
            }

            *buf = 67109376;
            *&buf[4] = v300 - v299;
            *&buf[8] = 1024;
            *&buf[10] = v121 - v301;
            v133 = "        Received Signal Counter: %u out of expected bounds (%u ± 1)\n";
          }

          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v133, buf, 0xEu);
LABEL_189:

          v134 = &_os_log_default;
          v135 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
          if (v304 == v303)
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
            *&buf[4] = v304 - v303;
            v136 = "        Received Packet Discard Counter: %u greater than 0\n";
          }

          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v136, buf, 8u);
LABEL_195:

          v137 = &_os_log_default;
          v138 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
          if (v306 == v305)
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
            *&buf[4] = v306 - v305;
            v139 = "        Received Sync Receipt Timeout Counter: %u greater than 0\n";
          }

          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v139, buf, 8u);
LABEL_201:

          v140 = &_os_log_default;
          v141 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
          if (v308 == v307)
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
            *&buf[4] = v308 - v307;
            v142 = "        Received Announce Receipt Timeout Counter: %u greater than 0\n";
          }

          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v142, buf, 8u);
LABEL_207:

          v143 = &_os_log_default;
          v144 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
          if (v310 == v309)
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
            *&buf[4] = v310 - v309;
            v145 = "        Received Allowed Lost Responses Exceeded Counter: %u greater than 0\n";
          }

          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v145, buf, 8u);
LABEL_213:
          v146 = v351 - v348;

          v147 = (v354 + 9) / 0xAu;
          v148 = &_os_log_default;
          v149 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
          v150 = v351 - v348 < v354 - v147 && v354 >= v147;
          if (v150 || v146 > v147 + v354)
          {
            if (!v149)
            {
              goto LABEL_223;
            }

            *buf = 67109632;
            *&buf[4] = v351 - v348;
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
            *&buf[4] = v351 - v348;
            *&buf[8] = 1024;
            *&buf[10] = v354;
            v151 = "        Transmitted Sync Counter: %u expected %u\n";
            v152 = 14;
          }

          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v151, buf, v152);
LABEL_223:

          v153 = &_os_log_default;
          v154 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
          v155 = v312 - v311 >= v146 - 1 || v351 == v348;
          if (v155 && v312 - v311 <= v146 + 1)
          {
            if (!v154)
            {
              goto LABEL_234;
            }

            *buf = 67109376;
            *&buf[4] = v312 - v311;
            *&buf[8] = 1024;
            *&buf[10] = v351 - v348;
            v156 = "        Transmitted FollowUp Counter: %u expected %u\n";
          }

          else
          {
            if (!v154)
            {
              goto LABEL_234;
            }

            *buf = 67109376;
            *&buf[4] = v312 - v311;
            *&buf[8] = 1024;
            *&buf[10] = v351 - v348;
            v156 = "        Transmitted FollowUp Counter: %u out of expected bounds (%u ± 1)\n";
          }

          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v156, buf, 0xEu);
LABEL_234:
          v157 = v360 - v357;

          v158 = v360 - v357 < v363 - 1 && v363 != 0;
          v159 = &_os_log_default;
          v160 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
          if (v158 || v157 > v363 + 1)
          {
            if (!v160)
            {
              goto LABEL_244;
            }

            *buf = 67109376;
            *&buf[4] = v360 - v357;
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
            *&buf[4] = v360 - v357;
            *&buf[8] = 1024;
            *&buf[10] = v363;
            v161 = "        Transmitted Announce Counter: %u expected %u\n";
          }

          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v161, buf, 0xEu);
LABEL_244:

          v162 = &_os_log_default;
          v163 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
          v164 = v314 - v313 >= v157 - 1 || v360 == v357;
          if (v164 && v314 - v313 <= v157 + 1)
          {
            if (!v163)
            {
              goto LABEL_255;
            }

            *buf = 67109376;
            *&buf[4] = v314 - v313;
            *&buf[8] = 1024;
            *&buf[10] = v360 - v357;
            v165 = "        Transmitted Signal Counter: %u expected %u\n";
          }

          else
          {
            if (!v163)
            {
              goto LABEL_255;
            }

            *buf = 67109376;
            *&buf[4] = v314 - v313;
            *&buf[8] = 1024;
            *&buf[10] = v360 - v357;
            v165 = "        Transmitted Signal Counter: %u out of expected bounds (%u ± 1)\n";
          }

          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v165, buf, 0xEu);
LABEL_255:

          v166 = &_os_log_default;
          v167 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
          if (v316 == v315)
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
            *&buf[4] = v316 - v315;
            v168 = "        Transmitted Packet Discard Counter: %u greater than 0\n";
          }

          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v168, buf, 8u);
LABEL_261:

          v169 = &_os_log_default;
          v170 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
          v171 = v318 - v317 < v354 - v147 && v354 >= v147;
          if (v171 || v318 - v317 > v147 + v354)
          {
            if (!v170)
            {
              goto LABEL_271;
            }

            *buf = 67109632;
            *&buf[4] = v318 - v317;
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
            *&buf[4] = v318 - v317;
            *&buf[8] = 1024;
            *&buf[10] = v354;
            v172 = "        Attempted Sync Counter: %u expected %u\n";
            v173 = 14;
          }

          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v172, buf, v173);
LABEL_271:

          v174 = &_os_log_default;
          v175 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
          v176 = v324 - v321 >= v146 - 1 || v351 == v348;
          if (v176 && v324 - v321 <= v146 + 1)
          {
            v59 = v345;
            v177 = v363 + 1;
            if (!v175)
            {
              goto LABEL_282;
            }

            *buf = 67109376;
            *&buf[4] = v324 - v321;
            *&buf[8] = 1024;
            *&buf[10] = v351 - v348;
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
            *&buf[4] = v324 - v321;
            *&buf[8] = 1024;
            *&buf[10] = v351 - v348;
            v178 = "        Attempted FollowUp Counter: %u out of expected bounds (%u ± 1)\n";
          }

          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v178, buf, 0xEu);
LABEL_282:

          v179 = &_os_log_default;
          v180 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
          v181 = v330 - v327 >= v363 - 1 || v363 == 0;
          if (v181 && v330 - v327 <= v177)
          {
            if (!v180)
            {
              goto LABEL_293;
            }

            *buf = 67109376;
            *&buf[4] = v330 - v327;
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
            *&buf[4] = v330 - v327;
            *&buf[8] = 1024;
            *&buf[10] = v363;
            v182 = "        Attempted Announce Counter: %u out of expected bounds (%u ± 1)\n";
          }

          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v182, buf, 0xEu);
LABEL_293:

          v183 = &_os_log_default;
          v184 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
          v185 = v336 - v333 >= v157 - 1 || v360 == v357;
          if (v185 && v336 - v333 <= v157 + 1)
          {
            if (!v184)
            {
              goto LABEL_304;
            }

            *buf = 67109376;
            *&buf[4] = v336 - v333;
            *&buf[8] = 1024;
            *&buf[10] = v360 - v357;
            v186 = "        Attempted Signal Counter: %u expected %u\n";
          }

          else
          {
            if (!v184)
            {
              goto LABEL_304;
            }

            *buf = 67109376;
            *&buf[4] = v336 - v333;
            *&buf[8] = 1024;
            *&buf[10] = v360 - v357;
            v186 = "        Attempted Signal Counter: %u out of expected bounds (%u ± 1)\n";
          }

          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v186, buf, 0xEu);
LABEL_304:

          v187 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = v292 - v291;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "        Raw Delay Exceeded Counter: %u\n", buf, 8u);
          }

          v188 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = v294 - v293;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "        Raw Delay Measurements Counter: %u\n", buf, 8u);
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v344 = sub_100017D7C([v59 localPDelayLogMeanInterval]);
            v189 = v340 / sub_100017D7C([v59 remotePDelayLogMeanInterval]);
            v190 = [v60 receivedPDelayRequestCounter];
            v191 = [v103 receivedPDelayRequestCounter];
            v192 = v190 - v191;
            v319 = [v60 transmittedPDelayResponseCounter];
            v193 = [v103 transmittedPDelayResponseCounter];
            v325 = [v60 transmittedPDelayResponseFollowUpCounter];
            v322 = [v103 transmittedPDelayResponseFollowUpCounter];
            v331 = [v60 attemptedPDelayResponseCounter];
            v328 = [v103 attemptedPDelayResponseCounter];
            v337 = [v60 attemptedPDelayResponseFollowUpCounter];
            v334 = [v103 attemptedPDelayResponseFollowUpCounter];
            v364 = [v60 transmittedPDelayRequestCounter];
            v361 = [v103 transmittedPDelayRequestCounter];
            v346 = [v60 attemptedPDelayRequestCounter];
            v342 = [v103 attemptedPDelayRequestCounter];
            v352 = [v60 receivedPDelayResponseCounter];
            v349 = [v103 receivedPDelayResponseCounter];
            v358 = [v60 receivedPDelayResponseFollowUpCounter];
            v355 = [v103 receivedPDelayResponseFollowUpCounter];
            v194 = (v189 + 9) / 0xAu;
            v195 = &_os_log_default;
            v196 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
            v197 = v190 - v191 < v189 - v194 && v189 >= v194;
            if (v197 || v192 > v194 + v189)
            {
              if (v196)
              {
                *buf = 67109632;
                *&buf[4] = v190 - v191;
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
              *&buf[4] = v190 - v191;
              *&buf[8] = 1024;
              *&buf[10] = v189;
              v198 = "        Received PDelay Request Counter: %u expected %u\n";
              v199 = 14;
              goto LABEL_332;
            }

            v211 = v319 - v193;

            v212 = v192 - 1;
            v213 = &_os_log_default;
            v214 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
            v215 = v319 - v193 >= v192 - 1 || v190 == v191;
            v216 = v192 + 1;
            if (v215 && v211 <= v216)
            {
              if (v214)
              {
                *buf = 67109376;
                *&buf[4] = v211;
                *&buf[8] = 1024;
                *&buf[10] = v190 - v191;
                v217 = "        Transmitted PDelay Response Counter: %u expected %u\n";
                goto LABEL_343;
              }
            }

            else if (v214)
            {
              *buf = 67109376;
              *&buf[4] = v211;
              *&buf[8] = 1024;
              *&buf[10] = v190 - v191;
              v217 = "        Transmitted PDelay Response Counter: %u out of expected bounds (%u ± 1)\n";
LABEL_343:
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v217, buf, 0xEu);
            }

            v218 = &_os_log_default;
            v219 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
            v220 = v325 - v322 >= v212 || v190 == v191;
            if (v220 && v325 - v322 <= v216)
            {
              if (v219)
              {
                *buf = 67109376;
                *&buf[4] = v325 - v322;
                *&buf[8] = 1024;
                *&buf[10] = v190 - v191;
                v221 = "        Transmitted PDelay Response FollowUp Counter: %u expected %u\n";
                goto LABEL_354;
              }
            }

            else if (v219)
            {
              *buf = 67109376;
              *&buf[4] = v325 - v322;
              *&buf[8] = 1024;
              *&buf[10] = v190 - v191;
              v221 = "        Transmitted PDelay Response FollowUp Counter: %u out of expected bounds (%u ± 1)\n";
LABEL_354:
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v221, buf, 0xEu);
            }

            v222 = &_os_log_default;
            v223 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
            v224 = v331 - v328 >= v212 || v190 == v191;
            if (v224 && v331 - v328 <= v216)
            {
              if (v223)
              {
                *buf = 67109376;
                *&buf[4] = v331 - v328;
                *&buf[8] = 1024;
                *&buf[10] = v190 - v191;
                v225 = "        Attempted PDelay Response Counter: %u expected %u\n";
                goto LABEL_365;
              }
            }

            else if (v223)
            {
              *buf = 67109376;
              *&buf[4] = v331 - v328;
              *&buf[8] = 1024;
              *&buf[10] = v190 - v191;
              v225 = "        Attempted PDelay Response Counter: %u out of expected bounds (%u ± 1)\n";
LABEL_365:
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v225, buf, 0xEu);
            }

            v226 = &_os_log_default;
            v227 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
            v228 = v337 - v334 >= v212 || v190 == v191;
            if (v228 && v337 - v334 <= v216)
            {
              if (v227)
              {
                *buf = 67109376;
                *&buf[4] = v337 - v334;
                *&buf[8] = 1024;
                *&buf[10] = v190 - v191;
                v229 = "        Attempted PDelay Response FollowUp Counter: %u expected %u\n";
                goto LABEL_376;
              }
            }

            else if (v227)
            {
              *buf = 67109376;
              *&buf[4] = v337 - v334;
              *&buf[8] = 1024;
              *&buf[10] = v190 - v191;
              v229 = "        Attempted PDelay Response FollowUp Counter: %u out of expected bounds (%u ± 1)\n";
LABEL_376:
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v229, buf, 0xEu);
            }

            v230 = v364 - v361;
            v231 = v340 / v344;

            v232 = ((v340 / v344) + 9) / 0xA;
            v233 = v340 / v344 - v232;
            v234 = &_os_log_default;
            v235 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
            v236 = v364 - v361 < v233 && v231 >= v232;
            v237 = v232 + v231;
            if (v236 || v230 > v237)
            {
              if (v235)
              {
                *buf = 67109632;
                *&buf[4] = v364 - v361;
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
              *&buf[4] = v364 - v361;
              *&buf[8] = 1024;
              *&buf[10] = v340 / v344;
              v238 = "        Transmitted PDelay Request Counter: %u expected %u\n";
              v239 = 14;
              goto LABEL_386;
            }

            v240 = &_os_log_default;
            v241 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
            v242 = v346 - v342 < v233 && v231 >= v232;
            if (v242 || v346 - v342 > v237)
            {
              if (v241)
              {
                *buf = 67109632;
                *&buf[4] = v346 - v342;
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
              *&buf[4] = v346 - v342;
              *&buf[8] = 1024;
              *&buf[10] = v340 / v344;
              v243 = "        Attempted PDelay Request Counter: %u expected %u\n";
              v244 = 14;
              goto LABEL_396;
            }

            v245 = &_os_log_default;
            v246 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
            v247 = v352 - v349 >= v230 - 1 || v364 == v361;
            v248 = v230 + 1;
            if (v247 && v352 - v349 <= v248)
            {
              v59 = v345;
              if (v246)
              {
                *buf = 67109376;
                *&buf[4] = v352 - v349;
                *&buf[8] = 1024;
                *&buf[10] = v364 - v361;
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
                *&buf[4] = v352 - v349;
                *&buf[8] = 1024;
                *&buf[10] = v364 - v361;
                v249 = "        Received PDelay Response Counter: %u out of expected bounds (%u ± 1)\n";
LABEL_407:
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v249, buf, 0xEu);
              }
            }

            v250 = &_os_log_default;
            v251 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
            v252 = v358 - v355 >= v230 - 1 || v364 == v361;
            if (v252 && v358 - v355 <= v248)
            {
              if (v251)
              {
                *buf = 67109376;
                *&buf[4] = v358 - v355;
                *&buf[8] = 1024;
                *&buf[10] = v364 - v361;
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
            *&buf[4] = v358 - v355;
            *&buf[8] = 1024;
            *&buf[10] = v364 - v361;
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
              v200 = v351 - v348;
            }

            else
            {
              v200 = 0;
            }

            if ([v60 portRole] == 3)
            {
              v201 = v343 - v341;
            }

            else
            {
              v201 = 0;
            }

            v359 = v201;
            v202 = [v60 receivedDelayRequestCounter];
            v203 = [v103 receivedDelayRequestCounter];
            v204 = v202 - v203;
            v205 = [v60 transmittedDelayResponseCounter];
            v206 = [v103 transmittedDelayResponseCounter];
            v323 = [v60 attemptedDelayResponseCounter];
            v320 = [v103 attemptedDelayResponseCounter];
            v329 = [v60 transmittedDelayRequestCounter];
            v326 = [v103 transmittedDelayRequestCounter];
            v335 = [v60 attemptedDelayRequestCounter];
            v332 = [v103 attemptedDelayRequestCounter];
            v350 = [v60 receivedDelayResponseCounter];
            v338 = [v103 receivedDelayResponseCounter];
            v356 = [v60 supersededSyncCounter];
            v353 = [v103 supersededSyncCounter];
            v365 = [v60 supersededDelayCounter];
            v362 = [v103 supersededDelayCounter];
            v207 = v202 - v203 < v200 - 1 && v200 != 0;
            v208 = &_os_log_default;
            v209 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
            if (v207 || v204 > v200 + 1)
            {
              if (v209)
              {
                *buf = 67109376;
                *&buf[4] = v202 - v203;
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
              *&buf[4] = v202 - v203;
              *&buf[8] = 1024;
              *&buf[10] = v200;
              v210 = "        Received Delay Request Counter: %u expected %u\n";
              goto LABEL_421;
            }

            v255 = v205 - v206;

            v256 = &_os_log_default;
            v257 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
            v258 = v205 - v206 >= v204 - 1 || v202 == v203;
            v259 = v204 + 1;
            if (v258 && v255 <= v259)
            {
              if (v257)
              {
                *buf = 67109376;
                *&buf[4] = v255;
                *&buf[8] = 1024;
                *&buf[10] = v202 - v203;
                v260 = "        Transmitted Delay Response Counter: %u expected %u\n";
                goto LABEL_432;
              }
            }

            else if (v257)
            {
              *buf = 67109376;
              *&buf[4] = v255;
              *&buf[8] = 1024;
              *&buf[10] = v202 - v203;
              v260 = "        Transmitted Delay Response Counter: %u out of expected bounds (%u ± 1)\n";
LABEL_432:
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v260, buf, 0xEu);
            }

            v261 = &_os_log_default;
            v262 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
            v263 = v323 - v320 >= v204 - 1 || v202 == v203;
            if (v263 && v323 - v320 <= v259)
            {
              v59 = v345;
              v264 = v290;
              if (v262)
              {
                *buf = 67109376;
                *&buf[4] = v323 - v320;
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
                *&buf[4] = v323 - v320;
                *&buf[8] = 1024;
                *&buf[10] = v204;
                v265 = "        Attempted Delay Response Counter: %u out of expected bounds (%u ± 1)\n";
LABEL_443:
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v265, buf, 0xEu);
              }
            }

            v266 = &_os_log_default;
            v267 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
            v268 = v329 - v326 >= v264 || v343 == v341;
            if (v268 && v329 - v326 <= v289)
            {
              if (v267)
              {
                *buf = 67109376;
                *&buf[4] = v329 - v326;
                *&buf[8] = 1024;
                *&buf[10] = v343 - v341;
                v269 = "        Transmitted Delay Request Counter: %u expected %u\n";
                goto LABEL_454;
              }
            }

            else if (v267)
            {
              *buf = 67109376;
              *&buf[4] = v329 - v326;
              *&buf[8] = 1024;
              *&buf[10] = v343 - v341;
              v269 = "        Transmitted Delay Request Counter: %u out of expected bounds (%u ± 1)\n";
LABEL_454:
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v269, buf, 0xEu);
            }

            v270 = &_os_log_default;
            v271 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
            v272 = v335 - v332 >= v264 || v343 == v341;
            if (v272 && v335 - v332 <= v289)
            {
              if (v271)
              {
                *buf = 67109376;
                *&buf[4] = v335 - v332;
                *&buf[8] = 1024;
                *&buf[10] = v343 - v341;
                v273 = "        Attempted Delay Request Counter: %u expected %u\n";
                goto LABEL_465;
              }
            }

            else if (v271)
            {
              *buf = 67109376;
              *&buf[4] = v335 - v332;
              *&buf[8] = 1024;
              *&buf[10] = v343 - v341;
              v273 = "        Attempted Delay Request Counter: %u out of expected bounds (%u ± 1)\n";
LABEL_465:
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v273, buf, 0xEu);
            }

            v274 = v350 - v338 < v359 - 1 && v359 != 0;
            v275 = &_os_log_default;
            v276 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
            if (v274 || v350 - v338 > v359 + 1)
            {
              if (v276)
              {
                *buf = 67109376;
                *&buf[4] = v350 - v338;
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
              *&buf[4] = v350 - v338;
              *&buf[8] = 1024;
              *&buf[10] = v359;
              v277 = "        Received Delay Response Counter: %u expected %u\n";
              goto LABEL_475;
            }

            v278 = &_os_log_default;
            v279 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
            if (v356 == v353)
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
              *&buf[4] = v356 - v353;
              v280 = "        Superseded Sync Counter: %u out of expected bounds (0)\n";
LABEL_481:
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v280, buf, 8u);
            }

            v281 = &_os_log_default;
            v282 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
            if (v365 == v362)
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
              *&buf[4] = v365 - v362;
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
      v12 = [(TSDKernelClock *)self->_clock clockIdentifier];
      *buf = 134217984;
      *&buf[4] = v12;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Clock Statistics for 0x%016llx\n", buf, 0xCu);
    }

    v13 = [(TSDKernelClock *)self->_clock lockState];
    if (v13 > 2)
    {
      v14 = @"Unknown";
    }

    else
    {
      v14 = off_10004CAF8[v13];
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [(__CFString *)v14 UTF8String];
      *buf = 136315138;
      *&buf[4] = v23;
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
      v36 = [v26 localizedDescription];
      v37 = [v36 UTF8String];
      *buf = 136315138;
      *&buf[4] = v37;
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
      v283 = [v40 localizedDescription];
      v284 = [v283 UTF8String];
      *buf = 136315138;
      *&buf[4] = v284;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "    TimeSync Sync Info: failed to get rate ratio and anchors with error %s\n", buf, 0xCu);
    }
  }
}

- (TSDClockStatistics)initWithClockIdentifier:(unint64_t)a3
{
  v11.receiver = self;
  v11.super_class = TSDClockStatistics;
  v4 = [(TSDClockStatistics *)&v11 init];
  v5 = v4;
  if (v4)
  {
    if (a3 == -1)
    {
      sub_10002B904(v4);
      return 0;
    }

    else
    {
      v4->_clockIdentifier = a3;
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

- (void)didResetClock:(id)a3
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    v5 = [(TSDClockStatistics *)self clockIdentifier];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "0x%016llx: reset clock\n", &v4, 0xCu);
  }
}

- (void)didChangeClockMasterForClock:(id)a3
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    v5 = [(TSDClockStatistics *)self clockIdentifier];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "0x%016llx: master clock changed\n", &v4, 0xCu);
  }
}

- (void)didChangeLockStateTo:(int)a3 forClock:(id)a4
{
  v6 = a4;
  if (a3 > 2)
  {
    v7 = @"Unknown";
  }

  else
  {
    v7 = off_10004CAF8[a3];
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218498;
    v9 = [(TSDClockStatistics *)self clockIdentifier];
    v10 = 1024;
    v11 = a3;
    v12 = 2080;
    v13 = [(__CFString *)v7 UTF8String];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "0x%016llx: set lock state to %u (%s)\n", &v8, 0x1Cu);
  }

  if (a3 == 2)
  {
    self->_hasSyncedSinceLocked = 0;
  }
}

- (void)didBeginClockGrandmasterChangeWithGrandmasterID:(unint64_t)a3 localPort:(unsigned __int16)a4 forClock:(id)a5
{
  v5 = a4;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218496;
    v9 = [(TSDClockStatistics *)self clockIdentifier];
    v10 = 2048;
    v11 = a3;
    v12 = 1024;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "0x%016llx: begin grandmaster change GMID 0x%016llx local port %hu\n", &v8, 0x1Cu);
  }
}

- (void)didEndClockGrandmasterChangeWithGrandmasterID:(unint64_t)a3 localPort:(unsigned __int16)a4 forClock:(id)a5
{
  v5 = a4;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218496;
    v9 = [(TSDClockStatistics *)self clockIdentifier];
    v10 = 2048;
    v11 = a3;
    v12 = 1024;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "0x%016llx: end grandmaster change GMID 0x%016llx local port %hu\n", &v8, 0x1Cu);
  }
}

- (void)didProcessSync:(id)a3
{
  v4 = a3;
  v5 = v4;
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
    v6 = [v4 getMachAbsoluteRateRatioNumerator:&v28 denominator:&v27 machAnchor:&v26 andDomainAnchor:&v24 forGrandmasterIdentity:&v23 portNumber:&v22 withError:&v21];
    v7 = v21;
    v8 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        v9 = [(TSDClockStatistics *)self clockIdentifier];
        *buf = 134219520;
        v30 = v9;
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
      v10 = [(TSDClockStatistics *)self clockIdentifier];
      v11 = [v7 localizedDescription];
      v12 = [v11 UTF8String];
      *buf = 134218242;
      v30 = v10;
      v31 = 2080;
      v32 = v12;
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
        v16 = [(TSDClockStatistics *)self clockIdentifier];
        *buf = 134219520;
        v30 = v16;
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
      v17 = [(TSDClockStatistics *)self clockIdentifier];
      v18 = [v14 localizedDescription];
      v19 = [v18 UTF8String];
      *buf = 134218242;
      v30 = v17;
      v31 = 2080;
      v32 = v19;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "0x%016llx: failed to get timesync rate ratio and anchors with error %s\n", buf, 0x16u);
    }

    self->_hasSyncedSinceLocked = 1;
  }
}

- (void)didGetStatsOfLocalPortNumber:(unint64_t)a3 mean:(unint64_t)a4 median:(unint64_t)a5 stddev:(unint64_t)a6 min:(unint64_t)a7 max:(unint64_t)a8 numberOfSamples:(unsigned int)a9 forClock:(id)a10
{
  v14 = [a10 portWithPortNumber:a3];
  v15 = [v14 remoteClockIdentity];
  v16 = BYTE5(v15);
  v17 = v15 >> 40;
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
  v19 = [NSNumber numberWithDouble:a7 / 1000.0];
  v33[5] = v19;
  v32[6] = @"MaximumDelay";
  v20 = [NSNumber numberWithDouble:a8 / 1000.0];
  v33[6] = v20;
  v32[7] = @"MeanDelay";
  v21 = [NSNumber numberWithDouble:a4 / 1000.0];
  v33[7] = v21;
  v32[8] = @"MedianDelay";
  v22 = [NSNumber numberWithDouble:a5 / 1000.0];
  v33[8] = v22;
  v32[9] = @"StandardDeviation";
  v23 = [NSNumber numberWithDouble:a6 / 1000.0];
  v33[9] = v23;
  v32[10] = @"NumberOfSamples";
  v24 = [NSNumber numberWithUnsignedInt:a9];
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