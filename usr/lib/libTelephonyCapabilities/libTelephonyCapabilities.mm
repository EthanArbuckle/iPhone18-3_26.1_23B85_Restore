uint64_t capabilities::ct::supportsGemini(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDAB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDAB8))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD5E7 = capabilities::ct::sSupportsGemini(Product);
    __cxa_guard_release(&qword_1ED7FDAB8);
  }

  return byte_1ED7FD5E7;
}

uint64_t capabilities::ct::supports5GSlicing(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDC68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDC68))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD618 = capabilities::ct::sSupports5GSlicing(Product);
    __cxa_guard_release(&qword_1ED7FDC68);
  }

  return byte_1ED7FD618;
}

uint64_t capabilities::ct::supportsDualSIMSingleStackWithCrossMapping(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDB58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDB58))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD5F9 = ((Product - 82) < 0x29) & (0x10042007183uLL >> (Product - 82));
    __cxa_guard_release(&qword_1ED7FDB58);
  }

  return byte_1ED7FD5F9;
}

uint64_t capabilities::ct::supportsCapabilityC2KDevice(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDA88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDA88))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD5E2 = capabilities::ct::sSupportsCapabilityC2KDevice(Product);
    __cxa_guard_release(&qword_1ED7FDA88);
  }

  return byte_1ED7FD5E2;
}

uint64_t capabilities::ct::supportsVoiceCall(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD948, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD948))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD5C4 = capabilities::ct::sSupportsVoiceCall(Product);
    __cxa_guard_release(&qword_1ED7FD948);
  }

  return byte_1ED7FD5C4;
}

uint64_t capabilities::ct::supports5G(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD778, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD778))
  {
    RadioVendor = TelephonyRadiosGetRadioVendor();
    byte_1ED7FD59D = (RadioVendor < 5) & (0x1Au >> RadioVendor);
    __cxa_guard_release(&qword_1ED7FD778);
  }

  return byte_1ED7FD59D;
}

uint64_t capabilities::ct::supportsLocalCellularPlanSignup(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD758, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD758))
  {
    Radio = TelephonyRadiosGetRadio();
    byte_1ED7FD59A = (Radio < 0x14) & (0xEFFAEu >> Radio);
    __cxa_guard_release(&qword_1ED7FD758);
  }

  return byte_1ED7FD59A;
}

uint64_t capabilities::ct::supportsDynamicSID(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDB68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDB68))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD5FB = ((Product - 82) < 0x37) & (0x401B407E007183uLL >> (Product - 82));
    __cxa_guard_release(&qword_1ED7FDB68);
  }

  return byte_1ED7FD5FB;
}

uint64_t capabilities::ct::supportsSystemSelectionInternationalCDMARoaming(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDA58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDA58))
  {
    Radio = TelephonyRadiosGetRadio();
    byte_1ED7FD5DE = (Radio < 0x13) & (0x63780u >> Radio);
    __cxa_guard_release(&qword_1ED7FDA58);
  }

  return byte_1ED7FD5DE;
}

uint64_t capabilities::ct::supportsSequoia(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDB70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDB70))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD5FC = capabilities::ct::sSupportsSMSIMSStack(Product);
    __cxa_guard_release(&qword_1ED7FDB70);
  }

  return byte_1ED7FD5FC;
}

uint64_t capabilities::ct::defaultVinylCardTypeToGSMA(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD878, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD878))
  {
    byte_1ED7FD5AF = TelephonyRadiosGetRadioVendor() - 1 < 4;
    __cxa_guard_release(&qword_1ED7FD878);
  }

  return byte_1ED7FD5AF;
}

uint64_t capabilities::ct::dormancyWatchMode(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD9B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD9B8))
  {
    Radio = TelephonyRadiosGetRadio();
    v4 = Radio == 4 || Radio == 16;
    byte_1ED7FD5D0 = v4;
    __cxa_guard_release(&qword_1ED7FD9B8);
  }

  return byte_1ED7FD5D0;
}

uint64_t capabilities::ct::supportsSecurityStatus(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDB78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDB78))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD5FD = capabilities::ct::sSupportsSecurityStatus(Product);
    __cxa_guard_release(&qword_1ED7FDB78);
  }

  return byte_1ED7FD5FD;
}

uint64_t capabilities::ct::getBasebandBootStrategy(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD828, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD828))
  {
    Product = TelephonyRadiosGetProduct();
    dword_1ED7FD664 = capabilities::ct::sGetBasebandBootStrategy(Product);
    __cxa_guard_release(&qword_1ED7FD828);
  }

  return dword_1ED7FD664;
}

uint64_t capabilities::ct::supportsCellRadio(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD9E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD9E0))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD5D5 = capabilities::ct::sSupportsCellRadio(Product);
    __cxa_guard_release(&qword_1ED7FD9E0);
  }

  return byte_1ED7FD5D5;
}

uint64_t capabilities::ct::supportsDataPlanNotifications(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDB60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDB60))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD5FA = capabilities::ct::sSupportsSMSIMSStack(Product);
    __cxa_guard_release(&qword_1ED7FDB60);
  }

  return byte_1ED7FD5FA;
}

uint64_t capabilities::ct::shouldUseLastPDPsForHighPriorityMedia(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD8F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD8F8))
  {
    Radio = TelephonyRadiosGetRadio();
    v4 = Radio == 4 || Radio == 16;
    byte_1ED7FD5BA = v4;
    __cxa_guard_release(&qword_1ED7FD8F8);
  }

  return byte_1ED7FD5BA;
}

uint64_t capabilities::ipc::supportsHSIC(capabilities::ipc *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDF18, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_1ED7FDF18);
    if (v2)
    {
      _MergedGlobals_10 = (capabilities::ipc::typeInternal(v2) & 4) != 0;
      __cxa_guard_release(&qword_1ED7FDF18);
    }
  }

  return _MergedGlobals_10;
}

uint64_t capabilities::ipc::supportsPCI(capabilities::ipc *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDF28, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_1ED7FDF28);
    if (v2)
    {
      byte_1ED7FDF0A = (capabilities::ipc::typeInternal(v2) & 0x10) != 0;
      __cxa_guard_release(&qword_1ED7FDF28);
    }
  }

  return byte_1ED7FDF0A;
}

uint64_t capabilities::ct::supportedPDPContextCount(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD978, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD978))
  {
    Product = TelephonyRadiosGetProduct();
    qword_1ED7FD970 = capabilities::ct::sSupportedPDPContextCount(Product);
    __cxa_guard_release(&qword_1ED7FD978);
  }

  return qword_1ED7FD970;
}

uint64_t capabilities::radio::getPacketFilteringVersion(capabilities::radio *this)
{
  if ((atomic_load_explicit(&qword_1ED7FE0E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FE0E0))
  {
    if (TelephonyRadiosGetRadioVendor() - 1 >= 4)
    {
      v2 = 0;
    }

    else
    {
      v2 = 3;
    }

    dword_1ED7FE060 = v2;
    __cxa_guard_release(&qword_1ED7FE0E0);
  }

  return dword_1ED7FE060;
}

uint64_t ctu::PthreadMutexGuardPolicy<ctu::Gestalt>::~PthreadMutexGuardPolicy(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

uint64_t capabilities::ct::getDeviceEvoType(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDA40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDA40))
  {
    Product = TelephonyRadiosGetProduct();
    dword_1ED7FD674 = capabilities::ct::sGetDeviceEvoType(Product);
    __cxa_guard_release(&qword_1ED7FDA40);
  }

  return dword_1ED7FD674;
}

uint64_t capabilities::ct::supportsStewie(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDCB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDCB8))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD622 = capabilities::ct::sSupportsStewie(Product);
    __cxa_guard_release(&qword_1ED7FDCB8);
  }

  return byte_1ED7FD622;
}

uint64_t capabilities::ct::supportsHOVirtualInterfaces(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDD48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDD48))
  {
    byte_1ED7FD634 = TelephonyRadiosGetRadioVendor() == 3;
    __cxa_guard_release(&qword_1ED7FDD48);
  }

  return byte_1ED7FD634;
}

uint64_t capabilities::ct::getRadioModuleType(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD690, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD690))
  {
    Product = TelephonyRadiosGetProduct();
    dword_1ED7FD640 = capabilities::ct::sGetRadioModuleType(Product);
    __cxa_guard_release(&qword_1ED7FD690);
  }

  return dword_1ED7FD640;
}

uint64_t capabilities::ct::supportsDataSubscriptionController(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD7C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD7C8))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD5A4 = capabilities::ct::sSupportsDataSubscriptionController(Product);
    __cxa_guard_release(&qword_1ED7FD7C8);
  }

  return byte_1ED7FD5A4;
}

uint64_t capabilities::ct::supportsThumperService(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDA00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDA00))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD5D6 = capabilities::ct::sSupportsThumperService(Product);
    __cxa_guard_release(&qword_1ED7FDA00);
  }

  return byte_1ED7FD5D6;
}

uint64_t capabilities::abs::ABMLogEnabled(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCC30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCC30))
  {
    _MergedGlobals = 0;
    __cxa_guard_release(&qword_1ED7FCC30);
  }

  return _MergedGlobals;
}

uint64_t capabilities::abs::ABMLogHistory(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCC40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCC40))
  {
    qword_1ED7FCC38 = 4;
    __cxa_guard_release(&qword_1ED7FCC40);
  }

  return qword_1ED7FCC38;
}

uint64_t capabilities::abs::TUDebugFlags(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCC48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCC48))
  {
    dword_1ED7FCC10 = 10;
    __cxa_guard_release(&qword_1ED7FCC48);
  }

  return dword_1ED7FCC10;
}

uint64_t capabilities::abs::fileSystemFlushInterval(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCC58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCC58))
  {
    qword_1ED7FCC50 = 7200;
    __cxa_guard_release(&qword_1ED7FCC58);
  }

  return qword_1ED7FCC50;
}

uint64_t capabilities::abs::shouldForceSyncFileSystem(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCC60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCC60))
  {
    byte_1ED7FCBD9 = 0;
    __cxa_guard_release(&qword_1ED7FCC60);
  }

  return byte_1ED7FCBD9;
}

uint64_t capabilities::abs::shouldBoot(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCC68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCC68))
  {
    byte_1ED7FCBDA = 1;
    __cxa_guard_release(&qword_1ED7FCC68);
  }

  return byte_1ED7FCBDA;
}

uint64_t capabilities::abs::shouldBlockResets(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCC70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCC70))
  {
    byte_1ED7FCBDB = 0;
    __cxa_guard_release(&qword_1ED7FCC70);
  }

  return byte_1ED7FCBDB;
}

void capabilities::abs::logScratchPath(std::string *a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED7FCC78, memory_order_acquire) & 1) == 0)
  {
    v3 = a1;
    v4 = __cxa_guard_acquire(&qword_1ED7FCC78);
    a1 = v3;
    if (v4)
    {
      memset(&xmmword_1ED7FCFF0, 170, 24);
      std::string::basic_string[abi:ne200100]<0>(&xmmword_1ED7FCFF0, "/private/var/wireless/Library/Logs/AppleBasebandManager/");
      __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED7FCFF0, &dword_1CAE37000);
      __cxa_guard_release(&qword_1ED7FCC78);
      a1 = v3;
    }
  }

  if (byte_1ED7FD007 < 0)
  {
    v2 = xmmword_1ED7FCFF0;

    std::string::__init_copy_ctor_external(a1, v2, *(&v2 + 1));
  }

  else
  {
    *&a1->__r_.__value_.__l.__data_ = xmmword_1ED7FCFF0;
    a1->__r_.__value_.__r.__words[2] = unk_1ED7FD000;
  }
}

void capabilities::abs::logSnapshotPath(std::string *a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED7FCC80, memory_order_acquire) & 1) == 0)
  {
    v3 = a1;
    v4 = __cxa_guard_acquire(&qword_1ED7FCC80);
    a1 = v3;
    if (v4)
    {
      memset(&xmmword_1ED7FD008, 170, 24);
      std::string::basic_string[abi:ne200100]<0>(&xmmword_1ED7FD008, "/private/var/wireless/Library/Logs/CrashReporter/Baseband/");
      __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED7FD008, &dword_1CAE37000);
      __cxa_guard_release(&qword_1ED7FCC80);
      a1 = v3;
    }
  }

  if (byte_1ED7FD01F < 0)
  {
    v2 = xmmword_1ED7FD008;

    std::string::__init_copy_ctor_external(a1, v2, *(&v2 + 1));
  }

  else
  {
    *&a1->__r_.__value_.__l.__data_ = xmmword_1ED7FD008;
    a1->__r_.__value_.__r.__words[2] = unk_1ED7FD018;
  }
}

uint64_t capabilities::abs::shouldTriggerCoreDumpOnSoftResetTimeout(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCC88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCC88))
  {
    byte_1ED7FCBDC = 0;
    __cxa_guard_release(&qword_1ED7FCC88);
  }

  return byte_1ED7FCBDC;
}

uint64_t capabilities::abs::shouldTriggerStackshotOnShutdownTimeout(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCC90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCC90))
  {
    byte_1ED7FCBDD = 0;
    __cxa_guard_release(&qword_1ED7FCC90);
  }

  return byte_1ED7FCBDD;
}

uint64_t capabilities::abs::shouldPanicOnBasebandReset(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCC98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCC98))
  {
    byte_1ED7FCBDE = 0;
    __cxa_guard_release(&qword_1ED7FCC98);
  }

  return byte_1ED7FCBDE;
}

uint64_t capabilities::abs::CPMSDebounceTimer(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCCA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCCA8))
  {
    qword_1ED7FCCA0 = 5;
    __cxa_guard_release(&qword_1ED7FCCA8);
  }

  return qword_1ED7FCCA0;
}

uint64_t capabilities::abs::dataAggregationProtocol(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCCB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCCB0))
  {
    byte_1ED7FCBDF = 2;
    __cxa_guard_release(&qword_1ED7FCCB0);
  }

  return byte_1ED7FCBDF;
}

uint64_t capabilities::abs::defaultDataInterfaceID(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCCB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCCB8))
  {
    dword_1ED7FCC14 = 4;
    __cxa_guard_release(&qword_1ED7FCCB8);
  }

  return dword_1ED7FCC14;
}

uint64_t capabilities::abs::dataAggregationDatagramMaxCount(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCCC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCCC8))
  {
    qword_1ED7FCCC0 = 32;
    __cxa_guard_release(&qword_1ED7FCCC8);
  }

  return qword_1ED7FCCC0;
}

uint64_t capabilities::abs::dataAggregationMaxSizeBytes(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCCD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCCD8))
  {
    qword_1ED7FCCD0 = 0x8000;
    __cxa_guard_release(&qword_1ED7FCCD8);
  }

  return qword_1ED7FCCD0;
}

uint64_t capabilities::abs::dataFlowControlEnabled(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCCE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCCE0))
  {
    byte_1ED7FCBE0 = 1;
    __cxa_guard_release(&qword_1ED7FCCE0);
  }

  return byte_1ED7FCBE0;
}

uint64_t capabilities::abs::dataPowerSaveEnabled(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCCE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCCE8))
  {
    byte_1ED7FCBE1 = 1;
    __cxa_guard_release(&qword_1ED7FCCE8);
  }

  return byte_1ED7FCBE1;
}

uint64_t capabilities::abs::LLDataInterfaceID(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCCF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCCF0))
  {
    dword_1ED7FCC18 = 7;
    __cxa_guard_release(&qword_1ED7FCCF0);
  }

  return dword_1ED7FCC18;
}

uint64_t capabilities::abs::LLDataAggregationDatagramMaxCount(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCD00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCD00))
  {
    qword_1ED7FCCF8 = 1;
    __cxa_guard_release(&qword_1ED7FCD00);
  }

  return qword_1ED7FCCF8;
}

uint64_t capabilities::abs::LLDataAggregationMaxSizeBytes(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCD10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCD10))
  {
    qword_1ED7FCD08 = 2048;
    __cxa_guard_release(&qword_1ED7FCD10);
  }

  return qword_1ED7FCD08;
}

uint64_t capabilities::abs::supportsMagSafe(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCD18, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_1ED7FCD18);
    if (v2)
    {
      byte_1ED7FCBE2 = capabilities::abs::sSupportsMagSafe(v2);
      __cxa_guard_release(&qword_1ED7FCD18);
    }
  }

  return byte_1ED7FCBE2;
}

uint64_t capabilities::abs::sSupportsMagSafe(capabilities::abs *this)
{
  if (!capabilities::abs::supportsAccessoryModule(this))
  {
    return 0;
  }

  v1 = pthread_mutex_lock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  v2 = off_1ED7FCBC0;
  if (!off_1ED7FCBC0)
  {
    ctu::Gestalt::create_default_global(&v8, v1);
    v3 = v8;
    v8 = 0uLL;
    v4 = *(&off_1ED7FCBC0 + 1);
    off_1ED7FCBC0 = v3;
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      if (*(&v8 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v8 + 1));
      }
    }

    v2 = off_1ED7FCBC0;
  }

  v5 = *(&off_1ED7FCBC0 + 1);
  if (*(&off_1ED7FCBC0 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1ED7FCBC0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  v6 = (*(*v2 + 136))(v2);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v6;
}

uint64_t capabilities::abs::supportsDisplayCoverAccessory(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCD20, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_1ED7FCD20);
    if (v2)
    {
      byte_1ED7FCBE3 = capabilities::abs::sSupportsDisplayCoverAccessory(v2);
      __cxa_guard_release(&qword_1ED7FCD20);
    }
  }

  return byte_1ED7FCBE3;
}

uint64_t capabilities::abs::sSupportsDisplayCoverAccessory(capabilities::abs *this)
{
  if (!capabilities::abs::supportsAccessoryModule(this))
  {
    return 0;
  }

  v1 = pthread_mutex_lock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  v2 = off_1ED7FCBC0;
  if (!off_1ED7FCBC0)
  {
    ctu::Gestalt::create_default_global(&v8, v1);
    v3 = v8;
    v8 = 0uLL;
    v4 = *(&off_1ED7FCBC0 + 1);
    off_1ED7FCBC0 = v3;
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      if (*(&v8 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v8 + 1));
      }
    }

    v2 = off_1ED7FCBC0;
  }

  v5 = *(&off_1ED7FCBC0 + 1);
  if (*(&off_1ED7FCBC0 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1ED7FCBC0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  v6 = (*(*v2 + 144))(v2);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v6;
}

uint64_t capabilities::abs::supportsSmartConnectorAccessory(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCD28, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_1ED7FCD28);
    if (v2)
    {
      byte_1ED7FCBE4 = capabilities::abs::sSupportsSmartConnectorAccessory(v2);
      __cxa_guard_release(&qword_1ED7FCD28);
    }
  }

  return byte_1ED7FCBE4;
}

uint64_t capabilities::abs::sSupportsSmartConnectorAccessory(capabilities::abs *this)
{
  if (!capabilities::abs::supportsAccessoryModule(this))
  {
    return 0;
  }

  v1 = pthread_mutex_lock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  v2 = off_1ED7FCBC0;
  if (!off_1ED7FCBC0)
  {
    ctu::Gestalt::create_default_global(&v8, v1);
    v3 = v8;
    v8 = 0uLL;
    v4 = *(&off_1ED7FCBC0 + 1);
    off_1ED7FCBC0 = v3;
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      if (*(&v8 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v8 + 1));
      }
    }

    v2 = off_1ED7FCBC0;
  }

  v5 = *(&off_1ED7FCBC0 + 1);
  if (*(&off_1ED7FCBC0 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1ED7FCBC0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  v6 = (*(*v2 + 144))(v2);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v6;
}

uint64_t capabilities::abs::serviceInitTimeoutScalingFactor(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCD38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCD38))
  {
    qword_1ED7FCD30 = 1;
    __cxa_guard_release(&qword_1ED7FCD38);
  }

  return qword_1ED7FCD30;
}

uint64_t capabilities::abs::serviceSleepTimeoutScalingFactor(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCD48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCD48))
  {
    qword_1ED7FCD40 = 1;
    __cxa_guard_release(&qword_1ED7FCD48);
  }

  return qword_1ED7FCD40;
}

uint64_t capabilities::abs::resetAssertionTimeoutScalingFactor(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCD58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCD58))
  {
    qword_1ED7FCD50 = 1;
    __cxa_guard_release(&qword_1ED7FCD58);
  }

  return qword_1ED7FCD50;
}

uint64_t capabilities::abs::shutdownAssertionTimeoutScalingFactor(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCD68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCD68))
  {
    qword_1ED7FCD60 = 1;
    __cxa_guard_release(&qword_1ED7FCD68);
  }

  return qword_1ED7FCD60;
}

uint64_t capabilities::abs::supportsCMHandDetection(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCD70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCD70))
  {
    byte_1ED7FCBE5 = 1;
    __cxa_guard_release(&qword_1ED7FCD70);
  }

  return byte_1ED7FCBE5;
}

uint64_t capabilities::abs::LCDMPurgeAge(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCD80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCD80))
  {
    qword_1ED7FCD78 = 3600000;
    __cxa_guard_release(&qword_1ED7FCD80);
  }

  return qword_1ED7FCD78;
}

void capabilities::abs::radarComponentName(std::string *a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED7FCD88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCD88))
  {
    RadioVendor = TelephonyRadiosGetRadioVendor();
    capabilities::abs::sRadarComponentName(&xmmword_1ED7FD020, RadioVendor);
    __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED7FD020, &dword_1CAE37000);
    __cxa_guard_release(&qword_1ED7FCD88);
  }

  if (byte_1ED7FD037 < 0)
  {
    v3 = xmmword_1ED7FD020;

    std::string::__init_copy_ctor_external(a1, v3, *(&v3 + 1));
  }

  else
  {
    *&a1->__r_.__value_.__l.__data_ = xmmword_1ED7FD020;
    a1->__r_.__value_.__r.__words[2] = unk_1ED7FD030;
  }
}

void *capabilities::abs::sRadarComponentName(void *a1, int a2)
{
  memset(a1, 170, 24);
  result = std::string::basic_string[abi:ne200100]<0>(a1, "Unknown");
  v4 = *(result + 23);
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      if (v4 < 0)
      {
        result[1] = 10;
        result = *result;
      }

      else
      {
        *(result + 23) = 10;
      }

      *(result + 4) = 22355;
      v6 = "Initium SW";
    }

    else
    {
      if (a2 != 4)
      {
LABEL_10:
        if (v4 < 0)
        {
          result[1] = 7;
          result = *result;
        }

        else
        {
          *(result + 23) = 7;
        }

        *(result + 3) = 1853321070;
        *result = 1852534357;
        v5 = result + 7;
        goto LABEL_27;
      }

      if (v4 < 0)
      {
        result[1] = 10;
        result = *result;
      }

      else
      {
        *(result + 23) = 10;
      }

      *(result + 4) = 22355;
      v6 = "Dale BB SW";
    }

    *result = *v6;
    v5 = result + 10;
    goto LABEL_27;
  }

  if (a2 != 1)
  {
    if (a2 == 2)
    {
      if (v4 < 0)
      {
        result[1] = 6;
        result = *result;
      }

      else
      {
        *(result + 23) = 6;
      }

      *(result + 2) = 22355;
      *result = 541410121;
      v5 = result + 6;
      goto LABEL_27;
    }

    goto LABEL_10;
  }

  if (v4 < 0)
  {
    result[1] = 11;
    result = *result;
  }

  else
  {
    *(result + 23) = 11;
  }

  *(result + 7) = 1465065579;
  *result = *"Maverick SW";
  v5 = result + 11;
