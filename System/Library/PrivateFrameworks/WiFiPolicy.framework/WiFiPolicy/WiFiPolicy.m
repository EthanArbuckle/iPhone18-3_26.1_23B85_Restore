void sub_2332DB164(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void gloria::TileId::FromLatLng(gloria::TileId *this@<X0>, double *a2@<X1>, const double *a3@<X2>, uint64_t a4@<X8>)
{
  gloria::TileCoordinate::FromLatLng(this, a2, a3, &v8);
  gloria::MortonUtils::XYToQuadId(v8.i64[0], v8.i64[1]);
  v6 = v9;
  *a4 = v7;
  *(a4 + 8) = v6;
}

long double gloria::TileId::ToBBOX(gloria::TileId *this)
{
  gloria::TileId::ToXYZ(this, &v11);
  v1 = v11.i64[1] + 1;
  v2 = v11.u64[1] * 6.28318531;
  v3 = ldexp(1.0, __e);
  v4 = 3.14159265 - v2 / v3;
  v5 = exp(v4);
  v6 = exp(-v4);
  v7 = atan((v5 - v6) * 0.5) * 57.2957795;
  v8 = exp(3.14159265 - v1 * 6.28318531 / v3);
  v9 = exp(-(3.14159265 - v1 * 6.28318531 / v3));
  atan((v8 - v9) * 0.5);
  return v7;
}

int8x16_t gloria::TileId::ToXYZ@<Q0>(gloria::TileId *this@<X0>, int8x16_t *a2@<X8>)
{
  v2 = *(this + 8);
  v3.i64[0] = *this & 0x1111111111111111 | ((*this & 0x5555555555555555uLL) >> 1) & 0x3333333333333333;
  v3.i64[1] = (*this >> 1) & 0x4444444444444444 | *this & 0x2222222222222222;
  v4 = vshlq_u64(v3, xmmword_2333AB220);
  v3.i64[1] = v3.i64[1] >> 1;
  v5 = vorrq_s8(v4, v3);
  v4.i64[0] = 0xF0F0F0F0F0F0F0FLL;
  v4.i64[1] = 0xF0F0F0F0F0F0F0FLL;
  v6 = vandq_s8(v5, v4);
  v4.i64[0] = 0xFF00FF00FF00FFLL;
  v4.i64[1] = 0xFF00FF00FF00FFLL;
  v7 = vandq_s8(vsraq_n_u64(v6, v6, 4uLL), v4);
  v8 = vsraq_n_u64(v7, v7, 8uLL);
  v9.i64[0] = 4294901760;
  v9.i64[1] = 4294901760;
  v10 = vandq_s8(vshrq_n_u64(v8, 0x10uLL), v9);
  v9.i64[0] = 0xFFFFLL;
  v9.i64[1] = 0xFFFFLL;
  result = vorrq_s8(v10, vandq_s8(v8, v9));
  *a2 = result;
  a2[1].i8[0] = v2;
  return result;
}

void gloria::TileId::Neighbors(gloria::TileId *this@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  gloria::TileId::ToXYZ(this, &v21);
  a3[2] = 0;
  a3[1] = 0;
  *a3 = a3 + 1;
  v6 = ldexp(1.0, *(this + 8));
  v7 = v21.i64[0] - a2;
  v8 = v21.i64[0] + a2;
  if (v7 <= v8)
  {
    v9 = v6;
    v10 = a2;
    v11 = (v21.i64[1] - a2) & ~((v21.i64[1] - a2) >> 63);
    v12 = v21.i64[1] + v10;
    if (v6 - 1 >= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v6 - 1;
    }

    do
    {
      v14 = v11;
      if (v11 <= v13)
      {
        do
        {
          v15 = v7;
          if (v7 < 0)
          {
            v15 = (v7 % v9 + v9);
          }

          v16 = *(this + 8);
          gloria::MortonUtils::XYToQuadId(v15, v14 % v9);
          v19 = v17;
          v20 = v16;
          std::__tree<gloria::TileId>::__emplace_unique_key_args<gloria::TileId,gloria::TileId const&>(a3, &v19);
          ++v14;
        }

        while (v13 + 1 != v14);
      }
    }

    while (v7++ != v8);
  }
}

void gloria::TileId::NeighborsWithinRadius(gloria::TileId *this@<X0>, double a2@<D0>, void *a3@<X8>)
{
  v3 = a2;
  v4 = 40075016.7 / (256 << *(this + 8)) * 256.0;
  if (v4 * 0.5 >= v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = vcvtpd_u64_f64(v3 / v4);
  }

  gloria::TileId::Neighbors(this, v5, a3);
}

uint64_t gloria::TileId::TileId(uint64_t this, unint64_t a2)
{
  v2 = __clz(a2);
  LOBYTE(v2) = ((63 - v2 + (((63 - v2) & 0x80u) >> 7)) << 24) >> 25;
  *(this + 8) = v2;
  *this = a2 - gloria::LEADING_BITS_VALUE_LUT[v2];
  return this;
}

{
  v2 = __clz(a2);
  LOBYTE(v2) = ((63 - v2 + (((63 - v2) & 0x80u) >> 7)) << 24) >> 25;
  *(this + 8) = v2;
  *this = a2 - gloria::LEADING_BITS_VALUE_LUT[v2];
  return this;
}

void *std::__tree<gloria::TileId>::__emplace_unique_key_args<gloria::TileId,gloria::TileId const&>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<gloria::TileId>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void std::__tree<gloria::TileId>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<gloria::TileId>::destroy(a1, *a2);
    std::__tree<gloria::TileId>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

int8x16_t gloria::TileCoordinate::FromLatLng@<Q0>(gloria::TileCoordinate *this@<X0>, double *a2@<X1>, const double *a3@<X2>, int8x16_t *a4@<X8>)
{
  v14 = (fmin(fmax(*a2, -180.0), 180.0) + 180.0) / 360.0;
  v7 = sin(fmin(fmax(*this, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
  v8 = log((v7 + 1.0) / (1.0 - v7));
  v9 = *a3;
  v10.f64[0] = v14;
  v10.f64[1] = v8 / -12.5663706 + 0.5;
  v11 = vcvtq_u64_f64(vrndmq_f64(vmulq_n_f64(v10, (1 << *a3))));
  v12 = vdupq_n_s64((1 << *a3) - 1);
  result = vbslq_s8(vcgtq_u64(v11, v12), v12, v11);
  *a4 = result;
  a4[1].i8[0] = v9;
  return result;
}

long double _TBGloriaBoundingBoxFromLocation(double a1, double a2, char a3)
{
  v6 = a2;
  v7 = a1;
  v5 = a3;
  gloria::TileId::FromLatLng(&v7, &v6, &v5, v4);
  return gloria::TileId::ToBBOX(v4);
}

double gloria::MortonUtils::XYToQuadId(gloria::MortonUtils *this, uint64_t a2)
{
  v2.i64[0] = a2;
  v2.i64[1] = this;
  v3.i64[0] = 0xFFFFFFFFLL;
  v3.i64[1] = 0xFFFFFFFFLL;
  v4 = vorrq_s8(vshlq_n_s64(v2, 0x10uLL), vandq_s8(v2, v3));
  v3.i64[0] = 0xFFFF0000FFFFLL;
  v3.i64[1] = 0xFFFF0000FFFFLL;
  v5 = vandq_s8(v4, v3);
  v6 = *&vorrq_s8(vshlq_n_s64(v5, 8uLL), v5) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL);
  v7 = *&vorrq_s8(vshlq_n_s64(v6, 4uLL), v6) & __PAIR128__(0xFF0FFF0FFF0FFF0FLL, 0xFF0FFF0FFF0FFF0FLL);
  v3.i64[0] = 0x3333333333333333;
  v3.i64[1] = 0x3333333333333333;
  v8 = vandq_s8(vorrq_s8(vshlq_n_s64(v7, 2uLL), v7), v3);
  v9 = vshlq_u64(v8, xmmword_2333AB230);
  v8.i64[0] *= 2;
  v10 = vandq_s8(vorrq_s8(v9, v8), xmmword_2333AB240);
  *&result = vorrq_s8(v10, vdupq_laneq_s64(v10, 1)).u64[0];
  return result;
}

double MachTimeToSecs(unint64_t a1)
{
  info = 0;
  mach_timebase_info(&info);
  LODWORD(v3) = info.denom;
  LODWORD(v2) = info.numer;
  return a1 * v2 / v3 / 1000000000.0;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __WiFiManagerLocationManagerVisitCallback(void *a1, uint64_t a2)
{
  if (a1)
  {

    [a1 _handleLocationManagerVisitCallbackWithVisit:a2];
  }

  else
  {
    NSLog(&cfstr_SCallbackconte.isa, "__WiFiManagerLocationManagerVisitCallback");
  }
}

void sub_2332E9AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2332EA078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, a5, 0xCu);
}

void OUTLINED_FUNCTION_4(dispatch_time_t start)
{

  dispatch_source_set_timer(v1, start, 0xFFFFFFFFFFFFFFFFLL, 0);
}

void *TBMacAddressFromString(void *result)
{
  if (result)
  {
    v1 = [result stringByReplacingOccurrencesOfString:@":" withString:&stru_28487EF20];
    v2 = strtoull([v1 UTF8String], 0, 16);

    return v2;
  }

  return result;
}

uint64_t _createLexiconWithLocale(void *a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v5 = *MEMORY[0x277D23170];
  v6[0] = v1;
  [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v2 = LXLexiconCreate();

  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

Class initSDRDiagnosticReporter()
{
  if (SymptomDiagnosticReporterLibrary_sOnce != -1)
  {
    initSDRDiagnosticReporter_cold_1();
  }

  result = objc_getClass("SDRDiagnosticReporter");
  classSDRDiagnosticReporter = result;
  getSDRDiagnosticReporterClass = SDRDiagnosticReporterFunction;
  return result;
}

void *__SymptomDiagnosticReporterLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/SymptomDiagnosticReporter.framework/SymptomDiagnosticReporter", 2);
  SymptomDiagnosticReporterLibrary_sLib = result;
  return result;
}

void sub_2332F0AF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2332F1E64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id WiFiUsageFaultReasonStringMap(unint64_t a1)
{
  if (WiFiUsageFaultReasonStringMap_onceToken != -1)
  {
    WiFiUsageFaultReasonStringMap_cold_1();
  }

  if (a1 > 0x25)
  {
    WiFiUsageFaultReasonStringMap_cold_2(a1);
  }

  v2 = [MEMORY[0x277CCABB0] numberWithLong:a1];
  if (!v2)
  {
    WiFiUsageFaultReasonStringMap_cold_4(a1);
  }

  v3 = v2;
  v4 = [gWiFiUsageFaultReasonStringMap objectForKey:v2];

  if (!v4)
  {
    WiFiUsageFaultReasonStringMap_cold_3(a1);
  }

  v5 = [gWiFiUsageFaultReasonStringMap objectForKey:v3];

  return v5;
}

void __WiFiUsageFaultReasonStringMap_block_invoke()
{
  v4[38] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_2848B9680;
  v3[1] = &unk_2848B9698;
  v4[0] = @"kWiFiUsageFaultReasonUnknown";
  v4[1] = @"kWiFiUsageFaultReasonSymptomLowRssiDnsFailure";
  v3[2] = &unk_2848B96B0;
  v3[3] = &unk_2848B96C8;
  v4[2] = @"kWiFiUsageFaultReasonSymptomLowRssiArpFailure";
  v4[3] = @"kWiFiUsageFaultReasonSymptomLowRssiDataStall";
  v3[4] = &unk_2848B96E0;
  v3[5] = &unk_2848B96F8;
  v4[4] = @"kWiFiUsageFaultReasonSymptomLowRssiShortFlow";
  v4[5] = @"kWiFiUsageFaultReasonSymptomLowRssiRTTFailure";
  v3[6] = &unk_2848B9710;
  v3[7] = &unk_2848B9728;
  v4[6] = @"kWiFiUsageFaultReasonDatapathStall";
  v4[7] = @"kWiFiUsageFaultReasonWatchdogReset";
  v3[8] = &unk_2848B9740;
  v3[9] = &unk_2848B9758;
  v4[8] = @"kWiFiUsageFaultReasonSsidBlocklisted";
  v4[9] = @"kWiFiUsageFaultReasonBssidBlocklisted";
  v3[10] = &unk_2848B9770;
  v3[11] = &unk_2848B9788;
  v4[10] = @"kWiFiUsageFaultReasonSlowWiFiAP";
  v4[11] = @"kWiFiUsageFaultReasonPrivateMACFallback";
  v3[12] = &unk_2848B97A0;
  v3[13] = &unk_2848B97B8;
  v4[12] = @"kWiFiUsageFaultReasonDelayedAutoJoin";
  v4[13] = @"kWiFiUsageFaultReasonDhcpFailure";
  v3[14] = &unk_2848B97D0;
  v3[15] = &unk_2848B97E8;
  v4[14] = @"kWiFiUsageFaultReasonLinkTestLocalCheckFailed";
  v4[15] = @"kWiFiUsageFaultReasonLinkTestInternetCheckFailed";
  v3[16] = &unk_2848B9800;
  v3[17] = &unk_2848B9818;
  v4[16] = @"kWiFiUsageFaultReasonLinkTestDNSCheckFailed";
  v4[17] = @"kWiFiUsageFaultReasonArpFailure";
  v3[18] = &unk_2848B9830;
  v3[19] = &unk_2848B9848;
  v4[18] = @"kWiFiUsageFaultReasonSlowWiFiDnsFailure";
  v4[19] = @"kWiFiUsageFaultReasonSlowWiFiDUT";
  v3[20] = &unk_2848B9860;
  v3[21] = &unk_2848B9878;
  v4[20] = @"kWiFiUsageFaultReasonUserOverridesCellularOutranking";
  v4[21] = @"kWiFiUsageFaultReasonFirmwareTrap";
  v3[22] = &unk_2848B9890;
  v3[23] = &unk_2848B98A8;
  v4[22] = @"kWiFiUsageFaultReasonSleepPowerBudgetExceeded";
  v4[23] = @"kWiFiUsageFaultReasonLowPowerBudgetExceeded";
  v3[24] = &unk_2848B98C0;
  v3[25] = &unk_2848B98D8;
  v4[24] = @"kWiFiUsageFaultReasonDextCrashed";
  v4[25] = @"kWiFiUsageFaultReasonSiriTimedOut";
  v3[26] = &unk_2848B98F0;
  v3[27] = &unk_2848B9908;
  v4[26] = @"kWiFiUsageFaultReasonApsdTimedOut";
  v4[27] = @"kWiFiUsageFaultReasonBrokenBackhaulLinkFailed";
  v3[28] = &unk_2848B9920;
  v3[29] = &unk_2848B9938;
  v4[28] = @"kWiFiUsageFaultReasonLinkTestSiriTCPCheckFailed";
  v4[29] = @"kWiFiUsageFaultReasonLinkTestSiriTLSCheckFailed";
  v3[30] = &unk_2848B9950;
  v3[31] = &unk_2848B9968;
  v4[30] = @"kWiFiUsageFaultReasonAirplayConnectionStall";
  v4[31] = @"kWiFiUsageFaultReasonAirplayBufferedAudioUnderrun";
  v3[32] = &unk_2848B9980;
  v3[33] = &unk_2848B9998;
  v4[32] = @"kWiFiUsageFaultReasonAirplayRealtimeAudioUnderrun";
  v4[33] = @"kWiFiUsageFaultReasonHomeKitFault";
  v3[34] = &unk_2848B99B0;
  v3[35] = &unk_2848B99C8;
  v4[34] = @"kWiFiUsageFaultReasonMTBFEvent";
  v4[35] = @"kWiFiUsageFaultReasonPrimarySetFailure";
  v3[36] = &unk_2848B99E0;
  v3[37] = &unk_2848B99F8;
  v4[36] = @"kWiFiUsageFaultReasonRxDataStallEvent";
  v4[37] = @"kWiFiUsageFaultReasonPHClientInfoFetchFailure";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:38];
  v1 = gWiFiUsageFaultReasonStringMap;
  gWiFiUsageFaultReasonStringMap = v0;

  v2 = *MEMORY[0x277D85DE8];
}

id WiFiFaultHandlingLimitsStringMap(uint64_t a1)
{
  if (WiFiFaultHandlingLimitsStringMap_onceToken != -1)
  {
    WiFiFaultHandlingLimitsStringMap_cold_1();
  }

  v2 = gWiFiFaultHandlingLimitsStringMap;
  v3 = [MEMORY[0x277CCABB0] numberWithLong:a1];
  v4 = [v2 objectForKey:v3];

  return v4;
}

void __WiFiFaultHandlingLimitsStringMap_block_invoke()
{
  v4[5] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_2848B9A10;
  v3[1] = &unk_2848B9A28;
  v4[0] = @"WiFiFaultHandlingNotIgnored";
  v4[1] = @"WiFiFaultHandlingLimitedRateLastFaultIndication";
  v3[2] = &unk_2848B9A40;
  v3[3] = &unk_2848B9A58;
  v4[2] = @"WiFiFaultHandlingLimitedLinkOrPrimaryNotSet";
  v4[3] = @"WiFiFaultHandlingLimitedRateMinBrokenLinkDetectedInterval";
  v3[4] = &unk_2848B9A70;
  v4[4] = @"WiFiFaultHandlingLimitedRecoveryDisabled";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:5];
  v1 = gWiFiFaultHandlingLimitsStringMap;
  gWiFiFaultHandlingLimitsStringMap = v0;

  v2 = *MEMORY[0x277D85DE8];
}

void sub_2332F3610(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2332F4AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_233308DA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t WiFiUsageConnectionQualityRecordConvertDisconnectReasonToGEOReason(uint64_t result)
{
  if (result <= 4)
  {
    if (result <= 2 && result != 1 && result != 2)
    {
      return 0;
    }
  }

  else
  {
    switch(result)
    {
      case 1000:
        result = 6;
        break;
      case 1001:
        result = 8;
        break;
      case 1002:
        result = 7;
        break;
      case 1003:
        result = 9;
        break;
      case 1004:
        result = 10;
        break;
      case 1005:
        result = 11;
        break;
      case 1006:
        result = 12;
        break;
      case 1007:
        result = 13;
        break;
      case 1008:
        result = 14;
        break;
      case 1009:
        result = 15;
        break;
      case 1010:
        result = 16;
        break;
      case 1011:
        result = 17;
        break;
      case 1012:
        result = 18;
        break;
      case 1013:
        result = 19;
        break;
      case 1014:
        result = 20;
        break;
      case 1015:
        result = 21;
        break;
      case 1016:
        result = 22;
        break;
      case 1017:
        result = 23;
        break;
      case 1018:
        result = 24;
        break;
      case 1019:
        result = 25;
        break;
      case 1020:
        result = 26;
        break;
      case 1021:
        result = 28;
        break;
      default:
        if (result != 5)
        {
          if (result != 6)
          {
            return 0;
          }

          result = 27;
        }

        break;
    }
  }

  return result;
}

void sub_23330DF08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23330F078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 168), 8);
  _Unwind_Resume(a1);
}

