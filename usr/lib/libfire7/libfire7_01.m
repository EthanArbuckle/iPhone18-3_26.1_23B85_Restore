uint64_t std::__function::__func<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_0,std::allocator<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_0>,short ()(BlueFin::GlEngine *,BlueFin::GlSettings *)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v50[2] = *MEMORY[0x29EDCA608];
  v8 = *a2;
  v9 = *(a1 + 8);
  if ((*(v9 + 1356) & 0xFFFFFFFE) == 2)
  {
    v49 = *(v9 + 1328);
    FireDeviceLog::DeviceLogBase(2, "EngineAlreadyInRun,engine,%p,reqSize,%zu", a3, a4, a5, a6, a7, a8, *a2);
LABEL_7:
    v45 = -1;
    goto LABEL_8;
  }

  v10 = *a3;
  FireDeviceLog::DeviceLogBase(3, "#fmh,GlEngineOnStart+,%p", a3, a4, a5, a6, a7, a8, *a2);
  if (!FireResourceMgr::fInstance)
  {
    operator new();
  }

  v11 = *FireResourceMgr::fInstance;
  (*(**FireResourceMgr::fInstance + 16))(*FireResourceMgr::fInstance);
  if (((*(*v11 + 32))(v11) & 1) == 0)
  {
    FireDeviceLog::DeviceLogBase(2, "EngineOnStartImpl,failToOpen", v12, v13, v14, v15, v16, v17, v48);
    goto LABEL_7;
  }

  v50[0] = 0x8080808080808080;
  v50[1] = 0x8080808080808080;
  (*(*v11 + 96))(v11, v50, 16);
  FireConfig::setEngine((v9 + 1048), v10, v18, v19, v20, v21, v22, v23);
  FireMessageHandler::EngineState::update((v9 + 1356), 2, v24, v25, v26, v27, v28, v29);
  FireDeviceLog::DeviceLogBase(3, "#fmh,GlEngineOnStart-", v30, v31, v32, v33, v34, v35, v48);
  (*(**(v9 + 1296) + 72))(*(v9 + 1296), FireCallback::GlEngineOnTimerSet);
  v36 = (*(**(v9 + 1296) + 824))(*(v9 + 1296), FireCallback::GlEngCbOnSerialNumber);
  DeviceCommon::GetMachContinuousTime(v36);
  v38 = (v37 * 1000000000.0);
  (*(**(v9 + 1296) + 672))(*(v9 + 1296), v38, 80);
  FireDeviceLog::DeviceLogBase(5, "#fmh,SetThermalRiskState,time,%llu,ns,pass,%d,level,%d", v39, v40, v41, v42, v43, v44, v38);
  v45 = 0;
LABEL_8:
  v46 = *MEMORY[0x29EDCA608];
  return v45;
}

void FireConfig::setEngine(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v176 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    FireDeviceLog::DeviceLogBase(1, "pSettings,null", a3, a4, a5, a6, a7, a8, v165);
    DeviceFaultNotify("FireConfig.cpp", 170, "setEngine", "pSettings,null");
    DeviceFaultNotify("FireConfig.cpp", 170, "setEngine", "pSettings,null");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "FireConfig.cpp", 170, "pSettings,null");
  }

  (*(*a2 + 176))(a2, 18, 1);
  FireDeviceLog::DeviceLogBase(3, "#fc,enable feature NAVIC", v10, v11, v12, v13, v14, v15, v165);
  (*(*a2 + 128))(a2, *(FireDeviceLog::StaticSetting::fInstance + 8));
  (*(*a2 + 136))(a2, *(FireDeviceLog::StaticSetting::fInstance + 4));
  if (*(a1 + 12) == 1)
  {
    v22 = *(a1 + 2);
    v174[0] = v22 & 1;
    *&v174[3] = (v22 & 0x10) != 0;
    *&v174[5] = (v22 & 4) != 0;
    v174[6] = (v22 & 8) != 0;
    v174[2] = (v22 & 2) != 0;
    v174[7] = (v22 & 0x20) >> 5;
    v174[1] = (v22 & 0x20) == 0;
    FireDeviceLog::DeviceLogBase(3, "#fc,setConstellations,forceEnableSbas,%d", v16, v17, v18, v19, v20, v21, v174[7] ^ 1);
    (*(*a2 + 968))(a2, v174);
    FireDeviceLog::DeviceLogBase(3, "#fc,setConstellations,0x%x", v23, v24, v25, v26, v27, v28, v22);
  }

  if (!FireResourceMgr::fInstance)
  {
    operator new();
  }

  v29 = *(FireResourceMgr::fInstance + 40);
  v30 = (*(*v29 + 168))(v29);
  switch(v30)
  {
    case 4:
      (*(*a2 + 16))(a2, 39);
      break;
    case 3:
      (*(*a2 + 16))(a2, 37);
      break;
    case 2:
      (*(*a2 + 16))(a2, 34);
      (*(*a2 + 392))(a2, 1);
      break;
    default:
      DeviceFaultNotify("FireConfig.cpp", 194, "setEngine", "PlatformNotSupported");
      (*(*v29 + 168))(v29);
      CrashData();
      break;
  }

  if (*(a1 + 16) == 1)
  {
    v31 = *(a1 + 5);
  }

  else
  {
    if (!FireResourceMgr::fInstance)
    {
      operator new();
    }

    LOWORD(v31) = (*(**(FireResourceMgr::fInstance + 40) + 16))(*(FireResourceMgr::fInstance + 40));
  }

  (*(*a2 + 728))(a2, v31, 1);
  FireDeviceLog::DeviceLogBase(5, "#fc simulatorMode,%d,week,%d", v32, v33, v34, v35, v36, v37, *(a1 + 16));
  if (*(a1 + 16) == 1)
  {
    *v174 = xmmword_298A30500;
    *&v174[16] = unk_298A30510;
    v175[0] = xmmword_298A30520;
    *(v175 + 15) = *(&xmmword_298A30520 + 15);
    (*(*a2 + 248))(a2, v174, 63);
    FireDeviceLog::DeviceLogBase(5, "#fc,setBdsSignalType", v38, v39, v40, v41, v42, v43, v166);
    (*(*a2 + 384))(a2, 2);
    FireDeviceLog::DeviceLogBase(5, "#fc,SetDbgMode,%d", v44, v45, v46, v47, v48, v49, 2);
  }

  (*(*a2 + 56))(a2, 4.0);
  if (*(a1 + 16) == 1)
  {
    FireDeviceLog::DeviceLogBase(3, "#fc,#ws,0,simu", v50, v51, v52, v53, v54, v55, v166);
LABEL_26:
    v62 = 14;
    goto LABEL_27;
  }

  if (!FireResourceMgr::fInstance)
  {
    operator new();
  }

  if (((*(**(FireResourceMgr::fInstance + 40) + 112))(*(FireResourceMgr::fInstance + 40)) & 2) == 0)
  {
    FireDeviceLog::DeviceLogBase(3, "#fc,#ws,0,noRisk", v56, v57, v58, v59, v60, v61, v166);
    goto LABEL_26;
  }

  if (!FireResourceMgr::fInstance)
  {
    operator new();
  }

  (*(**(FireResourceMgr::fInstance + 24) + 64))(v174);
  if (*v174 == *&v174[8])
  {
    FireDeviceLog::DeviceLogBase(3, "#fc,#ws,1,tcxoNvItemNotAvailable", v90, v91, v92, v93, v94, v95, v166);
    v62 = 51;
  }

  else
  {
    if (!FireResourceMgr::fInstance)
    {
      operator new();
    }

    (*(**(FireResourceMgr::fInstance + 24) + 64))(&__p);
    v102 = __p.__r_.__value_.__r.__words[0] == __p.__r_.__value_.__l.__size_;
    if (__p.__r_.__value_.__r.__words[0] == __p.__r_.__value_.__l.__size_)
    {
      v103 = "#fc,#ws,1,stoNvItemNotAvailable";
    }

    else
    {
      v103 = "#fc,#ws,0";
    }

    FireDeviceLog::DeviceLogBase(3, v103, v96, v97, v98, v99, v100, v101, v166);
    if (__p.__r_.__value_.__r.__words[0])
    {
      __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v102)
    {
      v62 = 51;
    }

    else
    {
      v62 = 14;
    }
  }

  if (*v174)
  {
    *&v174[8] = *v174;
    operator delete(*v174);
  }

LABEL_27:
  (*(*a2 + 40))(a2, v62);
  v63 = (*(*v29 + 64))(v29);
  v64 = *(*a2 + 24);
  if (v63)
  {
    v64(a2, 2);
    (*(*a2 + 32))(a2, 3);
    if (!FireResourceMgr::fInstance)
    {
      operator new();
    }

    v65 = (*(**(FireResourceMgr::fInstance + 40) + 112))(*(FireResourceMgr::fInstance + 40));
    *(a1 + 24) = v65 & 1;
    if (v65)
    {
      *v174 = 0x1174C000000704;
      (*(*a2 + 328))(a2, v174, 1);
      FireDeviceLog::DeviceLogBase(5, "#fc,coex,notchL5,%d,ctrl,%d,coef,%d,ncoHz,%d", v66, v67, v68, v69, v70, v71, *(a1 + 24));
    }

    if (!FireResourceMgr::fInstance)
    {
      operator new();
    }

    v72 = (*(**(FireResourceMgr::fInstance + 40) + 72))(*(FireResourceMgr::fInstance + 40));
    *v174 = xmmword_298A2E1F0;
    *&v174[16] = 0xBFF0000000000000;
    FireConfig::LearnedL5GroupDelay::readFromNv(v174);
    v79 = *&v174[16];
    if (*&v174[16] <= 0.0)
    {
      v89 = v72;
    }

    else
    {
      if (!FireResourceMgr::fInstance)
      {
        operator new();
      }

      (*(**(FireResourceMgr::fInstance + 8) + 40))(*(FireResourceMgr::fInstance + 8));
      v80 = *&v174[8];
      if (FireConfig::LearnedL5GroupDelay::passesCrossCheckToCalibration(v81, *&v174[8], v79, v72, v82, v83, v84, v85, v86, v87, v88))
      {
        v89 = v80;
      }

      else
      {
        v89 = v72;
      }
    }

    FireDeviceLog::DeviceLogBase(4, "#nv_group_delay,injecting delta delay,%.2f,is learned value,%d,learned value,%.2f,%.2f,age hours,%.3f,static value,%.2f", v73, v74, v75, v76, v77, v78, SLOBYTE(v89));
    v104 = v89;
    (*(*a2 + 264))(a2, v104);
  }

  else
  {
    v64(a2, 1);
    (*(*a2 + 32))(a2, 1);
  }

  v105 = (*(*v29 + 136))(v29);
  v112 = (*(*v29 + 128))(v29);
  v113 = v112;
  v174[23] = 0;
  v174[0] = 0;
  if (v105 < 0.0 || v112 < 0.0)
  {
    FireDeviceLog::DeviceLogBase(2, "#fc thresholds invalid maxThresh,%f,minThresh,%f", v106, v107, v108, v109, v110, v111, SLOBYTE(v105));
  }

  else
  {
    std::to_string(&v169, v105);
    v114 = std::string::insert(&v169, 0, "strong_weak:");
    v115 = *&v114->__r_.__value_.__l.__data_;
    v170.__r_.__value_.__r.__words[2] = v114->__r_.__value_.__r.__words[2];
    *&v170.__r_.__value_.__l.__data_ = v115;
    v114->__r_.__value_.__l.__size_ = 0;
    v114->__r_.__value_.__r.__words[2] = 0;
    v114->__r_.__value_.__r.__words[0] = 0;
    v116 = std::string::append(&v170, ",");
    v117 = *&v116->__r_.__value_.__l.__data_;
    v171.__r_.__value_.__r.__words[2] = v116->__r_.__value_.__r.__words[2];
    *&v171.__r_.__value_.__l.__data_ = v117;
    v116->__r_.__value_.__l.__size_ = 0;
    v116->__r_.__value_.__r.__words[2] = 0;
    v116->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v168, v113);
    if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v118 = &v168;
    }

    else
    {
      v118 = v168.__r_.__value_.__r.__words[0];
    }

    if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v168.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v168.__r_.__value_.__l.__size_;
    }

    v120 = std::string::append(&v171, v118, size);
    v121 = *&v120->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v120->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v121;
    v120->__r_.__value_.__l.__size_ = 0;
    v120->__r_.__value_.__r.__words[2] = 0;
    v120->__r_.__value_.__r.__words[0] = 0;
    v122 = std::string::append(&__p, ";");
    v123 = v122->__r_.__value_.__r.__words[0];
    v173[0] = v122->__r_.__value_.__l.__size_;
    *(v173 + 7) = *(&v122->__r_.__value_.__r.__words[1] + 7);
    v124 = HIBYTE(v122->__r_.__value_.__r.__words[2]);
    v122->__r_.__value_.__l.__size_ = 0;
    v122->__r_.__value_.__r.__words[2] = 0;
    v122->__r_.__value_.__r.__words[0] = 0;
    if ((v174[23] & 0x80000000) != 0)
    {
      operator delete(*v174);
    }

    *v174 = v123;
    *&v174[8] = v173[0];
    *&v174[15] = *(v173 + 7);
    v174[23] = v124;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v168.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v168.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v171.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v171.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v170.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v170.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v169.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v169.__r_.__value_.__l.__data_);
    }
  }

  std::string::append(v174, "tstgrid:-1;");
  if ((*(*v29 + 104))(v29))
  {
    std::string::append(v174, "iqdump:123456;");
  }

  if (((*(*v29 + 104))(v29) & 2) != 0)
  {
    std::string::append(v174, "tstgrid_iq_config:2;");
  }

  if (v174[23] >= 0)
  {
    v125 = v174;
  }

  else
  {
    v125 = *v174;
  }

  (*(*a2 + 184))(a2, v125);
  (*(*v29 + 80))(&__p, v29);
  v132 = __p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0];
  if (__p.__r_.__value_.__l.__size_ != __p.__r_.__value_.__r.__words[0])
  {
    if ((v132 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<GnssHal::ExtensionsFire::RecoveryPoint>::__throw_length_error[abi:ne200100]();
  }

  if (v132 == 56)
  {
    v133 = MEMORY[0];
    FireDeviceLog::DeviceLogBase(5, "#fc,glonass platform delay calibration,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f", v126, v127, v128, v129, v130, v131, SLOBYTE(v133));
    (*(*a2 + 232))(a2, 0);
    operator delete(0);
  }

  else
  {
    FireDeviceLog::DeviceLogBase(2, "#fc,glonass platform delay size,%zu,does not match expected,%d", v126, v127, v128, v129, v130, v131, v132 >> 2);
  }

  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  (*(*a2 + 976))(a2, 600);
  (*(*a2 + 984))(a2, 4);
  (*(*a2 + 992))(a2, 500);
  v140 = 0;
  v141 = *a1;
  v142 = *a1;
  if (v142 > 1)
  {
    if (v142 != 3)
    {
      if (v142 != 2)
      {
        goto LABEL_101;
      }

      v134 = 2;
      goto LABEL_99;
    }

LABEL_100:
    (*(*a2 + 376))(a2, 0, 0);
    v140 = 0;
    goto LABEL_101;
  }

  if (!*a1)
  {
    goto LABEL_100;
  }

  v134 = *a1;
  if (v142 == 1)
  {
LABEL_99:
    v140 = 1;
    (*(*a2 + 376))(a2, 1, v134);
  }

LABEL_101:
  FireDeviceLog::DeviceLogBase(5, "#fc,decodeStartCoexConfig,lte,%hhu,en,%d", v134, v135, v136, v137, v138, v139, v142);
  if (!FireResourceMgr::fInstance)
  {
    operator new();
  }

  if (((*(**(FireResourceMgr::fInstance + 40) + 104))(*(FireResourceMgr::fInstance + 40)) & 0x10) != 0)
  {
    if (v140)
    {
      v149 = 19;
    }

    else
    {
      v149 = 1;
    }

    __p.__r_.__value_.__r.__words[0] = 0x500000001;
    __p.__r_.__value_.__s.__data_[1] = v149;
    LODWORD(__p.__r_.__value_.__r.__words[1]) = 2;
    (*(*a2 + 920))(a2, &__p);
    FireDeviceLog::DeviceLogBase(6, "#fc,enable ADC capture", v150, v151, v152, v153, v154, v155, v167);
  }

  if (BYTE1(v141) <= 5u)
  {
    (*(*a2 + 504))(a2, dword_298A30540[(v141 >> 8) & 7]);
  }

  FireDeviceLog::DeviceLogBase(5, "#fc,decodeStartCoexConfig,blanking,%hhu", v143, v144, v145, v146, v147, v148, SBYTE1(v141));
  if (!FireResourceMgr::fInstance)
  {
    operator new();
  }

  v156 = (*(**(FireResourceMgr::fInstance + 40) + 88))(*(FireResourceMgr::fInstance + 40));
  v157 = HIDWORD(v141) & 1;
  LOBYTE(v141) = BYTE4(v141) & 1 | *(a1 + 25);
  (*(*a2 + 864))(a2, (BYTE4(v141) & 1 | *(a1 + 25) & 1) == 0);
  (*(*a2 + 1000))(a2, v157 & (v156 ^ 1));
  (*(*a2 + 1016))(a2, v156);
  FireDeviceLog::DeviceLogBase(3, "#fc,B1i,%d,B1iPri,%d,RBC,%d", v158, v159, v160, v161, v162, v163, v141 & 1);
  if ((v174[23] & 0x80000000) != 0)
  {
    operator delete(*v174);
  }

  v164 = *MEMORY[0x29EDCA608];
}

void sub_2987AA72C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  v56 = *(v54 - 192);
  if (v56)
  {
    *(v54 - 184) = v56;
    operator delete(v56);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BlueFin::GlDbgSettings::SetLogFacMask(BlueFin::GlDbgSettings *this, uint64_t a2)
{
  v9 = a2;
  v3 = *(this + 1);
  if (*(v3 + 808))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 411, "SetLogFacMask", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 411, "!m_rProxy.Normal()");
  }

  *(v3 + 588) = a2;
  v5 = (*(v3 + 600) != 1 || (*(v3 + 596) & 0x10) != 0) && (a2 & 0x20000001) != 0;
  BlueFin::GlDbgProxy::DetermineWritable(v3, v5);
  BlueFin::GlDbgCodec::SetCodecOutputMode(*(this + 1), *(*(this + 1) + 588) & 1);
  BlueFin::GlDbgCodec::WriteStart(*(this + 1), 3597);
  v6 = *(this + 1);
  if ((*(*v6 + 120))(v6))
  {
    BlueFin::GlDbgCodec::Write(v6, &v9);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 128))(*(this + 2), a2);
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3597);
  v7 = *(**(this + 1) + 32);

  return v7();
}

uint64_t BlueFin::GlDbgCodec::SetCodecOutputMode(uint64_t this, int a2)
{
  v2 = *(this + 576);
  if (v2 && *(this + 580) == 1)
  {
    v3 = v2 == 2 ? a2 : 1;
    v4 = v2 == 1 ? a2 : 0;
    if ((v4 & 1) == 0 && v3)
    {
      DeviceFaultNotify("gldebug_codec.cpp", 60, "SetCodecOutputMode", "!m_bCodecOutputModeLocked ||((m_eCodecOutputMode == ALL_CODECS_OUTPUT && bOutputAllCodecs || m_eCodecOutputMode == ONLY_ESSENTIAL_CODECS_OUTPUT && !bOutputAllCodecs))");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_codec.cpp", 60, "!m_bCodecOutputModeLocked ||((m_eCodecOutputMode == ALL_CODECS_OUTPUT && bOutputAllCodecs || m_eCodecOutputMode == ONLY_ESSENTIAL_CODECS_OUTPUT && !bOutputAllCodecs))");
    }
  }

  if (a2)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  *(this + 576) = v5;
  return this;
}

uint64_t BlueFin::GlDbgSettings::SetSupportedConstellations(BlueFin::GlDbgSettings *this, BOOL (*a2)[8])
{
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 1774, "SetSupportedConstellations", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 1774, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3707);
  v5 = 0;
  v6 = 0;
  do
  {
    if ((*a2)[v5])
    {
      v7 = 1 << v5;
    }

    else
    {
      v7 = 0;
    }

    v6 |= v7;
    ++v5;
  }

  while (v5 != 8);
  v11 = v6;
  v8 = *(this + 1);
  if ((*(*v8 + 120))(v8))
  {
    BlueFin::GlDbgCodec::Write(v8, &v11);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 968))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3707);
  v9 = *(**(this + 1) + 32);

  return v9();
}

_BYTE *BlueFin::GlSettingsImpl::SetSupportedConstellations(_BYTE *this, BOOL (*a2)[8])
{
  this[263] = !(*a2)[0];
  this[264] = !(*a2)[1];
  this[265] = !(*a2)[2];
  this[266] = !(*a2)[3];
  this[267] = !(*a2)[6];
  this[268] = !(*a2)[5];
  this[269] = !(*a2)[7];
  return this;
}

uint64_t BlueFin::GlDbgSettings::SetMinGpsWeekNumber(BlueFin::GlDbgSettings *this, __int16 a2)
{
  v7 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 1759, "SetMinGpsWeekNumber", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 1759, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3675);
  v4 = *(this + 1);
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v7);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 728))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3675);
  v5 = *(**(this + 1) + 32);

  return v5();
}

uint64_t BlueFin::GlDbgSettings::SetFrequencyPlan(uint64_t a1, unsigned int a2)
{
  v6 = a2;
  v3 = *(a1 + 8);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 245, "SetFrequencyPlan", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 245, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3595);
  BlueFin::GlDbgCodec::Write(*(a1 + 8), &v6);
  (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  (*(**(a1 + 16) + 40))(*(a1 + 16), v6);
  BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 3595);
  v4 = *(**(a1 + 8) + 32);

  return v4();
}

uint64_t BlueFin::GlSettingsImpl::SetNotchFiltersConfiguration(uint64_t result, uint64_t a2, unsigned int a3)
{
  if ((a3 - 25) < 0xE8u)
  {
    v7 = "ucNumNotches > 0 && ucNumNotches <= NUM_NOTCH_FILTERS";
    DeviceFaultNotify("glsettings.cpp", 1700, "SetNotchFiltersConfiguration", "ucNumNotches > 0 && ucNumNotches <= NUM_NOTCH_FILTERS");
    v8 = 1700;
    goto LABEL_10;
  }

  v3 = 0;
  v4 = 0;
  v5 = result + 1104;
  do
  {
    if (!*v5)
    {
      v6 = a2 + 8 * v4;
      *v5 = *v6;
      *(v5 + 4) = *(v6 + 4);
      ++v4;
    }

    if (v3 > 0x16)
    {
      break;
    }

    ++v3;
    v5 += 8;
  }

  while (a3 != v4);
  if (a3 > v4)
  {
    GlCustomLog(11, "SetNotchFiltersConfiguration:: Not enough space to store all the programmed notches\n");
    v7 = "0";
    DeviceFaultNotify("glsettings.cpp", 1719, "SetNotchFiltersConfiguration", "0");
    v8 = 1719;
LABEL_10:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsettings.cpp", v8, v7);
  }

  return result;
}

uint64_t BlueFin::GlDbgCodec::Write(BlueFin::GlDbgCodec *a1, _DWORD *a2)
{
  result = (*(*a1 + 120))(a1);
  if (result)
  {
    *(a1 + 143) = 2;
    v5 = *a2;
    result = BlueFin::GlDbgCodec::Rvw(a1, &v5);
    if (!*(a1 + 143))
    {
      *a2 = v5;
    }
  }

  return result;
}

{
  result = (*(*a1 + 120))(a1);
  if (result)
  {
    *(a1 + 143) = 2;
    v5 = *a2;
    result = BlueFin::GlDbgCodec::Rvw(a1, &v5);
    if (!*(a1 + 143))
    {
      *a2 = v5;
    }
  }

  return result;
}

uint64_t BlueFin::GlSettingsImpl::SetFeature(uint64_t result, __int16 a2, int a3)
{
  v3 = a2 >> 5;
  *(*(result + 184) + 4 * v3) |= 1 << a2;
  if (!a3)
  {
    return BlueFin::GlSetBase::Remove(result + 160, a2);
  }

  *(*(result + 160) + 4 * v3) |= 1 << a2;
  return result;
}

uint64_t BlueFin::GlDbgSettings::SetRfMode(uint64_t a1, unsigned int a2)
{
  v6 = a2;
  v3 = *(a1 + 8);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 795, "SetRfMode", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 795, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3641);
  BlueFin::GlDbgCodec::Write(*(a1 + 8), &v6);
  (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  (*(**(a1 + 16) + 24))(*(a1 + 16), v6);
  BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 3641);
  v4 = *(**(a1 + 8) + 32);

  return v4();
}

uint64_t BlueFin::GlDbgSettings::SetNotchFiltersConfiguration(uint64_t a1, uint64_t a2, _BOOL4 a3)
{
  v11 = a3;
  if (!a2 || (v4 = *(a1 + 8), *(v4 + 101)))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 585, "SetNotchFiltersConfiguration", "(!filters) || (!m_rProxy.Normal())");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 585, "(!filters) || (!m_rProxy.Normal())");
  }

  BlueFin::GlDbgCodec::WriteStart(v4, 3601);
  v10 = a3;
  v7 = *(a1 + 8);
  if ((*(*v7 + 120))(v7))
  {
    BlueFin::GlDbgCodec::Write(v7, &v11);
  }

  BlueFin::GlDbgCodec::WriteArray(*(a1 + 8), a2, &v10);
  (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  (*(**(a1 + 16) + 328))();
  BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 3601);
  v8 = *(**(a1 + 8) + 32);

  return v8();
}

void FireConfig::LearnedL5GroupDelay::readFromNv(FireConfig::LearnedL5GroupDelay *this)
{
  if (!FireResourceMgr::fInstance)
  {
    operator new();
  }

  (*(**(FireResourceMgr::fInstance + 24) + 64))(&__p);
  if (__p == v11)
  {
    FireDeviceLog::DeviceLogBase(4, "#nv_group_delay,not present in NV", v2, v3, v4, v5, v6, v7, v9);
  }

  else if (v11 - __p == 64)
  {
    v8 = *(__p + 2);
    *this = *__p;
    *(this + 2) = v8;
  }

  else
  {
    FireDeviceLog::DeviceLogBase(2, "#nv_group_delay,unexpected NV size,%zu,expected,%zu", v2, v3, v4, v5, v6, v7, v11 - __p);
    if (!FireResourceMgr::fInstance)
    {
      operator new();
    }

    (*(**(FireResourceMgr::fInstance + 24) + 80))(*(FireResourceMgr::fInstance + 24), 3);
  }

  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }
}

void sub_2987AB4E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BlueFin::GlDbgSettings::SetL5DeltaHardwareDelayInMeters(BlueFin::GlDbgSettings *this, float a2)
{
  v7 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 294, "SetL5DeltaHardwareDelayInMeters", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 294, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3701);
  BlueFin::GlDbgCodec::Write(*(this + 1), &v7);
  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 264))(a2);
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3701);
  v5 = *(**(this + 1) + 32);

  return v5();
}

char *BlueFin::GlDbgCodec::Write(BlueFin::GlDbgCodec *this, float *a2)
{
  result = (*(*this + 120))(this);
  if (result)
  {
    BlueFin::GlDbgCodecBase::External(this, v5, *a2);
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

uint64_t BlueFin::GlSettingsImpl::SetL5DeltaHardwareDelayInMeters(uint64_t this, float a2)
{
  *(this + 918) = 1;
  *(this + 988) = a2;
  return this;
}

uint64_t BlueFin::GlDbgSettings::SetMeConfigParameters(BlueFin::GlDbgSettings *this, char *a2)
{
  if (!a2 || (v3 = *(this + 1), *(v3 + 101)))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 551, "SetMeConfigParameters", "(nullptr == pLine) || (!m_rProxy.Normal())");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 551, "(nullptr == pLine) || (!m_rProxy.Normal())");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3600);
  v7 = strlen(a2);
  BlueFin::GlDbgCodec::WriteArray(*(this + 1), a2, &v7);
  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 184))(*(this + 2), a2);
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3600);
  v5 = *(**(this + 1) + 32);

  return v5();
}

char *BlueFin::GlDbgCodec::WriteArray(BlueFin::GlDbgCodec *this, float *a2, unsigned int *a3)
{
  result = (*(*this + 120))(this);
  if (result)
  {
    result = (*(*this + 120))(this);
    if (result)
    {
      result = BlueFin::GlDbgCodec::Write(this, a3);
    }

    if (*a3)
    {
      v7 = 0;
      do
      {
        result = BlueFin::GlDbgCodec::Write(this, a2);
        ++v7;
        ++a2;
      }

      while (v7 < *a3);
    }
  }

  return result;
}

float BlueFin::GlSettingsImpl::SetGlnsHardwareDelayInMeters(BlueFin::GlSettingsImpl *this, const float *a2)
{
  v2 = 0;
  *(this + 916) = 1;
  do
  {
    result = a2[v2];
    *(this + v2 * 4 + 928) = result;
    ++v2;
  }

  while (v2 != 14);
  return result;
}

uint64_t BlueFin::GlDbgSettings::SetPreciseRtcMaxAgeS(BlueFin::GlDbgSettings *this, int a2)
{
  v7 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 1992, "SetPreciseRtcMaxAgeS", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 1992, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3708);
  v4 = *(this + 1);
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v7);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 976))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3708);
  v5 = *(**(this + 1) + 32);

  return v5();
}

uint64_t BlueFin::GlDbgSettings::SetPreciseRtcMinUncUs(BlueFin::GlDbgSettings *this, int a2)
{
  v7 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 2024, "SetPreciseRtcMinUncUs", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 2024, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3710);
  v4 = *(this + 1);
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v7);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 992))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3710);
  v5 = *(**(this + 1) + 32);

  return v5();
}

uint64_t BlueFin::GlDbgSettings::SetEnableLTEFilter(BlueFin::GlDbgSettings *this, BOOL a2, int a3)
{
  v10 = a2;
  v9 = a3;
  v4 = *(this + 1);
  if (*(v4 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 959, "SetEnableLTEFilter", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 959, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v4, 3615);
  v5 = *(this + 1);
  if ((*(*v5 + 120))(v5))
  {
    BlueFin::GlDbgCodec::Write(v5, &v10);
  }

  v6 = *(this + 1);
  if ((*(*v6 + 120))(v6))
  {
    BlueFin::GlDbgCodec::Write(v6, &v9);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 376))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3615);
  v7 = *(**(this + 1) + 32);

  return v7();
}

uint64_t BlueFin::GlSettingsImpl::SetEnableLTEFilter(uint64_t this, char a2, int a3)
{
  *(this + 25957) = a2;
  *(this + 25960) = a3;
  return this;
}

uint64_t BlueFin::GlDbgSettings::SetBlankingType(uint64_t a1, unsigned __int8 a2)
{
  v3 = *(a1 + 8);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 1356, "SetBlankingType", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 1356, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3634);
  v5 = *(a1 + 8);
  *(v5 + 143) = 2;
  v7 = a2;
  BlueFin::GlDbgCodec::Rvw(v5, &v7);
  *(v5 + 143);
  (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  (*(**(a1 + 16) + 504))();
  BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 3634);
  return (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
}

char *BlueFin::GlDbgCodec::Write(BlueFin::GlDbgCodec *this, const BOOL *a2)
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
    v5 = *a2;
    return BlueFin::GlDbgCodecBase::Encode(this, &v5, 1, 0, 0);
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

{
  result = (*(*this + 120))(this);
  if (result)
  {

    return BlueFin::GlDbgCodec::Write(this, a2);
  }

  return result;
}

uint64_t BlueFin::GlDbgCodec::Rvw(BlueFin::GlDbgCodec *this, unsigned __int8 *a2)
{
  v8[6] = *MEMORY[0x29EDCA608];
  v8[1] = 0;
  v8[3] = 0;
  v8[0] = BlueFin::GlDbgCodec::Read;
  v8[2] = BlueFin::GlDbgCodec::Verify;
  v8[4] = BlueFin::GlDbgCodec::Write;
  v8[5] = 0;
  v2 = &v8[2 * *(this + 143)];
  v3 = *v2;
  v4 = v2[1];
  v5 = (this + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  v6 = *MEMORY[0x29EDCA608];

  return v3(v5, a2);
}

uint64_t BlueFin::GlDbgSettings::SetEnableBdsPriority(BlueFin::GlDbgSettings *this, BOOL a2)
{
  v7 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 2040, "SetEnableBdsPriority", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 2040, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3711);
  v4 = *(this + 1);
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v7);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 1000))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3711);
  v5 = *(**(this + 1) + 32);

  return v5();
}

uint64_t BlueFin::GlDbgSettings::SetFeature(uint64_t a1, unsigned int a2, _BOOL8 a3)
{
  v10 = a2;
  v9 = a3;
  v4 = *(a1 + 8);
  if (*(v4 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 212, "SetFeature", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 212, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v4, 3594);
  BlueFin::GlDbgCodec::Write(*(a1 + 8), &v10);
  v6 = *(a1 + 8);
  if ((*(*v6 + 120))(v6))
  {
    BlueFin::GlDbgCodec::Write(v6, &v9);
  }

  (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  (*(**(a1 + 16) + 176))(*(a1 + 16), v10, a3);
  BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 3594);
  v7 = *(**(a1 + 8) + 32);

  return v7();
}

uint64_t BlueFin::GlDbgProxy::DetermineWritable(uint64_t this, int a2)
{
  if (*(this + 808))
  {
    v5 = "false";
    DeviceFaultNotify("gldebug_proxy.cpp", 894, "DetermineWritable", "false");
    v6 = 894;
LABEL_10:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_proxy.cpp", v6, v5);
  }

  v2 = this;
  v3 = *(this + 6576);
  *(this + 6576) = a2;
  if (!a2 || (v3 & 1) != 0)
  {
    return this;
  }

  if (*(this + 6577) == 1)
  {
    v5 = "!m_bWritableLocked";
    DeviceFaultNotify("gldebug_proxy.cpp", 881, "DetermineWritable", "!m_bWritableLocked");
    v6 = 881;
    goto LABEL_10;
  }

  *(this + 6577) = 1;
  BlueFin::GlDbgProxy::WriteDbgMetaData(this, 0);
  BlueFin::GlDbgCodec::WriteStart(v2, 1575);
  (*(*v2 + 32))(v2, 1);
  BlueFin::GlDbgCodec::WriteFinal(v2, 1575);
  v4 = *(*v2 + 32);

  return v4(v2, 1);
}

uint64_t BlueFin::GlDbgSettings::SetLogPriMask(BlueFin::GlDbgSettings *this, uint64_t a2)
{
  v9 = a2;
  v3 = *(this + 1);
  if (*(v3 + 808))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 433, "SetLogPriMask", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 433, "!m_rProxy.Normal()");
  }

  *(v3 + 596) = a2;
  *(v3 + 600) = 1;
  if ((a2 & 0x10) != 0)
  {
    v5 = *(v3 + 592) != 1 || (*(v3 + 588) & 0x20000001) != 0;
  }

  else
  {
    v5 = 0;
  }

  BlueFin::GlDbgProxy::DetermineWritable(v3, v5);
  BlueFin::GlDbgCodec::WriteStart(*(this + 1), 3598);
  v6 = *(this + 1);
  if ((*(*v6 + 120))(v6))
  {
    BlueFin::GlDbgCodec::Write(v6, &v9);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 136))(*(this + 2), a2);
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3598);
  v7 = *(**(this + 1) + 32);

  return v7();
}

uint64_t BlueFin::GlDbgSettings::SetRfType(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v3 = *(a1 + 8);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 779, "SetRfType", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 779, "!m_rProxy.Normal()");
  }

  v4 = a2;
  BlueFin::GlDbgCodec::WriteStart(v3, 3608);
  v5 = *(a1 + 8);
  if ((*(*v5 + 120))(v5))
  {
    *(v5 + 143) = 2;
    BlueFin::GlDbgCodec::Rvw(v5, &v8);
    v4 = v8;
  }

  (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  (*(**(a1 + 16) + 16))(*(a1 + 16), v4);
  BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 3608);
  v6 = *(**(a1 + 8) + 32);

  return v6();
}

uint64_t BlueFin::GlSettingsImpl::SetMinGpsWeekNumber(uint64_t this, __int16 a2, char a3)
{
  if ((a3 & 1) != 0 || (*(this + 26339) & 1) == 0)
  {
    *(this + 68) = a2;
    *(this + 26339) = 1;
  }

  return this;
}

uint64_t BlueFin::GlDbgSettings::SetRfLoss_dB(BlueFin::GlDbgSettings *this, float a2)
{
  v8 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 683, "SetRfLoss_dB", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 683, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3607);
  v5 = *(this + 1);
  if ((*(*v5 + 120))(v5))
  {
    BlueFin::GlDbgCodec::Write(v5, &v8);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 56))(*(this + 2), a2);
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3607);
  v6 = *(**(this + 1) + 32);

  return v6();
}

uint64_t BlueFin::GlDbgSettings::SetLnaMask(BlueFin::GlDbgSettings *this, _BOOL8 a2)
{
  v8 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 828, "SetLnaMask", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 828, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3642);
  v5 = *(this + 1);
  if ((*(*v5 + 120))(v5))
  {
    BlueFin::GlDbgCodec::Write(v5, &v8);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 32))(*(this + 2), a2);
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3642);
  v6 = *(**(this + 1) + 32);

  return v6();
}

uint64_t BlueFin::GlDbgCodec::WriteArray(BlueFin::GlDbgCodec *a1, uint64_t a2, unsigned int *a3)
{
  result = (*(*a1 + 120))(a1);
  if (result)
  {
    result = (*(*a1 + 120))(a1);
    if (result)
    {
      result = BlueFin::GlDbgCodec::Write(a1, a3);
    }

    if (*a3)
    {
      v7 = 0;
      do
      {
        result = (*(*a1 + 120))(a1);
        if (result)
        {
          *(a1 + 143) = 2;
          result = BlueFin::GlDbgCodec::Rvw(a1, a2);
        }

        ++v7;
        a2 += 8;
      }

      while (v7 < *a3);
    }
  }

  return result;
}

