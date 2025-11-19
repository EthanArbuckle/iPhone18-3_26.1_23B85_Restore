uint64_t sub_100001D2C()
{
  v1 = OBJC_IVAR____TtC14bluetoothuserd22BluetoothUserXPCServer_daemon;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_100001D74()
{
  swift_beginAccess();
  v1 = *(v0 + 104);
}

uint64_t sub_100001DAC(char a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v6 - 8);
  v7 = *(v20 + 64);
  __chkstk_darwin();
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v3 + 16);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a1;
  *(v15 + 28) = a2;
  aBlock[4] = sub_100002754;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002410;
  aBlock[3] = &unk_10008C3D0;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v21 = &_swiftEmptyArrayStorage;
  sub_100002254(&qword_100092D20, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000A45C(&unk_1000931F0, &unk_100072C10);
  sub_1000023BC(&qword_100092D30, &unk_1000931F0, &unk_100072C10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v20 + 8))(v9, v6);
  (*(v10 + 8))(v13, v19);
}

uint64_t sub_1000020AC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000020E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000020F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002104(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002114(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002124(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002134(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002144(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002154(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002164(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002174(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002184(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002194(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000021A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000021B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000021C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002200(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();

  return sub_1000027FC(v3, a2);
}

uint64_t sub_100002254(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000229C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000022E4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000232C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100002374(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000023BC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000C9B0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100002410(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100002454(uint64_t a1, uint64_t a2, int a3)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    v12 = UInt32._bridgeToObjectiveC()().super.super.isa;
    v13 = [objc_allocWithZone(BMDeviceBluetoothUseCase) initWithStarting:isa useCase:v12];

    v14 = (*(*v10 + 192))();
    [v14 sendEvent:v13];

    v15 = sub_1000021DC();
    (*(v5 + 16))(v8, v15, v4);
    v16 = v13;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v29 = v5;
      v30 = v21;
      v22 = v21;
      *v19 = 136315394;
      sub_100002834(a3);
      v23 = String.init(cString:)();
      v25 = sub_1000034B8(v23, v24, &v30);
      v28 = v4;
      v26 = v25;

      *(v19 + 4) = v26;
      *(v19 + 12) = 2112;
      *(v19 + 14) = v16;
      *v20 = v16;
      v27 = v16;
      _os_log_impl(&_mh_execute_header, v17, v18, "Send usecase event %s for %@", v19, 0x16u);
      sub_100003738(v20);

      sub_1000036EC(v22);

      return (*(v29 + 8))(v8, v28);
    }

    else
    {

      return (*(v5 + 8))(v8, v4);
    }
  }

  return result;
}

id sub_100002764()
{
  v1 = v0[6];
  if (v1)
  {
    v2 = v0[6];
  }

  else
  {
    v3 = (*(*v0 + 168))();
    v4 = [v3 source];

    v5 = v0[6];
    v0[6] = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t sub_1000027FC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

const char *sub_100002834(int a1)
{
  if (a1 < 0x20000)
  {
    if (a1 <= 0x20000)
    {
      switch(a1)
      {
        case 65536:
          result = "FindMyAction";
          break;
        case 65537:
          result = "FindMyBackground";
          break;
        case 65538:
          result = "FindMyActionHELE";
          break;
        case 65539:
          result = "FindMyBackgroundHELE";
          break;
        case 65540:
          result = "FindMyActionTransient";
          break;
        case 65541:
          result = "FindMyBackgroundTransient";
          break;
        case 65542:
          result = "FindMyActionHELETransient";
          break;
        case 65543:
          result = "FindMyBackgroundHELETransient";
          break;
        case 65544:
          result = "FindMyNotOptedIn";
          break;
        case 65545:
          result = "FindMyOptedIn";
          break;
        case 65546:
          result = "FindMySepAlertsEnabled";
          break;
        case 65547:
          result = "FindMyTemporaryAggressiveLegacy";
          break;
        case 65548:
          result = "FindMyTemporaryLongAggressive";
          break;
        case 65549:
          result = "FindMyBTFindingUserInitiated";
          break;
        case 65550:
          result = "FindMyHELE";
          break;
        case 65551:
          result = "FindMyBeaconOnDemand";
          break;
        case 65552:
          result = "FindMyWildTimedScan";
          break;
        case 65553:
          result = "FindMyBackgroundLeechScan";
          break;
        case 65554:
          result = "FindMySnifferMode";
          break;
        case 65555:
          result = "FindMyUnpair";
          break;
        case 65556:
          result = "FindMyUnpairHELE";
          break;
        case 65557:
          result = "FindMyPlaySound";
          break;
        case 65558:
          result = "FindMyPlaySoundHELE";
          break;
        case 65559:
          result = "FindMyNotOptedInBeepOnMoveWaking";
          break;
        case 65560:
          result = "FindMyUTTransient";
          break;
        case 65561:
          result = "FindMyUTHELETransient";
          break;
        case 65562:
          result = "FindMyActionExtendedRange";
          break;
        case 65563:
          result = "FindMyActionExtendedRangeLE2M";
          break;
        case 65564:
          result = "FindMyActionExtendedRangeTransient";
          break;
        case 65565:
          result = "FindMyPlaySoundExtendedRange";
          break;
        case 65566:
          result = "FindMyPair";
          break;
        case 65567:
          result = "FindMyTemporaryAggressiveLegacyExtendedRange";
          break;
        default:
          JUMPOUT(0);
      }
    }

    else
    {
      result = "Unspecified";
      switch(a1)
      {
        case 0:
          return result;
        case 1:
          result = "HealthKit";
          break;
        case 2:
          result = "HomeKit";
          break;
        case 3:
          result = "FindMyObjectConnection";
          break;
        case 4:
          result = "FindMyObjectConnectionTransient";
          break;
        case 5:
          result = "MIDI";
          break;
        case 6:
          result = "Continuity";
          break;
        case 7:
          result = "InstantHotSpot";
          break;
        case 8:
          result = "NearBy";
          break;
        case 9:
          result = "Sharing";
          break;
        case 10:
          result = "HearingSupport";
          break;
        case 11:
          result = "Magnet";
          break;
        case 12:
          result = "HID";
          break;
        case 13:
          result = "LEA";
          break;
        case 14:
          result = "External";
          break;
        case 15:
          result = "ExternalMedical";
          break;
        case 16:
          result = "ExternalLock";
          break;
        case 17:
          result = "ExternalWatch";
          break;
        case 18:
          result = "SmartRouting";
          break;
        case 19:
          result = "DigitalID";
          break;
        case 20:
          result = "DigitalKey";
          break;
        case 21:
          result = "DigitalCarKey";
          break;
        case 22:
          result = "HeySiri";
          break;
        case 23:
          result = "ThirdPartyApp";
          break;
        case 24:
          result = "CNJ";
          break;
        default:
          switch(a1)
          {
            case 256:
              result = "DevicePresenceDetection";
              break;
            case 257:
              result = "AudioBox";
              break;
            case 258:
              result = "SIMTransfer";
              break;
            case 259:
              result = "ProximityScreenOnLeechScan";
              break;
            case 260:
              result = "MacMigrate";
              break;
            case 263:
              result = "HIDUARTService";
              break;
            case 264:
              result = "AccessibilitySwitchControlPairing";
              break;
            case 265:
              result = "BaseBandFastConnect";
              break;
            case 266:
              result = "SafetyAlerts";
              break;
            case 267:
              result = "LECarPlay";
              break;
            case 268:
              result = "TCCBluetooth";
              break;
            case 269:
              result = "AOPBufferLeech";
              break;
            case 270:
              result = "HighPriorityScanWiFi";
              break;
            default:
              return "?";
          }

          break;
      }
    }
  }

  else
  {
    if (a1 <= 0x80000)
    {
      if (a1 < 196608)
      {
        switch(a1)
        {
          case 131072:
            result = "SharingDefault";
            break;
          case 131073:
            result = "SharingPhoneAutoUnlock";
            break;
          case 131074:
            result = "SharingSiriWatchAuth";
            break;
          case 131075:
            result = "SharingMacAutoUnlock";
            break;
          case 131076:
            result = "SharingEDTScreenOn";
            break;
          case 131077:
            result = "SharingEDTWiFiDisabled";
            break;
          case 131078:
            result = "SharingEDTWombatEligibleAsDefaultCamera";
            break;
          case 131079:
            result = "SharingEDTWombatCameraPicker";
            break;
          case 131080:
            result = "SharingWombatBackground";
            break;
          case 131081:
            result = "SharingUniversalControl";
            break;
          case 131082:
            result = "SharingPeopleProximity";
            break;
          case 131083:
            result = "SharingEDTEnsembleOpenDisplayPrefs";
            break;
          case 131084:
            result = "SharingEDTNearbydMotionStopped";
            break;
          case 131085:
            result = "SharingDoubleBoostGenericScan";
            break;
          case 131086:
            result = "SharingEDTIncomingAdvertisement ";
            break;
          case 131087:
            result = "SharingEDTWombatStreamStart";
            break;
          case 131088:
            result = "SharingOYAutoUnlock";
            break;
          case 131090:
            result = "SharingAirDrop";
            break;
          case 131091:
            result = "SharingNearbyInvitationHost";
            break;
          case 131092:
            result = "SharingNearbyInvitationParticipant";
            break;
          case 131093:
            result = "SharingAirDropAskToAirDrop";
            break;
          case 131094:
            result = "SharingAirDropTempIdentity";
            break;
          case 131095:
            result = "SharingAirDropNeedsCLink";
            break;
          case 131096:
            result = "SharingRemoteWidgetUpdate";
            break;
          case 131097:
            result = "SharingCountryCodeUpdate";
            break;
          case 131098:
            result = "SharingMacPhoneAutoUnlock";
            break;
          case 131099:
            result = "SharingVisionProDiscovery";
            break;
          case 131100:
            result = "SharingVisionProStateChange";
            break;
          case 131101:
            result = "SharingContinuityScreen";
            break;
          case 131102:
            result = "SharingEDTRemoteDisplay";
            break;
          case 131103:
            result = "SharingHomePodSetup";
            break;
          default:
            return "?";
        }

        return result;
      }

      if (a1 > 393218)
      {
        if (a1 > 458752)
        {
          switch(a1)
          {
            case 0x70001:
              return "PrecisionFindingFindee";
            case 0x70002:
              return "SpatialHandoffHome";
            case 0x80000:
              return "ADPD";
          }
        }

        else
        {
          switch(a1)
          {
            case 393219:
              return "AppleIDSignIn";
            case 393220:
              return "AppleIDSignInSettings";
            case 458752:
              return "PrecisionFindingFinder";
          }
        }
      }

      else
      {
        if (a1 >= 393216)
        {
          if (a1 == 393216)
          {
            return "CaptiveNetworkJoin";
          }

          if (a1 == 393217)
          {
            return "UseCaseSIMTransfer";
          }

          return "MacSetup";
        }

        switch(a1)
        {
          case 196608:
            return "DigitalIDTSA";
          case 262144:
            return "DigitalCarKeyThirdParty";
          case 327680:
            return "RapportThirdParty";
        }
      }

      return "?";
    }

    if (a1 < 0x100000)
    {
      if (a1 <= 851968)
      {
        if (a1 >= 655360)
        {
          if (a1 <= 720896)
          {
            if (a1 == 655360)
            {
              return "AccessDigitalHomeKey";
            }

            if (a1 == 720896)
            {
              return "SoftwareUpdateBTWake";
            }
          }

          else
          {
            switch(a1)
            {
              case 720897:
                return "SofrwareUpdateOutboxControllerAuth";
              case 786432:
                return "ProxControlDeviceClose";
              case 851968:
                return "DCTProtocolTelephony";
            }
          }
        }

        else
        {
          if (a1 <= 524290)
          {
            if (a1 == 524289)
            {
              return "ADPDBuffer";
            }

            else
            {
              return "MicroLocation";
            }
          }

          switch(a1)
          {
            case 524291:
              return "MicroLocationLeech";
            case 589824:
              return "FindNearbyRemote";
            case 589825:
              return "FindNearbyPencil";
          }
        }
      }

      else if (a1 <= 983041)
      {
        if (a1 <= 917504)
        {
          if (a1 == 851969)
          {
            return "DCTProtocolDataAndTelephony";
          }

          if (a1 == 917504)
          {
            return "NearbyFaceTime";
          }
        }

        else
        {
          switch(a1)
          {
            case 917505:
              return "NearbyFaceTimeData";
            case 983040:
              return "SOSBeaconPartA";
            case 983041:
              return "SOSBeaconPartB";
          }
        }
      }

      else
      {
        if (a1 <= 983044)
        {
          if (a1 == 983042)
          {
            return "SOSBeaconPrecisionFindResponse";
          }

          if (a1 == 983043)
          {
            return "SOSBeaconPrecisionFindRequest";
          }

          return "SOSBeaconScan";
        }

        switch(a1)
        {
          case 983045:
            return "SOSBeaconActivateScan";
          case 983046:
            return "SOSBeaconActivateAdvA";
          case 983047:
            return "SOSBeaconActivateAdvB";
        }
      }

      return "?";
    }

    if (a1 <= 2147418111)
    {
      switch(a1)
      {
        case 1048576:
          return "DOS";
        case 1048577:
          return "DOD";
        case 1114112:
          return "ProximityServiceDeviceSetup";
      }

      return "?";
    }

    switch(a1)
    {
      case 2147418112:
        result = "InternalTestNoLockScan";
        break;
      case 2147418113:
        result = "InternalTestNoScreenOffScan";
        break;
      case 2147418114:
        result = "InternalTestScanWithNoDups";
        break;
      case 2147418115:
        result = "InternalTestScanWithDups";
        break;
      case 2147418116:
        result = "InternalTestScanFor20Seconds";
        break;
      case 2147418117:
        result = "InternalTestActiveScan";
        break;
      case 2147418118:
        result = "InternalTestUUIDScan";
        break;
      case 2147418119:
        result = "InternalTestScanFor10ClockSeconds";
        break;
      case 2147418120:
        result = "InternalTestScanBoost";
        break;
      case 2147418121:
        result = "InternalTestDiscoveryScanWithMRC";
        break;
      case 2147418122:
        result = "InternalTestAdvWithHigherPower";
        break;
      case 2147418123:
        result = "InternalTestScanLowDutyCycleMCOnly";
        break;
      case 2147418124:
        result = "InternalTestUUIDScanWithMinRSSI";
        break;
      case 2147418125:
        result = "InternalTestUUIDScanWithMinRSSIMediumLow";
        break;
      case 2147418126:
        result = "InternalTestAdvWithHigherPowerServiceDataConnectable";
        break;
      case 2147418127:
        result = "InternalTestAdvWithHigherPowerServiceDataNonConnectable";
        break;
      case 2147418128:
        result = "InternalTestAdvWithHigherPowerServiceDataS2";
        break;
      case 2147418129:
        result = "InternalTestAdvWithHigherPowerServiceDataS8";
        break;
      case 2147418130:
        result = "InternalTestDiscoveryScanCodedPHY";
        break;
      default:
        return "?";
    }
  }

  return result;
}

uint64_t sub_1000034B8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100003584(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100003690(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000036EC(v11);
  return v7;
}

unint64_t sub_100003584(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100003C28(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_100003690(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000036EC(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100003738(uint64_t a1)
{
  v2 = sub_10000A45C(&qword_100093F70, &qword_1000730D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100003820(uint64_t a1, uint64_t a2, char a3, char a4, int a5)
{
  v23 = a5;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v10 - 8);
  v11 = *(v26 + 64);
  __chkstk_darwin();
  v13 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = type metadata accessor for DispatchQoS();
  v14 = *(v25 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v17 = &v22[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = *(v5 + 16);
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = a3;
  *(v19 + 32) = a1;
  *(v19 + 40) = a2;
  *(v19 + 48) = a4;
  *(v19 + 52) = v23;
  aBlock[4] = sub_100061D00;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002410;
  aBlock[3] = &unk_10008C380;
  v20 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v27 = &_swiftEmptyArrayStorage;
  sub_100002254(&qword_100092D20, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000A45C(&unk_1000931F0, &unk_100072C10);
  sub_1000023BC(&qword_100092D30, &unk_1000931F0, &unk_100072C10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v26 + 8))(v13, v10);
  (*(v14 + 8))(v17, v25);
}

uint64_t sub_100003B3C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100003B74()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 56, 7);
}

void *sub_100003BB4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_10000A45C(&unk_100092E10, &unk_100072BD0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100003C28(uint64_t a1, unint64_t a2)
{
  v4 = sub_100003C74(a1, a2);
  sub_100003DA8(&off_100089A20);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100003C74(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100003BB4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100003BB4(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100003DA8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_10000AD00(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100003F18(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_100004124();
  (*(v5 + 16))(v8, v9, v4);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v10, v11))
  {

    goto LABEL_5;
  }

  result = swift_slowAlloc();
  *result = 134217984;
  if (a1)
  {
    *(result + 4) = *(a1 + 16);
    v13 = result;

    _os_log_impl(&_mh_execute_header, v10, v11, "IDS devices changed: %ld", v13, 0xCu);

LABEL_5:
    (*(v5 + 8))(v8, v4);
    v14 = type metadata accessor for Transaction();
    __chkstk_darwin(v14);
    *&v15[-16] = v2;
    return static Transaction.named<A>(_:with:)("com.apple.bluetoothuser.deleteStaleRecords", 42, 2, sub_100052BC8);
  }

  __break(1u);
  return result;
}

void sub_100004148(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  (__chkstk_darwin)();
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (*(*(sub_10000A45C(&qword_100093F68, &unk_100074690) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v10 = &v53 - v9;
  v11 = type metadata accessor for CloudPairedDeviceRecord();
  v68 = *(v11 - 8);
  v69 = v11;
  v12 = *(v68 + 64);
  v13 = (__chkstk_darwin)();
  v59 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v53 - v15;
  Transaction.capture()();
  if (*(a2 + OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_accountAvailable) != 1)
  {
    return;
  }

  v17 = (*((swift_isaMask & *a2) + 0xC0))();
  if (!v17)
  {
    return;
  }

  v18 = v17;
  v58 = v3;
  v19 = [v17 devices];
  if (!v19)
  {
    goto LABEL_34;
  }

  v20 = v19;
  v61 = sub_100004890(0, &qword_100093F60, IDSDevice_ptr);
  v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v21 >> 62)
  {
LABEL_32:
    v22 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v22 < 2)
  {
LABEL_29:

    return;
  }

  v24 = (*((swift_isaMask & *a2) + 0x128))(v23);
  v26 = v24;
  v67 = *(v24 + 16);
  if (!v67)
  {

    goto LABEL_29;
  }

  v60 = v18;
  v57 = v7;
  v18 = 0;
  v27 = *((swift_isaMask & *a2) + 0x108);
  v65 = (swift_isaMask & *a2) + 264;
  v66 = v27;
  v28 = v69;
  v64 = v24 + ((*(v68 + 80) + 32) & ~*(v68 + 80));
  v63 = v68 + 48;
  v55 = (v4 + 16);
  v56 = (v4 + 8);
  *&v25 = 136315138;
  v53 = v25;
  v62 = v24;
  while (1)
  {
    if (v18 >= *(v26 + 16))
    {
      __break(1u);
      goto LABEL_32;
    }

    v4 = v68;
    sub_100004EFC(v64 + *(v68 + 72) * v18, v16);
    v29 = &v16[*(v28 + 24)];
    v30 = *v29;
    v7 = *(v29 + 1);

    v66(v31);
    if ((*(v4 + 48))(v10, 1, v28) == 1)
    {
      break;
    }

    v39 = &v10[*(v28 + 24)];
    v40 = *v39;
    v41 = *(v39 + 1);

    sub_100007124(v10);
    if (v30 == v40 && v7 == v41)
    {
    }

    else
    {
      v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v43 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

LABEL_10:
    v28 = v69;
    v26 = v62;
    ++v18;
    sub_100007124(v16);
    if (v67 == v18)
    {

      return;
    }
  }

  sub_100006CAC(v10, &qword_100093F68, &unk_100074690);

LABEL_14:
  v32 = a2;
  v33 = [v60 devices];
  if (v33)
  {
    v34 = v33;
    v35 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    __chkstk_darwin(v36);
    *(&v53 - 2) = v16;
    v37 = v70;
    v38 = sub_10004D9D8(sub_100052AE8, (&v53 - 2), v35);
    v70 = v37;

    if (v38)
    {
    }

    else
    {
      v44 = sub_100004124();
      v4 = v57;
      v45 = v58;
      (*v55)(v57, v44, v58);
      v46 = v59;
      sub_100004EFC(v16, v59);
      v47 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v47, v7))
      {
        v48 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v71 = v54;
        *v48 = v53;
        v49 = (v46 + *(v69 + 24));
        v50 = v46;
        v52 = *v49;
        v51 = v49[1];

        sub_100007124(v50);
        v4 = sub_1000034B8(v52, v51, &v71);

        *(v48 + 4) = v4;
        _os_log_impl(&_mh_execute_header, v47, v7, "Stale record delete: %s", v48, 0xCu);
        sub_1000036EC(v54);

        (*v56)(v57, v58);
      }

      else
      {

        sub_100007124(v46);
        (*v56)(v4, v45);
      }

      a2 = v32;
      (*((swift_isaMask & *v32) + 0x1B8))(v16, 0);
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void *sub_100004840()
{
  v1 = OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_cloudPairingIDSService;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_100004890(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1000048D8()
{
  v43 = v0;
  v1 = (*((swift_isaMask & **(v0[3] + OBJC_IVAR____TtC14bluetoothuserd13XPCConnection_listener)) + 0x70))();
  if (!v1)
  {
    sub_10005FD70();
    swift_allocError();
    *v10 = 1;
    swift_willThrow();
LABEL_7:
    v12 = v0[8];
    v13 = v0[6];

    v14 = v0[1];

    return v14();
  }

  v2 = (*(*v1 + 440))();
  if (!v2)
  {
    sub_10005FD70();
    swift_allocError();
    *v11 = 1;
    swift_willThrow();

    goto LABEL_7;
  }

  v3 = v2;
  v4 = objc_opt_self();
  v0[2] = 0;
  v5 = [v4 devicesWithDiscoveryFlags:0x800000 error:v0 + 2];
  v6 = v0[2];
  if (v5)
  {
    v7 = v5;
    sub_100004890(0, &unk_100094150, CBDevice_ptr);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v6;
  }

  else
  {
    v16 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v8 = 0;
  }

  v17 = (*((swift_isaMask & *v3) + 0x128))();
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = 0;
    v20 = v0[7];
    do
    {
      v21 = v19;
      while (1)
      {
        if (v21 >= *(v17 + 16))
        {
          __break(1u);
        }

        v22 = v0[8];
        sub_100004EFC(v17 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v21, v22);
        sub_100004FAC(v22, v8, v3, &v42);
        sub_100007124(v0[8]);
        if (v42)
        {
          break;
        }

        if (v18 == ++v21)
        {
          goto LABEL_21;
        }
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v23 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v19 = v21 + 1;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    while (v18 - 1 != v21);
  }

LABEL_21:
  v24 = v0[5];
  v25 = v0[6];
  v26 = v0[4];

  v27 = sub_1000393CC();
  (*(v24 + 16))(v25, v27, v26);

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();

  v30 = os_log_type_enabled(v28, v29);
  v31 = v0[5];
  v41 = v0[6];
  v32 = v0[4];
  if (v30)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v42 = v34;
    *v33 = 136315138;
    sub_100004890(0, &unk_100094150, CBDevice_ptr);
    v35 = Array.description.getter();
    v37 = sub_1000034B8(v35, v36, &v42);

    *(v33 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v28, v29, "Cloud Paired Devices Metadata: %s", v33, 0xCu);
    sub_1000036EC(v34);
  }

  (*(v31 + 8))(v41, v32);
  v38 = v0[8];
  v39 = v0[6];

  v40 = v0[1];

  return v40(_swiftEmptyArrayStorage);
}

uint64_t sub_100004EFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudPairedDeviceRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for CloudPairedDeviceRecord()
{
  result = qword_100096D90;
  if (!qword_100096D90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100004FAC(uint64_t a1@<X0>, id *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v109 = a3;
  v108 = a4;
  v6 = sub_10000A45C(&qword_100093F68, &unk_100074690);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v110 = &v101 - v8;
  v104 = sub_10000A45C(&qword_100094160, &qword_100074A98);
  v9 = *(*(v104 - 8) + 64);
  __chkstk_darwin(v104);
  v111 = &v101 - v10;
  v105 = type metadata accessor for Date();
  v107 = *(v105 - 8);
  v11 = *(v107 + 64);
  __chkstk_darwin(v105);
  v103 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A45C(&unk_1000938B0, &qword_100074AA0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v102 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v101 = &v101 - v18;
  v19 = __chkstk_darwin(v17);
  v106 = &v101 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = &v101 - v22;
  __chkstk_darwin(v21);
  v112 = &v101 - v24;
  v25 = type metadata accessor for CloudPairedDeviceRecord();
  v114 = a1;
  v115 = v25;
  v26 = (a1 + *(v25 + 24));
  v27 = *v26;
  v116 = v26[1];
  v117 = v27;
  v113 = [objc_allocWithZone(CBDevice) init];
  v120 = a2;
  if (!a2)
  {
    goto LABEL_24;
  }

  v28 = v120 & 0xFFFFFFFFFFFFFF8;
  if (v120 >> 62)
  {
LABEL_23:
    v29 = _CocoaArrayWrapper.endIndex.getter();
    if (v29)
    {
      goto LABEL_4;
    }

LABEL_24:

    goto LABEL_25;
  }

  v29 = *((v120 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v29)
  {
    goto LABEL_24;
  }

LABEL_4:
  v30 = 0;
  v118 = v120 & 0xC000000000000001;
  while (1)
  {
    if (v118)
    {
      v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v30 >= *(v28 + 16))
      {
        goto LABEL_22;
      }

      v31 = v120[v30 + 4];
    }

    v32 = v31;
    v33 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v34 = v23;
    v35 = [v31 idsDeviceID];
    if (!v35)
    {
      goto LABEL_5;
    }

    v36 = v35;
    v37 = v28;
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    if (v38 == v117 && v40 == v116)
    {
      break;
    }

    v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v28 = v37;
    if (v42)
    {
      goto LABEL_19;
    }

LABEL_5:

    ++v30;
    v23 = v34;
    if (v33 == v29)
    {
      goto LABEL_24;
    }
  }

LABEL_19:
  v43 = [v32 identifier];

  v23 = v34;
  if (!v43)
  {
    goto LABEL_24;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_25:
  v44 = String._bridgeToObjectiveC()();

  v45 = v113;
  [v113 setIdentifier:v44];

  v46 = String._bridgeToObjectiveC()();
  [v45 setIdsDeviceID:v46];

  v48 = v114;
  v47 = v115;
  v49 = *(v114 + v115[10]);
  if ((v49 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_54;
  }

  v50 = v112;
  if (v49 > 0xFF)
  {
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  [v45 setDeviceType:*(v114 + v115[10])];
  v51 = sub_100006DAC(&qword_100093F80, type metadata accessor for CloudPairedDeviceRecord);
  v52 = sub_100006DF4(v47, v51);
  v53 = [objc_allocWithZone(CBControllerInfo) init];
  [v53 setCloudSyncStatus:1];
  v54 = [v52 recordChangeTag];
  if (v54)
  {
    v118 = v53;

    v55 = v107;
    v56 = v105;
    (*(v107 + 16))(v50, v48 + v47[5], v105);
    v57 = *(v55 + 56);
    v57(v50, 0, 1, v56);
    v58 = [v52 modificationDate];
    v120 = v52;
    if (v58)
    {
      v59 = v103;
      v60 = v58;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v61 = v56;
      v62 = v23;
      v63 = v55;
      v64 = *(v55 + 32);
      v65 = v106;
      v66 = v59;
      v50 = v112;
      v64(v106, v66, v61);
      v57(v65, 0, 1, v61);
      v64(v62, v65, v61);
      v57(v62, 0, 1, v61);
    }

    else
    {
      v67 = 1;
      v57(v106, 1, 1, v56);
      v68 = [v52 creationDate];
      v69 = v101;
      if (v68)
      {
        v70 = v68;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v67 = 0;
      }

      v57(v69, v67, 1, v56);
      sub_10003C78C(v69, v23);
      v71 = v106;
      v61 = v56;
      v62 = v23;
      v63 = v55;
      if ((*(v55 + 48))(v106, 1, v56) != 1)
      {
        sub_100006CAC(v71, &unk_1000938B0, &qword_100074AA0);
      }
    }

    v72 = *(v104 + 48);
    v73 = v111;
    sub_100006C44(v50, v111, &unk_1000938B0, &qword_100074AA0);
    sub_100006C44(v62, v73 + v72, &unk_1000938B0, &qword_100074AA0);
    v74 = *(v63 + 48);
    v75 = v74(v73, 1, v61);
    v53 = v118;
    if (v75 == 1)
    {
      sub_100006CAC(v62, &unk_1000938B0, &qword_100074AA0);
      v76 = v111;
      sub_100006CAC(v50, &unk_1000938B0, &qword_100074AA0);
      v77 = v74(v76 + v72, 1, v61);
      v45 = v113;
      if (v77 == 1)
      {
        sub_100006CAC(v76, &unk_1000938B0, &qword_100074AA0);
        v78 = 3;
        v48 = v114;
        v47 = v115;
        v52 = v120;
        v79 = &off_100091000;
        goto LABEL_41;
      }

LABEL_39:
      sub_100006CAC(v76, &qword_100094160, &qword_100074A98);
      v48 = v114;
      v47 = v115;
      v52 = v120;
      v79 = &off_100091000;
      goto LABEL_40;
    }

    v80 = v102;
    sub_100006C44(v73, v102, &unk_1000938B0, &qword_100074AA0);
    if (v74(v73 + v72, 1, v61) == 1)
    {
      sub_100006CAC(v62, &unk_1000938B0, &qword_100074AA0);
      v76 = v111;
      sub_100006CAC(v50, &unk_1000938B0, &qword_100074AA0);
      (*(v107 + 8))(v80, v61);
      v45 = v113;
      goto LABEL_39;
    }

    v96 = v107;
    v97 = v73 + v72;
    v98 = v103;
    (*(v107 + 32))(v103, v97, v61);
    sub_100006DAC(&qword_100094168, &type metadata accessor for Date);
    v99 = dispatch thunk of static Equatable.== infix(_:_:)();
    v100 = *(v96 + 8);
    v100(v98, v61);
    sub_100006CAC(v62, &unk_1000938B0, &qword_100074AA0);
    sub_100006CAC(v112, &unk_1000938B0, &qword_100074AA0);
    v100(v102, v61);
    sub_100006CAC(v73, &unk_1000938B0, &qword_100074AA0);
    v45 = v113;
    v48 = v114;
    v47 = v115;
    v52 = v120;
    v79 = &off_100091000;
    if (v99)
    {
      v78 = 3;
    }

    else
    {
LABEL_40:
      v78 = 2;
    }

LABEL_41:
    v54 = [v53 v79[444]];
  }

  v81 = v110;
  (*((swift_isaMask & *v109) + 0x108))(v54);
  if ((*(*(v47 - 1) + 48))(v81, 1, v47) == 1)
  {
    sub_100006CAC(v81, &qword_100093F68, &unk_100074690);
  }

  else
  {
    v82 = sub_1000073A4();
    v84 = v83;
    v85 = sub_100007124(v81);
    if (v84 >> 60 != 15)
    {
      v86 = *(v48 + v115[9]);
      v119[0] = v82;
      v119[1] = v84;
      __chkstk_darwin(v85);
      *(&v101 - 2) = v119;
      v88 = sub_1000079A0(sub_1000615F4, (&v101 - 4), v87);
      v47 = v115;
      [v53 setFastLEConnectionAllowed:v88 & 1];
      sub_100006BB4(v82, v84);
    }
  }

  v89 = (v48 + v47[8]);
  v90 = *v89;
  v91 = v89[1];
  isa = Data._bridgeToObjectiveC()().super.isa;
  [v53 setFastLEConnectionInfoData:isa];

  v93 = *(v48 + v47[7]);
  if ((v93 & 0x8000000000000000) != 0)
  {
    goto LABEL_55;
  }

  if (v93 > 0xFF)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  [v53 setFastLEConnectionInfoVersion:*(v48 + v47[7])];
  v94 = *(v48 + v47[12]);
  if ((v94 & 0x8000000000000000) != 0)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (!HIDWORD(v94))
  {
    [v53 setSupportedServices:?];
    v95 = v53;
    [v45 setControllerInfo:v95];

    *v108 = v45;
    return;
  }

LABEL_58:
  __break(1u);
}

void *sub_100005B8C()
{
  v1 = v0;
  v2 = type metadata accessor for URL.DirectoryHint();
  v44 = *(v2 - 8);
  v3 = *(v44 + 64);
  __chkstk_darwin(v2);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v45 = *(v6 - 8);
  v7 = *(v45 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v42 - v12;
  __chkstk_darwin(v11);
  v15 = &v42 - v14;
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  Transaction.capture()();
  v21 = SystemInfo.deviceFirstUnlocked.getter();
  if (v21)
  {
    v22 = *(v1 + OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_cachedCloudPairedDevicesQueue);
    __chkstk_darwin(v21);
    *(&v42 - 2) = v1;
    sub_10000A45C(&qword_100093F30, &unk_100074678);
    v43 = v22;
    OS_dispatch_queue.sync<A>(execute:)();
    result = aBlock._countAndFlagsBits;
    if (aBlock._countAndFlagsBits)
    {
      return result;
    }

    (*((swift_isaMask & *v1) + 0x148))();
    v24 = sub_1000395BC();
    swift_beginAccess();
    v25 = v45;
    (*(v45 + 16))(v10, v24, v6);
    v26 = URL.path(percentEncoded:)(1);
    v27 = v6;
    v28 = *(v25 + 8);
    v45 = v25 + 8;
    v29 = v10;
    v30 = v27;
    v42 = v27;
    v28(v29);
    aBlock = v26;
    v31 = v44;
    (*(v44 + 104))(v5, enum case for URL.DirectoryHint.isDirectory(_:), v2);
    sub_100038560();
    URL.appending<A>(path:directoryHint:)();
    (*(v31 + 8))(v5, v2);

    (v28)(v13, v30);
    v17 = *(**sub_100041228() + 184);
    v32 = type metadata accessor for CloudPairedDeviceRecord();
    v33 = sub_100002374(&qword_100093950, type metadata accessor for CloudPairedDeviceRecord);

    v20 = (v17)(v15, v32, v33);

    v16 = swift_allocObject();
    *(v16 + 16) = v1;
    *(v16 + 24) = v20;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_100050B50;
    *(v34 + 24) = v16;
    v49 = sub_100018FE4;
    v50 = v34;
    aBlock._countAndFlagsBits = _NSConcreteStackBlock;
    aBlock._object = 1107296256;
    v47 = sub_10001437C;
    v48 = &unk_10008B738;
    v35 = _Block_copy(&aBlock);
    v36 = v1;

    dispatch_sync(v43, v35);
    _Block_release(v35);
    (v28)(v15, v42);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    result = v20;
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  v38 = sub_1000391A8();
  (*(v17 + 16))(v20, v38, v16);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&_mh_execute_header, v39, v40, "Cloud Paired Devices read failed because device is in before first unlock state", v41, 2u);
  }

  (*(v17 + 8))(v20, v16);
  return &_swiftEmptyArrayStorage;
}

uint64_t sub_1000061C8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100006218(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

id sub_10000626C(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
      return 0;
    }

    v11 = *(a1 + 16);
    v12 = *(a1 + 24);
    goto LABEL_8;
  }

  if (v10)
  {
    v11 = a1;
    v12 = a1 >> 32;
LABEL_8:
    if (v11 == v12)
    {
      return 0;
    }

    goto LABEL_9;
  }

  if ((a2 & 0xFF000000000000) == 0)
  {
    return 0;
  }

LABEL_9:
  v13 = objc_allocWithZone(NSKeyedUnarchiver);
  sub_100006218(a1, a2);
  v14 = sub_10000660C();
  sub_1000066CC(a1, a2);
  v15 = [objc_allocWithZone(CKRecord) initWithCoder:v14];
  if (v15)
  {
    v16 = v15;

    return v16;
  }

  v18 = sub_10003915C();
  (*(v5 + 16))(v9, v18, v4);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Unable to extract CKRecord from cloudKitMetadata", v21, 2u);
  }

  else
  {
  }

  (*(v5 + 8))(v9, v4);
  return 0;
}

uint64_t sub_1000065D8()
{
  v1 = *v0;
  sub_100006218(*v0, *(v0 + 8));
  return v1;
}

id sub_10000660C()
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = 0;
  v2 = [v0 initForReadingFromData:isa error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_1000066CC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100006720(id *a1)
{
  v2 = [*a1 encryptedValues];
  swift_getObjectType();
  CKRecordKeyValueSetting.subscript.getter();
  v3 = type metadata accessor for CloudPairedDeviceRecord();
  if ((v14 & 1) != 0 || v13 != *(v1 + v3[7]))
  {
    v13 = *(v1 + v3[7]);
    CKRecordKeyValueSetting.subscript.setter();
  }

  CKRecordKeyValueSetting.subscript.getter();
  v4 = (v1 + v3[8]);
  v6 = *v4;
  v5 = v4[1];
  if (v14 >> 60 != 15)
  {
    if (v5 >> 60 != 15)
    {
      sub_100006218(v6, v5);
      sub_100006218(v6, v5);
      sub_10000FB4C(v13, v14);
      v12 = sub_10003CAF8(v13, v14, v6, v5);
      sub_1000066CC(v6, v5);
      sub_100006BB4(v13, v14);
      sub_100006BB4(v6, v5);
      sub_100006BB4(v13, v14);
      if (v12)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

LABEL_8:
    sub_100006218(v6, v5);
    sub_100006BB4(v13, v14);
    sub_100006BB4(v6, v5);
LABEL_9:
    v13 = v6;
    LOBYTE(v14) = v5;
    sub_100006218(v6, v5);
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_10;
  }

  if (v5 >> 60 != 15)
  {
    goto LABEL_8;
  }

  sub_100006218(v6, v5);
  sub_100006BB4(v13, v14);
LABEL_10:
  sub_10000A45C(&qword_1000938D8, &qword_1000739B8);
  sub_100006BC8();
  CKRecordKeyValueSetting.subscript.getter();
  v7 = v3[9];
  v8 = *(v1 + v7);
  if (!v13 || (v9 = *(v1 + v7), , v10 = sub_10003BB8C(v13, v8), , , (v10 & 1) == 0))
  {
    v13 = v8;

    CKRecordKeyValueSetting.subscript.setter();
  }

  CKRecordKeyValueSetting.subscript.getter();
  if ((v14 & 1) != 0 || v13 != *(v1 + v3[10]))
  {
    v13 = *(v1 + v3[10]);
    CKRecordKeyValueSetting.subscript.setter();
  }

  CKRecordKeyValueSetting.subscript.getter();
  if ((v14 & 1) != 0 || v13 != *(v1 + v3[11]))
  {
    v13 = *(v1 + v3[11]);
    CKRecordKeyValueSetting.subscript.setter();
  }

  CKRecordKeyValueSetting.subscript.getter();
  if ((v14 & 1) != 0 || v13 != *(v1 + v3[12]))
  {
    CKRecordKeyValueSetting.subscript.setter();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_100006BB4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000066CC(a1, a2);
  }

  return a1;
}

unint64_t sub_100006BC8()
{
  result = qword_100093908;
  if (!qword_100093908)
  {
    sub_10000C9B0(&qword_1000938D8, &qword_1000739B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093908);
  }

  return result;
}

uint64_t sub_100006C44(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000A45C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100006CAC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000A45C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100006D0C()
{
  v1 = (v0 + OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_currentDeviceIDSUniqueID);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_100006D64(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100006DAC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_100006DF4(uint64_t a1, uint64_t a2)
{
  v5 = objc_autoreleasePoolPush();
  v6 = (*(a2 + 32))(a1, a2);
  v8 = v7;
  isa = sub_10000626C(v6, v7);
  sub_1000066CC(v6, v8);
  if (!isa)
  {
    isa = sub_100038CD4(v2, a1, a2).super.isa;
  }

  v12 = isa;
  (*(a2 + 64))(&v12, a1, a2);
  v10 = v12;
  objc_autoreleasePoolPop(v5);
  return v10;
}

uint64_t sub_100006EC4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CloudPairedDeviceRecord();
  v20 = *(v3 - 8);
  v4 = *(v20 + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (*((swift_isaMask & *v1) + 0xF0))(v5);
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    result = (*((swift_isaMask & *v1) + 0x128))();
    v13 = result;
    v14 = *(result + 16);
    if (v14)
    {
      v15 = 0;
      while (v15 < *(v13 + 16))
      {
        sub_100004EFC(v13 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v15, v7);
        v16 = &v7[*(v3 + 24)];
        v17 = *v16 == v10 && v11 == *(v16 + 1);
        if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          sub_100007180(v7, a1);
          return (*(v20 + 56))(a1, 0, 1, v3);
        }

        ++v15;
        result = sub_100007124(v7);
        if (v14 == v15)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_11:

      return (*(v20 + 56))(a1, 1, 1, v3);
    }
  }

  else
  {
    v18 = *(v20 + 56);

    return v18(a1, 1, 1, v3);
  }

  return result;
}

uint64_t sub_100007124(uint64_t a1)
{
  v2 = type metadata accessor for CloudPairedDeviceRecord();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100007180(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudPairedDeviceRecord();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000071F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000072CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1000073A4()
{
  v1 = v0;
  v2 = sub_10000A45C(&qword_100093938, &qword_1000739C8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v42[-1] - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v42[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CloudPairedDeviceRecord();
  v12 = (v1 + *(v11 + 24));
  v13 = *v12;
  v14 = v12[1];
  UUID.init(uuidString:)();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100006CAC(v5, &qword_100093938, &qword_1000739C8);
    return 0;
  }

  (*(v7 + 32))(v10, v5, v6);
  v16 = sub_100007728();
  v46 = &type metadata for Data;
  v47 = &protocol witness table for Data;
  v44 = v16;
  v45 = v17;
  v18 = sub_1000078C8(&v44, &type metadata for Data);
  v19 = *v18;
  v20 = v18[1];
  v21 = v20 >> 62;
  if ((v20 >> 62) > 1)
  {
    if (v21 != 2)
    {
      memset(v42, 0, 14);
      v23 = v42;
      v22 = v42;
      goto LABEL_25;
    }

    v24 = *(v19 + 16);
    v25 = *(v19 + 24);
    v26 = __DataStorage._bytes.getter();
    if (v26)
    {
      v27 = __DataStorage._offset.getter();
      v19 = v24 - v27;
      if (__OFSUB__(v24, v27))
      {
        goto LABEL_28;
      }

      v26 += v19;
    }

    v28 = __OFSUB__(v25, v24);
    v29 = v25 - v24;
    if (!v28)
    {
      goto LABEL_17;
    }

    __break(1u);
LABEL_13:
    v30 = v19;
    v31 = v19 >> 32;
    v29 = v31 - v30;
    if (v31 >= v30)
    {
      v26 = __DataStorage._bytes.getter();
      if (!v26)
      {
LABEL_17:
        v33 = __DataStorage._length.getter();
        if (v33 >= v29)
        {
          v34 = v29;
        }

        else
        {
          v34 = v33;
        }

        v35 = (v34 + v26);
        if (v26)
        {
          v22 = v35;
        }

        else
        {
          v22 = 0;
        }

        v23 = v26;
        goto LABEL_25;
      }

      v32 = __DataStorage._offset.getter();
      if (!__OFSUB__(v30, v32))
      {
        v26 += v30 - v32;
        goto LABEL_17;
      }

LABEL_29:
      __break(1u);
    }

    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v21)
  {
    goto LABEL_13;
  }

  v42[0] = *v18;
  LOWORD(v42[1]) = v20;
  BYTE2(v42[1]) = BYTE2(v20);
  BYTE3(v42[1]) = BYTE3(v20);
  BYTE4(v42[1]) = BYTE4(v20);
  BYTE5(v42[1]) = BYTE5(v20);
  v22 = v42 + BYTE6(v20);
  v23 = v42;
LABEL_25:
  sub_10000790C(v23, v22, v43);
  v36 = v43[0];
  v37 = v43[1];
  sub_1000036EC(&v44);
  v44 = v36;
  v45 = v37;
  v38 = (v1 + *(v11 + 32));
  v39 = *v38;
  v40 = v38[1];
  Data.append(_:)();
  (*(v7 + 8))(v10, v6);
  return v44;
}

uint64_t sub_100007728()
{
  v2[0] = UUID.uuid.getter();
  v2[1] = v0;
  return sub_10000780C(v2, &v3);
}

uint64_t sub_100007788(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_10000780C(uint64_t a1, uint64_t a2)
{
  v8[3] = &type metadata for UnsafeRawBufferPointer;
  v8[4] = &protocol witness table for UnsafeRawBufferPointer;
  v8[0] = a1;
  v8[1] = a2;
  v2 = sub_1000078C8(v8, &type metadata for UnsafeRawBufferPointer);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_10000FB78(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_10000FC30(v3, v4);
    }

    else
    {
      v6 = sub_100007788(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  sub_1000036EC(v8);
  return v6;
}

void *sub_1000078C8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

_BYTE *sub_10000790C@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_10000FB78(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_10000FC30(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_100007788(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_1000079A0(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = v7;
      v9 = *v6++;
      v12 = v9;
      sub_100006218(v9, *(&v9 + 1));
      v10 = a1(&v12);
      sub_1000066CC(v12, *(&v12 + 1));
      LOBYTE(v4) = (v3 != 0) | v10;
      if ((v3 != 0) | v10 & 1)
      {
        break;
      }

      v7 = v8 - 1;
    }

    while (v8);
  }

  return v4 & 1;
}

uint64_t sub_100007AA8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_100007C38(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1000066CC(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_100007CF0(v13, a3, a4, &v12);
  v10 = v4;
  sub_1000066CC(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_100007C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  __DataStorage._length.getter();
  sub_100007CF0(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_100007CF0@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = __DataStorage._length.getter();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = __DataStorage._length.getter();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_100007F24()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100007F5C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100007F9C()
{
  v1 = (sub_10000A45C(&qword_1000931C0, &unk_100072C70) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  sub_1000036EC((v0 + v3));
  v5 = v1[9];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = *(v0 + v3 + v1[10] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000080B0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000080E8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100008120()
{
  v1 = (sub_10000A45C(&qword_100092FA8, &unk_100075380) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  sub_1000036EC((v0 + v3));
  v6 = v1[9];
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = *(v0 + v3 + v1[10] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100008234()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000827C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_1000082C0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1000082DC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100008314()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100008364(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100008374()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000083B8()
{
  v1 = (sub_10000A45C(&qword_100093F40, &qword_1000730E0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  sub_1000036EC((v0 + v3));
  v6 = v1[9];
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = *(v0 + v3 + v1[10] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000084CC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000853C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008590()
{
  v1 = *(v0 + 16);

  sub_100036B6C(*(v0 + 24), *(v0 + 32));
  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 58, 7);
}

uint64_t sub_10000860C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008678()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000086C0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000086F8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

void sub_100008738(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_100008744()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  return _swift_deallocObject(v0, 57, 7);
}

uint64_t sub_1000087B0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100008800()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100008840()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008878()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000088D8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100008910()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100008A48()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100008A88()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100008AE8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_100008B14()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = *(v7 + 64) + v9;
  v12 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 1, v10 | 7);
}

uint64_t sub_100008C70()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100008CF8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008D30()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100008D70()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v6 = *(v1 - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + *(v3 + 64) + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v4 | v7;
  v11 = *(v0 + 32);

  (*(v3 + 8))(v0 + v5, v2);
  (*(v6 + 8))(v0 + v8, v1);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

uint64_t sub_100008EB8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  v12 = *(v0 + v5);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_100009010()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100009048()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000908C()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for Subscription() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(*v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v4;
  (*(*(v1 - 8) + 8))(v0 + v4, v1);
  v7 = v2[9];
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);
  v9 = *(v6 + v2[10] + 8);

  v10 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_1000091CC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

_DWORD *sub_10000921C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_100009238()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100009270()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000092C0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000092F8()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100009348()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100009438()
{
  v1 = (sub_10000A45C(&qword_100092E80, qword_100072CF0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  sub_1000036EC((v0 + v3));
  v6 = v1[9];
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = *(v0 + v3 + v1[10] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000954C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000095B8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_10000963C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100009678()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000096C8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100009704()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t SystemVersionNumber.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

void __swiftcall SystemVersionNumber.init(rawValue:)(bluetoothuserd::SystemVersionNumber_optional *__return_ptr retstr, Swift::String rawValue)
{
  sub_100009CF0(rawValue._countAndFlagsBits, rawValue._object, v5);
  v3 = v5[3];
  *&retstr->value.baseLetter._object = v5[2];
  *&retstr->value.childType.is_nil = v3;
  retstr->value.suffix = v5[4];
  v4 = v5[1];
  retstr->value.rawValue = v5[0];
  *&retstr->value.baseNumber = v4;
}

void __swiftcall SystemVersionNumber.init(stringLiteral:)(bluetoothuserd::SystemVersionNumber *__return_ptr retstr, Swift::String stringLiteral)
{
  object = stringLiteral._object;
  countAndFlagsBits = stringLiteral._countAndFlagsBits;

  sub_100009CF0(countAndFlagsBits, object, &v9);
  v5 = v10;
  if (v10)
  {
    v6 = v9;

    retstr->rawValue._countAndFlagsBits = v6;
    retstr->rawValue._object = v5;
    v7 = v12;
    *&retstr->baseNumber = v11;
    *&retstr->baseLetter._object = v7;
    v8 = v14;
    *&retstr->childType.is_nil = v13;
    retstr->suffix = v8;
  }

  else
  {
    __break(1u);
  }
}

__n128 sub_100009840@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100009CF0(*a1, a1[1], v5);
  v3 = v5[3];
  *(a2 + 32) = v5[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v5[4];
  result = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_100009890@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_10000994C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];

  result = sub_100009CF0(v4, v3, &v10);
  v6 = v11;
  if (v11)
  {
    v7 = v10;

    *a2 = v7;
    *(a2 + 8) = v6;
    v8 = v13;
    *(a2 + 16) = v12;
    *(a2 + 32) = v8;
    v9 = v15;
    *(a2 + 48) = v14;
    *(a2 + 64) = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000099C8(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return _s14bluetoothuserd19SystemVersionNumberV1loiySbAC_ACtFZ_0(v8, v9) & 1;
}

BOOL sub_100009A24(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v8[4] = a1[4];
  v3 = a1[1];
  v8[0] = *a1;
  v8[1] = v3;
  v4 = a2[3];
  v7[2] = a2[2];
  v7[3] = v4;
  v7[4] = a2[4];
  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  return (_s14bluetoothuserd19SystemVersionNumberV1loiySbAC_ACtFZ_0(v7, v8) & 1) == 0;
}

BOOL sub_100009A84(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return (_s14bluetoothuserd19SystemVersionNumberV1loiySbAC_ACtFZ_0(v8, v9) & 1) == 0;
}

uint64_t sub_100009AE4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v8[4] = a1[4];
  v3 = a1[1];
  v8[0] = *a1;
  v8[1] = v3;
  v4 = a2[3];
  v7[2] = a2[2];
  v7[3] = v4;
  v7[4] = a2[4];
  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  return _s14bluetoothuserd19SystemVersionNumberV1loiySbAC_ACtFZ_0(v7, v8) & 1;
}

uint64_t sub_100009B40(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t SystemVersionNumber.description.getter()
{
  if (*(v0 + 48))
  {
    v1 = 0;
    v2 = 0xE000000000000000;
  }

  else
  {
    v14 = *(v0 + 40);
    v1 = dispatch thunk of CustomStringConvertible.description.getter();
    v2 = v3;
  }

  if (*(v0 + 72))
  {
    v4 = *(v0 + 64);
    Character.write<A>(to:)();
  }

  v12 = *(v0 + 16);
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  Character.write<A>(to:)();
  v8._countAndFlagsBits = v1;
  v8._object = v2;
  String.append(_:)(v8);

  v13 = *(v0 + 56);
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  String.append(_:)(v10);

  return 0;
}

uint64_t sub_100009CF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v43 = a3;
  v5 = type metadata accessor for NSScanner.NumberRepresentation();
  v6 = *(v5 - 8);
  v7 = v6[8];
  __chkstk_darwin(v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(NSScanner);
  v41 = a1;
  v42 = a2;
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 initWithString:v11];

  v13 = enum case for NSScanner.NumberRepresentation.decimal(_:);
  v14 = v6[13];
  v14(v9, enum case for NSScanner.NumberRepresentation.decimal(_:), v5);
  v40 = NSScanner.scanInt(representation:)();
  v16 = v15;
  v17 = v6[1];
  v17(v9, v5);
  if (v16)
  {

LABEL_14:

    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    object = 0;
    goto LABEL_15;
  }

  v18 = NSScanner.scanCharacter()();
  object = v18.value._object;
  if (v18.value._object)
  {
    countAndFlagsBits = v18.value._countAndFlagsBits;
    v14(v9, v13, v5);
    v20 = NSScanner.scanInt(representation:)();
    v22 = v21;
    v17(v9, v5);
    if (v22)
    {
    }

    else
    {
      v28 = v20 / 0x3E8uLL;
      if (v20 < 1000)
      {
        v28 = 0;
      }

      v38 = v28;
      if (v20 >= 1000)
      {
        v29 = v20 % 0x3E8uLL;
      }

      else
      {
        v29 = v20;
      }

      v55 = v20 < 1000;
      v25 = v42;

      v30 = NSScanner.scanCharacter()();
      v31 = v30.value._countAndFlagsBits;
      v32 = v30.value._object;
      v24 = v41;
      NSScanner.currentIndex.getter();
      v33 = String.distance(from:to:)();

      if (!v33)
      {
        v45[0] = v24;
        v45[1] = v25;
        v26 = v40;
        v45[2] = v40;
        v45[3] = countAndFlagsBits;
        v34 = v38;
        v45[4] = v18.value._object;
        v45[5] = v38;
        LOBYTE(v46) = v55;
        *(&v46 + 1) = *v54;
        HIDWORD(v46) = *&v54[3];
        v47 = v29;
        v48 = v30;
        v35 = v46;
        v49[0] = v24;
        v49[1] = v25;
        v49[2] = v40;
        v49[3] = countAndFlagsBits;
        v49[4] = v18.value._object;
        v49[5] = v38;
        v50 = v55;
        *&v51[3] = *&v54[3];
        *v51 = *v54;
        v52 = v29;
        v53 = v30;
        sub_10000A4A4(v45, &v44);
        result = sub_10000A4DC(v49);
        v27 = countAndFlagsBits;
        goto LABEL_16;
      }
    }

    goto LABEL_14;
  }

  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
LABEL_15:
  v34 = 0;
  v35 = 0;
  v29 = 0;
  v31 = 0;
  v32 = 0;
LABEL_16:
  v36 = v43;
  *v43 = v24;
  v36[1] = v25;
  v36[2] = v26;
  v36[3] = v27;
  v36[4] = object;
  v36[5] = v34;
  v36[6] = v35;
  v36[7] = v29;
  v36[8] = v31;
  v36[9] = v32;
  return result;
}

uint64_t _s14bluetoothuserd19SystemVersionNumberV1loiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v2 < v3)
  {
    goto LABEL_2;
  }

  if (v3 < v2)
  {
    v4 = 0;
    return v4 & 1;
  }

  if (*(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32))
  {
    goto LABEL_10;
  }

  v4 = 1;
  v6 = a1;
  v7 = *(a1 + 24);
  v8 = a2;
  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  a2 = v8;
  v10 = v9;
  a1 = v6;
  if ((v10 & 1) == 0)
  {
LABEL_10:
    if (*(a1 + 56) < *(a2 + 56))
    {
LABEL_2:
      v4 = 1;
      return v4 & 1;
    }

    v18 = *(a1 + 64);
    if (*(&v18 + 1))
    {
      v11 = v18;
    }

    else
    {
      v11 = 0;
    }

    if (*(&v18 + 1))
    {
      v12 = *(&v18 + 1);
    }

    else
    {
      v12 = 0xE000000000000000;
    }

    v17 = *(a2 + 64);
    if (*(&v17 + 1))
    {
      v13 = v17;
    }

    else
    {
      v13 = 0;
    }

    if (*(&v17 + 1))
    {
      v14 = *(&v17 + 1);
    }

    else
    {
      v14 = 0xE000000000000000;
    }

    if (v11 == v13 && v12 == v14)
    {
      v4 = 0;
    }

    else
    {
      v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    sub_10000A3EC(&v18, v16);
    sub_10000A3EC(&v17, v16);
  }

  return v4 & 1;
}

unint64_t sub_10000A1A8()
{
  result = qword_100092B60;
  if (!qword_100092B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100092B60);
  }

  return result;
}

unint64_t sub_10000A20C()
{
  result = qword_100092B68;
  if (!qword_100092B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100092B68);
  }

  return result;
}

unint64_t sub_10000A27C()
{
  result = qword_100092B70;
  if (!qword_100092B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100092B70);
  }

  return result;
}

__n128 sub_10000A2D0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_10000A2EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000A334(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10000A398()
{
  result = qword_100092B78;
  if (!qword_100092B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100092B78);
  }

  return result;
}

uint64_t sub_10000A3EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A45C(&qword_100092B80, &unk_100072B78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000A45C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000A510()
{
  type metadata accessor for DarwinNotificationManager();
  result = swift_allocObject();
  *(result + 16) = &_swiftEmptyArrayStorage;
  static DarwinNotificationManager.shared = result;
  return result;
}

uint64_t *DarwinNotificationManager.shared.unsafeMutableAddressor()
{
  if (qword_100095210 != -1)
  {
    swift_once();
  }

  return &static DarwinNotificationManager.shared;
}

uint64_t static DarwinNotificationManager.shared.getter()
{
  if (qword_100095210 != -1)
  {
    swift_once();
  }
}

uint64_t DarwinNotificationManager.registerHelper(helper:)()
{
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v2 = *((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

uint64_t DarwinNotificationManager.unregisterHelper(helper:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = v1[2];
  v13 = &_swiftEmptyArrayStorage;
  if (v3 >> 62)
  {
LABEL_19:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v12 = v1;
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v1 = v12;
          v9 = v13;
          goto LABEL_17;
        }
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v6 = *(v3 + 8 * v5 + 32);

        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_14;
        }
      }

      if (v6 == a1)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v8 = *(v13 + 2);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v1 = &v13;
        specialized ContiguousArray._endMutation()();
      }

      ++v5;
      if (v7 == v4)
      {
        goto LABEL_15;
      }
    }
  }

  v9 = &_swiftEmptyArrayStorage;
LABEL_17:

  v10 = v1[2];
  v1[2] = v9;
}

Swift::Void __swiftcall DarwinNotificationManager.setUp()()
{
  v1 = v0;
  sub_10000A8F8();
  v2 = static OS_dispatch_queue.main.getter();
  v4[4] = sub_10000AC1C;
  v4[5] = v1;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_10000AC24;
  v4[3] = &unk_100089A48;
  v3 = _Block_copy(v4);

  xpc_set_event_stream_handler("com.apple.notifyd.matching", v2, v3);
  _Block_release(v3);
}

unint64_t sub_10000A8F8()
{
  result = qword_100092CC0;
  if (!qword_100092CC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100092CC0);
  }

  return result;
}

uint64_t sub_10000A944(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = xpc_dictionary_get_string(a1, _xpc_event_key_name);
  if (result)
  {
    v10 = String.init(cString:)();
    v12 = v11;
    v13 = sub_100039094();
    (*(v5 + 16))(v8, v13, v4);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_1000034B8(v10, v12, &v24);
      _os_log_impl(&_mh_execute_header, v14, v15, "On xpc event stream, com.apple.notifyd.matching, notification %s", v16, 0xCu);
      sub_1000036EC(v17);
    }

    (*(v5 + 8))(v8, v4);
    result = swift_beginAccess();
    v18 = *(a2 + 16);
    if (v18 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v19 = result;
      if (result)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19)
      {
LABEL_6:
        if (v19 < 1)
        {
          __break(1u);
          return result;
        }

        v20 = 0;
        do
        {
          if ((v18 & 0xC000000000000001) != 0)
          {
            v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v21 = *(v18 + 8 * v20 + 32);
          }

          ++v20;
          v22 = String._bridgeToObjectiveC()();
          (*(*v21 + 120))();
        }

        while (v19 != v20);
      }
    }
  }

  return result;
}

uint64_t sub_10000AC24(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t DarwinNotificationManager.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t DarwinNotificationManager.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return _swift_deallocClassInstance(v0, 24, 7);
}

char *sub_10000AD00(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000A45C(&unk_100092E10, &unk_100072BD0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

id sub_10000AE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR____TtC14bluetoothuserd27KeyValueStoreCustomObserver_defaults;
  *&v4[v9] = [objc_opt_self() standardUserDefaults];
  v10 = OBJC_IVAR____TtC14bluetoothuserd27KeyValueStoreCustomObserver_cloudDefaults;
  v11 = NSUbiquitousKeyValueStore.bluetoothCloudDefaults.unsafeMutableAddressor();
  swift_beginAccess();
  v12 = *v11;
  *&v4[v10] = v12;
  *&v4[OBJC_IVAR____TtC14bluetoothuserd27KeyValueStoreCustomObserver_rootPrefsChangeToken] = -1;
  *&v4[OBJC_IVAR____TtC14bluetoothuserd27KeyValueStoreCustomObserver_cloudKVSChangedNotification] = 0;
  *&v4[OBJC_IVAR____TtC14bluetoothuserd27KeyValueStoreCustomObserver_dispatchQueue] = a1;
  *&v4[OBJC_IVAR____TtC14bluetoothuserd27KeyValueStoreCustomObserver_monitoredUserDefaultKeys] = a2;
  v13 = &v4[OBJC_IVAR____TtC14bluetoothuserd27KeyValueStoreCustomObserver_notify];
  *v13 = a3;
  *(v13 + 1) = a4;
  v16.receiver = v4;
  v16.super_class = type metadata accessor for KeyValueStoreCustomObserver();
  v14 = v12;
  return objc_msgSendSuper2(&v16, "init");
}

id sub_10000AF78()
{
  (*((swift_isaMask & *v0) + 0xE0))();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for KeyValueStoreCustomObserver();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000B0F0()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100039094();
  (*(v3 + 16))(v6, v7, v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Start KeyValueStoreCustomObserver", v10, 2u);
  }

  v11 = (*(v3 + 8))(v6, v2);
  v12 = *(v1 + OBJC_IVAR____TtC14bluetoothuserd27KeyValueStoreCustomObserver_monitoredUserDefaultKeys);
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = *(v1 + OBJC_IVAR____TtC14bluetoothuserd27KeyValueStoreCustomObserver_defaults);
    v15 = *(v1 + OBJC_IVAR____TtC14bluetoothuserd27KeyValueStoreCustomObserver_cloudDefaults);
    v16 = (v12 + 40);
    do
    {
      v17 = *(v16 - 1);
      v18 = *v16;

      v19 = String._bridgeToObjectiveC()();
      [v14 addObserver:v1 forKeyPath:v19 options:0 context:0];

      v20 = String._bridgeToObjectiveC()();

      [v15 addObserver:v1 forKeyPath:v20 options:0 context:0];

      v16 += 2;
      --v13;
    }

    while (v13);
  }

  return (*((swift_isaMask & *v1) + 0x110))(v11);
}

uint64_t sub_10000B348()
{
  v1 = *(v0 + OBJC_IVAR____TtC14bluetoothuserd27KeyValueStoreCustomObserver_monitoredUserDefaultKeys);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14bluetoothuserd27KeyValueStoreCustomObserver_defaults);
    v4 = *(v0 + OBJC_IVAR____TtC14bluetoothuserd27KeyValueStoreCustomObserver_cloudDefaults);
    v5 = (v1 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;

      v8 = String._bridgeToObjectiveC()();
      [v3 removeObserver:v0 forKeyPath:v8 context:0];

      v9 = String._bridgeToObjectiveC()();

      [v4 removeObserver:v0 forKeyPath:v9 context:0];

      v5 += 2;
      --v2;
    }

    while (v2);
  }

  v10 = [objc_opt_self() defaultCenter];
  [v10 removeObserver:v0];

  v11 = OBJC_IVAR____TtC14bluetoothuserd27KeyValueStoreCustomObserver_rootPrefsChangeToken;
  swift_beginAccess();
  return notify_cancel(*(v0 + v11));
}

void sub_10000B5C0()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = v2[8];
  v4 = __chkstk_darwin(v1);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v37 - v7;
  v39 = v0;
  v9 = *&v0[OBJC_IVAR____TtC14bluetoothuserd27KeyValueStoreCustomObserver_cloudDefaults];
  LODWORD(v38) = [v9 synchronize];
  v10 = sub_100039280();
  v11 = v2[2];
  v41 = v1;
  v11(v8, v10, v1);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  v14 = os_log_type_enabled(v12, v13);
  v40 = v6;
  if (v14)
  {
    v15 = swift_slowAlloc();
    *v15 = 67109120;
    *(v15 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v12, v13, "Cloud KVS synchronized: %{BOOL}d", v15, 8u);
    v6 = v40;
  }

  v16 = v2[1];
  v17 = v41;
  v16(v8, v41);
  v11(v6, v10, v17);
  v18 = v39;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v38 = v16;
    v22 = v21;
    v23 = swift_slowAlloc();
    v42 = v23;
    *v22 = 136315138;
    v24 = [v9 dictionaryRepresentation];
    v39 = v9;
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = Dictionary.description.getter();
    v27 = v26;

    v28 = sub_1000034B8(v25, v27, &v42);
    v9 = v39;

    *(v22 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v19, v20, "Cloud KVS snapshot: %s", v22, 0xCu);
    sub_1000036EC(v23);

    v29 = v38(v40, v41);
  }

  else
  {

    v29 = (v16)(v6, v41);
  }

  (*((swift_isaMask & *v18) + 0xF0))(v29);
  v30 = objc_opt_self();
  v31 = [v30 defaultCenter];
  [v31 addObserver:v18 selector:"handleUbiquitousKeyValueStoreChangeWithNotification:" name:NSUbiquitousKeyValueStoreDidChangeExternallyNotification object:v9];

  v32 = [v30 defaultCenter];
  v33 = sub_100012F80();
  v34 = *v33;
  v35 = v33[1];

  v36 = String._bridgeToObjectiveC()();

  [v32 addObserver:v18 selector:"handleUbiquitousKeyValueStoreChangeLocallyWithNotification:" name:v36 object:0];
}

void sub_10000BA28()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  [v2 removeObserver:v0 name:NSUbiquitousKeyValueStoreDidChangeExternallyNotification object:*(v0 + OBJC_IVAR____TtC14bluetoothuserd27KeyValueStoreCustomObserver_cloudDefaults)];

  v3 = [v1 defaultCenter];
  v4 = sub_100012F80();
  v5 = *v4;
  v6 = v4[1];

  v7 = String._bridgeToObjectiveC()();

  [v3 removeObserver:v0 name:v7 object:0];
}

uint64_t sub_10000BB20()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = Notification.userInfo.getter();
  if (!result)
  {
    return result;
  }

  v8 = result;
  v9 = sub_100039280();
  (*(v3 + 16))(v6, v9, v2);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v26 = v1;
    v13 = v12;
    v14 = swift_slowAlloc();
    v29[0] = v14;
    *v13 = 136315138;
    v15 = Dictionary.description.getter();
    v17 = sub_1000034B8(v15, v16, v29);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, "Cloud KVS Notification: %s", v13, 0xCu);
    sub_1000036EC(v14);

    v1 = v26;
  }

  (*(v3 + 8))(v6, v2);
  *&v30[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v30[0] + 1) = v18;

  result = AnyHashable.init<A>(_:)();
  if (!*(v8 + 16))
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = sub_10000C7B0(v29);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  sub_100003690(*(v8 + 56) + 32 * v19, v28);
  sub_10000C7F4(v29);
  sub_10000C848(v28, v30);
  swift_dynamicCast();
  if (v27 > 3 || v27 == 2)
  {
  }

  *&v28[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v28[0] + 1) = v22;
  AnyHashable.init<A>(_:)();
  if (*(v8 + 16) && (v23 = sub_10000C7B0(v29), (v24 & 1) != 0))
  {
    sub_100003690(*(v8 + 56) + 32 * v23, v30);
    sub_10000C7F4(v29);

    sub_10000A45C(&qword_100094180, &qword_100074290);
    result = swift_dynamicCast();
    if (result)
    {
      (*((swift_isaMask & *v1) + 0x108))(0, *&v28[0]);
    }
  }

  else
  {

    return sub_10000C7F4(v29);
  }

  return result;
}

uint64_t sub_10000BF08()
{
  v1 = v0;
  v2 = Notification.userInfo.getter();
  if (v2)
  {
    v3 = v2;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    AnyHashable.init<A>(_:)();
    if (*(v3 + 16) && (v4 = sub_10000C7B0(v8), (v5 & 1) != 0))
    {
      sub_100003690(*(v3 + 56) + 32 * v4, v9);
      sub_10000C7F4(v8);

      sub_10000A45C(&qword_100094180, &qword_100074290);
      if (swift_dynamicCast())
      {
        (*((swift_isaMask & *v1) + 0x108))(0, v7);
      }
    }

    else
    {

      sub_10000C7F4(v8);
    }
  }

  return (*((swift_isaMask & *v1) + 0x108))(0, &_swiftEmptyArrayStorage);
}

uint64_t sub_10000C0B0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = type metadata accessor for Notification();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a1;
  a4(v10);

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_10000C1A0(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[0] = *(v3 + OBJC_IVAR____TtC14bluetoothuserd27KeyValueStoreCustomObserver_dispatchQueue);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = a1;
  *(v17 + 32) = a2;
  aBlock[4] = sub_10000C858;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002410;
  aBlock[3] = &unk_100089AC0;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v20[1] = &_swiftEmptyArrayStorage;
  sub_10000C8F4();
  sub_10000A45C(&unk_1000931F0, &unk_100072C10);
  sub_10000C94C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v7 + 8))(v10, v6);
  (*(v12 + 8))(v15, v11);
}

void sub_10000C464()
{
  v1 = *(v0 + OBJC_IVAR____TtC14bluetoothuserd27KeyValueStoreCustomObserver_dispatchQueue);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5[4] = sub_10000C9F8;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_10000C72C;
  v5[3] = &unk_100089AE8;
  v3 = _Block_copy(v5);

  v4 = OBJC_IVAR____TtC14bluetoothuserd27KeyValueStoreCustomObserver_rootPrefsChangeToken;
  swift_beginAccess();
  notify_register_dispatch("com.apple.bluetooth.prefsChanged", (v0 + v4), v1, v3);
  swift_endAccess();
  _Block_release(v3);
}

uint64_t sub_10000C570()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100039280();
  (*(v1 + 16))(v4, v5, v0);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Root KVS Notification", v8, 2u);
  }

  (*(v1 + 8))(v4, v0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(result + OBJC_IVAR____TtC14bluetoothuserd27KeyValueStoreCustomObserver_notify);
    v11 = *(result + OBJC_IVAR____TtC14bluetoothuserd27KeyValueStoreCustomObserver_notify + 8);
    v12 = result;

    v10(1, &_swiftEmptyArrayStorage);
  }

  return result;
}

uint64_t sub_10000C72C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

unint64_t sub_10000C7B0(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10000CA68(a1, v4);
}

_OWORD *sub_10000C848(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000C858()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(result + OBJC_IVAR____TtC14bluetoothuserd27KeyValueStoreCustomObserver_notify);
    v5 = *(result + OBJC_IVAR____TtC14bluetoothuserd27KeyValueStoreCustomObserver_notify + 8);
    v7 = result;

    v6(v2, v3);
  }

  return result;
}

unint64_t sub_10000C8F4()
{
  result = qword_100092D20;
  if (!qword_100092D20)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100092D20);
  }

  return result;
}

unint64_t sub_10000C94C()
{
  result = qword_100092D30;
  if (!qword_100092D30)
  {
    sub_10000C9B0(&unk_1000931F0, &unk_100072C10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100092D30);
  }

  return result;
}

uint64_t sub_10000C9B0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000CA00(uint64_t a1)
{
  v2 = sub_10000A45C(&qword_100092CB8, &qword_100072C40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000CA68(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10000CB30(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10000C7F4(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

id sub_10000CB94()
{
  result = [objc_allocWithZone(type metadata accessor for ApplePushServiceManager()) init];
  qword_1000989A8 = result;
  return result;
}

uint64_t *sub_10000CBC4()
{
  if (qword_100095218 != -1)
  {
    swift_once();
  }

  return &qword_1000989A8;
}

uint64_t sub_10000CC70()
{
  v1 = OBJC_IVAR____TtC14bluetoothuserd23ApplePushServiceManager_subscriptions;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_10000CCB8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14bluetoothuserd23ApplePushServiceManager_subscriptions;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_10000CD74()
{
  v1 = (v0 + OBJC_IVAR____TtC14bluetoothuserd23ApplePushServiceManager_pushEnvironment);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_10000CDCC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC14bluetoothuserd23ApplePushServiceManager_pushEnvironment);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_10000CE2C()
{
  v1 = (v0 + OBJC_IVAR____TtC14bluetoothuserd23ApplePushServiceManager____lazy_storage____pushTopic);
  if (*(v0 + OBJC_IVAR____TtC14bluetoothuserd23ApplePushServiceManager____lazy_storage____pushTopic + 8))
  {
    v2 = *v1;
    v3 = *(v0 + OBJC_IVAR____TtC14bluetoothuserd23ApplePushServiceManager____lazy_storage____pushTopic + 8);
LABEL_5:

    return v2;
  }

  v4 = [objc_opt_self() mainBundle];
  v5 = [v4 bundleIdentifier];

  if (v5)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9._countAndFlagsBits = v6;
    v9._object = v8;
    String.append(_:)(v9);

    v2 = 0xD00000000000001BLL;
    v10 = v1[1];
    *v1 = 0xD00000000000001BLL;
    v1[1] = 0x8000000100079A20;

    goto LABEL_5;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id sub_10000CF80()
{
  v1 = v0;
  v17 = type metadata accessor for OS_dispatch_queue.Attributes();
  v2 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v3 = type metadata accessor for DispatchQoS();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v20 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC14bluetoothuserd23ApplePushServiceManager_pushServiceQueue;
  sub_10000A8F8();
  v16[1] = "cloudKVSChangedNotification";
  v10 = *(v6 + 104);
  v19 = v6 + 104;
  v21 = v10;
  v10(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v5);
  static DispatchQoS.unspecified.getter();
  v23 = &_swiftEmptyArrayStorage;
  v16[0] = sub_100002254(&qword_1000931A0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10000A45C(&unk_100092CD0, &unk_100072C60);
  sub_10000FA34(&qword_1000931B0, &unk_100092CD0, &unk_100072C60);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *&v1[v18] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v1[OBJC_IVAR____TtC14bluetoothuserd23ApplePushServiceManager_subscriptions] = &_swiftEmptyArrayStorage;
  v18 = OBJC_IVAR____TtC14bluetoothuserd23ApplePushServiceManager_subscriptionQueue;
  static DispatchQoS.unspecified.getter();
  v23 = &_swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v21(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v20);
  *&v1[v18] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v11 = &v1[OBJC_IVAR____TtC14bluetoothuserd23ApplePushServiceManager_pushEnvironment];
  *v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11[1] = v12;
  *&v1[OBJC_IVAR____TtC14bluetoothuserd23ApplePushServiceManager_apsConnection] = 0;
  v13 = &v1[OBJC_IVAR____TtC14bluetoothuserd23ApplePushServiceManager____lazy_storage____pushTopic];
  v14 = type metadata accessor for ApplePushServiceManager();
  *v13 = 0;
  *(v13 + 1) = 0;
  v22.receiver = v1;
  v22.super_class = v14;
  return objc_msgSendSuper2(&v22, "init");
}

void sub_10000D360()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000D860();
  v7 = sub_1000390D0();
  (*(v3 + 16))(v6, v7, v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Enable pushes", v10, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v11 = OBJC_IVAR____TtC14bluetoothuserd23ApplePushServiceManager_apsConnection;
  v12 = *(v1 + OBJC_IVAR____TtC14bluetoothuserd23ApplePushServiceManager_apsConnection);
  if (v12)
  {
    sub_10000A45C(&unk_100092D10, &unk_100072C00);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100072BE0;
    v14 = v12;
    *(v13 + 32) = sub_10000CE2C();
    *(v13 + 40) = v15;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v14 _setEnabledTopics:isa];

    v17 = *(v1 + v11);
    if (v17)
    {
      v18 = v17;
      v19 = Array._bridgeToObjectiveC()().super.isa;
      [v18 _setIgnoredTopics:v19];

      v20 = *(v1 + v11);
      if (v20)
      {
        v21 = v20;
        sub_10000CE2C();
        v22 = String._bridgeToObjectiveC()();

        [v21 requestTokenForTopic:v22 identifier:0];
      }
    }
  }
}

void sub_10000D5E0()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000D860();
  v7 = sub_1000390D0();
  (*(v3 + 16))(v6, v7, v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Disable pushes", v10, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v11 = OBJC_IVAR____TtC14bluetoothuserd23ApplePushServiceManager_apsConnection;
  v12 = *(v1 + OBJC_IVAR____TtC14bluetoothuserd23ApplePushServiceManager_apsConnection);
  if (v12)
  {
    v13 = v12;
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v13 _setEnabledTopics:isa];

    v15 = *(v1 + v11);
    if (v15)
    {
      sub_10000A45C(&unk_100092D10, &unk_100072C00);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_100072BE0;
      v17 = v15;
      *(v16 + 32) = sub_10000CE2C();
      *(v16 + 40) = v18;
      v19 = Array._bridgeToObjectiveC()().super.isa;

      [v17 _setIgnoredTopics:v19];

      v20 = *(v1 + v11);
      if (v20)
      {
        v21 = v20;
        sub_10000CE2C();
        v22 = String._bridgeToObjectiveC()();

        [v21 invalidateTokenForTopic:v22 identifier:0];
      }
    }
  }
}

void sub_10000D860()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC14bluetoothuserd23ApplePushServiceManager_apsConnection;
  if (!*(v1 + OBJC_IVAR____TtC14bluetoothuserd23ApplePushServiceManager_apsConnection))
  {
    v8 = sub_1000390D0();
    (*(v3 + 16))(v6, v8, v2);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Set up APS connection", v11, 2u);
    }

    v12 = (*(v3 + 8))(v6, v2);
    (*((swift_isaMask & *v1) + 0xB0))(v12);
    v13 = *(v1 + OBJC_IVAR____TtC14bluetoothuserd23ApplePushServiceManager_pushServiceQueue);
    v14 = objc_allocWithZone(APSConnection);
    v15 = v13;
    v16 = String._bridgeToObjectiveC()();

    v17 = String._bridgeToObjectiveC()();
    v18 = [v14 initWithEnvironmentName:v16 namedDelegatePort:v17 queue:v15];

    v19 = *(v1 + v7);
    *(v1 + v7) = v18;
    v20 = v18;

    if (v20)
    {
      [v20 setDelegate:v1];
    }
  }
}

id sub_10000DD4C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ApplePushServiceManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000DE14()
{
  v1 = *(v0 + OBJC_IVAR____TtC14bluetoothuserd23ApplePushServiceManager_subscriptionQueue);
  sub_10000A45C(&qword_1000931C0, &unk_100072C70);
  return OS_dispatch_queue.sync<A>(execute:)();
}

uint64_t sub_10000DE94@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10000A45C(&qword_1000931C0, &unk_100072C70);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v10 = &v22[-v9 - 8];
  sub_10000FA7C(a1, v22);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = sub_10000A45C(&unk_100092E00, &qword_100072CE0);
  Subscription.init(subscriber:unsubscribeBlock:)(v22, sub_10000FAE0, v11, v12, a3);
  sub_10000F7AC(a3, v10);
  v13 = (*((swift_isaMask & *a2) + 0xA8))(v22);
  v15 = v14;
  v16 = *v14;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v15 = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_10000E894(0, v16[2] + 1, 1, v16);
    *v15 = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = sub_10000E894(v18 > 1, v19 + 1, 1, v16);
    *v15 = v16;
  }

  v16[2] = v19 + 1;
  sub_10000F81C(v10, v16 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v19);
  return v13(v22, 0);
}

uint64_t sub_10000E0B4(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v8 = *(v23 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v23);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A45C(&qword_1000931C0, &unk_100072C70);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v16 = v22 - v15;
  v22[1] = *&v1[OBJC_IVAR____TtC14bluetoothuserd23ApplePushServiceManager_subscriptionQueue];
  sub_10000F7AC(a1, v22 - v15);
  v17 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v1;
  sub_10000F81C(v16, v18 + v17);
  aBlock[4] = sub_10000F88C;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002410;
  aBlock[3] = &unk_100089B38;
  v19 = _Block_copy(aBlock);
  v20 = v1;
  static DispatchQoS.unspecified.getter();
  v24 = &_swiftEmptyArrayStorage;
  sub_100002254(&qword_100092D20, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000A45C(&unk_1000931F0, &unk_100072C10);
  sub_10000FA34(&qword_100092D30, &unk_1000931F0, &unk_100072C10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v23);
}

uint64_t sub_10000E42C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = sub_10000A45C(&qword_1000931C0, &unk_100072C70);
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v25 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v13 = v22 - v12;
  v24 = *(a3 + 16);
  if (v24)
  {
    v14 = 0;
    v15 = &_swiftEmptyArrayStorage;
    v22[1] = a2;
    v23 = a3;
    v22[0] = a1;
    while (v14 < *(a3 + 16))
    {
      v16 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v17 = *(v26 + 72);
      sub_10000F7AC(a3 + v16 + v17 * v14, v13);
      v18 = a1(v13);
      if (v3)
      {
        sub_100006CAC(v13, &qword_1000931C0, &unk_100072C70);

        goto LABEL_15;
      }

      if (v18)
      {
        sub_10000F81C(v13, v25);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10000EA84(0, v15[2] + 1, 1);
          v15 = v27;
        }

        v21 = v15[2];
        v20 = v15[3];
        if (v21 >= v20 >> 1)
        {
          sub_10000EA84(v20 > 1, v21 + 1, 1);
          v15 = v27;
        }

        v15[2] = v21 + 1;
        result = sub_10000F81C(v25, v15 + v16 + v21 * v17);
        a3 = v23;
        a1 = v22[0];
      }

      else
      {
        result = sub_100006CAC(v13, &qword_1000931C0, &unk_100072C70);
      }

      if (v24 == ++v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = &_swiftEmptyArrayStorage;
LABEL_15:

    return v15;
  }

  return result;
}

void (*sub_10000E728(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((swift_isaMask & **v1) + 0xA8))();
  return sub_10000E7CC;
}

void sub_10000E7CC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_10000E814()
{
  v1 = *(*v0 + OBJC_IVAR____TtC14bluetoothuserd23ApplePushServiceManager_subscriptionQueue);
  sub_10000A45C(&qword_1000931C0, &unk_100072C70);
  return OS_dispatch_queue.sync<A>(execute:)();
}

size_t sub_10000E894(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000A45C(&qword_100092DF0, &qword_100072CD8);
  v10 = *(sub_10000A45C(&qword_1000931C0, &unk_100072C70) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_10000A45C(&qword_1000931C0, &unk_100072C70) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_10000EA84(size_t a1, int64_t a2, char a3)
{
  result = sub_10000EAA4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10000EAA4(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000A45C(&qword_100092DF0, &qword_100072CD8);
  v10 = *(sub_10000A45C(&qword_1000931C0, &unk_100072C70) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_10000A45C(&qword_1000931C0, &unk_100072C70) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_10000EC94(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v27 - v10;
  if (a2 >> 60 == 15)
  {
    v12 = sub_1000390D0();
    (*(v5 + 16))(v9, v12, v4);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Invalid Public Token", v15, 2u);
    }

    return (*(v5 + 8))(v9, v4);
  }

  else
  {
    sub_100006218(a1, a2);
    if (IsAppleInternalBuild())
    {
      v17 = sub_1000390D0();
      (*(v5 + 16))(v11, v17, v4);
      sub_100006218(a1, a2);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      sub_100006BB4(a1, a2);
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v27 = v18;
        v28 = v21;
        v22 = v21;
        *v20 = 136315138;
        v23 = Data.base64EncodedString(options:)(0);
        v24 = sub_1000034B8(v23._countAndFlagsBits, v23._object, &v28);

        *(v20 + 4) = v24;
        v25 = v19;
        v26 = v27;
        _os_log_impl(&_mh_execute_header, v27, v25, "didReceivePublicToken: %s", v20, 0xCu);
        sub_1000036EC(v22);

        sub_100006BB4(a1, a2);
      }

      else
      {
        sub_100006BB4(a1, a2);
      }

      return (*(v5 + 8))(v11, v4);
    }

    else
    {

      return sub_100006BB4(a1, a2);
    }
  }
}

uint64_t sub_10000EFB4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v36 = a5;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v32 - v17;
  if (a2 >> 60 != 15 && a4 && a6)
  {
    sub_100006218(a1, a2);
    if (IsAppleInternalBuild())
    {
      v19 = sub_1000390D0();
      (*(v12 + 16))(v18, v19, v11);
      sub_10000FB4C(a1, a2);

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      sub_100006BB4(a1, a2);

      v35 = v21;
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v32 = a3;
        v23 = v22;
        v34 = swift_slowAlloc();
        v37 = v34;
        *v23 = 136315650;
        v24 = Data.base64EncodedString(options:)(0);
        v33 = v20;
        v25 = sub_1000034B8(v24._countAndFlagsBits, v24._object, &v37);

        *(v23 + 4) = v25;
        *(v23 + 12) = 2080;
        *(v23 + 14) = sub_1000034B8(v32, a4, &v37);
        *(v23 + 22) = 2080;
        *(v23 + 24) = sub_1000034B8(v36, a6, &v37);
        v26 = v33;
        _os_log_impl(&_mh_execute_header, v33, v35, "didReceiveToken: %s, for topic: %s, identifier: %s", v23, 0x20u);
        swift_arrayDestroy();

        sub_100006BB4(a1, a2);
      }

      else
      {
        sub_100006BB4(a1, a2);
      }

      return (*(v12 + 8))(v18, v11);
    }

    else
    {

      return sub_100006BB4(a1, a2);
    }
  }

  else
  {
    v27 = sub_1000390D0();
    (*(v12 + 16))(v16, v27, v11);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Invalid APS data arguments", v30, 2u);
    }

    return (*(v12 + 8))(v16, v11);
  }
}

uint64_t sub_10000F364(void *a1)
{
  v2 = v1;
  v4 = sub_10000A45C(&qword_1000931C0, &unk_100072C70);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v8 = &v40 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v40 - v15;
  if (a1)
  {
    v17 = a1;
    v18 = sub_1000390D0();
    (*(v10 + 16))(v16, v18, v9);
    v19 = v17;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v41 = v2;
      v23 = v22;
      v24 = swift_slowAlloc();
      v42 = v5;
      v25 = v24;
      *v23 = 138412290;
      *(v23 + 4) = v19;
      *v24 = a1;
      v26 = v19;
      _os_log_impl(&_mh_execute_header, v20, v21, "didReceive: message: %@", v23, 0xCu);
      sub_100006CAC(v25, &qword_100093F70, &qword_1000730D0);
      v5 = v42;

      v2 = v41;
    }

    v27 = (*(v10 + 8))(v16, v9);
    v28 = (*((swift_isaMask & *v2) + 0x98))(v27);
    v29 = *(v28 + 16);
    if (v29)
    {
      v30 = *(v5 + 80);
      v42 = v28;
      v31 = v28 + ((v30 + 32) & ~v30);
      v32 = *(v5 + 72);
      do
      {
        sub_10000F7AC(v31, v8);
        sub_10000FA7C(v8, v43);
        sub_100006CAC(v8, &qword_1000931C0, &unk_100072C70);
        v33 = v44;
        v34 = v45;
        sub_1000078C8(v43, v44);
        (*(v34 + 8))(v19, v33, v34);
        sub_1000036EC(v43);
        v31 += v32;
        --v29;
      }

      while (v29);
    }
  }

  else
  {
    v35 = sub_1000390D0();
    (*(v10 + 16))(v14, v35, v9);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Invalid message Token", v38, 2u);
    }

    return (*(v10 + 8))(v14, v9);
  }
}

uint64_t sub_10000F7AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A45C(&qword_1000931C0, &unk_100072C70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000F81C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A45C(&qword_1000931C0, &unk_100072C70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000F88C()
{
  v1 = *(sub_10000A45C(&qword_1000931C0, &unk_100072C70) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v4 = (*((swift_isaMask & *v2) + 0x98))();
  v7[2] = v3;
  v5 = sub_10000E42C(sub_10000F990, v7, v4);
  return (*((swift_isaMask & *v2) + 0xA0))(v5);
}

BOOL sub_10000F990()
{
  v1 = *(v0 + 16);
  sub_10000A45C(&qword_1000931C0, &unk_100072C70);
  sub_10000FA34(&qword_100092DF8, &qword_1000931C0, &unk_100072C70);
  return (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0;
}

uint64_t sub_10000FA34(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000C9B0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000FA7C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_10000FAE0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_10000E0B4(a1);
  }
}

uint64_t sub_10000FB4C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100006218(a1, a2);
  }

  return a1;
}

uint64_t sub_10000FB78(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_10000FC30(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_10000FDBC()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(v0 + OBJC_IVAR____TtC14bluetoothuserd12DebugManager_serialQueue);
  OS_dispatch_queue.sync<A>(execute:)();
  v13 = v23[15];
  sub_100016A58(0, 1u);
  if (v13 == 1)
  {
    v15 = v14;
    if (v14 > 0.0)
    {
      static Date.now.getter();
      Date.timeIntervalSince1970.getter();
      v17 = v16;
      (*(v8 + 8))(v11, v7);
      if (v15 >= v17)
      {
        return 1;
      }

      else
      {
        v18 = sub_10003911C();
        (*(v3 + 16))(v6, v18, v2);
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&_mh_execute_header, v19, v20, "Audio accessory limited logging expired", v21, 2u);
        }

        (*(v3 + 8))(v6, v2);
        (*(*v1 + 120))(0);
        return 0;
      }
    }
  }

  return v13;
}

uint64_t sub_100010088(char a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v8 = *(v16 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v16);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *(v1 + OBJC_IVAR____TtC14bluetoothuserd12DebugManager_serialQueue);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v1;
  aBlock[4] = sub_100012064;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002410;
  aBlock[3] = &unk_100089C00;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v17 = &_swiftEmptyArrayStorage;
  sub_100012724(&qword_100092D20, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000A45C(&unk_1000931F0, &unk_100072C10);
  sub_1000023BC(&qword_100092D30, &unk_1000931F0, &unk_100072C10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v16);
}

uint64_t sub_100010350(char a1, uint64_t a2)
{
  v4 = a1 & 1;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  result = __chkstk_darwin(v13);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a2;
  if (*(a2 + OBJC_IVAR____TtC14bluetoothuserd12DebugManager__audioAccessoryLimitedLoggingEnabled) != v4)
  {
    v19 = OBJC_IVAR____TtC14bluetoothuserd12DebugManager__audioAccessoryLimitedLoggingEnabled;
    sub_100016A58(0, 1u);
    if ((a1 & 1) != 0 && ((v21 = v20, v20 <= 0.0) || (static Date.now.getter(), Date.timeIntervalSince1970.getter(), v23 = v22, (*(v14 + 8))(v18, v13), v21 >= v23)))
    {
      v31 = sub_10003911C();
      (*(v6 + 16))(v12, v31, v5);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "Start audio accessory limited logging", v34, 2u);
      }

      (*(v6 + 8))(v12, v5);
      *(&v41 + 1) = &type metadata for Bool;
      LOBYTE(v40) = 1;
      sub_1000172A4(&off_100089B88, &v40, 0);
      sub_100006CAC(&v40, &qword_100092CB8, &qword_100072C40);
      if (v21 <= 0.0)
      {
        sub_10001084C(v18);
        Date.timeIntervalSince1970.getter();
        v21 = v35;
        (*(v14 + 8))(v18, v13);
      }

      *(&v41 + 1) = &type metadata for Double;
      *&v40 = v21;
      v30 = 1;
      sub_1000173CC(0, &v40, 1u);
      sub_100006CAC(&v40, &qword_100092CB8, &qword_100072C40);
      v36 = *sub_100062224();

      v37 = sub_100013394(0);
      (*(*v36 + 168))(v37, v21);
    }

    else
    {
      v24 = sub_10003911C();
      (*(v6 + 16))(v10, v24, v5);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "Stop Audio Accessory Limited Logging", v27, 2u);
      }

      (*(v6 + 8))(v10, v5);
      *(&v41 + 1) = &type metadata for Bool;
      LOBYTE(v40) = 0;
      sub_1000172A4(&off_100089BB0, &v40, 0);
      sub_100006CAC(&v40, &qword_100092CB8, &qword_100072C40);
      v40 = 0u;
      v41 = 0u;
      sub_1000173CC(0, &v40, 1u);
      sub_100006CAC(&v40, &qword_100092CB8, &qword_100072C40);
      v28 = *sub_100062224();

      v29 = sub_100013394(0);
      (*(*v28 + 176))(v29);
      v30 = 0;
    }

    *(v39 + v19) = v30;
    return notify_post("com.apple.bluetoothuser.settingsChanged");
  }

  return result;
}

uint64_t sub_10001084C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016A58(2, 2u);
  v13 = v12;
  v14 = sub_10003911C();
  (*(v8 + 16))(v11, v14, v7);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v24[0] = v3;
    v24[1] = a1;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v28 = v18;
    *v17 = 136315138;
    v25 = v2;
    if (v13 <= 0.0)
    {
      v21 = 0xE700000000000000;
      v20 = 0x746C7561666564;
    }

    else
    {
      v26 = 0;
      v27 = 0xE000000000000000;
      v19._countAndFlagsBits = 0x656469727265766FLL;
      v19._object = 0xE900000000000020;
      String.append(_:)(v19);
      Double.write<A>(to:)();
      v20 = v26;
      v21 = v27;
    }

    v22 = sub_1000034B8(v20, v21, &v28);

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "Requesting %s expiration interval", v17, 0xCu);
    sub_1000036EC(v18);

    (*(v8 + 8))(v11, v7);
    v2 = v25;
    v3 = v24[0];
  }

  else
  {

    (*(v8 + 8))(v11, v7);
  }

  static Date.now.getter();
  Date.advanced(by:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t (*sub_100010B70(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_10000FDBC() & 1;
  return sub_100010BBC;
}

uint64_t sub_100010BE4()
{
  v1 = v0;
  v2 = sub_10000A45C(&qword_1000931D0, qword_1000730B0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v33 = &v29 - v4;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v5 - 8);
  v6 = *(v32 + 64);
  __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v30 = *(v9 - 8);
  v31 = v9;
  v10 = *(v30 + 64);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10003911C();
  (*(v14 + 16))(v17, v18, v13);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Activate Debug Manager", v21, 2u);
  }

  (*(v14 + 8))(v17, v13);
  v22 = *(v1 + OBJC_IVAR____TtC14bluetoothuserd12DebugManager_serialQueue);
  v37 = sub_1000128E0;
  v38 = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002410;
  v36 = &unk_100089C28;
  v23 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v34 = &_swiftEmptyArrayStorage;
  sub_100012724(&qword_100092D20, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000A45C(&unk_1000931F0, &unk_100072C10);
  sub_1000023BC(&qword_100092D30, &unk_1000931F0, &unk_100072C10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v32 + 8))(v8, v5);
  (*(v30 + 8))(v12, v31);

  v24 = *sub_100062224();
  v36 = type metadata accessor for DebugManager();
  v37 = &off_100089C88;
  aBlock[0] = v1;

  v25 = v33;
  sub_1000640D8();

  sub_1000036EC(aBlock);
  v26 = sub_10000A45C(&qword_100092E80, qword_100072CF0);
  (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
  v27 = OBJC_IVAR____TtC14bluetoothuserd12DebugManager_systemNotificationSubscription;
  swift_beginAccess();
  sub_1000120BC(v25, v1 + v27);
  return swift_endAccess();
}

uint64_t sub_1000110C8()
{
  v1 = v0;
  v2 = sub_10000A45C(&qword_1000931D0, qword_1000730B0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v25 - v4;
  v6 = sub_10000A45C(&qword_100092E80, qword_100072CF0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v25 - v9;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10003911C();
  (*(v12 + 16))(v15, v16, v11);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v25 = v10;
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Invalidate Debug Manager", v19, 2u);
    v10 = v25;
  }

  (*(v12 + 8))(v15, v11);
  v20 = OBJC_IVAR____TtC14bluetoothuserd12DebugManager_systemNotificationSubscription;
  swift_beginAccess();
  sub_10001212C(v1 + v20, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    v21 = &qword_1000931D0;
    v22 = qword_1000730B0;
    v23 = v5;
  }

  else
  {
    sub_10001219C(v5, v10);
    Subscription.unsubscribe(completion:)(Transaction.capture(), 0, v6);
    v21 = &qword_100092E80;
    v22 = qword_100072CF0;
    v23 = v10;
  }

  return sub_100006CAC(v23, v21, v22);
}

uint64_t sub_1000113C0()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v6 = *(v13 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v13);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *(v0 + OBJC_IVAR____TtC14bluetoothuserd12DebugManager_serialQueue);
  aBlock[4] = sub_10001220C;
  v16 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002410;
  aBlock[3] = &unk_100089C50;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v14 = &_swiftEmptyArrayStorage;
  sub_100012724(&qword_100092D20, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000A45C(&unk_1000931F0, &unk_100072C10);
  sub_1000023BC(&qword_100092D30, &unk_1000931F0, &unk_100072C10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v13);
}

uint64_t sub_100011668()
{
  sub_100006CAC(v0 + OBJC_IVAR____TtC14bluetoothuserd12DebugManager_systemNotificationSubscription, &qword_1000931D0, qword_1000730B0);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_1000116EC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_100011724();
  return v3;
}

uint64_t sub_100011724()
{
  v15 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v15 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v15);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = OBJC_IVAR____TtC14bluetoothuserd12DebugManager_systemNotificationSubscription;
  v10 = sub_10000A45C(&qword_100092E80, qword_100072CF0);
  (*(*(v10 - 8) + 56))(v0 + v9, 1, 1, v10);
  v14 = OBJC_IVAR____TtC14bluetoothuserd12DebugManager_serialQueue;
  v11 = sub_10000A8F8();
  v13[1] = "Limited Logging: ";
  v13[2] = v11;
  static DispatchQoS.unspecified.getter();
  v16 = _swiftEmptyArrayStorage;
  sub_100012724(&qword_1000931A0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10000A45C(&unk_100092CD0, &unk_100072C60);
  sub_1000023BC(&qword_1000931B0, &unk_100092CD0, &unk_100072C60);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v15);
  *(v0 + v14) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v0 + OBJC_IVAR____TtC14bluetoothuserd12DebugManager__audioAccessoryLimitedLoggingEnabled) = 0;
  return v0;
}

uint64_t sub_100011A54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v60 = a2;
  v61 = a3;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v55 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v55 - v18;
  v20 = type metadata accessor for SystemNotificationSource();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100012664(a1, v23);
  if (!(*(v13 + 48))(v23, 2, v12))
  {
    v56 = v17;
    v57 = v4;
    v58 = v11;
    v33 = v13;
    v34 = v19;
    (*(v13 + 32))(v19, v23, v12);
    v35 = sub_100013394(0);
    v37 = v60;
    v38 = v61;
    if (v35 == v60 && v36 == v61)
    {

      v39 = v5;
    }

    else
    {
      v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v39 = v5;
      if ((v40 & 1) == 0)
      {
        v53 = *(v33 + 8);
        return v53(v34, v12);
      }
    }

    sub_10003911C();
    v41 = v57;
    (*(v39 + 16))();
    v42 = v56;
    (*(v33 + 16))(v56, v34, v12);

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = v42;
      v61 = v12;
      v47 = v45;
      v55 = swift_slowAlloc();
      v62 = v55;
      *v47 = 136315394;
      *(v47 + 4) = sub_1000034B8(v37, v38, &v62);
      *(v47 + 12) = 2080;
      sub_100012724(&qword_100092E88, &type metadata accessor for Date);
      v48 = v43;
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      v52 = v44;
      v53 = *(v33 + 8);
      v53(v46, v61);
      v54 = sub_1000034B8(v49, v51, &v62);

      *(v47 + 14) = v54;
      _os_log_impl(&_mh_execute_header, v48, v52, "Received alarm from name: %s at %s", v47, 0x16u);
      swift_arrayDestroy();

      v12 = v61;

      (*(v39 + 8))(v58, v57);
    }

    else
    {

      v53 = *(v33 + 8);
      v53(v42, v12);
      (*(v39 + 8))(v58, v41);
    }

    (*(*v59 + 120))(0);
    return v53(v34, v12);
  }

  v24 = v60;
  v25 = sub_10003911C();
  (*(v5 + 16))(v9, v25, v4);
  v26 = v61;

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();

  v29 = v4;
  if (os_log_type_enabled(v27, v28))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v62 = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_1000034B8(v24, v26, &v62);
    _os_log_impl(&_mh_execute_header, v27, v28, "Received notification from name: %s", v30, 0xCu);
    sub_1000036EC(v31);
  }

  (*(v5 + 8))(v9, v29);
  return sub_1000126C8(v23);
}

uint64_t type metadata accessor for DebugManager()
{
  result = qword_1000952C0;
  if (!qword_1000952C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000120BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A45C(&qword_1000931D0, qword_1000730B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001212C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A45C(&qword_1000931D0, qword_1000730B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001219C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A45C(&qword_100092E80, qword_100072CF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100012210(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = *(v37 + 64);
  __chkstk_darwin(v4);
  v36 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v34 = *(v7 - 8);
  v35 = v7;
  v8 = *(v34 + 64);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10003911C();
  (*(v12 + 16))(v15, v16, v11);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v33 = v11;
    v21 = v20;
    aBlock[0] = v20;
    *v19 = 136315138;
    v22 = sub_1000128F0(a1);
    v24 = v10;
    v25 = v2;
    v26 = sub_1000034B8(v22, v23, aBlock);

    *(v19 + 4) = v26;
    v2 = v25;
    v10 = v24;
    _os_log_impl(&_mh_execute_header, v17, v18, "keyValueChanged source: %s", v19, 0xCu);
    sub_1000036EC(v21);

    (*(v12 + 8))(v15, v33);
  }

  else
  {

    (*(v12 + 8))(v15, v11);
  }

  v27 = *(v2 + OBJC_IVAR____TtC14bluetoothuserd12DebugManager_serialQueue);
  aBlock[4] = sub_1000128E0;
  aBlock[5] = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002410;
  aBlock[3] = &unk_100089C98;
  v28 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v39 = &_swiftEmptyArrayStorage;
  sub_100012724(&qword_100092D20, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000A45C(&unk_1000931F0, &unk_100072C10);
  sub_1000023BC(&qword_100092D30, &unk_1000931F0, &unk_100072C10);
  v29 = v36;
  v30 = v38;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v28);
  (*(v37 + 8))(v29, v30);
  (*(v34 + 8))(v10, v35);
}

uint64_t sub_100012664(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SystemNotificationSource();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000126C8(uint64_t a1)
{
  v2 = type metadata accessor for SystemNotificationSource();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100012724(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100012774()
{
  sub_10001281C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10001281C()
{
  if (!qword_1000932F0)
  {
    sub_10000C9B0(&qword_100092E80, qword_100072CF0);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000932F0);
    }
  }
}

uint64_t sub_100012880()
{
  v1 = sub_100016230(0, 0);
  v2 = *(*v0 + 120);
  v3 = v1 & 1;

  return v2(v3);
}

uint64_t sub_1000128F0(char a1)
{
  if (!a1)
  {
    return 0x64756F6C63;
  }

  if (a1 == 1)
  {
    return 1953460082;
  }

  return 1919251317;
}

uint64_t sub_100012934(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 1953460082;
  if (v2 != 1)
  {
    v3 = 1919251317;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x64756F6C63;
  }

  if (v2)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = 1953460082;
  if (*a2 != 1)
  {
    v6 = 1919251317;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x64756F6C63;
  }

  if (*a2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_100012A14(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD00000000000001BLL;
  v3 = "oreChanged";
  v4 = a1;
  v5 = 0xD000000000000022;
  if (a1 == 5)
  {
    v6 = 0xD000000000000022;
  }

  else
  {
    v6 = 0xD000000000000018;
  }

  if (a1 == 5)
  {
    v7 = "debugManagerEnabledOverride";
  }

  else
  {
    v7 = "gerEnabledOverride";
  }

  if (a1 == 3)
  {
    v8 = "tionExpirationIntervalOverride";
  }

  else
  {
    v5 = 0xD00000000000001BLL;
    v8 = "gerEnabledOverride";
  }

  if (v4 <= 4)
  {
    v9 = v5;
  }

  else
  {
    v9 = v6;
  }

  if (v4 <= 4)
  {
    v7 = v8;
  }

  v10 = 0xD000000000000025;
  if (v4 == 1)
  {
    v11 = "APLogCloudCollectionEnabled";
  }

  else
  {
    v10 = 0xD00000000000002ELL;
    v11 = "tionEnabledExpiration";
  }

  if (!v4)
  {
    v10 = 0xD00000000000001BLL;
    v11 = "oreChanged";
  }

  if (v4 <= 2)
  {
    v12 = v11;
  }

  else
  {
    v10 = v9;
    v12 = v7;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xD000000000000025;
        v3 = "APLogCloudCollectionEnabled";
      }

      else
      {
        v2 = 0xD00000000000002ELL;
        v3 = "tionEnabledExpiration";
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v2 = 0xD000000000000022;
      v3 = "debugManagerEnabledOverride";
    }

    else
    {
      v2 = 0xD000000000000018;
      v3 = "gerEnabledOverride";
    }
  }

  else if (a2 == 3)
  {
    v2 = 0xD000000000000022;
    v3 = "tionExpirationIntervalOverride";
  }

  else
  {
    v3 = "gerEnabledOverride";
  }

  if (v10 == v2 && (v12 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

unint64_t sub_100012BA8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100017D0C(*a1);
  *a2 = result;
  return result;
}

void sub_100012BD8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 1953460082;
  if (v2 != 1)
  {
    v4 = 1919251317;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x64756F6C63;
  }

  if (!v5)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

Swift::Int sub_100012C24()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100012CB4()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100012D30()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100012DBC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

id sub_100012F8C()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

void sub_100012FD0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_100013068()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
}

uint64_t sub_1000130A0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

id sub_100013138()
{
  v1 = v0[6];
  if (v1)
  {
    v2 = v0[6];
  }

  else
  {
    v33 = v0;
    v32 = (*(*v0 + 120))();
    sub_1000179D0(0, 7, 0);
    v3 = 0;
    v4 = "oreChanged";
    v5 = "debugManagerEnabledOverride";
    v6 = "gerEnabledOverride";
    v7 = 0xD000000000000018;
    v8 = "tionExpirationIntervalOverride";
    do
    {
      v9 = *(&off_100089D60 + v3 + 32);
      v10 = 0xD000000000000022;
      if (v9 == 5)
      {
        v11 = 0xD000000000000022;
      }

      else
      {
        v11 = v7;
      }

      if (v9 == 5)
      {
        v12 = v5;
      }

      else
      {
        v12 = v6;
      }

      if (v9 == 3)
      {
        v13 = v8;
      }

      else
      {
        v10 = 0xD00000000000001BLL;
        v13 = "gerEnabledOverride";
      }

      if (*(&off_100089D60 + v3 + 32) <= 4u)
      {
        v14 = v13;
      }

      else
      {
        v10 = v11;
        v14 = v12;
      }

      v15 = 0xD000000000000025;
      if (v9 == 1)
      {
        v16 = "APLogCloudCollectionEnabled";
      }

      else
      {
        v15 = 0xD00000000000002ELL;
        v16 = "tionEnabledExpiration";
      }

      if (!*(&off_100089D60 + v3 + 32))
      {
        v15 = 0xD00000000000001BLL;
        v16 = v4;
      }

      if (*(&off_100089D60 + v3 + 32) <= 2u)
      {
        v17 = v15;
      }

      else
      {
        v17 = v10;
      }

      if (*(&off_100089D60 + v3 + 32) <= 2u)
      {
        v18 = v16;
      }

      else
      {
        v18 = v14;
      }

      v20 = *(&_swiftEmptyArrayStorage + 2);
      v19 = *(&_swiftEmptyArrayStorage + 3);
      if (v20 >= v19 >> 1)
      {
        v30 = v5;
        v31 = v4;
        v28 = v7;
        v29 = v6;
        v27 = v8;
        sub_1000179D0((v19 > 1), v20 + 1, 1);
        v8 = v27;
        v7 = v28;
        v6 = v29;
        v5 = v30;
        v4 = v31;
      }

      ++v3;
      *(&_swiftEmptyArrayStorage + 2) = v20 + 1;
      v21 = &_swiftEmptyArrayStorage + 16 * v20;
      *(v21 + 4) = v17;
      *(v21 + 5) = v18 | 0x8000000000000000;
    }

    while (v3 != 7);
    type metadata accessor for KeyValueStoreCustomObserver();
    v22 = swift_allocObject();
    swift_weakInit();
    v23 = sub_10000ADF4(v32, &_swiftEmptyArrayStorage, sub_100019184, v22);
    v24 = v0[6];
    v33[6] = v23;
    v2 = v23;

    v1 = 0;
  }

  v25 = v1;
  return v2;
}

unint64_t sub_100013394(unsigned __int8 a1)
{
  v1 = 0xD00000000000001BLL;
  v2 = 0xD000000000000022;
  v3 = 0xD000000000000018;
  if (a1 == 5)
  {
    v3 = 0xD000000000000022;
  }

  if (a1 != 3)
  {
    v2 = 0xD00000000000001BLL;
  }

  if (a1 > 4u)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000025;
  if (a1 != 1)
  {
    v4 = 0xD00000000000002ELL;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100013454(int a1, uint64_t a2, uint64_t a3)
{
  v35 = a1;
  v34 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v34 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v34);
  v33 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for DispatchQoS();
  v8 = *(v32 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v32);
  v31 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    swift_beginAccess();
    v28 = (v5 + 8);
    v29 = v39;
    v27 = (v8 + 8);
    v12 = (a2 + 40);
    v30 = a3;
    do
    {
      v14 = *(v12 - 1);
      v13 = *v12;
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v16 = *(*Strong + 120);

        v36 = v16(v17);
        v18 = swift_allocObject();
        swift_weakInit();
        v19 = swift_allocObject();
        *(v19 + 16) = v18;
        *(v19 + 24) = v35;
        *(v19 + 32) = v14;
        *(v19 + 40) = v13;
        v39[2] = sub_100019208;
        v39[3] = v19;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v39[0] = sub_100002410;
        v39[1] = &unk_10008A0D8;
        v20 = _Block_copy(aBlock);

        v21 = v31;
        static DispatchQoS.unspecified.getter();
        v37 = &_swiftEmptyArrayStorage;
        sub_100002254(&qword_100092D20, &type metadata accessor for DispatchWorkItemFlags);
        sub_10000A45C(&unk_1000931F0, &unk_100072C10);
        sub_10000FA34(&qword_100092D30, &unk_1000931F0, &unk_100072C10);
        v22 = v33;
        v23 = v34;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v24 = v36;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v20);

        (*v28)(v22, v23);
        (*v27)(v21, v32);
      }

      v12 += 2;
      --v11;
    }

    while (v11);
    return notify_post("com.apple.bluetoothuser.prefsChanged");
  }

  else
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_100013C6C(v35, 0, 0);
    }
  }

  return result;
}

uint64_t sub_100013880(uint64_t a1)
{
  v2 = *(v1 + 48);
  *(v1 + 48) = a1;
  return _objc_release_x1();
}

void (*sub_10001388C(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_100013138();
  return sub_1000138D4;
}

void sub_1000138D4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 48);
  *(v1 + 48) = v2;
}

void sub_1000138E4()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100039094();
  (*(v3 + 16))(v6, v7, v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Activate KeyValueStoreManager", v10, 2u);
  }

  v11 = (*(v3 + 8))(v6, v2);
  v12 = (*(*v1 + 192))(v11);
  (*((swift_isaMask & *v12) + 0xD8))();
}

void sub_100013AA4(char a1)
{
  v2 = v1;
  if (a1)
  {
    if (v1[40])
    {
      return;
    }

    v3 = (*(*v1 + 192))();
    (*((swift_isaMask & *v3) + 0xE8))();
    v4 = 1;
  }

  else
  {
    if (!v1[40])
    {
      return;
    }

    v3 = (*(*v1 + 192))();
    (*((swift_isaMask & *v3) + 0xF0))();
    v4 = 0;
  }

  v2[40] = v4;
}

uint64_t sub_100013BB0()
{
  v1 = v0;
  v2 = (*(*v0 + 192))();
  (*((swift_isaMask & *v2) + 0xE0))();

  v3 = *(v1 + 32);

  return _swift_deallocClassInstance(v1, 56, 7);
}

uint64_t sub_100013C6C(char a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v7 - 8);
  v8 = *(v23 + 64);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v11 = *(v22 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v22);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = (*(*v3 + 120))(v13);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = a1;
  *(v17 + 32) = a2;
  *(v17 + 40) = a3;
  aBlock[4] = sub_10001900C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002410;
  aBlock[3] = &unk_10008A088;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v24 = &_swiftEmptyArrayStorage;
  sub_100002254(&qword_100092D20, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000A45C(&unk_1000931F0, &unk_100072C10);
  sub_10000FA34(&qword_100092D30, &unk_1000931F0, &unk_100072C10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v19 = v21;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v23 + 8))(v10, v7);
  (*(v11 + 8))(v15, v22);
}

uint64_t sub_100013FAC(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100014028(a2, a3, a4);
  }

  return result;
}

uint64_t sub_100014028(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a1;
  v7 = sub_10000A45C(&qword_100092FA8, &unk_100075380);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v11 = v28 - v10;
  v36 = 0;
  v12 = *(v4 + 24);
  v13 = swift_allocObject();
  *(v13 + 16) = &v36;
  *(v13 + 24) = v4;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_100018F84;
  *(v14 + 24) = v13;
  v30 = v13;
  v34 = sub_100018FE4;
  v35 = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001437C;
  v33 = &unk_10008A010;
  v15 = _Block_copy(aBlock);

  dispatch_sync(v12, v15);
  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_13:
    v17 = sub_1000176D4((v18 > 1), v12, 1, v17);
LABEL_4:
    *(v17 + 2) = v12;
    v19 = &v17[16 * v13];
    *(v19 + 4) = a2;
    *(v19 + 5) = a3;
    v20 = v36;
    if (v36)
    {
      goto LABEL_5;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (a3)
  {

    v17 = sub_1000176D4(0, 1, 1, &_swiftEmptyArrayStorage);
    v13 = *(v17 + 2);
    v18 = *(v17 + 3);
    v12 = (v13 + 1);
    if (v13 < v18 >> 1)
    {
      goto LABEL_4;
    }

    goto LABEL_13;
  }

  v17 = &_swiftEmptyArrayStorage;
  v20 = v36;
  if (!v36)
  {
    goto LABEL_10;
  }

LABEL_5:
  v21 = *(v20 + 16);
  if (v21)
  {
    v22 = v20 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v31 = *(v8 + 72);
    v28[1] = v20;
    v23 = v17;

    v24 = v29;
    do
    {
      sub_100006C44(v22, v11, &qword_100092FA8, &unk_100075380);
      sub_10000FA7C(v11, aBlock);
      sub_100006CAC(v11, &qword_100092FA8, &unk_100075380);
      v26 = v33;
      v25 = v34;
      sub_1000078C8(aBlock, v33);
      (*(v25 + 1))(v24, v23, v26, v25);
      sub_1000036EC(aBlock);
      v22 += v31;
      --v21;
    }

    while (v21);
  }

LABEL_11:
}

uint64_t sub_1000143A4()
{
  v0 = swift_allocObject();
  sub_1000143DC();
  return v0;
}

uint64_t sub_1000143DC()
{
  v16 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v16 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v16);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v15[0] = sub_100004890(0, &qword_100092CC0, OS_dispatch_queue_ptr);
  v17 = "internalStorageMigration";
  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  v15[3] = sub_100002254(&qword_1000931A0, &type metadata accessor for OS_dispatch_queue.Attributes);
  v15[2] = sub_10000A45C(&unk_100092CD0, &unk_100072C60);
  sub_10000FA34(&qword_1000931B0, &unk_100092CD0, &unk_100072C60);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v8 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v9 = v0 + 104;
  v10 = *(v0 + 104);
  v15[1] = v9;
  v11 = v16;
  v10(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v16);
  *(v18 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v10(v3, v8, v11);
  v12 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v13 = v18;
  *(v18 + 24) = v12;
  *(v13 + 32) = _swiftEmptyArrayStorage;
  *(v13 + 40) = 0;
  *(v13 + 48) = 0;
  return v13;
}

uint64_t sub_100014720()
{
  v1 = *(v0 + 24);
  sub_10000A45C(&qword_100092FA8, &unk_100075380);
  return OS_dispatch_queue.sync<A>(execute:)();
}

uint64_t sub_100014798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10000A45C(&qword_100092FA8, &unk_100075380);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v10 = &v22[-v9 - 8];
  sub_10000FA7C(a1, v22);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = sub_10000A45C(&qword_100093178, &qword_100073050);
  Subscription.init(subscriber:unsubscribeBlock:)(v22, sub_100019114, v11, v12, a3);
  sub_100006C44(a3, v10, &qword_100092FA8, &unk_100075380);
  v13 = (*(*a2 + 160))(v22);
  v15 = v14;
  v16 = *v14;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v15 = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_1000177E0(0, v16[2] + 1, 1, v16);
    *v15 = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = sub_1000177E0(v18 > 1, v19 + 1, 1, v16);
    *v15 = v16;
  }

  v16[2] = v19 + 1;
  sub_100017D84(v10, v16 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v19);
  return v13(v22, 0);
}

uint64_t sub_1000149B8(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v3 - 8);
  v4 = *(v23 + 64);
  __chkstk_darwin(v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v21 = *(v7 - 8);
  v22 = v7;
  v8 = *(v21 + 64);
  __chkstk_darwin(v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A45C(&qword_100092FA8, &unk_100075380);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v15 = v20 - v14;
  v20[1] = *(v1 + 24);
  sub_100006C44(a1, v20 - v14, &qword_100092FA8, &unk_100075380);
  v16 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v1;
  sub_100017D84(v15, v17 + v16);
  aBlock[4] = sub_100017DF4;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002410;
  aBlock[3] = &unk_100089E78;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_100002254(&qword_100092D20, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000A45C(&unk_1000931F0, &unk_100072C10);
  sub_10000FA34(&qword_100092D30, &unk_1000931F0, &unk_100072C10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v23 + 8))(v6, v3);
  (*(v21 + 8))(v10, v22);
}

uint64_t sub_100014D3C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = sub_10000A45C(&qword_100092FA8, &unk_100075380);
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v25 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v13 = v22 - v12;
  v24 = *(a3 + 16);
  if (v24)
  {
    v14 = 0;
    v15 = _swiftEmptyArrayStorage;
    v22[1] = a2;
    v23 = a3;
    v22[0] = a1;
    while (v14 < *(a3 + 16))
    {
      v16 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v17 = *(v26 + 72);
      sub_100006C44(a3 + v16 + v17 * v14, v13, &qword_100092FA8, &unk_100075380);
      v18 = a1(v13);
      if (v3)
      {
        sub_100006CAC(v13, &qword_100092FA8, &unk_100075380);

        goto LABEL_15;
      }

      if (v18)
      {
        sub_100017D84(v13, v25);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1000179F0(0, v15[2] + 1, 1);
          v15 = v27;
        }

        v21 = v15[2];
        v20 = v15[3];
        if (v21 >= v20 >> 1)
        {
          sub_1000179F0(v20 > 1, v21 + 1, 1);
          v15 = v27;
        }

        v15[2] = v21 + 1;
        result = sub_100017D84(v25, v15 + v16 + v21 * v17);
        a3 = v23;
        a1 = v22[0];
      }

      else
      {
        result = sub_100006CAC(v13, &qword_100092FA8, &unk_100075380);
      }

      if (v24 == ++v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
LABEL_15:

    return v15;
  }

  return result;
}

void (*sub_100015028(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 160))();
  return sub_10000E7CC;
}

uint64_t sub_1000150BC()
{
  v1 = *(*v0 + 24);
  sub_10000A45C(&qword_100092FA8, &unk_100075380);
  return OS_dispatch_queue.sync<A>(execute:)();
}

BOOL sub_100015134(char a1, unsigned __int8 a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    v14 = NSUbiquitousKeyValueStore.bluetoothCloudDefaults.unsafeMutableAddressor();
    swift_beginAccess();
    v15 = *v14;
    v16 = String._bridgeToObjectiveC()();

    v17 = [v15 objectForKey:v16];

LABEL_9:
    v20 = v17 != 0;
    if (v17)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      memset(v56, 0, sizeof(v56));
    }

    v21 = v56;
LABEL_67:
    sub_100006CAC(v21, &qword_100092CB8, &qword_100072C40);
    return v20;
  }

  if (a1 != 1)
  {
    v18 = [objc_opt_self() standardUserDefaults];
    v19 = String._bridgeToObjectiveC()();

    v17 = [v18 valueForKey:v19];

    goto LABEL_9;
  }

  v54 = v7;
  v10 = 0xD00000000000001BLL;
  sub_10000A45C(&unk_100092D10, &unk_100072C00);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100072BE0;
  v12 = "oreChanged";
  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v22 = "APLogCloudCollectionEnabled";
        v23 = 0xD000000000000025;
      }

      else
      {
        v22 = "tionEnabledExpiration";
        v23 = 0xD00000000000002ELL;
      }
    }

    else
    {
      v23 = 0xD00000000000001BLL;
      v22 = "oreChanged";
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v13 = "intelligenceManagerEnabledOverride";
      goto LABEL_18;
    }

    v22 = "gerEnabledOverride";
    v23 = 0xD000000000000018;
  }

  else
  {
    if (a2 == 3)
    {
      v13 = "cloudPairingManagerEnabledOverride";
LABEL_18:
      v22 = (v13 - 32);
      v23 = 0xD000000000000022;
      goto LABEL_23;
    }

    v22 = "gerEnabledOverride";
    v23 = 0xD00000000000001BLL;
  }

LABEL_23:
  v24 = v22 | 0x8000000000000000;
  v25 = objc_opt_self();
  *(v11 + 32) = v23;
  *(v11 + 40) = v24;
  isa = Array._bridgeToObjectiveC()().super.isa;

  *&v56[0] = 0;
  v27 = [v25 readPrefKeys:isa error:v56];

  v28 = *&v56[0];
  if (v27)
  {
    v29 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v28;

    if (a2 <= 2u)
    {
      if (a2)
      {
        if (a2 == 1)
        {
          v12 = "APLogCloudCollectionEnabled";
          v10 = 0xD000000000000025;
        }

        else
        {
          v12 = "tionEnabledExpiration";
          v10 = 0xD00000000000002ELL;
        }
      }

      goto LABEL_62;
    }

    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v31 = "intelligenceManagerEnabledOverride";
        goto LABEL_58;
      }

      v12 = "gerEnabledOverride";
      v10 = 0xD000000000000018;
    }

    else
    {
      if (a2 == 3)
      {
        v31 = "cloudPairingManagerEnabledOverride";
LABEL_58:
        v12 = (v31 - 32);
        v10 = 0xD000000000000022;
        goto LABEL_62;
      }

      v12 = "gerEnabledOverride";
    }

LABEL_62:
    *&v55[0] = v10;
    *(&v55[0] + 1) = v12 | 0x8000000000000000;
    AnyHashable.init<A>(_:)();
    if (*(v29 + 16) && (v49 = sub_10000C7B0(v56), (v50 & 1) != 0))
    {
      sub_100003690(*(v29 + 56) + 32 * v49, v55);
      sub_10000C7F4(v56);

      v20 = 1;
    }

    else
    {

      sub_10000C7F4(v56);
      v20 = 0;
      memset(v55, 0, sizeof(v55));
    }

    v21 = v55;
    goto LABEL_67;
  }

  v32 = *&v56[0];
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v33 = sub_100039280();
  (*(v5 + 16))(v9, v33, v54);
  swift_errorRetain();
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *&v56[0] = v53;
    v38 = "debugManagerEnabledOverride";
    *v36 = 136315394;
    v39 = 0xD000000000000022;
    v40 = 0xD000000000000018;
    if (a2 == 5)
    {
      v40 = 0xD000000000000022;
    }

    else
    {
      v38 = "gerEnabledOverride";
    }

    v41 = "tionExpirationIntervalOverride";
    if (a2 != 3)
    {
      v39 = 0xD00000000000001BLL;
      v41 = "gerEnabledOverride";
    }

    if (a2 <= 4u)
    {
      v38 = v41;
    }

    else
    {
      v39 = v40;
    }

    v42 = "APLogCloudCollectionEnabled";
    v43 = 0xD000000000000025;
    if (a2 != 1)
    {
      v43 = 0xD00000000000002ELL;
      v42 = "tionEnabledExpiration";
    }

    if (a2)
    {
      v44 = v43;
    }

    else
    {
      v44 = 0xD00000000000001BLL;
    }

    if (!a2)
    {
      v42 = "oreChanged";
    }

    if (a2 <= 2u)
    {
      v45 = v44;
    }

    else
    {
      v45 = v39;
    }

    if (a2 <= 2u)
    {
      v46 = v42;
    }

    else
    {
      v46 = v38;
    }

    v47 = sub_1000034B8(v45, v46 | 0x8000000000000000, v56);

    *(v36 + 4) = v47;
    *(v36 + 12) = 2112;
    swift_errorRetain();
    v48 = _swift_stdlib_bridgeErrorToNSError();
    *(v36 + 14) = v48;
    *v37 = v48;
    _os_log_impl(&_mh_execute_header, v34, v35, "Error reading %s from root defaults: %@", v36, 0x16u);
    sub_100006CAC(v37, &qword_100093F70, &qword_1000730D0);

    sub_1000036EC(v53);
  }

  else
  {
  }

  (*(v5 + 8))(v9, v54);
  return 0;
}

uint64_t sub_1000159B4@<X0>(char a1@<W0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v6 = 0xD00000000000001BLL;
  v7 = "oreChanged";
  v8 = "debugManagerEnabledOverride";
  v9 = 0xD000000000000022;
  v10 = 0xD000000000000018;
  if (a2 == 5)
  {
    v10 = 0xD000000000000022;
  }

  else
  {
    v8 = "gerEnabledOverride";
  }

  v11 = "tionExpirationIntervalOverride";
  if (a2 != 3)
  {
    v9 = 0xD00000000000001BLL;
    v11 = "gerEnabledOverride";
  }

  if (a2 <= 4u)
  {
    v8 = v11;
  }

  else
  {
    v9 = v10;
  }

  v12 = "APLogCloudCollectionEnabled";
  v13 = 0xD000000000000025;
  if (a2 != 1)
  {
    v13 = 0xD00000000000002ELL;
    v12 = "tionEnabledExpiration";
  }

  if (a2)
  {
    v6 = v13;
    v7 = v12;
  }

  if (a2 <= 2u)
  {
    v14 = v6;
  }

  else
  {
    v14 = v9;
  }

  if (a2 <= 2u)
  {
    v15 = v7;
  }

  else
  {
    v15 = v8;
  }

  sub_100015AAC(v14, v15 | 0x8000000000000000, a1, a3, a4);
}

uint64_t sub_100015AAC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Optional();
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15);
  v19 = &v59 - v18;
  v64 = *(a4 - 8);
  v20 = *(v64 + 64);
  v21 = __chkstk_darwin(v17);
  v24 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    if (a3 == 1)
    {
      v60 = v22;
      v62 = v11;
      v63 = a5;
      v61 = v21;
      v25 = objc_opt_self();
      sub_10000A45C(&unk_100092D10, &unk_100072C00);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_100072BE0;
      *(v26 + 32) = a1;
      *(v26 + 40) = a2;

      isa = Array._bridgeToObjectiveC()().super.isa;

      *&v65[0] = 0;
      v28 = [v25 readPrefKeys:isa error:v65];

      v29 = *&v65[0];
      if (v28)
      {
        v30 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v29;

        *&v66 = a1;
        *(&v66 + 1) = a2;

        AnyHashable.init<A>(_:)();
        if (*(v30 + 16))
        {
          v32 = sub_10000C7B0(v65);
          v33 = v63;
          v34 = v64;
          if (v35)
          {
            sub_100003690(*(v30 + 56) + 32 * v32, &v66);
            sub_10000C7F4(v65);
          }

          else
          {

            sub_10000C7F4(v65);
            v66 = 0u;
            v67 = 0u;
          }
        }

        else
        {

          sub_10000C7F4(v65);
          v66 = 0u;
          v67 = 0u;
          v33 = v63;
          v34 = v64;
        }

        sub_10000A45C(&qword_100092CB8, &qword_100072C40);
        v54 = swift_dynamicCast();
        v55 = *(v34 + 56);
        if (v54)
        {
          v55(v19, 0, 1, a4);
          v56 = *(v34 + 32);
          v56(v24, v19, a4);
          v56(v33, v24, a4);
          v57 = v33;
          v58 = 0;
        }

        else
        {
          v55(v19, 1, 1, a4);
          (*(v60 + 8))(v19, v61);
          v57 = v33;
          v58 = 1;
        }

        return (v55)(v57, v58, 1, a4);
      }

      else
      {
        v44 = *&v65[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
        v45 = sub_100039280();
        v46 = v62;
        (*(v62 + 16))(v14, v45, v10);

        swift_errorRetain();
        v47 = Logger.logObject.getter();
        v48 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          *&v65[0] = v61;
          *v49 = 136315394;
          *(v49 + 4) = sub_1000034B8(a1, a2, v65);
          *(v49 + 12) = 2080;
          swift_getErrorValue();
          v50 = Error.localizedDescription.getter();
          v52 = v46;
          v53 = sub_1000034B8(v50, v51, v65);

          *(v49 + 14) = v53;
          _os_log_impl(&_mh_execute_header, v47, v48, "Unable to get value for key: %s due to: %s", v49, 0x16u);
          swift_arrayDestroy();

          (*(v52 + 8))(v14, v10);
        }

        else
        {

          (*(v46 + 8))(v14, v10);
        }

        return (*(v64 + 56))(v63, 1, 1, a4);
      }
    }

    v37 = [objc_opt_self() standardUserDefaults];
    v38 = String._bridgeToObjectiveC()();
    v39 = [v37 valueForKey:v38];
  }

  else
  {
    v36 = NSUbiquitousKeyValueStore.bluetoothCloudDefaults.unsafeMutableAddressor();
    swift_beginAccess();
    v37 = *v36;
    v38 = String._bridgeToObjectiveC()();
    v39 = [v37 objectForKey:v38];
  }

  v40 = v39;

  if (v40)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10000C848(&v66, v65);
  }

  else
  {
    memset(v65, 0, 32);
  }

  v41 = v64;
  sub_10000A45C(&qword_100092CB8, &qword_100072C40);
  v42 = swift_dynamicCast();
  return (*(v41 + 56))(a5, v42 ^ 1u, 1, a4);
}

id sub_100016230(char a1, unsigned __int8 a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (a1 == 1)
    {
      v52 = v7;
      v10 = 0xD00000000000001BLL;
      sub_10000A45C(&unk_100092D10, &unk_100072C00);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_100072BE0;
      v12 = "oreChanged";
      if (a2 <= 2u)
      {
        if (a2)
        {
          if (a2 == 1)
          {
            v20 = "APLogCloudCollectionEnabled";
            v21 = 0xD000000000000025;
          }

          else
          {
            v20 = "tionEnabledExpiration";
            v21 = 0xD00000000000002ELL;
          }
        }

        else
        {
          v21 = 0xD00000000000001BLL;
          v20 = "oreChanged";
        }
      }

      else if (a2 > 4u)
      {
        if (a2 == 5)
        {
          v13 = "intelligenceManagerEnabledOverride";
          goto LABEL_14;
        }

        v20 = "gerEnabledOverride";
        v21 = 0xD000000000000018;
      }

      else
      {
        if (a2 == 3)
        {
          v13 = "cloudPairingManagerEnabledOverride";
LABEL_14:
          v20 = (v13 - 32);
          v21 = 0xD000000000000022;
          goto LABEL_19;
        }

        v20 = "gerEnabledOverride";
        v21 = 0xD00000000000001BLL;
      }

LABEL_19:
      v22 = v20 | 0x8000000000000000;
      v23 = objc_opt_self();
      *(v11 + 32) = v21;
      *(v11 + 40) = v22;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v55[0] = 0;
      v25 = [v23 readPrefKeys:isa error:v55];

      v26 = v55[0];
      if (!v25)
      {
        v30 = v55[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
        v31 = sub_100039280();
        (*(v5 + 16))(v9, v31, v52);
        swift_errorRetain();
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v55[0] = v51;
          v35 = "debugManagerEnabledOverride";
          *v34 = 136315394;
          v36 = 0xD000000000000022;
          v37 = 0xD000000000000018;
          if (a2 == 5)
          {
            v37 = 0xD000000000000022;
          }

          else
          {
            v35 = "gerEnabledOverride";
          }

          v38 = "tionExpirationIntervalOverride";
          if (a2 != 3)
          {
            v36 = 0xD00000000000001BLL;
            v38 = "gerEnabledOverride";
          }

          if (a2 <= 4u)
          {
            v35 = v38;
          }

          else
          {
            v36 = v37;
          }

          v39 = "APLogCloudCollectionEnabled";
          v40 = 0xD000000000000025;
          if (a2 != 1)
          {
            v40 = 0xD00000000000002ELL;
            v39 = "tionEnabledExpiration";
          }

          if (a2)
          {
            v41 = v40;
          }

          else
          {
            v41 = 0xD00000000000001BLL;
          }

          if (!a2)
          {
            v39 = "oreChanged";
          }

          if (a2 <= 2u)
          {
            v42 = v41;
          }

          else
          {
            v42 = v36;
          }

          if (a2 <= 2u)
          {
            v43 = v39;
          }

          else
          {
            v43 = v35;
          }

          v44 = sub_1000034B8(v42, v43 | 0x8000000000000000, v55);

          *(v34 + 4) = v44;
          *(v34 + 12) = 2080;
          swift_getErrorValue();
          v45 = Error.localizedDescription.getter();
          v47 = sub_1000034B8(v45, v46, v55);

          *(v34 + 14) = v47;
          _os_log_impl(&_mh_execute_header, v32, v33, "Unable to get BOOL for key: %s due to: %s", v34, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        (*(v5 + 8))(v9, v52);
        return 0;
      }

      v27 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v26;

      if (a2 <= 2u)
      {
        if (a2)
        {
          if (a2 == 1)
          {
            v12 = "APLogCloudCollectionEnabled";
            v10 = 0xD000000000000025;
          }

          else
          {
            v12 = "tionEnabledExpiration";
            v10 = 0xD00000000000002ELL;
          }
        }
      }

      else
      {
        if (a2 > 4u)
        {
          if (a2 != 5)
          {
            v12 = "gerEnabledOverride";
            v10 = 0xD000000000000018;
            goto LABEL_58;
          }

          v29 = "intelligenceManagerEnabledOverride";
        }

        else
        {
          if (a2 != 3)
          {
            v12 = "gerEnabledOverride";
            goto LABEL_58;
          }

          v29 = "cloudPairingManagerEnabledOverride";
        }

        v12 = (v29 - 32);
        v10 = 0xD000000000000022;
      }

LABEL_58:
      v53 = v10;
      v54 = v12 | 0x8000000000000000;
      AnyHashable.init<A>(_:)();
      if (*(v27 + 16) && (v48 = sub_10000C7B0(v55), (v49 & 1) != 0))
      {
        sub_100003690(*(v27 + 56) + 32 * v48, v56);
        sub_10000C7F4(v55);

        if (swift_dynamicCast())
        {
          return v53;
        }
      }

      else
      {

        sub_10000C7F4(v55);
      }

      return 0;
    }

    v18 = [objc_opt_self() standardUserDefaults];
    v19 = String._bridgeToObjectiveC()();

    v17 = [v18 BOOLForKey:v19];
  }

  else
  {
    v14 = NSUbiquitousKeyValueStore.bluetoothCloudDefaults.unsafeMutableAddressor();
    swift_beginAccess();
    v15 = *v14;
    v16 = String._bridgeToObjectiveC()();

    v17 = [v15 BOOLForKey:v16];
  }

  return v17;
}

void sub_100016A58(char a1, unsigned __int8 a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    v14 = NSUbiquitousKeyValueStore.bluetoothCloudDefaults.unsafeMutableAddressor();
    swift_beginAccess();
    v15 = *v14;
    v16 = String._bridgeToObjectiveC()();

    [v15 doubleForKey:v16];

    return;
  }

  if (a1 != 1)
  {
    v17 = [objc_opt_self() standardUserDefaults];
    v18 = String._bridgeToObjectiveC()();

    [v17 doubleForKey:v18];

    return;
  }

  v50 = v7;
  v10 = 0xD00000000000001BLL;
  sub_10000A45C(&unk_100092D10, &unk_100072C00);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100072BE0;
  v12 = "oreChanged";
  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v19 = "APLogCloudCollectionEnabled";
        v20 = 0xD000000000000025;
      }

      else
      {
        v19 = "tionEnabledExpiration";
        v20 = 0xD00000000000002ELL;
      }
    }

    else
    {
      v20 = 0xD00000000000001BLL;
      v19 = "oreChanged";
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v13 = "intelligenceManagerEnabledOverride";
      goto LABEL_14;
    }

    v19 = "gerEnabledOverride";
    v20 = 0xD000000000000018;
  }

  else
  {
    if (a2 == 3)
    {
      v13 = "cloudPairingManagerEnabledOverride";
LABEL_14:
      v19 = (v13 - 32);
      v20 = 0xD000000000000022;
      goto LABEL_19;
    }

    v19 = "gerEnabledOverride";
    v20 = 0xD00000000000001BLL;
  }

LABEL_19:
  v21 = v19 | 0x8000000000000000;
  v22 = objc_opt_self();
  *(v11 + 32) = v20;
  *(v11 + 40) = v21;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v53[0] = 0;
  v24 = [v22 readPrefKeys:isa error:v53];

  v25 = v53[0];
  if (v24)
  {
    v26 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v25;

    if (a2 <= 2u)
    {
      if (a2)
      {
        if (a2 == 1)
        {
          v12 = "APLogCloudCollectionEnabled";
          v10 = 0xD000000000000025;
        }

        else
        {
          v12 = "tionEnabledExpiration";
          v10 = 0xD00000000000002ELL;
        }
      }

      goto LABEL_58;
    }

    if (a2 > 4u)
    {
      if (a2 != 5)
      {
        v12 = "gerEnabledOverride";
        v10 = 0xD000000000000018;
        goto LABEL_58;
      }

      v28 = "intelligenceManagerEnabledOverride";
    }

    else
    {
      if (a2 != 3)
      {
        v12 = "gerEnabledOverride";
        goto LABEL_58;
      }

      v28 = "cloudPairingManagerEnabledOverride";
    }

    v12 = (v28 - 32);
    v10 = 0xD000000000000022;
LABEL_58:
    v51 = v10;
    v52 = v12 | 0x8000000000000000;
    AnyHashable.init<A>(_:)();
    if (*(v26 + 16) && (v47 = sub_10000C7B0(v53), (v48 & 1) != 0))
    {
      sub_100003690(*(v26 + 56) + 32 * v47, v54);
      sub_10000C7F4(v53);

      swift_dynamicCast();
    }

    else
    {

      sub_10000C7F4(v53);
    }

    return;
  }

  v29 = v53[0];
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v30 = sub_100039280();
  (*(v5 + 16))(v9, v30, v50);
  swift_errorRetain();
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v53[0] = v49;
    v34 = "debugManagerEnabledOverride";
    *v33 = 136315394;
    v35 = 0xD000000000000022;
    v36 = 0xD000000000000018;
    if (a2 == 5)
    {
      v36 = 0xD000000000000022;
    }

    else
    {
      v34 = "gerEnabledOverride";
    }

    v37 = "tionExpirationIntervalOverride";
    if (a2 != 3)
    {
      v35 = 0xD00000000000001BLL;
      v37 = "gerEnabledOverride";
    }

    if (a2 <= 4u)
    {
      v34 = v37;
    }

    else
    {
      v35 = v36;
    }

    v38 = "APLogCloudCollectionEnabled";
    v39 = 0xD000000000000025;
    if (a2 != 1)
    {
      v39 = 0xD00000000000002ELL;
      v38 = "tionEnabledExpiration";
    }

    if (a2)
    {
      v40 = v39;
    }

    else
    {
      v40 = 0xD00000000000001BLL;
    }

    if (!a2)
    {
      v38 = "oreChanged";
    }

    if (a2 <= 2u)
    {
      v41 = v40;
    }

    else
    {
      v41 = v35;
    }

    if (a2 <= 2u)
    {
      v42 = v38;
    }

    else
    {
      v42 = v34;
    }

    v43 = sub_1000034B8(v41, v42 | 0x8000000000000000, v53);

    *(v33 + 4) = v43;
    *(v33 + 12) = 2080;
    swift_getErrorValue();
    v44 = Error.localizedDescription.getter();
    v46 = sub_1000034B8(v44, v45, v53);

    *(v33 + 14) = v46;
    _os_log_impl(&_mh_execute_header, v31, v32, "Unable to get double for key: %s due to: %s", v33, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  (*(v5 + 8))(v9, v50);
}

uint64_t sub_1000172A4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v3 = 0xD00000000000001BLL;
  v4 = "oreChanged";
  v5 = "debugManagerEnabledOverride";
  v6 = 0xD000000000000022;
  v7 = 0xD000000000000018;
  if (a3 == 5)
  {
    v7 = 0xD000000000000022;
  }

  else
  {
    v5 = "gerEnabledOverride";
  }

  v8 = "tionExpirationIntervalOverride";
  if (a3 != 3)
  {
    v6 = 0xD00000000000001BLL;
    v8 = "gerEnabledOverride";
  }

  if (a3 <= 4u)
  {
    v5 = v8;
  }

  else
  {
    v6 = v7;
  }

  v9 = "APLogCloudCollectionEnabled";
  v10 = 0xD000000000000025;
  if (a3 != 1)
  {
    v10 = 0xD00000000000002ELL;
    v9 = "tionEnabledExpiration";
  }

  if (a3)
  {
    v3 = v10;
    v4 = v9;
  }

  if (a3 <= 2u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v6;
  }

  if (a3 <= 2u)
  {
    v12 = v4;
  }

  else
  {
    v12 = v5;
  }

  v13 = *(a1 + 16);
  if (v13)
  {
    v15 = (a1 + 32);
    do
    {
      v16 = *v15++;
      sub_10001801C(v16, v11, v12 | 0x8000000000000000, a2);
      --v13;
    }

    while (v13);
  }
}

uint64_t sub_1000173CC(char a1, uint64_t a2, unsigned __int8 a3)
{
  v4 = 0xD00000000000001BLL;
  v5 = "oreChanged";
  v6 = "debugManagerEnabledOverride";
  v7 = 0xD000000000000022;
  v8 = 0xD000000000000018;
  if (a3 == 5)
  {
    v8 = 0xD000000000000022;
  }

  else
  {
    v6 = "gerEnabledOverride";
  }

  v9 = "tionExpirationIntervalOverride";
  if (a3 != 3)
  {
    v7 = 0xD00000000000001BLL;
    v9 = "gerEnabledOverride";
  }

  if (a3 <= 4u)
  {
    v6 = v9;
  }

  else
  {
    v7 = v8;
  }

  v10 = "APLogCloudCollectionEnabled";
  v11 = 0xD000000000000025;
  if (a3 != 1)
  {
    v11 = 0xD00000000000002ELL;
    v10 = "tionEnabledExpiration";
  }

  if (a3)
  {
    v4 = v11;
    v5 = v10;
  }

  if (a3 <= 2u)
  {
    v12 = v4;
  }

  else
  {
    v12 = v7;
  }

  if (a3 <= 2u)
  {
    v13 = v5;
  }

  else
  {
    v13 = v6;
  }

  sub_10001801C(a1, v12, v13 | 0x8000000000000000, a2);
}

uint64_t sub_1000174D8()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

unint64_t sub_1000175D0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100018B1C(*a1);
  *a2 = result;
  return result;
}

void sub_100017600(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000001BLL;
  v3 = *v1;
  v4 = "oreChanged";
  v5 = "debugManagerEnabledOverride";
  v6 = 0xD000000000000022;
  v7 = 0xD000000000000018;
  if (v3 == 5)
  {
    v7 = 0xD000000000000022;
  }

  else
  {
    v5 = "gerEnabledOverride";
  }

  v8 = "tionExpirationIntervalOverride";
  if (v3 != 3)
  {
    v6 = 0xD00000000000001BLL;
    v8 = "gerEnabledOverride";
  }

  if (*v1 <= 4u)
  {
    v5 = v8;
  }

  else
  {
    v6 = v7;
  }

  v9 = "APLogCloudCollectionEnabled";
  v10 = 0xD000000000000025;
  if (v3 != 1)
  {
    v10 = 0xD00000000000002ELL;
    v9 = "tionEnabledExpiration";
  }

  if (*v1)
  {
    v2 = v10;
    v4 = v9;
  }

  if (*v1 > 2u)
  {
    v2 = v6;
    v4 = v5;
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

char *sub_1000176D4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000A45C(&unk_100092D10, &unk_100072C00);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1000177E0(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000A45C(&qword_100093168, &qword_100073048);
  v10 = *(sub_10000A45C(&qword_100092FA8, &unk_100075380) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_10000A45C(&qword_100092FA8, &unk_100075380) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1000179D0(char *a1, int64_t a2, char a3)
{
  result = sub_100017A10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1000179F0(size_t a1, int64_t a2, char a3)
{
  result = sub_100017B1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100017A10(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000A45C(&unk_100092D10, &unk_100072C00);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}