void sub_230ED13A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, char *a20)
{
  a20 = &a17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a20);
  _Unwind_Resume(a1);
}

id PRErrorWithCodeAndUserInfo(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = v4;
  v6 = *MEMORY[0x277CCA450];
  if (a1 <= 109)
  {
    if (a1 <= 102)
    {
      if (a1 > 100)
      {
        if (a1 == 101)
        {
          v7 = @"Failed to place service request.";
        }

        else
        {
          v7 = @"Failed to initiate a ranging session.";
        }

        goto LABEL_45;
      }

      if (a1 == 10)
      {
        [v4 setObject:@"Unsupported operation." forKeyedSubscript:v6];
        v6 = *MEMORY[0x277CCA470];
        v7 = @"This platform does not support the operation requested.";
        goto LABEL_45;
      }

      if (a1 == 100)
      {
        [v4 setObject:@"Unsupported ranging configuration." forKeyedSubscript:v6];
        [v5 setObject:@"Missing parameters or invalid values provided." forKeyedSubscript:*MEMORY[0x277CCA470]];
        v6 = *MEMORY[0x277CCA498];
        v7 = @"Make sure that the values provided are supported in this version.";
        goto LABEL_45;
      }
    }

    else if (a1 <= 105)
    {
      if (a1 == 103)
      {
        v7 = @"Failed to stop a ranging session.";
        goto LABEL_45;
      }

      if (a1 == 104)
      {
        v7 = @"Failed to set Rose config.";
        goto LABEL_45;
      }
    }

    else
    {
      switch(a1)
      {
        case 'j':
          v7 = @"Invalid peer information.";
          goto LABEL_45;
        case 'l':
          v7 = @"Invalid ticket id.";
          goto LABEL_45;
        case 'm':
          v7 = @"Rose Provider not ready.";
          goto LABEL_45;
      }
    }

LABEL_44:
    v7 = @"Undefined Error";
    goto LABEL_45;
  }

  if (a1 > 200)
  {
    if (a1 <= 998)
    {
      if (a1 == 201)
      {
        v7 = @"Failed to stop estimating proximity to peer.";
        goto LABEL_45;
      }

      if (a1 == 202)
      {
        v7 = @"Failed to consume RSSI sample.";
        goto LABEL_45;
      }
    }

    else
    {
      switch(a1)
      {
        case 999:
          v7 = @"Internal Error";
          goto LABEL_45;
        case 2000:
          v7 = @"Unsupported global parameters combination.";
          goto LABEL_45;
        case 2002:
          v7 = @"Time conversion failed.";
          goto LABEL_45;
      }
    }

    goto LABEL_44;
  }

  if (a1 > 111)
  {
    switch(a1)
    {
      case 112:
        v7 = @"Not user triggered request.";
        goto LABEL_45;
      case 113:
        v7 = @"Client has no registered request.";
        goto LABEL_45;
      case 200:
        v7 = @"Failed to start estimating proximity to peer.";
        goto LABEL_45;
    }

    goto LABEL_44;
  }

  if (a1 == 110)
  {
    v7 = @"Timeout.";
  }

  else
  {
    v7 = @"Unexpected service state.";
  }

LABEL_45:
  [v5 setObject:v7 forKeyedSubscript:v6];
  if (v3)
  {
    [v5 addEntriesFromDictionary:v3];
  }

  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Proximity.ErrorDomain" code:a1 userInfo:v5];

  return v8;
}

void RangeAngleSharingImportanceEstimator::RangeAngleSharingImportanceEstimator(RangeAngleSharingImportanceEstimator *this, char a2)
{
  *this = &unk_2845B3680;
  *(this + 8) = 0;
  *(this + 2) = 0x7FF4000000000000;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  v4 = vdupq_n_s64(0x7FF4000000000000uLL);
  *(this + 72) = v4;
  *(this + 44) = 0;
  *(this + 90) = 0;
  *(this + 6) = v4;
  *(this + 56) = 0;
  *(this + 15) = 0x7FF4000000000000;
  *(this + 64) = 0;
  *(this + 17) = 0x7FF4000000000000;
  *(this + 36) = 3;
  *(this + 152) = v4;
  *(this + 168) = 0;
  *(this + 11) = v4;
  *(this + 24) = os_log_create("com.apple.proximity.sharingchoice", "RangeAngleSharingImportanceEstimator");
  *(this + 8) = a2;
  *(this + 2) = 0;
  *(this + 44) = 257;
  *(this + 90) = 0;
  *(this + 11) = xmmword_230EED6C0;
}

double RangeAngleSharingImportanceEstimator::getRangeTimeHistoryDelta(RangeAngleSharingImportanceEstimator *this)
{
  result = 1.0;
  if (*(this + 89))
  {
    return 3.0;
  }

  return result;
}

uint64_t RangeAngleSharingImportanceEstimator::removeOutOfDateMeasurements(uint64_t this)
{
  v1 = *(this + 64);
  if (v1)
  {
    v2 = this;
    do
    {
      v3 = *(v2 + 56);
      if (*(v2 + 89))
      {
        v4 = 3.0;
      }

      else
      {
        v4 = 1.0;
      }

      if (*(v2 + 16) - *(*(*(v2 + 32) + 8 * (v3 / 0x49)) + 56 * (v3 % 0x49)) <= v4)
      {
        break;
      }

      *(v2 + 56) = v3 + 1;
      *(v2 + 64) = v1 - 1;
      this = std::deque<RangeAngleSharingImportanceEstimator::Measurement>::__maybe_remove_front_spare[abi:ne200100](v2 + 24, 1);
      v1 = *(v2 + 64);
    }

    while (v1);
  }

  return this;
}

uint64_t RangeAngleSharingImportanceEstimator::updateRecentMeasurements(uint64_t a1, uint64_t a2)
{
  std::deque<RangeAngleSharingImportanceEstimator::Measurement>::push_back(a1 + 24, a2);

  return RangeAngleSharingImportanceEstimator::removeOutOfDateMeasurements(a1);
}

__n128 std::deque<RangeAngleSharingImportanceEstimator::Measurement>::push_back(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 73 * ((v5 - v6) >> 3) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    std::deque<RangeAngleSharingImportanceEstimator::Measurement>::__add_back_capacity(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  v9 = *(v6 + 8 * (v8 / 0x49)) + 56 * (v8 % 0x49);
  result = *a2;
  v11 = *(a2 + 16);
  v12 = *(a2 + 32);
  *(v9 + 48) = *(a2 + 48);
  *(v9 + 16) = v11;
  *(v9 + 32) = v12;
  *v9 = result;
  ++*(a1 + 40);
  return result;
}

uint64_t RangeAngleSharingImportanceEstimator::handleMeasurements(uint64_t this, const NeighborMeasurements *a2)
{
  v2 = this;
  v3 = a2[1].var0.var0.var0.var0[8];
  if (v3)
  {
    v4 = *(&a2[1].var0.var0.var1 + 2);
    if (v4 < -0.4)
    {
      return this;
    }
  }

  else
  {
    if (a2[2].var0.var0.var0.var0[8] != 1)
    {
      return this;
    }

    v4 = *(&a2[1].var0.var0.var1 + 2);
  }

  var0 = a2[1].var0.var0.var1.var0;
  v6 = *(this + 16);
  if (*&var0 - v6 < -0.5)
  {
    return this;
  }

  if (*&var0 - v6 >= 0.0)
  {
    *(this + 16) = *&var0;
    v6 = *&a2[1].var0.var0.var1.var0;
  }

  if (a2[1].var0.var0.var0.var0[9] == 1)
  {
    v7 = *&a2[2].var0.var0.var1.var0 * 180.0 / 3.14159265;
    if (!v3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v7 = NAN;
    if (!v3)
    {
LABEL_11:
      v8 = 0;
      if (a2[2].var0.var0.var0.var0[8] == 1)
      {
        var1_high = HIDWORD(a2[2].var0.var0.var1.var1);
        if (var1_high > 2)
        {
          v4 = 15.0;
        }

        else
        {
          v8 = qword_230EED708[var1_high];
          v4 = dbl_230EED720[var1_high];
        }

        v10 = 1;
      }

      else
      {
        v10 = 0;
        v4 = NAN;
      }

      goto LABEL_19;
    }
  }

  v10 = 0;
  *(this + 89) = 0;
  v8 = 0x4058FFFFFFFFFFFFLL;
LABEL_19:
  v11 = *&a2[3].var0.var0.var1.var0;
  if (!a2[2].var0.var0.var0.var0[16])
  {
    v11 = NAN;
  }

  v12 = HIDWORD(a2[2].var0.var0.var1.var1);
  *v13 = v6;
  *&v13[1] = v4;
  *&v13[2] = v7;
  v14 = v12;
  v15 = v11;
  v16 = v8;
  v17 = v10;
  std::deque<RangeAngleSharingImportanceEstimator::Measurement>::push_back(this + 24, v13);
  return RangeAngleSharingImportanceEstimator::removeOutOfDateMeasurements(v2);
}

double RangeAngleSharingImportanceEstimator::getAverageRangeMeters(RangeAngleSharingImportanceEstimator *this, double a2, double a3, int a4)
{
  v4 = *(this + 4);
  if (*(this + 5) == v4)
  {
    return NAN;
  }

  v5 = *(this + 7);
  v6 = (v4 + 8 * (v5 / 0x49));
  v7 = *v6 + 56 * (v5 % 0x49);
  v8 = *(v4 + 8 * ((*(this + 8) + v5) / 0x49)) + 56 * ((*(this + 8) + v5) % 0x49);
  if (v7 == v8)
  {
    return NAN;
  }

  v9 = 0.0;
  v10 = 0.0;
  do
  {
    v11 = *(v7 + 40);
    if (!a4 || (*(v7 + 48) & 1) == 0)
    {
      v12 = a2 - *v7;
      v13 = v12 < 0.0;
      if (v12 > a3)
      {
        v13 = 1;
      }

      v14 = v9 + *(v7 + 8) * v11;
      v15 = v10 + v11;
      if (!v13)
      {
        v10 = v15;
        v9 = v14;
      }
    }

    v7 += 56;
    if (v7 - *v6 == 4088)
    {
      v16 = v6[1];
      ++v6;
      v7 = v16;
    }
  }

  while (v7 != v8);
  if (v10 <= 0.0)
  {
    return NAN;
  }

  else
  {
    return fmax(v9 / v10, 0.0);
  }
}

double RangeAngleSharingImportanceEstimator::getAverageRangeMeters(RangeAngleSharingImportanceEstimator *this, double a2, int a3)
{
  v3 = 1.0;
  if (*(this + 89))
  {
    v3 = 3.0;
  }

  return RangeAngleSharingImportanceEstimator::getAverageRangeMeters(this, a2, v3, a3);
}

double RangeAngleSharingImportanceEstimator::getMedianSoiRssiDbm(RangeAngleSharingImportanceEstimator *this, double a2)
{
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v2 = *(this + 4);
  if (*(this + 5) == v2)
  {
    return -INFINITY;
  }

  v3 = *(this + 7);
  v4 = *(v2 + 8 * (v3 / 0x49)) + 56 * (v3 % 0x49);
  v5 = *(v2 + 8 * ((*(this + 8) + v3) / 0x49)) + 56 * ((*(this + 8) + v3) % 0x49);
  if (v4 == v5)
  {
    return -INFINITY;
  }

  v7 = (v2 + 8 * (v3 / 0x49));
  do
  {
    v8 = *v4;
    v9 = *(v4 + 48);
    v16 = *(v4 + 16);
    v17 = *(v4 + 32);
    v18 = v9;
    v10 = a2 - *&v8;
    if (v10 >= 0.0 && v10 <= 1.0)
    {
      std::vector<double>::push_back[abi:ne200100](&v19, &v17);
    }

    v4 += 56;
    if (v4 - *v7 == 4088)
    {
      v12 = v7[1];
      ++v7;
      v4 = v12;
    }
  }

  while (v4 != v5);
  v13 = v19;
  if (v19 != v20)
  {
    std::__sort<std::__less<double,double> &,double *>();
    v13 = v19;
    v14 = *&v19[((v20 - v19) >> 1) & 0xFFFFFFFFFFFFFFF8];
LABEL_16:
    v20 = v13;
    operator delete(v13);
    return v14;
  }

  v14 = -INFINITY;
  if (v19)
  {
    goto LABEL_16;
  }

  return v14;
}

void sub_230ED2A00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<double>::push_back[abi:ne200100](const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<Rose::ResponderSuperframeRxPacketInfo>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

double RangeAngleSharingImportanceEstimator::getMedianAngleDegrees(RangeAngleSharingImportanceEstimator *this, double a2)
{
  if (*(this + 8) != 1)
  {
    return NAN;
  }

  if (*(this + 89))
  {
    return NAN;
  }

  v18 = 0;
  v19 = 0;
  v20 = 0;
  v2 = *(this + 4);
  if (*(this + 5) == v2)
  {
    return NAN;
  }

  v3 = *(this + 7);
  v4 = *(v2 + 8 * (v3 / 0x49)) + 56 * (v3 % 0x49);
  v5 = *(v2 + 8 * ((*(this + 8) + v3) / 0x49)) + 56 * ((*(this + 8) + v3) % 0x49);
  if (v4 == v5)
  {
    return NAN;
  }

  v7 = (v2 + 8 * (v3 / 0x49));
  do
  {
    v9 = *(v4 + 16);
    v8 = *(v4 + 32);
    v10 = *v4;
    v17 = *(v4 + 48);
    v16[0] = v9;
    v16[1] = v8;
    if (a2 - *&v10 >= 0.0 && a2 - *&v10 <= 0.5)
    {
      std::vector<double>::push_back[abi:ne200100](&v18, v16);
    }

    v4 += 56;
    if (v4 - *v7 == 4088)
    {
      v12 = v7[1];
      ++v7;
      v4 = v12;
    }
  }

  while (v4 != v5);
  v13 = v18;
  if (v18 != v19)
  {
    std::__sort<std::__less<double,double> &,double *>();
    v13 = v18;
    v14 = *&v18[((v19 - v18) >> 1) & 0xFFFFFFFFFFFFFFF8];
LABEL_19:
    v19 = v13;
    operator delete(v13);
    return v14;
  }

  v14 = NAN;
  if (v18)
  {
    goto LABEL_19;
  }

  return v14;
}

void sub_230ED2C70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RangeAngleSharingImportanceEstimator::getPreviousBTCoarseRange(RangeAngleSharingImportanceEstimator *this, double a2)
{
  v2 = *(this + 16);
  while (v2 >= 1)
  {
    --v2;
    v3 = *(*(this + 4) + 8 * ((v2 + *(this + 7)) / 0x49uLL)) + 56 * ((v2 + *(this + 7)) % 0x49uLL);
    if (*v3 <= a2)
    {
      return *(v3 + 24);
    }
  }

  return 3;
}

BOOL RangeAngleSharingImportanceEstimator::isOutsideFOVRegionWithHysteresis(RangeAngleSharingImportanceEstimator *this, double a2, double a3)
{
  v3 = fabs(a3);
  if (*(this + 88) == 1)
  {
    v4 = a2 + 0.25 > 4.0;
    v5 = v3 + 5.0 <= 20.0;
  }

  else
  {
    v4 = a2 + -0.25 > 4.0;
    v5 = fabs(v3 + -5.0) <= 20.0;
  }

  return !v5 || v4;
}

BOOL RangeAngleSharingImportanceEstimator::isSuperCloseWithHysteresis(RangeAngleSharingImportanceEstimator *this, double a2)
{
  result = 0;
  if ((*(this + 89) & 1) == 0)
  {
    if (*(this + 90))
    {
      return a2 <= 0.35;
    }

    else
    {
      return a2 <= 0.25;
    }
  }

  return result;
}

void RangeAngleSharingImportanceEstimator::getScoreEstimate(uint64_t a1, uint64_t a2, double a3)
{
  v6 = *(a1 + 89);
  if (v6)
  {
    v7 = 3.0;
  }

  else
  {
    v7 = 1.0;
  }

  AverageRangeMeters = RangeAngleSharingImportanceEstimator::getAverageRangeMeters(a1, a3, v7, 1);
  *(a1 + 72) = AverageRangeMeters;
  *(a2 + 8) = 1;
  v9 = 0.0;
  if (AverageRangeMeters >= 0.0 && AverageRangeMeters <= 10.0)
  {
    v9 = AverageRangeMeters / -10.0 + 1.0;
  }

  *a2 = v9;
  v11 = RangeAngleSharingImportanceEstimator::getAverageRangeMeters(a1, a3, v7, 1);
  if ((v6 & 1) != 0 || (!*(a1 + 90) ? (v12 = v11 <= 0.25) : (v12 = v11 <= 0.35), !v12))
  {
    MedianAngleDegrees = RangeAngleSharingImportanceEstimator::getMedianAngleDegrees(a1, a3);
    *(a1 + 80) = MedianAngleDegrees;
    v16 = *(a1 + 72);
    v17 = fabs(MedianAngleDegrees);
    if (*(a1 + 88) == 1)
    {
      v18 = v16 + 0.25;
      if (v17 + 5.0 > 20.0 || v18 > 4.0)
      {
LABEL_26:
        v14 = 0;
        *(a1 + 80) = 0x7FF4000000000000;
        v13 = 1;
        goto LABEL_27;
      }
    }

    else
    {
      v20 = fabs(v17 + -5.0);
      if (v16 + -0.25 > 4.0 || v20 > 20.0)
      {
        goto LABEL_26;
      }
    }

    v14 = 0;
    v13 = 0;
    goto LABEL_27;
  }

  v13 = 0;
  *(a1 + 80) = 0;
  v14 = 1;
LABEL_27:
  *(a1 + 90) = v14;
  *(a1 + 88) = v13;
}

void RangeAngleSharingImportanceEstimator::computeNormalizedSoiRssiDbm(uint64_t a1, uint64_t a2, double a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 40);
  MedianSoiRssiDbm = RangeAngleSharingImportanceEstimator::getMedianSoiRssiDbm(a1, a3);
  if (v6 > 0.0)
  {
    MedianSoiRssiDbm = MedianSoiRssiDbm + log10(*(a2 + 40)) * 20.0;
  }

  *(a2 + 56) = MedianSoiRssiDbm;
  if (fabs(MedianSoiRssiDbm) == INFINITY)
  {
    v8 = *(a1 + 192);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 176);
      v10 = a3 - *(a1 + 184);
      v12 = 134218496;
      v13 = MedianSoiRssiDbm;
      v14 = 2048;
      v15 = v9;
      v16 = 2048;
      v17 = v10;
      _os_log_impl(&dword_230EB5000, v8, OS_LOG_TYPE_INFO, "normalizedSoiRssiDbm %f, use %f computed %f(s) ago instead", &v12, 0x20u);
    }

    *(a2 + 56) = *(a1 + 176);
  }

  else
  {
    *(a1 + 176) = MedianSoiRssiDbm;
    *(a1 + 184) = a3;
  }

  if (*(a2 + 33) == 1)
  {
    *(a2 + 56) = 0x7FF0000000000000;
  }

  v11 = *MEMORY[0x277D85DE8];
}

