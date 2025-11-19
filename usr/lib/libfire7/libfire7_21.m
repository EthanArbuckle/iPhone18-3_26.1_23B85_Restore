void sub_29891A5D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void FireCallback::~FireCallback(FireCallback *this)
{
  std::__function::__value_func<void ()(BlueFin::GL_SYNCIN_STATUS,BlueFin::GL_TIME const*,BlueFin::GL_TIME_VALIDITY,double,BOOL,signed char)>::~__value_func[abi:ne200100](this + 896);
  v2 = *(this + 111);
  if (v2 == (this + 864))
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  std::__function::__value_func<void ()(BlueFin::GL_SYNCIN_STATUS,double)>::~__value_func[abi:ne200100](this + 832);
  std::__function::__value_func<void ()(BlueFin::GL_SYNCIN_STATUS)>::~__value_func[abi:ne200100](this + 800);
  std::__function::__value_func<void ()(int,int,BlueFin::GL_TIME *)>::~__value_func[abi:ne200100](this + 768);
  std::__function::__value_func<void ()(BlueFin::GlEngine *,unsigned int,unsigned int,BlueFin::etReadLTOFileStat,BlueFin::GlPeLtoReadStat,BlueFin::etPredictionFileType,unsigned int)>::~__value_func[abi:ne200100](this + 736);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](this + 704);
  std::__function::__value_func<void ()(BlueFin::GL_REFCLK_REQUEST)>::~__value_func[abi:ne200100](this + 672);
  std::__function::__value_func<void ()(BlueFin::GlEngine *,unsigned int,unsigned int *,unsigned char)>::~__value_func[abi:ne200100](this + 640);
  std::__function::__value_func<void ()(BlueFin::GlEngine *,BlueFin::GlLTOFileReader *,BOOL)>::~__value_func[abi:ne200100](this + 608);
  std::__function::__value_func<void ()(BlueFin::GL_NV_STG_CTRL,char const*,short)>::~__value_func[abi:ne200100](this + 576);
  std::__function::__value_func<void ()(int,int,BlueFin::GL_TIME *)>::~__value_func[abi:ne200100](this + 544);
  std::__function::__value_func<void ()(BlueFin::GlNvStorageReader *)>::~__value_func[abi:ne200100](this + 512);
  std::__function::__value_func<void ()(unsigned char *,short)>::~__value_func[abi:ne200100](this + 480);
  std::__function::__value_func<void ()(BlueFin::GlEngine *,unsigned int,short,BOOL)>::~__value_func[abi:ne200100](this + 448);
  std::__function::__value_func<unsigned int ()(BlueFin::GlEngine *)>::~__value_func[abi:ne200100](this + 416);
  std::__function::__value_func<void ()(BlueFin::GlEngine *,BlueFin::GL_STOP_CODE,char const*)>::~__value_func[abi:ne200100](this + 384);
  std::__function::__value_func<short ()(BlueFin::GlEngine *,BlueFin::GlSettings *)>::~__value_func[abi:ne200100](this + 352);
  std::__function::__value_func<void ()(BlueFin::GlSvIqData const*)>::~__value_func[abi:ne200100](this + 320);
  std::__function::__value_func<void ()(BlueFin::GlGnssSvInfoData const*,BlueFin::GlTimeConversionInfo const*)>::~__value_func[abi:ne200100](this + 288);
  v3 = *(this + 35);
  if (v3 == (this + 256))
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  std::__function::__value_func<void ()(BlueFin::GlGnssData const*)>::~__value_func[abi:ne200100](this + 224);
  std::__function::__value_func<void ()(char const*,short)>::~__value_func[abi:ne200100](this + 192);
  std::__function::__value_func<void ()(BlueFin::GL_STRESS_TEST_STATUS const*)>::~__value_func[abi:ne200100](this + 160);
  std::__function::__value_func<void ()(BlueFin::GL_FACT_TEST_STATUS *)>::~__value_func[abi:ne200100](this + 128);
  v4 = *(this + 15);
  if (v4 == (this + 96))
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  std::__function::__value_func<void ()(BlueFin::GL_FIX_STATUS const*)>::~__value_func[abi:ne200100](this + 64);
  std::__function::__value_func<void ()(BlueFin::GlRequest *)>::~__value_func[abi:ne200100](this + 32);

  std::__function::__value_func<void ()(BlueFin::GlRequest *,BlueFin::GL_REQ_START_CODE)>::~__value_func[abi:ne200100](this);
}

void FireCallback::GlEngineOnStop(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (FireCallback::pInstance)
  {
    v11 = *(FireCallback::pInstance + 408);
    if (v11)
    {
      v15 = a1;
      v14 = a2;
      v13 = a3;
      (*(*v11 + 48))(v11, &v15, &v14, &v13);
      return;
    }

    v12 = "fcb,fEngineOnStopCb,nullptr";
  }

  else
  {
    v12 = "fcb,GlEngineOnStop,nullptr";
  }

  FireDeviceLog::DeviceLogBase(2, v12, a3, a4, a5, a6, a7, a8, a9);
}

void FireCallback::GlEngCbOnNvStgWrite(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (FireCallback::pInstance)
  {
    v10 = *(FireCallback::pInstance + 600);
    if (v10)
    {
      v14 = a2;
      v13 = a3;
      v12 = a4;
      (*(*v10 + 48))(v10, &v14, &v13, &v12);
      return;
    }

    v11 = "fcb,fEngCbOnNvStgWriteCb,nullptr";
  }

  else
  {
    v11 = "fcb,GlEngCbOnNvStgWrite,nullptr";
  }

  FireDeviceLog::DeviceLogBase(2, v11, a3, a4, a5, a6, a7, a8, a9);
}

void FireCallback::GlEngCbOnOscReadyForStorage(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (FireCallback::pInstance)
  {
    v10 = *(FireCallback::pInstance + 568);
    if (v10)
    {
      v14 = a2;
      v13 = a3;
      v12 = a4;
      (*(*v10 + 48))(v10, &v14, &v13, &v12);
      return;
    }

    v11 = "fcb,fEngCbOnOscReadyForStorageCb,nullptr";
  }

  else
  {
    v11 = "fcb,GlEngCbOnOscReadyForStorage,nullptr";
  }

  FireDeviceLog::DeviceLogBase(2, v11, a3, a4, a5, a6, a7, a8, a9);
}

void FireMessageHandler::~FireMessageHandler(FireMessageHandler *this)
{
  *this = &unk_2A1F07ED0;
  FireCallback::pInstance = 0;
  std::__hash_table<std::__hash_value_type<gnss::SvPositionSource,std::vector<unsigned char>>,std::__unordered_map_hasher<gnss::SvPositionSource,std::__hash_value_type<gnss::SvPositionSource,std::vector<unsigned char>>,std::hash<gnss::SvPositionSource>,std::equal_to<gnss::SvPositionSource>,true>,std::__unordered_map_equal<gnss::SvPositionSource,std::__hash_value_type<gnss::SvPositionSource,std::vector<unsigned char>>,std::equal_to<gnss::SvPositionSource>,std::hash<gnss::SvPositionSource>,true>,std::allocator<std::__hash_value_type<gnss::SvPositionSource,std::vector<unsigned char>>>>::~__hash_table(this + 2152);
  v2 = *(this + 265);
  if (v2)
  {
    *(this + 266) = v2;
    operator delete(v2);
  }

  v3 = *(this + 242);
  if (v3)
  {
    *(this + 243) = v3;
    operator delete(v3);
  }

  std::deque<BlueFin::GlSensRawData>::~deque[abi:ne200100](this + 1888);
  std::deque<BlueFin::GlSensRawData>::~deque[abi:ne200100](this + 1840);
  std::deque<BlueFin::GlSensRawData>::~deque[abi:ne200100](this + 1792);
  std::deque<BlueFin::GlExtSensData>::~deque[abi:ne200100](this + 1744);
  std::deque<FireMessageHandler::GLRefPositionExtended>::~deque[abi:ne200100](this + 1696);
  std::__function::__value_func<void ()(BlueFin::GL_REFCLK_REQUEST)>::~__value_func[abi:ne200100](this + 1392);
  std::__function::__value_func<void ()(BlueFin::GL_STOP_CODE)>::~__value_func[abi:ne200100](this + 1360);
  std::__hash_table<std::__hash_value_type<FireMessageHandler::Request,BlueFin::GlRequest *>,std::__unordered_map_hasher<FireMessageHandler::Request,std::__hash_value_type<FireMessageHandler::Request,BlueFin::GlRequest *>,std::hash<FireMessageHandler::Request>,std::equal_to<FireMessageHandler::Request>,true>,std::__unordered_map_equal<FireMessageHandler::Request,std::__hash_value_type<FireMessageHandler::Request,BlueFin::GlRequest *>,std::equal_to<FireMessageHandler::Request>,std::hash<FireMessageHandler::Request>,true>,std::allocator<std::__hash_value_type<FireMessageHandler::Request,BlueFin::GlRequest *>>>::~__hash_table(this + 1304);
  v4 = *(this + 144);
  if (v4)
  {
    *(this + 145) = v4;
    operator delete(v4);
  }

  v5 = *(this + 141);
  if (v5)
  {
    *(this + 142) = v5;
    operator delete(v5);
  }

  std::deque<FireMessageHandler::Message>::~deque[abi:ne200100](this + 1080);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](this + 976);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](this + 944);
  std::unique_ptr<FireMessageHandler::Tick>::reset[abi:ne200100](this + 117, 0);
  FireCallback::~FireCallback((this + 8));
}

{
  FireMessageHandler::~FireMessageHandler(this);

  JUMPOUT(0x29C292F70);
}

void FireCallback::GlReqOnSvIqData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (FireCallback::pInstance)
  {
    v10 = *(FireCallback::pInstance + 344);
    if (v10)
    {
      v12 = a2;
      (*(*v10 + 48))(v10, &v12);
      return;
    }

    v11 = "fcb,fReqOnSvIqDataCb,nullptr";
  }

  else
  {
    v11 = "fcb,GlReqOnSvIqData,nullptr";
  }

  FireDeviceLog::DeviceLogBase(2, v11, a3, a4, a5, a6, a7, a8, a9);
}

void FireMessageHandler::stopRequest(uint64_t a1, int a2)
{
  v17 = a2;
  if (std::__hash_table<std::__hash_value_type<FireMessageHandler::Request,BlueFin::GlRequest *>,std::__unordered_map_hasher<FireMessageHandler::Request,std::__hash_value_type<FireMessageHandler::Request,BlueFin::GlRequest *>,std::hash<FireMessageHandler::Request>,std::equal_to<FireMessageHandler::Request>,true>,std::__unordered_map_equal<FireMessageHandler::Request,std::__hash_value_type<FireMessageHandler::Request,BlueFin::GlRequest *>,std::equal_to<FireMessageHandler::Request>,std::hash<FireMessageHandler::Request>,true>,std::allocator<std::__hash_value_type<FireMessageHandler::Request,BlueFin::GlRequest *>>>::find<FireMessageHandler::Request>((a1 + 1304), a2))
  {
    v18 = &v17;
    v10 = std::__hash_table<std::__hash_value_type<FireMessageHandler::Request,BlueFin::GlRequest *>,std::__unordered_map_hasher<FireMessageHandler::Request,std::__hash_value_type<FireMessageHandler::Request,BlueFin::GlRequest *>,std::hash<FireMessageHandler::Request>,std::equal_to<FireMessageHandler::Request>,true>,std::__unordered_map_equal<FireMessageHandler::Request,std::__hash_value_type<FireMessageHandler::Request,BlueFin::GlRequest *>,std::equal_to<FireMessageHandler::Request>,std::hash<FireMessageHandler::Request>,true>,std::allocator<std::__hash_value_type<FireMessageHandler::Request,BlueFin::GlRequest *>>>::__emplace_unique_key_args<FireMessageHandler::Request,std::piecewise_construct_t const&,std::tuple<FireMessageHandler::Request const&>,std::tuple<>>((a1 + 1304), a2)[3];
    (*(**(a1 + 1296) + 256))();
    FireDeviceLog::DeviceLogBase(6, "#fmh,StopRequest,request,%p,%d", v11, v12, v13, v14, v15, v16, v10);
  }

  else
  {
    FireDeviceLog::DeviceLogBase(5, "#fmh,stopRequest,request,%d,notExist", v4, v5, v6, v7, v8, v9, a2);
  }
}

void FireCallback::GlReqOnSyncinReport(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (FireCallback::pInstance)
  {
    v10 = *(FireCallback::pInstance + 888);
    if (v10)
    {
      v13 = a2;
      v12 = a3;
      (*(*v10 + 48))(v10, &v13, &v12);
      return;
    }

    v11 = "fcb,fReqOnSyncinReportCb,nullptr";
  }

  else
  {
    v11 = "fcb,GlReqOnSyncinReport,nullptr";
  }

  FireDeviceLog::DeviceLogBase(2, v11, a3, a4, a5, a6, a7, a8, a9);
}

void FireCallback::GlReqOnFactTest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (FireCallback::pInstance)
  {
    v10 = *(FireCallback::pInstance + 152);
    if (v10)
    {
      v12 = a2;
      (*(*v10 + 48))(v10, &v12);
      return;
    }

    v11 = "fcb,fReqOnFactTestCb,nullptr";
  }

  else
  {
    v11 = "fcb,GlReqOnFactTest,nullptr";
  }

  FireDeviceLog::DeviceLogBase(2, v11, a3, a4, a5, a6, a7, a8, a9);
}