void sub_233315A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23331718C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v32 - 120), 8);
  objc_sync_exit(v31);
  _Unwind_Resume(a1);
}

id __softlink__BiomeLibrary()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getBiomeLibrarySymbolLoc_ptr;
  v8 = getBiomeLibrarySymbolLoc_ptr;
  if (!getBiomeLibrarySymbolLoc_ptr)
  {
    v1 = BiomeLibraryLibrary();
    v6[3] = dlsym(v1, "BiomeLibrary");
    getBiomeLibrarySymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = __softlink__BiomeLibrary_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = v0();

  return v2;
}

void *__getBiomeLibrarySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = BiomeLibraryLibrary();
  result = dlsym(v2, "BiomeLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBiomeLibrarySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t BiomeLibraryLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!BiomeLibraryLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __BiomeLibraryLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2789C75E0;
    v6 = 0;
    BiomeLibraryLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = BiomeLibraryLibraryCore_frameworkLibrary;
  v1 = v4[0];
  if (!BiomeLibraryLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __BiomeLibraryLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  BiomeLibraryLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

WiFiUsageLQMMLOSample *__getBMDeviceWiFiClass_block_invoke(uint64_t a1)
{
  BiomeLibraryLibrary();
  result = objc_getClass("BMDeviceWiFi");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getBMDeviceWiFiClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getBMDeviceWiFiClass_block_invoke_cold_1();
    return [(WiFiUsageLQMMLOSample *)v3 initWith:v4 andDuration:v5, v6];
  }

  return result;
}

void sub_23331CD10(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_23331D2F8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 96), 8);
  _Block_object_dispose((v1 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_23331D5A8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 96), 8);
  _Block_object_dispose((v1 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_23331D7C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23331D9D0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 96), 8);
  _Block_object_dispose((v1 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_23331DC80(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 96), 8);
  _Block_object_dispose((v1 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_23331DE98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23331E0A8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 96), 8);
  _Block_object_dispose((v1 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_23331E358(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 96), 8);
  _Block_object_dispose((v1 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_23331E570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23331EDDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23331EF4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23331F370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23331F4E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_233320F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2333241D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23332441C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_233325350(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v28 + 32));
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_1(void *a1, NSObject *a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &buf, 0xCu);
}

void WFLoggerTimerTmoCallBack(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  if (a1)
  {
    if (*(a1 + 8))
    {
      if (*(a1 + 24))
      {
        v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: Timeout", "WFLoggerTimerTmoCallBack"];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v7 = [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v3, "UTF8String")), "UTF8String"];
          _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
        }

        if ([a1 checkLogFileUpdate:*(a1 + 96)])
        {
          v4 = [a1 changeLogFile:*(a1 + 64)];
          if (v4)
          {
            CFRelease(v4);
          }
        }
      }

      else
      {
        WFLoggerTimerTmoCallBack_cold_1(MEMORY[0x277CCACA8]);
      }
    }

    else
    {
      WFLoggerTimerTmoCallBack_cold_2();
    }
  }

  objc_autoreleasePoolPop(v2);
  v5 = *MEMORY[0x277D85DE8];
}

void OUTLINED_FUNCTION_3_0(void *a1, NSObject *a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &buf, 0xCu);
}