void RangeAngleSharingImportanceEstimator::getImportanceEstimate(uint64_t a1, uint64_t a2, double a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 16);
  if (a3 - v6 <= 3.0)
  {
    if (*(a1 + 168) == 1 && (v6 < a3 || *(a1 + 160) == a3))
    {
      v8 = *(a1 + 96);
      v9 = *(a1 + 112);
      v10 = *(a1 + 144);
      *(a2 + 32) = *(a1 + 128);
      *(a2 + 48) = v10;
      *a2 = v8;
      *(a2 + 16) = v9;
      if (a3 - *(a1 + 160) > 0.5 && (*(a1 + 90) & 1) == 0)
      {
        *(a2 + 24) = 0x7FF4000000000000;
        *(a2 + 17) = 0;
      }
    }

    else
    {
      *v19 = 0x7FF4000000000000;
      v19[8] = 0;
      RangeAngleSharingImportanceEstimator::getScoreEstimate(a1, v19, a3);
      *a2 = *v19;
      *(a2 + 16) = v19[8];
      v11 = 3.0;
      if (!*(a1 + 89))
      {
        v11 = 1.0;
      }

      *(a2 + 40) = RangeAngleSharingImportanceEstimator::getAverageRangeMeters(a1, a3, v11, 1);
      *(a2 + 24) = *(a1 + 80);
      *(a2 + 32) = 1;
      *(a2 + 17) = 1;
      v12 = *(a1 + 64);
      while (v12 >= 1)
      {
        --v12;
        v13 = *(*(a1 + 32) + 8 * ((v12 + *(a1 + 56)) / 0x49uLL)) + 56 * ((v12 + *(a1 + 56)) % 0x49uLL);
        if (*v13 <= a3)
        {
          v14 = *(v13 + 24);
          goto LABEL_17;
        }
      }

      v14 = 3;
LABEL_17:
      *(a2 + 48) = v14;
      *(a2 + 33) = *(a1 + 90);
      RangeAngleSharingImportanceEstimator::computeNormalizedSoiRssiDbm(a1, a2, a3);
      if (*(a1 + 16) == a3)
      {
        v15 = *a2;
        v16 = *(a2 + 16);
        v17 = *(a2 + 48);
        *(a1 + 128) = *(a2 + 32);
        *(a1 + 144) = v17;
        *(a1 + 96) = v15;
        *(a1 + 112) = v16;
        *(a1 + 160) = a3;
        *(a1 + 168) = 1;
      }
    }
  }

  else
  {
    *(a2 + 16) = 0;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 24) = 0x7FF4000000000000;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0x7FF4000000000000;
    *(a2 + 48) = 3;
    *(a2 + 56) = 0xFFF0000000000000;
    v7 = *(a1 + 192);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v19 = 134217984;
      *&v19[4] = 0x4008000000000000;
      _os_log_impl(&dword_230EB5000, v7, OS_LOG_TYPE_INFO, "[WARNING] Measurement gap more than %f(s)", v19, 0xCu);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void RangeAngleSharingImportanceEstimator::~RangeAngleSharingImportanceEstimator(RangeAngleSharingImportanceEstimator *this)
{
  *this = &unk_2845B3680;
  std::deque<RangeAngleSharingImportanceEstimator::Measurement>::~deque[abi:ne200100](this + 3);
}

{
  *this = &unk_2845B3680;
  std::deque<RangeAngleSharingImportanceEstimator::Measurement>::~deque[abi:ne200100](this + 3);

  JUMPOUT(0x23191EE50);
}

uint64_t std::deque<RangeAngleSharingImportanceEstimator::Measurement>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 36;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 73;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<RangeAngleSharingImportanceEstimator::Measurement *>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<RangeAngleSharingImportanceEstimator::Measurement *>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::deque<RangeAngleSharingImportanceEstimator::Measurement>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x49)
  {
    a2 = 1;
  }

  if (v2 < 0x92)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 73;
  }

  return v4 ^ 1u;
}

void *std::deque<RangeAngleSharingImportanceEstimator::Measurement>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x49;
  v3 = v1 - 73;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<RangeAngleSharingImportanceEstimator::Measurement *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<RangeAngleSharingImportanceEstimator::Measurement *>::emplace_back<RangeAngleSharingImportanceEstimator::Measurement *&>(a1, &v10);
}

void sub_230ED367C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<RangeAngleSharingImportanceEstimator::Measurement *>::emplace_back<RangeAngleSharingImportanceEstimator::Measurement *&>(void *result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<RangeAngleSharingImportanceEstimator::Measurement *>>(result, v11);
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

const void **std::__split_buffer<RangeAngleSharingImportanceEstimator::Measurement *>::emplace_front<RangeAngleSharingImportanceEstimator::Measurement *>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<RangeAngleSharingImportanceEstimator::Measurement *>>(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *std::__split_buffer<RangeAngleSharingImportanceEstimator::Measurement *>::emplace_back<RangeAngleSharingImportanceEstimator::Measurement *>(void *result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<RangeAngleSharingImportanceEstimator::Measurement *>>(result[4], v11);
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

const void **std::__split_buffer<RangeAngleSharingImportanceEstimator::Measurement *>::emplace_front<RangeAngleSharingImportanceEstimator::Measurement *&>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<RangeAngleSharingImportanceEstimator::Measurement *>>(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<RangeAngleSharingImportanceEstimator::Measurement *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void sub_230ED4384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *PRRangingServiceStateToString(unint64_t a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return off_2788F3E50[a1];
  }
}

__CFString *PRRangingServiceStateCauseToString(unint64_t a1)
{
  if (a1 > 7)
  {
    return 0;
  }

  else
  {
    return off_2788F3E78[a1];
  }
}

uint64_t PRPingRadio()
{
  NSLog(&cfstr_SendingHelloCo.isa);
  v0 = PRSendHelloWithTimeout(10000);
  if (v0)
  {
    NSLog(&cfstr_HelloResponse.isa);
    v1 = @"===================================";
    NSLog(&stru_2845B5CF8.isa);
    v2 = [v0 description];
    NSLog(&cfstr_S.isa, [v2 UTF8String]);

    v3 = 1;
  }

  else
  {
    v3 = 0;
    v1 = @"Error sending/receving hello";
  }

  NSLog(&v1->isa);

  return v3;
}

id PRSendHelloWithTimeout(uint64_t a1)
{
  v2 = getDiagnosticsServiceXPCConnection();
  v3 = v2;
  if (v2)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy__1;
    v12 = __Block_byref_object_dispose__1;
    v13 = 0;
    v4 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_27];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __PRSendHelloWithTimeout_block_invoke_2;
    v7[3] = &unk_2788F3FA8;
    v7[4] = &v8;
    [v4 sendHelloWithTimeout:a1 reply:v7];

    [v3 invalidate];
    v5 = v9[5];
    _Block_object_dispose(&v8, 8);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_230ED4B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id PRGetPreflightInfo()
{
  v0 = getDiagnosticsServiceXPCConnection();
  v1 = v0;
  if (v0)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x3032000000;
    v9 = __Block_byref_object_copy__1;
    v10 = __Block_byref_object_dispose__1;
    v11 = 0;
    v2 = [v0 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_2];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __PRGetPreflightInfo_block_invoke_2;
    v5[3] = &unk_2788F3EE0;
    v5[4] = &v6;
    [v2 getPreflightInfo:v5];

    [v1 invalidate];
    v3 = v7[5];
    _Block_object_dispose(&v6, 8);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_230ED4CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getDiagnosticsServiceXPCConnection()
{
  v0 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.nearbyd.xpc.diagnostics" options:4096];
  v1 = PRMakeDiagnosticsServerXPCInterface();
  [v0 setRemoteObjectInterface:v1];

  [v0 resume];

  return v0;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t PRRoseHasFailedUpdate()
{
  if (PRIsSupportedPlatform() && (getDiagnosticsServiceXPCConnection(), (v0 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v1 = v0;
    v6 = 0;
    v7 = &v6;
    v8 = 0x2020000000;
    v9 = 0;
    v2 = [v0 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_16];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __PRRoseHasFailedUpdate_block_invoke_2;
    v5[3] = &unk_2788F3F08;
    v5[4] = &v6;
    [v2 hasFailedRoseUpdate:v5];

    [v1 invalidate];
    v3 = *(v7 + 24);
    _Block_object_dispose(&v6, 8);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void sub_230ED4E7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id PRGetChipInfo()
{
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v0 bundleIdentifier];
  v2 = [v1 isEqualToString:@"com.apple.secureelementservice"];

  if (v2)
  {
    v3 = dispatch_semaphore_create(0);
    v4 = v3;
    if (!v3)
    {
      v6 = 0;
      goto LABEL_10;
    }

    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__1;
    v18 = __Block_byref_object_dispose__1;
    v19 = 0;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __PRGetChipInfo_block_invoke;
    v11[3] = &unk_2788F3F30;
    v13 = &v14;
    v4 = v3;
    v12 = v4;
    PRGetChipInfoAsync(v11);
    v5 = dispatch_time(0, 5000000000);
    dispatch_semaphore_wait(v4, v5);
    v6 = v15[5];
  }

  else
  {
    if (!PRIsSupportedPlatform() || (getDiagnosticsServiceXPCConnection(), (v7 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v6 = 0;
      goto LABEL_11;
    }

    v4 = v7;
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__1;
    v18 = __Block_byref_object_dispose__1;
    v19 = 0;
    v8 = [v7 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_23];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __PRGetChipInfo_block_invoke_3;
    v10[3] = &unk_2788F3F58;
    v10[4] = &v14;
    [v8 getChipInfoSync:1 reply:v10];

    [v4 invalidate];
    v6 = v15[5];
  }

  _Block_object_dispose(&v14, 8);

LABEL_10:
LABEL_11:

  return v6;
}

void PRGetChipInfoAsync(void *a1)
{
  v1 = a1;
  if ((PRIsSupportedPlatform() & 1) != 0 && (getDiagnosticsServiceXPCConnection(), (v2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = v2;
    v4 = [v2 remoteObjectProxyWithErrorHandler:&__block_literal_global_25];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __PRGetChipInfoAsync_block_invoke_2;
    v6[3] = &unk_2788F3F80;
    v7 = v3;
    v8 = v1;
    v5 = v3;
    [v4 getChipInfoSync:0 reply:v6];
  }

  else
  {
    (*(v1 + 2))(v1, 0);
  }
}

void __PRGetChipInfo_block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t __PRGetChipInfoAsync_block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 invalidate];
}

id PRGetPowerStatsWithTimeout(uint64_t a1)
{
  v2 = getDiagnosticsServiceXPCConnection();
  v3 = v2;
  if (v2)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy__1;
    v12 = __Block_byref_object_dispose__1;
    v13 = 0;
    v4 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_30];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __PRGetPowerStatsWithTimeout_block_invoke_2;
    v7[3] = &unk_2788F3FD0;
    v7[4] = &v8;
    [v4 getPowerStatsWithTimeout:a1 reply:v7];

    [v3 invalidate];
    v5 = v9[5];
    _Block_object_dispose(&v8, 8);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_230ED5424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PRSetMcc(void *a1)
{
  v1 = a1;
  v2 = getDiagnosticsServiceXPCConnection();
  if (v2)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    NSLog(&cfstr_PrdiagnosticPr.isa, [v1 UTF8String]);
    v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_36];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __PRSetMcc_block_invoke_2;
    v6[3] = &unk_2788F3F08;
    v6[4] = &v7;
    [v3 setRegulatoryMcc:v1 reply:v6];

    [v2 invalidate];
    v4 = *(v8 + 24);
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void sub_230ED556C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PRSetIsoCountry(void *a1)
{
  v1 = a1;
  v2 = getDiagnosticsServiceXPCConnection();
  v3 = v2;
  if (v2)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    v4 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_38_0];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __PRSetIsoCountry_block_invoke_2;
    v7[3] = &unk_2788F3F08;
    v7[4] = &v8;
    [v4 setRegulatoryIsoCountry:v1 reply:v7];

    [v3 invalidate];
    v5 = *(v9 + 24);
    _Block_object_dispose(&v8, 8);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void sub_230ED5694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PRSetAccessoryState(uint64_t a1)
{
  v2 = getDiagnosticsServiceXPCConnection();
  if (v2)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    v3 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:a1];
    v4 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_41];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __PRSetAccessoryState_block_invoke_2;
    v7[3] = &unk_2788F3F08;
    v7[4] = &v8;
    [v4 setRegulatoryAccessoryState:v3 reply:v7];

    [v2 invalidate];
    v5 = *(v9 + 24);

    _Block_object_dispose(&v8, 8);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void sub_230ED57D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PRCollectLogs(unint64_t a1)
{
  if (a1 < 5)
  {
    v3 = getDiagnosticsServiceXPCConnection();
    v4 = v3;
    if (v3)
    {
      v8 = 0;
      v9 = &v8;
      v10 = 0x2020000000;
      v11 = 0;
      v5 = [v3 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_46];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __PRCollectLogs_block_invoke_2;
      v7[3] = &unk_2788F3F08;
      v7[4] = &v8;
      [v5 triggerLogCollection:a1 reply:v7];

      [v4 invalidate];
      v1 = *(v9 + 24);
      _Block_object_dispose(&v8, 8);
    }

    else
    {
      v1 = 0;
    }
  }

  else
  {
    NSLog(&cfstr_PrcollectlogsI.isa);
    v1 = 0;
  }

  return v1 & 1;
}

void sub_230ED5910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PRSetRoseGlobalConfigParams(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    v2 = getDiagnosticsServiceXPCConnection();
    v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_48];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __PRSetRoseGlobalConfigParams_block_invoke_2;
    v6[3] = &unk_2788F3F08;
    v6[4] = &v7;
    [v3 setRoseGlobalConfigParams:v1 reply:v6];

    [v2 invalidate];
    v4 = *(v8 + 24);

    _Block_object_dispose(&v7, 8);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void sub_230ED5A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PRGetChipPowerState(_BYTE *a1)
{
  v1 = a1;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  if (a1)
  {
    v2 = getDiagnosticsServiceXPCConnection();
    v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_50];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __PRGetChipPowerState_block_invoke_2;
    v5[3] = &unk_2788F3FF8;
    v5[4] = &v6;
    v5[5] = &v10;
    [v3 getRoseChipPowerState:v5];

    *v1 = *(v11 + 24);
    [v2 invalidate];
    LOBYTE(v1) = *(v7 + 24);
  }

  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(&v10, 8);
  return v1 & 1;
}

void sub_230ED5B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __PRGetChipPowerState_block_invoke_2(uint64_t result, char a2, char a3)
{
  *(*(*(result + 32) + 8) + 24) = a2;
  *(*(*(result + 40) + 8) + 24) = a3;
  return result;
}

uint64_t PRRequestPowerChange(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v2 = getDiagnosticsServiceXPCConnection();
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_53];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __PRRequestPowerChange_block_invoke_2;
  v6[3] = &unk_2788F3F08;
  v6[4] = &v7;
  [v3 requestPowerChange:a1 reply:v6];

  [v2 invalidate];
  v4 = *(v8 + 24);

  _Block_object_dispose(&v7, 8);
  return v4;
}

void sub_230ED5CA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PRGetChipType()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v0 = getDiagnosticsServiceXPCConnection();
  v1 = [v0 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_55];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __PRGetChipType_block_invoke_2;
  v4[3] = &unk_2788F4020;
  v4[4] = &v5;
  [v1 getChipType:v4];

  [v0 invalidate];
  v2 = v6[3];

  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_230ED5DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id PRGetChipPublicKey()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__1;
  v9 = __Block_byref_object_dispose__1;
  v10 = 0;
  v0 = getDiagnosticsServiceXPCConnection();
  v1 = [v0 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_58];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __PRGetChipPublicKey_block_invoke_2;
  v4[3] = &unk_2788F4048;
  v4[4] = &v5;
  [v1 getChipPublicKey:v4];

  [v0 invalidate];
  v2 = v6[5];

  _Block_object_dispose(&v5, 8);

  return v2;
}

void sub_230ED5EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PRSetNarrowbandSARState(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v2 = getDiagnosticsServiceXPCConnection();
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_61];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __PRSetNarrowbandSARState_block_invoke_2;
  v6[3] = &unk_2788F3F08;
  v6[4] = &v7;
  [v3 setNarrowbandSarState:a1 reply:v6];

  [v2 invalidate];
  v4 = *(v8 + 24);

  _Block_object_dispose(&v7, 8);
  return v4;
}

void sub_230ED6004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PRGetDeepSleepState()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v0 = getDiagnosticsServiceXPCConnection();
  v1 = [v0 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_63];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __PRGetDeepSleepState_block_invoke_2;
  v4[3] = &unk_2788F4020;
  v4[4] = &v5;
  [v1 getDeepSleepState:v4];

  [v0 invalidate];
  v2 = v6[3];

  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_230ED6108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_230ED66EC(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_230ED69C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak(&a19);

  objc_destroyWeak(&a24);
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void DaemonBackedService::connect(id *a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, char a10)
{
  v25 = a2;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:v25 options:a3];
  v24 = *a1;
  *a1 = v23;

  [*a1 setExportedObject:v17];
  [*a1 setExportedInterface:v18];
  [*a1 setRemoteObjectInterface:v19];
  if (v20)
  {
    [*a1 _setQueue:v20];
  }

  [*a1 setInterruptionHandler:v22];
  [*a1 setInvalidationHandler:v21];
  if (a10)
  {
    [*a1 resume];
  }
}

void sub_230ED6D54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak(&a13);
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_230ED6EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  objc_destroyWeak(va);
  objc_destroyWeak((v6 - 24));

  _Unwind_Resume(a1);
}

void sub_230ED7014(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = PRBeacon;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void dispatchAsyncOnQueue(void *a1, void *a2)
{
  queue = a1;
  v3 = a2;
  if (queue)
  {
    dispatch_async(queue, v3);
  }

  else
  {
    v3[2](v3);
  }
}

void sub_230ED776C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak(&a19);

  objc_destroyWeak(&a24);
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_230ED7A3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = PRBeaconListener;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_230ED8D80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_230ED90C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

__n128 std::deque<BtProxData>::push_back(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 170 * ((v5 - v6) >> 3) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    std::deque<BtProxData>::__add_back_capacity(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  v9 = (*(v6 + 8 * (v8 / 0xAA)) + 24 * (v8 % 0xAA));
  result = *a2;
  v9[1].n128_u64[0] = a2[1].n128_u64[0];
  *v9 = result;
  ++*(a1 + 40);
  return result;
}

void std::default_delete<SingleThresholdProx::Estimator>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 80);
    if (v2)
    {
      *(a2 + 88) = v2;
      operator delete(v2);
    }

    JUMPOUT(0x23191EE50);
  }
}

uint64_t std::deque<BtProxData>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 85;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 170;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<RangeAngleSharingImportanceEstimator::Measurement *>::~__split_buffer(a1);
}

uint64_t std::deque<BtProxData>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0xAA)
  {
    a2 = 1;
  }

  if (v2 < 0x154)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 170;
  }

  return v4 ^ 1u;
}