uint64_t BlueFin::GlDbgSettings::SetGlnsHardwareDelayInMeters(BlueFin::GlDbgSettings *this, float *a2)
{
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 261, "SetGlnsHardwareDelayInMeters", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 261, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3596);
  v7 = 14;
  BlueFin::GlDbgCodec::WriteArray(*(this + 1), a2, &v7);
  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 232))(*(this + 2), a2);
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3596);
  v5 = *(**(this + 1) + 32);

  return v5();
}

uint64_t BlueFin::GlDbgSettings::SetPreciseRtcAgeRatePpm(BlueFin::GlDbgSettings *this, int a2)
{
  v7 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 2008, "SetPreciseRtcAgeRatePpm", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 2008, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3709);
  v4 = *(this + 1);
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v7);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 984))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3709);
  v5 = *(**(this + 1) + 32);

  return v5();
}

uint64_t BlueFin::GlDbgSettings::SetEnableB1C(BlueFin::GlDbgSettings *this, BOOL a2)
{
  v7 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 1567, "SetEnableB1C", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 1567, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3693);
  v4 = *(this + 1);
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v7);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 864))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3693);
  v5 = *(**(this + 1) + 32);

  return v5();
}

uint64_t BlueFin::GlDbgSettings::SetBdsConsistencyRequired(BlueFin::GlDbgSettings *this, BOOL a2)
{
  v7 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 2056, "SetBdsConsistencyRequired", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 2056, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3722);
  v4 = *(this + 1);
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v7);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 1016))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3722);
  v5 = *(**(this + 1) + 32);

  return v5();
}

uint64_t BlueFin::GlDbgEngine::SetCbOnTimerSet(uint64_t a1, uint64_t (*a2)(uint64_t a1, uint64_t a2, uint64_t a3, _BOOL8 a4))
{
  if (a2 != BlueFin::GlDbgProxyGlEngineOnTimerSet)
  {
    *(a1 + 304) = a2;
  }

  BlueFin::GlDbgCodec::WriteStart(*(a1 + 8), 1576);
  (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  *(a1 + 728) = BlueFin::GlDbgProxyGlEngineOnTimerSet;
  BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 1576);
  v3 = *(**(a1 + 8) + 32);

  return v3();
}

BlueFin::GlPeSatAidInfo *BlueFin::GlPeSatAidInfo::GlPeSatAidInfo(BlueFin::GlPeSatAidInfo *this)
{
  v2 = this + 0x2000;
  BlueFin::GlSatAidInfo::GlSatAidInfo(this + 288);
  v3 = *(this + 1137);
  *(this + 1140) = &unk_2A1F09610;
  *(this + 1141) = v3;
  *(this + 1142) = this + 91;
  *(this + 1143) = this;
  v4 = 96;
  *(this + 2288) = 96;
  *(v2 + 482) = -17407;
  v2[966] = 91;
  BlueFin::GlArray::Clear(this + 9120);
  *(this + 37) = 0;
  *(this + 76) = 1226024960;
  *(this + 39) = 0;
  *(this + 40) = 1202241536;
  v5 = xmmword_298A31960;
  v6 = xmmword_298A31970;
  v7 = xmmword_298A31980;
  v8 = xmmword_298A31990;
  v9 = xmmword_298A319A0;
  v10 = xmmword_298A319B0;
  v11 = xmmword_298A319C0;
  v12 = xmmword_298A319D0;
  v13 = *(this + 1137);
  v14 = vdupq_n_s64(0x10uLL);
  do
  {
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5BuLL), v12)), *v5.i8), *v5.i8).u8[0])
    {
      *v13 = 0;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5BuLL), *&v12)), *&v5), *&v5).i8[1])
    {
      v13[96] = 0;
    }

    if (vuzp1_s8(vuzp1_s16(*&v5, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5BuLL), *&v11))), *&v5).i8[2])
    {
      v13[192] = 0;
      v13[288] = 0;
    }

    if (vuzp1_s8(*&v5, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5BuLL), *&v10)), *&v5)).i32[1])
    {
      v13[384] = 0;
    }

    if (vuzp1_s8(*&v5, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5BuLL), *&v10)), *&v5)).i8[5])
    {
      v13[480] = 0;
    }

    if (vuzp1_s8(*&v5, vuzp1_s16(*&v5, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5BuLL), *&v9)))).i8[6])
    {
      v13[576] = 0;
      v13[672] = 0;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5BuLL), v8)), *v5.i8), *v5.i8).u8[0])
    {
      v13[768] = 0;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5BuLL), *&v8)), *&v5), *&v5).i8[1])
    {
      v13[864] = 0;
    }

    if (vuzp1_s8(vuzp1_s16(*&v5, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5BuLL), *&v7))), *&v5).i8[2])
    {
      v13[960] = 0;
      v13[1056] = 0;
    }

    if (vuzp1_s8(*&v5, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5BuLL), *&v6)), *&v5)).i32[1])
    {
      v13[1152] = 0;
    }

    if (vuzp1_s8(*&v5, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5BuLL), *&v6)), *&v5)).i8[5])
    {
      v13[1248] = 0;
    }

    if (vuzp1_s8(*&v5, vuzp1_s16(*&v5, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5BuLL), *&v5)))).i8[6])
    {
      v13[1344] = 0;
      v13[1440] = 0;
    }

    v10 = vaddq_s64(v10, v14);
    v11 = vaddq_s64(v11, v14);
    v12 = vaddq_s64(v12, v14);
    v9 = vaddq_s64(v9, v14);
    v8 = vaddq_s64(v8, v14);
    v7 = vaddq_s64(v7, v14);
    v6 = vaddq_s64(v6, v14);
    v13 += 1536;
    v5 = vaddq_s64(v5, v14);
    v4 -= 16;
  }

  while (v4);
  return this;
}

uint64_t BlueFin::GlSetBase::Cnt(BlueFin::GlSetBase *this)
{
  v1 = 0;
  v2 = (*this + 4 * *(this + 8) - 4);
  do
  {
    if (*v2)
    {
      v3 = *v2 - (((*v2 >> 2) & 0x9249249) + ((*v2 >> 1) & 0x5B6DB6DB));
      v1 = ((v3 + (v3 >> 3)) & 0xC71C71C7) + v1 - 63 * (((v3 + (v3 >> 3)) & 0xC71C71C7) / 0x3F);
    }

    --v2;
  }

  while (v2 >= *this);
  return v1;
}

uint64_t BlueFin::GlSatAidInfo::GlSatAidInfo(uint64_t this)
{
  v1 = 0;
  *this = &unk_2A1F09358;
  *(this + 8) = 0;
  *(this + 16) = 1226024960;
  *(this + 24) = 0;
  *(this + 32) = 1202241536;
  *(this + 8800) = 0;
  *(this + 8808) = this + 64;
  v2 = 91;
  do
  {
    v3 = *(this + 8808) + v1;
    *v3 = 0;
    *(v3 + 4) = 7;
    *(v3 + 8) = 0;
    *(v3 + 12) = xmmword_298A31A60;
    *(v3 + 32) = 0;
    *(v3 + 40) = 0;
    *(v3 + 80) = 0;
    *(v3 + 88) = 0xBF80000000000000;
    *(v3 + 64) = 0;
    *(v3 + 72) = 0;
    v1 += 96;
    *(v3 + 48) = 0;
    *(v3 + 56) = 0;
    --v2;
  }

  while (v2);
  return this;
}

BOOL BlueFin::GlPeSvIdConverter::SvId2Gnss(BlueFin::GlPeGloFcnOsnMgr **a1, unsigned __int8 *a2, uint64_t a3, int8x16_t a4, int8x16_t a5)
{
  v6 = *a2;
  v7 = BlueFin::GlSvId::s_aucSvId2gnss[v6];
  if (v7 == 7)
  {
    v14 = 0;
    v13 = 0;
    goto LABEL_27;
  }

  if (v7 != 2)
  {
    v14 = 0;
    v15 = BlueFin::GlSvId::s_aucGnss2minSvId[v7];
    if (BlueFin::GlSvId::s_aucSvId2gnss[v6] > 3u)
    {
      if (v7 == 4)
      {
        v16 = 63;
      }

      else if (v7 == 5)
      {
        v16 = 36;
      }

      else
      {
        v13 = 0;
        if (v7 != 6)
        {
          goto LABEL_27;
        }

        v16 = 14;
      }
    }

    else if (BlueFin::GlSvId::s_aucSvId2gnss[v6])
    {
      if (v7 == 1)
      {
        v16 = 19;
      }

      else
      {
        v13 = 0;
        if (v7 != 3)
        {
          goto LABEL_27;
        }

        v16 = 10;
      }
    }

    else
    {
      v16 = 32;
    }

    goto LABEL_24;
  }

  v8 = *a1;
  if (!v8)
  {
    v16 = 24;
    v15 = 52;
LABEL_24:
    v17 = v6 - v15;
    v13 = v17 < v16;
    if (v17 < v16)
    {
      v14 = v17 + 1;
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_27;
  }

  v9 = v6 - 52;
  v10 = v6 - 59;
  if (v9 >= 0xE)
  {
    v10 = -8;
  }

  v19 = 0;
  v11 = BlueFin::GlPeGloFcnOsnMgr::FCN2OSN(v8, v10, &v19, a4, a5);
  v12 = (v19 - 1) < 0x18u;
  v13 = v11 && v12;
  if (v11 && v12)
  {
    v14 = v19;
  }

  else
  {
    v14 = 0;
  }

LABEL_27:
  *a3 = v7;
  *(a3 + 4) = v14;
  return v13;
}

BOOL BlueFin::GlSettingsImpl::DoesSvSupportBand5(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = BlueFin::GlSvId::s_aucSvId2gnss[v3];
  result = 1;
  if (v4 > 3)
  {
    if (v4 == 4)
    {
      if (*(a1 + 88) >= 37)
      {
        return *(v3 + a1 + 964) == 3;
      }
    }

    else if (v4 == 5)
    {
      return result;
    }

    return 0;
  }

  if (!BlueFin::GlSvId::s_aucSvId2gnss[v3])
  {
    return *(v3 + a1 + 1007) > 2u;
  }

  if (v4 != 3)
  {
    return 0;
  }

  return result;
}

uint64_t *BlueFin::GlBitBuffer::PutU(uint64_t *this, unsigned int a2, unsigned int a3)
{
  if (*(this + 16) == 1)
  {
    v21 = "!m_bReadOnly";
    DeviceFaultNotify("glutl_bitbuffer.cpp", 365, "PutU", "!m_bReadOnly");
    v22 = 365;
    goto LABEL_22;
  }

  if (a3 >= 0x21)
  {
    v21 = "ucBits <= 32";
    DeviceFaultNotify("glutl_bitbuffer.cpp", 366, "PutU", "ucBits <= 32");
    v22 = 366;
    goto LABEL_22;
  }

  if (!a3)
  {
    return this;
  }

  v3 = *(this + 9);
  v5 = *(this + 6);
  v4 = *(this + 7);
  *(this + 7) = v4 + a3;
  if (v4 + a3 > v5)
  {
    v21 = "m_ulPosition <= m_ulLimit";
    DeviceFaultNotify("glutl_bitbuffer.cpp", 373, "PutU", "m_ulPosition <= m_ulLimit");
    v22 = 373;
LABEL_22:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_bitbuffer.cpp", v22, v21);
  }

  v6 = v4 + v3;
  v7 = *(this + 5);
  if (v7 > v6)
  {
    v7 = 0;
  }

  v8 = v6 - v7;
  v9 = v8 >> 5;
  v10 = v8 & 0x1F;
  if (v10)
  {
    v11 = -1 << -v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = 32 - v10;
  v13 = a2 & ~(0xFFFFFFFFLL << a3);
  v14 = (~v11 >> a3) | v11;
  if (a3 == 32)
  {
    v14 = v11;
    v13 = a2;
  }

  v15 = *this;
  v16 = (*this + 4 * v9);
  v17 = *v16 & v14;
  *v16 = v17;
  v18 = v12 - a3;
  if (v12 < a3)
  {
    v19 = a3 - v12;
    if (v9 + 1 == *(this + 5) >> 5)
    {
      v20 = 0;
    }

    else
    {
      v20 = v9 + 1;
    }

    *v16 = v17 | (v13 >> v19);
    v16 = (v15 + 4 * v20);
    v17 = *v16 & (0xFFFFFFFFuLL >> v19);
    v18 = 32 - v19;
  }

  *v16 = v17 | (v13 << v18);
  return this;
}

double BlueFin::GlPeGnssTime::GetGps(BlueFin::GlPeGnssTime *this, BlueFin::GlGpsTime *a2)
{
  v2 = *this;
  v3 = *(this + 1);
  *(a2 + 2) = v2;
  *(a2 + 3) = v3;
  if (!*(this + 2))
  {
    return *(this + 3);
  }

  v4 = BlueFin::GlPeGnssTime::m_potConversionTable;
  if (!BlueFin::GlPeGnssTime::m_potConversionTable)
  {
    v18 = "m_potConversionTable != nullptr";
    DeviceFaultNotify("glpe_timemgr.cpp", 415, "GetGps", "m_potConversionTable != nullptr");
    v19 = "glpe_timemgr.cpp";
    v20 = 415;
LABEL_30:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v19, v20, v18);
  }

  v5 = fabs(*BlueFin::GlPeGnssTime::m_potConversionTable);
  v6 = v5 - trunc(v5);
  v7 = v6 * 4294967300.0 + 0.5;
  v8 = v7;
  if (v7 >= 4294967300.0)
  {
    v8 = -1;
  }

  if (v6 < 0.0 || v6 >= 1.0)
  {
    v18 = "dFracSec >= 0.0 && dFracSec < 1.0";
    DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
    v19 = "glpe_timepoint.h";
    v20 = 173;
    goto LABEL_30;
  }

  v10 = v5;
  if (*BlueFin::GlPeGnssTime::m_potConversionTable >= 0.0)
  {
    v2 += v8;
    v11 = v3 + v10 + HIDWORD(v2);
    goto LABEL_26;
  }

  v13 = v3 - v10;
  if (v3 > v10 || v3 == v10 && v2 >= v8)
  {
    v14 = v2 >= v8;
    LODWORD(v2) = v2 - v8;
    v15 = !v14;
    v11 = v13 - v15;
    goto LABEL_26;
  }

  if (v10 - v3 != v2 > v8 || v8 != v2)
  {
    v18 = "!tDelta.isNegative()";
    DeviceFaultNotify("glpe_datetime.h", 425, "operator+=", "!tDelta.isNegative()");
    v19 = "glpe_datetime.h";
    v20 = 425;
    goto LABEL_30;
  }

  v11 = 0;
  LODWORD(v2) = 0;
LABEL_26:
  *(a2 + 2) = v2;
  *(a2 + 3) = v11;
  v17 = *(this + 3);
  result = 4294967300.0;
  if (v17 != 4294967300.0)
  {
    return v17 + *(v4 + 48);
  }

  return result;
}

void BlueFin::GlPeTimeManager::cacheGnssTime(BlueFin::GlPeTimeManager *this)
{
  if (*(this + 654) != -1)
  {
    v12 = v4;
    v13 = v3;
    v14 = v1;
    v15 = v2;
    if (*(this + 329) != 4294967300.0 && *(this + 642) >= 0x3E8u)
    {
      *(this + 1201) = -7200001;
      BlueFin::GlPeTimeManager::GetTime(this, 1, &v10);
      if ((this + 4808) == &v10)
      {
        v6 = *(this + 1204);
      }

      else
      {
        *(this + 601) = v10.n128_u64[0];
        v6 = v10.n128_u32[2];
        *(this + 1204) = v10.n128_u32[2];
        *(this + 4824) = v11;
      }

      if (v6 != -1 && *(this + 604) != 4294967300.0)
      {
        *(this + 1201) = *(this + 642);
        v10.n128_u64[0] = &unk_2A1F11310;
        v10.n128_u64[1] = 0;
        v7 = 432000 - BlueFin::GlWeekTowTime::m_ucCurrentLs;
        LOWORD(v11) = 1980;
        WORD1(v11) = v7 / 0x15180 + 1;
        BYTE4(v11) = 1;
        BYTE5(v11) = v7 / 0x15180 + 1;
        BYTE6(v11) = v7 % 0x15180 / 0xE10;
        BYTE7(v11) = (2185 * (v7 - 3600 * ((1193047 * v7) >> 32))) >> 17;
        BYTE8(v11) = v7 - 60 * ((71582789 * v7) >> 32);
        BlueFin::GlPeGnssTime::GetUtc((this + 4808), &v10);
        v8 = v10.n128_u32[3];
        *(this + 1212) = v10.n128_u32[2];
        *(this + 1213) = v8;
        *(this + 607) = v11;
        *(this + 4864) = BYTE8(v11);
        if (BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent - 1 >= v8)
        {
          v9 = &BlueFin::GlWeekTowTime::m_ucCurrentLs;
        }

        else
        {
          v9 = &BlueFin::GlWeekTowTime::m_ucNextLs;
        }

        *(this + 4872) = *v9;
      }
    }
  }
}

uint64_t BlueFin::GlBitBuffer::Position(uint64_t this, unsigned int a2)
{
  if (*(this + 24) < a2)
  {
    DeviceFaultNotify("glutl_bitbuffer.cpp", 145, "Position", "ulNewPosition <= m_ulLimit");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_bitbuffer.cpp", 145, "ulNewPosition <= m_ulLimit");
  }

  *(this + 28) = a2;
  v2 = *(this + 40) == 1 && *(this + 32) <= a2;
  *(this + 40) = v2;
  return this;
}

uint64_t (*(*BlueFin::GlPePwrStateMgr::SteadyNormalMode(unint64_t a1, unsigned __int8 *a2))(BlueFin::GlPePwrStateMgr *a1, unsigned __int8 *a2))()
{
  v4 = *a2;
  if ((v4 - 2) < 2)
  {
    return 0;
  }

  if (v4 != 47)
  {
    return BlueFin::GlPePwrStateMgr::NormalMode;
  }

  v14 = v2;
  v15 = v3;
  if (*(a1 + 208))
  {
    if (*(a1 + 256))
    {
      *(a1 + 248) = 0;
      v13 = 0;
      memset(v11, 0, 13);
      v11[2] = 0;
      v12[0] = 0;
      *(v12 + 6) = 0;
      BlueFin::GlPeKF::GetDataForLowPowerDecision(*(a1 + 152), v11);
      *(a1 + 248) = BlueFin::GlPePwrStateMgr::LowPowerAllowed(a1, 1, *(a1 + 209), *(a1 + 210), *(a1 + 211), v11);
      v7 = BlueFin::GlPePwrStateMgr::ComputeLowPowerState(a1);
      v8 = v7;
      BlueFin::GlPePwrStateMgr::Print(a1, "Entry", v7);
      if (v8)
      {
        *(*(a1 + 120) + 54844) = 1;
        BlueFin::QHsm::tran(a1, BlueFin::GlPePwrStateMgr::Wait4Me, "&GlPePwrStateMgr::Wait4Me");
      }
    }

    else
    {
      v9 = *(a1 + 252);
      if (v9)
      {
        v10 = v9 - *(BlueFin::GlUtils::m_pInstance + 1092);
        GlCustomLog(15, "PMM::pe -LpEntry (%u.%03us remain)\n");
      }

      else
      {
        GlCustomLog(15, "PMM::pe -LpEntry (not tracking)\n");
      }
    }
  }

  else
  {
    GlCustomLog(15, "PMM::pe -LpEntry disabled\n");
  }

  return 0;
}

uint64_t BlueFin::GlUtcTime::breakdownFct(uint64_t this)
{
  v1 = BlueFin::GlWeekTowTime::m_ucNextLs;
  v2 = *(this + 12);
  if (BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent)
  {
    v3 = v2 == BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = (BlueFin::GlWeekTowTime::m_ucNextLs >= BlueFin::GlWeekTowTime::m_ucCurrentLs) & v4;
  if (BlueFin::GlWeekTowTime::m_ulCtFctOfNextLs - 1 >= v2)
  {
    v1 = BlueFin::GlWeekTowTime::m_ucCurrentLs;
  }

  v6 = v2 - v5 - v1 + 432000;
  v7 = v6 % 0x7861F80;
  v8 = v6 % 0x7861F80 / 0x15180;
  if (v6 % 0x7861F80 > 0x5A4EBFF)
  {
    v9 = 3;
  }

  else if (v7 <= 0x3C3B87F)
  {
    v9 = v7 > 0x1E284FF;
  }

  else
  {
    v9 = 2;
  }

  v10 = v9;
  v11 = &BlueFin::GlWeekTowTime::s_aausSub4AndMonth2Nt[12 * v9];
  if (v8 >= v11[9])
  {
    v12 = 9;
  }

  else if (v8 >= v11[6])
  {
    v12 = 6;
  }

  else if (v8 >= v11[3])
  {
    v12 = 3;
  }

  else
  {
    v12 = 0;
  }

  *(this + 16) = (v10 | (4 * (v6 / 0x7861F80))) + 1980;
  *(this + 18) = v8 - *v11 + 1;
  if (v8 >= BlueFin::GlWeekTowTime::s_aausSub4AndMonth2Nt[12 * v10 + v12 + 2])
  {
    v13 = 3;
  }

  else if (v8 < BlueFin::GlWeekTowTime::s_aausSub4AndMonth2Nt[12 * v10 + v12 + 1])
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  v14 = v13 + v12;
  *(this + 20) = v14;
  *(this + 21) = v8 - BlueFin::GlWeekTowTime::s_aausSub4AndMonth2Nt[12 * v10 + v14 - 1] + 1;
  LOBYTE(v8) = 60;
  if (v5)
  {
    LOBYTE(v15) = 59;
    LOBYTE(v16) = 23;
  }

  else
  {
    v16 = (1193047 * (v6 % 0x15180)) >> 32;
    v15 = (2185 * (v6 % 0xE10)) >> 17;
    v8 = v6 % 0x3C;
  }

  *(this + 22) = v16;
  *(this + 23) = v15;
  *(this + 24) = v8;
  return this;
}

uint64_t BlueFin::GlArray::Clear(uint64_t this)
{
  if (*(this + 37))
  {
    v1 = 0;
    do
    {
      *(*(this + 16) + v1++) = -1;
    }

    while (v1 < *(this + 37));
  }

  if (*(this + 38))
  {
    v2 = 0;
    do
    {
      *(*(this + 24) + v2) = v2;
      ++v2;
      v3 = *(this + 38);
    }

    while (v2 < v3);
    v4 = v3 - 1;
  }

  else
  {
    v4 = -1;
  }

  *(this + 39) = v4;
  return this;
}

BOOL BlueFin::GlSetBase::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != *(a1 + 8))
  {
    DeviceFaultNotify("glutl_set.cpp", 215, "operator==", "otRightOperand.m_ucUlongSize == m_ucUlongSize");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_set.cpp", 215, "otRightOperand.m_ucUlongSize == m_ucUlongSize");
  }

  if (!*(a2 + 8))
  {
    return 1;
  }

  if (**a1 != **a2)
  {
    return 0;
  }

  v3 = 1;
  do
  {
    v4 = v3;
    if (v2 == v3)
    {
      break;
    }

    v5 = *(*a1 + 4 * v3);
    v6 = *(*a2 + 4 * v3++);
  }

  while (v5 == v6);
  return v4 >= v2;
}

uint64_t BlueFin::GlSvIdSet::operator~@<X0>(const void **a1@<X0>, uint64_t a2@<X8>)
{
  BlueFin::GlSetBase::GlSetBase(a2, (a2 + 12), 8u, a1);
  v11 = &v13;
  v12 = 8;
  v13 = 0u;
  v14 = 0u;
  BlueFin::GlSetBase::OperatorBinaryInversion(a2, &v11);
  v3 = BlueFin::GlSetBase::operator=(a2, &v11);
  *(a2 + 12) = v13;
  *(a2 + 28) = v14;
  ULong = BlueFin::GlSetBase::GetULong(v3, 0);
  result = BlueFin::GlSetBase::SetULong(a2, 0, ULong & 0xFFFFFFFE);
  v6 = (32 * (*(a2 + 8) & 0x3F) - 1);
  if (v6 >= 0xBE)
  {
    v7 = 189;
    v8 = -67;
    do
    {
      v9 = v8 & 0x1F;
      if ((v8 & 0x1F) != 0)
      {
        v10 = BlueFin::GlSetBase::GetULong(a2, (v7 >> 5));
        result = BlueFin::GlSetBase::SetULong(a2, (v7 >> 5), v10 & ~(-1 << v9));
        LOWORD(v7) = v7 - v9;
      }

      else
      {
        result = BlueFin::GlSetBase::SetULong(a2, (v7 >> 5), 0);
      }

      v8 = v7 + 32;
      v7 = (v7 + 32);
    }

    while (v7 < v6);
  }

  return result;
}

uint64_t BlueFin::GlSetBase::OperatorBinaryInversion(uint64_t this, int **a2)
{
  v2 = *(this + 8);
  if (v2 != *(a2 + 8))
  {
    DeviceFaultNotify("glutl_set.cpp", 525, "OperatorBinaryInversion", "m_ucUlongSize == otResult.m_ucUlongSize");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_set.cpp", 525, "m_ucUlongSize == otResult.m_ucUlongSize");
  }

  if (*(this + 8))
  {
    v3 = *this;
    v4 = *a2;
    do
    {
      v5 = *v3++;
      *v4++ = ~v5;
      --v2;
    }

    while (v2);
  }

  return this;
}

uint64_t BlueFin::SensorsData::reset(BlueFin::SensorsData *this)
{
  result = (*(*this + 216))(this);
  *(this + 490) = 0;
  *(this + 457) = 0;
  *(this + 488) = 0;
  return result;
}

void BlueFin::GlPeUnbTropoModel::getZenithDelayValues_WAAS_Model(BlueFin::GlPeUnbTropoModel *this, float a2, float a3, unsigned int a4, float *a5, float *a6)
{
  v9 = fabsf(a2) * 57.296;
  v10 = a2 < 0.0;
  v11 = 211.0;
  if (!v10)
  {
    v11 = 28.0;
  }

  v12 = cosf(((a4 - v11) * 6.2832) / 365.25);
  v13 = v9;
  if ((v9 + 14) > 0x1C)
  {
    if ((v13 - 15) > 0x3B)
    {
      v14 = (v12 * 0.5) + 1013.0;
      v15 = (v12 * -14.5) + 263.65;
      v16 = (v12 * -3.39) + 4.11;
      v17 = (v12 * -0.00062) + 0.00453;
      v18 = (v12 * -0.3) + 1.55;
    }

    else
    {
      v19 = v13 / 15;
      v20 = (v13 / 15) * 15.0;
      v21 = (v13 / 15 + 1) * 15.0;
      v22 = (v13 / 15 - 1);
      v23 = flt_298A41540[v22];
      if (vabds_f32(v21, v20) >= 0.000000001)
      {
        v26 = (v9 - v20) / (v21 - v20);
        v14 = (v23 + (v26 * (flt_298A41540[v19] - v23))) - ((flt_298A41554[v22] + (v26 * (flt_298A41554[v19] - flt_298A41554[v22]))) * v12);
        v15 = (flt_298A41568[v22] + (v26 * (flt_298A41568[v19] - flt_298A41568[v22]))) - ((flt_298A4157C[v22] + (v26 * (flt_298A4157C[v19] - flt_298A4157C[v22]))) * v12);
        v16 = (flt_298A41590[v22] + (v26 * (flt_298A41590[v19] - flt_298A41590[v22]))) - ((flt_298A415A4[v22] + (v26 * (flt_298A415A4[v19] - flt_298A415A4[v22]))) * v12);
        v17 = (flt_298A415B8[v22] + (v26 * (flt_298A415B8[v19] - flt_298A415B8[v22]))) - ((flt_298A415CC[v22] + (v26 * (flt_298A415CC[v19] - flt_298A415CC[v22]))) * v12);
        v24 = flt_298A415E0[v22] + (v26 * (flt_298A415E0[v19] - flt_298A415E0[v22]));
        v25 = flt_298A415F4[v22] + (v26 * (flt_298A415F4[v19] - flt_298A415F4[v22]));
      }

      else
      {
        v14 = v23 - (flt_298A41554[v22] * v12);
        v15 = flt_298A41568[v22] - (flt_298A4157C[v22] * v12);
        v16 = flt_298A41590[v22] - (flt_298A415A4[v22] * v12);
        v17 = flt_298A415B8[v22] - (flt_298A415CC[v22] * v12);
        v24 = flt_298A415E0[v22];
        v25 = flt_298A415F4[v22];
      }

      v18 = v24 - (v25 * v12);
    }
  }

  else
  {
    v14 = (v12 * -0.0) + 1013.2;
    v15 = (v12 * -0.0) + 299.65;
    v16 = (v12 * -0.0) + 26.31;
    v17 = (v12 * -0.0) + 0.0063;
    v18 = (v12 * -0.0) + 2.77;
  }

  v27 = 0.0;
  v28 = 0.0;
  if ((v15 / v17) > a3)
  {
    v29 = v18 + 1.0;
    v30 = v17 * 287.05;
    v31 = (109.65 / -((v17 * 287.05) - ((v18 + 1.0) * 9.784))) * (v16 / v15);
    v32 = 1.0 - ((v17 * a3) / v15);
    v27 = powf(v32, 9.8067 / (v17 * 287.05)) * ((v14 * 0.022277) / 9.784);
    v28 = v31 * powf(v32, ((v29 * 9.8067) / v30) + -1.0);
  }

  *a5 = v27;
  *a6 = v28;
}

void *BlueFin::SKFVector::Clone(BlueFin::SKFVector *this, const BlueFin::SKFVector *a2)
{
  if (*(this + 3) < *(this + 2))
  {
    DeviceFaultNotify("glpe_matrix.cpp", 2114, "Clone", "m_MaxLen >= m_Len");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.cpp", 2114, "m_MaxLen >= m_Len");
  }

  v3 = *(a2 + 2);
  *(this + 2) = v3;
  v4 = (*this + 8);
  v5 = (*a2 + 8);

  return memcpy(v4, v5, 8 * v3);
}

uint64_t BlueFin::GlPeSatAidInfo::Clear(uint64_t this, char a2)
{
  v2 = this;
  v3 = this + 0x2000;
  v4 = (this + 9120);
  v9 = this + 9120;
  v5 = *(this + 9159);
  v10 = v5 + 1;
  v6 = *(this + 9158);
  if (v6 > (v5 + 1))
  {
    do
    {
      v8 = BlueFin::GlArrayIterator::Next(&v9);
      this = BlueFin::GlArray::Get(v4, v8);
      if (this && (*(this + 12) != 2 || (a2 & 1) == 0))
      {
        *this = 0;
        this = BlueFin::GlArray::Remove(v4, v8);
      }
    }

    while (v10 < *(v9 + 38));
    v6 = *(v3 + 966);
    v5 = *(v3 + 967);
  }

  if (v5 + 1 == v6)
  {
    *(v2 + 296) = 0;
    *(v2 + 304) = 1226024960;
    *(v2 + 312) = 0;
    *(v2 + 320) = 1202241536;
  }

  return this;
}

uint64_t BlueFin::GlMeSrdPacketManager::EscapeAndAppend(uint64_t this, int a2)
{
  if (a2 != 224)
  {
    if (*(this + 6517) == 1)
    {
      if (*(this + 6518) == a2)
      {
        v2 = (this + 6504);
        v4 = *(this + 6504);
        *(this + 6504) = v4 + 1;
        *v4 = -32;
        LOBYTE(a2) = 3;
        goto LABEL_9;
      }

      if (*(this + 6519) == a2)
      {
        v2 = (this + 6504);
        v5 = *(this + 6504);
        *(this + 6504) = v5 + 1;
        *v5 = -32;
        LOBYTE(a2) = 4;
        goto LABEL_9;
      }
    }

    v2 = (this + 6504);
    goto LABEL_9;
  }

  v2 = (this + 6504);
  v3 = *(this + 6504);
  *(this + 6504) = v3 + 1;
  *v3 = -32;
  LOBYTE(a2) = 2;
LABEL_9:
  v6 = (*v2)++;
  *v6 = a2;
  return this;
}

uint64_t BlueFin::GlPeKF::SensorMask@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v3 = this + 57344;
  if (*(this + 61032))
  {
    v4 = this;
    this = BlueFin::GlSetBase::GlSetBase(a2, (a2 + 12), 5u, (this + 1640));
    v5 = *(v4 + 2280);
    if (v5 || *(v4 + 2284))
    {
      v6 = **(v3 + 3664);
      if (v5 <= v6 && v6 <= *(v4 + 2284))
      {
        if ((*(v4 + 3337) & 1) == 0)
        {
          *(v4 + 3337) = 1;
          BlueFin::GlPeHula::GetSensorValidityMask(*(v3 + 3688), &v10);
          if ((v4 + 3344) != &v10)
          {
            BlueFin::GlSetBase::operator=(v4 + 3344, &v10);
            *(v4 + 3356) = v12;
            *(v4 + 3372) = v13;
          }

          v7 = *(v3 + 3688);
          BlueFin::GlSetBase::GlSetBase(&v8, v9, 5u, (v4 + 3344));
          v10 = &v12;
          v11 = 5;
          v12 = 0uLL;
          v13 = 0;
          BlueFin::GlSetBase::OperatorBinaryAnd(&v8, &v10, (v4 + 1640));
          return BlueFin::GlPeHula::SetSensorValidityMask(v7, &v8);
        }
      }

      else
      {
        if (*(v4 + 3337) == 1)
        {
          *(v4 + 3337) = 0;
          this = BlueFin::GlPeHula::SetSensorValidityMask(*(v3 + 3688), (v4 + 3344));
        }

        BlueFin::GlPeExtSensorSet::getAllSensorSet(this);
        this = BlueFin::GlSetBase::operator=(a2, &BlueFin::GlPeExtSensorSet::getAllSensorSet(void)const::s_otAllSensorSet);
        *(a2 + 12) = xmmword_2A18BA78C;
        *(a2 + 28) = dword_2A18BA79C;
      }
    }
  }

  else
  {
    *(a2 + 12) = 0;
    *a2 = a2 + 12;
    *(a2 + 8) = 5;
    *(a2 + 20) = 0;
    *(a2 + 28) = 0;
  }

  return this;
}

uint64_t BlueFin::GlRequestImplPosPeriodic::Print(uint64_t this, unsigned __int8 a2)
{
  v7 = *MEMORY[0x29EDCA608];
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    v3 = this;
    this = BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(a2);
    if (this)
    {
      if (((1 << (a2 >> 3)) & 0x2000800E) != 0)
      {
        BlueFin::GlFormat::glsnprintf(v6, 0x14, " per=%u", v4, *(v3 + 108));
        this = BlueFin::GlRequestImplPos::Print(v3, a2, v6);
      }
    }
  }

  v5 = *MEMORY[0x29EDCA608];
  return this;
}

uint64_t BlueFin::GlMeSrdReceiverParametersProgrammer::GetFftThroughputFromBsId(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, BlueFin::GlSignalId *a5)
{
  v9 = (*(**(a1 + 8) + 248))(*(a1 + 8), a3);
  v11 = v9;
  *v12.i64 = (*(v9 + 4) * 1000.0) + 0.5;
  *v13.i64 = *v12.i64 + trunc(*v12.i64 * 2.32830644e-10) * -4294967300.0;
  v14.f64[0] = NAN;
  v14.f64[1] = NAN;
  v15 = vnegq_f64(v14);
  *&v16 = vbslq_s8(v15, v13, v12).u64[0];
  if (*v12.i64 > 4294967300.0)
  {
    *v12.i64 = v16;
  }

  if (*v12.i64 < -4294967300.0)
  {
    *v10.i64 = -*v12.i64;
    *v12.i64 = -(*v12.i64 - trunc(*v12.i64 * -2.32830644e-10) * -4294967300.0);
    *v12.i64 = -*vbslq_s8(v15, v12, v10).i64;
  }

  if (*v12.i64 < 0.0)
  {
    v17 = --*v12.i64;
  }

  else
  {
    v17 = *v12.i64;
  }

  v18 = v17 - 1;
  if (v17 - 1 > 0x13 || ((v19 = *(v9 + 26), v19 != 2) ? (v20 = v19 == 4) : (v20 = 1), !v20))
  {
    v32 = "uiCoherentMs >= 1 && uiCoherentMs <= 20 && (rSrchParams.usDelaysPerChip == 2 || rSrchParams.usDelaysPerChip == 4)";
    DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 1322, "GetFftThroughputFromBsId", "uiCoherentMs >= 1 && uiCoherentMs <= 20 && (rSrchParams.usDelaysPerChip == 2 || rSrchParams.usDelaysPerChip == 4)");
    v33 = "glmesrd_receiver_parameters_programmer.cpp";
    v34 = 1322;
    goto LABEL_34;
  }

  RmPivot = BlueFin::GlMeSrdReceiverParametersProgrammer::GetRmPivot(a1, a2);
  v22 = RmPivot[1];
  if (v22 >= 6)
  {
    v32 = "ptRmPivot->g.q <= 5";
    DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 1325, "GetFftThroughputFromBsId", "ptRmPivot->g.q <= 5");
    v33 = "glmesrd_receiver_parameters_programmer.cpp";
    v34 = 1325;
    goto LABEL_34;
  }

  if (RmPivot[22] <= 2u)
  {
    v32 = "ptRmPivot->inv_g.q >= 3";
    DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 1326, "GetFftThroughputFromBsId", "ptRmPivot->inv_g.q >= 3");
    v33 = "glmesrd_receiver_parameters_programmer.cpp";
    v34 = 1326;
LABEL_34:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v33, v34, v32);
  }

  v23 = RmPivot[v18 + 2];
  v24 = *(v11 + 26);
  v25 = *a5;
  EpochPerSymbol = BlueFin::GlSignalId::GetEpochPerSymbol(a5);
  if (*(a5 + 4) >= 0x23Fu)
  {
    goto LABEL_30;
  }

  if (!BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(a5 + 1) - *(a5 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a5]])
  {
LABEL_31:
    v32 = "ucMsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
    v33 = "glsignalid.h";
    v34 = 686;
    goto LABEL_34;
  }

  if (*a5 - 76 <= 0x3E)
  {
    EpochPerBit = BlueFin::GlSignalId::GetEpochPerBit(a5);
    if (*(a5 + 4) < 0x23Fu)
    {
      if (BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(a5 + 1) - *(a5 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a5]])
      {
        v28 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(a5 + 1) - *(a5 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a5]] * EpochPerBit;
        goto LABEL_23;
      }

      goto LABEL_31;
    }