LABEL_27:
  *v5 = 0;
  return result;
}

uint64_t capabilities::abs::fileSystemFlushTimeout(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCD98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCD98))
  {
    Product = TelephonyRadiosGetProduct();
    qword_1ED7FCD90 = capabilities::abs::sFileSystemFlushTimeout(Product);
    __cxa_guard_release(&qword_1ED7FCD98);
  }

  return qword_1ED7FCD90;
}

uint64_t capabilities::abs::sFileSystemFlushTimeout(int a1)
{
  if ((a1 - 33) > 0xB6)
  {
    return 14;
  }

  else
  {
    return *&asc_1CAE5E3E0[8 * (a1 - 33)];
  }
}

uint64_t capabilities::abs::supportsCoex(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCDA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCDA0))
  {
    byte_1ED7FCBE6 = TelephonyRadiosGetRadioVendor() - 1 < 2;
    __cxa_guard_release(&qword_1ED7FCDA0);
  }

  return byte_1ED7FCBE6;
}

uint64_t capabilities::abs::supportsCalibrationQuery(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCDA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCDA8))
  {
    RadioVendor = TelephonyRadiosGetRadioVendor();
    byte_1ED7FCBE7 = (RadioVendor < 5) & (0x16u >> RadioVendor);
    __cxa_guard_release(&qword_1ED7FCDA8);
  }

  return byte_1ED7FCBE7;
}

uint64_t capabilities::abs::supportsNMEA(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCDB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCDB0))
  {
    byte_1ED7FCBE8 = TelephonyRadiosGetRadioVendor() == 1;
    __cxa_guard_release(&qword_1ED7FCDB0);
  }

  return byte_1ED7FCBE8;
}

uint64_t capabilities::abs::supportsDataTransportService(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCDB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCDB8))
  {
    RadioVendor = TelephonyRadiosGetRadioVendor();
    byte_1ED7FCBE9 = (RadioVendor < 5) & (0x16u >> RadioVendor);
    __cxa_guard_release(&qword_1ED7FCDB8);
  }

  return byte_1ED7FCBE9;
}

void capabilities::abs::loggingSettingsPListName(std::string *a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED7FCDC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCDC0))
  {
    Radio = TelephonyRadiosGetRadio();
    capabilities::abs::sLoggingSettingsPListName(&xmmword_1ED7FD038, Radio);
    __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED7FD038, &dword_1CAE37000);
    __cxa_guard_release(&qword_1ED7FCDC0);
  }

  if (byte_1ED7FD04F < 0)
  {
    v3 = xmmword_1ED7FD038;

    std::string::__init_copy_ctor_external(a1, v3, *(&v3 + 1));
  }

  else
  {
    *&a1->__r_.__value_.__l.__data_ = xmmword_1ED7FD038;
    a1->__r_.__value_.__r.__words[2] = unk_1ED7FD048;
  }
}

void *capabilities::abs::sLoggingSettingsPListName(void *a1, int a2)
{
  memset(a1, 170, 24);
  result = std::string::basic_string[abi:ne200100]<0>(a1, &unk_1CAE5DA75);
  if (a2 > 6)
  {
    if (a2 > 0x13)
    {
LABEL_21:
      if ((a2 - 7) < 2)
      {
        if (*(result + 23) < 0)
        {
          result[1] = 18;
          result = *result;
        }

        else
        {
          *(result + 23) = 18;
        }

        *(result + 8) = 17731;
        v4 = "LoggingSettingsICE";
        goto LABEL_14;
      }

      goto LABEL_24;
    }

    if (((1 << a2) & 0x63E00) == 0)
    {
      if (((1 << a2) & 0x8C000) != 0)
      {
        if (*(result + 23) < 0)
        {
          result[1] = 18;
          result = *result;
        }

        else
        {
          *(result + 23) = 18;
        }

        *(result + 8) = 21582;
        v4 = "LoggingSettingsINT";
LABEL_14:
        *result = *v4;
        result = (result + 18);
        goto LABEL_15;
      }

      if (a2 == 16)
      {
        if (*(result + 23) < 0)
        {
          result[1] = 22;
          result = *result;
        }

        else
        {
          *(result + 23) = 22;
        }

        v5 = "LoggingSettingsNanoDAL";
LABEL_35:
        *result = *v5;
        *(result + 14) = *(v5 + 14);
        result = (result + 22);
        goto LABEL_15;
      }

      goto LABEL_21;
    }

LABEL_10:
    if (*(result + 23) < 0)
    {
      result[1] = 18;
      result = *result;
    }

    else
    {
      *(result + 23) = 18;
    }

    *(result + 8) = 21077;
    v4 = "LoggingSettingsEUR";
    goto LABEL_14;
  }

  if ((a2 - 1) < 3)
  {
    goto LABEL_10;
  }

  if (a2 == 4)
  {
    if (*(result + 23) < 0)
    {
      result[1] = 22;
      result = *result;
    }

    else
    {
      *(result + 23) = 22;
    }

    v5 = "LoggingSettingsNanoICE";
    goto LABEL_35;
  }

  if (a2 == 5)
  {
    goto LABEL_10;
  }

LABEL_24:
  if (*(result + 23) < 0)
  {
    result[1] = 0;
    result = *result;
  }

  else
  {
    *(result + 23) = 0;
  }

LABEL_15:
  *result = 0;
  return result;
}

uint64_t capabilities::abs::supportsFieldTestConfig(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCDC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCDC8))
  {
    Radio = TelephonyRadiosGetRadio();
    byte_1ED7FCBEA = (Radio < 0x13) & (0x63FAEu >> Radio);
    __cxa_guard_release(&qword_1ED7FCDC8);
  }

  return byte_1ED7FCBEA;
}

uint64_t capabilities::abs::shouldAddRFPSSpecifier(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCDD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCDD0))
  {
    Radio = TelephonyRadiosGetRadio();
    byte_1ED7FCBEB = (Radio < 0x14) & (0xEFFAEu >> Radio);
    __cxa_guard_release(&qword_1ED7FCDD0);
  }

  return byte_1ED7FCBEB;
}

uint64_t capabilities::abs::resetOnControlMessageTimeout(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCDD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCDD8))
  {
    byte_1ED7FCBEC = TelephonyRadiosGetRadioVendor() - 1 < 4;
    __cxa_guard_release(&qword_1ED7FCDD8);
  }

  return byte_1ED7FCBEC;
}

uint64_t capabilities::abs::supportsCoexGPSReporting(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCDE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCDE0))
  {
    Radio = TelephonyRadiosGetRadio();
    byte_1ED7FCBED = (Radio < 0x13) & (0x63FAEu >> Radio);
    __cxa_guard_release(&qword_1ED7FCDE0);
  }

  return byte_1ED7FCBED;
}

uint64_t capabilities::abs::supportsCoexEur5G(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCDE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCDE8))
  {
    byte_1ED7FCBEE = TelephonyRadiosGetRadioVendor() == 1;
    __cxa_guard_release(&qword_1ED7FCDE8);
  }

  return byte_1ED7FCBEE;
}

void capabilities::abs::RFTestSettingsPListName(std::string *a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED7FCDF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCDF0))
  {
    RadioVendor = TelephonyRadiosGetRadioVendor();
    capabilities::abs::sRFTestSettingsPListName(&xmmword_1ED7FD050, RadioVendor);
    __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED7FD050, &dword_1CAE37000);
    __cxa_guard_release(&qword_1ED7FCDF0);
  }

  if (byte_1ED7FD067 < 0)
  {
    v3 = xmmword_1ED7FD050;

    std::string::__init_copy_ctor_external(a1, v3, *(&v3 + 1));
  }

  else
  {
    *&a1->__r_.__value_.__l.__data_ = xmmword_1ED7FD050;
    a1->__r_.__value_.__r.__words[2] = unk_1ED7FD060;
  }
}

void *capabilities::abs::sRFTestSettingsPListName(void *a1, int a2)
{
  memset(a1, 170, 24);
  result = std::string::basic_string[abi:ne200100]<0>(a1, &unk_1CAE5DA75);
  v4 = *(result + 23);
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      if (v4 < 0)
      {
        result[1] = 17;
        result = *result;
      }

      else
      {
        *(result + 23) = 17;
      }

      *(result + 16) = 84;
      v5 = "RFTestSettingsINT";
      goto LABEL_25;
    }

    if (a2 == 4)
    {
      if (v4 < 0)
      {
        result[1] = 17;
        result = *result;
      }

      else
      {
        *(result + 23) = 17;
      }

      *(result + 16) = 76;
      v5 = "RFTestSettingsDAL";
      goto LABEL_25;
    }

    goto LABEL_10;
  }

  if (a2 != 1)
  {
    if (a2 == 2)
    {
      if (v4 < 0)
      {
        result[1] = 17;
        result = *result;
      }

      else
      {
        *(result + 23) = 17;
      }

      *(result + 16) = 69;
      v5 = "RFTestSettingsICE";
LABEL_25:
      *result = *v5;
      result = (result + 17);
      goto LABEL_26;
    }

LABEL_10:
    if (v4 < 0)
    {
      result[1] = 0;
      result = *result;
    }

    else
    {
      *(result + 23) = 0;
    }

    goto LABEL_26;
  }

  if (v4 < 0)
  {
    result[1] = 19;
    result = *result;
  }

  else
  {
    *(result + 23) = 19;
  }

  *(result + 15) = 844517973;
  *result = *"RFTestSettingsEURV2";
  result = (result + 19);
LABEL_26:
  *result = 0;
  return result;
}

uint64_t capabilities::abs::supportsAccessoryModule(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCDF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCDF8))
  {
    byte_1ED7FCBEF = ((TelephonyRadiosGetRadioVendor() - 1) & 0xFFFFFFFD) == 0;
    __cxa_guard_release(&qword_1ED7FCDF8);
  }

  return byte_1ED7FCBEF;
}

uint64_t capabilities::abs::supportsRFSelfTest(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCE00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCE00))
  {
    Radio = TelephonyRadiosGetRadio();
    byte_1ED7FCBF0 = (Radio < 0x14) & (0xEFFAEu >> Radio);
    __cxa_guard_release(&qword_1ED7FCE00);
  }

  return byte_1ED7FCBF0;
}

uint64_t capabilities::abs::supportsBatteryInfoMonitoring(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCE08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCE08))
  {
    byte_1ED7FCBF1 = ((TelephonyRadiosGetRadioVendor() - 1) & 0xFFFFFFFD) == 0;
    __cxa_guard_release(&qword_1ED7FCE08);
  }

  return byte_1ED7FCBF1;
}

uint64_t capabilities::abs::profileBasebandHistoryMB(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCE18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCE18))
  {
    RadioVendor = TelephonyRadiosGetRadioVendor();
    v3 = 256;
    if (RadioVendor == 3)
    {
      v3 = 2048;
    }

    if (RadioVendor == 1)
    {
      v3 = 1024;
    }

    qword_1ED7FCE10 = v3;
    __cxa_guard_release(&qword_1ED7FCE18);
  }

  return qword_1ED7FCE10;
}

uint64_t capabilities::abs::profileBasebandHistoryMBForVendor(int a1)
{
  v1 = 256;
  if (a1 == 3)
  {
    v1 = 2048;
  }

  if (a1 == 1)
  {
    return 1024;
  }

  else
  {
    return v1;
  }
}

uint64_t capabilities::abs::supportsRFFEScanData(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCE20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCE20))
  {
    byte_1ED7FCBF2 = ((TelephonyRadiosGetRadioVendor() - 1) & 0xFFFFFFFD) == 0;
    __cxa_guard_release(&qword_1ED7FCE20);
  }

  return byte_1ED7FCBF2;
}

uint64_t capabilities::abs::supportsCellularLogging(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCE28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCE28))
  {
    byte_1ED7FCBF3 = ((TelephonyRadiosGetRadioVendor() - 1) & 0xFFFFFFFD) == 0;
    __cxa_guard_release(&qword_1ED7FCE28);
  }

  return byte_1ED7FCBF3;
}

uint64_t capabilities::abs::supportedSARFeatures(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCE30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCE30))
  {
    v2 = TelephonyRadiosGetRadio() - 13;
    if (v2 > 6)
    {
      v3 = 1;
    }

    else
    {
      v3 = dword_1CAE5E998[v2];
    }

    dword_1ED7FCC1C = v3;
    __cxa_guard_release(&qword_1ED7FCE30);
  }

  return dword_1ED7FCC1C;
}

uint64_t capabilities::abs::supportedSARFeaturesForRadio(int a1)
{
  if ((a1 - 13) > 6)
  {
    return 1;
  }

  else
  {
    return dword_1CAE5E998[a1 - 13];
  }
}

uint64_t capabilities::abs::supportedSARFusionFeatures(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCE38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCE38))
  {
    Radio = TelephonyRadiosGetRadio();
    dword_1ED7FCC20 = capabilities::abs::sSupportedSARFusionFeatures(Radio);
    __cxa_guard_release(&qword_1ED7FCE38);
  }

  return dword_1ED7FCC20;
}

uint64_t capabilities::abs::sSupportedSARFusionFeatures(int a1)
{
  if ((a1 - 13) > 6)
  {
    return 1;
  }

  else
  {
    return dword_1CAE5E9B4[a1 - 13];
  }
}

uint64_t capabilities::abs::supportedMobileAssetTypes(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCE40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCE40))
  {
    v2 = TelephonyRadiosGetRadio() - 14;
    if (v2 > 5)
    {
      v3 = 1;
    }

    else
    {
      v3 = dword_1CAE5E9D0[v2];
    }

    dword_1ED7FCC24 = v3;
    __cxa_guard_release(&qword_1ED7FCE40);
  }

  return dword_1ED7FCC24;
}

uint64_t capabilities::abs::supportedMobileAssetTypesForRadio(int a1)
{
  if ((a1 - 14) > 5)
  {
    return 1;
  }

  else
  {
    return dword_1CAE5E9D0[a1 - 14];
  }
}

void capabilities::abs::radarComponentVersion(std::string *a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED7FCE48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCE48))
  {
    Radio = TelephonyRadiosGetRadio();
    capabilities::abs::sRadarComponentVersion(&xmmword_1ED7FD068, Radio);
    __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED7FD068, &dword_1CAE37000);
    __cxa_guard_release(&qword_1ED7FCE48);
  }

  if (byte_1ED7FD07F < 0)
  {
    v3 = xmmword_1ED7FD068;

    std::string::__init_copy_ctor_external(a1, v3, *(&v3 + 1));
  }

  else
  {
    *&a1->__r_.__value_.__l.__data_ = xmmword_1ED7FD068;
    a1->__r_.__value_.__r.__words[2] = unk_1ED7FD078;
  }
}

_BYTE *capabilities::abs::sRadarComponentVersion(void *a1, int a2)
{
  memset(a1, 170, 24);
  v3 = std::string::basic_string[abi:ne200100]<0>(a1, "Unknown");
  if (a2 <= 12)
  {
    if (a2 > 8)
    {
      if (a2 > 10)
      {
        if (a2 == 11)
        {
          if (*(v3 + 23) < 0)
          {
            v3[1] = 4;
            v3 = *v3;
          }

          else
          {
            *(v3 + 23) = 4;
          }

          v5 = 808333363;
        }

        else
        {
          if (*(v3 + 23) < 0)
          {
            v3[1] = 4;
            v3 = *v3;
          }

          else
          {
            *(v3 + 23) = 4;
          }

          v5 = 808333874;
        }
      }

      else if (a2 == 9)
      {
        if (*(v3 + 23) < 0)
        {
          v3[1] = 4;
          v3 = *v3;
        }

        else
        {
          *(v3 + 23) = 4;
        }

        v5 = 808333362;
      }

      else
      {
        if (*(v3 + 23) < 0)
        {
          v3[1] = 4;
          v3 = *v3;
        }

        else
        {
          *(v3 + 23) = 4;
        }

        v5 = 808333618;
      }

LABEL_64:
      *v3 = v5;
      result = v3 + 4;
      goto LABEL_65;
    }

    switch(a2)
    {
      case 4:
        if (*(v3 + 23) < 0)
        {
          v3[1] = 4;
          v3 = *v3;
        }

        else
        {
          *(v3 + 23) = 4;
        }

        v5 = 1397310025;
        goto LABEL_64;
      case 7:
        if (*(v3 + 23) < 0)
        {
          v3[1] = 4;
          v3 = *v3;
        }

        else
        {
          *(v3 + 23) = 4;
        }

        v5 = 808335409;
        goto LABEL_64;
      case 8:
        if (*(v3 + 23) < 0)
        {
          v3[1] = 4;
          v3 = *v3;
        }

        else
        {
          *(v3 + 23) = 4;
        }

        v5 = 808335665;
        goto LABEL_64;
    }

    goto LABEL_38;
  }

  if (a2 <= 14)
  {
    if (a2 == 13)
    {
      if (*(v3 + 23) < 0)
      {
        v3[1] = 4;
        v3 = *v3;
      }

      else
      {
        *(v3 + 23) = 4;
      }

      v5 = 808334130;
      goto LABEL_64;
    }

    if (*(v3 + 23) < 0)
    {
      v3[1] = 1;
      v3 = *v3;
    }

    else
    {
      *(v3 + 23) = 1;
    }

    *v3 = 49;
    result = v3 + 1;
  }

  else
  {
    if ((a2 - 15) >= 2)
    {
      if (a2 == 17)
      {
        if (*(v3 + 23) < 0)
        {
          v3[1] = 4;
          v3 = *v3;
        }

        else
        {
          *(v3 + 23) = 4;
        }

        v5 = 808334386;
        goto LABEL_64;
      }

      if (a2 == 18)
      {
        if (*(v3 + 23) < 0)
        {
          v3[1] = 4;
          v3 = *v3;
        }

        else
        {
          *(v3 + 23) = 4;
        }

        v5 = 808334642;
        goto LABEL_64;
      }

LABEL_38:
      if (*(v3 + 23) < 0)
      {
        v3[1] = 7;
        v3 = *v3;
      }

      else
      {
        *(v3 + 23) = 7;
      }

      *(v3 + 3) = 1853321070;
      *v3 = 1852534357;
      result = v3 + 7;
      goto LABEL_65;
    }

    if (*(v3 + 23) < 0)
    {
      v3[1] = 2;
      v3 = *v3;
    }

    else
    {
      *(v3 + 23) = 2;
    }

    *v3 = 13618;
    result = v3 + 2;
  }

LABEL_65:
  *result = 0;
  return result;
}

void capabilities::abs::radarComponentID(std::string *a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED7FCE50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCE50))
  {
    Radio = TelephonyRadiosGetRadio();
    capabilities::abs::sRadarComponentID(&xmmword_1ED7FD080, Radio);
    __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED7FD080, &dword_1CAE37000);
    __cxa_guard_release(&qword_1ED7FCE50);
  }

  if (byte_1ED7FD097 < 0)
  {
    v3 = xmmword_1ED7FD080;

    std::string::__init_copy_ctor_external(a1, v3, *(&v3 + 1));
  }

  else
  {
    *&a1->__r_.__value_.__l.__data_ = xmmword_1ED7FD080;
    a1->__r_.__value_.__r.__words[2] = unk_1ED7FD090;
  }
}

void *capabilities::abs::sRadarComponentID(void *a1, int a2)
{
  memset(a1, 170, 24);
  result = std::string::basic_string[abi:ne200100]<0>(a1, "Unknown");
  v4 = *(result + 23);
  switch(a2)
  {
    case 4:
      if (v4 < 0)
      {
        result[1] = 6;
        result = *result;
      }

      else
      {
        *(result + 23) = 6;
      }

      v6 = 12851;
      goto LABEL_52;
    case 7:
      if (v4 < 0)
      {
        result[1] = 6;
        result = *result;
      }

      else
      {
        *(result + 23) = 6;
      }

      v6 = 12339;
LABEL_52:
      *(result + 2) = v6;
      v7 = 909652024;
      goto LABEL_53;
    case 8:
      if (v4 < 0)
      {
        result[1] = 6;
        result = *result;
      }

      else
      {
        *(result + 23) = 6;
      }

      *(result + 2) = 12343;
      v7 = 909521976;
LABEL_53:
      *result = v7;
      v8 = result + 6;
      goto LABEL_65;
    case 9:
      if (v4 < 0)
      {
        result[1] = 7;
        result = *result;
      }

      else
      {
        *(result + 23) = 7;
      }

      *(result + 3) = 942682932;
      v5 = 875769905;
      goto LABEL_64;
    case 10:
      if (v4 < 0)
      {
        result[1] = 7;
        result = *result;
      }

      else
      {
        *(result + 23) = 7;
      }

      *(result + 3) = 892549171;
      v5 = 859385905;
      goto LABEL_64;
    case 11:
      if (v4 < 0)
      {
        result[1] = 7;
        result = *result;
      }

      else
      {
        *(result + 23) = 7;
      }

      *(result + 3) = 909521719;
      v5 = 926167345;
      goto LABEL_64;
    case 12:
      if (v4 < 0)
      {
        result[1] = 7;
        result = *result;
      }

      else
      {
        *(result + 23) = 7;
      }

      *(result + 3) = 858863413;
      v5 = 892350769;
      goto LABEL_64;
    case 13:
      if (v4 < 0)
      {
        result[1] = 7;
        result = *result;
      }

      else
      {
        *(result + 23) = 7;
      }

      *(result + 3) = 808465209;
      v5 = 959591217;
      goto LABEL_64;
    case 14:
      if (v4 < 0)
      {
        result[1] = 7;
        result = *result;
      }

      else
      {
        *(result + 23) = 7;
      }

      *(result + 3) = 909521461;
      v5 = 892940337;
      goto LABEL_64;
    case 15:
      if (v4 < 0)
      {
        result[1] = 7;
        result = *result;
      }

      else
      {
        *(result + 23) = 7;
      }

      *(result + 3) = 943274289;
      v5 = 825505329;
      goto LABEL_64;
    case 16:
      if (v4 < 0)
      {
        result[1] = 7;
        result = *result;
      }

      else
      {
        *(result + 23) = 7;
      }

      *(result + 3) = 875902773;
      v5 = 892548145;
      goto LABEL_64;
    case 17:
      if (v4 < 0)
      {
        result[1] = 7;
        result = *result;
      }

      else
      {
        *(result + 23) = 7;
      }

      *(result + 3) = 942944567;
      v5 = 925971761;
      goto LABEL_64;
    case 18:
      if (v4 < 0)
      {
        result[1] = 7;
        result = *result;
      }

      else
      {
        *(result + 23) = 7;
      }

      *(result + 3) = 809055794;
      v5 = 842478897;
      goto LABEL_64;
    case 19:
      if (v4 < 0)
      {
        result[1] = 7;
        result = *result;
      }

      else
      {
        *(result + 23) = 7;
      }

      *(result + 3) = 875968823;
      v5 = 926495537;
      goto LABEL_64;
    default:
      if (v4 < 0)
      {
        result[1] = 7;
        result = *result;
      }

      else
      {
        *(result + 23) = 7;
      }

      *(result + 3) = 1853321070;
      v5 = 1852534357;
LABEL_64:
      *result = v5;
      v8 = result + 7;
LABEL_65:
      *v8 = 0;
      return result;
  }
}