void *std::deque<BtProxData>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0xAA;
  v3 = v1 - 170;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<RangeAngleSharingImportanceEstimator::Measurement *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<RangeAngleSharingImportanceEstimator::Measurement *>::emplace_back<RangeAngleSharingImportanceEstimator::Measurement *&>(a1, &v10);
}

void sub_230EDA418(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::vector<BtProxData>::vector[abi:ne200100]<std::__deque_iterator<BtProxData,BtProxData*,BtProxData&,BtProxData**,long,170l>,0>(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a5 != a3)
  {
    v6 = 170 * (a4 - a2) - 0x5555555555555555 * ((a5 - *a4) >> 3) + 0x5555555555555555 * ((a3 - *a2) >> 3);
  }

  std::vector<BtProxData>::__init_with_size[abi:ne200100]<std::__deque_iterator<BtProxData,BtProxData*,BtProxData&,BtProxData**,long,170l>,std::__deque_iterator<BtProxData,BtProxData*,BtProxData&,BtProxData**,long,170l>>(a1, a2, a3, a4, a5, v6);
  return a1;
}

uint64_t std::vector<BtProxData>::__init_with_size[abi:ne200100]<std::__deque_iterator<BtProxData,BtProxData*,BtProxData&,BtProxData**,long,170l>,std::__deque_iterator<BtProxData,BtProxData*,BtProxData&,BtProxData**,long,170l>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a6)
  {
    std::vector<BtProxData>::__vallocate[abi:ne200100](result, a6);
  }

  return result;
}

void sub_230EDA560(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<BtProxData>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<BtProxData>>(a1, a2);
  }

  std::vector<Rose::ResponderSuperframeRxPacketInfo>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<BtProxData>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_230EDAFF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, void *a45, uint64_t a46, uint64_t a47, void *__p, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  std::__tree<Region>::destroy(&a44, a45);

  _Unwind_Resume(a1);
}

uint64_t std::vector<NeighborMeasurements>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<NeighborMeasurements>::__emplace_back_slow_path<NeighborMeasurements const&>(a1, a2);
  }

  else
  {
    std::vector<NeighborMeasurements>::__construct_one_at_end[abi:ne200100]<NeighborMeasurements const&>(a1, a2);
    result = v3 + 88;
  }

  *(a1 + 8) = result;
  return result;
}

void std::vector<NeighborMeasurements>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 65);
    v3 -= 11;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void std::vector<NeighborMeasurements>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<NeighborMeasurements>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

SharingImportanceManager *std::unique_ptr<SharingImportanceManager>::reset[abi:ne200100](SharingImportanceManager **a1, SharingImportanceManager *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    SharingImportanceManager::~SharingImportanceManager(result);

    JUMPOUT(0x23191EE50);
  }

  return result;
}

void SharingImportanceManager::~SharingImportanceManager(SharingImportanceManager *this)
{
  std::__tree<std::__value_type<std::string,TopScoreTieHysteresis::DeviceScore>,std::__map_value_compare<std::string,std::__value_type<std::string,TopScoreTieHysteresis::DeviceScore>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TopScoreTieHysteresis::DeviceScore>>>::destroy(this + 344, *(this + 44));
  std::__tree<std::__value_type<std::string,TopScoreTieHysteresis::DeviceScore>,std::__map_value_compare<std::string,std::__value_type<std::string,TopScoreTieHysteresis::DeviceScore>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TopScoreTieHysteresis::DeviceScore>>>::destroy(this + 320, *(this + 41));

  std::__tree<std::__value_type<std::string,TopScoreTieHysteresis::DeviceScore>,std::__map_value_compare<std::string,std::__value_type<std::string,TopScoreTieHysteresis::DeviceScore>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TopScoreTieHysteresis::DeviceScore>>>::destroy(this + 256, *(this + 33));
  std::__tree<std::__value_type<std::string,TopScoreTieHysteresis::DeviceScore>,std::__map_value_compare<std::string,std::__value_type<std::string,TopScoreTieHysteresis::DeviceScore>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TopScoreTieHysteresis::DeviceScore>>>::destroy(this + 232, *(this + 30));

  std::__tree<std::__value_type<std::string,TopScoreTieHysteresis::DeviceScore>,std::__map_value_compare<std::string,std::__value_type<std::string,TopScoreTieHysteresis::DeviceScore>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TopScoreTieHysteresis::DeviceScore>>>::destroy(this + 160, *(this + 21));
  std::__tree<std::__value_type<std::string,TopScoreTieHysteresis::DeviceScore>,std::__map_value_compare<std::string,std::__value_type<std::string,TopScoreTieHysteresis::DeviceScore>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TopScoreTieHysteresis::DeviceScore>>>::destroy(this + 136, *(this + 18));

  v2 = (this + 72);
  std::vector<SharingHysteresis::DeviceScore>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (this + 48);
  std::vector<SharingHysteresis::DeviceScore>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__tree<std::__value_type<std::string,std::unique_ptr<SharingImportanceEstimator>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<SharingImportanceEstimator>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<SharingImportanceEstimator>>>>::destroy(this, *(this + 1));
}

void *std::__tree<std::__value_type<unsigned long long,BOOL>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,BOOL>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,BOOL>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
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

__n128 std::vector<NeighborMeasurements>::__construct_one_at_end[abi:ne200100]<NeighborMeasurements const&>(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  result = *(a2 + 24);
  v7 = *(a2 + 40);
  v8 = *(a2 + 56);
  *(v4 + 66) = *(a2 + 66);
  *(v4 + 56) = v8;
  *(v4 + 40) = v7;
  *(v4 + 24) = result;
  *(a1 + 8) = v4 + 88;
  return result;
}

uint64_t std::vector<NeighborMeasurements>::__emplace_back_slow_path<NeighborMeasurements const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    std::vector<Rose::ResponderSuperframeRxPacketInfo>::__throw_length_error[abi:ne200100]();
  }

  if (0x5D1745D1745D1746 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((*(a1 + 16) - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v6 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v6 = v3;
  }

  v23 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<NeighborMeasurements>>(a1, v6);
  }

  v7 = 88 * v2;
  v20 = 0;
  v21 = v7;
  v22 = v7;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v7, *a2, *(a2 + 1));
    v9 = v21;
    v10 = v22;
  }

  else
  {
    v8 = *a2;
    *(v7 + 16) = *(a2 + 2);
    *v7 = v8;
    v9 = v7;
    v10 = v7;
  }

  v11 = *(a2 + 56);
  v12 = *(a2 + 66);
  v13 = *(a2 + 24);
  *(v7 + 40) = *(a2 + 40);
  *(v7 + 24) = v13;
  *(v7 + 66) = v12;
  *(v7 + 56) = v11;
  *&v22 = v10 + 88;
  v14 = *(a1 + 8);
  v15 = v9 + *a1 - v14;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<NeighborMeasurements>,NeighborMeasurements*>(a1, *a1, v14, v15);
  v16 = *a1;
  *a1 = v15;
  v17 = *(a1 + 16);
  v19 = v22;
  *(a1 + 8) = v22;
  *&v22 = v16;
  *(&v22 + 1) = v17;
  v20 = v16;
  v21 = v16;
  std::__split_buffer<NeighborMeasurements>::~__split_buffer(&v20);
  return v19;
}

void sub_230EDC4EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<NeighborMeasurements>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<NeighborMeasurements>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<NeighborMeasurements>,NeighborMeasurements*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v15 = a4;
  v14 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  if (a2 == a3)
  {
    v13 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      v8 = *(v6 + 24);
      v9 = *(v6 + 40);
      v10 = *(v6 + 56);
      *(a4 + 66) = *(v6 + 66);
      *(a4 + 56) = v10;
      *(a4 + 40) = v9;
      *(a4 + 24) = v8;
      v6 = (v6 + 88);
      a4 += 88;
    }

    while (v6 != a3);
    v15 = a4;
    v13 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 = (v5 + 88);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<NeighborMeasurements>,NeighborMeasurements*>>::~__exception_guard_exceptions[abi:ne200100](v12);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<NeighborMeasurements>,NeighborMeasurements*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<NeighborMeasurements>,NeighborMeasurements*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<NeighborMeasurements>,NeighborMeasurements*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 65);
    v1 -= 11;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

uint64_t std::__split_buffer<NeighborMeasurements>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<NeighborMeasurements>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<NeighborMeasurements>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 11;
      *(a1 + 16) = v2 - 11;
      if (*(v2 - 65) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void sub_230EDCB1C(_Unwind_Exception *a1)
{
  v6 = v1;

  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v5 - 72));
  _Unwind_Resume(a1);
}

void sub_230EDD65C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak(&a13);

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_230EDD800(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak(&a13);

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_230EDD9A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak(&a13);

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_230EDDB40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak(&a13);

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_230EDDCE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak(&a13);

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id PRMakeRangingServerXPCInterface()
{
  if (PRMakeRangingServerXPCInterface_onceToken != -1)
  {
    PRMakeRangingServerXPCInterface_cold_1();
  }

  v1 = PRMakeRangingServerXPCInterface_interface;

  return v1;
}

void __PRMakeRangingServerXPCInterface_block_invoke()
{
  v0 = _PRMakeRangingServerInterfaceWithProtocol(&unk_2845C1368);
  v1 = PRMakeRangingServerXPCInterface_interface;
  PRMakeRangingServerXPCInterface_interface = v0;

  v2 = objc_alloc(MEMORY[0x277CBEB98]);
  v3 = objc_opt_class();
  v10 = [v2 initWithObjects:{v3, objc_opt_class(), 0}];
  v4 = objc_alloc(MEMORY[0x277CBEB98]);
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v4 initWithObjects:{v5, v6, v7, v8, objc_opt_class(), 0}];
  [PRMakeRangingServerXPCInterface_interface setClasses:v10 forSelector:sel_configureForP2PRanging_options_reply_ argumentIndex:0 ofReply:0];
  [PRMakeRangingServerXPCInterface_interface setClasses:v9 forSelector:sel_configureForP2PRanging_options_reply_ argumentIndex:1 ofReply:0];
  [PRMakeRangingServerXPCInterface_interface setClasses:v10 forSelector:sel_startP2PRanging_reply_ argumentIndex:0 ofReply:0];
  [PRMakeRangingServerXPCInterface_interface setClasses:v10 forSelector:sel_stopP2PRanging_reply_ argumentIndex:0 ofReply:0];
}