void FireCallback::GlReqOnStressTest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (FireCallback::pInstance)
  {
    v10 = *(FireCallback::pInstance + 184);
    if (v10)
    {
      v12 = a2;
      (*(*v10 + 48))(v10, &v12);
      return;
    }

    v11 = "fcb,fReqOnStressTestCb,nullptr";
  }

  else
  {
    v11 = "fcb,GlReqOnStressTest,nullptr";
  }

  FireDeviceLog::DeviceLogBase(2, v11, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t FireMessageHandler::setAssistanceNWRti(FireMessageHandler *this, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(this + 2072) = 0u;
  *(this + 2088) = 0u;
  *(this + 2040) = 0u;
  *(this + 2056) = 0u;
  *(this + 2008) = 0u;
  *(this + 2024) = 0u;
  *(this + 1976) = 0u;
  *(this + 1992) = 0u;
  *(this + 494) = 2;
  *(this + 248) = 0xFFFFFFFFLL;
  *(this + 263) = 0;
  if ((a2 & 1) == 0)
  {
    *(this + 256) = 0xFFFFFFFFLL;
  }

  FireDeviceLog::DeviceLogBase(6, "#fgd setConfigEnableGnssConstellations,GPS,num,%d,info,0x%llx,bad,0x%llx", a3, a4, a5, a6, a7, a8, 32);
  *(this + 251) = 1023;
  if ((a2 & 0x10) != 0)
  {
    v16 = *(this + 259);
  }

  else
  {
    *(this + 259) = 1023;
  }

  FireDeviceLog::DeviceLogBase(6, "#fgd setConfigEnableGnssConstellations,QZSS,num,%d,info,0x%llx,bad,0x%llx", v10, v11, v12, v13, v14, v15, 10);
  *(this + 253) = 0x7FFFFFFFFFFFFFFFLL;
  if ((a2 & 4) != 0)
  {
    v23 = *(this + 261);
  }

  else
  {
    *(this + 261) = 0x7FFFFFFFFFFFFFFFLL;
  }

  FireDeviceLog::DeviceLogBase(6, "#fgd setConfigEnableGnssConstellations,BEIDOU,num,%d,info,0x%llx,bad,0x%llx", v17, v18, v19, v20, v21, v22, 63);
  *(this + 254) = 0xFFFFFFFFFLL;
  if ((a2 & 8) != 0)
  {
    v30 = *(this + 262);
  }

  else
  {
    *(this + 262) = 0xFFFFFFFFFLL;
  }

  FireDeviceLog::DeviceLogBase(6, "#fgd setConfigEnableGnssConstellations,GALILEO,num,%d,info,0x%llx,bad,0x%llx", v24, v25, v26, v27, v28, v29, 36);
  *(this + 250) = 0xFFFFFFLL;
  if ((a2 & 2) != 0)
  {
    v37 = *(this + 258);
  }

  else
  {
    *(this + 258) = 0xFFFFFFLL;
  }

  FireDeviceLog::DeviceLogBase(6, "#fgd setConfigEnableGnssConstellations,GLONASS,num,%d,info,0x%llx,bad,0x%llx", v31, v32, v33, v34, v35, v36, 24);
  *(this + 255) = 0x3FFFLL;
  if ((a2 & 0x20) != 0)
  {
    v44 = *(this + 263);
  }

  else
  {
    *(this + 263) = 0x3FFFLL;
  }

  FireDeviceLog::DeviceLogBase(6, "#fgd setConfigEnableGnssConstellations,NAVIC,num,%d,info,0x%llx,bad,0x%llx", v38, v39, v40, v41, v42, v43, 14);
  FireMessageHandler::send(this, 1073741850, v45, v46, v47, v48, v49, v50);
  return 1;
}

void FireMessageHandler::updateRtcClockAnalyticsData(FireMessageHandler *this)
{
  (*(**(this + 162) + 728))(*(this + 162), v18);
  FireDeviceLog::DeviceLogBase(6, "#ca,rtc,valid,0x%x,sessionTime,%d,ms,freq,%.1f,unc,%.1f,ppb,time,%.1f,unc,%.1f,us", v1, v2, v3, v4, v5, v6, v18[0]);
  if ((v18[0] & 7) == 0)
  {
    v14 = "#ca,rtc,avaibleFlag,check,failed";
LABEL_11:
    FireDeviceLog::DeviceLogBase(3, v14, v7, v8, v9, v10, v11, v12, v15);
    return;
  }

  if (v26 > 500.0 || v26 <= 0.0 || v24 > 500.0 || v24 <= 0.0)
  {
    v15 = LOBYTE(v26);
    v14 = "#ca,rtc,uncCheck,failed,freq,%.1f,%d,ppb,time,%.1f,%d,us";
    goto LABEL_11;
  }

  *v16 = v25;
  *&v16[1] = v25 - v21;
  v16[2] = v22;
  v16[3] = v23;
  *&v16[4] = v20 * 0.001;
  LODWORD(v13) = v19;
  v17 = (v13 * 0.001 + 0.5);
  FireDeviceLog::DeviceLogBase(5, "#ca,rtc,freq,%.1f,freqErr,%.1f,unc,%.1f,ppb,timeErr,%.1f,unc,%.1f,us,age,%d,sec", v7, v8, v9, v10, v11, v12, SLOBYTE(v25));
  if (!FireResourceMgr::fInstance)
  {
    operator new();
  }

  (*(**(FireResourceMgr::fInstance + 40) + 40))(*(FireResourceMgr::fInstance + 40), v16);
}

uint64_t FireMessageHandler::populateBeidouConsistencyData(uint64_t result, uint64_t a2)
{
  v2 = *a2 * 0.001;
  *(result + 2260) = v2;
  if (*(a2 + 4048))
  {
    if (*(result + 2248) < 0.0)
    {
      *(result + 2248) = v2;
    }

    v3 = *(result + 2252);
    if (v3 < 0.0)
    {
      LOBYTE(v3) = *(a2 + 7409);
      *(result + 2252) = LODWORD(v3);
    }

    if (*(a2 + 7408))
    {
      ++*(result + 2256);
    }
  }

  return result;
}

void FireCallback::GlEngCbOnSerialNumber(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (FireCallback::pInstance)
  {
    v11 = *(FireCallback::pInstance + 664);
    if (v11)
    {
      v16 = a1;
      v15 = a2;
      v14 = a3;
      v13 = a4;
      (*(*v11 + 48))(v11, &v16, &v15, &v14, &v13);
      return;
    }

    v12 = "fcb,fEngCbOnSerialNumberCb,nullptr";
  }

  else
  {
    v12 = "fcb,GlEngCbOnSerialNumber,nullptr";
  }

  FireDeviceLog::DeviceLogBase(2, v12, a3, a4, a5, a6, a7, a8, a9);
}

void std::vector<unsigned char>::emplace_back<unsigned char>(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      std::vector<GnssHal::ExtensionsFire::RecoveryPoint>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void FireCallback::GlEngineOnLtoFileErrReport(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (FireCallback::pInstance)
  {
    v9 = *(FireCallback::pInstance + 728);
    if (v9)
    {
      (*(*v9 + 48))();
      return;
    }

    v10 = "fcb,fEngineOnLtoFileErrReportCb,nullptr";
  }

  else
  {
    v10 = "fcb,GlEngineOnLtoFileErrReport,nullptr";
  }

  FireDeviceLog::DeviceLogBase(2, v10, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t FireMessageHandler::deleteSto(FireMessageHandler *this)
{
  if (!FireResourceMgr::fInstance)
  {
    operator new();
  }

  (*(**(FireResourceMgr::fInstance + 24) + 80))(*(FireResourceMgr::fInstance + 24), 2);
  *(this + 145) = *(this + 144);
  return 1;
}

uint64_t FireMessageHandler::clearNvStorage(FireMessageHandler *this)
{
  if (!FireResourceMgr::fInstance)
  {
    operator new();
  }

  (*(**(FireResourceMgr::fInstance + 24) + 80))(*(FireResourceMgr::fInstance + 24), 2);
  if (!FireResourceMgr::fInstance)
  {
    operator new();
  }

  (*(**(FireResourceMgr::fInstance + 24) + 80))(*(FireResourceMgr::fInstance + 24), 4);
  *(this + 145) = *(this + 144);
  return 1;
}

uint64_t std::deque<BlueFin::GlSensRawData>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 102;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 204;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::deque<BlueFin::GlExtSensData>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 8;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 16;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::deque<FireMessageHandler::GLRefPositionExtended>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 42;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 85;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::deque<FireMessageHandler::Message>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 512;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 1024;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(BlueFin::GL_STRESS_TEST_STATUS const*)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(BlueFin::GL_FACT_TEST_STATUS *)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(BlueFin::GlRequest *,BlueFin::GL_REQ_START_CODE)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(BlueFin::GlRequest *)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<short ()(BlueFin::GlEngine *,BlueFin::GlSettings *)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(BlueFin::GlEngine *,BlueFin::GL_STOP_CODE,char const*)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<unsigned int ()(BlueFin::GlEngine *)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(BlueFin::GlEngine *,unsigned int,short,BOOL)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(unsigned char *,short)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(BlueFin::GlNvStorageReader *)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(int,int,BlueFin::GL_TIME *)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(BlueFin::GL_NV_STG_CTRL,char const*,short)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(BlueFin::GlEngine *,BlueFin::GlLTOFileReader *,BOOL)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(BlueFin::GlEngine *,unsigned int,unsigned int *,unsigned char)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(BlueFin::GL_REFCLK_REQUEST)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t *std::unique_ptr<FireMessageHandler::Tick>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 32);
    if (v3)
    {
      v4 = *(v2 + 40);
      v5 = *(v2 + 32);
      if (v4 != v3)
      {
        do
        {
          v4 = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v4 - 32);
        }

        while (v4 != v3);
        v5 = *(v2 + 32);
      }

      *(v2 + 40) = v3;
      operator delete(v5);
    }

    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v2);

    JUMPOUT(0x29C292F70);
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<FireMessageHandler::Request,BlueFin::GlRequest *>,std::__unordered_map_hasher<FireMessageHandler::Request,std::__hash_value_type<FireMessageHandler::Request,BlueFin::GlRequest *>,std::hash<FireMessageHandler::Request>,std::equal_to<FireMessageHandler::Request>,true>,std::__unordered_map_equal<FireMessageHandler::Request,std::__hash_value_type<FireMessageHandler::Request,BlueFin::GlRequest *>,std::equal_to<FireMessageHandler::Request>,std::hash<FireMessageHandler::Request>,true>,std::allocator<std::__hash_value_type<FireMessageHandler::Request,BlueFin::GlRequest *>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(BlueFin::GL_STOP_CODE)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__hash_table<std::__hash_value_type<gnss::SvPositionSource,std::vector<unsigned char>>,std::__unordered_map_hasher<gnss::SvPositionSource,std::__hash_value_type<gnss::SvPositionSource,std::vector<unsigned char>>,std::hash<gnss::SvPositionSource>,std::equal_to<gnss::SvPositionSource>,true>,std::__unordered_map_equal<gnss::SvPositionSource,std::__hash_value_type<gnss::SvPositionSource,std::vector<unsigned char>>,std::equal_to<gnss::SvPositionSource>,std::hash<gnss::SvPositionSource>,true>,std::allocator<std::__hash_value_type<gnss::SvPositionSource,std::vector<unsigned char>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        v2[4] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

uint64_t std::__function::__func<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_0,std::allocator<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_0>,short ()(BlueFin::GlEngine *,BlueFin::GlSettings *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F07F28;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_0,std::allocator<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_0>,short ()(BlueFin::GlEngine *,BlueFin::GlSettings *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_1,std::allocator<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_1>,void ()(BlueFin::GlEngine *,BlueFin::GL_STOP_CODE,char const*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F07FB8;
  a2[1] = v2;
  return result;
}

double std::__function::__func<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_1,std::allocator<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_1>,void ()(BlueFin::GlEngine *,BlueFin::GL_STOP_CODE,char const*)>::operator()(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a3;
  v9 = *(a1 + 8);
  v71 = *a4;
  FireDeviceLog::DeviceLogBase(6, "EngineOnStopImpl,code,%d,message,%s", a3, a4, a5, a6, a7, a8, *a3);
  FireDeviceLog::DeviceLogBase(5, "EngineState,update,state,%d,new,%d", v10, v11, v12, v13, v14, v15, *(v9 + 1356));
  *(v9 + 1356) = 0;
  if (*(v9 + 1120))
  {
    FireDeviceLog::DeviceLogBase(2, "EngineOnStopImpl,pendingStart,notEmpty,%zu", v16, v17, v18, v19, v20, v21, *(v9 + 1120));
    v23 = *(v9 + 1080);
    *(v9 + 1080) = 0;
    *__p = v23;
    v24 = *(v9 + 1096);
    *(v9 + 1088) = 0u;
    v74 = v24;
    *(v9 + 1104) = 0;
    v75 = *(v9 + 1112);
    *(v9 + 1112) = 0u;
    std::deque<FireMessageHandler::Message>::~deque[abi:ne200100](__p);
  }

  if (v8 <= 6)
  {
    if (((1 << v8) & 0x36) != 0)
    {
      DeviceFaultNotify("FireMessageHandler.cpp", 1442, "EngineOnStopImpl", "unexpectedStopCode");
      CrashData();
    }

    else if (((1 << v8) & 0x48) != 0)
    {
      if (!FireResourceMgr::fInstance)
      {
        operator new();
      }

      (*(**(FireResourceMgr::fInstance + 24) + 64))(__p);
      v31 = 0;
      v32 = 0;
      v33 = __p[0];
      v34 = __p[1] - __p[0];
      do
      {
        if (!v34)
        {
          break;
        }

        v35 = *v33++;
        v32 += v35 << v31;
        v31 += 8;
        --v34;
      }

      while (v31 != 64);
      FireDeviceLog::DeviceLogBase(2, "abnormalStop,fetched,size,%zu,code,0x%llx", v25, v26, v27, v28, v29, v30, LOBYTE(__p[1]) - LOBYTE(__p[0]));
      if ((__p[1] - __p[0]) <= 3)
      {
        v76 = v8;
        std::vector<unsigned char>::emplace_back<unsigned char>(__p, &v76);
        if (!FireResourceMgr::fInstance)
        {
          operator new();
        }

        (*(**(FireResourceMgr::fInstance + 24) + 32))(*(FireResourceMgr::fInstance + 24), 5, __p);
        FireDeviceLog::DeviceLogBase(1, "abnormalStopFault,errcode,%d,0x%llx", v64, v65, v66, v67, v68, v69, v8);
        DeviceFaultNotify("FireMessageHandler.cpp", 1461, "handleAbnormalStop", "abnormalStopFault,errcode,%d,0x%llx");
        _Exit(v8);
      }

      if (!FireResourceMgr::fInstance)
      {
        operator new();
      }

      (*(**(FireResourceMgr::fInstance + 24) + 80))(*(FireResourceMgr::fInstance + 24), 5);
      DeviceFaultNotify("FireMessageHandler.cpp", 1465, "handleAbnormalStop", "abnormalStopCrash");
      CrashData();
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

    else
    {
      if (!FireResourceMgr::fInstance)
      {
        operator new();
      }

      (*(**(FireResourceMgr::fInstance + 24) + 80))(*(FireResourceMgr::fInstance + 24), 5);
      if (!FireResourceMgr::fInstance)
      {
        operator new();
      }

      LOBYTE(__p[0]) = (*(**(FireResourceMgr::fInstance + 40) + 88))(*(FireResourceMgr::fInstance + 40));
      v36 = *(v9 + 2252);
      HIDWORD(__p[0]) = *(v9 + 2248);
      LODWORD(__p[1]) = v36;
      HIDWORD(__p[1]) = *(v9 + 2260);
      LODWORD(v74) = *(v9 + 2256);
      FireDeviceLog::DeviceLogBase(5, "#ca,bdsConsData,isBdsConsRequired,%d,ttffActual,%.1f,sec,ttffDelay,%.1f,sec,sessionDuration,%.1f,sec,numEpochDiverged,%d", v37, v38, v39, v40, v41, v42, __p[0]);
      if (!FireResourceMgr::fInstance)
      {
        operator new();
      }

      (*(**(FireResourceMgr::fInstance + 40) + 56))(*(FireResourceMgr::fInstance + 40), __p);
      if (!FireResourceMgr::fInstance)
      {
        operator new();
      }

      (*(**FireResourceMgr::fInstance + 24))();
      if (!FireResourceMgr::fInstance)
      {
        operator new();
      }

      (*(**(FireResourceMgr::fInstance + 24) + 56))(*(FireResourceMgr::fInstance + 24));
      *(v9 + 2200) = 0;
      if (*(v9 + 1000))
      {
        FireDeviceLog::DeviceLogBase(6, "handleNormalEngineStop,call,fOnEngineStopNotification", v43, v44, v45, v46, v47, v48, v70);
        std::function<void ()(gnss::Result)>::operator()(v9 + 976, 1);
      }

      else
      {
        FireDeviceLog::DeviceLogBase(2, "handleNormalEngineStop,fOnEngineStopNotification,nullptr", v43, v44, v45, v46, v47, v48, v70);
      }

      v55 = atomic_load((v9 + 1008));
      FireDeviceLog::DeviceLogBase(6, "ExclusiveEntryCheck,resetCount,activeEntry,%d", v49, v50, v51, v52, v53, v54, v55);
      v62 = 0;
      v63 = (v9 + 1016);
      do
      {
        v72 = *(v63 + v62);
        FireDeviceLog::DeviceLogBase(6, "ExclusiveEntryCheck,entry,%zu,count,%zu", v56, v57, v58, v59, v60, v61, v62++);
      }

      while (v62 != 3);
      result = 0.0;
      *v63 = 0u;
      v63[1] = 0u;
    }
  }

  return result;
}

void sub_29891CA94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_1,std::allocator<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_1>,void ()(BlueFin::GlEngine *,BlueFin::GL_STOP_CODE,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_2,std::allocator<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_2>,void ()(unsigned char *,short)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_3,std::allocator<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_3>,unsigned int ()(BlueFin::GlEngine *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_4,std::allocator<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_4>,void ()(BlueFin::GlEngine *,unsigned int,short,BOOL)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F08168;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_4,std::allocator<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_4>,void ()(BlueFin::GlEngine *,unsigned int,short,BOOL)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_5,std::allocator<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_5>,void ()(BlueFin::GlEngine *,BlueFin::GlLTOFileReader *,BOOL)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F081F8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_5,std::allocator<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_5>,void ()(BlueFin::GlEngine *,BlueFin::GlLTOFileReader *,BOOL)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_6,std::allocator<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_6>,void ()(BlueFin::GlEngine *,unsigned int,unsigned int *,unsigned char)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F08288;
  a2[1] = v2;
  return result;
}

void std::__function::__func<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_6,std::allocator<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_6>,void ()(BlueFin::GlEngine *,unsigned int,unsigned int *,unsigned char)>::operator()(uint64_t a1, uint64_t a2, int *a3, gnss::fire **a4, unsigned __int8 *a5)
{
  v74[4] = *MEMORY[0x29EDCA608];
  v5 = *a3;
  v6 = *(a1 + 8);
  gnss::fire::charToHex(*a4, (4 * *a5), 0, &v67);
  if (v5 == 805306389)
  {
    v7 = "FIRE7.B0";
  }

  else
  {
    v7 = "FIRE7.Unknown";
  }

  if (v5 == 805306387)
  {
    v8 = "FIRE7.A0";
  }

  else
  {
    v8 = v7;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, v8);
  if (v66 >= 0)
  {
    v15 = __p;
  }

  else
  {
    LOBYTE(v15) = __p[0];
  }

  FireDeviceLog::DeviceLogBase(6, "#fmh,EngineSerialNumberImpl,ver,%s,id,%s", v9, v10, v11, v12, v13, v14, v15);
  if (!FireResourceMgr::fInstance)
  {
    operator new();
  }

  (*(**(FireResourceMgr::fInstance + 40) + 24))(*(FireResourceMgr::fInstance + 40), __p, &v67);
  FireDeviceLog::DeviceLogBase(5, "EngineState,update,state,%d,new,%d", v16, v17, v18, v19, v20, v21, *(v6 + 1356));
  if (*(v6 + 1356) != 3)
  {
    *(v6 + 1356) = 3;
  }

  if (*(v6 + 968))
  {
    FireDeviceLog::DeviceLogBase(6, "#fmh,ocstart,completed", v22, v23, v24, v25, v26, v27, v52);
    std::function<void ()(gnss::Result)>::operator()(v6 + 944, 1);
    std::__function::__value_func<void ()(gnss::Result)>::operator=[abi:ne200100](v6 + 944);
  }

  v28 = *(v6 + 936);
  v74[0] = &unk_2A1F08778;
  v74[1] = v6;
  v74[3] = v74;
  FireMessageHandler::Tick::appendCallback(v28, v74, 0, v23, v24, v25, v26, v27);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v74);
  if (*(v6 + 1064) == 1)
  {
    if (!FireResourceMgr::fInstance)
    {
      operator new();
    }

    (*(**(FireResourceMgr::fInstance + 24) + 64))(&v72);
    v35 = v72;
    if (v73 - v72 == 22)
    {
      v61 = *(v72 + 9);
      v63 = *(v72 + 10);
      v57 = *(v72 + 2);
      v59 = *(v72 + 8);
      v53 = *(v72 + 1);
      v55 = *(v72 + 3);
      FireDeviceLog::DeviceLogBase(6, "#fmh,sendAsstOscOffsetSimulator,slOscOffsetPpb,%d,usOscOffsetUncPpb,%u,ulPrecUsec,%u,ulWeekMs,%u,usGpsWeek,%u,usMicrosec,%u,usNanosec,%u,", v29, v30, v31, v32, v33, v34, *v72);
      (*(**(v6 + 1296) + 600))(*(v6 + 1296), *v35, *(v35 + 1), 0);
    }

    else if (v73 == v72)
    {
      FireDeviceLog::DeviceLogBase(3, "#fmh,#Warning,tcxoNvItemSimulator is not available or not retreivable", v29, v30, v31, v32, v33, v34, v52);
    }

    else
    {
      FireDeviceLog::DeviceLogBase(2, "#fmh,tcxoNvItemSimulator,Size Mismatch OscOffsetInfo,NvSize,%zu,OscOffsetInfo,%zu", v29, v30, v31, v32, v33, v34, v73 - v72);
      if (!FireResourceMgr::fInstance)
      {
        operator new();
      }

      (*(**(FireResourceMgr::fInstance + 24) + 80))(*(FireResourceMgr::fInstance + 24), 4);
    }
  }

  else
  {
    if (!FireResourceMgr::fInstance)
    {
      operator new();
    }

    (*(**(FireResourceMgr::fInstance + 24) + 64))(&v72);
    v42 = v72;
    if (v73 - v72 == 22)
    {
      v62 = *(v72 + 9);
      v64 = *(v72 + 10);
      v58 = *(v72 + 2);
      v60 = *(v72 + 8);
      v54 = *(v72 + 1);
      v56 = *(v72 + 3);
      FireDeviceLog::DeviceLogBase(6, "#fmh,sendAsstOscOffset,slOscOffsetPpb,%d,usOscOffsetUncPpb,%u,ulPrecUsec,%u,ulWeekMs,%u,usGpsWeek,%u,usMicrosec,%u,usNanosec,%u,", v36, v37, v38, v39, v40, v41, *v72);
      v71 = v42[3];
      v43 = v42[2];
      v68[0] = *(v42 + 8);
      v44 = *(v42 + 18);
      v69 = v43;
      v70 = v44;
      v45 = (*(**(v6 + 1296) + 600))(*(v6 + 1296), *v42, v42[1], v68);
      DeviceCommon::GetMachContinuousTime(v45);
      LOWORD(v46) = *(v42 + 8);
      LODWORD(v47) = v42[2];
      v48 = *(v6 + 2240);
      v49.i64[0] = *v42;
      v49.i64[1] = HIDWORD(*v42);
      *(v6 + 2208) = v50;
      *(v6 + 2216) = v47 * 0.001 + v46 * 604800.0;
      *(v6 + 2224) = vcvtq_f64_s64(v49);
      if ((v48 & 1) == 0)
      {
        *(v6 + 2240) = 1;
      }
    }

    else if (v73 == v72)
    {
      FireDeviceLog::DeviceLogBase(3, "#fmh,#Warning,tcxoNvItem is not available or not retreivable", v36, v37, v38, v39, v40, v41, v52);
    }

    else
    {
      FireDeviceLog::DeviceLogBase(2, "#fmh,Size Mismatch OscOffsetInfo,NvSize,%zu,OscOffsetInfo,%zu", v36, v37, v38, v39, v40, v41, v73 - v72);
      if (!FireResourceMgr::fInstance)
      {
        operator new();
      }

      (*(**(FireResourceMgr::fInstance + 24) + 80))(*(FireResourceMgr::fInstance + 24), 1);
    }
  }

  if (v72)
  {
    v73 = v72;
    operator delete(v72);
  }

  if (v66 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
  }

  v51 = *MEMORY[0x29EDCA608];
}

void sub_29891D490(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  v30 = *(v28 - 96);
  if (v30)
  {
    *(v28 - 88) = v30;
    operator delete(v30);
  }

  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_6,std::allocator<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_6>,void ()(BlueFin::GlEngine *,unsigned int,unsigned int *,unsigned char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_7,std::allocator<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_7>,void ()(BlueFin::GlRequest *,BlueFin::GL_REQ_START_CODE)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F08318;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_7,std::allocator<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_7>,void ()(BlueFin::GlRequest *,BlueFin::GL_REQ_START_CODE)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_8,std::allocator<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_8>,void ()(BlueFin::GlRequest *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F083A8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_8,std::allocator<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_8>,void ()(BlueFin::GlRequest *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_9,std::allocator<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_9>,void ()(BlueFin::GL_NV_STG_CTRL,char const*,short)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F08438;
  a2[1] = v2;
  return result;
}

void std::__function::__func<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_9,std::allocator<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_9>,void ()(BlueFin::GL_NV_STG_CTRL,char const*,short)>::operator()(uint64_t a1, int *a2, char **a3, __int16 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = *a2;
  v11 = *a3;
  v12 = *a4;
  v13 = *(a1 + 8);
  if (*a2 > 2)
  {
    switch(v10)
    {
      case 3:
        v13[145] = v13[144];
        break;
      case 4:
        std::__copy_impl::operator()[abi:ne200100]<char const*,char const*,std::back_insert_iterator<std::vector<unsigned char>>>(v11, &v11[*a4], (v13 + 144));
        v28 = v13[145] - v13[144];
        FireDeviceLog::DeviceLogBase(6, "GlEngCbOnNvStgWriteImpl,PrivateNv,%d,size,%d,totol,%zu", v21, v22, v23, v24, v25, v26, 4);
        break;
      case 5:

        FireDeviceLog::DeviceLogBase(6, "GlEngCbOnNvStgWriteImpl,PrivateNv,done", a3, a4, a5, a6, a7, a8, a9);
        break;
    }
  }

  else if (v10)
  {
    if (v10 == 1)
    {
      std::__copy_impl::operator()[abi:ne200100]<char const*,char const*,std::back_insert_iterator<std::vector<unsigned char>>>(v11, &v11[*a4], (v13 + 141));
      v27 = v13[142] - v13[141];
      FireDeviceLog::DeviceLogBase(6, "GlEngCbOnNvStgWriteImpl,Nv,%d,size,%d,totol,%zu", v15, v16, v17, v18, v19, v20, 1);
    }

    else if (v10 == 2)
    {
      if (!FireResourceMgr::fInstance)
      {
        operator new();
      }

      v14 = *(**(FireResourceMgr::fInstance + 24) + 32);

      v14();
    }
  }

  else
  {
    v13[142] = v13[141];
  }
}

uint64_t std::__function::__func<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_9,std::allocator<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_9>,void ()(BlueFin::GL_NV_STG_CTRL,char const*,short)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_10,std::allocator<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_10>,void ()(BlueFin::GlNvStorageReader *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F084C8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_10,std::allocator<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_10>,void ()(BlueFin::GlNvStorageReader *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_11,std::allocator<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_11>,void ()(int,int,BlueFin::GL_TIME *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F08558;
  a2[1] = v2;
  return result;
}

void std::__function::__func<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_11,std::allocator<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_11>,void ()(int,int,BlueFin::GL_TIME *)>::operator()(uint64_t a1, int *a2, int *a3, unsigned __int16 **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = *a4;
  if (*a4)
  {
    v10 = *a3;
    if (*a3 < 500)
    {
      v11 = *a2;
      v12 = *(a1 + 8);
      v25 = v9[4];
      v26 = v9[5];
      v23 = *(v9 + 1);
      v24 = *v9;
      v22 = *(v9 + 3);
      FireDeviceLog::DeviceLogBase(6, "#fmh GlEngineOnOscReadyForStorage slOscOffsetPpb,%d,usOscOffsetUncPpb,%u,ulPrecUsec,%u,ulWeekMs,%u,usGpsWeek,%u,usMicrosec,%u,usNanosec,%u,", a3, a4, a5, a6, a7, a8, *a2);
      v30[0] = v11;
      v30[1] = v10;
      v13 = *(v9 + 3);
      v30[2] = *(v9 + 1);
      v30[3] = v13;
      v31 = *v9;
      v32 = *(v9 + 2);
      if (!FireResourceMgr::fInstance)
      {
        operator new();
      }

      v14 = *(FireResourceMgr::fInstance + 24);
      if (*(v12 + 1064))
      {
        v15 = 4;
      }

      else
      {
        v15 = 1;
      }

      __p = 0;
      v28 = 0;
      v29 = 0;
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v30, &v33, 22);
      (*(*v14 + 32))(v14, v15, &__p);
      if (__p)
      {
        v28 = __p;
        operator delete(__p);
      }

      FireDeviceLog::DeviceLogBase(5, "#fmh,storePermanent,tcxoNvItem,simulator,%d,%s", v16, v17, v18, v19, v20, v21, *(v12 + 1064));
    }

    else
    {
      FireDeviceLog::DeviceLogBase(3, "#fmh,GlEngineOnOscReadyForStorageImpl,invalid,unc,%d,th,%d", a3, a4, a5, a6, a7, a8, *a3);
    }
  }

  else
  {

    FireDeviceLog::DeviceLogBase(2, "#fmh,GlEngineOnOscReadyForStorageImpl,pAsstOscTime,nullptr", a3, a4, a5, a6, a7, a8, a9);
  }
}

void sub_29891DCE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_11,std::allocator<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_11>,void ()(int,int,BlueFin::GL_TIME *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_12,std::allocator<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_12>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F085E8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_12,std::allocator<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_12>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<FireMessageHandler::createGlEngine(void)::$_0,std::allocator<FireMessageHandler::createGlEngine(void)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F08668;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<FireMessageHandler::createGlEngine(void)::$_0,std::allocator<FireMessageHandler::createGlEngine(void)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<FireMessageHandler::createGlEngine(void)::$_1,std::allocator<FireMessageHandler::createGlEngine(void)::$_1>,void ()(unsigned char *,unsigned long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F086E8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<FireMessageHandler::createGlEngine(void)::$_1,std::allocator<FireMessageHandler::createGlEngine(void)::$_1>,void ()(unsigned char *,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(unsigned char *,unsigned long)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::deque<FireMessageHandler::Message>::push_back(void *result, _DWORD *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 7) - 1;
  }

  v8 = result[5];
  v9 = v8 + result[4];
  if (v7 == v9)
  {
    result = std::deque<FireMessageHandler::Message>::__add_back_capacity(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v9 & 0x3FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void *std::deque<FireMessageHandler::Message>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x400;
  v3 = v1 - 1024;
  if (!v2)
  {
    v6 = a1[3];
    v7 = v6 - *a1;
    if (a1[2] - a1[1] < v7)
    {
      operator new();
    }

    v8 = v7 >> 2;
    if (v6 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<FireMessageHandler::Message *>>(v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<FireMessageHandler::Message *>::emplace_back<FireMessageHandler::Message *&>(a1, &v10);
}

void sub_29891E534(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<FireMessageHandler::Message *>::emplace_back<FireMessageHandler::Message *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<FireMessageHandler::Message *>>(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<FireMessageHandler::Message *>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::deque<FireMessageHandler::GLRefPositionExtended>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x55;
  v3 = v1 - 85;
  if (!v2)
  {
    v6 = a1[3];
    v7 = v6 - *a1;
    if (a1[2] - a1[1] < v7)
    {
      operator new();
    }

    v8 = v7 >> 2;
    if (v6 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<FireMessageHandler::GLRefPositionExtended *>>(v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<FireMessageHandler::GLRefPositionExtended *>::emplace_back<FireMessageHandler::GLRefPositionExtended *&>(a1, &v10);
}

void sub_29891EAD4(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<FireMessageHandler::GLRefPositionExtended *>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<gnss::SvPositionSource,std::vector<unsigned char>>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[3];
    if (v3)
    {
      __p[4] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::__function::__value_func<void ()(gnss::Result)>::operator=[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

uint64_t std::__function::__func<FireMessageHandler::EngineSerialNumberImpl(BlueFin::GlEngine *,unsigned int,unsigned int *,unsigned char)::$_0,std::allocator<FireMessageHandler::EngineSerialNumberImpl(BlueFin::GlEngine *,unsigned int,unsigned int *,unsigned char)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::vector<std::function<void ()(void)>>::__emplace_back_slow_path<std::function<void ()(void)>&>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<GnssHal::ExtensionsFire::RecoveryPoint>::__throw_length_error[abi:ne200100]();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  v22 = a1;
  if (v6)
  {
    if (!(v6 >> 59))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v18 = 0;
  v19 = 32 * v2;
  v21 = 0;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](32 * v2, a2);
  v7 = 32 * v2 + 32;
  v20 = v7;
  v8 = *a1;
  v9 = a1[1];
  v10 = v19 + *a1 - v9;
  if (*a1 != v9)
  {
    v11 = (v8 + 24);
    v12 = v19 + *a1 - v9;
    while (1)
    {
      v13 = *v11;
      if (*v11)
      {
        if (v11 - 3 == v13)
        {
          *(v12 + 24) = v12;
          (*(**v11 + 24))(*v11, v12);
          goto LABEL_18;
        }

        *(v12 + 24) = v13;
        v14 = v11;
      }

      else
      {
        v14 = (v12 + 24);
      }

      *v14 = 0;
LABEL_18:
      v12 += 32;
      v15 = v11 + 1;
      v11 += 4;
      if (v15 == v9)
      {
        do
        {
          std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v8);
          v8 += 32;
        }

        while (v8 != v9);
        v8 = *a1;
        v7 = v20;
        break;
      }
    }
  }

  *a1 = v10;
  a1[1] = v7;
  v16 = a1[2];
  a1[2] = v21;
  v20 = v8;
  v21 = v16;
  v18 = v8;
  v19 = v8;
  std::__split_buffer<std::function<void ()(void)>>::~__split_buffer(&v18);
  return v7;
}

void sub_29891EE88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::function<void ()(void)>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<std::function<void ()(void)>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__copy_impl::operator()[abi:ne200100]<char const*,char const*,std::back_insert_iterator<std::vector<unsigned char>>>(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = *(a3 + 8);
    do
    {
      v7 = *v5;
      v8 = *(a3 + 16);
      if (v6 >= v8)
      {
        v9 = *a3;
        v10 = &v6[-*a3];
        v11 = (v10 + 1);
        if ((v10 + 1) < 0)
        {
          std::vector<GnssHal::ExtensionsFire::RecoveryPoint>::__throw_length_error[abi:ne200100]();
        }

        v12 = v8 - v9;
        if (2 * v12 > v11)
        {
          v11 = 2 * v12;
        }

        if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v13 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v11;
        }

        if (v13)
        {
          operator new();
        }

        v14 = &v6[-*a3];
        *v10 = v7;
        v6 = v10 + 1;
        memcpy(0, v9, v14);
        *a3 = 0;
        *(a3 + 8) = v10 + 1;
        *(a3 + 16) = 0;
        if (v9)
        {
          operator delete(v9);
        }
      }

      else
      {
        *v6++ = v7;
      }

      *(a3 + 8) = v6;
      ++v5;
    }

    while (v5 != a2);
  }
}

uint64_t FireConfig::LearnedL5GroupDelay::passesCrossCheckToCalibration(FireConfig::LearnedL5GroupDelay *this, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (vabdd_f64(a2, a4) < 20.0 && a3 > 0.0 && a3 < 0.25)
  {
    return 1;
  }

  FireDeviceLog::DeviceLogBase(4, "#nv_group_delay,concerning NV value,%.2f,unc,%.2f,diffToStatic,%.2f", a6, a7, a8, a9, a10, a11, SLOBYTE(a2));
  return 0;
}

uint64_t std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_29891F0C8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void gnssTest::FireDevice::~FireDevice(gnssTest::FireDevice *this)
{
  *this = &unk_2A1F08878;
  std::unique_ptr<gnssTest::FireDevice::CommPing>::reset[abi:ne200100](this + 28, 0);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](this + 160);
  std::__function::__value_func<void ()(std::vector<std::string>)>::~__value_func[abi:ne200100](this + 112);
  std::__function::__value_func<void ()(gnssTest::CommLoopbackResult)>::~__value_func[abi:ne200100](this + 80);
  std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>)>::~__value_func[abi:ne200100](this + 48);
  std::__function::__value_func<void ()(std::vector<gnssTest::RfMeasurement>)>::~__value_func[abi:ne200100](this + 16);
  v2 = *(this + 1);
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

{
  gnssTest::FireDevice::~FireDevice(this);

  JUMPOUT(0x29C292F70);
}

void gnssTest::FireDevice::initMessageHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v17 = *MEMORY[0x29EDCA608];
  std::function<void ()(gnss::Result)>::operator=((a1 + 160), a2);
  if (!*(a1 + 8))
  {
    operator new();
  }

  v16 = *MEMORY[0x29EDCA608];

  FireDeviceLog::DeviceLogBase(6, "Message handler already initialized, skip!", v10, v11, v12, v13, v14, v15, a9);
}

void sub_29891FAB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void gnssTest::FireDevice::response(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  FireDeviceLog::DeviceLogBase(5, "#fftd,response,%d", a3, a4, a5, a6, a7, a8, a2);
  if (*(a1 + 184))
  {
    std::function<void ()(gnss::Result)>::operator()(a1 + 160, a2);

    std::__function::__value_func<void ()(gnss::Result)>::operator=[abi:ne200100](a1 + 160);
  }

  else
  {

    FireDeviceLog::DeviceLogBase(5, "#fftd,response,nullptr", v11, v12, v13, v14, v15, v16, a9);
  }
}

uint64_t gnssTest::FireDevice::periodic(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43[3] = *MEMORY[0x29EDCA608];
  FireDeviceLog::DeviceLogBase(6, "#fftd,periodic,durationSec,%d", a3, a4, a5, a6, a7, a8, a2);
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v40, a4);
  gnssTest::FireDevice::initMessageHandler(a1, v40, v12, v13, v14, v15, v16, v17, v38);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v40);
  v18 = *(a3 + 24);
  if (v18)
  {
    if (v18 == a3)
    {
      v42 = v41;
      (*(*v18 + 24))(v18, v41);
    }

    else
    {
      v42 = (*(*v18 + 16))(v18);
    }
  }

  else
  {
    v42 = 0;
  }

  v19 = a1 + 48;
  if (v41 != (a1 + 48))
  {
    v20 = v42;
    v21 = *(a1 + 72);
    if (v42 == v41)
    {
      if (v21 == v19)
      {
        (*(*v42 + 24))();
        (*(*v42 + 32))(v42);
        v42 = 0;
        (*(**(a1 + 72) + 24))(*(a1 + 72), v41);
        (*(**(a1 + 72) + 32))(*(a1 + 72));
        *(a1 + 72) = 0;
        v42 = v41;
        (*(v43[0] + 24))(v43, a1 + 48);
        (*(v43[0] + 32))(v43);
      }

      else
      {
        (*(*v42 + 24))();
        (*(*v42 + 32))(v42);
        v42 = *(a1 + 72);
      }

      *(a1 + 72) = v19;
    }

    else if (v21 == v19)
    {
      (*(*v21 + 24))(*(a1 + 72), v41);
      (*(**(a1 + 72) + 32))(*(a1 + 72));
      *(a1 + 72) = v42;
      v42 = v41;
    }

    else
    {
      v42 = *(a1 + 72);
      *(a1 + 72) = v20;
    }
  }

  v22 = std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>)>::~__value_func[abi:ne200100](v41);
  DeviceCommon::GetMachContinuousTime(v22);
  *(a1 + 192) = v29;
  *(a1 + 200) = a2;
  if ((a2 + 1) >= 2 && a2 <= 0)
  {
    FireDeviceLog::DeviceLogBase(2, "#fftd,invalidArgument,duraSec,%d", v23, v24, v25, v26, v27, v28, a2);
    result = std::function<void ()(gnss::Result)>::operator()(a4, 4);
  }

  else
  {
    FireMessageHandler::send(*(a1 + 8), 0x40000000, v23, v24, v25, v26, v27, v28);
    v30 = *(*(a1 + 8) + 936);
    v39[0] = &unk_2A1F08D40;
    v39[1] = a1;
    v39[3] = v39;
    FireMessageHandler::Tick::appendCallback(v30, v39, 5000, v31, v32, v33, v34, v35);
    result = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v39);
  }

  v37 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29891FFCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void gnssTest::FireDevice::cw(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v43 = *MEMORY[0x29EDCA608];
  FireDeviceLog::DeviceLogBase(6, "#fftd,cw,band,%d,subband,%d,durationSec,%d,rangeHz,%.3f,integrationTimeMs,%d", a3, a4, a5, a6, a7, a8, a3);
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v42, a7);
  gnssTest::FireDevice::initMessageHandler(a1, v42, v15, v16, v17, v18, v19, v20, v28);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v42);
  std::function<void ()(std::vector<gnssTest::RfMeasurement>)>::operator=(a1 + 16, a6);
  v30 = xmmword_298A2F6D0;
  v31 = 0;
  v32 = 255;
  v33 = 0;
  v35 = 65556;
  v37 = 0;
  v38 = 0;
  v36 = 0;
  v39 = 196618;
  v40 = 257;
  v34 = 0x100000000;
  v41 = (v10 - 1) < 0xC8;
  if (v12 > 2)
  {
    if (v12 <= 0xA)
    {
      if (((1 << v12) & 0x680) != 0)
      {
LABEL_17:
        FireDeviceLog::DeviceLogBase(5, "#fftd,cw,Use NAVIC CW test for all L5 similar bands", v21, v22, v23, v24, v25, v26, v29);
        goto LABEL_18;
      }

      if (((1 << v12) & 0x140) != 0)
      {
        FireDeviceLog::DeviceLogBase(5, "#fftd,cw,Use GPS CW test for Galileo E1 band", v21, v22, v23, v24, v25, v26, v29);
LABEL_10:
        LOWORD(v30) = 1;
        goto LABEL_19;
      }

      if (v12 == 5)
      {
        WORD4(v30) = 1;
        goto LABEL_19;
      }
    }

    if (v12 != 3)
    {
      if (v12 == 4)
      {
        WORD1(v30) = v11;
      }

      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (!v12)
  {
    FireDeviceLog::DeviceLogBase(5, "#fftd,cw,band,Unknown,tests all bands", v21, v22, v23, v24, v25, v26, v29);
    *&v30 = 0x60000FFF90001;
LABEL_18:
    WORD6(v30) = 1;
    goto LABEL_19;
  }

  if (v12 == 1)
  {
    goto LABEL_10;
  }

  if (v12 != 2)
  {
LABEL_19:
    gnssTest::FireDevice::runFactoryTest(a1, &v30, a2, v22, v23, v24, v25, v26, v29);
    goto LABEL_20;
  }

  FireDeviceLog::DeviceLogBase(2, "#fftd,cw,Unsupported,cwBand,%d", v21, v22, v23, v24, v25, v26, 2);
  std::function<void ()(gnss::Result)>::operator()(a7, 4);
LABEL_20:
  v27 = *MEMORY[0x29EDCA608];
}

uint64_t std::function<void ()(std::vector<gnssTest::RfMeasurement>)>::operator=(uint64_t a1, uint64_t a2)
{
  v10[3] = *MEMORY[0x29EDCA608];
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v9 = v8;
      (*(*v3 + 24))(v3, v8);
    }

    else
    {
      v9 = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    v9 = 0;
  }

  if (v8 != a1)
  {
    v4 = v9;
    v5 = *(a1 + 24);
    if (v9 == v8)
    {
      if (v5 == a1)
      {
        (*(*v9 + 24))();
        (*(*v9 + 32))(v9);
        v9 = 0;
        (*(**(a1 + 24) + 24))(*(a1 + 24), v8);
        (*(**(a1 + 24) + 32))(*(a1 + 24));
        *(a1 + 24) = 0;
        v9 = v8;
        (*(v10[0] + 24))(v10, a1);
        (*(v10[0] + 32))(v10);
      }

      else
      {
        (*(*v9 + 24))();
        (*(*v9 + 32))(v9);
        v9 = *(a1 + 24);
      }

      *(a1 + 24) = a1;
    }

    else if (v5 == a1)
    {
      (*(*v5 + 24))(*(a1 + 24), v8);
      (*(**(a1 + 24) + 32))(*(a1 + 24));
      *(a1 + 24) = v9;
      v9 = v8;
    }

    else
    {
      v9 = *(a1 + 24);
      *(a1 + 24) = v4;
    }
  }

  std::__function::__value_func<void ()(std::vector<gnssTest::RfMeasurement>)>::~__value_func[abi:ne200100](v8);
  v6 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_298920538(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void gnssTest::FireDevice::runFactoryTest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (!a3)
  {
    v10 = 10;
    goto LABEL_7;
  }

  if (a3 == -1)
  {
    a3 = 1;
    v10 = -1;
LABEL_7:
    *(a2 + 32) = v10;
    *(a2 + 28) = a3;
    v11 = *(a1 + 8) + 1176;
    v12 = *(a2 + 63);
    v13 = *(a2 + 16);
    v14 = *(a2 + 48);
    *(v11 + 32) = *(a2 + 32);
    *(v11 + 48) = v14;
    *(v11 + 16) = v13;
    *v11 = *a2;
    *(v11 + 63) = v12;
    v15 = *(a1 + 8);

    FireMessageHandler::send(v15, 1073741844, a3, a4, a5, a6, a7, a8);
    return;
  }

  if (a3 >= 1)
  {
    v10 = a3 + 1;
    a3 = 1;
    goto LABEL_7;
  }

  FireDeviceLog::DeviceLogBase(2, "#fftd,invalidArgument,duraSec,%d", a3, a4, a5, a6, a7, a8, a3);

  gnssTest::FireDevice::response(a1, 4, v16, v17, v18, v19, v20, v21, a9);
}

void gnssTest::FireDevice::modulated(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a4;
  v11 = a3;
  v43 = *MEMORY[0x29EDCA608];
  FireDeviceLog::DeviceLogBase(6, "#fftd,mod,band,%d,subband,%d,durationSec,%d,integrationTimeMs,%d", a3, a4, a5, a6, a7, a8, a3);
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v42, a7);
  gnssTest::FireDevice::initMessageHandler(a1, v42, v14, v15, v16, v17, v18, v19, v28);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v42);
  std::function<void ()(std::vector<gnssTest::RfMeasurement>)>::operator=(a1 + 16, a6);
  v30 = xmmword_298A2F6D0;
  v31 = 0;
  v32 = 255;
  v33 = 0;
  v35 = 65556;
  v37 = 0;
  v38 = 0;
  v36 = 0;
  v39 = 196618;
  v40 = 257;
  v41 = 0;
  v34 = 0x100000001;
  if (v11 > 4)
  {
    if (v11 > 7)
    {
      switch(v11)
      {
        case 8:
          WORD5(v30) = v10;
          goto LABEL_22;
        case 9:
          HIWORD(v30) = v10;
          v26 = 6;
          break;
        case 10:
          HIWORD(v30) = v10;
          v26 = 7;
          break;
        default:
          goto LABEL_22;
      }
    }

    else
    {
      if ((v11 - 5) < 2)
      {
        WORD4(v30) = v10;
LABEL_22:
        gnssTest::FireDevice::runFactoryTest(a1, &v30, a2, v21, v22, v23, v24, v25, v29);
        goto LABEL_23;
      }

      if (v11 != 7)
      {
        goto LABEL_22;
      }

      HIWORD(v30) = v10;
      v26 = 5;
    }

    goto LABEL_21;
  }

  if (v11 <= 1)
  {
    if (v11)
    {
      if (v11 == 1)
      {
        LOWORD(v30) = v10;
      }

      goto LABEL_22;
    }
  }

  else if (v11 != 2)
  {
    if (v11 != 3)
    {
      WORD1(v30) = v10;
      goto LABEL_22;
    }

    HIWORD(v30) = v10;
    v26 = 1;
LABEL_21:
    v31 = v26;
    goto LABEL_22;
  }

  FireDeviceLog::DeviceLogBase(2, "#fftd,mod,Unsupported,band,%d", v20, v21, v22, v23, v24, v25, v11);
  std::function<void ()(gnss::Result)>::operator()(a7, 4);
LABEL_23:
  v27 = *MEMORY[0x29EDCA608];
}

uint64_t gnssTest::FireDevice::recordIQ(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a4;
  v10 = a3;
  v38 = *MEMORY[0x29EDCA608];
  FireDeviceLog::DeviceLogBase(6, "#fftd,recordIQ,band,%d,subband,%d,durationSec,%d", a3, a4, a5, a6, a7, a8, a3);
  FireDeviceLog::DeviceLogBase(3, "#fftd,recoreIQ,usingXmlJob,arguments are ignored", v12, v13, v14, v15, v16, v17, v35);
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v37, a5);
  gnssTest::FireDevice::initMessageHandler(a1, v37, v18, v19, v20, v21, v22, v23, v36);
  v24 = 67458;
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v37);
  if (v10 == 1)
  {
    v31 = 0x3D090FFFC2F70;
  }

  else
  {
    if (v10 != 4)
    {
      FireDeviceLog::DeviceLogBase(2, "fftd,recordIQ,bandNotSupported,%d", v25, v26, v27, v28, v29, v30, v10);
      result = std::function<void ()(gnss::Result)>::operator()(a5, 4);
      goto LABEL_7;
    }

    v31 = vadd_s32(vdup_n_s32(562500 * v9), 0x3D090FFFC2F70);
    v24 = 67488;
  }

  v32 = *(a1 + 8);
  *(v32 + 1248) = v31;
  *(v32 + 1256) = 0x64000003E8;
  *(v32 + 1264) = 100;
  *(v32 + 1268) = v24;
  *(v32 + 1272) = 0;
  result = FireMessageHandler::send(v32, 1073741846, v25, v26, v27, v28, v29, v30);
LABEL_7:
  v34 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298920984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t gnssTest::FireDevice::commLoopback(uint64_t a1, int a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43 = *MEMORY[0x29EDCA608];
  v36 = a3[2];
  v37 = a3[3];
  v35 = a3[1];
  FireDeviceLog::DeviceLogBase(5, "#fftd,CommLoopbackConf,packMin,%u,packMax,%u,step,%u,loops,%u", a3, a4, a5, a6, a7, a8, *a3);
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v38, a5);
  gnssTest::FireDevice::initMessageHandler(a1, v38, v13, v14, v15, v16, v17, v18, v34);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v38);
  v20 = *a3;
  v19 = a3[1];
  v21 = a3[3];
  std::__function::__value_func<void ()(gnssTest::CommLoopbackResult const&)>::__value_func[abi:ne200100](v39, a4);
  v42 = 0;
  if (v40)
  {
    operator new();
  }

  if (v41 != (a1 + 80))
  {
    v22 = *(a1 + 104);
    if (v22 == a1 + 80)
    {
      (*(*v22 + 24))(v22, v41);
      (*(**(a1 + 104) + 32))(*(a1 + 104));
      *(a1 + 104) = v42;
      v42 = v41;
    }

    else
    {
      v42 = *(a1 + 104);
      *(a1 + 104) = 0;
    }
  }

  std::__function::__value_func<void ()(gnssTest::CommLoopbackResult)>::~__value_func[abi:ne200100](v41);
  std::__function::__value_func<void ()(gnssTest::CommLoopbackResult const&)>::~__value_func[abi:ne200100](v39);
  v23 = *(a1 + 8);
  *(v23 + 1276) = a2;
  *(v23 + 1280) = v19 >> 10;
  *(v23 + 1284) = v20 >> 10;
  *(v23 + 1288) = v21;
  FireMessageHandler::send(v23, 1073741848, v24, v25, v26, v27, v28, v29);
  v30 = std::function<void ()(gnss::Result)>::operator=((a1 + 160), a5);
  result = DeviceCommon::GetMachContinuousTime(v30);
  *(a1 + 192) = v32;
  *(a1 + 200) = a2;
  *(a1 + 212) = v19 >> 10;
  v33 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298920BF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gnssTest::FireDevice::timeMarkGpio(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14[4] = *MEMORY[0x29EDCA608];
  FireDeviceLog::DeviceLogBase(6, "#fftd,tm,timeout,%d", a3, a4, a5, a6, a7, a8, a2);
  *(a1 + 216) = 0;
  *(a1 + 220) = 1;
  v14[0] = &unk_2A1F08EB0;
  v14[3] = v14;
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v13, a3);
  (*(*a1 + 24))(a1, ((a2 + 500) / 1000), v14, v13);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v13);
  result = std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>)>::~__value_func[abi:ne200100](v14);
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298920D60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>)>::~__value_func[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void sub_298921358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void gnssTest::FireDevice::CommPing::response(unsigned int *a1, int a2)
{
  if (!FireResourceMgr::fInstance)
  {
    operator new();
  }

  (*(**(FireResourceMgr::fInstance + 8) + 32))(*(FireResourceMgr::fInstance + 8));
  if (!FireResourceMgr::fInstance)
  {
    operator new();
  }

  (*(**FireResourceMgr::fInstance + 24))();
  v10 = (a1 + 68);
  LOBYTE(v11) = a1 + 16;
  if (*(a1 + 295) < 0)
  {
    v11 = *v10;
  }

  v23 = *a1;
  FireDeviceLog::DeviceLogBase(5, "commping,response,ver,%s,result,%d,stage,%d", v4, v5, v6, v7, v8, v9, v11);
  if (*(a1 + 295) < 0)
  {
    v12 = *(a1 + 35);
    if (v12)
    {
      std::string::__init_copy_ctor_external(&v25, *v10, v12);
      goto LABEL_12;
    }
  }

  else if (*(a1 + 295))
  {
    *&v25.__r_.__value_.__l.__data_ = *v10;
    v25.__r_.__value_.__r.__words[2] = *(a1 + 36);
    goto LABEL_12;
  }

  std::string::basic_string[abi:ne200100]<0>(&v25, "INVALID");
LABEL_12:
  v13 = (a1 + 74);
  if (*(a1 + 319) < 0)
  {
    v14 = *(a1 + 38);
    if (v14)
    {
      std::string::__init_copy_ctor_external(&v24, *v13, v14);
      goto LABEL_18;
    }
  }

  else if (*(a1 + 319))
  {
    *&v24.__r_.__value_.__l.__data_ = *v13;
    v24.__r_.__value_.__r.__words[2] = *(a1 + 39);
    goto LABEL_18;
  }

  std::string::basic_string[abi:ne200100]<0>(&v24, "INVALID");
LABEL_18:
  v15 = *(a1 + 43);
  if (!v15)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v15 + 48))(v15, &v25, &v24);
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  gnssTest::FireDevice::response(*(a1 + 44), a2, v16, v17, v18, v19, v20, v21, v22);
  *a1 = 5;
}

void sub_2989215C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void gnssTest::FireDevice::CommPing::write(gnssTest::FireDevice::CommPing *this, gnss::fire *a2, unsigned __int8 *a3)
{
  gnss::fire::charToHex(a2, a3, 44, &__p);
  FireDeviceLog::DeviceLogBase(6, "commping,write,%zu,date,%s", v6, v7, v8, v9, v10, v11, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *(this + 33) = 0;
  if (!FireResourceMgr::fInstance)
  {
    goto LABEL_8;
  }

  if (((*(**FireResourceMgr::fInstance + 96))(*FireResourceMgr::fInstance, a2, a3) & 1) == 0)
  {
    v24 = *this;
    FireDeviceLog::DeviceLogBase(2, "commping,write,fail,size,%zu,stage,%d", v12, v13, v14, v15, v16, v17, a3);
    gnssTest::FireDevice::CommPing::response(this, 8);
  }

  if (!FireResourceMgr::fInstance)
  {
LABEL_8:
    operator new();
  }

  (*(**FireResourceMgr::fInstance + 112))();
  FireDeviceLog::DeviceLogBase(5, "commping,write,pass,size,%zu", v18, v19, v20, v21, v22, v23, a3);
}

void sub_298921744(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void gnssTest::FireDevice::CommPing::dataProc(gnssTest::FireDevice::CommPing *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v101 = *MEMORY[0x29EDCA608];
  DeviceCommon::GetMachContinuousTime(this);
  v16 = *(this + 44);
  if (v17 > *(v16 + 192) + *(v16 + 200))
  {
    FireDeviceLog::DeviceLogBase(6, "commping,durationExpired,%.3lf", v10, v11, v12, v13, v14, v15, *(v16 + 200));
    v18 = *MEMORY[0x29EDCA608];
    v19 = this;
    v20 = 6;
LABEL_3:

    gnssTest::FireDevice::CommPing::response(v19, v20);
    return;
  }

  v99 = 28360448;
  v98 = 0x3020200B0;
  v96 = 0xC000000009FD00FELL;
  v97 = -4;
  *(v95 + 5) = 0x1B0B10100000003;
  v95[0] = 0x380020000B0;
  FireDeviceLog::DeviceLogBase(6, "commping,dataProc,stage,%d", v10, v11, v12, v13, v14, v15, *this);
  v27 = *this;
  if (*this <= 2)
  {
    if (v27)
    {
      if (v27 == 1)
      {
        gnssTest::FireDevice::CommPing::write(this, v95, 0xD);
        FireDeviceLog::DeviceLogBase(5, "commping,updateStage,old,%d,new,%d", v62, v63, v64, v65, v66, v67, *this);
        *this = 2;
        *(this + 4) = 1;
      }

      else if (v27 == 2)
      {
        if (*(this + 33) && *(this + 6) == 176 && !*(this + 7))
        {
          *(this + 5) = 1;
          gnssTest::FireDevice::CommPing::write(this, &v98, 0xC);
        }

        else
        {
          *(this + 5) = 0;
          gnssTest::FireDevice::CommPing::write(this, &v96, 9);
        }

        FireDeviceLog::DeviceLogBase(5, "commping,updateStage,old,%d,new,%d", v28, v29, v30, v31, v32, v33, *this);
        *this = 3;
        FireDeviceLog::DeviceLogBase(6, "commping,hasMcu,%d", v34, v35, v36, v37, v38, v39, *(this + 5));
      }

      goto LABEL_37;
    }

    memset(this + 6, 128, 20);
    gnssTest::FireDevice::CommPing::write(this, (this + 6), 0x14);
    v41 = 1;
    FireDeviceLog::DeviceLogBase(5, "commping,updateStage,old,%d,new,%d", v42, v43, v44, v45, v46, v47, *this);
LABEL_22:
    *this = v41;
    goto LABEL_37;
  }

  if (v27 == 3)
  {
    v48 = *(this + 33);
    if (*(this + 5) == 1)
    {
      FireDeviceLog::DeviceLogBase(5, "VersionRequest,readback,pass,length,%zd", v21, v22, v23, v24, v25, v26, *(this + 33));
      if ((v48 & 0x8000000000000000) != 0)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      gnss::fire::charToHex((this + 6), v48, 44, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        LOBYTE(p_p) = __p.__r_.__value_.__s.__data_[0];
      }

      FireDeviceLog::DeviceLogBase(5, "ReceivedBytesHex,%s", v49, v50, v51, v52, v53, v54, p_p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v48 > 0x15)
      {
        memset(&__p, 0, sizeof(__p));
        std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, this + 24, this + 28, 4);
        size = __p.__r_.__value_.__l.__size_;
        v88 = __p.__r_.__value_.__r.__words[0];
        if (__p.__r_.__value_.__r.__words[0] != __p.__r_.__value_.__l.__size_)
        {
          v90 = (__p.__r_.__value_.__l.__size_ - 1);
          if (__p.__r_.__value_.__l.__size_ - 1 > __p.__r_.__value_.__r.__words[0])
          {
            v91 = __p.__r_.__value_.__r.__words[0] + 1;
            do
            {
              v92 = *(v91 - 1);
              *(v91 - 1) = *v90;
              *v90-- = v92;
            }

            while (v91++ < v90);
            size = __p.__r_.__value_.__l.__size_;
            v88 = __p.__r_.__value_.__r.__words[0];
          }
        }

        gnss::fire::charToHex(v88, (size - v88), 0, &v100);
        if (*(this + 295) < 0)
        {
          operator delete(*(this + 34));
        }

        *(this + 272) = v100;
        gnssTest::FireDevice::CommPing::response(this, 1);
        if (__p.__r_.__value_.__r.__words[0])
        {
          __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        FireDeviceLog::DeviceLogBase(6, "versionCheckMcu,notComplete,size,%zd<%zu", v56, v57, v58, v59, v60, v61, v48);
      }

      goto LABEL_37;
    }

    v100.__r_.__value_.__s.__data_[8] = -4;
    v100.__r_.__value_.__r.__words[0] = 0x100C125049FD02FFLL;
    if (v48 < 0xD)
    {
      FireDeviceLog::DeviceLogBase(6, "versionCheckEsw,notComplete,size,%zd<%zu", v21, v22, v23, v24, v25, v26, v48);
      goto LABEL_37;
    }

    v77 = 0;
    v78 = 17;
    do
    {
      v77 = *(this + v78) | (v77 << 8);
      v79 = v78 - 6;
      --v78;
    }

    while (v79 > 8);
    FireDeviceLog::DeviceLogBase(5, "eswVersionRead,0x%X", v21, v22, v23, v24, v25, v26, v77);
    if (v77 == 805306389)
    {
      v80 = "FIRE7.B0";
    }

    else
    {
      v80 = "FIRE7.Unknown";
    }

    if (v77 == 805306387)
    {
      v81 = "FIRE7.A0";
    }

    else
    {
      v81 = v80;
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, v81);
    if (*(this + 295) < 0)
    {
      operator delete(*(this + 34));
    }

    *(this + 272) = __p;
    if (v77 == 805306387)
    {
      gnssTest::FireDevice::CommPing::response(this, 1);
      goto LABEL_37;
    }

    if (v77 != 805306389)
    {
      gnssTest::FireDevice::CommPing::response(this, 8);
      goto LABEL_37;
    }

    gnssTest::FireDevice::CommPing::write(this, &v100, 9);
    v41 = 4;
    FireDeviceLog::DeviceLogBase(5, "commping,updateStage,old,%d,new,%d", v82, v83, v84, v85, v86, v87, *this);
    goto LABEL_22;
  }

  if (v27 == 4)
  {
    if (*(this + 33) > 0x14uLL)
    {
      if (*(this + 6) != 254 || *(this + 26) != 252)
      {
        v76 = *MEMORY[0x29EDCA608];
        v19 = this;
        v20 = 8;
        goto LABEL_3;
      }

      gnss::fire::charToHex((this + 14), 0xC, 0, &__p);
      v75 = (this + 296);
      if (*(this + 319) < 0)
      {
        operator delete(*v75);
      }

      *v75 = *&__p.__r_.__value_.__l.__data_;
      *(this + 39) = *(&__p.__r_.__value_.__l + 2);
      if (*(this + 319) < 0)
      {
        v75 = *v75;
      }

      FireDeviceLog::DeviceLogBase(5, "chipIdCheckEsw,chipId,%s", v69, v70, v71, v72, v73, v74, v75);
      gnssTest::FireDevice::CommPing::response(this, 1);
    }

    else
    {
      FireDeviceLog::DeviceLogBase(6, "chipIdCheckEsw,notComplete,size,%zd<%zu", v21, v22, v23, v24, v25, v26, *(this + 33));
    }

LABEL_37:
    v68 = *MEMORY[0x29EDCA608];
    return;
  }

  if (v27 != 5)
  {
    goto LABEL_37;
  }

  v40 = *MEMORY[0x29EDCA608];

  FireDeviceLog::DeviceLogBase(6, "commping,done", v21, v22, v23, v24, v25, v26, a9);
}

void sub_298921D64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void gnssTest::FireDevice::handlePeriodicStop(gnssTest::FireDevice *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v64[4] = *MEMORY[0x29EDCA608];
  v61 = *(this + 208);
  FireDeviceLog::DeviceLogBase(6, "handlePeriodicStop,#tt,%d,startCompleted,%d", a3, a4, a5, a6, a7, a8, *(this + 220));
  DeviceCommon::GetMachContinuousTime(v10);
  v18 = v17;
  if ((*(this + 208) & 1) == 0 && v17 > *(this + 24) + 5.0)
  {
    FireDeviceLog::DeviceLogBase(2, "#fftd,periodic,start,timeout", v11, v12, v13, v14, v15, v16, v60);
    v25 = *MEMORY[0x29EDCA608];

    gnssTest::FireDevice::response(this, 6, v19, v20, v21, v22, v23, v24, a9);
    return;
  }

  if (*(this + 220) == 1)
  {
    FireDeviceLog::DeviceLogBase(6, "#fftd,tm,report,handleTimeTransferState,state,%d", v11, v12, v13, v14, v15, v16, *(this + 54));
    if ((*(this + 220) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v26 = *(this + 54);
    if (v26 == 4)
    {
      v43 = 1073741825;
      v28 = (this + 8);
      v44 = "#fftd,tm,report,pass,sendStopPeriodic";
    }

    else
    {
      if (v26)
      {
        goto LABEL_13;
      }

      v28 = (this + 8);
      v27 = *(this + 1);
      v64[0] = &unk_2A1F08F40;
      v64[1] = this;
      v64[3] = v64;
      FireDeviceLog::DeviceLogBase(6, "fcb,setReqOnSyncInStatusCb,%p", v11, v12, v13, v14, v15, v16, v64);
      std::function<void ()(BlueFin::GL_SYNCIN_STATUS)>::operator=((v27 + 808), v64);
      std::__function::__value_func<void ()(BlueFin::GL_SYNCIN_STATUS)>::~__value_func[abi:ne200100](v64);
      v29 = *(this + 1);
      v63[0] = &unk_2A1F08FC0;
      v63[1] = this;
      v63[3] = v63;
      FireDeviceLog::DeviceLogBase(6, "fcb,setReqOnSyncInLatchedCb,%p", v30, v31, v32, v33, v34, v35, v63);
      std::function<void ()(BlueFin::GL_SYNCIN_STATUS,double)>::operator=((v29 + 840), v63);
      std::__function::__value_func<void ()(BlueFin::GL_SYNCIN_STATUS,double)>::~__value_func[abi:ne200100](v63);
      v36 = *(this + 1);
      v62[0] = &unk_2A1F09040;
      v62[1] = this;
      v62[3] = v62;
      FireDeviceLog::DeviceLogBase(6, "fcb,setReqOnSyncinReportCurrentTimeCb,%p", v37, v38, v39, v40, v41, v42, v62);
      std::function<void ()(BlueFin::GL_SYNCIN_STATUS,BlueFin::GL_TIME const*,BlueFin::GL_TIME_VALIDITY,double,BOOL,signed char)>::operator=((v36 + 904), v62);
      std::__function::__value_func<void ()(BlueFin::GL_SYNCIN_STATUS,BlueFin::GL_TIME const*,BlueFin::GL_TIME_VALIDITY,double,BOOL,signed char)>::~__value_func[abi:ne200100](v62);
      *(this + 54) = 1;
      *(this + 220) = 1;
      v43 = 1073741837;
      v44 = "#fftd,tm,sendOneShortRequest,pass";
    }

    FireMessageHandler::send(*v28, v43, v11, v12, v13, v14, v15, v16);
    FireDeviceLog::DeviceLogBase(6, v44, v45, v46, v47, v48, v49, v50, v60);
  }

LABEL_13:
  if (v18 <= *(this + 24) + *(this + 25))
  {
    v59 = *MEMORY[0x29EDCA608];
  }

  else
  {
    FireDeviceLog::DeviceLogBase(2, "#fftd,durationExpired,periodic,sendStop", v11, v12, v13, v14, v15, v16, v60);
    v57 = *(this + 1);
    v58 = *MEMORY[0x29EDCA608];

    FireMessageHandler::send(v57, 1073741825, v51, v52, v53, v54, v55, v56);
  }
}

void sub_298922088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<void ()(BlueFin::GL_SYNCIN_STATUS,BlueFin::GL_TIME const*,BlueFin::GL_TIME_VALIDITY,double,BOOL,signed char)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void populateBand(uint64_t a1, _BYTE *a2, int *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 320) == 3)
  {
    *a4 = 0x41D187CCF4000000;
    v8 = *(a1 + 276);
    if (v8 <= 3)
    {
      if ((v8 - 1) >= 2)
      {
        if (v8)
        {
          if (v8 != 3)
          {
            return;
          }

          *a2 = 3;
          v9 = *(a1 + 12) + 127;
        }

        else
        {
          *a2 = 3;
          v9 = *(a1 + 12);
        }

        goto LABEL_38;
      }

LABEL_25:
      v17 = *(a1 + 12);
      FireDeviceLog::DeviceLogBase(2, "#fact,populateBandL5,unexpected,type,%d,svid,%d,constellation,%d", a3, a4, a5, a6, a7, a8, v8);
      return;
    }

    if (v8 > 5)
    {
      if (v8 != 6)
      {
        if (v8 != 7)
        {
          return;
        }

        goto LABEL_25;
      }

      *a2 = 10;
      v9 = *(a1 + 12) - 174;
    }

    else if (v8 == 4)
    {
      *a2 = 7;
      v9 = *(a1 + 12) - 75;
    }

    else
    {
      *a2 = 9;
      v9 = *(a1 + 12) - 138;
    }

LABEL_38:
    *a3 = v9;
    return;
  }

  v10 = *(a1 + 276);
  if (v10 > 3)
  {
    if (v10 > 5)
    {
      if (v10 != 6)
      {
        if (v10 != 7)
        {
          return;
        }

        goto LABEL_28;
      }

      *a2 = 10;
      *a3 = *(a1 + 12) - 174;
      v16 = 0x41D187CCF4000000;
LABEL_36:
      *a4 = v16;
      return;
    }

    if (v10 == 4)
    {
      *a2 = 5;
      *a3 = *(a1 + 12) - 75;
      v15 = 0x431DC4000000;
      goto LABEL_33;
    }

    *a2 = 8;
    v11 = *(a1 + 12) - 138;
LABEL_30:
    *a3 = v11;
    v15 = 0x79C018000000;
LABEL_33:
    v16 = v15 & 0xFFFFFFFFFFFFLL | 0x41D7000000000000;
    goto LABEL_36;
  }

  if (v10 <= 1)
  {
    if (v10)
    {
      if (v10 != 1)
      {
        return;
      }

LABEL_28:
      v18 = *(a1 + 12);
      v19 = *(a1 + 320);
      FireDeviceLog::DeviceLogBase(2, "#fact,populateBand,unexpected,type,%d,svid,%d,constellation,%d", a3, a4, a5, a6, a7, a8, v10);
      return;
    }

    *a2 = 1;
    v11 = *(a1 + 12);
    goto LABEL_30;
  }

  if (v10 != 2)
  {
    *a3 = *(a1 + 12) + 127;
  }

  *a2 = 4;
  v12 = *(a1 + 12);
  v13 = v12 - 52;
  v14 = (v12 - 59);
  if (v13 >= 0xE)
  {
    v14 = -8;
  }

  *a3 = v14;
  *a4 = v14 * 562500.0 + 1602000000.0;
}

uint64_t gnssTest::FireDevice::setNmeaHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 24))
  {
    std::function<void ()(std::vector<std::string>)>::operator=<std::function<void ()(std::vector<std::string>&&)> &,void>((a1 + 112), a3);
    *(a1 + 144) = a2;
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return std::function<void ()(gnss::Result)>::operator()(a4, v7);
}

uint64_t gnssTest::FireDevice::setConfigTestContext(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 152) = a2;
  FireDeviceLog::DeviceLogBase(5, "#fftd,coexConfigFlags,0x%llx", a3, a4, a5, a6, a7, a8, a2);

  return std::function<void ()(gnss::Result)>::operator()(a3, 1);
}

void sub_298922740(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (a2)
  {
    (*(*a2 + 8))(a2);
  }

  std::unique_ptr<gnssTest::FireDevice::CommPing>::reset[abi:ne200100](v5, 0);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v2 + 160);
  std::__function::__value_func<void ()(std::vector<std::string>)>::~__value_func[abi:ne200100](v2 + 112);
  std::__function::__value_func<void ()(gnssTest::CommLoopbackResult)>::~__value_func[abi:ne200100](v2 + 80);
  std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>)>::~__value_func[abi:ne200100](v2 + 48);
  std::__function::__value_func<void ()(std::vector<gnssTest::RfMeasurement>)>::~__value_func[abi:ne200100](v2 + 16);
  v7 = *(v2 + 8);
  *(v2 + 8) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  MEMORY[0x29C292F70](v2, v3);
  _Unwind_Resume(a1);
}

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC9600] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9480], MEMORY[0x29EDC9368]);
}