uint64_t capabilities::abs::supportsNetworkPolicy(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCE58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCE58))
  {
    Radio = TelephonyRadiosGetRadio();
    v4 = Radio == 4 || Radio == 16;
    byte_1ED7FCBF4 = v4;
    __cxa_guard_release(&qword_1ED7FCE58);
  }

  return byte_1ED7FCBF4;
}

uint64_t capabilities::abs::supportsCPMSConnectedState(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCE60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCE60))
  {
    Radio = TelephonyRadiosGetRadio();
    v4 = Radio == 4 || Radio == 16;
    byte_1ED7FCBF5 = v4;
    __cxa_guard_release(&qword_1ED7FCE60);
  }

  return byte_1ED7FCBF5;
}

uint64_t capabilities::abs::supportsTraceBackgroundMode(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCE68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCE68))
  {
    Radio = TelephonyRadiosGetRadio();
    byte_1ED7FCBF6 = (Radio < 0x11) & (0x10110u >> Radio);
    __cxa_guard_release(&qword_1ED7FCE68);
  }

  return byte_1ED7FCBF6;
}

uint64_t capabilities::abs::supportsKIS(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCE70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCE70))
  {
    Radio = TelephonyRadiosGetRadio();
    v4 = Radio == 4 || Radio == 16;
    byte_1ED7FCBF7 = v4;
    __cxa_guard_release(&qword_1ED7FCE70);
  }

  return byte_1ED7FCBF7;
}

uint64_t capabilities::abs::BBUSBDelay(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCE80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCE80))
  {
    Radio = TelephonyRadiosGetRadio();
    v3 = Radio == 16 || Radio == 4;
    v4 = 10;
    if (!v3)
    {
      v4 = 0;
    }

    qword_1ED7FCE78 = v4;
    __cxa_guard_release(&qword_1ED7FCE80);
  }

  return qword_1ED7FCE78;
}

uint64_t capabilities::abs::BBUSBDelayForRadio(int a1)
{
  if (a1 == 16 || a1 == 4)
  {
    return 10;
  }

  else
  {
    return 0;
  }
}

uint64_t capabilities::abs::shouldUseMinBasebandTransportIOReadCount(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCE88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCE88))
  {
    byte_1ED7FCBF8 = TelephonyRadiosGetRadioVendor() == 2;
    __cxa_guard_release(&qword_1ED7FCE88);
  }

  return byte_1ED7FCBF8;
}

uint64_t capabilities::abs::usesCDC(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCE90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCE90))
  {
    byte_1ED7FCBF9 = ((TelephonyRadiosGetRadioVendor() - 2) & 0xFFFFFFFD) == 0;
    __cxa_guard_release(&qword_1ED7FCE90);
  }

  return byte_1ED7FCBF9;
}

uint64_t capabilities::abs::shouldSetRegion(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCE98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCE98))
  {
    byte_1ED7FCBFA = TelephonyRadiosGetRadio() - 7 < 2;
    __cxa_guard_release(&qword_1ED7FCE98);
  }

  return byte_1ED7FCBFA;
}

uint64_t capabilities::abs::supportsETB(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCEA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCEA0))
  {
    byte_1ED7FCBFB = TelephonyRadiosGetRadio() - 7 < 2;
    __cxa_guard_release(&qword_1ED7FCEA0);
  }

  return byte_1ED7FCBFB;
}

uint64_t capabilities::abs::shouldAddPeriodicMeasurementPSSpecifier(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCEA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCEA8))
  {
    byte_1ED7FCBFC = TelephonyRadiosGetRadio() - 7 < 2;
    __cxa_guard_release(&qword_1ED7FCEA8);
  }

  return byte_1ED7FCBFC;
}

uint64_t capabilities::abs::supportsETSProtocol(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCEB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCEB0))
  {
    byte_1ED7FCBFD = TelephonyRadiosGetRadio() - 7 < 2;
    __cxa_guard_release(&qword_1ED7FCEB0);
  }

  return byte_1ED7FCBFD;
}

uint64_t capabilities::abs::supportsETSBypass(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCEB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCEB8))
  {
    Radio = TelephonyRadiosGetRadio();
    byte_1ED7FCBFE = capabilities::abs::sSupportsETSBypass(Radio);
    __cxa_guard_release(&qword_1ED7FCEB8);
  }

  return byte_1ED7FCBFE;
}

uint64_t capabilities::abs::sSupportsETSBypass(int a1)
{
  if ((a1 - 7) > 1)
  {
    return 0;
  }

  if (TelephonyUtilIsCarrierBuild())
  {
    return 1;
  }

  return TelephonyUtilIsInternalBuild();
}

uint64_t capabilities::abs::supportsETSBypassForRadio(int a1)
{
  if ((a1 - 7) > 1)
  {
    return 0;
  }

  if (TelephonyUtilIsCarrierBuild())
  {
    return 1;
  }

  return TelephonyUtilIsInternalBuild();
}

uint64_t capabilities::abs::shouldUseMinBasebandTransportIOReadSize(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCEC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCEC0))
  {
    byte_1ED7FCBFF = TelephonyRadiosGetRadio() == 7;
    __cxa_guard_release(&qword_1ED7FCEC0);
  }

  return byte_1ED7FCBFF;
}

uint64_t capabilities::abs::nonPrimaryDLServingCellBandwidthMaxValue(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCED0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCED0))
  {
    Radio = TelephonyRadiosGetRadio();
    qword_1ED7FCEC8 = capabilities::abs::sNonPrimaryDLServingCellBandwidthMaxValue(Radio);
    __cxa_guard_release(&qword_1ED7FCED0);
  }

  return qword_1ED7FCEC8;
}

uint64_t capabilities::abs::sNonPrimaryDLServingCellBandwidthMaxValue(int a1)
{
  if (a1 != 8)
  {
    return 0xFFFFFFFFLL;
  }

  v1 = pthread_mutex_lock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  v2 = off_1ED7FCBC0;
  if (!off_1ED7FCBC0)
  {
    ctu::Gestalt::create_default_global(&v8, v1);
    v3 = v8;
    v8 = 0uLL;
    v4 = *(&off_1ED7FCBC0 + 1);
    off_1ED7FCBC0 = v3;
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      if (*(&v8 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v8 + 1));
      }
    }

    v2 = off_1ED7FCBC0;
  }

  v5 = *(&off_1ED7FCBC0 + 1);
  if (*(&off_1ED7FCBC0 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1ED7FCBC0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  if ((*(*v2 + 144))(v2))
  {
    v6 = 5000000;
  }

  else
  {
    v6 = 0xFFFFFFFFLL;
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v6;
}

uint64_t capabilities::abs::thermalSensorMaxCount(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCEE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCEE0))
  {
    Product = TelephonyRadiosGetProduct();
    qword_1ED7FCED8 = capabilities::abs::sThermalSensorMaxCount(Product);
    __cxa_guard_release(&qword_1ED7FCEE0);
  }

  return qword_1ED7FCED8;
}

uint64_t capabilities::abs::sThermalSensorMaxCount(int a1)
{
  result = 2;
  v3 = a1 - 114;
  if ((a1 - 114) > 0x34)
  {
    goto LABEL_5;
  }

  if (((1 << v3) & 0x1C0078F03C000FLL) != 0)
  {
    return result;
  }

  if (((1 << v3) & 0x380701801840) != 0)
  {
    return 3;
  }

LABEL_5:
  if (a1 != 212)
  {
    return 0;
  }

  return result;
}

uint64_t capabilities::abs::supportsSMCThermalReport(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCEE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCEE8))
  {
    Radio = TelephonyRadiosGetRadio();
    byte_1ED7FCC00 = (Radio < 0x13) & (0x63C00u >> Radio);
    __cxa_guard_release(&qword_1ED7FCEE8);
  }

  return byte_1ED7FCC00;
}

uint64_t capabilities::abs::SMCThermalReportInterval(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCEF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCEF8))
  {
    v2 = TelephonyRadiosGetRadio() - 10;
    if (v2 > 8)
    {
      v3 = 0;
    }

    else
    {
      v3 = qword_1CAE5E9E8[v2];
    }

    qword_1ED7FCEF0 = v3;
    __cxa_guard_release(&qword_1ED7FCEF8);
  }

  return qword_1ED7FCEF0;
}

uint64_t capabilities::abs::SMCThermalReportIntervalForRadio(int a1)
{
  if ((a1 - 10) > 8)
  {
    return 0;
  }

  else
  {
    return qword_1CAE5E9E8[a1 - 10];
  }
}

uint64_t capabilities::abs::supportsResetSPMIEvent(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCF00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCF00))
  {
    Radio = TelephonyRadiosGetRadio();
    byte_1ED7FCC01 = (Radio < 0x13) & (0x63C00u >> Radio);
    __cxa_guard_release(&qword_1ED7FCF00);
  }

  return byte_1ED7FCC01;
}

uint64_t capabilities::abs::supportsProtocolNVConfig(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCF08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCF08))
  {
    Radio = TelephonyRadiosGetRadio();
    byte_1ED7FCC02 = (Radio < 0x13) & (0x63C00u >> Radio);
    __cxa_guard_release(&qword_1ED7FCF08);
  }

  return byte_1ED7FCC02;
}

uint64_t capabilities::abs::supportsCPMSGetPowerFromBB(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCF10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCF10))
  {
    Radio = TelephonyRadiosGetRadio();
    byte_1ED7FCC03 = (Radio < 0x13) & (0x63C00u >> Radio);
    __cxa_guard_release(&qword_1ED7FCF10);
  }

  return byte_1ED7FCC03;
}

uint64_t capabilities::abs::supportsDesense(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCF18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCF18))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FCC04 = capabilities::abs::sSupportsDesense(Product);
    __cxa_guard_release(&qword_1ED7FCF18);
  }

  return byte_1ED7FCC04;
}

uint64_t capabilities::abs::sSupportsDesense(int a1)
{
  result = 1;
  if ((a1 - 118) > 0x33 || ((1 << (a1 - 118)) & 0xDF3BFFFFBFF83) == 0)
  {
    v3 = a1 - 209;
    if (v3 > 3 || v3 == 1)
    {
      return 0;
    }
  }

  return result;
}

uint64_t capabilities::abs::supportsEFSEraseOnBootLoop(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCF20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCF20))
  {
    Radio = TelephonyRadiosGetRadio();
    byte_1ED7FCC05 = (Radio < 0x14) & (0xEF000u >> Radio);
    __cxa_guard_release(&qword_1ED7FCF20);
  }

  return byte_1ED7FCC05;
}

uint64_t capabilities::abs::supportsDesenseRFSelfTest(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCF28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCF28))
  {
    Radio = TelephonyRadiosGetRadio();
    byte_1ED7FCC06 = (Radio < 0x13) & (0x62000u >> Radio);
    __cxa_guard_release(&qword_1ED7FCF28);
  }

  return byte_1ED7FCC06;
}

uint64_t capabilities::abs::supportsBasebandInsights(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCF30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCF30))
  {
    byte_1ED7FCC07 = TelephonyRadiosGetRadio() - 13 < 7;
    __cxa_guard_release(&qword_1ED7FCF30);
  }

  return byte_1ED7FCC07;
}

uint64_t capabilities::abs::supportsCongestionPrediction(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCF38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCF38))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FCC08 = capabilities::abs::sSupportsCongestionPrediction(Product);
    __cxa_guard_release(&qword_1ED7FCF38);
  }

  return byte_1ED7FCC08;
}

uint64_t capabilities::abs::sSupportsCongestionPrediction(int a1)
{
  result = 1;
  if ((a1 - 137) > 0x3F || ((1 << (a1 + 119)) & 0x800000107878FFE3) == 0)
  {
    v3 = a1 - 202;
    if (v3 > 0xE || ((1 << v3) & 0x5C21) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t capabilities::abs::supportsWirelessTelemetryUsingMultiClientModel(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCF40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCF40))
  {
    byte_1ED7FCC09 = TelephonyRadiosGetRadioVendor() == 4;
    __cxa_guard_release(&qword_1ED7FCF40);
  }

  return byte_1ED7FCC09;
}

uint64_t capabilities::abs::supportsPPMReportingViaSPMI(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCF48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCF48))
  {
    byte_1ED7FCC0A = TelephonyRadiosGetRadioVendor() == 4;
    __cxa_guard_release(&qword_1ED7FCF48);
  }

  return byte_1ED7FCC0A;
}

uint64_t capabilities::abs::supportsMipcMetricStreaming(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCF50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCF50))
  {
    TelephonyRadiosGetRadioVendor();
    byte_1ED7FCC0B = 0;
    __cxa_guard_release(&qword_1ED7FCF50);
  }

  return byte_1ED7FCC0B;
}

uint64_t capabilities::abs::traceTransportTimeoutScalingFactor(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCF58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCF58))
  {
    v2 = TelephonyRadiosGetProduct() - 200;
    if (v2 > 0xF)
    {
      v3 = 1;
    }

    else
    {
      v3 = dword_1CAE5EA30[v2];
    }

    dword_1ED7FCC28 = v3;
    __cxa_guard_release(&qword_1ED7FCF58);
  }

  return dword_1ED7FCC28;
}

uint64_t capabilities::abs::traceTransportTimeoutScalingFactorForProduct(int a1)
{
  if ((a1 - 200) > 0xF)
  {
    return 1;
  }

  else
  {
    return dword_1CAE5EA30[a1 - 200];
  }
}

uint64_t capabilities::abs::supportedHSARType(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCF60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCF60))
  {
    v2 = TelephonyRadiosGetProduct() - 156;
    if (v2 <= 0x3C)
    {
      if (((1 << v2) & 0x1C030) != 0)
      {
        v3 = 3;
        goto LABEL_11;
      }

      if (((1 << v2) & 0x1608000000000800) != 0)
      {
        v3 = 2;
LABEL_11:
        dword_1ED7FCC2C = v3;
        __cxa_guard_release(&qword_1ED7FCF60);
        return dword_1ED7FCC2C;
      }

      if (((1 << v2) & 0x500000020001) != 0)
      {
        v3 = 1;
        goto LABEL_11;
      }
    }

    v3 = 0;
    goto LABEL_11;
  }

  return dword_1ED7FCC2C;
}

uint64_t capabilities::abs::supportedHSARTypeForProduct(int a1)
{
  v1 = a1 + 100;
  if ((a1 - 156) > 0x3C)
  {
    return 0;
  }

  if (((1 << v1) & 0x1C030) != 0)
  {
    return 3;
  }

  if (((1 << v1) & 0x1608000000000800) != 0)
  {
    return 2;
  }

  return ((1 << v1) & 0x500000020001) != 0;
}

uint64_t capabilities::abs::reducedFeatureSet(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCF68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCF68))
  {
    byte_1ED7FCC0C = TelephonyRadiosGetRadioVendor() == 3;
    __cxa_guard_release(&qword_1ED7FCF68);
  }

  return byte_1ED7FCC0C;
}

uint64_t capabilities::abs::defaultBasebandTransportTimeout(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCF78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCF78))
  {
    RadioVendor = TelephonyRadiosGetRadioVendor();
    v3 = 10000;
    if (RadioVendor == 3)
    {
      v3 = 3600000;
    }

    qword_1ED7FCF70 = v3;
    __cxa_guard_release(&qword_1ED7FCF78);
  }

  return qword_1ED7FCF70;
}

uint64_t capabilities::abs::defaultBasebandTransportTimeoutForVendor(int a1)
{
  if (a1 == 3)
  {
    return 3600000;
  }

  else
  {
    return 10000;
  }
}

uint64_t capabilities::abs::supportsCellularCert(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCF80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCF80))
  {
    byte_1ED7FCC0D = TelephonyRadiosGetRadioVendor() == 3;
    __cxa_guard_release(&qword_1ED7FCF80);
  }

  return byte_1ED7FCC0D;
}

uint64_t capabilities::abs::supportsLCDM(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCF88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCF88))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FCC0E = ((Product - 156) < 0x3D) & (0x160850000003C831uLL >> (Product + 100));
    __cxa_guard_release(&qword_1ED7FCF88);
  }

  return byte_1ED7FCC0E;
}

uint64_t capabilities::abs::serviceStartTimeoutScalingFactor(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCF98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCF98))
  {
    v2 = TelephonyRadiosGetProduct() - 200;
    if (v2 <= 0xF && ((1 << v2) & 0xC183) != 0)
    {
      v3 = 100;
    }

    else
    {
      v3 = 1;
    }

    qword_1ED7FCF90 = v3;
    __cxa_guard_release(&qword_1ED7FCF98);
  }

  return qword_1ED7FCF90;
}

uint64_t capabilities::abs::serviceStartTimeoutScalingFactorForProduct(int a1)
{
  if ((a1 - 200) <= 0xF && ((1 << (a1 + 56)) & 0xC183) != 0)
  {
    return 100;
  }

  else
  {
    return 1;
  }
}

uint64_t capabilities::abs::serviceShutdownTimeoutScalingFactor(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCFA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCFA8))
  {
    v2 = TelephonyRadiosGetProduct() - 200;
    if (v2 <= 0xF && ((1 << v2) & 0xC183) != 0)
    {
      v3 = 300;
    }

    else
    {
      v3 = 1;
    }

    qword_1ED7FCFA0 = v3;
    __cxa_guard_release(&qword_1ED7FCFA8);
  }

  return qword_1ED7FCFA0;
}

uint64_t capabilities::abs::serviceShutdownTimeoutScalingFactorForProduct(int a1)
{
  if ((a1 - 200) <= 0xF && ((1 << (a1 + 56)) & 0xC183) != 0)
  {
    return 300;
  }

  else
  {
    return 1;
  }
}

uint64_t capabilities::abs::bootupAssertionTimeoutScalingFactor(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCFB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCFB8))
  {
    v2 = TelephonyRadiosGetProduct() - 200;
    if (v2 <= 0xF && ((1 << v2) & 0xC183) != 0)
    {
      v3 = 8;
    }

    else
    {
      v3 = 1;
    }

    qword_1ED7FCFB0 = v3;
    __cxa_guard_release(&qword_1ED7FCFB8);
  }

  return qword_1ED7FCFB0;
}

uint64_t capabilities::abs::bootupAssertionTimeoutScalingFactorForProduct(int a1)
{
  if ((a1 - 200) <= 0xF && ((1 << (a1 + 56)) & 0xC183) != 0)
  {
    return 8;
  }

  else
  {
    return 1;
  }
}

uint64_t capabilities::abs::ARIMessageTimeoutScalingFactor(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCFC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCFC8))
  {
    v2 = TelephonyRadiosGetProduct() - 200;
    if (v2 <= 0xF && ((1 << v2) & 0xC183) != 0)
    {
      v3 = 120;
    }

    else
    {
      v3 = 1;
    }

    qword_1ED7FCFC0 = v3;
    __cxa_guard_release(&qword_1ED7FCFC8);
  }

  return qword_1ED7FCFC0;
}

uint64_t capabilities::abs::ARIMessageTimeoutScalingFactorForProduct(int a1)
{
  if ((a1 - 200) <= 0xF && ((1 << (a1 + 56)) & 0xC183) != 0)
  {
    return 120;
  }

  else
  {
    return 1;
  }
}

uint64_t capabilities::abs::engageTimeoutScalingFactor(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCFD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCFD8))
  {
    v2 = TelephonyRadiosGetProduct() - 200;
    if (v2 <= 0xF && ((1 << v2) & 0xC183) != 0)
    {
      v3 = 10;
    }

    else
    {
      v3 = 1;
    }

    qword_1ED7FCFD0 = v3;
    __cxa_guard_release(&qword_1ED7FCFD8);
  }

  return qword_1ED7FCFD0;
}

uint64_t capabilities::abs::engageTimeoutScalingFactorForProduct(int a1)
{
  if ((a1 - 200) <= 0xF && ((1 << (a1 + 56)) & 0xC183) != 0)
  {
    return 10;
  }

  else
  {
    return 1;
  }
}