LABEL_30:
    v32 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 679, "GetMsPerEpoch", "IsValid()");
    v33 = "glsignalid.h";
    v34 = 679;
    goto LABEL_34;
  }

  v28 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(a5 + 1) - *(a5 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a5]] * EpochPerSymbol;
LABEL_23:
  v29 = v28 / *(v11 + 28);
  if (!*(v11 + 28))
  {
    v29 = 1;
  }

  if ((v25 - 76) < 0x3F)
  {
    v30 = 1;
  }

  else
  {
    v30 = 2 * ((v25 - 139) < 0x24);
  }

  return (v29 * (((v23 << (5 - v22) << (v24 == 4)) * a4) << v30));
}

uint64_t BlueFin::GlSignalId::GetEpochPerSymbol(BlueFin::GlSignalId *this)
{
  if (*(this + 4) >= 0x23Fu)
  {
    v7 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 745, "GetEpochPerSymbol", "IsValid()");
    v8 = 745;
LABEL_13:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", v8, v7);
  }

  v1 = *this;
  if ((v1 - 76) > 0x3E || ((1 << (v1 - 76)) & 0x7C0000000000001FLL) == 0)
  {
    v3 = *(this + 1);
  }

  else
  {
    v3 = *(this + 1);
    if (!v3)
    {
      return 2;
    }
  }

  v4 = BlueFin::GlSvId::s_aucSvId2gnss[*this];
  v5 = &BlueFin::GlSignalId::s_aucSignalIndexAndGnss2epochPerSymbol + 8 * v3 - v3;
  result = v5[v4];
  if (!v5[v4])
  {
    v7 = "ucEpochPerSymbol != 0";
    DeviceFaultNotify("glsignalid.h", 757, "GetEpochPerSymbol", "ucEpochPerSymbol != 0");
    v8 = 757;
    goto LABEL_13;
  }

  return result;
}

void *BlueFin::GlMeSrdReceiverParametersProgrammer::GetRmPivot(uint64_t a1, uint64_t a2)
{
  if (!(*(*a2 + 24))(a2) || (*(a1 + 103) & 1) != 0)
  {
    DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 1306, "GetRmPivot", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_receiver_parameters_programmer.cpp", 1306, "0");
  }

  if ((((*(*a2 + 16))(a2) & 0xF000FFFF) == 0x30000013 || ((*(*a2 + 16))(a2) & 0xF000FFFF) == 0x30000015) && (*(*a2 + 1112))(a2) == 1 && !(*(*a2 + 1144))(a2))
  {
    return &BlueFin::GlMeSrdReceiverParametersProgrammer::m_otRmPivot200Mhz4777;
  }

  else
  {
    return &BlueFin::GlMeSrdReceiverParametersProgrammer::m_otRmPivot4752;
  }
}

_WORD *BlueFin::GlMeSrdCtrlSmRpcSatEvt::gll_satevt_rpc_rm_event_report(_WORD *result, unsigned int a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, unsigned __int8 a10, int a11, __int16 a12, void *a13, char a14, uint64_t a15, uint64_t a16, __int128 a17, unsigned __int8 *a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  a21 = *MEMORY[0x29EDCA608];
  a13 = &unk_2A1F0D548;
  a18 = &a17;
  LOWORD(a17) = 0;
  *(&a17 + 4) = 0;
  HIDWORD(a17) = 0;
  a14 = a2;
  if (a2 > 1)
  {
    DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 3727, "gll_satevt_rpc_rm_event_report", "num <= RM_REPORT_SIZE");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_ctrl_sm.cpp", 3727, "num <= RM_REPORT_SIZE");
  }

  if (a2 == 1 && a3[6] != 253)
  {
    v22 = result;
    v23 = *a3;
    if (v23 >= (*(**(*(result + 1) + 136) + 384))(*(*(result + 1) + 136)))
    {
      DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 3735, "gll_satevt_rpc_rm_event_report", "array_rm_reports[i].sat_id < m_rCtrlSm.m_rAsicConfig.GetMaxNumSats()");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_ctrl_sm.cpp", 3735, "array_rm_reports[i].sat_id < m_rCtrlSm.m_rAsicConfig.GetMaxNumSats()");
    }

    v24 = a3[6];
    v26 = v24 == 253 || v24 < 0xFC;
    *a18 = *a3;
    Lms16ToLms32 = BlueFin::GlMeSrdAsicUnitConverter::GetLms16ToLms32(*(a3 + 1), *(*(v22 + 1) + 3544));
    v28 = a18;
    *(a18 + 1) = Lms16ToLms32;
    v29 = a3[4];
    v28[8] = v29;
    v28[9] = v29;
    *(v28 + 5) = 0;
    v30 = a3[7];
    v28[14] = v30;
    if (!v26)
    {
      *(v28 + 6) = *(a3 + 5);
      v28[15] = a3[8];
LABEL_50:
      v60 = *(*(v22 + 1) + 200);
      a10 = a3[1];
      result = BlueFin::GlPfaStat::SetPfaData((v60 + 928), &a10, a3[4], a3[5], a3[8]);
      goto LABEL_51;
    }

    if (v29)
    {
      if (v30)
      {
        GlSignalIndex = BlueFin::GlMeSrdAsicUnitConverter::GetGlSignalIndex(v28[1], v30);
        v28 = a18;
      }

      else
      {
        GlSignalIndex = 0;
      }

      a10 = v28[1];
      a11 = GlSignalIndex;
      a12 = 575;
      if (a10 - 189 >= 0xFFFFFF44)
      {
        v33 = BlueFin::GlSvId::s_aucSvId2gnss[a10];
        if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * GlSignalIndex - GlSignalIndex + v33] == 255)
        {
          a11 = -1;
        }

        else
        {
          a12 = BlueFin::GlSignalId::s_ausGnss2signalId[v33] + a10 - BlueFin::GlSvId::s_aucGnss2minSvId[v33] + GlSignalIndex * BlueFin::GlSvId::s_aucGnss2numSvId[v33];
        }
      }

      v34 = (*(**(*(v22 + 1) + 168) + 24))(*(*(v22 + 1) + 168), a3[5], v28[8], &a10);
      v35 = a18;
      a18[9] = v34;
      v36 = (*(**(*(v22 + 1) + 168) + 16))(*(*(v22 + 1) + 168), *(*(v22 + 1) + 136), a3[5], v35[8], &a10);
      v28 = a18;
      *(a18 + 5) = v36;
      v32 = v28[8];
      Lms16ToLms32 = *(v28 + 1);
    }

    else
    {
      v32 = 0;
    }

    v37 = a3[5];
    v28[12] = v37;
    v28[13] = a3[6];
    v28[15] = a3[8];
    v38 = *v28;
    if (v32)
    {
      v75 = v32;
      vars0 = v37;
      vars8 = Lms16ToLms32;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = *(v22 + 20);
      v44 = -1;
      do
      {
        if (*(v43 + v40 + 6) && *(v43 + v40 + 7) == v38)
        {
          GlCustomLog(12, "ResourceMonitor:Warning! Resource not freed, probably notification lost!(sat%u, svid%u)\n", v38, v28[1]);
          v43 = *(v22 + 20);
          *(v43 + v40 + 6) = 0;
        }

        if (v41)
        {
          v41 = 1;
        }

        else if (*(v43 + v40 + 6))
        {
          v41 = 0;
          if (*(v43 + v40) < v44)
          {
            v42 = v39;
            v44 = *(v43 + v40);
          }
        }

        else
        {
          v41 = 1;
          v42 = v39;
        }

        v40 += 8;
        ++v39;
      }

      while (v40 != 128);
      if (v42 > 0xF)
      {
        DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 3807, "SetHistoryOnAllocation", "uiAvailable < _DIM(m_aResourceHistory)");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_ctrl_sm.cpp", 3807, "uiAvailable < _DIM(m_aResourceHistory)");
      }

      v45 = v43 + 8 * v42;
      *v45 = vars8;
      *(v45 + 4) = vars0;
      *(v45 + 5) = v75;
      *(v45 + 6) = v28[1];
      *(v45 + 7) = v38;
      goto LABEL_50;
    }

    v46 = 0;
    v47 = (*(v22 + 20) + 4);
    v48 = 5;
    while (!v47[2] || v47[3] != v38)
    {
      ++v46;
      v48 += 8;
      v47 += 8;
      if (v46 == 16)
      {
        GlCustomLog(12, "ResourceMonitor:Warning! Resource release but allocation message not received, probably notification lost!(sat%u, svid%u)\n", *v28, v28[1]);
        v46 = 0;
        goto LABEL_49;
      }
    }

    v49 = v28[1];
    if (v47[2] == v49 && *v47 == v37)
    {
      v50 = *(v47 - 1);
      v51 = Lms16ToLms32 - v50;
      if (Lms16ToLms32 != v50)
      {
        v52 = Lms16ToLms32;
        v53 = v37;
        v54 = (*(**(*(v22 + 1) + 176) + 248))(*(*(v22 + 1) + 176));
        v55 = *(*(v22 + 20) + v48);
        v56 = (v55 + ((*(v54 + 26) * *(v54 + 12)) >> 1) - 1) / v55;
        LOWORD(v57) = *(v54 + 8);
        v58 = (*(v54 + 4) * v57) * 1000.0;
        if (v58 <= 0.0)
        {
          if (v58 >= 0.0)
          {
            v62 = 0;
LABEL_59:
            v63 = v51;
            v64 = v62;
            v65 = v56;
            if (*(v54 + 24))
            {
              v66 = v64 * 0.001 + 1.0;
              v67 = (v66 + -0.5);
              if (v66 >= 0.0)
              {
                v67 = 0;
              }

              if (v66 > 0.0)
              {
                v67 = (v66 + 0.5);
              }

              v65 = v67 * v56;
            }

            if (*(*(v22 + 1) + 5440) == 1)
            {
              v68 = 5;
            }

            else
            {
              v68 = 1;
            }

            v69 = v56 * v64;
            v70 = (v63 - (v69 * v68)) / v65;
            if (v70 >= 400.0)
            {
              v71 = v64;
              v72 = (v71 + -0.5);
              if (v62 >= 0)
              {
                v72 = 0;
              }

              if (v62 >= 1)
              {
                v73 = (v71 + 0.5);
              }

              else
              {
                v73 = v72;
              }

              v74 = (v69 + -0.5);
              if (v69 >= 0.0)
              {
                v74 = 0;
              }

              if (v69 > 0.0)
              {
                v74 = (v69 + 0.5);
              }

              GlCustomLog(12, "ResourceMonitor:WARNING! big delays detected(SatId %u, SvId %u, Lms %u, search with BsId %u ran for %u ms, with %u sequence of %u ms (total %u ms), fDelayPerProgrammingMs %.1fms (max %.1fms))\n", v38, v28[1], v52, v53, (v63 + 0.5), v56, v73, v74, v70, *(v22 + 42));
            }

            if (v70 > *(v22 + 42))
            {
              *(v22 + 42) = v70;
            }

            goto LABEL_49;
          }

          v59 = -0.5;
        }

        else
        {
          v59 = 0.5;
        }

        v62 = (v58 + v59);
        goto LABEL_59;
      }
    }

    else
    {
      GlCustomLog(12, "ResourceMonitor:Warning! Resource release inconsistent with allocation message, probably notification lost!(sat%u, svid%u)\n", *v28, v49);
    }

LABEL_49:
    *(*(v22 + 20) + 8 * v46) = 0;
    goto LABEL_50;
  }

LABEL_51:
  if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    result = (*(a13 + 3))(&a13, 0, 0);
  }

  v61 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlMeSrdAsicUnitConverter::GetGlSignalIndex(uint64_t a1, int a2)
{
  result = (a2 - 1);
  if (result >= 4)
  {
    DeviceFaultNotify("glmesrd_asic_unit_converter.cpp", 1609, "GetGlSignalIndex", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asic_unit_converter.cpp", 1609, "0");
  }

  return result;
}

uint64_t BlueFin::GlMeSrdReceiverParameters::GetEswSrchParamFromBsid(BlueFin::GlMeSrdReceiverParameters *this)
{
  v1 = *(*BlueFin::GlMeSrdReceiverParameters::rRxIfc(this) + 248);

  return v1();
}

uint64_t BlueFin::GlMeSrdReceiverParametersProgrammer::GetMemoryBinFromBsId(BlueFin::GlMeSrdReceiverParametersProgrammer *this, unsigned __int8 a2, int a3, const BlueFin::GlSignalId *a4)
{
  v6 = (*(**(this + 1) + 248))(*(this + 1));
  v7 = v6;
  v8 = *(v6 + 10);
  if (v8 != 1023 && v8 != 2046 && v8 != 4092)
  {
    v9 = (((((v8 - ((2115 * v8) >> 16)) >> 1) + ((2115 * v8) >> 16)) >> 4) - 1);
    if (*(v6 + 26) == 4)
    {
      v10 = &unk_298A37A80;
    }

    else
    {
      v10 = &unk_298A37A9E;
    }

    v11 = v10[v9];
    v12 = (v11 >> 8) * a3;
    LOBYTE(v11) = v11 * a3;
    v13 = v12 + v11;
    v14 = v13 >> 8;
    v15 = v13 | v11;
    if (((BYTE1(v13) + 1) & 0x100) != 0)
    {
      v16 = -1;
    }

    else
    {
      v16 = BYTE1(v13) + 1;
    }

    if (v15)
    {
      LOBYTE(a3) = v16;
    }

    else
    {
      LOBYTE(a3) = v14;
    }
  }

  v17 = *a4;
  EpochPerSymbol = BlueFin::GlSignalId::GetEpochPerSymbol(a4);
  if (*(a4 + 4) >= 0x23Fu)
  {
    goto LABEL_27;
  }

  if (!BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(a4 + 1) - *(a4 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a4]])
  {
LABEL_28:
    v24 = "ucMsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
    v25 = 686;
LABEL_29:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", v25, v24);
  }

  if (*a4 - 76 <= 0x3E)
  {
    EpochPerBit = BlueFin::GlSignalId::GetEpochPerBit(a4);
    if (*(a4 + 4) < 0x23Fu)
    {
      if (BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(a4 + 1) - *(a4 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a4]])
      {
        v20 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(a4 + 1) - *(a4 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a4]] * EpochPerBit;
        goto LABEL_20;
      }

      goto LABEL_28;
    }

LABEL_27:
    v24 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 679, "GetMsPerEpoch", "IsValid()");
    v25 = 679;
    goto LABEL_29;
  }

  v20 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(a4 + 1) - *(a4 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a4]] * EpochPerSymbol;
LABEL_20:
  if (*(v7 + 28))
  {
    v21 = v20 / *(v7 + 28);
  }

  else
  {
    v21 = 1;
  }

  if ((v17 - 76) < 0x3F)
  {
    v22 = 1;
  }

  else
  {
    v22 = 2 * ((v17 - 139) < 0x24);
  }

  return (v21 * (a3 << v22));
}

_WORD *BlueFin::GlPfaStat::SetPfaData(_WORD *result, _BYTE *a2, int a3, unsigned int a4, char a5)
{
  v6 = a4 < 0xFE && a4 != 252;
  v7 = *a2;
  if (*a2)
  {
    if (v7 >= 0x21)
    {
      if (v7 < 0x34)
      {
        return result;
      }

      if (v7 > 0x41)
      {
        if (v7 < 0x4C)
        {
          return result;
        }

        if (v7 > 0x8A)
        {
          if (v7 >= 0xAF)
          {
            return result;
          }

          result += 24;
        }

        else
        {
          result += 16;
        }
      }

      else
      {
        result += 8;
      }
    }

    else if (!result)
    {
      return result;
    }

    v8 = a3 != 0;
    if (!a3)
    {
      v6 = 0;
    }

    if (v6)
    {
      goto LABEL_23;
    }

    if (!a3 && (a5 & 1) != 0)
    {
      v8 = 0;
      ++result[1];
    }

    if ((a5 & 0x10) != 0 && !v8)
    {
      result += 2;
LABEL_23:
      ++*result;
    }
  }

  return result;
}

uint64_t BlueFin::GlStream::GetU16(BlueFin::GlStream *this)
{
  if (*(this + 6))
  {
    v9 = "m_uiBitOffset == 0";
    DeviceFaultNotify("glutl_stream.h", 87, "GetU16", "m_uiBitOffset == 0");
    v10 = 87;
    goto LABEL_13;
  }

  if (*(this + 7))
  {
    v9 = "m_uiBitsRemainingInWord == 0";
    DeviceFaultNotify("glutl_stream.h", 88, "GetU16", "m_uiBitsRemainingInWord == 0");
    v10 = 88;
    goto LABEL_13;
  }

  v1 = *this;
  v2 = v1 + 2;
  if ((v1 + 2) > *(this + 4))
  {
    v9 = "m_uiOffset + 2 <= m_uiMaxOffset";
    DeviceFaultNotify("glutl_stream.h", 90, "GetU16", "m_uiOffset + 2 <= m_uiMaxOffset");
    v10 = 90;
LABEL_13:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_stream.h", v10, v9);
  }

  v3 = *(this + 1);
  v4 = v1 + 1;
  *this = v1 + 1;
  v5 = *(v3 + v1);
  *this = v2;
  v6 = *(v3 + v4);
  if (*(this + 20))
  {
    v7 = *(v3 + v4);
  }

  else
  {
    v7 = v5;
  }

  if (!*(this + 20))
  {
    v5 = v6;
  }

  return (v7 | (v5 << 8));
}

uint64_t BlueFin::GlMeSrdAsicConfig::IsFpga(BlueFin::GlMeSrdAsicConfig *this)
{
  if ((*(*this + 16))(this) == -1)
  {
    DeviceFaultNotify("glmesrd_asic_config.cpp", 966, "IsFpga", "GetImageAsicVersion() != ASIC_VERSION_UNKNOWN");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asic_config.cpp", 966, "GetImageAsicVersion() != ASIC_VERSION_UNKNOWN");
  }

  return *(this + 22);
}

uint64_t BlueFin::GlMeSrdPacketManager::SetAsicData(BlueFin::GlMeSrdPacketManager *this, unsigned __int8 *a2, int a3)
{
  v7 = &unk_2A1F0CDF8;
  v8 = a3;
  v9 = a2;
  if (*(this + 6516) == 1 && BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    BlueFin::GlMeSrd2HostData::SerializeImpl(&v7);
  }

  return BlueFin::GlMeSrdPacketManager::ParseAsicData(this, a2, a3);
}

uint64_t BlueFin::GlMeSrdPacketManager::ParseAsicData(uint64_t this, unsigned __int8 *a2, int a3)
{
  v3 = a3;
  v4 = this;
  v5 = (this + 4096);
  v6 = *(this + 4236);
  if (*(this + 4237))
  {
    v7 = 224;
    v8 = a2;
  }

  else
  {
    v8 = a2 + 1;
    v7 = *a2;
  }

  v9 = &a2[a3];
  if (*(this + 4236))
  {
    v10 = 0;
  }

  else
  {
    v10 = *(this + 4232);
  }

  if (v8 > v9)
  {
    *(this + 4232) = v10;
    *(this + 4237) = 0;
    goto LABEL_122;
  }

  v11 = 0;
  v12 = (this + 136);
  v13 = (this + 138);
  v83 = (this + 6596);
  v14 = this + 6552;
  v15 = xmmword_298A397C0;
  v16 = xmmword_298A397A0;
  v17 = xmmword_298A397B0;
  do
  {
    if (v7 != 224)
    {
      if ((v6 & 1) != 0 || v5[2421] == 1 && (v7 == v5[2422] || v7 == v5[2423]))
      {
        ++v11;
        goto LABEL_44;
      }

      if (v10 <= 0xFFF)
      {
        v6 = 0;
LABEL_42:
        v12[v10++] = v7;
        goto LABEL_44;
      }

LABEL_43:
      v11 += v10 + 4;
      v6 = 1;
      v10 = 0;
      goto LABEL_44;
    }

    if (v8 == v9)
    {
      v69 = 1;
      goto LABEL_120;
    }

    v19 = *v8++;
    v18 = v19;
    if (v6)
    {
      v6 = v18 != 0;
      if (v18)
      {
        v11 += 2;
      }

      goto LABEL_44;
    }

    if (v18 == 2)
    {
      if (v10 <= 0xFFF)
      {
        v6 = 0;
        LOBYTE(v7) = -32;
        goto LABEL_42;
      }

      goto LABEL_43;
    }

    if (v18 != 1)
    {
      if (v5[2421] == 1 && v18 == 3)
      {
        if (v10 <= 0xFFF)
        {
          v6 = 0;
          LOBYTE(v7) = v5[2422];
          goto LABEL_42;
        }
      }

      else if (v5[2421] && v18 == 4 && v10 <= 0xFFF)
      {
        v6 = 0;
        LOBYTE(v7) = v5[2423];
        goto LABEL_42;
      }

      goto LABEL_43;
    }

    if (v10 > *(v4 + 6592))
    {
      *(v4 + 6592) = v10;
    }

    if (v10 < 3)
    {
      goto LABEL_43;
    }

    v20 = v10 - 1;
    *(v4 + 4232) = v10 - 1;
    if (v10 == 1)
    {
      v21 = 0;
    }

    else
    {
      LOBYTE(v21) = 0;
      v22 = v10 - 1;
      v23 = v12;
      do
      {
        v24 = *v23++;
        --v22;
        v21 = BlueFin::GlUtlCrc::ucCrcTable[(v24 ^ v21)];
      }

      while (v22);
    }

    if (v12[v20] != ((v21 >> 4) | (16 * v21)))
    {
      goto LABEL_118;
    }

    v26 = *(v4 + 137);
    if (v26 > 0x1F)
    {
      goto LABEL_118;
    }

    if (*(v4 + 137))
    {
      v27 = vdupq_n_s32(v26);
      v26 = vaddvq_s32(vaddq_s32(vshlq_u32(v27, v17), (*&vshlq_u32(v27, v16) & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01))));
    }

    v28 = v26 + 2;
    v79 = v13;
    v80 = v14;
    v81 = v15;
    v77 = v17;
    v78 = v16;
    v72 = v10 - 1;
    if (v20 >= v26 + 5)
    {
      v29 = (v10 - v26 - 3);
      if (v10 - v26 == 3)
      {
        v37 = 0;
        v32 = 1;
      }

      else
      {
        v75 = v3;
        v30 = 0;
        v73 = v12;
        v31 = &v12[v28];
        v32 = 1;
        do
        {
          v33 = &v31[v30];
          v34 = *v33;
          LODWORD(v33) = v33[1];
          v35 = v34 & 0xFFFFF8FF | (v33 >> 6 << 8) & 0xFBFF | (((v33 >> 5) & 1) << 10);
          this = (*(**(v4 + 120) + 376))(*(v4 + 120), v33 & 0x1F);
          v32 &= this;
          v36 = v30 + v35;
          v30 += v35 + 3;
        }

        while (v29 > (v36 + 3));
        v37 = v30;
        v3 = v75;
        v12 = v73;
        v15 = v81;
        v17 = v77;
        v16 = v78;
        v20 = v72;
      }

      v38 = v29 != v37 || v32 == 0;
      v13 = v79;
      v14 = v80;
      if (v38)
      {
        goto LABEL_118;
      }
    }

    else
    {
      if (v20 != v28)
      {
        goto LABEL_118;
      }

      if (!v26)
      {
        GlCustomLog(12, "PacketMgr::Received Empty Packet from ESW!\n");
      }
    }

    v39 = v5[142];
    v40 = *v12;
    v41 = v40 - v39;
    if (v40 != v39)
    {
      GlCustomLog(12, "PacketMgr::Message Lost detected(%u)\n", (v40 - v39));
      *(v4 + 6544) += v41;
      v39 = *(v4 + 136);
    }

    v74 = v12;
    v76 = v3;
    this = GlCustomLog(15, "PacketMgr::Received Packet with SeqId %u\n", v39);
    v5[142] = *(v4 + 136) + 1;
    v84 = *(v4 + 4232) - 2;
    if (!*(v4 + 137))
    {
      v43 = v13;
      goto LABEL_113;
    }

    v42 = 0;
    v43 = v13;
    v82 = *(v4 + 137);
    v44 = v82;
    do
    {
      v45 = ((1 << v42) & v44);
      if (v45 <= 3)
      {
        if (v45 == 1)
        {
          ++v43;
          --v84;
          v44 &= 0xFEu;
          goto LABEL_108;
        }

        if (v45 == 2)
        {
          v48 = *v43++;
          v47 = v48;
          v49 = v5[143];
          v50 = v48 + ~v49;
          if (v50)
          {
            GlCustomLog(12, "PacketMgr::Acknowlegment lost(%u)!\n", v50);
            if ((v5[2424] & 1) == 0)
            {
              v51 = 0;
              v52 = *(BlueFin::GlUtils::m_pInstance + 1092);
              v53 = (v47 - v49 - 2);
              v54 = (v53 + 4) & 0x1FC;
              v55 = vdupq_n_s32(v53);
              v56 = vdup_n_s16(v47);
              v57 = v83;
              do
              {
                v58 = &v83[2 * v51];
                if (*v58)
                {
                  v59 = 0;
                  v60 = *&vdup_n_s16(*(v58 + 4)) & 0xFF00FF00FF00FFLL;
                  v61 = 0x3000200010000;
                  do
                  {
                    v62 = vand_s8(vmovn_s32(vcgeq_u32(v55, vorrq_s8(vdupq_n_s32(v59), v81))), vceq_s16(v60, (*&vadd_s16(v56, veor_s8(v61, 0xFF00FF00FF00FFLL)) & 0xFF00FF00FF00FFLL)));
                    if (vorr_s8(*&vmovl_u16(v62), vdup_n_s32(v62.u16[1])).u32[0] & 1) != 0 || (v62.i8[4] & 1) != 0 || (v62.i8[6])
                    {
                      *v58 = 0;
                    }

                    v59 += 4;
                    v61 = vadd_s16(v61, 0x4000400040004);
                  }

                  while (v54 != v59);
                }

                ++v51;
              }

              while (v51 != 10);
              goto LABEL_93;
            }
          }

          else if ((v5[2424] & 1) == 0)
          {
            v52 = *(BlueFin::GlUtils::m_pInstance + 1092);
            v57 = v83;
LABEL_93:
            v65 = 10;
            while (1)
            {
              v66 = *v57;
              if (*v57)
              {
                if (*(v57 + 4) == v47)
                {
                  break;
                }
              }

              v57 += 2;
              if (!--v65)
              {
                goto LABEL_106;
              }
            }

            v67 = v52 - v66;
            if (v52 >= v66)
            {
              if (v67 < 0x3A99)
              {
                v68 = v67 / 0xFAu;
                if (v68 >= 8)
                {
                  v68 = 8;
                }

                ++*(v80 + 4 * v68);
              }

              else
              {
                GlCustomLog(11, "PacketMgr::Latency incoherent(%u for ack %u)\n", v67, v47);
              }

              *v57 = 0;
            }

            else
            {
              GlCustomLog(11, "PacketMgr::Latency timestamp incoherent(%u, %u)\n", *v57, v52);
            }
          }

LABEL_106:
          --v84;
          v44 &= 0xFDu;
          v5[143] = v47;
          this = GlCustomLog(15, "PacketMgr::Acknowledgement Received for SeqId %u\n", v47);
          if ((v82 & 4) == 0)
          {
            this = BlueFin::GlMeSrdPacketManager::ReliableAckReceived(v4, v5[143]);
          }
        }
      }

      else
      {
        switch(v45)
        {
          case 4u:
            v63 = *v43;
            GlCustomLog(12, "PacketMgr::ESW reported Wrong Reliable SeqId(Last Valid: %u)!\n", v63);
            if ((v82 & 2) == 0)
            {
              v70 = "bAckReceived";
              DeviceFaultNotify("glmesrd_packet_manager.cpp", 339, "PacketReceived", "bAckReceived");
              v71 = 339;
              goto LABEL_125;
            }

            v44 &= 0xFBu;
            --v84;
            ++v43;
            this = BlueFin::GlMeSrdPacketManager::ReliableNackReceived(v4, v5[143], v63);
            break;
          case 8u:
            v64 = *v43++;
            --v84;
            v44 &= 0xF7u;
            this = GlCustomLog(12, "PacketMgr::ESW reported message lost (%u messages)!\n", v64);
            *(v4 + 6548) += v64;
            break;
          case 0x10u:
            v46 = *v43++;
            --v84;
            v44 &= 0xEFu;
            this = GlCustomLog(12, "PacketMgr::ESW reported Garbage(%uB)!\n", v46);
            break;
        }
      }

LABEL_108:
      if (v42 > 6)
      {
        break;
      }

      ++v42;
    }

    while (v44);
    if (v44)
    {
      v70 = "ucFlags == 0";
      DeviceFaultNotify("glmesrd_packet_manager.cpp", 343, "PacketReceived", "ucFlags == 0");
      v71 = 343;
      goto LABEL_125;
    }

LABEL_113:
    v14 = v80;
    if ((v84 & 0x8000) != 0)
    {
      v70 = "sLen >= 0";
      DeviceFaultNotify("glmesrd_packet_manager.cpp", 344, "PacketReceived", "sLen >= 0");
      v71 = 344;
LABEL_125:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_packet_manager.cpp", v71, v70);
    }

    ++*(v4 + 6536);
    if (!v84 || (this = (*(**(v4 + 128) + 16))(*(v4 + 128), v43, v84), (this & 1) != 0))
    {
      v10 = 0;
      v6 = 1;
      v3 = v76;
      v12 = v74;
      v13 = v79;
      v15 = v81;
      v17 = v77;
      v16 = v78;
      goto LABEL_44;
    }

    this = GlCustomLog(12, "PacketMgr::Garbage detected in packet!\n");
    v3 = v76;
    v12 = v74;
    v13 = v79;
    v15 = v81;
    v17 = v77;
    v16 = v78;
    v20 = v72;
LABEL_118:
    v10 = 0;
    v11 += v20 + 4;
    v6 = 1;
LABEL_44:
    v25 = *v8++;
    v7 = v25;
  }

  while (v8 <= v9);
  v69 = 0;
LABEL_120:
  *(v4 + 4232) = v10;
  v5[140] = v6 & 1;
  v5[141] = v69;
  if (v11)
  {
    this = GlCustomLog(12, "PacketMgr::Garbage received  (%uB)\n", v11);
    *(v4 + 6532) += v11;
  }

LABEL_122:
  *(v4 + 6524) += v3;
  return this;
}

BOOL BlueFin::GlMeSrdAsicConfig::IsRpcClassValid(BlueFin::GlMeSrdAsicConfig *this, int a2)
{
  if ((a2 & 0xFFFFFFEF) == 0 || *(this + 1434) <= a2 && *(this + 1432) > a2)
  {
    return 1;
  }

  if (*(this + 1435) <= a2)
  {
    return *(this + 1433) > a2;
  }

  return 0;
}

uint64_t BlueFin::GlMeSrdPacketManagerCallbackImpl::OnPacket(BlueFin::GlMeSrdPacketManagerCallbackImpl *this, unsigned __int8 *a2, unsigned int a3)
{
  if (a3)
  {
    v6 = 0;
    do
    {
      v7 = &a2[v6];
      v8 = v7[1];
      v9 = v7[2];
      v10 = *v7 | (v8 >> 6 << 8) & 0xFBFF | (((v8 >> 5) & 1) << 10);
      (*(**(*(this + 1) + 17024) + 32))(*(*(this + 1) + 17024), v7, (v10 + 3));
      v11 = (*(**(this + 1) + 200))(*(this + 1));
      v12 = (*(*v11 + 16))(v11);
      (*(*v12 + 16))(v12, v8 & 0x1F, v9, v7 + 3, v10);
      v6 += v10 + 3;
    }

    while (a3 > v6);
  }

  return 1;
}

uint64_t BlueFin::GlPeEngineCallBacks::OnAsicDacData(uint64_t this, unsigned __int8 *a2)
{
  v2 = *(this + 48);
  if (v2)
  {
    return v2(*(this + 8), a2);
  }

  return this;
}

uint64_t BlueFin::GllRpcDec::GetGllRpcParserIf(BlueFin::GllRpcDec *this)
{
  result = *(this + 1);
  if (!result)
  {
    if ((*(**(this + 2) + 264))(*(this + 2)))
    {
      if ((*(**(this + 2) + 264))(*(this + 2)))
      {
        result = this + 32;
        v3 = *(this + 3);
        *(this + 4) = &unk_2A1F09AC8;
        *(this + 5) = v3;
        *(this + 1) = this + 32;
        return result;
      }

      v4 = "0";
      DeviceFaultNotify("glmesrd_transaction_rpc_decoder.cpp", 82, "MakeGllRpcParserImp", "0");
      v5 = 82;
    }

    else
    {
      v4 = "bIsAsicConfigConsistent";
      DeviceFaultNotify("glmesrd_transaction_rpc_decoder.cpp", 62, "MakeGllRpcParserImp", "bIsAsicConfigConsistent");
      v5 = 62;
    }

    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_decoder.cpp", v5, v4);
  }

  return result;
}

uint64_t BlueFin::GlStream::GlStream(uint64_t this, unsigned __int8 *a2, int a3, char a4)
{
  *this = 0;
  *(this + 8) = a2;
  *(this + 16) = a3;
  *(this + 20) = 1;
  *(this + 24) = 0;
  if ((a4 & 1) == 0)
  {
    DeviceFaultNotify("glutl_stream.cpp", 37, "GlStream", "bBigEndian");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_stream.cpp", 37, "bBigEndian");
  }

  return this;
}

uint64_t BlueFin::GlStream::GetAvailableSize(BlueFin::GlStream *this)
{
  if (*(this + 6))
  {
    v2 = "m_uiBitOffset == 0";
    DeviceFaultNotify("glutl_stream.cpp", 50, "GetAvailableSize", "m_uiBitOffset == 0");
    v3 = 50;
    goto LABEL_6;
  }

  if (*(this + 7))
  {
    v2 = "m_uiBitsRemainingInWord == 0";
    DeviceFaultNotify("glutl_stream.cpp", 51, "GetAvailableSize", "m_uiBitsRemainingInWord == 0");
    v3 = 51;
LABEL_6:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_stream.cpp", v3, v2);
  }

  return (*(this + 4) - *this);
}