uint64_t OUTLINED_FUNCTION_4_0()
{
  v3 = *(v1 + 3240);

  return [v0 UTF8String];
}

long double gloria::TileCoordinate::YToLat(gloria::TileCoordinate *this)
{
  v1 = *(this + 1) * -6.28318531;
  v2 = v1 / ldexp(1.0, *(this + 16)) + 3.14159265;
  v3 = exp(v2);
  v4 = exp(-v2);
  return atan((v3 - v4) * 0.5) * 57.2957795;
}

void *gloria::operator<<(void *a1, uint64_t a2)
{
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "tile_x_: ", 9);
  v5 = MEMORY[0x23839D820](v4, *a2);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " tile_y: ", 9);
  v7 = MEMORY[0x23839D820](v6, *(a2 + 8));
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " tile_zoom: ", 12);
  MEMORY[0x23839D810](v8, *(a2 + 16));
  return a1;
}

{
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "tile_id: ", 9);
  v5 = MEMORY[0x23839D820](v4, *a2);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " zoom: ", 7);
  MEMORY[0x23839D810](v6, *(a2 + 8));
  return a1;
}

void gloria::TileId::FromXYZ(gloria::TileId *this@<X0>, uint64_t a2@<X8>)
{
  gloria::MortonUtils::XYToQuadId(*this, *(this + 1));
  v5 = *(this + 16);
  *a2 = v6;
  *(a2 + 8) = v5;
}