id _PRMakeRangingServerInterfaceWithProtocol(uint64_t a1)
{
  v1 = [MEMORY[0x277CCAE90] interfaceWithProtocol:a1];
  v2 = objc_alloc(MEMORY[0x277CBEB98]);
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = [v2 initWithObjects:{v3, v4, objc_opt_class(), 0}];
  [v1 setClasses:v5 forSelector:sel_connectWithClientInfo_ argumentIndex:0 ofReply:0];

  return v1;
}

id _PRMakeRangingClientInterfaceWithProtocol(uint64_t a1)
{
  v1 = [MEMORY[0x277CCAE90] interfaceWithProtocol:a1];
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = [v2 setWithObjects:{v3, objc_opt_class(), 0}];
  v5 = objc_alloc(MEMORY[0x277CBEB98]);
  v6 = objc_opt_class();
  v7 = [v5 initWithObjects:{v6, objc_opt_class(), 0}];
  [v1 setClasses:v4 forSelector:sel_didReceiveNewSolutions_ argumentIndex:0 ofReply:0];
  [v1 setClass:objc_opt_class() forSelector:sel_didFailWithError_ argumentIndex:0 ofReply:0];
  [v1 setClasses:v7 forSelector:sel_remoteDevice_didChangeState_ argumentIndex:0 ofReply:0];

  return v1;
}

id PRMakeAidedRangingClientXPCInterface()
{
  v0 = _PRMakeRangingClientInterfaceWithProtocol(&unk_2845BE4F8);
  [v0 setClass:objc_opt_class() forSelector:sel_sendDataToPeers_ argumentIndex:0 ofReply:0];

  return v0;
}

id PRMakeBTRangingClientXPCInterface()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2845C00B0];
  v1 = objc_alloc(MEMORY[0x277CBEB98]);
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = [v1 initWithObjects:{v2, v3, objc_opt_class(), 0}];
  v5 = objc_alloc(MEMORY[0x277CBEB98]);
  v6 = objc_opt_class();
  v7 = [v5 initWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v0 setClass:objc_opt_class() forSelector:sel_didFailWithError_ argumentIndex:0 ofReply:0];
  [v0 setClasses:v4 forSelector:sel_didFetchTxPower_fromDevice_withError_ argumentIndex:0 ofReply:0];
  [v0 setClasses:v7 forSelector:sel_didConnectDevice_error_ argumentIndex:0 ofReply:0];
  [v0 setClasses:v7 forSelector:sel_didStartRangingOnDevice_withError_ argumentIndex:0 ofReply:0];
  [v0 setClasses:v7 forSelector:sel_didStopOwnerRangingOnDevice_withError_ argumentIndex:0 ofReply:0];
  [v0 setClasses:v8 forSelector:sel_didReceiveNewBTRSSI_ argumentIndex:0 ofReply:0];

  return v0;
}

id PRMakeDiagnosticsServerXPCInterface()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2845C13C8];
  [v0 setClass:objc_opt_class() forSelector:sel_sendHelloWithTimeout_reply_ argumentIndex:0 ofReply:1];
  [v0 setClass:objc_opt_class() forSelector:sel_getChipInfoSync_reply_ argumentIndex:0 ofReply:1];
  [v0 setClass:objc_opt_class() forSelector:sel_getPowerStatsWithTimeout_reply_ argumentIndex:0 ofReply:1];
  v1 = MEMORY[0x277CBEB98];
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [v1 setWithObjects:{v2, v3, v4, v5, objc_opt_class(), 0}];
  [v0 setClasses:v6 forSelector:sel_getPreflightInfo_ argumentIndex:0 ofReply:1];
  [v0 setClasses:v6 forSelector:sel_getChipPublicKey_ argumentIndex:0 ofReply:1];
  [v0 setClasses:v6 forSelector:sel_setRoseGlobalConfigParams_reply_ argumentIndex:0 ofReply:0];

  return v0;
}

id PRMakeProtobufServerXPCInterface()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2845C1428];
  [v0 setClass:objc_opt_class() forSelector:sel_startStreamingProtobufDataForClientId_reply_ argumentIndex:0 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:sel_stopStreamingProtobufDataForClientId_reply_ argumentIndex:0 ofReply:0];

  return v0;
}

id PRMakeProtobufClientXPCInterface()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2845BF818];
  [v0 setClass:objc_opt_class() forSelector:sel_consumeProtobufBytes_ argumentIndex:0 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:sel_getUniqueClientIdentifier_ argumentIndex:0 ofReply:1];

  return v0;
}

id PRMakeRegulatoryAssistanceEndpointXPCInterface()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2845C1488];
  [v0 setClass:objc_opt_class() forSelector:sel_injectIsoCode_ argumentIndex:0 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:sel_prepareForRegulatoryAssistance_ argumentIndex:0 ofReply:1];

  return v0;
}

id PRMakeCompanionRangingServerXPCInterface()
{
  v0 = _PRMakeRangingServerInterfaceWithProtocol(&unk_2845C14E8);
  v1 = objc_alloc(MEMORY[0x277CBEB98]);
  v2 = objc_opt_class();
  v3 = [v1 initWithObjects:{v2, objc_opt_class(), 0}];
  v4 = objc_alloc(MEMORY[0x277CBEB98]);
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v4 initWithObjects:{v5, v6, v7, v8, objc_opt_class(), 0}];
  [v0 setClasses:v3 forSelector:sel_configureForCompanionRanging_options_reply_ argumentIndex:0 ofReply:0];
  [v0 setClasses:v9 forSelector:sel_configureForCompanionRanging_options_reply_ argumentIndex:1 ofReply:0];
  [v0 setClasses:v3 forSelector:sel_startCompanionRanging_options_reply_ argumentIndex:0 ofReply:0];
  [v0 setClasses:v9 forSelector:sel_startCompanionRanging_options_reply_ argumentIndex:1 ofReply:0];
  [v0 setClasses:v3 forSelector:sel_stopCompanionRanging_reply_ argumentIndex:0 ofReply:0];
  [v0 setClasses:v3 forSelector:sel_recordUsageOfCompanionRanging_usageParameters_ argumentIndex:0 ofReply:0];
  [v0 setClasses:v9 forSelector:sel_recordUsageOfCompanionRanging_usageParameters_ argumentIndex:1 ofReply:0];

  return v0;
}

id PRMakeBTRangingServerXPCInterface()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2845C1548];
  v1 = objc_alloc(MEMORY[0x277CBEB98]);
  v2 = objc_opt_class();
  v3 = [v1 initWithObjects:{v2, objc_opt_class(), 0}];
  v4 = objc_alloc(MEMORY[0x277CBEB98]);
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [v4 initWithObjects:{v5, v6, objc_opt_class(), 0}];
  [v0 setClasses:v7 forSelector:sel_fetchTxPower_isUT_reply_ argumentIndex:0 ofReply:0];
  [v0 setClasses:v3 forSelector:sel_startUTRanging_reply_ argumentIndex:0 ofReply:0];
  [v0 setClasses:v3 forSelector:sel_stopUTRanging_reply_ argumentIndex:0 ofReply:0];
  [v0 setClasses:v3 forSelector:sel_startOwnerRanging_reply_ argumentIndex:0 ofReply:0];
  [v0 setClasses:v3 forSelector:sel_stopOwnerRanging_reply_ argumentIndex:0 ofReply:0];

  return v0;
}

id PRMakeBeaconRangingServerXPCInterface()
{
  v0 = _PRMakeRangingServerInterfaceWithProtocol(&unk_2845C15A8);
  v1 = objc_alloc(MEMORY[0x277CBEB98]);
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = [v1 initWithObjects:{v2, v3, v4, objc_opt_class(), 0}];
  [v0 setClasses:v5 forSelector:sel_startBeaconing_options_reply_ argumentIndex:1 ofReply:0];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  [v0 setClasses:v8 forSelector:sel_pushBeaconAllowlist_reply_ argumentIndex:0 ofReply:0];

  return v0;
}

id PRMakeAidedRangingServerXPCInterface()
{
  v0 = _PRMakeRangingServerInterfaceWithProtocol(&unk_2845C1608);
  v1 = objc_alloc(MEMORY[0x277CBEB98]);
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = [v1 initWithObjects:{v2, v3, v4, objc_opt_class(), 0}];
  v6 = objc_alloc(MEMORY[0x277CBEB98]);
  v7 = objc_opt_class();
  v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
  [v0 setClasses:v5 forSelector:sel_runWithConfiguration_reply_ argumentIndex:0 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:sel_requestInitialCollaborationDataWithCompletionHandler_ argumentIndex:0 ofReply:1];
  [v0 setClass:objc_opt_class() forSelector:sel_receivedData_fromPeer_ argumentIndex:0 ofReply:0];
  [v0 setClasses:v8 forSelector:sel_receivedData_fromPeer_ argumentIndex:1 ofReply:0];

  return v0;
}

void sub_230EDF7E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_230EE0068(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_230EE0250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_230EE0434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void BtProxMaxFilter::~BtProxMaxFilter(void **this)
{
  *this = &unk_2845B3B60;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_2845B3B60;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x23191EE50);
}

void BtProxMeanFilter::~BtProxMeanFilter(void **this)
{
  *this = &unk_2845B3B60;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_2845B3B60;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x23191EE50);
}

void BtProxMedianFilter::~BtProxMedianFilter(void **this)
{
  *this = &unk_2845B3B60;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_2845B3B60;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x23191EE50);
}

void BtProxMaxOfMeanOfChanFilter::~BtProxMaxOfMeanOfChanFilter(void **this)
{
  *this = &unk_2845B3B60;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_2845B3B60;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x23191EE50);
}

void BtProxMedianOfMeanOfChanFilter::~BtProxMedianOfMeanOfChanFilter(void **this)
{
  *this = &unk_2845B3B60;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_2845B3B60;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x23191EE50);
}

void BtProxOlympicFilter::~BtProxOlympicFilter(void **this)
{
  *this = &unk_2845B3B60;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_2845B3B60;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x23191EE50);
}

void BtProxRayleighFilter::~BtProxRayleighFilter(void **this)
{
  *this = &unk_2845B3B60;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_2845B3B60;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x23191EE50);
}

double BtProximityFilterBase::MeanBtProxData(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  result = 0.0;
  if (v2 != *a2)
  {
    do
    {
      result = result + *(v3 + 8);
      v3 += 24;
    }

    while (v3 != v2);
    return result / (0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 3));
  }

  return result;
}

double BtProximityFilterBase::MeanDouble(uint64_t a1, double **a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2 == *a2)
  {
    return 0.0;
  }

  v4 = 0.0;
  do
  {
    v5 = *v3++;
    v4 = v4 + v5;
  }

  while (v3 != v2);
  return v4 / (v2 - *a2);
}

double BtProxMaxFilter::FilterSamples(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (v3 == *a2)
  {
    return 0.0;
  }

  for (i = v2 + 24; i != v3; i += 24)
  {
    if (*(v2 + 8) < *(i + 8))
    {
      v2 = i;
    }
  }

  return *(v2 + 8);
}

double BtProxMeanFilter::FilterSamples(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (v3 == v2)
  {
    return 0.0;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  std::vector<BtProxData>::__init_with_size[abi:ne200100]<BtProxData*,BtProxData*>(&v9, v2, v3, 0xAAAAAAAAAAAAAAABLL * ((v3 - v2) >> 3));
  if (v10 == v9)
  {
    v7 = 0.0;
    if (!v9)
    {
      return v7;
    }

LABEL_9:
    v10 = v9;
    operator delete(v9);
    return v7;
  }

  v5 = 0.0;
  v6 = v9;
  do
  {
    v5 = v5 + v6[1];
    v6 += 3;
  }

  while (v6 != v10);
  v7 = v5 / (0xAAAAAAAAAAAAAAABLL * (v10 - v9));
  if (v9)
  {
    goto LABEL_9;
  }

  return v7;
}

double BtProxMedianFilter::FilterSamples(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v4 = *a2;
  if (v3 == *a2)
  {
    return 0.0;
  }

  v5 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a2) >> 3);
  v6 = v5 >> 1;
  v8 = BtProximityFilterBase::RssiCompare;
  std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(BtProxData,BtProxData),BtProxData*,false>(v4, v3, &v8, 126 - 2 * __clz(v5), 1);
  result = *(*a2 + 24 * v6 + 8);
  if (((*(a2 + 2) - *a2) & 8) == 0)
  {
    return (result + *(*a2 + 24 * v6 - 16)) * 0.5;
  }

  return result;
}

double BtProxMaxOfMeanOfChanFilter::FilterSamples(uint64_t a1, void *a2)
{
  if (a2[1] == *a2)
  {
    return -200.0;
  }

  v3 = 0;
  v4 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v5 = -200.0;
  do
  {
    v6 = a2[1];
    if (v6 != *a2)
    {
      v7 = bTAdvChans[v4];
      v8 = *a2 + 8;
      do
      {
        if (*(v8 + 8) == v7)
        {
          std::vector<double>::push_back[abi:ne200100](&v17, v8);
          v6 = a2[1];
        }

        v8 += 24;
      }

      while (v8 - 8 != v6);
      v3 = v17;
      if (v18 != v17)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v14, v17, v18, (v18 - v17) >> 3);
        if (v15 == v14)
        {
          v12 = 0.0;
          if (!v14)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v9 = 0.0;
          v10 = v14;
          do
          {
            v11 = *v10++;
            v9 = v9 + v11;
          }

          while (v10 != v15);
          v12 = v9 / (v15 - v14);
          if (!v14)
          {
            goto LABEL_14;
          }
        }

        v15 = v14;
        operator delete(v14);
LABEL_14:
        if (v12 > v5)
        {
          v5 = v12;
        }

        v3 = v17;
      }
    }

    v18 = v3;
    ++v4;
  }

  while (v4 != 3);
  if (v3)
  {
    operator delete(v3);
  }

  return v5;
}

void sub_230EE0B38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double BtProxMedianOfMeanOfChanFilter::FilterSamples(uint64_t a1, void *a2)
{
  if (a2[1] == *a2)
  {
    return -200.0;
  }

  v3 = 0;
  v4 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  do
  {
    v5 = a2[1];
    if (v5 != *a2)
    {
      v6 = bTAdvChans[v4];
      v7 = *a2 + 8;
      do
      {
        if (*(v7 + 8) == v6)
        {
          std::vector<double>::push_back[abi:ne200100](&v28, v7);
          v5 = a2[1];
        }

        v7 += 24;
      }

      while (v7 - 8 != v5);
      v3 = v28;
      if (v29 != v28)
      {
        v23 = 0;
        v24 = 0.0;
        v21 = 0;
        v22 = 0;
        std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v21, v28, v29, (v29 - v28) >> 3);
        if (v22 == v21)
        {
          v11 = 0.0;
        }

        else
        {
          v8 = 0.0;
          v9 = v21;
          do
          {
            v10 = *v9++;
            v8 = v8 + v10;
          }

          while (v9 != v22);
          v11 = v8 / (v22 - v21);
        }

        v24 = v11;
        if (v21)
        {
          v22 = v21;
          operator delete(v21);
        }

        std::vector<double>::push_back[abi:ne200100](&v25, &v24);
        v3 = v28;
      }
    }

    v29 = v3;
    ++v4;
  }

  while (v4 != 3);
  v12 = v26 - v25;
  switch(v12)
  {
    case 1:
      v14 = *v25;
      break;
    case 2:
      v14 = (*v25 + v25[1]) * 0.5;
      break;
    case 3:
      v14 = *v25;
      v13 = v25[1];
      v15 = v25[2];
      if ((*v25 < v13 || v14 > v15) && (v14 > v13 || v14 < v15))
      {
        v18 = v14 > v13;
        v19 = v14 < v13;
        if (v13 > v15)
        {
          v18 = 1;
        }

        if (v13 < v15)
        {
          v19 = 1;
        }

        if (v18 && v19)
        {
          v14 = v25[2];
        }

        else
        {
          v14 = v25[1];
        }
      }

      break;
    default:
      v14 = -200.0;
      if (!v25)
      {
        goto LABEL_43;
      }

      break;
  }

  v26 = v25;
  operator delete(v25);
  v3 = v28;
LABEL_43:
  if (v3)
  {
    v29 = v3;
    operator delete(v3);
  }

  return v14;
}

void sub_230EE0D48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