uint64_t BlueFin::MinnowGllRpcParserImp::ParseMethod(BlueFin::MinnowGllRpcParserImp *this, int a2, int a3, unsigned __int8 *a4, int a5)
{
  v227 = *MEMORY[0x29EDCA608];
  result = BlueFin::GlStream::GlStream(&v172, a4, a5, *(*(this + 1) + 8));
  if (a2 > 18)
  {
    if (a2 == 19)
    {
      if (!*(*(this + 1) + 17064))
      {
        goto LABEL_406;
      }

      if (a3 == 2)
      {
        v225 = 0u;
        v224 = 0u;
        v223 = 0u;
        v222 = 0u;
        v221 = 0u;
        v220 = 0u;
        v219 = 0u;
        v218 = 0u;
        v217 = 0u;
        LODWORD(__dst) = BlueFin::GlStream::GetU32(&v172);
        HIDWORD(__dst) = BlueFin::GlStream::GetU32(&v172);
        U32 = BlueFin::GlStream::GetU32(&v172);
        v179 = BlueFin::GlStream::GetU32(&v172);
        v180 = BlueFin::GlStream::GetU32(&v172);
        v181 = BlueFin::GlStream::GetU32(&v172);
        U16 = BlueFin::GlStream::GetU16(&v172);
        v183 = BlueFin::GlStream::GetU16(&v172);
        LOWORD(v184) = BlueFin::GlStream::GetU16(&v172);
        HIWORD(v184) = BlueFin::GlStream::GetU16(&v172);
        v185 = BlueFin::GlStream::GetU16(&v172);
        if (!v175)
        {
          if (v176)
          {
            goto LABEL_305;
          }

          v77 = v172;
          v78 = v172 + 1;
          if (v172 + 1 > v174)
          {
            goto LABEL_262;
          }

          ++v172;
          v186 = *(v173 + v77);
          if (v77 + 2 > v174)
          {
            goto LABEL_262;
          }

          v172 = v77 + 2;
          v187 = *(v173 + v78);
          v79 = v77 + 3;
          if (v77 + 3 > v174)
          {
            goto LABEL_262;
          }

          v172 = v77 + 3;
          LOBYTE(v188) = *(v173 + (v77 + 2));
          v80 = v77 + 4;
          if (v80 > v174)
          {
            goto LABEL_262;
          }

          v172 = v80;
          BYTE1(v188) = *(v173 + v79);
          HIWORD(v188) = BlueFin::GlStream::GetU16(&v172);
          v189 = BlueFin::GlStream::GetU16(&v172);
          v190 = BlueFin::GlStream::GetU16(&v172);
          v191 = BlueFin::GlStream::GetU32(&v172);
          v192 = BlueFin::GlStream::GetU32(&v172);
          v193 = BlueFin::GlStream::GetU32(&v172);
          v194 = BlueFin::GlStream::GetU16(&v172);
          v195 = BlueFin::GlStream::GetU16(&v172);
          v196 = BlueFin::GlStream::GetU32(&v172);
          v197 = BlueFin::GlStream::GetU16(&v172);
          S16 = BlueFin::GlStream::GetS16(&v172);
          if (!v175)
          {
            if (v176)
            {
              goto LABEL_305;
            }

            v81 = v172;
            v82 = v172 + 1;
            if (v172 + 1 > v174)
            {
              goto LABEL_262;
            }

            ++v172;
            v199 = *(v173 + v81);
            v83 = v81 + 2;
            if (v83 > v174)
            {
              goto LABEL_262;
            }

            v172 = v83;
            v200 = *(v173 + v82);
            v201 = BlueFin::GlStream::GetU16(&v172);
            if (!v175)
            {
              if (v176)
              {
                goto LABEL_305;
              }

              v84 = v172;
              v85 = v172 + 1;
              if (v172 + 1 > v174)
              {
                goto LABEL_262;
              }

              ++v172;
              v202 = *(v173 + v84);
              if (v84 + 2 > v174)
              {
                goto LABEL_262;
              }

              v172 = v84 + 2;
              v203 = *(v173 + v85);
              if (v84 + 3 > v174)
              {
                goto LABEL_262;
              }

              v172 = v84 + 3;
              v204 = *(v173 + (v84 + 2));
              if (v84 + 4 > v174)
              {
                goto LABEL_262;
              }

              v172 = v84 + 4;
              v205 = *(v173 + (v84 + 3));
              if (v84 + 5 > v174)
              {
                goto LABEL_262;
              }

              v172 = v84 + 5;
              v206 = *(v173 + (v84 + 4));
              if (v84 + 6 > v174)
              {
                goto LABEL_262;
              }

              v172 = v84 + 6;
              v207 = *(v173 + (v84 + 5));
              v86 = v84 + 7;
              if (v84 + 7 > v174)
              {
                goto LABEL_262;
              }

              v172 = v84 + 7;
              v208 = *(v173 + (v84 + 6));
              v87 = v84 + 8;
              if (v87 > v174)
              {
                goto LABEL_262;
              }

              v172 = v87;
              v209 = *(v173 + v86);
              v210 = BlueFin::GlStream::GetU32(&v172);
              v211 = BlueFin::GlStream::GetU32(&v172);
              v212 = BlueFin::GlStream::GetU32(&v172);
              v213 = BlueFin::GlStream::GetU32(&v172);
              v214 = BlueFin::GlStream::GetU32(&v172);
              v215 = BlueFin::GlStream::GetU32(&v172);
              v216 = BlueFin::GlStream::GetU32(&v172);
              LODWORD(v217) = BlueFin::GlStream::GetU32(&v172);
              DWORD1(v217) = BlueFin::GlStream::GetU32(&v172);
              DWORD2(v217) = BlueFin::GlStream::GetU32(&v172);
              HIDWORD(v217) = BlueFin::GlStream::GetU32(&v172);
              LODWORD(v218) = BlueFin::GlStream::GetU32(&v172);
              DWORD1(v218) = BlueFin::GlStream::GetU32(&v172);
              DWORD2(v218) = BlueFin::GlStream::GetU32(&v172);
              WORD6(v218) = BlueFin::GlStream::GetU16(&v172);
              HIWORD(v218) = BlueFin::GlStream::GetU16(&v172);
              LODWORD(v219) = BlueFin::GlStream::GetU32(&v172);
              WORD2(v219) = BlueFin::GlStream::GetU16(&v172);
              WORD3(v219) = BlueFin::GlStream::GetU16(&v172);
              DWORD2(v219) = BlueFin::GlStream::GetU32(&v172);
              if (!v175)
              {
                if (!v176)
                {
                  v88 = v172;
                  v89 = v172 + 1;
                  if (v172 + 1 <= v174)
                  {
                    ++v172;
                    BYTE12(v219) = *(v173 + v88);
                    if (v88 + 2 <= v174)
                    {
                      v172 = v88 + 2;
                      BYTE13(v219) = *(v173 + v89);
                      if (v88 + 3 <= v174)
                      {
                        v172 = v88 + 3;
                        BYTE14(v219) = *(v173 + (v88 + 2));
                        if (v88 + 4 <= v174)
                        {
                          v172 = v88 + 4;
                          HIBYTE(v219) = *(v173 + (v88 + 3));
                          v90 = v88 + 5;
                          if (v88 + 5 <= v174)
                          {
                            v172 = v88 + 5;
                            LOBYTE(v220) = *(v173 + (v88 + 4));
                            v91 = v88 + 6;
                            if (v91 <= v174)
                            {
                              v172 = v91;
                              BYTE1(v220) = *(v173 + v90);
                              WORD1(v220) = BlueFin::GlStream::GetS16(&v172);
                              DWORD1(v220) = BlueFin::GlStream::GetU32(&v172);
                              DWORD2(v220) = BlueFin::GlStream::GetU32(&v172);
                              HIDWORD(v220) = BlueFin::GlStream::GetU32(&v172);
                              if (BlueFin::GlStream::GetAvailableSize(&v172))
                              {
                                LODWORD(v221) = BlueFin::GlStream::GetU32(&v172);
                                DWORD1(v221) = BlueFin::GlStream::GetU32(&v172);
                                DWORD2(v221) = BlueFin::GlStream::GetU32(&v172);
                                HIDWORD(v221) = BlueFin::GlStream::GetU32(&v172);
                                LODWORD(v222) = BlueFin::GlStream::GetU32(&v172);
                                DWORD1(v222) = BlueFin::GlStream::GetU32(&v172);
                                DWORD2(v222) = BlueFin::GlStream::GetU32(&v172);
                                HIDWORD(v222) = BlueFin::GlStream::GetU32(&v172);
                                LODWORD(v223) = BlueFin::GlStream::GetU32(&v172);
                                DWORD1(v223) = BlueFin::GlStream::GetU32(&v172);
                                DWORD2(v223) = BlueFin::GlStream::GetU32(&v172);
                                HIDWORD(v223) = BlueFin::GlStream::GetU32(&v172);
                                LODWORD(v224) = BlueFin::GlStream::GetU32(&v172);
                                DWORD1(v224) = BlueFin::GlStream::GetU32(&v172);
                                DWORD2(v224) = BlueFin::GlStream::GetU32(&v172);
                                HIDWORD(v224) = BlueFin::GlStream::GetU32(&v172);
                                LODWORD(v225) = BlueFin::GlStream::GetU32(&v172);
                                DWORD1(v225) = BlueFin::GlStream::GetU32(&v172);
                                DWORD2(v225) = BlueFin::GlStream::GetU32(&v172);
                                HIDWORD(v225) = BlueFin::GlStream::GetU32(&v172);
                              }

                              if (!BlueFin::GlStream::GetAvailableSize(&v172))
                              {
                                result = (*(**(*(this + 1) + 17064) + 32))(*(*(this + 1) + 17064), &__dst);
                                goto LABEL_406;
                              }

                              v144 = "otStream.GetAvailableSize() == 0";
                              DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 2043, "Handle_Utils_HealthProfile", "otStream.GetAvailableSize() == 0");
                              v145 = "glmesrd_transaction_rpc_decoder_minnow.cpp";
                              v146 = 2043;
                              goto LABEL_263;
                            }
                          }
                        }
                      }
                    }
                  }

                  goto LABEL_262;
                }

                goto LABEL_305;
              }
            }
          }
        }
      }

      else if (a3 == 1)
      {
        if (!v175)
        {
          if (!v176)
          {
            v64 = v172;
            if (v172 + 1 <= v174)
            {
              ++v172;
              v65 = *(v173 + v64);
              Str = BlueFin::GlStream::GetStr(&v172, v65);
              if (v65 >= 0xFE)
              {
                v67 = 254;
              }

              else
              {
                v67 = v65;
              }

              LOBYTE(v68) = v67;
              memcpy(&__dst, Str, v67);
              if (v65 && *(&__dst + (v67 - 1)) != 10)
              {
                if (v65 + 1 < 0xFF)
                {
                  v68 = v65 + 1;
                }

                else
                {
                  v68 = 255;
                }

                *(&__dst + v67) = 10;
                v67 = v68;
              }

              *(&__dst + v67) = 0;
              v69 = BlueFin::GlStream::GetU32(&v172);
              v70 = BlueFin::GlStream::GetU32(&v172);
              v71 = BlueFin::GlStream::GetU32(&v172);
              v72 = BlueFin::GlStream::GetU32(&v172);
              v73 = BlueFin::GlStream::GetU32(&v172);
              v74 = BlueFin::GlStream::GetU32(&v172);
              v75 = BlueFin::GlStream::GetU32(&v172);
              v76 = BlueFin::GlStream::GetU32(&v172);
              if (!BlueFin::GlStream::GetAvailableSize(&v172))
              {
                result = (*(**(*(this + 1) + 17064) + 24))(*(*(this + 1) + 17064), v68, &__dst, v69, v70, v71, v72, v73, __PAIR64__(v75, v74), v76);
                goto LABEL_406;
              }

              v144 = "otStream.GetAvailableSize() == 0";
              DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 1789, "Handle_Utils_Printf", "otStream.GetAvailableSize() == 0");
              v145 = "glmesrd_transaction_rpc_decoder_minnow.cpp";
              v146 = 1789;
              goto LABEL_263;
            }

            goto LABEL_262;
          }

          goto LABEL_305;
        }
      }

      else
      {
        if (a3)
        {
          goto LABEL_406;
        }

        if (!v175)
        {
          if (!v176)
          {
            v33 = v172;
            if (v172 + 1 <= v174)
            {
              ++v172;
              v34 = *(v173 + v33);
              v35 = BlueFin::GlStream::GetStr(&v172, v34);
              if (v34 >= 0x7F)
              {
                v36 = 127;
              }

              else
              {
                v36 = v34;
              }

              memcpy(&__dst, v35, v36);
              *(&__dst + v36) = 0;
              v38 = __dst;
              if (v34 == 2 && !BYTE1(__dst))
              {
                p_dst = "ESW_GCM_FC";
                switch(__dst)
                {
                  case 65:
                    goto LABEL_404;
                  case 66:
                    p_dst = "ESW_HRM_FC";
                    goto LABEL_404;
                  case 67:
                    p_dst = "ESW_STM_FC";
                    goto LABEL_404;
                  case 68:
                    p_dst = "ESW_TIM_FC";
                    goto LABEL_404;
                  case 69:
                    p_dst = "ESW_CRPC_FC";
                    goto LABEL_404;
                  case 70:
                    p_dst = "ESW_ACQ_FC";
                    goto LABEL_404;
                  case 71:
                    p_dst = "ESW_CAL_FC";
                    goto LABEL_404;
                  case 72:
                    p_dst = "ESW_COP_FC";
                    goto LABEL_404;
                  case 73:
                    p_dst = "ESW_M1_COP_FC";
                    goto LABEL_404;
                  case 74:
                    p_dst = "ESW_TRK_FC";
                    goto LABEL_404;
                  case 75:
                    p_dst = "ESW_BTM_FC";
                    goto LABEL_404;
                  case 76:
                    p_dst = "ESW_JD_FC";
                    goto LABEL_404;
                  case 77:
                    p_dst = "ESW_RM_FC";
                    goto LABEL_404;
                  case 78:
                    p_dst = "ESW_SAT_FC";
                    goto LABEL_404;
                  case 79:
                    p_dst = "ESW_SM_FC";
                    goto LABEL_404;
                  case 80:
                    p_dst = "ESW_TM_FC";
                    goto LABEL_404;
                  case 81:
                    p_dst = "ESW_RPC_ENGINE_FC";
                    goto LABEL_404;
                  case 82:
                    p_dst = "ESW_TRANSPORT_FC";
                    goto LABEL_404;
                  case 83:
                    p_dst = "ESW_ISR_FC";
                    goto LABEL_404;
                  case 84:
                    p_dst = "ESW_ISR_T0PATCH_FC";
                    goto LABEL_404;
                  case 85:
                    p_dst = "ESW_PATCH_WRAPPER_FC";
                    goto LABEL_404;
                  case 86:
                    p_dst = "ESW_JD_PROCESS_IFC_PATCH_FC";
                    goto LABEL_404;
                  case 87:
                    p_dst = "GEO_CTRL_FC";
                    goto LABEL_404;
                  case 88:
                    p_dst = "GEO_TL_FC";
                    goto LABEL_404;
                  case 89:
                    p_dst = "GEO_SAT_FC";
                    goto LABEL_404;
                  case 90:
                    p_dst = "GEO_LOG_FC";
                    goto LABEL_404;
                  case 91:
                    p_dst = "ESW_GEO_FC";
                    goto LABEL_404;
                  case 93:
                    p_dst = "GEO_MATRIX_FC";
                    goto LABEL_404;
                  case 94:
                    p_dst = "GEO_RPC_ENGINE_FC";
                    goto LABEL_404;
                  case 95:
                    p_dst = "GEO_MEAS_FC";
                    goto LABEL_404;
                  case 96:
                    p_dst = "LM_PROCESSING_FC";
                    goto LABEL_404;
                  case 97:
                    p_dst = "LM_UTILS_FC";
                    goto LABEL_404;
                  case 98:
                    p_dst = "LM_MAIN_FC";
                    goto LABEL_404;
                  case 99:
                    p_dst = "GEO_STATES_FC";
                    goto LABEL_404;
                  case 100:
                    p_dst = "GEO_EVENTS_FC";
                    goto LABEL_404;
                  case 101:
                    p_dst = "GEO_PXY_FC";
                    goto LABEL_404;
                  case 102:
                    p_dst = "ESW_MAIN_FC";
                    goto LABEL_404;
                  case 103:
                    p_dst = "CARP_EXCEPTIONS_FC";
                    goto LABEL_404;
                  case 104:
                    p_dst = "ESW_LM_UTILS_FC";
                    goto LABEL_404;
                  case 105:
                    p_dst = "LM_ERRORS_FC";
                    goto LABEL_404;
                  case 106:
                    p_dst = "ESW_RESERVED_FC";
                    goto LABEL_404;
                  case 107:
                    p_dst = "GEO_MEM_BANK_FC";
                    goto LABEL_404;
                  case 108:
                    p_dst = "LM_ONLY_UTILS_FC";
                    goto LABEL_404;
                  case 109:
                    p_dst = "RM_ALLOCATE_BITVECTOR_048_PATCH_4753_FC";
                    goto LABEL_404;
                  case 110:
                    p_dst = "COP_ALIGN_COP_226_PATCH_FC";
                    goto LABEL_404;
                  case 111:
                    p_dst = "RM_BITVECTOR_MANAGE_115_PATCH_4753_FC";
                    goto LABEL_404;
                  case 112:
                    p_dst = "RM_GENERAL_PATCH_ENTRY_172_PATCH_FC";
                    goto LABEL_404;
                  case 113:
                    p_dst = "SM_DISPOSE_SAT_PATCH_4753_FC";
                    goto LABEL_404;
                  case 114:
                    p_dst = "TRK_IS_TRACK_READY_205_PATCH_FC";
                    goto LABEL_404;
                  case 116:
                    p_dst = "TRK_FSM_TRK_LOAD_193_PATCH_FC";
                    goto LABEL_404;
                  case 117:
                    p_dst = "TM_TOP_CHECK_SWAP_081_PATCH_FC";
                    goto LABEL_404;
                  case 118:
                    p_dst = "MAIN_PRE_LOOP_001_PATCH_FC";
                    goto LABEL_404;
                  case 119:
                    p_dst = "RM_GEOFENCE_MEMORY_MGR_182_PATCH_4753_FC";
                    goto LABEL_404;
                  case 120:
                    p_dst = "ESW_GCM_216_PATCH_4753_FC";
                    goto LABEL_404;
                  case 121:
                    p_dst = "ESW_SM_QUEUE_REPORT_ENTRY_074_FC";
                    goto LABEL_404;
                  case 123:
                    p_dst = "MAIN_COMMON_PATCH_FC";
                    goto LABEL_404;
                  case 124:
                    p_dst = "ASM_FC";
                    goto LABEL_404;
                  case 125:
                    p_dst = "ESW_SATRPT_FC";
                    goto LABEL_404;
                  case 126:
                    p_dst = "ESW_SAT_TRK_STATE_FC";
                    goto LABEL_404;
                  case 127:
                    p_dst = "ESW_COP_FIFO_FC";
                    goto LABEL_404;
                  case -128:
                    p_dst = "ESW_ACQ_COMMON_PATCH_FC";
                    goto LABEL_404;
                  case -127:
                    p_dst = "ESW_ACQ_GET_SNR_HW_PATCH_FC";
                    goto LABEL_404;
                  case -126:
                    p_dst = "ESW_COP_NORM_FC";
                    goto LABEL_404;
                  case -125:
                    p_dst = "ESW_POWER_CONTROL_FC";
                    goto LABEL_404;
                  case -124:
                    p_dst = "ESW_LM_INIT_FC";
                    goto LABEL_404;
                  case -123:
                    p_dst = "ESW_RADIO_INI_FC";
                    goto LABEL_404;
                  case -122:
                    p_dst = "CW_TEST_HW_PATCHES_FC";
                    goto LABEL_404;
                  case -121:
                    p_dst = "ESW_TIM_PATCHES_FC";
                    goto LABEL_404;
                  case -120:
                    p_dst = "ESW_TM_PATCHES_FC";
                    goto LABEL_404;
                  case -119:
                    p_dst = "ESW_COP_PATCHES_FC";
                    goto LABEL_404;
                  case -118:
                    p_dst = "ESW_TRK_PATCHES_FC";
                    goto LABEL_404;
                  case -117:
                    p_dst = "ESW_TRK_UTILS_PATCHES_FC";
                    goto LABEL_404;
                  case -116:
                    p_dst = "ESW_CRPC_PATCHES_FC";
                    goto LABEL_404;
                  case -115:
                    p_dst = "ESW_RM_PATCHES_FC";
                    goto LABEL_404;
                  case -114:
                    p_dst = "ESW_JD_PATCHES_FC";
                    goto LABEL_404;
                  case -113:
                    p_dst = "ESW_COP_FIFO_PATCHES_FC";
                    goto LABEL_404;
                  case -112:
                    p_dst = "ESW_GCM_PATCHES_FC";
                    goto LABEL_404;
                  case -111:
                    p_dst = "ESW_PWR_CONTROL_PATCHES_FC";
                    goto LABEL_404;
                  case -110:
                    p_dst = "ESW_RADIO_INIT_PATCHES_FC";
                    goto LABEL_404;
                  case -109:
                    p_dst = "ESW_STM_PATCHES_FC";
                    goto LABEL_404;
                  case -107:
                    p_dst = "ESW_TRK_SCAN_FC";
                    goto LABEL_404;
                  case -106:
                    p_dst = "ESW_RM_SEARCH_FC";
                    goto LABEL_404;
                  case -105:
                    p_dst = "ESW_RM_TRACK_FC";
                    goto LABEL_404;
                  case -104:
                    p_dst = "ESW_HOST_COMM_FC";
                    goto LABEL_404;
                  case -103:
                    p_dst = "ESW_PMU_CONTROL_FC";
                    goto LABEL_404;
                  case -102:
                    p_dst = "ESW_RM_TRACK_PATCHES_FC";
                    goto LABEL_404;
                  case -101:
                    p_dst = "ESW_SAT_PATCHES_FC";
                    goto LABEL_404;
                  case -100:
                    p_dst = "ESW_SAT_TRK_STATE_PATCHES_FC";
                    goto LABEL_404;
                  case -99:
                    p_dst = "ESW_SM_PATCHES_FC";
                    goto LABEL_404;
                  case -98:
                    p_dst = "ESW_CAL_PATCHES_FC";
                    goto LABEL_404;
                  case -97:
                    p_dst = "ESW_RM_SEARCH_PATCHES_FC";
                    goto LABEL_404;
                  case -96:
                    p_dst = "ESW_LM_INIT_PATCHES_FC";
                    goto LABEL_404;
                  case -95:
                    p_dst = "ESW_ACQ_PATCHES_FC";
                    goto LABEL_404;
                  default:
                    BlueFin::GlFormat::glsnprintf(&__dst, 0x80, "ESW_FILE=%d", v37, *v35);
                    LOBYTE(v36) = strlen(&__dst) + 1;
                    v38 = __dst;
                    break;
                }
              }

              p_dst = &__dst;
              if (v36 >= 3u && v38 == 252)
              {
                v144 = "0";
                DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 1925, "Handle_Utils_Assert", "0");
                v145 = "glmesrd_transaction_rpc_decoder_minnow.cpp";
                v146 = 1925;
              }

              else
              {
LABEL_404:
                v165 = BlueFin::GlStream::GetU16(&v172);
                v166 = BlueFin::GlStream::GetU32(&v172);
                v167 = BlueFin::GlStream::GetU32(&v172);
                v168 = BlueFin::GlStream::GetU32(&v172);
                GlCustomLog(11, "ASIC assertion at %s:%d args(%u %u %u)\n", p_dst, v165, v166, v167, v168);
                DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 1936, "Handle_Utils_Assert", "AsicCrash");
                CrashData();
                if (!BlueFin::GlStream::GetAvailableSize(&v172))
                {
                  result = (*(**(*(this + 1) + 17064) + 16))(*(*(this + 1) + 17064), v36, p_dst, v165, v166, v167, v168);
                  goto LABEL_406;
                }

                v144 = "otStream.GetAvailableSize() == 0";
                DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 1939, "Handle_Utils_Assert", "otStream.GetAvailableSize() == 0");
                v145 = "glmesrd_transaction_rpc_decoder_minnow.cpp";
                v146 = 1939;
              }

              goto LABEL_263;
            }

            goto LABEL_262;
          }

          goto LABEL_305;
        }
      }
    }

    else
    {
      if (a2 == 20)
      {
        if (!*(*(this + 1) + 17056))
        {
          goto LABEL_406;
        }

        if (a3 > 3)
        {
          if (a3 > 6)
          {
            if (a3 == 7)
            {
              v121 = BlueFin::GlStream::GetU32(&v172);
              if (((*(**(*(this + 1) + 17032) + 24))(*(*(this + 1) + 17032)) & 1) != 0 || (*(**(*(this + 1) + 17032) + 40))(*(*(this + 1) + 17032)))
              {
                for (i = 0; i != 76; i += 4)
                {
                  *(&__dst + i) = BlueFin::GlStream::GetU32(&v172);
                }

                if (!BlueFin::GlStream::GetAvailableSize(&v172))
                {
                  result = (*(**(*(this + 1) + 17056) + 88))(*(*(this + 1) + 17056), v121, &__dst);
                  goto LABEL_406;
                }

                v144 = "otStream.GetAvailableSize() == 0";
                DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 407, "ParseMethod", "otStream.GetAvailableSize() == 0");
                v145 = "glmesrd_transaction_rpc_decoder_minnow.cpp";
                v146 = 407;
              }

              else
              {
                v161 = BlueFin::GlStream::GetU32(&v172);
                for (j = 0; j != 20; j += 4)
                {
                  *(&__dst + j) = BlueFin::GlStream::GetU32(&v172);
                }

                if ((*(**(*(this + 1) + 17032) + 824))(*(*(this + 1) + 17032)) <= 0x7F)
                {
                  v163 = 0;
                }

                else
                {
                  v163 = BlueFin::GlStream::GetU16(&v172);
                }

                if (!BlueFin::GlStream::GetAvailableSize(&v172))
                {
                  result = (*(**(*(this + 1) + 17056) + 80))(*(*(this + 1) + 17056), v121, v161, &__dst, v163);
                  goto LABEL_406;
                }

                v144 = "otStream.GetAvailableSize() == 0";
                DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 423, "ParseMethod", "otStream.GetAvailableSize() == 0");
                v145 = "glmesrd_transaction_rpc_decoder_minnow.cpp";
                v146 = 423;
              }
            }

            else
            {
              if (a3 != 8)
              {
                goto LABEL_406;
              }

              v103 = BlueFin::GlStream::GetU32(&v172);
              if (!BlueFin::GlStream::GetAvailableSize(&v172))
              {
                result = (*(**(*(this + 1) + 17056) + 24))(*(*(this + 1) + 17056), v103);
                goto LABEL_406;
              }

              v144 = "otStream.GetAvailableSize() == 0";
              DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 390, "ParseMethod", "otStream.GetAvailableSize() == 0");
              v145 = "glmesrd_transaction_rpc_decoder_minnow.cpp";
              v146 = 390;
            }
          }

          else if (a3 == 4)
          {
            v120 = BlueFin::GlStream::GetU32(&v172);
            if (!BlueFin::GlStream::GetAvailableSize(&v172))
            {
              result = (*(**(*(this + 1) + 17056) + 56))(*(*(this + 1) + 17056), v120);
              goto LABEL_406;
            }

            v144 = "otStream.GetAvailableSize() == 0";
            DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 497, "ParseMethod", "otStream.GetAvailableSize() == 0");
            v145 = "glmesrd_transaction_rpc_decoder_minnow.cpp";
            v146 = 497;
          }

          else
          {
            if (a3 != 5)
            {
              goto LABEL_406;
            }

            LOWORD(__dst) = BlueFin::GlStream::GetU16(&v172);
            HIDWORD(__dst) = BlueFin::GlStream::GetU32(&v172);
            LOBYTE(U32) = BlueFin::GlStream::GetU08(&v172);
            BYTE1(U32) = BlueFin::GlStream::GetU08(&v172);
            HIWORD(U32) = BlueFin::GlStream::GetU16(&v172);
            LOWORD(v179) = BlueFin::GlStream::GetU16(&v172);
            if (!BlueFin::GlStream::GetAvailableSize(&v172))
            {
              result = (*(**(*(this + 1) + 17056) + 72))(*(*(this + 1) + 17056), &__dst);
              goto LABEL_406;
            }

            v144 = "otStream.GetAvailableSize() == 0";
            DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 488, "ParseMethod", "otStream.GetAvailableSize() == 0");
            v145 = "glmesrd_transaction_rpc_decoder_minnow.cpp";
            v146 = 488;
          }
        }

        else if (a3 > 1)
        {
          if (a3 == 2)
          {
            HIDWORD(__dst) = BlueFin::GlStream::GetU32(&v172);
            LOWORD(U32) = BlueFin::GlStream::GetU16(&v172);
            BlueFin::GlStream::GetU08(&v172);
            BlueFin::GlStream::GetU08(&v172);
            v179 = BlueFin::GlStream::GetU32(&v172);
            LOWORD(v180) = BlueFin::GlStream::GetU16(&v172);
            BlueFin::GlStream::GetU08(&v172);
            BlueFin::GlStream::GetU08(&v172);
            v181 = BlueFin::GlStream::GetU32(&v172);
            U16 = BlueFin::GlStream::GetU16(&v172);
            BlueFin::GlStream::GetU08(&v172);
            BlueFin::GlStream::GetU08(&v172);
            v184 = BlueFin::GlStream::GetU32(&v172);
            v185 = BlueFin::GlStream::GetU16(&v172);
            BlueFin::GlStream::GetU08(&v172);
            BlueFin::GlStream::GetU08(&v172);
            v188 = BlueFin::GlStream::GetU32(&v172);
            LOBYTE(__dst) = BlueFin::GlStream::GetU08(&v172);
            LOBYTE(v189) = BlueFin::GlStream::GetU08(&v172);
            BlueFin::GlStream::GetU08(&v172);
            BlueFin::GlStream::GetU08(&v172);
            if (!BlueFin::GlStream::GetAvailableSize(&v172))
            {
              result = (*(**(*(this + 1) + 17056) + 40))(*(*(this + 1) + 17056), &__dst);
              goto LABEL_406;
            }

            v144 = "otStream.GetAvailableSize() == 0";
            DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 529, "ParseMethod", "otStream.GetAvailableSize() == 0");
            v145 = "glmesrd_transaction_rpc_decoder_minnow.cpp";
            v146 = 529;
          }

          else
          {
            U08 = BlueFin::GlStream::GetU08(&v172);
            v101 = BlueFin::GlStream::GetU32(&v172);
            v102 = BlueFin::GlStream::GetU32(&v172);
            if (!BlueFin::GlStream::GetAvailableSize(&v172))
            {
              result = (*(**(*(this + 1) + 17056) + 48))(*(*(this + 1) + 17056), U08, v101, v102);
              goto LABEL_406;
            }

            v144 = "otStream.GetAvailableSize() == 0";
            DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 461, "ParseMethod", "otStream.GetAvailableSize() == 0");
            v145 = "glmesrd_transaction_rpc_decoder_minnow.cpp";
            v146 = 461;
          }
        }

        else if (a3)
        {
          if (a3 != 1)
          {
            goto LABEL_406;
          }

          v40 = BlueFin::GlStream::GetU08(&v172);
          v41 = BlueFin::GlStream::GetU32(&v172);
          v42 = BlueFin::GlStream::GetU32(&v172);
          v43 = BlueFin::GlStream::GetU32(&v172);
          v44 = BlueFin::GlStream::GetU32(&v172);
          v45 = BlueFin::GlStream::GetU16(&v172);
          if ((v40 - 5) > 2)
          {
            v48 = 0;
            v47 = 0;
            v46 = 0;
          }

          else
          {
            v46 = BlueFin::GlStream::GetU32(&v172);
            v47 = BlueFin::GlStream::GetU32(&v172);
            v48 = BlueFin::GlStream::GetU32(&v172);
          }

          if (!BlueFin::GlStream::GetAvailableSize(&v172))
          {
            result = (*(**(*(this + 1) + 17056) + 32))(*(*(this + 1) + 17056), v40, v41, v42, v43, v44, v45, v46, __PAIR64__(v48, v47));
            goto LABEL_406;
          }

          v144 = "otStream.GetAvailableSize() == 0";
          DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 448, "ParseMethod", "otStream.GetAvailableSize() == 0");
          v145 = "glmesrd_transaction_rpc_decoder_minnow.cpp";
          v146 = 448;
        }

        else
        {
          v113 = BlueFin::GlStream::GetU32(&v172);
          v114 = BlueFin::GlStream::GetU32(&v172);
          v115 = BlueFin::GlStream::GetU32(&v172);
          v116 = BlueFin::GlStream::GetU16(&v172);
          v117 = BlueFin::GlStream::GetU16(&v172);
          v118 = BlueFin::GlStream::GetU08(&v172);
          v119 = BlueFin::GlStream::GetU08(&v172);
          if (!BlueFin::GlStream::GetAvailableSize(&v172))
          {
            result = (*(**(*(this + 1) + 17056) + 16))(*(*(this + 1) + 17056), v113, v114, v115, v116, v117, v118, v119);
            goto LABEL_406;
          }

          v144 = "otStream.GetAvailableSize() == 0";
          DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 379, "ParseMethod", "otStream.GetAvailableSize() == 0");
          v145 = "glmesrd_transaction_rpc_decoder_minnow.cpp";
          v146 = 379;
        }

        goto LABEL_263;
      }

      if (a2 != 21 || !*(*(this + 1) + 17080))
      {
        goto LABEL_406;
      }

      if (a3 == 2)
      {
        WORD2(__dst) = BlueFin::GlStream::GetU16(&v172);
        if (!v175)
        {
          if (!v176)
          {
            v92 = v172;
            if (v172 + 1 <= v174)
            {
              ++v172;
              BYTE2(__dst) = *(v173 + v92);
              v93 = v92 + 2;
              if (v93 <= v174)
              {
                v94 = 0;
                v172 = v93;
                do
                {
                  *(&__dst + v94 + 8) = BlueFin::GlStream::GetU16(&v172);
                  if (v175)
                  {
                    goto LABEL_304;
                  }

                  if (v176)
                  {
                    goto LABEL_305;
                  }

                  v95 = v172;
                  v96 = v174;
                  if (v172 + 1 > v174)
                  {
                    goto LABEL_262;
                  }

                  v97 = v173;
                  ++v172;
                  *(&__dst + v94 + 6) = *(v173 + v95);
                  if (v95 + 2 > v96)
                  {
                    goto LABEL_262;
                  }

                  v172 = v95 + 2;
                  v94 += 4;
                }

                while (v94 != 16);
                if (v95 + 3 <= v96)
                {
                  v172 = v95 + 3;
                  LOBYTE(__dst) = *(v97 + (v95 + 2));
                  if (v95 + 4 <= v96)
                  {
                    v172 = v95 + 4;
                    BYTE1(__dst) = *(v97 + (v95 + 3));
                    if (v95 + 5 <= v96)
                    {
                      v172 = v95 + 5;
                      BYTE2(v181) = *(v97 + (v95 + 4));
                      if (v95 + 6 <= v96)
                      {
                        v172 = v95 + 6;
                        HIBYTE(v181) = *(v97 + (v95 + 5));
                        v98 = v95 + 7;
                        if (v95 + 7 <= v96)
                        {
                          v172 = v95 + 7;
                          LOBYTE(U16) = *(v97 + (v95 + 6));
                          v99 = v95 + 8;
                          if (v99 <= v96)
                          {
                            v172 = v99;
                            HIBYTE(U16) = *(v97 + v98);
                            BlueFin::GlStream::GetU16(&v172);
                            if (!BlueFin::GlStream::GetAvailableSize(&v172))
                            {
                              result = (*(**(*(this + 1) + 17080) + 32))(*(*(this + 1) + 17080), &__dst);
                              goto LABEL_406;
                            }

                            v144 = "otStream.GetAvailableSize() == 0";
                            DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 814, "ParseMethod", "otStream.GetAvailableSize() == 0");
                            v145 = "glmesrd_transaction_rpc_decoder_minnow.cpp";
                            v146 = 814;
                            goto LABEL_263;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

            goto LABEL_262;
          }

          goto LABEL_305;
        }
      }

      else
      {
        if (a3 == 1)
        {
          LODWORD(__dst) = BlueFin::GlStream::GetU32(&v172);
          HIDWORD(__dst) = BlueFin::GlStream::GetU32(&v172);
          if (!BlueFin::GlStream::GetAvailableSize(&v172))
          {
            result = (*(**(*(this + 1) + 17080) + 24))(*(*(this + 1) + 17080), &__dst);
            goto LABEL_406;
          }

          v144 = "otStream.GetAvailableSize() == 0";
          DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 782, "ParseMethod", "otStream.GetAvailableSize() == 0");
          v145 = "glmesrd_transaction_rpc_decoder_minnow.cpp";
          v146 = 782;
          goto LABEL_263;
        }

        if (a3)
        {
          goto LABEL_406;
        }

        WORD1(__dst) = BlueFin::GlStream::GetU16(&v172);
        if (!v175)
        {
          if (!v176)
          {
            v26 = v172;
            v27 = v172 + 1;
            if (v172 + 1 <= v174)
            {
              ++v172;
              LOBYTE(__dst) = *(v173 + v26);
              if (v26 + 2 <= v174)
              {
                v172 = v26 + 2;
                BYTE4(__dst) = *(v173 + v27);
                if (v26 + 3 <= v174)
                {
                  v172 = v26 + 3;
                  BYTE5(__dst) = *(v173 + (v26 + 2));
                  if (v26 + 4 <= v174)
                  {
                    v172 = v26 + 4;
                    BYTE6(__dst) = *(v173 + (v26 + 3));
                    if (v26 + 5 <= v174)
                    {
                      v172 = v26 + 5;
                      HIBYTE(__dst) = *(v173 + (v26 + 4));
                      if (v26 + 6 <= v174)
                      {
                        v172 = v26 + 6;
                        LOBYTE(U32) = *(v173 + (v26 + 5));
                        if (v26 + 7 <= v174)
                        {
                          v172 = v26 + 7;
                          BYTE1(U32) = *(v173 + (v26 + 6));
                          if (v26 + 8 <= v174)
                          {
                            v172 = v26 + 8;
                            BYTE2(U32) = *(v173 + (v26 + 7));
                            if (v26 + 9 <= v174)
                            {
                              v172 = v26 + 9;
                              HIBYTE(U32) = *(v173 + (v26 + 8));
                              if (v26 + 10 <= v174)
                              {
                                v172 = v26 + 10;
                                LOBYTE(v179) = *(v173 + (v26 + 9));
                                v28 = v26 + 11;
                                if (v26 + 11 <= v174)
                                {
                                  v172 = v26 + 11;
                                  BYTE1(v179) = *(v173 + (v26 + 10));
                                  v29 = v26 + 12;
                                  if (v29 <= v174)
                                  {
                                    v172 = v29;
                                    BYTE2(v179) = *(v173 + v28);
                                    if (!BlueFin::GlStream::GetAvailableSize(&v172))
                                    {
                                      result = (*(**(*(this + 1) + 17080) + 16))(*(*(this + 1) + 17080), &__dst);
                                      goto LABEL_406;
                                    }

                                    v144 = "otStream.GetAvailableSize() == 0";
                                    DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 771, "ParseMethod", "otStream.GetAvailableSize() == 0");
                                    v145 = "glmesrd_transaction_rpc_decoder_minnow.cpp";
                                    v146 = 771;
                                    goto LABEL_263;
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

LABEL_262:
            v144 = "m_uiOffset + 1 <= m_uiMaxOffset";
            DeviceFaultNotify("glutl_stream.h", 80, "GetU08", "m_uiOffset + 1 <= m_uiMaxOffset");
            v145 = "glutl_stream.h";
            v146 = 80;
            goto LABEL_263;
          }

LABEL_305:
          v144 = "m_uiBitsRemainingInWord == 0";
          DeviceFaultNotify("glutl_stream.h", 78, "GetU08", "m_uiBitsRemainingInWord == 0");
          v145 = "glutl_stream.h";
          v146 = 78;
          goto LABEL_263;
        }
      }
    }

LABEL_304:
    v144 = "m_uiBitOffset == 0";
    DeviceFaultNotify("glutl_stream.h", 77, "GetU08", "m_uiBitOffset == 0");
    v145 = "glutl_stream.h";
    v146 = 77;
    goto LABEL_263;
  }

  if (a2 == 16)
  {
    result = *(*(this + 1) + 17040);
    if (result)
    {
      if (a3 <= 3)
      {
        if (a3 > 1)
        {
          if (a3 == 2)
          {
            v123 = BlueFin::GlStream::GetU08(&v172);
            v124 = BlueFin::GlStream::GetU08(&v172);
            v125 = BlueFin::GlStream::GetU08(&v172);
            v126 = BlueFin::GlStream::GetU32(&v172);
            if (BlueFin::GlStream::GetAvailableSize(&v172))
            {
              v144 = "otStream.GetAvailableSize() == 0";
              DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 100, "ParseMethod", "otStream.GetAvailableSize() == 0");
              v145 = "glmesrd_transaction_rpc_decoder_minnow.cpp";
              v146 = 100;
              goto LABEL_263;
            }

            (*(**(*(this + 1) + 17040) + 32))(*(*(this + 1) + 17040), v123, v124, v125, v126, 0, 0, 0, 0);
            result = *(*(this + 1) + 17048);
            if (result)
            {
              result = (*(*result + 32))(result, v123, v124, v125, v126, 0, 0, 0, 0);
            }
          }

          else
          {
            v104 = BlueFin::GlStream::GetU08(&v172);
            v105 = BlueFin::GlStream::GetU08(&v172);
            if (v105 > 8)
            {
              v144 = "size <= _DIM(aulNvRam)";
              DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 114, "ParseMethod", "size <= _DIM(aulNvRam)");
              v145 = "glmesrd_transaction_rpc_decoder_minnow.cpp";
              v146 = 114;
              goto LABEL_263;
            }

            v106 = v105;
            if (v105)
            {
              v107 = v105;
              v108 = &__dst;
              do
              {
                *v108 = BlueFin::GlStream::GetU32(&v172);
                v108 = (v108 + 4);
                --v107;
              }

              while (v107);
            }

            if (BlueFin::GlStream::GetAvailableSize(&v172))
            {
              v144 = "otStream.GetAvailableSize() == 0";
              DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 121, "ParseMethod", "otStream.GetAvailableSize() == 0");
              v145 = "glmesrd_transaction_rpc_decoder_minnow.cpp";
              v146 = 121;
              goto LABEL_263;
            }

            (*(**(*(this + 1) + 17040) + 40))(*(*(this + 1) + 17040), v104, v106, &__dst);
            result = *(*(this + 1) + 17048);
            if (result)
            {
              result = (*(*result + 40))(result, v104, v106, &__dst);
            }
          }
        }

        else if (a3)
        {
          if (a3 == 1)
          {
            v49 = BlueFin::GlStream::GetU08(&v172);
            v50 = BlueFin::GlStream::GetU32(&v172);
            v51 = BlueFin::GlStream::GetU32(&v172);
            if (BlueFin::GlStream::GetAvailableSize(&v172))
            {
              v144 = "otStream.GetAvailableSize() == 0";
              DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 81, "ParseMethod", "otStream.GetAvailableSize() == 0");
              v145 = "glmesrd_transaction_rpc_decoder_minnow.cpp";
              v146 = 81;
              goto LABEL_263;
            }

            (*(**(*(this + 1) + 17040) + 24))(*(*(this + 1) + 17040), v49, v50, v51);
            result = *(*(this + 1) + 17048);
            if (result)
            {
              result = (*(*result + 24))(result, v49, v50, v51);
            }
          }
        }

        else
        {
          if (*a4 + 1 != a5)
          {
            v144 = "usMethodLen == GlIntU16(pucMethodData[0]+1)";
            DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 67, "ParseMethod", "usMethodLen == GlIntU16(pucMethodData[0]+1)");
            v145 = "glmesrd_transaction_rpc_decoder_minnow.cpp";
            v146 = 67;
            goto LABEL_263;
          }

          (*(*result + 16))(result);
          result = *(*(this + 1) + 17048);
          if (result)
          {
            result = (*(*result + 16))(result, *a4, a4 + 1);
          }
        }
      }

      else if (a3 <= 85)
      {
        if (a3 == 4)
        {
          v136 = BlueFin::GlStream::GetU08(&v172);
          v137 = BlueFin::GlStream::GetU08(&v172);
          if (BlueFin::GlStream::GetAvailableSize(&v172))
          {
            v144 = "otStream.GetAvailableSize() == 0";
            DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 134, "ParseMethod", "otStream.GetAvailableSize() == 0");
            v145 = "glmesrd_transaction_rpc_decoder_minnow.cpp";
            v146 = 134;
            goto LABEL_263;
          }

          (*(**(*(this + 1) + 17040) + 48))(*(*(this + 1) + 17040), v136, v137);
          result = *(*(this + 1) + 17048);
          if (result)
          {
            result = (*(*result + 48))(result, v136, v137);
          }
        }

        else if (a3 == 5)
        {
          v109 = BlueFin::GlStream::GetU16(&v172);
          v110 = BlueFin::GlStream::GetU16(&v172);
          v111 = BlueFin::GlStream::GetU08(&v172);
          if (v111 + 5 != a5)
          {
            v144 = "usMethodLen == GlIntU16(data_size+5)";
            DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 181, "ParseMethod", "usMethodLen == GlIntU16(data_size+5)");
            v145 = "glmesrd_transaction_rpc_decoder_minnow.cpp";
            v146 = 181;
            goto LABEL_263;
          }

          v112 = v111;
          (*(**(*(this + 1) + 17040) + 56))(*(*(this + 1) + 17040), v109, v110, v111, a4 + 5);
          result = *(*(this + 1) + 17048);
          if (result)
          {
            result = (*(*result + 56))(result, v109, v110, v112, a4 + 5);
          }
        }
      }

      else
      {
        switch(a3)
        {
          case 'V':
            v170 = BlueFin::GlStream::GetU08(&v172);
            v127 = BlueFin::GlStream::GetU08(&v172);
            v128 = BlueFin::GlStream::GetU32(&v172);
            v129 = BlueFin::GlStream::GetU32(&v172);
            v130 = BlueFin::GlStream::GetU08(&v172);
            if ((v130 - 21) < 0xECu)
            {
              v144 = "agc_values > 0 && agc_values <= 20";
              DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 202, "ParseMethod", "agc_values > 0 && agc_values <= 20");
              v145 = "glmesrd_transaction_rpc_decoder_minnow.cpp";
              v146 = 202;
              goto LABEL_263;
            }

            v131 = v130;
            v132 = 0;
            v133 = v130;
            do
            {
              if (v175)
              {
                goto LABEL_304;
              }

              if (v176)
              {
                goto LABEL_305;
              }

              v134 = v172;
              if (v172 + 1 > v174)
              {
                goto LABEL_262;
              }

              ++v172;
              *(v226 + v132) = *(v173 + v134);
              *(&__dst + v132++) = BlueFin::GlStream::GetU16(&v172);
            }

            while (v133 != v132);
            v135 = BlueFin::GlStream::GetU32(&v172);
            if (BlueFin::GlStream::GetAvailableSize(&v172))
            {
              v144 = "otStream.GetAvailableSize() == 0";
              DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 212, "ParseMethod", "otStream.GetAvailableSize() == 0");
              v145 = "glmesrd_transaction_rpc_decoder_minnow.cpp";
              v146 = 212;
              goto LABEL_263;
            }

            (*(**(*(this + 1) + 17040) + 64))(*(*(this + 1) + 17040), v170, v127, v128, v129, v131, v226, &__dst, v135);
            result = *(*(this + 1) + 17048);
            if (result)
            {
              result = (*(*result + 64))(result, v170, v127, v128, v129, v131, v226, &__dst, v135);
            }

            break;
          case 'W':
            BlueFin::GlStream::GetU08(&v172);
            BlueFin::GlStream::GetU08(&v172);
            v138 = BlueFin::GlStream::GetU08(&v172);
            v139 = BlueFin::GlStream::GetU08(&v172);
            if (4 * v138 + 4 != a5)
            {
              v144 = "usMethodLen == GlIntU16(regsnum * sizeof(GlIntU32) + 4)";
              DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 156, "ParseMethod", "usMethodLen == GlIntU16(regsnum * sizeof(GlIntU32) + 4)");
              v145 = "glmesrd_transaction_rpc_decoder_minnow.cpp";
              v146 = 156;
              goto LABEL_263;
            }

            LODWORD(__dst) = v139 | (v138 << 8);
            if (v138)
            {
              v140 = v138;
              v141 = &__dst + 1;
              do
              {
                *v141++ = BlueFin::GlStream::GetU32(&v172);
                --v140;
              }

              while (v140);
            }

            v142 = v138 + 1;
            (*(**(*(this + 1) + 17040) + 80))(*(*(this + 1) + 17040), &__dst, v142);
            result = *(*(this + 1) + 17048);
            if (result)
            {
              result = (*(*result + 80))(result, &__dst, v142);
            }

            break;
          case 'X':
            v30 = BlueFin::GlStream::GetU16(&v172);
            v31 = BlueFin::GlStream::GetU16(&v172);
            if (a5 != (v31 + 4))
            {
              v144 = "usMethodLen == GlIntU16(data_size+4)";
              DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 226, "ParseMethod", "usMethodLen == GlIntU16(data_size+4)");
              v145 = "glmesrd_transaction_rpc_decoder_minnow.cpp";
              v146 = 226;
              goto LABEL_263;
            }

            v32 = v31;
            (*(**(*(this + 1) + 17040) + 72))(*(*(this + 1) + 17040), v30, v31, a4 + 4);
            result = *(*(this + 1) + 17048);
            if (result)
            {
              result = (*(*result + 72))(result, v30, v32, a4 + 4);
            }

            break;
        }
      }
    }

    if (*(*(this + 1) + 17104))
    {
      if (a3 > 9)
      {
        switch(a3)
        {
          case 10:
            result = BlueFin::MinnowGllRpcParserImp::Handle_GeoRpt_DebugMsg(this, &v172);
            break;
          case 11:
            v143 = BlueFin::GlStream::GetU08(&v172);
            result = (*(**(*(this + 1) + 17104) + 56))(*(*(this + 1) + 17104), v143);
            break;
          case 12:
            result = BlueFin::MinnowGllRpcParserImp::Handle_GeoRpt_RawRpcs(this, &v172);
            break;
        }
      }

      else
      {
        switch(a3)
        {
          case 6:
            result = BlueFin::MinnowGllRpcParserImp::Handle_GeoRpt_Fixes(this, &v172);
            break;
          case 7:
            result = BlueFin::MinnowGllRpcParserImp::Handle_GeoRpt_InternalState(this, &v172);
            break;
          case 9:
            result = BlueFin::MinnowGllRpcParserImp::Handle_GeoRpt_AreaTriggered(this, &v172);
            break;
        }
      }
    }
  }

  else if (a2 == 17)
  {
    if (!*(*(this + 1) + 17072))
    {
      goto LABEL_406;
    }

    if (a3 <= 4)
    {
      if (a3 > 1)
      {
        if (a3 == 2)
        {
          result = BlueFin::MinnowGllRpcParserImp::Handle_SatRpt_TrkMsmt(this, &v172);
        }

        else if (a3 == 3)
        {
          result = BlueFin::MinnowGllRpcParserImp::Handle_SatRpt_TrkBits(this, &v172);
        }

        else
        {
          result = BlueFin::MinnowGllRpcParserImp::Handle_SatRpt_EramDump(this, &v172);
        }

        goto LABEL_406;
      }

      if (!a3)
      {
        v147 = BlueFin::GlStream::GetU08(&v172);
        LODWORD(__dst) = BlueFin::GlStream::GetU32(&v172);
        HIDWORD(__dst) = BlueFin::GlStream::GetU32(&v172);
        U32 = BlueFin::GlStream::GetU32(&v172);
        v179 = BlueFin::GlStream::GetU32(&v172);
        if (!BlueFin::GlStream::GetAvailableSize(&v172))
        {
          result = (*(**(*(this + 1) + 17072) + 16))(*(*(this + 1) + 17072), v147, &__dst);
          goto LABEL_406;
        }

        v144 = "otStream.GetAvailableSize() == 0";
        DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 564, "ParseMethod", "otStream.GetAvailableSize() == 0");
        v145 = "glmesrd_transaction_rpc_decoder_minnow.cpp";
        v146 = 564;
        goto LABEL_263;
      }

      if (a3 == 1)
      {
        result = BlueFin::MinnowGllRpcParserImp::Handle_SatRpt_Search(this, &v172);
      }
    }

    else if (a3 > 8)
    {
      switch(a3)
      {
        case 9:
          result = BlueFin::MinnowGllRpcParserImp::Handle_SatRpt_TrkGridData(this, &v172);
          break;
        case 10:
          result = BlueFin::MinnowGllRpcParserImp::Handle_SatRpt_TrkGridMsmt(this, &v172);
          break;
        case 11:
          result = BlueFin::MinnowGllRpcParserImp::Handle_SatRpt_TrkGridTapCfg(this, &v172);
          break;
      }
    }

    else
    {
      switch(a3)
      {
        case 5:
          result = BlueFin::MinnowGllRpcParserImp::Handle_SatRpt_AcquisitionWindow(this, &v172);
          break;
        case 6:
          v148 = BlueFin::GlStream::GetU08(&v172);
          v149 = BlueFin::GlStream::GetU08(&v172);
          if (v149)
          {
            v226[0] = BlueFin::GlStream::GetU16(&v172);
            v150 = BlueFin::GlStream::GetU16(&v172);
          }

          else
          {
            v150 = 0;
            v226[0] = 0;
          }

          v226[1] = v150;
          v226[2] = BlueFin::GlStream::GetU16(&v172);
          v226[3] = BlueFin::GlStream::GetU16(&v172);
          if ((v149 & 2) != 0)
          {
            v171[0] = BlueFin::GlStream::GetU08(&v172);
            v151 = BlueFin::GlStream::GetU08(&v172);
          }

          else
          {
            v151 = 0;
            v171[0] = 0;
          }

          v171[1] = v151;
          if ((v149 & 4) != 0)
          {
            v179 = BlueFin::GlStream::GetU32(&v172);
            v152 = BlueFin::GlStream::GetU08(&v172);
            LODWORD(__dst) = v152;
            HIDWORD(__dst) = BlueFin::GlStream::GetU08(&v172);
            if (v152 == 4)
            {
              LOBYTE(U32) = BlueFin::GlStream::GetU08(&v172);
            }
          }

          else
          {
            v179 = 0;
            __dst = 0;
            LOBYTE(U32) = 0;
          }

          if ((v149 & 8) != 0)
          {
            v153 = BlueFin::GlStream::GetU32(&v172);
            v155 = (*(**(*(this + 1) + 17032) + 616))(*(*(this + 1) + 17032));
            v156 = (*(**(*(this + 1) + 17032) + 624))();
            v154 = v156;
            if (v155)
            {
              v157 = v155;
            }

            else
            {
              v157 = v156;
            }

            v158 = *(*(this + 1) + 17032);
            v159 = *v158;
            if (v153 == v157)
            {
              v160 = (*(v159 + 656))(v158, v148);
              (*(*v158 + 648))(v158, v148, (v160 + 1));
              if ((*(**(*(this + 1) + 17032) + 656))() >= 3)
              {
                (*(**(*(this + 1) + 17032) + 632))(*(*(this + 1) + 17032), v148, 1);
              }
            }

            else
            {
              (*(v159 + 648))(v158, v148, 0);
            }

            if (v155)
            {
              (*(**(*(this + 1) + 17032) + 640))(*(*(this + 1) + 17032), v148, v153 * 100.0 / v155);
              GlCustomLog(14, "ADCSat %s %.1f%%\n", off_29EEAC2A8[v148], v153 * 100.0 / v155);
              v154 = v155;
            }

            else
            {
              if (v154)
              {
                v164 = v153 * 100.0 / v154;
              }

              else
              {
                v164 = 0.0;
              }

              GlCustomLog(14, "BlankCnt: %s %u, %.1f%% \n", off_29EEAC2A8[v148], v153, v164);
            }
          }

          else
          {
            v153 = 0;
            v154 = 0;
          }

          if (!BlueFin::GlStream::GetAvailableSize(&v172))
          {
            (*(**(*(this + 1) + 17072) + 40))(*(*(this + 1) + 17072), v148, v149, v226, v171, &__dst, v153, v154);
            result = (*(**(*(this + 1) + 17056) + 96))(*(*(this + 1) + 17056), v148, v149, v226, v171, &__dst, v153, v154);
            break;
          }

          v144 = "otStream.GetAvailableSize() == 0";
          DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 726, "ParseMethod", "otStream.GetAvailableSize() == 0");
          v145 = "glmesrd_transaction_rpc_decoder_minnow.cpp";
          v146 = 726;
          goto LABEL_263;
        case 7:
          result = BlueFin::MinnowGllRpcParserImp::Handle_SatRpt_SubTrkMsmt(this, &v172);
          break;
      }
    }
  }

  else
  {
    if (a2 != 18 || !*(*(this + 1) + 17088))
    {
      goto LABEL_406;
    }

    if (a3 != 1)
    {
      if (a3)
      {
        goto LABEL_406;
      }

      if (!v175)
      {
        if (!v176)
        {
          v11 = v172;
          if (v172 + 1 <= v174)
          {
            ++v172;
            v12 = *(v173 + v11);
            if (v12 > 0xA)
            {
              v144 = "num <= _DIM(a_rm_report)";
              DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 2297, "Handle_SatEvt_RmEventReport", "num <= _DIM(a_rm_report)");
              v145 = "glmesrd_transaction_rpc_decoder_minnow.cpp";
              v146 = 2297;
            }

            else
            {
              if (*(v173 + v11))
              {
                v13 = 0;
                p_U32 = &U32;
                v15 = *(v173 + v11);
                do
                {
                  *(p_U32 - 3) = BlueFin::GlStream::GetU16(&v172);
                  if (v175)
                  {
                    goto LABEL_304;
                  }

                  if (v176)
                  {
                    goto LABEL_305;
                  }

                  v16 = v172;
                  v17 = v174;
                  v18 = v172 + 1;
                  if (v172 + 1 > v174)
                  {
                    goto LABEL_262;
                  }

                  v19 = v173;
                  ++v172;
                  *(p_U32 - 8) = *(v173 + v16);
                  if (v16 + 2 > v17)
                  {
                    goto LABEL_262;
                  }

                  v172 = v16 + 2;
                  *(p_U32 - 7) = *(&BlueFin::GlImplGnss::m_aucFromImplSvIdToEnabledSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + *(v19 + v18));
                  if (v16 + 3 > v17)
                  {
                    goto LABEL_262;
                  }

                  v172 = v16 + 3;
                  v20 = *(v19 + (v16 + 2));
                  *(p_U32 - 4) = v20;
                  if (v16 + 4 > v17)
                  {
                    goto LABEL_262;
                  }

                  v172 = v16 + 4;
                  *(p_U32 - 3) = *(v19 + (v16 + 3));
                  v21 = v16 + 5;
                  if (v16 + 5 > v17)
                  {
                    goto LABEL_262;
                  }

                  v172 = v16 + 5;
                  v22 = *(v19 + (v16 + 4));
                  *(p_U32 - 2) = v22;
                  v23 = v16 + 6;
                  if (v23 > v17)
                  {
                    goto LABEL_262;
                  }

                  v172 = v23;
                  *(p_U32 - 1) = *(v19 + v21);
                  v24 = p_U32;
                  if (v22 <= 0xFC)
                  {
                    v25 = &__dst + 10 * v13;
                    if (v20 < 0)
                    {
                      v24 = (v25 + 4);
                      *p_U32 = v20 & 0x7F;
                    }

                    else
                    {
                      v24 = (v25 + 8);
                    }
                  }

                  *v24 = 0;
                  ++v13;
                  p_U32 = (p_U32 + 10);
                }

                while (--v15);
              }

              if (!BlueFin::GlStream::GetAvailableSize(&v172))
              {
                (*(**(*(this + 1) + 17088) + 16))(*(*(this + 1) + 17088), v12, &__dst);
                result = *(*(this + 1) + 17096);
                if (result)
                {
                  result = (*(*result + 16))(result, v12, &__dst);
                }

                goto LABEL_406;
              }

              v144 = "otStream.GetAvailableSize() == 0";
              DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 2336, "Handle_SatEvt_RmEventReport", "otStream.GetAvailableSize() == 0");
              v145 = "glmesrd_transaction_rpc_decoder_minnow.cpp";
              v146 = 2336;
            }

LABEL_263:
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v145, v146, v144);
          }

          goto LABEL_262;
        }

        goto LABEL_305;
      }

      goto LABEL_304;
    }

    if (v175)
    {
      goto LABEL_304;
    }

    if (v176)
    {
      goto LABEL_305;
    }

    v52 = v172;
    v53 = v174;
    v54 = v172 + 1;
    if (v172 + 1 > v174)
    {
      goto LABEL_262;
    }

    v55 = v173;
    ++v172;
    v56 = *(v173 + v52);
    if (*(v173 + v52))
    {
      v57 = 0;
      v58 = 0;
      while (1)
      {
        v59 = v54 + 1;
        if (v54 + 1 > v53)
        {
          goto LABEL_262;
        }

        v172 = v54 + 1;
        v60 = &__dst + 2 * v57;
        *v60 = *(v55 + v54);
        v54 += 2;
        if (v54 > v53)
        {
          goto LABEL_262;
        }

        v172 = v54;
        v61 = *(v55 + v59);
        *(v60 + 1) = v61;
        v62 = v226 + v58;
        v60[1] = v62;
        v63 = v61;
        if (v61)
        {
          break;
        }

LABEL_115:
        v58 += v61;
        if (++v57 == v56)
        {
          goto LABEL_116;
        }
      }

      while (v54 + 1 <= v53)
      {
        v172 = v54 + 1;
        *v62++ = *(v55 + v54++);
        if (!--v63)
        {
          goto LABEL_115;
        }
      }

      goto LABEL_262;
    }