uint64_t std::__function::__value_func<void ()(std::string const&,std::string const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(std::vector<gnssTest::RfMeasurement>)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(gnssTest::CommLoopbackResult)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t *std::unique_ptr<gnssTest::FireDevice::CommPing>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__function::__value_func<void ()(std::string const&,std::string const&)>::~__value_func[abi:ne200100](v2 + 320);
    if (*(v2 + 319) < 0)
    {
      operator delete(*(v2 + 296));
    }

    if (*(v2 + 295) < 0)
    {
      operator delete(*(v2 + 272));
    }

    JUMPOUT(0x29C292F70);
  }

  return result;
}

uint64_t std::__function::__func<gnssTest::FireDevice::initMessageHandler(std::function<void ()(gnss::Result)>)::$_0,std::allocator<gnssTest::FireDevice::initMessageHandler(std::function<void ()(gnss::Result)>)::$_0>,void ()(BlueFin::GL_FIX_STATUS const*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F08920;
  a2[1] = v2;
  return result;
}

void std::__function::__func<gnssTest::FireDevice::initMessageHandler(std::function<void ()(gnss::Result)>)::$_0,std::allocator<gnssTest::FireDevice::initMessageHandler(std::function<void ()(gnss::Result)>)::$_0>,void ()(BlueFin::GL_FIX_STATUS const*)>::operator()(uint64_t a1, unsigned int **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v22 = *MEMORY[0x29EDCA608];
  v9 = *(a1 + 8);
  v10 = (*a2)[7];
  v21 = *(*a2 + 518);
  v20 = *(*a2 + 1018);
  v18 = *(*a2 + 4048);
  v19 = **a2;
  FireDeviceLog::DeviceLogBase(6, "#fftd,%s,fix,valid,%d,ms,%d,TOW,%.3f,Lat,%.6lf,Lon,%.6lf,AccuracyMeters,%.3lf\n", a3, a4, a5, a6, a7, a8, "handleLocationResponse");
  if (*(v9 + 72))
  {
    operator new();
  }

  v17 = *MEMORY[0x29EDCA608];

  FireDeviceLog::DeviceLogBase(2, "#fftd,fOnPeriodicFix,nullptr", v11, v12, v13, v14, v15, v16, a9);
}