double BtProxOlympicFilter::FilterSamples(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 3);
  if (v4 <= 2 * *(a1 + 32))
  {
    if (v2 == v3)
    {
      return 0.0;
    }

    v16 = 0;
    v17 = 0;
    v18 = 0;
    std::vector<BtProxData>::__init_with_size[abi:ne200100]<BtProxData*,BtProxData*>(&v16, v3, v2, v4);
    if (v17 == v16)
    {
      v14 = 0.0;
      if (!v16)
      {
        return v14;
      }
    }

    else
    {
      v12 = 0.0;
      v13 = v16;
      do
      {
        v12 = v12 + v13[1];
        v13 += 3;
      }

      while (v13 != v17);
      v14 = v12 / (0xAAAAAAAAAAAAAAABLL * (v17 - v16));
      if (!v16)
      {
        return v14;
      }
    }

    v17 = v16;
    operator delete(v16);
    return v14;
  }

  v19 = BtProximityFilterBase::RssiCompare;
  v7 = 126 - 2 * __clz(v4);
  if (v2 == v3)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(BtProxData,BtProxData),BtProxData*,false>(v3, v2, &v19, v8, 1);
  v9 = *(a1 + 32);
  v10 = (v3 + 24 * v9);
  v11 = 0.0;
  while (v10 != (v2 - 24 * v9))
  {
    v11 = v11 + v10->n128_f64[1];
    v10 = (v10 + 24);
  }

  return v11 / (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) - 2 * v9);
}

double BtProxRayleighFilter::FilterSamples(uint64_t a1, uint64_t *a2)
{
  __p = 0;
  v17 = 0;
  v18 = 0;
  v2 = *a2;
  if (a2[1] == *a2)
  {
    return 0.0;
  }

  v4 = 0;
  v5 = 8;
  do
  {
    v15 = __exp10(*(v2 + v5) / 10.0);
    std::vector<double>::push_back[abi:ne200100](&__p, &v15);
    ++v4;
    v2 = *a2;
    v5 += 24;
  }

  while (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) > v4);
  v13 = 0;
  v14 = 0;
  v12 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v12, __p, v17, (v17 - __p) >> 3);
  if (v13 == v12)
  {
    v9 = 0.0;
    if (v12)
    {
LABEL_8:
      v13 = v12;
      operator delete(v12);
    }
  }

  else
  {
    v6 = 0.0;
    v7 = v12;
    do
    {
      v8 = *v7++;
      v6 = v6 + v8;
    }

    while (v7 != v13);
    v9 = v6 / (v13 - v12) * 0.797884561;
    if (v12)
    {
      goto LABEL_8;
    }
  }

  v10 = log10(v9) * 10.0;
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  return v10;
}