LABEL_116:
    if (BlueFin::GlStream::GetAvailableSize(&v172))
    {
      v144 = "otStream.GetAvailableSize() == 0";
      DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 2360, "Handle_SatEvt_SmSatIdListReport", "otStream.GetAvailableSize() == 0");
      v145 = "glmesrd_transaction_rpc_decoder_minnow.cpp";
      v146 = 2360;
      goto LABEL_263;
    }

    (*(**(*(this + 1) + 17088) + 24))(*(*(this + 1) + 17088), v56, &__dst);
    result = *(*(this + 1) + 17096);
    if (result)
    {
      result = (*(*result + 24))(result, v56, &__dst);
    }
  }

LABEL_406:
  v169 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlMeSrdAsicUnitConverter::GetLms16ToLms32(BlueFin::GlMeSrdAsicUnitConverter *this, int a2)
{
  if (!a2)
  {
    v3 = "0";
    DeviceFaultNotify("glmesrd_asic_unit_converter.cpp", 318, "GetLms16ToLms32", "0");
    v4 = 318;
LABEL_5:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asic_unit_converter.cpp", v4, v3);
  }

  if (this != this)
  {
    v3 = "(ulLms32 & 0xffff) == usLms16";
    DeviceFaultNotify("glmesrd_asic_unit_converter.cpp", 309, "GetLms16ToLms32", "(ulLms32 & 0xffff) == usLms16");
    v4 = 309;
    goto LABEL_5;
  }

  return (a2 + (this - a2));
}

uint64_t BlueFin::GlMeRxParamStd::GetEswSrchParamFromBsid(int **this, unsigned int a2)
{
  v4 = BlueFin::GlMeRxParamStd::rMap(this);
  if (**(v4 + 1) <= a2)
  {
    DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 678, "GetEswSrchParamFromBsid", "ucBsid < *rMp.m_pucBsNum");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_receiver_parameters.cpp", 678, "ucBsid < *rMp.m_pucBsNum");
  }

  v5 = *(*(*(v4 + 3) + 24) + 6 * a2 + 1);
  v6 = *(*this + 30);

  return v6(this, v5);
}

uint64_t BlueFin::GlMeRxParamStd::GetEswSrchParamFromSpid(BlueFin::GlMeRxParamStd *this, unsigned int a2)
{
  if (BlueFin::GlMeRxParamLimits::GetMaxAllowedSrchParamIds(**(this + 1)) <= a2)
  {
    DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 670, "GetEswSrchParamFromSpid", "ucSpid < GetMaxAllowedSrchParamIds()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_receiver_parameters.cpp", 670, "ucSpid < GetMaxAllowedSrchParamIds()");
  }

  return *(*(BlueFin::GlMeRxParamStd::rMap(this) + 3) + 16) + 40 * a2;
}

uint64_t BlueFin::GlMeSrdSvMgrRpcSatEvt::gll_satevt_rpc_rm_event_report(uint64_t result, unsigned int a2, uint64_t a3)
{
  if (a2)
  {
    v4 = result;
    v5 = 0;
    v28 = (a3 + 5);
    v29 = a2;
    do
    {
      v6 = (a3 + 10 * v5);
      v7 = *v6;
      v8 = v6[1];
      v33 = v6[1];
      v9 = v6[6] - 252;
      if (v9 > 3 || v9 == 1)
      {
        v13 = 0;
        v12 = 0;
        v11 = v6[4];
      }

      else
      {
        v11 = v6[4];
        v12 = v11 == 255;
        v13 = 1;
      }

      if (v6[7])
      {
        GlSignalIndex = BlueFin::GlMeSrdAsicUnitConverter::GetGlSignalIndex(v8, v6[7]);
      }

      else
      {
        GlSignalIndex = 0;
      }

      v30[0] = v8;
      v31 = GlSignalIndex;
      v32 = 575;
      if ((v8 + 67) >= 0x44u)
      {
        v15 = BlueFin::GlSvId::s_aucSvId2gnss[v8];
        if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * GlSignalIndex - GlSignalIndex + v15] == 255)
        {
          v31 = -1;
        }

        else
        {
          v32 = BlueFin::GlSignalId::s_ausGnss2signalId[v15] + v8 - BlueFin::GlSvId::s_aucGnss2minSvId[v15] + GlSignalIndex * BlueFin::GlSvId::s_aucGnss2numSvId[v15];
        }
      }

      result = BlueFin::GlMeSrdAsicUnitConverter::GetLms16ToLms32(*(v6 + 1), *(*(v4 + 8) + 23160));
      if (v6[6] == 253)
      {
        v16 = *(v4 + 8);
        *(v16 + 21604) = (v6[4] & 0xFE) == 0x90;
      }

      else
      {
        v17 = result;
        result = BlueFin::GlMeSrdSatMgr::RmReport(*(v4 + 8) + 3520, v7, v30, v6[5], v6[4], result);
        v18 = *(v4 + 8);
        v19 = v7 >> 5;
        v20 = 1 << (v7 & 0x1F);
        if ((v20 & *(*(v18 + 3640) + 4 * (v7 >> 5))) != 0 || (v20 & *(*(v18 + 3608) + 4 * v19)) != 0)
        {
          if (v12)
          {
            BlueFin::GlMeSrdSatTrackMgr::RemoveSat((v18 + 14352), v7);
            result = BlueFin::GlMeSrdSatMgr::EswKilledSat((*(v4 + 8) + 3520), v7);
          }

          else
          {
            if (!BlueFin::GlMeSrdSatMgr::CheckCoherence((v18 + 3520), v7, &v33))
            {
              v26 = "0";
              DeviceFaultNotify("glmesrd_acq_mgr.cpp", 553, "gll_satevt_rpc_rm_event_report", "0");
              v27 = 553;
LABEL_41:
              __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_acq_mgr.cpp", v27, v26);
            }

            result = BlueFin::GlMeSrdSatTrackMgr::HasSat((*(v4 + 8) + 14352), v7);
            if (result)
            {
              if ((v13 & 1) == 0)
              {
                v26 = "bIsTrackEngine";
                DeviceFaultNotify("glmesrd_acq_mgr.cpp", 559, "gll_satevt_rpc_rm_event_report", "bIsTrackEngine");
                v27 = 559;
                goto LABEL_41;
              }
            }

            else
            {
              if (v11)
              {
                v21 = v13;
              }

              else
              {
                v21 = 0;
              }

              result = *(v4 + 8);
              if (v21 == 1)
              {
                result = BlueFin::GlMeSrdAcqMgrSm::MoveSatFromSSE2STE(result, v7);
              }

              else if ((v20 & *(*(result + 13920) + 4 * v19)) == 0)
              {
                v22 = 0;
                v23 = result + 23080;
                v24 = v28;
                while (1)
                {
                  v25 = *(v23 + v22);
                  if ((v20 & *(v25[16] + 4 * v19)) != 0)
                  {
                    break;
                  }

                  v24 += 10;
                  v22 += 8;
                  if (v22 == 80)
                  {
                    v26 = "0";
                    DeviceFaultNotify("glmesrd_acq_mgr.cpp", 590, "gll_satevt_rpc_rm_event_report", "0");
                    v27 = 590;
                    goto LABEL_41;
                  }
                }

                result = (*(*v25 + 40))(v25, v7, *v24, *(v24 - 1), v17);
              }
            }
          }
        }
      }

      ++v5;
    }

    while (v5 != v29);
  }

  return result;
}

uint64_t BlueFin::GlMeSrdSatMgr::RmReport(uint64_t this, unsigned int a2, const BlueFin::GlSignalId *a3, char a4, int a5, int a6)
{
  v7 = this;
  v8 = a2 >> 5;
  v9 = 1 << (a2 & 0x1F);
  if ((v9 & *(*(this + 120) + 4 * (a2 >> 5))) == 0 && (v9 & *(*(this + 88) + 4 * (a2 >> 5))) == 0)
  {
    this = BlueFin::GlMeSrdSatMgr::IsSatInKillProcess(this, a2);
    if (this)
    {
      if ((v9 & *(*(v7 + 360) + 4 * v8)) == 0)
      {
        return this;
      }

      v14 = "m_otSetSatidActive.Missing(ucSatid)";
      DeviceFaultNotify("glmesrd_sat_mgr.cpp", 253, "RmReport", "m_otSetSatidActive.Missing(ucSatid)");
      v15 = 253;
    }

    else
    {
      v14 = "0";
      DeviceFaultNotify("glmesrd_sat_mgr.cpp", 251, "RmReport", "0");
      v15 = 251;
    }

LABEL_15:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_mgr.cpp", v15, v14);
  }

  v10 = *(this + 6288);
  if (*(v10 + 52 * a2) != *a3)
  {
    v14 = "m_aotSatData[ucSatid].otSvid == rotSignalId.GetSvId()";
    DeviceFaultNotify("glmesrd_sat_mgr.cpp", 221, "RmReport", "m_aotSatData[ucSatid].otSvid == rotSignalId.GetSvId()");
    v15 = 221;
    goto LABEL_15;
  }

  *(v10 + 52 * a2 + 44) = a5;
  *(*(this + 6288) + 52 * a2 + 45) = a4;
  *(*(this + 6288) + 52 * a2 + 48) = a6;
  if (a5)
  {
    *(*(this + 360) + 4 * v8) |= 1 << (a2 & 0x1F);
  }

  else
  {
    BlueFin::GlSatCarrId::GlSatCarrId(v16, a2, *(a3 + 1));
    v11 = v16[0] + 100 * v16[4];
    if ((*(*(v7 + 6464) + 4 * (v11 >> 5)) >> (v11 & 0x1F)))
    {
      v12 = v11;
      v13 = v7 + 6464;
    }

    else
    {
      v13 = v7 + 360;
      v12 = a2;
    }

    return BlueFin::GlSetBase::Remove(v13, v12);
  }

  return this;
}

uint64_t BlueFin::GlSatCarrId::GlSatCarrId(uint64_t result, unsigned int a2, int a3)
{
  *result = a2;
  *(result + 4) = a3;
  if (a2 >= 0x64)
  {
    DeviceFaultNotify("glmesrd_sat_carr_id.cpp", 36, "GlSatCarrId", "ucSatId < GlMeSrdAsicConfigConstants::GLL_SAT_ARRAY_SIZE");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_carr_id.cpp", 36, "ucSatId < GlMeSrdAsicConfigConstants::GLL_SAT_ARRAY_SIZE");
  }

  return result;
}

BOOL BlueFin::GlMeSrdSatMgr::CheckCoherence(void *a1, unsigned int a2, _BYTE *a3)
{
  v4 = 1 << (a2 & 0x1F);
  if ((v4 & *(a1[15] + 4 * (a2 >> 5))) == 0 && (v4 & *(a1[11] + 4 * (a2 >> 5))) == 0)
  {
    return 0;
  }

  BlueFin::GlMeSrdSatMgr::GetSvid(a1, a2, &v6);
  return v6 == *a3;
}

void *BlueFin::GlMeSrdSatMgr::GetSvid@<X0>(void *this@<X0>, unsigned int a2@<W1>, _BYTE *a3@<X8>)
{
  v3 = 1 << (a2 & 0x1F);
  if ((v3 & *(this[15] + 4 * (a2 >> 5))) == 0 && (v3 & *(this[11] + 4 * (a2 >> 5))) == 0)
  {
    DeviceFaultNotify("glmesrd_sat_mgr.cpp", 859, "GetSvid", "IsSatAllocated(ucSatid)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_mgr.cpp", 859, "IsSatAllocated(ucSatid)");
  }

  *a3 = *(this[786] + 52 * a2);
  return this;
}

BOOL BlueFin::GlMeSrdSatTrackMgr::HasSat(BlueFin::GlMeSrdSatTrackMgr *this, unsigned int a2)
{
  v4 = 0;
  v5 = 1;
  do
  {
    BlueFin::GlSatCarrId::GlSatCarrId(v7, a2, v4);
    if ((*(*(this + 500) + 4 * ((v7[0] + 100 * v8) >> 5)) >> ((v7[0] + 100 * v8) & 0x1F)))
    {
      break;
    }

    v5 = v4++ < 3;
  }

  while (v4 != 4);
  return v5;
}

void *BlueFin::GlMeSrdSearchMgrBase::RmReport(void *this, unsigned int a2)
{
  v3 = 1 << (a2 & 0x1F);
  if ((v3 & *(this[16] + 4 * (a2 >> 5))) == 0)
  {
    DeviceFaultNotify("glmesrd_search_mgr_base.cpp", 354, "RmReport", "GetSatidInUse().Has(ucSatid)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_search_mgr_base.cpp", 354, "GetSatidInUse().Has(ucSatid)");
  }

  if ((v3 & *(this[28] + 4 * (a2 >> 5))) != 0)
  {
    *(this[24] + 4 * (a2 >> 5)) |= 1 << (a2 & 0x1F);
    v4 = (this + 28);

    return BlueFin::GlSetBase::Remove(v4, a2);
  }

  return this;
}