uint64_t std::__function::__func<gnssTest::FireDevice::initMessageHandler(std::function<void ()(gnss::Result)>)::$_0,std::allocator<gnssTest::FireDevice::initMessageHandler(std::function<void ()(gnss::Result)>)::$_0>,void ()(BlueFin::GL_FIX_STATUS const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<gnssTest::FireDevice::initMessageHandler(std::function<void ()(gnss::Result)>)::$_1,std::allocator<gnssTest::FireDevice::initMessageHandler(std::function<void ()(gnss::Result)>)::$_1>,void ()(BlueFin::GlGnssData const*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F089A0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<gnssTest::FireDevice::initMessageHandler(std::function<void ()(gnss::Result)>)::$_1,std::allocator<gnssTest::FireDevice::initMessageHandler(std::function<void ()(gnss::Result)>)::$_1>,void ()(BlueFin::GlGnssData const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<gnssTest::FireDevice::initMessageHandler(std::function<void ()(gnss::Result)>)::$_2,std::allocator<gnssTest::FireDevice::initMessageHandler(std::function<void ()(gnss::Result)>)::$_2>,void ()(BlueFin::GlGnssSvInfoData const*,BlueFin::GlTimeConversionInfo const*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F08A20;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<gnssTest::FireDevice::initMessageHandler(std::function<void ()(gnss::Result)>)::$_2,std::allocator<gnssTest::FireDevice::initMessageHandler(std::function<void ()(gnss::Result)>)::$_2>,void ()(BlueFin::GlGnssSvInfoData const*,BlueFin::GlTimeConversionInfo const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<gnssTest::FireDevice::initMessageHandler(std::function<void ()(gnss::Result)>)::$_3,std::allocator<gnssTest::FireDevice::initMessageHandler(std::function<void ()(gnss::Result)>)::$_3>,void ()(char const*,short)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F08AA0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<gnssTest::FireDevice::initMessageHandler(std::function<void ()(gnss::Result)>)::$_3,std::allocator<gnssTest::FireDevice::initMessageHandler(std::function<void ()(gnss::Result)>)::$_3>,void ()(char const*,short)>::operator()(uint64_t result, const void **a2, __int16 *a3)
{
  if (*(*(result + 8) + 136))
  {
    v3 = *a3;
    if ((v3 & 0x80000000) == 0)
    {
      v4 = *a2;
      if (v3 < 0x17)
      {
        v7 = *a3;
        if (v3)
        {
          memcpy(&__dst, v4, v3);
        }

        *(&__dst + v3) = 0;
        memset(v5, 0, sizeof(v5));
        v8.__end_cap_.__value_ = v5;
        operator new();
      }

      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_298923430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *__p, uint64_t a5, int a6, __int16 a7, char a8, char a9, uint64_t a10, std::__split_buffer<std::string> *a11, void *__pa, uint64_t a13, int a14, __int16 a15, char a16, char a17, void **a18, uint64_t a19)
{
  std::__split_buffer<std::string>::~__split_buffer(&a19);
  a18 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a18);
  if (a17 < 0)
  {
    operator delete(__pa);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<gnssTest::FireDevice::initMessageHandler(std::function<void ()(gnss::Result)>)::$_3,std::allocator<gnssTest::FireDevice::initMessageHandler(std::function<void ()(gnss::Result)>)::$_3>,void ()(char const*,short)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<gnssTest::FireDevice::initMessageHandler(std::function<void ()(gnss::Result)>)::$_4,std::allocator<gnssTest::FireDevice::initMessageHandler(std::function<void ()(gnss::Result)>)::$_4>,void ()(BlueFin::GL_FACT_TEST_STATUS *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F08B20;
  a2[1] = v2;
  return result;
}

void std::__function::__func<gnssTest::FireDevice::initMessageHandler(std::function<void ()(gnss::Result)>)::$_4,std::allocator<gnssTest::FireDevice::initMessageHandler(std::function<void ()(gnss::Result)>)::$_4>,void ()(BlueFin::GL_FACT_TEST_STATUS *)>::operator()(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v74 = *MEMORY[0x29EDCA608];
  v9 = *a2;
  if (!*a2)
  {
    v22 = *MEMORY[0x29EDCA608];
    v23 = "handleFactoryTestResponse,pFact,nullptr";
LABEL_25:
    v36 = 2;
    goto LABEL_26;
  }

  v10 = *(a1 + 8);
  v45 = *(v9 + 12);
  v49 = *(v9 + 320);
  v41 = *(v9 + 4);
  FireDeviceLog::DeviceLogBase(6, "#fftd,result,curItem,%d,item,%d,svid,%d,constellation,%d", a3, a4, a5, a6, a7, a8, *v9);
  if (!*v9)
  {
    v60 = *(v9 + 216) * 1000000000.0;
    v63 = *(v9 + 56);
    v54 = *(v9 + 72) * 1000000000.0;
    v57 = *(v9 + 208) * 1000000000.0;
    v51 = *(v9 + 224);
    v43 = *(v9 + 12);
    v47 = *(v9 + 204);
    FireDeviceLog::DeviceLogBase(6, "#fftd,cw,constellation,%d,svId,%d,valid,%d,dBm,%.2f,freqPpb,%.2f,doppPpb,%.2f,uncPpb,%.2f,NF,%.2f", a3, a4, a5, a6, a7, a8, *(v9 + 320));
    v58 = *(v9 + 172);
    v61 = *(v9 + 176);
    v52 = *(v9 + 164);
    v55 = *(v9 + 168);
    v44 = *(v9 + 156);
    v48 = *(v9 + 160);
    FireDeviceLog::DeviceLogBase(6, "#fftd,cw,AGCIQ,%u,aGPS,%.1f,dGPS,%.1f,aGLN,%.1f,dGLN,%1.f,RES1,%.1f,RES2,%.1f", v24, v25, v26, v27, v28, v29, *(v9 + 152));
    if (*(v10 + 40))
    {
      v67 = 0;
      v66 = 0x80000000;
      v65 = NAN;
      populateBand(v9, &v67, &v66, &v65, v14, v15, v16, v17);
      v30 = *(v9 + 224);
      v31 = v30 - *(v9 + 56) + 174.0;
      v32 = NAN;
      if (!*(v9 + 204))
      {
        v31 = NAN;
        v30 = NAN;
      }

      v33 = *(v9 + 208) * v65;
      if (*(v9 + 204))
      {
        v32 = *(v9 + 208) * v65;
      }

      v68 = v67;
      v69 = v66;
      v70 = v31;
      v71 = v30;
      v72 = v32;
      v73 = 0x7FF8000000000000;
      std::vector<gnssTest::RfMeasurement>::__init_with_size[abi:ne200100]<gnssTest::RfMeasurement const*,gnssTest::RfMeasurement const*>();
    }

    v38 = "#fftd,cw,fOnRfMeasurement,nullptr";
    goto LABEL_31;
  }

  v11 = *(v9 + 4);
  if (v11 == 1)
  {
    v64 = *(v9 + 72) * 1000000000.0;
    v62 = *(v9 + 64);
    v56 = *(v9 + 40);
    v59 = *(v9 + 56);
    v50 = *(v9 + 48);
    v53 = *(v9 + 24);
    v46 = *(v9 + 32);
    v42 = *(v9 + 16);
    FireDeviceLog::DeviceLogBase(6, "#fftd,mod,svId,%d,valid,%d,dBmAvg,%.2f,CN0Avg,%.2f,dBmLast,%.2f,CN0Last,%.2f,NF,%.2f,fValid,%d,freqPpb,%2.f", a3, a4, a5, a6, a7, a8, *(v9 + 12));
    if (*(v10 + 40))
    {
      v67 = 0;
      v66 = 0x80000000;
      v65 = NAN;
      populateBand(v9, &v67, &v66, &v65, v14, v15, v16, v17);
      v18 = NAN;
      v19 = *(v9 + 48);
      if (!*(v9 + 16))
      {
        v19 = NAN;
      }

      v20 = *(v9 + 32) + *(v9 + 56);
      if (!*(v9 + 16))
      {
        v20 = NAN;
      }

      v21 = *(v9 + 72) * v65;
      if (*(v9 + 64))
      {
        v18 = *(v9 + 72) * v65;
      }

      v68 = v67;
      v69 = v66;
      v70 = v19;
      v71 = v20;
      v72 = v18;
      v73 = 0x7FF8000000000000;
      std::vector<gnssTest::RfMeasurement>::__init_with_size[abi:ne200100]<gnssTest::RfMeasurement const*,gnssTest::RfMeasurement const*>();
    }

    v38 = "#fftd,mod,fOnRfMeasurement,nullptr";
LABEL_31:
    FireDeviceLog::DeviceLogBase(2, v38, v12, v13, v14, v15, v16, v17, v40);
    v39 = *MEMORY[0x29EDCA608];
    return;
  }

  if (*v9 != 8 && v11 != 8)
  {
    v37 = *MEMORY[0x29EDCA608];
    v23 = "#fftd,result,unsupportedTestingItem";
    goto LABEL_25;
  }

  v35 = *MEMORY[0x29EDCA608];
  v23 = "#fftd,result,incomplete";
  v36 = 6;
LABEL_26:

  FireDeviceLog::DeviceLogBase(v36, v23, a3, a4, a5, a6, a7, a8, a9);
}

void sub_29892399C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<gnssTest::FireDevice::initMessageHandler(std::function<void ()(gnss::Result)>)::$_4,std::allocator<gnssTest::FireDevice::initMessageHandler(std::function<void ()(gnss::Result)>)::$_4>,void ()(BlueFin::GL_FACT_TEST_STATUS *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<gnssTest::FireDevice::initMessageHandler(std::function<void ()(gnss::Result)>)::$_5,std::allocator<gnssTest::FireDevice::initMessageHandler(std::function<void ()(gnss::Result)>)::$_5>,void ()(gnss::Result)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F08BB0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<gnssTest::FireDevice::initMessageHandler(std::function<void ()(gnss::Result)>)::$_5,std::allocator<gnssTest::FireDevice::initMessageHandler(std::function<void ()(gnss::Result)>)::$_5>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<gnssTest::FireDevice::initMessageHandler(std::function<void ()(gnss::Result)>)::$_6,std::allocator<gnssTest::FireDevice::initMessageHandler(std::function<void ()(gnss::Result)>)::$_6>,void ()(gnss::Result)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F08C30;
  a2[1] = v2;
  return result;
}

void std::__function::__func<gnssTest::FireDevice::initMessageHandler(std::function<void ()(gnss::Result)>)::$_6,std::allocator<gnssTest::FireDevice::initMessageHandler(std::function<void ()(gnss::Result)>)::$_6>,void ()(gnss::Result)>::operator()(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = *(a1 + 8);
  v17 = *a2;
  FireDeviceLog::DeviceLogBase(3, "#fftd,%p,stopCompleted,status,%d", a3, a4, a5, a6, a7, a8, v9);
  if (*(v9 + 208) == 1 && (*(v9 + 220) != 1 || *(v9 + 216) == 4))
  {
    v16 = 1;
  }

  else
  {
    v16 = 8;
  }

  gnssTest::FireDevice::response(v9, v16, v10, v11, v12, v13, v14, v15, a9);
}

uint64_t std::__function::__func<gnssTest::FireDevice::initMessageHandler(std::function<void ()(gnss::Result)>)::$_6,std::allocator<gnssTest::FireDevice::initMessageHandler(std::function<void ()(gnss::Result)>)::$_6>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<gnssTest::FireDevice::initMessageHandler(std::function<void ()(gnss::Result)>)::$_7,std::allocator<gnssTest::FireDevice::initMessageHandler(std::function<void ()(gnss::Result)>)::$_7>,void ()(BlueFin::GL_STRESS_TEST_STATUS const*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F08CB0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<gnssTest::FireDevice::initMessageHandler(std::function<void ()(gnss::Result)>)::$_7,std::allocator<gnssTest::FireDevice::initMessageHandler(std::function<void ()(gnss::Result)>)::$_7>,void ()(BlueFin::GL_STRESS_TEST_STATUS const*)>::operator()(uint64_t a1, int32x2_t **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = *a2;
  if (!*a2)
  {
    v18 = "handleCommStressResponse,pStress,nullptr";
    goto LABEL_10;
  }

  v10 = *(a1 + 8);
  v9->i8[0];
  v26 = v9[3].u32[0];
  v27 = v9[3].u32[1];
  v24 = v9[5].u32[1];
  v25 = v9[5].u32[0];
  v22 = v9[4].u32[1];
  v23 = v9[4].u32[0];
  v20 = v9[1].u32[0];
  v21 = v9[1].u32[1];
  FireDeviceLog::DeviceLogBase(5, "fftd,stress,loop,%u,%s,load,kB:%u,elapsedMs:%u,Tx(half),kB/s,%u,Rx(half),kB/s,%u,Tx(full),kB/s,%u,Rx(full),kB/s,%u,PacketLost,%u,GarbageBytes:%u", a3, a4, a5, a6, a7, a8, v9->i32[1]);
  DeviceCommon::GetMachContinuousTime(v11);
  if (v9[3].i32[1] > 0xDu || v9[3].i32[0])
  {
    v13 = v10;
    v14 = 8;
  }

  else if (v9->i8[0] == 1 && *(v10 + 212) <= v9[1].i32[0])
  {
    v13 = v10;
    v14 = 1;
  }

  else
  {
    if (v12 <= *(v10 + 192) + *(v10 + 200))
    {
      goto LABEL_6;
    }

    v13 = v10;
    v14 = 6;
  }

  gnssTest::FireDevice::response(v13, v14, a3, a4, a5, a6, a7, a8, v19);
LABEL_6:
  v15 = *(v10 + 104);
  if (v15)
  {
    v16 = v9[2];
    v17.i64[0] = v16.u32[0];
    v17.i64[1] = v16.u32[1];
    v28 = vextq_s8(v17, v17, 8uLL);
    v29 = vrev64_s32(vmul_s32(v9[4], vdup_n_s32(0x3E8u)));
    v30 = 0;
    v31 = 0;
    (*(*v15 + 48))(v15, &v28);
    return;
  }

  v18 = "fftd,fOnLoopbackResult,nullptr";
LABEL_10:

  FireDeviceLog::DeviceLogBase(2, v18, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t std::__function::__func<gnssTest::FireDevice::initMessageHandler(std::function<void ()(gnss::Result)>)::$_7,std::allocator<gnssTest::FireDevice::initMessageHandler(std::function<void ()(gnss::Result)>)::$_7>,void ()(BlueFin::GL_STRESS_TEST_STATUS const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<gnssTest::FireDevice::periodic(int,std::function<void ()(std::unique_ptr<gnss::Fix>)>,std::function<void ()(gnss::Result)>)::$_0,std::allocator<gnssTest::FireDevice::periodic(int,std::function<void ()(std::unique_ptr<gnss::Fix>)>,std::function<void ()(gnss::Result)>)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F08D40;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<gnssTest::FireDevice::periodic(int,std::function<void ()(std::unique_ptr<gnss::Fix>)>,std::function<void ()(gnss::Result)>)::$_0,std::allocator<gnssTest::FireDevice::periodic(int,std::function<void ()(std::unique_ptr<gnss::Fix>)>,std::function<void ()(gnss::Result)>)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(gnssTest::CommLoopbackResult const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__func<std::function<void ()(gnssTest::CommLoopbackResult const&)>,std::allocator<std::function<void ()(gnssTest::CommLoopbackResult const&)>>,void ()(gnssTest::CommLoopbackResult)>::~__func(void *a1)
{
  *a1 = &unk_2A1F08DC0;
  std::__function::__value_func<void ()(gnssTest::CommLoopbackResult const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<std::function<void ()(gnssTest::CommLoopbackResult const&)>,std::allocator<std::function<void ()(gnssTest::CommLoopbackResult const&)>>,void ()(gnssTest::CommLoopbackResult)>::~__func(void *a1)
{
  *a1 = &unk_2A1F08DC0;
  std::__function::__value_func<void ()(gnssTest::CommLoopbackResult const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x29C292F70);
}

void std::__function::__func<std::function<void ()(gnssTest::CommLoopbackResult const&)>,std::allocator<std::function<void ()(gnssTest::CommLoopbackResult const&)>>,void ()(gnssTest::CommLoopbackResult)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(gnssTest::CommLoopbackResult const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<std::function<void ()(gnssTest::CommLoopbackResult const&)>,std::allocator<std::function<void ()(gnssTest::CommLoopbackResult const&)>>,void ()(gnssTest::CommLoopbackResult)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t std::__function::__func<std::function<void ()(gnssTest::CommLoopbackResult const&)>,std::allocator<std::function<void ()(gnssTest::CommLoopbackResult const&)>>,void ()(gnssTest::CommLoopbackResult)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(gnssTest::CommLoopbackResult const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__function::__func<gnssTest::FireDevice::timeMarkGpio(int,std::function<void ()(gnss::Result)>)::$_0,std::allocator<gnssTest::FireDevice::timeMarkGpio(int,std::function<void ()(gnss::Result)>)::$_0>,void ()(std::unique_ptr<gnss::Fix>)>::operator()(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  *a2 = 0;
  FireDeviceLog::DeviceLogBase(6, "#fftd,tm,fixCallback", a3, a4, a5, a6, a7, a8, v9);
  if (v8)
  {

    JUMPOUT(0x29C292F70);
  }
}

void sub_2989243FC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    MEMORY[0x29C292F70](v1, 0x1000C4043D32D5CLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<gnssTest::FireDevice::timeMarkGpio(int,std::function<void ()(gnss::Result)>)::$_0,std::allocator<gnssTest::FireDevice::timeMarkGpio(int,std::function<void ()(gnss::Result)>)::$_0>,void ()(std::unique_ptr<gnss::Fix>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<gnssTest::FireDevice::setTimeTransferCallback(void)::$_0,std::allocator<gnssTest::FireDevice::setTimeTransferCallback(void)::$_0>,void ()(BlueFin::GL_SYNCIN_STATUS)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F08F40;
  a2[1] = v2;
  return result;
}

void std::__function::__func<gnssTest::FireDevice::setTimeTransferCallback(void)::$_0,std::allocator<gnssTest::FireDevice::setTimeTransferCallback(void)::$_0>,void ()(BlueFin::GL_SYNCIN_STATUS)>::operator()(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  v9 = *(a1 + 8);
  FireDeviceLog::DeviceLogBase(6, "#fftd,syncInArm,status,%d", a3, a4, a5, a6, a7, a8, *a2);
  if (!v8)
  {
    if (!FireResourceMgr::fInstance)
    {
      operator new();
    }

    (*(**FireResourceMgr::fInstance + 144))(v16);
    FireDeviceLog::DeviceLogBase(3, "#fftd,pulse_sent,status,%d", v10, v11, v12, v13, v14, v15, 0);
    *(v9 + 216) = 2;
    *(v9 + 220) = 1;
  }
}

uint64_t std::__function::__func<gnssTest::FireDevice::setTimeTransferCallback(void)::$_0,std::allocator<gnssTest::FireDevice::setTimeTransferCallback(void)::$_0>,void ()(BlueFin::GL_SYNCIN_STATUS)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<gnssTest::FireDevice::setTimeTransferCallback(void)::$_1,std::allocator<gnssTest::FireDevice::setTimeTransferCallback(void)::$_1>,void ()(BlueFin::GL_SYNCIN_STATUS,double)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F08FC0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<gnssTest::FireDevice::setTimeTransferCallback(void)::$_1,std::allocator<gnssTest::FireDevice::setTimeTransferCallback(void)::$_1>,void ()(BlueFin::GL_SYNCIN_STATUS,double)>::operator()(uint64_t a1, int *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  v9 = *(a1 + 8);
  v18 = *a3;
  FireDeviceLog::DeviceLogBase(6, "#fftd,tm,syncInLatch,status,%d,time,%.3f", a3, a4, a5, a6, a7, a8, *a2);
  if (v8 == 1)
  {
    v16 = *(*(v9 + 8) + 1296);
    if (!v16)
    {
      FireDeviceLog::DeviceLogBase(1, "#fftd,tm,gpsd,nullptr", v10, v11, v12, v13, v14, v15, v17);
      DeviceFaultNotify("FireFactoryTestDevice.cpp", 407, "operator()", "#fftd,tm,gpsd,nullptr");
      DeviceFaultNotify("FireFactoryTestDevice.cpp", 407, "operator()", "#fftd,tm,gpsd,nullptr");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "FireFactoryTestDevice.cpp", 407, "#fftd,tm,gpsd,nullptr");
    }

    (*(*v16 + 376))(v16, v19, 2);
    *(v9 + 216) = 3;
    *(v9 + 220) = 1;
  }
}

uint64_t std::__function::__func<gnssTest::FireDevice::setTimeTransferCallback(void)::$_1,std::allocator<gnssTest::FireDevice::setTimeTransferCallback(void)::$_1>,void ()(BlueFin::GL_SYNCIN_STATUS,double)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<gnssTest::FireDevice::setTimeTransferCallback(void)::$_2,std::allocator<gnssTest::FireDevice::setTimeTransferCallback(void)::$_2>,void ()(BlueFin::GL_SYNCIN_STATUS,BlueFin::GL_TIME const*,BlueFin::GL_TIME_VALIDITY,double,BOOL,signed char)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F09040;
  a2[1] = v2;
  return result;
}

void std::__function::__func<gnssTest::FireDevice::setTimeTransferCallback(void)::$_2,std::allocator<gnssTest::FireDevice::setTimeTransferCallback(void)::$_2>,void ()(BlueFin::GL_SYNCIN_STATUS,BlueFin::GL_TIME const*,BlueFin::GL_TIME_VALIDITY,double,BOOL,signed char)>::operator()(uint64_t a1, _DWORD *a2, uint64_t a3, unsigned int *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 8);
  v11 = *a5;
  v9 = *a4;
  v10 = *(*a3 + 4);
  FireDeviceLog::DeviceLogBase(6, "#fftd,tm,report,status,%d,valid,%d,tow,%d,lms,%6.1f", a3, a4, a5, a6, a7, a8, *a2);
  *(v8 + 216) = 4;
  *(v8 + 220) = 1;
}

uint64_t std::__function::__func<gnssTest::FireDevice::setTimeTransferCallback(void)::$_2,std::allocator<gnssTest::FireDevice::setTimeTransferCallback(void)::$_2>,void ()(BlueFin::GL_SYNCIN_STATUS,BlueFin::GL_TIME const*,BlueFin::GL_TIME_VALIDITY,double,BOOL,signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(std::string const&,std::string const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__func<gnssTest::FireDevice::CommPing::start(int,std::function<void ()(std::string const&,std::string const&)>,std::function<void ()(gnss::Result)>)::$_0,std::allocator<gnssTest::FireDevice::CommPing::start(int,std::function<void ()(std::string const&,std::string const&)>,std::function<void ()(gnss::Result)>)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F090C0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<gnssTest::FireDevice::CommPing::start(int,std::function<void ()(std::string const&,std::string const&)>,std::function<void ()(gnss::Result)>)::$_0,std::allocator<gnssTest::FireDevice::CommPing::start(int,std::function<void ()(std::string const&,std::string const&)>,std::function<void ()(gnss::Result)>)::$_0>,void ()(void)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = *(a1 + 8);
  FireDeviceLog::DeviceLogBase(5, "commping,tick,stage,%d", a3, a4, a5, a6, a7, a8, *v9);

  gnssTest::FireDevice::CommPing::dataProc(v9, v10, v11, v12, v13, v14, v15, v16, a9);
}

uint64_t std::__function::__func<gnssTest::FireDevice::CommPing::start(int,std::function<void ()(std::string const&,std::string const&)>,std::function<void ()(gnss::Result)>)::$_0,std::allocator<gnssTest::FireDevice::CommPing::start(int,std::function<void ()(std::string const&,std::string const&)>,std::function<void ()(gnss::Result)>)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<gnssTest::FireDevice::CommPing::start(int,std::function<void ()(std::string const&,std::string const&)>,std::function<void ()(gnss::Result)>)::$_1,std::allocator<gnssTest::FireDevice::CommPing::start(int,std::function<void ()(std::string const&,std::string const&)>,std::function<void ()(gnss::Result)>)::$_1>,void ()(unsigned char *,unsigned long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F09140;
  a2[1] = v2;
  return result;
}

void std::__function::__func<gnssTest::FireDevice::CommPing::start(int,std::function<void ()(std::string const&,std::string const&)>,std::function<void ()(gnss::Result)>)::$_1,std::allocator<gnssTest::FireDevice::CommPing::start(int,std::function<void ()(std::string const&,std::string const&)>,std::function<void ()(gnss::Result)>)::$_1>,void ()(unsigned char *,unsigned long)>::operator()(uint64_t a1, gnss::fire **a2, size_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  v9 = *a3;
  v10 = *(a1 + 8);
  v26 = *(v10 + 264);
  v27 = *(v10 + 4);
  FireDeviceLog::DeviceLogBase(5, "readCallback,size,%zu,nread,%zd,enableRead,%d", a3, a4, a5, a6, a7, a8, *a3);
  gnss::fire::charToHex(v8, v9, 44, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    LOBYTE(p_p) = __p.__r_.__value_.__s.__data_[0];
  }

  FireDeviceLog::DeviceLogBase(5, "ReceivedBytesHex,%s", v11, v12, v13, v14, v15, v16, p_p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(v10 + 4) == 1)
  {
    memcpy((v10 + *(v10 + 264) + 6), v8, v9);
    *(v10 + 264) += v9;
  }

  gnssTest::FireDevice::CommPing::dataProc(v10, v18, v19, v20, v21, v22, v23, v24, v25);
}

void sub_298924CA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<gnssTest::FireDevice::CommPing::start(int,std::function<void ()(std::string const&,std::string const&)>,std::function<void ()(gnss::Result)>)::$_1,std::allocator<gnssTest::FireDevice::CommPing::start(int,std::function<void ()(std::string const&,std::string const&)>,std::function<void ()(gnss::Result)>)::$_1>,void ()(unsigned char *,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<gnssTest::FireDevice::handleLocationResponse(BlueFin::GL_FIX_STATUS const*)::$_0,std::allocator<gnssTest::FireDevice::handleLocationResponse(BlueFin::GL_FIX_STATUS const*)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F091C0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<gnssTest::FireDevice::handleLocationResponse(BlueFin::GL_FIX_STATUS const*)::$_0,std::allocator<gnssTest::FireDevice::handleLocationResponse(BlueFin::GL_FIX_STATUS const*)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_298924E94(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *FireResourceMgr::setInterface(uint64_t a1, char ***a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  *a2 = 0;
  v10 = *(a1 + 32);
  *(a1 + 32) = v9;
  if (v10)
  {
    (*(*v10 + 8))(v10);
    v9 = *(a1 + 32);
  }

  if (!v9)
  {
    *(a1 + 40) = 0;
LABEL_7:
    FireDeviceLog::DeviceLogBase(1, "Extensions dynamic cast failed,%p", a3, a4, a5, a6, a7, a8, v9);
    DeviceFaultNotify("FireResourceMgr.cpp", 45, "setInterface", "Extensions dynamic cast failed,%p");
    DeviceFaultNotify("FireResourceMgr.cpp", 45, "setInterface", "Extensions dynamic cast failed,%p");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "FireResourceMgr.cpp", 45, "Extensions dynamic cast failed,%p");
  }

  v11 = **v9;
  *(a1 + 40) = result;
  if (!result)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t BlueFin::BigMatrix::mult(uint64_t this, BOOL a2, const BlueFin::BigMatrix *a3, const BlueFin::BigMatrix *a4)
{
  if (this == a3)
  {
    v20 = "this != &mLeft";
    DeviceFaultNotify("glpe_matrix_olympic.cpp", 172, "mult", "this != &mLeft");
    v21 = 172;
    goto LABEL_17;
  }

  if (this == a4)
  {
    v20 = "this != &mRight";
    DeviceFaultNotify("glpe_matrix_olympic.cpp", 173, "mult", "this != &mRight");
    v21 = 173;
    goto LABEL_17;
  }

  if (*(a3 + 4) != *(a4 + 4))
  {
    v20 = "mLeft.m_NbRows == mRight.m_NbRows";
    DeviceFaultNotify("glpe_matrix_olympic.cpp", 176, "mult", "mLeft.m_NbRows == mRight.m_NbRows");
    v21 = 176;
LABEL_17:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix_olympic.cpp", v21, v20);
  }

  v4 = *(a4 + 5);
  *(this + 16) = *(a3 + 5);
  *(this + 20) = v4;
  v5 = *(a3 + 5);
  if (v5 >= 1)
  {
    v6 = *(a3 + 4);
    v7 = v5 + 1;
    v8 = 1;
    do
    {
      if (v4 >= 1)
      {
        v9 = *(*(this + 8) + 8 * v8);
        v10 = *(a4 + 1) + 8;
        v11 = *(a3 + 1) + 8;
        v12 = 1;
        do
        {
          v13 = 0.0;
          if (v6 >= 1)
          {
            v14 = v11;
            v15 = v10;
            v16 = (v6 + 1) - 1;
            do
            {
              v17 = *v14++;
              v18 = *(v17 + 8 * v8);
              v19 = *v15++;
              v13 = v13 + v18 * *(v19 + 8 * v12);
              --v16;
            }

            while (v16);
          }

          *(v9 + 8 * v12++) = v13;
        }

        while (v12 != v4 + 1);
      }

      ++v8;
    }

    while (v8 != v7);
  }

  return this;
}

uint64_t BlueFin::GlPeDgpsData::SerializeImpl(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v17 = *MEMORY[0x29EDCA608];
  if (v3 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (v3 >= 2)
  {
    DeviceFaultNotify("glpe_dgps_data.cpp", 32, "SerializeImpl", "ucVersion == 1");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_dgps_data.cpp", 32, "ucVersion == 1");
  }

  v5 = v2;
  v6 = v1;
  if (v2 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v7 = *(v1 + 16);
    if (*(v1 + 16))
    {
      v8 = 0;
      do
      {
        if (v7 >= 0x13EC)
        {
          v9 = 5100;
        }

        else
        {
          v9 = v7;
        }

        v13 = 49;
        v14 = v4;
        v15 = 0x1000000000000;
        v12 = &unk_2A1F092C0;
        v16 = v4;
        BlueFin::GlSysLogEntry::PutBuffer(&v12, (*(v6 + 8) + v8), v9);
        BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v12, v5, 4);
        v7 -= v9;
        v8 += v9;
      }

      while (v8 < *(v6 + 16));
    }
  }

  v10 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t BlueFin::GlPeDgpsData::Deserialize(unsigned __int8 **this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 49)
  {
    DeviceFaultNotify("glpe_dgps_data.cpp", 53, "Deserialize", "otEntry.eType == GLPE_LOG_ENTRY_DGPS");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_dgps_data.cpp", 53, "otEntry.eType == GLPE_LOG_ENTRY_DGPS");
  }

  if (*(a2 + 12) > 1u)
  {
    return 0;
  }

  Buffer = BlueFin::GlSysLogEntry::GetBuffer(a2, this[1], *(this + 8));
  v4 = this[3];
  if (v4)
  {
    *v4 = Buffer;
  }

  if (Buffer > *(this + 8))
  {
    GlCustomLog(11, " OVERFLOW\n");
    return 0;
  }

  return 1;
}

uint64_t BlueFin::GlGnssSet::operator~@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = 0;
  *(a2 + 168) = a2;
  do
  {
    v5 = *(a2 + 168) + v4;
    *(v5 + 12) = 0;
    *v5 = v5 + 12;
    *(v5 + 8) = 2;
    v4 += 24;
  }

  while (v4 != 168);
  v6 = 0;
  v7 = qword_298A31920;
  do
  {
    v8 = *(a1 + 168);
    v9 = *v7++;
    ULong = BlueFin::GlSetBase::GetULong((v8 + v6), 1u);
    v11 = (2 * ~(-1 << v9)) & ~(BlueFin::GlSetBase::GetULong((v8 + v6), 0) | (ULong << 32));
    BlueFin::GlGnssIdSet::GlGnssIdSet(v13, SBYTE4(v11), v11);
    result = BlueFin::GlSetBase::operator=(*(a2 + 168) + v6, v13);
    *(result + 12) = v14;
    v6 += 24;
  }

  while (v6 != 168);
  return result;
}

uint64_t BlueFin::GlGnssSet::Add(uint64_t result, unsigned int a2, unsigned __int8 *a3)
{
  if (a2 > 6 || (v3 = *a3, (v3 - 64) <= 0xFFFFFFC0))
  {
    DeviceFaultNotify("glgnss.cpp", 244, "Add", "(GlIntU32)eGnss < NUM_GNSS && rtGnssId.isValid()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glgnss.cpp", 244, "(GlIntU32)eGnss < NUM_GNSS && rtGnssId.isValid()");
  }

  v4 = *(*(result + 168) + 24 * a2);
  *(v4 + ((v3 >> 3) & 0x1C)) |= 1 << v3;
  return result;
}

uint64_t BlueFin::GlGnssSet::Remove(uint64_t a1, unsigned int a2, unsigned __int8 *a3)
{
  if (a2 > 6 || *a3 - 64 <= 0xFFFFFFC0)
  {
    DeviceFaultNotify("glgnss.cpp", 251, "Remove", "(GlIntU32)eGnss < NUM_GNSS && rtGnssId.isValid()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glgnss.cpp", 251, "(GlIntU32)eGnss < NUM_GNSS && rtGnssId.isValid()");
  }

  v4 = *(a1 + 168) + 24 * a2;
  v5 = *a3;

  return BlueFin::GlSetBase::Remove(v4, v5);
}

unint64_t BlueFin::GlGnss::GetGnssCharCode(unsigned int a1)
{
  v1 = 0x4E454251525347uLL >> (8 * a1);
  if (a1 >= 7)
  {
    LOBYTE(v1) = 120;
  }

  return v1 & 0x7F;
}

const char *BlueFin::GlGnss::GetGnssName(unsigned int a1)
{
  if (a1 > 6)
  {
    return "INV";
  }

  else
  {
    return off_29EEAC1E8[a1];
  }
}

uint64_t BlueFin::GlImplGnss::fromImplSvId(BlueFin::GlImplGnss *this)
{
  v1 = &BlueFin::GlImplGnss::m_aucImplGnssTable;
  v2 = 8;
  for (i = &byte_298A319FA; ; ++i)
  {
    v4 = *(i - 1);
    v5 = this >= v4;
    v6 = this - v4;
    if (v6 != 0 && v5 && *i >= this)
    {
      break;
    }

    ++v1;
    if (!--v2)
    {
      return 0;
    }
  }

  if (v2 == 4)
  {
    return 0;
  }

  return (v6 + *(&BlueFin::s_aucEnabledSvIdTable + *v1));
}

uint64_t BlueFin::GlImplGnss::toImplSvId(BlueFin::GlImplGnss *this)
{
  v1 = BlueFin::GlImplGnss::m_aucEnabledGnssTable;
  v2 = 7;
  for (i = &byte_298A31A03; ; ++i)
  {
    v4 = *(i - 1);
    v5 = this >= v4;
    v6 = this - v4;
    if (v6 != 0 && v5 && *i >= this)
    {
      break;
    }

    ++v1;
    if (!--v2)
    {
      return 0;
    }
  }

  return (v6 + *(&BlueFin::s_aucImplSvIdTable + *v1));
}

uint64_t _GLOBAL__sub_I_glimplgnss_cpp()
{
  v0 = 0;
  v40 = *MEMORY[0x29EDCA608];
  memset(v39, 0, sizeof(v39));
  v1 = vdupq_n_s64(0x4BuLL);
  do
  {
    v2 = vdupq_n_s64(v0 * 16);
    v3 = vorrq_s8(v2, xmmword_298A319D0);
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v1, v3)), 2), 2).u8[0])
    {
      BYTE1(v39[v0]) = (v0 * 16) | 1;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x4BuLL), v3)), 2), 2).i8[1])
    {
      BYTE2(v39[v0]) = (v0 * 16) | 2;
    }

    if (vuzp1_s8(vuzp1_s16(2, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x4BuLL), vorrq_s8(v2, xmmword_298A319C0)))), 2).i8[2])
    {
      BYTE3(v39[v0]) = (v0 * 16) | 3;
      BYTE4(v39[v0]) = (v0 * 16) | 4;
    }

    v4 = vorrq_s8(v2, xmmword_298A319B0);
    if (vuzp1_s8(2, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x4BuLL), v4)), 2)).i32[1])
    {
      BYTE5(v39[v0]) = (v0 * 16) | 5;
    }

    if (vuzp1_s8(2, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x4BuLL), v4)), 2)).i8[5])
    {
      BYTE6(v39[v0]) = (v0 * 16) | 6;
    }

    if (vuzp1_s8(2, vuzp1_s16(2, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x4BuLL), vorrq_s8(v2, xmmword_298A319A0))))).i8[6])
    {
      BYTE7(v39[v0]) = (v0 * 16) | 7;
      BYTE8(v39[v0]) = (v0 * 16) | 8;
    }

    v5 = vorrq_s8(v2, xmmword_298A31990);
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x4BuLL), v5)), 2), 2).u8[0])
    {
      BYTE9(v39[v0]) = (v0 * 16) | 9;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x4BuLL), v5)), 2), 2).i8[1])
    {
      BYTE10(v39[v0]) = (v0 * 16) | 0xA;
    }

    if (vuzp1_s8(vuzp1_s16(2, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x4BuLL), vorrq_s8(v2, xmmword_298A31980)))), 2).i8[2])
    {
      BYTE11(v39[v0]) = (v0 * 16) | 0xB;
      BYTE12(v39[v0]) = (v0 * 16) | 0xC;
    }

    v6 = vorrq_s8(v2, xmmword_298A31970);
    if (vuzp1_s8(2, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x4BuLL), v6)), 2)).i32[1])
    {
      BYTE13(v39[v0]) = (v0 * 16) | 0xD;
    }

    if (vuzp1_s8(2, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x4BuLL), v6)), 2)).i8[5])
    {
      BYTE14(v39[v0]) = (v0 * 16) | 0xE;
    }

    if (vuzp1_s8(2, vuzp1_s16(2, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x4BuLL), vorrq_s8(v2, xmmword_298A31960))))).i8[6])
    {
      HIBYTE(v39[v0]) = (v0 * 16) | 0xF;
      LOBYTE(v39[v0 + 1]) = v0 * 16 + 16;
    }

    ++v0;
  }

  while (v0 != 5);
  v7 = 0;
  v8 = vdupq_n_s64(0x25uLL);
  do
  {
    v9 = vdupq_n_s64(v7);
    v10 = vorrq_s8(v9, xmmword_298A319D0);
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v8, v10)), 2), 2).u8[0])
    {
      *(&v39[5] + v7 + 1) = v7 + 76;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x25uLL), v10)), 2), 2).i8[1])
    {
      *(&v39[5] + v7 + 2) = v7 + 77;
    }

    if (vuzp1_s8(vuzp1_s16(2, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x25uLL), vorrq_s8(v9, xmmword_298A319C0)))), 2).i8[2])
    {
      *(&v39[5] + v7 + 3) = v7 + 78;
      *(&v39[5] + v7 + 4) = v7 + 79;
    }

    v11 = vorrq_s8(v9, xmmword_298A319B0);
    if (vuzp1_s8(2, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x25uLL), v11)), 2)).i32[1])
    {
      *(&v39[5] + v7 + 5) = v7 + 80;
    }

    if (vuzp1_s8(2, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x25uLL), v11)), 2)).i8[5])
    {
      *(&v39[5] + v7 + 6) = v7 + 81;
    }

    if (vuzp1_s8(2, vuzp1_s16(2, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x25uLL), vorrq_s8(v9, xmmword_298A319A0))))).i8[6])
    {
      *(&v39[5] + v7 + 7) = v7 + 82;
      *(&v39[5] + v7 + 8) = v7 + 83;
    }

    v7 += 8;
  }

  while (v7 != 40);
  v12 = 0;
  v13 = vdupq_n_s64(0x32uLL);
  do
  {
    v14 = vdupq_n_s64(v12);
    v15 = vorrq_s8(v14, xmmword_298A319D0);
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v13, v15)), 2).u8[0])
    {
      *(&v39[7] + v12 + 6) = v12 - 117;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x32uLL), v15)), 2).i8[2])
    {
      *(&v39[7] + v12 + 7) = v12 - 116;
    }

    if (vuzp1_s16(2, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x32uLL), vorrq_s8(v14, xmmword_298A319C0)))).i32[1])
    {
      *(&v39[7] + v12 + 8) = v12 - 115;
      *(&v39[7] + v12 + 9) = v12 - 114;
    }

    v12 += 4;
  }

  while (v12 != 52);
  v16 = 0;
  memset(v38, 0, sizeof(v38));
  v17 = vdupq_n_s64(0x4BuLL);
  do
  {
    v18 = vdupq_n_s64(v16 * 16);
    v19 = vorrq_s8(v18, xmmword_298A319D0);
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v17, v19)), 2), 2).u8[0])
    {
      BYTE1(v38[v16]) = (v16 * 16) | 1;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x4BuLL), v19)), 2), 2).i8[1])
    {
      BYTE2(v38[v16]) = (v16 * 16) | 2;
    }

    if (vuzp1_s8(vuzp1_s16(2, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x4BuLL), vorrq_s8(v18, xmmword_298A319C0)))), 2).i8[2])
    {
      BYTE3(v38[v16]) = (v16 * 16) | 3;
      BYTE4(v38[v16]) = (v16 * 16) | 4;
    }

    v20 = vorrq_s8(v18, xmmword_298A319B0);
    if (vuzp1_s8(2, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x4BuLL), v20)), 2)).i32[1])
    {
      BYTE5(v38[v16]) = (v16 * 16) | 5;
    }

    if (vuzp1_s8(2, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x4BuLL), v20)), 2)).i8[5])
    {
      BYTE6(v38[v16]) = (v16 * 16) | 6;
    }

    if (vuzp1_s8(2, vuzp1_s16(2, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x4BuLL), vorrq_s8(v18, xmmword_298A319A0))))).i8[6])
    {
      BYTE7(v38[v16]) = (v16 * 16) | 7;
      BYTE8(v38[v16]) = (v16 * 16) | 8;
    }

    v21 = vorrq_s8(v18, xmmword_298A31990);
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x4BuLL), v21)), 2), 2).u8[0])
    {
      BYTE9(v38[v16]) = (v16 * 16) | 9;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x4BuLL), v21)), 2), 2).i8[1])
    {
      BYTE10(v38[v16]) = (v16 * 16) | 0xA;
    }

    if (vuzp1_s8(vuzp1_s16(2, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x4BuLL), vorrq_s8(v18, xmmword_298A31980)))), 2).i8[2])
    {
      BYTE11(v38[v16]) = (v16 * 16) | 0xB;
      BYTE12(v38[v16]) = (v16 * 16) | 0xC;
    }

    v22 = vorrq_s8(v18, xmmword_298A31970);
    if (vuzp1_s8(2, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x4BuLL), v22)), 2)).i32[1])
    {
      BYTE13(v38[v16]) = (v16 * 16) | 0xD;
    }

    if (vuzp1_s8(2, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x4BuLL), v22)), 2)).i8[5])
    {
      BYTE14(v38[v16]) = (v16 * 16) | 0xE;
    }

    if (vuzp1_s8(2, vuzp1_s16(2, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x4BuLL), vorrq_s8(v18, xmmword_298A31960))))).i8[6])
    {
      HIBYTE(v38[v16]) = (v16 * 16) | 0xF;
      LOBYTE(v38[v16 + 1]) = v16 * 16 + 16;
    }

    ++v16;
  }

  while (v16 != 5);
  v23 = 0;
  v24 = vdupq_n_s64(0x25uLL);
  do
  {
    v25 = vdupq_n_s64(v23);
    v26 = vorrq_s8(v25, xmmword_298A319D0);
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v24, v26)), 2), 2).u8[0])
    {
      *(&v38[4] + v23 + 12) = v23 + 81;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x25uLL), v26)), 2), 2).i8[1])
    {
      *(&v38[4] + v23 + 13) = v23 + 82;
    }

    if (vuzp1_s8(vuzp1_s16(2, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x25uLL), vorrq_s8(v25, xmmword_298A319C0)))), 2).i8[2])
    {
      *(&v38[4] + v23 + 14) = v23 + 83;
      *(&v38[4] + v23 + 15) = v23 + 84;
    }

    v27 = vorrq_s8(v25, xmmword_298A319B0);
    if (vuzp1_s8(2, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x25uLL), v27)), 2)).i32[1])
    {
      *(&v38[5] + v23) = v23 + 85;
    }

    if (vuzp1_s8(2, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x25uLL), v27)), 2)).i8[5])
    {
      *(&v38[5] + v23 + 1) = v23 + 86;
    }

    if (vuzp1_s8(2, vuzp1_s16(2, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x25uLL), vorrq_s8(v25, xmmword_298A319A0))))).i8[6])
    {
      *(&v38[5] + v23 + 2) = v23 + 87;
      *(&v38[5] + v23 + 3) = v23 + 88;
    }

    v23 += 8;
  }

  while (v23 != 40);
  v28 = 0;
  v29 = vdupq_n_s64(0x32uLL);
  do
  {
    v30 = vdupq_n_s64(v28);
    v31 = vorrq_s8(v30, xmmword_298A319D0);
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v29, v31)), 2).u8[0])
    {
      *(&v38[8] + v28 + 11) = v28 + 118;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x32uLL), v31)), 2).i8[2])
    {
      *(&v38[8] + v28 + 12) = v28 + 119;
    }

    if (vuzp1_s16(2, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x32uLL), vorrq_s8(v30, xmmword_298A319C0)))).i32[1])
    {
      *(&v38[8] + v28 + 13) = v28 + 120;
      *(&v38[8] + v28 + 14) = v28 + 121;
    }

    v28 += 4;
  }

  while (v28 != 52);
  v32 = 1u;
  do
  {
    *(&BlueFin::GlImplGnss::m_aucFromImplSvIdToEnabledSvId + v32) = BlueFin::GlImplGnss::fromImplSvId(*(v39 + v32));
    ++v32;
  }

  while (v32 != 168);
  for (i = 0; i != 188; ++i)
  {
    *(&BlueFin::GlImplGnss::m_aucFromImplSvIdToEnabledSvId + i + 257) = BlueFin::GlImplGnss::fromImplSvId((i + 1));
  }

  v34 = 1u;
  do
  {
    *(&BlueFin::GlImplGnss::m_aucFromEnabledSvIdToImplSvId + v34) = *(v38 + BlueFin::GlImplGnss::toImplSvId(v34));
    ++v34;
  }

  while (v34 != 189);
  for (j = 0; j != 188; ++j)
  {
    result = BlueFin::GlImplGnss::toImplSvId((j + 1));
    *(&BlueFin::GlImplGnss::m_aucFromEnabledSvIdToImplSvId + j + 257) = result;
  }

  BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion = 1;
  v37 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlIqData::Svid2EnumGnssIQ(uint64_t a1, unsigned __int8 *a2, int a3)
{
  if (a3 != 3)
  {
    if (a3 == 2)
    {
      if (BlueFin::GlSvId::s_aucSvId2gnss[*a2] == 5)
      {
        v5 = 6;
      }

      else
      {
        v5 = 8;
      }

      if (BlueFin::GlSvId::s_aucSvId2gnss[*a2])
      {
        return v5;
      }

      else
      {
        return 5;
      }
    }

    if (a3)
    {
      return 8;
    }
  }

  v3 = BlueFin::GlSvId::s_aucSvId2gnss[*a2];
  if (v3 >= 7 || ((0x7Du >> v3) & 1) == 0)
  {
    DeviceFaultNotify("gliqdata.cpp", 52, "Svid2EnumGnssIQ", "false");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gliqdata.cpp", 52, "false");
  }

  return dword_298A31A40[v3];
}