void sub_230EE1024(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<BtProxData>::__init_with_size[abi:ne200100]<BtProxData*,BtProxData*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<BtProxData>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_230EE13B4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(BtProxData,BtProxData),BtProxData*,false>(uint64_t a1, __n128 *a2, uint64_t (**a3)(__int128 *, __int128 *), uint64_t a4, char a5)
{
LABEL_1:
  v8 = &a2[-2].n128_i8[8];
  v9 = a2 - 3;
  v10 = &a2[-5].n128_i8[8];
  v11 = a1;
LABEL_2:
  v12 = 1 - a4;
  while (1)
  {
    a1 = v11;
    v13 = v12;
    v14 = a2 - v11;
    v15 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v11) >> 3);
    if (v15 > 2)
    {
      break;
    }

    if (v15 < 2)
    {
      return;
    }

    if (v15 == 2)
    {
      v182 = *a3;
      v183 = *(&a2[-2] + 8);
      v198 = a2[-1].n128_u64[1];
      v197 = v183;
      v184 = *v11;
      v196 = *(v11 + 2);
      v195 = v184;
      if (!v182(&v197, &v195))
      {
        return;
      }

LABEL_78:
      v185 = *v11;
      v198 = *(v11 + 2);
      v197 = v185;
      v186 = *v8;
      *(v11 + 2) = a2[-1].n128_u64[1];
      *v11 = v186;
      *v8 = v197;
      v167 = v198;
      goto LABEL_79;
    }

LABEL_10:
    if (v14 <= 575)
    {
      if (a5)
      {
        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(BtProxData,BtProxData),BtProxData*>(v11, a2, a3);
      }

      else
      {
        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(BtProxData,BtProxData),BtProxData*>(v11, a2, a3);
      }

      return;
    }

    if (v13 == 1)
    {
      if (v11 != a2)
      {
        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(BtProxData,BtProxData),BtProxData*,BtProxData*>(v11, a2, a2, a3);
      }

      return;
    }

    v16 = v15 >> 1;
    v17 = v11 + 24 * (v15 >> 1);
    v18 = *a3;
    if (v14 >= 0xC01)
    {
      v19 = *v17;
      v198 = *(v17 + 2);
      v197 = v19;
      v20 = *v11;
      v196 = *(v11 + 2);
      v195 = v20;
      v21 = v18(&v197, &v195);
      v22 = *a3;
      if (v21)
      {
        v23 = *v8;
        v198 = a2[-1].n128_u64[1];
        v197 = v23;
        v24 = *v17;
        v196 = *(v17 + 2);
        v195 = v24;
        if (v22(&v197, &v195))
        {
          v25 = *v11;
          v198 = *(v11 + 2);
          v197 = v25;
          v26 = *v8;
          *(v11 + 2) = a2[-1].n128_u64[1];
          *v11 = v26;
          goto LABEL_27;
        }

        v55 = *v11;
        v198 = *(v11 + 2);
        v197 = v55;
        v56 = *v17;
        *(v11 + 2) = *(v17 + 2);
        *v11 = v56;
        v57 = v197;
        *(v17 + 2) = v198;
        *v17 = v57;
        v58 = *a3;
        v59 = *v8;
        v198 = a2[-1].n128_u64[1];
        v197 = v59;
        v60 = *v17;
        v196 = *(v17 + 2);
        v195 = v60;
        if (v58(&v197, &v195))
        {
          v61 = *v17;
          v198 = *(v17 + 2);
          v197 = v61;
          v62 = *v8;
          *(v17 + 2) = a2[-1].n128_u64[1];
          *v17 = v62;
LABEL_27:
          *v8 = v197;
          a2[-1].n128_u64[1] = v198;
        }
      }

      else
      {
        v35 = *v8;
        v198 = a2[-1].n128_u64[1];
        v197 = v35;
        v36 = *v17;
        v196 = *(v17 + 2);
        v195 = v36;
        if (v22(&v197, &v195))
        {
          v37 = *v17;
          v198 = *(v17 + 2);
          v197 = v37;
          v38 = *v8;
          *(v17 + 2) = a2[-1].n128_u64[1];
          *v17 = v38;
          *v8 = v197;
          a2[-1].n128_u64[1] = v198;
          v39 = *a3;
          v40 = *v17;
          v198 = *(v17 + 2);
          v197 = v40;
          v41 = *v11;
          v196 = *(v11 + 2);
          v195 = v41;
          if (v39(&v197, &v195))
          {
            v42 = *v11;
            v198 = *(v11 + 2);
            v197 = v42;
            v43 = *v17;
            *(v11 + 2) = *(v17 + 2);
            *v11 = v43;
            v44 = v197;
            *(v17 + 2) = v198;
            *v17 = v44;
          }
        }
      }

      v63 = v11 + 24 * v16;
      v64 = v63 - 24;
      v65 = *a3;
      v66 = *(v63 - 24);
      v198 = *(v63 - 1);
      v197 = v66;
      v195 = *(a1 + 24);
      v196 = *(a1 + 40);
      v67 = v65(&v197, &v195);
      v68 = *a3;
      if (v67)
      {
        v69 = *v9;
        v198 = a2[-2].n128_u64[0];
        v197 = v69;
        v70 = *v64;
        v196 = *(v64 + 2);
        v195 = v70;
        if (v68(&v197, &v195))
        {
          v71 = *(a1 + 40);
          v72 = *(a1 + 24);
          v73 = a2[-2].n128_u64[0];
          *(a1 + 24) = *v9;
          *(a1 + 40) = v73;
          *v9 = v72;
          goto LABEL_39;
        }

        v197 = *(a1 + 24);
        v91 = v197;
        v198 = *(a1 + 40);
        v92 = v198;
        v93 = *(v64 + 2);
        *(a1 + 24) = *v64;
        *(a1 + 40) = v93;
        *(v64 + 2) = v92;
        *v64 = v91;
        v94 = *a3;
        v95 = *v9;
        v198 = a2[-2].n128_u64[0];
        v197 = v95;
        v96 = *v64;
        v196 = *(v64 + 2);
        v195 = v96;
        if (v94(&v197, &v195))
        {
          v97 = *v64;
          v198 = *(v64 + 2);
          v197 = v97;
          v98 = *v9;
          *(v64 + 2) = a2[-2].n128_u64[0];
          *v64 = v98;
          *v9 = v197;
          v71 = v198;
LABEL_39:
          a2[-2].n128_u64[0] = v71;
        }
      }

      else
      {
        v74 = *v9;
        v198 = a2[-2].n128_u64[0];
        v197 = v74;
        v75 = *v64;
        v196 = *(v64 + 2);
        v195 = v75;
        if (v68(&v197, &v195))
        {
          v76 = *v64;
          v198 = *(v64 + 2);
          v197 = v76;
          v77 = *v9;
          *(v64 + 2) = a2[-2].n128_u64[0];
          *v64 = v77;
          *v9 = v197;
          a2[-2].n128_u64[0] = v198;
          v78 = *a3;
          v79 = *v64;
          v198 = *(v64 + 2);
          v197 = v79;
          v195 = *(a1 + 24);
          v196 = *(a1 + 40);
          if (v78(&v197, &v195))
          {
            v197 = *(a1 + 24);
            v80 = v197;
            v198 = *(a1 + 40);
            v81 = v198;
            v82 = *(v64 + 2);
            *(a1 + 24) = *v64;
            *(a1 + 40) = v82;
            *(v64 + 2) = v81;
            *v64 = v80;
          }
        }
      }

      v99 = a1 + 24 * v16;
      v100 = *a3;
      v101 = *(v99 + 24);
      v198 = *(v99 + 40);
      v197 = v101;
      v195 = *(a1 + 48);
      v196 = *(a1 + 64);
      v102 = v100(&v197, &v195);
      v103 = *a3;
      if (v102)
      {
        v104 = *v10;
        v198 = a2[-4].n128_u64[1];
        v197 = v104;
        v105 = *(v99 + 24);
        v196 = *(v99 + 40);
        v195 = v105;
        if (v103(&v197, &v195))
        {
          v106 = *(a1 + 64);
          v107 = *(a1 + 48);
          v108 = a2[-4].n128_u64[1];
          *(a1 + 48) = *v10;
          *(a1 + 64) = v108;
          *v10 = v107;
          goto LABEL_48;
        }

        v197 = *(a1 + 48);
        v118 = v197;
        v198 = *(a1 + 64);
        v119 = v198;
        v120 = *(v99 + 40);
        *(a1 + 48) = *(v99 + 24);
        *(a1 + 64) = v120;
        *(v99 + 40) = v119;
        *(v99 + 24) = v118;
        v121 = *a3;
        v122 = *v10;
        v198 = a2[-4].n128_u64[1];
        v197 = v122;
        v123 = *(v99 + 24);
        v196 = *(v99 + 40);
        v195 = v123;
        if (v121(&v197, &v195))
        {
          v124 = *(v99 + 24);
          v198 = *(v99 + 40);
          v197 = v124;
          v125 = *v10;
          *(v99 + 40) = a2[-4].n128_u64[1];
          *(v99 + 24) = v125;
          *v10 = v197;
          v106 = v198;
LABEL_48:
          a2[-4].n128_u64[1] = v106;
        }
      }

      else
      {
        v109 = *v10;
        v198 = a2[-4].n128_u64[1];
        v197 = v109;
        v110 = *(v99 + 24);
        v196 = *(v99 + 40);
        v195 = v110;
        if (v103(&v197, &v195))
        {
          v111 = *(v99 + 24);
          v198 = *(v99 + 40);
          v197 = v111;
          v112 = *v10;
          *(v99 + 40) = a2[-4].n128_u64[1];
          *(v99 + 24) = v112;
          *v10 = v197;
          a2[-4].n128_u64[1] = v198;
          v113 = *a3;
          v114 = *(v99 + 24);
          v198 = *(v99 + 40);
          v197 = v114;
          v195 = *(a1 + 48);
          v196 = *(a1 + 64);
          if (v113(&v197, &v195))
          {
            v197 = *(a1 + 48);
            v115 = v197;
            v198 = *(a1 + 64);
            v116 = v198;
            v117 = *(v99 + 40);
            *(a1 + 48) = *(v99 + 24);
            *(a1 + 64) = v117;
            *(v99 + 40) = v116;
            *(v99 + 24) = v115;
          }
        }
      }

      v126 = *a3;
      v127 = *v17;
      v198 = *(v17 + 2);
      v197 = v127;
      v128 = *v64;
      v196 = *(v64 + 2);
      v195 = v128;
      v129 = v126(&v197, &v195);
      v130 = *a3;
      if (v129)
      {
        v131 = *(v99 + 24);
        v198 = *(v99 + 40);
        v197 = v131;
        v132 = *v17;
        v196 = *(v17 + 2);
        v195 = v132;
        if (v130(&v197, &v195))
        {
          v133 = *v64;
          v198 = *(v64 + 2);
          v197 = v133;
          *v64 = *(v99 + 24);
          *(v64 + 2) = *(v99 + 40);
          goto LABEL_57;
        }

        v143 = *v64;
        v198 = *(v64 + 2);
        v197 = v143;
        *v64 = *v17;
        *(v64 + 2) = *(v17 + 2);
        v144 = v197;
        *(v17 + 2) = v198;
        *v17 = v144;
        v145 = *a3;
        v146 = *(v99 + 24);
        v198 = *(v99 + 40);
        v197 = v146;
        v147 = *v17;
        v196 = *(v17 + 2);
        v195 = v147;
        if (v145(&v197, &v195))
        {
          v148 = *v17;
          v198 = *(v17 + 2);
          v197 = v148;
          *v17 = *(v99 + 24);
          *(v17 + 2) = *(v99 + 40);
LABEL_57:
          v149 = v197;
          *(v99 + 40) = v198;
          *(v99 + 24) = v149;
        }
      }

      else
      {
        v134 = *(v99 + 24);
        v198 = *(v99 + 40);
        v197 = v134;
        v135 = *v17;
        v196 = *(v17 + 2);
        v195 = v135;
        if (v130(&v197, &v195))
        {
          v136 = *v17;
          v198 = *(v17 + 2);
          v197 = v136;
          *v17 = *(v99 + 24);
          *(v17 + 2) = *(v99 + 40);
          v137 = v197;
          *(v99 + 40) = v198;
          *(v99 + 24) = v137;
          v138 = *a3;
          v139 = *v17;
          v198 = *(v17 + 2);
          v197 = v139;
          v140 = *v64;
          v196 = *(v64 + 2);
          v195 = v140;
          if (v138(&v197, &v195))
          {
            v141 = *v64;
            v198 = *(v64 + 2);
            v197 = v141;
            *v64 = *v17;
            *(v64 + 2) = *(v17 + 2);
            v142 = v197;
            *(v17 + 2) = v198;
            *v17 = v142;
          }
        }
      }

      v150 = *a1;
      v198 = *(a1 + 16);
      v197 = v150;
      v151 = *v17;
      *(a1 + 16) = *(v17 + 2);
      *a1 = v151;
      v152 = v197;
      *(v17 + 2) = v198;
      *v17 = v152;
      goto LABEL_59;
    }

    v27 = *v11;
    v198 = *(v11 + 2);
    v197 = v27;
    v28 = *v17;
    v196 = *(v17 + 2);
    v195 = v28;
    v29 = v18(&v197, &v195);
    v30 = *a3;
    if (v29)
    {
      v31 = *v8;
      v198 = a2[-1].n128_u64[1];
      v197 = v31;
      v32 = *v11;
      v196 = *(v11 + 2);
      v195 = v32;
      if (v30(&v197, &v195))
      {
        v33 = *v17;
        v198 = *(v17 + 2);
        v197 = v33;
        v34 = *v8;
        *(v17 + 2) = a2[-1].n128_u64[1];
        *v17 = v34;
LABEL_36:
        *v8 = v197;
        a2[-1].n128_u64[1] = v198;
        goto LABEL_59;
      }

      v83 = *v17;
      v198 = *(v17 + 2);
      v197 = v83;
      v84 = *v11;
      *(v17 + 2) = *(v11 + 2);
      *v17 = v84;
      v85 = v197;
      *(v11 + 2) = v198;
      *v11 = v85;
      v86 = *a3;
      v87 = *v8;
      v198 = a2[-1].n128_u64[1];
      v197 = v87;
      v88 = *v11;
      v196 = *(v11 + 2);
      v195 = v88;
      if (v86(&v197, &v195))
      {
        v89 = *v11;
        v198 = *(v11 + 2);
        v197 = v89;
        v90 = *v8;
        *(v11 + 2) = a2[-1].n128_u64[1];
        *v11 = v90;
        goto LABEL_36;
      }
    }

    else
    {
      v45 = *v8;
      v198 = a2[-1].n128_u64[1];
      v197 = v45;
      v46 = *v11;
      v196 = *(v11 + 2);
      v195 = v46;
      if (v30(&v197, &v195))
      {
        v47 = *v11;
        v198 = *(v11 + 2);
        v197 = v47;
        v48 = *v8;
        *(v11 + 2) = a2[-1].n128_u64[1];
        *v11 = v48;
        *v8 = v197;
        a2[-1].n128_u64[1] = v198;
        v49 = *a3;
        v50 = *v11;
        v198 = *(v11 + 2);
        v197 = v50;
        v51 = *v17;
        v196 = *(v17 + 2);
        v195 = v51;
        if (v49(&v197, &v195))
        {
          v52 = *v17;
          v198 = *(v17 + 2);
          v197 = v52;
          v53 = *v11;
          *(v17 + 2) = *(v11 + 2);
          *v17 = v53;
          v54 = v197;
          *(v11 + 2) = v198;
          *v11 = v54;
        }
      }
    }

LABEL_59:
    if ((a5 & 1) == 0)
    {
      v153 = *a3;
      v154 = *(a1 - 24);
      v198 = *(a1 - 8);
      v197 = v154;
      v155 = *a1;
      v196 = *(a1 + 16);
      v195 = v155;
      if ((v153(&v197, &v195) & 1) == 0)
      {
        v11 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,BtProxData *,BOOL (*&)(BtProxData,BtProxData)>(a1, a2, a3);
        goto LABEL_66;
      }
    }

    v156 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,BtProxData *,BOOL (*&)(BtProxData,BtProxData)>(a1, a2, a3);
    if ((v157 & 1) == 0)
    {
      goto LABEL_64;
    }

    v158 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(BtProxData,BtProxData),BtProxData*>(a1, v156, a3);
    v11 = &v156[1].n128_i8[8];
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(BtProxData,BtProxData),BtProxData*>(&v156[1].n128_i64[1], a2, a3))
    {
      a4 = -v13;
      a2 = v156;
      if (v158)
      {
        return;
      }

      goto LABEL_1;
    }

    v12 = v13 + 1;
    if (!v158)
    {
LABEL_64:
      std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(BtProxData,BtProxData),BtProxData*,false>(a1, v156, a3, -v13, a5 & 1);
      v11 = &v156[1].n128_i8[8];
LABEL_66:
      a5 = 0;
      a4 = -v13;
      goto LABEL_2;
    }
  }

  if (v15 != 3)
  {
    if (v15 == 4)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(BtProxData,BtProxData),BtProxData*,0>(v11, (v11 + 24), v11 + 3, (a2 - 24), a3);
      return;
    }

    if (v15 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(BtProxData,BtProxData),BtProxData*,0>(v11, (v11 + 24), v11 + 3, (v11 + 72), a3);
      v170 = *a3;
      v171 = *(&a2[-2] + 8);
      v198 = a2[-1].n128_u64[1];
      v197 = v171;
      v195 = *(v11 + 72);
      v196 = *(v11 + 11);
      if (v170(&v197, &v195))
      {
        v172 = *(v11 + 11);
        v173 = *(v11 + 72);
        v174 = a2[-1].n128_u64[1];
        *(v11 + 72) = *v8;
        *(v11 + 11) = v174;
        *v8 = v173;
        a2[-1].n128_u64[1] = v172;
        v175 = *a3;
        v197 = *(v11 + 72);
        v198 = *(v11 + 11);
        v195 = v11[3];
        v196 = *(v11 + 8);
        if (v175(&v197, &v195))
        {
          v176 = *(v11 + 8);
          v177 = v11[3];
          v11[3] = *(v11 + 72);
          v178 = *(v11 + 11);
          *(v11 + 8) = v178;
          *(v11 + 72) = v177;
          *(v11 + 11) = v176;
          v179 = *a3;
          v197 = v11[3];
          v198 = v178;
          v195 = *(v11 + 24);
          v196 = *(v11 + 5);
          if (v179(&v197, &v195))
          {
            v180 = *(v11 + 5);
            v181 = *(v11 + 24);
            *(v11 + 24) = v11[3];
            *(v11 + 5) = *(v11 + 8);
            v11[3] = v181;
            *(v11 + 8) = v180;
LABEL_87:
            v191 = *a3;
            v197 = *(v11 + 24);
            v198 = *(v11 + 5);
            v192 = *v11;
            v196 = *(v11 + 2);
            v195 = v192;
            if (v191(&v197, &v195))
            {
              v193 = *v11;
              v198 = *(v11 + 2);
              v197 = v193;
              *v11 = *(v11 + 24);
              *(v11 + 2) = *(v11 + 5);
              *(v11 + 24) = v197;
              *(v11 + 5) = v198;
            }
          }
        }
      }

      return;
    }

    goto LABEL_10;
  }

  v159 = *a3;
  v197 = *(v11 + 24);
  v198 = *(v11 + 5);
  v160 = *v11;
  v196 = *(v11 + 2);
  v195 = v160;
  v161 = v159(&v197, &v195);
  v162 = *a3;
  if (v161)
  {
    v163 = *v8;
    v198 = a2[-1].n128_u64[1];
    v197 = v163;
    v195 = *(v11 + 24);
    v196 = *(v11 + 5);
    if (v162(&v197, &v195))
    {
      goto LABEL_78;
    }

    v164 = *v11;
    v198 = *(v11 + 2);
    v197 = v164;
    *v11 = *(v11 + 24);
    *(v11 + 2) = *(v11 + 5);
    *(v11 + 24) = v197;
    *(v11 + 5) = v198;
    v165 = *a3;
    v166 = *v8;
    v198 = a2[-1].n128_u64[1];
    v197 = v166;
    v195 = *(v11 + 24);
    v196 = *(v11 + 5);
    if (!v165(&v197, &v195))
    {
      return;
    }

    v167 = *(v11 + 5);
    v168 = *(v11 + 24);
    v169 = a2[-1].n128_u64[1];
    *(v11 + 24) = *v8;
    *(v11 + 5) = v169;
    *v8 = v168;
LABEL_79:
    a2[-1].n128_u64[1] = v167;
    return;
  }

  v187 = *v8;
  v198 = a2[-1].n128_u64[1];
  v197 = v187;
  v195 = *(v11 + 24);
  v196 = *(v11 + 5);
  if (v162(&v197, &v195))
  {
    v188 = *(v11 + 5);
    v189 = *(v11 + 24);
    v190 = a2[-1].n128_u64[1];
    *(v11 + 24) = *v8;
    *(v11 + 5) = v190;
    *v8 = v189;
    a2[-1].n128_u64[1] = v188;
    goto LABEL_87;
  }
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(BtProxData,BtProxData),BtProxData*,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, unsigned int (**a5)(__n128 *, __n128 *))
{
  v10 = *a5;
  v42 = *a2;
  v43 = a2[1].n128_u64[0];
  v40 = *a1;
  v41 = a1[1].n128_u64[0];
  v11 = v10(&v42, &v40);
  v12 = *a5;
  if (v11)
  {
    v42 = *a3;
    v43 = a3[1].n128_u64[0];
    v40 = *a2;
    v41 = a2[1].n128_u64[0];
    if (v12(&v42, &v40))
    {
      v13 = a1[1].n128_u64[0];
      v14 = *a1;
      v15 = a3[1].n128_u64[0];
      *a1 = *a3;
      a1[1].n128_u64[0] = v15;
LABEL_9:
      *a3 = v14;
      a3[1].n128_u64[0] = v13;
      goto LABEL_10;
    }

    v23 = a1[1].n128_u64[0];
    v24 = *a1;
    v25 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v25;
    *a2 = v24;
    a2[1].n128_u64[0] = v23;
    v26 = *a5;
    v42 = *a3;
    v43 = a3[1].n128_u64[0];
    v40 = *a2;
    v41 = a2[1].n128_u64[0];
    if (v26(&v42, &v40))
    {
      v13 = a2[1].n128_u64[0];
      v14 = *a2;
      v27 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v27;
      goto LABEL_9;
    }
  }

  else
  {
    v42 = *a3;
    v43 = a3[1].n128_u64[0];
    v40 = *a2;
    v41 = a2[1].n128_u64[0];
    if (v12(&v42, &v40))
    {
      v16 = a2[1].n128_u64[0];
      v17 = *a2;
      v18 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v18;
      *a3 = v17;
      a3[1].n128_u64[0] = v16;
      v19 = *a5;
      v42 = *a2;
      v43 = a2[1].n128_u64[0];
      v40 = *a1;
      v41 = a1[1].n128_u64[0];
      if (v19(&v42, &v40))
      {
        v20 = a1[1].n128_u64[0];
        v21 = *a1;
        v22 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v22;
        *a2 = v21;
        a2[1].n128_u64[0] = v20;
      }
    }
  }

LABEL_10:
  v28 = *a5;
  v42 = *a4;
  v43 = a4[1].n128_u64[0];
  v40 = *a3;
  v41 = a3[1].n128_u64[0];
  if (v28(&v42, &v40))
  {
    v30 = a3[1].n128_u64[0];
    v31 = *a3;
    v32 = a4[1].n128_u64[0];
    *a3 = *a4;
    a3[1].n128_u64[0] = v32;
    *a4 = v31;
    a4[1].n128_u64[0] = v30;
    v33 = *a5;
    v42 = *a3;
    v43 = a3[1].n128_u64[0];
    v40 = *a2;
    v41 = a2[1].n128_u64[0];
    if (v33(&v42, &v40))
    {
      v34 = a2[1].n128_u64[0];
      v35 = *a2;
      v36 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v36;
      *a3 = v35;
      a3[1].n128_u64[0] = v34;
      v37 = *a5;
      v42 = *a2;
      v43 = a2[1].n128_u64[0];
      v40 = *a1;
      v41 = a1[1].n128_u64[0];
      if (v37(&v42, &v40))
      {
        v38 = a1[1].n128_u64[0];
        result = *a1;
        v39 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v39;
        *a2 = result;
        a2[1].n128_u64[0] = v38;
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(BtProxData,BtProxData),BtProxData*>(uint64_t result, uint64_t a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  if (result != a2)
  {
    v24 = v3;
    v25 = v4;
    v6 = result;
    v7 = result + 24;
    if (result + 24 != a2)
    {
      v9 = 0;
      v10 = result;
      do
      {
        v11 = v10;
        v10 = v7;
        v12 = *a3;
        v22 = *v10;
        v23 = *(v10 + 16);
        v13 = *v11;
        v21 = *(v11 + 16);
        v20 = v13;
        result = v12(&v22, &v20);
        if (result)
        {
          v22 = *v10;
          v23 = *(v10 + 16);
          v14 = v9;
          while (1)
          {
            v15 = v6 + v14;
            *(v15 + 24) = *(v6 + v14);
            *(v15 + 40) = *(v6 + v14 + 16);
            if (!v14)
            {
              break;
            }

            v16 = *a3;
            v20 = v22;
            v21 = v23;
            v18 = *(v15 - 24);
            v19 = *(v15 - 8);
            result = v16(&v20, &v18);
            v14 -= 24;
            if ((result & 1) == 0)
            {
              v17 = v6 + v14 + 24;
              goto LABEL_10;
            }
          }

          v17 = v6;
LABEL_10:
          *v17 = v22;
          *(v17 + 16) = v23;
        }

        v7 = v10 + 24;
        v9 += 24;
      }

      while (v10 + 24 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(BtProxData,BtProxData),BtProxData*>(uint64_t result, uint64_t a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  if (result != a2)
  {
    v21 = v3;
    v22 = v4;
    v6 = result;
    for (i = result + 24; v6 + 24 != a2; i = v6 + 24)
    {
      v9 = v6;
      v6 = i;
      v10 = *a3;
      v19 = *v6;
      v20 = *(v6 + 16);
      v11 = *v9;
      v18 = *(v9 + 16);
      v17 = v11;
      result = v10(&v19, &v17);
      if (result)
      {
        v19 = *v6;
        v20 = *(v6 + 16);
        v12 = v6;
        do
        {
          v13 = v12 - 24;
          *v12 = *(v12 - 24);
          *(v12 + 16) = *(v12 - 8);
          v14 = *a3;
          v17 = v19;
          v18 = v20;
          v15 = *(v12 - 48);
          v16 = *(v12 - 32);
          result = v14(&v17, &v15);
          v12 = v13;
        }

        while ((result & 1) != 0);
        *v13 = v19;
        *(v13 + 16) = v20;
      }
    }
  }

  return result;
}

__int128 *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,BtProxData *,BOOL (*&)(BtProxData,BtProxData)>(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v4 = a2;
  v31 = *a1;
  v32 = *(a1 + 2);
  v6 = *a3;
  v33 = *a1;
  v34 = *(a1 + 2);
  v29 = *(a2 - 24);
  v30 = *(a2 - 1);
  if (v6(&v33, &v29))
  {
    v7 = a1;
    do
    {
      v8 = (v7 + 24);
      v9 = *a3;
      v33 = v31;
      v34 = v32;
      v29 = *(v7 + 24);
      v30 = *(v7 + 5);
      v10 = v9(&v33, &v29);
      v7 = v8;
    }

    while ((v10 & 1) == 0);
  }

  else
  {
    v11 = (a1 + 24);
    do
    {
      v8 = v11;
      if (v11 >= v4)
      {
        break;
      }

      v12 = *a3;
      v33 = v31;
      v34 = v32;
      v29 = *v8;
      v30 = *(v8 + 2);
      v13 = v12(&v33, &v29);
      v11 = (v8 + 24);
    }

    while (!v13);
  }

  if (v8 >= v4)
  {
    v14 = v4;
  }

  else
  {
    do
    {
      v14 = (v4 - 24);
      v15 = *a3;
      v33 = v31;
      v34 = v32;
      v29 = *(v4 - 24);
      v30 = *(v4 - 1);
      v4 = (v4 - 24);
    }

    while ((v15(&v33, &v29) & 1) != 0);
  }

  while (v8 < v14)
  {
    v16 = *v8;
    v34 = *(v8 + 2);
    v33 = v16;
    v17 = *v14;
    *(v8 + 2) = *(v14 + 2);
    *v8 = v17;
    v18 = v33;
    *(v14 + 2) = v34;
    *v14 = v18;
    do
    {
      v19 = *(v8 + 24);
      v20 = *(v8 + 5);
      v8 = (v8 + 24);
      v21 = *a3;
      v33 = v31;
      v34 = v32;
      v29 = v19;
      v30 = v20;
    }

    while (!v21(&v33, &v29));
    do
    {
      v33 = v31;
      v34 = v32;
      v22 = *(v14 - 24);
      v23 = *(v14 - 1);
      v14 = (v14 - 24);
      v24 = *a3;
      v30 = v23;
      v29 = v22;
    }

    while ((v24(&v33, &v29) & 1) != 0);
  }

  v25 = (v8 - 24);
  if ((v8 - 24) != a1)
  {
    v26 = *v25;
    *(a1 + 2) = *(v8 - 1);
    *a1 = v26;
  }

  v27 = v31;
  *(v8 - 1) = v32;
  *v25 = v27;
  return v8;
}

uint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,BtProxData *,BOOL (*&)(BtProxData,BtProxData)>(__int128 *a1, unint64_t a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v6 = 0;
  v29 = *a1;
  v30 = *(a1 + 2);
  do
  {
    v7 = *a3;
    v31 = *(a1 + v6 + 24);
    v32 = *(a1 + v6 + 40);
    v27 = v29;
    v28 = v30;
    v6 += 24;
  }

  while ((v7(&v31, &v27) & 1) != 0);
  v8 = (a1 + v6);
  v9 = a1 + v6 - 24;
  if (v6 == 24)
  {
    while (v8 < a2)
    {
      v12 = *a3;
      v10 = a2 - 24;
      v31 = *(a2 - 24);
      v32 = *(a2 - 8);
      v27 = v29;
      v28 = v30;
      a2 -= 24;
      if (v12(&v31, &v27))
      {
        goto LABEL_9;
      }
    }

    v10 = a2;
  }

  else
  {
    do
    {
      v10 = a2 - 24;
      v11 = *a3;
      v31 = *(a2 - 24);
      v32 = *(a2 - 8);
      v27 = v29;
      v28 = v30;
      a2 -= 24;
    }

    while (!v11(&v31, &v27));
  }

LABEL_9:
  if (v8 < v10)
  {
    v13 = v8;
    v14 = v10;
    do
    {
      v31 = *v13;
      v15 = v31;
      v32 = *(v13 + 2);
      v16 = v32;
      v17 = *(v14 + 16);
      *v13 = *v14;
      *(v13 + 2) = v17;
      *(v14 + 16) = v16;
      *v14 = v15;
      do
      {
        v18 = *(v13 + 24);
        v19 = *(v13 + 5);
        v13 = (v13 + 24);
        v20 = *a3;
        v31 = v18;
        v32 = v19;
        v27 = v29;
        v28 = v30;
      }

      while ((v20(&v31, &v27) & 1) != 0);
      do
      {
        v21 = *(v14 - 24);
        v22 = *(v14 - 8);
        v14 -= 24;
        v23 = *a3;
        v32 = v22;
        v31 = v21;
        v27 = v29;
        v28 = v30;
      }

      while (!v23(&v31, &v27));
    }

    while (v13 < v14);
    v9 = v13 - 24;
  }

  if (v9 != a1)
  {
    v24 = *v9;
    *(a1 + 2) = *(v9 + 16);
    *a1 = v24;
  }

  v25 = v29;
  *(v9 + 16) = v30;
  *v9 = v25;
  return v9;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(BtProxData,BtProxData),BtProxData*>(uint64_t a1, __n128 *a2, unsigned int (**a3)(__n128 *, __n128 *))
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v24 = (a2 - 24);
        v25 = *a3;
        v70 = *(a1 + 24);
        v71 = *(a1 + 40);
        v68 = *a1;
        v69 = *(a1 + 16);
        v26 = v25(&v70, &v68);
        v27 = *a3;
        if (v26)
        {
          v70 = *v24;
          v71 = v24[1].n128_i64[0];
          v68 = *(a1 + 24);
          v69 = *(a1 + 40);
          if (v27(&v70, &v68))
          {
            v28 = *(a1 + 16);
            v29 = *a1;
            v30 = v24[1].n128_i64[0];
            *a1 = *v24;
            *(a1 + 16) = v30;
          }

          else
          {
            v49 = *(a1 + 16);
            v50 = *a1;
            *a1 = *(a1 + 24);
            *(a1 + 16) = *(a1 + 40);
            *(a1 + 24) = v50;
            *(a1 + 40) = v49;
            v51 = *a3;
            v70 = *v24;
            v71 = v24[1].n128_i64[0];
            v68 = *(a1 + 24);
            v69 = *(a1 + 40);
            if (!v51(&v70, &v68))
            {
              return 1;
            }

            v28 = *(a1 + 40);
            v29 = *(a1 + 24);
            v52 = v24[1].n128_i64[0];
            *(a1 + 24) = *v24;
            *(a1 + 40) = v52;
          }

          *v24 = v29;
          v24[1].n128_u64[0] = v28;
          return 1;
        }

        v70 = *v24;
        v71 = v24[1].n128_i64[0];
        v68 = *(a1 + 24);
        v69 = *(a1 + 40);
        if (!v27(&v70, &v68))
        {
          return 1;
        }

        v37 = *(a1 + 40);
        v38 = *(a1 + 24);
        v39 = v24[1].n128_i64[0];
        *(a1 + 24) = *v24;
        *(a1 + 40) = v39;
        *v24 = v38;
        v24[1].n128_u64[0] = v37;
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(BtProxData,BtProxData),BtProxData*,0>(a1, (a1 + 24), (a1 + 48), (a2 - 24), a3);
        return 1;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(BtProxData,BtProxData),BtProxData*,0>(a1, (a1 + 24), (a1 + 48), (a1 + 72), a3);
        v12 = *a3;
        v70 = *(a2 - 24);
        v71 = a2[-1].n128_i64[1];
        v68 = *(a1 + 72);
        v69 = *(a1 + 88);
        if (!v12(&v70, &v68))
        {
          return 1;
        }

        v13 = &a2[-2].n128_i64[1];
        v14 = *(a1 + 88);
        v15 = *(a1 + 72);
        v16 = a2[-1].n128_i64[1];
        *(a1 + 72) = *(a2 - 24);
        *(a1 + 88) = v16;
        *v13 = v15;
        v13[2] = v14;
        v17 = *a3;
        v70 = *(a1 + 72);
        v71 = *(a1 + 88);
        v68 = *(a1 + 48);
        v69 = *(a1 + 64);
        if (!v17(&v70, &v68))
        {
          return 1;
        }

        v18 = *(a1 + 64);
        v19 = *(a1 + 48);
        *(a1 + 48) = *(a1 + 72);
        v20 = *(a1 + 88);
        *(a1 + 64) = v20;
        *(a1 + 72) = v19;
        *(a1 + 88) = v18;
        v21 = *a3;
        v70 = *(a1 + 48);
        v71 = v20;
        v68 = *(a1 + 24);
        v69 = *(a1 + 40);
        if (!v21(&v70, &v68))
        {
          return 1;
        }

        v22 = *(a1 + 40);
        v23 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v23;
        *(a1 + 64) = v22;
        break;
      default:
        goto LABEL_16;
    }

    v40 = *a3;
    v70 = *(a1 + 24);
    v71 = *(a1 + 40);
    v68 = *a1;
    v69 = *(a1 + 16);
    if (v40(&v70, &v68))
    {
      v41 = *(a1 + 16);
      v42 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v42;
      *(a1 + 40) = v41;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = *a3;
    v70 = *(a2 - 24);
    v71 = a2[-1].n128_i64[1];
    v68 = *a1;
    v69 = *(a1 + 16);
    if (v7(&v70, &v68))
    {
      v8 = (a2 - 24);
      v9 = *(a1 + 16);
      v10 = *a1;
      v11 = a2[-1].n128_i64[1];
      *a1 = *(a2 - 24);
      *(a1 + 16) = v11;
      *v8 = v10;
      v8[1].n128_u64[0] = v9;
    }

    return 1;
  }

LABEL_16:
  v31 = (a1 + 48);
  v32 = *a3;
  v70 = *(a1 + 24);
  v71 = *(a1 + 40);
  v68 = *a1;
  v69 = *(a1 + 16);
  v33 = v32(&v70, &v68);
  v34 = *a3;
  if (v33)
  {
    v70 = *v31;
    v71 = *(a1 + 64);
    v68 = *(a1 + 24);
    v69 = *(a1 + 40);
    if (v34(&v70, &v68))
    {
      v35 = *(a1 + 16);
      v36 = *a1;
      *a1 = *v31;
      *(a1 + 16) = *(a1 + 64);
    }

    else
    {
      v53 = *(a1 + 16);
      v54 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v54;
      *(a1 + 40) = v53;
      v55 = *a3;
      v70 = *v31;
      v71 = *(a1 + 64);
      v68 = *(a1 + 24);
      v69 = *(a1 + 40);
      if (!v55(&v70, &v68))
      {
        goto LABEL_33;
      }

      v35 = *(a1 + 40);
      v36 = *(a1 + 24);
      *(a1 + 24) = *v31;
      *(a1 + 40) = *(a1 + 64);
    }

    *v31 = v36;
    *(a1 + 64) = v35;
  }

  else
  {
    v70 = *v31;
    v71 = *(a1 + 64);
    v68 = *(a1 + 24);
    v69 = *(a1 + 40);
    if (v34(&v70, &v68))
    {
      v43 = *(a1 + 40);
      v44 = *(a1 + 24);
      *(a1 + 24) = *v31;
      v45 = *(a1 + 64);
      *(a1 + 40) = v45;
      *v31 = v44;
      *(a1 + 64) = v43;
      v46 = *a3;
      v70 = *(a1 + 24);
      v71 = v45;
      v68 = *a1;
      v69 = *(a1 + 16);
      if (v46(&v70, &v68))
      {
        v47 = *(a1 + 16);
        v48 = *a1;
        *a1 = *(a1 + 24);
        *(a1 + 16) = *(a1 + 40);
        *(a1 + 24) = v48;
        *(a1 + 40) = v47;
      }
    }
  }

LABEL_33:
  v56 = (a1 + 72);
  if ((a1 + 72) == a2)
  {
    return 1;
  }

  v57 = 0;
  v58 = 0;
  while (1)
  {
    v59 = *a3;
    v70 = *v56;
    v71 = v56[1].n128_i64[0];
    v60 = *v31;
    v69 = v31[1].n128_i64[0];
    v68 = v60;
    if (v59(&v70, &v68))
    {
      v70 = *v56;
      v71 = v56[1].n128_i64[0];
      v61 = v57;
      while (1)
      {
        v62 = a1 + v61;
        *(v62 + 72) = *(a1 + v61 + 48);
        *(v62 + 88) = *(a1 + v61 + 64);
        if (v61 == -48)
        {
          break;
        }

        v63 = *a3;
        v68 = v70;
        v69 = v71;
        v66 = *(v62 + 24);
        v67 = *(v62 + 40);
        v61 -= 24;
        if (((v63)(&v68, &v66) & 1) == 0)
        {
          v64 = a1 + v61 + 72;
          goto LABEL_41;
        }
      }

      v64 = a1;
LABEL_41:
      *v64 = v70;
      *(v64 + 16) = v71;
      if (++v58 == 8)
      {
        return &v56[1].n128_i8[8] == a2;
      }
    }

    v31 = v56;
    v57 += 24;
    v56 = (v56 + 24);
    if (v56 == a2)
    {
      return 1;
    }
  }
}

__n128 *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(BtProxData,BtProxData),BtProxData*,BtProxData*>(__n128 *a1, __n128 *a2, __n128 *a3, unsigned int (**a4)(__n128 *, __n128 *))
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 25)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = (a1 + 24 * v10);
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(BtProxData,BtProxData),BtProxData*>(a1, a4, v9, v12);
        v12 = (v12 - 24);
        --v11;
      }

      while (v11);
    }

    v13 = a2;
    if (a2 != a3)
    {
      v13 = a2;
      do
      {
        v14 = *a4;
        v26 = *v13;
        v27 = v13[1].n128_u64[0];
        v24 = *a1;
        v25 = a1[1].n128_u64[0];
        if (v14(&v26, &v24))
        {
          v15 = v13[1].n128_u64[0];
          v16 = *v13;
          v17 = a1[1].n128_u64[0];
          *v13 = *a1;
          v13[1].n128_u64[0] = v17;
          *a1 = v16;
          a1[1].n128_u64[0] = v15;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(BtProxData,BtProxData),BtProxData*>(a1, a4, v9, a1);
        }

        v13 = (v13 + 24);
      }

      while (v13 != a3);
    }

    if (v8 >= 25)
    {
      v18 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      v19 = (a2 - 24);
      do
      {
        v26 = *a1;
        v27 = a1[1].n128_u64[0];
        v20 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(BtProxData,BtProxData),BtProxData*>(a1, a4, v18);
        if (v19 == v20)
        {
          *v20 = v26;
          *(v20 + 2) = v27;
        }

        else
        {
          v21 = *v19;
          *(v20 + 2) = v19[1].n128_u64[0];
          *v20 = v21;
          *v19 = v26;
          v19[1].n128_u64[0] = v27;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(BtProxData,BtProxData),BtProxData*>(a1, v20 + 24, a4, 0xAAAAAAAAAAAAAAABLL * ((v20 + 24 - a1) >> 3));
        }

        v19 = (v19 - 24);
      }

      while (v18-- > 2);
    }

    return v13;
  }

  return a3;
}

__n128 std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(BtProxData,BtProxData),BtProxData*>(uint64_t a1, unsigned int (**a2)(__n128 *, __n128 *), uint64_t a3, __n128 *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v29 = v4;
    v30 = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 3)))
    {
      v12 = (0x5555555555555556 * ((a4 - a1) >> 3)) | 1;
      v13 = a1 + 24 * v12;
      v14 = 0x5555555555555556 * ((a4 - a1) >> 3) + 2;
      if (v14 < a3)
      {
        v15 = *a2;
        v27 = *v13;
        v28 = *(v13 + 16);
        v25 = *(v13 + 24);
        v26 = *(v13 + 40);
        if (v15(&v27, &v25))
        {
          v13 += 24;
          v12 = v14;
        }
      }

      v16 = *a2;
      v27 = *v13;
      v28 = *(v13 + 16);
      v25 = *v7;
      v26 = v7[1].n128_u64[0];
      if ((v16(&v27, &v25) & 1) == 0)
      {
        v27 = *v7;
        v28 = v7[1].n128_u64[0];
        do
        {
          v18 = v13;
          v19 = *v13;
          v7[1].n128_u64[0] = *(v13 + 16);
          *v7 = v19;
          if (v9 < v12)
          {
            break;
          }

          v20 = (2 * v12) | 1;
          v13 = a1 + 24 * v20;
          if (2 * v12 + 2 < a3)
          {
            v21 = *a2;
            v25 = *v13;
            v26 = *(v13 + 16);
            v23 = *(v13 + 24);
            v24 = *(v13 + 40);
            if (v21(&v25, &v23))
            {
              v13 += 24;
              v20 = 2 * v12 + 2;
            }
          }

          v22 = *a2;
          v25 = *v13;
          v26 = *(v13 + 16);
          v23 = v27;
          v24 = v28;
          v7 = v18;
          v12 = v20;
        }

        while (!v22(&v25, &v23));
        result = v27;
        v18[1].n128_u64[0] = v28;
        *v18 = result;
      }
    }
  }

  return result;
}