void gloria::TileId::Children(gloria::TileId *this@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = *(this + 8);
  v6 = 2 * a2;
  v7 = *this;
  a3[1] = 0;
  a3[2] = 0;
  v8 = (1 << (2 * a2));
  *a3 = 0;
  std::vector<gloria::TileId>::resize(a3, v8);
  v9 = 0;
  v10 = v7 << v6;
  do
  {
    v11 = *a3 + v9;
    *v11 = v10;
    *(v11 + 8) = v5 + a2;
    ++v10;
    v9 += 16;
    --v8;
  }

  while (v8);
}

void sub_23332FA04(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<gloria::TileId>::resize(uint64_t *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    std::vector<gloria::TileId>::__append(a1, a2 - v2);
  }
}

uint64_t gloria::TileId::Ancestor@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 8) - 1;
  if (*(this + 8) == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = *this >> 2;
  }

  *a2 = v3;
  *(a2 + 8) = v2;
  return this;
}

uint64_t gloria::TileId::Ancestor@<X0>(uint64_t this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(this + 8) - a2;
  if (v3)
  {
    v4 = *this >> (2 * a2);
  }

  else
  {
    v4 = 0;
  }

  *a3 = v4;
  *(a3 + 8) = v3;
  return this;
}

unsigned int gloria::TileId::Reach(gloria::TileId *this, unsigned int a2)
{
  v2 = 40075016.7 / (256 << *(this + 8)) * 256.0;
  if (v2 * 0.5 >= a2)
  {
    return 0;
  }

  else
  {
    return vcvtpd_u64_f64(a2 / v2);
  }
}