uint64_t BlueFin::GlSatAidInfo::SerializeImpl(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v30 = *MEMORY[0x29EDCA608];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = 10;
  }

  if (v4 >= 0xB)
  {
    DeviceFaultNotify("glmepeif_types.cpp", 271, "SerializeImpl", "ucVersion >= 1 && ucVersion <= GlSatAidInfo::LOG_ENTRY_VERSION");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmepeif_types.cpp", 271, "ucVersion >= 1 && ucVersion <= GlSatAidInfo::LOG_ENTRY_VERSION");
  }

  v5 = v1;
  if (v2 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v6 = 0;
    v26 = 23;
    v27 = v4;
    v28 = 0x1000000000000;
    v25 = &unk_2A1F092C0;
    v29 = v4;
    v7 = *(v1 + 8808);
    v8 = 91;
    do
    {
      v9 = *v7;
      v7 += 96;
      if (v9)
      {
        ++v6;
      }

      --v8;
    }

    while (v8);
    v20 = v2;
    BlueFin::GlSysLogEntry::PutU8(&v25, v6);
    BlueFin::GlSysLogEntry::PutU32(&v25, *(v5 + 36));
    BlueFin::GlSysLogEntry::PutD64(&v25, *(v5 + 8));
    if (v4 <= 6)
    {
      if (v4 == 6)
      {
        BlueFin::GlSysLogEntry::PutD64(&v25, *(v5 + 16));
        BlueFin::GlSysLogEntry::PutD64(&v25, *(v5 + 24));
        BlueFin::GlSysLogEntry::PutD64(&v25, *(v5 + 32));
      }
    }

    else
    {
      BlueFin::GlSysLogEntry::PutF32(&v25, *(v5 + 16));
      BlueFin::GlSysLogEntry::PutD64(&v25, *(v5 + 24));
      BlueFin::GlSysLogEntry::PutF32(&v25, *(v5 + 32));
      if (v4 == 10)
      {
        BlueFin::GlSysLogEntry::PutU8(&v25, *(v5 + 8800));
      }
    }

    v10 = 91;
    v11 = 92;
    while (1)
    {
      v12 = *(v5 + 8808);
      if (*(v12 + v11 - 92))
      {
        break;
      }

LABEL_35:
      v11 += 96;
      if (!--v10)
      {
        BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v25, v20, 4);
        goto LABEL_37;
      }
    }

    v13 = *(&BlueFin::GlImplGnss::m_aucFromEnabledSvIdToImplSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + *(v12 + v11 - 92));
    if (v4 < 5)
    {
      BlueFin::GlSysLogEntry::PutS16(&v25, v13);
      BlueFin::GlSysLogEntry::PutS32(&v25, *(v12 + v11 - 72));
      if (v4 <= 3)
      {
        v15 = *(v12 + v11 - 68);
        if (v4 == 3)
        {
          BlueFin::GlSysLogEntry::PutU32(&v25, v15);
          v16 = 0;
        }

        else
        {
          v16 = v15 >> (v4 == 1);
        }

        BlueFin::GlSysLogEntry::PutU32(&v25, v16);
        BlueFin::GlSysLogEntry::PutU32(&v25, 0);
        BlueFin::GlSysLogEntry::PutD64(&v25, *(v12 + v11 - 60));
        goto LABEL_29;
      }
    }

    else
    {
      BlueFin::GlSysLogEntry::PutU8(&v25, v13);
      BlueFin::GlSysLogEntry::PutU8(&v25, BlueFin::GlImplGnss::m_aucEnabledGnssTable[*(v12 + v11 - 88)]);
      BlueFin::GlSysLogEntry::PutU8(&v25, *(v12 + v11 - 84));
      BlueFin::GlSysLogEntry::PutS32(&v25, *(v12 + v11 - 72));
    }

    v14 = *(v12 + v11 - 68);
    v21 = &v23;
    v22 = 3;
    v23 = v14;
    v24 = 0;
    BlueFin::GlSysLogEntry::PutGlSet(&v25, &v21);
    BlueFin::GlSysLogEntry::PutD64(&v25, *(v12 + v11 - 60));
    if (v4 > 6)
    {
      BlueFin::GlSysLogEntry::PutF32(&v25, *(v12 + v11 - 52));
      BlueFin::GlSysLogEntry::PutF32(&v25, *(v12 + v11 - 48));
      BlueFin::GlSysLogEntry::PutF32(&v25, *(v12 + v11 - 44));
      BlueFin::GlSysLogEntry::PutF32(&v25, *(v12 + v11 - 40));
      goto LABEL_30;
    }

LABEL_29:
    BlueFin::GlSysLogEntry::PutD64(&v25, *(v12 + v11 - 52));
    BlueFin::GlSysLogEntry::PutD64(&v25, *(v12 + v11 - 48));
    BlueFin::GlSysLogEntry::PutD64(&v25, *(v12 + v11 - 44));
    BlueFin::GlSysLogEntry::PutD64(&v25, *(v12 + v11 - 40));
LABEL_30:
    BlueFin::GlSysLogEntry::PutU16(&v25, *(v12 + v11 - 20));
    BlueFin::GlSysLogEntry::PutS16(&v25, *(v12 + v11 - 18));
    v17 = *(v12 + v11 - 80);
    if (v4 == 1)
    {
      BlueFin::GlSysLogEntry::PutU32(&v25, v17 - 1);
    }

    else
    {
      BlueFin::GlSysLogEntry::PutU32(&v25, v17);
      if (v4 > 7)
      {
        BlueFin::GlSysLogEntry::PutF32(&v25, *(v12 + v11));
        if (v4 != 8)
        {
          BlueFin::GlSysLogEntry::PutU8(&v25, *(v12 + v11 - 76));
        }
      }
    }

    goto LABEL_35;
  }

LABEL_37:
  v18 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t BlueFin::GlSatAidInfo::Deserialize(BlueFin::GlSatAidInfo *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 23 || *(a2 + 12) > 0xAu)
  {
    return 0;
  }

  U8 = BlueFin::GlSysLogEntry::GetU8(a2);
  *(this + 9) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(this + 1) = BlueFin::GlSysLogEntry::GetD64(a2);
  v6 = *(a2 + 12);
  if (v6 < 7)
  {
    if (v6 != 6)
    {
      goto LABEL_10;
    }

    D64 = BlueFin::GlSysLogEntry::GetD64(a2);
    *(this + 4) = D64;
    *(this + 3) = BlueFin::GlSysLogEntry::GetD64(a2);
    F32 = BlueFin::GlSysLogEntry::GetD64(a2);
  }

  else
  {
    *(this + 4) = BlueFin::GlSysLogEntry::GetF32(a2);
    *(this + 3) = BlueFin::GlSysLogEntry::GetD64(a2);
    F32 = BlueFin::GlSysLogEntry::GetF32(a2);
  }

  *(this + 8) = F32;
  if (*(a2 + 12) >= 0xAu)
  {
    *(this + 2200) = BlueFin::GlSysLogEntry::GetU8(a2);
  }

LABEL_10:
  v9 = xmmword_298A31960;
  v10 = xmmword_298A31970;
  v11 = xmmword_298A31980;
  v12 = xmmword_298A31990;
  v13 = xmmword_298A319A0;
  v14 = xmmword_298A319B0;
  v15 = xmmword_298A319C0;
  v16 = xmmword_298A319D0;
  v17 = *(this + 1101);
  v18 = 96;
  v19 = vdupq_n_s64(0x5BuLL);
  v20 = vdupq_n_s64(0x10uLL);
  do
  {
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v19, v16)), *v9.i8), *v9.i8).u8[0])
    {
      *v17 = 0;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5BuLL), *&v16)), *&v9), *&v9).i8[1])
    {
      v17[96] = 0;
    }

    if (vuzp1_s8(vuzp1_s16(*&v9, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5BuLL), *&v15))), *&v9).i8[2])
    {
      v17[192] = 0;
      v17[288] = 0;
    }

    if (vuzp1_s8(*&v9, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5BuLL), *&v14)), *&v9)).i32[1])
    {
      v17[384] = 0;
    }

    if (vuzp1_s8(*&v9, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5BuLL), *&v14)), *&v9)).i8[5])
    {
      v17[480] = 0;
    }

    if (vuzp1_s8(*&v9, vuzp1_s16(*&v9, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5BuLL), *&v13)))).i8[6])
    {
      v17[576] = 0;
      v17[672] = 0;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5BuLL), v12)), *v9.i8), *v9.i8).u8[0])
    {
      v17[768] = 0;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5BuLL), *&v12)), *&v9), *&v9).i8[1])
    {
      v17[864] = 0;
    }

    if (vuzp1_s8(vuzp1_s16(*&v9, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5BuLL), *&v11))), *&v9).i8[2])
    {
      v17[960] = 0;
      v17[1056] = 0;
    }

    if (vuzp1_s8(*&v9, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5BuLL), *&v10)), *&v9)).i32[1])
    {
      v17[1152] = 0;
    }

    if (vuzp1_s8(*&v9, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5BuLL), *&v10)), *&v9)).i8[5])
    {
      v17[1248] = 0;
    }

    if (vuzp1_s8(*&v9, vuzp1_s16(*&v9, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5BuLL), *&v9)))).i8[6])
    {
      v17[1344] = 0;
      v17[1440] = 0;
    }

    v14 = vaddq_s64(v14, v20);
    v15 = vaddq_s64(v15, v20);
    v16 = vaddq_s64(v16, v20);
    v13 = vaddq_s64(v13, v20);
    v12 = vaddq_s64(v12, v20);
    v11 = vaddq_s64(v11, v20);
    v10 = vaddq_s64(v10, v20);
    v17 += 1536;
    v9 = vaddq_s64(v9, v20);
    v18 -= 16;
  }

  while (v18);
  if (U8)
  {
    v21 = 0;
    if (U8 >= 0x5B)
    {
      v22 = 91;
    }

    else
    {
      v22 = U8;
    }

    v23 = 96 * v22;
    while (1)
    {
      v24 = *(this + 1101);
      if (*(a2 + 12) < 5u)
      {
        S16 = BlueFin::GlSysLogEntry::GetS16(a2);
        if (S16)
        {
          v27 = *(&BlueFin::GlImplGnss::m_aucFromImplSvIdToEnabledSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + S16);
        }

        else
        {
          v27 = 0;
        }

        v28 = v24 + v21;
        *v28 = v27;
        *(v28 + 4) = 7;
        *(v28 + 8) = 0;
      }

      else
      {
        v25 = v24 + v21;
        *(v24 + v21) = *(&BlueFin::GlImplGnss::m_aucFromImplSvIdToEnabledSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + BlueFin::GlSysLogEntry::GetU8(a2));
        *(v25 + 4) = BlueFin::GlImplGnss::m_aucImplGnssTable[BlueFin::GlSysLogEntry::GetU8(a2)];
        *(v25 + 8) = BlueFin::GlSysLogEntry::GetU8(a2);
      }

      S32 = BlueFin::GlSysLogEntry::GetS32(a2);
      v30 = v24 + v21;
      *(v24 + v21 + 20) = S32;
      v31 = *(a2 + 12);
      if (v31 >= 4)
      {
        goto LABEL_50;
      }

      if (v31 == 3)
      {
        break;
      }

      BlueFin::GlSysLogEntry::GetGlSet64BitsObsolete(a2, &v42);
      *(v24 + v21 + 24) = BlueFin::GlSetBase::GetULong(&v42, 0);
      if (BlueFin::GlSetBase::GetULong(&v42, 1u))
      {
        v40 = "otTemp.GetULong(1) == 0";
        DeviceFaultNotify("glmepeif_types.cpp", 460, "Deserialize", "otTemp.GetULong(1) == 0");
        v41 = 460;
        goto LABEL_67;
      }

      if (*(a2 + 12) == 1)
      {
        *(v24 + v21 + 24) *= 2;
      }

LABEL_51:
      v32 = (v24 + v21);
      *(v24 + v21 + 32) = BlueFin::GlSysLogEntry::GetD64(a2);
      if (*(a2 + 12) < 7u)
      {
        v34 = BlueFin::GlSysLogEntry::GetD64(a2);
        v32[10] = v34;
        v35 = BlueFin::GlSysLogEntry::GetD64(a2);
        v32[11] = v35;
        v36 = BlueFin::GlSysLogEntry::GetD64(a2);
        v32[12] = v36;
        v33 = BlueFin::GlSysLogEntry::GetD64(a2);
      }

      else
      {
        v32[10] = BlueFin::GlSysLogEntry::GetF32(a2);
        v32[11] = BlueFin::GlSysLogEntry::GetF32(a2);
        v32[12] = BlueFin::GlSysLogEntry::GetF32(a2);
        v33 = BlueFin::GlSysLogEntry::GetF32(a2);
      }

      v37 = v24 + v21;
      *(v24 + v21 + 52) = v33;
      *(v37 + 72) = BlueFin::GlSysLogEntry::GetU16(a2);
      *(v37 + 74) = BlueFin::GlSysLogEntry::GetS16(a2);
      U32 = BlueFin::GlSysLogEntry::GetU32(a2);
      *(v37 + 12) = U32;
      v39 = *(a2 + 12);
      if (v39 == 1)
      {
        *(v37 + 12) = U32 + 1;
      }

      else if (v39 >= 8)
      {
        *(v24 + v21 + 92) = BlueFin::GlSysLogEntry::GetF32(a2);
        if (*(a2 + 12) >= 9u)
        {
          *(v24 + v21 + 16) = BlueFin::GlSysLogEntry::GetU8(a2);
        }
      }

      v21 += 96;
      if (v23 == v21)
      {
        goto LABEL_64;
      }
    }

    v30 = v24 + v21;
LABEL_50:
    v42 = (v30 + 24);
    v43 = 1;
    BlueFin::GlSysLogEntry::GetGlSet(a2, &v42);
    goto LABEL_51;
  }

LABEL_64:
  if (*(a2 + 11) != *(a2 + 10))
  {
    v40 = "otEntry.DataSize() == otEntry.ReadIdx()";
    DeviceFaultNotify("glmepeif_types.cpp", 500, "Deserialize", "otEntry.DataSize() == otEntry.ReadIdx()");
    v41 = 500;
LABEL_67:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmepeif_types.cpp", v41, v40);
  }

  return 1;
}

uint64_t BlueFin::GlDataSubFrmMeas::SerializeImpl(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v15 = *MEMORY[0x29EDCA608];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = 2;
  }

  if (v4 >= 3)
  {
    DeviceFaultNotify("glmepeif_types.cpp", 963, "SerializeImpl", "ucVersion == 1 || ucVersion == 2");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmepeif_types.cpp", 963, "ucVersion == 1 || ucVersion == 2");
  }

  v5 = v2;
  v6 = v1;
  if (v2 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v11 = 17;
    v12 = v4;
    v13 = 0x1000000000000;
    v10 = &unk_2A1F09520;
    v14 = v4;
    BlueFin::GlSysLogEntry::PutU16(&v10, *(&BlueFin::GlImplGnss::m_aucFromEnabledSvIdToImplSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + *(v1 + 8)));
    BlueFin::GlSysLogEntry::PutU8(&v10, *(v6 + 9));
    BlueFin::GlSysLogEntry::PutU32(&v10, *(v6 + 12));
    BlueFin::GlSysLogEntry::PutU32(&v10, *(v6 + 16));
    if (v4 == 2)
    {
      BlueFin::GlSysLogEntry::PutU32(&v10, *(v6 + 60));
    }

    for (i = 20; i != 60; i += 4)
    {
      BlueFin::GlSysLogEntry::PutU32(&v10, *(v6 + i));
    }

    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v10, v5, 4);
  }

  v8 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t BlueFin::GlDataSubFrmMeas::Deserialize(BlueFin::GlDataSubFrmMeas *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 17)
  {
    return 0;
  }

  if (*(a2 + 12) - 3 < 0xFFFFFFFE)
  {
    return 0;
  }

  v4 = *(&BlueFin::GlImplGnss::m_aucFromImplSvIdToEnabledSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + BlueFin::GlSysLogEntry::GetU16(a2));
  *(this + 8) = v4;
  if (!v4)
  {
    return 0;
  }

  *(this + 9) = BlueFin::GlSysLogEntry::GetU8(a2);
  *(this + 3) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(this + 4) = BlueFin::GlSysLogEntry::GetU32(a2);
  if (*(a2 + 12) >= 2u)
  {
    *(this + 15) = BlueFin::GlSysLogEntry::GetU32(a2);
  }

  for (i = 20; i != 60; i += 4)
  {
    *(this + i) = BlueFin::GlSysLogEntry::GetU32(a2);
  }

  if (*(a2 + 11) != *(a2 + 10))
  {
    DeviceFaultNotify("glmepeif_types.cpp", 1035, "Deserialize", "otEntry.DataSize() == otEntry.ReadIdx()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmepeif_types.cpp", 1035, "otEntry.DataSize() == otEntry.ReadIdx()");
  }

  return 1;
}

uint64_t BlueFin::GlGlonassDataString::Deserialize(BlueFin::GlGlonassDataString *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 20 || *(a2 + 12) != 1)
  {
    return 0;
  }

  v5 = *(&BlueFin::GlImplGnss::m_aucFromImplSvIdToEnabledSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + BlueFin::GlSysLogEntry::GetU16(a2));
  *(this + 8) = v5;
  if (!v5)
  {
    return 0;
  }

  *(this + 9) = BlueFin::GlSysLogEntry::GetS8(a2);
  *(this + 5) = BlueFin::GlSysLogEntry::GetU16(a2);
  *(this + 3) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(this + 8) = BlueFin::GlSysLogEntry::GetU16(a2);
  *(this + 5) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(this + 6) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(this + 7) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(this + 4) = BlueFin::GlSysLogEntry::GetD64(a2);
  if (*(a2 + 11) != *(a2 + 10))
  {
    DeviceFaultNotify("glmepeif_types.cpp", 1239, "Deserialize", "otEntry.DataSize() == otEntry.ReadIdx()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmepeif_types.cpp", 1239, "otEntry.DataSize() == otEntry.ReadIdx()");
  }

  return 1;
}

uint64_t BlueFin::GlGlonassDataString::SerializeImpl(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v14 = *MEMORY[0x29EDCA608];
  if (v3 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (v3 >= 2)
  {
    DeviceFaultNotify("glmepeif_types.cpp", 1250, "SerializeImpl", "ucVersion == 1");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmepeif_types.cpp", 1250, "ucVersion == 1");
  }

  if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v5 = v2;
    v6 = v1;
    v10 = 20;
    v11 = v4;
    v12 = 0x1000000000000;
    v9 = &unk_2A1F09520;
    v13 = v4;
    BlueFin::GlSysLogEntry::PutU16(&v9, *(&BlueFin::GlImplGnss::m_aucFromEnabledSvIdToImplSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + *(v1 + 8)));
    BlueFin::GlSysLogEntry::PutS8(&v9, *(v6 + 9));
    BlueFin::GlSysLogEntry::PutU16(&v9, *(v6 + 10));
    BlueFin::GlSysLogEntry::PutU32(&v9, *(v6 + 12));
    BlueFin::GlSysLogEntry::PutU16(&v9, *(v6 + 16));
    BlueFin::GlSysLogEntry::PutU32(&v9, *(v6 + 20));
    BlueFin::GlSysLogEntry::PutU32(&v9, *(v6 + 24));
    BlueFin::GlSysLogEntry::PutU32(&v9, *(v6 + 28));
    BlueFin::GlSysLogEntry::PutD64(&v9, *(v6 + 32));
    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v9, v5, 4);
  }

  v7 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t BlueFin::GlGalileoINavPage::Deserialize(BlueFin::GlGalileoINavPage *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 21 || *(a2 + 12) != 1)
  {
    return 0;
  }

  v5 = *(&BlueFin::GlImplGnss::m_aucFromImplSvIdToEnabledSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + BlueFin::GlSysLogEntry::GetU16(a2));
  *(this + 8) = v5;
  if (!v5)
  {
    return 0;
  }

  *(this + 9) = BlueFin::GlSysLogEntry::GetU8(a2);
  *(this + 10) = BlueFin::GlSysLogEntry::GetU8(a2);
  *(this + 11) = BlueFin::GlSysLogEntry::GetU8(a2) != 0;
  *(this + 3) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(this + 4) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(this + 13) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(this + 5) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(this + 6) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(this + 7) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(this + 8) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(this + 9) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(this + 10) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(this + 11) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(this + 12) = BlueFin::GlSysLogEntry::GetU32(a2);
  if (*(a2 + 11) != *(a2 + 10))
  {
    DeviceFaultNotify("glmepeif_types.cpp", 1340, "Deserialize", "otEntry.DataSize() == otEntry.ReadIdx()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmepeif_types.cpp", 1340, "otEntry.DataSize() == otEntry.ReadIdx()");
  }

  return 1;
}

uint64_t BlueFin::GlGalileoINavPage::SerializeImpl(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v14 = *MEMORY[0x29EDCA608];
  if (v3 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (v3 >= 2)
  {
    DeviceFaultNotify("glmepeif_types.cpp", 1351, "SerializeImpl", "ucVersion == 1");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmepeif_types.cpp", 1351, "ucVersion == 1");
  }

  if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v5 = v2;
    v6 = v1;
    v10 = 21;
    v11 = v4;
    v12 = 0x1000000000000;
    v9 = &unk_2A1F09520;
    v13 = v4;
    BlueFin::GlSysLogEntry::PutU16(&v9, *(&BlueFin::GlImplGnss::m_aucFromEnabledSvIdToImplSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + *(v1 + 8)));
    BlueFin::GlSysLogEntry::PutU8(&v9, *(v6 + 9));
    BlueFin::GlSysLogEntry::PutU8(&v9, *(v6 + 10));
    BlueFin::GlSysLogEntry::PutU8(&v9, *(v6 + 11));
    BlueFin::GlSysLogEntry::PutU32(&v9, *(v6 + 12));
    BlueFin::GlSysLogEntry::PutU32(&v9, *(v6 + 16));
    BlueFin::GlSysLogEntry::PutU32(&v9, *(v6 + 52));
    BlueFin::GlSysLogEntry::PutU32(&v9, *(v6 + 20));
    BlueFin::GlSysLogEntry::PutU32(&v9, *(v6 + 24));
    BlueFin::GlSysLogEntry::PutU32(&v9, *(v6 + 28));
    BlueFin::GlSysLogEntry::PutU32(&v9, *(v6 + 32));
    BlueFin::GlSysLogEntry::PutU32(&v9, *(v6 + 36));
    BlueFin::GlSysLogEntry::PutU32(&v9, *(v6 + 40));
    BlueFin::GlSysLogEntry::PutU32(&v9, *(v6 + 44));
    BlueFin::GlSysLogEntry::PutU32(&v9, *(v6 + 48));
    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v9, v5, 4);
  }

  v7 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t BlueFin::GlNavICSubFrame::Deserialize(BlueFin::GlNavICSubFrame *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 12) != 1)
  {
    return 0;
  }

  v4 = *(&BlueFin::GlImplGnss::m_aucFromImplSvIdToEnabledSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + BlueFin::GlSysLogEntry::GetU16(a2));
  *(this + 8) = v4;
  if (!v4)
  {
    return 0;
  }

  *(this + 10) = BlueFin::GlSysLogEntry::GetU8(a2);
  *(this + 9) = BlueFin::GlSysLogEntry::GetU8(a2) != 0;
  *(this + 6) = BlueFin::GlSysLogEntry::GetU16(a2);
  *(this + 4) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(this + 5) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(this + 16) = BlueFin::GlSysLogEntry::GetU32(a2);
  for (i = 24; i != 64; i += 4)
  {
    *(this + i) = BlueFin::GlSysLogEntry::GetU32(a2);
  }

  if (*(a2 + 11) != *(a2 + 10))
  {
    DeviceFaultNotify("glmepeif_types.cpp", 1442, "Deserialize", "otEntry.DataSize() == otEntry.ReadIdx()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmepeif_types.cpp", 1442, "otEntry.DataSize() == otEntry.ReadIdx()");
  }

  return 1;
}

uint64_t BlueFin::GlNavICSubFrame::SerializeImpl(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v13[512] = *MEMORY[0x29EDCA608];
  if (v3 >= 2)
  {
    DeviceFaultNotify("glmepeif_types.cpp", 1453, "SerializeImpl", "ucVersion == 1");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmepeif_types.cpp", 1453, "ucVersion == 1");
  }

  if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v4 = v2;
    v5 = v1;
    v10 = 0;
    v12 = 0;
    v9 = &unk_2A1F09520;
    bzero(v13, 0x1000uLL);
    v11 = 1;
    BlueFin::GlSysLogEntry::PutU16(&v9, *(&BlueFin::GlImplGnss::m_aucFromEnabledSvIdToImplSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + *(v5 + 8)));
    BlueFin::GlSysLogEntry::PutU8(&v9, *(v5 + 10));
    BlueFin::GlSysLogEntry::PutU8(&v9, *(v5 + 9));
    BlueFin::GlSysLogEntry::PutU16(&v9, *(v5 + 12));
    BlueFin::GlSysLogEntry::PutU32(&v9, *(v5 + 16));
    BlueFin::GlSysLogEntry::PutU32(&v9, *(v5 + 20));
    BlueFin::GlSysLogEntry::PutU32(&v9, *(v5 + 64));
    for (i = 24; i != 64; i += 4)
    {
      BlueFin::GlSysLogEntry::PutU32(&v9, *(v5 + i));
    }

    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v9, v4, 4);
  }

  v7 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t BlueFin::GlMeSignalAidInfo::SerializeImpl(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v17 = *MEMORY[0x29EDCA608];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = 5;
  }

  if (v4 >= 6)
  {
    DeviceFaultNotify("glmepeif_types.cpp", 2437, "SerializeImpl", "ucVersion > 0 && ucVersion <= 5");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmepeif_types.cpp", 2437, "ucVersion > 0 && ucVersion <= 5");
  }

  v5 = v2;
  v6 = v1;
  if (v2 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v13 = 22;
    v14 = v4;
    v15 = 0x1000000000000;
    v12 = &unk_2A1F092C0;
    v16 = v4;
    if (v4 < 3 || (BlueFin::GlSysLogEntry::PutU32(&v12, *(v1 + 8)), v4 == 3))
    {
      BlueFin::GlSysLogEntry::PutS8(&v12, *(v6 + 14));
    }

    else
    {
      BlueFin::GlSysLogEntry::PutU8(&v12, *(v6 + 14));
    }

    if (!*(v6 + 14))
    {
LABEL_21:
      BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v12, v5, 4);
      result = 1;
      goto LABEL_22;
    }

    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = *(*(v6 + 16) + v8 + 4);
      if (v4 == 5)
      {
        break;
      }

      BlueFin::GlSysLogEntry::PutU16(&v12, v10);
      if (v4 != 1)
      {
        goto LABEL_19;
      }

      BlueFin::GlSysLogEntry::PutU16(&v12, *(&BlueFin::GlImplGnss::m_aucFromEnabledSvIdToImplSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + *(*(v6 + 16) + v8)));
LABEL_20:
      ++v9;
      v8 += 8;
      if (v9 >= *(v6 + 14))
      {
        goto LABEL_21;
      }
    }

    BlueFin::GlSysLogEntry::PutU32(&v12, v10);
LABEL_19:
    BlueFin::GlSysLogEntry::PutU8(&v12, *(&BlueFin::GlImplGnss::m_aucFromEnabledSvIdToImplSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + *(*(v6 + 16) + v8)));
    goto LABEL_20;
  }

  result = 0;
LABEL_22:
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlMeSignalAidInfo::Deserialize(BlueFin::GlMeSignalAidInfo *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 22)
  {
    return 0;
  }

  v3 = *(a2 + 12);
  if (v3 - 6 < 0xFFFFFFFB)
  {
    return 0;
  }

  if (v3 < 3 || (*(this + 2) = BlueFin::GlSysLogEntry::GetU32(a2), *(a2 + 12) < 4u))
  {
    S8 = BlueFin::GlSysLogEntry::GetS8(a2);
  }

  else
  {
    S8 = BlueFin::GlSysLogEntry::GetU8(a2);
  }

  *(this + 7) = S8;
  if (S8)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      if (*(a2 + 12) < 5u)
      {
        U16 = BlueFin::GlSysLogEntry::GetU16(a2);
      }

      else
      {
        U16 = BlueFin::GlSysLogEntry::GetU32(a2);
      }

      *(*(this + 2) + v7 + 4) = U16;
      if (*(a2 + 12) == 1)
      {
        v10 = BlueFin::GlSysLogEntry::GetU16(a2);
        if (v10 >= 0x100)
        {
          DeviceFaultNotify("glmepeif_types.cpp", 2522, "Deserialize", "usImplSvId <= 0xff");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmepeif_types.cpp", 2522, "usImplSvId <= 0xff");
        }

        U8 = v10;
      }

      else
      {
        U8 = BlueFin::GlSysLogEntry::GetU8(a2);
      }

      *(*(this + 2) + v7) = *(&BlueFin::GlImplGnss::m_aucFromImplSvIdToEnabledSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + U8);
      ++v8;
      v7 += 8;
    }

    while (v8 < *(this + 7));
  }

  BlueFin::GlSysLogEntry::CheckConsumed(a2, 2526);
  return 1;
}

uint64_t BlueFin::GlMeSignalAidInfo::RemoveSignalByArrayIdx(uint64_t this, unsigned int a2)
{
  v2 = *(this + 14);
  if (v2 <= a2)
  {
    DeviceFaultNotify("glmepeif_types.cpp", 2681, "RemoveSignalByArrayIdx", "idxToRemove < number_of_signals");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmepeif_types.cpp", 2681, "idxToRemove < number_of_signals");
  }

  v3 = *(this + 16);
  v4 = v3 + 8 * a2;
  *v4 = 0;
  *(v4 + 4) = 0;
  v5 = a2 + 1;
  if (a2 + 1 < v2)
  {
    v6 = v3 + 8 * a2 + 8;
    do
    {
      *(v6 - 8) = *v6;
      *(v6 - 4) = *(v6 + 4);
      ++v5;
      v6 += 8;
    }

    while (v5 < v2);
  }

  *(this + 14) = v2 - 1;
  return this;
}