uint64_t capabilities::abs::defaultSystemLogsHistory(capabilities::abs *this)
{
  if ((atomic_load_explicit(&qword_1ED7FCFE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FCFE8))
  {
    v2 = TelephonyRadiosGetProduct() - 200;
    if (v2 <= 0xF && ((1 << v2) & 0xC183) != 0)
    {
      v3 = 28800;
    }

    else
    {
      v3 = 1800;
    }

    qword_1ED7FCFE0 = v3;
    __cxa_guard_release(&qword_1ED7FCFE8);
  }

  return qword_1ED7FCFE0;
}

uint64_t capabilities::abs::defaultSystemLogsHistoryForProduct(int a1)
{
  if ((a1 - 200) <= 0xF && ((1 << (a1 + 56)) & 0xC183) != 0)
  {
    return 28800;
  }

  else
  {
    return 1800;
  }
}

uint64_t capabilities::abs::operator&(unsigned int a1, int a2)
{
  return a2 & a1;
}

{
  return a2 & a1;
}

{
  return a2 & a1;
}

_DWORD *capabilities::abs::operator&=(_DWORD *result, int a2)
{
  *result &= a2;
  return result;
}

{
  *result &= a2;
  return result;
}

{
  *result &= a2;
  return result;
}

uint64_t capabilities::abs::operator|(unsigned int a1, int a2)
{
  return a2 | a1;
}

{
  return a2 | a1;
}

{
  return a2 | a1;
}

_DWORD *capabilities::abs::operator|=(_DWORD *result, int a2)
{
  *result |= a2;
  return result;
}

{
  *result |= a2;
  return result;
}

{
  *result |= a2;
  return result;
}

uint64_t capabilities::abs::operator^(unsigned int a1, int a2)
{
  return a2 ^ a1;
}

{
  return a2 ^ a1;
}

{
  return a2 ^ a1;
}

_DWORD *capabilities::abs::operator^=(_DWORD *result, int a2)
{
  *result ^= a2;
  return result;
}

{
  *result ^= a2;
  return result;
}

{
  *result ^= a2;
  return result;
}

uint64_t capabilities::abs::operator~(int a1)
{
  return ~a1;
}

{
  return ~a1;
}

{
  return ~a1;
}

void capabilities::abs::asString(int a1@<W0>, std::string *a2@<X8>)
{
  memset(&v8, 170, sizeof(v8));
  std::string::basic_string[abi:ne200100]<0>(&v8, "???");
  v5 = 0;
  v6 = 0;
  v7 = 0;
  if (a1 == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(a2, "kSARLegacy");
    goto LABEL_14;
  }

  if ((a1 & 2) != 0 && (std::string::basic_string[abi:ne200100]<0>(&__p, "kSARFusion"), std::vector<std::string>::push_back[abi:ne200100](&v5, &__p), SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0))
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((a1 & 4) != 0)
    {
LABEL_6:
      std::string::basic_string[abi:ne200100]<0>(&__p, "kHSAR");
      std::vector<std::string>::push_back[abi:ne200100](&v5, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  else if ((a1 & 4) != 0)
  {
    goto LABEL_6;
  }

  if (v6 != v5)
  {
    ctu::join<std::__wrap_iter<std::string *>>(v5, v6, " | ", 3uLL, &__p);
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }

    v8 = __p;
  }

  *a2 = v8;
  memset(&v8, 0, sizeof(v8));
LABEL_14:
  __p.__r_.__value_.__r.__words[0] = &v5;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

{
  memset(&v8, 170, sizeof(v8));
  std::string::basic_string[abi:ne200100]<0>(&v8, "???");
  v5 = 0;
  v6 = 0;
  v7 = 0;
  if (a1 == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(a2, "kNone");
    goto LABEL_41;
  }

  if ((a1 & 2) != 0 && (std::string::basic_string[abi:ne200100]<0>(&__p, "kAccessory"), std::vector<std::string>::push_back[abi:ne200100](&v5, &__p), SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0))
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((a1 & 4) == 0)
    {
      goto LABEL_9;
    }
  }

  else if ((a1 & 4) == 0)
  {
    goto LABEL_9;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "kSARSelection");
  std::vector<std::string>::push_back[abi:ne200100](&v5, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_9:
  if ((a1 & 8) != 0 && (std::string::basic_string[abi:ne200100]<0>(&__p, "kTunerState"), std::vector<std::string>::push_back[abi:ne200100](&v5, &__p), SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0))
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((a1 & 0x10) == 0)
  {
    goto LABEL_15;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "kSpeakerState");
  std::vector<std::string>::push_back[abi:ne200100](&v5, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_15:
  if ((a1 & 0x20) != 0 && (std::string::basic_string[abi:ne200100]<0>(&__p, "kGripState"), std::vector<std::string>::push_back[abi:ne200100](&v5, &__p), SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0))
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_21;
    }
  }

  else if ((a1 & 0x40) == 0)
  {
    goto LABEL_21;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "kPowerState");
  std::vector<std::string>::push_back[abi:ne200100](&v5, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_21:
  if ((a1 & 0x80) != 0 && (std::string::basic_string[abi:ne200100]<0>(&__p, "kWristState"), std::vector<std::string>::push_back[abi:ne200100](&v5, &__p), SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0))
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_27;
    }
  }

  else if ((a1 & 0x100) == 0)
  {
    goto LABEL_27;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "kWiFiState");
  std::vector<std::string>::push_back[abi:ne200100](&v5, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_27:
  if ((a1 & 0x200) != 0 && (std::string::basic_string[abi:ne200100]<0>(&__p, "kBTState"), std::vector<std::string>::push_back[abi:ne200100](&v5, &__p), SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0))
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((a1 & 0x400) != 0)
    {
LABEL_30:
      std::string::basic_string[abi:ne200100]<0>(&__p, "kThreadState");
      std::vector<std::string>::push_back[abi:ne200100](&v5, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  else if ((a1 & 0x400) != 0)
  {
    goto LABEL_30;
  }

  if ((a1 & 0x800) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "kVoiceState");
    std::vector<std::string>::push_back[abi:ne200100](&v5, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (v6 != v5)
  {
    ctu::join<std::__wrap_iter<std::string *>>(v5, v6, " | ", 3uLL, &__p);
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }

    v8 = __p;
  }

  *a2 = v8;
  memset(&v8, 0, sizeof(v8));
LABEL_41:
  __p.__r_.__value_.__r.__words[0] = &v5;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

{
  memset(&v8, 170, sizeof(v8));
  std::string::basic_string[abi:ne200100]<0>(&v8, "???");
  v5 = 0;
  v6 = 0;
  v7 = 0;
  if (a1 == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(a2, "kNotSupported");
    goto LABEL_14;
  }

  if ((a1 & 2) != 0 && (std::string::basic_string[abi:ne200100]<0>(&__p, "kMAVBasebandPT"), std::vector<std::string>::push_back[abi:ne200100](&v5, &__p), SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0))
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((a1 & 4) != 0)
    {
LABEL_6:
      std::string::basic_string[abi:ne200100]<0>(&__p, "kINTBasebandPT");
      std::vector<std::string>::push_back[abi:ne200100](&v5, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  else if ((a1 & 4) != 0)
  {
    goto LABEL_6;
  }

  if (v6 != v5)
  {
    ctu::join<std::__wrap_iter<std::string *>>(v5, v6, " | ", 3uLL, &__p);
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }

    v8 = __p;
  }

  *a2 = v8;
  memset(&v8, 0, sizeof(v8));
LABEL_14:
  __p.__r_.__value_.__r.__words[0] = &v5;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

void sub_1CAE438AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __p = &a15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

void *std::string::basic_string[abi:ne200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    v6 = operator new(v7);
    a1[1] = v5;
    a1[2] = v7 | 0x8000000000000000;
    *a1 = v6;
  }

  else
  {
    *(a1 + 23) = v4;
    v6 = a1;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  memmove(v6, __s, v5);
LABEL_10:
  *(v6 + v5) = 0;
  return a1;
}

void std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    v20.__end_cap_.__value_ = a1;
    if (v11)
    {
      v12 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v11);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[24 * v8];
    v14 = &v12[24 * v11];
    v15 = *a2;
    *(v13 + 2) = *(a2 + 2);
    *v13 = v15;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = v13 + 24;
    v16 = *(a1 + 8) - *a1;
    v17 = &v13[-v16];
    memcpy(&v13[-v16], *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v7;
    v19 = *(a1 + 16);
    *(a1 + 16) = v14;
    v20.__end_ = v18;
    v20.__end_cap_.__value_ = v19;
    v20.__first_ = v18;
    v20.__begin_ = v18;
    std::__split_buffer<std::string>::~__split_buffer(&v20);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = (v4 + 24);
  }

  *(a1 + 8) = v7;
}

std::string *ctu::join<std::__wrap_iter<std::string *>>@<X0>(std::string *__str@<X0>, std::string *a2@<X1>, const void *a3@<X2>, size_t a4@<X3>, std::string *a5@<X8>)
{
  a5->__r_.__value_.__r.__words[0] = 0;
  a5->__r_.__value_.__l.__size_ = 0;
  a5->__r_.__value_.__r.__words[2] = 0;
  if (__str != a2)
  {
    v8 = __str;
    __str = std::string::operator=(a5, __str);
    if ((a4 | 7) == 0x17)
    {
      v10 = 25;
    }

    else
    {
      v10 = (a4 | 7) + 1;
    }

    for (i = v8 + 1; ; ++i)
    {
      if (i == a2)
      {
        return __str;
      }

      if (!a3)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        __dst = 0;
        v22 = 0;
        v23 = 0;
        goto LABEL_17;
      }

      if (a4 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (a4 >= 0x17)
      {
        p_dst = operator new(v10);
        v22 = a4;
        v23 = v10 | 0x8000000000000000;
        __dst = p_dst;
      }

      else
      {
        HIBYTE(v23) = a4;
        p_dst = &__dst;
        if (!a4)
        {
          goto LABEL_16;
        }
      }

      memmove(p_dst, a3, a4);
LABEL_16:
      *(p_dst + a4) = 0;
      v15 = HIBYTE(v23);
      v14 = __dst;
      v13 = v22;
LABEL_17:
      if ((v15 & 0x80u) == 0)
      {
        v16 = &__dst;
      }

      else
      {
        v16 = v14;
      }

      if ((v15 & 0x80u) == 0)
      {
        v17 = v15;
      }

      else
      {
        v17 = v13;
      }

      std::string::append(a5, v16, v17);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(__dst);
      }

      v18 = SHIBYTE(i->__r_.__value_.__r.__words[2]);
      if (v18 >= 0)
      {
        v19 = i;
      }

      else
      {
        v19 = i->__r_.__value_.__r.__words[0];
      }

      if (v18 >= 0)
      {
        size = HIBYTE(i->__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = i->__r_.__value_.__l.__size_;
      }

      __str = std::string::append(a5, v19, size);
    }
  }

  return __str;
}

void sub_1CAE43C38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_1CAE43F94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __p = &a15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

void *capabilities::abs::asString@<X0>(unsigned int a1@<W0>, void *a2@<X8>)
{
  if (a1 > 3)
  {
    v2 = "???";
  }

  else
  {
    v2 = off_1E83A5DA0[a1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

void sub_1CAE441A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __p = &a15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  v5 = this;
  if (__sz > 0x16)
  {
    if (__sz >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if ((__sz | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (__sz | 7) + 1;
    }

    v7 = operator new(v6);
    v5->__r_.__value_.__l.__size_ = __sz;
    v5->__r_.__value_.__r.__words[2] = v6 | 0x8000000000000000;
    v5->__r_.__value_.__r.__words[0] = v7;
    v5 = v7;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __sz;
  }

  memmove(v5, __s, __sz + 1);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E83A5D98, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xAAAAAAAAAAAAAABLL)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(24 * a2);
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t __cxx_global_var_init()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ctu::Gestalt>::~PthreadMutexGuardPolicy, &ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance, &dword_1CAE37000);
  }

  return result;
}

uint64_t capabilities::absinternal::wakeReasonDebugEnabled(capabilities::absinternal *this)
{
  {
    capabilities::absinternal::wakeReasonDebugEnabled(void)::ret = TelephonyRadiosGetRadioVendor() == 1;
  }

  return capabilities::absinternal::wakeReasonDebugEnabled(void)::ret;
}

uint64_t capabilities::absinternal::shouldIgnoreResets(capabilities::absinternal *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD0A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD0A0))
  {
    Product = TelephonyRadiosGetProduct();
    _MergedGlobals_0 = ((Product - 200) < 0x10) & (0xC183u >> (Product + 56));
    __cxa_guard_release(&qword_1ED7FD0A0);
  }

  return _MergedGlobals_0;
}

uint64_t capabilities::updater::ARICommandTimeout(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD178, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD178))
  {
    qword_1ED7FD170 = 2000;
    __cxa_guard_release(&qword_1ED7FD178);
  }

  return qword_1ED7FD170;
}

uint64_t capabilities::updater::resetDelay(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD188, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD188))
  {
    qword_1ED7FD180 = 0;
    __cxa_guard_release(&qword_1ED7FD188);
  }

  return qword_1ED7FD180;
}

uint64_t capabilities::updater::manifestCheckRetryCount(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD198, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD198))
  {
    qword_1ED7FD190 = 2;
    __cxa_guard_release(&qword_1ED7FD198);
  }

  return qword_1ED7FD190;
}

uint64_t capabilities::updater::repersonalizeLimitCount(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD1A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD1A8))
  {
    qword_1ED7FD1A0 = 2;
    __cxa_guard_release(&qword_1ED7FD1A8);
  }

  return qword_1ED7FD1A0;
}

uint64_t capabilities::updater::EUICCAttemptCount(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD1B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD1B8))
  {
    qword_1ED7FD1B0 = 3;
    __cxa_guard_release(&qword_1ED7FD1B8);
  }

  return qword_1ED7FD1B0;
}

uint64_t capabilities::updater::shouldBailOnEUICCError(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD1C0, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_1ED7FD1C0);
    if (v2)
    {
      _MergedGlobals_1 = capabilities::euicc::supportsLegacyUpdater(v2);
      __cxa_guard_release(&qword_1ED7FD1C0);
    }
  }

  return _MergedGlobals_1;
}

uint64_t capabilities::updater::getRPMType(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD1C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD1C8))
  {
    dword_1ED7FD0BC = 1;
    __cxa_guard_release(&qword_1ED7FD1C8);
  }

  return dword_1ED7FD0BC;
}

uint64_t capabilities::updater::getDSP3Type(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD1D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD1D0))
  {
    dword_1ED7FD0C0 = 1;
    __cxa_guard_release(&qword_1ED7FD1D0);
  }

  return dword_1ED7FD0C0;
}

uint64_t capabilities::updater::getMBAType(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD1D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD1D8))
  {
    dword_1ED7FD0C4 = 1;
    __cxa_guard_release(&qword_1ED7FD1D8);
  }

  return dword_1ED7FD0C4;
}

uint64_t capabilities::updater::getWDTType(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD1E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD1E0))
  {
    dword_1ED7FD0C8 = 1;
    __cxa_guard_release(&qword_1ED7FD1E0);
  }

  return dword_1ED7FD0C8;
}

uint64_t capabilities::updater::getActType(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD1E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD1E8))
  {
    dword_1ED7FD0CC = 1;
    __cxa_guard_release(&qword_1ED7FD1E8);
  }

  return dword_1ED7FD0CC;
}

void capabilities::updater::CALFileName(std::string *a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED7FD1F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD1F0))
  {
    RadioVendor = TelephonyRadiosGetRadioVendor();
    capabilities::updater::sCALFileName(&xmmword_1ED7FD470, RadioVendor);
    __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED7FD470, &dword_1CAE37000);
    __cxa_guard_release(&qword_1ED7FD1F0);
  }

  if (byte_1ED7FD487 < 0)
  {
    v3 = xmmword_1ED7FD470;

    std::string::__init_copy_ctor_external(a1, v3, *(&v3 + 1));
  }

  else
  {
    *&a1->__r_.__value_.__l.__data_ = xmmword_1ED7FD470;
    a1->__r_.__value_.__r.__words[2] = unk_1ED7FD480;
  }
}

void *capabilities::updater::sCALFileName(void *a1, int a2)
{
  memset(a1, 170, 24);
  result = std::string::basic_string[abi:ne200100]<0>(a1, "unknown");
  v4 = *(result + 23);
  if (a2 == 2)
  {
    if (v4 < 0)
    {
      result[1] = 9;
      result = *result;
    }

    else
    {
      *(result + 23) = 9;
    }

    *(result + 8) = 109;
    *result = *"calib.nvm";
    v6 = result + 9;
  }

  else
  {
    if (a2 == 1)
    {
      if (v4 < 0)
      {
        result[1] = 7;
        result = *result;
      }

      else
      {
        *(result + 23) = 7;
      }

      *(result + 3) = 1919247406;
      v5 = 778854755;
    }

    else
    {
      if (v4 < 0)
      {
        result[1] = 7;
        result = *result;
      }

      else
      {
        *(result + 23) = 7;
      }

      *(result + 3) = 1853321070;
      v5 = 1852534389;
    }

    *result = v5;
    v6 = result + 7;
  }

  *v6 = 0;
  return result;
}

void capabilities::updater::PROVFileName(std::string *a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED7FD1F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD1F8))
  {
    RadioVendor = TelephonyRadiosGetRadioVendor();
    capabilities::updater::sPROVFileName(&xmmword_1ED7FD488, RadioVendor);
    __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED7FD488, &dword_1CAE37000);
    __cxa_guard_release(&qword_1ED7FD1F8);
  }

  if (byte_1ED7FD49F < 0)
  {
    v3 = xmmword_1ED7FD488;

    std::string::__init_copy_ctor_external(a1, v3, *(&v3 + 1));
  }

  else
  {
    *&a1->__r_.__value_.__l.__data_ = xmmword_1ED7FD488;
    a1->__r_.__value_.__r.__words[2] = unk_1ED7FD498;
  }
}

_BYTE *capabilities::updater::sPROVFileName(void *a1, int a2)
{
  memset(a1, 170, 24);
  v3 = std::string::basic_string[abi:ne200100]<0>(a1, "unknown");
  v4 = *(v3 + 23);
  if ((a2 - 1) > 1)
  {
    if (v4 < 0)
    {
      v3[1] = 7;
      v3 = *v3;
    }

    else
    {
      *(v3 + 23) = 7;
    }

    *(v3 + 3) = 1853321070;
    *v3 = 1852534389;
    result = v3 + 7;
  }

  else
  {
    if (v4 < 0)
    {
      v3[1] = 8;
      v3 = *v3;
    }

    else
    {
      *(v3 + 23) = 8;
    }

    *v3 = 0x7265642E766F7270;
    result = v3 + 1;
  }

  *result = 0;
  return result;
}

void capabilities::updater::PACFileName(std::string *a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED7FD200, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD200))
  {
    RadioVendor = TelephonyRadiosGetRadioVendor();
    capabilities::updater::sPACFileName(&xmmword_1ED7FD4A0, RadioVendor);
    __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED7FD4A0, &dword_1CAE37000);
    __cxa_guard_release(&qword_1ED7FD200);
  }

  if (byte_1ED7FD4B7 < 0)
  {
    v3 = xmmword_1ED7FD4A0;

    std::string::__init_copy_ctor_external(a1, v3, *(&v3 + 1));
  }

  else
  {
    *&a1->__r_.__value_.__l.__data_ = xmmword_1ED7FD4A0;
    a1->__r_.__value_.__r.__words[2] = unk_1ED7FD4B0;
  }
}

void *capabilities::updater::sPACFileName(void *a1, int a2)
{
  memset(a1, 170, 24);
  result = std::string::basic_string[abi:ne200100]<0>(a1, "unknown");
  v4 = *(result + 23);
  if ((a2 - 1) > 1)
  {
    if (v4 < 0)
    {
      result[1] = 7;
      result = *result;
    }

    else
    {
      *(result + 23) = 7;
    }

    *(result + 3) = 1853321070;
    *result = 1852534389;
    v5 = result + 7;
  }

  else
  {
    if (v4 < 0)
    {
      result[1] = 9;
      result = *result;
    }

    else
    {
      *(result + 23) = 9;
    }

    *(result + 8) = 114;
    *result = *"bbpac.der";
    v5 = result + 9;
  }

  *v5 = 0;
  return result;
}

uint64_t capabilities::updater::loaderConnectAttempts(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD208, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD208))
  {
    if (TelephonyRadiosGetRadioVendor() - 1 >= 2)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    dword_1ED7FD0D0 = v2;
    __cxa_guard_release(&qword_1ED7FD208);
  }

  return dword_1ED7FD0D0;
}

uint64_t capabilities::updater::loaderConnectAttemptsForVendor(int a1)
{
  if ((a1 - 1) >= 2)
  {
    return 4;
  }

  else
  {
    return 2;
  }
}

uint64_t capabilities::updater::NVRestoreTimeout(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD218, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD218))
  {
    RadioVendor = TelephonyRadiosGetRadioVendor();
    v3 = 4000;
    if ((RadioVendor - 1) >= 2)
    {
      v3 = 0;
    }

    qword_1ED7FD210 = v3;
    __cxa_guard_release(&qword_1ED7FD218);
  }

  return qword_1ED7FD210;
}

uint64_t capabilities::updater::NVRestoreTimeoutForVendor(int a1)
{
  if ((a1 - 1) >= 2)
  {
    return 0;
  }

  else
  {
    return 4000;
  }
}

uint64_t capabilities::updater::provisioningCommandTimeout(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD228, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD228))
  {
    RadioVendor = TelephonyRadiosGetRadioVendor();
    v3 = 3000;
    if ((RadioVendor - 1) >= 2)
    {
      v3 = 0;
    }

    qword_1ED7FD220 = v3;
    __cxa_guard_release(&qword_1ED7FD228);
  }

  return qword_1ED7FD220;
}

uint64_t capabilities::updater::provisioningCommandTimeoutForVendor(int a1)
{
  if ((a1 - 1) >= 2)
  {
    return 0;
  }

  else
  {
    return 3000;
  }
}

uint64_t capabilities::updater::personalizationCommandTimeout(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD238, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD238))
  {
    RadioVendor = TelephonyRadiosGetRadioVendor();
    v3 = 2000;
    if ((RadioVendor - 1) >= 2)
    {
      v3 = 0;
    }

    qword_1ED7FD230 = v3;
    __cxa_guard_release(&qword_1ED7FD238);
  }

  return qword_1ED7FD230;
}

uint64_t capabilities::updater::personalizationCommandTimeoutForVendor(int a1)
{
  if ((a1 - 1) >= 2)
  {
    return 0;
  }

  else
  {
    return 2000;
  }
}

uint64_t capabilities::updater::pingAttemptCount(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD248, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD248))
  {
    v2 = TelephonyRadiosGetRadioVendor() - 1;
    if (v2 > 2)
    {
      v3 = 0;
    }

    else
    {
      v3 = qword_1CAE5EA70[v2];
    }

    qword_1ED7FD240 = v3;
    __cxa_guard_release(&qword_1ED7FD248);
  }

  return qword_1ED7FD240;
}

uint64_t capabilities::updater::pingAttemptCountForVendor(int a1)
{
  if ((a1 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_1CAE5EA70[a1 - 1];
  }
}

uint64_t capabilities::updater::pingTimeout(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD258, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD258))
  {
    v2 = TelephonyRadiosGetRadio() - 1;
    if (v2 > 0x12)
    {
      v3 = 0;
    }

    else
    {
      v3 = qword_1CAE5EA88[v2];
    }

    qword_1ED7FD250 = v3;
    __cxa_guard_release(&qword_1ED7FD258);
  }

  return qword_1ED7FD250;
}

uint64_t capabilities::updater::pingTimeoutForRadio(int a1)
{
  if ((a1 - 1) > 0x12)
  {
    return 0;
  }

  else
  {
    return qword_1CAE5EA88[a1 - 1];
  }
}

uint64_t capabilities::updater::initialStagePingAttemptCount(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD268, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD268))
  {
    qword_1ED7FD260 = 2 * (TelephonyRadiosGetRadioVendor() - 1 < 2);
    __cxa_guard_release(&qword_1ED7FD268);
  }

  return qword_1ED7FD260;
}

uint64_t capabilities::updater::intermittentFailureRetryCount(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD270, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD270))
  {
    if (TelephonyRadiosGetRadioVendor() - 1 >= 2)
    {
      v2 = 1;
    }

    else
    {
      v2 = 2;
    }

    dword_1ED7FD0D4 = v2;
    __cxa_guard_release(&qword_1ED7FD270);
  }

  return dword_1ED7FD0D4;
}

uint64_t capabilities::updater::intermittentFailureRetryCountForVendor(int a1)
{
  if ((a1 - 1) >= 2)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t capabilities::updater::loaderCommandTimeout(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD280, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD280))
  {
    RadioVendor = TelephonyRadiosGetRadioVendor();
    v3 = 1000;
    if ((RadioVendor - 1) >= 2)
    {
      v3 = 0;
    }

    qword_1ED7FD278 = v3;
    __cxa_guard_release(&qword_1ED7FD280);
  }

  return qword_1ED7FD278;
}

uint64_t capabilities::updater::loaderCommandTimeoutForVendor(int a1)
{
  if ((a1 - 1) >= 2)
  {
    return 0;
  }

  else
  {
    return 1000;
  }
}

uint64_t capabilities::updater::supportsBbcfgImage(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD288, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD288))
  {
    byte_1ED7FD0A9 = TelephonyRadiosGetRadioVendor() - 1 < 2;
    __cxa_guard_release(&qword_1ED7FD288);
  }

  return byte_1ED7FD0A9;
}

uint64_t capabilities::updater::shouldSkipRestoreForUnfused(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD290, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD290))
  {
    byte_1ED7FD0AA = TelephonyRadiosGetRadioVendor() == 1;
    __cxa_guard_release(&qword_1ED7FD290);
  }

  return byte_1ED7FD0AA;
}

uint64_t capabilities::updater::getCommunicationType(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD298, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD298))
  {
    RadioVendor = TelephonyRadiosGetRadioVendor();
    if (RadioVendor == 2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
    }

    if (RadioVendor == 1)
    {
      v3 = 1;
    }

    dword_1ED7FD0D8 = v3;
    __cxa_guard_release(&qword_1ED7FD298);
  }

  return dword_1ED7FD0D8;
}

uint64_t capabilities::updater::getCommunicationTypeForVendor(int a1)
{
  if (a1 == 2)
  {
    v1 = 2;
  }

  else
  {
    v1 = 3;
  }

  if (a1 == 1)
  {
    return 1;
  }

  else
  {
    return v1;
  }
}

uint64_t capabilities::updater::getPersonalizationParameters(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD2A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD2A0))
  {
    RadioVendor = TelephonyRadiosGetRadioVendor();
    if (RadioVendor == 2)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }

    if (RadioVendor == 1)
    {
      v3 = 0;
    }

    dword_1ED7FD0DC = v3;
    __cxa_guard_release(&qword_1ED7FD2A0);
  }

  return dword_1ED7FD0DC;
}