uint64_t gloria::TileBoundingBox::ToWKT(gloria::TileBoundingBox *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v20);
  *(&v22[0].__locale_ + *(v20 - 24)) = 8;
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, "POLYGON( ", 9);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, "(", 1);
  v4 = MEMORY[0x23839D800](v3, *(this + 3));
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, " ", 1);
  v6 = MEMORY[0x23839D800](v5, *(this + 1));
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ", ", 2);
  v8 = MEMORY[0x23839D800](v7, *(this + 3));
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " ", 1);
  v10 = MEMORY[0x23839D800](v9, *this);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ", ", 2);
  v12 = MEMORY[0x23839D800](v11, *(this + 2));
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " ", 1);
  v14 = MEMORY[0x23839D800](v13, *this);
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ", ", 2);
  v16 = MEMORY[0x23839D800](v15, *(this + 2));
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " ", 1);
  v18 = MEMORY[0x23839D800](v17, *(this + 1));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "))", 2);
  std::stringbuf::str();
  v20 = *MEMORY[0x277D82828];
  *(&v20 + *(v20 - 24)) = *(MEMORY[0x277D82828] + 24);
  v21 = MEMORY[0x277D82878] + 16;
  if (v23 < 0)
  {
    operator delete(v22[7].__locale_);
  }

  v21 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v22);
  std::ostream::~ostream();
  return MEMORY[0x23839D880](&v24);
}

void sub_23332FD80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va, MEMORY[0x277D82828]);
  MEMORY[0x23839D880](v2 + 112);
  _Unwind_Resume(a1);
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x277D828A0] + 64;
  a1[14] = MEMORY[0x277D828A0] + 64;
  v3 = *(MEMORY[0x277D82828] + 16);
  v4 = *(MEMORY[0x277D82828] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x277D828A0] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_23332FEE8(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x23839D880](v1);
  _Unwind_Resume(a1);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x23839D7D0](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x23839D7E0](v13);
  return a1;
}