uint64_t BlueFin::GlMeSignalAidInfo::RemoveConstellation(uint64_t this, int a2)
{
  v2 = *(this + 14);
  if (v2)
  {
    v4 = this;
    v5 = 0;
    v6 = BlueFin::GlSvId::s_aucGnss2minSvId[a2];
    do
    {
      v7 = *(*(v4 + 16) + 8 * v5);
      if (v6 <= v7 && BlueFin::GlSvId::s_aucGnss2maxSvId[a2] >= v7)
      {
        this = BlueFin::GlMeSignalAidInfo::RemoveSignalByArrayIdx(v4, v5);
        v2 = *(v4 + 14);
      }

      else
      {
        ++v5;
      }
    }

    while (v5 < v2);
  }

  return this;
}

uint64_t BlueFin::GlPeIf::stAsicCfg::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 108) = *(a2 + 108);
  for (i = 116; i != 172; i += 4)
  {
    *(a1 + i) = *(a2 + i);
  }

  *(a1 + 172) = *(a2 + 172);
  *(a1 + 188) = *(a2 + 188);
  *(a1 + 196) = *(a2 + 196);
  *(a1 + 205) = *(a2 + 205);
  BlueFin::GlSetBase::operator=(a1 + 208, a2 + 208);
  *(a1 + 220) = *(a2 + 220);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 233) = *(a2 + 233);
  *(a1 + 236) = *(a2 + 236);
  *(a1 + 244) = *(a2 + 244);
  *(a1 + 250) = *(a2 + 250);
  return a1;
}

uint64_t BlueFin::GlTowAsstData::SerializeImpl(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v3 = v2;
  v4 = v1;
  v20 = *MEMORY[0x29EDCA608];
  if (v2 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v5 = (v1 + 46);
    v6 = (v1 + 47);
    v7 = *(v1 + 46) + ~*(v1 + 47);
    v16 = 65;
    v17 = 2;
    v18 = 0x1000000000000;
    v15 = &unk_2A1F092C0;
    v19 = 2;
    BlueFin::GlSysLogEntry::PutU8(&v15, v7);
    BlueFin::GlSysLogEntry::PutU32(&v15, v4[92]);
    BlueFin::GlSysLogEntry::PutU32(&v15, v4[93]);
    BlueFin::GlSysLogEntry::PutU32(&v15, v4[94]);
    v8 = (v4 + 2);
    v13 = v5 - 38;
    v14 = *v6 + 1;
    if (*v5 > v14)
    {
      do
      {
        v9 = BlueFin::GlArrayIterator::Next(&v13);
        v10 = BlueFin::GlArray::Get(v8, v9);
        BlueFin::GlSysLogEntry::PutU8(&v15, *v10);
        BlueFin::GlSysLogEntry::PutU16(&v15, *(v10 + 2));
        BlueFin::GlSysLogEntry::PutU8(&v15, *(v10 + 4));
        BlueFin::GlSysLogEntry::PutU8(&v15, *(v10 + 5));
        BlueFin::GlSysLogEntry::PutU8(&v15, *(v10 + 6));
      }

      while (v14 < v13[38]);
    }

    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v15, v3, 4);
    result = 1;
  }

  else
  {
    result = 0;
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlTowAsstData::Deserialize(BlueFin::GlTowAsstData *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 65)
  {
    return 0;
  }

  if (*(a2 + 12) > 2u)
  {
    return 0;
  }

  U8 = BlueFin::GlSysLogEntry::GetU8(a2);
  if (*(a2 + 12) == 2)
  {
    *(this + 92) = BlueFin::GlSysLogEntry::GetU32(a2);
    *(this + 93) = BlueFin::GlSysLogEntry::GetU32(a2);
    U32 = BlueFin::GlSysLogEntry::GetU32(a2);
  }

  else
  {
    *(this + 46) = 0x240C84007FFFFFFFLL;
    U32 = 0x7FFFFFFF;
  }

  for (*(this + 94) = U32; U8; --U8)
  {
    v7 = BlueFin::GlSysLogEntry::GetU8(a2);
    v8 = v7;
    v9 = BlueFin::GlArray::Add((this + 8), v7);
    if (v9)
    {
      v10 = v9;
      *v9 = v8;
      *(v9 + 2) = BlueFin::GlSysLogEntry::GetU16(a2);
      v10[4] = BlueFin::GlSysLogEntry::GetU8(a2);
      v10[5] = BlueFin::GlSysLogEntry::GetU8(a2);
      v10[6] = BlueFin::GlSysLogEntry::GetU8(a2);
    }
  }

  return 1;
}

uint64_t BlueFin::GlTowAsstData::operator=(uint64_t a1, uint64_t a2)
{
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 376) = *(a2 + 376);
  v3 = (a2 + 8);
  v8 = a2 + 8;
  v9 = *(a2 + 47) + 1;
  if (*(a2 + 46) > v9)
  {
    do
    {
      v4 = BlueFin::GlArrayIterator::Next(&v8);
      v5 = BlueFin::GlArray::Get(v3, v4);
      v6 = BlueFin::GlArray::Add((a1 + 8), v4);
      if (v6 && v5)
      {
        *v6 = *v5;
        *(v6 + 2) = *(v5 + 2);
        *(v6 + 4) = *(v5 + 4);
        *(v6 + 5) = *(v5 + 5);
      }
    }

    while (v9 < *(v8 + 38));
  }

  return a1;
}

uint64_t BlueFin::GlSignalIdSet::CntPrimarySignalSvIdSet(BlueFin::GlSignalIdSet *this, int a2)
{
  v3 = *this;
  v4 = *(this + 8);
  if (!**this)
  {
    if (v4 < 2)
    {
      return 0;
    }

    v12 = v4 - 1;
    v13 = v3 + 1;
    while (!*v13++)
    {
      if (!--v12)
      {
        return 0;
      }
    }
  }

  memset(v21, 0, sizeof(v21));
  v16 = v4;
  memcpy(v20, v3, 4 * v4);
  v18 = 0;
  v17 = 0;
  v19 = v20[0];
  BlueFin::GlSetIterator::operator++(&v16);
  if (v17 == v16)
  {
    return 0;
  }

  while (1)
  {
    v5 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v18;
    v6 = v5[1];
    if (v6 != 3 && v6 != 0)
    {
      goto LABEL_11;
    }

    v8 = *v5;
    v9 = v8 >> 5;
    v10 = *(v21 + (v8 >> 5));
    v11 = v8 & 0x1F;
    if ((v10 >> v11))
    {
      goto LABEL_11;
    }

    if (!--a2)
    {
      return 1;
    }

    *(v21 + v9) = (1 << v11) | v10;
LABEL_11:
    BlueFin::GlSetIterator::operator++(&v16);
    if (v17 == v16)
    {
      return 0;
    }
  }
}

unsigned __int8 *BlueFin::GlSignalIdSet::GetSignalIdSet@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *(a4 + 12) = 0u;
  v6 = a4 + 12;
  *a4 = a4 + 12;
  *(a4 + 8) = 19;
  *(a4 + 28) = 0u;
  *(a4 + 44) = 0u;
  *(a4 + 60) = 0u;
  *(a4 + 72) = 0u;
  v12 = *(a1 + 8);
  memcpy(v16, *a1, 4 * v12);
  v14 = 0;
  v13 = 0;
  v15 = v16[0];
  for (result = BlueFin::GlSetIterator::operator++(&v12); v13 != v12; result = BlueFin::GlSetIterator::operator++(&v12))
  {
    if (v14 >= 0x23FuLL)
    {
      DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
    }

    v8 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v14;
    v9 = *v8;
    v10 = v8[1];
    if (BlueFin::GlSvId::s_aucSvId2gnss[v9] == a2 && v10 == a3)
    {
      *(v6 + 4 * (v14 >> 5)) |= 1 << v14;
    }
  }

  return result;
}

unsigned __int8 *BlueFin::GlSignalIdSet::GetSignalIdSet@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 12) = 0u;
  v4 = a3 + 12;
  *a3 = a3 + 12;
  *(a3 + 8) = 19;
  *(a3 + 28) = 0u;
  *(a3 + 44) = 0u;
  *(a3 + 60) = 0u;
  *(a3 + 72) = 0u;
  v6 = *(a1 + 8);
  memcpy(v10, *a1, 4 * v6);
  v8 = 0;
  v7 = 0;
  v9 = v10[0];
  for (result = BlueFin::GlSetIterator::operator++(&v6); v7 != v6; result = BlueFin::GlSetIterator::operator++(&v6))
  {
    if (v8 >= 0x23FuLL)
    {
      DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
    }

    if (BlueFin::GlSvId::s_aucSvId2gnss[*(&BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v8)] == a2)
    {
      *(v4 + 4 * (v8 >> 5)) |= 1 << v8;
    }
  }

  return result;
}

unsigned __int8 *BlueFin::GlSignalIdSet::Print(BlueFin::GlSignalIdSet *this, unsigned __int8 a2)
{
  v4 = *(this + 8);
  memcpy(v8, *this, 4 * v4);
  v6 = 0;
  v5 = 0;
  v7 = v8[0];
  for (result = BlueFin::GlSetIterator::operator++(&v4); v5 != v4; result = BlueFin::GlSetIterator::operator++(&v4))
  {
    if (v6 >= 0x23FuLL)
    {
      DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
    }

    GlCustomLog(a2, "%02d(%s) ", *(&BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v6), BlueFin::GlSignalId::s_ausSignalIndex2str[*(&BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v6 + 1)]);
  }

  return result;
}

char *BlueFin::GlSvIdSet::GetStr(BlueFin::GlSvIdSet *this, char *a2, int a3, char a4, int a5)
{
  v9 = BlueFin::GlSetBase::Cnt(this);
  v40[0] = *(this + 8);
  v38 = this;
  memcpy(v43, *this, 4 * v40[0]);
  v41 = 0;
  v40[1] = 0;
  v42 = v43[0];
  BlueFin::GlSetIterator::operator++(v40);
  v34 = a2;
  if (v9)
  {
    v10 = &a2[a3 - 1];
    if (v10 > a2)
    {
      v11 = 0;
      v12 = &a2[a3];
      v35 = v12 - 1;
      v36 = v12 - 2;
      do
      {
        v13 = v41;
        memset(v39, 0, 5);
        v14 = v41;
        if (v41 < 0x64u)
        {
          v15 = v39;
          if (v41 % 0x64u < 0xA)
          {
            goto LABEL_8;
          }
        }

        else
        {
          v39[0] = (v41 / 0x64u) | 0x30;
          v15 = &v39[1];
        }

        *v15++ = (v41 % 0x64u / 0xA) | 0x30;
LABEL_8:
        *v15 = (v13 - 10 * ((205 * v14) >> 11)) | 0x30;
        if (a2 >= v10)
        {
          v21 = 0;
        }

        else
        {
          v16 = v39[0];
          if (v39[0])
          {
            v17 = v36 - a2;
            v18 = &v39[1];
            while (1)
            {
              v19 = a2;
              *a2++ = v16;
              if (!v17)
              {
                break;
              }

              v20 = *v18++;
              v16 = v20;
              --v17;
              if (!v20)
              {
                goto LABEL_17;
              }
            }

            a2 = v35;
LABEL_17:
            v21 = v19 + 1 < v10;
          }

          else
          {
            v21 = 1;
          }
        }

        BlueFin::GlSetIterator::operator++(v40);
        if (!a5 || (v22 = v13, v23 = v13 + 1, v24 = *v38, ((*(*v38 + ((v23 >> 3) & 0x3C)) >> (v23 & 0x1F)) & 1) == 0) || ((*(v24 + 4 * ((v22 + 2) >> 5)) >> ((v22 + 2) & 0x1F)) & 1) == 0)
        {
          if (++v11 >= v9 || !v21)
          {
            continue;
          }

          goto LABEL_29;
        }

        v11 += 2;
        BlueFin::GlSetIterator::operator++(v40);
        v25 = v22 + 1;
        if ((*(v24 + 4 * (((v22 + 1) + 1) >> 5)) >> ((v22 + 2) & 0x1F)))
        {
          do
          {
            ++v11;
            BlueFin::GlSetIterator::operator++(v40);
            ++v25;
          }

          while (((*(v24 + 4 * ((v25 + 1) >> 5)) >> ((v25 + 1) & 0x1F)) & 1) != 0);
        }

        v39[2] = 0;
        *&v39[3] = 0;
        strcpy(v39, ":");
        v26 = *(&BlueFin::GlImplGnss::m_aucFromEnabledSvIdToImplSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + v25);
        v27 = *(&BlueFin::GlImplGnss::m_aucFromEnabledSvIdToImplSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + v25) % 0x64u;
        if (v26 >= 0x64)
        {
          v39[1] = (*(&BlueFin::GlImplGnss::m_aucFromEnabledSvIdToImplSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + v25) / 0x64u) | 0x30;
          v28 = &v39[2];
LABEL_34:
          *v28++ = ((205 * v27) >> 11) | 0x30;
          goto LABEL_35;
        }

        v28 = &v39[1];
        if (v27 >= 0xA)
        {
          goto LABEL_34;
        }

LABEL_35:
        *v28 = (v26 - 10 * ((205 * v26) >> 11)) | 0x30;
        if (a2 >= v10)
        {
          continue;
        }

        v30 = v35 - a2;
        v31 = v39;
        while (1)
        {
          v32 = *v31;
          if (!*v31)
          {
            break;
          }

          ++v31;
          *a2++ = v32;
          if (!--v30)
          {
            a2 = v35;
            goto LABEL_30;
          }
        }

        if (v9 <= v11)
        {
          continue;
        }

LABEL_29:
        *a2++ = a4;
LABEL_30:
        ;
      }

      while (v9 > v11 && a2 < v10);
    }
  }

  *a2 = 0;
  return v34;
}