uint64_t capabilities::updater::getPersonalizationParametersForVendor(int a1)
{
  if (a1 == 2)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 == 1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t capabilities::updater::getLoaderProgressBarTimesType(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD2A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD2A8))
  {
    RadioVendor = TelephonyRadiosGetRadioVendor();
    if (RadioVendor == 2)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }

    if (RadioVendor == 1)
    {
      v3 = 0;
    }

    dword_1ED7FD0E0 = v3;
    __cxa_guard_release(&qword_1ED7FD2A8);
  }

  return dword_1ED7FD0E0;
}

uint64_t capabilities::updater::getLoaderProgressBarTimesTypeForVendor(int a1)
{
  if (a1 == 2)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 == 1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t capabilities::updater::getProvisionerType(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD2B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD2B0))
  {
    RadioVendor = TelephonyRadiosGetRadioVendor();
    if (RadioVendor == 2)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }

    if (RadioVendor == 1)
    {
      v3 = 0;
    }

    dword_1ED7FD0E4 = v3;
    __cxa_guard_release(&qword_1ED7FD2B0);
  }

  return dword_1ED7FD0E4;
}

uint64_t capabilities::updater::getProvisionerTypeForVendor(int a1)
{
  if (a1 == 2)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 == 1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t capabilities::updater::getBasebandMigrationDataType(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD2B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD2B8))
  {
    RadioVendor = TelephonyRadiosGetRadioVendor();
    if (RadioVendor == 2)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }

    if (RadioVendor == 1)
    {
      v3 = 0;
    }

    dword_1ED7FD0E8 = v3;
    __cxa_guard_release(&qword_1ED7FD2B8);
  }

  return dword_1ED7FD0E8;
}

uint64_t capabilities::updater::getBasebandMigrationDataTypeForVendor(int a1)
{
  if (a1 == 2)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 == 1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t capabilities::updater::getTransportType(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD2C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD2C0))
  {
    v2 = TelephonyRadiosGetRadioVendor() - 1;
    if (v2 > 2)
    {
      v3 = 3;
    }

    else
    {
      v3 = dword_1CAE5EB20[v2];
    }

    dword_1ED7FD0EC = v3;
    __cxa_guard_release(&qword_1ED7FD2C0);
  }

  return dword_1ED7FD0EC;
}

uint64_t capabilities::updater::getTransportTypeForVendor(int a1)
{
  if ((a1 - 1) > 2)
  {
    return 3;
  }

  else
  {
    return dword_1CAE5EB20[a1 - 1];
  }
}

uint64_t capabilities::updater::getSBLType(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD2C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD2C8))
  {
    dword_1ED7FD0F0 = TelephonyRadiosGetRadioVendor() != 1;
    __cxa_guard_release(&qword_1ED7FD2C8);
  }

  return dword_1ED7FD0F0;
}

uint64_t capabilities::updater::getAPPSType(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD2D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD2D0))
  {
    dword_1ED7FD0F4 = TelephonyRadiosGetRadioVendor() != 1;
    __cxa_guard_release(&qword_1ED7FD2D0);
  }

  return dword_1ED7FD0F4;
}

uint64_t capabilities::updater::getQDSP6SWType(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD2D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD2D8))
  {
    dword_1ED7FD0F8 = TelephonyRadiosGetRadioVendor() != 1;
    __cxa_guard_release(&qword_1ED7FD2D8);
  }

  return dword_1ED7FD0F8;
}

uint64_t capabilities::updater::getTZType(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD2E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD2E0))
  {
    dword_1ED7FD0FC = TelephonyRadiosGetRadioVendor() != 1;
    __cxa_guard_release(&qword_1ED7FD2E0);
  }

  return dword_1ED7FD0FC;
}

uint64_t capabilities::updater::getACDBType(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD2E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD2E8))
  {
    dword_1ED7FD100 = TelephonyRadiosGetRadioVendor() != 1;
    __cxa_guard_release(&qword_1ED7FD2E8);
  }

  return dword_1ED7FD100;
}

uint64_t capabilities::updater::getEFS1Type(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD2F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD2F0))
  {
    dword_1ED7FD104 = TelephonyRadiosGetRadioVendor() != 1;
    __cxa_guard_release(&qword_1ED7FD2F0);
  }

  return dword_1ED7FD104;
}

uint64_t capabilities::updater::getEFS2Type(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD2F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD2F8))
  {
    dword_1ED7FD108 = TelephonyRadiosGetRadioVendor() != 1;
    __cxa_guard_release(&qword_1ED7FD2F8);
  }

  return dword_1ED7FD108;
}

uint64_t capabilities::updater::getEFS3Type(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD300, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD300))
  {
    dword_1ED7FD10C = TelephonyRadiosGetRadioVendor() != 1;
    __cxa_guard_release(&qword_1ED7FD300);
  }

  return dword_1ED7FD10C;
}

uint64_t capabilities::updater::getCalType(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD308, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD308))
  {
    dword_1ED7FD110 = TelephonyRadiosGetRadioVendor() != 1;
    __cxa_guard_release(&qword_1ED7FD308);
  }

  return dword_1ED7FD110;
}

uint64_t capabilities::updater::getProvType(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD310, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD310))
  {
    dword_1ED7FD114 = TelephonyRadiosGetRadioVendor() != 1;
    __cxa_guard_release(&qword_1ED7FD310);
  }

  return dword_1ED7FD114;
}

uint64_t capabilities::updater::getPacType(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD318, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD318))
  {
    dword_1ED7FD118 = TelephonyRadiosGetRadioVendor() != 1;
    __cxa_guard_release(&qword_1ED7FD318);
  }

  return dword_1ED7FD118;
}

uint64_t capabilities::updater::getBBCFGType(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD320, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD320))
  {
    dword_1ED7FD11C = TelephonyRadiosGetRadioVendor() != 1;
    __cxa_guard_release(&qword_1ED7FD320);
  }

  return dword_1ED7FD11C;
}

uint64_t capabilities::updater::EUICCVinylSuccessStatus(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD328, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD328))
  {
    RadioVendor = TelephonyRadiosGetRadioVendor();
    v3 = 0x100uLL >> (8 * RadioVendor);
    if (RadioVendor >= 5)
    {
      LOBYTE(v3) = 0;
    }

    byte_1ED7FD0AB = v3;
    __cxa_guard_release(&qword_1ED7FD328);
  }

  return byte_1ED7FD0AB;
}

unint64_t capabilities::updater::EUICCVinylSuccessStatusForVendor(unsigned int a1)
{
  v1 = 0x100uLL >> (8 * a1);
  if (a1 >= 5)
  {
    LOBYTE(v1) = 0;
  }

  return v1 & 1;
}

uint64_t capabilities::updater::supportsEUICCUpdate(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD330, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD330))
  {
    byte_1ED7FD0AC = TelephonyRadiosGetRadioVendor() == 1;
    __cxa_guard_release(&qword_1ED7FD330);
  }

  return byte_1ED7FD0AC;
}

uint64_t capabilities::updater::getDigestType(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD338, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD338))
  {
    v2 = TelephonyRadiosGetRadio() - 1;
    if (v2 > 0x11)
    {
      v3 = 1;
    }

    else
    {
      v3 = dword_1CAE5EB2C[v2];
    }

    dword_1ED7FD120 = v3;
    __cxa_guard_release(&qword_1ED7FD338);
  }

  return dword_1ED7FD120;
}

uint64_t capabilities::updater::getDigestTypeForRadio(int a1)
{
  if ((a1 - 1) > 0x11)
  {
    return 1;
  }

  else
  {
    return dword_1CAE5EB2C[a1 - 1];
  }
}

uint64_t capabilities::updater::shouldWaitForReadyAfterBoot(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD340, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD340))
  {
    byte_1ED7FD0AD = TelephonyRadiosGetRadioVendor() == 1;
    __cxa_guard_release(&qword_1ED7FD340);
  }

  return byte_1ED7FD0AD;
}

uint64_t capabilities::updater::pingDelay(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD350, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD350))
  {
    RadioVendor = TelephonyRadiosGetRadioVendor();
    v3 = 10000;
    if (((RadioVendor - 1) & 0xFFFFFFFD) != 0)
    {
      v3 = 0;
    }

    qword_1ED7FD348 = v3;
    __cxa_guard_release(&qword_1ED7FD350);
  }

  return qword_1ED7FD348;
}

uint64_t capabilities::updater::pingDelayForVendor(int a1)
{
  if (((a1 - 1) & 0xFFFFFFFD) != 0)
  {
    return 0;
  }

  else
  {
    return 10000;
  }
}

uint64_t capabilities::updater::supportsDualIMEIProvision(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD358, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD358))
  {
    Radio = TelephonyRadiosGetRadio();
    byte_1ED7FD0AE = (Radio < 0x13) & (0x63FAEu >> Radio);
    __cxa_guard_release(&qword_1ED7FD358);
  }

  return byte_1ED7FD0AE;
}

uint64_t capabilities::updater::supportsHashSha384(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD360, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD360))
  {
    Radio = TelephonyRadiosGetRadio();
    byte_1ED7FD0AF = (Radio < 0x13) & (0x63FAEu >> Radio);
    __cxa_guard_release(&qword_1ED7FD360);
  }

  return byte_1ED7FD0AF;
}

uint64_t capabilities::updater::shouldStripFDRDataOnAP(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD368, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD368))
  {
    Radio = TelephonyRadiosGetRadio();
    byte_1ED7FD0B0 = (Radio < 0x13) & (0x63F2Eu >> Radio);
    __cxa_guard_release(&qword_1ED7FD368);
  }

  return byte_1ED7FD0B0;
}

uint64_t capabilities::updater::supportsBBFusing(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD370, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD370))
  {
    byte_1ED7FD0B1 = TelephonyRadiosGetRadioVendor() == 1;
    __cxa_guard_release(&qword_1ED7FD370);
  }

  return byte_1ED7FD0B1;
}

uint64_t capabilities::updater::getFusingType(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD378, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD378))
  {
    if (TelephonyRadiosGetRadioVendor() == 1)
    {
      v2 = 1;
    }

    else
    {
      v2 = 2;
    }

    dword_1ED7FD124 = v2;
    __cxa_guard_release(&qword_1ED7FD378);
  }

  return dword_1ED7FD124;
}

uint64_t capabilities::updater::getFusingTypeForVendor(int a1)
{
  if (a1 == 1)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t capabilities::updater::getLoaderType(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD380, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD380))
  {
    v2 = TelephonyRadiosGetRadio() - 1;
    if (v2 > 0x11)
    {
      v3 = 5;
    }

    else
    {
      v3 = dword_1CAE5EB74[v2];
    }

    dword_1ED7FD128 = v3;
    __cxa_guard_release(&qword_1ED7FD380);
  }

  return dword_1ED7FD128;
}

uint64_t capabilities::updater::getLoaderTypeForRadio(int a1)
{
  if ((a1 - 1) > 0x11)
  {
    return 5;
  }

  else
  {
    return dword_1CAE5EB74[a1 - 1];
  }
}

uint64_t capabilities::updater::getProgrammerType(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD388, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD388))
  {
    v2 = TelephonyRadiosGetRadio() - 1;
    if (v2 > 0x11)
    {
      v3 = 5;
    }

    else
    {
      v3 = dword_1CAE5EBBC[v2];
    }

    dword_1ED7FD12C = v3;
    __cxa_guard_release(&qword_1ED7FD388);
  }

  return dword_1ED7FD12C;
}

uint64_t capabilities::updater::getProgrammerTypeForRadio(int a1)
{
  if ((a1 - 1) > 0x11)
  {
    return 5;
  }

  else
  {
    return dword_1CAE5EBBC[a1 - 1];
  }
}

uint64_t capabilities::updater::getProgrammerProgressBarTimesType(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD390, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD390))
  {
    RadioVendor = TelephonyRadiosGetRadioVendor();
    if (RadioVendor == 2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
    }

    if (RadioVendor == 1)
    {
      v3 = 1;
    }

    dword_1ED7FD130 = v3;
    __cxa_guard_release(&qword_1ED7FD390);
  }

  return dword_1ED7FD130;
}

uint64_t capabilities::updater::getProgrammerProgressBarTimesTypeForVendor(int a1)
{
  if (a1 == 2)
  {
    v1 = 2;
  }

  else
  {
    v1 = 3;
  }

  if (a1 == 1)
  {
    return 1;
  }

  else
  {
    return v1;
  }
}

uint64_t capabilities::updater::getFusingProgramType(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD398, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD398))
  {
    if (TelephonyRadiosGetRadioVendor() == 1)
    {
      v2 = 1;
    }

    else
    {
      v2 = 2;
    }

    dword_1ED7FD134 = v2;
    __cxa_guard_release(&qword_1ED7FD398);
  }

  return dword_1ED7FD134;
}

uint64_t capabilities::updater::getFusingProgramTypeForVendor(int a1)
{
  if (a1 == 1)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t capabilities::updater::getAPDPType(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD3A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD3A0))
  {
    dword_1ED7FD138 = TelephonyRadiosGetRadioVendor() != 1;
    __cxa_guard_release(&qword_1ED7FD3A0);
  }

  return dword_1ED7FD138;
}

uint64_t capabilities::updater::getDEVCFGType(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD3A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD3A8))
  {
    dword_1ED7FD13C = TelephonyRadiosGetRadioVendor() != 1;
    __cxa_guard_release(&qword_1ED7FD3A8);
  }

  return dword_1ED7FD13C;
}

uint64_t capabilities::updater::getSECType(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD3B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD3B0))
  {
    dword_1ED7FD140 = TelephonyRadiosGetRadioVendor() != 1;
    __cxa_guard_release(&qword_1ED7FD3B0);
  }

  return dword_1ED7FD140;
}

uint64_t capabilities::updater::getHYPType(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD3B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD3B8))
  {
    dword_1ED7FD144 = TelephonyRadiosGetRadioVendor() != 1;
    __cxa_guard_release(&qword_1ED7FD3B8);
  }

  return dword_1ED7FD144;
}

uint64_t capabilities::updater::getAOPType(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD3C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD3C0))
  {
    dword_1ED7FD148 = TelephonyRadiosGetRadioVendor() != 1;
    __cxa_guard_release(&qword_1ED7FD3C0);
  }

  return dword_1ED7FD148;
}

uint64_t capabilities::updater::getOEMMiscType(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD3C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD3C8))
  {
    dword_1ED7FD14C = TelephonyRadiosGetRadioVendor() != 1;
    __cxa_guard_release(&qword_1ED7FD3C8);
  }

  return dword_1ED7FD14C;
}

uint64_t capabilities::updater::getQTIMiscType(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD3D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD3D0))
  {
    dword_1ED7FD150 = TelephonyRadiosGetRadioVendor() != 1;
    __cxa_guard_release(&qword_1ED7FD3D0);
  }

  return dword_1ED7FD150;
}

uint64_t capabilities::updater::bootupTimeMaxValue(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD3E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD3E0))
  {
    v2 = TelephonyRadiosGetRadioVendor() - 1;
    if (v2 > 3)
    {
      v3 = 0;
    }

    else
    {
      v3 = qword_1CAE5EC08[v2];
    }

    qword_1ED7FD3D8 = v3;
    __cxa_guard_release(&qword_1ED7FD3E0);
  }

  return qword_1ED7FD3D8;
}

uint64_t capabilities::updater::bootupTimeMaxValueForVendor(int a1)
{
  if ((a1 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return qword_1CAE5EC08[a1 - 1];
  }
}

uint64_t capabilities::updater::getFirmwareVersion(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD3E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD3E8))
  {
    if (TelephonyRadiosGetRadioVendor() == 1)
    {
      v2 = 2;
    }

    else
    {
      v2 = 3;
    }

    dword_1ED7FD154 = v2;
    __cxa_guard_release(&qword_1ED7FD3E8);
  }

  return dword_1ED7FD154;
}

uint64_t capabilities::updater::getFirmwareVersionForVendor(int a1)
{
  if (a1 == 1)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

uint64_t capabilities::updater::supportsFATPCalibrationManifestStatus(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD3F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD3F0))
  {
    byte_1ED7FD0B2 = ((TelephonyRadiosGetRadioVendor() - 1) & 0xFFFFFFFD) == 0;
    __cxa_guard_release(&qword_1ED7FD3F0);
  }

  return byte_1ED7FD0B2;
}

uint64_t capabilities::updater::supportsEBLXor(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD3F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD3F8))
  {
    byte_1ED7FD0B3 = TelephonyRadiosGetRadio() == 4;
    __cxa_guard_release(&qword_1ED7FD3F8);
  }

  return byte_1ED7FD0B3;
}

uint64_t capabilities::updater::BBUFSPartitionSizeMB(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD408, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD408))
  {
    v2 = TelephonyRadiosGetRadio() - 4;
    if (v2 > 0xF)
    {
      v3 = 0;
    }

    else
    {
      v3 = qword_1CAE5EC28[v2];
    }

    qword_1ED7FD400 = v3;
    __cxa_guard_release(&qword_1ED7FD408);
  }

  return qword_1ED7FD400;
}

uint64_t capabilities::updater::BBUFSPartitionSizeMBForRadio(int a1)
{
  if ((a1 - 4) > 0xF)
  {
    return 0;
  }

  else
  {
    return qword_1CAE5EC28[a1 - 4];
  }
}

uint64_t capabilities::updater::getInitializerVersion(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD410, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD410))
  {
    v2 = TelephonyRadiosGetRadio() - 4;
    if (v2 > 0xE)
    {
      v3 = 4;
    }

    else
    {
      v3 = dword_1CAE5ECA8[v2];
    }

    dword_1ED7FD158 = v3;
    __cxa_guard_release(&qword_1ED7FD410);
  }

  return dword_1ED7FD158;
}

uint64_t capabilities::updater::getInitializerVersionForRadio(int a1)
{
  if ((a1 - 4) > 0xE)
  {
    return 4;
  }

  else
  {
    return dword_1CAE5ECA8[a1 - 4];
  }
}

uint64_t capabilities::updater::getUpdateSourceType(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD418, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD418))
  {
    v2 = TelephonyRadiosGetRadio() - 4;
    if (v2 > 0xE)
    {
      v3 = 6;
    }

    else
    {
      v3 = dword_1CAE5ECE4[v2];
    }

    dword_1ED7FD15C = v3;
    __cxa_guard_release(&qword_1ED7FD418);
  }

  return dword_1ED7FD15C;
}

uint64_t capabilities::updater::getUpdateSourceTypeForRadio(int a1)
{
  if ((a1 - 4) > 0xE)
  {
    return 6;
  }

  else
  {
    return dword_1CAE5ECE4[a1 - 4];
  }
}

uint64_t capabilities::updater::supportsNVSettingOQCMagic(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD420, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD420))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD0B4 = capabilities::updater::sSupportsNVSettingOQCMagic(Product);
    __cxa_guard_release(&qword_1ED7FD420);
  }

  return byte_1ED7FD0B4;
}

uint64_t capabilities::updater::sSupportsNVSettingOQCMagic(int a1)
{
  result = 1;
  switch(a1)
  {
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 87:
    case 88:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 97:
    case 103:
    case 104:
    case 105:
    case 106:
    case 107:
    case 112:
    case 118:
    case 119:
    case 122:
    case 127:
    case 128:
    case 129:
    case 130:
    case 131:
    case 132:
    case 133:
    case 134:
    case 135:
    case 139:
    case 140:
    case 141:
    case 142:
    case 143:
    case 144:
    case 145:
    case 149:
    case 150:
    case 151:
    case 152:
    case 153:
    case 154:
    case 164:
    case 165:
    case 166:
    case 203:
    case 209:
    case 212:
      return result;
    case 85:
    case 86:
    case 98:
    case 99:
    case 100:
    case 101:
    case 102:
    case 108:
    case 109:
    case 110:
    case 111:
    case 113:
    case 114:
    case 115:
    case 116:
    case 117:
    case 120:
    case 121:
    case 123:
    case 124:
    case 125:
    case 126:
    case 136:
    case 137:
    case 138:
    case 146:
    case 147:
    case 148:
    case 155:
    case 156:
    case 157:
    case 158:
    case 159:
    case 160:
    case 161:
    case 162:
    case 163:
    case 167:
    case 168:
    case 169:
    case 170:
    case 171:
    case 172:
    case 173:
    case 174:
    case 175:
    case 176:
    case 177:
    case 178:
    case 179:
    case 180:
    case 181:
    case 182:
    case 183:
    case 184:
    case 185:
    case 186:
    case 187:
    case 188:
    case 189:
    case 190:
    case 191:
    case 192:
    case 193:
    case 194:
    case 195:
    case 196:
    case 197:
    case 198:
    case 199:
    case 200:
    case 201:
    case 202:
    case 204:
    case 205:
    case 206:
    case 207:
    case 208:
    case 210:
    case 211:
      goto LABEL_5;
    default:
      v3 = a1 - 60;
      if (v3 > 7 || ((1 << v3) & 0xE3) == 0)
      {
LABEL_5:
        result = 0;
      }

      break;
  }

  return result;
}

uint64_t capabilities::updater::shouldOnlySyncDynamicOnShutdown(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD428, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD428))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD0B5 = capabilities::updater::sShouldOnlySyncDynamicOnShutdown(Product);
    __cxa_guard_release(&qword_1ED7FD428);
  }

  return byte_1ED7FD0B5;
}

uint64_t capabilities::updater::sShouldOnlySyncDynamicOnShutdown(int a1)
{
  result = 1;
  if ((a1 - 156) > 0x3C || ((1 << (a1 + 100)) & 0x1200C00000020801) == 0)
  {
    v3 = a1 - 91;
    if (v3 > 6 || ((1 << v3) & 0x47) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t capabilities::updater::getMDMDDRType(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD430, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD430))
  {
    v2 = TelephonyRadiosGetRadio() - 9;
    if (v2 > 9)
    {
      v3 = 2;
    }

    else
    {
      v3 = dword_1CAE5ED20[v2];
    }

    dword_1ED7FD160 = v3;
    __cxa_guard_release(&qword_1ED7FD430);
  }

  return dword_1ED7FD160;
}

uint64_t capabilities::updater::getMDMDDRTypeForRadio(int a1)
{
  if ((a1 - 9) > 9)
  {
    return 2;
  }

  else
  {
    return dword_1CAE5ED20[a1 - 9];
  }
}

uint64_t capabilities::updater::supportsXblCfgImage(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD438, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD438))
  {
    Radio = TelephonyRadiosGetRadio();
    byte_1ED7FD0B6 = (Radio < 0x13) & (0x63C00u >> Radio);
    __cxa_guard_release(&qword_1ED7FD438);
  }

  return byte_1ED7FD0B6;
}

uint64_t capabilities::updater::getXblCfgType(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD440, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD440))
  {
    v2 = TelephonyRadiosGetRadio() - 10;
    if (v2 > 8)
    {
      v3 = 1;
    }

    else
    {
      v3 = dword_1CAE5ED48[v2];
    }

    dword_1ED7FD164 = v3;
    __cxa_guard_release(&qword_1ED7FD440);
  }

  return dword_1ED7FD164;
}

uint64_t capabilities::updater::getXblCfgTypeForRadio(int a1)
{
  if ((a1 - 10) > 8)
  {
    return 1;
  }

  else
  {
    return dword_1CAE5ED48[a1 - 10];
  }
}