uint64_t (*(*(*BlueFin::GlReqSm::processing(BlueFin::GlReqSm *this, _BYTE *a2))(uint64_t a1, unsigned __int8 *a2))(BlueFin::GlReqSm *this, const char *a2))()
{
  result = 0;
  v5 = this + 6464;
  switch(*a2)
  {
    case 2:
      *(this + 3967) = this;
      BlueFin::GlTimer::arm((this + 31704), 34, 0, 1u);
      *(this + 31728) = 1;
      MinimumPeriod = BlueFin::GlPeReqBag::GetMinimumPeriod((this + 10880));
      *(this + 6705) = this;
      BlueFin::GlTimer::arm((this + 53608), 31, 0, MinimumPeriod + 10000);
      *(this + 53632) = 1;
      v17 = *(*(this + 784) + 820);
      if (v17)
      {
        *(this + 6751) = this;
        BlueFin::GlTimer::arm((this + 53976), 36, 0, v17);
        *(this + 54000) = 2;
      }

      else
      {
        BlueFin::GlTimer::disarm(this + 6747);
      }

      result = *(*(this + 783) + 48);
      if (!result)
      {
        return result;
      }

      (*(*result + 88))(result);
      return 0;
    case 3:
      BlueFin::GlTimer::disarm(this + 6726);
      BlueFin::GlTimer::disarm(this + 3963);
      BlueFin::GlTimer::disarm(this + 6721);
      BlueFin::GlTimer::disarm(this + 6696);
      BlueFin::GlTimer::disarm(this + 6701);
      BlueFin::GlTimer::disarm(this + 6747);
      return 0;
    case 6:
    case 0xB:
    case 0x11:
    case 0x12:
    case 0x15:
    case 0x16:
    case 0x1B:
    case 0x1C:
    case 0x1E:
    case 0x20:
    case 0x21:
    case 0x33:
    case 0x34:
    case 0x35:
    case 0x36:
      return result;
    case 7:
      BlueFin::GlReqSm::CreateNewReqFromPend(this);
      return 0;
    case 8:
      BlueFin::GlPeReqBag::TerminateRequest(this + 10880, *(this + 4148));
      BlueFin::GlPePendingBag::TerminateRequest(this + 6496, *(this + 4148));
      BlueFin::GlPeReqBag::Cleanup(this + 10880);
      v18 = *(this + 1438);
      if (*v18)
      {
        return 0;
      }

      v19 = *(this + 11512);
      if (v19 < 2)
      {
        goto LABEL_34;
      }

      v20 = v19 - 1;
      v21 = v18 + 1;
      while (!*v21++)
      {
        if (!--v20)
        {
LABEL_34:
          result = 0;
          *(this + 2712) = 0;
          return result;
        }
      }

      return 0;
    case 9:
      v15 = *(this + 3048);
      *v68 = v70;
      v69 = 3;
      *v70 = v15;
      *&v70[4] = 0;
      GlCustomLog(14, "GlReqSm: terminate all requests\n");
      BlueFin::GlPeReqBag::TerminateAll((this + 10880));
      BlueFin::GlPePendingBag::TerminateAll(this + 6496);
      *(this + 2712) = 0;
      BlueFin::GlPeReqBag::Cleanup(this + 10880);
      BlueFin::GlTimer::disarm(this + 3948);
      if (**v68)
      {
        goto LABEL_23;
      }

      if (v69 < 2uLL)
      {
        goto LABEL_95;
      }

      v49 = v69 - 1;
      v50 = (*v68 + 4);
      while (!*v50++)
      {
        if (!--v49)
        {
          goto LABEL_95;
        }
      }

LABEL_23:
      if (a2[1])
      {
LABEL_95:
        BlueFin::GlTimer::disarm(this + 3953);
        BlueFin::GlTimer::disarm(this + 3958);
        BlueFin::GlTimer::disarm(this + 3969);
        goto LABEL_96;
      }

      if (**v68)
      {
        BlueFin::GlReqSm::StartWarmStandBy(this);
      }

      return 0;
    case 0xA:
      if ((*(this + 10850) & 0x20) != 0)
      {
        v23 = *(this + 31);
        if (v23 >= 2)
        {
          *(this + 31) = v23 >> 1;
        }
      }

      BlueFin::GlReqSm::SetAsstFromPend(this, 1, 0);
      return 0;
    case 0x13:
      if (*v5 == 1)
      {
        BlueFin::GlReqSm::ProcessNewMeas(this);
        return 0;
      }

      if (*(this + 53968) != 1)
      {
        goto LABEL_107;
      }

      if (*(this + 54877) == 1 && *(*(this + 784) + 26222) == 1)
      {
        *(this + 53969) = 1;
        v45 = 1000;
LABEL_106:
        *(this + 6745) = this;
        BlueFin::GlTimer::arm((this + 53928), 63, 0, v45);
        *(this + 53952) = 1;
        GlCustomLog(14, "MI2: +++ fire Pos Extrapolation event @Lms: %d +++ \n", *(*(this + 785) + 2568));
        goto LABEL_107;
      }

      if (*(this + 53969) == 1 && *(this + 54878) == 1)
      {
        *(this + 53969) = 0;
        v45 = 500;
        goto LABEL_106;
      }

LABEL_107:
      v52 = BlueFin::GlPeReqBag::GetMinimumPeriod((this + 10880));
      *(this + 6705) = this;
      BlueFin::GlTimer::arm((this + 53608), 31, 0, v52 + 10000);
      *(this + 53632) = 1;
      if (BlueFin::GlReqSm::ShouldRequestAdcCapture(this))
      {
        *(this + 13723) = *(*(this + 785) + 2568);
        (*(**(this + 39) + 752))(*(this + 39));
        ++*(this + 13724);
      }

      if ((*(**(this + 784) + 1112))(*(this + 784)))
      {
        goto LABEL_110;
      }

      if (BlueFin::GlReqSm::ShouldTransitionToStandby(this))
      {
        goto LABEL_96;
      }

      InternalWarmStandbyPeriodIfAllowed = BlueFin::GlPeReqBag::GetInternalWarmStandbyPeriodIfAllowed(this + 10880);
      if (BlueFin::GlReqSm::ShouldTransitionToInternalWarmStandby(this, InternalWarmStandbyPeriodIfAllowed))
      {
        v8 = "&GlReqSm::warmstandbystate";
        v9 = BlueFin::GlReqSm::warmstandbystate;
        goto LABEL_97;
      }

LABEL_110:
      BlueFin::GlReqSm::ProcessNewMeas(this);
      v53 = *(this + 783);
      if (*(v53 + 181096) == 1)
      {
        v54 = 2 * *(this + 31);
        if (v54 >= 0x10)
        {
          v54 = 16;
        }
      }

      else
      {
        v54 = 1;
      }

      *(this + 31) = v54;
      v56 = *(this + 785);
      if (*(v56 + 2768) != 1 || (*(v56 + 2568) + 7201002) < 0x3E8)
      {
        goto LABEL_119;
      }

      v62 = *(*(this + 784) + 32);
      if ((v62 & 0x10000) == 0)
      {
        BlueFin::GlPosEng::SetDeathCause(v53, 2);
        (*(**(this + 792) + 16))(*(this + 792), 327680, 0);
LABEL_96:
        v8 = "&GlReqSm::standby";
        v9 = BlueFin::GlReqSm::standby;
LABEL_97:
        BlueFin::QHsm::tran(this, v9, v8);
        return 0;
      }

      if ((v62 & 0x4000) == 0)
      {
        (*(**(this + 792) + 16))(*(this + 792), 0x10000, 0);
      }

LABEL_119:
      v57 = *(this + 1438);
      if (!*v57)
      {
        v58 = *(this + 11512);
        if (v58 < 2)
        {
LABEL_124:
          if (!*(this + 31608))
          {
LABEL_125:
            if (!*(this + 31648) && !*(this + 31688))
            {
              goto LABEL_96;
            }
          }
        }

        else
        {
          v59 = v58 - 1;
          v60 = v57 + 1;
          while (!*v60++)
          {
            if (!--v59)
            {
              goto LABEL_124;
            }
          }
        }
      }

      return 0;
    case 0x14:
      if (*(*(this + 785) + 2568) != -7200001)
      {
        BlueFin::GlReqSm::OnCpuLoadStarted(this);
        v24 = *(*(this + 785) + 2568);
        v25 = (*(**(this + 784) + 1064))(*(this + 784));
        if (v24 < 0x3E8)
        {
          v26 = 1;
        }

        else
        {
          v26 = v25;
        }

        if (v26)
        {
          v27 = v24;
        }

        else
        {
          v27 = v24 + 100;
        }

        BlueFin::GlPeReqBag::SetCurrentTimeLms((this + 10880), v27);
        v28 = *(this + 3048);
        BlueFin::GlPeReqBag::SetSIGMeasuement((this + 10880), *(this + 790));
        if ((v28 & 0xC) != 0 && (*(this + 53562) & 1) == 0)
        {
          BlueFin::GlReqSm::UpdateOscAidingFromBit(this, *(this + 790));
        }

        BlueFin::GlPeReqBag::Cleanup(this + 10880);
        BlueFin::GlReqSm::OnCpuLoadEnded(this);
      }

      return 0;
    case 0x1A:
      BlueFin::GlTimer::disarm(this + 3948);
      v38 = *(this + 1438);
      if (*v38)
      {
        return 0;
      }

      v39 = *(this + 11512);
      if (v39 < 2)
      {
        goto LABEL_125;
      }

      v40 = v39 - 1;
      v41 = v38 + 1;
      while (1)
      {
        if (*v41++)
        {
          return 0;
        }

        if (!--v40)
        {
          goto LABEL_125;
        }
      }

    case 0x1D:
      result = 0;
      *(this + 31744) = 1;
      return result;
    case 0x1F:
    case 0x25:
      *(this + 2712) = 0;
      if ((*v5 & 1) == 0)
      {
        v6 = *(this + 4149);
        if (*(v6 + 296) == 1)
        {
          v7 = *(v6 + 80);
          if (v7)
          {
            v7(*(v6 + 8), 0);
            *(v6 + 296) = 0;
            v6 = *(this + 4149);
          }
        }

        (*(*v6 + 80))(v6, 6, 0);
      }

      GlCustomLog(11, "GlReqSm::communication breakdown at %s: %d. GLL will be restarted!\n", "processing", 4275);
      v8 = "&GlReqSm::restart";
      v9 = BlueFin::GlReqSm::restart;
      goto LABEL_97;
    case 0x22:
      if (*(this + 5132) >= 1)
      {
        BlueFin::GlReqSm::CreateNewReqFromPend(this);
      }

      if (*(this + 2712))
      {
        BlueFin::GlReqSm::SetAsstFromPend(this, 1, 0);
      }

      if ((*(**(this + 784) + 1064))(*(this + 784)))
      {
        *(this + 13505) = -1000;
        *(this + 6700) = this;
        BlueFin::GlTimer::arm((this + 53568), 35, 0, 0x3E8u);
        *(this + 53592) = 2;
        BlueFin::GlPeTimeManager::AsicStarted(*(this + 785), 0, 0, 0.0, 0, 0);
      }

      goto LABEL_60;
    case 0x23:
LABEL_60:
      if ((*(**(this + 784) + 1064))(*(this + 784)))
      {
        v29 = *(this + 13505) + 1000;
        *(this + 13505) = v29;
      }

      else
      {
        if (*a2 != 34)
        {
          v63 = "PE2PE_POST_ENTRY_EVENT == e->sig";
          DeviceFaultNotify("glreqsm.cpp", 3874, "processing", "PE2PE_POST_ENTRY_EVENT == e->sig");
          v64 = "glreqsm.cpp";
          v65 = 3874;
LABEL_137:
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v64, v65, v63);
        }

        v29 = *(*(this + 785) + 2568);
      }

      v30 = (*(**(*(this + 783) + 32) + 88))(*(*(this + 783) + 32));
      v31 = (*(**(*(this + 783) + 32) + 96))(*(*(this + 783) + 32));
      v32 = v30(17152);
      if (!v32)
      {
        v63 = "m_ptr != nullptr";
        DeviceFaultNotify("glmemalloc.h", 74, "GlStackAlloc", "m_ptr != nullptr");
        v64 = "glmemalloc.h";
        v65 = 74;
        goto LABEL_137;
      }

      v33 = v32;
      v34 = BlueFin::GlMeas::GlMeas(v32);
      BlueFin::GlMeas::init(v34);
      v33[4283] = 0;
      *v33 = v29;
      (*(**(this + 783) + 16))(*(this + 783), v33);
      v31(v33);
      return 0;
    case 0x24:
      BlueFin::GlNvMemImpl::Write((*(this + 783) + 350608));
      return 0;
    case 0x26:
      v68[0] = 0;
      v35 = *(this + 783);
      Lto = BlueFin::GlPosEng::needToReadLto(v35);
      v37 = 0;
      if (Lto)
      {
        BlueFin::GlPosEng::readLtoFile(v35, v68, 0);
        v37 = v68[0];
      }

      GlCustomLog(14, "smRq::processing(PE2PE_LTO_REFRESH) %u bytes read\n", v37);
      GlCustomLog(14, "\tLTO %uk\n", (v68[0] + 512) >> 10);
      return 0;
    case 0x29:
      goto LABEL_96;
    case 0x31:
      (*(**(this + 784) + 1064))(*(this + 784));
      return 0;
    case 0x32:
      GlCustomLog(14, "Start CNTIN as CW has started\n");
      BlueFin::GlPeCntinMgr::StartCntin(*(this + 791));
      return 0;
    case 0x3F:
      GlCustomLog(14, "MI2: Pos Extrapolation event received @Lms: %d\n", *(*(this + 785) + 2568));
      v44 = *(this + 3975);
      *v68 = v70;
      v69 = 3;
      memset(v70, 0, sizeof(v70));
      BlueFin::GlSetBase::GlSetBase(v66, v67, 3u, v68);
      BlueFin::GlReqSm::DistributeFixStatus(this, 1, v44, v66);
      return 0;
    case 0x44:
      v10 = *(this + 784);
      v11 = *(v10 + 25957);
      if (a2[1])
      {
        if (!*(v10 + 25957))
        {
          return 0;
        }

        v12 = *(v10 + 25960);
        if (v12 == 1)
        {
          if (*(this + 13720) != 1)
          {
            return 0;
          }
        }

        else if (v12 != 2 || *(this + 13720) != 2)
        {
          return 0;
        }

        (*(*v10 + 376))(v10, 1, 0xFFFFFFFFLL);
        v48 = *(**(this + 39) + 424);
      }

      else
      {
        if (!*(v10 + 25957))
        {
          return 0;
        }

        if (*(v10 + 25960) != -1)
        {
          return 0;
        }

        if ((*(this + 13720) - 1) > 1)
        {
          return 0;
        }

        v46 = *(this + 786);
        if (!v46 || *(v46 + 120012) == 2)
        {
          return 0;
        }

        (*(*v10 + 376))(v10, 1);
        v47 = *(this + 13720);
        v48 = *(**(this + 39) + 424);
      }

      v48();
      return 0;
    case 0x47:
      result = 0;
      v14 = *(this + 784);
      if (*(v14 + 25960) > 2u || *(v14 + 88) < 39)
      {
        return result;
      }

      (*(**(this + 39) + 424))(*(this + 39), *(v14 + 25957));
      return 0;
    case 0x48:
      v43 = *(this + 784);
      if (*(v43 + 88) <= 38 && *(v43 + 917) == 1)
      {
        (*(**(this + 39) + 624))(*(this + 39), *(v43 + 984));
      }

      return 0;
    case 0x49:
      v13 = *(this + 784);
      if (*(v13 + 88) >= 39 && *(v13 + 918) == 1)
      {
        (*(**(this + 39) + 632))(*(this + 39), *(v13 + 988));
      }

      return 0;
    default:
      return BlueFin::GlReqSm::host_based_positioning;
  }
}

uint64_t BlueFin::GlPeTimeManager::UpdateRtcModel(BlueFin::GlPeTimeManager *this, double a2, double a3)
{
  v6 = a2 * 1000000000.0;
  GlCustomLog(14, "GlPeTimeManager::UpdateRtcModel:  LMS:%u  RtcVsTcxoPpb:%+.0lf  RtcVsTcxoUncPpb:%.0lf  ", *(this + 642), a2 * 1000000000.0, a3 * 1000000000.0);
  v7 = *(this + 4);
  v8 = *(v7 + 2) * 0.000000001;
  v9 = *(v7 + 10) * 0.000000001;
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
  }

  v10 = 78;
  if (v9 < 0.0000003)
  {
    v10 = 89;
  }

  GlCustomLog(14, "TcxoVsGnssPpb:%+.0lf  TcxoVsGnssUnc(ppb):%.0lf  Corrected:%c  ", v8 * 1000000000.0, v9 * 1000000000.0, v10);
  v11 = a2;
  if (v9 < 0.0000003)
  {
    v11 = v8 + a2;
    v6 = (v8 + a2) * 1000000000.0;
    GlCustomLog(14, "RtcVsGnss:%.0lf(ppb)  \n", v6);
  }

  v12 = (v9 + BlueFin::GlPeTimeManager::inflatePreciseRtcUnc(this, a2, a3, v9)) * 1000000000.0;
  result = GlCustomLog(14, "RtcVsGnssPpb:%+.0lf  RtcVsGnssUnc(ppb):%.0lf\n", v6, v12);
  v14 = *(this + 642);
  *(this + 3648) = 0;
  *(this + 913) = v14;
  *(this + 459) = v11;
  *(this + 460) = v12;
  *(this + 461) = v8;
  *(this + 462) = v9 * 1000000000.0;
  return result;
}

uint64_t BlueFin::GlMeSrdSvMgrRpcSatEvt::gll_satevt_rpc_sm_sat_id_list_report(uint64_t result, unsigned int a2, uint64_t a3)
{
  if (a2)
  {
    v3 = result;
    v4 = 0;
    v14 = a2;
    do
    {
      v5 = (a3 + 16 * v4);
      if (v5[1])
      {
        v6 = 0;
        v7 = *v5;
        do
        {
          v8 = *(*(v5 + 1) + v6);
          v9 = *(v3 + 8);
          v10 = v8 >> 5;
          v11 = 1 << (v8 & 0x1F);
          for (i = 2885; i != 2895; ++i)
          {
            v13 = v9[i];
            if ((v11 & *(v13[16] + 4 * v10)) != 0)
            {
              result = (*(*v13 + 32))(v13, *(*(v5 + 1) + v6), v7);
              goto LABEL_14;
            }
          }

          if (v7 == 8 && ((result = BlueFin::GlMeSrdSatTrackMgr::HasSat((v9 + 1794), *(*(v5 + 1) + v6)), v9 = *(v3 + 8), (result & 1) != 0) || (v11 & *(v9[1740] + 4 * v10)) != 0))
          {
            *(v9[3115] + 4 * v10) |= 1 << (v8 & 0x1F);
          }

          else
          {
            result = BlueFin::GlMeSrdSatMgr::IsSatInKillProcess((v9 + 440), v8);
            if ((result & 1) == 0)
            {
              DeviceFaultNotify("glmesrd_acq_mgr.cpp", 637, "gll_satevt_rpc_sm_sat_id_list_report", "0");
              __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_acq_mgr.cpp", 637, "0");
            }
          }

LABEL_14:
          ++v6;
        }

        while (v6 < v5[1]);
      }

      ++v4;
    }

    while (v4 != v14);
  }

  return result;
}

uint64_t BlueFin::GlMeSrdSearchMgrBase::SmIdReport(uint64_t this, unsigned int a2, int a3)
{
  if (((*(*(this + 128) + 4 * (a2 >> 5)) >> (a2 & 0x1F)) & 1) == 0)
  {
    DeviceFaultNotify("glmesrd_search_mgr_base.cpp", 338, "SmIdReport", "GetSatidInUse().Has(ucSatid)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_search_mgr_base.cpp", 338, "GetSatidInUse().Has(ucSatid)");
  }

  if (a3 == 8)
  {
    *(*(this + 160) + 4 * (a2 >> 5)) |= 1 << (a2 & 0x1F);
  }

  return this;
}

uint64_t std::__function::__func<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_12,std::allocator<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_12>,void ()(void)>::operator()(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v1 = *(*(a1 + 8) + 936);
  v1[7] = 0x7FEFFFFFFFFFFFFFLL;
  result = v1[3];
  if (result)
  {
    result = (*(*result + 48))(result);
  }

  v3 = v1[4];
  v4 = v1[5];
  if (v3 != v4)
  {
    do
    {
      std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v6, v3);
      if (!v7)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v7 + 48))(v7);
      result = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v6);
      v3 += 32;
    }

    while (v3 != v4);
    v3 = v1[4];
    v4 = v1[5];
  }

  while (v4 != v3)
  {
    v4 -= 32;
    result = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v4);
  }

  v1[5] = v3;
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void std::__function::__func<FireMessageHandler::createGlEngine(void)::$_0,std::allocator<FireMessageHandler::createGlEngine(void)::$_0>,void ()(void)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 8);
  FireMessageHandler::ExclusiveEntryCheck::enter((v8 + 1008), 0, a3, a4, a5, a6, a7, a8);
  (*(**(v8 + 1296) + 176))(*(v8 + 1296));

  FireMessageHandler::ExclusiveEntryCheck::exit((v8 + 1008));
}

uint64_t *BlueFin::GlEngineImplStd::Tick(BlueFin::GlEngineImplStd *this, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void (**a19)(BlueFin::GlGpsTime *__hidden this), uint64_t a20, __int128 a21, __int128 a22, __int128 a23, __int128 a24, __int128 a25, __int128 a26, __int128 a27, __int128 a28, uint64_t a29, uint64_t a30, BlueFin::GlRequestImpl *a31, int a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, char a56, int a57, char a58)
{
  if (*(this + 33) == 1)
  {
    BlueFin::GlEngineImplStd::DisposeComponents(this, 1, a3, a4);
  }

  BlueFin::GlPeTimerMgr::Tick(this + 600);
  if (*(this + 32) == 1)
  {
    *(*(this + 3) + 179704) = 0;

    return BlueFin::GlEngineImplStd::CommonAPIcode(this, v59, v60, v61, v62, v63, v64, v65, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58);
  }

  else if (*(this + 546))
  {
    v67 = BlueFin::GlUtils::m_pInstance;
    ++*(BlueFin::GlUtils::m_pInstance + 1088);
    v67[273] = (*(**v67 + 48))();

    return BlueFin::GlComStressTestMgr::Tick(this + 696);
  }

  else
  {

    return BlueFin::GlPeTimerMgr::UpdateExpirationTime(this + 75, 100000000, 0);
  }
}

char *BlueFin::GlPeTimerMgr::Tick(char *this)
{
  v1 = this[88];
  if ((v1 & 1) == 0)
  {
    v2 = this;
    this[88] = 1;
    this[8] = 0;
    if (*(this + 4))
    {
      v3 = BlueFin::GlUtils::m_pInstance;
      if (BlueFin::GlUtils::m_pInstance)
      {
        ++*(BlueFin::GlUtils::m_pInstance + 1088);
        this = (*(**v3 + 48))();
        v3[273] = this;
      }

      while (*(v2 + 16) >= 1)
      {
        v4 = *(v2 + 24);
        v5 = *(v4 + 28);
        v6 = (*(*v4 + 184))(v4);
        this = BlueFin::GlUtils::m_pInstance ? *(BlueFin::GlUtils::m_pInstance + 1092) : (*(**v2 + 56))();
        if (v6 + v5 - this > 0)
        {
          break;
        }

        *(v2 + 89) = 0;
        v7 = *(v4 + 64);
        if (!v7 || (v7(v4), (*(v2 + 89) & 1) == 0))
        {
          v13 = (*(*v4 + 192))(v4);
          if (v13 < 2)
          {
            v16 = *(v4 + 56);
            if (v16)
            {
              v16(v4);
            }

            BlueFin::GlRequestBase::Destroy(v4);
            *(v2 + 24) = 0;
          }

          else
          {
            (*(*v4 + 376))(v4, v13 - 1);
            v14 = *(v4 + 28);
            v15 = (*(*v4 + 184))(v4) + v14;
            if (v15 == -1)
            {
              if (BlueFin::GlUtils::m_pInstance)
              {
                v15 = *(BlueFin::GlUtils::m_pInstance + 1092);
              }

              else
              {
                v15 = -1;
              }
            }

            *(v4 + 28) = v15;
          }
        }

        this = BlueFin::GlPeTimerMgr::Sort(v2, v8, v9, v10, v11, v12);
      }
    }

    *(v2 + 88) = v1;
  }

  return this;
}

uint64_t BlueFin::GlStream::GetU08(BlueFin::GlStream *this)
{
  if (*(this + 6))
  {
    v4 = "m_uiBitOffset == 0";
    DeviceFaultNotify("glutl_stream.h", 77, "GetU08", "m_uiBitOffset == 0");
    v5 = 77;
    goto LABEL_8;
  }

  if (*(this + 7))
  {
    v4 = "m_uiBitsRemainingInWord == 0";
    DeviceFaultNotify("glutl_stream.h", 78, "GetU08", "m_uiBitsRemainingInWord == 0");
    v5 = 78;
    goto LABEL_8;
  }

  v1 = *this;
  if ((v1 + 1) > *(this + 4))
  {
    v4 = "m_uiOffset + 1 <= m_uiMaxOffset";
    DeviceFaultNotify("glutl_stream.h", 80, "GetU08", "m_uiOffset + 1 <= m_uiMaxOffset");
    v5 = 80;
LABEL_8:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_stream.h", v5, v4);
  }

  v2 = *(this + 1);
  *this = v1 + 1;
  return *(v2 + v1);
}

uint64_t BlueFin::GlStream::GetU32(BlueFin::GlStream *this)
{
  if (*(this + 6))
  {
    v16 = "m_uiBitOffset == 0";
    DeviceFaultNotify("glutl_stream.h", 134, "GetU32", "m_uiBitOffset == 0");
    v17 = 134;
    goto LABEL_10;
  }

  if (*(this + 7))
  {
    v16 = "m_uiBitsRemainingInWord == 0";
    DeviceFaultNotify("glutl_stream.h", 135, "GetU32", "m_uiBitsRemainingInWord == 0");
    v17 = 135;
    goto LABEL_10;
  }

  v1 = *this;
  v2 = v1 + 4;
  if ((v1 + 4) > *(this + 4))
  {
    v16 = "m_uiOffset + 4 <= m_uiMaxOffset";
    DeviceFaultNotify("glutl_stream.h", 137, "GetU32", "m_uiOffset + 4 <= m_uiMaxOffset");
    v17 = 137;
LABEL_10:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_stream.h", v17, v16);
  }

  v3 = *(this + 20);
  v4 = *(this + 1);
  v5 = v1 + 1;
  *this = v1 + 1;
  v6 = *(v4 + v1);
  if (v3 == 1)
  {
    v7 = v1 + 2;
    *this = v1 + 2;
    v8 = *(v4 + v5);
    v9 = v1 + 3;
    *this = v9;
    v10 = (v6 << 24) | (v8 << 16) | (*(v4 + v7) << 8);
    *this = v2;
    return v10 | *(v4 + v9);
  }

  else
  {
    v12 = v1 + 2;
    *this = v1 + 2;
    v13 = *(v4 + v5);
    v14 = v1 + 3;
    *this = v14;
    v15 = *(v4 + v12) << 16;
    *this = v2;
    return v15 | (v13 << 8) | (*(v4 + v14) << 24) | v6;
  }
}

uint64_t BlueFin::GlGnssSet::operator()(uint64_t a1, unsigned int a2)
{
  if (a2 >= 7)
  {
    DeviceFaultNotify("glgnss.cpp", 230, "operator()", "(GlIntU32)eGnss < NUM_GNSS");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glgnss.cpp", 230, "(GlIntU32)eGnss < NUM_GNSS");
  }

  return *(a1 + 168) + 24 * a2;
}

{
  if (a2 >= 7)
  {
    DeviceFaultNotify("glgnss.cpp", 237, "operator()", "(GlIntU32)eGnss < NUM_GNSS");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glgnss.cpp", 237, "(GlIntU32)eGnss < NUM_GNSS");
  }

  return *(a1 + 168) + 24 * a2;
}

unint64_t BlueFin::GlPeEphemerisMgr::GetEphemerisObj(uint64_t a1, _BYTE *a2)
{
  v2 = *a2;
  if (!*a2 || *(a1 + 104) < v2)
  {
    DeviceFaultNotify("glpe_ephmgr.cpp", 1192, "GetEphemerisObj", "*rotGnssId >= MIN_GNSS_ID && *rotGnssId < m_ucMaxEphSVs + MIN_GNSS_ID");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ephmgr.cpp", 1192, "*rotGnssId >= MIN_GNSS_ID && *rotGnssId < m_ucMaxEphSVs + MIN_GNSS_ID");
  }

  return *(a1 + 464) + 4 * (v2 - 1) * *(a1 + 456);
}

unsigned int *BlueFin::GlPeTimeManager::GetTime@<X0>(unsigned int *this@<X0>, double a2@<D0>, int a3@<W1>, uint64_t a4@<X8>)
{
  v5 = a2;
  v6 = this;
  if (a3 && (v8 = this[1201], v8 != -7200001) && v8 == a2)
  {
    *a4 = *(this + 601);
    *(a4 + 8) = this[1204];
    *(a4 + 16) = *(this + 1206);
  }

  else
  {
    *a4 = *(this + 326);
    v9 = this[654];
    *(a4 + 8) = v9;
    v10 = *(this + 328);
    v11 = *(this + 329);
    *(a4 + 16) = v10;
    *(a4 + 24) = v11;
    if (v9 == -1 || v11 == 4294967300.0)
    {
      *(a4 + 16) = 0;
      v12 = floor(v5 * 0.001) * 1000.0;
      v5 = v12;
    }

    else
    {
      v12 = v5 - v10;
    }

    this = BlueFin::GlPeGnssTime::operator+=(a4, v12 * 0.001);
    *(a4 + 16) = v5;
    if (a3 && *(a4 + 8) != -1 && *(a4 + 24) != 4294967300.0 && *(v6 + 2736) != 4294967300.0)
    {
      v13 = (v5 - *(v6 + 2720)) * 0.001;
      v14 = *(v6 + 32);
      v15 = *(v14 + 2) * 0.000000001;
      v16 = *(v14 + 10) * 0.000000001;
      if (BlueFin::GlUtils::m_ucEnabled)
      {
        BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
      }

      this = BlueFin::GlPeGnssTime::operator-=(a4, *(v6 + 2728) + v13 * v15);
      *(a4 + 24) = *(v6 + 2736) + fabs(v13) * 1000000.0 * (v16 + 0.000000005);
    }
  }

  return this;
}

unsigned int *BlueFin::GlPeGnssTime::operator+=(unsigned int *result, double a2)
{
  v2 = fabs(a2);
  v3 = v2 - trunc(v2);
  v4 = v3 * 4294967300.0 + 0.5;
  v5 = v4;
  if (v4 >= 4294967300.0)
  {
    v5 = -1;
  }

  if (v3 < 0.0 || v3 >= 1.0)
  {
    v15 = "dFracSec >= 0.0 && dFracSec < 1.0";
    DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
    v16 = "glpe_timepoint.h";
    v17 = 173;
    goto LABEL_22;
  }

  v7 = v2;
  v8 = *result;
  v9 = result[1];
  if (a2 < 0.0)
  {
    if (__PAIR64__(v9, v8) < __PAIR64__(v7, v5))
    {
      if (v7 - v9 != v8 > v5 || v5 != v8)
      {
        v15 = "!otTmp.isNegative()";
        DeviceFaultNotify("glpe_datetime.h", 1360, "operator+=", "!otTmp.isNegative()");
        v16 = "glpe_datetime.h";
        v17 = 1360;
LABEL_22:
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v16, v17, v15);
      }

      v11 = 0;
      LODWORD(v10) = 0;
    }

    else
    {
      v12 = v8 >= v5;
      LODWORD(v10) = v8 - v5;
      v13 = !v12;
      v11 = v9 - v7 - v13;
    }
  }

  else
  {
    v10 = v8 + v5;
    v11 = v9 + v7 + HIDWORD(v10);
  }

  *result = v10;
  result[1] = v11;
  return result;
}

unsigned __int8 *BlueFin::GlPeEphemerisMgr::GetEphSet@<X0>(unsigned __int8 *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 12) = 0;
  *a2 = a2 + 12;
  *(a2 + 8) = 2;
  if (this[104])
  {
    v3 = this;
    v4 = 0;
    do
    {
      v5 = ++v4;
      this = (*(*v3 + 312))(v3, &v5);
      if (this)
      {
        if (v5 - 64 <= 0xFFFFFFC0)
        {
          DeviceFaultNotify("glgnss.h", 115, "Add", "rtGnssId.ucGnssId >= MIN_GNSS_ID && rtGnssId.ucGnssId <= MAX_GNSS_ID");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glgnss.h", 115, "rtGnssId.ucGnssId >= MIN_GNSS_ID && rtGnssId.ucGnssId <= MAX_GNSS_ID");
        }

        *(*a2 + ((v5 >> 3) & 0x1C)) |= 1 << v5;
      }
    }

    while (v4 < v3[104]);
  }

  return this;
}

BOOL BlueFin::GlSetBase::HasAll(int **this, int **a2)
{
  v2 = *(a2 + 8);
  v3 = *(this + 8);
  if (v2 >= v3)
  {
    v4 = *(this + 8);
  }

  else
  {
    v4 = *(a2 + 8);
  }

  if (v4)
  {
    v5 = *this;
    v6 = *a2;
    while (1)
    {
      v8 = *v5++;
      v7 = v8;
      v9 = *v6++;
      if ((v9 & ~v7) != 0)
      {
        return 0;
      }

      if (!--v4)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    if (v3 >= v2)
    {
      return 1;
    }

    else
    {
      v10 = v3 + 1;
      v11 = &(*a2)[v3];
      do
      {
        v12 = *v11++;
        result = v12 == 0;
        if (v12)
        {
          break;
        }
      }

      while (v2 != v10++);
    }
  }

  return result;
}

unint64_t BlueFin::GlMeSrdEvtListener::OnRtcCaptured(BlueFin::GlMeSrdEvtListener *this)
{
  v4 = 19;
  v1 = *(this + 1);
  v2 = *(v1 + 32);
  result = *(v1 + 8);
  *(v1 + 32) = result;
  do
  {
    v5 = 0;
    if (BlueFin::patch_dispatch(result, v1, &v4, &v5))
    {
      result = v5;
    }

    else
    {
      result = (*(v1 + 32))(v1, &v4);
    }

    *(v1 + 32) = result;
  }

  while (result);
  *(v1 + 32) = v2;
  return result;
}

double BlueFin::GlPeTimeManager::inflatePreciseRtcUnc(BlueFin::GlPeTimeManager *this, double a2, double a3, double a4)
{
  if (*(this + 460) >= 1000000.0)
  {
    return a3;
  }

  if (*(this + 3648) != 1 || (*(this + 686) & 2) == 0)
  {
    return a3;
  }

  v6 = *(this + 342);
  if (v6 >= 10000.0 || *(this + 462) >= 1000000.0)
  {
    return a3;
  }

  v7 = a2 - (*(this + 459) - *(this + 461));
  if (v7 >= 0.0)
  {
    v8 = v7;
  }

  else
  {
    v8 = -v7;
  }

  if (v8 <= a3)
  {
    v8 = a3;
  }

  else
  {
    GlCustomLog(14, "Inflating RtcVsGnssUnc(ppb): %0.1f -> %0.1f\n", (a3 + a4) * 1000000000.0, (v8 + a4) * 1000000000.0);
    v6 = *(this + 342);
  }

  if (v8 > 0.0001 && v6 < 200000.0)
  {
    v11 = 200000.0;
  }

  else
  {
    v11 = v6;
  }

  if (v11 > v6)
  {
    GlCustomLog(14, "Override dts unc(us): %0.1f -> %0.1f\n", v6, v11);
    v12 = *(this + 340);
    v13 = *(this + 341);
    v14 = 0;
    BlueFin::GlPeTimeManager::SetDtsS(this, 1u, &v14, v12, v13, v11);
  }

  return v8;
}

uint64_t BlueFin::GlMeSrdCtrlSm::GotRadioReport(BlueFin::GlMeSrdCtrlSm *this)
{
  v2 = *(this + 912);
  v3 = *(this + 913);
  v4 = *(this + 917);
  v49 = *(this + 918);
  v5 = *(this + 919);
  v6 = *(this + 923);
  v7 = *(this + 924);
  v8 = *(this + 925);
  v9 = *(this + 926);
  v50 = *(this + 929);
  v10 = *(this + 1866);
  if ((*(**(this + 17) + 264))(*(this + 17)) && (((*(**(this + 17) + 24))(*(this + 17)) & 1) != 0 || (*(**(this + 17) + 40))(*(this + 17))))
  {
    v11 = v6 & 0x3F;
    v12 = v11;
    v13 = BlueFin::GlMeSrdCtrlSm::DagcDecode4777(BYTE1(v8), v8);
    GlCustomLog(15, "AGC report:: LMS %u %s AAGC %.2f dB DAGC %.2f\n", v2, "GPS_GAL", v11, v13);
    v14 = *(this + 25);
    *(v14 + 180) = v11;
    *(v14 + 184) = v13;
    if ((v6 & 0x3F) != 0 && v13 > 0.0)
    {
      if (*(v14 + 1528))
      {
        v15 = *(v14 + 1532);
        if (v15 > 0.0)
        {
          if (v15 <= (v12 + v13))
          {
            v16 = 0;
          }

          else
          {
            v16 = *(v14 + 1504) + 1;
          }

          *(v14 + 1504) = v16;
        }
      }
    }

    v28 = BlueFin::GlMeSrdCtrlSm::DagcDecode4777(HIBYTE(v8), (v8 << 8) >> 24);
    GlCustomLog(15, "AGC report:: LMS %u %s AAGC %.2f dB DAGC %.2f\n", v2, "GLO", v11, v28);
    v29 = *(this + 25);
    *(v29 + 188) = v12;
    *(v29 + 192) = v28;
    if ((v6 & 0x3F) != 0 && v28 > 0.0)
    {
      if (*(v29 + 1528))
      {
        v30 = *(v29 + 1536);
        if (v30 > 0.0)
        {
          if (v30 <= (v12 + v28))
          {
            v31 = 0;
          }

          else
          {
            v31 = *(v29 + 1508) + 1;
          }

          *(v29 + 1508) = v31;
        }
      }
    }

    v32 = BlueFin::GlMeSrdCtrlSm::DagcDecode4777(BYTE1(v9), v9);
    GlCustomLog(15, "AGC report:: LMS %u %s AAGC %.2f dB DAGC %.2f\n", v2, "BDS", v11, v32);
    v33 = *(this + 25);
    *(v33 + 196) = v12;
    *(v33 + 200) = v32;
    if ((v6 & 0x3F) != 0 && v32 > 0.0)
    {
      if (*(v33 + 1528))
      {
        v34 = *(v33 + 1540);
        if (v34 > 0.0)
        {
          if (v34 <= (v12 + v32))
          {
            v35 = 0;
          }

          else
          {
            v35 = *(v33 + 1512) + 1;
          }

          *(v33 + 1512) = v35;
        }
      }
    }

    v36 = v7 & 0x3F;
    v37 = v36;
    v38 = BlueFin::GlMeSrdCtrlSm::DagcDecode4777(HIBYTE(v9), (v9 << 8) >> 24);
    GlCustomLog(15, "AGC report:: LMS %u %s AAGC %.2f dB DAGC %.2f\n", v2, "L5_E5A", v36, v38);
    v39 = *(this + 25);
    *(v39 + 204) = v36;
    *(v39 + 208) = v38;
    if (v36)
    {
      if (v38 > 0.0)
      {
        if (*(v39 + 1528))
        {
          v40 = *(v39 + 1544);
          if (v40 > 0.0)
          {
            if (v40 <= (v37 + v38))
            {
              v41 = 0;
            }

            else
            {
              v41 = *(v39 + 1516) + 1;
            }

            *(v39 + 1516) = v41;
          }
        }
      }
    }

    v42 = BlueFin::GlMeSrdCtrlSm::DagcDecode4777(HIBYTE(v9), (v9 << 8) >> 24);
    GlCustomLog(15, "AGC report:: LMS %u %s AAGC %.2f dB DAGC %.2f\n", v2, "E5B_BDS2", v36, v42);
    v43 = *(this + 25);
    *(v43 + 204) = v37;
    *(v43 + 212) = v42;
    if (v36)
    {
      if (v42 > 0.0)
      {
        if (*(v43 + 1528))
        {
          v44 = *(v43 + 1548);
          if (v44 > 0.0)
          {
            if (v44 <= (v37 + v42))
            {
              v45 = 0;
            }

            else
            {
              v45 = *(v43 + 1520) + 1;
            }

            *(v43 + 1520) = v45;
          }
        }
      }
    }

    GlCustomLog(15, "AGC report:: LMS %u LTE_Count: %u\n", v2, v5);
    v46 = *(this + 25);
    *(v46 + 796) = *(v46 + 784);
    *(v46 + 784) = v5;
    GlCustomLog(15, "AGC report:: LMS %u L1_PM_Count: %u\n", v2, v49);
    v47 = *(this + 25);
    *(v47 + 800) = *(v47 + 788);
    *(v47 + 788) = v49;
    result = GlCustomLog(15, "AGC report:: LMS %u L5_PM_Count: %u\n", v2, v50);
    v48 = *(this + 25);
    *(v48 + 804) = *(v48 + 792);
    *(v48 + 792) = v50;
  }

  else
  {
    v17 = BlueFin::GlMeSrdCtrlSm::AagcDecode4775(v3, v10);
    if (v4)
    {
      v18 = ((log10f(v4) + ((v4 << 19 >> 27) / 3.3219)) + -1.8062) * 20.0;
    }

    else
    {
      v18 = 0.0;
    }

    v19 = v17;
    if (v3 >= 5)
    {
      v23 = "XXXXXXXX";
      if (v3 == 5)
      {
        v23 = "L2";
      }

      result = GlCustomLog(15, "AGC report:: LMS %u %s AAGC %.2f dB DAGC %.2f\n", v2, v23, v19, v18);
      if (v3 != 5)
      {
        DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 2197, "GotRadioReport", "0");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_ctrl_sm.cpp", 2197, "0");
      }

      v21 = 9;
      v20 = 6;
    }

    else
    {
      v20 = qword_298A34A70[v3];
      v21 = qword_298A34A98[v3];
      result = GlCustomLog(15, "AGC report:: LMS %u %s AAGC %.2f dB DAGC %.2f\n", v2, off_29EEAC378[v3], v19, v18);
    }

    v24 = *(this + 25);
    *(v24 + 180 + 4 * v20) = v19;
    *(v24 + 180 + 4 * v21) = v18;
    if (v19 > 0.0 && v18 > 0.0)
    {
      if (*(v24 + 1528))
      {
        v25 = *(v24 + 4 * v3 + 1532);
        if (v25 > 0.0)
        {
          v26 = v24 + 1504;
          if (v25 <= (v18 + v19))
          {
            v27 = 0;
          }

          else
          {
            v27 = *(v26 + 4 * v3) + 1;
          }

          *(v26 + 4 * v3) = v27;
        }
      }
    }
  }

  return result;
}

uint64_t BlueFin::GlStream::GetS16(BlueFin::GlStream *this)
{
  if (*(this + 6))
  {
    v10 = "m_uiBitOffset == 0";
    DeviceFaultNotify("glutl_stream.cpp", 221, "GetS16", "m_uiBitOffset == 0");
    v11 = 221;
    goto LABEL_14;
  }

  if (*(this + 7))
  {
    v10 = "m_uiBitsRemainingInWord == 0";
    DeviceFaultNotify("glutl_stream.cpp", 222, "GetS16", "m_uiBitsRemainingInWord == 0");
    v11 = 222;
    goto LABEL_14;
  }

  v1 = *this;
  v2 = v1 + 2;
  if ((v1 + 2) > *(this + 4))
  {
    v10 = "m_uiOffset+2<=m_uiMaxOffset";
    DeviceFaultNotify("glutl_stream.cpp", 224, "GetS16", "m_uiOffset+2<=m_uiMaxOffset");
    v11 = 224;
LABEL_14:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_stream.cpp", v11, v10);
  }

  v3 = *(this + 20);
  v4 = *(this + 1);
  v5 = v1 + 1;
  *this = v1 + 1;
  v6 = *(v4 + v1);
  *this = v2;
  v7 = v3 == 0;
  if (v3)
  {
    v8 = *(v4 + v5);
  }

  else
  {
    v8 = v6;
  }

  if (v7)
  {
    v6 = *(v4 + v5);
  }

  return (v8 | (v6 << 8));
}