uint64_t BlueFin::GlSvIdSet::SetStr(void **this, char *a2)
{
  v28 = *MEMORY[0x29EDCA608];
  v4 = *this;
  v5 = *(this + 8);
  bzero(*this, ((4 * v5 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  if (*a2)
  {
    if (!strcmp(a2, "all"))
    {
      memset(v4, 255, 4 * v5);
LABEL_26:
      v8 = 1;
      goto LABEL_27;
    }

    v6 = strchr(a2, 91);
    v7 = strchr(a2, 93);
    v8 = 0;
    if (v6)
    {
      v9 = v7;
      if (v7)
      {
        v10 = v6 + 1;
        v8 = 1;
        if (v10 < v7)
        {
          v11 = 0;
          v12 = 32;
          do
          {
            do
            {
              if (memchr("0123456789+-", *v10, 0xDuLL))
              {
                break;
              }

              ++v10;
            }

            while (v10 <= v9);
            if (v10 == v9)
            {
              break;
            }

            v13 = 0;
            do
            {
              v14 = v13;
              v15 = &v10[v13];
              v16 = &v10[v13 + 1];
              if (v16 >= v9)
              {
                break;
              }

              v17 = memchr("0123456789+-", *v16, 0xDuLL);
              v13 = v14 + 1;
            }

            while (v17);
            v18 = v14 + 1 < 255 ? v14 + 1 : 255;
            strlcpy(v27, v10, v18 + 1);
            v19 = atoi(v27);
            if (v12 == 58)
            {
              v20 = v19 - v11;
              if (v19 > v11)
              {
                v21 = *this;
                v22 = v11 + 1;
                v23 = &BlueFin::GlImplGnss::m_aucFromImplSvIdToEnabledSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion;
                do
                {
                  *&v21[(v23[v22] >> 3) & 0x1C] |= 1 << v23[v22];
                  ++v22;
                  --v20;
                }

                while (v20);
              }
            }

            else
            {
              v24 = *(&BlueFin::GlImplGnss::m_aucFromImplSvIdToEnabledSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + v19);
              *(*this + ((v24 >> 3) & 0x1C)) |= 1 << v24;
            }

            v12 = *(v15 + 1);
            v10 += v14 + 2;
            v11 = v19;
          }

          while (v10 < v9);
          goto LABEL_26;
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_27:
  v25 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t BlueFin::GlCryptoDes::des_perm(uint64_t this, const unsigned __int8 *a2, void *a3, unsigned __int8 *a4)
{
  v4 = 0;
  v6[1] = *MEMORY[0x29EDCA608];
  v6[0] = 0;
  do
  {
    *(v6 + (v4 >> 3)) |= ((0x80u >> (*(this + v4) & 7)) & *(a3 + (*(this + v4) >> 3))) << (*(this + v4) & 7) >> (v4 & 7);
    ++v4;
  }

  while (a2 != v4);
  *a3 = v6[0];
  v5 = *MEMORY[0x29EDCA608];
  return this;
}

uint64_t BlueFin::GlCryptoDes::des_set_key(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v17[1] = *MEMORY[0x29EDCA608];
  v17[0] = *a1;
  BlueFin::GlCryptoDes::des_perm(&unk_298A32500, 0x38, v17, a4);
  v6 = 0;
  v7.i32[0] = *(v17 + 3);
  v8 = vmovl_u16(*&vmovl_u8(v7));
  v9 = vshlq_u32(v8, xmmword_298A324E0);
  v10 = (LOBYTE(v17[0]) << 24) | (BYTE1(v17[0]) << 16) | (BYTE2(v17[0]) << 8) | v8.i8[0] & 0xF0;
  *v8.i8 = vorr_s8(*v9.i8, *&vextq_s8(v9, v9, 8uLL));
  v11 = v8.i32[0] | v8.i32[1];
  do
  {
    v12 = byte_298A324F0[v6];
    v13 = (v10 >> (28 - v12)) | (v10 << v12);
    LOBYTE(v17[0]) = HIBYTE(v13);
    BYTE1(v17[0]) = BYTE2(v13);
    v14 = (v11 >> (28 - v12)) | (v11 << v12);
    BYTE2(v17[0]) = ((v10 >> (28 - v12)) | (v10 << v12)) >> 8;
    BYTE3(v17[0]) = ((v10 >> (28 - v12)) | (v10 << v12)) & 0xF0 | (v14 >> 28);
    BYTE4(v17[0]) = v14 >> 20;
    BYTE5(v17[0]) = v14 >> 12;
    HIWORD(v17[0]) = (v14 >> 4);
    result = BlueFin::GlCryptoDes::des_perm(&unk_298A32538, 0x40, v17, v5);
    *(a2 + 8 * v6) = v17[0];
    v10 = v13 & 0xFFFFFFF0;
    v11 = v14 & 0xFFFFFFF0;
    ++v6;
  }

  while (v6 != 16);
  v16 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlCryptoDes::des_decrypt_blk(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  do
  {
    v6 = *(a2 + v3);
    v5 |= *(BlueFin::GlCryptoDes::des_ip + ((v6 >> 2) & 0x3C)) << v3;
    v4 |= BlueFin::GlCryptoDes::des_ip[v6 & 0xF] << v3++;
  }

  while (v3 != 8);
  v7 = (v5 << 8) & 0xFF000000 | (v5 << 16) | v4 | (v4 >> 8) & 0xFF00;
  v8 = v5 & 0xFF000000 | (v5 << 8) & 0xFF0000 | HIWORD(v4) & 0xFF00 | BYTE1(v4);
  v9 = (a1 + 127);
  v10 = -16;
  do
  {
    v11 = v7;
    v7 = v8;
    HIDWORD(v12) = v8;
    LODWORD(v12) = v8;
    v13 = BlueFin::GlCryptoDes::des_p[(BlueFin::GlCryptoDes::des_sbox[(v8 >> 23) & 0x3F ^ *(v9 - 6)] & 0xF) + 16] | *(BlueFin::GlCryptoDes::des_p + ((BlueFin::GlCryptoDes::des_sbox[(v12 >> 27) & 0x3F ^ *(v9 - 7)] >> 2) & 0x3C)) | *(&BlueFin::GlCryptoDes::des_p[32] + ((BlueFin::GlCryptoDes::des_sbox[((v7 >> 19) & 0x3F ^ *(v9 - 5)) + 64] >> 2) & 0x3C)) | BlueFin::GlCryptoDes::des_p[(BlueFin::GlCryptoDes::des_sbox[((v7 >> 15) & 0x3F ^ *(v9 - 4)) + 64] & 0xF) + 48] | *(&BlueFin::GlCryptoDes::des_p[64] + ((BlueFin::GlCryptoDes::des_sbox[((v7 >> 11) & 0x3F ^ *(v9 - 3)) + 128] >> 2) & 0x3C)) | BlueFin::GlCryptoDes::des_p[(BlueFin::GlCryptoDes::des_sbox[((v7 >> 7) & 0x3F ^ *(v9 - 2)) + 128] & 0xF) + 80] | *(&BlueFin::GlCryptoDes::des_p[96] + ((BlueFin::GlCryptoDes::des_sbox[((v7 >> 3) & 0x3F ^ *(v9 - 1)) + 192] >> 2) & 0x3C));
    HIDWORD(v12) = v7;
    LODWORD(v12) = v7;
    v14 = *v9;
    v9 -= 8;
    v8 = (v13 | BlueFin::GlCryptoDes::des_p[(BlueFin::GlCryptoDes::des_sbox[((v12 >> 31) & 0x3F ^ v14) + 192] & 0xF) + 112]) ^ v11;
  }

  while (!__CFADD__(v10++, 1));
  v16 = 0;
  v17 = 0;
  v18 = 0;
  for (i = 1; i != 9; i += 2)
  {
    result = v7 >> v16;
    v18 |= (BlueFin::GlCryptoDes::des_fp[(v8 >> v16) & 0xF] << (i - 1)) | (BlueFin::GlCryptoDes::des_fp[result & 0xF] << i);
    v17 |= (BlueFin::GlCryptoDes::des_fp[(v8 >> v16) >> 4] << (i - 1)) | (BlueFin::GlCryptoDes::des_fp[result >> 4] << i);
    v16 += 8;
  }

  *a3 = HIBYTE(v18);
  a3[1] = BYTE2(v18);
  a3[2] = BYTE1(v18);
  a3[3] = v18;
  a3[4] = HIBYTE(v17);
  a3[5] = BYTE2(v17);
  a3[6] = BYTE1(v17);
  a3[7] = v17;
  return result;
}

uint64_t BlueFin::GlCryptoDes::decrypt_update(uint64_t result, _BYTE *a2, _DWORD *a3, uint64_t a4, unsigned int a5)
{
  v9 = result;
  LODWORD(v10) = 0;
  v30 = *MEMORY[0x29EDCA608];
  *a3 = 0;
  if (a5)
  {
    LOBYTE(v11) = *(result + 144);
    if (v11)
    {
      v10 = 0;
      v12 = result + 136;
      do
      {
        *(v12 + v11) = *(a4 + v10++);
        v11 = (*(result + 144) + 1) & 7;
        *(result + 144) = v11;
        if (v11)
        {
          v13 = v10 >= a5;
        }

        else
        {
          v13 = 1;
        }
      }

      while (!v13);
      if (!v11)
      {
        result = BlueFin::GlCryptoDes::des_decrypt_blk(result, v12, a2);
        v14 = (v9 + 128);
        v15 = 8;
        v16 = a2;
        do
        {
          *v16++ ^= *v14;
          *v14 = v14[8];
          ++v14;
          --v15;
        }

        while (v15);
        *a3 += 8;
      }
    }
  }

  v17 = v10 + 8;
  if (v10 + 8 <= a5)
  {
    v19 = v9 + 128;
    do
    {
      v18 = v17;
      v20 = v29;
      v21 = v10;
      v22 = 8;
      do
      {
        *v20++ = *(a4 + v21++);
        --v22;
      }

      while (v22);
      result = BlueFin::GlCryptoDes::des_decrypt_blk(v9, a4 + v10, &a2[*a3]);
      for (i = 0; i != 8; ++i)
      {
        a2[(i + *a3)] ^= *(v19 + i);
        *(v19 + i) = v29[i];
      }

      *a3 += 8;
      v17 = v18 + 8;
      LODWORD(v10) = v10 + 8;
    }

    while (v18 + 8 <= a5);
  }

  else
  {
    v18 = v10;
  }

  if (v18 < a5)
  {
    v24 = (a4 + v18);
    v25 = a5 - v18;
    do
    {
      v26 = *v24++;
      v27 = *(v9 + 144);
      *(v9 + 144) = v27 + 1;
      *(v9 + 136 + v27) = v26;
      --v25;
    }

    while (v25);
  }

  v28 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlCryptoRsa::rsa_bin2bn(uint64_t result, uint64_t a2, unsigned int a3)
{
  *(result + 64) = 0;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *result = 0u;
  *(result + 16) = 0u;
  if (a3)
  {
    v3 = 0;
    v4 = -a3;
    v5 = a3 - 1;
    do
    {
      if ((v3 & 3) != 0)
      {
        v6 = v3 >> 2;
        v7 = *(result + 4 * v6);
        if (((v3 - 1) & 3) != 0)
        {
          v8 = *(a2 + v5);
          if ((v3 & 3) == 2)
          {
            v9 = v7 | (v8 << 16);
          }

          else
          {
            v9 = v7 | (v8 << 24);
          }
        }

        else
        {
          v9 = v7 | (*(a2 + v5) << 8);
        }

        *(result + 4 * v6) = v9;
      }

      else
      {
        *(result + (v3 & 0xFFFFFFFC)) = *(a2 + v5);
      }

      ++v3;
      --v5;
    }

    while (!__CFADD__(v4++, 1));
  }

  return result;
}

uint64_t BlueFin::GlCryptoRsa::bin2key(uint64_t result, unsigned int *a2, unsigned int a3)
{
  if (a3 >= 4)
  {
    v5 = bswap32(*a2);
    if (v5 + 4 <= a3)
    {
      v6 = result;
      v7 = result + 72;
      result = BlueFin::GlCryptoRsa::rsa_bin2bn(result + 72, (a2 + 1), v5);
      v8 = 8 * v5;
      v9 = 8 * v5 - 1;
      if (((v5 & 0x10000000) != 0) == __OFSUB__(v9, -1))
      {
        v9 = -1;
      }

      while ((--v8 & 0x80000000) == 0)
      {
        if ((*(v7 + 4 * (v8 >> 5)) >> v8))
        {
          goto LABEL_9;
        }
      }

      v8 = v9;
LABEL_9:
      v6[35] = v8;
      v10 = v5 + 8;
      if (v5 + 8 <= a3)
      {
        v11 = (*(a2 + v5 + 4) << 24) | (*(a2 + v5 + 5) << 16) | (*(a2 + v5 + 6) << 8) | *(a2 + v5 + 7);
        v12 = v11 + v10;
        if (v11 + v10 <= a3)
        {
          result = BlueFin::GlCryptoRsa::rsa_bin2bn(v6, a2 + v10, v11);
          v13 = 8 * v11;
          v14 = 8 * v11 - 1;
          if (((v11 & 0x10000000) != 0) == __OFSUB__(v14, -1))
          {
            v14 = -1;
          }

          while ((--v13 & 0x80000000) == 0)
          {
            if ((v6[v13 >> 5] >> v13))
            {
              goto LABEL_17;
            }
          }

          v13 = v14;
LABEL_17:
          v6[17] = v13;
          v15 = v12 + 4;
          if (v12 + 4 <= a3)
          {
            v16 = (*(a2 + v12) << 24) | (*(a2 + v12 + 1) << 16) | (*(a2 + v12 + 2) << 8) | *(a2 + v12 + 3);
            v17 = v16 + v15;
            if (v16 + v15 <= a3)
            {
              result = BlueFin::GlCryptoRsa::rsa_bin2bn((v6 + 37), a2 + v15, v16);
              v18 = v17 + 4;
              if (v17 + 4 <= a3)
              {
                v19 = (*(a2 + v17) << 24) | (*(a2 + v17 + 1) << 16) | (*(a2 + v17 + 2) << 8) | *(a2 + v17 + 3);
                v20 = v19 + v18;
                if (v19 + v18 <= a3)
                {
                  result = BlueFin::GlCryptoRsa::rsa_bin2bn((v6 + 54), a2 + v18, v19);
                  if (v20 + 4 <= a3 && v20 + 8 <= a3)
                  {
                    v6[36] = (*(a2 + v20 + 4) << 24) | (*(a2 + v20 + 5) << 16) | (*(a2 + v20 + 6) << 8) | *(a2 + v20 + 7);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

_DWORD *BlueFin::GlCryptoRsa::rsa_bn_mont_mult(_DWORD *result, uint64_t a2, unsigned int *a3, unsigned int *a4, int a5, int a6)
{
  v34 = 0;
  memset(v33, 0, sizeof(v33));
  if (a6 >= 1)
  {
    v6 = 0;
    v9 = *a3;
    v7 = a3 + 1;
    v8 = v9;
    v10 = *a4;
    do
    {
      v11 = *(a2 + 4 * v6);
      v12 = v11 * v8;
      v13 = (LODWORD(v33[0]) + v12) * a5;
      v14 = v10 * v13;
      v15 = LODWORD(v33[0]) + v12 + v14;
      if (a6 != 1)
      {
        v16 = v7;
        v17 = a4 + 1;
        v18 = v33 + 1;
        v19 = a6 - 1;
        do
        {
          v20 = *v16++;
          v12 = HIDWORD(v12) + v20 * v11;
          v21 = *v17++;
          v14 = HIDWORD(v14) + v21 * v13;
          v15 = *v18 + HIDWORD(v15) + v12 + v14;
          *(v18++ - 1) = v15;
          --v19;
        }

        while (v19);
      }

      v22 = HIDWORD(v14) + HIDWORD(v12) + HIDWORD(v15) + *(v33 + a6);
      *(v33 + (a6 - 1)) = v22;
      *(v33 + a6) = HIDWORD(v22);
      ++v6;
    }

    while (v6 != a6);
  }

  if ((a6 & 0x80000000) == 0)
  {
    v23 = a6;
    do
    {
      v24 = *(v33 + v23);
      v25 = a4[v23];
      v26 = v23-- != 0;
    }

    while (v26 && v24 == v25);
    if (v24 >= v25)
    {
      if (a6 >= 1)
      {
        v27 = 0;
        v28 = a6;
        v29 = v33;
        do
        {
          v31 = *v29++;
          v30 = v31;
          v32 = *a4++;
          v27 = v30 - v32 + (v27 >> 32);
          *result++ = v27;
          --v28;
        }

        while (v28);
      }
    }

    else if (a6 >= 1)
    {
      return memcpy(result, v33, 4 * a6);
    }
  }

  return result;
}

_DWORD *BlueFin::GlCryptoRsa::decrypt(unsigned int *a1, uint64_t a2, _DWORD *a3, uint64_t a4, unsigned int a5)
{
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v23 = 1;
  v8 = a1[35] + 32;
  BlueFin::GlCryptoRsa::rsa_bin2bn(v21, a4, a5);
  v9 = a1[36];
  BlueFin::GlCryptoRsa::rsa_bn_mont_mult(v20, v21, a1 + 54, a1 + 18, v9, v8 >> 5);
  if (v8 >> 5 >= 1)
  {
    memcpy(__dst, a1 + 37, 4 * (v8 >> 5));
  }

  v10 = a1[17];
  if ((v10 & 0x80000000) == 0)
  {
    do
    {
      BlueFin::GlCryptoRsa::rsa_bn_mont_mult(__dst, __dst, __dst, a1 + 18, v9, v8 >> 5);
      if ((a1[v10 >> 5] >> v10))
      {
        BlueFin::GlCryptoRsa::rsa_bn_mont_mult(__dst, __dst, v20, a1 + 18, v9, v8 >> 5);
      }
    }

    while (v10-- > 0);
  }

  result = BlueFin::GlCryptoRsa::rsa_bn_mont_mult(__dst, __dst, &v23, a1 + 18, v9, v8 >> 5);
  *a3 = 0;
  v13 = (v8 >> 3) & 0xFFFFFFFC;
  if (v13 >= 3)
  {
    v14 = 1;
    do
    {
      v15 = v13 - 3;
      if (((v13 - 3) & 3) != 0)
      {
        if ((v13 & 3) != 0)
        {
          v16 = *(__dst + (v15 & 0xFFFFFFFC));
          v17 = HIBYTE(v16);
          v18 = HIWORD(v16);
          if (((v13 - 3) & 3) == 2)
          {
            LOBYTE(v17) = v18;
          }
        }

        else
        {
          v17 = *(__dst + (v15 & 0xFFFFFFFC)) >> 8;
        }
      }

      else
      {
        v17 = *(__dst + v15);
      }

      v17 = v17;
      if (!v14)
      {
        v19 = *a3;
        *a3 = v19 + 1;
        *(a2 + v19) = v17;
        v17 = 0;
      }

      --v13;
      v14 = v17;
    }

    while (v15 > 0);
  }

  return result;
}

uint64_t BlueFin::GlMeSrdRfInit4777::Add(uint64_t this, char a2, unsigned int a3, int a4)
{
  v4 = *(this + 2224);
  if (v4 >= 0x100)
  {
    v6 = "bIsulApbCount";
    DeviceFaultNotify("glmesrd_rfinit_minnow.cpp", 521, "Add", "bIsulApbCount");
    v7 = 521;
    goto LABEL_6;
  }

  if ((a3 & 3) != 0)
  {
    v6 = "(usAddr & 0x3)==0";
    DeviceFaultNotify("glmesrd_rfinit_minnow.cpp", 522, "Add", "(usAddr & 0x3)==0");
    v7 = 522;
LABEL_6:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_rfinit_minnow.cpp", v7, v6);
  }

  v5 = this + 8 * v4;
  *(v5 + 88) = a2;
  *(v5 + 90) = a3 >> 2;
  *(v5 + 92) = a4;
  *(this + 2224) = v4 + 1;
  return this;
}

uint64_t BlueFin::GlMeSrdRfInit4777::AddOrUpdateInput(uint64_t this, int a2, int a3, int a4)
{
  v4 = *(this + 2224);
  if (!v4)
  {
    return BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(this, 224, a2, a4);
  }

  for (i = (this + 92); *(i - 4) != 224 || *(i - 1) != a2; i += 2)
  {
    if (!--v4)
    {
      return BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(this, 224, a2, a4);
    }
  }

  *i = *i & ~a3 | a4;
  return this;
}

uint64_t BlueFin::GlMeSrdRfInit4777::ProgramRegsForVDACCtrl(BlueFin::GlMeSrdRfInit4777 *this)
{
  v1 = *(this + 2228);
  if (v1 == 24)
  {
    v8 = "m_eDRTestPoint != DRTestPoint4777::DR_TEST_NONE";
    DeviceFaultNotify("glmesrd_rfinit_minnow.cpp", 1276, "ProgramRegsForVDACCtrl", "m_eDRTestPoint != DRTestPoint4777::DR_TEST_NONE");
    v9 = 1276;
    goto LABEL_20;
  }

  v2 = *(this + 558);
  if (v2 >= 8)
  {
    v8 = "m_ulVDACGain <= 7";
    DeviceFaultNotify("glmesrd_rfinit_minnow.cpp", 1277, "ProgramRegsForVDACCtrl", "m_ulVDACGain <= 7");
    v9 = 1277;
    goto LABEL_20;
  }

  if (*(this + 561))
  {
    v8 = "m_eIfTestPoint == IF_TEST_OUTPUT_DISABLED";
    DeviceFaultNotify("glmesrd_rfinit_minnow.cpp", 1278, "ProgramRegsForVDACCtrl", "m_eIfTestPoint == IF_TEST_OUTPUT_DISABLED");
    v9 = 1278;
LABEL_20:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_rfinit_minnow.cpp", v9, v8);
  }

  v3 = v1 | (v2 << 6);
  if (*(this + 2236))
  {
    v3 |= 0x200u;
  }

  if (*(this + 2237))
  {
    v4 = 7168;
  }

  else
  {
    v4 = 3072;
  }

  v5 = v4 | v3;
  if (*(this + 2238))
  {
    v5 |= 0x4000u;
  }

  if (*(this + 2239))
  {
    v6 = v5 | 0x2000;
  }

  else
  {
    v6 = v5;
  }

  return BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(this, 192, 256, v6);
}

uint64_t BlueFin::GlMeSrdRfInit4777::EncodeDagcGain(BlueFin::GlMeSrdRfInit4777 *this, float a2)
{
  v2 = __exp10f(a2 / 20.0);
  v3 = logf(v2) / 0.693147181;
  v4 = v3 < 0.0;
  v5 = v3;
  if (v3 == v3)
  {
    v4 = 0;
  }

  v6 = v5 - v4;
  v7 = (v2 * 64.0) / ldexpf(1.0, (v5 - v4));
  v8 = v7;
  if (v7 <= 0.0)
  {
    if (v7 >= 0.0)
    {
      LOWORD(v10) = 0;
      goto LABEL_9;
    }

    v9 = -0.5;
  }

  else
  {
    v9 = 0.5;
  }

  v10 = (v8 + v9);
LABEL_9:
  v11 = logf(vcvts_n_f32_s32(v10, 6uLL)) * 32.0 / 0.693147181;
  v12 = (v11 + -0.5);
  if (v11 >= 0.0)
  {
    LOWORD(v12) = 0;
  }

  if (v11 > 0.0)
  {
    LOWORD(v12) = (v11 + 0.5);
  }

  return (v12 + 32 * v6);
}

uint64_t BlueFin::GlEventPump::RemoveActive(uint64_t this, BlueFin::GlActive *a2)
{
  v2 = *(a2 + 88);
  if (v2 >= 0xE)
  {
    DeviceFaultNotify("glhsm_eventpump.cpp", 74, "RemoveActive", "a->myPrio < _DIM(pkgActive)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glhsm_eventpump.cpp", 74, "a->myPrio < _DIM(pkgActive)");
  }

  *(this + 8 * v2) = 0;
  return this;
}

uint64_t BlueFin::GlTimer::fireIn(BlueFin::GlTimer *this, BlueFin::GlActive *a2, char a3, char a4, unsigned int a5)
{
  *(this + 4) = a2;
  result = BlueFin::GlTimer::arm(this, a3, a4, a5);
  *(this + 24) = 1;
  return result;
}

uint64_t BlueFin::GlTimer::rearm(BlueFin::GlTimer *this)
{
  if (*(this + 24) - 3 <= 0xFFFFFFFD)
  {
    DeviceFaultNotify("glhsm_timer.cpp", 105, "rearm", "myState == GL_TIMER_ST_ONE_SHOT || myState == GL_TIMER_ST_PERIODIC");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glhsm_timer.cpp", 105, "myState == GL_TIMER_ST_ONE_SHOT || myState == GL_TIMER_ST_PERIODIC");
  }

  v2 = BlueFin::GlUtils::m_pInstance;
  ++*(BlueFin::GlUtils::m_pInstance + 1088);
  result = (*(**v2 + 48))();
  v2[273] = result;
  *(this + 5) = *(BlueFin::GlUtils::m_pInstance + 1092);
  return result;
}

uint64_t BlueFin::GlTimer::rearm(BlueFin::GlTimer *this, int a2)
{
  if (*(this + 24) - 3 <= 0xFFFFFFFD)
  {
    DeviceFaultNotify("glhsm_timer.cpp", 120, "rearm", "myState == GL_TIMER_ST_ONE_SHOT || myState == GL_TIMER_ST_PERIODIC");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glhsm_timer.cpp", 120, "myState == GL_TIMER_ST_ONE_SHOT || myState == GL_TIMER_ST_PERIODIC");
  }

  v4 = BlueFin::GlUtils::m_pInstance;
  ++*(BlueFin::GlUtils::m_pInstance + 1088);
  result = (*(**v4 + 48))();
  v4[273] = result;
  v6 = *(BlueFin::GlUtils::m_pInstance + 1092);
  *(this + 5) = v6;
  if (*(this + 24) == 1)
  {
    *(this + 4) = a2;
  }

  else
  {
    *(this + 5) = v6 + a2 - *(this + 4);
  }

  return result;
}

char *BlueFin::GnssConstellationMaskPrinter::Print(BlueFin::GnssConstellationMaskPrinter *this)
{
  v2 = 0;
  v3 = 0;
  v4 = this + 8;
  do
  {
    v5 = BlueFin::IMPLGNSS2ABBREVSTR(v2);
    BlueFin::GlFormat::glsnprintf(&v4[v3], (128 - v3), "%s:", v6, v5);
    v8 = strlen(&v4[v3]) + v3;
    v9 = BlueFin::GlImplGnss::m_aucNumSatsPerImplGnss[v2];
    strcpy(v16, "%00x%s");
    v10 = v2 - 5;
    if ((v2 - 5) <= 1)
    {
      BlueFin::GlFormat::glsnprintf(v16, 7, "%%0%dx", v7, (v9 - 29) >> 2);
      BlueFin::GlFormat::glsnprintf(&v4[v8], (128 - v8), v16, v11, *(*this + 8 * v2 + 4) & ~(-1 << (v9 - 32)));
      v8 += strlen(&v4[v8]);
      v9 = 32;
    }

    BlueFin::GlFormat::glsnprintf(v16, 7, "%%0%dx%%s", v7, (v9 + 3) >> 2);
    v13 = *(*this + 8 * v2) & ~(-1 << v9);
    v14 = ",";
    if (v2 == 7)
    {
      v14 = "";
    }

    BlueFin::GlFormat::glsnprintf(&v4[v8], (128 - v8), v16, v12, *(*this + 8 * v2) & ~(-1 << v9), v14);
    v3 = strlen(&v4[v8]) + v8;
    ++v2;
  }

  while (v10 != 2);
  return v4;
}

const char *BlueFin::IMPLGNSS2STR(int a1)
{
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        return "QZSS";
      case 5:
        return "BDS";
      case 7:
        return "NIC";
    }
  }

  else
  {
    switch(a1)
    {
      case 0:
        return "GPS";
      case 1:
        return "SBAS";
      case 2:
        return "GLNS";
    }
  }

  if (a1 == 6)
  {
    return "GAL";
  }

  else
  {
    return "<->";
  }
}

uint64_t BlueFin::GlOrbitInfoValidityPrinter::FormatTime(BlueFin::GlOrbitInfoValidityPrinter *this, char *a2, uint64_t a3, const char *a4)
{
  if ((a3 - 0x7FFFFFFF) > 1)
  {
    if ((a3 & 0x80000000) != 0)
    {

      return BlueFin::GlOrbitInfoValidityPrinter::FormatTime(this, a2, a3, a4);
    }

    else
    {
      if (a3 > 0x6A4)
      {
        v5 = a3 / 3600.0;
        v6 = v5 < 50.4;
        if (v5 >= 50.4)
        {
          v5 = v5 / 24.0;
        }

        v7 = 100;
        if (v6)
        {
          v7 = 104;
        }

        BlueFin::GlFormat::glsnprintf(this, a2, "%4.1f%c", a4, *&v5, v7);
      }

      else
      {
        BlueFin::GlFormat::glsnprintf(this, a2, "%us", a4, a3);
      }

      return 1;
    }
  }

  else
  {
    strlcpy(this, "invalid", a2);
    return 0;
  }
}

uint64_t BlueFin::GlOrbitInfoValidityPrinter::FormatTime(BlueFin::GlOrbitInfoValidityPrinter *this, size_t __size, unsigned int a3, unsigned int a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    strlcpy(this, "invalid", __size);
    return 0;
  }

  else
  {
    if ((a3 & 0x80000000) != 0)
    {
      *this = 45;
      this = (this + 1);
      __size = (__size - 1);
      a3 = -a3;
    }

    return BlueFin::GlOrbitInfoValidityPrinter::FormatTime(this, __size, a3, a4);
  }
}

uint64_t BlueFin::GlOrbitInfoValidityPrinter::Print(BlueFin::GlOrbitInfoValidityPrinter *this, const char *a2, uint64_t a3, unsigned int a4)
{
  v16 = *MEMORY[0x29EDCA608];
  v5 = *this;
  v6 = **this;
  if (v6 <= 7)
  {
    BlueFin::IMPLGNSS2STR(v6);
    v5 = *this;
  }

  BlueFin::GlOrbitInfoValidityPrinter::FormatTime(v14, 0x40uLL, *(v5 + 2), a4);
  BlueFin::GlOrbitInfoValidityPrinter::FormatTime(v13, 0x40, *(*this + 4), v7);
  v9 = BlueFin::GlOrbitInfoValidityPrinter::FormatTime(v15, 0x40uLL, *(*this + 12), v8);
  v10 = *(*this + 1);
  if (v9)
  {
    result = GlCustomLog(14, "<glAid> %-4s %-4s %4d %8s %8s %8s\n");
  }

  else
  {
    result = GlCustomLog(14, "<glAid> %-4s %-4s %4d %8s %8s\n");
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL BlueFin::GlAscii85::Decode(BlueFin::GlAscii85 *this, const char *a2, unsigned __int8 *a3, unsigned int a4, uint64_t a5, unsigned int *a6, unsigned int *a7, int a8)
{
  if (*(this + 5))
  {
    return (*(this + 5) & 1) == 0;
  }

  *(this + 7) = 1;
  v13 = *(this + 8);
  if (!v13)
  {
    *(this + 4) = 85;
    *this = 1431655765;
  }

  v14 = a4 - (a8 ^ 1);
  v15 = *a7;
  v16 = *a6;
  if (*a7 < a5 && v16 <= v14)
  {
    v44 = a8;
    v45 = a4;
    v18 = a5 + 1;
    v19 = this + 5;
    v46 = a2;
    do
    {
      if (v13 <= 4)
      {
        while (v16 <= v14)
        {
          if (v16 >= a4)
          {
            if (v13 == 1 || !v44)
            {
              goto LABEL_40;
            }

            ++*(this + 7);
            break;
          }

          v20 = v16 + 1;
          *a6 = v16 + 1;
          v21 = a2[v16];
          if (v21 == 122 && !*(this + 8))
          {
            *(this + 4) = 0;
            *this = 0;
            *(this + 8) = 5;
            goto LABEL_27;
          }

          v22 = BlueFin::GlAscii85::m_aucDecodeTable[v21];
          if (v22 != 86)
          {
            if (v22 == 85)
            {
              goto LABEL_40;
            }

            v23 = *(this + 8);
            *(this + 8) = v23 + 1;
            *(this + v23) = v22;
            v20 = *a6;
          }

          v13 = *(this + 8);
          v16 = v20;
          if (v13 >= 5)
          {
            goto LABEL_27;
          }
        }

        if (!v13)
        {
          break;
        }

        v24 = a5;
        memset(this + v13, 85, 5 - v13);
        a4 = v45;
        a2 = v46;
        a5 = v24;
        if (*(this + 7) == 1)
        {
          v13 = *(this + 8);
          break;
        }
      }

LABEL_27:
      v25 = *(this + 9);
      if (((*(this + 10) - v25) & 4) != 0)
      {
        v13 = *(this + 8);
        if (v18 - *a7 < v13)
        {
          break;
        }

        if (v13 >= 2)
        {
          v26 = 1;
          do
          {
            v27 = v19[v25];
            v28 = *a7;
            *a7 = v28 + 1;
            a3[v28] = v27;
            LODWORD(v28) = *(this + 8);
            v25 = (*(this + 9) + 1) & 7;
            *(this + 9) = v25;
            ++v26;
          }

          while (v26 < v28);
        }
      }

      v29 = *(this + 3) + 85 * (*(this + 2) + 85 * (*(this + 1) + 85 * *this));
      if (v29 >= 0x3030304 || (v30 = 85 * v29, v31 = *(this + 4), __CFADD__(v30, v31)))
      {
LABEL_40:
        result = 0;
        *(this + 5) = 3;
        return result;
      }

      v32 = *(this + 8) - 1;
      *(this + 8) = v32;
      if (v32)
      {
        v33 = v30 + v31;
        v34 = *(this + 10);
        do
        {
          v19[v34] = HIBYTE(v33);
          v35 = *(this + 10);
          *(this + 4) = BlueFin::GlAscii85::m_aucCrcLookupTable[*(this + 4) ^ v19[v35]];
          v33 <<= 8;
          v34 = (v35 + 1) & 7;
          *(this + 10) = v34;
          v36 = *(this + 8) - 1;
          *(this + 8) = v36;
        }

        while (v36);
      }

      v13 = 0;
      if (*a7 >= a5)
      {
        break;
      }

      v16 = *a6;
    }

    while (*a6 <= v14);
    v15 = *a7;
    a8 = v44;
  }

  v37 = *(this + 9);
  v38 = v13 == 0;
  v39 = (*(this + 10) - v37) & 7;
  if (!v38)
  {
    ++v39;
  }

  if (v15 < a5)
  {
    if (v39)
    {
      v40 = 0;
    }

    else
    {
      v40 = -1;
    }

    while (v39 >= 2)
    {
      --v39;
      v41 = *(this + v37 + 5);
      *a7 = v15 + 1;
      a3[v15] = v41;
      v37 = (*(this + 9) + 1) & 7;
      *(this + 9) = v37;
      v15 = *a7;
      if (*a7 >= a5)
      {
        goto LABEL_52;
      }
    }

    v39 = v40;
  }

LABEL_52:
  v42 = *(this + 5);
  if (a8)
  {
    v43 = *(this + 5);
    if (v39 <= 1)
    {
      LOBYTE(v43) = v42 | 2;
      *(this + 5) = v42 | 2;
      if (*(this + 4) != 125)
      {
        LOBYTE(v43) = v42 | 3;
        *(this + 5) = v42 | 3;
      }
    }
  }

  else
  {
    v43 = *(this + 5);
  }

  return (v43 & 1) == 0;
}

unint64_t BlueFin::GlUtlB64::b64_encode_(unsigned __int8 *a1, unint64_t a2, _BYTE *a3, unint64_t a4, unsigned int a5, _DWORD *a6)
{
  v7 = a3;
  v8 = a2;
  v9 = (2 * (((a2 + 2) * 0xAAAAAAAAAAAAAAABLL) >> 64)) & 0xFFFFFFFFFFFFFFFCLL;
  *a6 = 0;
  if (a5)
  {
    v9 = v9 + 2 * ((v9 + a5 - 1) / a5) - 2;
  }

  if (a3)
  {
    if (v9 <= a4)
    {
      if (a2 >= 3)
      {
        v10 = 0;
        do
        {
          v11 = v7;
          v12 = *a1;
          v13 = v12 >> 2;
          v14 = a1[1];
          v15 = (v14 >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (v12 & 3));
          v16 = a1[2];
          *v7 = BlueFin::GlUtlB64::b64_chars[v13];
          v7[1] = BlueFin::GlUtlB64::b64_chars[v15];
          v7[2] = BlueFin::GlUtlB64::b64_chars[(v16 >> 6) & 0xFFFFFFFFFFFFFFC3 | (4 * (v14 & 0xF))];
          v7 += 4;
          v11[3] = BlueFin::GlUtlB64::b64_chars[v16 & 0x3F];
          v10 += 4;
          if (v10 == a5 && v7 != &a3[a4])
          {
            v10 = 0;
            *(v11 + 2) = 2573;
            v7 = v11 + 6;
          }

          a1 += 3;
          v8 -= 3;
        }

        while (v8 > 2);
      }

      if (v8)
      {
        for (i = 0; i != v8; ++i)
        {
          v19[i] = a1[i];
        }

        if ((i - 1) < 2)
        {
          bzero(&v19[v8], v8 ^ 3);
        }

        BlueFin::GlUtlB64::b64_encode_(v19, 3, v7, 12, 0, a6);
        memset(&v7[v8 + 1], 61, v8 ^ 3);
      }
    }

    else
    {
      v9 = 0;
      *a6 = 1;
    }
  }

  return v9;
}

uint64_t BlueFin::GlBitBuffer::InitializeForRead(uint64_t this, const unsigned int *a2, int a3)
{
  if ((a3 & 3) != 0)
  {
    DeviceFaultNotify("glutl_bitbuffer.cpp", 83, "InitializeForRead", "(ulChars & 0x03) == 0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_bitbuffer.cpp", 83, "(ulChars & 0x03) == 0");
  }

  *this = 0;
  *(this + 8) = a2;
  *(this + 16) = 1;
  *(this + 36) = 0;
  *(this + 24) = (8 * a3);
  *(this + 20) = 8 * a3;
  *(this + 40) = 0;
  return this;
}

uint64_t BlueFin::GlBitBuffer::Reset(uint64_t this)
{
  if ((*(this + 40) & 1) == 0)
  {
    DeviceFaultNotify("glutl_bitbuffer.cpp", 154, "Reset", "m_bMarked");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_bitbuffer.cpp", 154, "m_bMarked");
  }

  *(this + 28) = *(this + 32);
  return this;
}

BOOL BlueFin::GlBitBuffer::CompareBits(BlueFin::GlBitBuffer *this, BlueFin::GlBitBuffer *a2, BlueFin::GlBitBuffer *a3, const unsigned int *a4, const unsigned int *a5, const unsigned int *a6)
{
  if (a6 < 1)
  {
    return 1;
  }

  v9 = 0;
  v10 = a6;
  do
  {
    BlueFin::GlBitBuffer::Position(this, *(a3 + v9));
    BlueFin::GlBitBuffer::Position(a2, a4[v9]);
    v11 = a5[v9];
    if (v11 < 1)
    {
      result = 1;
    }

    else
    {
      do
      {
        if (v11 >= 0x20)
        {
          v12 = 32;
        }

        else
        {
          v12 = v11;
        }

        v13 = BlueFin::GlBitBuffer::GetU(this, v12);
        v14 = BlueFin::GlBitBuffer::GetU(a2, v12);
        result = v13 == v14;
        if (v11 < 0x21)
        {
          break;
        }

        v11 -= 32;
      }

      while (v13 == v14);
    }

    if (!result)
    {
      break;
    }

    ++v9;
  }

  while (v9 < v10);
  return result;
}

uint64_t BlueFin::GlUtlCrc::GlUtlCrcCalc(BlueFin::GlUtlCrc *this, const unsigned int *a2, unsigned int a3)
{
  v3 = *this;
  if (a3)
  {
    for (i = 0; i < a3; ++i)
    {
      v5 = *a2++;
      v3 = BlueFin::GlUtlCrc::ucCrcTable[BlueFin::GlUtlCrc::ucCrcTable[BlueFin::GlUtlCrc::ucCrcTable[BlueFin::GlUtlCrc::ucCrcTable[(v3 ^ v5)] ^ BYTE1(v5)] ^ BYTE2(v5)] ^ HIBYTE(v5)];
      *this = v3;
    }
  }

  return v3;
}

uint64_t BlueFin::GlSysLogEntry::PutS8(BlueFin::GlSysLogEntry *this, char a2)
{
  v4 = *(this + 11);
  if ((*(*this + 40))(this) <= v4)
  {
    DeviceFaultNotify("glutl_slog_codec.cpp", 86, "PutS8", "m_sDataSize + sizeof(GlIntS8) <= BufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_slog_codec.cpp", 86, "m_sDataSize + sizeof(GlIntS8) <= BufSize()");
  }

  result = (*(*this + 24))(this);
  v6 = *(this + 11);
  *(this + 11) = v6 + 1;
  *(result + v6) = a2;
  return result;
}

uint64_t BlueFin::GlSysLogEntry::PutU8(BlueFin::GlSysLogEntry *this, char a2)
{
  v4 = *(this + 11);
  if ((*(*this + 40))(this) <= v4)
  {
    DeviceFaultNotify("glutl_slog_codec.cpp", 102, "PutU8", "m_sDataSize + sizeof(GlIntU8) <= BufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_slog_codec.cpp", 102, "m_sDataSize + sizeof(GlIntU8) <= BufSize()");
  }

  result = (*(*this + 24))(this);
  v6 = *(this + 11);
  *(this + 11) = v6 + 1;
  *(result + v6) = a2;
  return result;
}

uint64_t BlueFin::GlSysLogEntry::PutS16(BlueFin::GlSysLogEntry *this, __int16 a2)
{
  v4 = *(this + 11) + 2;
  if (v4 > (*(*this + 40))(this))
  {
    DeviceFaultNotify("glutl_slog_codec.cpp", 150, "PutS16", "m_sDataSize + sizeof(GlIntS16) <= BufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_slog_codec.cpp", 150, "m_sDataSize + sizeof(GlIntS16) <= BufSize()");
  }

  v5 = (*(*this + 24))(this);
  v6 = *(this + 11);
  *(this + 11) = v6 + 1;
  *(v5 + v6) = a2;
  result = (*(*this + 24))(this);
  v8 = *(this + 11);
  *(this + 11) = v8 + 1;
  *(result + v8) = HIBYTE(a2);
  return result;
}

uint64_t BlueFin::GlSysLogEntry::PutU16(BlueFin::GlSysLogEntry *this, __int16 a2)
{
  v4 = *(this + 11) + 2;
  if (v4 > (*(*this + 40))(this))
  {
    DeviceFaultNotify("glutl_slog_codec.cpp", 170, "PutU16", "m_sDataSize + sizeof(GlIntU16) <= BufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_slog_codec.cpp", 170, "m_sDataSize + sizeof(GlIntU16) <= BufSize()");
  }

  v5 = (*(*this + 24))(this);
  v6 = *(this + 11);
  *(this + 11) = v6 + 1;
  *(v5 + v6) = a2;
  result = (*(*this + 24))(this);
  v8 = *(this + 11);
  *(this + 11) = v8 + 1;
  *(result + v8) = HIBYTE(a2);
  return result;
}

uint64_t BlueFin::GlSysLogEntry::PutGlSet(BlueFin::GlSysLogEntry *this, const BlueFin::GlSetBase *a2)
{
  v4 = 4 * (*(a2 + 8) & 0x3F) + *(this + 11);
  if (v4 >= (*(*this + 40))(this))
  {
    DeviceFaultNotify("glutl_slog_codec.cpp", 190, "PutGlSet", "(m_sDataSize + otBase.GetMaxByteSize()+1) <= (GlIntS32) BufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_slog_codec.cpp", 190, "(m_sDataSize + otBase.GetMaxByteSize()+1) <= (GlIntS32) BufSize()");
  }

  v5 = *(a2 + 8);
  result = BlueFin::GlSysLogEntry::PutU8(this, 4 * (v5 & 0x3Fu));
  if (4 * (v5 & 0x3F))
  {
    v7 = 0;
    v8 = v5 & 0x3F;
    do
    {
      ULong = BlueFin::GlSetBase::GetULong(a2, v7);
      result = BlueFin::GlSysLogEntry::PutU32(this, ULong);
      ++v7;
    }

    while (v8 > v7);
  }

  return result;
}

uint64_t BlueFin::GlSysLogEntry::PutU32(BlueFin::GlSysLogEntry *this, int a2)
{
  v8 = a2;
  v3 = *(this + 11) + 4;
  if (v3 > (*(*this + 40))(this))
  {
    DeviceFaultNotify("glutl_slog_codec.cpp", 210, "PutU32", "m_sDataSize + sizeof(GlIntU32) <= BufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_slog_codec.cpp", 210, "m_sDataSize + sizeof(GlIntU32) <= BufSize()");
  }

  for (i = 0; i != 4; ++i)
  {
    v5 = *(&v8 + i);
    result = (*(*this + 24))(this);
    v7 = *(this + 11);
    *(this + 11) = v7 + 1;
    *(result + v7) = v5;
  }

  return result;
}

uint64_t BlueFin::GlSysLogEntry::PutS32(BlueFin::GlSysLogEntry *this, int a2)
{
  v8 = a2;
  v3 = *(this + 11) + 4;
  if (v3 > (*(*this + 40))(this))
  {
    DeviceFaultNotify("glutl_slog_codec.cpp", 228, "PutS32", "m_sDataSize + sizeof(GlIntS32) <= BufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_slog_codec.cpp", 228, "m_sDataSize + sizeof(GlIntS32) <= BufSize()");
  }

  for (i = 0; i != 4; ++i)
  {
    v5 = *(&v8 + i);
    result = (*(*this + 24))(this);
    v7 = *(this + 11);
    *(this + 11) = v7 + 1;
    *(result + v7) = v5;
  }

  return result;
}

uint64_t BlueFin::GlSysLogEntry::PutU64(BlueFin::GlSysLogEntry *this, uint64_t a2)
{
  v8 = a2;
  v3 = *(this + 11) + 8;
  if (v3 > (*(*this + 40))(this))
  {
    DeviceFaultNotify("glutl_slog_codec.cpp", 247, "PutU64", "m_sDataSize + sizeof(GlIntU64) <= BufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_slog_codec.cpp", 247, "m_sDataSize + sizeof(GlIntU64) <= BufSize()");
  }

  for (i = 0; i != 8; ++i)
  {
    v5 = *(&v8 + i);
    result = (*(*this + 24))(this);
    v7 = *(this + 11);
    *(this + 11) = v7 + 1;
    *(result + v7) = v5;
  }

  return result;
}

uint64_t BlueFin::GlSysLogEntry::PutS64(BlueFin::GlSysLogEntry *this, uint64_t a2)
{
  v8 = a2;
  v3 = *(this + 11) + 8;
  if (v3 > (*(*this + 40))(this))
  {
    DeviceFaultNotify("glutl_slog_codec.cpp", 267, "PutS64", "m_sDataSize + sizeof(GlIntS64) <= BufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_slog_codec.cpp", 267, "m_sDataSize + sizeof(GlIntS64) <= BufSize()");
  }

  for (i = 0; i != 8; ++i)
  {
    v5 = *(&v8 + i);
    result = (*(*this + 24))(this);
    v7 = *(this + 11);
    *(this + 11) = v7 + 1;
    *(result + v7) = v5;
  }

  return result;
}

uint64_t BlueFin::GlSysLogEntry::PutBuffer(BlueFin::GlSysLogEntry *this, const unsigned __int8 *a2, int a3)
{
  v6 = a3 + *(this + 11) + 2;
  if (v6 > (*(*this + 40))(this))
  {
    DeviceFaultNotify("glutl_slog_codec.cpp", 293, "PutBuffer", "m_sDataSize + usSize + sizeof(GlIntU16) <= BufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_slog_codec.cpp", 293, "m_sDataSize + usSize + sizeof(GlIntU16) <= BufSize()");
  }

  result = BlueFin::GlSysLogEntry::PutU16(this, a3);
  if (a3)
  {
    v8 = 0;
    do
    {
      v9 = a2[v8];
      result = (*(*this + 24))(this);
      v10 = *(this + 11);
      *(this + 11) = v10 + 1;
      *(result + v10) = v9;
      ++v8;
    }

    while (a3 > v8);
  }

  return result;
}

uint64_t BlueFin::GlSysLogEntry::GetGlSet96BitsObsolete@<X0>(BlueFin::GlSysLogEntry *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 12) = 0;
  v3 = a2 + 12;
  *a2 = a2 + 12;
  *(a2 + 8) = 3;
  *(a2 + 20) = 0;
  if (*(this + 10) + 12 > *(this + 11))
  {
    DeviceFaultNotify("glutl_slog_codec.cpp", 388, "GetGlSet96BitsObsolete", "m_sReadIdx + otValue.GetMaxByteSize() <= m_sDataSize");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_slog_codec.cpp", 388, "m_sReadIdx + otValue.GetMaxByteSize() <= m_sDataSize");
  }

  for (i = 0; i != 4; ++i)
  {
    v6 = (*(*this + 24))(this);
    v7 = *(this + 10);
    *(this + 10) = v7 + 1;
    *(v3 + i) = *(v6 + v7);
  }

  for (j = 0; j != 4; ++j)
  {
    v9 = (*(*this + 24))(this);
    v10 = *(this + 10);
    *(this + 10) = v10 + 1;
    *(a2 + 16 + j) = *(v9 + v10);
  }

  v11 = 0;
  v12 = a2 + 20;
  do
  {
    result = (*(*this + 24))(this);
    v14 = *(this + 10);
    *(this + 10) = v14 + 1;
    *(v12 + v11++) = *(result + v14);
  }

  while (v11 != 4);
  return result;
}

uint64_t BlueFin::GlSysLogEntry::GetGlSet64BitsObsolete@<X0>(BlueFin::GlSysLogEntry *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 10) + 8 > *(this + 11))
  {
    DeviceFaultNotify("glutl_slog_codec.cpp", 440, "GetGlSet64BitsObsolete", "m_sReadIdx + 2*sizeof(GlIntU32) <= m_sDataSize");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_slog_codec.cpp", 440, "m_sReadIdx + 2*sizeof(GlIntU32) <= m_sDataSize");
  }

  v4 = 0;
  *(a2 + 12) = 0;
  *a2 = a2 + 12;
  *(a2 + 8) = 3;
  *(a2 + 20) = 0;
  do
  {
    v5 = (*(*this + 24))(this);
    v6 = *(this + 10);
    *(this + 10) = v6 + 1;
    *(a2 + 12 + v4++) = *(v5 + v6);
  }

  while (v4 != 4);
  v7 = 0;
  v8 = a2 + 16;
  do
  {
    result = (*(*this + 24))(this);
    v10 = *(this + 10);
    *(this + 10) = v10 + 1;
    *(v8 + v7++) = *(result + v10);
  }

  while (v7 != 4);
  return result;
}

uint64_t BlueFin::GlSysLogEntry::GetS64(BlueFin::GlSysLogEntry *this)
{
  if (*(this + 10) + 8 > *(this + 11))
  {
    DeviceFaultNotify("glutl_slog_codec.cpp", 552, "GetS64", "m_sReadIdx + sizeof(GlIntS64) <= m_sDataSize");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_slog_codec.cpp", 552, "m_sReadIdx + sizeof(GlIntS64) <= m_sDataSize");
  }

  v2 = 0;
  v6 = 0;
  do
  {
    v3 = (*(*this + 24))(this);
    v4 = *(this + 10);
    *(this + 10) = v4 + 1;
    *(&v6 + v2++) = *(v3 + v4);
  }

  while (v2 != 8);
  return v6;
}

uint64_t BlueFin::GlSysLogEntry::PutF32(BlueFin::GlSysLogEntry *this, float a2)
{
  v8 = a2;
  v3 = *(this + 11) + 4;
  if (v3 > (*(*this + 40))(this))
  {
    DeviceFaultNotify("glutl_slog_codec.cpp", 622, "PutF32", "m_sDataSize + sizeof(fTmp) <= BufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_slog_codec.cpp", 622, "m_sDataSize + sizeof(fTmp) <= BufSize()");
  }

  for (i = 0; i != 4; ++i)
  {
    v5 = *(&v8 + i);
    result = (*(*this + 24))(this);
    v7 = *(this + 11);
    *(this + 11) = v7 + 1;
    *(result + v7) = v5;
  }

  return result;
}

uint64_t BlueFin::GlSysLogEntry::PutD64(BlueFin::GlSysLogEntry *this, double a2)
{
  v8 = a2;
  v3 = *(this + 11) + 8;
  if (v3 > (*(*this + 40))(this))
  {
    DeviceFaultNotify("glutl_slog_codec.cpp", 678, "PutD64", "m_sDataSize + sizeof(dTmp) <= BufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_slog_codec.cpp", 678, "m_sDataSize + sizeof(dTmp) <= BufSize()");
  }

  for (i = 0; i != 8; ++i)
  {
    v5 = *(&v8 + i);
    result = (*(*this + 24))(this);
    v7 = *(this + 11);
    *(this + 11) = v7 + 1;
    *(result + v7) = v5;
  }

  return result;
}

unsigned int *BlueFin::GlStream::PutS32(unsigned int *this, unsigned int a2)
{
  if (this[6])
  {
    v15 = "m_uiBitOffset == 0";
    DeviceFaultNotify("glutl_stream.cpp", 88, "PutS32", "m_uiBitOffset == 0");
    v16 = 88;
    goto LABEL_11;
  }

  if (this[7])
  {
    v15 = "m_uiBitsRemainingInWord == 0";
    DeviceFaultNotify("glutl_stream.cpp", 89, "PutS32", "m_uiBitsRemainingInWord == 0");
    v16 = 89;
    goto LABEL_11;
  }

  v2 = *this;
  if (v2 + 4 > this[4])
  {
    v15 = "m_uiOffset+4<=m_uiMaxOffset";
    DeviceFaultNotify("glutl_stream.cpp", 91, "PutS32", "m_uiOffset+4<=m_uiMaxOffset");
    v16 = 91;
LABEL_11:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_stream.cpp", v16, v15);
  }

  if (*(this + 20) == 1)
  {
    v3 = *(this + 1);
    *this = v2 + 1;
    *(v3 + v2) = HIBYTE(a2);
    v4 = *(this + 1);
    v5 = *this;
    *this = v5 + 1;
    *(v4 + v5) = BYTE2(a2);
    v6 = *(this + 1);
    v7 = *this;
    *this = v7 + 1;
    *(v6 + v7) = BYTE1(a2);
  }

  else
  {
    v8 = *(this + 1);
    *this = v2 + 1;
    *(v8 + v2) = a2;
    v9 = *(this + 1);
    v10 = *this;
    *this = v10 + 1;
    *(v9 + v10) = BYTE1(a2);
    v11 = *(this + 1);
    v12 = *this;
    *this = v12 + 1;
    *(v11 + v12) = BYTE2(a2);
    a2 >>= 24;
  }

  v13 = *(this + 1);
  v14 = *this;
  *this = v14 + 1;
  *(v13 + v14) = a2;
  return this;
}

unsigned int *BlueFin::GlStream::PutF32(BlueFin::GlStream *this, float a2)
{
  if (*(this + 6))
  {
    v3 = "m_uiBitOffset == 0";
    DeviceFaultNotify("glutl_stream.cpp", 188, "PutF32", "m_uiBitOffset == 0");
    v4 = 188;
    goto LABEL_10;
  }

  if (*(this + 7))
  {
    v3 = "m_uiBitsRemainingInWord == 0";
    DeviceFaultNotify("glutl_stream.cpp", 189, "PutF32", "m_uiBitsRemainingInWord == 0");
    v4 = 189;
    goto LABEL_10;
  }

  if ((*this + 4) > *(this + 4))
  {
    v3 = "m_uiOffset+4<=m_uiMaxOffset";
    DeviceFaultNotify("glutl_stream.cpp", 191, "PutF32", "m_uiOffset+4<=m_uiMaxOffset");
    v4 = 191;
LABEL_10:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_stream.cpp", v4, v3);
  }

  return BlueFin::GlStream::PutU32(this, LODWORD(a2));
}

void *BlueFin::GlStream::PutStr(BlueFin::GlStream *this, unsigned __int8 *a2, int a3)
{
  if (*(this + 6))
  {
    v7 = "m_uiBitOffset == 0";
    DeviceFaultNotify("glutl_stream.cpp", 199, "PutStr", "m_uiBitOffset == 0");
    v8 = 199;
    goto LABEL_8;
  }

  if (*(this + 7))
  {
    v7 = "m_uiBitsRemainingInWord == 0";
    DeviceFaultNotify("glutl_stream.cpp", 200, "PutStr", "m_uiBitsRemainingInWord == 0");
    v8 = 200;
    goto LABEL_8;
  }

  v5 = *this;
  if ((v5 + a3) > *(this + 4))
  {
    v7 = "m_uiOffset+size<=m_uiMaxOffset";
    DeviceFaultNotify("glutl_stream.cpp", 202, "PutStr", "m_uiOffset+size<=m_uiMaxOffset");
    v8 = 202;
LABEL_8:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_stream.cpp", v8, v7);
  }

  result = memcpy((*(this + 1) + v5), a2, a3);
  *this += a3;
  return result;
}

uint64_t BlueFin::GlStream::GetS08(BlueFin::GlStream *this)
{
  if (*(this + 6))
  {
    v4 = "m_uiBitOffset == 0";
    DeviceFaultNotify("glutl_stream.cpp", 211, "GetS08", "m_uiBitOffset == 0");
    v5 = 211;
    goto LABEL_8;
  }

  if (*(this + 7))
  {
    v4 = "m_uiBitsRemainingInWord == 0";
    DeviceFaultNotify("glutl_stream.cpp", 212, "GetS08", "m_uiBitsRemainingInWord == 0");
    v5 = 212;
    goto LABEL_8;
  }

  v1 = *this;
  if ((v1 + 1) > *(this + 4))
  {
    v4 = "m_uiOffset+1<=m_uiMaxOffset";
    DeviceFaultNotify("glutl_stream.cpp", 214, "GetS08", "m_uiOffset+1<=m_uiMaxOffset");
    v5 = 214;
LABEL_8:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_stream.cpp", v5, v4);
  }

  v2 = *(this + 1);
  *this = v1 + 1;
  return *(v2 + v1);
}

float BlueFin::GlStream::GetF32(BlueFin::GlStream *this)
{
  if (*(this + 6))
  {
    v2 = "m_uiBitOffset == 0";
    DeviceFaultNotify("glutl_stream.cpp", 244, "GetF32", "m_uiBitOffset == 0");
    v3 = 244;
    goto LABEL_8;
  }

  if (*(this + 7))
  {
    v2 = "m_uiBitsRemainingInWord == 0";
    DeviceFaultNotify("glutl_stream.cpp", 245, "GetF32", "m_uiBitsRemainingInWord == 0");
    v3 = 245;
    goto LABEL_8;
  }

  if ((*this + 4) > *(this + 4))
  {
    v2 = "m_uiOffset+4<=m_uiMaxOffset";
    DeviceFaultNotify("glutl_stream.cpp", 247, "GetF32", "m_uiOffset+4<=m_uiMaxOffset");
    v3 = 247;
LABEL_8:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_stream.cpp", v3, v2);
  }

  LODWORD(result) = BlueFin::GlStream::GetU32(this);
  return result;
}

uint64_t BlueFin::GlStream::CarpGetBits(BlueFin::GlStream *this, unsigned int a2, unsigned int a3)
{
  if (!a2)
  {
    v5 = "ulNumBits > 0";
    DeviceFaultNotify("glutl_stream.cpp", 356, "CarpGetBits", "ulNumBits > 0");
    v6 = 356;
    goto LABEL_28;
  }

  if (a2 > a3)
  {
    v5 = "ulNumBits <= ulNumBitsInWord";
    DeviceFaultNotify("glutl_stream.cpp", 357, "CarpGetBits", "ulNumBits <= ulNumBitsInWord");
    v6 = 357;
    goto LABEL_28;
  }

  if (a3 > 0x20 || ((1 << a3) & 0x100010100) == 0)
  {
    v5 = "ulNumBitsInWord==NUM_BITS_PER_BYTE*2 || ulNumBitsInWord==NUM_BITS_PER_BYTE*4 || ulNumBitsInWord==NUM_BITS_PER_BYTE";
    DeviceFaultNotify("glutl_stream.cpp", 358, "CarpGetBits", "ulNumBitsInWord==NUM_BITS_PER_BYTE*2 || ulNumBitsInWord==NUM_BITS_PER_BYTE*4 || ulNumBitsInWord==NUM_BITS_PER_BYTE");
    v6 = 358;
    goto LABEL_28;
  }

  v3 = *(this + 6);
  if (!v3)
  {
    if (*(this + 7))
    {
      v3 = 0;
      goto LABEL_16;
    }

    *(this + 6) = 7;
    *(this + 7) = a3;
    v4 = *this;
    if (a3 == 16)
    {
      if (v4 + 1 >= *(this + 4))
      {
        v5 = "m_uiOffset+1 < m_uiMaxOffset";
        DeviceFaultNotify("glutl_stream.cpp", 385, "CarpGetBits", "m_uiOffset+1 < m_uiMaxOffset");
        v6 = 385;
        goto LABEL_28;
      }

      goto LABEL_15;
    }

    if (a3 == 8)
    {
      if (v4 >= *(this + 4))
      {
        v5 = "m_uiOffset+0 < m_uiMaxOffset";
        DeviceFaultNotify("glutl_stream.cpp", 381, "CarpGetBits", "m_uiOffset+0 < m_uiMaxOffset");
        v6 = 381;
        goto LABEL_28;
      }

      goto LABEL_15;
    }

    if (v4 + 3 < *(this + 4))
    {
LABEL_15:
      v3 = 7;
      goto LABEL_16;
    }

    v5 = "m_uiOffset+3 < m_uiMaxOffset";
    DeviceFaultNotify("glutl_stream.cpp", 389, "CarpGetBits", "m_uiOffset+3 < m_uiMaxOffset");
    v6 = 389;
LABEL_28:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_stream.cpp", v6, v5);
  }

LABEL_16:
  LODWORD(v7) = 0;
  v8 = a2 - 1;
  do
  {
    if ((v8 & 0x80000000) != 0)
    {
      v5 = "slShiftVal >= 0";
      DeviceFaultNotify("glutl_stream.cpp", 397, "CarpGetBits", "slShiftVal >= 0");
      v6 = 397;
      goto LABEL_28;
    }

    v9 = *this;
    if (v9 >= *(this + 4))
    {
      v5 = "m_uiOffset < m_uiMaxOffset";
      DeviceFaultNotify("glutl_stream.cpp", 398, "CarpGetBits", "m_uiOffset < m_uiMaxOffset");
      v6 = 398;
      goto LABEL_28;
    }

    v10 = *(*(this + 1) + v9);
    if (v3)
    {
      v11 = v3 - 1;
    }

    else
    {
      *this = v9 + 1;
      v11 = 7;
    }

    v7 = (((v10 >> v3) & 1) << v8) | v7;
    v12 = *(this + 7) - 1;
    *(this + 6) = v11;
    *(this + 7) = v12;
    --v8;
    v3 = v11;
  }

  while (v8 != -1);
  if (!v12)
  {
    *(this + 6) = 0;
  }

  return v7;
}

uint64_t BlueFin::GlUtils::Assert(uint64_t this, const char *a2, uint64_t a3, const char *a4)
{
  v7 = *MEMORY[0x29EDCA608];
  if (*(this + 1120) == 1)
  {
    v4 = this;
    *(this + 1120) = 0;
    v6[0] = 0;
    BlueFin::GlFormat::glsnprintf(v6, 0x200, "Assertion failed in %s:%d\n", a4, a2, a3);
    this = (*(**v4 + 64))(*v4, v6);
  }

  v5 = *MEMORY[0x29EDCA608];
  return this;
}

char *BlueFin::GlUtils::SysLogInternal(BlueFin::GlUtils *this, unsigned int a2, char *a3, char *a4)
{
  v40 = *MEMORY[0x29EDCA608];
  v6 = *(this + 541);
  v7 = 1050;
  v8 = 1050 - v6;
  v9 = this + 30;
  v10 = BlueFin::GlFormat::gl_format((this + v6 + 30), (1050 - v6), a3, a4, 0, 1, 1);
  if (v10 >= v8 - 1 || v10 < 0)
  {
    *(this + 541) = 1050;
    *(this + 539) = 2620;
  }

  else
  {
    v7 = (*(this + 541) + v10);
    *(this + 541) += v10;
    if (v7 >= 1050)
    {
      strcpy(this + 1078, "<\n");
      if (v7 != 1050)
      {
        DeviceFaultNotify("glutl_utils.cpp", 407, "SysLogInternal", "m_sCurrOffset <= GLSYSLOG_MAX_INT_LINE_SIZE");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_utils.cpp", 407, "m_sCurrOffset <= GLSYSLOG_MAX_INT_LINE_SIZE");
      }

      v7 = 1050;
    }
  }

  *(this + 1080) = 0;
  if (a2 >= 0x38)
  {
    LODWORD(v11) = 35;
  }

  else
  {
    LODWORD(v11) = 38;
  }

  if ((a2 & 0xF8) == 8)
  {
    v11 = 36;
  }

  else
  {
    v11 = v11;
  }

  v34 = v11;
  result = memchr(v9, 10, v7);
  if (result)
  {
    v14 = result;
    v15 = 0;
    v35 = &v9[v7];
    __dst = v9;
    v33 = a2 & 7;
    while (1)
    {
      v16 = *v9;
      if (v16 <= 0x20)
      {
        if (v16 == 7 || v16 == 9)
        {
          goto LABEL_29;
        }

LABEL_36:
        v17 = v9[1];
        goto LABEL_37;
      }

      if (v16 == 33)
      {
        break;
      }

      if (v16 == 45)
      {
        v17 = v9[1];
        if (v17 == 45)
        {
          if (v9[2])
          {
            goto LABEL_29;
          }

          v17 = 45;
          goto LABEL_42;
        }

LABEL_37:
        if (v17 != 35)
        {
          goto LABEL_42;
        }

        if (v9[2] != 64)
        {
          v17 = 35;
          goto LABEL_42;
        }

        v17 = 35;
        if (v9[3] != 33)
        {
          goto LABEL_42;
        }

LABEL_46:
        if (v16 != 126)
        {
          goto LABEL_29;
        }

        goto LABEL_20;
      }

      if (v16 != 126)
      {
        goto LABEL_36;
      }

      v17 = v9[1];
LABEL_20:
      if (v17 == 36 && v9[2] == 36 && v9[3] == 126)
      {
        goto LABEL_48;
      }

LABEL_29:
      v19 = 0;
LABEL_49:
      v36 = v14;
      v20 = (v14 - v9 + 1);
      if (v20 >= 1)
      {
        v21 = 0;
        v22 = 0;
        v23 = 347 - v19;
        v24 = (347 - v19);
        v25 = &v39[v19];
        __n = (347 - v19);
        v37 = v19 + v20;
        do
        {
          v26 = v21 + v24;
          v27 = &v9[v21];
          if (v20 >= v21 + v24)
          {
            memcpy(v25, v27, __n);
            v39[347] = 92;
            v28 = v23;
            v29 = 348;
          }

          else
          {
            v28 = v20 - v21;
            memcpy(v25, v27, v20 - v21);
            v29 = (v37 + ~v22);
          }

          *&v39[v29] = 10;
          v15 += v28;
          (*(**this + 32))(*this, v39);
          v21 = v26;
          v22 = v26;
        }

        while (v26 < v20);
      }

      v9 = (v36 + 1);
      result = memchr(v36 + 1, 10, v35 - (v36 + 1));
      v14 = result;
      if (!result)
      {
        LOWORD(v7) = *(this + 541);
        v9 = __dst;
        goto LABEL_58;
      }
    }

    v17 = v9[1];
    if (v17 != 64)
    {
      goto LABEL_37;
    }

    if (v9[2] == 35)
    {
      goto LABEL_29;
    }

    v17 = 64;
LABEL_42:
    if (strlen(v9) < 9 || v9[6] != 35 || v9[7] != 64 || v9[8] != 33)
    {
LABEL_48:
      v19 = BlueFin::GlFormat::glsnprintf(v39, 0x15E, "%c%06d%c ", v13, v34, *(this + 273) % 0xF4240u, aMacewnid[v33]);
      goto LABEL_49;
    }

    goto LABEL_46;
  }

  v15 = 0;
LABEL_58:
  if (v7 >= 1)
  {
    if (v7 <= v15)
    {
      v30 = 0;
      goto LABEL_63;
    }

    if (v15 >= 1)
    {
      result = memmove(v9, &v9[v15], (v7 - v15));
      v30 = *(this + 541) - v15;
LABEL_63:
      *(this + 541) = v30;
    }
  }

  v31 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlUtils::SysLogForce(BlueFin::GlUtils *this, uint64_t a2, char *a3, ...)
{
  va_start(va, a3);
  if (!BlueFin::GlUtils::m_pInstance)
  {
    return 0;
  }

  result = *BlueFin::GlUtils::m_pInstance;
  if (*BlueFin::GlUtils::m_pInstance)
  {
    result = (*(*result + 16))(result);
    if (result)
    {
      if ((*(**this + 24))())
      {
        BlueFin::GlUtils::SysLogInternal(this, a2, a3, va);
      }

      else
      {
        (*(**this + 40))(*this, a2, a3, va);
      }

      return 1;
    }
  }

  return result;
}

BOOL BlueFin::GlDbgCodec::Read(BlueFin::GlDbgCodec *this, BOOL *a2)
{
  result = BlueFin::GlDbgCodecBase::Decode(this, &__dst, 1u);
  *a2 = __dst;
  return result;
}

BOOL BlueFin::GlDbgCodec::Read(BlueFin::GlDbgCodec *this, char *a2)
{
  result = BlueFin::GlDbgCodecBase::Decode(this, &__dst, 1u);
  *a2 = __dst;
  return result;
}

BOOL BlueFin::GlDbgCodec::Read(BlueFin::GlDbgCodec *this, unsigned __int8 *a2)
{
  result = BlueFin::GlDbgCodecBase::Decode(this, &__dst, 1u);
  *a2 = __dst;
  return result;
}

{
  result = BlueFin::GlDbgCodecBase::Decode(this, &__dst, 1u);
  *a2 = __dst;
  return result;
}

BOOL BlueFin::GlDbgCodec::Read(BlueFin::GlDbgCodec *this, __int16 *a2)
{
  result = BlueFin::GlDbgCodecBase::Decode(this, __dst, 2u);
  *a2 = bswap32(*__dst) >> 16;
  return result;
}

BOOL BlueFin::GlDbgCodec::Read(BlueFin::GlDbgCodec *this, int *a2)
{
  result = BlueFin::GlDbgCodecBase::Decode(this, __dst, 4u);
  *a2 = bswap32(*__dst);
  return result;
}

BOOL BlueFin::GlDbgCodec::Read(BlueFin::GlDbgCodec *this, uint64_t *a2)
{
  v5[1] = *MEMORY[0x29EDCA608];
  result = BlueFin::GlDbgCodecBase::Decode(this, v5, 8u);
  *a2 = bswap64(v5[0]);
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL BlueFin::GlDbgCodec::Read(BlueFin::GlDbgCodec *this, unsigned __int16 *a2)
{
  result = BlueFin::GlDbgCodecBase::Decode(this, __dst, 2u);
  *a2 = bswap32(*__dst) >> 16;
  return result;
}

BOOL BlueFin::GlDbgCodec::Read(BlueFin::GlDbgCodec *this, unsigned int *a2)
{
  result = BlueFin::GlDbgCodecBase::Decode(this, __dst, 4u);
  *a2 = bswap32(*__dst);
  return result;
}

BOOL BlueFin::GlDbgCodec::Read(BlueFin::GlDbgCodec *this, unint64_t *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  result = BlueFin::GlDbgCodecBase::Decode(this, v5, 8u);
  *a2 = v5[7] | (((v5[5] << 8) | (((((v5[1] << 8) | (v5[0] << 16) | v5[2]) << 16) | (v5[3] << 8) | v5[4]) << 16) | v5[6]) << 8);
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

void BlueFin::GlDbgCodec::Read(BlueFin::GlDbgCodec *this, double *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  BlueFin::GlDbgCodecBase::Decode(this, v5, 8u);
  BlueFin::GlDbgCodecBase::Internal(this, v5, a2);
  v4 = *MEMORY[0x29EDCA608];
}

uint64_t BlueFin::GlDbgCodec::Rvw(BlueFin::GlDbgCodec *a1, double *a2)
{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 1);

  return BlueFin::GlDbgCodec::Rvw(a1, a2 + 2);
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 3);

  return BlueFin::GlDbgCodec::Rvw(a1, a2 + 4);
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 4);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 2);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 3);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 1);
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  v7 = 5;
  result = BlueFin::GlDbgCodec::Rvw(a1, &v7);
  if (v7)
  {
    v5 = 0;
    v6 = a2 + 5;
    do
    {
      result = BlueFin::GlDbgCodec::Rvw(a1, v6);
      ++v5;
      ++v6;
    }

    while (v5 < v7);
  }

  return result;
}

uint64_t BlueFin::GlDbgCodec::Rvw(BlueFin::GlDbgCodec *a1, unsigned __int8 *a2)
{
  result = BlueFin::GlDbgCodec::Rvw(a1, a2);
  if (*a2)
  {
    v5 = 0;
    v6 = a2 + 2;
    do
    {
      BlueFin::GlDbgCodec::Rvw(a1, v6 - 1);
      result = BlueFin::GlDbgCodec::Rvw(a1, v6);
      ++v5;
      v6 += 2;
    }

    while (v5 < *a2);
  }

  return result;
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 1);
  if (!*(a1 + 143))
  {
    a2[2] = 12;
  }

  return BlueFin::GlDbgCodec::RvwArray(a1, (a2 + 4), a2 + 2);
}

uint64_t BlueFin::GlDbgCodec::Rvw(BlueFin::GlDbgCodec *a1, signed __int8 *a2)
{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 1);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 2);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 3);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 4);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 5);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 6);

  return BlueFin::GlDbgCodec::Rvw(a1, a2 + 7);
}

uint64_t BlueFin::GlDbgCodec::Rvw(BlueFin::GlDbgCodec *a1, unsigned __int16 *a2)
{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 1);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 2);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 3);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 4);

  return BlueFin::GlDbgCodec::Rvw(a1, a2 + 5);
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 4);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 36));
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 60);

  return BlueFin::GlDbgCodec::Rvw(a1, a2 + 124);
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));

  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 16));
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 16));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 28));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 40));

  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 52));
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 16));

  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 28));
}