uint64_t capabilities::updater::supportsUEFIImage(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD448, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD448))
  {
    Radio = TelephonyRadiosGetRadio();
    byte_1ED7FD0B7 = (Radio < 0x13) & (0x63000u >> Radio);
    __cxa_guard_release(&qword_1ED7FD448);
  }

  return byte_1ED7FD0B7;
}

uint64_t capabilities::updater::getUEFIType(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD450, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD450))
  {
    v2 = TelephonyRadiosGetRadio() - 12;
    if (v2 > 6)
    {
      v3 = 1;
    }

    else
    {
      v3 = dword_1CAE5ED6C[v2];
    }

    dword_1ED7FD168 = v3;
    __cxa_guard_release(&qword_1ED7FD450);
  }

  return dword_1ED7FD168;
}

uint64_t capabilities::updater::getUEFITypeForRadio(int a1)
{
  if ((a1 - 12) > 6)
  {
    return 1;
  }

  else
  {
    return dword_1CAE5ED6C[a1 - 12];
  }
}

uint64_t capabilities::updater::supportsXblSupportImage(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD458, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD458))
  {
    Radio = TelephonyRadiosGetRadio();
    byte_1ED7FD0B8 = (Radio < 0x13) & (0x63000u >> Radio);
    __cxa_guard_release(&qword_1ED7FD458);
  }

  return byte_1ED7FD0B8;
}

uint64_t capabilities::updater::getXblSupportType(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD460, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD460))
  {
    v2 = TelephonyRadiosGetRadio() - 12;
    if (v2 > 6)
    {
      v3 = 1;
    }

    else
    {
      v3 = dword_1CAE5ED6C[v2];
    }

    dword_1ED7FD16C = v3;
    __cxa_guard_release(&qword_1ED7FD460);
  }

  return dword_1ED7FD16C;
}

uint64_t capabilities::updater::getXblSupportTypeForRadio(int a1)
{
  if ((a1 - 12) > 6)
  {
    return 1;
  }

  else
  {
    return dword_1CAE5ED6C[a1 - 12];
  }
}

uint64_t capabilities::updater::supportsMHIBootLogger(capabilities::updater *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD468, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD468))
  {
    Radio = TelephonyRadiosGetRadio();
    byte_1ED7FD0B9 = (Radio < 0x13) & (0x63000u >> Radio);
    __cxa_guard_release(&qword_1ED7FD468);
  }

  return byte_1ED7FD0B9;
}

void *capabilities::updater::asString@<X0>(unsigned int a1@<W0>, void *a2@<X8>)
{
  if (a1 > 2)
  {
    v2 = "???";
  }

  else
  {
    v2 = off_1E83A5DC0[a1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

{
  if (a1 > 2)
  {
    v2 = "???";
  }

  else
  {
    v2 = off_1E83A5DD8[a1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

{
  if (a1 > 3)
  {
    v2 = "???";
  }

  else
  {
    v2 = off_1E83A5DF0[a1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

{
  if (a1 > 3)
  {
    v2 = "???";
  }

  else
  {
    v2 = off_1E83A5E10[a1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

{
  if (a1 > 2)
  {
    v2 = "???";
  }

  else
  {
    v2 = off_1E83A5E30[a1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

{
  if (a1 > 2)
  {
    v2 = "???";
  }

  else
  {
    v2 = off_1E83A5E48[a1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

{
  if (a1 > 5)
  {
    v2 = "???";
  }

  else
  {
    v2 = off_1E83A5E60[a1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

{
  if (a1 > 3)
  {
    v2 = "???";
  }

  else
  {
    v2 = off_1E83A5E90[a1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

{
  if (a1 > 2)
  {
    v2 = "???";
  }

  else
  {
    v2 = off_1E83A5EB0[a1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

{
  if (a1 > 2)
  {
    v2 = "???";
  }

  else
  {
    v2 = off_1E83A5EC8[a1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

{
  if (a1 > 2)
  {
    v2 = "???";
  }

  else
  {
    v2 = off_1E83A5EE0[a1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

{
  if (a1 > 2)
  {
    v2 = "???";
  }

  else
  {
    v2 = off_1E83A5EF8[a1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

{
  if (a1 > 3)
  {
    v2 = "???";
  }

  else
  {
    v2 = off_1E83A5F10[a1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

{
  if (a1 > 4)
  {
    v2 = "kInvalid";
  }

  else
  {
    v2 = (&off_1E83A62A0)[a1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

{
  if (a1 > 5)
  {
    v2 = "kInvalid";
  }

  else
  {
    v2 = (&off_1E83A62C8)[a1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

{
  if (a1 > 3)
  {
    v2 = "kInvalid";
  }

  else
  {
    v2 = (&off_1E83A62F8)[a1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

void *capabilities::updater::asString@<X0>(int a1@<W0>, void *a2@<X8>)
{
  v2 = "???";
  if (a1 == 1)
  {
    v2 = "kInvalid";
  }

  if (a1)
  {
    v3 = v2;
  }

  else
  {
    v3 = "kEURMav10_SBL1";
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v3);
}

{
  v2 = "???";
  if (a1 == 1)
  {
    v2 = "kInvalid";
  }

  if (a1)
  {
    v3 = v2;
  }

  else
  {
    v3 = "kEURMav10_RPM";
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v3);
}

{
  v2 = "???";
  if (a1 == 1)
  {
    v2 = "kInvalid";
  }

  if (a1)
  {
    v3 = v2;
  }

  else
  {
    v3 = "kEURMav10_APPS";
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v3);
}

{
  v2 = "???";
  if (a1 == 1)
  {
    v2 = "kInvalid";
  }

  if (a1)
  {
    v3 = v2;
  }

  else
  {
    v3 = "kEURMav10_DSP3";
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v3);
}

{
  v2 = "???";
  if (a1 == 1)
  {
    v2 = "kInvalid";
  }

  if (a1)
  {
    v3 = v2;
  }

  else
  {
    v3 = "kEURMav10_MBA";
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v3);
}

{
  v2 = "???";
  if (a1 == 1)
  {
    v2 = "kInvalid";
  }

  if (a1)
  {
    v3 = v2;
  }

  else
  {
    v3 = "kEURMav10_QDSP6SW";
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v3);
}

{
  v2 = "???";
  if (a1 == 1)
  {
    v2 = "kInvalid";
  }

  if (a1)
  {
    v3 = v2;
  }

  else
  {
    v3 = "kEURMav10_TZ";
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v3);
}

{
  v2 = "???";
  if (a1 == 1)
  {
    v2 = "kInvalid";
  }

  if (a1)
  {
    v3 = v2;
  }

  else
  {
    v3 = "kEURMav10_WDT";
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v3);
}

{
  v2 = "???";
  if (a1 == 1)
  {
    v2 = "kInvalid";
  }

  if (a1)
  {
    v3 = v2;
  }

  else
  {
    v3 = "kEURMav10_ACDB";
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v3);
}

{
  v2 = "???";
  if (a1 == 1)
  {
    v2 = "kInvalid";
  }

  if (a1)
  {
    v3 = v2;
  }

  else
  {
    v3 = "kEURMav10_EFS1";
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v3);
}

{
  v2 = "???";
  if (a1 == 1)
  {
    v2 = "kInvalid";
  }

  if (a1)
  {
    v3 = v2;
  }

  else
  {
    v3 = "kEURMav10_EFS2";
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v3);
}

{
  v2 = "???";
  if (a1 == 1)
  {
    v2 = "kInvalid";
  }

  if (a1)
  {
    v3 = v2;
  }

  else
  {
    v3 = "kEURMav10_EFS3";
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v3);
}

{
  v2 = "???";
  if (a1 == 1)
  {
    v2 = "kInvalid";
  }

  if (a1)
  {
    v3 = v2;
  }

  else
  {
    v3 = "kEURMav10_CAL";
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v3);
}

{
  v2 = "???";
  if (a1 == 1)
  {
    v2 = "kInvalid";
  }

  if (a1)
  {
    v3 = v2;
  }

  else
  {
    v3 = "kEURMav10_PROV";
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v3);
}

{
  v2 = "???";
  if (a1 == 1)
  {
    v2 = "kInvalid";
  }

  if (a1)
  {
    v3 = v2;
  }

  else
  {
    v3 = "kEURMav10_PAC";
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v3);
}

{
  v2 = "???";
  if (a1 == 1)
  {
    v2 = "kInvalid";
  }

  if (a1)
  {
    v3 = v2;
  }

  else
  {
    v3 = "kEURMav10_ACT";
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v3);
}

{
  v2 = "???";
  if (a1 == 1)
  {
    v2 = "kInvalid";
  }

  if (a1)
  {
    v3 = v2;
  }

  else
  {
    v3 = "kEURMav10_BBCFG";
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v3);
}

{
  v2 = "???";
  if (a1 == 1)
  {
    v2 = "kInvalid";
  }

  if (a1)
  {
    v3 = v2;
  }

  else
  {
    v3 = "kEURMav20_APDP";
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v3);
}

{
  v2 = "???";
  if (a1 == 1)
  {
    v2 = "kInvalid";
  }

  if (a1)
  {
    v3 = v2;
  }

  else
  {
    v3 = "kEURMav20_DEVCFG";
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v3);
}

{
  v2 = "???";
  if (a1 == 1)
  {
    v2 = "kInvalid";
  }

  if (a1)
  {
    v3 = v2;
  }

  else
  {
    v3 = "kEURMav20_SEC";
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v3);
}

{
  v2 = "???";
  if (a1 == 1)
  {
    v2 = "kInvalid";
  }

  if (a1)
  {
    v3 = v2;
  }

  else
  {
    v3 = "kEURMav20_HYP";
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v3);
}

{
  v2 = "???";
  if (a1 == 1)
  {
    v2 = "kInvalid";
  }

  if (a1)
  {
    v3 = v2;
  }

  else
  {
    v3 = "kEURMav20_AOP";
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v3);
}

{
  v2 = "???";
  if (a1 == 1)
  {
    v2 = "kInvalid";
  }

  if (a1)
  {
    v3 = v2;
  }

  else
  {
    v3 = "kEURMav20_OEMMisc";
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v3);
}

{
  v2 = "???";
  if (a1 == 1)
  {
    v2 = "kInvalid";
  }

  if (a1)
  {
    v3 = v2;
  }

  else
  {
    v3 = "kEURMav20_QTIMisc";
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v3);
}

{
  v2 = "???";
  if (a1 == 1)
  {
    v2 = "kInvalid";
  }

  if (a1)
  {
    v3 = v2;
  }

  else
  {
    v3 = "kEURMav21_XblCfg";
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v3);
}

{
  v2 = "???";
  if (a1 == 1)
  {
    v2 = "kInvalid";
  }

  if (a1)
  {
    v3 = v2;
  }

  else
  {
    v3 = "kEURMav22_UEFI";
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v3);
}

{
  v2 = "???";
  if (a1 == 1)
  {
    v2 = "kInvalid";
  }

  if (a1)
  {
    v3 = v2;
  }

  else
  {
    v3 = "kEURMav22_XblSupport";
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v3);
}

{
  v2 = "kInvalid";
  if (a1 == 1)
  {
    v2 = "kEURMav25_MDMDDR";
  }

  if (a1)
  {
    v3 = v2;
  }

  else
  {
    v3 = "kEURMav20_MDMDDR";
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v3);
}

uint64_t capabilities::abs::wakeReasonDebugEnabled(capabilities::abs *this)
{
  capabilities::absinternal::wakeReasonDebugEnabled(this);
  if ((TelephonyUtilIsInternalBuild() & 1) == 0)
  {
    TelephonyUtilIsCarrierBuild();
  }

  return 0;
}

uint64_t capabilities::abs::getCPMSVariant(capabilities::abs *this)
{
  v7 = *MEMORY[0x1E69E9840];
  if (qword_1ED7FD4C0 != -1)
  {
    dispatch_once(&qword_1ED7FD4C0, &__block_literal_global);
  }

  v1 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
  if (v1)
  {
    if (_MergedGlobals_2)
    {
      v2 = "true";
    }

    else
    {
      v2 = "false";
    }

    v5 = 136315138;
    v6 = v2;
    _os_log_impl(&dword_1CAE37000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Kernel CPMS Supported: %s", &v5, 0xCu);
  }

  if (_MergedGlobals_2)
  {
    result = 2;
  }

  else
  {
    result = capabilities::txpower::userSpaceCPMSVariant(v1);
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void ___ZL19_supportsKernelCPMSv_block_invoke()
{
  v22 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E696CD60];
  v1 = IOServiceNameMatching("baseband");
  MatchingService = IOServiceGetMatchingService(v0, v1);
  if (MatchingService)
  {
    v3 = MatchingService;
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"supports-cpms-via-spmi", *MEMORY[0x1E695E480], 0);
    if (CFProperty)
    {
      v5 = CFProperty;
      v6 = CFGetTypeID(CFProperty);
      if (v6 == CFDataGetTypeID())
      {
        *buffer = 0;
        Length = CFDataGetLength(v5);
        if (Length > 3)
        {
          v23.location = 0;
          v23.length = 4;
          CFDataGetBytes(v5, v23, buffer);
          _MergedGlobals_2 = *buffer != 0;
LABEL_16:
          CFRelease(v5);
          IOObjectRelease(v3);
          goto LABEL_17;
        }

        v13 = Length;
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_16;
        }

        *buf = 136315650;
        CStringPtr = CFStringGetCStringPtr(@"supports-cpms-via-spmi", 0);
        v18 = 2048;
        v19 = v13;
        v20 = 2048;
        v21 = 4;
        v10 = MEMORY[0x1E69E9C10];
        v11 = "%s: Returned data length %ld is less than %ld needed\n";
        v12 = 32;
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_16;
        }

        *buf = 136315138;
        CStringPtr = CFStringGetCStringPtr(@"supports-cpms-via-spmi", 0);
        v10 = MEMORY[0x1E69E9C10];
        v11 = "Property (%s) is not data type\n";
        v12 = 12;
      }

      _os_log_impl(&dword_1CAE37000, v10, OS_LOG_TYPE_DEFAULT, v11, buf, v12);
      goto LABEL_16;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      CStringPtr = CFStringGetCStringPtr(@"supports-cpms-via-spmi", 0);
      v8 = MEMORY[0x1E69E9C10];
      v9 = "Failed to get property of %s\n";
      goto LABEL_10;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    CStringPtr = "baseband";
    v8 = MEMORY[0x1E69E9C10];
    v9 = "Failed to get %s service\n";
LABEL_10:
    _os_log_impl(&dword_1CAE37000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 0xCu);
  }

LABEL_17:
  v14 = *MEMORY[0x1E69E9840];
}

uint64_t capabilities::updaterinternal::dynamicICENVMFSizeBytes(capabilities::updaterinternal *this)
{
  {
    v2 = TelephonyRadiosGetRadio() - 4;
    if (v2 > 4)
    {
      v3 = 0;
    }

    else
    {
      v3 = qword_1CAE5ED98[v2];
    }

    capabilities::updaterinternal::dynamicICENVMFSizeBytes(void)::ret = v3;
  }

  return capabilities::updaterinternal::dynamicICENVMFSizeBytes(void)::ret;
}

uint64_t capabilities::updaterinternal::requiresMRCTraining(capabilities::updaterinternal *this)
{
  {
    capabilities::updaterinternal::requiresMRCTraining(void)::ret = TelephonyRadiosGetRadio() - 7 < 2;
  }

  return capabilities::updaterinternal::requiresMRCTraining(void)::ret;
}

uint64_t capabilities::updaterinternal::supportsAudioOverPCIe(capabilities::updaterinternal *this)
{
  {
    Radio = TelephonyRadiosGetRadio();
    capabilities::updaterinternal::supportsAudioOverPCIe(void)::ret = (Radio < 0x13) & (0x63C00u >> Radio);
  }

  return capabilities::updaterinternal::supportsAudioOverPCIe(void)::ret;
}

uint64_t capabilities::updaterinternal::shouldAllowUnfused(capabilities::updaterinternal *this)
{
  {
    Product = TelephonyRadiosGetProduct();
    capabilities::updaterinternal::shouldAllowUnfused(void)::ret = ((Product - 204) < 9) & (0x107u >> (Product + 52));
  }

  return capabilities::updaterinternal::shouldAllowUnfused(void)::ret;
}

uint64_t capabilities::euicc::supportsSharingIdentity(capabilities::euicc *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD4D8, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_1ED7FD4D8);
    if (v2)
    {
      _MergedGlobals_3 = capabilities::ct::getCarrierBundleBaseDir(v2) == 0;
      __cxa_guard_release(&qword_1ED7FD4D8);
    }
  }

  return _MergedGlobals_3;
}

uint64_t capabilities::euicc::shouldEnableEUICCDetectPullDown(capabilities::euicc *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD4E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD4E0))
  {
    RadioVendor = TelephonyRadiosGetRadioVendor();
    if ((RadioVendor - 1) > 3)
    {
      v3 = 1;
    }

    else
    {
      v3 = capabilities::euicc::supportsEOS(RadioVendor) ^ 1;
    }

    byte_1ED7FD4C9 = v3;
    __cxa_guard_release(&qword_1ED7FD4E0);
  }

  return byte_1ED7FD4C9;
}

uint64_t capabilities::euicc::shouldEnableEUICCDetectPullDownForVendor(capabilities::euicc *a1)
{
  if ((a1 - 1) > 3)
  {
    return 1;
  }

  else
  {
    return capabilities::euicc::supportsEOS(a1) ^ 1;
  }
}

uint64_t capabilities::euicc::supportsLegacyUpdater(capabilities::euicc *this)
{
  {
    Product = TelephonyRadiosGetProduct();
    capabilities::euicc::supportsLegacyUpdater(void)::ret = capabilities::euicc::sSupportsLegacyUpdater(Product);
  }

  return capabilities::euicc::supportsLegacyUpdater(void)::ret;
}

uint64_t capabilities::euicc::sSupportsLegacyUpdater(int a1)
{
  v1 = a1 - 60;
  result = 1;
  switch(v1)
  {
    case 0:
    case 1:
    case 27:
    case 28:
    case 43:
    case 44:
    case 45:
    case 46:
    case 58:
    case 59:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
    case 79:
    case 80:
    case 81:
    case 93:
    case 94:
    case 149:
      result = capabilities::euicc::supportsEOS(1) ^ 1;
      break;
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 39:
    case 40:
    case 41:
    case 42:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 54:
    case 55:
    case 56:
    case 57:
    case 60:
    case 62:
    case 63:
    case 64:
    case 65:
    case 66:
    case 72:
    case 73:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 82:
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
    case 88:
    case 89:
    case 90:
    case 91:
    case 92:
    case 97:
    case 98:
    case 99:
    case 140:
    case 143:
    case 152:
      return result;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t capabilities::euicc::supportsEOS(capabilities::euicc *this)
{
  {
    Product = TelephonyRadiosGetProduct();
    capabilities::euicc::supportsEOS(void)::ret = capabilities::euicc::sSupportsEOS(Product);
  }

  return capabilities::euicc::supportsEOS(void)::ret;
}

uint64_t capabilities::euicc::sSupportsEOS(int a1)
{
  v1 = a1 + 127;
  if ((a1 - 129) > 0x2C)
  {
LABEL_15:
    if (a1 != 211 && a1 != 209)
    {
      return 0;
    }

    goto LABEL_3;
  }

  if (((1 << v1) & 0x18607001C07) == 0)
  {
    if (((1 << v1) & 0x100008000000) != 0)
    {
      return 1;
    }

    goto LABEL_15;
  }

LABEL_3:
  v2 = pthread_mutex_lock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  v3 = off_1ED7FCBC0;
  if (!off_1ED7FCBC0)
  {
    ctu::Gestalt::create_default_global(&v9, v2);
    v4 = v9;
    v9 = 0uLL;
    v5 = *(&off_1ED7FCBC0 + 1);
    off_1ED7FCBC0 = v4;
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      if (*(&v9 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v9 + 1));
      }
    }

    v3 = off_1ED7FCBC0;
  }

  v6 = *(&off_1ED7FCBC0 + 1);
  if (*(&off_1ED7FCBC0 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1ED7FCBC0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  v7 = (*(*v3 + 120))(v3);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v7;
}

uint64_t capabilities::euicc::supportsVinylRestore(capabilities::euicc *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD4E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD4E8))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD4CA = capabilities::euicc::sSupportsVinylRestore(Product);
    __cxa_guard_release(&qword_1ED7FD4E8);
  }

  return byte_1ED7FD4CA;
}

uint64_t capabilities::euicc::sSupportsVinylRestore(int a1)
{
  result = 1;
  v3 = (a1 - 129);
  if (v3 > 0x2C || v3 == 7)
  {
    v4 = a1 - 200;
    if (v4 > 0x10 || ((1 << v4) & 0x1FBF7) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t capabilities::euicc::requiresBootstrapRegulatoryHandling(capabilities::euicc *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD4F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD4F0))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD4CB = ((Product - 137) < 0x25) & (0x1E79F00E03uLL >> (Product + 119));
    __cxa_guard_release(&qword_1ED7FD4F0);
  }

  return byte_1ED7FD4CB;
}

uint64_t capabilities::euicc::supportsInstallReplace(capabilities::euicc *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD4F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD4F8))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD4CC = capabilities::euicc::sSupportsInstallReplace(Product);
    __cxa_guard_release(&qword_1ED7FD4F8);
  }

  return byte_1ED7FD4CC;
}

uint64_t capabilities::euicc::sSupportsInstallReplace(int a1)
{
  result = 1;
  v3 = (a1 - 137);
  if (v3 <= 0x24)
  {
    if (((1 << (a1 + 119)) & 0x1E79F0FFE3) != 0)
    {
      return result;
    }

    if (v3 == 19)
    {
      return 0;
    }
  }

  v4 = a1 - 200;
  if (v4 > 0x10 || ((1 << v4) & 0x1F180) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t capabilities::euicc::supportsVinylSEPPairing(capabilities::euicc *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD500, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD500))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD4CD = ((Product - 153) < 0x40) & (0xF4C00000001FFF87 >> (Product + 103));
    __cxa_guard_release(&qword_1ED7FD500);
  }

  return byte_1ED7FD4CD;
}

uint64_t capabilities::euicc::supportsGenericUpdater(capabilities::euicc *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD508, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD508))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD4CE = ((Product - 155) < 0x3E) & (0x3D3000000007FFE3uLL >> (Product + 101));
    __cxa_guard_release(&qword_1ED7FD508);
  }

  return byte_1ED7FD4CE;
}

uint64_t capabilities::euicc::supportsVinylSEPPairingVerification(capabilities::euicc *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD510, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD510))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD4CF = ((Product - 155) < 0x3E) & (0x3D3000000007FFE1uLL >> (Product + 101));
    __cxa_guard_release(&qword_1ED7FD510);
  }

  return byte_1ED7FD4CF;
}

uint64_t capabilities::euicc::supportsATProfileManagementCommands(capabilities::euicc *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD518, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD518))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD4D0 = ((Product - 155) < 0x39) & (0x100000000007F81uLL >> (Product + 101));
    __cxa_guard_release(&qword_1ED7FD518);
  }

  return byte_1ED7FD4D0;
}

uint64_t capabilities::euicc::supportsPartialActive(capabilities::euicc *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD520, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD520))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD4D1 = ((Product - 156) < 0xC) & (0xF01u >> (Product + 100));
    __cxa_guard_release(&qword_1ED7FD520);
  }

  return byte_1ED7FD4D1;
}

uint64_t __cxx_global_var_init_0()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ctu::Gestalt>::~PthreadMutexGuardPolicy, &ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance, &dword_1CAE37000);
  }

  return result;
}

uint64_t capabilities::coredump::getPersonality(capabilities::coredump *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD538, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD538))
  {
    Radio = TelephonyRadiosGetRadio();
    dword_1ED7FD52C = capabilities::coredump::sGetPersonality(Radio);
    __cxa_guard_release(&qword_1ED7FD538);
  }

  return dword_1ED7FD52C;
}

uint64_t capabilities::coredump::sGetPersonality(int a1)
{
  if ((a1 - 1) > 0x12)
  {
    return 0;
  }

  else
  {
    return dword_1CAE5EDC0[a1 - 1];
  }
}

uint64_t capabilities::coredump::coredumpAttemptCount(capabilities::coredump *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD548, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD548))
  {
    RadioVendor = TelephonyRadiosGetRadioVendor();
    v3 = 1;
    if (((RadioVendor - 1) & 0xFFFFFFFD) != 0)
    {
      v3 = 2;
    }

    qword_1ED7FD540 = v3;
    __cxa_guard_release(&qword_1ED7FD548);
  }

  return qword_1ED7FD540;
}

uint64_t capabilities::coredump::coredumpAttemptCountForVendor(int a1)
{
  if (((a1 - 1) & 0xFFFFFFFD) != 0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t capabilities::coredump::supportsWakeReadySignal(capabilities::coredump *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD550, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD550))
  {
    RadioVendor = TelephonyRadiosGetRadioVendor();
    _MergedGlobals_4 = (RadioVendor < 5) & (0x16u >> RadioVendor);
    __cxa_guard_release(&qword_1ED7FD550);
  }

  return _MergedGlobals_4;
}

uint64_t capabilities::coredump::supportsGPIOSignalling(capabilities::coredump *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD558, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD558))
  {
    byte_1ED7FD529 = TelephonyRadiosGetRadioVendor() - 1 < 2;
    __cxa_guard_release(&qword_1ED7FD558);
  }

  return byte_1ED7FD529;
}

uint64_t capabilities::coredump::recoveryForControlMessageTimeout(capabilities::coredump *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD560, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD560))
  {
    Product = TelephonyRadiosGetProduct();
    dword_1ED7FD530 = capabilities::coredump::sRecoveryForControlMessageTimeout(Product);
    __cxa_guard_release(&qword_1ED7FD560);
  }

  return dword_1ED7FD530;
}

uint64_t capabilities::coredump::sRecoveryForControlMessageTimeout(int a1)
{
  if ((a1 - 33) > 0xB7)
  {
    return 0;
  }

  else
  {
    return dword_1CAE5EE0C[a1 - 33];
  }
}

uint64_t capabilities::coredump::commandTimeout(capabilities::coredump *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD570, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD570))
  {
    RadioVendor = TelephonyRadiosGetRadioVendor();
    v3 = 10000;
    if ((RadioVendor - 1) >= 4)
    {
      v3 = 0;
    }

    qword_1ED7FD568 = v3;
    __cxa_guard_release(&qword_1ED7FD570);
  }

  return qword_1ED7FD568;
}

uint64_t capabilities::coredump::commandTimeoutForVendor(int a1)
{
  if ((a1 - 1) >= 4)
  {
    return 0;
  }

  else
  {
    return 10000;
  }
}

uint64_t capabilities::coredump::supportsSPMISignalling(capabilities::coredump *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD578, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD578))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD52A = ((Product - 155) < 0x3E) & (0x3D30E0000007F1E3uLL >> (Product + 101));
    __cxa_guard_release(&qword_1ED7FD578);
  }

  return byte_1ED7FD52A;
}

uint64_t capabilities::coredump::supportsSPMIResetReasonEncoding(capabilities::coredump *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD580, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD580))
  {
    byte_1ED7FD52B = TelephonyRadiosGetRadioVendor() - 3 < 2;
    __cxa_guard_release(&qword_1ED7FD580);
  }

  return byte_1ED7FD52B;
}

void *capabilities::coredump::asString@<X0>(unsigned int a1@<W0>, void *a2@<X8>)
{
  if (a1 > 4)
  {
    v2 = "???";
  }

  else
  {
    v2 = off_1E83A5F50[a1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

void capabilities::coredump::asString(int a1@<W0>, std::string *a2@<X8>)
{
  memset(&v8, 170, sizeof(v8));
  std::string::basic_string[abi:ne200100]<0>(&v8, "???");
  v5 = 0;
  v6 = 0;
  v7 = 0;
  if (!a1)
  {
    std::string::basic_string[abi:ne200100]<0>(a2, "kNone");
    goto LABEL_14;
  }

  if ((a1 & 1) != 0 && (std::string::basic_string[abi:ne200100]<0>(&__p, "kResetModem"), std::vector<std::string>::push_back[abi:ne200100](&v5, &__p), SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0))
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((a1 & 2) != 0)
    {
LABEL_5:
      std::string::basic_string[abi:ne200100]<0>(&__p, "kTailspin");
      std::vector<std::string>::push_back[abi:ne200100](&v5, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  else if ((a1 & 2) != 0)
  {
    goto LABEL_5;
  }

  if (v6 != v5)
  {
    ctu::join<std::__wrap_iter<std::string *>>(v5, v6, " | ", 3uLL, &__p);
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }

    v8 = __p;
  }

  *a2 = v8;
  memset(&v8, 0, sizeof(v8));
LABEL_14:
  __p.__r_.__value_.__r.__words[0] = &v5;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

void sub_1CAE49844(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __p = &a15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

uint64_t capabilities::txpower::timeoutConfig(capabilities::txpower *this)
{
  if (TelephonyRadiosGetRadio())
  {
    return 0xBB800000BB8;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_error_impl(&dword_1CAE37000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "unknown radio type detected", v2, 2u);
  }

  __TUAssertTrigger();
  return 0;
}

BOOL capabilities::txpower::maxPowerConfig(__n128 *a1)
{
  if (a1)
  {
    _getUnsupported(a1);
  }

  return a1 != 0;
}

__n128 _getUnsupported(__n128 *a1)
{
  result.n128_u64[0] = 0x7F0000007FLL;
  result.n128_u64[1] = 0x7F0000007FLL;
  *a1 = result;
  a1[1] = result;
  a1[2] = result;
  a1[3] = result;
  a1[4] = result;
  a1[5] = result;
  a1[6] = result;
  a1[7] = result;
  a1[8] = result;
  a1[9] = result;
  a1[10] = result;
  a1[11] = result;
  a1[12] = result;
  a1[13].n128_u64[0] = 0x7F0000007FLL;
  return result;
}

BOOL capabilities::txpower::proxPowerConfig(__n128 *a1)
{
  if (a1)
  {
    _getUnsupported(a1);
  }

  return a1 != 0;
}

double capabilities::txpower::unsupportedPowerConfig(__n128 *a1)
{
  if (a1)
  {
    *&result = _getUnsupported(a1).n128_u64[0];
  }

  return result;
}

uint64_t capabilities::txpower::asString@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v52 = v4;
  v51 = v4;
  v50 = v4;
  v49 = v4;
  v48 = v4;
  v47 = v4;
  v45 = 0xAAAAAAAAAAAAAAAALL;
  v44 = v4;
  v43 = v4;
  v41 = 0xAAAAAAAAAAAAAAAALL;
  v40 = v4;
  *__p = v4;
  v38 = v4;
  *__src = v4;
  v36 = v4;
  v35 = v4;
  v33 = 0xAAAAAAAAAAAAAAAALL;
  v46 = 0;
  v5 = MEMORY[0x1E69E5560] + 104;
  v42 = MEMORY[0x1E69E5560] + 104;
  v6 = MEMORY[0x1E69E5560] + 64;
  v34 = MEMORY[0x1E69E5560] + 64;
  v7 = MEMORY[0x1E69E54D8];
  v8 = *(MEMORY[0x1E69E54D8] + 24);
  v32 = *(MEMORY[0x1E69E54D8] + 16);
  *(&v32 + *(v32 - 24)) = v8;
  v33 = 0;
  v9 = (&v32 + *(v32 - 24));
  std::ios_base::init(v9, &v35);
  v10 = MEMORY[0x1E69E5560] + 24;
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  v11 = v7[5];
  v34 = v7[4];
  *(&v34 + *(v34 - 24)) = v11;
  v32 = v7[1];
  *(&v32 + *(v32 - 24)) = v7[6];
  v42 = v5;
  v32 = v10;
  v12 = MEMORY[0x1E69E5538] + 16;
  v34 = v6;
  *&v35 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1CCAAA4E0](&v35 + 8);
  __src[1] = 0;
  v38 = 0uLL;
  __p[0] = 0;
  v13 = MEMORY[0x1E69E5548] + 16;
  __p[1] = 0;
  *&v40 = 0;
  LODWORD(v41) = 24;
  *&v35 = MEMORY[0x1E69E5548] + 16;
  *&v36 = __p;
  *(&v36 + 1) = __p;
  __src[0] = __p;
  *(&v40 + 1) = __p;
  std::string::resize(__p, 0x16uLL, 0);
  v14 = BYTE7(v40);
  if (SBYTE7(v40) < 0)
  {
    v14 = __p[1];
  }

  __src[1] = __p;
  *&v38 = __p;
  *(&v38 + 1) = __p + v14;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, "t1Timeout = ", 12);
  v15 = MEMORY[0x1CCAAA4B0](&v34, *a1);
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " ms, ", 5);
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "resetTimeout = ", 15);
  v18 = MEMORY[0x1CCAAA4B0](v17, a1[1]);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " ms, ", 5);
  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "txCapDuration = ", 16);
  v21 = MEMORY[0x1CCAAA4B0](v20, a1[2]);
  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " ms, ", 5);
  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "txNoCapDuration = ", 18);
  v24 = MEMORY[0x1CCAAA4B0](v23, a1[3]);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " ms", 3);
  if ((v41 & 0x10) != 0)
  {
    v26 = *(&v40 + 1);
    if (*(&v40 + 1) < v38)
    {
      *(&v40 + 1) = v38;
      v26 = v38;
    }

    v27 = __src[1];
  }

  else
  {
    if ((v41 & 8) == 0)
    {
      v25 = 0;
      a2[23] = 0;
      goto LABEL_19;
    }

    v27 = v36;
    v26 = __src[0];
  }

  v25 = v26 - v27;
  if ((v26 - v27) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v25 >= 0x17)
  {
    if ((v25 | 7) == 0x17)
    {
      v28 = 25;
    }

    else
    {
      v28 = (v25 | 7) + 1;
    }

    v29 = operator new(v28);
    *(a2 + 1) = v25;
    *(a2 + 2) = v28 | 0x8000000000000000;
    *a2 = v29;
    a2 = v29;
    goto LABEL_18;
  }

  a2[23] = v25;
  if (v25)
  {
LABEL_18:
    memmove(a2, v27, v25);
  }

LABEL_19:
  a2[v25] = 0;
  v32 = *v7;
  v30 = v7[9];
  *(&v32 + *(v32 - 24)) = v7[8];
  v34 = v30;
  *&v35 = v13;
  if (SBYTE7(v40) < 0)
  {
    operator delete(__p[0]);
  }

  *&v35 = v12;
  std::locale::~locale(&v35 + 1);
  std::iostream::~basic_iostream();
  return MEMORY[0x1CCAAA530](&v42);
}

void sub_1CAE49F6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(v27 + 4);
  std::iostream::~basic_iostream();
  MEMORY[0x1CCAAA530](a10);
  _Unwind_Resume(a1);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54D8];
  v3 = *MEMORY[0x1E69E54D8];
  *a1 = *MEMORY[0x1E69E54D8];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  v22[0] = 0xAAAAAAAAAAAAAAAALL;
  v22[1] = 0xAAAAAAAAAAAAAAAALL;
  MEMORY[0x1CCAAA490](v22, a1);
  if (LOBYTE(v22[0]) == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(__b, MEMORY[0x1E69E5318]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(__b);
      *(v6 + 36) = v9;
    }

    v11 = a2 + a3;
    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!v7)
    {
      goto LABEL_30;
    }

    v13 = *(v6 + 3);
    v14 = v13 <= a3;
    v15 = v13 - a3;
    v16 = v14 ? 0 : v15;
    if (v12 - a2 >= 1 && (*(*v7 + 96))(v7, a2, v12 - a2) != v12 - a2)
    {
      goto LABEL_30;
    }

    if (v16 >= 1)
    {
      memset(__b, 170, sizeof(__b));
      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v16 >= 0x17)
      {
        v18 = (v16 | 7) == 0x17 ? 25 : (v16 | 7) + 1;
        v17 = operator new(v18);
        __b[1].__locale_ = v16;
        __b[2].__locale_ = (v18 | 0x8000000000000000);
        __b[0].__locale_ = v17;
      }

      else
      {
        HIBYTE(__b[2].__locale_) = v16;
        v17 = __b;
      }

      memset(v17, v9, v16);
      *(v17 + v16) = 0;
      v19 = SHIBYTE(__b[2].__locale_) >= 0 ? __b : __b[0].__locale_;
      v20 = (*(*v7 + 96))(v7, v19, v16);
      if (SHIBYTE(__b[2].__locale_) < 0)
      {
        operator delete(__b[0].__locale_);
      }

      if (v20 != v16)
      {
        goto LABEL_30;
      }
    }

    if (v11 - v12 < 1 || (*(*v7 + 96))(v7, v12, v11 - v12) == v11 - v12)
    {
      *(v6 + 3) = 0;
    }

    else
    {
LABEL_30:
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x1CCAAA4A0](v22);
  return a1;
}

void sub_1CAE4A40C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1CCAAA4A0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v17 + *(*v17 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1CAE4A3E0);
}

uint64_t capabilities::ct::sGetRadioModuleType(int a1)
{
  v1 = a1 - 33;
  result = 0;
  switch(v1)
  {
    case 0:
    case 5:
    case 19:
    case 20:
    case 24:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 40:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 60:
    case 61:
    case 62:
    case 63:
    case 64:
    case 66:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
    case 100:
    case 101:
    case 102:
    case 103:
    case 104:
    case 105:
    case 106:
    case 107:
    case 108:
    case 109:
    case 110:
    case 111:
    case 112:
    case 113:
    case 114:
    case 115:
    case 116:
    case 117:
    case 118:
    case 119:
    case 120:
    case 121:
    case 122:
    case 123:
    case 124:
    case 125:
    case 126:
    case 127:
    case 128:
    case 129:
    case 130:
    case 131:
    case 132:
    case 133:
    case 134:
    case 135:
    case 136:
    case 137:
    case 138:
    case 139:
    case 140:
    case 167:
    case 169:
    case 170:
    case 174:
    case 175:
    case 176:
    case 178:
    case 179:
    case 180:
    case 181:
    case 182:
    case 183:
      result = 2;
      break;
    case 1:
    case 2:
    case 3:
    case 4:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 21:
    case 22:
    case 23:
    case 25:
    case 26:
    case 36:
    case 37:
    case 38:
    case 39:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 52:
    case 53:
    case 65:
    case 80:
    case 88:
    case 141:
    case 142:
    case 143:
    case 144:
    case 145:
    case 146:
    case 147:
    case 148:
    case 149:
    case 150:
    case 151:
    case 152:
    case 153:
    case 154:
    case 155:
    case 156:
    case 157:
    case 158:
    case 159:
    case 160:
    case 161:
    case 162:
    case 163:
    case 164:
    case 165:
    case 166:
    case 168:
    case 171:
    case 172:
    case 173:
    case 177:
      return result;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t capabilities::ct::supportsP2P(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD698, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_1ED7FD698);
    if (v2)
    {
      v3 = capabilities::ct::supportsP2PAsPhone(v2);
      if (v3)
      {
        v4 = 1;
      }

      else
      {
        v4 = capabilities::ct::supportsP2PAsGizmo(v3);
      }

      _MergedGlobals_5 = v4;
      __cxa_guard_release(&qword_1ED7FD698);
    }
  }

  return _MergedGlobals_5;
}

uint64_t capabilities::ct::LASDLocationTimeout(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD6A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD6A8))
  {
    qword_1ED7FD6A0 = 20;
    __cxa_guard_release(&qword_1ED7FD6A8);
  }

  return qword_1ED7FD6A0;
}