__int128 *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(BtProxData,BtProxData),BtProxData*>(__int128 *a1, unsigned int (**a2)(__int128 *, __int128 *), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = a1 + 24 * v6;
    v9 = (v8 + 24);
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 < a3)
    {
      v12 = *a2;
      v13 = *v9;
      v21 = *(v8 + 40);
      v20 = v13;
      v14 = (v8 + 48);
      v15 = *(v8 + 48);
      v19 = *(v8 + 64);
      v18 = v15;
      if (v12(&v20, &v18))
      {
        v9 = v14;
        v10 = v11;
      }
    }

    v16 = *v9;
    *(a1 + 2) = *(v9 + 2);
    *a1 = v16;
    a1 = v9;
    v6 = v10;
  }

  while (v10 <= v7);
  return v9;
}

double std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(BtProxData,BtProxData),BtProxData*>(uint64_t a1, uint64_t a2, unsigned int (**a3)(__int128 *, __int128 *), uint64_t a4)
{
  v6 = a4 - 2;
  if (a4 >= 2)
  {
    v25 = v4;
    v26 = v5;
    v10 = v6 >> 1;
    v11 = (a1 + 24 * (v6 >> 1));
    v12 = *a3;
    v23 = *v11;
    v24 = *(v11 + 2);
    v21 = *(a2 - 24);
    v22 = *(a2 - 8);
    if (v12(&v23, &v21))
    {
      v14 = (a2 - 24);
      v23 = *(a2 - 24);
      v24 = *(a2 - 8);
      do
      {
        v15 = v11;
        v16 = *v11;
        *(v14 + 2) = *(v11 + 2);
        *v14 = v16;
        if (!v10)
        {
          break;
        }

        v10 = (v10 - 1) >> 1;
        v11 = (a1 + 24 * v10);
        v17 = *a3;
        v21 = *v11;
        v22 = *(v11 + 2);
        v19 = v23;
        v20 = v24;
        v18 = v17(&v21, &v19);
        v14 = v15;
      }

      while ((v18 & 1) != 0);
      result = *&v23;
      *v15 = v23;
      *(v15 + 2) = v24;
    }
  }

  return result;
}