uint64_t BlueFin::GlMeSrdRpcUtils::gll_utils_rpc_health_profile(uint64_t a1, uint64_t a2)
{
  GlCustomLog(15, "gll_utils_rpc_health_profile1: tcxo_ms_count %u high_speed_ms_count %u cop0_param_stall_counter %u cop0_stall_counter %u cop1_param_stall_counter %u cop1_stall_counter %u \n", *a2, *(a2 + 4), *(a2 + 44), *(a2 + 20), *(a2 + 48), *(a2 + 52));
  GlCustomLog(15, "gll_utils_rpc_health_profile2: rf_on_time %u cpu_on_time %u cop0_on_time %u cop1_on_time %u search_on_time %u trk0_on_time %u trk1_on_time %u max_main %u lm_cpu_on_time %u lm_fft_on_time %u min_block_margin %u \n", *(a2 + 24), *(a2 + 26), *(a2 + 28), *(a2 + 58), *(a2 + 30), *(a2 + 32), *(a2 + 56), *(a2 + 34), *(a2 + 40), *(a2 + 42), *(a2 + 36));
  GlCustomLog(15, "gll_utils_rpc_health_profile3: dma_rx_count %u dma_tx_count %u tl_bytes %u flow_control_status %02x \n", *(a2 + 8), *(a2 + 12), *(a2 + 16), *(a2 + 35));
  if (BlueFin::GlMeSrdAsicConfig::IsMinnowAsicType((*(a1 + 8) + 29288)))
  {
    v8 = "ASIC";
    if (!*(a2 + 72))
    {
      v8 = "FPGA";
    }

    GlCustomLog(15, "gll_utils_rpc_health_profile4: search_decimators 0x%04x track_decimators 0x%08x temp %0.2f temp_index %u pll_thd_det_monitor %d platform %s eram_owners_bitmap 0x%04x memory_pdas 0x%08x  \n", *(a2 + 64), *(a2 + 60), (*(a2 + 66) / 100.0), *(a2 + 68), *(a2 + 69), v8, *(a2 + 70), *(a2 + 140));
    GlCustomLog(15, "gll_utils_rpc_health_profile5: rtc_ms_count %u rtc_offset_status %u rtc_offset_ppb: %u time_xfer_count %u idle_clock %s dc_idle_clock %s cpu_clk %s dsp_clk %s radio_L1_mode 0x%02x AR_L5_Mode 0x%02x DR_mode 0x%02x radio_enables 0x%02x DR_spare 0x%08x  \n", *(a2 + 148), *(a2 + 157), *(a2 + 158), *(a2 + 144), off_29EEAC3C0[*(a2 + 73) & 0xF], *(off_29EEAC3C0 + ((*(a2 + 73) >> 1) & 0x78)), off_29EEAC3E8[*(a2 + 74)], off_29EEAC400[*(a2 + 75)], *(a2 + 76), *(a2 + 77), *(a2 + 78), *(a2 + 79), *(a2 + 160));
    v9 = *(a2 + 80);
    v10 = *(a2 + 84);
    v12 = *(a2 + 88);
    v11 = *(a2 + 92);
    v13 = v10 + v9 + v12 + v11;
    if (v13)
    {
      v14 = *(a2 + 108);
      v15 = *(a2 + 112);
      v16 = *(a2 + 116);
      v17 = *(a2 + 120);
      v18 = v15 + v14 + v16 + v17;
      if (v18)
      {
        v19 = 1000 * v9 / v13;
        v20 = 1000 * v10 / v13;
        v21 = 1000 * v12 / v13;
        v22 = 1000 * v14 / v18;
        v23 = 1000 * v15 / v18;
        v24 = 1000 * v16 / v18;
        if (v18 + v13)
        {
          v25 = 1000 * (v17 + v11) / (v18 + v13);
        }

        else
        {
          v25 = 0;
        }

        GlCustomLog(15, "gll_utils_rpc_health_profile6: tput0 %d mtrk0[gps %d glo %d L5 %d] mtrk1[gps %d glo %d L5 %d] idle %d (%d, %d) total %d (%d, %d)\n", *(a2 + 138) + *(a2 + 136), v19, v20, v21, v22, v23, v24, v25, v11, v17, v18 + v13, v13, v18);
        GlCustomLog(15, "gll_utils_rpc_health_profile7: tput1 act mtrk0[gps %08x glo %08x L5 %08x] mtrk1[gps %08x glo %08x L5 %08x] tput(%d,%d) \n", *(a2 + 96), *(a2 + 100), *(a2 + 104), *(a2 + 124), *(a2 + 128), *(a2 + 132), *(a2 + 136), *(a2 + 138));
        if (*(a2 + 38))
        {
          GlCustomLog(15, "gll_utils_rpc_health_profile8: A0_DAGC_FIX: GPS: %d GLO: %d BDS: %d L5: %d\n", *(a2 + 38) & 0xF, *(a2 + 38) >> 4, HIBYTE(*(a2 + 38)) & 0xF, *(a2 + 38) >> 12);
        }

        GlCustomLog(15, "gll_utils_rpc_health_profile9: rpc_buffer_level: block [ %u %u %u %u %u] \n", *(a2 + 152), *(a2 + 153), *(a2 + 154), *(a2 + 155), *(a2 + 156));
        GlCustomLog(15, "gll_utils_rpc_health_profile10: lm_sbs_received %u lm_sbs_completed %u lm_sbs_deleted %u lm_fft_idle_count %u  lm_total_wait_list_sbs %u lm_prop_iteration_count %u lm_total_miss_count %u lm_queue_full_occurrences %u lm_total_prop_count %u lm_max_prop_iterations %u \n", *(a2 + 164), *(a2 + 168), *(a2 + 172), *(a2 + 176), *(a2 + 180), *(a2 + 184), *(a2 + 188), *(a2 + 192), *(a2 + 196), *(a2 + 200));
      }
    }
  }

  v26 = BlueFin::GlHealthProfileData::GlHealthProfileData(v28, a2, v4, v5, v6, v7);
  if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    (*(v28[0] + 24))(v26, 0, 0);
  }

  return BlueFin::GlMeSrdCtrlSm::SetHealthProfile(*(a1 + 8) + 75168, a2);
}

uint64_t BlueFin::GlMeSrdCtrlSm::SetHealthProfile(uint64_t a1, uint64_t a2)
{
  BlueFin::GlMeSrdPwrMeasController::CheckSigAiding(a1 + 5280, a1 + 1600);
  memset(v5, 0, sizeof(v5));
  v6 = 0x2000100010000;
  v7 = 0u;
  v8 = 0u;
  v9 = 0;
  *v10 = 255;
  v10[2] = 0;
  v11 = 0;
  result = BlueFin::GlMeSrdPwrMeasController::SetHealthProfile(a1 + 5280, a2, v5);
  *(*(a1 + 200) + 808) = *(a2 + 78);
  if (result)
  {
    *&v10[1] = 256;
    return (*(**(a1 + 152) + 16))(*(a1 + 152), v5);
  }

  return result;
}

uint64_t BlueFin::GlMeSrdPwrMeasController::CheckSigAiding(uint64_t result, uint64_t a2)
{
  *(result + 24) = 0;
  v2 = *(a2 + 14);
  if (*(a2 + 14))
  {
    v3 = *(a2 + 16) + 4;
    do
    {
      if ((*(v3 + 1) & 4) != 0)
      {
        *(result + 24) = 1;
      }

      if (*(v3 - 4) - 52 <= 0xD)
      {
        *(result + 25) = 1;
      }

      v3 += 8;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t BlueFin::GlHealthProfileData::GlHealthProfileData(uint64_t result, uint64_t a2, double a3, int8x16_t a4, int8x16_t a5, int8x16_t a6)
{
  *result = &unk_2A1F0B790;
  *(result + 8) = a2;
  *a4.i64 = HIDWORD(*(a2 + 80)) * 100.0 / vaddvq_s32(*(a2 + 80));
  *a6.i64 = *a4.i64 + trunc(*a4.i64 * 2.32830644e-10) * -4294967300.0;
  v6.f64[0] = NAN;
  v6.f64[1] = NAN;
  v7 = vnegq_f64(v6);
  a6.i64[0] = vbslq_s8(v7, a6, a4).u64[0];
  if (*a4.i64 > 4294967300.0)
  {
    a4.i64[0] = a6.i64[0];
  }

  if (*a4.i64 < -4294967300.0)
  {
    *a5.i64 = -*a4.i64;
    *a4.i64 = -(*a4.i64 - trunc(*a4.i64 * -2.32830644e-10) * -4294967300.0);
    *a4.i64 = -*vbslq_s8(v7, a4, a5).i64;
  }

  if (*a4.i64 < 0.0)
  {
    v8 = --*a4.i64;
  }

  else
  {
    LOBYTE(v8) = *a4.i64;
  }

  *(result + 16) = v8;
  v9 = *(a2 + 108);
  *v9.i64 = v9.u32[3] * 100.0 / vaddvq_s32(v9);
  *a5.i64 = *v9.i64 + trunc(*v9.i64 * 2.32830644e-10) * -4294967300.0;
  v10 = vbslq_s8(v7, a5, v9);
  if (*v9.i64 <= 4294967300.0)
  {
    v10.i64[0] = v9.i64[0];
  }

  if (*v10.i64 < -4294967300.0)
  {
    *v9.i64 = -*v10.i64;
    *v10.i64 = -(*v10.i64 - trunc(*v10.i64 * -2.32830644e-10) * -4294967300.0);
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    *v10.i64 = -*vbslq_s8(vnegq_f64(v11), v10, v9).i64;
  }

  if (*v10.i64 < 0.0)
  {
    v12 = --*v10.i64;
  }

  else
  {
    LOBYTE(v12) = *v10.i64;
  }

  *(result + 17) = v12;
  return result;
}

void BlueFin::GlMeSrdPwrMeas::mA_Estimate(uint64_t a1, __int16 *a2, uint64_t a3)
{
  v109 = *MEMORY[0x29EDCA608];
  v6 = (*(**(a1 + 8) + 912))(*(a1 + 8));
  v7 = *a2;
  v8 = a2[5];
  if (!(*(**(a1 + 8) + 264))())
  {
    v25 = v8;
    a2[8] = *a2;
    a2[9] = 0;
    v26 = (*(**(a1 + 8) + 152))(*(a1 + 8));
    if (v26 <= 5 && ((1 << v26) & 0x34) != 0)
    {
      a2[9] = *a2;
    }

    v27 = v7 / v25;
    v28 = v25 / 1000.0;
    if (!(*(**(a1 + 8) + 256))(*(a1 + 8)))
    {
      LOWORD(v29) = a2[26];
      v36.f32[0] = v29 * 13.5;
      v37 = v28 * ((v27 * a2[25]) * 37.5);
      v38 = v36.f32[0] + v37;
      v39 = 11.0;
      v40 = 2.5;
      v41 = 25.0;
      v32 = 1.0;
      v42 = 31.5;
LABEL_82:
      if (a2[5])
      {
        *&v90 = v41 * *a2;
        *&v91 = v42 * a2[24];
        *&v92 = a2[4];
        v93 = v40 * *&v92;
        LOWORD(v92) = a2[27];
        v94 = v39 * v92;
        *v30.i32 = a2[5];
        v36.f32[1] = v37;
        v36.i64[1] = __PAIR64__(v91, v90);
        v95 = ((((v38 + *&v90) + *&v91) + v93) + v94) / *v30.i32;
        v96 = vdivq_f32(v36, vdupq_lane_s32(v30, 0));
        v97 = v93 / *v30.i32;
        v98 = v94 / *v30.i32;
      }

      else
      {
        v96 = 0uLL;
        v95 = 0.0;
        v97 = 0.0;
        v98 = 0.0;
      }

      *(a2 + 3) = v32 + v95;
      *(a2 + 10) = v96;
      *(a2 + 9) = v97;
      *(a2 + 10) = v98;
      *(a2 + 11) = v32;
      goto LABEL_86;
    }

    v31 = 1.0;
    if (v6 <= 36)
    {
      v32 = 1.0;
    }

    else
    {
      v32 = 1.5;
    }

    LOWORD(v31) = a2[26];
    v104 = v28 * ((v27 * v31) * 0.2);
    v102 = a2[25] * 16.0;
    v33 = (*(**(a1 + 8) + 152))(*(a1 + 8));
    v34 = v6 & 0xFFFFFFFD;
    v35 = 0.0;
    if (v33 <= 2)
    {
      v37 = v102;
      v36.f32[0] = v104;
      if (v33 == 1)
      {
        goto LABEL_33;
      }

      if (v33 != 2)
      {
LABEL_78:
        v38 = v37 + v36.f32[0];
        if (*(a1 + 17))
        {
          v41 = v35 + 0.7;
        }

        else
        {
          v41 = v35;
        }

        v39 = 0.0;
        v40 = 8.5;
        v42 = 0.4;
        goto LABEL_82;
      }

      if ((*(a1 + 16) & 1) == 0)
      {
LABEL_33:
        v35 = 9.6;
        if (v6 >= 37)
        {
          v35 = 11.5;
        }

        v43 = -0.64;
      }

      else
      {
        v35 = flt_298A35368[v6 < 37];
        v43 = -1.35;
      }
    }

    else
    {
      v37 = v102;
      v36.f32[0] = v104;
      if (v33 == 3)
      {
        goto LABEL_75;
      }

      if (v33 != 4)
      {
        if (v33 == 5)
        {
          v35 = flt_298A35350[v34 == 36];
        }

        goto LABEL_78;
      }

      if ((*(a1 + 16) & 1) == 0)
      {
LABEL_75:
        v35 = flt_298A35358[v6 < 37];
        v43 = -0.3;
      }

      else
      {
        v35 = flt_298A35360[v6 < 37];
        v43 = -1.09;
      }
    }

    v89 = v35 + v43;
    if (v34 == 36)
    {
      v35 = v89;
    }

    goto LABEL_78;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = *(a3 + 78);
  v14 = *a2;
  v15 = a2[5];
  v107[0] = xmmword_298A35390;
  v107[1] = xmmword_298A353A0;
  v108 = 0x3FA60418A0000000;
  v106 = 0x3F8CAC0840000000;
  v16 = (*(a3 + 140) >> 13) & 0x1F;
  v17 = *(a3 + 140) & 0x1F;
  v105[0] = xmmword_298A353B0;
  v105[1] = xmmword_298A353C0;
  do
  {
    v11 += v16 & 1;
    v16 >>= 1;
    v10 += v17 & 1;
    v17 >>= 1;
  }

  while (v12++ < 4);
  v19 = v15;
  v20 = v14;
  HIWORD(v21) = 17530;
  v22 = *(a3 + 79);
  v23 = (v22 & 0xF) != 0 && v22 > 0xF;
  if ((v22 & 0xF) != 0)
  {
    if (v13)
    {
      v24 = *(a3 + 76) & 3;
    }

    else
    {
      v24 = (v13 >> 1) & 3;
    }
  }

  else
  {
    if ((v13 & 0x30) == 0x20)
    {
      v24 = 3;
    }

    else
    {
      v44 = *(a3 + 160);
      if (v44)
      {
        v45 = *(a3 + 77);
      }

      else
      {
        v45 = v44 >> 1;
      }

      v24 = v45 & 1;
    }

    v23 = 2;
  }

  v46 = *(a3 + 75);
  v47 = v20 / v19;
  v48 = flt_298A353E0[3 * v24 + v23] * v20;
  v49 = 0.0;
  if (!*(a3 + 79))
  {
    v48 = 0.0;
  }

  v50 = *(a3 + 60);
  v51 = 0.0;
  v52 = v19 / 1000.0;
  v53 = v50 & 0x1F7FFF;
  if ((v50 & 0x1F7FFF) != 0)
  {
    v54 = 0;
    v55 = 0;
    v51 = 0.033;
    do
    {
      if (v53)
      {
        v21 = flt_298A35458[v55];
        v51 = v51 + v21;
      }

      v56 = v54 <= 0xC || v54 == 14;
      ++v54;
      if (!v56)
      {
        ++v55;
      }

      v57 = v53 > 1;
      v53 >>= 1;
    }

    while (v57);
  }

  LOWORD(v21) = a2[26];
  v58 = v52 * (v47 * LODWORD(v21));
  LOWORD(v9) = a2[32];
  v59 = v47 * v9;
  if ((v50 & 0x8000) != 0)
  {
    v49 = (v20 - v58) * flt_298A35474[v46 + 2];
  }

  v60 = v52 * v59;
  if ((v50 & 0x1000000) != 0)
  {
    v49 = v49 + (flt_298A35474[v46 + 2] * (v20 - v60));
  }

  v61 = 0.0;
  v62 = 0.0;
  v63 = *(a3 + 64) & 0x3FF;
  if ((*(a3 + 64) & 0x3FF) != 0)
  {
    do
    {
      if (v63)
      {
        v62 = v62 + 0.061;
      }

      v57 = v63 > 1;
      v63 >>= 1;
    }

    while (v57);
  }

  v64 = 0.0;
  v65 = 0.0;
  v66 = flt_298A35410[3 * v24 + v23];
  v67 = 0.0;
  v68 = 0.0;
  v69 = 0.0;
  v70 = 0.0;
  v71 = 0.0;
  v72 = 0.0;
  v73 = 0.0;
  v74 = 0.0;
  if (v15)
  {
    v77 = (flt_298A35380[v46] * v20) * v10;
    v79 = v51 * v20;
    v80 = flt_298A35474[v46] * (v58 + v60);
    if ((*(a3 + 64) & 0x400) != 0)
    {
      v62 = v62 + 0.661;
    }

    v81 = (&unk_298A353D0 + 4 * v46);
    v64 = (v62 * v20) / v19;
    v65 = (*v81 * v20) / v19;
    v67 = (v81[2] * a2[25]) / v19;
    v69 = v48 / v19;
    v68 = (flt_298A35474[v46 + 4] * (a2[24] + a2[31])) / v19;
    v76 = *(a3 + 73);
    v75 = *(a3 + 74);
    v78 = (flt_298A35440[v75] * a2[4]) + *(v107 + (v76 & 7)) * (v20 - a2[4]) + *(v107 + ((v76 >> 4) & 7)) * (v19 - v20) + (flt_298A3544C[v75] * a2[30]) + *(v105 + (v76 & 7)) * (v20 - a2[30]) + *(v105 + ((v76 >> 4) & 7)) * (v19 - v20);
    v61 = v78 / v19;
    v72 = (v20 * 0.21) / v19;
    v71 = (flt_298A35378[v46] * v20) / v19;
    v74 = ((((flt_298A35388[v46] * v20) / v19) + (v79 / v19)) + (v80 / v19)) + (v49 / v19);
    v73 = v20 / v19;
    v70 = v77 / v19;
  }

  v100 = v69;
  v101 = v68;
  v103 = v61;
  if (*(a3 + 79))
  {
    v82 = v66;
  }

  else
  {
    v82 = 0.0;
  }

  v83 = ((v70 + (v71 + (v72 + (v61 + (v68 + (v69 + (v67 + (v65 + (v64 + v74))))))))) + 0.488) + (v11 * -0.014);
  v84 = BlueFin::GlMeSrdPwrMeas::EstimatePMU_Eff(1, v83, v82, v73);
  v85 = BlueFin::GlMeSrdPwrMeas::EstimatePMU_Eff(0, v83, v82, v73);
  v86 = (v82 * v73) * (27.027 / v84);
  *(a2 + 3) = v86 + ((v83 - (v82 * v73)) * (27.027 / v85));
  *(a2 + 5) = v74 * (27.027 / v85);
  *(a2 + 6) = ((v64 + v65) + v67) * (27.027 / v85);
  *(a2 + 7) = v86 + ((v100 - (v82 * v73)) * (27.027 / v85));
  *(a2 + 8) = v101 * (27.027 / v85);
  *(a2 + 9) = v103 * (27.027 / v85);
  *(a2 + 10) = 0;
  *(a2 + 19) = v83;
  *(a2 + 11) = (27.027 / v85) * 0.488;
  if ((v22 & 0xF) != 0)
  {
    v87 = v14;
  }

  else
  {
    v87 = 0;
  }

  a2[8] = v87;
  if (v22 <= 0xF)
  {
    v88 = 0;
  }

  else
  {
    v88 = v14;
  }

  a2[9] = v88;
LABEL_86:
  v99 = *MEMORY[0x29EDCA608];
}

uint64_t BlueFin::GlMeSrdRpcEvtCtrl::gll_sysevt_rpc_burst_context(uint64_t result, unsigned __int16 *a2)
{
  v3 = result;
  v4 = a2[5];
  v5 = a2[6];
  if ((*(a2 + 9) + *(a2 + 8) + v4) | v5)
  {
    result = GlCustomLog(14, "WARNING: Troughput problems; %d packets %d bytes lost\n", *(a2 + 9) + *(a2 + 8), v5 + v4);
  }

  if (*(*(*(v3 + 8) + 120) + 544) == 1)
  {
    result = GlCustomLog(14, "SystemEvent::BurstContext(MsecUntilNextBurst %hu TimeStamp %u NumDiscarded HpMethods %u LpMethods %u HpBytes %hu Lpbytes %hu)\n", *a2, *(a2 + 1), *(a2 + 8), *(a2 + 9), a2[5], a2[6]);
    if (a2[5] || a2[6] || *(a2 + 8) || *(a2 + 9))
    {
      DeviceFaultNotify("glmesrd_evt_ctrl.cpp", 258, "gll_sysevt_rpc_burst_context", "context->num_discarded_hp_bytes == 0 && context->num_discarded_lp_bytes == 0 && context->num_discarded_hp_methods == 0 && context->num_discarded_lp_methods == 0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_evt_ctrl.cpp", 258, "context->num_discarded_hp_bytes == 0 && context->num_discarded_lp_bytes == 0 && context->num_discarded_hp_methods == 0 && context->num_discarded_lp_methods == 0");
    }
  }

  return result;
}

uint64_t BlueFin::GlMeSrdRpcEvtCtrl::gll_sysevt_rpc_heartbeat(BlueFin::GlMeSrdRpcEvtCtrl *this, unsigned int a2, int a3, int a4, __int16 a5, __int16 a6, __int16 a7, char a8)
{
  v8 = *(this + 1);
  *(v8 + 136) = a2 * 0.001;
  *(v8 + 152) = a2;
  *(v8 + 156) = a3;
  *(v8 + 160) = a4;
  *(v8 + 164) = a5;
  *(v8 + 166) = a6;
  *(v8 + 168) = a7;
  *(v8 + 170) = a8;
  if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    (*(*(v8 + 128) + 24))(v8 + 128, 0, 0);
    v8 = *(this + 1);
  }

  v10 = *(**(v8 + 112) + 16);

  return v10();
}

void BlueFin::GlMeSrdRpcEvtCtrl::gll_sysevt_rpc_time_captured(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned __int16 a5, unsigned int a6, __int16 a7)
{
  v13 = a5;
  v14 = (*(**(a1 + 16) + 320))(*(a1 + 16));
  v15 = v13 / (1023 * v14) + a3 + a4 / ((522753 * v14) * 8388608.0) + 1.0 / (*(**(a1 + 16) + 88))(*(a1 + 16)) * -2.0 * 1000.0;
  if (a2 > 7)
  {
    goto LABEL_5;
  }

  if (((1 << a2) & 0x24) != 0)
  {
    v18 = *(a1 + 8);
    *(v18 + 224) = v15;
    *(v18 + 232) = a7 & 0x7FF | (a6 << 11);
    *(v18 + 236) = a6 >> 21;
    v17 = *(**(v18 + 112) + 40);

    goto LABEL_28;
  }

  if (((1 << a2) & 0x48) != 0)
  {
    v19 = *(a1 + 8);
    v20 = v19 + 352;
    v21 = *(v19 + 345);
    v22 = v19 + 352 + 16 * v21;
    *v22 = v15;
    *(v22 + 8) = a6;
    v23 = (v21 + 1) & 3;
    *(v19 + 345) = v23;
    v24 = *(v19 + 344);
    if (v24 < 3)
    {
      v25 = v24 + 1;
    }

    else
    {
      v25 = 4;
    }

    *(v19 + 344) = v25;
    if (v25 < 2)
    {
      DeviceFaultNotify("glmesrd_evt_ctrl.cpp", 438, "CntinCaptureUpdate", "0");
      v33 = 438;
      goto LABEL_32;
    }

    v26 = v23 - v25 + 4 - ((v23 - v25 + 4 + (((v23 - v25 + 4) & 0xC000) >> 14)) & 0xFFFFFFFC);
    v27 = v20 + 16 * ((v23 - 1) & 3);
    v28 = ((*(v27 + 8) - *(v20 + 16 * v26 + 8)) * 1000.0 * 0.0000305175781 - (*v27 - *(v20 + 16 * v26))) / (*v27 - *(v20 + 16 * v26));
    *(v19 + 416) = v28;
    if (v24 >= 3)
    {
      v24 = 3;
    }

    while (1)
    {
      v29 = v20 + 16 * ((v26 + 1) & 3);
      v30 = ((*(v29 + 8) - *(v20 + 16 * (v26 & 3) + 8)) * 1000.0 * 0.0000305175781 - (*v29 - *(v20 + 16 * (v26 & 3)))) / (*v29 - *(v20 + 16 * (v26 & 3)));
      if (fabs(v30) > 0.00001 || vabdd_f64(v30, v28) > 0.00000004)
      {
        break;
      }

      LOBYTE(v26) = v26 + 1;
      if (!--v24)
      {
        goto LABEL_25;
      }
    }

    GlCustomLog(12, "TCXO offset from CNTIN is too big (%.1g PPB)!\n", v30 * 1000000000.0);
    v31 = (v19 + 360);
    v32 = 4;
    do
    {
      *(v31 - 1) = 0xBFF0000000000000;
      *v31 = 0;
      v31 += 4;
      --v32;
    }

    while (v32);
    *(v19 + 416) = 0;
    *(v19 + 344) = 0;
    v19 = *(a1 + 8);
    v25 = *(v19 + 344);
LABEL_25:
    if (v25 >= 2)
    {
      v17 = *(**(v19 + 112) + 48);

      goto LABEL_28;
    }
  }

  else if (((1 << a2) & 0x90) == 0)
  {
LABEL_5:
    if (a2 == 1)
    {
      v16 = *(a1 + 8);
      *(v16 + 216) = v15;
      v17 = *(**(v16 + 112) + 32);

LABEL_28:
      v17();
      return;
    }

    DeviceFaultNotify("glmesrd_evt_ctrl.cpp", 168, "gll_sysevt_rpc_time_captured", "0");
    v33 = 168;
LABEL_32:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_evt_ctrl.cpp", v33, "0");
  }
}

uint64_t (*(*(*(*BlueFin::GlMeSrdCtrlSm::steady(BlueFin::GlMeSrdCtrlSm *this, unsigned __int8 *a2, double a3, double a4, double a5))(uint64_t a1, unsigned __int8 *a2))(BlueFin::GlMeSrdCtrlSm *this, unsigned __int8 *a2))(uint64_t a1, unsigned __int8 *a2))()
{
  v6 = *a2;
  v7 = BlueFin::GlMeSrdCtrlSm::normal;
  if (v6 > 0x1B)
  {
    if (*a2 > 0x23u)
    {
      if (v6 == 36)
      {
        if ((*(this + 3562) & 0x20) == 0)
        {
          (*(**(this + 16) + 16))(*(this + 16), *(this + 886));
          v7 = 0;
          *(this + 108) = 1;
          return v7;
        }

        return 0;
      }

      if (v6 == 37)
      {
        BlueFin::GlMeSrdCtrlSm::SetBlankingConfig(this);
        BlueFin::GlTimer::disarm(this + 212);
        return 0;
      }

      if (v6 != 59)
      {
        return v7;
      }

      v10 = (*(**(this + 17) + 1392))(*(this + 17));
      v7 = BlueFin::GlMeSrdCtrlSm::normal;
      if (!v10)
      {
        return v7;
      }

      v8 = "&GlMeSrdCtrlSm::wait4extsuspend";
      v9 = BlueFin::GlMeSrdCtrlSm::wait4extsuspend;
    }

    else
    {
      if (v6 == 28)
      {
        (*(**(this + 16) + 24))(*(this + 16), this + 1600);
        return 0;
      }

      if (v6 == 29)
      {
        (*(**(this + 16) + 32))(*(this + 16));
        BlueFin::GlQueue::putFIFO((this + 40), 36, 0);
        return 0;
      }

      if (v6 != 31)
      {
        return v7;
      }

      if (a2[1] != 1)
      {
        v84 = "e->par == 1";
        DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 2757, "steady", "e->par == 1");
        v85 = 2757;
        goto LABEL_123;
      }

      v8 = "&GlMeSrdCtrlSm::geofence";
      v9 = BlueFin::GlMeSrdCtrlSm::geofence;
    }

    BlueFin::QHsm::tran(this, v9, v8);
    return 0;
  }

  if (*a2 <= 0xFu)
  {
    if (v6 == 2)
    {
      v11 = *(this + 15);
      if (!v11)
      {
        v11 = *(this + 14);
      }

      (*(*v11 + 88))(v11, this + 5320);
      (*(**(this + 16) + 24))(*(this + 16), this + 1600);
      (*(**(this + 16) + 32))(*(this + 16));
      if ((*(this + 3562) & 0x20) == 0)
      {
        (*(**(this + 16) + 16))(*(this + 16), *(this + 886));
        *(this + 108) = 1;
      }

      if (*(this + 3324))
      {
        v12 = 260;
      }

      else
      {
        v12 = 284;
        if (*(this + 3340))
        {
          v12 = 276;
        }
      }

      v53 = *(this + v12 + 3072);
      goto LABEL_90;
    }

    if (v6 != 3)
    {
      if (v6 != 15)
      {
        return v7;
      }

      if (((*(**(this + 17) + 184))(*(this + 17)) & 0xF000FFFF) == 0x30000013)
      {
        BlueFin::QHsm::isIn(this, BlueFin::GlMeSrdCtrlSm::extsuspend);
      }

      else
      {
        v26 = (*(**(this + 17) + 184))(*(this + 17));
        if (!BlueFin::QHsm::isIn(this, BlueFin::GlMeSrdCtrlSm::extsuspend) && (v26 & 0xF000FFFF) != 0x30000015)
        {
          v27 = *(this + 15);
          if (!v27)
          {
            v27 = *(this + 14);
          }

          v28 = (*(*v27 + 80))(v27);
          v86 = 0uLL;
          LOBYTE(v87) = 0;
          *(&v87 + 1) = 1;
          *(&v87 + 1) = v28;
          LODWORD(v88) = 0;
          WORD2(v88) = 0;
          (*(*v28 + 16))(v28, 1);
          v97 = xmmword_298A34060;
          v29 = (*(*v28 + 48))(v28);
          v30 = (*(*v29 + 40))(v29);
          (*(*v30 + 16))(v30, &v86, &v97);
          BlueFin::GlMeSrdTransaction::Complete(&v86);
          BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(&v86);
        }
      }

      ++*(this + 34523);
      if ((*(**(this + 17) + 264))(*(this + 17)))
      {
        BlueFin::GlMeSrdMeasTimingMgr::SetHeartBeat((this + 3072), *(this + 886));
        ReportingLms = BlueFin::GlMeSrdMeasTimingMgr::GetReportingLms((this + 3072));
        BlueFin::GlMeSrdStats::SetHeartbeatMs(*(this + 25), ReportingLms);
        (*(**(this + 20) + 176))(*(this + 20), *(this + 25) + 8);
        (*(**(this + 23) + 32))(*(this + 23), ReportingLms);
        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        v90 = 0x2000100010000;
        v91 = 0u;
        v92 = 0u;
        v93 = 0;
        v94 = 255;
        v95 = 0;
        v96 = 0;
        if (BlueFin::GlMeSrdPwrMeasController::SetHeartbeat(this + 5280, *(this + 886), *(this + 1779), *(this + 1778), &v86))
        {
          (*(**(this + 19) + 16))(*(this + 19), &v86);
        }

        (*(**(this + 19) + 24))(*(this + 19), ReportingLms, 1000);
        if ((*(this + 108) & 1) == 0 && (*(this + 3562) & 0x20) == 0)
        {
          (*(**(this + 16) + 16))(*(this + 16), *(this + 886));
          *(this + 108) = 1;
        }

        *(this + 108) = 0;
        v32 = *(this + 17);
        if ((*(v32 + 1504) & 1) != 0 || (*(v32 + 1505) & 1) != 0 || *(v32 + 1506) == 1)
        {
          v97 = 0uLL;
          v99 = 0;
          v98 = 0;
          v33 = *(this + 15);
          if (!v33)
          {
            v33 = *(this + 14);
          }

          v34 = (*(*v33 + 80))(v33);
          v86 = 0uLL;
          LOBYTE(v87) = 0;
          *(&v87 + 1) = 1;
          *(&v87 + 1) = v34;
          LODWORD(v88) = 0;
          WORD2(v88) = 0;
          (*(*v34 + 16))(v34, 1);
          GlCustomLog(14, "DisableBlanking\n");
          BYTE8(v97) = 0;
          LOBYTE(v97) = 0;
          DWORD1(v97) = 0;
          v35 = (*(*v34 + 48))(v34);
          v36 = (*(*v35 + 16))(v35);
          (*(*v36 + 136))(v36, &v86, &v97);
          DWORD1(v97) = 2;
          v37 = (*(**(&v87 + 1) + 48))(*(&v87 + 1));
          v38 = (*(*v37 + 16))(v37);
          (*(*v38 + 136))(v38, &v86, &v97);
          DWORD1(v97) = 1;
          v39 = (*(**(&v87 + 1) + 48))(*(&v87 + 1));
          v40 = (*(*v39 + 16))(v39);
          (*(*v40 + 136))(v40, &v86, &v97);
          DWORD1(v97) = 3;
          v41 = (*(**(&v87 + 1) + 48))(*(&v87 + 1));
          v42 = (*(*v41 + 16))(v41);
          (*(*v42 + 136))(v42, &v86, &v97);
          if ((*(**(this + 17) + 256))(*(this + 17)))
          {
            DWORD1(v97) = 4;
            v43 = (*(**(&v87 + 1) + 48))(*(&v87 + 1));
            v44 = (*(*v43 + 16))(v43);
            (*(*v44 + 136))(v44, &v86, &v97);
            DWORD1(v97) = 5;
            v45 = (*(**(&v87 + 1) + 48))(*(&v87 + 1));
            v46 = (*(*v45 + 16))(v45);
            (*(*v46 + 136))(v46, &v86, &v97);
            DWORD1(v97) = 6;
            v47 = (*(**(&v87 + 1) + 48))(*(&v87 + 1));
            v48 = (*(*v47 + 16))(v47);
            (*(*v48 + 136))(v48, &v86, &v97);
          }

          BlueFin::GlMeSrdTransaction::Complete(&v86);
          BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(&v86);
          *(this + 216) = this;
          BlueFin::GlTimer::arm((this + 1696), 37, 0, 0x96u);
          *(this + 1720) = 1;
          v49 = *(this + 17);
          *(v49 + 1512) = 0;
          *(v49 + 1504) = 0;
          *(v49 + 1592) = 0;
          *(v49 + 1600) = 0;
          v32 = *(this + 17);
        }

        if (*(v32 + 1184) != 1)
        {
          goto LABEL_85;
        }

        v50 = *(this + 886);
        if (v50 <= *(v32 + 1200))
        {
          v54 = *(v32 + 1188);
          v55 = v50 >= v54;
          v56 = v50 - v54;
          if (v56 == 0 || !v55)
          {
            goto LABEL_85;
          }

          v57 = *(v32 + 1192);
          v58 = v56 % (*(v32 + 1196) + v57);
          v51 = *(this + 1360);
          if (v58 < v57)
          {
            if (v51 == 1)
            {
              goto LABEL_85;
            }

            v52 = 1;
            goto LABEL_77;
          }
        }

        else
        {
          v51 = *(this + 1360);
        }

        if (!v51)
        {
LABEL_85:
          if (*(this + 3324))
          {
            v59 = 260;
          }

          else
          {
            v59 = 284;
            if (*(this + 3340))
            {
              v59 = 276;
            }
          }

          v53 = *(this + v59 + 3072);
LABEL_90:
          if (*(this + 1678) > v53)
          {
            v53 = *(this + 1678);
          }

          v60 = 5 * v53;
          if (v60 >= 0x4E20)
          {
            v60 = 20000;
          }

          *(this + 211) = this;
          BlueFin::GlTimer::arm((this + 1656), 5, 0, v60 + 250);
          v7 = 0;
          *(this + 1680) = 1;
          return v7;
        }

        v52 = 0;
LABEL_77:
        BlueFin::GlMeSrdCtrlSm::SetPowerState(this, v52);
        goto LABEL_85;
      }

      v84 = "0";
      DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 2230, "ReadAGCvalues", "0");
      v85 = 2230;
LABEL_123:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_ctrl_sm.cpp", v85, v84);
    }

    *(this + 807) = 0;
    (*(**(this + 16) + 24))(*(this + 16), this + 1600);
    if ((*(this + 3562) & 0x20) == 0)
    {
      (*(**(this + 16) + 16))(*(this + 16), *(this + 886));
      *(this + 108) = 1;
    }

    v14 = *(this + 15);
    if (!v14)
    {
      v14 = *(this + 14);
    }

    v15 = (*(*v14 + 80))(v14);
    v86 = 0uLL;
    LOBYTE(v87) = 0;
    *(&v87 + 1) = 1;
    *(&v87 + 1) = v15;
    LODWORD(v88) = 0;
    WORD2(v88) = 0;
    (*(*v15 + 16))(v15, 1);
    v16 = (*(*v15 + 48))(v15);
    v17 = (*(*v16 + 40))(v16);
    (*(*v17 + 24))(v17, &v86, 2);
    BlueFin::GlMeSrdTransaction::Complete(&v86);
    v18 = *(this + 15);
    if (!v18)
    {
      v18 = *(this + 14);
    }

    (*(*v18 + 96))(v18, this + 5320);
    BlueFin::GlTimer::disarm(this + 207);
    BlueFin::GlTimer::disarm(this + 212);
    BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(&v86);
    return 0;
  }

  if (v6 == 16)
  {
    BlueFin::GlMeSrdMeasTimingMgr::SetSubHeartBeat((this + 3072), *(this + 898));
    v13 = *(this + 842);
    (*(**(this + 23) + 40))(*(this + 23), v13);
    (*(**(this + 19) + 24))(*(this + 19), v13, 200);
    return 0;
  }

  if (v6 != 19)
  {
    if (v6 != 23)
    {
      return v7;
    }

    BlueFin::GlMeSrdCtrlSm::GotRadioReport(this);
    return 0;
  }

  v19 = *(this + 452);
  LODWORD(a4) = *(this + 906);
  LOWORD(a5) = *(this + 1814);
  v20 = (*&a4 + *&a5 * 4294967300.0) * 0.0000305175781;
  v21 = v20 * 1000.0;
  v22 = *(this + 4328);
  if (v22 == 1.79769313e308 && *(this + 4329) == 1.79769313e308)
  {
    if (*(this + 4330) == 1.79769313e308 && *(this + 4331) == 1.79769313e308)
    {
      *(this + 4328) = v21;
      *(this + 4329) = v19;
    }
  }

  else if (*(this + 4330) == 1.79769313e308 && *(this + 4331) == 1.79769313e308)
  {
    *(this + 4330) = v21;
    *(this + 4331) = v19;
    v23 = (v21 - v22 - (v19 - *(this + 4329))) / (v19 - *(this + 4329));
    v24 = *(this + 4332);
    if (v24 == 1.79769313e308)
    {
      v25 = 0.00000006;
    }

    else
    {
      v61 = v24 - v23;
      if (v24 - v23 < 0.0)
      {
        v61 = -(v24 - v23);
      }

      v25 = fmax(v61, 0.00000006);
      v23 = v24 * 0.98 + v23 * 0.02;
    }

    v62 = *(this + 8668);
    v63 = v62 < 0xA;
    if (v25 * 1000000.0 < 1.0)
    {
      v63 = 0;
    }

    v64 = v62 + v63;
    v65 = v64 != 0;
    *(this + 4332) = v23;
    *(this + 4333) = v25;
    if (v25 * 1000000.0 >= 1.0)
    {
      v65 = 0;
    }

    *(this + 8668) = v64 - v65;
    (*(**(this + 20) + 152))(*(this + 20));
    *(this + 2164) = *(this + 2165);
    *(this + 2165) = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v19 = *(this + 452);
    LODWORD(v66) = *(this + 906);
    LOWORD(v67) = *(this + 1814);
    v20 = (v66 + v67 * 4294967300.0) * 0.0000305175781;
  }

  v68 = v19 * 0.001;
  v69 = *(this + 4318);
  v70 = v20 - v69;
  v71 = v68 - *(this + 4317);
  v72 = v71 - (v20 - v69);
  if (v72 < 0.0)
  {
    v72 = -v72;
  }

  if (v70 > 0.03 && v69 != 0.0 && v71 >= 0.0)
  {
    v73 = v72 / v70 * 1000000.0;
    v74 = *(this + 4326);
    v75 = fmax(v74 * 5.0, 3.5);
    v76 = v73 - *(this + 4325) / 5.0;
    if (v76 >= 0.0)
    {
      v77 = v73 - *(this + 4325) / 5.0;
    }

    else
    {
      v77 = -v76;
    }

    GlCustomLog(15, "HS-RTC Double Difference: Lms(Sec) %.2f, deltaLmsSec %.6f deltaRtcSec %.6f deltaLmsRtcPpm %.3f Running Std Dev %f TimeDiff %f Threshold %f\n", v68, v71, v70, v73, v74, v77, v75);
    v78 = (this + 34560);
    if (v77 <= v75)
    {
      v79 = *(this + 34552);
      *(this + 4325) = *(this + 4325) + v73 - v78[v79];
      v78[v79] = v73;
      v80 = (v79 + 1) % 5u;
      *(this + 34552) = v80;
      if (*(this + 34616) == 1)
      {
        v81 = 0;
        v82 = 0.0;
        do
        {
          v82 = v82 + (v78[v81] - *(this + 4325) / 5.0) * (v78[v81] - *(this + 4325) / 5.0);
          ++v81;
        }

        while (v81 != 5);
        *(this + 4326) = sqrt(v82 / 5.0);
        (*(**(this + 4316) + 344))(*(this + 4316), v73, v77);
      }

      else if (!v80)
      {
        *(this + 34616) = 1;
      }
    }

    else
    {
      *(this + 34552) = 0;
      *v78 = 0u;
      *(this + 2161) = 0u;
      *(this + 2162) = 0u;
      *(this + 4326) = 0x412E848000000000;
      *(this + 34616) = 0;
      GlCustomLog(14, "HS-RTC Double Difference: Anomaly Detected !! (%f > %f)\n", v77, v75);
      (*(**(this + 4316) + 336))();
    }
  }

  v7 = 0;
  *(this + 4318) = v20;
  *(this + 4317) = v68;
  return v7;
}

void sub_2987B9D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(va);
  _Unwind_Resume(a1);
}

