void FireMessageHandler::ExclusiveEntryCheck::enter(unsigned int *a1, signed int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v9 = atomic_load(a1);
  if (v9 == 3)
  {
    atomic_store(a2, a1);
    v10 = &a1[2 * a2];
    v11 = *(v10 + 1);
    *(v10 + 1) = v11 + 1;
    if (!v11)
    {
      FireDeviceLog::DeviceLogBase(5, "ExclusiveEntryCheck,firstEntryofType,%d,recorded", a3, a4, a5, a6, a7, a8, a2);
    }

    FireDeviceLog::DeviceLogBase(8, "ExclusiveEntryCheck,enter,%d", a3, a4, a5, a6, a7, a8, v8);
  }

  else
  {
    v12 = atomic_load(a1);
    FireDeviceLog::DeviceLogBase(1, "ExclusiveEntryCheck,failed,active,%d,new,%d,", a3, a4, a5, a6, a7, a8, v12);

    DeviceFaultNotify("FireMessageHandler.cpp", 825, "enter", "ExclusiveEntryCheck,failed,active,%d,new,%d,");
  }
}

void FireDeviceLog::DeviceLogBase(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v14 = *MEMORY[0x29EDCA608];
  if (*FireDeviceLog::StaticSetting::fInstance >= a1)
  {
    FireDeviceLog::GetLineLeading(0x26, a1, &v12);
    LODWORD(a2) = vsnprintf(__str, 0x100uLL, a2, &a9);
    std::string::append(&v12, __str);
    if (a2 >= 255)
    {
      std::string::append(&v12, "...");
    }

    if (!FireResourceMgr::fInstance)
    {
      operator new();
    }

    (*(**(FireResourceMgr::fInstance + 16) + 16))(*(FireResourceMgr::fInstance + 16), a1, &v12);
    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }
  }

  v11 = *MEMORY[0x29EDCA608];
}

void FireMessageHandler::ExclusiveEntryCheck::exit(FireMessageHandler::ExclusiveEntryCheck *this)
{
  if (!FireResourceMgr::fInstance)
  {
    operator new();
  }

  (*(**FireResourceMgr::fInstance + 112))();
  v2 = atomic_load(this);
  FireDeviceLog::DeviceLogBase(8, "ExclusiveEntryCheck,exit,%d", v3, v4, v5, v6, v7, v8, v2);
  atomic_store(3u, this);
}

uint64_t gnss::FireGnssDevice::setConfigEnableGnssConstellations(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  FireDeviceLog::DeviceLogBase(6, "#fgd,setConfigEnableGnssConstellations,enableFlags,0x%x", a3, a4, a5, a6, a7, a8, a2);
  if (a2)
  {
    v17 = *(a1 + 40);
    if ((*(v17 + 1356) & 0xFFFFFFFE) == 2)
    {
      FireMessageHandler::setAssistanceNWRti(v17, a2, v11, v12, v13, v14, v15, v16);
      v18 = 1;
    }

    else
    {
      *(v17 + 1056) = a2;
      v18 = 1;
      *(v17 + 1060) = 1;
    }
  }

  else
  {
    v18 = 4;
  }

  return std::function<void ()(gnss::Result)>::operator()(a3, v18);
}

uint64_t FireMessageHandler::send(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = a2;
  if (*(a1 + 1356) != 3 && (a2 == 1073741850 || a2 == 1073741825))
  {
    std::deque<FireMessageHandler::Message>::push_back((a1 + 1080), &v24);
    FireDeviceLog::DeviceLogBase(5, "send,message,StartCompletedd,%d,queued", v10, v11, v12, v13, v14, v15, v24);
  }

  else
  {
    FireMessageHandler::ExclusiveEntryCheck::enter((a1 + 1008), 1, a3, a4, a5, a6, a7, a8);
    FireMessageHandler::messageHandler(a1, a2, v16, v17, v18, v19, v20, v21, v23);
    FireMessageHandler::ExclusiveEntryCheck::exit((a1 + 1008));
  }

  return 1;
}

uint64_t std::function<void ()(gnss::Result)>::operator()(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t gnss::FireGnssDevice::start(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v41 = *MEMORY[0x29EDCA608];
  *(a1 + 360) = 0;
  FireDeviceLog::DeviceLogBase(5, "Version %s, build at %s", a3, a4, a5, a6, a7, a8, "FIRE@125.0.3 GLL@643487");
  FireDeviceLog::DeviceLogBase(5, "#fgd,start,coexConfig,0x%llx", v12, v13, v14, v15, v16, v17, a2);
  v18 = *(a1 + 40);
  *(v18 + 2192) = a2;
  FireMessageHandler::send(v18, 1073741840, v19, v20, v21, v22, v23, v24);
  v25 = *(a1 + 40);
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v40, a4);
  std::function<void ()(gnss::Result)>::operator=((v25 + 944), v40);
  FireDeviceLog::DeviceLogBase(6, "#fmh,setOnEngineStartCompleted,%p", v26, v27, v28, v29, v30, v31, v40);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v40);
  FireMessageHandler::send(*(a1 + 40), 0x40000000, v32, v33, v34, v35, v36, v37);
  result = std::function<void ()(gnss::Result)>::operator()(a3, 1);
  v39 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29879AE98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void FireMessageHandler::messageHandler(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v101 = *MEMORY[0x29EDCA608];
  if (a2 == 1073741831)
  {
    if (*(a1 + 1784))
    {
      memcpy(__dst, (*(*(a1 + 1752) + ((*(a1 + 1776) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 3560 * (*(a1 + 1776) & 0xFLL)), sizeof(__dst));
      FireMessageHandler::logFireOnMsg(1073741831, *__dst);
      (*(**(a1 + 1296) + 520))();
      v10 = vaddq_s64(*(a1 + 1776), xmmword_298A2F6E0);
      *(a1 + 1776) = v10;
      if (v10.i64[0] >= 0x20uLL)
      {
        operator delete(**(a1 + 1752));
        *(a1 + 1752) += 8;
        *(a1 + 1776) -= 16;
      }
    }

    else
    {
      v14 = "fAssistanceExternalSensor.empty()";
LABEL_10:
      v15 = 2;
LABEL_67:
      FireDeviceLog::DeviceLogBase(v15, v14, a3, a4, a5, a6, a7, a8, v80);
    }

LABEL_68:
    v74 = *MEMORY[0x29EDCA608];
    return;
  }

  FireMessageHandler::logFireOnMsg(a2, -1);
  switch(a2)
  {
    case 1073741824:
      FireMessageHandler::EngineState::update((a1 + 1356), 1, a3, a4, a5, a6, a7, a8);
      if (FireConfig::isSvIqDataEnabled((a1 + 1048)))
      {
        v56 = FireCallback::GlReqOnSvIqData;
      }

      else
      {
        v56 = 0;
      }

      GlRequestImplGnssMeasData = BlueFin::GlDbgRequest::CreateGlRequestImplGnssMeasData(CbGlOnMemAlloc, CbGlOnMemFree, FireCallback::GlReqOnStart, FireCallback::GlReqOnGnssMeasData, 0, FireCallback::GlReqOnGnssSvInfoData, 0, v56, 0);
      (*(*GlRequestImplGnssMeasData + 72))(GlRequestImplGnssMeasData, FireCallback::GlReqOnStop);
      (*(*GlRequestImplGnssMeasData + 16))(GlRequestImplGnssMeasData, 0);
      FireMessageHandler::startRequest(a1, 2, GlRequestImplGnssMeasData);
      GlRequestImplPosPeriodic = BlueFin::GlDbgRequest::CreateGlRequestImplPosPeriodic(CbGlOnMemAlloc, CbGlOnMemFree, FireCallback::GlReqOnStart, 0x3E8u, 60, 400);
      (*(*GlRequestImplPosPeriodic + 72))(GlRequestImplPosPeriodic, FireCallback::GlReqOnStop);
      (*(*GlRequestImplPosPeriodic + 24))(GlRequestImplPosPeriodic, FireCallback::GlReqOnFixStatus);
      (*(*GlRequestImplPosPeriodic + 16))(GlRequestImplPosPeriodic, FireCallback::GlReqOnNmea);
      v59 = *MEMORY[0x29EDCA608];

      FireMessageHandler::startRequest(a1, 0, GlRequestImplPosPeriodic);
      return;
    case 1073741825:
      FireMessageHandler::stopRequest(a1, 1);
      FireMessageHandler::stopRequest(a1, 0);
      v45 = *MEMORY[0x29EDCA608];

      FireMessageHandler::stopRequest(a1, 2);
      return;
    case 1073741826:
      FireDeviceLog::DeviceLogBase(6, "#fmh SetAllowGnssDwellDutyCycling,%d", a3, a4, a5, a6, a7, a8, *(a1 + 1352));
      v54 = *(**(a1 + 1296) + 208);
      v55 = *MEMORY[0x29EDCA608];

      v54();
      return;
    case 1073741827:
      if (*(a1 + 1692) == 1)
      {
        memcpy(__dst, (a1 + 1424), 0x108uLL);
        v46 = *(a1 + 1688);
        (*(**(a1 + 1296) + 360))();
        if (*(a1 + 1692) == 1)
        {
          *(a1 + 1692) = 0;
        }
      }

      goto LABEL_68;
    case 1073741828:
      if (*(a1 + 1736))
      {
        v50 = (*(*(a1 + 1704) + 8 * (*(a1 + 1728) / 0x55uLL)) + 48 * (*(a1 + 1728) % 0x55uLL));
        v51 = *v50;
        v52 = v50[2];
        *&__dst[16] = v50[1];
        *&__dst[32] = v52;
        *__dst = v51;
        (*(**(a1 + 1296) + 392))();
        *(a1 + 1728) = vaddq_s64(*(a1 + 1728), xmmword_298A2F6E0);
        std::deque<FireMessageHandler::GLRefPositionExtended>::__maybe_remove_front_spare[abi:ne200100](a1 + 1696);
        goto LABEL_68;
      }

      v77 = *MEMORY[0x29EDCA608];
      v44 = "fAsstPosition.empty()";
      goto LABEL_74;
    case 1073741829:
      goto LABEL_12;
    case 1073741830:
      v60 = (*(**(a1 + 1296) + 640))(*(a1 + 1296));
      if (v60 <= 1)
      {
        if (!v60)
        {
          v78 = *MEMORY[0x29EDCA608];
          v44 = "#fmh,injectAssistanceFile,GL_READ_LTO_SUCCESS";
          goto LABEL_64;
        }

        if (v60 != 1)
        {
          goto LABEL_68;
        }

        v61 = *MEMORY[0x29EDCA608];
        v44 = "#fmh,#warning,injectAssistanceFile,GL_READ_LTO_NOT_READY";
        goto LABEL_80;
      }

      if (v60 == 2)
      {
        v79 = *MEMORY[0x29EDCA608];
        v44 = "#fmh,#warning,injectAssistanceFile,GL_READ_LTO_IGNORED";
LABEL_80:
        v72 = 5;
        goto LABEL_75;
      }

      if (v60 != 3)
      {
        goto LABEL_68;
      }

      v76 = *MEMORY[0x29EDCA608];
      v44 = "#fmh,injectAssistanceFile,GL_READ_LTO_FAILURE";
LABEL_74:
      v72 = 2;
LABEL_75:

      FireDeviceLog::DeviceLogBase(v72, v44, a3, a4, a5, a6, a7, a8, a9);
      return;
    case 1073741832:
      goto LABEL_68;
    case 1073741833:
      if (!*(a1 + 1880))
      {
        goto LABEL_68;
      }

      v65 = *MEMORY[0x29EDCA608];
      v64 = (a1 + 1840);
      goto LABEL_57;
    case 1073741834:
      if (!*(a1 + 1928))
      {
        goto LABEL_68;
      }

      v63 = *MEMORY[0x29EDCA608];
      v64 = (a1 + 1888);
LABEL_57:

      FireMessageHandler::SetAssistanceRawSensor(a1, v64, a3, a4, a5, a6, a7, a8, a9);
      return;
    case 1073741835:
      v33 = *(a1 + 2120);
      v34 = *(a1 + 2128);
      *(a1 + 2120) = 0u;
      *(a1 + 2136) = 0;
      if (v33 != v34)
      {
        v35 = v33;
        do
        {
          (*(**(a1 + 1296) + 400))(*(a1 + 1296), v35, 0);
          FireDeviceLog::DeviceLogBase(6, "setAssistanceNetworkGpsEphemeris,SatID,%d,pass,%d", v36, v37, v38, v39, v40, v41, *v35);
          v35 += 35;
        }

        while (v35 != v34);
      }

      if (!v33)
      {
        goto LABEL_68;
      }

      v42 = *MEMORY[0x29EDCA608];

      operator delete(v33);
      return;
    case 1073741836:
      v53 = *(a1 + 1960);
      (*(**(a1 + 1296) + 672))(*(a1 + 1296), v53, *(a1 + 1968));
      LOBYTE(v80) = v53;
      v14 = "#fmh,SetThermalRiskState,time,%llu,ns,pass,%d,level,%d";
      goto LABEL_51;
    case 1073741837:
      GlRequestImplSyncin = BlueFin::GlDbgRequest::CreateGlRequestImplSyncin(CbGlOnMemAlloc, CbGlOnMemFree, FireCallback::GlReqOnStart, -1, FireCallback::GlReqOnSyncinReport, FireCallback::GlReqOnSyncInStatus, FireCallback::GlReqOnSyncInLatched);
      (*(*GlRequestImplSyncin + 72))(GlRequestImplSyncin, FireCallback::GlReqOnStop);
      (*(*GlRequestImplSyncin + 80))(GlRequestImplSyncin, FireCallback::GlReqOnSyncinReportCurrentTime);
      FireMessageHandler::startRequest(a1, 1, GlRequestImplSyncin);
      DeviceCommon::GetMachContinuousTime(v48);
      LOBYTE(v80) = v49;
      v14 = "#tt,RequestOneShotTimeSync,StartRequest,%.3lf,preq,%p";
      goto LABEL_66;
    case 1073741840:
      *(a1 + 1048) = *(a1 + 2192);
      goto LABEL_68;
    case 1073741841:
      v62 = *MEMORY[0x29EDCA608];
      v44 = "kUpdateCoexConfig,notSupported";
      goto LABEL_74;
    case 1073741842:
      (*(**(a1 + 1296) + 744))(*(a1 + 1296), a1 + 2144);
      v80 = *(a1 + 2144);
      v14 = "#fmh,kUpdateRfBandEnable,fBandConstraints,%d,pass,%d";
LABEL_51:
      v15 = 5;
      goto LABEL_67;
    case 1073741843:
      v71 = *MEMORY[0x29EDCA608];
      v44 = "SetAssistanceAlongTrackVelocity not available on this platform.";
      goto LABEL_64;
    case 1073741844:
      FireMessageHandler::EngineState::update((a1 + 1356), 1, a3, a4, a5, a6, a7, a8);
      v99 = *(a1 + 1194);
      v97 = *(a1 + 1190);
      v98 = *(a1 + 1192);
      v95 = *(a1 + 1244);
      v96 = *(a1 + 1245);
      v94 = *(a1 + 1208);
      v92 = *(a1 + 1188);
      v88 = *(a1 + 1182);
      v90 = *(a1 + 1184);
      v82 = *(a1 + 1178);
      v85 = *(a1 + 1180);
      FireDeviceLog::DeviceLogBase(6, "factoryTestConf,gps,%d,glo,%d,%d,%d,bds,%d,nic,%d,item,%d,mode,%d,duraSec,%d,nOffset,%d,extend,%d,L5a(%d,%d),L5b(%d,%d)", *(a1 + 1196), *(a1 + 1200), *(a1 + 1204), v66, v67, v68, *(a1 + 1176));
      GlRequestImplFactoryTest = BlueFin::GlDbgRequest::CreateGlRequestImplFactoryTest(CbGlOnMemAlloc, CbGlOnMemFree, FireCallback::GlReqOnStart, *(a1 + 1176), *(a1 + 1178), *(a1 + 1184), *(a1 + 1186), *(a1 + 1200), *(a1 + 1204), WORD2(*(a1 + 1204)), HIWORD(*(a1 + 1204)), *(a1 + 1240), HIWORD(*(a1 + 1240)), *(a1 + 1244), HIBYTE(*(a1 + 1244)), *(a1 + 1190), HIBYTE(*(a1 + 1190)), *(a1 + 1192), SHIBYTE(v85), *(a1 + 1194), HIBYTE(*(a1 + 1194)), *(a1 + 1196), 0, 0, *(a1 + 1180), HIWORD(*(a1 + 1180)), *(a1 + 1188), HIBYTE(*(a1 + 1188)), *(a1 + 1246), SHIBYTE(v88), 255);
      v70 = GlRequestImplFactoryTest;
      if (*(a1 + 1184) != 255)
      {
        *(a1 + 1073) = 1;
      }

      (*(*GlRequestImplFactoryTest + 72))(GlRequestImplFactoryTest, FireCallback::GlReqOnStop);
      (*(*v70 + 64))(v70, FireCallback::GlReqOnFactTest);
      (*(*v70 + 16))(v70, FireCallback::GlReqOnNmea);
      FireMessageHandler::startRequest(a1, 3, v70);
      LOBYTE(v80) = v70;
      v14 = "#fmh,factoryTestRequest,0x%p";
      goto LABEL_66;
    case 1073741845:
    case 1073741847:
      v12 = *(**(a1 + 1296) + 352);
      v13 = *MEMORY[0x29EDCA608];

      v12();
      return;
    case 1073741846:
      v91 = *(a1 + 1264);
      v93 = *(a1 + 1268);
      v86 = *(a1 + 1256);
      v89 = *(a1 + 1260);
      v83 = *(a1 + 1252);
      FireDeviceLog::DeviceLogBase(6, "#fmh,start,freqScan,init,%d,end,%d,step,%d,rbw,%d,vbw,%d,flags,0x%X", a3, a4, a5, a6, a7, a8, *(a1 + 1248));
      v73 = BlueFin::GlDbgRequest::CreateGlRequestImplFactoryTest(CbGlOnMemAlloc, CbGlOnMemFree, FireCallback::GlReqOnStart, *(a1 + 1248), *(a1 + 1252), *(a1 + 1256), *(a1 + 1260), *(a1 + 1264), *(a1 + 1268), *(a1 + 1272));
      (*(*v73 + 72))(v73, FireCallback::GlReqOnStop);
      (*(*v73 + 64))(v73, FireCallback::GlReqOnFactTest);
      FireMessageHandler::startRequest(a1, 4, v73);
      LOBYTE(v80) = v73;
      v14 = "#fmh,freqScan,0x%p";
LABEL_66:
      v15 = 6;
      goto LABEL_67;
    case 1073741848:
      v84 = *(a1 + 1280);
      v87 = *(a1 + 1284);
      v81 = *(a1 + 1288);
      FireDeviceLog::DeviceLogBase(5, "#fftd,kStartCommStressRequest,duration,%d,loops,%u,maxKb,%u,startup,%u", a3, a4, a5, a6, a7, a8, *(a1 + 1276));
      *__dst = *(a1 + 1280);
      *&__dst[8] = *(a1 + 1288);
      GlRequestImplComStressTest = BlueFin::GlDbgRequest::CreateGlRequestImplComStressTest(CbGlOnMemAlloc, CbGlOnMemFree, FireCallback::GlReqOnStart, FireCallback::GlReqOnStressTest, *(a1 + 1276), __dst);
      (*(*GlRequestImplComStressTest + 72))(GlRequestImplComStressTest, FireCallback::GlReqOnStop);
      FireMessageHandler::startRequest(a1, 5, GlRequestImplComStressTest);
      FireDeviceLog::DeviceLogBase(6, "#fmh,commStress,0x%p", v17, v18, v19, v20, v21, v22, GlRequestImplComStressTest);
LABEL_12:
      v23 = *(a1 + 1936);
      v24 = *(a1 + 1944);
      if (v23 != v24)
      {
        v25 = (*(**(a1 + 1296) + 512))(*(a1 + 1296), v23, (v24 - v23));
        *(a1 + 1944) = *(a1 + 1936);
        v32 = "SetFail";
        if (v25)
        {
          v32 = "SetSuccess";
        }

        FireDeviceLog::DeviceLogBase(6, "GnssRTI,%s", v26, v27, v28, v29, v30, v31, v32);
      }

      goto LABEL_68;
    case 1073741850:
      if (!(*(**(a1 + 1296) + 504))(*(a1 + 1296), a1 + 1976))
      {
        v75 = *MEMORY[0x29EDCA608];
        v44 = "setNWRtiInfo,fail";
        goto LABEL_74;
      }

      v43 = *MEMORY[0x29EDCA608];
      v44 = "setNWRtiInfo,pass";
LABEL_64:
      v72 = 6;
      goto LABEL_75;
    default:
      LOBYTE(v80) = a2;
      v14 = "Unsupported message type: %d";
      goto LABEL_10;
  }
}

void FireMessageHandler::logFireOnMsg(int a1, int a2)
{
  if (!FireResourceMgr::fInstance)
  {
    operator new();
  }

  if ((*(**(FireResourceMgr::fInstance + 16) + 56))(*(FireResourceMgr::fInstance + 16)) >= 6)
  {
    if ((a1 - 0x40000000) > 0x1A)
    {
      if (a2 < 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v10 = off_29EEAC0D8[a1 - 0x40000000];
      if (a2 < 0)
      {
LABEL_6:
        FireDeviceLog::DeviceLogBase(6, "msg,%d,%s", v4, v5, v6, v7, v8, v9, a1);
        return;
      }
    }

    FireDeviceLog::DeviceLogBase(6, "msg,%d,%s,type,%d", v4, v5, v6, v7, v8, v9, a1);
  }
}

void FireDeviceLog::GetLineLeading(DeviceCommon *a1@<X0>, int a2@<W1>, std::string *a3@<X8>)
{
  v4 = a1;
  DeviceCommon::GetMachContinuousTime(a1);
  std::to_string(&v8, v6);
  std::string::push_back(&v8, 32);
  v9 = v8;
  memset(&v8, 0, sizeof(v8));
  std::string::push_back(&v9, v4);
  v10 = v9;
  memset(&v9, 0, sizeof(v9));
  if ((a2 - 1) > 8)
  {
    v7 = 78;
  }

  else
  {
    v7 = aFewmiddvv[a2 - 1];
  }

  std::string::push_back(&v10, v7);
  v11 = v10;
  memset(&v10, 0, sizeof(v10));
  std::string::push_back(&v11, 32);
  *a3 = v11;
  memset(&v11, 0, sizeof(v11));
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

void sub_29879C114(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 41) < 0)
  {
    operator delete(*(v28 - 64));
  }

  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::function<void ()(gnss::Result)>::operator=(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v5, a2);
  std::__function::__value_func<void ()(gnss::Result)>::swap[abi:ne200100](v5, a1);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v5);
  v3 = *MEMORY[0x29EDCA608];
  return a1;
}

uint64_t std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

void *std::__function::__value_func<void ()(gnss::Result)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x29EDCA608];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29879C4DC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void FireMessageHandler::EngineState::update(int *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  FireDeviceLog::DeviceLogBase(5, "EngineState,update,state,%d,new,%d", a3, a4, a5, a6, a7, a8, *a1);
  v16 = *a1;
  if (a2 == 2)
  {
    if ((v16 & 0xFFFFFFFE) == 2)
    {
      goto LABEL_7;
    }

    v16 = 2;
  }

  else
  {
    if ((v16 - 1) < 3)
    {
      goto LABEL_7;
    }

    v16 = 1;
  }

  *a1 = v16;
LABEL_7:
  if (v16 != a2)
  {
    FireDeviceLog::DeviceLogBase(3, "EngineState,update,noChange,state,%d,new,%d", v10, v11, v12, v13, v14, v15, v16);
  }
}

unint64_t FireConfig::isSvIqDataEnabled(FireConfig *this)
{
  if (!FireResourceMgr::fInstance)
  {
    operator new();
  }

  v1 = (*(**(FireResourceMgr::fInstance + 40) + 104))(*(FireResourceMgr::fInstance + 40));
  v2 = v1 >> 63;
  FireDeviceLog::DeviceLogBase(5, "#fc,isSvIqDataEnabled,%d", v3, v4, v5, v6, v7, v8, v1 < 0);
  return v2;
}

uint64_t BlueFin::GlDbgRequest::CreateGlRequestImplGnssMeasData(uint64_t (*a1)(uint64_t), void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  v15 = a2;
  if (BlueFin::GlDbgMemory::m_pInstance)
  {
    v17 = 1;
  }

  else
  {
    v17 = a1 == 0;
  }

  if (!v17 && a2 != 0)
  {
    v21 = a1(16);
    BlueFin::GlDbgMemory::m_pInstance = v21;
    v19 = a1;
    if (v21)
    {
      *v21 = a1;
      v21[1] = v15;
      v19 = a1;
    }

    goto LABEL_13;
  }

  v19 = a1;
  if (a1)
  {
LABEL_13:
    v20 = v19(136);
    goto LABEL_14;
  }

  v20 = (*BlueFin::GlDbgMemory::m_pInstance)(136);
LABEL_14:
  v22 = v20;
  if (v20)
  {
    *v20 = &unk_2A1F0A1D8;
    *(v20 + 72) = 0u;
    *(v20 + 40) = 0u;
    *(v20 + 56) = 0u;
    *(v20 + 8) = 0u;
    *(v20 + 24) = 0u;
    *(v20 + 88) = 0u;
    *(v20 + 104) = 0u;
    *(v20 + 72) = a3;
    *(v20 + 40) = a4;
    *(v20 + 48) = a5;
    *(v20 + 56) = a6;
    *(v20 + 120) = a7;
    *(v20 + 128) = a8;
    Memory = BlueFin::GlMemAlloc::glAllocateMemory(44, 288, a1);
    v24 = BlueFin::GlRequestImplGnssMeasData::Create(Memory, v22, BlueFin::GlDbgProxyGlReqOnStart, BlueFin::GlDbgProxyGlReqOnGnssMeasData, BlueFin::GlDbgProxyGlReqOnGnssNavData, BlueFin::GlDbgProxyGlReqOnGnssSvInfoData, BlueFin::GlDbgProxyGlReqOnGnssAgcInfoData, a8, a9);
    *(v22 + 24) = v24;
    if (!v24)
    {
      if (!v15)
      {
        v15 = *(BlueFin::GlDbgMemory::m_pInstance + 8);
      }

      v15(v22);
      return 0;
    }
  }

  return v22;
}

char *BlueFin::GlDbgProxy::End(BlueFin::GlDbgProxy *this, unsigned int a2)
{
  result = (*(*this + 120))(this);
  if (result)
  {
    if (*(this + 562) == 1)
    {
      ++*(this + 566);
    }

    result = BlueFin::GlDbgCodecBase::Encode(this, 0, 0, 1u, a2);
    *(this + 562) = 0;
    *(this + 1649) = 255;
    *(this + 825) = 0;
    *(this + 827) = 0;
    *(this + 826) = 0;
  }

  return result;
}

char *BlueFin::GlDbgCodec::WriteStart(BlueFin::GlDbgCodec *this, __int16 a2)
{
  v4 = a2;
  if ((*(*this + 120))(this))
  {
    BlueFin::GlDbgCodec::Write(this, this + 566);
  }

  result = (*(*this + 120))(this);
  if (result)
  {
    return BlueFin::GlDbgCodec::Write(this, &v4);
  }

  return result;
}

char *BlueFin::GlDbgCodec::WriteFinal(BlueFin::GlDbgCodec *this, __int16 a2)
{
  v4 = a2 | 0x8000;
  if ((*(*this + 120))(this))
  {
    BlueFin::GlDbgCodec::Write(this, this + 566);
  }

  result = (*(*this + 120))(this);
  if (result)
  {
    return BlueFin::GlDbgCodec::Write(this, &v4);
  }

  return result;
}

uint64_t DeviceCommon::GetMachContinuousTime(DeviceCommon *this)
{
  if (!FireResourceMgr::fInstance)
  {
    operator new();
  }

  v1 = *(**(FireResourceMgr::fInstance + 8) + 40);

  return v1();
}

uint64_t BlueFin::GlEventPump::Run(BlueFin::GlEventPump *this, unsigned int *a2, unsigned int *a3)
{
  v6 = BlueFin::GlUtils::m_pInstance;
  ++*(BlueFin::GlUtils::m_pInstance + 1088);
  v6[273] = (*(**v6 + 48))();
  if (a2)
  {
    *a2 = *(BlueFin::GlUtils::m_pInstance + 1092);
  }

  for (i = 0; i != 112; i += 8)
  {
    v8 = *(this + i);
    if (v8)
    {
      BlueFin::GlActive::UpdateTimers(v8);
    }
  }

  for (j = 0; j != 14; ++j)
  {
    while (1)
    {
      v10 = *(this + j);
      if (!v10 || !*(v10 + 87))
      {
        break;
      }

      if (j == 0xFFFF)
      {
        goto LABEL_18;
      }

      v11 = *(this + j);
      BlueFin::GlQueue::get((v11 + 40), v20);
      v12 = *(v11 + 32);
      v13 = *(v11 + 8);
      *(v11 + 32) = v13;
      do
      {
        v21 = 0;
        if (BlueFin::patch_dispatch(v13, v11, v20, &v21))
        {
          v13 = v21;
        }

        else
        {
          v13 = (*(v11 + 32))(v11, v20);
        }

        *(v11 + 32) = v13;
      }

      while (v13);
      j = 0;
      *(v11 + 32) = v12;
    }
  }

LABEL_18:
  v14 = BlueFin::GlUtils::m_pInstance;
  ++*(BlueFin::GlUtils::m_pInstance + 1088);
  v14[273] = (*(**v14 + 48))();
  if (a3)
  {
    *a3 = *(BlueFin::GlUtils::m_pInstance + 1092);
  }

  v15 = 0;
  v16 = 100000000;
  do
  {
    v17 = *(this + v15);
    if (v17)
    {
      CurrentTimeoutPeriod = BlueFin::GlActive::GetCurrentTimeoutPeriod(v17);
      if (CurrentTimeoutPeriod >= v16)
      {
        v16 = v16;
      }

      else
      {
        v16 = CurrentTimeoutPeriod;
      }
    }

    v15 += 8;
  }

  while (v15 != 112);
  return v16;
}

uint64_t BlueFin::GlDbgProxyGlEngineOnTimerRq(uint64_t a1)
{
  v1 = (*(*a1 + 656))(a1);

  return BlueFin::GlDbgProxy::HalGlEngineOnTimerRq(v1);
}

uint64_t BlueFin::GlQueue::putFIFO(BlueFin::GlQueue *this, int a2, char a3)
{
  if (!a2)
  {
    DeviceFaultNotify("glhsm_queue.cpp", 87, "putFIFO", "sig != 0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glhsm_queue.cpp", 87, "sig != 0");
  }

  if (!*this)
  {
    *this = a2;
    *(this + 1) = a3;
    *(this + 47) |= *(this + 46);
    return 1;
  }

  v3 = *(this + 21);
  if (v3 < *(this + 20))
  {
    *(this + 21) = v3 + 1;
    if (v3 >= *(this + 22))
    {
      *(this + 22) = v3 + 1;
    }

    v5 = *(this + 2);
    v4 = *(this + 3);
    *v4 = a2;
    v4[1] = a3;
    v4 += 2;
    *(this + 3) = v4;
    if (v4 == v5)
    {
      *(this + 3) = *(this + 1);
    }

    return 1;
  }

  return 0;
}

uint64_t BlueFin::GlPeEngineCallBacks::OnTimerRq(BlueFin::GlPeEngineCallBacks *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    return v1(*(this + 1));
  }

  else
  {
    return 0;
  }
}