uint64_t std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_230EE389C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<double>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, a2);
  }

  std::vector<Rose::ResponderSuperframeRxPacketInfo>::__throw_length_error[abi:ne200100]();
}

double SingleThresholdProx::Estimator::Estimator(SingleThresholdProx::Estimator *this, double a2, char a3)
{
  *this = 0;
  *(this + 1) = LODWORD(a2);
  *(this + 1) = 0x3FE666663F800000;
  *(this + 8) = 156;
  *(this + 20) = xmmword_230EED8C0;
  *(this + 36) = xmmword_230EED8D0;
  *(this + 52) = xmmword_230EED8E0;
  *(this + 68) = 0x341200000;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = 0;
  *(this + 13) = vadd_f32(vdup_lane_s32(*&a2, 0), 0xC1096932411696CDLL);
  *(this + 28) = *&a2 + -30.262;
  *(this + 15) = 0xBFF0000000000000;
  *(this + 64) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(this + 132) = result;
  *(this + 35) = 0;
  *(this + 144) = a3;
  return result;
}

void SingleThresholdProx::Estimator::addRSSISample(SingleThresholdProx::Estimator *this, int a2, char a3, double a4)
{
  if (a2 != 127)
  {
    v5 = a2 - 126;
    if (a2 < 0)
    {
      v5 = a2;
    }

    v6 = (*(this + 144) + v5);
    if (v6 >= *(this + 16) && v6 <= *(this + 17))
    {
      v7 = *(this + 11);
      v8 = *(this + 12);
      if (v7 >= v8)
      {
        v10 = *(this + 10);
        v11 = (v7 - v10) >> 4;
        v12 = v11 + 1;
        if ((v11 + 1) >> 60)
        {
          std::vector<Rose::ResponderSuperframeRxPacketInfo>::__throw_length_error[abi:ne200100]();
        }

        v13 = v8 - v10;
        if (v13 >> 3 > v12)
        {
          v12 = v13 >> 3;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFF0)
        {
          v14 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<SingleThresholdProx::Estimator::Sample>>(this + 80, v14);
        }

        v15 = 16 * v11;
        *v15 = a4;
        *(v15 + 8) = v6;
        *(v15 + 9) = a3;
        v9 = 16 * v11 + 16;
        v16 = *(this + 10);
        v17 = *(this + 11) - v16;
        v18 = (16 * v11 - v17);
        memcpy(v18, v16, v17);
        v19 = *(this + 10);
        *(this + 10) = v18;
        *(this + 11) = v9;
        *(this + 12) = 0;
        if (v19)
        {
          operator delete(v19);
        }
      }

      else
      {
        *v7 = a4;
        *(v7 + 8) = v6;
        v9 = v7 + 16;
        *(v7 + 9) = a3;
      }

      *(this + 11) = v9;
    }
  }
}

uint64_t SingleThresholdProx::Estimator::getRangeMeasurement(uint64_t a1, uint64_t a2, double a3)
{
  v6 = *(a1 + 80);
  v7 = *(a1 + 88);
  __p = 0;
  v75 = 0;
  v76 = 0;
  __src = 0;
  v72 = 0;
  v73 = 0;
  v8 = *(a1 + 17) - *(a1 + 16);
  v70 = 0;
  std::vector<short>::resize(&__p, v8 + 1, &v70);
  if (v6 == v7 || (v10 = *(a1 + 80), v9 = *(a1 + 88), v10 == v9))
  {
    v30 = 0;
    LOBYTE(v31) = 0;
    v22 = 0;
LABEL_61:
    v58 = 0;
    v35 = -1.0;
    goto LABEL_62;
  }

  do
  {
    if (a3 - *v10 <= *(a1 + 40))
    {
      v12 = v10[8];
      v13 = v10[8] - *(a1 + 16);
      ++*(__p + v13);
      v14 = v72;
      if (v72 >= v73)
      {
        v16 = __src;
        v17 = v72 - __src;
        v18 = (v72 - __src) >> 1;
        if (v18 <= -2)
        {
          std::vector<Rose::ResponderSuperframeRxPacketInfo>::__throw_length_error[abi:ne200100]();
        }

        if (v73 - __src <= v18 + 1)
        {
          v19 = v18 + 1;
        }

        else
        {
          v19 = v73 - __src;
        }

        if (v73 - __src >= 0x7FFFFFFFFFFFFFFELL)
        {
          v20 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v19;
        }

        if (v20)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<short>>(&__src, v20);
        }

        *(2 * v18) = v12;
        v15 = 2 * v18 + 2;
        memcpy(0, v16, v17);
        v21 = __src;
        __src = 0;
        v72 = v15;
        v73 = 0;
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        *v72 = v12;
        v15 = (v14 + 2);
      }

      v72 = v15;
      v10 += 16;
      v9 = *(a1 + 88);
    }

    else
    {
      v11 = v9 - (v10 + 16);
      if (v9 != v10 + 16)
      {
        memmove(v10, v10 + 16, v11 - 6);
      }

      v9 = &v10[v11];
      *(a1 + 88) = &v10[v11];
    }
  }

  while (v10 != v9);
  v22 = __src;
  if (__src == v72)
  {
    goto LABEL_60;
  }

  std::__sort<std::__less<short,short> &,short *>();
  v22 = __src;
  v23 = (v72 - __src) >> 1;
  v24 = vcvtpd_s64_f64(v23 * 0.1);
  v25 = vcvtpd_s64_f64(v23 * 0.4);
  v26 = v23 - (v25 + v24);
  if (v26 < 1)
  {
    v28 = 0.0;
    if (__src != v72)
    {
      v33 = __src;
      do
      {
        v34 = *v33;
        v33 += 2;
        v28 = v28 + v34;
      }

      while (v33 != v72);
    }

    v32 = v23;
  }

  else
  {
    v27 = __src + 2 * v25;
    v28 = 0.0;
    while (v27 != &v72[-2 * v24])
    {
      v29 = *v27;
      v27 += 2;
      v28 = v28 + v29;
    }

    v32 = v26;
  }

  v31 = (v28 / v32);
  v35 = __exp10((v31 - *(a1 + 4)) / -18.0);
  v72 = v22;
  v36 = *(a1 + 16);
  v37 = *(a1 + 17) - v36;
  if (v37 < 0)
  {
    v41 = 0;
    v40 = 0;
    v38 = 0;
  }

  else
  {
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    do
    {
      v42 = v39 + v36;
      if (v42 >= *(a1 + 112))
      {
        if (v42 >= *(a1 + 108))
        {
          v43 = *(__p + v39);
          if (v42 >= *(a1 + 104))
          {
            v40 += v43;
          }

          else
          {
            v41 += v43;
          }
        }

        else
        {
          v38 += *(__p + v39);
        }
      }

      ++v39;
    }

    while (v37 >= v39);
  }

  v44 = v40 + v41 + v38;
  if (!v44)
  {
LABEL_60:
    v30 = 0;
    LOBYTE(v31) = 0;
    goto LABEL_61;
  }

  v45 = v40 / v44;
  v46 = v41 / v44;
  v47 = v38 / v44;
  v48 = *(a1 + 20);
  if (v47 > v48 || v45 > v48 || v46 > v48 || (0.0 / v44) > v48)
  {
    if (v46 <= v48)
    {
      v50 = v45 > v48;
    }

    else
    {
      v50 = 2;
    }

    if (v47 > v48)
    {
      v50 = 3;
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  v49 = *(a1 + 24);
  v50 = (v45 + v46) > v49;
  if ((v46 + v47) <= v49)
  {
LABEL_56:
    if (v50)
    {
      goto LABEL_57;
    }

    goto LABEL_60;
  }

  v50 = 2;
LABEL_57:
  v51 = *(a1 + 64);
  v52 = *(a1 + 120);
  *(a1 + 120) = a3;
  if (v50 == 1 || (v53 = a3 - v52, a3 - v52 > *(a1 + 68)))
  {
    v57 = *(a1 + 44);
    v56 = v50;
  }

  else
  {
    v54 = *(a1 + 132);
    v55 = v54 / (v54 + *(a1 + 52));
    v56 = *(a1 + 136) + (v55 * (v50 - *(a1 + 136)));
    v57 = (v54 * (1.0 - v55)) + v53 * v53 * *(a1 + 48) * 0.5 * (v51 * v51);
  }

  *(a1 + 132) = v57;
  *(a1 + 136) = v56;
  if (v56 < 1.0 || v56 > 3.0)
  {
    *(a1 + 120) = 0xBFF0000000000000;
    v62 = *(a1 + 140);
    v30 = v62;
  }

  else
  {
    v30 = llroundf(v56);
    v60 = v30 - v50;
    if ((v30 - v50) < 0)
    {
      v60 = v50 - v30;
    }

    if (v60 <= *(a1 + 74))
    {
      *(a1 + 128) = 0;
    }

    else
    {
      v61 = *(a1 + 128) + 1;
      *(a1 + 128) = v61;
      if (*(a1 + 72) < v61)
      {
        *(a1 + 132) = *(a1 + 44);
        *(a1 + 136) = v50;
      }
    }

    if ((*(a1 + 140) & 1) == 0)
    {
      if (v30 != 1)
      {
        v62 = 0;
        goto LABEL_89;
      }

      *(a1 + 140) = 1;
      goto LABEL_82;
    }

    if (v30 == 1)
    {
      *(a1 + 142) = 0;
LABEL_82:
      v62 = 1;
      goto LABEL_89;
    }

    if (v30 >= 2)
    {
      v63 = ++*(a1 + 142);
      if (v63 > 1)
      {
        v64 = (a1 + 141);
        v65 = *(a1 + 141);
        *(a1 + 140) = 0;
        *(a1 + 142) = 0;
        if (v65 == 1)
        {
          goto LABEL_91;
        }

        goto LABEL_101;
      }
    }

    v62 = 1;
    v30 = 1;
  }

LABEL_89:
  v64 = (a1 + 141);
  if (*(a1 + 141) == 1 && (v62 & 1) == 0)
  {
LABEL_91:
    v66 = (a1 + 143);
    if (v30 != 2)
    {
      v67 = ++*v66;
      v69 = v67 > 1 && v51 == 1.0;
      if (!v69 && v67 < 3)
      {
        v58 = 1;
        v30 = 2;
        goto LABEL_62;
      }

      *v64 = 0;
    }

    goto LABEL_104;
  }

LABEL_101:
  v58 = 1;
  if (v30 != 2)
  {
    goto LABEL_62;
  }

  *(a1 + 141) = 1;
  v66 = (a1 + 143);
LABEL_104:
  *v66 = 0;
  v58 = 1;
LABEL_62:
  *a2 = v30;
  *(a2 + 8) = v35;
  *(a2 + 16) = v31;
  if (v22)
  {
    v72 = v22;
    operator delete(v22);
  }

  if (__p)
  {
    v75 = __p;
    operator delete(__p);
  }

  return v58;
}

void sub_230EE410C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<short>::resize(void *a1, unint64_t a2, __int16 *a3)
{
  v3 = (a1[1] - *a1) >> 1;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + 2 * a2;
    }
  }

  else
  {
    std::vector<short>::__append(a1, a2 - v3, a3);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<SingleThresholdProx::Estimator::Sample>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<short>::__append(uint64_t a1, unint64_t a2, __int16 *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 1)
  {
    if (a2)
    {
      v12 = 0;
      v13 = (a2 + 0x7FFFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFFLL;
      v14 = v13 - ((a2 + 0x7FFFFFFFFFFFFFFFLL) & 7);
      v15 = vdupq_n_s64(v13);
      v16 = v6 + 2 * a2;
      v17 = *a3;
      v18 = v14 + 8;
      v19 = (v6 + 8);
      do
      {
        v20 = vdupq_n_s64(v12);
        v21 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_230EED920)));
        if (vuzp1_s8(vuzp1_s16(v21, *v15.i8), *v15.i8).u8[0])
        {
          *(v19 - 4) = v17;
        }

        if (vuzp1_s8(vuzp1_s16(v21, *&v15), *&v15).i8[1])
        {
          *(v19 - 3) = v17;
        }

        if (vuzp1_s8(vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_230EED910)))), *&v15).i8[2])
        {
          *(v19 - 2) = v17;
          *(v19 - 1) = v17;
        }

        v22 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_230EED900)));
        if (vuzp1_s8(*&v15, vuzp1_s16(v22, *&v15)).i32[1])
        {
          *v19 = v17;
        }

        if (vuzp1_s8(*&v15, vuzp1_s16(v22, *&v15)).i8[5])
        {
          v19[1] = v17;
        }

        if (vuzp1_s8(*&v15, vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_230EED8F0))))).i8[6])
        {
          v19[2] = v17;
          v19[3] = v17;
        }

        v12 += 8;
        v19 += 8;
      }

      while (v18 != v12);
    }

    else
    {
      v16 = *(a1 + 8);
    }

    *(a1 + 8) = v16;
  }

  else
  {
    v7 = v6 - *a1;
    if ((a2 + (v7 >> 1)) < 0)
    {
      std::vector<Rose::ResponderSuperframeRxPacketInfo>::__throw_length_error[abi:ne200100]();
    }

    v8 = v7 >> 1;
    v9 = v5 - *a1;
    if (v9 <= a2 + (v7 >> 1))
    {
      v10 = a2 + (v7 >> 1);
    }

    else
    {
      v10 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<short>>(a1, v11);
    }

    v23 = 0;
    v24 = 2 * v8;
    v25 = 2 * v8 + 2 * a2;
    v26 = *a3;
    v27 = (a2 + 0x7FFFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFFLL;
    v28 = v27 - ((a2 + 0x7FFFFFFFFFFFFFFFLL) & 7) + 8;
    v29 = vdupq_n_s64(v27);
    v30 = (v24 + 8);
    do
    {
      v31 = vdupq_n_s64(v23);
      v32 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(v31, xmmword_230EED920)));
      if (vuzp1_s8(vuzp1_s16(v32, *v29.i8), *v29.i8).u8[0])
      {
        *(v30 - 4) = v26;
      }

      if (vuzp1_s8(vuzp1_s16(v32, *&v29), *&v29).i8[1])
      {
        *(v30 - 3) = v26;
      }

      if (vuzp1_s8(vuzp1_s16(*&v29, vmovn_s64(vcgeq_u64(v29, vorrq_s8(v31, xmmword_230EED910)))), *&v29).i8[2])
      {
        *(v30 - 2) = v26;
        *(v30 - 1) = v26;
      }

      v33 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(v31, xmmword_230EED900)));
      if (vuzp1_s8(*&v29, vuzp1_s16(v33, *&v29)).i32[1])
      {
        *v30 = v26;
      }

      if (vuzp1_s8(*&v29, vuzp1_s16(v33, *&v29)).i8[5])
      {
        v30[1] = v26;
      }

      if (vuzp1_s8(*&v29, vuzp1_s16(*&v29, vmovn_s64(vcgeq_u64(v29, vorrq_s8(v31, xmmword_230EED8F0))))).i8[6])
      {
        v30[2] = v26;
        v30[3] = v26;
      }

      v23 += 8;
      v30 += 8;
    }

    while (v28 != v23);
    v34 = *(a1 + 8) - *a1;
    v35 = v24 - v34;
    memcpy((v24 - v34), *a1, v34);
    v36 = *a1;
    *a1 = v35;
    *(a1 + 8) = v25;
    *(a1 + 16) = 0;
    if (v36)
    {

      operator delete(v36);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<short>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void BigHeadTieHysteresis::mitigateBigHeadBackForthIssuesIfPossible()
{
  __assert_rtn("mitigateBigHeadBackForthIssuesIfPossible", "BigHeadTieHysteresis.cpp", 33, "topScoreTieHysteresis.getNumDevices() == getNumberOfBigHeadCandidates(output)");
}

{
  __assert_rtn("mitigateBigHeadBackForthIssuesIfPossible", "BigHeadTieHysteresis.cpp", 37, "soiRssiTieHysteresis.getNumDevices() == getNumberOfBigHeadCandidates(output)");
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78E8]();
}

{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7938]();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
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

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}