uint64_t capabilities::ct::supportsMultipleThumpers(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD6B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD6B0))
  {
    byte_1ED7FD589 = 0;
    __cxa_guard_release(&qword_1ED7FD6B0);
  }

  return byte_1ED7FD589;
}

uint64_t capabilities::ct::signalStrengthDisplayMaxValue(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD6C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD6C0))
  {
    qword_1ED7FD6B8 = 4;
    __cxa_guard_release(&qword_1ED7FD6C0);
  }

  return qword_1ED7FD6B8;
}

uint64_t capabilities::ct::supportsEMBMS(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD6C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD6C8))
  {
    byte_1ED7FD58A = 0;
    __cxa_guard_release(&qword_1ED7FD6C8);
  }

  return byte_1ED7FD58A;
}

uint64_t capabilities::ct::emulatedEMBMS(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD6D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD6D0))
  {
    byte_1ED7FD58B = 0;
    __cxa_guard_release(&qword_1ED7FD6D0);
  }

  return byte_1ED7FD58B;
}

uint64_t capabilities::ct::supportsVegaInEmergencyMode(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD6D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD6D8))
  {
    byte_1ED7FD58C = 0;
    __cxa_guard_release(&qword_1ED7FD6D8);
  }

  return byte_1ED7FD58C;
}

uint64_t capabilities::ct::supportsMultiphaseBundleSetup(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD6E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD6E0))
  {
    byte_1ED7FD58D = 0;
    __cxa_guard_release(&qword_1ED7FD6E0);
  }

  return byte_1ED7FD58D;
}

uint64_t capabilities::ct::supportsPhysicalSIMToESIMTransferFromLegacyDevice(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD6E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD6E8))
  {
    byte_1ED7FD58E = 0;
    __cxa_guard_release(&qword_1ED7FD6E8);
  }

  return byte_1ED7FD58E;
}

uint64_t capabilities::ct::supportsThermalMonitor(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD6F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD6F0))
  {
    byte_1ED7FD58F = 0;
    __cxa_guard_release(&qword_1ED7FD6F0);
  }

  return byte_1ED7FD58F;
}

uint64_t capabilities::ct::supportsPCOForCambioTrigger(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD6F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD6F8))
  {
    byte_1ED7FD590 = 0;
    __cxa_guard_release(&qword_1ED7FD6F8);
  }

  return byte_1ED7FD590;
}

uint64_t capabilities::ct::supportsLASDGSMDatabase(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD700, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD700))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD591 = capabilities::ct::sSupportsLASDGSMDatabase(Product);
    __cxa_guard_release(&qword_1ED7FD700);
  }

  return byte_1ED7FD591;
}

uint64_t capabilities::ct::sSupportsLASDGSMDatabase(int a1)
{
  result = 1;
  switch(a1)
  {
    case 33:
    case 38:
    case 52:
    case 53:
    case 57:
    case 62:
    case 63:
    case 64:
    case 68:
    case 73:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 97:
    case 99:
    case 100:
    case 101:
    case 102:
    case 107:
    case 108:
    case 109:
    case 110:
    case 111:
    case 112:
    case 114:
    case 115:
    case 116:
    case 117:
    case 120:
    case 122:
    case 123:
    case 124:
    case 125:
    case 126:
    case 132:
    case 133:
    case 134:
    case 135:
    case 136:
    case 137:
    case 138:
    case 142:
    case 143:
    case 144:
    case 145:
    case 146:
    case 147:
    case 148:
    case 149:
    case 150:
    case 151:
    case 152:
    case 156:
    case 157:
    case 158:
    case 159:
    case 160:
    case 161:
    case 164:
    case 165:
    case 166:
    case 167:
    case 170:
    case 171:
    case 172:
    case 173:
    case 200:
    case 201:
    case 202:
    case 203:
    case 204:
    case 205:
    case 206:
    case 207:
    case 208:
    case 212:
    case 213:
    case 214:
    case 215:
    case 216:
      return result;
    case 34:
    case 35:
    case 36:
    case 37:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 54:
    case 55:
    case 56:
    case 58:
    case 59:
    case 60:
    case 61:
    case 65:
    case 66:
    case 67:
    case 69:
    case 70:
    case 71:
    case 72:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 85:
    case 86:
    case 87:
    case 88:
    case 98:
    case 103:
    case 104:
    case 105:
    case 106:
    case 113:
    case 118:
    case 119:
    case 121:
    case 127:
    case 128:
    case 129:
    case 130:
    case 131:
    case 139:
    case 140:
    case 141:
    case 153:
    case 154:
    case 155:
    case 162:
    case 163:
    case 168:
    case 169:
    case 174:
    case 175:
    case 176:
    case 177:
    case 178:
    case 179:
    case 180:
    case 181:
    case 182:
    case 183:
    case 184:
    case 185:
    case 186:
    case 187:
    case 188:
    case 189:
    case 190:
    case 191:
    case 192:
    case 193:
    case 194:
    case 195:
    case 196:
    case 197:
    case 198:
    case 199:
    case 209:
    case 210:
    case 211:
      goto LABEL_4;
    default:
      if ((a1 - 0x8000) >= 3)
      {
LABEL_4:
        result = 0;
      }

      break;
  }

  return result;
}

uint64_t capabilities::ct::supportsEmptyNITZIndication(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD708, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD708))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD592 = capabilities::ct::sSupportsEmptyNITZIndication(Product);
    __cxa_guard_release(&qword_1ED7FD708);
  }

  return byte_1ED7FD592;
}

uint64_t capabilities::ct::sSupportsEmptyNITZIndication(int a1)
{
  result = 1;
  if (a1 > 211)
  {
    if ((a1 - 0x8000) >= 3 && a1 != 212)
    {
      return 0;
    }
  }

  else
  {
    switch(a1)
    {
      case 52:
      case 53:
      case 57:
      case 62:
      case 63:
      case 64:
      case 68:
      case 73:
      case 99:
      case 100:
      case 101:
      case 102:
      case 108:
      case 109:
      case 110:
      case 111:
      case 114:
      case 115:
      case 116:
      case 117:
      case 120:
      case 123:
      case 124:
      case 125:
      case 126:
      case 132:
      case 133:
      case 134:
      case 135:
      case 136:
      case 137:
      case 138:
      case 142:
      case 143:
      case 144:
      case 145:
      case 146:
      case 147:
      case 148:
      case 149:
      case 150:
      case 151:
      case 152:
      case 157:
      case 158:
      case 159:
      case 164:
      case 165:
      case 166:
        return result;
      case 54:
      case 55:
      case 56:
      case 58:
      case 59:
      case 60:
      case 61:
      case 65:
      case 66:
      case 67:
      case 69:
      case 70:
      case 71:
      case 72:
      case 74:
      case 75:
      case 76:
      case 77:
      case 78:
      case 79:
      case 80:
      case 81:
      case 82:
      case 83:
      case 84:
      case 85:
      case 86:
      case 87:
      case 88:
      case 89:
      case 90:
      case 91:
      case 92:
      case 93:
      case 94:
      case 95:
      case 96:
      case 97:
      case 98:
      case 103:
      case 104:
      case 105:
      case 106:
      case 107:
      case 112:
      case 113:
      case 118:
      case 119:
      case 121:
      case 122:
      case 127:
      case 128:
      case 129:
      case 130:
      case 131:
      case 139:
      case 140:
      case 141:
      case 153:
      case 154:
      case 155:
      case 156:
      case 160:
      case 161:
      case 162:
      case 163:
        return 0;
      default:
        if (a1 != 33 && a1 != 38)
        {
          return 0;
        }

        break;
    }
  }

  return result;
}