uint64_t *BlueFin::GlEngineImplStd::CommonAPIcode(uint64_t *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void (**a19)(BlueFin::GlGpsTime *__hidden this), uint64_t a20, __int128 a21, __int128 a22, __int128 a23, __int128 a24, __int128 a25, __int128 a26, __int128 a27, __int128 a28, uint64_t a29, uint64_t a30, BlueFin::GlRequestImpl *__src, int a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, char a56, int a57, char a58)
{
  STACK[0x508] = *MEMORY[0x29EDCA608];
  if ((this[74] & 1) == 0)
  {
    v58 = this;
    *(this + 592) = 1;
    a18 = 0;
    this = BlueFin::GlEventPump::Run(this[2], &a18 + 1, &a18);
    v59 = *(v58 + 24);
    if (v59)
    {
      v60 = this;
      v61 = (v59 + 157980);
      v62 = v59 + 123784;
      v63 = HIDWORD(a18);
      *(v59 + 159304) = HIDWORD(a18);
      v64 = *(v59 + 159308);
      if (v64 == -1)
      {
        *(v59 + 157984) = 0;
        *(v59 + 157992) = 0;
      }

      else
      {
        v65 = v63 - v64;
        *(v59 + 157992) += v65;
        if (v65 <= *(v59 + 157984))
        {
          v65 = *(v59 + 157984);
        }

        *(v59 + 157984) = v65;
      }

      v66 = a18;
      if (v63 != -1)
      {
        v67 = a18 - v63;
        *(v59 + 157988) += v67;
        if (v67 <= *v61)
        {
          v67 = *v61;
        }

        *v61 = v67;
      }

      *(v59 + 159308) = v66;
      v68 = *v62 + 7201002;
      if (v68 >= 0x3E8)
      {
        v69 = *(*(v58 + 8) + 34) & 1;
      }

      else
      {
        v69 = 1;
      }

      if (*(v58 + 33))
      {
        v60 = 0;
        *(v58 + 33) = 1;
      }

      else
      {
        v70 = *(v59 + 123984);
        v71 = *(v59 + 126252);
        *(v58 + 33) = v70 & ~v69 & 1;
        if (v70 & ~v69)
        {
          v60 = 0;
        }

        else
        {
          v75 = v70 & v69;
          if ((v71 | v70 & v69))
          {
            v76 = *(v58 + 8);
            if (!v76)
            {
              DeviceFaultNotify("glengine_std.cpp", 384, "ReloadComponents", "m_ptGlSettingsImpl != nullptr");
              __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glengine_std.cpp", 384, "m_ptGlSettingsImpl != nullptr");
            }

            v77 = *(v76 + 32);
            v78 = *(v62 + 2469);
            if (v68 >= 0x3E8)
            {
              v79 = 78;
            }

            else
            {
              v79 = 89;
            }

            if (v78)
            {
              v80 = 89;
            }

            else
            {
              v80 = 78;
            }

            v191 = v80;
            if (v71)
            {
              v81 = 89;
            }

            else
            {
              v81 = 78;
            }

            if (v70)
            {
              v82 = 89;
            }

            else
            {
              v82 = 78;
            }

            v190 = v81;
            if ((v77 & 0x10000) != 0)
            {
              v83 = 89;
            }

            else
            {
              v83 = 78;
            }

            if ((v77 & 0x4000) != 0)
            {
              v84 = 89;
            }

            else
            {
              v84 = 78;
            }

            GlCustomLog(14, "ReloadComponents() PSF={DERATE_TIME:%c  RECOVER_JOBS:%c}  Reset:%c  Restart:%c  CloseCom:%c  Abort:%c  LmsRollover:%c\n", v84, v83, v82, v190, v191, 78, v79);
            v85 = *(v58 + 440);
            v86 = (*(v58 + 432))(31680);
            v87 = v86;
            if (!v86)
            {
              DeviceFaultNotify("glmemalloc.h", 74, "GlStackAlloc", "m_ptr != nullptr");
              __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmemalloc.h", 74, "m_ptr != nullptr");
            }

            v193 = v85;
            v88 = *(v58 + 24);
            *v86 = 0;
            *(v86 + 8) = 0;
            v196 = v86 + 16;
            bzero((v86 + 16), 0x362uLL);
            BlueFin::GlPePendingBag::GlPePendingBag((v87 + 896));
            v89 = (v87 + 21188);
            v90 = (v88 + 136408);
            *(v87 + 5280) = 0;
            v192 = (v87 + 5288);
            *(v87 + 5288) = 0;
            *(v87 + 5296) = -1;
            *(v87 + 5304) = xmmword_298A3BA20;
            *(v87 + 5320) = 0;
            *(v87 + 5344) = 0;
            v91 = (v87 + 5352);
            v92 = 15840;
            do
            {
              *(v91 - 2) = 112;
              *v91 = 0uLL;
              v91[1] = 0uLL;
              v91[2] = 0uLL;
              v91[3] = 0uLL;
              *(v91 + 60) = 0uLL;
              v91 += 5;
              v92 -= 80;
            }

            while (v92);
            *v89 = 0;
            *(v87 + 22368) = v87 + 21216;
            v195 = v87 + 5348;
            bzero((v87 + 5348), 0x3DE0uLL);
            bzero((v87 + 21216), 0x480uLL);
            *(v87 + 22768) = 0u;
            *(v87 + 22752) = 0u;
            *(v87 + 22736) = 0u;
            *(v87 + 22720) = 0u;
            *(v87 + 22704) = 0u;
            *(v87 + 22688) = 0u;
            *(v87 + 22672) = 0u;
            *(v87 + 22656) = 0u;
            *(v87 + 22640) = 0u;
            *(v87 + 22624) = 0u;
            *(v87 + 22608) = 0u;
            *(v87 + 22592) = 0u;
            *(v87 + 22576) = 0u;
            *(v87 + 22560) = 0u;
            *(v87 + 22544) = 0u;
            *(v87 + 22528) = 0u;
            *(v87 + 22512) = 0u;
            *(v87 + 22496) = 0u;
            *(v87 + 22480) = 0u;
            *(v87 + 22464) = 0u;
            *(v87 + 22448) = 0u;
            *(v87 + 22432) = 0u;
            *(v87 + 22416) = 0u;
            *(v87 + 22400) = 0u;
            BlueFin::GlSatAidInfo::GlSatAidInfo(v87 + 22784);
            *(v87 + 31616) = v87 + 31628;
            *(v87 + 31624) = 8;
            *(v87 + 31628) = 0u;
            *(v87 + 31644) = 0u;
            *(v87 + 880) = *(v88 + 140258);
            *(v87 + 8) = 0;
            v93 = v87 + 592;
            do
            {
              v94 = BlueFin::GlPeReqBag::PopRequest((v88 + 137024));
              v95 = v94;
              if (!v94)
              {
                break;
              }

              v96 = *(v87 + 8);
              *(v196 + 8 * v96) = v94;
              v97 = *(BlueFin::GlUtils::m_pInstance + 1092) - *(v94 + 28);
              *(v93 + 4 * v96) = v97;
              GlCustomLog(14, "GlEngineImplStd::RecoverAllJobs: ActiveReq Id:%2hu  Type:%2u  ElapsedTime(ms):%u\n", *(v94 + 24), *(v94 + 16), v97);
              v98 = ++*(v87 + 8);
              *v87 |= 1 << *(v95 + 16);
            }

            while (v98 < 0x48);
            BlueFin::GlPePendingBag::operator=(v87 + 896, v88 + 132640);
            v194 = v75;
            if (*(v88 + 180968) == 1)
            {
              v99 = *(v88 + 180928);
              a28 = *(v88 + 180944);
              a29 = *(v88 + 180960);
              v100 = a29;
              v101 = *(v88 + 180880);
              a23 = *(v88 + 180864);
              a24 = v101;
              v103 = *(v88 + 180896);
              a26 = *(v88 + 180912);
              v102 = a26;
              a27 = v99;
              a25 = v103;
              v104 = *(v88 + 180848);
              a21 = *(v88 + 180832);
              a22 = v104;
              *(v87 + 5248) |= 0x10000u;
              *(v87 + 4544) = v104;
              *(v87 + 4608) = v102;
              v105 = a23;
              v106 = a24;
              *(v87 + 4528) = a21;
              *(v87 + 4592) = a25;
              *(v87 + 4576) = v106;
              *(v87 + 4560) = v105;
              *(v87 + 4656) = v100;
              *(v87 + 4640) = a28;
              *(v87 + 4624) = a27;
              *(v87 + 4520) = 1;
            }

            v107 = *v90;
            if (v107 >= 1)
            {
              v108 = v88 + 136416;
              do
              {
                v109 = v107 - 1;
                *v90 = v109;
                v110 = *(v108 + 8 * v109);
                *(v108 + 8 * v109) = 0;
                GlCustomLog(14, "GlEngineImplStd::RecoverAllJobs: PendingReq Id:%2hu  Type:%2u\n", *(v110 + 24), *(v110 + 16));
                *v87 |= 1 << *(v110 + 16);
                v107 = *v90;
              }

              while (v107 > 0);
            }

            v111 = *(v88 + 124816);
            if (v111 == -1)
            {
              v115 = 0;
              v113 = v87 + 4520;
              v114 = v194;
            }

            else
            {
              v112 = *(v88 + 124832);
              v113 = v87 + 4520;
              v114 = v194;
              if (v112 == 4294967300.0)
              {
                v115 = 0;
              }

              else
              {
                if ((v88 + 124808) != v192)
                {
                  *(v87 + 5288) = *(v88 + 124808);
                  *(v87 + 5296) = v111;
                  *(v87 + 5304) = *(v88 + 124824);
                  *(v87 + 5312) = v112;
                }

                *(v87 + 5320) = *(v88 + 124800);
                v115 = 1;
              }
            }

            *(v113 + 760) = v115;
            *(v113 + 824) = 0;
            BlueFin::GlGnssSetIterator::GlGnssSetIterator(&__src, (v87 + 992));
            v116 = a55;
            for (i = a56; a55 != 6 || a56 != 14; i = a56)
            {
              a57 = v116;
              a58 = i;
              LODWORD(a19) = v116;
              BYTE4(a19) = i;
              Mgr = BlueFin::GlPeGnssEphemerisMgr::GetMgr((v88 + 608), v116);
              if (Mgr)
              {
                v119 = (*(*Mgr + 112))(Mgr, &a19 + 4, 1);
                if (v119)
                {
                  if ((v119[8] & 0xF) == 1)
                  {
                    v120 = *(v113 + 824);
                    *(v113 + 824) = v120 + 1;
                    (*(*v119 + 264))(v119, v195 + 80 * v120);
                    if (*(v113 + 824) == 198)
                    {
                      break;
                    }
                  }
                }
              }

              BlueFin::GlGnssSetIterator::operator++(&__src);
              v116 = a55;
            }

            v122 = (*(v87 + 1160) + 8);
            v123 = 7;
            do
            {
              v124 = *(v122 - 1);
              v125 = *v122;
              v122 += 24;
              bzero(v124, ((4 * v125 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
              --v123;
            }

            while (v123);
            *v89 = 0;
            LOBYTE(__src) = *(v87 + 1336);
            v126 = *(v87 + 1328);
            v127 = 4 * __src;
            memcpy(&a32, v126, v127);
            WORD1(__src) = 0;
            BYTE1(__src) = 0;
            HIDWORD(__src) = a32;
            BlueFin::GlSetIterator::operator++(&__src);
            if (BYTE1(__src) != __src)
            {
              do
              {
                if (BlueFin::GlPeAlmMgr::GetAsstAlm(v88 + 34336, 0, (BYTE2(__src) + 1), (*(v87 + 22368) + 36 * *v89)))
                {
                  ++*v89;
                }

                BlueFin::GlSetIterator::operator++(&__src);
              }

              while (BYTE1(__src) != __src);
              v126 = *(v87 + 1328);
              v127 = 4 * *(v87 + 1336);
            }

            bzero(v126, ((v127 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
            BlueFin::GlPeReqBag::GetPreviousPositionBuffer((v88 + 137024), (v87 + 22400), 380, (v87 + 22780));
            *(v87 + 31664) = 0;
            if (*(v88 + 273552) < 10.0)
            {
              BlueFin::GlSatAidInfo::operator=(v87 + 22784, v88 + 273536);
              BlueFin::GlSetBase::operator=(v87 + 31616, v88 + 283624);
              v130 = *(v88 + 283652);
              *(v87 + 31628) = *(v88 + 283636);
              *(v87 + 31644) = v130;
              *(v87 + 31664) = 1;
            }

            if (v114)
            {
              v131 = *(*(v58 + 24) + 123784) + 7201002;
              v132 = v131 >= 0x3E8;
              if (v131 >= 0x3E8)
              {
                v133 = "Abnormal";
              }

              else
              {
                v133 = "Normal";
              }

              v134 = "Time is bad";
              if (!v132)
              {
                v134 = "LMS Rollover";
              }

              v135 = 78;
              if (*(v113 + 760))
              {
                v135 = 89;
              }

              GlCustomLog(10, "%s GlEngine restart. %s. Restarting.  RecoveryTimeValid:%c\n", v133, v134, v135);
            }

            v136 = *v87;
            BlueFin::GlEngineImplStd::DisposeComponents(v58, (*v87 == 0), v128, v129);
            BlueFin::GlEngineImplStd::setOnChipMeSetting(v58, v87, 0);
            if (v136)
            {
              if (BlueFin::GlEngineImplStd::LoadComponents(v58, 0))
              {
                v137 = *(v58 + 24);
                *(v137 + 140258) = *(v87 + 880);
                *(v137 + 180714) = 1;
                if (*(v87 + 8))
                {
                  v138 = 0;
                  do
                  {
                    v139 = (v93 + 8 * v138 - 576);
                    (*(**v139 + 464))(*v139, *(v93 + 4 * v138) > 0x3E8u);
                    __src = *v139;
                    BlueFin::GlPosEng::StartRequest(*(v58 + 24), &__src);
                    ++v138;
                  }

                  while (v138 < *(v87 + 8));
                }

                v140 = *(v87 + 4664);
                if (v140 >= 1)
                {
                  v141 = v87 + 4672;
                  do
                  {
                    LOWORD(v140) = v140 - 1;
                    *(v87 + 4664) = v140;
                    v142 = *(v141 + 8 * v140);
                    *(v141 + 8 * v140) = 0;
                    if (v142)
                    {
                      __src = v142;
                      BlueFin::GlPosEng::StartRequest(*(v58 + 24), &__src);
                      LOWORD(v140) = *(v87 + 4664);
                    }
                  }

                  while (v140 > 0);
                }

                BlueFin::GlPeReqBag::SetPreviousPositionBuffer((*(v58 + 24) + 137024), (v87 + 22400), 380, *(v87 + 22780));
                v143 = *(v58 + 24);
                *(v143 + 180714) = 0;
                BlueFin::GlReqSm::SetPendingBag((v143 + 126144), (v87 + 896));
                for (j = 0; j != 7; ++j)
                {
                  v145 = BlueFin::GlPeGnssEphemerisMgr::GetMgr((*(v58 + 24) + 608), j);
                  if (v145)
                  {
                    (*(*v145 + 224))(v145, v195, *(v113 + 824), 1);
                  }
                }

                if (*v89)
                {
                  v146 = 0;
                  v147 = 0;
                  do
                  {
                    BlueFin::GlReqSm::SetAsstAlm(*(v58 + 24) + 126144, (*(v87 + 22368) + v146));
                    ++v147;
                    v146 += 36;
                  }

                  while (v147 < *v89);
                }

                if ((v194 & 1) != 0 && *(v113 + 760) == 1)
                {
                  v148 = *(BlueFin::GlUtils::m_pInstance + 1092);
                  *&a21 = &off_2A1F0B5F0;
                  *(&a21 + 1) = 0;
                  BlueFin::GlPeGnssTime::GetGps(v192, &a21);
                  *v149.i64 = BlueFin::GlPeGnssTime::GetUncUs(v192, 0);
                  *v151.i64 = *v149.i64 + trunc(*v149.i64 * 2.32830644e-10) * -4294967300.0;
                  v152.f64[0] = NAN;
                  v152.f64[1] = NAN;
                  v153 = vnegq_f64(v152);
                  v154 = vbslq_s8(v153, v151, v149);
                  if (*v149.i64 > 4294967300.0)
                  {
                    v149.i64[0] = v154.i64[0];
                  }

                  if (*v149.i64 < -4294967300.0)
                  {
                    *v150.i64 = -*v149.i64;
                    *v149.i64 = -(*v149.i64 - trunc(*v149.i64 * -2.32830644e-10) * -4294967300.0);
                    v149 = vbslq_s8(v153, v149, v150);
                    *v149.i64 = -*v149.i64;
                  }

                  v155 = -*v149.i64;
                  v156 = *v149.i64;
                  v158 = *v149.i64 < 0.0;
                  *v149.i64 = (v148 - *(v87 + 5320));
                  if (v158)
                  {
                    v157 = -v155;
                  }

                  else
                  {
                    v157 = v156;
                  }

                  *v154.i64 = *v149.i64 * 0.001;
                  a20 = *(&a21 + 1);
                  a19 = &off_2A1F0B5F0;
                  *v149.i64 = *v149.i64 * 0.001 - trunc(*v149.i64 * 0.001);
                  v149.i64[0] = vbslq_s8(v153, v149, v154).i64[0];
                  v158 = *v149.i64 >= 0.0 && *v149.i64 < 1.0;
                  if (!v158)
                  {
                    DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
                    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
                  }

                  v159 = *v149.i64 * 4294967300.0 + 0.5;
                  v160 = v159;
                  v197 = *v154.i64;
                  v161 = HIDWORD(a21) + *v154.i64;
                  if (v159 >= 4294967300.0)
                  {
                    v160 = 0xFFFFFFFFLL;
                  }

                  v162 = v160 + DWORD2(a21);
                  LODWORD(a20) = v160 + DWORD2(a21);
                  HIDWORD(a20) = v161 + HIDWORD(v162);
                  GlCustomLog(14, "TimeRecovery(%u): GlEngineImplStd::ReloadComponents:  OsTime:%u  Lms:%.0lf  GpsWeek:%d  GpsTow:%.6lf\n", *(*(v58 + 24) + 123784), v148, *(v113 + 784), (v161 + HIDWORD(v162)) / 0x93A80, v162 * 2.32830644e-10 + ((v161 + HIDWORD(v162)) % 0x93A80));
                  BYTE6(__src) = 0;
                  v166 = (a19[4])(&a19);
                  LODWORD(v165) = a20;
                  *v166.i64 = (v165 * 2.32830644e-10 + (v164 % 0x93A80)) * 1000.0;
                  *v167.i64 = *v166.i64 + trunc(*v166.i64 * 2.32830644e-10) * -4294967300.0;
                  v168.f64[0] = NAN;
                  v168.f64[1] = NAN;
                  v169 = vnegq_f64(v168);
                  *&v170 = vbslq_s8(v169, v167, v166).u64[0];
                  if (*v166.i64 > 4294967300.0)
                  {
                    *v166.i64 = v170;
                  }

                  if (*v166.i64 < -4294967300.0)
                  {
                    *v163.i64 = -*v166.i64;
                    *v166.i64 = -(*v166.i64 - trunc(*v166.i64 * -2.32830644e-10) * -4294967300.0);
                    *v166.i64 = -*vbslq_s8(v169, v166, v163).i64;
                  }

                  if (*v166.i64 < 0.0)
                  {
                    v171 = --*v166.i64;
                  }

                  else
                  {
                    v171 = *v166.i64;
                  }

                  LODWORD(__src) = v171;
                  v172 = (a19[4])(&a19) / 0x93A80;
                  WORD2(__src) = v172;
                  if (v157 <= 0x30D40)
                  {
                    v173 = 200000;
                  }

                  else
                  {
                    v173 = v157;
                  }

                  if (*(v87 + 5296))
                  {
                    v174 = v173 + 5000000;
                  }

                  else
                  {
                    v174 = v173;
                  }

                  v175 = (*(a21 + 32))(&a21);
                  v176 = (*(a21 + 32))(&a21);
                  LODWORD(v177) = DWORD2(a21);
                  GlCustomLog(10, "Abnormal restart recover time [%d %.0f] + %.0f = [%hu %u]\n", v175 / 0x93A80, (v177 * 2.32830644e-10 + (v176 % 0x93A80)) * 1000.0, v197 * 1000.0, v172, v171);
                  v178 = *(v58 + 24);
                  if ((((v174 + 999) * 0x4189374BC6A7F0uLL) >> 64) <= 1)
                  {
                    v179 = 1;
                  }

                  else
                  {
                    v179 = ((v174 + 999) * 0x4189374BC6A7F0uLL) >> 64;
                  }

                  *(v178 + 350216) = 1;
                  BlueFin::GlReqSm::SetAsstTime(v178 + 126144, &__src, v179);
                }
              }

              else
              {
                if (*(v87 + 8))
                {
                  v180 = 0;
                  do
                  {
                    v181 = *(v196 + 8 * v180);
                    v182 = *(v181 + 56);
                    if (v182)
                    {
                      v182();
                      v181 = *(v196 + 8 * v180);
                    }

                    BlueFin::GlRequestBase::Destroy(v181);
                    ++v180;
                  }

                  while (v180 < *(v87 + 8));
                }

                v183 = v87 + 4672;
                while (1)
                {
                  v184 = *(v87 + 4664);
                  v185 = __OFSUB__(v184, 1);
                  v186 = v184 - 1;
                  if (v186 < 0 != v185)
                  {
                    break;
                  }

                  *(v87 + 4664) = v186;
                  v187 = *(v183 + 8 * v186);
                  *(v183 + 8 * v186) = 0;
                  v188 = *(v187 + 56);
                  if (v188)
                  {
                    v188(v187);
                  }

                  BlueFin::GlRequestBase::Destroy(v187);
                }
              }
            }

            v193(v87);
            if (*(v58 + 32) == 1)
            {
              v60 = BlueFin::GlEventPump::Run(*(v58 + 16), &a18 + 1, &a18);
            }

            else
            {
              v60 = 100000000;
            }
          }

          else if (*(v58 + 560) == 1 && *(v59 + 126253) == 1 && (*(*(v58 + 8) + 25964) & 1) == 0)
          {
            v189 = *(v58 + 344);
            if (v189)
            {
              v189(*(v58 + 272), 0);
              *(v58 + 560) = 0;
            }
          }

          else if (*(v59 + 180178) == 1)
          {
            BlueFin::GlPeReqBag::GetNonInstantaneousRequests(v59 + 137024, &a21);
            BlueFin::GlPePendingBag::GetNonInstantaneousRequests(*(v58 + 24) + 132640, &a19);
            LODWORD(__src) = a19 | a21;
            BlueFin::GlEngineImplStd::setOnChipMeSetting(v58, &__src, 0);
            v72 = *(v58 + 24);
            *(v72 + 180178) = 0;
            goto LABEL_20;
          }
        }
      }

      v72 = *(v58 + 24);
      if (!v72)
      {
LABEL_21:
        this = BlueFin::GlPeTimerMgr::UpdateExpirationTime((v58 + 600), v60, v72 & 1);
        *(v58 + 592) = 0;
        goto LABEL_22;
      }

LABEL_20:
      LOBYTE(v72) = *(v72 + 179704);
      goto LABEL_21;
    }
  }

LABEL_22:
  v73 = STACK[0x508];
  v74 = *MEMORY[0x29EDCA608];
  return this;
}

void *BlueFin::GlMemAlloc::glAllocateMemory(int a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (!a3 || (v4 = a2, (v5 = a3(a2)) == 0))
  {
    if (BlueFin::GlUtils::m_pInstance)
    {
      GlCustomLog(12, "OOM(%d)\n", a1);
    }

    DeviceFaultNotify("glmem_alloc.cpp", 80, "glAllocateMemory", "ptr != nullptr");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmem_alloc.cpp", 80, "ptr != nullptr");
  }

  return memset(v5, 165, v4);
}

uint64_t BlueFin::GlRequestImplGnssMeasData::Create(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  if (!a1)
  {
    DeviceFaultNotify("glrequest.cpp", 1231, "Create", "pvBuffer != nullptr");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glrequest.cpp", 1231, "pvBuffer != nullptr");
  }

  return BlueFin::GlRequestImplGnssMeasData::GlRequestImplGnssMeasData(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t BlueFin::GlRequestImplGnssMeasData::GlRequestImplGnssMeasData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  v10 = a9;
  *(a1 + 16) = 15;
  *(a1 + 20) = 1;
  *(a1 + 22) = -1;
  *(a1 + 28) = -1;
  *(a1 + 36) = -1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = a3;
  *(a1 + 64) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = a4;
  *a1 = &unk_2A1F168B0;
  *(a1 + 8) = a2;
  *(a1 + 88) = a5;
  *(a1 + 96) = a6;
  *(a1 + 104) = a7;
  *(a1 + 112) = a8;
  *(a1 + 120) = a9;
  if (a8)
  {
    GlCustomLog(14, "FireIQ dump feature enabled in GLL\n");
    v10 = *(a1 + 120);
  }

  if (v10 > 0x15F90)
  {
    *(a1 + 120) = 90000;
  }

  return a1;
}

BlueFin::GlDbgCodec *BlueFin::GlDbgRequest::SetOnStop(uint64_t a1, uint64_t a2)
{
  *(a1 + 80) = a2;
  v3 = *(a1 + 8);
  if (v3)
  {
    BlueFin::GlDbgCodec::WriteStart(v3, 3080);
    v4 = *(a1 + 8);
    v9 = BlueFin::GlDbgRequest::Id(a1, 0);
    BlueFin::GlDbgCodec::Write(v4, &v9);
    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  }

  (*(**(a1 + 24) + 72))(*(a1 + 24), BlueFin::GlDbgProxyGlReqOnStop);
  result = *(a1 + 8);
  if (result)
  {
    BlueFin::GlDbgCodec::WriteFinal(result, 3080);
    v6 = *(a1 + 8);
    v8 = BlueFin::GlDbgRequest::Id(a1, 0);
    BlueFin::GlDbgCodec::Write(v6, &v8);
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }

  return result;
}

BlueFin::GlDbgCodec *BlueFin::GlDbgRequest::SetOnNmea(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = a2;
  v4 = *(a1 + 8);
  if (v4)
  {
    BlueFin::GlDbgCodec::WriteStart(v4, 3077);
    v5 = *(a1 + 8);
    v13 = BlueFin::GlDbgRequest::Id(a1, 0);
    BlueFin::GlDbgCodec::Write(v5, &v13);
    v12 = a2 != 0;
    v6 = *(a1 + 8);
    if ((*(*v6 + 120))(v6))
    {
      BlueFin::GlDbgCodec::Write(v6, &v12);
    }

    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  }

  if (a2)
  {
    v7 = BlueFin::GlDbgProxyGlReqOnNmea;
  }

  else
  {
    v7 = 0;
  }

  (*(**(a1 + 24) + 16))(*(a1 + 24), v7);
  result = *(a1 + 8);
  if (result)
  {
    BlueFin::GlDbgCodec::WriteFinal(result, 3077);
    v9 = *(a1 + 8);
    v11 = BlueFin::GlDbgRequest::Id(a1, 0);
    BlueFin::GlDbgCodec::Write(v9, &v11);
    v10 = *(**(a1 + 8) + 32);

    return v10();
  }

  return result;
}

void FireMessageHandler::startRequest(uint64_t a1, int a2, uint64_t a3)
{
  v20 = a2;
  v21 = &v20;
  if (std::__hash_table<std::__hash_value_type<FireMessageHandler::Request,BlueFin::GlRequest *>,std::__unordered_map_hasher<FireMessageHandler::Request,std::__hash_value_type<FireMessageHandler::Request,BlueFin::GlRequest *>,std::hash<FireMessageHandler::Request>,std::equal_to<FireMessageHandler::Request>,true>,std::__unordered_map_equal<FireMessageHandler::Request,std::__hash_value_type<FireMessageHandler::Request,BlueFin::GlRequest *>,std::equal_to<FireMessageHandler::Request>,std::hash<FireMessageHandler::Request>,true>,std::allocator<std::__hash_value_type<FireMessageHandler::Request,BlueFin::GlRequest *>>>::find<FireMessageHandler::Request>((a1 + 1304), a2))
  {
    v18 = std::__hash_table<std::__hash_value_type<FireMessageHandler::Request,BlueFin::GlRequest *>,std::__unordered_map_hasher<FireMessageHandler::Request,std::__hash_value_type<FireMessageHandler::Request,BlueFin::GlRequest *>,std::hash<FireMessageHandler::Request>,std::equal_to<FireMessageHandler::Request>,true>,std::__unordered_map_equal<FireMessageHandler::Request,std::__hash_value_type<FireMessageHandler::Request,BlueFin::GlRequest *>,std::equal_to<FireMessageHandler::Request>,std::hash<FireMessageHandler::Request>,true>,std::allocator<std::__hash_value_type<FireMessageHandler::Request,BlueFin::GlRequest *>>>::__emplace_unique_key_args<FireMessageHandler::Request,std::piecewise_construct_t const&,std::tuple<FireMessageHandler::Request const&>,std::tuple<>>((a1 + 1304), a2)[3];
    FireDeviceLog::DeviceLogBase(2, "#fmh,startRequest,%p,%d,alreadyExist", v6, v7, v8, v9, v10, v11, v18);
  }

  else
  {
    std::__hash_table<std::__hash_value_type<FireMessageHandler::Request,BlueFin::GlRequest *>,std::__unordered_map_hasher<FireMessageHandler::Request,std::__hash_value_type<FireMessageHandler::Request,BlueFin::GlRequest *>,std::hash<FireMessageHandler::Request>,std::equal_to<FireMessageHandler::Request>,true>,std::__unordered_map_equal<FireMessageHandler::Request,std::__hash_value_type<FireMessageHandler::Request,BlueFin::GlRequest *>,std::equal_to<FireMessageHandler::Request>,std::hash<FireMessageHandler::Request>,true>,std::allocator<std::__hash_value_type<FireMessageHandler::Request,BlueFin::GlRequest *>>>::__emplace_unique_key_args<FireMessageHandler::Request,std::piecewise_construct_t const&,std::tuple<FireMessageHandler::Request const&>,std::tuple<>>((a1 + 1304), a2)[3] = a3;
    (*(**(a1 + 1296) + 248))(*(a1 + 1296), a3);
    v19 = *(a1 + 1328);
    FireDeviceLog::DeviceLogBase(6, "fmh,StartRequest,request,%p,%d,size,%zu", v12, v13, v14, v15, v16, v17, a3);
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<FireMessageHandler::Request,BlueFin::GlRequest *>,std::__unordered_map_hasher<FireMessageHandler::Request,std::__hash_value_type<FireMessageHandler::Request,BlueFin::GlRequest *>,std::hash<FireMessageHandler::Request>,std::equal_to<FireMessageHandler::Request>,true>,std::__unordered_map_equal<FireMessageHandler::Request,std::__hash_value_type<FireMessageHandler::Request,BlueFin::GlRequest *>,std::equal_to<FireMessageHandler::Request>,std::hash<FireMessageHandler::Request>,true>,std::allocator<std::__hash_value_type<FireMessageHandler::Request,BlueFin::GlRequest *>>>::__emplace_unique_key_args<FireMessageHandler::Request,std::piecewise_construct_t const&,std::tuple<FireMessageHandler::Request const&>,std::tuple<>>(void *a1, int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

uint64_t *std::__hash_table<std::__hash_value_type<FireMessageHandler::Request,BlueFin::GlRequest *>,std::__unordered_map_hasher<FireMessageHandler::Request,std::__hash_value_type<FireMessageHandler::Request,BlueFin::GlRequest *>,std::hash<FireMessageHandler::Request>,std::equal_to<FireMessageHandler::Request>,true>,std::__unordered_map_equal<FireMessageHandler::Request,std::__hash_value_type<FireMessageHandler::Request,BlueFin::GlRequest *>,std::equal_to<FireMessageHandler::Request>,std::hash<FireMessageHandler::Request>,true>,std::allocator<std::__hash_value_type<FireMessageHandler::Request,BlueFin::GlRequest *>>>::find<FireMessageHandler::Request>(void *a1, int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 4) == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= v2)
        {
          v7 %= v2;
        }
      }

      else
      {
        v7 &= v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

BlueFin::GlSetBase *BlueFin::GlSetBase::GlSetBase(BlueFin::GlSetBase *this, unsigned int *__dst, unsigned int a3, const void **a4)
{
  *this = __dst;
  *(this + 8) = a3;
  if (!__dst || !a3)
  {
    DeviceFaultNotify("glutl_set.cpp", 122, "GlSetBase", "m_paulBits != nullptr && m_ucUlongSize >= 1");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_set.cpp", 122, "m_paulBits != nullptr && m_ucUlongSize >= 1");
  }

  v5 = *(a4 + 8);
  if (v5 == a3)
  {
    memcpy(__dst, *a4, 4 * a3);
  }

  else
  {
    if (v5 >= a3)
    {
      v6 = a3;
    }

    else
    {
      v6 = *(a4 + 8);
    }

    if (v6)
    {
      v7 = *a4;
      v8 = __dst;
      v9 = v6;
      do
      {
        v10 = *v7++;
        *v8++ = v10;
        --v9;
      }

      while (v9);
    }

    if (v5 < a3)
    {
      bzero(&__dst[v6], 4 * (~v6 + a3) + 4);
    }
  }

  return this;
}

uint64_t BlueFin::GlDbgRequest::Id(BlueFin::GlDbgRequest *this, int a2)
{
  result = 0;
  if (a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = this;
  }

  v5 = *(this + 1) + 5928;
  while (v4 != *(v5 + 8 * result))
  {
    if (++result == 73)
    {
      DeviceFaultNotify("gldebug_request.cpp", 76, "Id", "false");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_request.cpp", 76, "false");
    }
  }

  if (a2)
  {
    *(v5 + 8 * result) = this;
  }

  return result;
}

uint64_t BlueFin::GlSetBase::Remove(uint64_t this, int a2)
{
  if (a2 >> 5 >= *(this + 8))
  {
    DeviceFaultNotify("glutl_set.cpp", 592, "Remove", "uiArrayIndex < m_ucUlongSize");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_set.cpp", 592, "uiArrayIndex < m_ucUlongSize");
  }

  *(*this + 4 * (a2 >> 5)) &= ~(1 << a2);
  return this;
}

BlueFin::GlDbgRequest *BlueFin::GlDbgEngine::StartRequest(uint64_t a1, BlueFin::GlDbgRequest *this)
{
  started = this;
  v4 = *(a1 + 8);
  if (this)
  {
    *(this + 1) = v4;
    v5 = BlueFin::GlDbgRequest::Id(this, 1);
    v13 = v5;
    v6 = *(a1 + 8);
    if ((v5 & 0x80000000) != 0)
    {
      (*(*v6 + 104))(v6, 1, "/Library/Caches/com.apple.xbs/Sources/FIREGPS7/proprietary/deliverables/gll_dev/gldebug/src/gldebug_engine.cpp:1581");
      return 0;
    }

    else
    {
      *(v6 + 8 * v5 + 5928) = started;
      BlueFin::GlDbgProxy::WriteDbgMetaData(*(a1 + 8), 0);
      BlueFin::GlDbgCodec::WriteStart(*(a1 + 8), 1585);
      v7 = *(a1 + 8);
      if ((*(*v7 + 120))(v7))
      {
        BlueFin::GlDbgCodec::Write(v7, &v13);
      }

      BlueFin::GlDbgCodec::Write(*(a1 + 8), *(started + 3));
      (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
      v8 = *(started + 3);
      started = BlueFin::GlEngineImplStd::StartRequest((a1 + 368));
      v12 = started;
      BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 1585);
      v9 = *(a1 + 8);
      if ((*(*v9 + 120))(v9))
      {
        BlueFin::GlDbgCodec::Write(v9, &v13);
      }

      v10 = *(a1 + 8);
      if ((*(*v10 + 120))(v10))
      {
        BlueFin::GlDbgCodec::Write(v10, &v12);
      }

      (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
      GlCustomLog(14, "DBG SIZE %zu\n", 0x1B58uLL);
    }
  }

  else
  {
    (*(*v4 + 104))(v4, 1, "/Library/Caches/com.apple.xbs/Sources/FIREGPS7/proprietary/deliverables/gll_dev/gldebug/src/gldebug_engine.cpp:1570");
  }

  return started;
}

uint64_t BlueFin::GlPeEngineCallBacks::OnTimerSet(uint64_t this, uint64_t a2, uint64_t a3)
{
  v3 = *(this + 96);
  if (v3)
  {
    return v3(*(this + 8), a2, 0, a3);
  }

  return this;
}

uint64_t BlueFin::GlDbgProxyGlEngineOnTimerSet(uint64_t a1, uint64_t a2, uint64_t a3, _BOOL8 a4)
{
  v7 = (*(*a1 + 656))(a1);

  return BlueFin::GlDbgProxy::HalGlEngineOnTimerSet(v7, a2, a3, a4);
}

uint64_t BlueFin::GlDbgProxy::HalGlEngineOnTimerSet(uint64_t this, uint64_t a2, uint64_t a3, _BOOL8 a4)
{
  v12 = a2;
  v11 = a3;
  v10 = a4;
  if (!*(this + 808))
  {
    v7 = this;
    *(this + 580) = 1;
    if (*(this + 576) == 1)
    {
      BlueFin::GlDbgCodec::WriteStart(this, 534);
      if ((*(*v7 + 120))(v7))
      {
        BlueFin::GlDbgCodec::Write(v7, &v12);
      }

      if ((*(*v7 + 120))(v7))
      {
        BlueFin::GlDbgCodec::Write(v7, &v11);
      }

      if ((*(*v7 + 120))(v7))
      {
        BlueFin::GlDbgCodec::Write(v7, &v10);
      }

      this = (*(*v7 + 32))(v7, 1);
    }

    v8 = *(v7 + 912);
    if (v8)
    {
      this = v8(v7 + 608, a2, a3, a4);
    }

    *(v7 + 580) = 1;
    if (*(v7 + 576) == 1)
    {
      BlueFin::GlDbgCodec::WriteFinal(v7, 534);
      v9 = *(*v7 + 32);

      return v9(v7, 1);
    }
  }

  return this;
}

void FireCallback::GlEngineOnTimerSet(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (FireCallback::pInstance)
  {
    v11 = *(FireCallback::pInstance + 472);
    if (v11)
    {
      v16 = a1;
      v15 = a2;
      v14 = a3;
      v13 = a4;
      (*(*v11 + 48))(v11, &v16, &v15, &v14, &v13);
      return;
    }

    v12 = "fcb,fEngineOnTimerSetCb,nullptr";
  }

  else
  {
    v12 = "fcb,GlEngineOnTimerSet,nullptr";
  }

  FireDeviceLog::DeviceLogBase(2, v12, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t std::__function::__func<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_4,std::allocator<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_4>,void ()(BlueFin::GlEngine *,unsigned int,short,BOOL)>::operator()(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *MEMORY[0x29EDCA608];
  v8 = *a3;
  v9 = *(a1 + 8);
  if (v8 == 100000000)
  {
    if (!FireResourceMgr::fInstance)
    {
      operator new();
    }

    result = (*(**(FireResourceMgr::fInstance + 8) + 32))(*(FireResourceMgr::fInstance + 8));
    *(*(v9 + 936) + 56) = 0x7FEFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = *(v9 + 936);
    v14 = 0;
    FireMessageHandler::Tick::appendCallback(v11, v13, v8, a4, a5, a6, a7, a8);
    result = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v13);
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29879F728(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t BlueFin::patch_trigger(unint64_t a1, uint64_t a2, unsigned __int8 *a3, void *a4)
{
  v4 = BlueFin::ulglme_qstate_patch_table_size;
  if (!BlueFin::ulglme_qstate_patch_table_size)
  {
    v10 = 0;
    return v10 & 1;
  }

  v5 = BlueFin::glme_qstate_patch_table;
  *a4 = 0;
  v6 = v4 - 1;
  if (v6 < 0)
  {
    goto LABEL_9;
  }

  v7 = 0;
  while (1)
  {
    v8 = (v7 + v6) >> 1;
    v9 = *(v5 + 16 * v8);
    if (v9 >= a1)
    {
      break;
    }

    v7 = v8 + 1;
LABEL_8:
    if (v7 > v6)
    {
      goto LABEL_9;
    }
  }

  if (v9 > a1)
  {
    v6 = v8 - 1;
    goto LABEL_8;
  }

  v12 = *(v5 + 16 * v8 + 8);
  v13 = *(v12 + 1);
  if (!v13)
  {
    goto LABEL_9;
  }

  if (!a3 || (v14 = *a3, v14 == *v12))
  {
LABEL_18:
    v17 = 1;
    *a4 = v13(a2, a3, &v17);
    v10 = v17;
  }

  else
  {
    v15 = v12 + 24;
    while (1)
    {
      v13 = *v15;
      if (!*v15)
      {
        break;
      }

      v16 = *(v15 - 8);
      v15 += 16;
      if (v14 == v16)
      {
        goto LABEL_18;
      }
    }

LABEL_9:
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t BlueFin::GlDbgProxy::HalGlEngineOnTimerRq(BlueFin::GlDbgProxy *this)
{
  if (!*(this + 101))
  {
    *(this + 1642) = (*(this + 113))(this + 608);
    BlueFin::GlDbgCodec::WriteStart(this, 533);
    (*(*this + 32))(this, 0);
    BlueFin::GlDbgCodec::WriteFinal(this, 533);
    if ((*(*this + 120))(this))
    {
      BlueFin::GlDbgCodec::Write(this, this + 1642);
    }

    (*(*this + 32))(this, 1);
  }

  return *(this + 1642);
}

uint64_t FireCallback::GlEngineOnTimerRq(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (FireCallback::pInstance)
  {
    v9 = *(FireCallback::pInstance + 440);
    if (v9)
    {
      v13 = a1;
      return (*(*v9 + 48))(v9, &v13);
    }

    v11 = "fcb,fEngineOnTimerRqCb,nullptr";
  }

  else
  {
    v11 = "fcb,GlEngineOnTimerRq,nullptr";
  }

  FireDeviceLog::DeviceLogBase(2, v11, a3, a4, a5, a6, a7, a8, v12);
  return 0;
}

uint64_t *BlueFin::GlPeTimerMgr::UpdateExpirationTime(uint64_t *this, int a2, int a3)
{
  v5 = this;
  if (BlueFin::GlUtils::m_pInstance)
  {
    v6 = *(BlueFin::GlUtils::m_pInstance + 1092);
  }

  else
  {
    v7 = *this;
    this = (*(**v5 + 56))();
    v6 = this;
  }

  if (*(v5 + 16))
  {
    v8 = *(v5 + 24);
    v9 = v8[7];
    this = (*(*v8 + 184))(v8);
    if (v9 - v6 + this < a2)
    {
      a2 = v9 - v6 + this;
    }
  }

  v10 = a2 + v6;
  if (*(v5 + 8) != 1 || v10 != *(v5 + 12) || *(v5 + 9) != a3)
  {
    *(v5 + 8) = 1;
    *(v5 + 12) = v10;
    if (a2 == 100000000)
    {
      v11 = 1;
    }

    else
    {
      v11 = a3;
    }

    *(v5 + 9) = v11;
    v12 = *(**v5 + 48);

    return v12();
  }

  return this;
}

uint64_t GlCustomLog(uint64_t result, char *__format, ...)
{
  va_start(va, __format);
  v19 = *MEMORY[0x29EDCA608];
  v2 = *(FireDeviceLog::StaticSetting::fInstance + 4);
  if (v2)
  {
    v3 = ((1 << (result & 7)) & v2) == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    goto LABEL_44;
  }

  v4 = *(FireDeviceLog::StaticSetting::fInstance + 8);
  if (!v4 || ((1 << (result >> 3)) & v4) == 0)
  {
    goto LABEL_44;
  }

  v7 = (result & 7) - 4;
  if (v7 > 3)
  {
    v8 = 2;
  }

  else
  {
    v8 = dword_298A2E0D0[v7];
  }

  if ((atomic_load_explicit(&_MergedGlobals_0, memory_order_acquire) & 1) == 0)
  {
    v16 = result;
    v17 = __cxa_guard_acquire(&_MergedGlobals_0);
    LODWORD(result) = v16;
    if (v17)
    {
      *&byte_2A18BB170[16] = 0;
      *byte_2A18BB170 = 0uLL;
      __cxa_atexit(MEMORY[0x29EDC9388], byte_2A18BB170, &dword_29879A000);
      __cxa_guard_release(&_MergedGlobals_0);
      LODWORD(result) = v16;
    }
  }

  v9 = *&byte_2A18BB170[8];
  if (byte_2A18BB170[23] >= 0)
  {
    v9 = byte_2A18BB170[23];
  }

  if (!v9)
  {
    v10 = result >> 3;
    if (result >> 3 > 2)
    {
      if (v10 == 3)
      {
        v11 = 64;
        goto LABEL_29;
      }

      if (v10 == 15)
      {
        v11 = 37;
        goto LABEL_29;
      }

      if (v10 != 29)
      {
        goto LABEL_26;
      }
    }

    else if (v10)
    {
      if (v10 == 1)
      {
        v11 = 35;
        goto LABEL_29;
      }

      if (v10 == 2)
      {
        v11 = 36;
LABEL_29:
        FireDeviceLog::GetLineLeading(v11, v8, __str);
        if (byte_2A18BB170[23] < 0)
        {
          operator delete(*byte_2A18BB170);
        }

        *byte_2A18BB170 = __str[0];
        goto LABEL_32;
      }

LABEL_26:
      v11 = 63;
      goto LABEL_29;
    }

    v11 = 61;
    goto LABEL_29;
  }

LABEL_32:
  v12 = vsnprintf(__str, 0x100uLL, __format, va);
  result = std::string::append(byte_2A18BB170, __str);
  if (v12 >= 255)
  {
    result = std::string::append(byte_2A18BB170, "...");
  }

  if ((byte_2A18BB170[23] & 0x8000000000000000) != 0)
  {
    v14 = *byte_2A18BB170;
    if (*(*byte_2A18BB170 + *&byte_2A18BB170[8] - 1) != 10)
    {
      goto LABEL_44;
    }

    v13 = --*&byte_2A18BB170[8];
  }

  else
  {
    if (*(&_MergedGlobals_0 + byte_2A18BB170[23] + 7) != 10)
    {
      goto LABEL_44;
    }

    v13 = byte_2A18BB170[23] - 1;
    byte_2A18BB170[23] = (byte_2A18BB170[23] - 1) & 0x7F;
    v14 = byte_2A18BB170;
  }

  v14[v13] = 0;
  if (!FireResourceMgr::fInstance)
  {
    operator new();
  }

  result = (*(**(FireResourceMgr::fInstance + 16) + 16))(*(FireResourceMgr::fInstance + 16), v8, byte_2A18BB170);
  if (byte_2A18BB170[23] < 0)
  {
    **byte_2A18BB170 = 0;
    *&byte_2A18BB170[8] = 0;
  }

  else
  {
    byte_2A18BB170[0] = 0;
    byte_2A18BB170[23] = 0;
  }

LABEL_44:
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

void *BlueFin::GlPeGnssEphemerisMgr::GetMgr(void *a1, int a2)
{
  result = 0;
  if (a2 <= 2)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        return a1[872];
      }

      else if (a2 == 2)
      {
        return a1[873];
      }
    }

    else
    {
      return a1 + 1;
    }
  }

  else if (a2 > 4)
  {
    if (a2 == 5)
    {
      return a1[876];
    }

    else if (a2 == 6)
    {
      return a1[877];
    }
  }

  else if (a2 == 3)
  {
    return a1[874];
  }

  else
  {
    return a1[875];
  }

  return result;
}

unsigned __int8 *BlueFin::GlSetIterator::operator++(unsigned __int8 *result)
{
  v1 = *(result + 1);
  v2 = result[1];
  if (v1)
  {
LABEL_6:
    v5 = v1 & -v1;
    *(result + 1) = v5 ^ v1;
    *(result + 1) = 32 * v2 - __clz(v5) + 31;
  }

  else
  {
    v3 = *result;
    while (1)
    {
      v4 = v2 + 1;
      if (v2 + 1 >= v3)
      {
        break;
      }

      v1 = *&result[4 * v2++ + 12];
      if (v1)
      {
        result[1] = v4;
        LOWORD(v2) = v4;
        goto LABEL_6;
      }
    }

    result[1] = v3;
  }

  return result;
}

uint64_t BlueFin::GlSetBase::operator=(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 != *(a2 + 8))
  {
    DeviceFaultNotify("glutl_set.cpp", 555, "operator=", "m_ucUlongSize == otRightOperand.m_ucUlongSize");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_set.cpp", 555, "m_ucUlongSize == otRightOperand.m_ucUlongSize");
  }

  if (*(result + 8))
  {
    v3 = *a2;
    v4 = *result;
    do
    {
      v5 = *v3++;
      *v4++ = v5;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t (*BlueFin::GlMeSrdCtrlSm::my_top(uint64_t a1, unsigned __int8 *a2))()
{
  v3 = *a2;
  if (v3 <= 0x11)
  {
    if (v3 - 2 >= 2)
    {
      if (v3 == 17)
      {
        if (*(a1 + 219))
        {
          if (*(*(a1 + 136) + 2136) == 1)
          {
            (*(**(a1 + 152) + 32))(*(a1 + 152), *(a1 + 3608));
          }

          *(a1 + 2784) = *(a1 + 3608);
          v4 = (a1 + 2600);
          v5 = 43;
          goto LABEL_13;
        }

        DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 1241, "my_top", "me->m_bAsicInitDone");
        v8 = 1241;
        goto LABEL_18;
      }

      return BlueFin::QHsm::top;
    }

    return 0;
  }

  if (v3 == 18)
  {
    if (*(a1 + 219))
    {
      v6 = *(a1 + 3640);
      *(a1 + 3032) = *(a1 + 3632);
      *(a1 + 3040) = v6;
      v4 = (a1 + 2856);
      v5 = 46;
LABEL_13:
      BlueFin::GlQueue::putFIFO(v4, v5, 0);
      return 0;
    }

    DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 1233, "my_top", "me->m_bAsicInitDone");
    v8 = 1233;
LABEL_18:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_ctrl_sm.cpp", v8, "me->m_bAsicInitDone");
  }

  if (v3 == 38)
  {
    BlueFin::QHsm::tran(a1, BlueFin::GlMeSrdCtrlSm::com_breakdown, "com_breakdown");
    return 0;
  }

  return BlueFin::QHsm::top;
}

uint64_t (*BlueFin::GlMeSrdMeasTimingMgr::idle(uint64_t a1, unsigned __int8 *a2))()
{
  v2 = *a2;
  if (v2 <= 0x30)
  {
    if (v2 == 2)
    {
      BlueFin::GlQueue::putFIFO((a1 + 40), 49, 0);
    }

    else if (v2 != 3)
    {
      return BlueFin::QHsm::top;
    }

    return 0;
  }

  if (v2 == 49)
  {
    if (*(a1 + 252) == 1)
    {
      *(a1 + 252) = 0;
      if (*(a1 + 260) == *(a1 + 284) && *(a1 + 263) == *(a1 + 286) && *(a1 + 264) == *(a1 + 312))
      {
        return 0;
      }

      *(a1 + 268) = *(a1 + 252);
      *(a1 + 272) = *(a1 + 288);
      *(a1 + 268) = 1;
      v4 = "&GlMeSrdMeasTimingMgr::wait4dutycyle_programming";
      v5 = BlueFin::GlMeSrdMeasTimingMgr::wait4dutycyle_programming;
    }

    else
    {
      if (*(a1 + 240) != 1)
      {
        return 0;
      }

      *(a1 + 240) = 0;
      v6 = *(a1 + 288);
      if (*(a1 + 244) % 0x3E8u != v6 % 0x3E8)
      {
        return 0;
      }

      v7 = *(a1 + 248);
      if (v7 <= -901 && *(a1 + 284) == 1000)
      {
        LOWORD(v7) = v7 + 1000;
        *(a1 + 248) = v7;
      }

      if (v7 < 1)
      {
        if (v7 < -19)
        {
          v8 = 20 * ((v7 - 19) / 20);
          *(a1 + 234) = 20 * ((v7 - 19) / 20);
          LOBYTE(v7) = v7 - v8;
        }

        else
        {
          LOWORD(v8) = 0;
          *(a1 + 234) = 0;
        }

        *(a1 + 236) = v7;
      }

      else
      {
        v8 = 20 * (v7 / 0x14u);
        v7 = v7 % 0x14u;
        *(a1 + 236) = v7;
        *(a1 + 234) = v8;
      }

      *(a1 + 228) = v6;
      *(a1 + 224) = v8 != 0;
      *(a1 + 225) = v7 != 0;
      *(a1 + 308) = v6 + v7 + v8 + *(a1 + 284);
      v4 = "&GlMeSrdMeasTimingMgr::wait4miadjustment_programming";
      v5 = BlueFin::GlMeSrdMeasTimingMgr::wait4miadjustment_programming;
    }

    BlueFin::QHsm::tran(a1, v5, v4);
    return 0;
  }

  if (v2 != 50)
  {
    return BlueFin::QHsm::top;
  }

  v3 = 0;
  *(a1 + 240) = 0;
  return v3;
}

void std::__function::__func<FireMessageHandler::createGlEngine(void)::$_1,std::allocator<FireMessageHandler::createGlEngine(void)::$_1>,void ()(unsigned char *,unsigned long)>::operator()(uint64_t a1, gnss::fire **a2, const unsigned __int8 **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  v9 = *a3;
  v10 = *(a1 + 8);
  v11 = *(v10 + 1356);
  if ((v11 - 1) >= 3)
  {
    gnss::fire::charToHex(*a2, *a3, 44, &__p);
    FireDeviceLog::DeviceLogBase(2, "chipData,outOfSession,state,%d,size,%zu,data,%s", v16, v17, v18, v19, v20, v21, v11);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    FireMessageHandler::ExclusiveEntryCheck::enter((v10 + 1008), 2, a3, a4, a5, a6, a7, a8);
    if (v9)
    {
      v12 = 0;
      v13 = v9;
      do
      {
        v14 = v13 - 268;
        if (v13 >= 0x10C)
        {
          v15 = 268;
        }

        else
        {
          v15 = v13;
        }

        (*(**(v10 + 1296) + 184))(*(v10 + 1296), v8 + v12, v15);
        v12 += 268;
        v13 = v14;
      }

      while (v12 < v9);
    }

    FireMessageHandler::ExclusiveEntryCheck::exit((v10 + 1008));
  }
}

void sub_2987A0450(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BlueFin::GlReqSm::ReceiveChipData(BlueFin::GlReqSm *this, void *a2, int a3)
{
  if (a3 < 0 || (v3 = a3, *(this + 169) + a3 >= 1609))
  {
    DeviceFaultNotify("glreqsm.cpp", 574, "ReceiveChipData", "(sSize >= 0) && (sSize+m_sPendingAsicDataSize <= (GlIntS16)sizeof(m_aucPendingAsicData))");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glreqsm.cpp", 574, "(sSize >= 0) && (sSize+m_sPendingAsicDataSize <= (GlIntS16)sizeof(m_aucPendingAsicData))");
  }

  memcpy(this + *(this + 169) + 340, a2, a3);
  *(this + 169) += v3;
  result = BlueFin::GlQueue::putFIFO((this + 40), 12, 0);
  *(this + 13710) = *(BlueFin::GlUtils::m_pInstance + 1092);
  return result;
}

char *BlueFin::GlDbgCodec::WriteArray(BlueFin::GlDbgCodec *this, char *a2, __int16 *a3)
{
  result = (*(*this + 120))(this);
  if (result)
  {
    if ((*(*this + 120))(this))
    {
      BlueFin::GlDbgCodec::Write(this, a3);
    }

    v7 = *a3;

    return BlueFin::GlDbgCodecBase::Encode(this, a2, v7, 0, 0);
  }

  return result;
}

__int16 *BlueFin::GlReqSm::ProcessChipData(__int16 *this, const char *a2)
{
  v2 = this[169];
  if (v2 >= 268)
  {
    v3 = 268;
  }

  else
  {
    v3 = this[169];
  }

  if (v2 >= 1)
  {
    v4 = this;
    v5 = (this + 170);
    this = (*(**(this + 39) + 200))(*(this + 39), this + 170, v3);
    v6 = (v4[169] - v3);
    v4[169] -= v3;
    if (v6 >= 1)
    {
      this = memcpy(v4 + 170, &v5[v3], v6);
    }
  }

  if (*(BlueFin::GlUtils::m_pInstance + 1092) >= *(BlueFin::GlUtils::m_pInstance + 1232))
  {

    return BlueFin::GlUtils::Report("timeout_60s", a2);
  }

  return this;
}

uint64_t BlueFin::patch_dispatch(unint64_t a1, uint64_t a2, unsigned __int8 *a3, void *a4)
{
  v6 = BlueFin::ulglme_qstate_patch_table_size - 1;
  if (BlueFin::ulglme_qstate_patch_table_size - 1 < 0)
  {
    v10 = 0;
    return v10 & 1;
  }

  v18 = v4;
  v19 = v5;
  v7 = 0;
  while (1)
  {
    v8 = (v7 + v6) >> 1;
    v9 = *(BlueFin::glme_qstate_patch_table + 16 * v8);
    if (v9 >= a1)
    {
      break;
    }

    v7 = v8 + 1;
LABEL_7:
    if (v7 > v6)
    {
      goto LABEL_8;
    }
  }

  if (v9 > a1)
  {
    v6 = v8 - 1;
    goto LABEL_7;
  }

  v12 = *(BlueFin::glme_qstate_patch_table + 16 * v8 + 8);
  v13 = *(v12 + 1);
  if (!v13)
  {
LABEL_8:
    v10 = 0;
    return v10 & 1;
  }

  v14 = *a3;
  if (v14 != *v12)
  {
    v15 = v12 + 24;
    do
    {
      v13 = *v15;
      if (!*v15)
      {
        goto LABEL_8;
      }

      v16 = *(v15 - 8);
      v15 += 16;
    }

    while (v14 != v16);
  }

  v17 = 1;
  *a4 = v13(a2, a3, &v17);
  v10 = v17;
  return v10 & 1;
}

uint64_t BlueFin::GlActive::UpdateTimers(uint64_t this)
{
  v1 = (this + 96);
  v2 = *(this + 96);
  if (v2)
  {
    v3 = this;
    v4 = *(BlueFin::GlUtils::m_pInstance + 1092);
    do
    {
      v5 = v4 - *(v2 + 5);
      if (v5 < 0)
      {
        v11 = "slDeltaMs >= 0";
        DeviceFaultNotify("glhsm_active.cpp", 78, "UpdateTimers", "slDeltaMs >= 0");
        v12 = 78;
        goto LABEL_20;
      }

      v6 = *(v2 + 4);
      if (v5 - v6 > *(v3 + 104))
      {
        *(v3 + 104) = v5 - v6;
      }

      if (v5 > v6)
      {
        this = BlueFin::GlQueue::putFIFO((v3 + 40), *(v2 + 25), *(v2 + 26));
        if (!this)
        {
          v11 = "myQueue.putFIFO(t->myToutEvt.sig, t->myToutEvt.par)";
          DeviceFaultNotify("glhsm_active.cpp", 86, "UpdateTimers", "myQueue.putFIFO(t->myToutEvt.sig, t->myToutEvt.par)");
          v12 = 86;
          goto LABEL_20;
        }

        v7 = *(v2 + 24);
        if (v7 == 1)
        {
          v8 = v2[1];
          v9 = v1;
          if (v2 != *v1)
          {
            v10 = *v2;
            if (v8)
            {
              *v8 = v10;
            }

            v9 = (v10 + 8);
          }

          *v9 = v8;
          *(v2 + 24) = 0;
        }

        else
        {
          if (v7 != 2)
          {
            v11 = "0";
            DeviceFaultNotify("glhsm_active.cpp", 110, "UpdateTimers", "0");
            v12 = 110;
LABEL_20:
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glhsm_active.cpp", v12, v11);
          }

          *(v2 + 5) += *(v2 + 4);
        }
      }

      v2 = v2[1];
    }

    while (v2);
  }

  return this;
}

char *BlueFin::GlQueue::get@<X0>(char *this@<X0>, _BYTE *a2@<X8>)
{
  v2 = *this;
  if (*this)
  {
    v3 = this[1];
    if (*(this + 21))
    {
      --*(this + 21);
      v4 = *(this + 4);
      v5 = *v4++;
      *this = v5;
      *(this + 4) = v4;
      if (v4 == *(this + 2))
      {
        *(this + 4) = *(this + 1);
      }
    }

    else
    {
      *this = 0;
      this[47] &= ~this[46];
    }

    *a2 = v2;
  }

  else
  {
    *a2 = 0;
    v3 = this[1];
  }

  a2[1] = v3;
  return this;
}

uint64_t (*BlueFin::GlReqSm::on(BlueFin::GlReqSm *this, const char *a2))()
{
  result = 0;
  v5 = this + 53561;
  v6 = (this + 33184);
  switch(*a2)
  {
    case 2:
    case 0x2A:
      return result;
    case 3:
      if (*v5 == 1)
      {
        (*(**(this + 39) + 280))(*(this + 39), 0, 0, 0, 0, 0, 0, 0);
        *v5 = 0;
        (*(**(this + 4149) + 120))(*(this + 4149), 0);
        GlCustomLog(14, "Burst mode disabled\n");
      }

      return 0;
    case 7:
    case 0xA:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x14:
    case 0x15:
    case 0x1A:
    case 0x1C:
    case 0x1F:
    case 0x20:
    case 0x21:
    case 0x22:
    case 0x23:
    case 0x24:
    case 0x25:
    case 0x26:
    case 0x29:
    case 0x31:
    case 0x32:
    case 0x33:
    case 0x34:
    case 0x35:
    case 0x36:
      v14 = *a2;
      GlCustomLog(14, "GlReqSm::Error: Substates of ON didnot handle the event %i\n");
      return 0;
    case 8:
      BlueFin::GlPeReqBag::TerminateRequest(this + 10880, *v6);
      BlueFin::GlPePendingBag::TerminateRequest(this + 6496, *v6);
      v15 = *a2;
      GlCustomLog(14, "GlReqSm::Error: Substates of ON didnot handle the event %i causing the ON to Handle StopRequest\n");
      return 0;
    case 9:
      BlueFin::GlPeReqBag::TerminateAll((this + 10880));
      BlueFin::GlPePendingBag::TerminateAll(this + 6496);
      BlueFin::GlTimer::disarm(this + 3948);
      BlueFin::GlPeReqBag::Cleanup(this + 10880);
      GlCustomLog(14, "GlReqSm::Error: Substates of ON didnot handle the event %i causing the ON to Handle Stop All requests\n", *a2);
      BlueFin::QHsm::tran(this, BlueFin::GlReqSm::standby, "&GlReqSm::standby");
      return 0;
    case 0xC:
      BlueFin::GlReqSm::ProcessChipData(this, a2);
      return 0;
    case 0x2D:
      if (BlueFin::GlPePendingBag::HasNILRReq((this + 6496)))
      {
        goto LABEL_28;
      }

      v10 = 0;
      v11 = 1;
      do
      {
        v12 = *(this + v10 + 1360);
        if (v12 && (*(*(v12 + 8) + 16) - 1) < 2)
        {
          break;
        }

        v11 = v10++ < 0x47;
      }

      while (v10 != 72);
      if (v11)
      {
LABEL_28:
        v13 = *(*(this + 785) + 2568);
        GlCustomLog(13, "GlReqSm::CheckRtiEmergencyActive (LMS:%d): still in NILR session!\n");
        return 0;
      }

      if (*(this + 54680) != 1)
      {
        return 0;
      }

      BlueFin::GlPeRtiRequestor::onRtiExitEmergencySession(*(this + 6854));
      result = 0;
      *(this + 54680) = 0;
      return result;
    case 0x2E:
      if (*(this + 54824) != 1 || (*(this + 54680) & 1) != 0)
      {
        return 0;
      }

      BlueFin::GlPeRtiRequestor::onRtiEnterEmergencySession(*(this + 6854), this + 54688);
      result = 0;
      *(this + 54680) = 1;
      return result;
    case 0x40:
      *(this + 53968) = 1;
      GlCustomLog(14, "MI2: enable timer\n");
      return 0;
    case 0x41:
      GlCustomLog(14, "MI2: check disable timer\n");
      if (!BlueFin::GlPePendingBag::HasPosReq((this + 6496)))
      {
        v7 = 0;
        v8 = 1;
        do
        {
          v9 = *(this + v7 + 1360);
          if (v9 && !*(*(v9 + 8) + 16))
          {
            break;
          }

          v8 = v7++ < 0x47;
        }

        while (v7 != 72);
        if (!v8)
        {
          *(this + 53968) = 0;
          BlueFin::GlTimer::disarm(this + 6741);
          v16 = *(*(this + 785) + 2568);
          GlCustomLog(14, "MI2: disable timer @Lms: %d\n");
        }
      }

      return 0;
    default:
      return BlueFin::QHsm::top;
  }
}

uint64_t (*(*BlueFin::GlReqSm::host_based_positioning(uint64_t a1, unsigned __int8 *a2))(BlueFin::GlReqSm *this, const char *a2))()
{
  v3 = *a2;
  if (v3 == 3)
  {
    *(*(a1 + 31800) + 4068) &= ~0x20u;
    v7 = *(a1 + 33192);
    v8 = *(v7 + 160);
    if (v8)
    {
      v8(*(v7 + 8));
    }

    BlueFin::GlNvMemImpl::Write(*(a1 + 6336));
    BlueFin::GlPeCntinMgr::StopCntin(*(a1 + 6328));
  }

  else
  {
    result = BlueFin::GlReqSm::on;
    if (v3 != 2)
    {
      return result;
    }

    v5 = *(a1 + 33192);
    v6 = *(v5 + 256);
    if (v6)
    {
      v6(*(v5 + 8), 0, *(a1 + 31800));
    }
  }

  return 0;
}

uint64_t BlueFin::GlMeSrdCtrlSm::SetAsicData(BlueFin::GlMeSrdCtrlSm *this, unsigned __int8 *a2, int a3)
{
  if (*(this + 219) != 1)
  {
    return BlueFin::GlMeSrdAsicinit::SetAsicData(this + 1760, a2, a3);
  }

  v4 = *(this + 15);
  if (!v4)
  {
    v4 = *(this + 14);
  }

  return (**v4)(v4, a2);
}

uint64_t BlueFin::GlActive::GetCurrentTimeoutPeriod(BlueFin::GlActive *this)
{
  v1 = 99999999;
  v2 = *(this + 12);
  if (v2)
  {
    v3 = *(BlueFin::GlUtils::m_pInstance + 1092);
    while (1)
    {
      v4 = *(v2 + 20) + *(v2 + 16);
      if (v4 - v3 <= 0)
      {
        break;
      }

      if (v4 - v3 < v1)
      {
        v1 = v4 - v3;
      }

      v2 = *(v2 + 8);
      if (!v2)
      {
        return v1 + 1;
      }
    }

    v1 = v4 == v3;
  }

  return v1 + 1;
}

uint64_t BlueFin::GlMeSrdReceiverParameters::rRxIfc(BlueFin::GlMeSrdReceiverParameters *this)
{
  result = *(this + 1);
  if (!result)
  {
    v3 = (*(**(this + 2) + 256))(*(this + 2));
    if ((*(**(this + 2) + 264))())
    {
      v4 = 84;
    }

    else
    {
      v4 = 70;
    }

    if (v3)
    {
      v5 = 84;
    }

    else
    {
      v5 = 70;
    }

    GlCustomLog(14, "DEF_4755x:%c DEF_MNW:%c  IsPikeAsicType:%c IsMinnowAsicType:%c\n", 70, 84, v5, v4);
    if ((*(**(this + 2) + 264))())
    {
      if ((*(**(this + 2) + 264))(*(this + 2)))
      {
        *(this + 12) = 5;
        *(this + 3) = &unk_2A1F0C5B8;
        *(this + 4) = this + 48;
        *(this + 7) = &BlueFin::GlMeRxParamMNWImp::m_stSrdRxParamData + 3397;
        *(this + 8) = &unk_29EEACA48;
        *(this + 9) = &BlueFin::GlMeRxParamMNWImp::m_stSrdRxParamData;
        *(this + 10) = &unk_29EEAC510;
        *(this + 11) = &BlueFin::GlMeRxParamMNWImp::m_oEditedConfig;
        *(this + 12) = &unk_29EEAC520;
        *(this + 13) = &unk_29EEACA4C;
        *(this + 14) = &BlueFin::GlMeRxParamMNWImp::m_stSrdRxParamData + 27177;
        *(this + 5) = this + 48;
        *(this + 15) = &BlueFin::GlMeRxParamMNWImp::m_stSrdRxParamData + 28137;
        *(this + 16) = &BlueFin::GlMeRxParamMNWImp::m_stSrdRxParamData + 28138;
        *(this + 1) = this + 24;
        v6 = BlueFin::GlMeRxParamStd::rMap(this + 3);
        v7 = **(this + 4);
        if (v7 >= 6)
        {
          v15 = "etRxType < GLME_RX_NUM_TYPES";
          DeviceFaultNotify("glme_receiver_parameters_ifc.h", 1008, "GetMaxAllowedGearIds", "etRxType < GLME_RX_NUM_TYPES");
          v16 = "glme_receiver_parameters_ifc.h";
          v17 = 1008;
        }

        else if (v7 >= 6)
        {
          v15 = "0";
          DeviceFaultNotify("glme_receiver_parameters_ifc.h", 1024, "GetMaxAllowedGearIds", "0");
          v16 = "glme_receiver_parameters_ifc.h";
          v17 = 1024;
        }

        else if (aFfZ[v7] < **(v6 + 2))
        {
          v15 = "*rMap().m_pucGsNum <= GetMaxAllowedGearIds()";
          DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 788, "CheckTrackIntegrity", "*rMap().m_pucGsNum <= GetMaxAllowedGearIds()");
          v16 = "glmesrd_receiver_parameters.cpp";
          v17 = 788;
        }

        else
        {
          v8 = *(this + 1);
          v9 = BlueFin::GlMeRxParamStd::rMap(v8);
          v10 = BlueFin::GlMeRxParamStd::rMap(v8);
          v11 = *v8[1];
          if (v11 >= 6)
          {
            v15 = "etRxType < GLME_RX_NUM_TYPES";
            DeviceFaultNotify("glme_receiver_parameters_ifc.h", 1080, "GetMaxAllowedBinningSteps", "etRxType < GLME_RX_NUM_TYPES");
            v16 = "glme_receiver_parameters_ifc.h";
            v17 = 1080;
          }

          else if (v11 >= 6)
          {
            v15 = "0";
            DeviceFaultNotify("glme_receiver_parameters_ifc.h", 1096, "GetMaxAllowedBinningSteps", "0");
            v16 = "glme_receiver_parameters_ifc.h";
            v17 = 1096;
          }

          else if (**(v10 + 2) > ((0xA0628A8A9090uLL >> (8 * v11)) & 0x1FE))
          {
            v15 = "*rMap().m_pucGsNum <= GetMaxAllowedBinningSteps()";
            DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 797, "CheckSearchIntegrity", "*rMap().m_pucGsNum <= GetMaxAllowedBinningSteps()");
            v16 = "glmesrd_receiver_parameters.cpp";
            v17 = 797;
          }

          else
          {
            v12 = *(*(v9 + 3) + 16);
            MaxAllowedSrchParamIds = BlueFin::GlMeRxParamLimits::GetMaxAllowedSrchParamIds(v11);
            v14 = *v8[1];
            if (v14 >= 6)
            {
              v15 = "etRxType < GLME_RX_NUM_TYPES";
              DeviceFaultNotify("glme_receiver_parameters_ifc.h", 1032, "GetMaxAllowedSrchMgrs", "etRxType < GLME_RX_NUM_TYPES");
              v16 = "glme_receiver_parameters_ifc.h";
              v17 = 1032;
            }

            else if (v14 >= 6)
            {
              v15 = "0";
              DeviceFaultNotify("glme_receiver_parameters_ifc.h", 1048, "GetMaxAllowedSrchMgrs", "0");
              v16 = "glme_receiver_parameters_ifc.h";
              v17 = 1048;
            }

            else
            {
              if (BlueFin::GlMeRxParamUtl::CheckSearchIntegrity(v12, MaxAllowedSrchParamIds, *(*(v9 + 3) + 24), **(v9 + 1), 9u))
              {
                return *(this + 1);
              }

              v15 = "m_poRxParamImp->CheckSearchIntegrity()";
              DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 91, "rRxIfc", "m_poRxParamImp->CheckSearchIntegrity()");
              v16 = "glmesrd_receiver_parameters.cpp";
              v17 = 91;
            }
          }
        }
      }

      else
      {
        v15 = "0";
        DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 86, "rRxIfc", "0");
        v16 = "glmesrd_receiver_parameters.cpp";
        v17 = 86;
      }
    }

    else
    {
      v15 = "bIsAsicConfigConsistent";
      DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 54, "rRxIfc", "bIsAsicConfigConsistent");
      v16 = "glmesrd_receiver_parameters.cpp";
      v17 = 54;
    }

    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v16, v17, v15);
  }

  return result;
}

int *BlueFin::GlMeRxParamStd::rMap(int **this)
{
  if (*this[1] >= 6)
  {
    DeviceFaultNotify("glmesrd_receiver_parameters.h", 153, "rMap", "IsValid()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_receiver_parameters.h", 153, "IsValid()");
  }

  return this[2];
}

unint64_t BlueFin::GlMeRxParamLimits::GetMaxAllowedSrchParamIds(int a1)
{
  if (a1 >= 6)
  {
    v2 = "etRxType < GLME_RX_NUM_TYPES";
    DeviceFaultNotify("glme_receiver_parameters_ifc.h", 1056, "GetMaxAllowedSrchParamIds", "etRxType < GLME_RX_NUM_TYPES");
    v3 = 1056;
    goto LABEL_5;
  }

  if (a1 >= 6)
  {
    v2 = "0";
    DeviceFaultNotify("glme_receiver_parameters_ifc.h", 1072, "GetMaxAllowedSrchParamIds", "0");
    v3 = 1072;
LABEL_5:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_receiver_parameters_ifc.h", v3, v2);
  }

  return (0x7E45683E6F59uLL >> (8 * a1)) & 0x7F;
}

__n128 BlueFin::GlPeTimeManager::GetTime@<Q0>(BlueFin::GlPeTimeManager *this@<X0>, int a2@<W1>, __n128 *a3@<X8>)
{
  if (a2 && *(this + 1201) != -7200001)
  {
    a3->n128_u64[0] = *(this + 601);
    a3->n128_u32[2] = *(this + 1204);
    result = *(this + 4824);
    a3[1] = result;
  }

  else
  {
    v3 = *(this + 642);
    v4 = v3;
    if (v3 <= 0xFF9222FE)
    {
      v4 = v3;
    }

    BlueFin::GlPeTimeManager::GetTime(this, v4, a2, a3);
  }

  return result;
}

uint64_t BlueFin::GlSetBase::OperatorBinaryAnd(uint64_t this, int **a2, int **a3)
{
  v3 = *(this + 8);
  v4 = *(a3 + 8);
  if (v3 != v4 || *(a2 + 8) != v4)
  {
    DeviceFaultNotify("glutl_set.cpp", 498, "OperatorBinaryAnd", "m_ucUlongSize == otRightOperand.m_ucUlongSize && otResult.m_ucUlongSize == otRightOperand.m_ucUlongSize");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_set.cpp", 498, "m_ucUlongSize == otRightOperand.m_ucUlongSize && otResult.m_ucUlongSize == otRightOperand.m_ucUlongSize");
  }

  if (*(this + 8))
  {
    v6 = *this;
    v7 = *a3;
    v8 = *a2;
    do
    {
      v10 = *v6++;
      v9 = v10;
      v11 = *v7++;
      *v8++ = v11 & v9;
      --v3;
    }

    while (v3);
  }

  return this;
}

void *BlueFin::QHsm::tran(void *a1, uint64_t (*a2)(), uint64_t a3)
{
  v34 = *MEMORY[0x29EDCA608];
  if (a2 == BlueFin::QHsm::top)
  {
    v18 = "target != &QHsm::top";
    DeviceFaultNotify("glhsm_dyn.cpp", 32, "tran", "target != &QHsm::top");
    v19 = 32;
    goto LABEL_85;
  }

  v4 = a2;
  v6 = a1[1];
  v7 = a1[4];
  if (v6 != v7)
  {
    do
    {
      if (!v6)
      {
        v18 = "s != 0";
        DeviceFaultNotify("glhsm_dyn.cpp", 38, "tran", "s != 0");
        v19 = 38;
        goto LABEL_85;
      }

      if (BlueFin::patch_trigger(v6, a1, byte_298A32C8E, &BlueFin::_patched_state))
      {
        v8 = BlueFin::_patched_state;
        if (!BlueFin::_patched_state)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v8 = v6(a1, byte_298A32C8E);
        if (!v8)
        {
LABEL_8:
          if (BlueFin::patch_trigger(v6, a1, BlueFin::__pkgStdEvt, &BlueFin::_patched_state))
          {
            v8 = BlueFin::_patched_state;
          }

          else
          {
            v8 = v6(a1, BlueFin::__pkgStdEvt);
          }
        }
      }

      v7 = a1[4];
      v6 = v8;
    }

    while (v8 != v7);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0;
  v31 = v4;
  if (v7 == v4)
  {
LABEL_33:
    v12 = 8;
    if (BlueFin::patch_trigger(v7, a1, byte_298A32C8E, &BlueFin::_patched_state))
    {
      goto LABEL_59;
    }

    goto LABEL_34;
  }

  if (BlueFin::patch_trigger(v4, a1, BlueFin::__pkgStdEvt, &BlueFin::_patched_state))
  {
    v9 = BlueFin::_patched_state;
  }

  else
  {
    v9 = (v4)(a1, BlueFin::__pkgStdEvt);
  }

  v10 = a1[4];
  if (v10 == v9)
  {
    v12 = 8;
    goto LABEL_59;
  }

  if (BlueFin::patch_trigger(v10, a1, BlueFin::__pkgStdEvt, &BlueFin::_patched_state))
  {
    v11 = BlueFin::_patched_state;
  }

  else
  {
    v11 = (a1[4])(a1, BlueFin::__pkgStdEvt);
  }

  if (v11 == v9)
  {
    v7 = a1[4];
    goto LABEL_33;
  }

  if (v11 == v4)
  {
    v12 = 0;
    if (BlueFin::patch_trigger(a1[4], a1, byte_298A32C8E, &BlueFin::_patched_state))
    {
      goto LABEL_59;
    }

LABEL_34:
    (a1[4])(a1, byte_298A32C8E);
    goto LABEL_59;
  }

  *&v32 = v9;
  if (BlueFin::patch_trigger(v9, a1, BlueFin::__pkgStdEvt, &BlueFin::_patched_state))
  {
    v13 = BlueFin::_patched_state;
    if (BlueFin::_patched_state)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v13 = (v9)(a1, BlueFin::__pkgStdEvt);
    if (v13)
    {
LABEL_25:
      v14 = 24;
      while (a1[4] != v13)
      {
        v9 = v13;
        *(&v30 + v14) = v13;
        if (BlueFin::patch_trigger(v13, a1, BlueFin::__pkgStdEvt, &BlueFin::_patched_state))
        {
          v13 = BlueFin::_patched_state;
        }

        else
        {
          v13 = (v9)(a1, BlueFin::__pkgStdEvt);
        }

        v14 += 8;
        if (!v13)
        {
          v15 = v14 - 8;
          goto LABEL_39;
        }
      }

      v12 = v14 - 8;
      goto LABEL_58;
    }
  }

  v15 = 16;
LABEL_39:
  if ((BlueFin::patch_trigger(a1[4], a1, byte_298A32C8E, &BlueFin::_patched_state) & 1) == 0)
  {
    (a1[4])(a1, byte_298A32C8E);
  }

  if (v9)
  {
    v12 = v15 - 8;
    v16 = v9;
    while (v11 != v16)
    {
      v16 = *(&v30 + v12);
      v12 -= 8;
      if (!v16)
      {
        goto LABEL_45;
      }
    }
  }

  else
  {
LABEL_45:
    if (!v11)
    {
LABEL_56:
      v18 = "0";
      DeviceFaultNotify("glhsm_dyn.cpp", 101, "tran", "0");
      v19 = 101;
      goto LABEL_85;
    }

    while (!v9)
    {
LABEL_50:
      if ((BlueFin::patch_trigger(v11, a1, byte_298A32C8E, &BlueFin::_patched_state) & 1) == 0)
      {
        (v11)(a1, byte_298A32C8E);
      }

      if (BlueFin::patch_trigger(v11, a1, BlueFin::__pkgStdEvt, &BlueFin::_patched_state))
      {
        v11 = BlueFin::_patched_state;
        if (!BlueFin::_patched_state)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v11 = (v11)(a1, BlueFin::__pkgStdEvt);
        if (!v11)
        {
          goto LABEL_56;
        }
      }
    }

    v12 = v15 - 8;
    v17 = v9;
    while (v11 != v17)
    {
      v17 = *(&v30 + v12);
      v12 -= 8;
      if (!v17)
      {
        goto LABEL_50;
      }
    }
  }

LABEL_58:
  if (v12 > 47)
  {
    v18 = "e < &entry[_DIM(entry)]";
    DeviceFaultNotify("glhsm_dyn.cpp", 104, "tran", "e < &entry[_DIM(entry)]");
    v19 = 104;
    goto LABEL_85;
  }

LABEL_59:
  v20 = &v30 + v12;
  v21 = *(&v30 + v12);
  if (v21)
  {
    do
    {
      if ((BlueFin::patch_trigger(v21, a1, byte_298A32C8C, &BlueFin::_patched_state) & 1) == 0)
      {
        (*v20)(a1, byte_298A32C8C);
      }

      v22 = *(v20 - 1);
      v20 -= 8;
      v21 = v22;
    }

    while (v22);
  }

  a1[1] = v4;
  v23 = a1[2];
  if (a1[3] != v23)
  {
    a1[3] = v23;
  }

  a1[2] = a3;
  if (!v4)
  {
    v18 = "s";
    DeviceFaultNotify("glhsm_dyn.cpp", 119, "tran", "s");
    v19 = 119;
LABEL_85:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glhsm_dyn.cpp", v19, v18);
  }

  while (BlueFin::patch_trigger(v4, a1, byte_298A32C8A, &BlueFin::_patched_state))
  {
    result = BlueFin::_patched_state;
    if (BlueFin::_patched_state)
    {
      goto LABEL_83;
    }

LABEL_70:
    v25 = a1[1];
    v31 = v25;
    if (BlueFin::patch_trigger(v25, a1, BlueFin::__pkgStdEvt, &BlueFin::_patched_state))
    {
      v26 = BlueFin::_patched_state;
    }

    else
    {
      v26 = (v25)(a1, BlueFin::__pkgStdEvt);
    }

    v27 = &v31;
    if (v26 != v4)
    {
      do
      {
        v27[1] = v26;
        ++v27;
        if (BlueFin::patch_trigger(v26, a1, BlueFin::__pkgStdEvt, &BlueFin::_patched_state))
        {
          v26 = BlueFin::_patched_state;
        }

        else
        {
          v26 = (v26)(a1, BlueFin::__pkgStdEvt);
        }
      }

      while (v26 != v4);
      v25 = *v27;
    }

    do
    {
      if ((BlueFin::patch_trigger(v25, a1, byte_298A32C8C, &BlueFin::_patched_state) & 1) == 0)
      {
        (*v27)(a1, byte_298A32C8C);
      }

      v28 = *--v27;
      v25 = v28;
    }

    while (v28);
    v4 = a1[1];
  }

  result = (v4)(a1, byte_298A32C8A);
  if (!result)
  {
    goto LABEL_70;
  }

LABEL_83:
  v29 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t *BlueFin::GlTimer::disarm(uint64_t *this)
{
  if (*(this + 24))
  {
    v1 = this[4];
    if (v1)
    {
      if (*(this + 24) - 3 <= 0xFFFFFFFD)
      {
        DeviceFaultNotify("glhsm_timer.cpp", 150, "disarm", "myState == GL_TIMER_ST_ONE_SHOT || myState == GL_TIMER_ST_PERIODIC");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glhsm_timer.cpp", 150, "myState == GL_TIMER_ST_ONE_SHOT || myState == GL_TIMER_ST_PERIODIC");
      }

      v3 = *(v1 + 96);
      v2 = (v1 + 96);
      v4 = this[1];
      if (v3 != this)
      {
        v5 = *this;
        if (v4)
        {
          *v4 = v5;
        }

        v2 = (v5 + 8);
      }

      *v2 = v4;
      *(this + 24) = 0;
    }
  }

  return this;
}

uint64_t BlueFin::GlTimer::arm(BlueFin::GlTimer *this, char a2, char a3, unsigned int a4)
{
  if (*(this + 24) >= 3u)
  {
    v13 = "GL_TIMER_ST_FREE == myState || GL_TIMER_ST_ONE_SHOT == myState || GL_TIMER_ST_PERIODIC == myState";
    DeviceFaultNotify("glhsm_timer.cpp", 51, "arm", "GL_TIMER_ST_FREE == myState || GL_TIMER_ST_ONE_SHOT == myState || GL_TIMER_ST_PERIODIC == myState");
    v14 = 51;
LABEL_11:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glhsm_timer.cpp", v14, v13);
  }

  if (!*(this + 4))
  {
    v13 = "mypActive";
    DeviceFaultNotify("glhsm_timer.cpp", 52, "arm", "mypActive");
    v14 = 52;
    goto LABEL_11;
  }

  if (a4 >= 0x7FFFFFFF)
  {
    v13 = "deltaT < ulMaxDeltaT";
    DeviceFaultNotify("glhsm_timer.cpp", 54, "arm", "deltaT < ulMaxDeltaT");
    v14 = 54;
    goto LABEL_11;
  }

  v8 = BlueFin::GlUtils::m_pInstance;
  ++*(BlueFin::GlUtils::m_pInstance + 1088);
  result = (*(**v8 + 48))();
  v8[273] = result;
  *(this + 25) = a2;
  *(this + 26) = a3;
  v10 = *(BlueFin::GlUtils::m_pInstance + 1092);
  *(this + 4) = a4;
  *(this + 5) = v10;
  if (!*(this + 24))
  {
    v11 = *(this + 4);
    v12 = *(v11 + 96);
    *this = 0;
    *(this + 1) = v12;
    if (v12)
    {
      *v12 = this;
    }

    *(v11 + 96) = this;
  }

  return result;
}

void FireMessageHandler::Tick::appendCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    if (a3 <= 100)
    {
      v10 = 100;
    }

    else
    {
      v10 = a3;
    }

    DeviceCommon::GetMachContinuousTime(a1);
    v18 = v17;
    if (*(a2 + 24))
    {
      v19 = *(a1 + 40);
      if (v19 >= *(a1 + 48))
      {
        v26 = std::vector<std::function<void ()(void)>>::__emplace_back_slow_path<std::function<void ()(void)>&>((a1 + 32), a2);
      }

      else
      {
        std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](*(a1 + 40), a2);
        v26 = v19 + 32;
        *(a1 + 40) = v19 + 32;
      }

      *(a1 + 40) = v26;
      v29 = *(a2 + 24);
      if (v29)
      {
        v30 = (*(*v29 + 64))(v29);
      }

      else
      {
        v30 = MEMORY[0x29EDC9500];
      }

      FireDeviceLog::DeviceLogBase(6, "timer,appendCallback,%s,tickTimeMs,%d", v20, v21, v22, v23, v24, v25, *(v30 + 8));
    }

    v31 = v18 * 1000.0 + v10;
    v32 = *(a1 + 56);
    if (v31 + 100.0 >= v32)
    {
      FireDeviceLog::DeviceLogBase(8, "timer,appendCallback,alreadyScheduled,%.2f,current,%.2f,timeout,%d", v11, v12, v13, v14, v15, v16, SLOBYTE(v32));
    }

    else
    {
      *(a1 + 56) = v31;
      if (!FireResourceMgr::fInstance)
      {
        operator new();
      }

      (*(**(FireResourceMgr::fInstance + 8) + 24))(*(FireResourceMgr::fInstance + 8), v10, 0);
      FireDeviceLog::DeviceLogBase(6, "timer,appendCallback,startTimer,%d", v33, v34, v35, v36, v37, v38, v10);
    }
  }

  else if (*(a2 + 24))
  {
    v27 = *(a1 + 40);
    if (v27 >= *(a1 + 48))
    {
      v28 = std::vector<std::function<void ()(void)>>::__emplace_back_slow_path<std::function<void ()(void)>&>((a1 + 32), a2);
    }

    else
    {
      std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](*(a1 + 40), a2);
      v28 = v27 + 32;
      *(a1 + 40) = v27 + 32;
    }

    *(a1 + 40) = v28;
    if (!FireResourceMgr::fInstance)
    {
      operator new();
    }

    (*(**(FireResourceMgr::fInstance + 8) + 24))(*(FireResourceMgr::fInstance + 8), 0, 0);
    v45 = *(a2 + 24);
    if (v45)
    {
      v46 = (*(*v45 + 64))(v45);
    }

    else
    {
      v46 = MEMORY[0x29EDC9500];
    }

    FireDeviceLog::DeviceLogBase(6, "timer,appendCallback,bounce,%s,tickTimeMs,%d", v39, v40, v41, v42, v43, v44, *(v46 + 8));
  }

  else
  {
    FireDeviceLog::DeviceLogBase(1, "timer,appendCallback,bounce,nullptr", a3, a4, a5, a6, a7, a8, v47);

    DeviceFaultNotify("FireMessageHandler.cpp", 1567, "appendCallback", "timer,appendCallback,bounce,nullptr");
  }
}

uint64_t std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

BOOL BlueFin::GlMeSrdAsicConfig::IsPikeAsicType(BlueFin::GlMeSrdAsicConfig *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    DeviceFaultNotify("glmesrd_asic_config.cpp", 4436, "IsPikeAsicType", "m_eAsicType != ASIC_TYPE_UNKNOWN");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asic_config.cpp", 4436, "m_eAsicType != ASIC_TYPE_UNKNOWN");
  }

  return v1 == 3;
}

uint64_t BlueFin::GlMeSrdAsicConfig::VERIFY(uint64_t result, int a2)
{
  if ((*(result + 1423) & 1) == 0)
  {
    if (*(result + 8))
    {
      return result;
    }

    v2 = "IsAsicTypeValid()";
    DeviceFaultNotify("glmesrd_asic_config.cpp", 4862, "VERIFY", "IsAsicTypeValid()");
    v3 = 4862;
    goto LABEL_10;
  }

  if (!a2)
  {
    result = (*(*result + 232))(result);
    if (result)
    {
      return result;
    }

    v2 = "IsAsicCfgValid()";
    DeviceFaultNotify("glmesrd_asic_config.cpp", 4870, "VERIFY", "IsAsicCfgValid()");
    v3 = 4870;
LABEL_10:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asic_config.cpp", v3, v2);
  }

  if (!*(result + 8))
  {
    v2 = "IsAsicTypeValid()";
    DeviceFaultNotify("glmesrd_asic_config.cpp", 4875, "VERIFY", "IsAsicTypeValid()");
    v3 = 4875;
    goto LABEL_10;
  }

  return result;
}

BOOL BlueFin::GlMeSrdAsicConfig::IsMinnowAsicType(BlueFin::GlMeSrdAsicConfig *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    DeviceFaultNotify("glmesrd_asic_config.cpp", 4442, "IsMinnowAsicType", "m_eAsicType != ASIC_TYPE_UNKNOWN");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asic_config.cpp", 4442, "m_eAsicType != ASIC_TYPE_UNKNOWN");
  }

  return v1 == 5;
}

void DeviceFaultNotify(char *__s, int a2, char *a3, char a4)
{
  std::string::basic_string[abi:ne200100]<0>(v19, __s);
  v21 = a2;
  std::string::basic_string[abi:ne200100]<0>(&__p, a3);
  v17 = 0;
  v18 = 0;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  v16 = 0;
  v14 = std::vector<GnssHal::ExtensionsFire::RecoveryPoint>::__emplace_back_slow_path<GnssHal::ExtensionsFire::RecoveryPoint&>(&v13, v19);
  FireDeviceLog::DeviceLogBase(2, "DeviceFaultNotify,msg,%s,file,%s,line,%d,func,%s", v7, v8, v9, v10, v11, v12, a4);
  if (!FireResourceMgr::fInstance)
  {
    operator new();
  }

  (*(**(FireResourceMgr::fInstance + 40) + 144))(*(FireResourceMgr::fInstance + 40), &v13);
  if (!FireResourceMgr::fInstance)
  {
    operator new();
  }

  (*(**(FireResourceMgr::fInstance + 16) + 48))(*(FireResourceMgr::fInstance + 16));
  if (!FireResourceMgr::fInstance)
  {
    operator new();
  }

  (*(**(FireResourceMgr::fInstance + 24) + 56))(*(FireResourceMgr::fInstance + 24));
  usleep(0xC350u);
  v24 = &v13;
  std::vector<GnssHal::ExtensionsFire::RecoveryPoint>::__destroy_vector::operator()[abi:ne200100](&v24);
  if (v23 < 0)
  {
    operator delete(__p);
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }
}

void sub_2987A265C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (*BlueFin::GlMeSrdAsicinit::bri_startup_asic(BlueFin::GlMeSrdAsicinit *this, unsigned __int8 *a2))()
{
  result = 0;
  v39 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if (v4 <= 5)
  {
    if (v4 != 2)
    {
      if (v4 != 3)
      {
        goto LABEL_7;
      }

      goto LABEL_41;
    }

    v5 = *(*(this + 16) + 1418);
    if ((v5 | 4) == 4)
    {
LABEL_40:
      *(this + 86) = this;
      BlueFin::GlTimer::arm((this + 656), 6, 0, 0xFu);
      result = 0;
      *(this + 680) = 1;
      goto LABEL_41;
    }

    *(this + 732) = 0;
    v37[2] = xmmword_298A3414F;
    v37[3] = unk_298A3415F;
    v38[0] = xmmword_298A3416F;
    *(v38 + 9) = *(&xmmword_298A3416F + 9);
    v37[0] = xmmword_298A3412F;
    v37[1] = unk_298A3413F;
    v35[6] = xmmword_298A341E8;
    v35[7] = unk_298A341F8;
    v35[8] = xmmword_298A34208;
    v35[2] = xmmword_298A341A8;
    v35[3] = unk_298A341B8;
    v35[5] = unk_298A341D8;
    v35[4] = xmmword_298A341C8;
    v35[1] = unk_298A34198;
    v35[0] = xmmword_298A34188;
    v36 = 28350213;
    memcpy(__dst, &unk_298A3421C, sizeof(__dst));
    memcpy(v33, &unk_298A34357, 0x13FuLL);
    v29 = xmmword_298A34516;
    v30 = unk_298A34526;
    v31 = xmmword_298A34536;
    v32 = unk_298A34546;
    v25 = xmmword_298A344D6;
    v26 = unk_298A344E6;
    v27 = xmmword_298A344F6;
    v28 = unk_298A34506;
    *v21 = xmmword_298A34496;
    v22 = unk_298A344A6;
    v23 = xmmword_298A344B6;
    v24 = unk_298A344C6;
    v19[8] = xmmword_298A345D6;
    v19[9] = unk_298A345E6;
    v19[10] = xmmword_298A345F6;
    v19[4] = xmmword_298A34596;
    v19[5] = unk_298A345A6;
    v19[6] = xmmword_298A345B6;
    v19[7] = unk_298A345C6;
    v19[0] = xmmword_298A34556;
    v19[1] = unk_298A34566;
    v20 = 432;
    v19[2] = xmmword_298A34576;
    v19[3] = unk_298A34586;
    if ((v5 - 4) > 0xFFFFFFFC)
    {
      v6 = "A0";
      if (v5 == 2)
      {
        v6 = "B1";
      }

      if (v5 == 1)
      {
        v6 = "B0";
      }

      GlCustomLog(15, "GlMeSrdAsicinit::Mcu_SendAutobaudBypassSequnce() MCU %s Bypass Enabled\n", v6);
      v7 = (*(**(this + 16) + 1368))();
      if (v5 == 1 && v7)
      {
        v8 = v35;
        v9 = this;
      }

      else if (v5 == 1)
      {
        v8 = v37;
        v9 = this;
      }

      else
      {
        v17 = (*(**(this + 16) + 1368))(*(this + 16));
        if (v5 == 2 && v17)
        {
          v8 = v33;
          v9 = this;
        }

        else if (v5 == 2)
        {
          v8 = __dst;
          v9 = this;
        }

        else
        {
          if ((*(**(this + 16) + 1368))(*(this + 16)))
          {
            v8 = v19;
          }

          else
          {
            v8 = v21;
          }

          v9 = this;
        }
      }

      BlueFin::GlMeSrdAsicinit::Bri_SendAsicData(v9, v8);
      goto LABEL_40;
    }

    v12 = "ucMcuByass == MCU_BYPASS_75B0 || ucMcuByass == MCU_BYPASS_75B1 || ucMcuByass == MCU_BYPASS_76A0";
    DeviceFaultNotify("glmesrd_asicinit.cpp", 3103, "Mcu_SendAutobaudBypassSequnce", "ucMcuByass == MCU_BYPASS_75B0 || ucMcuByass == MCU_BYPASS_75B1 || ucMcuByass == MCU_BYPASS_76A0");
    v13 = 3103;
LABEL_19:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asicinit.cpp", v13, v12);
  }

  if (v4 == 6)
  {
    v10 = *(this + 16);
    v11 = *(v10 + 8);
    if ((v11 - 1) >= 3)
    {
      if (v11 == 5)
      {
        *(this + 638) = 0;
        *(this + 696) = *(v10 + 356);
        *(this + 697) = *(v10 + 357);
        v14 = *(v10 + 352) == 2;
        *(this + 698) = v14;
        if (v14)
        {
          (*(**(this + 15) + 16))(*(this + 15));
        }

        *(this + 737) = 1;
        memset(v33, 128, 16);
        *(this + 732) = 0;
        BlueFin::GlMeSrdAsicinit::Bri_SendAsicData(this, v33);
        if ((*(*(this + 16) + 352) - 1) > 1)
        {
          v15 = "&GlMeSrdAsicinit::bri_wait4version";
          v16 = BlueFin::GlMeSrdAsicinit::bri_wait4version;
        }

        else
        {
          v15 = "&GlMeSrdAsicinit::bri_wait4flowcontrol";
          v16 = BlueFin::GlMeSrdAsicinit::bri_wait4flowcontrol;
        }

        BlueFin::QHsm::tran(this, v16, v15);
        result = 0;
        goto LABEL_41;
      }

      v12 = "ERROR :Asic Type Not Supported: Check your RfType\n";
      DeviceFaultNotify("glmesrd_asicinit.cpp", 490, "bri_startup_asic", "ERROR :Asic Type Not Supported: Check your RfType\n");
      v13 = 490;
    }

    else
    {
      v12 = "ERROR :Asic Type Not Supported: Check your RfType\n";
      DeviceFaultNotify("glmesrd_asicinit.cpp", 508, "bri_startup_asic", "ERROR :Asic Type Not Supported: Check your RfType\n");
      v13 = 508;
    }

    goto LABEL_19;
  }

  if (v4 != 12)
  {
LABEL_7:
    result = BlueFin::QHsm::top;
  }

LABEL_41:
  v18 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t (*(*(*BlueFin::GlReqSm::wait4me(BlueFin::GlReqSm *this, _BYTE *a2))(uint64_t a1, unsigned __int8 *a2))(BlueFin::GlReqSm *this, const char *a2))()
{
  result = 0;
  switch(*a2)
  {
    case 2:
      *(this + 54569) = 0;
      v8 = *(this + 54596);
      *(this + 6705) = this;
      if (v8 == 1)
      {
        v9 = 20000;
      }

      else
      {
        v9 = 10000;
      }

      BlueFin::GlTimer::arm((this + 53608), 31, 0, v9);
      result = 0;
      *(this + 53632) = 1;
      return result;
    case 3:
      v10 = 53608;
      goto LABEL_17;
    case 6:
    case 7:
    case 0xB:
    case 0x12:
    case 0x13:
    case 0x14:
    case 0x15:
    case 0x16:
    case 0x1B:
    case 0x1C:
    case 0x1D:
    case 0x1E:
    case 0x20:
    case 0x21:
    case 0x22:
    case 0x23:
    case 0x24:
    case 0x26:
    case 0x31:
    case 0x32:
    case 0x33:
    case 0x34:
    case 0x35:
    case 0x36:
      return result;
    case 8:
      BlueFin::GlPePendingBag::TerminateRequest(this + 6496, *(this + 4148));
      return 0;
    case 9:
      GlCustomLog(14, "GlReqSm: remove all requests\n");
      BlueFin::GlPePendingBag::TerminateAll(this + 6496);
      v10 = 31584;
LABEL_17:
      BlueFin::GlTimer::disarm((this + v10));
      return 0;
    case 0xA:
      BlueFin::GlReqSm::SetAsstFromPend(this, 0, 0);
      return 0;
    case 0x11:
      if (*(this + 54569) == 1)
      {
        goto LABEL_20;
      }

      BlueFin::GlPePendingBag::GetPendingRequestTypes(this + 6496, &v13);
      if ((v13 & 0xFFFFCFFF) == 0 && (v13 & 0x3000) != 0 && (*(*(this + 784) + 1318) & 1) == 0)
      {
        goto LABEL_20;
      }

      if (*(this + 5132) <= 0 && !*(this + 31608) && !*(this + 31648) && !*(this + 31688))
      {
        BlueFin::GlReqSm::SetAsstFromPend(this, 1, 0);
LABEL_20:
        v11 = "&GlReqSm::standby";
        v12 = BlueFin::GlReqSm::standby;
        goto LABEL_34;
      }

      BlueFin::GlReqSm::CreateMeJob(this);
      if ((*(**(this + 784) + 1128))(*(this + 784)) && ((*(**(this + 784) + 1112))(*(this + 784)) & 1) == 0)
      {
        goto LABEL_20;
      }

      v11 = "&GlReqSm::processing";
      v12 = BlueFin::GlReqSm::processing;
LABEL_34:
      BlueFin::QHsm::tran(this, v12, v11);
      return 0;
    case 0x1A:
      BlueFin::GlTimer::disarm(this + 3948);
      result = 0;
      *(this + 2712) = 0;
      return result;
    case 0x1F:
    case 0x25:
      v4 = *(this + 3048);
      v13 = &v15;
      v14 = 3;
      v15 = v4;
      v16 = 0;
      if ((v4 & 0x100) != 0 || BlueFin::GlPePendingBag::HasReq(this + 6496, 8))
      {
        v5 = *(this + 4131);
        GlCustomLog(14, "GlReqSm::wait4me calling HandleFactoryTestFailure\n");
        if ((*(v13 + 1) & 1) == 0)
        {
          BlueFin::GlReqSm::CreateNewReqFromPend(this);
        }

        BlueFin::GlPeReqBag::HandleFactoryTestFailure((this + 10880), v5);
        BlueFin::GlPeReqBag::TerminateAll((this + 10880));
        BlueFin::GlPeReqBag::Cleanup(this + 10880);
      }

      *(this + 2712) = 0;
      v6 = *(this + 4149);
      if (*(v6 + 296) == 1)
      {
        v7 = *(v6 + 80);
        if (v7)
        {
          v7(*(v6 + 8), 0);
          *(v6 + 296) = 0;
        }
      }

      BlueFin::QHsm::tran(this, BlueFin::GlReqSm::restart, "&GlReqSm::restart");
      (*(**(this + 4149) + 80))(*(this + 4149), 6, 0);
      GlCustomLog(11, "GlReqSm::communication breakdown at %s: %d. GLL will be restarted!\n", "wait4me", 3336);
      return 0;
    default:
      return BlueFin::GlReqSm::host_based_positioning;
  }
}

BOOL BlueFin::GlPeTimeManager::TimeKnown(uint64_t a1, int a2, unsigned int a3)
{
  if (*(a1 + 2616) == -1 || *(a1 + 2632) == 4294967300.0)
  {
    return 0;
  }

  v3 = 2632;
  if (*(a1 + 2736) != 4294967300.0)
  {
    v3 = 2736;
  }

  v4 = *(a1 + v3);
  return v4 + *(BlueFin::GlPeGnssTime::GetConversionTable((a1 + 2608)) + 4 * a2 + 48) <= a3;
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t std::__function::__value_func<void ()(gnss::DecodedExtendedEphemeris &&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t gnss::FireGnssDevice::injectAssistanceFile(uint64_t a1, __n128 *a2, unsigned __int8 a3, uint64_t a4, uint64_t a5)
{
  v24[3] = *MEMORY[0x29EDCA608];
  v9 = *(a4 + 24);
  if (v9)
  {
    if (v9 == a4)
    {
      v23 = v22;
      (*(*v9 + 24))(v9, v22);
    }

    else
    {
      v23 = (*(*v9 + 16))(v9);
    }
  }

  else
  {
    v23 = 0;
  }

  v10 = a1 + 264;
  if (v22 != (a1 + 264))
  {
    v11 = v23;
    v12 = *(a1 + 288);
    if (v23 == v22)
    {
      if (v12 == v10)
      {
        (*(*v23 + 24))();
        (*(*v23 + 32))(v23);
        v23 = 0;
        (*(**(a1 + 288) + 24))(*(a1 + 288), v22);
        (*(**(a1 + 288) + 32))(*(a1 + 288));
        *(a1 + 288) = 0;
        v23 = v22;
        (*(v24[0] + 24))(v24, a1 + 264);
        (*(v24[0] + 32))(v24);
      }

      else
      {
        (*(*v23 + 24))();
        (*(*v23 + 32))(v23);
        v23 = *(a1 + 288);
      }

      *(a1 + 288) = v10;
    }

    else if (v12 == v10)
    {
      (*(*v12 + 24))(*(a1 + 288), v22);
      (*(**(a1 + 288) + 32))(*(a1 + 288));
      *(a1 + 288) = v23;
      v23 = v22;
    }

    else
    {
      v23 = *(a1 + 288);
      *(a1 + 288) = v11;
    }
  }

  std::__function::__value_func<void ()(gnss::DecodedExtendedEphemeris &&)>::~__value_func[abi:ne200100](v22);
  FireDeviceLog::DeviceLogBase(6, "injectAssistanceFile,size,%zu,type,%d", v13, v14, v15, v16, v17, v18, a2->n128_u8[8] - a2->n128_u8[0]);
  v19 = FireMessageHandler::sendInjectAssistanceFile(*(a1 + 40), a3, a2);
  v20 = *MEMORY[0x29EDCA608];

  return std::function<void ()(gnss::Result)>::operator()(a5, v19);
}

void sub_2987A34FC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t FireMessageHandler::sendInjectAssistanceFile(uint64_t a1, unsigned __int8 a2, __n128 *a3)
{
  v13 = a2;
  v14 = &v13;
  v5 = std::__hash_table<std::__hash_value_type<gnss::SvPositionSource,std::vector<unsigned char>>,std::__unordered_map_hasher<gnss::SvPositionSource,std::__hash_value_type<gnss::SvPositionSource,std::vector<unsigned char>>,std::hash<gnss::SvPositionSource>,std::equal_to<gnss::SvPositionSource>,true>,std::__unordered_map_equal<gnss::SvPositionSource,std::__hash_value_type<gnss::SvPositionSource,std::vector<unsigned char>>,std::equal_to<gnss::SvPositionSource>,std::hash<gnss::SvPositionSource>,true>,std::allocator<std::__hash_value_type<gnss::SvPositionSource,std::vector<unsigned char>>>>::__emplace_unique_key_args<gnss::SvPositionSource,std::piecewise_construct_t const&,std::tuple<gnss::SvPositionSource const&>,std::tuple<>>((a1 + 2152), &v13);
  std::vector<unsigned char>::__move_assign((v5 + 3), a3);
  FireMessageHandler::send(a1, 1073741830, v6, v7, v8, v9, v10, v11);
  return 1;
}

uint64_t BlueFin::GlPosEng::readLtoFile(BlueFin::GlPosEng *this, unsigned int *a2, uint64_t a3)
{
  if (a2)
  {
    *a2 = 0;
  }

  if (!BlueFin::GlPeTimeManager::TimeKnown(this + 121216, 0, 0x3938700u) || (v6 = this + 374912, (*(this + 374913) & 1) != 0))
  {
    v7 = 0;
    result = 1;
    if (!a2)
    {
      return result;
    }

    goto LABEL_6;
  }

  if ((*(*(this + 2) + 829) & 0x20) != 0)
  {
    v30 = "LTO";
    if (a3)
    {
      v30 = "RTO";
    }

    GlCustomLog(14, "%s file is ignored\n", v30);
    return 2;
  }

  *(this + 374913) = 1;
  if ((*v6 & 1) == 0)
  {
    v9 = "LTO";
    if (a3)
    {
      v9 = "RTO";
    }

    GlCustomLog(14, " Start reading %s ...\n", v9);
  }

  BlueFin::GlPeTimeManager::GetTime((this + 121216), 1, v35);
  v36 = &off_2A1F0B5F0;
  v37 = 0;
  Gps = BlueFin::GlPeGnssTime::GetGps(v35, &v36);
  v11 = (v36[4])(&v36, Gps);
  v13.i32[0] = v37;
  *v13.i64 = v13.u64[0] * 2.32830644e-10 + v11;
  *v14.i64 = *v13.i64 + trunc(*v13.i64 * 2.32830644e-10) * -4294967300.0;
  v15.f64[0] = NAN;
  v15.f64[1] = NAN;
  v16 = vnegq_f64(v15);
  v17 = vbslq_s8(v16, v14, v13).u64[0];
  if (*v13.i64 <= 4294967300.0)
  {
    v18 = *v13.i64;
  }

  else
  {
    v18 = *&v17;
  }

  if (v18 < -4294967300.0)
  {
    *v13.i64 = -v18;
    *v12.i64 = -(v18 - trunc(v18 * -2.32830644e-10) * -4294967300.0);
    v18 = -*vbslq_s8(v16, v12, v13).i64;
  }

  v19 = *(this + 2);
  v20 = (v36[4])(&v36);
  BlueFin::GlSettingsImpl::UpdateLtOcbeeQaData(v19, v20 / 0x93A80);
  v34 = 6;
  v21 = (*(**(this + 4) + 88))(*(this + 4));
  v35[0].n128_u64[1] = (*(**(this + 4) + 96))(*(this + 4));
  v22 = v21(102560);
  v35[0].n128_u64[0] = v22;
  if (!v22)
  {
    DeviceFaultNotify("glmemalloc.h", 74, "GlStackAlloc", "m_ptr != nullptr");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmemalloc.h", 74, "m_ptr != nullptr");
  }

  v23 = v22;
  if (v18 < 0.0)
  {
    v24 = --v18;
  }

  else
  {
    v24 = v18;
  }

  BlueFin::GlPeLtoReader::GlPeLtoReader(v22, this + 7648, 0, v24, &v34, *(*(this + 4) + 8), this + 224, this + 121216, *(this + 4), this + 350608, this + 264320, this + 181312, this + 181056, this + 56, this + 373088, this + 160);
  if (*(*(this + 2) + 26012))
  {
    *(v23 + 50704) = *(*(this + 2) + 26012);
  }

  v25 = *(this + 4);
  v26 = *(v25 + 152);
  if (v26)
  {
    v26(*(v25 + 8), v23, a3);
  }

  v27 = (this + 158164);
  v28 = (this + 123784);
  v7 = *(v23 + 9748);
  BlueFin::GlStackAlloc<BlueFin::GlPeLtoReader>::~GlStackAlloc(v35);
  v29 = v34;
  if (*v6)
  {
    GlCustomLog(14, "readLtoFile::%s reading complete  Pass:%c  NumBytes:%u\n");
  }

  else
  {
    v33 = *v28;
    GlCustomLog(14, "readLtoFile::%s reading complete  Pass:%c  NumBytes:%u LMS: %u\n");
  }

  if (!v29)
  {
    if (a3)
    {
      if (*(this + 9281) != 1 || BlueFin::GlGnssSet::IsEmpty((this + 8864)))
      {
        goto LABEL_41;
      }
    }

    else if (*(this + 93730) != -7200001 && *(this + 9264) != 1)
    {
      goto LABEL_41;
    }

    *(this + 93730) = *v28;
LABEL_41:
    result = 0;
    if (v7)
    {
      v31 = 1;
    }

    else
    {
      v31 = 2;
    }

    goto LABEL_44;
  }

  v7 = 0;
  v31 = 2;
  result = 3;
LABEL_44:
  v32 = *v27;
  *v27 = v31;
  if (v32 != v31)
  {
    *(this + 158184) = 1;
  }

  *(this + 31564) = *v28;
  *(this + 374913) = 0;
  if (a2)
  {
LABEL_6:
    *a2 = v7;
  }

  return result;
}

void sub_2987A3A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  BlueFin::GlStackAlloc<BlueFin::GlPeLtoReader>::~GlStackAlloc(va);
  _Unwind_Resume(a1);
}

uint64_t BlueFin::GlMeSrdAsicinit::SetAsicData(uint64_t this, unsigned __int8 *a2, int a3)
{
  v5 = this;
  if (*(this + 737) != 1)
  {
    v30 = ***(this + 120);

    return v30();
  }

  v6 = *(this + 128);
  if (*(v6 + 8) != 3 || !*(v6 + 1418) || (this = BlueFin::QHsm::isIn(this, BlueFin::GlMeSrdAsicinit::wait4Mcuversion), !this))
  {
    v73 = &unk_2A1F0D5D8;
    v74 = a3;
    v75 = a2;
    if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
    {
      this = off_2A1F0D5F0(&v73);
    }

    *(v5 + 752) += a3;
    if (!a3)
    {
      return this;
    }

    v31 = 0;
    v32 = (v5 + 700);
    v33 = (v5 + 705);
    v34 = v5 + 701;
    while (1)
    {
      v35 = *(v5 + 732);
      if (v35 == 32)
      {
        v36 = 701;
        v35 = 1;
        while (*(v5 + v36) != 254)
        {
          ++v35;
          if (++v36 == 732)
          {
            LOBYTE(v35) = 0;
            goto LABEL_74;
          }
        }

        v37 = 0;
        do
        {
          v32[v37] = v32[(v35 + v37)];
          ++v37;
          v38 = *(v5 + 732);
        }

        while (v37 < (v38 - v35));
        LOBYTE(v35) = v38 - v35;
LABEL_74:
        *(v5 + 732) = v35;
      }

      if (!v35 && a2[v31] != 254)
      {
        ++*(v5 + 760);
        goto LABEL_145;
      }

      if (*(v5 + 698) != 1)
      {
        LOBYTE(v40) = a2[v31];
        goto LABEL_92;
      }

      if (*(v5 + 735) != 1)
      {
        v40 = a2[v31];
        if (v40 == 224)
        {
          *(v5 + 735) = 1;
          goto LABEL_145;
        }

        goto LABEL_91;
      }

      *(v5 + 735) = 0;
      v39 = a2[v31];
      switch(v39)
      {
        case 4:
          LOBYTE(v40) = *(v5 + 697);
          break;
        case 3:
          LOBYTE(v40) = *(v5 + 696);
          break;
        case 2:
          LOBYTE(v40) = -32;
          break;
        default:
          this = GlCustomLog(11, "GlMeSrdAsicinit::Bri_EswLoadSetAsicData received unknown escaped character!\n");
          *(v5 + 732) = 0;
          ++*(v5 + 760);
          LOBYTE(v40) = a2[v31];
          goto LABEL_91;
      }

      a2[v31] = v40;
LABEL_91:
      LOBYTE(v35) = *(v5 + 732);
LABEL_92:
      *(v5 + 732) = v35 + 1;
      v32[v35] = v40;
      v41 = *(*(v5 + 128) + 8);
      if ((v41 - 2) >= 2)
      {
        if (v41 == 1)
        {
          v47 = *(v5 + 732);
          if (v47 != 10)
          {
            if (v47 >= 0x20)
            {
              v54 = 0;
              v55 = 0;
              *(v5 + 732) = 0;
              ++*(v5 + 760);
              do
              {
                v56 = *(v34 + v54);
                v55 |= v56 == 254;
                if (v55)
                {
                  v57 = *(v5 + 732);
                  *(v5 + 732) = v57 + 1;
                  v32[v57] = v56;
                }

                ++v54;
              }

              while (v54 != 31);
            }

            goto LABEL_145;
          }

          if (*v32 == 254 && !*(v5 + 701) && *(v5 + 702) == 253 && *(v5 + 709) == 252)
          {
            v48 = *(v5 + 703);
            v49 = *(v5 + 704);
            if (v48 == 47 && v49 == 21)
            {
              *(v5 + 768) = 0;
              *(v5 + 772) = *(v5 + 705) | (*(v5 + 707) << 16);
              *(v5 + 776) = *(v5 + 708);
              v76 = 3596;
              v50 = *(v5 + 32);
              this = *(v5 + 8);
              *(v5 + 32) = this;
              do
              {
                v77 = 0;
                if (BlueFin::patch_dispatch(this, v5, &v76, &v77))
                {
                  this = v77;
                }

                else
                {
                  this = (*(v5 + 32))(v5, &v76);
                }

                *(v5 + 32) = this;
              }

              while (this);
LABEL_154:
              *(v5 + 32) = v50;
LABEL_182:
              *(v5 + 732) = 0;
              ++*(v5 + 756);
              goto LABEL_145;
            }

            if (v48 != 31)
            {
              if (!*(v5 + 703))
              {
                *(v5 + 768) = v49;
                v59 = *v33;
                goto LABEL_180;
              }

              if (v48 != 33 || *(v5 + 704))
              {
                goto LABEL_182;
              }

              *(v5 + 768) = *v33;
              v67 = 3852;
LABEL_181:
              LOWORD(v77) = v67;
              this = BlueFin::QHsm::dispatch(v5, &v77);
              goto LABEL_182;
            }

            *(v5 + 768) = v49;
            *(v5 + 769) = *(v5 + 705);
LABEL_174:
            v67 = 3340;
            goto LABEL_181;
          }

          goto LABEL_145;
        }

        if (v41 != 5)
        {
          v68 = "0";
          DeviceFaultNotify("glmesrd_asicinit.cpp", 3545, "Bri_EswLoadSetAsicData", "0");
          v69 = 3545;
          goto LABEL_185;
        }
      }

      v42 = *(v5 + 732);
      if (v42 > 0x20)
      {
        v68 = "m_aucEswLoadAsicDataSize <= _DIM(m_aucEswLoadAsicData)";
        DeviceFaultNotify("glmesrd_asicinit.cpp", 3587, "Bri_CheckForReceivedPacket_Carp", "m_aucEswLoadAsicDataSize <= _DIM(m_aucEswLoadAsicData)");
        v69 = 3587;
        goto LABEL_185;
      }

      if (v42 == 9)
      {
        if (*v32 != 254 || *(v5 + 701) || *(v5 + 702) != 253 || *(v5 + 708) != 252)
        {
          goto LABEL_145;
        }

        v53 = *(v5 + 703);
        if (v53 == 14)
        {
          v76 = 7436;
          v52 = *(v5 + 32);
          this = *(v5 + 8);
          *(v5 + 32) = this;
          do
          {
            v77 = 0;
            if (BlueFin::patch_dispatch(this, v5, &v76, &v77))
            {
              this = v77;
            }

            else
            {
              this = (*(v5 + 32))(v5, &v76);
            }

            *(v5 + 32) = this;
          }

          while (this);
          goto LABEL_163;
        }

        if (v53 == 15)
        {
          *(v5 + 772) = 0;
          *(v5 + 768) = *(v5 + 704);
          v76 = 3852;
          v52 = *(v5 + 32);
          this = *(v5 + 8);
          *(v5 + 32) = this;
          do
          {
            v77 = 0;
            if (BlueFin::patch_dispatch(this, v5, &v76, &v77))
            {
              this = v77;
            }

            else
            {
              this = (*(v5 + 32))(v5, &v76);
            }

            *(v5 + 32) = this;
          }

          while (this);
LABEL_163:
          *(v5 + 32) = v52;
          *(v5 + 732) = 0;
          ++*(v5 + 756);
        }
      }

      else
      {
        if (v42 != 13)
        {
          if (v42 == 32)
          {
            v43 = 0;
            v44 = 0;
            *(v5 + 732) = 0;
            ++*(v5 + 760);
            do
            {
              v45 = *(v34 + v43);
              v44 |= v45 == 254;
              if (v44)
              {
                v46 = *(v5 + 732);
                *(v5 + 732) = v46 + 1;
                v32[v46] = v45;
              }

              ++v43;
            }

            while (v43 != 31);
          }

          goto LABEL_145;
        }

        if (*v32 == 254 && !*(v5 + 701) && *(v5 + 702) == 253 && *(v5 + 712) == 252)
        {
          v51 = *(v5 + 703);
          if (v51 != 31)
          {
            v58 = v51 & 0xF;
            if (v58 != 9)
            {
              if (v58 == 10)
              {
                *(v5 + 772) = *(v5 + 708) | (*(v5 + 710) << 16);
                *(v5 + 776) = *(v5 + 711);
                *(v5 + 768) = *(v5 + 704);
                v76 = 3596;
                v50 = *(v5 + 32);
                this = *(v5 + 8);
                *(v5 + 32) = this;
                do
                {
                  v77 = 0;
                  if (BlueFin::patch_dispatch(this, v5, &v76, &v77))
                  {
                    this = v77;
                  }

                  else
                  {
                    this = (*(v5 + 32))(v5, &v76);
                  }

                  *(v5 + 32) = this;
                }

                while (this);
                goto LABEL_154;
              }

              goto LABEL_182;
            }

            v60 = *(v5 + 704);
            v61 = v60 | (*(v5 + 705) << 8);
            v62 = *(v5 + 707);
            v63 = (v62 << 24) | (*(v5 + 706) << 16) | v61;
            v64 = *(v5 + 708);
            v65 = (*(v5 + 709) << 8) | (*(v5 + 710) << 16) | (*(v5 + 711) << 24);
            v66 = v63 < 0xC0000400 && v62 > 0xBF;
            if (v66 || v63 == -1073739156)
            {
              if ((v60 & 3) != 0)
              {
                v68 = "(usOffsetInBytes & 0x03) == 0";
                DeviceFaultNotify("glmesrd_asicinit.cpp", 3686, "Bri_CheckForReceivedPacket_Carp", "(usOffsetInBytes & 0x03) == 0");
                v69 = 3686;
                goto LABEL_185;
              }

              *(v5 + 768) = v61 >> 2;
              v59 = v65 | v64;
LABEL_180:
              *(v5 + 772) = v59;
              v67 = 3084;
              goto LABEL_181;
            }

            if (((v62 << 24) | (*(v5 + 706) << 16) | v61 & 0xFFFFFC00) != 0xC0000800)
            {
              v68 = "0";
              DeviceFaultNotify("glmesrd_asicinit.cpp", 3721, "Bri_CheckForReceivedPacket_Carp", "0");
              v69 = 3721;
LABEL_185:
              __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asicinit.cpp", v69, v68);
            }

            if ((v60 & 3) != 0)
            {
              v68 = "(usOffsetInBytes & 0x03) == 0";
              DeviceFaultNotify("glmesrd_asicinit.cpp", 3703, "Bri_CheckForReceivedPacket_Carp", "(usOffsetInBytes & 0x03) == 0");
              v69 = 3703;
              goto LABEL_185;
            }

            if (v65)
            {
              v68 = "(ulData & 0xff) == ulData";
              DeviceFaultNotify("glmesrd_asicinit.cpp", 3704, "Bri_CheckForReceivedPacket_Carp", "(ulData & 0xff) == ulData");
              v69 = 3704;
              goto LABEL_185;
            }

            *(v5 + 768) = v61 >> 2;
            *(v5 + 769) = v64;
            goto LABEL_174;
          }

          *(v5 + 772) = 1;
          *(v5 + 768) = *(v5 + 704);
          *(v5 + 773) = *(v5 + 708);
          v76 = 3852;
          v52 = *(v5 + 32);
          this = *(v5 + 8);
          *(v5 + 32) = this;
          do
          {
            v77 = 0;
            if (BlueFin::patch_dispatch(this, v5, &v76, &v77))
            {
              this = v77;
            }

            else
            {
              this = (*(v5 + 32))(v5, &v76);
            }

            *(v5 + 32) = this;
          }

          while (this);
          goto LABEL_163;
        }
      }

LABEL_145:
      if (++v31 == a3)
      {
        return this;
      }
    }
  }

  v73 = &unk_2A1F0D5D8;
  v74 = a3;
  v75 = a2;
  if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    this = off_2A1F0D5F0(&v73);
  }

  *(v5 + 752) += a3;
  if (a3)
  {
    v7 = 0;
    v8 = (v5 + 700);
    v9 = xmmword_298A34030;
    v10 = xmmword_298A34040;
    v11 = xmmword_298A34050;
    do
    {
      v12 = *(v5 + 732);
      v13 = a2[v7];
      if (*(v5 + 732))
      {
        if ((v13 | 2) == 0x13)
        {
          goto LABEL_56;
        }
      }

      else
      {
        if (v13 != 176)
        {
          goto LABEL_56;
        }

        v16 = v7 > a3 - 2 ? v7 : v7 + 1;
        if (a3 != 1 && a2[v16])
        {
          goto LABEL_56;
        }
      }

      *(v5 + 732) = v12 + 1;
      v8[v12] = v13;
      v14 = *(v5 + 732);
      if (v14 >= 0x21)
      {
        v68 = "m_aucEswLoadAsicDataSize <= _DIM(m_aucEswLoadAsicData)";
        DeviceFaultNotify("glmesrd_asicinit.cpp", 3574, "Mcu_EswLoadSetMcuData", "m_aucEswLoadAsicDataSize <= _DIM(m_aucEswLoadAsicData)");
        v69 = 3574;
        goto LABEL_185;
      }

      if (v14 == 2)
      {
        if (*v8 == 176 && !*(v5 + 701))
        {
          goto LABEL_56;
        }

LABEL_27:
        *(v5 + 732) = 0;
        goto LABEL_56;
      }

      if (v14 == 32)
      {
        if (*(v5 + 730) != 176 || *(v5 + 731) == 1)
        {
          goto LABEL_27;
        }

        v15 = 32;
      }

      else
      {
        v15 = *(v5 + 732);
        if (v14 < 4)
        {
          goto LABEL_56;
        }
      }

      if (v8[v15 - 2] == 176)
      {
        v17 = v8[v15 - 1] - 3;
        if (v17 <= 2)
        {
          *(v5 + 732) = v14 - 1;
          v8[v14 - 2] = 0x1311B0u >> (8 * (v17 & 0x1F));
          LODWORD(v14) = *(v5 + 732);
        }
      }

      if (v14 < 0x16 || v8[(v14 - 2)] != 176 || v8[(v14 - 1)] != 1)
      {
        goto LABEL_56;
      }

      if (*(v5 + 704))
      {
        v18 = vdupq_n_s32(*(v5 + 704));
        v19 = vbicq_s8(v11, vuzp1q_s16(vceqzq_s32(vandq_s8(v18, v9)), vceqzq_s32(vandq_s8(v18, v10))));
        v19.i32[0] = vaddvq_s16(v19);
        *v19.i8 = vcnt_s8(*v19.i8);
        v19.i16[0] = vaddlv_u8(*v19.i8);
        v20 = v19.i32[0] + 5;
      }

      else
      {
        v20 = 5;
      }

      if (v8[v20] != 3)
      {
        goto LABEL_27;
      }

      v21 = &v8[v20];
      v22 = v21[3];
      v71 = v10;
      v72 = v9;
      v70 = v11;
      if (v22 == 160)
      {
        v23 = 3;
      }

      else if (v22 == 177)
      {
        v23 = 2;
      }

      else
      {
        if (v21[2] != 176)
        {
          v68 = "m_aucEswLoadAsicData[5 + flag_payload_size + 3] == 0xA0 || m_aucEswLoadAsicData[5 + flag_payload_size + 3] == 0xB1 || m_aucEswLoadAsicData[5 + flag_payload_size + 2] == 0xB0";
          DeviceFaultNotify("glmesrd_asicinit.cpp", 3884, "mcuCheckForReceivedPacket_Pike", "m_aucEswLoadAsicData[5 + flag_payload_size + 3] == 0xA0 || m_aucEswLoadAsicData[5 + flag_payload_size + 3] == 0xB1 || m_aucEswLoadAsicData[5 + flag_payload_size + 2] == 0xB0");
          v69 = 3884;
          goto LABEL_185;
        }

        v23 = 1;
      }

      (*(**(v5 + 128) + 1248))(*(v5 + 128), v23);
      v76 = 7692;
      v24 = *(v5 + 32);
      v25 = *(v5 + 8);
      *(v5 + 32) = v25;
      do
      {
        v77 = 0;
        if (BlueFin::patch_dispatch(v25, v5, &v76, &v77))
        {
          v25 = v77;
        }

        else
        {
          v25 = (*(v5 + 32))(v5, &v76);
        }

        *(v5 + 32) = v25;
      }

      while (v25);
      *(v5 + 32) = v24;
      *(v5 + 732) = 0;
      ++*(v5 + 756);
      v26 = *(*(v5 + 128) + 1418);
      if (v26 == 2)
      {
        v27 = "B1";
      }

      else
      {
        v27 = "A0";
      }

      v28 = v26 == 1;
      v29 = "B0";
      if (!v28)
      {
        v29 = v27;
      }

      this = GlCustomLog(15, "Received Mcu Version %s in response to Mcu Version Query\n", v29);
      v10 = v71;
      v9 = v72;
      v11 = v70;
LABEL_56:
      ++v7;
    }

    while (v7 != a3);
  }

  return this;
}

uint64_t std::__function::__func<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_2,std::allocator<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_2>,void ()(unsigned char *,short)>::operator()(uint64_t a1, uint64_t *a2, __int16 *a3)
{
  if (!FireResourceMgr::fInstance)
  {
    operator new();
  }

  v4 = *a3;
  v5 = *a2;
  v6 = *(**FireResourceMgr::fInstance + 96);

  return v6();
}

void FireCallback::GlEngineOnAsicData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (FireCallback::pInstance)
  {
    v10 = *(FireCallback::pInstance + 504);
    if (v10)
    {
      v13 = a2;
      v12 = a3;
      (*(*v10 + 48))(v10, &v13, &v12);
      return;
    }

    v11 = "fcb,fEngineOnAsicDataCb,nullptr";
  }

  else
  {
    v11 = "fcb,GlEngineOnAsicData,nullptr";
  }

  FireDeviceLog::DeviceLogBase(2, v11, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t BlueFin::GlDbgProxy::HalGlEngineOnAsicData(uint64_t this, char *a2, uint64_t a3)
{
  v8 = a3;
  if (!*(this + 808))
  {
    v5 = this;
    *(this + 580) = 1;
    if (*(this + 576) == 1)
    {
      BlueFin::GlDbgCodec::WriteStart(this, 522);
      BlueFin::GlDbgCodec::WriteArray(v5, a2, &v8);
      this = (*(*v5 + 32))(v5, 1);
    }

    v6 = *(v5 + 784);
    if (v6)
    {
      this = v6(v5 + 608, a2, a3);
    }

    *(v5 + 580) = 1;
    if (*(v5 + 576) == 1)
    {
      BlueFin::GlDbgCodec::WriteFinal(v5, 522);
      v7 = *(*v5 + 32);

      return v7(v5, 1);
    }
  }

  return this;
}

uint64_t BlueFin::GlDbgProxyGlEngineOnAsicData(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = (*(*a1 + 656))(a1);

  return BlueFin::GlDbgProxy::HalGlEngineOnAsicData(v5, a2, a3);
}

uint64_t BlueFin::GlPeEngineCallBacks::OnAsicData(uint64_t this, unsigned __int8 *a2, int a3)
{
  v3 = *(this + 40);
  if (v3)
  {
    v4 = a3;
    v6 = this;
    if (a3 >= 2049)
    {
      do
      {
        (*(v6 + 40))(*(v6 + 8), a2, 2048);
        a2 += 2048;
        v7 = v4;
        v4 -= 2048;
      }

      while (v7 > 0x1000);
      v3 = *(v6 + 40);
    }

    v8 = *(v6 + 8);

    return v3(v8, a2, v4);
  }

  return this;
}

uint64_t BlueFin::GlPosEng::SendAsicData(uint64_t this, unsigned __int8 *a2, __int16 a3)
{
  if ((*(*(this + 16) + 25964) & 1) == 0)
  {
    return (*(**(this + 32) + 16))(*(this + 32), a2, a3);
  }

  return this;
}

uint64_t (*BlueFin::GlMeSrdAsicinit::bri_wait4patchblockload(BlueFin::GlMeSrdAsicinit *this, BlueFin::GlMeSrdAsicinit *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *a7))()
{
  v53 = *MEMORY[0x29EDCA608];
  v8 = *a2;
  v9 = BlueFin::GlMeSrdAsicinit::bri_wait4patchload;
  if (v8 <= 4)
  {
    if (v8 != 2)
    {
      if (v8 == 3)
      {
        BlueFin::GlQueue::Remove(this + 40, 5);
        BlueFin::GlTimer::disarm(this + 82);
        goto LABEL_65;
      }

      goto LABEL_66;
    }

    v47 = this + 296;
LABEL_13:
    if (!BlueFin::GlMeSrdAsicInitPatchLoader::QueuePacketIntoBuffer((this + 200)))
    {
      goto LABEL_65;
    }

    v14 = &v47[40 * *(this + 619)];
    v15 = *(v14 + 1);
    v16 = *(v14 + 6) - v15;
    v17 = *(this + 118);
    if (v16 - v17 >= 4)
    {
      v18 = *(this + 118);
    }

    else
    {
      v18 = v17 - 4;
    }

    if (v16 > v17)
    {
      LOWORD(v16) = v18;
    }

    v19 = v16;
    if (v16 <= 3u)
    {
      v39 = "ulSize >= 4";
      DeviceFaultNotify("glmesrd_asicinit.cpp", 2680, "Bri_EswLoadBlockAndRequestCrc", "ulSize >= 4");
      v40 = 2680;
      goto LABEL_58;
    }

    v48 = v16;
    v20 = *(v14 + 2) + v15;
    v21 = *(v14 + 3) + v15;
    *(this + 732) = 0;
    v22 = v21;
    while (1)
    {
      if (v19 >= 0x3FC)
      {
        v23 = 1020;
      }

      else
      {
        v23 = v19;
      }

      if (v19 <= 3)
      {
        v39 = "ulLen >= 4";
        DeviceFaultNotify("glmesrd_asicinit.cpp", 2700, "Bri_EswLoadBlockAndRequestCrc", "ulLen >= 4");
        v40 = 2700;
        goto LABEL_58;
      }

      v24 = v23 & 0x3FC;
      v25 = *(*(this + 16) + 8);
      if ((v25 - 2) >= 2)
      {
        if (v25 == 1)
        {
          v50[0] = -2;
          v50[1] = v23 >> 2;
          *&v50[2] = -568892931;
          v50[6] = -64;
          *v51 = v22;
          BlueFin::GlMeSrdAsicinit::Bri_SendAsicData(this, v50);
          if ((v23 & 0x3FC) != 0)
          {
            do
            {
              if (v24 >= 0x800)
              {
                v27 = 2048;
              }

              else
              {
                v27 = v24;
              }

              BlueFin::GlMeSrdAsicinit::Bri_SendAsicData(this, (v20 + (v22 - v21)));
              v22 += v27;
              v24 -= v27;
            }

            while (v24);
          }

          goto LABEL_39;
        }

        if (v25 != 5)
        {
          v39 = "0";
          DeviceFaultNotify("glmesrd_asicinit.cpp", 2761, "Bri_EswLoadBlockAndRequestCrc", "0");
          v40 = 2761;
          goto LABEL_58;
        }
      }

      v50[0] = -2;
      v50[1] = (v23 >> 2) - 1;
      *&v50[2] = 19709;
      *&v50[4] = v22;
      v50[6] = BYTE2(v22);
      v51[0] = HIBYTE(v22);
      BlueFin::GlMeSrdAsicinit::Bri_SendAsicData(this, v50);
      if ((v23 & 0x3FC) != 0)
      {
        do
        {
          if (v24 >= 0x800)
          {
            v26 = 2048;
          }

          else
          {
            v26 = v24;
          }

          BlueFin::GlMeSrdAsicinit::Bri_SendAsicData(this, (v20 + (v22 - v21)));
          v22 += v26;
          v24 -= v26;
        }

        while (v24);
      }

LABEL_39:
      v49 = -4;
      BlueFin::GlMeSrdAsicinit::Bri_SendAsicData(this, &v49);
      ++*(this + 187);
      if ((v23 & 3) != 0)
      {
        v28 = *(*(this + 16) + 8);
        if ((v28 - 2) < 2 || v28 == 5)
        {
          *v50 = 1291649278;
          *&v50[4] = v22 + (v23 | 0xFFFC);
          v50[6] = BYTE2(v22);
          v51[0] = HIBYTE(v22);
          v49 = -4;
          v30 = this;
        }

        else
        {
          if (v28 != 1)
          {
            v39 = "0";
            DeviceFaultNotify("glmesrd_asicinit.cpp", 2793, "Bri_EswLoadBlockAndRequestCrc", "0");
            v40 = 2793;
            goto LABEL_58;
          }

          *v50 = 1643971070;
          *&v50[4] = -8681;
          v50[6] = -64;
          *v51 = v22 + (v23 | 0xFFFC);
          v49 = -4;
          v30 = this;
        }

        BlueFin::GlMeSrdAsicinit::Bri_SendAsicData(v30, v50);
        BlueFin::GlMeSrdAsicinit::Bri_SendAsicData(this, (v20 + v22 + (v23 | 0xFFFFFFFC) - v21));
        BlueFin::GlMeSrdAsicinit::Bri_SendAsicData(this, &v49);
        ++*(this + 187);
      }

      v19 -= v23;
      if (!v19)
      {
        v31 = *(*(this + 16) + 8);
        if ((v31 - 2) < 2)
        {
          goto LABEL_53;
        }

        if (v31 != 1)
        {
          if (v31 == 5)
          {
LABEL_53:
            *v50 = 1258094846;
            *&v50[4] = v21;
            v50[6] = BYTE2(v21);
            v51[0] = HIBYTE(v21);
            *&v51[1] = v48;
            v52 = -4;
            v32 = this;
            goto LABEL_55;
          }

          v39 = "0";
          DeviceFaultNotify("glmesrd_asicinit.cpp", 2819, "Bri_EswLoadBlockAndRequestCrc", "0");
          v40 = 2819;
LABEL_58:
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asicinit.cpp", v40, v39);
        }

        *v50 = 570228990;
        v50[4] = 24;
        *&v50[5] = v21;
        *v51 = v48;
        v51[2] = -4;
        v32 = this;
LABEL_55:
        BlueFin::GlMeSrdAsicinit::Bri_SendAsicData(v32, v50);
        ++*(this + 187);
        BlueFin::GlMeSrdAsicInitPatchLoader::IncLastPacketSent((this + 200), v33, v34, v35, v36, v37, v38);
        *(this + 86) = this;
        BlueFin::GlTimer::arm((this + 656), 5, 0, 0x5DCu);
        *(this + 680) = 1;
        if (*(this + 617) + *(this + 620) == 8)
        {
          goto LABEL_65;
        }

        goto LABEL_13;
      }
    }
  }

  if (v8 == 5)
  {
    goto LABEL_64;
  }

  if (v8 != 12)
  {
    goto LABEL_66;
  }

  if (*(a2 + 1) != 14)
  {
    goto LABEL_65;
  }

  v10 = *(this + 618);
  v11 = this + 296;
  if (*(this + 40 * v10 + 324) != *(this + 776))
  {
    goto LABEL_64;
  }

  v12 = *&v11[40 * *(this + 618) + 32];
  v13 = *(this + 193);
  if ((*(this + 638) & 1) == 0 && v12 == v13)
  {
    v12 = *&v11[40 * *(this + 618) + 4] + *&v11[40 * *(this + 618) + 12];
    v13 = *(this + 192);
    goto LABEL_60;
  }

  if (!*(this + 638))
  {
LABEL_64:
    BlueFin::GlMeSrdAsicinit::RetryBri(this, a2);
    goto LABEL_65;
  }

LABEL_60:
  if (v12 != v13)
  {
    goto LABEL_64;
  }

  v41 = v11[40 * *(this + 618) + 8];
  v42 = *(this + 620) - 1;
  *(this + 620) = v42;
  *(this + 618) = (v10 + 1) & 7;
  *(this + 192) = 0;
  if (*(this + 639))
  {
    if (v42)
    {
      goto LABEL_65;
    }

    v9 = 0;
    *(this + 639) = 0;
  }

  else
  {
    if (BlueFin::GlMeSrdAsicInitPatchLoader::SetNextBlock((this + 200), a2, a3, a4, a5, a6, a7))
    {
      if (v41 != *(this + 272))
      {
        goto LABEL_65;
      }

      v45 = "&GlMeSrdAsicinit::bri_wait4patchblockload";
      v46 = BlueFin::GlMeSrdAsicinit::bri_wait4patchblockload;
    }

    else
    {
      if (*(this + 620))
      {
        goto LABEL_65;
      }

      if ((*(**(this + 16) + 256))(*(this + 16)) && ((*(**(this + 16) + 32))(*(this + 16)) & 1) == 0)
      {
        *(*(this + 16) + 555) = 1;
      }

      BlueFin::GlMeSrdAsicinit::Bri_GetOutOfLegacy(this);
      v45 = "&GlMeSrdAsicinit::esw_wait4version";
      v46 = BlueFin::GlMeSrdAsicinit::esw_wait4version;
    }

    BlueFin::QHsm::tran(this, v46, v45);
LABEL_65:
    v9 = 0;
  }

LABEL_66:
  v43 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t BlueFin::GlMeSrdAsicinit::Bri_SendAsicData(BlueFin::GlMeSrdAsicinit *this, const unsigned __int8 *a2)
{
  v2 = MEMORY[0x2A1C7C4A8](this);
  LOWORD(v4) = v3;
  v6 = v5;
  v7 = v2;
  v18 = *MEMORY[0x29EDCA608];
  if (v2[698] == 1)
  {
    if (v3)
    {
      v8 = v3;
      v4 = 0;
      do
      {
        v10 = *v6++;
        v9 = v10;
        if (v10 == 224)
        {
          *&v17[v4] = 736;
        }

        else
        {
          if (v9 != v2[696])
          {
            v11 = v4 + 1;
            if (v9 == v2[697])
            {
              v17[v4] = -32;
              v4 += 2;
              v17[v11] = 4;
            }

            else
            {
              v17[v4] = v9;
              v4 = v4 + 1;
            }

            goto LABEL_9;
          }

          *&v17[v4] = 992;
        }

        v4 += 2;
LABEL_9:
        if (v4 >= 0x1000u)
        {
          DeviceFaultNotify("glmesrd_asicinit.cpp", 3433, "Bri_SendAsicData", "usEscSize < sizeof(aucBuffer)");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asicinit.cpp", 3433, "usEscSize < sizeof(aucBuffer)");
        }

        --v8;
      }

      while (v8);
    }

    v6 = v17;
  }

  if (v2[736] == 1)
  {
    v14 = &unk_2A1F0D590;
    v15 = v4;
    v16 = v6;
    if (BlueFin::GlUtils::m_pInstance)
    {
      if (*(BlueFin::GlUtils::m_pInstance + 1122) == 1)
      {
        off_2A1F0D5A8(&v14);
      }
    }
  }

  *(v7 + 186) += v4;
  result = (*(**(v7 + 14) + 40))(*(v7 + 14), v6, v4);
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlMeSrdAsicInitPatchLoader::CopyPacketIntoBuffer(BlueFin::GlMeSrdAsicInitPatchLoader *this, unsigned int a2)
{
  v4 = this + 40 * a2;
  *(v4 + 12) = *(this + 8);
  v4[104] = *(this + 72);
  *(v4 + 27) = *(this + 19);
  *(v4 + 14) = *(this + 10);
  *(v4 + 30) = *(this + 22);
  v4[124] = BlueFin::GlMeSrdAsicInitPatchLoader::GetBlockCRCBuf(this, a2);
  result = BlueFin::GlMeSrdAsicInitPatchLoader::GetBlockCheckSumBuf(this, a2);
  *(v4 + 32) = result;
  return result;
}

uint64_t BlueFin::GlMeSrdAsicInitPatchLoader::QueuePacketIntoBuffer(BlueFin::GlMeSrdAsicInitPatchLoader *this)
{
  v1 = this;
  if (!*(this + 417))
  {
    if (*(this + 421))
    {
      if (*(this + 72) == *(this + 40 * *(this + 418) + 104))
      {
        if (!BlueFin::GlMeSrdAsicInitPatchLoader::IsSamePacket(this) && *(v1 + 16) < *(v1 + 10))
        {
          goto LABEL_7;
        }
      }

      else if (!*(this + 420))
      {
        for (i = 0; i != 320; i += 40)
        {
          v5 = this + i;
          *(v5 + 27) = 0;
          *(v5 + 30) = 0;
          *(v5 + 12) = 0;
          v5[104] = 0;
        }

        *(this + 209) = 0;
        *(this + 420) = 0;
        *(this + 422) = 0;
        v2 = 1;
        *(this + 416) = 1;
        v3 = 0;
        goto LABEL_13;
      }

      return 0;
    }

LABEL_7:
    v3 = *(v1 + 419);
    v2 = 1;
    *(v1 + 416) = 1;
    this = v1;
LABEL_13:
    BlueFin::GlMeSrdAsicInitPatchLoader::CopyPacketIntoBuffer(this, v3);
    return v2;
  }

  --*(this + 417);
  return 1;
}

BOOL BlueFin::GlMeSrdAsicInitPatchLoader::SetNextBlock(BlueFin::GlMeSrdAsicInitPatchLoader *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *a7)
{
  if (*(this + 416) == 1)
  {
    v8 = *(this + 22);
    v9 = *(this + 17);
    v10 = v8 - v9;
    v11 = *(this + 18);
    if (v8 - v9 - v11 >= 4)
    {
      v12 = *(this + 18);
    }

    else
    {
      v12 = v11 - 4;
    }

    if (v10 > v11)
    {
      LOWORD(v10) = v12;
    }

    v13 = v9 + v10;
    *(this + 17) = v13;
    if (v13 >= v8)
    {
      v14 = *(this + 16) + 1;
      *(this + 16) = v14;
      if (v14 < *(this + 10))
      {
        BlueFin::GlMeSrdAsicInitPatchLoader::InitSegment(this, a2, a3, a4, a5, a6, a7);
      }
    }

    *(this + 416) = 0;
  }

  return *(this + 16) < *(this + 10);
}

uint64_t BlueFin::GlQueue::Remove(uint64_t this, int a2)
{
  if (*this)
  {
    v2 = this;
    v3 = *(this + 42) + 1;
    if ((v3 & 0x10000) == 0)
    {
      v5 = 0;
      do
      {
        this = BlueFin::GlQueue::get(v2, v6);
        if (v6[0] != a2)
        {
          this = BlueFin::GlQueue::putLIFO(v2, v6[0], v6[1]);
        }

        ++v5;
      }

      while (v5 < v3);
    }
  }

  return this;
}

BOOL BlueFin::GlMeSrdAsicInitPatchLoader::IsSamePacket(BlueFin::GlMeSrdAsicInitPatchLoader *this)
{
  v1 = *(this + 419) - 1;
  if (v1 < 0)
  {
    v1 = 7;
  }

  v2 = this + 40 * v1;
  return *(v2 + 25) == *(this + 17) && v2[104] == *(this + 72) && *(v2 + 24) == *(this + 16) && *(v2 + 27) == *(this + 19) && *(v2 + 30) == *(this + 22);
}

uint64_t BlueFin::GlMeSrdAsicInitPatchLoader::GetBlockCRCBuf(BlueFin::GlMeSrdAsicInitPatchLoader *this, unsigned int a2)
{
  v2 = this + 96;
  v3 = this + 40 * a2 + 96;
  v4 = *(v3 + 1);
  v5 = *(v3 + 6) - v4;
  v6 = *(this + 18);
  if (v5 - v6 >= 4)
  {
    v7 = *(this + 18);
  }

  else
  {
    v7 = v6 + 65532;
  }

  if (v5 > v6)
  {
    v5 = v7;
  }

  if (!v5)
  {
    return 0;
  }

  LOBYTE(result) = 0;
  v9 = (*&v2[40 * a2 + 16] + v4);
  do
  {
    v10 = *v9++;
    --v5;
    result = BlueFin::GlUtlCrc::ucCrcTable[(v10 ^ result)];
  }

  while (v5);
  return result;
}

uint64_t BlueFin::GlMeSrdAsicInitPatchLoader::GetBlockCheckSumBuf(BlueFin::GlMeSrdAsicInitPatchLoader *this, unsigned int a2)
{
  v2 = this + 40 * a2;
  v3 = *(v2 + 25);
  LODWORD(v4) = *(v2 + 30) - v3;
  v5 = *(this + 18);
  if (v4 - v5 >= 4)
  {
    v6 = *(this + 18);
  }

  else
  {
    v6 = v5 - 4;
  }

  if (v4 > v5)
  {
    LOWORD(v4) = v6;
  }

  result = 0;
  v4 = v4;
  if (v4)
  {
    v8 = (*(v2 + 14) + v3);
    do
    {
      v9 = *v8++;
      result = (result + v9);
      --v4;
    }

    while (v4);
  }

  return result;
}

BlueFin::GlMeSrdAsicInitPatchLoader *BlueFin::GlMeSrdAsicInitPatchLoader::IncLastPacketSent(BlueFin::GlMeSrdAsicInitPatchLoader *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *a7)
{
  ++*(this + 420);
  ++*(this + 421);
  v7 = ++*(this + 422);
  *(this + 419) = (*(this + 419) + 1) & 7;
  if (v7 <= 7 && !*(this + 417))
  {
    return BlueFin::GlMeSrdAsicInitPatchLoader::SetNextBlock(this, a2, a3, a4, a5, a6, a7);
  }

  return this;
}

char *BlueFin::GlDbgCodec::Write(BlueFin::GlDbgCodec *this, unsigned int *a2)
{
  result = (*(*this + 120))(this);
  if (result)
  {
    *v5 = bswap32(*a2);
    return BlueFin::GlDbgCodecBase::Encode(this, v5, 4, 0, 0);
  }

  return result;
}

{
  result = (*(*this + 120))(this);
  if (result)
  {

    return BlueFin::GlDbgCodec::Write(this, a2);
  }

  return result;
}

{
  result = (*(*this + 120))(this);
  if (result)
  {

    return BlueFin::GlDbgCodec::Write(this, a2);
  }

  return result;
}

uint64_t BlueFin::GlDbgCodec::Write(BlueFin::GlDbgCodec *this, const BlueFin::GlRequestImpl *a2)
{
  result = (*(*this + 120))(this);
  if (result)
  {
    *(this + 143) = 2;
    v5 = a2;
    return BlueFin::GlDbgCodec::Rvw(this, &v5);
  }

  return result;
}

BlueFin::GlSettingsImpl *BlueFin::GlPeObjFactory::MakeGlSettingImpl(uint64_t (**this)(uint64_t))
{
  result = BlueFin::GlMemAlloc::glAllocateMemory(39, 26400, *this);
  if (result)
  {
    return BlueFin::GlSettingsImpl::GlSettingsImpl(result);
  }

  return result;
}

BlueFin::GlSettingsImpl *BlueFin::GlSettingsImpl::GlSettingsImpl(BlueFin::GlSettingsImpl *this)
{
  *this = &unk_2A1F17E10;
  *(this + 1) = &unk_2A1F17DE0;
  *(this + 2) = 1;
  *(this + 12) = 257;
  v2 = this + 25868;
  *(this + 28) = 0u;
  *(this + 44) = 0u;
  *(this + 60) = 0;
  *(this + 34) = 2049;
  *(this + 70) = 1;
  *(this + 24) = 0;
  *(this + 72) = 0u;
  *(this + 85) = 0;
  *(this + 30) = 10000000;
  *(this + 69) = 1000;
  *(this + 140) = xmmword_298A45700;
  *(this + 39) = 127;
  *(this + 20) = this + 172;
  v3 = (this + 160);
  *(this + 168) = 3;
  *(this + 45) = 0;
  *(this + 172) = 0;
  *(this + 196) = 0;
  *(this + 23) = this + 196;
  *(this + 192) = 3;
  *(this + 51) = 0;
  *(this + 220) = 0u;
  *(this + 26) = this + 220;
  v4 = (this + 208);
  *(this + 216) = 8;
  *(this + 236) = 0u;
  *(this + 263) = 0;
  *(this + 266) = 0;
  *(this + 68) = 100;
  *(this + 283) = 0;
  *(this + 796) = 1;
  *(this + 829) = 0;
  *(this + 50) = xmmword_298A45710;
  *(this + 51) = 0u;
  *(this + 837) = 168;
  *(this + 211) = 16000;
  *(this + 856) = 0;
  *(this + 106) = 0;
  *(this + 109) = this + 864;
  *(this + 220) = 0;
  *(this + 432) = 0;
  *(this + 896) = 0;
  *(this + 113) = 0x3FF0000000000000;
  *(this + 114) = 1092616192;
  *(this + 919) = 0;
  *(this + 923) = 1;
  *(this + 925) = 0;
  *(this + 1296) = 0;
  *(this + 125) = 0;
  *(this + 984) = 0u;
  *(this + 1298) = vdup_n_s16(0x3E8u);
  *(this + 1306) = 0;
  *(this + 1308) = 0x100000000;
  *(this + 658) = 4881;
  *(this + 1318) = 0;
  *(this + 5784) = 1;
  *(this + 1445) = 0;
  *(this + 12934) = 0;
  *(this + 6488) = 0;
  *(this + 12978) = 0;
  *(this + 11578) = 0;
  *(this + 11572) = 0;
  *(this + 25968) = 0;
  *(this + 3245) = 0;
  *(this + 25972) = 0u;
  *(this + 25996) = 0u;
  *(this + 25986) = 0;
  *(this + 13006) = 3;
  *(this + 26014) = 0;
  *(this + 1626) = 0u;
  *(this + 1627) = 0u;
  *(this + 26045) = 0;
  *(this + 26054) = 0xFFFF;
  *(this + 6515) = 0;
  *(this + 26064) = 0;
  *(this + 26163) = 0;
  *(this + 6542) = 0;
  *(this + 26172) = 0;
  *(this + 26174) = 0;
  *(this + 6545) = 0;
  *(this + 13092) = 14;
  __asm { FMOV            V0.4S, #-1.0 }

  *(this + 26188) = _Q0;
  *(this + 6551) = -1082130432;
  *(this + 13104) = 0;
  *(this + 13110) = 0;
  *(this + 26212) = 0;
  *(this + 13111) = 255;
  *(this + 26224) = 25;
  *(this + 3279) = this + 26244;
  *(this + 26240) = 2;
  *(this + 26244) = 0;
  *(this + 26256) = 0;
  *(this + 6572) = 300;
  *(this + 6573) = 0x10000;
  *(this + 13148) = 1;
  *(this + 26298) = 0;
  *(this + 6575) = 0;
  *(this + 13152) = 0;
  *(this + 3289) = 0;
  *(this + 13160) = 75;
  *(this + 6586) = 0;
  *(this + 26339) = 0;
  *(this + 6584) = 0;
  *(this + 36) = 5;
  (*(*this + 40))(this, *(this + 4));
  bzero(*(this + 23), ((4 * *(this + 192) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  BlueFin::GlSetBase::Remove(v3, 1);
  v10 = 0;
  **v3 |= 0x4012608u;
  *(this + 764) = 0u;
  *(this + 780) = 0u;
  *(this + 732) = 0u;
  *(this + 748) = 0u;
  *(this + 700) = 0u;
  *(this + 716) = 0u;
  *(this + 668) = 0u;
  *(this + 684) = 0u;
  *(this + 636) = 0u;
  *(this + 652) = 0u;
  *(this + 604) = 0u;
  *(this + 620) = 0u;
  *(this + 572) = 0u;
  *(this + 588) = 0u;
  *(this + 540) = 0u;
  *(this + 556) = 0u;
  *(this + 508) = 0u;
  *(this + 524) = 0u;
  *(this + 476) = 0u;
  *(this + 492) = 0u;
  *(this + 444) = 0u;
  *(this + 460) = 0u;
  *(this + 412) = 0u;
  *(this + 428) = 0u;
  *(this + 380) = 0u;
  *(this + 396) = 0u;
  *(this + 348) = 0u;
  *(this + 364) = 0u;
  *(this + 316) = 0u;
  *(this + 332) = 0u;
  *(this + 284) = 0u;
  *(this + 300) = 0u;
  **(this + 109) = 0;
  *(this + 220) = 0;
  *(this + 7) = 1356803128;
  BlueFin::GlSettingsImpl::m_ulActiveBuildFct = 1356803128;
  *(this + 259) = 0;
  *(this + 64) = 0;
  *(this + 279) = 0;
  *(this + 69) = 0;
  *(this + 122) = 0;
  *(this + 59) = 0u;
  *(this + 60) = 0u;
  *(this + 58) = 0u;
  do
  {
    v11 = this + v10;
    *(v11 + 552) = 0;
    *(v11 + 277) = 0;
    v10 += 8;
  }

  while (v10 != 192);
  bzero(this + 11588, 0x37C8uLL);
  strcpy(this + 25870, "untitled");
  bzero(this + 1319, 0x2800uLL);
  *(this + 63) = xmmword_298A45720;
  *(this + 64) = unk_298A45730;
  *(this + 65) = xmmword_298A45740;
  *(this + 66) = unk_298A45750;
  *(this + 67) = xmmword_298A45760;
  *(this + 1087) = *(&xmmword_298A45760 + 15);
  *(this + 26065) = xmmword_298A45720;
  *(this + 26081) = unk_298A45730;
  *(this + 1634) = *(&xmmword_298A45760 + 15);
  *(this + 26113) = unk_298A45750;
  *(this + 26129) = xmmword_298A45760;
  *(this + 26097) = xmmword_298A45740;
  memset(*(this + 26), 255, 4 * *(this + 216));
  ULong = BlueFin::GlSetBase::GetULong(v4, 0);
  BlueFin::GlSetBase::SetULong(v4, 0, ULong & 0xFFFFFFFE);
  v13 = (32 * (*(this + 216) & 0x3F) - 1);
  if (v13 >= 0xBE)
  {
    v14 = 189;
    v15 = -67;
    do
    {
      v16 = v15 & 0x1F;
      if ((v15 & 0x1F) != 0)
      {
        v17 = BlueFin::GlSetBase::GetULong(v4, (v14 >> 5));
        BlueFin::GlSetBase::SetULong(v4, (v14 >> 5), v17 & ~(-1 << v16));
        LOWORD(v14) = v14 - v16;
      }

      else
      {
        BlueFin::GlSetBase::SetULong(v4, (v14 >> 5), 0);
      }

      v15 = v14 + 32;
      v14 = (v14 + 32);
    }

    while (v14 < v13);
  }

  *(v2 + 196) = 0;
  *(this + 3291) = 0;
  *(this + 3283) = 0;
  *(this + 3285) = 0;
  *(this + 3284) = 0;
  *(v2 + 228) = 0;
  *(this + 26348) = xmmword_298A4577F;
  *(this + 26360) = *(&xmmword_298A4577F + 12);
  return this;
}

uint64_t BlueFin::GlSettingsImpl::SetFrequencyPlan(uint64_t result, int a2)
{
  v2 = 0;
  v3 = 10000000;
  v4 = 0x3E7AD7F29ABCAF48;
  v5 = 0x3EC0C6F7A0B5ED8DLL;
  v6 = 104;
  switch(a2)
  {
    case 1:
      break;
    case 2:
      v2 = 0;
      v3 = 12000000;
      goto LABEL_64;
    case 3:
      v2 = 0;
      v3 = 13000000;
      goto LABEL_64;
    case 4:
      v2 = 0;
      v3 = 14400000;
      goto LABEL_64;
    case 5:
      v2 = 0;
      v3 = 15360000;
      goto LABEL_64;
    case 6:
      v2 = 0;
      v3 = 16200000;
      goto LABEL_64;
    case 7:
      v2 = 0;
      v3 = 16367667;
      goto LABEL_64;
    case 8:
      v2 = 0;
      v3 = 16369000;
      goto LABEL_64;
    case 9:
      v2 = 0;
      v3 = 16800000;
      goto LABEL_64;
    case 10:
      v2 = 0;
      v3 = 19200000;
      goto LABEL_64;
    case 11:
      v2 = 0;
      v3 = 19680000;
      goto LABEL_64;
    case 12:
      v2 = 0;
      v3 = 19800000;
      goto LABEL_64;
    case 13:
      v2 = 0;
      v3 = 20000000;
      goto LABEL_64;
    case 14:
      v2 = 0;
      v3 = 26000000;
      goto LABEL_64;
    case 15:
      v2 = 0;
      v3 = 33600000;
      goto LABEL_64;
    case 16:
      v2 = 0;
      v3 = 38400000;
      goto LABEL_64;
    case 17:
      v2 = 0;
      v3 = 52000000;
      goto LABEL_64;
    case 18:
      goto LABEL_11;
    case 19:
      v3 = 26000000;
      v9 = 16367667;
      goto LABEL_54;
    case 20:
      v3 = 26000000;
      v9 = 16369000;
      goto LABEL_54;
    case 21:
      goto LABEL_41;
    case 22:
      v3 = 13000000;
      goto LABEL_41;
    case 23:
      v3 = 26000000;
LABEL_41:
      v9 = 16800000;
      goto LABEL_54;
    case 24:
      v3 = 26000000;
      v9 = 19200000;
      goto LABEL_54;
    case 25:
      goto LABEL_53;
    case 26:
      *(result + 104) = 26000000;
      v2 = 1;
      v3 = 19660800;
      goto LABEL_62;
    case 27:
      v3 = 19200000;
      goto LABEL_53;
    case 28:
      v3 = 26000000;
LABEL_11:
      *(result + 104) = v3;
      goto LABEL_55;
    case 29:
      v3 = 38400000;
      goto LABEL_53;
    case 30:
      v3 = 52000000;
LABEL_53:
      v9 = 26000000;
      goto LABEL_54;
    case 31:
      v3 = 26000000;
      v9 = 33600000;
LABEL_54:
      *(result + 104) = v9;
LABEL_55:
      v2 = 1;
      goto LABEL_62;
    case 32:
      goto LABEL_45;
    case 33:
      v3 = 26000000;
      v7 = 16367667;
      goto LABEL_50;
    case 34:
      goto LABEL_13;
    case 35:
      v3 = 26000000;
LABEL_13:
      v7 = 16369000;
      goto LABEL_50;
    case 36:
      goto LABEL_9;
    case 37:
      v3 = 13000000;
      goto LABEL_9;
    case 38:
      v3 = 26000000;
LABEL_9:
      v7 = 16800000;
      goto LABEL_50;
    case 39:
      v3 = 26000000;
      v7 = 19200000;
      goto LABEL_50;
    case 40:
      v8 = 19200000;
      goto LABEL_60;
    case 41:
      goto LABEL_39;
    case 42:
      v3 = 13000000;
      goto LABEL_39;
    case 43:
      v3 = 26000000;
LABEL_45:
      *(result + 104) = v3;
      goto LABEL_51;
    case 44:
      *(result + 104) = 26000000;
      v2 = 1;
      v3 = 1625000;
      goto LABEL_61;
    case 45:
      *(result + 104) = 26000000;
      v2 = 1;
      v3 = 23040000;
      goto LABEL_61;
    case 46:
      v3 = 38400000;
LABEL_39:
      v7 = 26000000;
      goto LABEL_50;
    case 47:
      v8 = 26000000;
      goto LABEL_60;
    case 48:
      v3 = 26000000;
      v7 = 33600000;
LABEL_50:
      *(result + 104) = v7;
LABEL_51:
      v2 = 1;
      goto LABEL_61;
    case 49:
      v8 = 52000000;
      goto LABEL_60;
    case 50:
      *(result + 104) = 10000000;
      v2 = 1;
      v4 = 0x3EA0C6F7A0B5ED8DLL;
      goto LABEL_62;
    case 51:
      v2 = 0;
      v3 = 26000000;
      v5 = 0x3ED92A737110E454;
      goto LABEL_64;
    case 52:
      v2 = 0;
      v3 = 12655000;
      goto LABEL_64;
    case 53:
      v2 = 0;
      v3 = 18260000;
      goto LABEL_64;
    case 54:
      v2 = 0;
      v3 = 25310000;
      goto LABEL_64;
    case 55:
      v2 = 0;
      v3 = 37400000;
LABEL_64:
      v6 = 104;
      break;
    case 56:
      v8 = 38400000;
LABEL_60:
      *(result + 104) = v8;
      v2 = 1;
      v3 = 49152000;
LABEL_61:
      v4 = 0x3E9421F5F40D8376;
LABEL_62:
      v6 = 120;
      break;
    default:
      DeviceFaultNotify("glsettings.cpp", 944, "SetFrequencyPlan", "0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsettings.cpp", 944, "0");
  }

  *(result + v6) = v3;
  *(result + 112) = v5;
  *(result + 128) = v4;
  *(result + 100) = 3;
  *(result + 136) = v2;
  *(result + 16) = a2;
  return result;
}

uint64_t BlueFin::GlDbgProxyGlEngineOnStart(uint64_t a1, BlueFin::GlSettingsImpl *a2)
{
  v3 = (*(*a1 + 656))(a1);

  return BlueFin::GlDbgProxy::HalGlEngineOnStart(v3, a2);
}

uint64_t BlueFin::GlDbgProxy::HalGlEngineOnStart(BlueFin::GlDbgProxy *this, BlueFin::GlSettingsImpl *a2)
{
  v12 = *MEMORY[0x29EDCA608];
  v10 = 1;
  *(this + 5912) = 1;
  *(this + 874) = a2;
  v3 = *(this + 3256);
  if ((v3 & 0x80000000) == 0)
  {
    (*(*a2 + 728))(a2, v3, 1);
  }

  if (*(this + 1629))
  {
    (*(**(this + 874) + 1024))(*(this + 874));
  }

  v4 = *(this + 112);
  if (v4)
  {
    if (!*(this + 1476))
    {
      DeviceFaultNotify("gldebug_proxy.cpp", 5871, "HalGlEngineOnStart", "m_engine.GetEngineType() != GL_ENGINE_TYPE_UNSET");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_proxy.cpp", 5871, "m_engine.GetEngineType() != GL_ENGINE_TYPE_UNSET");
    }

    v4(this + 608, &BlueFin::GlVersion::m_acVersionString);
    BlueFin::GlFormat::glsnprintf(v11, 0x100, "%s cfg. %s\n", v5, "@(#)Broadcom GLL", "11561015,10000000,00000000,00000000,00000080");
    (*(this + 112))(this + 608, v11);
  }

  if (*(this + 101))
  {
    v6 = 1;
  }

  else
  {
    BlueFin::GlDbgProxy::WriteDbgMetaData(this, 1);
    BlueFin::GlDbgCodec::WriteStart(this, 530);
    if ((*(*this + 120))(this))
    {
      *(this + 143) = 2;
      BlueFin::GlDbgCodec::Rvw(this, (this + 976));
    }

    v6 = 1;
    (*(*this + 32))(this, 1);
    v7 = *(this + 110);
    if (v7)
    {
      v6 = v7(this + 608, this + 6976);
      v10 = v6;
    }

    BlueFin::GlDbgCodec::WriteFinal(this, 530);
    if ((*(*this + 120))(this))
    {
      BlueFin::GlDbgCodec::Write(this, &v10);
    }

    (*(*this + 32))(this, 1);
  }

  v8 = *MEMORY[0x29EDCA608];
  return v6;
}

void FireDeviceLog::DeviceLogLine(FireDeviceLog *this, const char *a2)
{
  FireDeviceLog::GetLineLeading(0x53, 3, &v12);
  if (!FireResourceMgr::fInstance)
  {
    operator new();
  }

  v3 = *(FireResourceMgr::fInstance + 16);
  v4 = SHIBYTE(v12.__r_.__value_.__r.__words[2]);
  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v12.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v12.__r_.__value_.__l.__size_;
  }

  v6 = strlen(this);
  v7 = __p;
  std::string::basic_string[abi:ne200100](__p, size + v6);
  if (v11 < 0)
  {
    v7 = __p[0];
  }

  if (size)
  {
    if (v4 >= 0)
    {
      v8 = &v12;
    }

    else
    {
      v8 = v12.__r_.__value_.__r.__words[0];
    }

    memmove(v7, v8, size);
  }

  v9 = v7 + size;
  if (v6)
  {
    memmove(v9, this, v6);
  }

  v9[v6] = 0;
  (*(*v3 + 16))(v3, 3, __p);
  if ((v11 & 0x80000000) == 0)
  {
    if ((v4 & 0x80000000) == 0)
    {
      return;
    }

LABEL_19:
    operator delete(v12.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p[0]);
  if (v4 < 0)
  {
    goto LABEL_19;
  }
}

void sub_2987A6B00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

uint64_t BlueFin::GlEngineImplStd::setOnChipMeSetting(uint64_t result, int *a2, char a3)
{
  if (*(result + 4928) != 1)
  {
    v4 = result;
    v5 = *a2;
    v6 = *(result + 24);
    if (v6)
    {
      BlueFin::GlPeReqBag::GetNonInstantaneousRequests(v6 + 137024, &v21);
      v7 = v21;
      BlueFin::GlPePendingBag::GetNonInstantaneousRequests(*(v4 + 24) + 132640, &v20);
      v5 |= v7 | v20;
    }

    if (v5 || (a3 & 1) != 0)
    {
      v10 = *(v4 + 24);
      if (!v10 || !*(v10 + 157792) && !*(v10 + 157832))
      {
        goto LABEL_19;
      }

      v11 = 0;
      LOBYTE(v12) = 0;
      v13 = v10 + 137024;
      do
      {
        v14 = *(v13 + v11);
        if (v14)
        {
          v15 = *(v14 + 8);
          if (*(v15 + 16) == 13)
          {
            v12 = *(v15 + 172) >> 7;
          }
        }

        v11 += 8;
      }

      while (v11 != 576);
      if (v12)
      {
        v16 = 0;
      }

      else
      {
LABEL_19:
        v16 = v5 == 4096 || (v5 & 0xFFFFEFFF) == 0x2000;
      }

      if (*(v4 + 8))
      {
        v17 = "FALSE";
        if (v16)
        {
          v17 = "TRUE";
        }

        GlCustomLog(15, "GlEngineImplStd::ShouldBeUsingOnChipMe %s\n", v17);
        v18 = *(**(v4 + 8) + 1120);

        return v18();
      }

      else
      {
        v19 = "FALSE";
        if (v16)
        {
          v19 = "TRUE";
        }

        result = GlCustomLog(15, "GlEngineImplStd:: Store ShouldBeUsingOnChipMe %s\n", v19);
        *(v4 + 593) = v16;
      }
    }

    else
    {
      v8 = (*(**(v4 + 8) + 1112))(*(v4 + 8));
      v9 = "host";
      if (v8)
      {
        v9 = "chip";
      }

      return GlCustomLog(15, "Remain in on-%s mode\n", v9);
    }
  }

  return result;
}

uint64_t BlueFin::GlSetBase::GetULong(BlueFin::GlSetBase *this, unsigned int a2)
{
  if (*(this + 8) <= a2)
  {
    DeviceFaultNotify("glutl_set.cpp", 239, "GetULong", "ucIndex < m_ucUlongSize");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_set.cpp", 239, "ucIndex < m_ucUlongSize");
  }

  return *(*this + 4 * a2);
}

unint64_t BlueFin::GlFormat::gl_format(BlueFin::GlFormat *this, char *a2, unsigned __int8 *a3, const char *a4, char *__s, char *a6, void *a7)
{
  result = 0;
  v85 = a4;
  if (!a2 || !this || !a3)
  {
    return result;
  }

  v10 = *a3;
  if (!*a3)
  {
    v14 = 0;
    result = 0;
    if ((a7 & 1) == 0)
    {
      return result;
    }

    goto LABEL_172;
  }

  v11 = a6;
  v14 = 0;
  while (2)
  {
    if (v10 != 37)
    {
      v15 = a3 + 1;
      if (!a7)
      {
        goto LABEL_160;
      }

      *this = v10;
      this = (this + 1);
      goto LABEL_12;
    }

    v15 = a3 + 2;
    v16 = a3[1];
    if (v16 == 37)
    {
      if (!a7)
      {
        goto LABEL_160;
      }

      *this = 37;
      this = (this + 1);
LABEL_12:
      v14 = (v14 + 1);
      goto LABEL_160;
    }

    v17 = 0;
    while (v16 <= 0x29u)
    {
      switch(v16)
      {
        case ' ':
          v17 |= 8u;
          break;
        case '#':
          v17 |= 1u;
          break;
        case '\'':
          break;
        default:
          goto LABEL_62;
      }

LABEL_28:
      v18 = *v15++;
      LOBYTE(v16) = v18;
      if (!v18)
      {
        v19 = 0;
        v20 = 0;
        goto LABEL_30;
      }
    }

    if (v16 > 0x2Cu)
    {
      if (v16 == 45)
      {
        v17 |= 4u;
      }

      else
      {
        if (v16 != 48)
        {
          goto LABEL_62;
        }

        v17 |= 2u;
      }

      goto LABEL_28;
    }

    if (v16 == 43)
    {
      v17 |= 0x10u;
      goto LABEL_28;
    }

    if (v16 == 42)
    {
      if (v11)
      {
        v27 = v85;
        v85 += 8;
        v28 = *v27;
      }

      else
      {
        v47 = *__s;
        v48 = __s[1];
        __s += 2;
        v28 = v47 | (v48 << 8);
      }

      if (v28 >= 0)
      {
        v20 = v28;
      }

      else
      {
        v20 = -v28;
      }

      v17 |= 4 * (v28 >> 31);
      v19 = 0;
      if ((a7 & 1) == 0)
      {
        *this = v20;
        v49 = (this + 1);
        v50 = (v14 + 1);
        if (v50 < a2)
        {
          BYTE1(v51) = BYTE1(v20);
          goto LABEL_115;
        }

LABEL_154:
        LOBYTE(v16) = 42;
        v14 = v50;
        this = v49;
        goto LABEL_30;
      }

      goto LABEL_151;
    }

LABEL_62:
    if ((v16 - 48) > 9u)
    {
      v20 = 0;
    }

    else
    {
      v20 = 0;
      do
      {
        v20 = 10 * v20 + v16 - 48;
        v29 = *v15++;
        LOBYTE(v16) = v29;
      }

      while ((v29 - 48) < 0xA);
    }

    if (v16 != 46)
    {
      goto LABEL_131;
    }

    v17 |= 0x20u;
    v52 = *v15++;
    v16 = v52;
    if (v52 == 42)
    {
      if (v11)
      {
        v53 = v85;
        v85 += 8;
        v54 = *v53;
      }

      else
      {
        v54 = 0;
        v67 = *__s;
        v68 = __s[1];
        __s += 2;
        v20 = v67 | (v68 << 16);
      }

      v19 = v54 & ~(v54 >> 31);
      if ((a7 & 1) == 0)
      {
        *this = v19;
        v49 = (this + 1);
        v50 = (v14 + 1);
        if (v50 >= a2)
        {
          goto LABEL_154;
        }

        v51 = v54 & ~(v54 >> 31);
LABEL_115:
        *(this + 1) = BYTE1(v51);
        this = (this + 2);
        v14 = (v14 + 2);
      }

LABEL_151:
      LOBYTE(v16) = 42;
      goto LABEL_30;
    }

    if ((v16 - 48) > 9)
    {
LABEL_131:
      v19 = 0;
      goto LABEL_30;
    }

    v19 = 0;
    do
    {
      v19 = 10 * v19 + v16 - 48;
      v59 = *v15++;
      LOBYTE(v16) = v59;
    }

    while ((v59 - 48) < 0xA);
LABEL_30:
    if (v16 <= 0x67u)
    {
      if (v16 > 0x57u)
      {
        if (v16 <= 0x64u)
        {
          if (v16 != 88)
          {
            if (v16 == 99)
            {
              if (v11)
              {
                v55 = v85;
                v85 += 8;
                v56 = *v55;
              }

              else
              {
                v60 = *__s;
                __s += 2;
                LOBYTE(v56) = v60;
              }

              if (a2 == v14)
              {
                v61 = 0;
              }

              else
              {
                *this = v56;
                v61 = 1;
                if (&a2[-v14] != 1 && (a7 & 1) == 0)
                {
                  *(this + 1) = 0;
                  v61 = 2;
                }
              }

              v14 = v61 + v14;
              this = (this + v61);
              goto LABEL_160;
            }

            if (v16 == 100)
            {
              goto LABEL_102;
            }

            goto LABEL_47;
          }

          goto LABEL_95;
        }
      }

      else
      {
        if (v16 == 76)
        {
          goto LABEL_46;
        }

        if (v16 != 69 && v16 != 71)
        {
          goto LABEL_47;
        }
      }

      *v84 = 0;
      if (v11)
      {
        v30 = v85;
        v85 += 8;
        v31 = *v30;
      }

      else
      {
        v32 = *__s;
        __s += 8;
        v31 = v32;
      }

      *v84 = v31;
      if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
      {
        if (v16 == 102)
        {
          if (fabs(v31) <= 1.0e17)
          {
            LOBYTE(v16) = 102;
          }

          else if (v14 >= a2)
          {
            LOBYTE(v16) = 103;
          }

          else
          {
            v38 = 45;
            v39 = "[%f -> %g as number too big!]-";
            do
            {
              *this = v38;
              this = (this + 1);
              v14 = (v14 + 1);
              v40 = *v39++;
              v38 = v40;
              if (v40)
              {
                v41 = v14 >= a2;
              }

              else
              {
                v41 = 1;
              }
            }

            while (!v41);
            LOBYTE(v16) = 103;
          }
        }

        goto LABEL_158;
      }

      v33 = a1Finite[0];
      if (a1Finite[0])
      {
        v34 = v14 >= a2;
      }

      else
      {
        v34 = 1;
      }

      if (!v34)
      {
        v35 = ".!FINITE";
        do
        {
          *this = v33;
          this = (this + 1);
          v14 = (v14 + 1);
          v36 = *v35++;
          v33 = v36;
          if (v36)
          {
            v37 = v14 >= a2;
          }

          else
          {
            v37 = 1;
          }
        }

        while (!v37);
      }

      goto LABEL_160;
    }

    if (v16 > 0x6Bu)
    {
      if (v16 <= 0x6Eu)
      {
        if (v16 != 108)
        {
          goto LABEL_47;
        }

        if ((v17 & 0x400) != 0)
        {
          v17 = v17 & 0xFFFFF3FF | 0x800;
        }

        else
        {
          if ((v17 & 0x800) != 0)
          {
            goto LABEL_47;
          }

          v17 |= 0x400u;
        }

        goto LABEL_46;
      }

      if (v16 <= 0x74u)
      {
        if (v16 == 111)
        {
          goto LABEL_95;
        }

        if (v16 != 115)
        {
          goto LABEL_47;
        }

        if (v11)
        {
          v22 = v85;
          v85 += 8;
          v23 = *v22;
          v24 = &a2[-v14];
          v25 = this;
          v26 = 115;
          goto LABEL_159;
        }

        v63 = BlueFin::GlFormat::gl_format_param(this, &a2[-v14], 115, v17, v20, v19, __s, a7, v84[0]);
        LODWORD(v64) = *__s;
        if (*__s)
        {
          v64 = 0;
            ;
          }
        }

        v14 = v63 + v14;
        this = (this + v63);
        if (v64)
        {
          v66 = 1;
        }

        else
        {
          v66 = 2;
        }

        __s += (v66 + v64);
LABEL_160:
        v10 = *v15;
        if (*v15)
        {
          v71 = v14 >= a2;
        }

        else
        {
          v71 = 1;
        }

        a3 = v15;
        if (v71)
        {
          if (a7)
          {
            if (v14 >= a2)
            {
              goto LABEL_170;
            }

LABEL_172:
            *this = 0;
          }

          return v14;
        }

        continue;
      }

      if (v16 != 117 && v16 != 120)
      {
        goto LABEL_47;
      }

LABEL_95:
      *v84 = 0;
      if (v11)
      {
        if ((v17 & 0x800) == 0)
        {
          v42 = v85;
          v85 += 8;
          v43 = *v42;
          goto LABEL_157;
        }

        goto LABEL_124;
      }

      if ((v17 & 0x800) == 0)
      {
        *v84 = *__s;
        v44 = *v84 & 0xFFFFFFFFFFFF00FFLL | (__s[1] << 8);
        *v84 = v44;
        if ((v17 & 0x400) == 0)
        {
          __s += 2;
          goto LABEL_158;
        }

        goto LABEL_156;
      }

      goto LABEL_125;
    }

    break;
  }

  if (v16 == 104)
  {
    if ((v17 & 0x200) != 0)
    {
      v17 |= 0x100u;
    }

    else
    {
      if ((v17 & 0x100) != 0)
      {
        goto LABEL_47;
      }

      v17 |= 0x200u;
    }

LABEL_46:
    v21 = *v15++;
    LOBYTE(v16) = v21;
    if (!v21)
    {
      goto LABEL_47;
    }

    goto LABEL_30;
  }

  if (v16 == 105)
  {
LABEL_102:
    *v84 = 0;
    if ((v17 & 0x800) == 0)
    {
      if ((v17 & 0x400) == 0)
      {
        if ((v17 & 0x200) == 0 && (v17 & 0x100) != 0)
        {
          if (v11)
          {
            goto LABEL_140;
          }

          v72 = *__s;
          __s += 2;
          v43 = v72;
        }

        else
        {
          if (!v11)
          {
            v45 = *__s;
            v46 = __s[1];
            __s += 2;
            v43 = (v46 << 8) | v45;
            goto LABEL_157;
          }

LABEL_140:
          v62 = v85;
          v85 += 8;
          v43 = *v62;
        }

LABEL_157:
        *v84 = v43;
LABEL_158:
        v24 = &a2[-v14];
        v26 = v16;
        v23 = v84;
        v25 = this;
LABEL_159:
        v70 = BlueFin::GlFormat::gl_format_param(v25, v24, v26, v17, v20, v19, v23, a7, v84[0]);
        v14 = v70 + v14;
        this = (this + v70);
        goto LABEL_160;
      }

      if (v11)
      {
        goto LABEL_140;
      }

      *v84 = *__s;
      v44 = *v84 & 0xFFFFFFFFFFFF00FFLL | (__s[1] << 8);
      *v84 = v44;
LABEL_156:
      *v84 = v44 & 0xFFFFFFFFFF00FFFFLL | (__s[2] << 16);
      v69 = __s[3];
      __s += 4;
      v43 = *v84 & 0xFFFFFFFF00FFFFFFLL | (v69 << 24);
      goto LABEL_157;
    }

    if (v11)
    {
LABEL_124:
      v57 = v85;
      v85 += 8;
      v43 = *v57;
      goto LABEL_157;
    }

LABEL_125:
    *v84 = *__s;
    *v84 = *v84 & 0xFFFFFFFFFFFF00FFLL | (__s[1] << 8);
    *v84 = *v84 & 0xFFFFFFFFFF00FFFFLL | (__s[2] << 16);
    *v84 = *v84 & 0xFFFFFFFF00FFFFFFLL | (__s[3] << 24);
    *v84 = *v84 & 0xFFFFFF00FFFFFFFFLL | (__s[4] << 32);
    *v84 = *v84 & 0xFFFF00FFFFFFFFFFLL | (__s[5] << 40);
    *v84 = *v84 & 0xFF00FFFFFFFFFFFFLL | (__s[6] << 48);
    v58 = __s[7];
    __s += 8;
    v43 = *v84 | (v58 << 56);
    goto LABEL_157;
  }

LABEL_47:
  if (!a7)
  {
    goto LABEL_160;
  }

  if (v14 < a2)
  {
    v73 = v14 + 26;
    v74 = 26;
    v75 = "***Unsupported format***:'";
    while (v74)
    {
      v76 = *v75++;
      *this = v76;
      this = (this + 1);
      v14 = (v14 + 1);
      --v74;
      if (v14 >= a2)
      {
        goto LABEL_182;
      }
    }

    LODWORD(v14) = v73;
  }

LABEL_182:
  v77 = 0;
  do
  {
    v78 = v15[v77-- - 2];
  }

  while (v78 != 37);
  v79 = v14;
  if (v14 < a2)
  {
    LODWORD(v79) = v14;
    do
    {
      *this = v15[v77 - 1];
      this = (this + 1);
      v79 = (v79 + 1);
      v80 = v79 >= a2 || v77++ == 0;
      LODWORD(v14) = v79;
    }

    while (!v80);
  }

  if (v79 >= a2)
  {
LABEL_170:
    *(this - 1) = 0;
    return (v14 - 1);
  }

  result = (v14 + 2);
  v81 = "'\n";
  v82 = 2;
  while (v82)
  {
    v83 = *v81++;
    *this = v83;
    this = (this + 1);
    v14 = (v14 + 1);
    --v82;
    if (v14 >= a2)
    {
      goto LABEL_170;
    }
  }

  *this = 0;
  return result;
}

uint64_t BlueFin::GlGnssSetIterator::Reset(uint64_t this)
{
  v1 = this;
  v2 = 0;
  v3 = 1;
  do
  {
    while (1)
    {
      while ((v3 & 1) == 0)
      {
        v3 = 0;
        if (++v2 == 7)
        {
          goto LABEL_20;
        }
      }

      v4 = *(this + 168) + 24 * v2;
      v5 = *v4;
      if (**v4)
      {
        v6 = 1;
        goto LABEL_15;
      }

      v7 = *(v4 + 8);
      v8 = v7 >= 2;
      v9 = v7 - 2;
      if (v8)
      {
        break;
      }

      ++v2;
      v3 = 1;
      if (v2 == 7)
      {
        goto LABEL_25;
      }
    }

    v10 = v5 + 1;
    do
    {
      v11 = *v10++;
      v6 = v11 != 0;
      if (v11)
      {
        v12 = 1;
      }

      else
      {
        v12 = v9 == 0;
      }

      --v9;
    }

    while (!v12);
LABEL_15:
    v3 = !v6;
    ++v2;
  }

  while (v2 != 7);
  if (!v6)
  {
LABEL_25:
    *(this + 192) = 6;
    *(this + 196) = 14;
    return this;
  }

LABEL_20:
  v13 = 0;
  *(this + 192) = 0;
  v14 = (this + 192);
  *(this + 196) = 1;
  while (v13 != 6 || *(v1 + 196) != 14)
  {
    this = BlueFin::GlGnssSet::Has(v1, (v1 + 192));
    if (this)
    {
      break;
    }

    this = BlueFin::GlGnss::operator++(v1 + 192);
    v13 = *v14;
  }

  return this;
}

void *BlueFin::GlDbgMemory::Allocate(BlueFin::GlDbgMemory *this)
{
  v1 = this;
  result = (*BlueFin::GlDbgMemory::m_pInstance)();
  if (result)
  {

    return memset(result, 129, v1);
  }

  return result;
}

unint64_t BlueFin::GlFormat::gl_format_param(BlueFin::GlFormat *this, char *a2, int a3, unsigned int a4, int a5, int a6, char *__s, void *a8, BOOL a9)
{
  v137 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    result = 0;
    goto LABEL_72;
  }

  v9 = a8;
  v12 = a5;
  v14 = a3;
  result = 0;
  if (a3 <= 100)
  {
    if (a3 <= 87)
    {
      if (a3 != 69 && a3 != 71)
      {
        goto LABEL_72;
      }

      goto LABEL_36;
    }

    if (a3 != 88)
    {
      if (a3 == 99)
      {
        *this = *__s;
        result = 1;
        if (a2 == 1 || (a8 & 1) != 0)
        {
          goto LABEL_72;
        }

        goto LABEL_130;
      }

      if (a3 == 100)
      {
LABEL_12:
        v18 = *__s;
        if (a8)
        {
          if (v18 >= 0)
          {
            v19 = *__s;
          }

          else
          {
            v19 = -v18;
          }

          v20 = *MEMORY[0x29EDCA608];
          v21 = v18 >= 0;
          v22 = this;
          goto LABEL_77;
        }

        if ((a4 & 0x100) == 0)
        {
          if ((a4 & 0x400) != 0)
          {
            *this = v18;
            v55 = this + 1;
            if (a2 == 1)
            {
              result = 1;
            }

            else
            {
              v55 = this + 2;
              *(this + 1) = BYTE1(v18);
              result = 2;
            }

            v123 = result;
            if (result < a2)
            {
              *v55++ = BYTE2(v18);
              v123 = (result + 1);
              result = v123;
            }

            if (v123 >= a2)
            {
              goto LABEL_72;
            }

            v57 = v18 >> 24;
          }

          else
          {
            if ((a4 & 0x800) == 0)
            {
              *this = v18;
              if (a2 != 1)
              {
                *(this + 1) = BYTE1(v18);
LABEL_131:
                result = 2;
                goto LABEL_72;
              }

              goto LABEL_129;
            }

            *this = v18;
            v55 = this + 1;
            if (a2 == 1)
            {
              result = 1;
            }

            else
            {
              v55 = this + 2;
              *(this + 1) = BYTE1(v18);
              result = 2;
            }

            v124 = result;
            if (result < a2)
            {
              *v55++ = BYTE2(v18);
              v124 = (result + 1);
              result = v124;
            }

            if (v124 < a2)
            {
              *v55++ = BYTE3(v18);
              v124 = (result + 1);
              result = v124;
            }

            if (v124 < a2)
            {
              *v55++ = BYTE4(v18);
              v124 = (result + 1);
              result = v124;
            }

            if (v124 < a2)
            {
              *v55++ = BYTE5(v18);
              v124 = (result + 1);
              result = v124;
            }

            if (v124 < a2)
            {
              *v55++ = BYTE6(v18);
              v124 = (result + 1);
              result = v124;
            }

            if (v124 >= a2)
            {
              goto LABEL_72;
            }

            v57 = HIBYTE(v18);
          }

          goto LABEL_127;
        }

        *this = v18;
        if (a2 == 1)
        {
LABEL_129:
          result = 1;
          goto LABEL_72;
        }

LABEL_130:
        *(this + 1) = 0;
        goto LABEL_131;
      }

LABEL_72:
      v42 = *MEMORY[0x29EDCA608];
      return result;
    }
  }

  else
  {
    if (a3 <= 110)
    {
      if ((a3 - 101) >= 3)
      {
        if (a3 != 105)
        {
          goto LABEL_72;
        }

        goto LABEL_12;
      }

LABEL_36:
      v29 = *__s;
      __src = *__s;
      if (a8)
      {
        if (v29 < 0.0)
        {
          v30 = -v29;
        }

        else
        {
          v30 = v29;
        }

        if (a6 >= 0x11)
        {
          v31 = 17;
        }

        else
        {
          v31 = a6;
        }

        v32 = a4 & 0xDF;
        if (a6 > 0)
        {
          v32 = a4;
        }

        else
        {
          v31 = 0;
        }

        if ((a4 & 0x20) != 0)
        {
          v33 = v31;
        }

        else
        {
          v33 = 6;
        }

        if ((a4 & 0x20) != 0)
        {
          v34 = v32;
        }

        else
        {
          v34 = a4 | 0x20;
        }

        v130 = v34;
        __y = 0.0;
        v35 = a3 & 0xFFFFFFDF;
        if ((a3 & 0xFFFFFFDF) == 0x47)
        {
          if (v30 >= 1000000.0 || (v36 = pow(0.1, (v33 / 3u)), v37 = 102, v29 != 0.0) && v30 < v36)
          {
            v37 = v14 - 2;
          }

          if (v33)
          {
            v38 = v37 == 102;
          }

          else
          {
            v38 = 1;
          }

          v39 = !v38;
          v33 -= v39;
          v14 = v37;
        }

        if ((v14 & 0xDF) == 0x45)
        {
          if (v29 == 0.0)
          {
            v40 = 0;
          }

          else
          {
            v40 = vcvtmd_s64_f64(log10(v30));
            if (v40 < -299)
            {
              v30 = v30 * __exp10((-100 - v40)) * 1.0e100;
            }

            else
            {
              v30 = v30 * __exp10(-v40);
            }
          }

          v12 -= 5;
        }

        else
        {
          v40 = 0;
        }

        *v62.i64 = modf(v30, &__y);
        v60.i64[0] = BlueFin::dPow10[v33];
        *v61.i64 = *v60.i64 * (*v62.i64 + 0.5 / *v60.i64);
        *v62.i64 = __y;
        if (*v61.i64 >= *v60.i64)
        {
          *v62.i64 = __y + 1.0;
          if ((v14 & 0xDF) == 0x45 && *v62.i64 >= 10.0)
          {
            v61.i64[0] = 0;
            v125 = v61;
            ++v40;
            *v62.i64 = *v62.i64 / 10.0;
          }

          else
          {
            v60.i64[0] = 0;
            v125 = v60;
          }
        }

        else
        {
          v125 = v61;
        }

        v128 = v14 & 0xDF;
        v129 = v40;
        if (*v62.i64 <= 1000000000.0)
        {
          *v58.i64 = *v62.i64 + trunc(*v62.i64 * 2.32830644e-10) * -4294967300.0;
          v77.f64[0] = NAN;
          v77.f64[1] = NAN;
          v78 = vnegq_f64(v77);
          v58.i64[0] = vbslq_s8(v78, v58, v62).u64[0];
          if (*v62.i64 > 4294967300.0)
          {
            v62.i64[0] = v58.i64[0];
          }

          if (*v62.i64 < -4294967300.0)
          {
            *v61.i64 = -*v62.i64;
            *v62.i64 = -(*v62.i64 - trunc(*v62.i64 * -2.32830644e-10) * -4294967300.0);
            *v62.i64 = -*vbslq_s8(v78, v62, v61).i64;
          }

          if (*v62.i64 < 0.0)
          {
            v79 = --*v62.i64;
          }

          else
          {
            v79 = *v62.i64;
          }

          v72 = BlueFin::GlFormat::gl_output_num(v136, 0x14, 117, 0, 0, v79, 1);
        }

        else
        {
          *v61.i64 = *v62.i64 * 0.000000001;
          *v59.i64 = *v62.i64 * 0.000000001 + trunc(*v62.i64 * 0.000000001 * 2.32830644e-10) * -4294967300.0;
          v63.f64[0] = NAN;
          v63.f64[1] = NAN;
          v64 = vnegq_f64(v63);
          v59.i64[0] = vbslq_s8(v64, v59, v61).u64[0];
          if (*v62.i64 * 0.000000001 > 4294967300.0)
          {
            v61.i64[0] = v59.i64[0];
          }

          if (*v61.i64 < -4294967300.0)
          {
            *v58.i64 = -*v61.i64;
            *v61.i64 = -(*v61.i64 - trunc(*v61.i64 * -2.32830644e-10) * -4294967300.0);
            v61 = vbslq_s8(v64, v61, v58);
            *v61.i64 = -*v61.i64;
          }

          if (*v61.i64 < 0.0)
          {
            v65 = --*v61.i64;
          }

          else
          {
            v65 = *v61.i64;
          }

          *v62.i64 = *v62.i64 + v65 * -1000000000.0;
          *v61.i64 = *v62.i64 + trunc(*v62.i64 * 2.32830644e-10) * -4294967300.0;
          v66 = vbslq_s8(v64, v61, v62);
          if (*v62.i64 > 4294967300.0)
          {
            v62.i64[0] = v66.i64[0];
          }

          v67 = v35;
          if (*v62.i64 < -4294967300.0)
          {
            *v66.i64 = -*v62.i64;
            *v62.i64 = -(*v62.i64 - trunc(*v62.i64 * -2.32830644e-10) * -4294967300.0);
            v68.f64[0] = NAN;
            v68.f64[1] = NAN;
            *v62.i64 = -*vbslq_s8(vnegq_f64(v68), v62, v66).i64;
          }

          if (*v62.i64 < 0.0)
          {
            v69 = --*v62.i64;
          }

          else
          {
            v69 = *v62.i64;
          }

          if (v69 > 0x3B9AC9FF)
          {
            v70 = v69 + 1000000000;
          }

          else
          {
            v70 = v69;
          }

          v71 = BlueFin::GlFormat::gl_output_num(v136, 0x14, 117, 0, 0, v65 - (v69 > 0x3B9AC9FF), 1);
          v72 = BlueFin::GlFormat::gl_output_num(&v136[v71], (20 - v71), 117, 2, 9, v70, 1) + v71;
          v35 = v67;
        }

        if (*v125.i64 <= 1000000000.0)
        {
          *v73.i64 = *v125.i64 + trunc(*v125.i64 * 2.32830644e-10) * -4294967300.0;
          v90.f64[0] = NAN;
          v90.f64[1] = NAN;
          v91 = vnegq_f64(v90);
          v92 = vbslq_s8(v91, v73, v125);
          if (*v125.i64 <= 4294967300.0)
          {
            v92.i64[0] = v125.i64[0];
          }

          if (*v92.i64 < -4294967300.0)
          {
            *v75.i64 = -*v92.i64;
            *v92.i64 = -(*v92.i64 - trunc(*v92.i64 * -2.32830644e-10) * -4294967300.0);
            *v92.i64 = -*vbslq_s8(v91, v92, v75).i64;
          }

          if (*v92.i64 < 0.0)
          {
            v93 = --*v92.i64;
          }

          else
          {
            v93 = *v92.i64;
          }

          v89 = BlueFin::GlFormat::gl_output_num(v135, 0x14, 117, 0, 0, v93, 1);
        }

        else
        {
          *v74.i64 = *v125.i64 * 0.000000001;
          *v76.i64 = *v125.i64 * 0.000000001 + trunc(*v125.i64 * 0.000000001 * 2.32830644e-10) * -4294967300.0;
          v80.f64[0] = NAN;
          v80.f64[1] = NAN;
          v81 = vnegq_f64(v80);
          v76.i64[0] = vbslq_s8(v81, v76, v74).u64[0];
          if (*v125.i64 * 0.000000001 > 4294967300.0)
          {
            v74.i64[0] = v76.i64[0];
          }

          if (*v74.i64 < -4294967300.0)
          {
            *v75.i64 = -*v74.i64;
            *v74.i64 = -(*v74.i64 - trunc(*v74.i64 * -2.32830644e-10) * -4294967300.0);
            v74 = vbslq_s8(v81, v74, v75);
            *v74.i64 = -*v74.i64;
          }

          if (*v74.i64 < 0.0)
          {
            v82 = --*v74.i64;
          }

          else
          {
            v82 = *v74.i64;
          }

          *v74.i64 = *v125.i64 + v82 * -1000000000.0;
          *v75.i64 = *v74.i64 + trunc(*v74.i64 * 2.32830644e-10) * -4294967300.0;
          v83 = vbslq_s8(v81, v75, v74);
          if (*v74.i64 <= 4294967300.0)
          {
            *v83.i64 = *v125.i64 + v82 * -1000000000.0;
          }

          v84 = v35;
          if (*v83.i64 < -4294967300.0)
          {
            *v74.i64 = -*v83.i64;
            *v83.i64 = -(*v83.i64 - trunc(*v83.i64 * -2.32830644e-10) * -4294967300.0);
            v85.f64[0] = NAN;
            v85.f64[1] = NAN;
            *v83.i64 = -*vbslq_s8(vnegq_f64(v85), v83, v74).i64;
          }

          if (*v83.i64 < 0.0)
          {
            v86 = --*v83.i64;
          }

          else
          {
            v86 = *v83.i64;
          }

          if (v86 > 0x3B9AC9FF)
          {
            v87 = v86 + 1000000000;
          }

          else
          {
            v87 = v86;
          }

          v88 = BlueFin::GlFormat::gl_output_num(v135, 0x14, 117, 0, 0, v82 - (v86 > 0x3B9AC9FF), 1);
          v89 = BlueFin::GlFormat::gl_output_num(&v135[v88], (20 - v88), 117, 2, 9, v87, 1) + v88;
          v35 = v84;
        }

        if (v33)
        {
          v94 = v89;
        }

        else
        {
          v94 = 0;
        }

        if (v33)
        {
          v95 = v33 - v89;
        }

        else
        {
          v95 = 0;
        }

        v96 = v12 - (v72 + v94 + v95);
        if (v35 == 71)
        {
          if (v94 < 1)
          {
            v99 = v12 - (v72 + v94 + v95);
            v100 = v130;
LABEL_215:
            if (v100 & 1 | v94)
            {
              v96 = v99;
            }

            else
            {
              v100 &= 0xDEu;
              v96 = v95 + v99 - 1;
              v94 = 0;
              if (v95 < 1)
              {
                v96 = v99;
              }

              else
              {
                v95 = 1;
              }
            }
          }

          else
          {
            v97 = v94 - 2;
            v98 = &v135[v94 - 1];
            v99 = v12 - v72 - v95;
            v100 = v130;
            while (*v98 == 48)
            {
              if ((v97 & 0x80000000) == 0)
              {
                --v98;
                ++v96;
                --v97;
                v49 = v89-- <= 1;
                if (!v49)
                {
                  continue;
                }
              }

              v94 = 0;
              goto LABEL_215;
            }

            v94 = v89;
          }
        }

        else
        {
          v100 = v130;
        }

        v101 = 0;
        v102 = (v100 & 0x18) == 0 && v29 >= 0.0;
        v103 = v96 + ((v100 & 0x20) == 0) + v102 - 2;
        v104 = v103 & ~(v103 >> 31);
        v105 = v100 & 6;
        if ((v100 & 6) == 0 && v103 >= 1)
        {
          if ((a2 - 1) >= (v104 - 1))
          {
            v106 = (v104 - 1);
          }

          else
          {
            v106 = a2 - 1;
          }

          v131 = v100;
          v126 = v14;
          v107 = v100 & 6;
          memset(this, 32, (v106 + 1));
          v105 = v107;
          v14 = v126;
          this = &v106[this + 1];
          v104 = v104 - v106 - 2;
          v101 = (v106 + 1);
          v100 = v131;
        }

        v108 = v101 >= a2 || v102;
        if ((v108 & 1) == 0)
        {
          if ((v100 & 0x10) != 0)
          {
            v109 = 43;
          }

          else
          {
            v109 = 32;
          }

          if (v29 < 0.0)
          {
            v109 = 45;
          }

          *this = v109;
          this = (this + 1);
          v101 = (v101 + 1);
        }

        v110 = v100 & 0x20;
        if (v105 == 2 && v104 >= 1)
        {
          if (v101 >= a2)
          {
            --v104;
          }

          else
          {
            if (&a2[~v101] >= (v104 - 1))
            {
              v111 = (v104 - 1);
            }

            else
            {
              v111 = &a2[~v101];
            }

            v132 = v100;
            v127 = v100 & 0x20;
            memset(this, 48, v111 + 1);
            v110 = v127;
            this = (this + v111 + 1);
            v100 = v132;
            v104 = v104 - v111 - 2;
            v101 = (v101 + v111 + 1);
          }
        }

        v112 = v101 < a2;
        if (v72 >= 1 && v101 < a2)
        {
          v113 = v136;
          do
          {
            v114 = *v113++;
            *this = v114;
            this = (this + 1);
            v101 = (v101 + 1);
            v112 = v101 < a2;
            if (v72 < 2)
            {
              break;
            }

            --v72;
          }

          while (v101 < a2);
        }

        if (v110)
        {
          v115 = v129;
          if (v112)
          {
            *this = 46;
            this = (this + 1);
            v116 = (v101 + 1);
            v117 = v116;
            if (v95 < 1)
            {
              i = v128;
            }

            else
            {
              for (i = v128; v116 < a2; --v95)
              {
                *this = 48;
                this = (this + 1);
                v116 = (v117 + 1);
                v117 = v116;
                if (v95 < 2)
                {
                  break;
                }
              }
            }

            if (v94 >= 1 && v116 < a2)
            {
              v119 = v135;
              do
              {
                v120 = *v119++;
                *this = v120;
                this = (this + 1);
                v117 = (v117 + 1);
                if (v94 < 2)
                {
                  break;
                }

                --v94;
              }

              while (v117 < a2);
            }
          }

          else
          {
            v117 = v101;
            i = v128;
          }
        }

        else
        {
          v117 = v101;
          i = v128;
          v115 = v129;
        }

        if (i != 69)
        {
          goto LABEL_285;
        }

        v121 = v117;
        if (v117 < a2)
        {
          *this = v14;
          this = (this + 1);
          v121 = (v117 + 1);
          v117 = v121;
        }

        if (v121 < a2)
        {
          if (v115 >= 0)
          {
            v122 = 43;
          }

          else
          {
            v122 = 45;
          }

          if (v115 < 0)
          {
            v115 = -v115;
          }

          *this = v122;
          this = (this + 1);
          v121 = (v117 + 1);
          v117 = v121;
        }

        if (v121 < a2 && v115 >= 100)
        {
          *this = v115 / 0x64u + 48;
          this = (this + 1);
          v121 = (v117 + 1);
          v115 %= 0x64u;
          v117 = v121;
        }

        if (v121 < a2)
        {
          *this = v115 / 10 + 48;
          this = (this + 1);
          v121 = (v117 + 1);
          v115 %= 10;
          v117 = v121;
        }

        if (v121 < a2)
        {
          *this = v115 + 48;
          this = (this + 1);
          result = (v117 + 1);
        }

        else
        {
LABEL_285:
          result = v117;
        }

        if ((v100 & 4) != 0 && v104 >= 1 && result < a2)
        {
          do
          {
            *this = 32;
            this = (this + 1);
            result = (result + 1);
            if (v104 < 2)
            {
              break;
            }

            --v104;
          }

          while (result < a2);
        }
      }

      else
      {
        if ((a2 - 1) >= 7)
        {
          v41 = 7;
        }

        else
        {
          v41 = (a2 - 1);
        }

        memcpy(this, &__src, v41 + 1);
        result = (v41 + 1);
      }

      goto LABEL_72;
    }

    if (a3 > 116)
    {
      if (a3 != 117 && a3 != 120)
      {
        goto LABEL_72;
      }
    }

    else if (a3 != 111)
    {
      if (a3 == 115)
      {
        v23 = strlen(__s);
        v24 = 0;
        v25 = a6;
        if (a6 >= a2)
        {
          v25 = a2;
        }

        if (((a6 >= 0) & (a4 >> 5)) != 0)
        {
          v26 = v25;
        }

        else
        {
          v26 = a2;
        }

        if (v12 < 1 || (v27 = v12 - v23, v12 <= v23))
        {
          v27 = 0;
        }

        else
        {
          v24 = 0;
          if ((a4 & 4) == 0 && v27 && v26)
          {
            v24 = 0;
            do
            {
              v28 = v24;
              *this = 32;
              this = (this + 1);
              ++v24;
            }

            while (v27 - 1 != v28 && v26 > v24);
            v27 -= v24;
          }
        }

        v47 = *__s;
        v48 = v24;
        if (*__s)
        {
          v49 = v26 > v24;
        }

        else
        {
          v49 = 0;
        }

        if (v49)
        {
          v50 = __s + 1;
          LODWORD(v48) = v24;
          do
          {
            *this = v47;
            this = (this + 1);
            v48 = (v48 + 1);
            v51 = *v50++;
            v47 = v51;
            if (v51)
            {
              v52 = v26 > v48;
            }

            else
            {
              v52 = 0;
            }

            v24 = v48;
          }

          while (v52);
        }

        if (v27 && v26 > v48)
        {
          v53 = v27 - 1;
          do
          {
            *this = 32;
            this = (this + 1);
            v48 = (v24 + 1);
            v24 = v48;
            v54 = v53-- != 0;
          }

          while (v54 && v26 > v48);
        }

        if (v9)
        {
          goto LABEL_117;
        }

        if (v48 < a2)
        {
          *this = 0;
          result = (v24 + 1);
          if ((v24 & 1) == 0 && result < a2)
          {
            *(this + 1) = 0;
            result = (v24 + 2);
          }

          goto LABEL_72;
        }

        *(this - 1) = 0;
        if ((v24 & 1) == 0)
        {
LABEL_117:
          result = v24;
        }

        else
        {
          *(this - 2) = 0;
          result = (v24 - 1);
        }
      }

      goto LABEL_72;
    }
  }

  v19 = *__s;
  if (!a8)
  {
    *this = v19;
    v44 = this + 1;
    if (a2 == 1)
    {
      result = 1;
    }

    else
    {
      if ((a4 & 0x100) != 0)
      {
        v45 = 0;
      }

      else
      {
        v45 = BYTE1(v19);
      }

      v44 = this + 2;
      *(this + 1) = v45;
      result = 2;
    }

    v46 = result;
    if ((a4 & 0x400) != 0 && result < a2)
    {
      *v44 = BYTE2(v19);
      v46 = (result + 1);
      if (v46 >= a2)
      {
        result = (result + 1);
        ++v44;
      }

      else
      {
        v44[1] = BYTE3(v19);
        v44 += 2;
        v46 = (result + 2);
        result = v46;
      }
    }

    if ((a4 & 0x800) == 0 || v46 >= a2)
    {
      goto LABEL_72;
    }

    *v44 = BYTE4(v19);
    v55 = v44 + 1;
    v56 = (result + 1);
    if (v56 < a2)
    {
      v55 = v44 + 2;
      v44[1] = BYTE5(v19);
      v56 = (result + 2);
    }

    result = v56;
    if (v56 < a2)
    {
      *v55++ = BYTE6(v19);
      v56 = (v56 + 1);
      result = (result + 1);
    }

    if (v56 >= a2)
    {
      goto LABEL_72;
    }

    v57 = HIBYTE(v19);
LABEL_127:
    *v55 = v57;
    result = (result + 1);
    goto LABEL_72;
  }

  v43 = *MEMORY[0x29EDCA608];
  v22 = this;
  v21 = 1;
LABEL_77:

  return BlueFin::GlFormat::gl_output_num(v22, a2, a3, a4, a5, v19, v21);
}

uint64_t BlueFin::GlSetBase::SetULong(uint64_t this, unsigned int a2, int a3)
{
  if (*(this + 8) <= a2)
  {
    DeviceFaultNotify("glutl_set.cpp", 246, "SetULong", "ucIndex < m_ucUlongSize");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_set.cpp", 246, "ucIndex < m_ucUlongSize");
  }

  *(*this + 4 * a2) = a3;
  return this;
}

BlueFin::GlGnssSetIterator *BlueFin::GlGnssSetIterator::GlGnssSetIterator(BlueFin::GlGnssSetIterator *this, const BlueFin::GlGnssSet *a2)
{
  v4 = 0;
  *(this + 21) = this;
  do
  {
    BlueFin::GlSetBase::GlSetBase((*(this + 21) + v4), (*(this + 21) + v4 + 12), 2u, (*(a2 + 21) + v4));
    v4 += 24;
  }

  while (v4 != 168);
  *(this + 48) = 7;
  *(this + 196) = 0;
  *(this + 50) = 7;
  *(this + 204) = 0;
  BlueFin::GlGnssSetIterator::Reset(this);
  return this;
}

unint64_t BlueFin::GlGnssSet::Has(uint64_t a1, int *a2)
{
  if (*a2 > 6 || (v2 = *(a2 + 4), (v2 - 1) >= 0x3F))
  {
    DeviceFaultNotify("glgnss.cpp", 286, "Has", "rtGnss.isValid()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glgnss.cpp", 286, "rtGnss.isValid()");
  }

  return (*(*(*(a1 + 168) + 24 * *a2) + ((v2 >> 3) & 0x1C)) >> (v2 & 0x1F)) & 1;
}

char *BlueFin::GlDbgCodec::WriteArray(BlueFin::GlDbgCodec *this, char *a2, unsigned int *a3)
{
  result = (*(*this + 120))(this);
  if (result)
  {
    if ((*(*this + 120))(this))
    {
      BlueFin::GlDbgCodec::Write(this, a3);
    }

    v7 = *a3;

    return BlueFin::GlDbgCodecBase::Encode(this, a2, v7, 0, 0);
  }

  return result;
}

uint64_t BlueFin::GlEngineImplStd::LoadComponents(BlueFin::GlEngineImplStd *this, int a2)
{
  if (*(this + 32))
  {
    return *(this + 32);
  }

  if (*(this + 2) || *(this + 3))
  {
    v15 = "m_ptGlEventPump == nullptr && m_ptGlPosEng == nullptr";
    DeviceFaultNotify("glengine_std.cpp", 538, "LoadComponents", "m_ptGlEventPump == nullptr && m_ptGlPosEng == nullptr");
    v16 = 538;
    goto LABEL_43;
  }

  v3 = (this + 72);
  BlueFin::GlPeObjFactory::m_potGlPeObjFactory = this + 72;
  v4 = *(this + 1);
  if (v4)
  {
    goto LABEL_5;
  }

  GlSettingImpl = BlueFin::GlPeObjFactory::MakeGlSettingImpl(this + 9);
  *(this + 1) = GlSettingImpl;
  *(this + 4409) = 1;
  v19 = *(this + 1232);
  if (v19 != 2)
  {
    if (v19)
    {
      (*(*GlSettingImpl + 416))(GlSettingImpl, 48);
      BlueFin::GlSetBase::Remove(*(this + 1) + 26232, 1);
      v20 = *(this + 1);
      goto LABEL_33;
    }

    v15 = "m_eEngineType != GL_ENGINE_TYPE_UNSET";
    DeviceFaultNotify("glengine_std.cpp", 551, "LoadComponents", "m_eEngineType != GL_ENGINE_TYPE_UNSET");
    v16 = 551;
LABEL_43:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glengine_std.cpp", v16, v15);
  }

  if (a2)
  {
    *(this + 593) = 0;
  }

  (*(*GlSettingImpl + 1088))(GlSettingImpl, 1);
  v21 = *(this + 593);
  (*(**(this + 1) + 1120))();
  (*(**(this + 1) + 416))();
  v20 = *(this + 1);
  **(v20 + 26232) |= 2u;
LABEL_33:
  v22 = *(this + 35);
  if (!v22 || v22(*(this + 34), v20))
  {
    goto LABEL_35;
  }

LABEL_5:
  if ((*(this + 560) & 1) == 0 && (*(*(this + 1) + 25964) & 1) == 0)
  {
    v5 = *(this + 42);
    if (v5)
    {
      if (!v5(*(this + 34), 0))
      {
        *(this + 560) = 1;
        goto LABEL_10;
      }

LABEL_35:
      v23 = *(this + 36);
      if (v23)
      {
        v23(*(this + 34), 1, 0);
      }

      if (*(this + 4409) == 1)
      {
        v24 = *(this + 10);
        if (v24)
        {
          v24(*(this + 1));
        }

        *(this + 1) = 0;
        *(this + 4409) = 0;
      }

      return *(this + 32);
    }
  }

LABEL_10:
  GlCustomLog(14, "PE SIZE %d\n", 536088);
  if (!BlueFin::GlUtils::m_pInstance)
  {
    BlueFin::GlUtils::m_pInstance = BlueFin::GlPeObjFactory::MakeGlUtils(this + 9, *(this + 1), (this + 264));
    *(this + 4408) = 1;
  }

  GlCustomLog(14, "GlEngineImplStd::verifyCpuWordSizeAndEndian: GLL is built as Little Endian running on a Little Endian CPU\n");
  v6 = *(this + 1231) + 1;
  *(this + 1231) = v6;
  v7 = *(this + 1);
  *(v7 + 6542) = v6;
  BlueFin::GlSettingsImpl::Print(v7);
  v8 = *(this + 1);
  if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    (*(v8[1] + 24))(v8 + 1, 0, 0);
    v8 = *(this + 1);
  }

  v9 = (*(*v8 + 1128))(v8);
  (*(*v8 + 1104))(v8, v9);
  Memory = BlueFin::GlMemAlloc::glAllocateMemory(1, 112, *v3);
  if (Memory)
  {
    *(Memory + 5) = 0u;
    *(Memory + 6) = 0u;
    *(Memory + 3) = 0u;
    *(Memory + 4) = 0u;
    *(Memory + 1) = 0u;
    *(Memory + 2) = 0u;
    *Memory = 0u;
  }

  *(this + 2) = Memory;
  *(this + 3) = BlueFin::GlPeObjFactory::MakePosEng(this + 9, this, *(this + 1), Memory, (this + 264), *(this + 4410));
  *(this + 32) = 1;
  if (!v4)
  {
    v11 = (*(**(this + 1) + 1112))(*(this + 1));
    v12 = "host";
    if (v11)
    {
      v12 = "chip";
    }

    GlCustomLog(13, "GlEngineImplStd::LoadComponents: Starting with ME on-%s\n", v12);
  }

  GlCustomLog(15, "GlEngineImplStd::LoadComponents: Finished loading components\n");
  v13 = *(this + 41);
  if (v13)
  {
    v13(*(this + 34));
  }

  if (*(this + 1232) == 2)
  {
    v14 = *(*(this + 1) + 88);
    if (v14 > 0x26 || ((1 << v14) & 0x7460000000) == 0)
    {
      v15 = "(etRfType == GL_RF_47531_BRCM) || (etRfType == GL_RF_47531_BRCM_EXT_LNA) || (etRfType == GL_RF_4776_BRCM) || (etRfType == GL_RF_4776_BRCM_1P3V) || (etRfType == GL_RF_4755_BRCM) || (etRfType == GL_RF_4755_BRCM_1P3V)";
      DeviceFaultNotify("glengine_std.cpp", 645, "LoadComponents", "(etRfType == GL_RF_47531_BRCM) || (etRfType == GL_RF_47531_BRCM_EXT_LNA) || (etRfType == GL_RF_4776_BRCM) || (etRfType == GL_RF_4776_BRCM_1P3V) || (etRfType == GL_RF_4755_BRCM) || (etRfType == GL_RF_4755_BRCM_1P3V)");
      v16 = 645;
      goto LABEL_43;
    }
  }

  return *(this + 32);
}

uint64_t BlueFin::GlGnssSet::SetAll(uint64_t a1, unsigned int a2)
{
  if (a2 >= 7)
  {
    DeviceFaultNotify("glgnss.cpp", 221, "SetAll", "(GlIntU32)eGnss < NUM_GNSS");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glgnss.cpp", 221, "(GlIntU32)eGnss < NUM_GNSS");
  }

  result = *(a1 + 168) + 24 * a2;
  v3 = ~(-1 << qword_298A31920[a2]);
  *(result + 12) = 2 * v3;
  *result = result + 12;
  *(result + 8) = 2;
  *(result + 16) = v3 >> 31;
  return result;
}

uint64_t FireCallback::GlEngineOnStart(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (FireCallback::pInstance)
  {
    v9 = *(FireCallback::pInstance + 376);
    if (v9)
    {
      v12 = a2;
      v13 = a1;
      return (*(*v9 + 48))(v9, &v13, &v12);
    }

    v11 = "fcb,fEngineOnStartCb,nullptr";
  }

  else
  {
    v11 = "fcb,GlEngineOnStart,nullptr";
  }

  FireDeviceLog::DeviceLogBase(2, v11, a3, a4, a5, a6, a7, a8, v12);
  return 0;
}

uint64_t BlueFin::GlPeAlmanacPlainOldData::AlmId2Gnss@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (result > 6)
  {
    goto LABEL_11;
  }

  v3 = a2 - 119;
  if (result != 1)
  {
    v3 = a2 + 64;
  }

  v4 = ((1 << result) & 0x75) != 0 ? a2 : v3;
  if (!v4)
  {
LABEL_11:
    DeviceFaultNotify("glpe_almmgr.cpp", 137, "AlmId2Gnss", "ucGnssId != INVALID_GNSS_ID");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_almmgr.cpp", 137, "ucGnssId != INVALID_GNSS_ID");
  }

  if (((0xE243F0A181320uLL >> (8 * result)) & 0x3F) < v4)
  {
    v4 = 0;
  }

  *a3 = result;
  *(a3 + 4) = v4;
  return result;
}

unint64_t BlueFin::GlGnssSetIterator::operator++(uint64_t a1)
{
  for (i = a1 + 192; ; i = a1 + 192)
  {
    result = BlueFin::GlGnss::operator++(i);
    if (*(a1 + 192) == 6 && *(a1 + 196) == 14)
    {
      break;
    }

    result = BlueFin::GlGnssSet::Has(a1, (a1 + 192));
    if (result)
    {
      break;
    }
  }

  return result;
}

uint64_t BlueFin::GlGnss::operator++(uint64_t result)
{
  v1 = *result;
  if (*result > 6 || (v2 = *(result + 4), (v2 - 1) >= 0x3F))
  {
    *result = 0;
LABEL_13:
    v5 = 1;
    goto LABEL_14;
  }

  if (v1 > 6 || v2 >= ((0xE243F0A181320uLL >> (8 * v1)) & 0x3F))
  {
    if (v1 == 6)
    {
      v4 = 0;
    }

    else
    {
      v4 = v1 + 1;
    }

    *result = v4;
    goto LABEL_13;
  }

  v5 = v2 + 1;
LABEL_14:
  *(result + 4) = v5;
  return result;
}

uint64_t BlueFin::GlGnssSet::Add(uint64_t result, int *a2)
{
  if (*a2 > 6 || (v2 = *(a2 + 4), (v2 - 1) >= 0x3F))
  {
    DeviceFaultNotify("glgnss.cpp", 272, "Add", "rtGnss.isValid()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glgnss.cpp", 272, "rtGnss.isValid()");
  }

  v3 = *(*(result + 168) + 24 * *a2);
  *(v3 + ((v2 >> 3) & 0x1C)) |= 1 << v2;
  return result;
}

_WORD *BlueFin::GlPeAlmMgr::GetDefaultAlm(unsigned int *a1)
{
  v2 = *a1;
  if (v2 > 6)
  {
    return 0;
  }

  v3 = *(&off_29EEB35A8)[v2];
  if (v3)
  {
    v4 = **(&off_29EEB3570 + v2);
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          BlueFin::GlPeAlmanacPlainOldData::AlmId2Gnss(v2, *v3, &v6);
          v2 = v6;
          if (v6 == *a1)
          {
            if (v7 == *(a1 + 4))
            {
              return v3;
            }
          }

          else
          {
            v2 = *a1;
          }
        }

        v3 += 52;
        --v4;
      }

      while (v4);
    }

    return 0;
  }

  return v3;
}