uint64_t BlueFin::GlDbgCodec::Rvw(BlueFin::GlDbgCodec *a1, _DWORD *a2)
{
  v5 = *a2;
  BlueFin::GlDbgCodec::Rvw(a1, &v5);
  if (!*(a1 + 143))
  {
    *a2 = v5;
  }

  result = (*(*a1 + 112))(a1);
  if (!*(a1 + 143) && result <= 0x4B && *a2 == 35)
  {
    *a2 = 34;
  }

  return result;
}

{
  v6 = *a2;
  BlueFin::GlDbgCodec::Rvw(a1, &v6);
  if (!*(a1 + 143))
  {
    *a2 = v6;
  }

  v5 = 6;
  return BlueFin::GlDbgCodec::RvwArray(a1, a2 + 1, &v5);
}

BlueFin::GlDbgProxy *BlueFin::GlDbgCodec::Rvw(BlueFin::GlDbgCodec *this, BlueFin::GlEngineImplStd *a2)
{
  v4 = (*(*this + 112))(this);
  BlueFin::GlDbgCodec::Rvw(this, a2 + 32);
  BlueFin::GlDbgCodec::Rvw(this, a2 + 33);
  BlueFin::GlDbgCodec::Rvw(this, (a2 + 264));
  result = BlueFin::GlDbgCodec::Rvw(this, a2 + 592);
  if (v4 >= 3)
  {
    v6 = 1;
    BlueFin::GlDbgCodec::Rvw(this, &v6);
    result = BlueFin::GlDbgCodec::Rvw(this, (a2 + 600));
    if (v4 >= 0x5A)
    {
      return BlueFin::GlDbgCodec::Rvw(this, a2 + 1231);
    }
  }

  return result;
}

uint64_t BlueFin::GlDbgCodec::Rvw(BlueFin::GlDbgCodec *this, BlueFin::GlMeas *a2)
{
  BlueFin::GlDbgCodec::Rvw(this, a2);
  BlueFin::GlDbgCodec::Rvw(this, a2 + 4);
  v5 = 100;
  return BlueFin::GlDbgCodec::RvwArray(this, *(a2 + 2140), &v5);
}

uint64_t BlueFin::GlDbgCodec::Rvw(BlueFin::GlDbgCodec *this, _DWORD *a2)
{
  if (*(this + 143))
  {
    v4 = BlueFin::GlImplGnss::m_aucEnabledGnssTable[*a2];
  }

  else
  {
    v4 = 8;
  }

  v8 = v4;
  result = BlueFin::GlDbgCodec::Rvw(this, &v8);
  v6 = *(this + 143);
  if (v6 != 2)
  {
    if (v6)
    {
      v7 = v4;
    }

    else
    {
      v7 = v8;
    }

    *a2 = BlueFin::GlImplGnss::m_aucImplGnssTable[v7];
  }

  return result;
}

uint64_t BlueFin::GlDbgCodec::Rvw(BlueFin::GlDbgCodec *this, BlueFin::GlPeAlmanac *a2)
{
  BlueFin::GlDbgCodec::Rvw(this, a2 + 26);
  BlueFin::GlDbgCodec::Rvw(this, a2 + 108);
  BlueFin::GlDbgCodec::Rvw(this, a2);
  BlueFin::GlDbgCodec::Rvw(this, a2 + 1);
  BlueFin::GlDbgCodec::Rvw(this, a2 + 1);
  BlueFin::GlDbgCodec::Rvw(this, a2 + 4);
  BlueFin::GlDbgCodec::Rvw(this, a2 + 3);
  BlueFin::GlDbgCodec::Rvw(this, a2 + 4);
  BlueFin::GlDbgCodec::Rvw(this, a2 + 5);
  BlueFin::GlDbgCodec::Rvw(this, a2 + 6);
  BlueFin::GlDbgCodec::Rvw(this, a2 + 7);
  BlueFin::GlDbgCodec::Rvw(this, a2 + 8);
  BlueFin::GlDbgCodec::Rvw(this, a2 + 9);
  BlueFin::GlDbgCodec::Rvw(this, a2 + 10);
  BlueFin::GlDbgCodec::Rvw(this, a2 + 44);
  v5 = *(a2 + 23);
  BlueFin::GlDbgCodec::Rvw(this, &v5);
  if (!*(this + 143))
  {
    *(a2 + 23) = v5;
  }

  return BlueFin::GlDbgCodec::Rvw(this, a2 + 96);
}

uint64_t BlueFin::GlDbgCodec::Rvw(BlueFin::GlDbgCodec *a1, unsigned int *a2)
{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  if (!*(a1 + 143))
  {
    a2[1] = 32;
  }

  BlueFin::GlDbgCodec::RvwArray(a1, (a2 + 2), a2 + 1);

  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 1922));
}

{
  v6 = 0;
  if ((*(*a1 + 112))(a1) < 0xAF)
  {
    v6 = 1;
  }

  else
  {
    v4 = *(a1 + 143);
    if (v4 == 1)
    {
      *(a1 + 143) = 0;
    }

    BlueFin::GlDbgCodec::Rvw(a1, &v6);
    *(a1 + 143) = v4;
  }

  BlueFin::GlDbgCodec::Rvw(a1, a2);
  if (v6)
  {
    if (!*(a1 + 143))
    {
      a2[1] = 100;
    }

    BlueFin::GlDbgCodec::RvwArray(a1, (a2 + 2), a2 + 1);
  }

  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 9802));
}

{
  result = BlueFin::GlDbgCodec::Rvw(a1, a2);
  if (*a2 > 8)
  {
    DeviceFaultNotify("gldebug_codec.cpp", 4904, "Rvw", "rValue.uiAgcInfoCount <= _DIM(rValue.aotAgcInfo)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_codec.cpp", 4904, "rValue.uiAgcInfoCount <= _DIM(rValue.aotAgcInfo)");
  }

  if (*a2)
  {
    v5 = 0;
    do
    {
      result = BlueFin::GlDbgCodec::Rvw(a1, &a2[4 * v5++ + 2]);
    }

    while (*a2 > v5);
  }

  return result;
}

uint64_t BlueFin::GlDbgCodec::checkArraySize(uint64_t this, unsigned int *a2, unsigned int a3)
{
  v3 = *(this + 584);
  if (v3)
  {
    if (v3 == 1)
    {
      if (*a2 > a3)
      {
        v4 = "rulActualLength <= ulMaxLength";
        DeviceFaultNotify("gldebug_codec.cpp", 814, "checkArraySize", "rulActualLength <= ulMaxLength");
        v5 = 814;
LABEL_8:
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_codec.cpp", v5, v4);
      }
    }

    else if (v3 == 2 && *a2 != a3)
    {
      v4 = "rulActualLength == ulMaxLength";
      DeviceFaultNotify("gldebug_codec.cpp", 813, "checkArraySize", "rulActualLength == ulMaxLength");
      v5 = 813;
      goto LABEL_8;
    }
  }

  else if (*a2 > a3)
  {
    *a2 = a3;
  }

  return this;
}

BOOL BlueFin::GlDbgCodec::Verify(BlueFin::GlDbgCodec *this, BOOL *a2)
{
  result = BlueFin::GlDbgCodecBase::Decode(this, &__dst, 1u);
  if (*a2 != __dst)
  {
    DeviceFaultNotify("gldebug_codec.cpp", 1001, "Verify", "rValue == bExpect");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_codec.cpp", 1001, "rValue == bExpect");
  }

  return result;
}

BOOL BlueFin::GlDbgCodec::Verify(BlueFin::GlDbgCodec *this, char *a2)
{
  result = BlueFin::GlDbgCodecBase::Decode(this, &__dst, 1u);
  if (*a2 != __dst)
  {
    DeviceFaultNotify("gldebug_codec.cpp", 1008, "Verify", "rValue == cExpect");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_codec.cpp", 1008, "rValue == cExpect");
  }

  return result;
}

BOOL BlueFin::GlDbgCodec::Verify(BlueFin::GlDbgCodec *this, unsigned __int8 *a2)
{
  result = BlueFin::GlDbgCodecBase::Decode(this, &__dst, 1u);
  if (*a2 != __dst)
  {
    DeviceFaultNotify("gldebug_codec.cpp", 1015, "Verify", "rValue == scExpect");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_codec.cpp", 1015, "rValue == scExpect");
  }

  return result;
}

{
  result = BlueFin::GlDbgCodecBase::Decode(this, &__dst, 1u);
  if (*a2 != __dst)
  {
    DeviceFaultNotify("gldebug_codec.cpp", 1043, "Verify", "rValue == ucExpect");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_codec.cpp", 1043, "rValue == ucExpect");
  }

  return result;
}

BOOL BlueFin::GlDbgCodec::Verify(BlueFin::GlDbgCodec *this, unsigned __int16 *a2)
{
  result = BlueFin::GlDbgCodecBase::Decode(this, __dst, 2u);
  if (*a2 != bswap32(*__dst) >> 16)
  {
    DeviceFaultNotify("gldebug_codec.cpp", 1022, "Verify", "rValue == ssExpect");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_codec.cpp", 1022, "rValue == ssExpect");
  }

  return result;
}

{
  result = BlueFin::GlDbgCodecBase::Decode(this, __dst, 2u);
  if (*a2 != bswap32(*__dst) >> 16)
  {
    DeviceFaultNotify("gldebug_codec.cpp", 1050, "Verify", "rValue == usExpect");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_codec.cpp", 1050, "rValue == usExpect");
  }

  return result;
}

BOOL BlueFin::GlDbgCodec::Verify(BlueFin::GlDbgCodec *this, int *a2)
{
  result = BlueFin::GlDbgCodecBase::Decode(this, __dst, 4u);
  if (*a2 != bswap32(*__dst))
  {
    DeviceFaultNotify("gldebug_codec.cpp", 1029, "Verify", "rValue == slExpect");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_codec.cpp", 1029, "rValue == slExpect");
  }

  return result;
}

BOOL BlueFin::GlDbgCodec::Verify(BlueFin::GlDbgCodec *this, uint64_t *a2)
{
  v5[1] = *MEMORY[0x29EDCA608];
  result = BlueFin::GlDbgCodecBase::Decode(this, v5, 8u);
  if (*a2 != bswap64(v5[0]))
  {
    DeviceFaultNotify("gldebug_codec.cpp", 1036, "Verify", "rValue == sllExpect");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_codec.cpp", 1036, "rValue == sllExpect");
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL BlueFin::GlDbgCodec::Verify(BlueFin::GlDbgCodec *this, unsigned int *a2)
{
  result = BlueFin::GlDbgCodecBase::Decode(this, __dst, 4u);
  if (*a2 != bswap32(*__dst))
  {
    DeviceFaultNotify("gldebug_codec.cpp", 1057, "Verify", "rValue == ulExpect");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_codec.cpp", 1057, "rValue == ulExpect");
  }

  return result;
}

BOOL BlueFin::GlDbgCodec::Verify(BlueFin::GlDbgCodec *this, unint64_t *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  result = BlueFin::GlDbgCodecBase::Decode(this, v5, 8u);
  if (*a2 != ((((v5[3] << 24) | (v5[4] << 16) | (((v5[0] << 16) | (v5[1] << 8) | v5[2]) << 32) | v5[6]) << 8) | (v5[5] << 16) | v5[7]))
  {
    DeviceFaultNotify("gldebug_codec.cpp", 1064, "Verify", "rValue == ullExpect");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_codec.cpp", 1064, "rValue == ullExpect");
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}