uint64_t capabilities::ct::shouldRadioInitInAirplaneMode(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD710, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD710))
  {
    RadioVendor = TelephonyRadiosGetRadioVendor();
    v4 = RadioVendor == 1 || RadioVendor == 4;
    byte_1ED7FD593 = v4;
    __cxa_guard_release(&qword_1ED7FD710);
  }

  return byte_1ED7FD593;
}

uint64_t capabilities::ct::shouldWaitForDeviceRegistrationWhenPlacingEmergencyCall(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD718, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD718))
  {
    Radio = TelephonyRadiosGetRadio();
    byte_1ED7FD594 = (Radio < 0x13) & (0x73E3Eu >> Radio);
    __cxa_guard_release(&qword_1ED7FD718);
  }

  return byte_1ED7FD594;
}

void capabilities::ct::minFirmwareVersion(std::string *a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED7FD720, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD720))
  {
    RadioVendor = TelephonyRadiosGetRadioVendor();
    capabilities::ct::sMinFirmwareVersion(&xmmword_1ED7FDDA0, RadioVendor);
    __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED7FDDA0, &dword_1CAE37000);
    __cxa_guard_release(&qword_1ED7FD720);
  }

  if (byte_1ED7FDDB7 < 0)
  {
    v3 = xmmword_1ED7FDDA0;

    std::string::__init_copy_ctor_external(a1, v3, *(&v3 + 1));
  }

  else
  {
    *&a1->__r_.__value_.__l.__data_ = xmmword_1ED7FDDA0;
    a1->__r_.__value_.__r.__words[2] = unk_1ED7FDDB0;
  }
}

void *capabilities::ct::sMinFirmwareVersion(void *a1, unsigned int a2)
{
  memset(a1, 170, 24);
  result = std::string::basic_string[abi:ne200100]<0>(a1, &unk_1CAE5DA75);
  if (a2 <= 4 && ((1 << a2) & 0x16) != 0)
  {
    if (*(result + 23) < 0)
    {
      result[1] = 7;
      result = *result;
    }

    else
    {
      *(result + 23) = 7;
    }

    *(result + 3) = 808463920;
    *result = 808463920;
    result = (result + 7);
  }

  else if (*(result + 23) < 0)
  {
    result[1] = 0;
    result = *result;
  }

  else
  {
    *(result + 23) = 0;
  }

  *result = 0;
  return result;
}

uint64_t capabilities::ct::getAWDBasebandComponent(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD728, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD728))
  {
    v2 = TelephonyRadiosGetRadioVendor() - 1;
    if (v2 > 3)
    {
      v3 = 0;
    }

    else
    {
      v3 = dword_1CAE5F118[v2];
    }

    dword_1ED7FD644 = v3;
    __cxa_guard_release(&qword_1ED7FD728);
  }

  return dword_1ED7FD644;
}

uint64_t capabilities::ct::getAWDBasebandComponentForVendor(int a1)
{
  if ((a1 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return dword_1CAE5F118[a1 - 1];
  }
}

uint64_t capabilities::ct::supportsSHA2Signature(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD730, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD730))
  {
    Radio = TelephonyRadiosGetRadio();
    byte_1ED7FD595 = (Radio < 0x13) & (0x63E3Eu >> Radio);
    __cxa_guard_release(&qword_1ED7FD730);
  }

  return byte_1ED7FD595;
}

uint64_t capabilities::ct::supportsIncrementalNetworkScan(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD738, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD738))
  {
    Radio = TelephonyRadiosGetRadio();
    byte_1ED7FD596 = (Radio < 0x14) & (0xEFFAEu >> Radio);
    __cxa_guard_release(&qword_1ED7FD738);
  }

  return byte_1ED7FD596;
}

uint64_t capabilities::ct::supportsCapabilitySIM(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD740, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD740))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD597 = capabilities::ct::sSupportsCapabilitySIM(Product);
    __cxa_guard_release(&qword_1ED7FD740);
  }

  return byte_1ED7FD597;
}

uint64_t capabilities::ct::sSupportsCapabilitySIM(int a1)
{
  v1 = a1 - 33;
  result = 1;
  switch(v1)
  {
    case 0:
    case 5:
    case 19:
    case 20:
    case 24:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 40:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 60:
    case 61:
    case 62:
    case 63:
    case 64:
    case 66:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
    case 100:
    case 101:
    case 102:
    case 103:
    case 104:
    case 105:
    case 106:
    case 107:
    case 108:
    case 109:
    case 110:
    case 111:
    case 112:
    case 113:
    case 114:
    case 115:
    case 116:
    case 117:
    case 118:
    case 119:
    case 120:
    case 121:
    case 122:
    case 123:
    case 124:
    case 125:
    case 126:
    case 129:
    case 130:
    case 131:
    case 132:
    case 133:
    case 134:
    case 135:
    case 136:
    case 140:
    case 167:
    case 169:
    case 170:
    case 174:
    case 176:
    case 178:
    case 179:
    case 180:
    case 181:
    case 183:
      return result;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t capabilities::ct::supportsPSDownlinkDTMFDetection(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD748, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD748))
  {
    Radio = TelephonyRadiosGetRadio();
    byte_1ED7FD598 = (Radio < 0x14) & (0xFFE3Eu >> Radio);
    __cxa_guard_release(&qword_1ED7FD748);
  }

  return byte_1ED7FD598;
}

uint64_t capabilities::ct::supportsCSDownlinkDTMFDetection(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD750, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD750))
  {
    byte_1ED7FD599 = ((TelephonyRadiosGetRadioVendor() - 1) & 0xFFFFFFFD) == 0;
    __cxa_guard_release(&qword_1ED7FD750);
  }

  return byte_1ED7FD599;
}

uint64_t capabilities::ct::supportsECDSASignatures(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD760, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD760))
  {
    Radio = TelephonyRadiosGetRadio();
    byte_1ED7FD59B = (Radio < 0x14) & (0xFFFAEu >> Radio);
    __cxa_guard_release(&qword_1ED7FD760);
  }

  return byte_1ED7FD59B;
}

uint64_t capabilities::ct::supportsRegisteredIDSService(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD768))
  {
    Radio = TelephonyRadiosGetRadio();
    byte_1ED7FD59C = (Radio < 0x14) & (0xEFFAEu >> Radio);
    __cxa_guard_release(&qword_1ED7FD768);
  }

  return byte_1ED7FD59C;
}

uint64_t capabilities::ct::getSignalStrengthPersonality(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD770, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD770))
  {
    RadioVendor = TelephonyRadiosGetRadioVendor();
    if ((RadioVendor - 1) < 4)
    {
      v3 = RadioVendor + 1;
    }

    else
    {
      v3 = 0;
    }

    dword_1ED7FD648 = v3;
    __cxa_guard_release(&qword_1ED7FD770);
  }

  return dword_1ED7FD648;
}

uint64_t capabilities::ct::getSignalStrengthPersonalityForVendor(int a1)
{
  if ((a1 - 1) < 4)
  {
    return (a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t capabilities::ct::supportsCSVoiceCall(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD780, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD780))
  {
    byte_1ED7FD59E = TelephonyRadiosGetRadioVendor() - 1 < 3;
    __cxa_guard_release(&qword_1ED7FD780);
  }

  return byte_1ED7FD59E;
}

uint64_t capabilities::ct::supportsBB2GMitigation(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD788, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD788))
  {
    Radio = TelephonyRadiosGetRadio();
    byte_1ED7FD59F = (Radio < 0x14) & (0xEFFAEu >> Radio);
    __cxa_guard_release(&qword_1ED7FD788);
  }

  return byte_1ED7FD59F;
}

uint64_t capabilities::ct::supportsDataQMIExtensions(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD790, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD790))
  {
    byte_1ED7FD5A0 = TelephonyRadiosGetRadioVendor() == 1;
    __cxa_guard_release(&qword_1ED7FD790);
  }

  return byte_1ED7FD5A0;
}

uint64_t capabilities::ct::supportsReportingTetheringStateToBaseband(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD798, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD798))
  {
    byte_1ED7FD5A1 = TelephonyRadiosGetRadioVendor() == 1;
    __cxa_guard_release(&qword_1ED7FD798);
  }

  return byte_1ED7FD5A1;
}

uint64_t capabilities::ct::supportsSIMMomentaryPowerDown(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD7A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD7A0))
  {
    byte_1ED7FD5A2 = TelephonyRadiosGetRadioVendor() == 1;
    __cxa_guard_release(&qword_1ED7FD7A0);
  }

  return byte_1ED7FD5A2;
}

uint64_t capabilities::ct::defaultVinylSlotID(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD7A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD7A8))
  {
    v2 = TelephonyRadiosGetRadio() - 1;
    if (v2 > 0x12)
    {
      v3 = 0;
    }

    else
    {
      v3 = dword_1CAE5F408[v2];
    }

    dword_1ED7FD64C = v3;
    __cxa_guard_release(&qword_1ED7FD7A8);
  }

  return dword_1ED7FD64C;
}

uint64_t capabilities::ct::defaultVinylSlotIDForRadio(int a1)
{
  if ((a1 - 1) > 0x12)
  {
    return 0;
  }

  else
  {
    return dword_1CAE5F408[a1 - 1];
  }
}

uint64_t capabilities::ct::supportsSIMTransferWithSecureIntent(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD7B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD7B0))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD5A3 = capabilities::ct::sSupportsSIMTransferWithSecureIntent(Product);
    __cxa_guard_release(&qword_1ED7FD7B0);
  }

  return byte_1ED7FD5A3;
}

uint64_t capabilities::ct::sSupportsSIMTransferWithSecureIntent(int a1)
{
  result = 1;
  switch(a1)
  {
    case 33:
    case 38:
    case 52:
    case 53:
    case 57:
    case 62:
    case 63:
    case 64:
    case 68:
    case 73:
    case 91:
    case 92:
    case 93:
    case 95:
    case 96:
    case 99:
    case 100:
    case 101:
    case 102:
    case 107:
    case 108:
    case 109:
    case 110:
    case 111:
    case 114:
    case 115:
    case 116:
    case 117:
    case 120:
    case 123:
    case 124:
    case 125:
    case 126:
    case 132:
    case 133:
    case 134:
    case 135:
    case 136:
    case 137:
    case 138:
    case 142:
    case 143:
    case 144:
    case 145:
    case 146:
    case 147:
    case 148:
    case 149:
    case 150:
    case 151:
    case 152:
    case 156:
    case 157:
    case 158:
    case 159:
    case 160:
    case 161:
    case 164:
    case 165:
    case 166:
    case 167:
    case 170:
    case 171:
    case 172:
    case 173:
      return result;
    case 34:
    case 35:
    case 36:
    case 37:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 54:
    case 55:
    case 56:
    case 58:
    case 59:
    case 60:
    case 61:
    case 65:
    case 66:
    case 67:
    case 69:
    case 70:
    case 71:
    case 72:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
    case 88:
    case 89:
    case 90:
    case 94:
    case 97:
    case 98:
    case 103:
    case 104:
    case 105:
    case 106:
    case 112:
    case 113:
    case 118:
    case 119:
    case 121:
    case 122:
    case 127:
    case 128:
    case 129:
    case 130:
    case 131:
    case 139:
    case 140:
    case 141:
    case 153:
    case 154:
    case 155:
    case 162:
    case 163:
    case 168:
    case 169:
      goto LABEL_4;
    default:
      if (a1 != 212)
      {
LABEL_4:
        result = 0;
      }

      break;
  }

  return result;
}

uint64_t capabilities::ct::firmwarePreflightVinylSlotID(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD7B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD7B8))
  {
    Product = TelephonyRadiosGetProduct();
    dword_1ED7FD650 = capabilities::ct::sFirmwarePreflightVinylSlotID(Product);
    __cxa_guard_release(&qword_1ED7FD7B8);
  }

  return dword_1ED7FD650;
}

uint64_t capabilities::ct::sFirmwarePreflightVinylSlotID(int a1)
{
  if ((a1 - 33) > 0xB7)
  {
    return 0;
  }

  else
  {
    return dword_1CAE5F128[a1 - 33];
  }
}

uint64_t capabilities::ct::defaultMobileEquipmentInfoCSNSlotID(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD7C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD7C0))
  {
    v2 = TelephonyRadiosGetRadio() - 1;
    if (v2 > 0x12)
    {
      v3 = 0;
    }

    else
    {
      v3 = dword_1CAE5F408[v2];
    }

    dword_1ED7FD654 = v3;
    __cxa_guard_release(&qword_1ED7FD7C0);
  }

  return dword_1ED7FD654;
}

uint64_t capabilities::ct::defaultMobileEquipmentInfoCSNSlotIDForRadio(int a1)
{
  if ((a1 - 1) > 0x12)
  {
    return 0;
  }

  else
  {
    return dword_1CAE5F408[a1 - 1];
  }
}

uint64_t capabilities::ct::sSupportsDataSubscriptionController(int a1)
{
  result = 1;
  if (a1 > 199)
  {
    v3 = a1 - 200;
    if (v3 > 0x10 || ((1 << v3) & 0x17085) == 0)
    {
      return 0;
    }
  }

  else
  {
    switch(a1)
    {
      case 52:
      case 53:
      case 57:
      case 62:
      case 63:
      case 64:
      case 68:
      case 73:
      case 99:
      case 100:
      case 101:
      case 102:
      case 108:
      case 109:
      case 110:
      case 111:
      case 114:
      case 115:
      case 116:
      case 117:
      case 120:
      case 123:
      case 124:
      case 125:
      case 126:
      case 132:
      case 133:
      case 134:
      case 135:
      case 136:
      case 142:
      case 143:
      case 144:
      case 145:
      case 149:
      case 150:
      case 151:
      case 152:
      case 156:
      case 164:
      case 165:
      case 166:
      case 167:
      case 173:
        return result;
      case 54:
      case 55:
      case 56:
      case 58:
      case 59:
      case 60:
      case 61:
      case 65:
      case 66:
      case 67:
      case 69:
      case 70:
      case 71:
      case 72:
      case 74:
      case 75:
      case 76:
      case 77:
      case 78:
      case 79:
      case 80:
      case 81:
      case 82:
      case 83:
      case 84:
      case 85:
      case 86:
      case 87:
      case 88:
      case 89:
      case 90:
      case 91:
      case 92:
      case 93:
      case 94:
      case 95:
      case 96:
      case 97:
      case 98:
      case 103:
      case 104:
      case 105:
      case 106:
      case 107:
      case 112:
      case 113:
      case 118:
      case 119:
      case 121:
      case 122:
      case 127:
      case 128:
      case 129:
      case 130:
      case 131:
      case 137:
      case 138:
      case 139:
      case 140:
      case 141:
      case 146:
      case 147:
      case 148:
      case 153:
      case 154:
      case 155:
      case 157:
      case 158:
      case 159:
      case 160:
      case 161:
      case 162:
      case 163:
      case 168:
      case 169:
      case 170:
      case 171:
      case 172:
        return 0;
      default:
        if (a1 != 33 && a1 != 38)
        {
          return 0;
        }

        break;
    }
  }

  return result;
}

uint64_t capabilities::ct::supportsBatterySaverMode(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD7D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD7D0))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD5A5 = capabilities::ct::sSupportsBatterySaverMode(Product);
    __cxa_guard_release(&qword_1ED7FD7D0);
  }

  return byte_1ED7FD5A5;
}

uint64_t capabilities::ct::sSupportsBatterySaverMode(int a1)
{
  v1 = a1 - 33;
  result = 1;
  switch(v1)
  {
    case 0:
    case 5:
    case 19:
    case 20:
    case 24:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 35:
    case 40:
    case 46:
    case 47:
    case 48:
    case 51:
    case 54:
    case 55:
    case 58:
    case 59:
    case 60:
    case 64:
    case 66:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 75:
    case 76:
    case 77:
    case 78:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
    case 100:
    case 101:
    case 102:
    case 103:
    case 104:
    case 105:
    case 106:
    case 107:
    case 108:
    case 109:
    case 110:
    case 111:
    case 112:
    case 113:
    case 114:
    case 115:
    case 116:
    case 117:
    case 118:
    case 119:
    case 120:
    case 121:
    case 122:
    case 123:
    case 124:
    case 125:
    case 126:
    case 127:
    case 128:
    case 129:
    case 130:
    case 131:
    case 132:
    case 133:
    case 134:
    case 135:
    case 136:
    case 137:
    case 138:
    case 139:
    case 140:
    case 167:
    case 168:
    case 169:
    case 170:
    case 171:
    case 172:
    case 173:
    case 174:
    case 175:
    case 176:
    case 178:
    case 179:
    case 180:
    case 181:
    case 182:
    case 183:
      return result;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t capabilities::ct::cellularPlanDeleteSupportedOnVinylSlotID(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD7D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD7D8))
  {
    v2 = TelephonyRadiosGetRadio() - 1;
    if (v2 > 0x12)
    {
      v3 = 0;
    }

    else
    {
      v3 = dword_1CAE5F408[v2];
    }

    dword_1ED7FD658 = v3;
    __cxa_guard_release(&qword_1ED7FD7D8);
  }

  return dword_1ED7FD658;
}

uint64_t capabilities::ct::cellularPlanDeleteSupportedOnVinylSlotIDForRadio(int a1)
{
  if ((a1 - 1) > 0x12)
  {
    return 0;
  }

  else
  {
    return dword_1CAE5F408[a1 - 1];
  }
}

uint64_t capabilities::ct::defaultDebugVinylSlotID(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD7E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD7E0))
  {
    v2 = TelephonyRadiosGetRadio() - 1;
    if (v2 > 0x12)
    {
      v3 = 0;
    }

    else
    {
      v3 = dword_1CAE5F408[v2];
    }

    dword_1ED7FD65C = v3;
    __cxa_guard_release(&qword_1ED7FD7E0);
  }

  return dword_1ED7FD65C;
}

uint64_t capabilities::ct::defaultDebugVinylSlotIDForRadio(int a1)
{
  if ((a1 - 1) > 0x12)
  {
    return 0;
  }

  else
  {
    return dword_1CAE5F408[a1 - 1];
  }
}

void capabilities::ct::fieldTestAppIdentifier(std::string *a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED7FD7E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD7E8))
  {
    RadioVendor = TelephonyRadiosGetRadioVendor();
    capabilities::ct::sFieldTestAppIdentifier(&xmmword_1ED7FDDB8, RadioVendor);
    __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED7FDDB8, &dword_1CAE37000);
    __cxa_guard_release(&qword_1ED7FD7E8);
  }

  if (byte_1ED7FDDCF < 0)
  {
    v3 = xmmword_1ED7FDDB8;

    std::string::__init_copy_ctor_external(a1, v3, *(&v3 + 1));
  }

  else
  {
    *&a1->__r_.__value_.__l.__data_ = xmmword_1ED7FDDB8;
    a1->__r_.__value_.__r.__words[2] = unk_1ED7FDDC8;
  }
}

void *capabilities::ct::sFieldTestAppIdentifier(void *a1, int a2)
{
  memset(a1, 170, 24);
  result = std::string::basic_string[abi:ne200100]<0>(a1, &unk_1CAE5DA75);
  v4 = *(result + 23);
  if (a2 == 1)
  {
    if (v4 < 0)
    {
      result[1] = 21;
      result = *result;
    }

    else
    {
      *(result + 23) = 21;
    }

    qmemcpy(result, "com.apple.FTMInternal", 21);
    result = (result + 21);
  }

  else if (v4 < 0)
  {
    result[1] = 0;
    result = *result;
  }

  else
  {
    *(result + 23) = 0;
  }

  *result = 0;
  return result;
}

uint64_t capabilities::ct::supportsDisableLPANR(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD7F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD7F0))
  {
    byte_1ED7FD5A6 = ((TelephonyRadiosGetRadioVendor() - 1) & 0xFFFFFFFD) == 0;
    __cxa_guard_release(&qword_1ED7FD7F0);
  }

  return byte_1ED7FD5A6;
}

uint64_t capabilities::ct::callManagerSearchRoundsMaxValue(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD800, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD800))
  {
    v2 = TelephonyRadiosGetRadio() - 1;
    if (v2 > 0x12)
    {
      v3 = 2;
    }

    else
    {
      v3 = qword_1CAE5F458[v2];
    }

    qword_1ED7FD7F8 = v3;
    __cxa_guard_release(&qword_1ED7FD800);
  }

  return qword_1ED7FD7F8;
}

uint64_t capabilities::ct::callManagerSearchRoundsMaxValueForRadio(int a1)
{
  if ((a1 - 1) > 0x12)
  {
    return 2;
  }

  else
  {
    return qword_1CAE5F458[a1 - 1];
  }
}

uint64_t capabilities::ct::supportsCerberus(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD808, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD808))
  {
    byte_1ED7FD5A7 = ((TelephonyRadiosGetRadioVendor() - 1) & 0xFFFFFFFD) == 0;
    __cxa_guard_release(&qword_1ED7FD808);
  }

  return byte_1ED7FD5A7;
}

uint64_t capabilities::ct::supportsEnhancedLQMDataStall(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD810, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD810))
  {
    Radio = TelephonyRadiosGetRadio();
    byte_1ED7FD5A8 = (Radio < 0x14) & (0xEFFAEu >> Radio);
    __cxa_guard_release(&qword_1ED7FD810);
  }

  return byte_1ED7FD5A8;
}

uint64_t capabilities::ct::supportsDataSystemDetermination(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD818, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD818))
  {
    byte_1ED7FD5A9 = TelephonyRadiosGetRadioVendor() == 1;
    __cxa_guard_release(&qword_1ED7FD818);
  }

  return byte_1ED7FD5A9;
}

uint64_t capabilities::ct::supportedSIMAllianceProfileVersion(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD820, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD820))
  {
    Product = TelephonyRadiosGetProduct();
    dword_1ED7FD660 = capabilities::ct::sSupportedSIMAllianceProfileVersion(Product);
    __cxa_guard_release(&qword_1ED7FD820);
  }

  return dword_1ED7FD660;
}

uint64_t capabilities::ct::sSupportedSIMAllianceProfileVersion(int a1)
{
  if ((a1 - 33) > 0xB7)
  {
    return 0x20000;
  }

  else
  {
    return dword_1CAE5F4F0[a1 - 33];
  }
}

uint64_t capabilities::ct::sGetBasebandBootStrategy(int a1)
{
  if ((a1 - 33) > 0xB7)
  {
    return 0;
  }

  else
  {
    return dword_1CAE5F7D0[a1 - 33];
  }
}

uint64_t capabilities::ct::supportsBothNRAndLTEAvoidanceInECSR(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD830, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD830))
  {
    byte_1ED7FD5AA = TelephonyRadiosGetRadioVendor() == 1;
    __cxa_guard_release(&qword_1ED7FD830);
  }

  return byte_1ED7FD5AA;
}

uint64_t capabilities::ct::supportsLASDUMTSDatabase(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD838, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD838))
  {
    byte_1ED7FD5AB = TelephonyRadiosGetRadioVendor() - 1 < 3;
    __cxa_guard_release(&qword_1ED7FD838);
  }

  return byte_1ED7FD5AB;
}