BlueFin::GlDbgCodec *BlueFin::GlDbgPeIf::SetRtcMeas(BlueFin::GlDbgPeIf *this, double a2, double a3)
{
  v11 = a3;
  v12 = a2;
  v6 = (*(**(this + 1) + 112))(*(this + 1));
  result = *(this + 1);
  if (!*(result + 101))
  {
    BlueFin::GlDbgCodec::WriteStart(result, 4637);
    v8 = *(this + 1);
    if ((*(*v8 + 120))(v8))
    {
      BlueFin::GlDbgCodec::Write(v8, &v12);
    }

    if (v6 >= 0xC1)
    {
      v9 = *(this + 1);
      if ((*(*v9 + 120))(v9))
      {
        BlueFin::GlDbgCodec::Write(v9, &v11);
      }
    }

    (*(**(this + 1) + 32))(*(this + 1), 1);
    (*(**(this + 2) + 152))(*(this + 2), a2, a3);
    BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 4637);
    v10 = *(**(this + 1) + 32);

    return v10();
  }

  return result;
}

unint64_t BlueFin::GlMeSrdEvtListener::OnRadioReportReceived(BlueFin::GlMeSrdEvtListener *this)
{
  v4 = 23;
  v1 = *(this + 1);
  v2 = *(v1 + 32);
  result = *(v1 + 8);
  *(v1 + 32) = result;
  do
  {
    v5 = 0;
    if (BlueFin::patch_dispatch(result, v1, &v4, &v5))
    {
      result = v5;
    }

    else
    {
      result = (*(v1 + 32))(v1, &v4);
    }

    *(v1 + 32) = result;
  }

  while (result);
  *(v1 + 32) = v2;
  return result;
}

uint64_t BlueFin::GlMeSrdRpcEvtCtrl::gll_sysevt_rpc_radio_report(uint64_t a1, int a2, _OWORD *a3)
{
  v3 = *(a1 + 8);
  *(v3 + 256) = a2;
  *(v3 + 260) = 0;
  v3 += 264;
  v5 = a3[2];
  v4 = a3[3];
  v6 = a3[1];
  *(v3 + 60) = *(a3 + 60);
  *(v3 + 32) = v5;
  *(v3 + 48) = v4;
  *(v3 + 16) = v6;
  *v3 = *a3;
  v7 = *(a1 + 8);
  *(v7 + 340) = 0;
  return (*(**(v7 + 112) + 64))();
}

double BlueFin::GlMeSrdCtrlSm::DagcDecode4777(BlueFin::GlMeSrdCtrlSm *this, int a2)
{
  if (!this)
  {
    DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 2350, "DagcDecode4777", "ulFracPart != 0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_ctrl_sm.cpp", 2350, "ulFracPart != 0");
  }

  return (((log10f(this) + (a2 / 3.3219)) + -1.8062) * 20.0);
}

uint64_t BlueFin::GlMeSrdPwrMeasController::SetHealthProfile(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(**(a1 + 32) + 760))(*(a1 + 32));
  if (v6)
  {
    v7 = *(a1 + 8);
    v8 = *a2;
    *(a1 + 4) = v7 + *(a2 + 26);
    *a1 = 1;
    *(a1 + 8) = v8;
    v9 = *(a2 + 24);
    *a3 = v9;
    *(a3 + 4) = v9;
    v10 = (*(**(a1 + 32) + 256))();
    v11 = *(a2 + 40);
    if (!v10)
    {
      v11 = 0;
    }

    *(a3 + 8) = v11 + *(a2 + 26);
    *(a3 + 48) = *(a2 + 28);
    *(a3 + 108) = *(a2 + 36);
    if ((*(**(a1 + 32) + 248))(*(a1 + 32)))
    {
      v13 = 30;
    }

    else
    {
      v14 = (*(**(a1 + 32) + 240))(*(a1 + 32));
      v13 = 42;
      if (v14)
      {
        v13 = 30;
      }
    }

    v15 = v8 - v7;
    *(a3 + 50) = *(a2 + v13);
    LODWORD(v12) = *(a2 + 16);
    v16 = v12 / 57.6;
    *(a3 + 52) = *(a2 + 32);
    if (v16 <= 0.0)
    {
      v17 = 0;
    }

    else
    {
      v17 = (v16 + 0.5);
    }

    *(a3 + 54) = v17;
    *(a3 + 56) = *a2;
    *(a3 + 60) = *(a2 + 40);
    HIDWORD(v18) = *(a2 + 56);
    LODWORD(v18) = HIDWORD(v18);
    *(a3 + 62) = v18 >> 16;
    *(a3 + 66) = *(a2 + 74);
    *(a3 + 68) = *(a2 + 75);
    *(a3 + 70) = *(a2 + 73) & 0xF;
    *(a3 + 72) = *(a2 + 66) / 100.0;
    *(a3 + 112) = *(a2 + 188);
    if ((*(**(a1 + 32) + 264))() && !*(a2 + 72))
    {
      *(a3 + 8) /= 3;
      *(a3 + 48) /= 3;
      *(a3 + 52) /= 3u;
      *(a3 + 60) /= 3;
      *(a3 + 62) /= 3;
      *(a3 + 64) /= 3u;
      *(a3 + 50) /= 3;
    }

    if (*a1 == 1)
    {
      v19 = *a2 - *(a1 + 4);
    }

    else
    {
      LOWORD(v19) = 0;
    }

    *(a3 + 2) = v15 - v19;
    *(a3 + 4) = v15;
    *(a3 + 6) = v19;
    *(a3 + 10) = v15;
    BlueFin::GlMeSrdPwrMeas::mA_Estimate(a1 + 8, a3, a2);
    *a1 = 0;
  }

  return v6;
}

float BlueFin::GlMeSrdPwrMeas::EstimatePMU_Eff(BlueFin::GlMeSrdPwrMeas *this, float a2, float a3, float a4)
{
  if (this)
  {
    v4 = 1;
    v5 = a3 / 0.9;
  }

  else
  {
    v5 = (a2 - (a3 * a4)) / 0.67;
    v4 = 2;
  }

  v6 = dword_298A3548C;
  v7 = &dword_298A3548C[v4];
  v8 = 10;
  for (i = v7; ; i += 3)
  {
    v10 = v6[3];
    if (v5 < v10)
    {
      break;
    }

    v6 += 3;
    if (!--v8)
    {
      return *(v7 + 30);
    }
  }

  return *i + (((v5 - *v6) / (v10 - *v6)) * (i[3] - *i));
}

double BlueFin::GlPowerMeas::operator=(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 109) & 1) == 0)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 10) = *(a2 + 10);
    *(a1 + 12) = *(a2 + 12);
    *(a1 + 16) = *(a2 + 16);
  }

  *(a1 + 20) = *(a2 + 20);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 44) = *(a2 + 44);
  if ((*(a2 + 110) & 1) == 0)
  {
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 104) = *(a2 + 104);
  }

  *(a1 + 108) = *(a2 + 108);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 68) = *(a2 + 68);
  result = *(a2 + 72);
  *(a1 + 72) = result;
  *(a1 + 112) = *(a2 + 112);
  return result;
}

unint64_t BlueFin::GlMeSrdEvtListener::OnHeartbeat(BlueFin::GlMeSrdEvtListener *this)
{
  v4 = 15;
  v1 = *(this + 1);
  v2 = *(v1 + 32);
  result = *(v1 + 8);
  *(v1 + 32) = result;
  do
  {
    v5 = 0;
    if (BlueFin::patch_dispatch(result, v1, &v4, &v5))
    {
      result = v5;
    }

    else
    {
      result = (*(v1 + 32))(v1, &v4);
    }

    *(v1 + 32) = result;
  }

  while (result);
  *(v1 + 32) = v2;
  return result;
}

uint64_t BlueFin::QHsm::isIn(uint64_t a1, uint64_t (*a2)(uint64_t, unsigned __int8 *))
{
  v4 = *(a1 + 8);
  while (v4 != a2)
  {
    if (BlueFin::patch_trigger(v4, a1, BlueFin::__pkgStdEvt, &BlueFin::_patched_state))
    {
      v4 = BlueFin::_patched_state;
      if (!BlueFin::_patched_state)
      {
        return 0;
      }
    }

    else
    {
      v4 = v4(a1, BlueFin::__pkgStdEvt);
      if (!v4)
      {
        return 0;
      }
    }
  }

  return 1;
}

BOOL BlueFin::GlMeSrdAsicConfig::IsSardineAsicType(BlueFin::GlMeSrdAsicConfig *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    DeviceFaultNotify("glmesrd_asic_config.cpp", 4449, "IsSardineAsicType", "m_eAsicType != ASIC_TYPE_UNKNOWN");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asic_config.cpp", 4449, "m_eAsicType != ASIC_TYPE_UNKNOWN");
  }

  return v1 == 1;
}

BOOL BlueFin::GlMeSrdAsicConfig::IsCarpAsicType(BlueFin::GlMeSrdAsicConfig *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    DeviceFaultNotify("glmesrd_asic_config.cpp", 4430, "IsCarpAsicType", "m_eAsicType != ASIC_TYPE_UNKNOWN");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asic_config.cpp", 4430, "m_eAsicType != ASIC_TYPE_UNKNOWN");
  }

  return v1 == 2;
}

void *BlueFin::GlMeSrdSvIdReportMgr::ReportMeasurements(BlueFin::GlMeSrdSvIdReportMgr *this, int a2)
{
  v3 = this + 4096;
  *(this + 1193) = a2;
  BlueFin::GlSetBase::operator&=(this + 4848, this + 4800);
  v91 = v3;
  bzero(*(this + 600), ((4 * v3[712] + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  __src = v134;
  v133 = 8;
  memset(v134, 0, 32);
  v129 = v131;
  v130 = 8;
  memset(v131, 0, 32);
  v126 = v128;
  v127 = 19;
  memset(v128, 0, sizeof(v128));
  v4 = *(this + 1);
  if (*(v4 + 832) > (*(v4 + 834) + 1))
  {
    v5 = (*(v4 + 834) + 1);
    do
    {
      v6 = *(this + 1);
      v7 = (*(v4 + 828) + *(*(v4 + 816) + 2 * v5));
      if (!BlueFin::GlBigArray::Has((v4 + 800), v7))
      {
LABEL_179:
        v71 = "m_potArray->Has(handle)";
        DeviceFaultNotify("glinc_array.h", 362, "Next", "m_potArray->Has(handle)");
        v72 = "glinc_array.h";
        v73 = 362;
        goto LABEL_178;
      }

      if (v7 - *(v6 + 828) >= *(v6 + 830))
      {
LABEL_176:
        v71 = "handle - m_usMinHandle < m_usNumHandles";
        DeviceFaultNotify("glinc_array.h", 313, "EnsureValidHandle", "handle - m_usMinHandle < m_usNumHandles");
        v72 = "glinc_array.h";
        v73 = 313;
        goto LABEL_178;
      }

      v8 = *(*(v6 + 808) + 2 * (v7 - *(v6 + 828)));
      if (v8 == 0xFFFF)
      {
        v9 = 0;
      }

      else
      {
        if (*(v6 + 832) <= v8)
        {
LABEL_177:
          v71 = "slot < m_usNumSlots";
          DeviceFaultNotify("glinc_array.h", 319, "EnsureValidSlot", "slot < m_usNumSlots");
          v72 = "glinc_array.h";
          v73 = 319;
          goto LABEL_178;
        }

        v9 = *(v6 + 800) + *(v6 + 824) * v8;
      }

      BlueFin::GlMeSrdSvIdReportMsmtSlot::GetSvId(v9, v158);
      *(__src + ((LOBYTE(v158[0]) >> 3) & 0x1C)) |= 1 << SLOBYTE(v158[0]);
      v10 = *(v9 + 140);
      if ((v10 - 10) < 4 || v10 == 17)
      {
        BlueFin::GlMeSrdSvIdReportMsmtSlot::GetSignalIndex(v9, v158);
        *&v126[4 * (v159 >> 5)] |= 1 << v159;
      }

      ++v5;
    }

    while (v5 < *(v4 + 832));
  }

  (*(**(this + 597) + 16))(*(this + 597), &v126);
  v123 = v133;
  memcpy(v125, __src, 4 * v133);
  v124 = v125[0];
  BlueFin::GlSetIterator::operator++(&v123);
  if (BYTE1(v123) == v123)
  {
LABEL_14:
    *(this + 1224) = 0;
    goto LABEL_15;
  }

  v25 = 0;
  v26 = 0;
  v88 = this + 1336;
  v89 = this + 34;
  v86 = this + 536;
  v87 = this + 136;
  do
  {
    v97 = &v99;
    v98 = 4;
    v101 = v103;
    v102 = 4;
    v104 = v106;
    v105 = 4;
    *&v106[5] = v108;
    v107 = 4;
    *&v108[5] = v110;
    v109 = 4;
    v99 = 0;
    v100 = 0;
    v103[0] = 0;
    v103[1] = 0;
    *v106 = 0;
    *&v106[2] = 0;
    *v108 = 0;
    *&v108[2] = 0;
    v110[0] = 0;
    v110[1] = 0;
    v113 = 0;
    v112 = 0;
    v111 = -1;
    v116 = 0;
    v117 = 0;
    v114 = 0;
    v115 = 0;
    v120 = 0;
    v118 = 0;
    v119 = 0;
    v121 = 0;
    memset(v122, 0, sizeof(v122));
    LOBYTE(v158[0]) = BYTE2(v123);
    BlueFin::GlMeSrdSvIdReportMgr::GetMsmtStats(this, v158, &v97);
    v94 = v96;
    v95 = 4;
    v96[0] = 0;
    v96[1] = 0;
    LOBYTE(v158[0]) = 0;
    v27 = BlueFin::GlMeSrdSvIdReportMgr::DecideWhichSatToPublish(this, &v97, v158);
    BlueFin::GlMeSrdSvIdReportMgr::DecideWhichSatsToKill(this, v27, LOBYTE(v158[0]), &v97, &v94);
    LOBYTE(v158[0]) = v95;
    memcpy(&v159, v94, 4 * v95);
    HIWORD(v158[0]) = 0;
    BYTE1(v158[0]) = 0;
    v158[1] = v159;
    while (1)
    {
      BlueFin::GlSetIterator::operator++(v158);
      if (BYTE1(v158[0]) == LOBYTE(v158[0]))
      {
        break;
      }

      (***(this + 598))(*(this + 598), BYTE2(v158[0]));
    }

    v28 = 0;
    v90 = 1 << (v27 & 0x1F);
    do
    {
      BlueFin::GlSatCarrId::GlSatCarrId(v92, v27, v28);
      v31 = *(this + 1);
      if (v92[0] + 100 * v93 - *(v31 + 828) >= *(v31 + 830))
      {
        goto LABEL_176;
      }

      v32 = *(*(v31 + 808) + 2 * (v92[0] + 100 * v93 - *(v31 + 828)));
      if (v32 == 0xFFFF)
      {
        goto LABEL_134;
      }

      if (*(v31 + 832) <= v32)
      {
        goto LABEL_177;
      }

      v33 = *(v31 + 800);
      if (!v33)
      {
        goto LABEL_134;
      }

      v34 = v33 + *(v31 + 824) * v32;
      if (!v28)
      {
        v40 = *(v34 + 164);
        v41 = v40 == 4 || v40 == 2;
        if (v41 && ((v90 & v104[v27 >> 5]) != 0 || (v90 & *(v101 + (v27 >> 5))) != 0))
        {
          if (*(v34 + 116) == 1)
          {
            v35 = 0;
            goto LABEL_42;
          }

          v42 = *(v34 + 160);
          v43 = *(v34 + 100);
          v135 = *(v34 + 100);
          v44 = *(v34 + 112);
          if (v44 >= 0x64)
          {
            v71 = "UpdateFrameManager SatId(%d) >= _DIM(%d)";
            DeviceFaultNotify("glmesrd_svid_report_mgr.cpp", 1330, "UpdateFrameManager", "UpdateFrameManager SatId(%d) >= _DIM(%d)");
            v72 = "glmesrd_svid_report_mgr.cpp";
            v73 = 1330;
            goto LABEL_178;
          }

          if (v43 >= 0xBD)
          {
            v71 = "UpdateFrameManager SvId(%d) >= _DIM(%d)";
            DeviceFaultNotify("glmesrd_svid_report_mgr.cpp", 1333, "UpdateFrameManager", "UpdateFrameManager SvId(%d) >= _DIM(%d)");
            v72 = "glmesrd_svid_report_mgr.cpp";
            v73 = 1333;
            goto LABEL_178;
          }

          v45 = v89[v44];
          v47 = (v45 - 189) < 0xFFFFFF44 || v45 == v43;
          v48 = v88[v43];
          if (v48 != 255 && v48 != v44)
          {
            v47 = 0;
          }

          v50 = *(v34 + 84);
          if ((v50 & 0x100) == 0)
          {
            v71 = "otDspMeas.otFlags32.Has(GLME_DSPMEAS_EPOCH_CNT_VALID)";
            DeviceFaultNotify("glmesrd_svid_report_mgr.cpp", 1352, "UpdateFrameManager", "otDspMeas.otFlags32.Has(GLME_DSPMEAS_EPOCH_CNT_VALID)");
            v72 = "glmesrd_svid_report_mgr.cpp";
            v73 = 1352;
            goto LABEL_178;
          }

          if ((v50 & 0x10) == 0)
          {
            v71 = "otDspMeas.otFlags32.Has(GLME_DSPMEAS_TIMETAG_VALID)";
            DeviceFaultNotify("glmesrd_svid_report_mgr.cpp", 1353, "UpdateFrameManager", "otDspMeas.otFlags32.Has(GLME_DSPMEAS_TIMETAG_VALID)");
            v72 = "glmesrd_svid_report_mgr.cpp";
            v73 = 1353;
            goto LABEL_178;
          }

          if (!v43)
          {
            v71 = "0";
            DeviceFaultNotify("glmesrd_svid_report_mgr.cpp", 1388, "UpdateFrameManager", "0");
            v72 = "glmesrd_svid_report_mgr.cpp";
            v73 = 1388;
LABEL_178:
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v72, v73, v71);
          }

          if (v43 >= 0x21)
          {
            if (v43 < 0x34)
            {
              v51 = 2;
            }

            else if (v43 >= 0x42)
            {
              if (v43 < 0x4C)
              {
                goto LABEL_80;
              }

              if (v43 >= 0x8B)
              {
                if (v43 >= 0xAF)
                {
                  goto LABEL_80;
                }

                v51 = 4;
              }

              else if (*(v34 + 140) == 11)
              {
                v51 = 20;
              }

              else
              {
                v51 = 1;
              }
            }

            else if (*(v34 + 140) == 12)
            {
              v51 = 20;
            }

            else
            {
              v51 = 10;
            }
          }

          else
          {
LABEL_80:
            v51 = 20;
          }

          v54 = (*(v34 + 32) + 1.0);
          if ((v50 & 0x40) == 0)
          {
            v54 = 1.0;
          }

          LODWORD(v29) = *(v34 + 48);
          LODWORD(v30) = *&v87[4 * v44];
          v55 = v29 - v30;
          v56 = !v47;
          if (v55 < 0.0)
          {
            v56 = 1;
          }

          if ((v56 & 1) != 0 || fabs(v55 + v54 * (*(v34 + 24) - *&v86[8 * v44]) * -1000.0) >= v51)
          {
            *v158 = &unk_2A1F0DC20;
            WORD2(v160) = 0;
            v161 = 0;
            v162 = 0;
            v163 = 0;
            v164 = 0u;
            v165 = 0u;
            v166 = 0u;
            v167 = 0u;
            v168 = 0u;
            v169 = 0u;
            memset(v170, 0, sizeof(v170));
            v171 = 0u;
            memset(v172, 0, sizeof(v172));
            LOBYTE(v159) = 0;
            v136 = &unk_2A1F0DC20;
            v138 = 0;
            v139 = 0;
            v140 = 0;
            v141 = 0;
            v142 = 0u;
            v143 = 0u;
            v144 = 0u;
            v145 = 0u;
            v146 = 0u;
            v147 = 0u;
            v148 = 0u;
            v149 = 0u;
            v150 = 0u;
            v151 = 0u;
            v152 = 0u;
            v153 = 0u;
            v154 = 0u;
            v155 = 0u;
            v156 = 0u;
            v157 = 0u;
            LOBYTE(v137[0]) = 0;
            BYTE1(v159) = v43;
            BYTE1(v137[0]) = v43;
            LODWORD(v160) = 6;
            v137[1] = 4;
            if ((v43 - 139) <= 0x23)
            {
              v141 = v42;
              v163 = v42;
            }

            (*(**(this + 597) + 56))(*(this + 597), v158, &v136);
          }

          if ((v42 & 1) != 0 || (v43 - 52) <= 0xD)
          {
            (*(**(this + 597) + 48))(*(this + 597), &v135, *(v34 + 48), *(v34 + 24));
            v43 = v135;
          }

          v35 = 0;
          v89[v44] = v43;
          v88[v43] = v44;
          *&v86[8 * v44] = *(v34 + 24);
          *&v87[4 * v44] = *(v34 + 48);
          goto LABEL_42;
        }
      }

      v35 = 1;
LABEL_42:
      if (*(v34 + 140) != 8)
      {
        v91[672] = 1;
      }

      if (!v28)
      {
        BlueFin::GlSatCarrId::GlSatCarrId(v158, v27, 2);
        v36 = *(this + 1);
        if (LOBYTE(v158[0]) + 100 * LOBYTE(v158[1]) - *(v36 + 828) >= *(v36 + 830))
        {
          goto LABEL_176;
        }

        v37 = *(*(v36 + 808) + 2 * (LOBYTE(v158[0]) + 100 * LOBYTE(v158[1]) - *(v36 + 828)));
        if (v37 != 0xFFFF)
        {
          if (*(v36 + 832) <= v37)
          {
            goto LABEL_177;
          }

          v38 = *(v36 + 800);
          if (v38)
          {
            v39 = v38 + *(v36 + 824) * v37;
            if (*(v39 + 162) == 1)
            {
              if (*(v34 + 24) >= 0.0 && *(v39 + 24) >= 0.0 && *(v39 + 40) >= 17.0)
              {
                *(v34 + 88) = 0x400000004;
              }
            }

            else if (*(v34 + 48) && *(v39 + 48) && *(v39 + 112) == *(v34 + 112))
            {
              v52 = vabdd_f64(*(v34 + 24), *(v39 + 24)) * 1000.0;
              if (v52 <= 0.0)
              {
                v53 = 0.0;
                if (v52 < 0.0)
                {
                  v53 = ceil(v52 + -0.5);
                }
              }

              else
              {
                v53 = floor(v52 + 0.5);
              }

              if (*(v34 + 100) - 139 >= 0x24)
              {
                v57 = 20.0;
              }

              else
              {
                v57 = 4.0;
              }

              if (fmod(v53, v57) > 0.1)
              {
                (*(**(this + 598) + 72))(*(this + 598), v158);
              }
            }
          }
        }
      }

      v58 = *(v34 + 84);
      (*(**(this + 597) + 24))(*(this + 597), v34);
      if (v28 == 2 && (*(**(this + 3) + 40))(*(this + 3), *(v34 + 112)))
      {
        v59 = (*(**(this + 3) + 16))(*(this + 3), *(v34 + 112));
        if (!v59)
        {
          v71 = "potGridSlot != nullptr";
          DeviceFaultNotify("glmesrd_svid_report_mgr.cpp", 1128, "ReportMeasurements", "potGridSlot != nullptr");
          v72 = "glmesrd_svid_report_mgr.cpp";
          v73 = 1128;
          goto LABEL_178;
        }

        v61 = *(this + 597);
        v62 = BlueFin::GlMeSrdMultiPeakResults::ToPeGridMeas(v59, v34, v158, v60);
        (*(*v61 + 32))(v61, v158, v62);
      }

      v25 += (v58 >> 11) & 1;
      ++v26;
      if (((v35 | v122[12]) & 1) == 0)
      {
        v63 = *(v34 + 100);
        BlueFin::GlSatCarrId::GlSatCarrId(v158, *(v34 + 112), *(v34 + 104));
        if (BlueFin::GlBigArray::Has((*(this + 1) + 800), LOBYTE(v158[0]) + 100 * LOBYTE(v158[1])) && (*(**(this + 2) + 40))(*(this + 2), LOBYTE(v158[0])))
        {
          v64 = (*(**(this + 2) + 16))(*(this + 2), LOBYTE(v158[0]));
          BlueFin::GlMeSrdSvIdReportDataBitsSlot::GetSvId(v64, &v136);
          if (v63 != v136)
          {
            v71 = "otSvId == potDataBitSlot->GetSvId()";
            DeviceFaultNotify("glmesrd_svid_report_mgr.cpp", 1249, "SendDataBitsIfAvailable", "otSvId == potDataBitSlot->GetSvId()");
            v72 = "glmesrd_svid_report_mgr.cpp";
            v73 = 1249;
            goto LABEL_178;
          }

          if (!(*(v64 + 16) | *(v64 + 320)))
          {
            v71 = "bFllBitsValid || bPllBitsValid";
            DeviceFaultNotify("glmesrd_svid_report_mgr.cpp", 1266, "SendDataBitsIfAvailable", "bFllBitsValid || bPllBitsValid");
            v72 = "glmesrd_svid_report_mgr.cpp";
            v73 = 1266;
            goto LABEL_178;
          }

          v65 = *(v64 + 20);
          if (*(v64 + 16) && *(v64 + 320) && v65 != *(v64 + 324))
          {
            v71 = "potDataBitSlot->m_otFllBits.m_ulEpochCnt == potDataBitSlot->m_otPllBits.m_ulEpochCnt";
            DeviceFaultNotify("glmesrd_svid_report_mgr.cpp", 1271, "SendDataBitsIfAvailable", "potDataBitSlot->m_otFllBits.m_ulEpochCnt == potDataBitSlot->m_otPllBits.m_ulEpochCnt");
            v72 = "glmesrd_svid_report_mgr.cpp";
            v73 = 1271;
            goto LABEL_178;
          }

          v66 = *(v34 + 48);
          if (v66 == v65 || v66 == *(v64 + 324) || *(v64 + 40) == 1 && (vabds_f32(v66, v65) >= 250.0 ? (v69 = (*(v64 + 12) & 0x100) == 0) : (v69 = 0), !v69))
          {
            (*(**(this + 597) + 56))(*(this + 597), v64, v64 + 304);
          }
        }

        v67 = *(this + 597);
        LOBYTE(v158[0]) = *(v34 + 100);
        v68 = *(v34 + 104);
        LOWORD(v159) = *(v34 + 108);
        v158[1] = v68;
        if ((*(*v67 + 72))(v67, v158))
        {
          *(v129 + ((*(v34 + 100) >> 3) & 0x1C)) |= 1 << *(v34 + 100);
        }
      }

LABEL_134:
      ++v28;
    }

    while (v28 != 4);
    BlueFin::GlSetIterator::operator++(&v123);
  }

  while (BYTE1(v123) != v123);
  if (!v26 || (v25 / v26) <= 0.1)
  {
    goto LABEL_14;
  }

  v70 = *(this + 1224) + 1;
  *(this + 1224) = v70;
  if (v70 >= 3)
  {
    v71 = "m_ulConsecutiveBlockMarginViolations < MAX_NUM_CONSECUTIVE_BLOCK_MARGIN_VIOLATION";
    DeviceFaultNotify("glmesrd_svid_report_mgr.cpp", 1164, "ReportMeasurements", "m_ulConsecutiveBlockMarginViolations < MAX_NUM_CONSECUTIVE_BLOCK_MARGIN_VIOLATION");
    v72 = "glmesrd_svid_report_mgr.cpp";
    v73 = 1164;
    goto LABEL_178;
  }

LABEL_15:
  v11 = 0;
  v12 = v129 + 4 * v130 - 4;
  do
  {
    if (*v12)
    {
      v13 = *v12 - (((*v12 >> 1) & 0x5B6DB6DB) + ((*v12 >> 2) & 0x9249249));
      v11 = ((v13 + (v13 >> 3)) & 0xC71C71C7) + v11 - 63 * (((v13 + (v13 >> 3)) & 0xC71C71C7) / 0x3F);
    }

    --v12;
  }

  while (v12 >= v129);
  if ((v11 & 0xFE) != 0)
  {
    LOBYTE(v136) = v130;
    memcpy(v137, v129, 4 * v130);
    WORD1(v136) = 0;
    BYTE1(v136) = 0;
    HIDWORD(v136) = v137[0];
    BlueFin::GlSetIterator::operator++(&v136);
    while (BYTE1(v136) != v136)
    {
      v92[0] = BYTE2(v136);
      *v158 = &v160;
      LOBYTE(v159) = 4;
      v162 = &v164;
      v163 = 4;
      *(&v165 + 4) = &v166;
      BYTE12(v165) = 4;
      *(&v167 + 4) = &v168;
      BYTE12(v167) = 4;
      *(&v169 + 4) = v170;
      BYTE12(v169) = 4;
      v160 = 0;
      v161 = 0;
      v164 = 0uLL;
      v166 = 0uLL;
      v168 = 0uLL;
      v170[0] = 0uLL;
      *(&v170[1] + 12) = 0;
      *(&v170[1] + 4) = 0xFFFFFFFFLL;
      BYTE12(v170[2]) = 0;
      LODWORD(v171) = 0;
      BYTE4(v170[2]) = 0;
      DWORD2(v170[2]) = 0;
      BYTE12(v171) = 0;
      BYTE4(v171) = 0;
      DWORD2(v171) = 0;
      memset(v172, 0, 21);
      BlueFin::GlMeSrdSvIdReportMgr::GetMsmtStats(this, v92, v158);
      v97 = &v99;
      v98 = 4;
      v99 = 0;
      v100 = 0;
      LOBYTE(v123) = 0;
      v14 = BlueFin::GlMeSrdSvIdReportMgr::DecideWhichSatToPublish(this, v158, &v123);
      BlueFin::GlMeSrdSvIdReportMgr::DecideWhichSatsToKill(this, v14, v123, v158, &v97);
      BlueFin::GlSatCarrId::GlSatCarrId(&v94, v14, 0);
      v15 = *(this + 1);
      if (v94 + 100 * BYTE4(v94) - *(v15 + 828) >= *(v15 + 830))
      {
        goto LABEL_176;
      }

      v16 = *(*(v15 + 808) + 2 * (v94 + 100 * BYTE4(v94) - *(v15 + 828)));
      if (*(v15 + 832) <= v16)
      {
        goto LABEL_177;
      }

      v17 = *(v15 + 800) + *(v15 + 824) * v16;
      v18 = *(this + 597);
      LOBYTE(v123) = *(v17 + 100);
      v19 = *(v17 + 104);
      LOWORD(v125[0]) = *(v17 + 108);
      v124 = v19;
      (*(*v18 + 80))(v18, &v123);
      BlueFin::GlSetIterator::operator++(&v136);
    }
  }

  v20 = *(this + 32);
  if (!*(this + 32))
  {
    v23 = 0.0;
LABEL_151:
    v24 = v23 >= 0.75 && v20 > 2;
    goto LABEL_157;
  }

  v21 = *(this + 33) / v20;
  v22 = -v21;
  if (v21 >= 0.0)
  {
    v22 = *(this + 33) / v20;
  }

  if (v22 < 1.5)
  {
    v23 = v22;
    if (v20 == 1 || v22 < 1.0)
    {
      goto LABEL_151;
    }
  }

  v24 = 1;
LABEL_157:
  (*(**(this + 597) + 40))(*(this + 597), v24);
  *(this + 16) = 0;
  v75 = *(this + 593);
  v76 = 100;
  do
  {
    if (!*v75 || (v77 = *v75 - 1, (*v75 = v77) == 0))
    {
      v75[1] = 0;
    }

    v75 += 2;
    --v76;
  }

  while (v76);
  v78 = *(this + 1);
  if (*(v78 + 832) > (*(v78 + 834) + 1))
  {
    v79 = (*(v78 + 834) + 1);
    do
    {
      v80 = (*(v78 + 828) + *(*(v78 + 816) + 2 * v79));
      if (!BlueFin::GlBigArray::Has((v78 + 800), v80))
      {
        goto LABEL_179;
      }

      v81 = *(this + 1);
      if (v80 - *(v81 + 828) >= *(v81 + 830))
      {
        goto LABEL_176;
      }

      v82 = *(*(v81 + 808) + 2 * (v80 - *(v81 + 828)));
      if (v82 != 0xFFFF && *(v81 + 832) <= v82)
      {
        goto LABEL_177;
      }

      ++v79;
      BlueFin::GlBigArray::Remove(v81 + 800, v80);
    }

    while (v79 < *(v78 + 832));
  }

  (*(**(this + 2) + 80))(v158);
  while (v159 < *(*v158 + 38))
  {
    v83 = BlueFin::GlArrayIterator::Next(v158);
    (*(**(this + 2) + 16))(*(this + 2), v83);
    (*(**(this + 2) + 32))(*(this + 2), v83);
  }

  result = (*(**(this + 3) + 80))(v158);
  while (v159 < *(*v158 + 38))
  {
    v85 = BlueFin::GlArrayIterator::Next(v158);
    (*(**(this + 3) + 16))(*(this + 3), v85);
    result = (*(**(this + 3) + 32))(*(this + 3), v85);
  }

  return result;
}