void sub_233330180(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x23839D7E0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x233330160);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_2333303B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_2789C6550, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void std::vector<gloria::TileId>::__append(uint64_t *a1, unint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (a2 <= (v3 - v4) >> 4)
  {
    a1[1] = v4 + 16 * a2;
  }

  else
  {
    v5 = v4 - *a1;
    v6 = a2 + (v5 >> 4);
    if (v6 >> 60)
    {
      std::vector<gloria::TileId>::__throw_length_error[abi:ne200100]();
    }

    v7 = v5 >> 4;
    v8 = v3 - *a1;
    if (v8 >> 3 > v6)
    {
      v6 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v6;
    }

    v14 = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<gloria::TileId>>(a1, v9);
    }

    __p = 0;
    v11 = 16 * v7;
    v12 = 16 * v7 + 16 * a2;
    v13 = 0;
    std::vector<gloria::TileId>::__swap_out_circular_buffer(a1, &__p);
    if (v12 != v11)
    {
      v12 += (v11 - v12 + 15) & 0xFFFFFFFFFFFFFFF0;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_2333305B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<gloria::TileId>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = a2[1] + *result - v3;
    do
    {
      *v6 = *v5;
      *(v6 + 8) = *(v5 + 8);
      v5 += 16;
      v6 += 16;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v7 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v7;
  v8 = result[1];
  result[1] = a2[2];
  a2[2] = v8;
  v9 = result[2];
  result[2] = a2[3];
  a2[3] = v9;
  *a2 = a2[1];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<gloria::TileId>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x23839D830](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_233330758(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void sub_233337BF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v22 - 88));
  _Unwind_Resume(a1);
}

void sub_233337F54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2333427FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_233342BF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_233342DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2333430EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_233343514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2333439DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_233343EAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2333446C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t isDisplayOff()
{
  out_token = -1;
  if (notify_register_check("com.apple.iokit.hid.displayStatus", &out_token))
  {
    return 1;
  }

  v2 = 0;
  if (notify_get_state(out_token, &v2))
  {
    v0 = 1;
  }

  else
  {
    v0 = v2 == 0;
    if (os_log_type_enabled(MEMORY[0x277D86228], OS_LOG_TYPE_ERROR))
    {
      isDisplayOff_cold_1();
    }
  }

  notify_cancel(out_token);
  return v0;
}

void sub_233344BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_2_1@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(*result + 72);
  return result;
}

uint64_t *OUTLINED_FUNCTION_4_1@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void OUTLINED_FUNCTION_1_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void __destructor_8_s48_s56(uint64_t a1)
{
  v2 = *(a1 + 56);
}

void OUTLINED_FUNCTION_0_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

__CFString *_labelDescription(unint64_t a1)
{
  if (a1 >= 0xC)
  {
    _labelDescription_cold_1(a1);
  }

  return off_2789C8118[a1];
}

void sub_233366D9C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_2333673AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_9(void *a1, NSObject *a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, v4, 0xCu);
}

id OUTLINED_FUNCTION_10()
{
  v3 = *(v1 + 3240);

  return v0;
}

id OUTLINED_FUNCTION_11()
{
  v3 = *(v1 + 3240);

  return v0;
}

uint64_t OUTLINED_FUNCTION_13(uint64_t result, float a2)
{
  *v2 = a2;
  *v3 = result;
  return result;
}

id OUTLINED_FUNCTION_15()
{
  v3 = *(v1 + 3240);

  return v0;
}

id OUTLINED_FUNCTION_16()
{
  v3 = *(v1 + 3240);

  return v0;
}

void sub_233372970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_233373378(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_233375494(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, id location)
{
  objc_destroyWeak((v47 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_233375AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_7(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_23337AF24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void WiFiWalletUtilAddPassFromURL(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEA90];
  v4 = a2;
  v5 = [v3 dataWithContentsOfURL:a1];
  v7 = 0;
  v6 = [objc_alloc(MEMORY[0x277D37FA0]) initWithData:v5 error:&v7];
  WiFiWalletUtilAddPass(v6, v4);
}

void WiFiWalletUtilAddPass(void *a1, void *a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    v6 = objc_alloc_init(MEMORY[0x277D37FC8]);
    if (v6)
    {
      v12[0] = v3;
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __WiFiWalletUtilAddPass_block_invoke;
      v9[3] = &unk_2789C85A8;
      v11 = v5;
      v10 = v3;
      [v6 addPasses:v7 withCompletionHandler:v9];
    }

    else
    {
      v5[2](v5, 0, -1);
    }
  }

  else
  {
    (*(v4 + 2))(v4, 0, -1);
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t _WiFiWalletUtilRemovePassMatching(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = objc_alloc_init(MEMORY[0x277D37FC8]);
  v12 = v10;
  v13 = v12;
  if (!v12)
  {
    if (v9)
    {
      v15 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v9];
      v18 = 0;
      v16 = [objc_alloc(MEMORY[0x277D37FA0]) initWithData:v15 error:&v18];
      if (v16)
      {

        NSLog(&cfstr_FailedToRemove.isa, 0);
      }

      else
      {
        NSLog(&cfstr_FailedToCreate.isa, v9);
      }
    }

    else
    {
      if (v7)
      {
        v13 = [v11 passWithPassTypeIdentifier:v7 serialNumber:v8];
        if (v13)
        {
          goto LABEL_2;
        }

        NSLog(&cfstr_FailedToFindPa.isa, v7, v8);
LABEL_8:
        v14 = 0;
        goto LABEL_9;
      }

      NSLog(&cfstr_FailedToFindPa.isa, 0, v8);
    }

    v13 = 0;
    goto LABEL_8;
  }

LABEL_2:
  [v11 removePass:v13];
  if ([v11 containsPass:v13])
  {
    NSLog(&cfstr_LibraryStillCo.isa);
    goto LABEL_8;
  }

  v14 = 1;
LABEL_9:

  return v14;
}

id WiFiWalletSignedDataForRawPass(void *a1, void *a2, void *a3, void *a4)
{
  items[1] = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (!v7)
  {
    v28 = 0;
    v17 = 0;
    goto LABEL_66;
  }

  v11 = [MEMORY[0x277CCAA00] defaultManager];
  v12 = MEMORY[0x277CBEBC0];
  v13 = NSTemporaryDirectory();
  [v13 stringByAppendingPathComponent:@"PassBeingSigned.raw"];
  v14 = v106 = v10;
  v15 = [v12 fileURLWithPath:v14];

  v10 = v106;
  [v11 removeItemAtURL:v15 error:0];
  v117 = 0;
  v104 = v11;
  v105 = v15;
  [v11 copyItemAtURL:v7 toURL:v15 error:&v117];
  v16 = v117;
  v17 = v16;
  if (v106 && !v16)
  {
    v116 = 0;
    v18 = v106;
    v19 = [v105 URLByAppendingPathComponent:@"pass.json" isDirectory:0];
    v20 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v19 options:0 error:&v116];
    if (v20)
    {
      v21 = v20;
      v99 = v8;
      v102 = v9;
      v118[0] = 0;
      v22 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v20 options:1 error:v118];
      v23 = v118[0];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = v22;
        v25 = [v24 objectForKey:@"semantics"];
        v26 = v25;
        if (v25)
        {
          v27 = [v25 mutableCopy];
          [v27 setObject:v18 forKey:@"wifiAccess"];
        }

        else
        {
          items[0] = @"wifiAccess";
          *&v119 = v18;
          v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v119 forKeys:items count:1];
        }

        [v24 setObject:v27 forKey:@"semantics"];

        v125 = v23;
        v30 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v24 options:1 error:&v125];
        v29 = v125;

        if (v29)
        {
          v31 = v29;
          v116 = v29;
        }

        else
        {
          [v30 writeToURL:v19 atomically:1];
        }
      }

      else
      {
        v116 = _ErrorWithCodeAndDescription(0, @"Invalid pass data.");
        v29 = v23;
        v30 = v21;
      }

      v8 = v99;
      v9 = v102;
    }

    v17 = v116;
    v10 = v106;
  }

  if (v17)
  {
    v28 = 0;
    goto LABEL_64;
  }

  v103 = v9;
  v32 = MEMORY[0x277CBEB38];
  v33 = v105;
  v107 = objc_alloc_init(v32);
  v34 = [MEMORY[0x277CCAA00] defaultManager];
  v35 = [v33 URLByStandardizingPath];
  v97 = v33;

  v98 = v34;
  v110 = v35;
  v36 = [v34 enumeratorAtURL:v35 includingPropertiesForKeys:0 options:0 errorHandler:0];
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v37 = [v36 countByEnumeratingWithState:&v119 objects:v118 count:16];
  if (v37)
  {
    v38 = v37;
    v100 = v8;
    v96 = v7;
    v39 = 0;
    v40 = *v120;
    v41 = *MEMORY[0x277CBE8A8];
    v108 = *MEMORY[0x277CBE8A8];
    v109 = v36;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v120 != v40)
        {
          objc_enumerationMutation(v36);
        }

        if (!v39)
        {
          v43 = *(*(&v119 + 1) + 8 * i);
          v125 = 0;
          items[0] = 0;
          v44 = [v43 getResourceValue:items forKey:v41 error:&v125];
          v45 = items[0];
          v39 = v125;
          if (v44 && [(__CFArray *)v45 BOOLValue])
          {
            v46 = [v43 URLByStandardizingPath];
            v112 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v46];
            v47 = [v112 SHA1Hash];
            v114 = [v47 hexEncoding];

            v48 = [v110 pathComponents];
            v49 = [v46 pathComponents];
            v50 = [v48 count];
            v51 = [v49 subarrayWithRange:{v50, objc_msgSend(v49, "count") - v50}];
            v52 = [MEMORY[0x277CCACA8] pathWithComponents:v51];
            if (v52)
            {
              [v107 setObject:v114 forKeyedSubscript:v52];
            }

            v41 = v108;
            v36 = v109;
          }
        }
      }

      v38 = [v36 countByEnumeratingWithState:&v119 objects:v118 count:16];
    }

    while (v38);
    v7 = v96;
    v8 = v100;
    if (v39)
    {
      goto LABEL_36;
    }
  }

  v53 = [v110 URLByAppendingPathComponent:@"manifest.json"];
  v124 = 0;
  v54 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v107 options:1 error:&v124];
  v39 = v124;
  if (v39)
  {

LABEL_36:
    v55 = v39;
    goto LABEL_38;
  }

  [v54 writeToURL:v53 atomically:1];

LABEL_38:
  v56 = v39;
  v9 = v103;
  if (v56)
  {
    v17 = v56;
    v28 = 0;
LABEL_40:
    v10 = v106;
    goto LABEL_64;
  }

  v57 = v97;
  v58 = v8;
  v59 = v103;
  v10 = v106;
  if (!v59 || !v58 || !v57)
  {
    v73 = _ErrorWithCodeAndDescription(0, @"Missing required signature parameters.");
    v75 = v73;
    goto LABEL_62;
  }

  v113 = [v57 URLByAppendingPathComponent:@"manifest.json"];
  v115 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:?];
  v60 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v58];
  v61 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v59];
  v62 = v61;
  if (v60 && v61)
  {
    v63 = *MEMORY[0x277CBECE8];
    v64 = SecCertificateCreateWithData(*MEMORY[0x277CBECE8], v61);
    items[0] = 0;
    v124 = *MEMORY[0x277CDC270];
    v125 = @"apple123";
    v111 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v125 forKeys:&v124 count:1];
    v65 = SecPKCS12Import(v60, v111, items);
    if (v64 && !v65 && CFArrayGetCount(items[0]) == 1)
    {
      v101 = v8;
      ValueAtIndex = CFArrayGetValueAtIndex(items[0], 0);
      CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x277CDC278]);
      v67 = *MEMORY[0x277CDC1D8];
      v118[0] = *MEMORY[0x277CBED28];
      v68 = *MEMORY[0x277CDC1A8];
      *&v119 = v67;
      *(&v119 + 1) = v68;
      v123 = v64;
      v69 = [MEMORY[0x277CBEA60] arrayWithObjects:&v123 count:1];
      v118[1] = v69;
      v70 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v118 forKeys:&v119 count:2];

      Mutable = CFDataCreateMutable(v63, 0);
      v72 = SecCMSCreateSignedData();
      if (v72)
      {
        v73 = _ErrorWithCodeAndDescription(v72, @"Error signing manifest.");
        v74 = v73;
      }

      else
      {
        v78 = [v57 URLByAppendingPathComponent:@"signature"];
        [(__CFData *)Mutable writeToURL:v78 atomically:1];

        v73 = 0;
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      v8 = v101;
    }

    else
    {
      v73 = _ErrorWithCodeAndDescription(0, @"Error importing certificates.");
      v77 = v73;
      if (!v64)
      {
        goto LABEL_60;
      }
    }

    CFRelease(v64);
LABEL_60:

    v10 = v106;
    goto LABEL_61;
  }

  v73 = _ErrorWithCodeAndDescription(0, @"Error loading certificates.");
  v76 = v73;
LABEL_61:

LABEL_62:
  v79 = v73;
  if (!v79)
  {
    v82 = v8;
    v83 = v7;
    v84 = v57;
    BOMCopierNew();
    *&v119 = @"createPKZip";
    v118[0] = MEMORY[0x277CBEC38];
    v85 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v118 forKeys:&v119 count:1];
    v86 = [MEMORY[0x277CCAD78] UUID];
    v87 = [v86 UUIDString];
    v88 = [v87 stringByAppendingPathExtension:@"pkpass"];

    v89 = NSTemporaryDirectory();
    v90 = [v89 stringByAppendingPathComponent:v88];

    v91 = [v84 path];

    v92 = [MEMORY[0x277CCAA00] defaultManager];
    [v91 fileSystemRepresentation];
    [v90 fileSystemRepresentation];
    v93 = BOMCopierCopyWithOptions();
    if (v93)
    {
      v94 = _ErrorWithCodeAndDescription(v93, @"Error zipping pass.");
      v95 = v94;
      v28 = 0;
    }

    else
    {
      v28 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v90];
      v94 = 0;
    }

    [v92 removeItemAtPath:v90 error:0];
    BOMCopierFree();

    v17 = v94;
    v7 = v83;
    v8 = v82;
    v9 = v103;
    goto LABEL_40;
  }

  v17 = v79;
  v28 = 0;
  v9 = v103;
LABEL_64:
  [v104 removeItemAtURL:v105 error:0];

  if (v17)
  {
    NSLog(&cfstr_PassSigningErr.isa, v17);
  }

LABEL_66:

  v80 = *MEMORY[0x277D85DE8];

  return v28;
}

id _ErrorWithCodeAndDescription(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9B8];
  v10 = *MEMORY[0x277CCA450];
  v11[0] = a2;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a2;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v3 errorWithDomain:@"com.apple.wallet.server" code:a1 userInfo:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

void sub_233380434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_233386310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __softlink__BiomeLibrary_cold_1()
{
  dlerror();
  v0 = abort_report_np();
  return __getBMDeviceWiFiClass_block_invoke_cold_1(v0);
}

void WFLoggerTimerTmoCallBack_cold_1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = [a1 stringWithFormat:@"%s: _dispatchQueue is null", "WFLoggerTimerTmoCallBack"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = MEMORY[0x277CCACA8];
    v9 = [v1 UTF8String];
    [objc_msgSend(v2 stringWithFormat:@"[WiFiPolicy] %s", "UTF8String"];
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_1_1(&dword_2332D7000, MEMORY[0x277D86220], v3, "%{public}s", v4, v5, v6, v7, v9, v10, v11);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void WFLoggerTimerTmoCallBack_cold_2()
{
  [OUTLINED_FUNCTION_1_2(*MEMORY[0x277D85DE8]) stringWithFormat:@"%s: _ctxt is null", "WFLoggerTimerTmoCallBack"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v7 = OUTLINED_FUNCTION_4_0();
    [objc_msgSend(v0 stringWithFormat:@"[WiFiPolicy] %s", "UTF8String"];
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_1_1(&dword_2332D7000, MEMORY[0x277D86220], v1, "%{public}s", v2, v3, v4, v5, v7, v8, v9);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void isDisplayOff_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

uint64_t _WiFiWalletSourcePassContainsWiFiSemantics(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  if (v1 && ([v1 semantics], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = [v2 semantics];
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      v8 = *MEMORY[0x277D38788];
      while (2)
      {
        v9 = 0;
        do
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          if ([*(*(&v13 + 1) + 8 * v9) isEqualToString:v8])
          {
            v10 = 1;
            goto LABEL_13;
          }

          ++v9;
        }

        while (v6 != v9);
        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v10 = 0;
LABEL_13:
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x282136CD8](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78E8]();
}

{
  return MEMORY[0x2821F7908]();
}

{
  return MEMORY[0x2821F7938]();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}