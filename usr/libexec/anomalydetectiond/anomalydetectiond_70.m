void sub_1002DA13C(CLKappaAlgBlock *this)
{
  *this = off_10042FDD8;
  *(this + 10) = off_100430098;
  *(this + 11) = off_1004301E0;
  *(this + 12) = off_1004302D0;
  v2 = *(this + 7);
  if (v2)
  {
    sub_100009A48(v2);
  }

  v3 = *(this + 5);
  if (v3)
  {
    sub_100009A48(v3);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(this, off_100430328);

  operator delete();
}

void sub_1002DA224(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 56);
  *(a1 + 48) = v3;
  *(a1 + 56) = v2;
  if (v4)
  {
    sub_100009A48(v4);
  }
}

void sub_1002DA250(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_10042FDD8;
  *(v1 + 10) = off_100430098;
  *(v1 + 11) = off_1004301E0;
  *(v1 + 12) = off_1004302D0;
  v2 = *(v1 + 7);
  if (v2)
  {
    sub_100009A48(v2);
  }

  v3 = *(v1 + 5);
  if (v3)
  {
    sub_100009A48(v3);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100430328);
}

void sub_1002DA334(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_10042FDD8;
  *(v1 + 10) = off_100430098;
  *(v1 + 11) = off_1004301E0;
  *(v1 + 12) = off_1004302D0;
  v2 = *(v1 + 7);
  if (v2)
  {
    sub_100009A48(v2);
  }

  v3 = *(v1 + 5);
  if (v3)
  {
    sub_100009A48(v3);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100430328);

  operator delete();
}

void sub_1002DA42C(void *a1, uint64_t *a2)
{
  v2 = a1 + *(*a1 - 32);
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(v2 + 7);
  *(v2 + 6) = v4;
  *(v2 + 7) = v3;
  if (v5)
  {
    sub_100009A48(v5);
  }
}

void sub_1002DA46C(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_10042FDD8;
  *(v1 + 10) = off_100430098;
  *(v1 + 11) = off_1004301E0;
  *(v1 + 12) = off_1004302D0;
  v2 = *(v1 + 7);
  if (v2)
  {
    sub_100009A48(v2);
  }

  v3 = *(v1 + 5);
  if (v3)
  {
    sub_100009A48(v3);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100430328);
}

void sub_1002DA550(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_10042FDD8;
  *(v1 + 10) = off_100430098;
  *(v1 + 11) = off_1004301E0;
  *(v1 + 12) = off_1004302D0;
  v2 = *(v1 + 7);
  if (v2)
  {
    sub_100009A48(v2);
  }

  v3 = *(v1 + 5);
  if (v3)
  {
    sub_100009A48(v3);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100430328);

  operator delete();
}

void sub_1002DA648(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_10042FDD8;
  *(v1 + 10) = off_100430098;
  *(v1 + 11) = off_1004301E0;
  *(v1 + 12) = off_1004302D0;
  v2 = *(v1 + 7);
  if (v2)
  {
    sub_100009A48(v2);
  }

  v3 = *(v1 + 5);
  if (v3)
  {
    sub_100009A48(v3);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100430328);
}

void sub_1002DA72C(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_10042FDD8;
  *(v1 + 10) = off_100430098;
  *(v1 + 11) = off_1004301E0;
  *(v1 + 12) = off_1004302D0;
  v2 = *(v1 + 7);
  if (v2)
  {
    sub_100009A48(v2);
  }

  v3 = *(v1 + 5);
  if (v3)
  {
    sub_100009A48(v3);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100430328);

  operator delete();
}

void sub_1002DA824(id a1)
{
  qword_100456800 = os_log_create("com.apple.anomalydetectiond", "Alg");

  _objc_release_x1();
}

void sub_1002DA888(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1004309B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

float CSAccelPeakDetectorResult::maxNormValue(CSAccelPeakDetectorResult *this)
{
  if (*(this + 4))
  {
    return *(*(this + 1) + 4 * *this);
  }

  if (qword_1004567F8 != -1)
  {
    sub_1002DAF00();
  }

  v2 = qword_100456800;
  v1 = 0.0;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_FAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "[PD] Attempted to access max of empty vector", v4, 2u);
  }

  return v1;
}

uint64_t CSAccelPeakDetectorResult::maxNormTimestamp(CSAccelPeakDetectorResult *this)
{
  if (*(this + 4))
  {
    return *(*(this + 4) + 8 * *this);
  }

  if (qword_1004567F8 != -1)
  {
    sub_1002DAF00();
  }

  v2 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_FAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "[PD] Attempted to access max of empty vector", v3, 2u);
  }

  return 0;
}

void CSAccelPeakDetectorResult::pushPeak(CSAccelPeakDetectorResult *this, float a2, uint64_t a3)
{
  v7 = *(this + 2);
  v6 = *(this + 3);
  if (v7 >= v6)
  {
    v9 = *(this + 1);
    v10 = v7 - v9;
    v11 = (v7 - v9) >> 2;
    v12 = v11 + 1;
    if ((v11 + 1) >> 62)
    {
      sub_10000CD24();
    }

    v13 = v6 - v9;
    if (v13 >> 1 > v12)
    {
      v12 = v13 >> 1;
    }

    v14 = v13 >= 0x7FFFFFFFFFFFFFFCLL;
    v15 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v14)
    {
      v15 = v12;
    }

    if (v15)
    {
      sub_10002290C(this + 8, v15);
    }

    v16 = (v7 - v9) >> 2;
    v17 = (4 * v11);
    v18 = (4 * v11 - 4 * v16);
    *v17 = a2;
    v8 = v17 + 1;
    memcpy(v18, v9, v10);
    v19 = *(this + 1);
    *(this + 1) = v18;
    *(this + 2) = v8;
    *(this + 3) = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    *v7 = a2;
    v8 = v7 + 1;
  }

  *(this + 2) = v8;
  v21 = *(this + 5);
  v20 = *(this + 6);
  if (v21 >= v20)
  {
    v23 = *(this + 4);
    v24 = v21 - v23;
    v25 = (v21 - v23) >> 3;
    v26 = v25 + 1;
    if ((v25 + 1) >> 61)
    {
      sub_10000CD24();
    }

    v27 = v20 - v23;
    if (v27 >> 2 > v26)
    {
      v26 = v27 >> 2;
    }

    v14 = v27 >= 0x7FFFFFFFFFFFFFF8;
    v28 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v14)
    {
      v28 = v26;
    }

    if (v28)
    {
      sub_10000CDCC(this + 32, v28);
    }

    v29 = (v21 - v23) >> 3;
    v30 = (8 * v25);
    v31 = (8 * v25 - 8 * v29);
    *v30 = a3;
    v22 = v30 + 1;
    memcpy(v31, v23, v24);
    v32 = *(this + 4);
    *(this + 4) = v31;
    *(this + 5) = v22;
    *(this + 6) = 0;
    if (v32)
    {
      operator delete(v32);
    }
  }

  else
  {
    *v21 = a3;
    v22 = v21 + 8;
  }

  *(this + 5) = v22;
  if (CSAccelPeakDetectorResult::maxNormValue(this) < a2)
  {
    v33 = *(this + 2) - *(this + 1);
    if ((*(this + 4) & 1) == 0)
    {
      *(this + 4) = 1;
    }

    *this = (v33 >> 2) - 1;
  }
}

void CSAccelPeakDetectorResult::detectPeaks(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v7 = a1;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    v12 = (a4 * 1000000.0);
    v13 = *v21;
    v14 = 0.0;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v16 = *(*(&v20 + 1) + 8 * i);
        v18 = CSAccelPeakDetectorResult::accelNorm(v16, v17);
        if (v14 < v18)
        {
          v10 = [(CSAccelPeakDetectorResult *)v16 timestamp];
          v14 = v18;
        }

        if (v18 >= a3 || ((v11 ^ 1) & 1) != 0)
        {
          v11 |= v18 >= a3;
        }

        else if ([(CSAccelPeakDetectorResult *)v16 timestamp]> &v10[v12])
        {
          v19 = v14;
          CSAccelPeakDetectorResult::pushPeak(a2, v19, v10);
          v10 = 0;
          v11 = 0;
          v14 = 0.0;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }
}

void sub_1002DADDC(_Unwind_Exception *a1)
{
  sub_100035E48(v1);

  _Unwind_Resume(a1);
}

float CSAccelPeakDetectorResult::accelNorm(CSAccelPeakDetectorResult *this, const CSSPUAccel800 *a2)
{
  v2 = this;
  v3 = sqrtf(((*([(CSAccelPeakDetectorResult *)v2 c_struct]+ 3) * *([(CSAccelPeakDetectorResult *)v2 c_struct]+ 3)) + (*([(CSAccelPeakDetectorResult *)v2 c_struct]+ 2) * *([(CSAccelPeakDetectorResult *)v2 c_struct]+ 2))) + (*([(CSAccelPeakDetectorResult *)v2 c_struct]+ 4) * *([(CSAccelPeakDetectorResult *)v2 c_struct]+ 4)));

  return v3;
}

void sub_1002DAEBC(id a1)
{
  qword_100456800 = os_log_create("com.apple.anomalydetectiond", "Alg");

  _objc_release_x1();
}

double CLKappaFeaturesAlgGravityAutoCorrelationResult::log(CLKappaFeaturesAlgGravityAutoCorrelationResult *this)
{
  if (qword_1004567F8 != -1)
  {
    sub_1002DCB28();
  }

  v2 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(this + 4);
    v5 = *(this + 40);
    v6 = *(this + 41);
    v7 = *(this + 4);
    v8 = *(this + 5);
    v9 = *(this + 6);
    v10 = *(this + 7);
    v11 = *(this + 6);
    v12 = *(this + 7);
    v13 = *(this + 16);
    v14 = *(this + 17);
    v15 = *(this + 18);
    v16 = 134351872;
    v17 = v4;
    v18 = 1026;
    v19 = v5;
    v20 = 1026;
    v21 = v6;
    v22 = 1026;
    v23 = v7;
    v24 = 2050;
    v25 = v8;
    v26 = 1026;
    v27 = v9;
    v28 = 2050;
    v29 = v10;
    v30 = 2050;
    v31 = v11;
    v32 = 2050;
    v33 = v12;
    v34 = 1026;
    v35 = v13;
    v36 = 2050;
    v37 = v14;
    v38 = 1026;
    v39 = v15;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[GravityAC] AlgBlock summary,A,%{public}llu,B,%{public}d,C,%{public}d,config-1,%{public}d,config-2,%{public}f,config-3,%{public}d,config-4,%{public}f,debug-1,%{public}llu,debug-2,%{public}llu,debug-3,%{public}d,debug-4,%{public}f,debug-5,%{public}d", &v16, 0x62u);
  }

  return result;
}

void CLKappaFeaturesAlgGravityAutoCorrelation::CLKappaFeaturesAlgGravityAutoCorrelation(CLKappaFeaturesAlgGravityAutoCorrelation *this, uint64_t *a2)
{
  CLKappaAlgBlock::CLKappaAlgBlock(this, a2 + 1);
  v4 = *a2;
  *v5 = *a2;
  *(this + *(v4 - 152)) = a2[6];
  *(this + *(*this - 160)) = a2[7];
  *(this + *(*this - 168)) = a2[8];
  *(this + *(*this - 176)) = a2[9];
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  operator new();
}

void sub_1002DB34C(_Unwind_Exception *a1)
{
  v4 = *(v1 + 7);
  if (v4)
  {
    sub_100009A48(v4);
  }

  v5 = *(v1 + 5);
  if (v5)
  {
    sub_100009A48(v5);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, (v2 + 8));
  _Unwind_Resume(a1);
}

char **sub_1002DB380@<X0>(uint64_t a1@<X0>, char ***a2@<X8>)
{
  result = *a1;
  {
    v6 = *(a1 + 8);
    *a2 = result;
    a2[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

void CLKappaFeaturesAlgGravityAutoCorrelation::CLKappaFeaturesAlgGravityAutoCorrelation(CLKappaFeaturesAlgGravityAutoCorrelation *this)
{
  *this = off_100411FE8;
  *(this + 8) = off_100412090;
  *(this + 9) = off_100412158;
  *(this + 10) = off_100412210;
  CLKappaAlgBlock::CLKappaAlgBlock(this, off_100431010);
  *v1 = off_100430AC0;
  *(v1 + 64) = off_100430D80;
  *(v1 + 72) = off_100430EC8;
  *(v1 + 80) = off_100430FB8;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  operator new();
}

void sub_1002DB674(_Unwind_Exception *a1)
{
  v3 = *(v1 + 7);
  if (v3)
  {
    sub_100009A48(v3);
  }

  v4 = *(v1 + 5);
  if (v4)
  {
    sub_100009A48(v4);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100431010);
  _Unwind_Resume(a1);
}

void CLKappaFeaturesAlgGravityAutoCorrelation::resetConfiguration(CLKappaFeaturesAlgGravityAutoCorrelation *this)
{
  v22 = [CSPersistentConfiguration configBaseKey:"FeaturesAlgGravityAutoCorrelationConfig" forFeatureMode:*(this + 24)];
  v2 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v3) = 1125515264;
  LODWORD(v4) = 1120403456;
  LODWORD(v5) = 20.0;
  [v2 algorithmThresholdNumber:0 inArrayForKey:v22 withMinValue:v5 maxValue:v3 defaultValue:v4];
  LODWORD(v23) = v6;

  v7 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v8) = 1017370378;
  LODWORD(v9) = 1028443341;
  LODWORD(v10) = 0.5;
  [v7 algorithmThresholdNumber:1 inArrayForKey:v22 withMinValue:v8 maxValue:v10 defaultValue:v9];
  DWORD1(v23) = v11;

  v12 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v13) = 1.0;
  LODWORD(v14) = 20.0;
  LODWORD(v15) = 6.0;
  [v12 algorithmThresholdNumber:2 inArrayForKey:v22 withMinValue:v13 maxValue:v14 defaultValue:v15];
  DWORD2(v23) = v16;

  v17 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v18) = 1036831949;
  LODWORD(v19) = 1050253722;
  LODWORD(v20) = 1.0;
  [v17 algorithmThresholdNumber:3 inArrayForKey:v22 withMinValue:v18 maxValue:v20 defaultValue:v19];
  HIDWORD(v23) = v21;

  CLKappaFeaturesAlgGravityAutoCorrelation::setConfig(this, &v23);
}

double CLKappaFeaturesAlgGravityAutoCorrelation::setConfig(uint64_t a1, _OWORD *a2)
{
  *(*(a1 + 32) + 16) = *a2;
  if (qword_1004567F8 != -1)
  {
    sub_1002DCB28();
  }

  v3 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 16);
    v7 = *(v5 + 20);
    v8 = *(v5 + 24);
    v9 = *(v5 + 28);
    v10[0] = 67109888;
    v10[1] = v6;
    v11 = 2048;
    v12 = v7;
    v13 = 1024;
    v14 = v8;
    v15 = 2048;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[GravityAC] config, %d, %f, %d, %f", v10, 0x22u);
  }

  return result;
}

uint64_t CLKappaFeaturesAlgGravityAutoCorrelation::reset(CLKappaFeaturesAlgGravityAutoCorrelation *this)
{
  result = (*(**(this + 4) + 24))(*(this + 4));
  v3 = *(this + 4);
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0x7FFFFFFFLL;
  *(v3 + 72) = 0;
  return result;
}

void CLKappaFeaturesAlgGravityAutoCorrelation::epochFinalize(CLKappaFeaturesAlgGravityAutoCorrelation *this)
{
  v1 = __chkstk_darwin(this);
  v3 = v2;
  v4 = v1;
  v5 = *(v1 + 32);
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0;
  *(v5 + 64) = 0x7FFFFFFFLL;
  *(v5 + 72) = 0;
  v6 = *(*(v1 + 48) + 72);
  v7 = [v6 count];
  *(*(v4 + 32) + 72) = v7;
  if (v7 < 0x2EE)
  {
    goto LABEL_122;
  }

  v100 = [v6 objectAtIndex:0];
  v8 = [v6 objectAtIndex:v7 - 1];
  *(*(v4 + 32) + 48) = [v100 timestamp];
  *(*(v4 + 32) + 56) = [v8 timestamp];
  v111 = 0x40000000000;
  v109 = 0x40000000000;
  v107 = 0x40000000000;
  if (v7 < 1)
  {
    goto LABEL_30;
  }

  v97 = v4;
  v98 = v3;
  v99 = v8;
  v9 = 0;
  do
  {
    v10 = [v6 objectAtIndex:{v9, v97, v98, v99}];
    v11 = *[v10 c_struct];
    v12 = *([v10 c_struct] + 1);
    v13 = *([v10 c_struct] + 2);
    v14.i32[0] = *([v10 c_struct] + 3);
    v102[0].i64[0] = __PAIR64__(v12, v11);
    v102[0].i64[1] = __PAIR64__(v14.u32[0], v13);
    CMOQuaternion::normalize(v102, v14);
    v15 = CMOQuaternion::gravity(v102);
    v18 = WORD1(v111);
    v19 = HIDWORD(v111);
    v20 = v111;
    if (v111 + WORD1(v111) >= HIDWORD(v111))
    {
      v21 = HIDWORD(v111);
    }

    else
    {
      v21 = 0;
    }

    *&v112[v111 + WORD1(v111) - v21] = v15;
    if (v19 <= v18)
    {
      if (v20 + 1 < v19)
      {
        LOWORD(v19) = 0;
      }

      LOWORD(v111) = v20 + 1 - v19;
    }

    else
    {
      WORD1(v111) = v18 + 1;
    }

    v22 = WORD1(v109);
    v23 = HIDWORD(v109);
    v24 = v109;
    if (v109 + WORD1(v109) >= HIDWORD(v109))
    {
      v25 = HIDWORD(v109);
    }

    else
    {
      v25 = 0;
    }

    v110[v109 + WORD1(v109) - v25] = v16;
    if (v23 <= v22)
    {
      if (v24 + 1 < v23)
      {
        LOWORD(v23) = 0;
      }

      LOWORD(v109) = v24 + 1 - v23;
    }

    else
    {
      WORD1(v109) = v22 + 1;
    }

    v26 = WORD1(v107);
    v27 = HIDWORD(v107);
    v28 = v107;
    if (v107 + WORD1(v107) >= HIDWORD(v107))
    {
      v29 = HIDWORD(v107);
    }

    else
    {
      v29 = 0;
    }

    v108[v107 + WORD1(v107) - v29] = v17;
    if (v27 <= v26)
    {
      if (v28 + 1 < v27)
      {
        LOWORD(v27) = 0;
      }

      LOWORD(v107) = v28 + 1 - v27;
    }

    else
    {
      WORD1(v107) = v26 + 1;
    }

    ++v9;
  }

  while ((v7 & 0x7FFFFFFF) != v9);
  v3 = v98;
  v8 = v99;
  v4 = v97;
  if (v7 <= 1023)
  {
LABEL_30:
    v30 = v107;
    v31 = v109;
    v32 = v111;
    v33 = HIDWORD(v111);
    v34 = HIDWORD(v109);
    v35 = HIDWORD(v107);
    v36 = WORD1(v111);
    v37 = WORD1(v109);
    v38 = v7 - 1024;
    v39 = WORD1(v107);
    do
    {
      v40 = v32 + v36;
      if (v40 >= v33)
      {
        v41 = v33;
      }

      else
      {
        v41 = 0;
      }

      v112[v40 - v41] = 0;
      if (v33 <= v36)
      {
        v42 = v32 + 1;
        if (v42 >= v33)
        {
          v43 = v33;
        }

        else
        {
          v43 = 0;
        }

        v44 = v42 - v43;
        v32 = v44;
        LOWORD(v111) = v44;
      }

      else
      {
        WORD1(v111) = ++v36;
      }

      v45 = v31 + v37;
      if (v45 >= v34)
      {
        v46 = v34;
      }

      else
      {
        v46 = 0;
      }

      v110[v45 - v46] = 0;
      if (v34 <= v37)
      {
        v47 = v31 + 1;
        if (v47 >= v34)
        {
          v48 = v34;
        }

        else
        {
          v48 = 0;
        }

        v49 = v47 - v48;
        v31 = v49;
        LOWORD(v109) = v49;
      }

      else
      {
        WORD1(v109) = ++v37;
      }

      v50 = v30 + v39;
      if (v50 >= v35)
      {
        v51 = v35;
      }

      else
      {
        v51 = 0;
      }

      v108[v50 - v51] = 0;
      if (v35 <= v39)
      {
        v52 = v30 + 1;
        if (v52 >= v35)
        {
          v53 = v35;
        }

        else
        {
          v53 = 0;
        }

        v54 = v52 - v53;
        v30 = v54;
        LOWORD(v107) = v54;
      }

      else
      {
        WORD1(v107) = ++v39;
      }
    }

    while (!__CFADD__(v38++, 1));
  }

  CMFourierTransformSafety::CMFourierTransformSafety(v102);
  CMFourierTransformSafety::forward_wide(v102);
  CMFourierTransformSafety::forward_wide(v102);
  CMFourierTransformSafety::forward_wide(v102);
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v106[0] = 0x40000000000;
  v105[0] = 0x40000000000;
  v104 = 1024;
  LOWORD(v63) = 0;
  v64 = 0;
  LOWORD(v65) = 0;
  v66 = 0;
  do
  {
    v67 = v57 + v58;
    if (v67 >= 0x400)
    {
      v68 = 0x1FFFFFFFFFFFFE01;
    }

    else
    {
      v68 = 1;
    }

    *(&v106[v68] + v67) = *(&v106[1537] + v56) * *(&v106[1537] + v56);
    if (v57 > 0x3FF)
    {
      if (v58 >= 0x3FFu)
      {
        v69 = -1024;
      }

      else
      {
        v69 = 0;
      }

      v63 = v58 + v69 + 1;
      v58 = v63;
    }

    else
    {
      v64 = ++v57;
    }

    v70 = v59 + v60;
    if (v70 >= 0x400)
    {
      v71 = 0x1FFFFFFFFFFFFE01;
    }

    else
    {
      v71 = 1;
    }

    *(&v105[v71] + v70) = *(&v106[1025] + v56) * *(&v106[1025] + v56);
    if (v59 > 0x3FF)
    {
      if (v60 >= 0x3FFu)
      {
        v72 = -1024;
      }

      else
      {
        v72 = 0;
      }

      v65 = v60 + v72 + 1;
      v60 = v65;
    }

    else
    {
      v66 = ++v59;
    }

    v73 = v61 + v62;
    if (v73 >= 0x400)
    {
      v74 = 0x7FFFFFFFFFFFF804;
    }

    else
    {
      v74 = 4;
    }

    *&v103[2 * v73 + v74] = *(&v106[513] + v56) * *(&v106[513] + v56);
    if (v61 > 0x3FF)
    {
      if (v62 >= 0x3FFu)
      {
        v75 = -1024;
      }

      else
      {
        v75 = 0;
      }

      v62 += v75 + 1;
    }

    else
    {
      ++v61;
    }

    v56 += 4;
  }

  while (v56 != 4096);
  LOWORD(v106[0]) = v63;
  WORD1(v106[0]) = v64;
  LOWORD(v105[0]) = v65;
  WORD1(v105[0]) = v66;
  v103[1] = v61;
  v103[0] = v62;
  CMFourierTransformSafety::CMFourierTransformSafety(v101);
  CMFourierTransformSafety::forward_real(v101);
  CMFourierTransformSafety::forward_real(v101);
  CMFourierTransformSafety::forward_real(v101);
  v76 = 0;
  v77 = vdupq_n_s32(0x3A800000u);
  do
  {
    *(&v102[v76 + 521] + 8) = vmulq_f32(vaddq_f32(vaddq_f32(*(&v102[v76 + 1289] + 8), *(&v102[v76 + 1033] + 8)), *(&v102[v76 + 777] + 8)), v77);
    ++v76;
  }

  while (v76 != 256);
  v78 = 0;
  v79 = 0;
  v80 = 0;
  v81 = 0;
  v82 = 0;
  v83 = -3.4028e38;
  v84 = 3.4028e38;
  v85 = 111;
  v86 = 3.4028e38;
  while (1)
  {
    v87 = v102[521].f32[v85 + 2];
    v82 |= v87 >= v86;
    if (v82)
    {
      if (v87 <= v83)
      {
        goto LABEL_98;
      }

      v83 = v102[521].f32[v85 + 2];
      v79 = v85;
    }

    else
    {
      v86 = v102[521].f32[v85 + 2];
      v80 = v85;
    }

    if ((v81 & 1) == 0)
    {
      v81 = 0;
      goto LABEL_102;
    }

LABEL_98:
    if (v87 >= v84)
    {
      break;
    }

    v81 = 1;
    v84 = v102[521].f32[v85 + 2];
    v78 = v85;
LABEL_102:
    if (++v85 == 399)
    {
      v88 = 0.0;
      v89 = 0x7FFFFFFF;
      goto LABEL_114;
    }
  }

  v90 = v79 - v80;
  v91 = v78 - v79;
  v92 = (v84 + v86) * -0.5;
  if (v80 <= v90)
  {
    v93 = v90;
  }

  else
  {
    v93 = v80;
  }

  if (v93 <= v91)
  {
    v93 = v91;
  }

  if (v90 < v80)
  {
    v80 = v90;
  }

  v88 = v83 + v92;
  if (v91 < v80)
  {
    v80 = v91;
  }

  v89 = v93 - v80;
LABEL_114:
  v94 = *(v4 + 32);
  if (v88 <= *(v94 + 20) || v89 >= *(v94 + 16))
  {
    v96 = 0;
    v95 = 0;
  }

  else
  {
    v95 = v88 > *(v94 + 28) && v89 < *(v94 + 24);
    v96 = 1;
  }

  *(v94 + 32) = v3;
  *(v94 + 40) = v96;
  *(v94 + 41) = v95;
  *(v94 + 68) = v88;
  *(v94 + 64) = v89;

LABEL_122:
}

void sub_1002DC264(CLKappaAlgBlock *this)
{
  *this = off_100430AC0;
  *(this + 8) = off_100430D80;
  *(this + 9) = off_100430EC8;
  *(this + *(*this - 176)) = off_100430FB8;
  v2 = *(this + 7);
  if (v2)
  {
    sub_100009A48(v2);
  }

  v3 = *(this + 5);
  if (v3)
  {
    sub_100009A48(v3);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(this, off_100431010);
}

void sub_1002DC360(CLKappaAlgBlock *this)
{
  *this = off_100430AC0;
  *(this + 8) = off_100430D80;
  *(this + 9) = off_100430EC8;
  *(this + 10) = off_100430FB8;
  v2 = *(this + 7);
  if (v2)
  {
    sub_100009A48(v2);
  }

  v3 = *(this + 5);
  if (v3)
  {
    sub_100009A48(v3);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(this, off_100431010);

  operator delete();
}

void sub_1002DC448(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 56);
  *(a1 + 48) = v3;
  *(a1 + 56) = v2;
  if (v4)
  {
    sub_100009A48(v4);
  }
}

void sub_1002DC474(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100430AC0;
  *(v1 + 8) = off_100430D80;
  *(v1 + 9) = off_100430EC8;
  *(v1 + 10) = off_100430FB8;
  v2 = *(v1 + 7);
  if (v2)
  {
    sub_100009A48(v2);
  }

  v3 = *(v1 + 5);
  if (v3)
  {
    sub_100009A48(v3);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100431010);
}

void sub_1002DC558(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100430AC0;
  *(v1 + 8) = off_100430D80;
  *(v1 + 9) = off_100430EC8;
  *(v1 + 10) = off_100430FB8;
  v2 = *(v1 + 7);
  if (v2)
  {
    sub_100009A48(v2);
  }

  v3 = *(v1 + 5);
  if (v3)
  {
    sub_100009A48(v3);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100431010);

  operator delete();
}

void sub_1002DC650(void *a1, uint64_t *a2)
{
  v2 = a1 + *(*a1 - 32);
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(v2 + 7);
  *(v2 + 6) = v4;
  *(v2 + 7) = v3;
  if (v5)
  {
    sub_100009A48(v5);
  }
}

void sub_1002DC690(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100430AC0;
  *(v1 + 8) = off_100430D80;
  *(v1 + 9) = off_100430EC8;
  *(v1 + 10) = off_100430FB8;
  v2 = *(v1 + 7);
  if (v2)
  {
    sub_100009A48(v2);
  }

  v3 = *(v1 + 5);
  if (v3)
  {
    sub_100009A48(v3);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100431010);
}

void sub_1002DC774(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100430AC0;
  *(v1 + 8) = off_100430D80;
  *(v1 + 9) = off_100430EC8;
  *(v1 + 10) = off_100430FB8;
  v2 = *(v1 + 7);
  if (v2)
  {
    sub_100009A48(v2);
  }

  v3 = *(v1 + 5);
  if (v3)
  {
    sub_100009A48(v3);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100431010);

  operator delete();
}

void sub_1002DC86C(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100430AC0;
  *(v1 + 8) = off_100430D80;
  *(v1 + 9) = off_100430EC8;
  *(v1 + 10) = off_100430FB8;
  v2 = *(v1 + 7);
  if (v2)
  {
    sub_100009A48(v2);
  }

  v3 = *(v1 + 5);
  if (v3)
  {
    sub_100009A48(v3);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100431010);
}

void sub_1002DC950(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100430AC0;
  *(v1 + 8) = off_100430D80;
  *(v1 + 9) = off_100430EC8;
  *(v1 + 10) = off_100430FB8;
  v2 = *(v1 + 7);
  if (v2)
  {
    sub_100009A48(v2);
  }

  v3 = *(v1 + 5);
  if (v3)
  {
    sub_100009A48(v3);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100431010);

  operator delete();
}

void sub_1002DCA48(id a1)
{
  qword_100456800 = os_log_create("com.apple.anomalydetectiond", "Alg");

  _objc_release_x1();
}

void sub_1002DCAAC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100431698;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

id sub_1002DCCF8()
{
  if (qword_100456828 != -1)
  {
    sub_1002E66F4();
  }

  v1 = qword_100456830;

  return v1;
}

__CFString *sub_1002DD2F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  switch(a2)
  {
    case 4:
      [*(a1 + 32) resetSession];
LABEL_9:
      v3 = 0;
      break;
    case 3:
      if (a3 == 1)
      {
        v3 = objc_retainBlock(*(*(a1 + 32) + 24));
        break;
      }

      goto LABEL_9;
    case 1:
      v3 = @"idle";
      break;
    default:
      v3 = 0;
      break;
  }

  return v3;
}

__CFString *sub_1002DD360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  if (a2 <= 3)
  {
    if (a2 == 1)
    {
      v4 = @"reading";
      goto LABEL_31;
    }

    if (a2 != 3)
    {
      goto LABEL_31;
    }

    v4 = 0;
    if (a3 > 3)
    {
      if (a3 == 4)
      {
        v5 = *(*(a1 + 32) + 32);
        goto LABEL_30;
      }

      if (a3 != 6)
      {
        goto LABEL_31;
      }

      if (qword_100456828 != -1)
      {
        sub_1002E66F4();
      }

      v7 = qword_100456830;
      if (os_log_type_enabled(qword_100456830, OS_LOG_TYPE_INFO))
      {
        LOWORD(v10[0]) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "forcefully aborting session", v10, 2u);
      }
    }

    else if ((a3 - 2) >= 2)
    {
      if (a3 != 1)
      {
        goto LABEL_31;
      }

      if (qword_100456828 != -1)
      {
        sub_1002E66F4();
      }

      v8 = qword_100456830;
      if (os_log_type_enabled(qword_100456830, OS_LOG_TYPE_INFO))
      {
        v10[0] = 67109120;
        v10[1] = 600;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "reset timeout to  %u sec", v10, 8u);
      }

      [*(*(a1 + 32) + 112) setNextFireDelay:600.0];
      v5 = *(*(a1 + 32) + 24);
      goto LABEL_30;
    }

    v5 = *(*(a1 + 32) + 16);
LABEL_30:
    v4 = objc_retainBlock(v5);
    goto LABEL_31;
  }

  if (a2 == 4)
  {
    [*(a1 + 32) start];
  }

  else
  {
    if (a2 != 6)
    {
      goto LABEL_31;
    }

    if (qword_100456828 != -1)
    {
      sub_1002E66F4();
    }

    v6 = qword_100456830;
    if (os_log_type_enabled(qword_100456830, OS_LOG_TYPE_INFO))
    {
      LOWORD(v10[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "stop trigger timer", v10, 2u);
    }

    [*(*(a1 + 32) + 112) setNextFireDelay:1.79769313e308];
  }

  v4 = 0;
LABEL_31:

  return v4;
}

__CFString *sub_1002DD5A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  if (a2 > 3)
  {
    if (a2 == 4)
    {
      if ((*(*(a1 + 32) + 216) & 1) == 0)
      {
        if (qword_100456828 != -1)
        {
          sub_1002E66F4();
        }

        v11 = qword_100456830;
        if (os_log_type_enabled(qword_100456830, OS_LOG_TYPE_FAULT))
        {
          *v16 = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "SOSInProgress false while in wait state", v16, 2u);
        }

        goto LABEL_33;
      }

      if (qword_100456828 != -1)
      {
        sub_1002E66F4();
      }

      v10 = qword_100456830;
      if (os_log_type_enabled(qword_100456830, OS_LOG_TYPE_INFO))
      {
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "wait for 30s for SOS resolution", v15, 2u);
      }

      v8 = *(*(a1 + 32) + 112);
      v9 = 30.0;
    }

    else
    {
      if (a2 != 6)
      {
        goto LABEL_35;
      }

      if (qword_100456828 != -1)
      {
        sub_1002E66F4();
      }

      v7 = qword_100456830;
      if (os_log_type_enabled(qword_100456830, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "cancel sos timeout timer", buf, 2u);
      }

      v8 = *(*(a1 + 32) + 112);
      v9 = 1.79769313e308;
    }

    [v8 setNextFireDelay:v9 interval:1.79769313e308];
LABEL_28:
    v4 = 0;
    goto LABEL_35;
  }

  if (a2 == 1)
  {
    v4 = @"waitForSOS";
    goto LABEL_35;
  }

  if (a2 != 3)
  {
    goto LABEL_35;
  }

  if (a3 == 5 || a3 == 2)
  {
    goto LABEL_33;
  }

  if (a3 != 1)
  {
    goto LABEL_28;
  }

  if (*(*(a1 + 32) + 216) == 1)
  {
    if (qword_100456828 != -1)
    {
      sub_1002E66F4();
    }

    v5 = qword_100456830;
    if (os_log_type_enabled(qword_100456830, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "ignoring trigger in wait state while waiting for SOS resolution", v13, 2u);
    }

    v6 = *(*(a1 + 32) + 32);
    goto LABEL_34;
  }

LABEL_33:
  v6 = *(*(a1 + 32) + 16);
LABEL_34:
  v4 = objc_retainBlock(v6);
LABEL_35:

  return v4;
}

id sub_1002DD7F0(uint64_t a1)
{
  if (qword_100456828 != -1)
  {
    sub_1002E66F4();
  }

  v2 = qword_100456830;
  if (os_log_type_enabled(qword_100456830, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Trigger timeout expired", v4, 2u);
  }

  return [*(*(a1 + 32) + 8) signal:2 data:0];
}

void sub_1002DE818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100009A48(a14);
  }

  if (v14)
  {
    sub_100009A48(v14);
  }

  _Unwind_Resume(a1);
}

void sub_1002DED6C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100009A48(v1);
  }

  _Unwind_Resume(exception_object);
}

id sub_1002DFBD8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 216))
  {
    v2 = 4;
  }

  else
  {
    [*(v1 + 80) feedDetectionDecision:0 uuid:0 forMode:2];
    v1 = *(a1 + 32);
    v2 = 3;
  }

  v4 = *(v1 + 8);

  return [v4 signal:v2 data:0];
}

void sub_1002E10BC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_1002E17F4()
{
  if (qword_100456818 != -1)
  {
    sub_1002E78D0();
  }

  v1 = qword_100456820;

  return v1;
}

void sub_1002E2C14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1002E2E44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1002E2F20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1002E3968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  v22 = a12;
  a12 = 0;
  if (v22)
  {
    sub_1002E65D0(&a12, v22);
  }

  _Unwind_Resume(a1);
}

void sub_1002E59EC(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained updateMartyUserInfoWithInfo:v8];
    [v7 uploadUserInfoToCoreAnalyticsWithHandler:v5];
    [v7 clearCAStats];
  }
}

void sub_1002E64A8(id a1)
{
  qword_100456830 = os_log_create("com.apple.anomalydetectiond", "MartyDetection");

  _objc_release_x1();
}

void sub_1002E64EC(id a1)
{
  qword_100456820 = os_log_create("com.apple.anomalydetectiond", "KappaDetection");

  _objc_release_x1();
}

void sub_1002E6530(id a1)
{
  qword_1004568B0 = os_log_create("com.apple.anomalydetectiond", "CoreAnalytics");

  _objc_release_x1();
}

void sub_1002E6574(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 31) < 0)
    {
      operator delete(*(a2 + 8));
    }

    operator delete();
  }
}

void sub_1002E65D0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    operator delete();
  }
}

void sub_1002E662C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_signpost_emit_with_name_impl(a1, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, a5, a6, &a9, 0x26u);
}

void sub_1002E6658(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_INFO, a4, &a9, 0x26u);
}

void sub_1002E6678(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x26u);
}

BOOL sub_1002E6698(NSObject *a1)
{
  *v1 = a1;

  return os_log_type_enabled(a1, OS_LOG_TYPE_INFO);
}

BOOL sub_1002E66B4(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_FAULT);
}

void sub_1002E6844()
{
  v1 = sub_1002DCCF8();
  if (sub_1002CD420(v1))
  {
    sub_100009C7C();
    sub_10002EB78(&_mh_execute_header, v2, v3, "{msg%{public}.0s:flow controller is null, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v21, v22, v23, v24, v25);
  }

  v8 = sub_1002DCCF8();
  if (os_signpost_enabled(v8))
  {
    sub_100009C7C();
    sub_10002EAF4(&_mh_execute_header, v9, v10, v11, "flow controller is null", "{msg%{public}.0s:flow controller is null, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v12, v13, v21, v22, v23, v24, v25);
  }

  v14 = sub_1002DCCF8();
  if (sub_1002CD438(v14))
  {
    sub_100009C7C();
    sub_10002EB58(&_mh_execute_header, v15, v16, "{msg%{public}.0s:flow controller is null, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v17, v18, v19, v20, v21, v22, v23, v24, v25);
  }

  abort_report_np();
  __break(1u);
}

void sub_1002E6970()
{
  v1 = sub_1002DCCF8();
  if (sub_1002CD420(v1))
  {
    sub_100009C7C();
    sub_10002EB78(&_mh_execute_header, v2, v3, "{msg%{public}.0s:flow controller is null, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v21, v22, v23, v24, v25);
  }

  v8 = sub_1002DCCF8();
  if (os_signpost_enabled(v8))
  {
    sub_100009C7C();
    sub_10002EAF4(&_mh_execute_header, v9, v10, v11, "flow controller is null", "{msg%{public}.0s:flow controller is null, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v12, v13, v21, v22, v23, v24, v25);
  }

  v14 = sub_1002DCCF8();
  if (sub_1002CD438(v14))
  {
    sub_100009C7C();
    sub_10002EB58(&_mh_execute_header, v15, v16, "{msg%{public}.0s:flow controller is null, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v17, v18, v19, v20, v21, v22, v23, v24, v25);
  }

  abort_report_np();
  __break(1u);
}

void sub_1002E6EEC()
{
  v1 = sub_1002DCCF8();
  if (sub_1002CD420(v1))
  {
    sub_100009C7C();
    sub_10002EB78(&_mh_execute_header, v2, v3, "{msg%{public}.0s:CSSPUAccel is null, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v21, v22, v23, v24, v25);
  }

  v8 = sub_1002DCCF8();
  if (os_signpost_enabled(v8))
  {
    sub_100009C7C();
    sub_10002EAF4(&_mh_execute_header, v9, v10, v11, "CSSPUAccel is null", "{msg%{public}.0s:CSSPUAccel is null, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v12, v13, v21, v22, v23, v24, v25);
  }

  v14 = sub_1002DCCF8();
  if (sub_1002CD438(v14))
  {
    sub_100009C7C();
    sub_10002EB58(&_mh_execute_header, v15, v16, "{msg%{public}.0s:CSSPUAccel is null, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v17, v18, v19, v20, v21, v22, v23, v24, v25);
  }

  abort_report_np();
  __break(1u);
}

void sub_1002E7468()
{
  v1 = sub_1002DCCF8();
  if (sub_1002CD420(v1))
  {
    sub_100009C7C();
    sub_10002EB78(&_mh_execute_header, v2, v3, "{msg%{public}.0s:CSSPUMag is null, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v21, v22, v23, v24, v25);
  }

  v8 = sub_1002DCCF8();
  if (os_signpost_enabled(v8))
  {
    sub_100009C7C();
    sub_10002EAF4(&_mh_execute_header, v9, v10, v11, "CSSPUMag is null", "{msg%{public}.0s:CSSPUMag is null, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v12, v13, v21, v22, v23, v24, v25);
  }

  v14 = sub_1002DCCF8();
  if (sub_1002CD438(v14))
  {
    sub_100009C7C();
    sub_10002EB58(&_mh_execute_header, v15, v16, "{msg%{public}.0s:CSSPUMag is null, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v17, v18, v19, v20, v21, v22, v23, v24, v25);
  }

  abort_report_np();
  __break(1u);
}

uint64_t sub_1002E7E48()
{
  v1 = sub_1002DCCF8();
  if (sub_1002CD420(v1))
  {
    sub_100009C7C();
    sub_10002EB78(&_mh_execute_header, v2, v3, "{msg%{public}.0s:flow controller is null, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v23, v24, v25, v26, v27);
  }

  v8 = sub_1002DCCF8();
  if (os_signpost_enabled(v8))
  {
    sub_100009C7C();
    sub_10002EAF4(&_mh_execute_header, v9, v10, v11, "flow controller is null", "{msg%{public}.0s:flow controller is null, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v12, v13, v23, v24, v25, v26, v27);
  }

  v14 = sub_1002DCCF8();
  if (sub_1002CD438(v14))
  {
    sub_100009C7C();
    sub_10002EB58(&_mh_execute_header, v15, v16, "{msg%{public}.0s:flow controller is null, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v17, v18, v19, v20, v23, v24, v25, v26, v27);
  }

  v21 = abort_report_np();
  return sub_1002E7F6C(v21);
}

uint64_t CSFastpathGlue::open(CSFastpathGlue *this, int a2, io_service_t a3)
{
  *(this + 2) = 0;
  v5 = (this + 16);
  *this = a2;
  v6 = (this + 8);
  v7 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0x53u, 0xEAu, 0x67u, 0x34u, 0xC7u, 0xEu, 0x46u, 0x35u, 0x9Cu, 0xF5u, 0x4Fu, 0xAFu, 5u, 0xB4u, 0xF2u, 0x30u);
  v8 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
  v9 = IOCreatePlugInInterfaceForService(a3, v7, v8, v6, &theScore);
  if (!v9)
  {
    v11 = *v6;
    QueryInterface = (**v6)->QueryInterface;
    v13 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0xA6u, 0x7Au, 0x69u, 0x95u, 0x23u, 0x6Bu, 0x44u, 0xDEu, 0x97u, 0xB5u, 0x27u, 0xB9u, 0xB1u, 0xE6u, 0x6Fu, 0x2Fu);
    v14 = CFUUIDGetUUIDBytes(v13);
    (QueryInterface)(v11, *&v14.byte0, *&v14.byte8, v5);
    if (*v5)
    {
      v9 = (*(**v5 + 64))(*v5);
      if (v9)
      {
        if (qword_100456808 != -1)
        {
          sub_1002E8BB4();
        }

        v15 = qword_100456810;
        if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_FAULT))
        {
          *buf = 67109120;
          v19 = v9;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, "error: failed to open AOP, error 0x%x", buf, 8u);
        }

        *v5 = 0;
      }

      else
      {
        *(this + 6) = (*(**(this + 2) + 88))(*(this + 2));
      }
    }

    else
    {
      if (qword_100456808 != -1)
      {
        sub_1002E8BB4();
      }

      v16 = qword_100456810;
      if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_FAULT))
      {
        *buf = 67109120;
        v19 = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "error: failed to query fastpath interface, error 0x%x", buf, 8u);
      }

      return 0;
    }
  }

  return v9;
}

uint64_t CSFastpathGlue::close(CSFastpathGlue *this)
{
  result = *(this + 2);
  if (result)
  {
    (*(*result + 72))(result);
    result = *(this + 1);
    if (result)
    {
      (*(*result + 24))(result);
      result = IODestroyPlugInInterface(*(this + 1));
    }

    *(this + 2) = 0;
  }

  return result;
}

BOOL CSFastpathGlue::setupForReading(CSFastpathGlue *this, int a2, unsigned __int8 *a3)
{
  v3 = **(this + 2);
  v4 = (*(this + 6) * a2);
  if (*(this + 4))
  {
    v5 = (*(v3 + 104))();
    if (v5)
    {
      v6 = v5;
      if (qword_100456808 != -1)
      {
        sub_1002E8BDC();
      }

      v7 = qword_100456810;
      result = os_log_type_enabled(qword_100456810, OS_LOG_TYPE_FAULT);
      if (result)
      {
        v12 = 67109120;
        v13 = v6;
        v9 = "error: Read error 0x%x";
LABEL_12:
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, v9, &v12, 8u);
        return 0;
      }

      return result;
    }

    return 1;
  }

  v10 = (*(v3 + 112))();
  if (!v10)
  {
    return 1;
  }

  v11 = v10;
  if (qword_100456808 != -1)
  {
    sub_1002E8BDC();
  }

  v7 = qword_100456810;
  result = os_log_type_enabled(qword_100456810, OS_LOG_TYPE_FAULT);
  if (result)
  {
    v12 = 67109120;
    v13 = v11;
    v9 = "error: ReadLast error 0x%x";
    goto LABEL_12;
  }

  return result;
}

uint64_t CSFastpathGlue::read(CSFastpathGlue *this, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(this + 2);
  if (!v4)
  {
    return 0;
  }

  (*(*v4 + 96))(v4);
  __chkstk_darwin();
  v8 = &v22[-v7];
  if (!CSFastpathGlue::setupForReading(this, a3, &v22[-v7]))
  {
    return 0;
  }

  v24 = 0;
  v9 = 0;
  if (a3)
  {
    while ((*(**(this + 2) + 128))(*(this + 2), v8, this + 40, &v24, 0, 0))
    {
      memcpy(a2, v24, *(this + 6));
      v23 = 0;
      (*(**(this + 2) + 136))(*(this + 2), v8, *(this + 5), &v23);
      if (v23)
      {
        if (qword_100456808 != -1)
        {
          sub_1002E8BB4();
        }

        v11 = qword_100456810;
        if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_ERROR))
        {
          v12 = *this;
          v14 = v8[10];
          v13 = v8[11];
          v16 = v8[3];
          v15 = v8[4];
          v17 = v8[2];
          v19 = v8[8];
          v18 = v8[9];
          v20 = v8[7];
          *buf = 67111168;
          v26 = v12;
          v27 = 2048;
          v28 = v14;
          v29 = 2048;
          v30 = v13;
          v31 = 2048;
          v32 = v16;
          v33 = 2048;
          v34 = v15;
          v35 = 2048;
          v36 = v17;
          v37 = 2048;
          v38 = v19;
          v39 = 2048;
          v40 = v18;
          v41 = 2048;
          v42 = v20;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "interface %0x corrupt count %zd offset %zd, desc read/write [%llu/%llu/%zd, %llu/%llu/%zd", buf, 0x58u);
          if (qword_100456808 != -1)
          {
            sub_1002E8BB4();
          }
        }

        v21 = qword_100456810;
        if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_FAULT))
        {
          *buf = 67109376;
          v26 = v9;
          v27 = 1024;
          LODWORD(v28) = 1;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_FAULT, "Read %u, corrupt %u", buf, 0xEu);
        }

        return v9;
      }

      v9 = (v9 + 1);
      a2 += *(this + 6);
      if (a3 == v9)
      {
        return a3;
      }
    }
  }

  return v9;
}

uint64_t CSFastpathGlue::readInChunks(int *a1, char *a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 2);
  if (!v6)
  {
    return 0;
  }

  (*(*v6 + 96))(v6);
  __chkstk_darwin();
  v12 = &v31[-v11];
  if (!CSFastpathGlue::setupForReading(a1, a4, &v31[-v11]))
  {
    return 0;
  }

  v33 = 0;
  v13 = 0;
  if (a4)
  {
    v14 = a2;
    while ((*(**(a1 + 2) + 128))(*(a1 + 2), v12, a1 + 10, &v33, 0, 0))
    {
      memcpy(v14, v33, a1[6]);
      v32 = 0;
      (*(**(a1 + 2) + 136))(*(a1 + 2), v12, *(a1 + 5), &v32);
      if (v32)
      {
        if (qword_100456808 != -1)
        {
          sub_1002E8BB4();
        }

        v17 = qword_100456810;
        if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_ERROR))
        {
          v18 = *a1;
          v20 = v12[10];
          v19 = v12[11];
          v22 = v12[3];
          v21 = v12[4];
          v23 = v12[2];
          v25 = v12[8];
          v24 = v12[9];
          v26 = v12[7];
          *buf = 67111168;
          v35 = v18;
          v36 = 2048;
          v37 = v20;
          v38 = 2048;
          v39 = v19;
          v40 = 2048;
          v41 = v22;
          v42 = 2048;
          v43 = v21;
          v44 = 2048;
          v45 = v23;
          v46 = 2048;
          v47 = v25;
          v48 = 2048;
          v49 = v24;
          v50 = 2048;
          v51 = v26;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "interface %0x corrupt count %zd offset %zd, desc read/write [%llu/%llu/%zd, %llu/%llu/%zd", buf, 0x58u);
        }

        v16 = 0;
        v15 = 1;
        goto LABEL_20;
      }

      v13 = (v13 + 1);
      if (v13 % a3)
      {
        v14 += a1[6];
      }

      else
      {
        sub_1002E8ADC(a5, a2, a3);
        bzero(a2, a1[6] * a3);
        v14 = a2;
      }

      if (a4 == v13)
      {
        v15 = 0;
        v16 = 1;
        v13 = a4;
        goto LABEL_20;
      }
    }
  }

  v15 = 0;
  v16 = 1;
LABEL_20:
  v27 = v13 % a3;
  v28 = v13 >= a3 || v13 == 0;
  if (!v28 || v27)
  {
    sub_1002E8ADC(a5, a2, v27);
    bzero(a2, a1[6] * a3);
  }

  if ((v16 & 1) == 0)
  {
    if (qword_100456808 != -1)
    {
      sub_1002E8BB4();
    }

    v29 = qword_100456810;
    if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109376;
      v35 = v13;
      v36 = 1024;
      LODWORD(v37) = v15;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_FAULT, "Read %u, corrupt %u", buf, 0xEu);
    }
  }

  return v13;
}

uint64_t sub_1002E8ADC(uint64_t a1, uint64_t a2, int a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_1002E8B68();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

void sub_1002E8B68()
{
  exception = __cxa_allocate_exception(8uLL);
}

void SafetySOSEventDetected::SafetySOSEventDetected(SafetySOSEventDetected *this)
{
  *this = off_1004317D8;
  *(this + 3) = 0;
}

{
  *this = off_1004317D8;
  *(this + 3) = 0;
}

void SafetySOSEventDetected::~SafetySOSEventDetected(SafetySOSEventDetected *this)
{
  PB::Base::~Base(this);

  operator delete();
}

void SafetySOSEventDetected::SafetySOSEventDetected(SafetySOSEventDetected *this, const SafetySOSEventDetected *a2)
{
  *this = off_1004317D8;
  *(this + 3) = 0;
  if (*(a2 + 12))
  {
    v2 = *(a2 + 2);
    *(this + 12) = 1;
    *(this + 2) = v2;
  }
}

{
  *this = off_1004317D8;
  *(this + 3) = 0;
  if (*(a2 + 12))
  {
    v2 = *(a2 + 2);
    *(this + 12) = 1;
    *(this + 2) = v2;
  }
}

uint64_t SafetySOSEventDetected::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v6[0] = off_1004317D8;
    v3 = *(a2 + 12) & 1;
    v4 = *(a1 + 8);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 12) = v3;
    v6[1] = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

{
  if (a1 != a2)
  {
    v6[0] = off_1004317D8;
    v3 = *(a2 + 8);
    *(a2 + 12) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[1] = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

uint64_t swap(uint64_t result, SafetySOSEventDetected *a2)
{
  v2 = *(result + 12);
  *(result + 12) = *(a2 + 3);
  *(a2 + 3) = v2;
  v3 = *(result + 8);
  *(result + 8) = *(a2 + 2);
  *(a2 + 2) = v3;
  return result;
}

uint64_t SafetySOSEventDetected::SafetySOSEventDetected(uint64_t result, uint64_t a2)
{
  *result = off_1004317D8;
  *(result + 12) = *(a2 + 12);
  *(a2 + 12) = 0;
  *(result + 8) = *(a2 + 8);
  return result;
}

{
  *result = off_1004317D8;
  *(result + 12) = *(a2 + 12);
  *(a2 + 12) = 0;
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t SafetySOSEventDetected::formatText(SafetySOSEventDetected *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 12))
  {
    PB::TextFormatter::format(a2, "mode", *(this + 2));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t SafetySOSEventDetected::readFrom(SafetySOSEventDetected *this, PB::Reader *a2)
{
  v3 = *(a2 + 1);
  v2 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v3 < v2 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *a2;
      if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = v2 >= v3;
        v19 = v2 - v3;
        if (!v18)
        {
          v19 = 0;
        }

        v20 = (v7 + v3);
        v21 = v3 + 1;
        while (1)
        {
          if (!v19)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_51;
          }

          v22 = *v20;
          *(a2 + 1) = v21;
          v17 |= (v22 & 0x7F) << v15;
          if ((v22 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v19;
          ++v20;
          ++v21;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_22;
          }
        }

        v10 = (v4 & 1) != 0 ? 0 : v17;
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v3);
        v12 = v3 + 1;
        while (1)
        {
          *(a2 + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_22:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      if ((v10 >> 3) == 1)
      {
        *(this + 12) |= 1u;
        v23 = *(a2 + 1);
        v2 = *(a2 + 2);
        v24 = *a2;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
        {
          v31 = 0;
          v32 = 0;
          v27 = 0;
          if (v2 <= v23)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v33 = v3 - v23;
          v34 = (v24 + v23);
          v35 = v23 + 1;
          while (1)
          {
            if (!v33)
            {
              LODWORD(v27) = 0;
              *(a2 + 24) = 1;
              goto LABEL_46;
            }

            v36 = v35;
            v37 = *v34;
            *(a2 + 1) = v36;
            v27 |= (v37 & 0x7F) << v31;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            --v33;
            ++v34;
            v35 = v36 + 1;
            v14 = v32++ > 8;
            if (v14)
            {
              LODWORD(v27) = 0;
              goto LABEL_45;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v27) = 0;
          }

LABEL_45:
          v3 = v36;
        }

        else
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = (v24 + v23);
          v29 = v23 + 1;
          while (1)
          {
            v3 = v29;
            *(a2 + 1) = v29;
            v30 = *v28++;
            v27 |= (v30 & 0x7F) << v25;
            if ((v30 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            ++v29;
            v14 = v26++ > 8;
            if (v14)
            {
              LODWORD(v27) = 0;
              break;
            }
          }
        }

LABEL_46:
        *(this + 2) = v27;
      }

      else
      {
        if (!PB::Reader::skip(a2, v10 >> 3, v10 & 7, 0))
        {
          v38 = 0;
          return v38 & 1;
        }

        v3 = *(a2 + 1);
        v2 = *(a2 + 2);
      }

      v4 = *(a2 + 24);
    }

    while (v3 < v2 && (*(a2 + 24) & 1) == 0);
  }

LABEL_51:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t SafetySOSEventDetected::writeTo(uint64_t this, PB::Writer *a2)
{
  if (*(this + 12))
  {
    return PB::Writer::writeVarInt(a2, *(this + 8), 1u);
  }

  return this;
}

BOOL SafetySOSEventDetected::operator==(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  result = (*(a2 + 12) & 1) == 0;
  if (v3)
  {
    return (*(a2 + 12) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return result;
}

uint64_t SafetySOSEventDetected::hash_value(SafetySOSEventDetected *this)
{
  if (*(this + 12))
  {
    return *(this + 2);
  }

  else
  {
    return 0;
  }
}

void KappaCompanionUUID::KappaCompanionUUID(KappaCompanionUUID *this)
{
  *this = off_100431828;
  *(this + 1) = 0;
}

{
  *this = off_100431828;
  *(this + 1) = 0;
}

void KappaCompanionUUID::~KappaCompanionUUID(KappaCompanionUUID *this)
{
  *this = off_100431828;
  v4 = *(this + 1);
  v2 = (this + 8);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_100011018(v2, v3);
  }

  PB::Base::~Base(this);
}

{
  KappaCompanionUUID::~KappaCompanionUUID(this);

  operator delete();
}

void KappaCompanionUUID::KappaCompanionUUID(KappaCompanionUUID *this, const KappaCompanionUUID *a2)
{
  *this = off_100431828;
  *(this + 1) = 0;
  if (*(a2 + 1))
  {
    operator new();
  }
}

const KappaCompanionUUID *KappaCompanionUUID::operator=(const KappaCompanionUUID *a1, const KappaCompanionUUID *a2)
{
  if (a1 != a2)
  {
    KappaCompanionUUID::KappaCompanionUUID(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    KappaCompanionUUID::~KappaCompanionUUID(&v5);
  }

  return a1;
}

uint64_t swap(uint64_t result, KappaCompanionUUID *a2)
{
  v2 = *(result + 8);
  *(result + 8) = *(a2 + 1);
  *(a2 + 1) = v2;
  return result;
}

void *KappaCompanionUUID::KappaCompanionUUID(void *a1, uint64_t a2)
{
  *a1 = off_100431828;
  a1[1] = 0;
  v3 = a1 + 1;
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  v5 = *v3;
  *v3 = v4;
  if (v5)
  {
    sub_100011018(v3, v5);
  }

  return a1;
}

uint64_t KappaCompanionUUID::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    KappaCompanionUUID::KappaCompanionUUID(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    KappaCompanionUUID::~KappaCompanionUUID(&v5);
  }

  return a1;
}

uint64_t KappaCompanionUUID::formatText(KappaCompanionUUID *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 1))
  {
    PB::TextFormatter::format();
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t KappaCompanionUUID::readFrom(KappaCompanionUUID *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v14 = 0;
        v15 = 0;
        v9 = 0;
        v16 = v3 >= v2;
        v17 = v3 - v2;
        if (!v16)
        {
          v17 = 0;
        }

        v18 = (v6 + v2);
        v19 = v2 + 1;
        while (1)
        {
          if (!v17)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_29;
          }

          v20 = *v18;
          *(a2 + 1) = v19;
          v9 |= (v20 & 0x7F) << v14;
          if ((v20 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          --v17;
          ++v18;
          ++v19;
          v13 = v15++ > 8;
          if (v13)
          {
LABEL_18:
            v9 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v9 = 0;
        }
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = (v6 + v2);
        v11 = v2 + 1;
        while (1)
        {
          *(a2 + 1) = v11;
          v12 = *v10++;
          v9 |= (v12 & 0x7F) << v7;
          if ((v12 & 0x80) == 0)
          {
            break;
          }

          v7 += 7;
          ++v11;
          v13 = v8++ > 8;
          if (v13)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v9 & 7) == 4))
      {
        break;
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

      if (!PB::Reader::skip(a2, v9 >> 3, v9 & 7, 0))
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_29:
  v21 = v4 ^ 1;
  return v21 & 1;
}

uint64_t KappaCompanionUUID::writeTo(uint64_t this, PB::Writer *a2)
{
  if (*(this + 8))
  {
    return PB::Writer::write();
  }

  return this;
}

BOOL KappaCompanionUUID::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    v5 = *(v2 + 23);
    if (v5 >= 0)
    {
      v6 = *(v2 + 23);
    }

    else
    {
      v6 = v2[1];
    }

    v7 = *(v3 + 23);
    v8 = v7;
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(v3 + 8);
    }

    if (v6 == v7 && (v5 >= 0 ? (v9 = v2) : (v9 = *v2), v8 >= 0 ? (v10 = *(a2 + 8)) : (v10 = *v3), !memcmp(v9, v10, v6)))
    {
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t KappaCompanionUUID::hash_value(KappaCompanionUUID *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    return sub_100011074(&v3, v1);
  }

  else
  {
    return 0;
  }
}

void sub_1002E99F8(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1002E9BC0(uint64_t a1, void *a2)
{
  v3 = a2;
  state = xpc_activity_get_state(v3);
  if (state == 2)
  {
    if (qword_1004568A8 != -1)
    {
      sub_1002EA524();
    }

    v8 = qword_1004568B0;
    if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v15 = "com.apple.anomalydetectiond.CoreAnalytics.UserInfo";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Running activity %s", buf, 0xCu);
    }

    v9 = *(a1 + 32);
    v10 = *(v9 + 24);
    if (v10)
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1002E9E9C;
      v12[3] = &unk_1004318C0;
      v12[4] = v9;
      v13 = v3;
      (*(v10 + 16))(v10, 0, v12);
    }

    if (xpc_activity_get_state(v3) == 2 && !xpc_activity_set_state(v3, 4))
    {
      if (qword_1004568A8 != -1)
      {
        sub_1002EA4FC();
      }

      v7 = qword_1004568B0;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v11 = xpc_activity_get_state(v3);
        *buf = 134349056;
        v15 = v11;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to mark activity as CONTINUE. Current state is %{public}ld", buf, 0xCu);
      }

      goto LABEL_8;
    }
  }

  else if (!state)
  {
    if (qword_1004568A8 != -1)
    {
      sub_1002EA524();
    }

    v5 = qword_1004568B0;
    if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_INFO))
    {
      v6 = *(*(a1 + 32) + 8);
      *buf = 134217984;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Configuring UserInfo with cadence %llu", buf, 0xCu);
    }

    v7 = xpc_activity_copy_criteria(v3);
    xpc_dictionary_set_int64(v7, XPC_ACTIVITY_INTERVAL, *(*(a1 + 32) + 8));
    xpc_activity_set_criteria(v3, v7);
LABEL_8:
  }
}

void sub_1002E9E9C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (qword_1004568A8 != -1)
  {
    sub_1002EA524();
  }

  v6 = qword_1004568B0;
  if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v16 = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Kappa handler executed with result: %d", buf, 8u);
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  if (v8)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1002EA0C8;
    v11[3] = &unk_100431898;
    v11[4] = v7;
    v12 = v5;
    v14 = a2;
    v13 = *(a1 + 40);
    (*(v8 + 16))(v8, v12, v11);
  }

  if (a2)
  {
    if (qword_1004568A8 != -1)
    {
      sub_1002EA4FC();
    }

    v9 = qword_1004568B0;
    if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v10 = "Kappa handler executed successfully";
LABEL_16:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, v10, buf, 2u);
    }
  }

  else
  {
    if (qword_1004568A8 != -1)
    {
      sub_1002EA4FC();
    }

    v9 = qword_1004568B0;
    if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v10 = "CoreAnalytics Kappa upload failed";
      goto LABEL_16;
    }
  }
}

void sub_1002EA0C8(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    if (qword_1004568A8 != -1)
    {
      sub_1002EA524();
    }

    v6 = qword_1004568B0;
    if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v7 = "Marty handler executed successfully";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, v7, buf, 2u);
    }
  }

  else
  {
    if (qword_1004568A8 != -1)
    {
      sub_1002EA524();
    }

    v6 = qword_1004568B0;
    if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v7 = "CoreAnalytics Marty upload failed";
      goto LABEL_10;
    }
  }

  v8 = *(*(a1 + 32) + 32);
  if (v8)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1002EA248;
    v10[3] = &unk_100431870;
    v12 = *(a1 + 56);
    v13 = a2;
    v9 = *(a1 + 40);
    v11 = *(a1 + 48);
    (*(v8 + 16))(v8, v9, v10);
  }
}

void sub_1002EA248(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (*(a1 + 40) == 1 && *(a1 + 41) == 1 && (a2 & 1) != 0)
  {
    state = xpc_activity_get_state(*(a1 + 32));
    if ((state == 4 || state == 2) && !xpc_activity_set_state(*(a1 + 32), 5))
    {
      if (qword_1004568A8 != -1)
      {
        sub_1002EA524();
      }

      v7 = qword_1004568B0;
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_21;
      }

      v8 = xpc_activity_get_state(*(a1 + 32));
      v12 = 134349056;
      v13 = v8;
      v9 = "Failed to mark activity as DONE. Current state is %{public}ld";
LABEL_20:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, v9, &v12, 0xCu);
LABEL_21:
    }
  }

  else
  {
    if (qword_1004568A8 != -1)
    {
      sub_1002EA524();
    }

    v10 = qword_1004568B0;
    if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_INFO))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "At least one CoreAnalytics uploader failed to complete. Will retry later.", &v12, 2u);
    }

    if (!xpc_activity_set_state(*(a1 + 32), 3))
    {
      if (qword_1004568A8 != -1)
      {
        sub_1002EA4FC();
      }

      v7 = qword_1004568B0;
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_21;
      }

      v11 = xpc_activity_get_state(*(a1 + 32));
      v12 = 134349056;
      v13 = v11;
      v9 = "Failed to mark activity as DEFER. Current state is %{public}ld";
      goto LABEL_20;
    }
  }
}

void sub_1002EA4B8(id a1)
{
  qword_1004568B0 = os_log_create("com.apple.anomalydetectiond", "CoreAnalytics");

  _objc_release_x1();
}

double CLKappaEstimatesAlgCrashResult::reset(CLKappaEstimatesAlgCrashResult *this)
{
  *(this + 8) = 0;
  *(this + 3) = 0;
  *(this + 92) = 0;
  *(this + 24) = 0;
  result = 0.0;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 33) = 0;
  return result;
}

void CLKappaEstimatesAlgCrashResult::log(CLKappaEstimatesAlgCrashResult *this)
{
  if (qword_1004567F8 != -1)
  {
    sub_1002ED38C();
  }

  v2 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 52);
    v4 = *(this + 53);
    v5 = *(this + 54);
    v54 = 134364672;
    v59 = v3;
    v6 = *(this + 56);
    v7 = *(this + 57);
    v73 = v4;
    v8 = *(this + 58);
    v75 = v5;
    v9 = *(this + 67);
    v77 = v6;
    v79 = v7;
    v10 = *(this + 4);
    v11 = *(this + 5);
    v81 = v8;
    v95 = v9;
    LODWORD(v8) = *(this + 7);
    v12 = *(this + 6);
    v97 = v10;
    v99 = v11;
    v13 = *(this + 8);
    v14 = *(this + 9);
    v101 = v12;
    v103 = v13;
    v15 = *(this + 10);
    v16 = *(this + 11);
    v105 = v14;
    v107 = v15;
    v17 = *(this + 16);
    v18 = *(this + 17);
    v109 = *&v8;
    v111 = v16;
    v19 = *(this + 18);
    v20 = *(this + 19);
    v113 = v17;
    v115 = v18;
    v21 = *(this + 20);
    v22 = *(this + 21);
    v117 = v19;
    v119 = v20;
    v23 = *(this + 22);
    v24 = *(this + 23);
    v121 = v21;
    v123 = v22;
    v25 = *(this + 24);
    v26 = *(this + 25);
    v125 = v23;
    v127 = v24;
    v27 = *(this + 26);
    v28 = *(this + 27);
    v129 = v25;
    v131 = v26;
    v29 = *(this + 12);
    v30 = *(this + 13);
    v133 = v27;
    v135 = v28;
    v31 = *(this + 14);
    v32 = *(this + 15);
    v137 = v29;
    v139 = v30;
    v33 = *(this + 28);
    v34 = *(this + 29);
    v141 = v31;
    v143 = v32;
    LODWORD(v32) = *(this + 31);
    v35 = *(this + 30);
    v145 = v33;
    v147 = v34;
    LODWORD(v34) = *(this + 34);
    v36 = *(this + 35);
    v149 = v35;
    v151 = v36;
    v37 = *(this + 37);
    v153 = *(this + 36);
    v155 = v37;
    LODWORD(v37) = *(this + 39);
    v38 = *(this + 38);
    v157 = *&v32;
    v159 = v38;
    v39 = *(this + 33);
    v161 = *(this + 32);
    v163 = v39;
    LODWORD(v39) = *(this + 41);
    v40 = *(this + 40);
    v165 = *&v37;
    v167 = v40;
    LODWORD(v37) = *(this + 43);
    v169 = *(this + 42);
    v171 = *&v37;
    v173 = *(this + 44);
    v175 = *&v34;
    v177 = *&v39;
    v41 = *(this + 184);
    v42 = *(this + 220);
    v43 = *(this + 221);
    v44 = *(this + 222);
    v45 = *(this + 223);
    v46 = *(this + 200);
    v47 = *(this + 51);
    v48 = *(this + 248);
    v49 = *(this + 249);
    v50 = *(this + 250);
    v51 = *(this + 185);
    v52 = *(this + 63);
    v53 = *(this + 256);
    v55 = *(this + 24);
    v56 = 1026;
    v57 = v41;
    v58 = 2050;
    v60 = 1026;
    v61 = v42;
    v62 = 1026;
    v63 = v43;
    v64 = 1026;
    v65 = v44;
    v66 = 1026;
    v67 = v45;
    v68 = 1026;
    v69 = v46;
    v70 = 1026;
    v71 = v47;
    v72 = 2050;
    v74 = 2050;
    v76 = 2050;
    v78 = 2050;
    v80 = 2050;
    v82 = 1026;
    v83 = v48;
    v84 = 1026;
    v85 = v49;
    v86 = 1026;
    v87 = v50;
    v88 = 1026;
    v89 = v51;
    v90 = 1026;
    v91 = v52;
    v92 = 1026;
    v93 = v53;
    v94 = 2050;
    v96 = 2050;
    v98 = 2050;
    v100 = 2050;
    v102 = 2050;
    v104 = 2050;
    v106 = 2050;
    v108 = 2050;
    v110 = 2050;
    v112 = 2050;
    v114 = 2050;
    v116 = 2050;
    v118 = 2050;
    v120 = 2050;
    v122 = 2050;
    v124 = 2050;
    v126 = 2050;
    v128 = 2050;
    v130 = 2050;
    v132 = 2050;
    v134 = 2050;
    v136 = 2050;
    v138 = 2050;
    v140 = 2050;
    v142 = 2050;
    v144 = 2050;
    v146 = 2050;
    v148 = 2050;
    v150 = 2050;
    v152 = 2050;
    v154 = 2050;
    v156 = 2050;
    v158 = 2050;
    v160 = 2050;
    v162 = 2050;
    v164 = 2050;
    v166 = 2050;
    v168 = 2050;
    v170 = 2050;
    v172 = 2050;
    v174 = 2050;
    v176 = 2050;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[C] AlgBlock summary,A,%{public}llu,B,%{public}d,C,%{public}f,D,%{public}d,E,%{public}d,F,%{public}d,G,%{public}d,H,%{public}d,I,%{public}d,J,%{public}f,K,%{public}f,L,%{public}f,M,%{public}f,N,%{public}f,O,%{public}d,P,%{public}d,Q,%{public}d,R,%{public}d,S,%{public}d,T,%{public}d,U,%{public}f,config-1,%{public}f,config-2,%{public}f,config-3,%{public}f,config-4,%{public}f,config-5,%{public}f,config-6,%{public}f,config-7,%{public}f,config-8,%{public}f,config-9,%{public}f,config-10,%{public}f,config-11,%{public}f,config-12,%{public}f,config-13,%{public}f,config-14,%{public}f,config-15,%{public}f,config-16,%{public}f,config-17,%{public}f,config-18,%{public}f,config-19,%{public}f,config-20,%{public}f,config-21,%{public}f,config-22,%{public}f,config-23,%{public}f,config-24,%{public}f,config-25,%{public}f,config-26,%{public}f,config-27,%{public}f,config-28,%{public}f,config-29,%{public}f,config-30,%{public}f,config-31,%{public}f,config-32,%{public}f,config-33,%{public}f,config-34,%{public}f,config-35,%{public}f,config-36,%{public}f,config-37,%{public}f,config-38,%{public}f,config-39,%{public}f,config-40,%{public}f,config-41,%{public}f\n", &v54, 0x23Au);
  }
}

void CLKappaEstimatesAlgCrash::CLKappaEstimatesAlgCrash(CLKappaEstimatesAlgCrash *this, uint64_t *a2)
{
  CLKappaAlgBlock::CLKappaAlgBlock(this, a2 + 1);
  v4 = *a2;
  *v5 = *a2;
  *(this + *(v4 - 152)) = a2[6];
  *(this + *(*this - 160)) = a2[7];
  *(this + *(*this - 168)) = a2[8];
  *(this + *(*this - 176)) = a2[9];
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 46) = 0;
  *&v6 = 0x80000000800000;
  *(&v6 + 1) = 0x80000000800000;
  *(this + 56) = v6;
  *(this + 9) = 0x80000000800000;
  *(this + 40) = 0;
  *(this + 82) = 0;
  *(this + 84) = 0x80000000800000;
  *(this + 92) = 0x800000FFFFFFFFLL;
  *(this + 25) = 0;
  *(this + 104) = 0;
  *(this + 27) = -1;
  sub_1002ED1D4();
}

void sub_1002EAC30(_Unwind_Exception *a1)
{
  v4 = *(v1 + 5);
  if (v4)
  {
    sub_100009A48(v4);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, (v2 + 8));
  _Unwind_Resume(a1);
}

char **sub_1002EAC58@<X0>(uint64_t a1@<X0>, char ***a2@<X8>)
{
  result = *a1;
  {
    v6 = *(a1 + 8);
    *a2 = result;
    a2[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

void CLKappaEstimatesAlgCrash::CLKappaEstimatesAlgCrash(CLKappaEstimatesAlgCrash *this)
{
  *this = off_100411FE8;
  *(this + 14) = off_100412090;
  *(this + 15) = off_100412158;
  *(this + 16) = off_100412210;
  CLKappaAlgBlock::CLKappaAlgBlock(this, off_100431F28);
  *v1 = off_1004319D8;
  *(v1 + 112) = off_100431C98;
  *(v1 + 120) = off_100431DE0;
  *(v1 + 128) = off_100431ED0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 46) = 0;
  *&v2 = 0x80000000800000;
  *(&v2 + 1) = 0x80000000800000;
  *(v1 + 56) = v2;
  *(v1 + 72) = 0x80000000800000;
  *(v1 + 80) = 0;
  *(v1 + 82) = 0;
  *(v1 + 84) = 0x80000000800000;
  *(v1 + 92) = 0x800000FFFFFFFFLL;
  *(v1 + 100) = 0;
  *(v1 + 104) = 0;
  *(v1 + 108) = -1;
  sub_1002ED1D4();
}

void sub_1002EAF0C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 5);
  if (v3)
  {
    sub_100009A48(v3);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100431F28);
  _Unwind_Resume(a1);
}

void CLKappaEstimatesAlgCrash::resetConfiguration(CLKappaEstimatesAlgCrash *this)
{
  v188 = [CSPersistentConfiguration configBaseKey:"FeaturesAlgCrashConfig" forFeatureMode:*(this + 24)];
  v2 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v3) = 0.5;
  LODWORD(v4) = 3.0;
  LODWORD(v5) = 1193033728;
  [v2 algorithmThresholdNumber:0 inArrayForKey:v188 withMinValue:v3 maxValue:v5 defaultValue:v4];
  LODWORD(v189) = v6;

  v7 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v8) = 0.5;
  LODWORD(v9) = 9.0;
  LODWORD(v10) = 1193033728;
  [v7 algorithmThresholdNumber:1 inArrayForKey:v188 withMinValue:v8 maxValue:v10 defaultValue:v9];
  DWORD1(v189) = v11;

  v12 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v13) = 0.5;
  LODWORD(v14) = 1193033728;
  LODWORD(v15) = 1193033728;
  [v12 algorithmThresholdNumber:2 inArrayForKey:v188 withMinValue:v13 maxValue:v14 defaultValue:v15];
  DWORD2(v189) = v16;

  v17 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v18) = 1117782016;
  LODWORD(v19) = 9.0;
  [v17 algorithmThresholdNumber:6 inArrayForKey:v188 withMinValue:0.0 maxValue:v18 defaultValue:v19];
  HIDWORD(v189) = v20;

  v21 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v22) = 0.5;
  LODWORD(v23) = 3.0;
  LODWORD(v24) = 1193033728;
  [v21 algorithmThresholdNumber:3 inArrayForKey:v188 withMinValue:v22 maxValue:v24 defaultValue:v23];
  v190 = v25;

  v26 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v27) = 0.5;
  LODWORD(v28) = 1193033728;
  LODWORD(v29) = 1193033728;
  [v26 algorithmThresholdNumber:4 inArrayForKey:v188 withMinValue:v27 maxValue:v28 defaultValue:v29];
  v191 = v30;

  v31 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v32) = 0.5;
  LODWORD(v33) = 1193033728;
  LODWORD(v34) = 1193033728;
  [v31 algorithmThresholdNumber:5 inArrayForKey:v188 withMinValue:v32 maxValue:v33 defaultValue:v34];
  v192 = v35;

  v36 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v37) = 1117782016;
  LODWORD(v38) = 15.0;
  [v36 algorithmThresholdNumber:7 inArrayForKey:v188 withMinValue:0.0 maxValue:v37 defaultValue:v38];
  v193 = v39;

  v40 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v41) = 0.5;
  LODWORD(v42) = 3.0;
  LODWORD(v43) = 1193033728;
  [v40 algorithmThresholdNumber:20 inArrayForKey:v188 withMinValue:v41 maxValue:v43 defaultValue:v42];
  v194 = v44;

  v45 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v46) = 0.5;
  LODWORD(v47) = 1193033728;
  LODWORD(v48) = 1193033728;
  [v45 algorithmThresholdNumber:21 inArrayForKey:v188 withMinValue:v46 maxValue:v47 defaultValue:v48];
  v195 = v49;

  v50 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v51) = 0.5;
  LODWORD(v52) = 1193033728;
  LODWORD(v53) = 1193033728;
  [v50 algorithmThresholdNumber:22 inArrayForKey:v188 withMinValue:v51 maxValue:v52 defaultValue:v53];
  v196 = v54;

  v55 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v56) = 1117782016;
  LODWORD(v57) = 15.0;
  [v55 algorithmThresholdNumber:23 inArrayForKey:v188 withMinValue:0.0 maxValue:v56 defaultValue:v57];
  v197 = v58;

  v59 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v60) = 1120403456;
  LODWORD(v61) = 8.5;
  [v59 algorithmThresholdNumber:8 inArrayForKey:v188 withMinValue:0.0 maxValue:v60 defaultValue:v61];
  v198 = v62;

  v63 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v64) = 20.0;
  LODWORD(v65) = 0.375;
  [v63 algorithmThresholdNumber:9 inArrayForKey:v188 withMinValue:0.0 maxValue:v64 defaultValue:v65];
  v199 = v66;

  v67 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v68) = 1148846080;
  LODWORD(v69) = 1112014848;
  [v67 algorithmThresholdNumber:10 inArrayForKey:v188 withMinValue:0.0 maxValue:v68 defaultValue:v69];
  v200 = v70;

  v71 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v72) = 1148846080;
  LODWORD(v73) = 1120403456;
  [v71 algorithmThresholdNumber:11 inArrayForKey:v188 withMinValue:0.0 maxValue:v72 defaultValue:v73];
  v201 = v74;

  v75 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v76) = 1120403456;
  LODWORD(v77) = 8.5;
  [v75 algorithmThresholdNumber:12 inArrayForKey:v188 withMinValue:0.0 maxValue:v76 defaultValue:v77];
  v202 = v78;

  v79 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v80) = 20.0;
  LODWORD(v81) = 0.375;
  [v79 algorithmThresholdNumber:13 inArrayForKey:v188 withMinValue:0.0 maxValue:v80 defaultValue:v81];
  v203 = v82;

  v83 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v84) = 1148846080;
  LODWORD(v85) = 17.0;
  [v83 algorithmThresholdNumber:14 inArrayForKey:v188 withMinValue:0.0 maxValue:v84 defaultValue:v85];
  v204 = v86;

  v87 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v88) = 1148846080;
  LODWORD(v89) = 1114636288;
  [v87 algorithmThresholdNumber:15 inArrayForKey:v188 withMinValue:0.0 maxValue:v88 defaultValue:v89];
  v205 = v90;

  v91 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v92) = 1120403456;
  LODWORD(v93) = 8.5;
  [v91 algorithmThresholdNumber:16 inArrayForKey:v188 withMinValue:0.0 maxValue:v92 defaultValue:v93];
  v206 = v94;

  v95 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v96) = 20.0;
  LODWORD(v97) = 0.375;
  [v95 algorithmThresholdNumber:17 inArrayForKey:v188 withMinValue:0.0 maxValue:v96 defaultValue:v97];
  v207 = v98;

  v99 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v100) = *"ff&?33s?";
  LODWORD(v101) = 2.0;
  [v99 algorithmThresholdNumber:18 inArrayForKey:v188 withMinValue:0.0 maxValue:v101 defaultValue:v100];
  v208 = v102;

  v103 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v104) = 1061997773;
  LODWORD(v105) = 2.0;
  [v103 algorithmThresholdNumber:19 inArrayForKey:v188 withMinValue:0.0 maxValue:v105 defaultValue:v104];
  v209 = v106;

  v107 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v108) = 0.5;
  LODWORD(v109) = 8.0;
  LODWORD(v110) = 1193033728;
  [v107 algorithmThresholdNumber:24 inArrayForKey:v188 withMinValue:v108 maxValue:v110 defaultValue:v109];
  v210 = v111;

  v112 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v113) = 0.5;
  LODWORD(v114) = 13.0;
  LODWORD(v115) = 1193033728;
  [v112 algorithmThresholdNumber:25 inArrayForKey:v188 withMinValue:v113 maxValue:v115 defaultValue:v114];
  v211 = v116;

  v117 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v118) = 0.5;
  LODWORD(v119) = 1193033728;
  LODWORD(v120) = 1193033728;
  [v117 algorithmThresholdNumber:26 inArrayForKey:v188 withMinValue:v118 maxValue:v119 defaultValue:v120];
  v212 = v121;

  v122 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v123) = 0.5;
  LODWORD(v124) = 8.0;
  LODWORD(v125) = 1193033728;
  [v122 algorithmThresholdNumber:27 inArrayForKey:v188 withMinValue:v123 maxValue:v125 defaultValue:v124];
  v217 = v126;

  v127 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v128) = 0.5;
  LODWORD(v129) = 1193033728;
  LODWORD(v130) = 1193033728;
  [v127 algorithmThresholdNumber:28 inArrayForKey:v188 withMinValue:v128 maxValue:v129 defaultValue:v130];
  v218 = v131;

  v132 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v133) = 0.5;
  LODWORD(v134) = 1193033728;
  LODWORD(v135) = 1193033728;
  [v132 algorithmThresholdNumber:29 inArrayForKey:v188 withMinValue:v133 maxValue:v134 defaultValue:v135];
  v219 = v136;

  v137 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v138) = 1114636288;
  LODWORD(v139) = 19.0;
  [v137 algorithmThresholdNumber:30 inArrayForKey:v188 withMinValue:0.0 maxValue:v138 defaultValue:v139];
  v213 = v140;

  v141 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v142) = 1114636288;
  LODWORD(v143) = 19.0;
  [v141 algorithmThresholdNumber:31 inArrayForKey:v188 withMinValue:0.0 maxValue:v142 defaultValue:v143];
  v220 = v144;

  v145 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v146) = 1112014848;
  LODWORD(v147) = 7.0;
  [v145 algorithmThresholdNumber:32 inArrayForKey:v188 withMinValue:0.0 maxValue:v146 defaultValue:v147];
  v214 = v148;

  v149 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v150) = 1120403456;
  LODWORD(v151) = 1148846080;
  LODWORD(v152) = *"";
  [v149 algorithmThresholdNumber:33 inArrayForKey:v188 withMinValue:v150 maxValue:v152 defaultValue:v151];
  v215 = v153;

  v154 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v155) = 1112014848;
  LODWORD(v156) = 7.0;
  [v154 algorithmThresholdNumber:34 inArrayForKey:v188 withMinValue:0.0 maxValue:v155 defaultValue:v156];
  v221 = v157;

  v158 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v159) = 1120403456;
  LODWORD(v160) = 1148846080;
  LODWORD(v161) = *"";
  [v158 algorithmThresholdNumber:35 inArrayForKey:v188 withMinValue:v159 maxValue:v161 defaultValue:v160];
  v222 = v162;

  v163 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v164) = 15.0;
  LODWORD(v165) = -1138501878;
  LODWORD(v166) = 1193033728;
  [v163 algorithmThresholdNumber:39 inArrayForKey:v188 withMinValue:v165 maxValue:v166 defaultValue:v164];
  v216 = v167;

  v168 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v169) = 15.0;
  LODWORD(v170) = -1138501878;
  LODWORD(v171) = 1193033728;
  [v168 algorithmThresholdNumber:40 inArrayForKey:v188 withMinValue:v170 maxValue:v171 defaultValue:v169];
  v223 = v172;

  v173 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v174) = 1148846080;
  LODWORD(v175) = 1123024896;
  LODWORD(v176) = -1138501878;
  [v173 algorithmThresholdNumber:36 inArrayForKey:v188 withMinValue:v176 maxValue:v174 defaultValue:v175];
  v224 = v177;

  v178 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v179) = 1148846080;
  LODWORD(v180) = 1138819072;
  LODWORD(v181) = -1138501878;
  [v178 algorithmThresholdNumber:37 inArrayForKey:v188 withMinValue:v181 maxValue:v179 defaultValue:v180];
  v225 = v182;

  v183 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v184) = 1120403456;
  LODWORD(v185) = 7.0;
  LODWORD(v186) = -1138501878;
  [v183 algorithmThresholdNumber:38 inArrayForKey:v188 withMinValue:v186 maxValue:v184 defaultValue:v185];
  v226 = v187;

  CLKappaEstimatesAlgCrash::setConfig(this, &v189);
}

double CLKappaEstimatesAlgCrash::setConfig(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 32);
  v4 = *a2;
  v5 = a2[2];
  *(v3 + 32) = a2[1];
  *(v3 + 48) = v5;
  *(v3 + 16) = v4;
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[6];
  *(v3 + 96) = a2[5];
  *(v3 + 112) = v8;
  *(v3 + 64) = v6;
  *(v3 + 80) = v7;
  v9 = a2[7];
  v10 = a2[8];
  v11 = a2[9];
  *(v3 + 176) = *(a2 + 40);
  *(v3 + 144) = v10;
  *(v3 + 160) = v11;
  *(v3 + 128) = v9;
  if (qword_1004567F8 != -1)
  {
    sub_1002ED38C();
  }

  v12 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 32);
    v14 = v13[4];
    v15 = v13[5];
    v16 = v13[6];
    v17 = v13[7];
    v70 = 134218752;
    v71 = v14;
    v72 = 2048;
    v73 = v15;
    v74 = 2048;
    v75 = v16;
    v76 = 2048;
    v77 = v17;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "[C] config-1,%f,config-2,%f,config-3,%f,config-7,%f", &v70, 0x2Au);
  }

  if (qword_1004567F8 != -1)
  {
    sub_1002ED3A0();
  }

  v18 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
  {
    v19 = *(a1 + 32);
    v20 = v19[8];
    v21 = v19[9];
    v22 = v19[10];
    v23 = v19[11];
    v70 = 134218752;
    v71 = v20;
    v72 = 2048;
    v73 = v21;
    v74 = 2048;
    v75 = v22;
    v76 = 2048;
    v77 = v23;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "[C] config-4,%f,config-5,%f,config-6,%f,config-8,%f", &v70, 0x2Au);
  }

  if (qword_1004567F8 != -1)
  {
    sub_1002ED3A0();
  }

  v24 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
  {
    v25 = *(a1 + 32);
    v26 = v25[16];
    v27 = v25[17];
    v28 = v25[18];
    v29 = v25[19];
    v30 = v25[20];
    v31 = v25[21];
    v32 = v25[22];
    v33 = v25[23];
    v34 = v25[24];
    v35 = v25[25];
    v36 = v25[26];
    v37 = v25[27];
    v70 = 134220800;
    v71 = v26;
    v72 = 2048;
    v73 = v27;
    v74 = 2048;
    v75 = v28;
    v76 = 2048;
    v77 = v29;
    v78 = 2048;
    v79 = v30;
    v80 = 2048;
    v81 = v31;
    v82 = 2048;
    v83 = v32;
    v84 = 2048;
    v85 = v33;
    v86 = 2048;
    v87 = v34;
    v88 = 2048;
    v89 = v35;
    v90 = 2048;
    v91 = v36;
    v92 = 2048;
    v93 = v37;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "[C] config-9,%f,config-10,%f,config-11,%f,config-12,%f,config-13,%f,config-14,%f,config-15,%f,config-16,%f,config-17,%f,config-18,%f,config-19,%f,config-20,%f", &v70, 0x7Au);
  }

  if (qword_1004567F8 != -1)
  {
    sub_1002ED3A0();
  }

  v38 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
  {
    v39 = *(a1 + 32);
    v40 = v39[12];
    v41 = v39[13];
    v42 = v39[14];
    v43 = v39[15];
    v70 = 134218752;
    v71 = v40;
    v72 = 2048;
    v73 = v41;
    v74 = 2048;
    v75 = v42;
    v76 = 2048;
    v77 = v43;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEBUG, "[C] config-21,%f,config-22,%f,config-23,%f,config-24,%f", &v70, 0x2Au);
  }

  if (qword_1004567F8 != -1)
  {
    sub_1002ED3A0();
  }

  v44 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
  {
    v45 = *(a1 + 32);
    v46 = v45[28];
    v47 = v45[29];
    v48 = v45[30];
    v49 = v45[31];
    v50 = v45[32];
    v51 = v45[33];
    v70 = 134219264;
    v71 = v46;
    v72 = 2048;
    v73 = v47;
    v74 = 2048;
    v75 = v48;
    v76 = 2048;
    v77 = v49;
    v78 = 2048;
    v79 = v50;
    v80 = 2048;
    v81 = v51;
    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEBUG, "[C] config-25,%f,config-26,%f,config-27,%f,config-28,%f,config-29,%f,config-30,%f", &v70, 0x3Eu);
  }

  if (qword_1004567F8 != -1)
  {
    sub_1002ED3A0();
  }

  v52 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
  {
    v53 = *(a1 + 32);
    v54 = v53[35];
    v55 = v53[36];
    v56 = v53[37];
    v57 = v53[38];
    v58 = v53[39];
    v59 = v53[40];
    v70 = 134219264;
    v71 = v54;
    v72 = 2048;
    v73 = v55;
    v74 = 2048;
    v75 = v56;
    v76 = 2048;
    v77 = v57;
    v78 = 2048;
    v79 = v58;
    v80 = 2048;
    v81 = v59;
    _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEBUG, "[C] config-31,%f,config-32,%f,config-33,%f,config-34,%f,config-35,%f,config-36,%f", &v70, 0x3Eu);
  }

  if (qword_1004567F8 != -1)
  {
    sub_1002ED3A0();
  }

  v60 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
  {
    v61 = *(a1 + 32);
    v62 = v61[42];
    v63 = v61[43];
    v64 = v61[44];
    v70 = 134218496;
    v71 = v62;
    v72 = 2048;
    v73 = v63;
    v74 = 2048;
    v75 = v64;
    _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEBUG, "[C] config-37,%f,config-38,%f,config-39,%f", &v70, 0x20u);
  }

  if (qword_1004567F8 != -1)
  {
    sub_1002ED3A0();
  }

  v65 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
  {
    v67 = *(a1 + 32);
    v68 = *(v67 + 136);
    v69 = *(v67 + 164);
    v70 = 134218240;
    v71 = v68;
    v72 = 2048;
    v73 = v69;
    _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEBUG, "[C] config-40,%f,config-41,%f", &v70, 0x16u);
  }

  return result;
}

uint64_t CLKappaEstimatesAlgCrash::lowSensitivityDetector(CLKappaEstimatesAlgCrash *this, int a2)
{
  v2 = *(this + 4);
  if (a2)
  {
    v3 = 112;
  }

  else
  {
    v3 = 140;
  }

  if (a2)
  {
    v4 = 120;
  }

  else
  {
    v4 = 148;
  }

  v5 = 124;
  if (a2)
  {
    v6 = 128;
  }

  else
  {
    v5 = 152;
    v6 = 156;
  }

  v7 = 132;
  if (!a2)
  {
    v7 = 160;
  }

  v8 = 164;
  if (a2)
  {
    v8 = 136;
  }

  v9 = *(this + 16);
  if (v9 >= *(v2 + v3))
  {
    v11 = 144;
    if (a2)
    {
      v11 = 116;
    }

    if (v9 >= *(v2 + v11))
    {
      if (v9 >= *(v2 + v4))
      {
        v10 = 3;
      }

      else
      {
        v10 = 2;
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  v12 = *(this + 48) == 1 && *(this + 21) >= *(v2 + v6);
  v13 = *(v2 + v5);
  v14 = *(this + 50) == 1 && *(this + 22) >= *(v2 + v7);
  if (v12 | *(this + 49))
  {
    v15 = *(this + 14) < v13;
  }

  else
  {
    v15 = 1;
  }

  v16 = !v15;
  if (v10 <= 1)
  {
    if ((v10 + 1) >= 2)
    {
      v17 = v16 & v14;
      return v17 & 1;
    }

    goto LABEL_37;
  }

  v18 = *(v2 + v8);
  v19 = *(this + 24);
  if (v10 != 2)
  {
    v17 = v16 & (v19 >= v18);
    return v17 & 1;
  }

  if ((v16 & 1) == 0)
  {
LABEL_37:
    v17 = 0;
    return v17 & 1;
  }

  v17 = v19 >= v18 && (*(this + 53) | v14) != 0;
  return v17 & 1;
}

void CLKappaEstimatesAlgCrash::epochFinalize(CLKappaEstimatesAlgCrash *this, uint64_t a2)
{
  if (*(this + 80) == 1)
  {
    if (qword_1004567F8 != -1)
    {
      sub_1002ED38C();
    }

    v4 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v43) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[C] using audio thresholds", &v43, 2u);
    }

    v5 = 28;
    v6 = 24;
    v7 = 20;
    v8 = 16;
  }

  else
  {
    if (qword_1004567F8 != -1)
    {
      sub_1002ED38C();
    }

    v9 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v43) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[C] without audio thresholds", &v43, 2u);
    }

    v5 = 44;
    v6 = 40;
    v7 = 36;
    v8 = 32;
  }

  v10 = *(this + 4);
  v11 = *(v10 + v8);
  v12 = *(v10 + v7);
  v13 = *(v10 + v6);
  v14 = *(v10 + v5);
  v15 = CLSafetyAlgorithmsMath::computeSigmoidalThreshold((v10 + 64), *(this + 16));
  v16 = CLSafetyAlgorithmsMath::computeSigmoidalThreshold((*(this + 4) + 80), *(this + 16));
  v17 = CLSafetyAlgorithmsMath::computeSigmoidalThreshold((*(this + 4) + 96), *(this + 16));
  v18 = *(this + 17) >= v15 && *(this + 18) >= v16 && *(this + 19) >= v17;
  *(this + 52) = v18;
  v19 = *(this + 51) & v18;
  v20 = *(this + 23);
  v22 = 0;
  if (v20 != -1)
  {
    v21 = *(this + 4);
    if (v21[42] > v20 && *(this + 22) < v21[43] && *(this + 21) < v21[44])
    {
      v22 = 1;
    }
  }

  *(this + 53) = v19 & !v22;
  v23 = *(this + 16);
  if (v23 >= v11)
  {
    if (v23 >= v12)
    {
      if (v23 >= v13)
      {
        v24 = 3;
      }

      else
      {
        v24 = 2;
      }
    }

    else
    {
      v24 = 1;
    }
  }

  else
  {
    v24 = 0;
  }

  if (qword_1004567F8 != -1)
  {
    sub_1002ED3A0();
  }

  v25 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_INFO))
  {
    v26 = *(this + 104);
    v27 = *(this + 100);
    v28 = *(this + 101);
    v29 = *(this + 102);
    v30 = *(this + 103);
    v31 = *(this + 48);
    v32 = *(this + 49);
    v33 = *(this + 50);
    v34 = *(this + 51);
    v35 = *(this + 27);
    v43 = 67111424;
    v44 = v26;
    v45 = 1024;
    v46 = v27;
    v47 = 1024;
    v48 = v28;
    v49 = 1024;
    v50 = v29;
    v51 = 1024;
    v52 = v30;
    v53 = 1024;
    v54 = v31;
    v55 = 1024;
    v56 = v32;
    v57 = 1024;
    v58 = v33;
    v59 = 1024;
    v60 = v34;
    v61 = 1024;
    v62 = v35;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "[C] force %d %d %d %d %d is %d %d %d %d regime %d", &v43, 0x3Eu);
  }

  if (*(this + 27) != -1)
  {
    if (qword_1004567F8 != -1)
    {
      sub_1002ED3A0();
    }

    v36 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_INFO))
    {
      v37 = *(this + 27);
      v43 = 67109120;
      v44 = v37;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "[C] forcing re to %d", &v43, 8u);
    }

    v24 = *(this + 27);
    *(this + 27) = -1;
  }

  if (*(this + 24))
  {
    v38 = *(this + 14) < v14;
  }

  else
  {
    v38 = 1;
  }

  v39 = !v38;
  if (v24 != 3)
  {
    if (v24 == 2)
    {
      if (v39)
      {
        v39 = (*(this + 50) | *(this + 53)) != 0;
        goto LABEL_53;
      }
    }

    else if (v24 == 1 && (v39 & 1) != 0)
    {
      v39 = *(this + 50);
      goto LABEL_53;
    }

    v39 = 0;
  }

LABEL_53:
  v40 = CLKappaEstimatesAlgCrash::lowSensitivityDetector(this, *(this + 80));
  if (*(this + 104) == 1)
  {
    *(this + 104) = 0;
    v39 = 1;
  }

  if (qword_1004567F8 != -1)
  {
    sub_1002ED3A0();
  }

  v41 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEFAULT))
  {
    v43 = 67240704;
    v44 = v39 & 1;
    v45 = 1026;
    v46 = v24;
    v47 = 1026;
    v48 = v40;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "[C] de %{public}d re %{public}d low %{public}d", &v43, 0x14u);
  }

  v42 = *(this + 4);
  *(v42 + 184) = v39 & 1;
  *(v42 + 192) = a2;
  *(v42 + 185) = v40;
  *(v42 + 200) = *(this + 80);
  *(v42 + 208) = *(this + 7);
  *(v42 + 216) = *(this + 16);
  *(v42 + 204) = v24;
  *(v42 + 220) = *(this + 12);
  *(v42 + 224) = *(this + 68);
  *(v42 + 232) = *(this + 19);
  *(v42 + 236) = v15;
  *(v42 + 240) = v16;
  *(v42 + 244) = v17;
  *(v42 + 248) = *(this + 26);
  *(v42 + 250) = *(this + 82);
  *(v42 + 252) = *(this + 23);
  *(v42 + 256) = v22;
  *(v42 + 260) = vrev64_s32(*(this + 84));
  *(v42 + 268) = *(this + 24);
}

float CLKappaEstimatesAlgCrash::feedFeatures(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 100) == 1)
  {
    if (qword_1004567F8 != -1)
    {
      sub_1002ED38C();
    }

    v4 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[C] forcing pu", v7, 2u);
    }

    *(a1 + 48) = 1;
    *(a1 + 100) = 0;
  }

  else
  {
    *(a1 + 48) = *a2;
  }

  v5 = *(a2 + 96);
  *(a1 + 60) = *(a2 + 88);
  *(a1 + 64) = v5;
  *(a1 + 96) = *(a2 + 268);
  result = *(a2 + 16);
  *(a1 + 84) = result;
  *(a1 + 81) = *(a2 + 64);
  return result;
}

{
  if (*(a1 + 102) == 1)
  {
    if (qword_1004567F8 != -1)
    {
      sub_1002ED38C();
    }

    v4 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[C] forcing ba", v6, 2u);
    }

    *(a1 + 50) = 1;
    *(a1 + 102) = 0;
  }

  else
  {
    *(a1 + 50) = *(a2 + 52) != 0;
  }

  result = *(a2 + 32);
  *(a1 + 88) = result;
  return result;
}

{
  if (*(a1 + 101) == 1)
  {
    if (qword_1004567F8 != -1)
    {
      sub_1002ED38C();
    }

    v3 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[C] forcing ff", v5, 2u);
    }

    *(a1 + 49) = 1;
    *(a1 + 101) = 0;
  }

  else
  {
    result = *(a2 + 20);
    *(a1 + 56) = result;
    *(a1 + 49) = *(a2 + 44);
  }

  return result;
}

float virtual thunk toCLKappaEstimatesAlgCrash::feedFeatures(void *a1, uint64_t a2)
{
  return CLKappaEstimatesAlgCrash::feedFeatures(a1 + *(*a1 - 32), a2);
}

{
  return CLKappaEstimatesAlgCrash::feedFeatures(a1 + *(*a1 - 56), a2);
}

{
  return CLKappaEstimatesAlgCrash::feedFeatures(a1 + *(*a1 - 112), a2);
}

void CLKappaEstimatesAlgCrash::feedFeatures(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 103) == 1)
  {
    if (qword_1004567F8 != -1)
    {
      sub_1002ED38C();
    }

    v3 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[C] forcing au", v5, 2u);
    }

    *(a1 + 51) = 257;
    *(a1 + 68) = vneg_f32(0x80000000800000);
    *(a1 + 76) = 2139095039;
    *(a1 + 53) = 1;
    *(a1 + 103) = 0;
  }

  else
  {
    *(a1 + 51) = *(a2 + 29);
    v4 = *(a2 + 8);
    *(a1 + 80) = v4 > 0.0;
    *(a1 + 68) = *(a2 + 12);
    *(a1 + 76) = v4;
  }
}

double CLKappaEstimatesAlgCrash::epochReset(CLKappaEstimatesAlgCrash *this)
{
  if ((*(this + 100) & 1) == 0)
  {
    *(this + 48) = 0;
  }

  if ((*(this + 101) & 1) == 0)
  {
    *(this + 49) = 0;
  }

  if ((*(this + 102) & 1) == 0)
  {
    *(this + 50) = 0;
  }

  if ((*(this + 103) & 1) == 0)
  {
    *(this + 51) = 0;
    *(this + 53) = 0;
  }

  *(this + 14) = 0x800000;
  *(this + 80) = 0;
  v1 = *(this + 4);
  *(v1 + 184) = 0;
  *(v1 + 192) = 0;
  *(v1 + 200) = 0u;
  *(v1 + 216) = 0u;
  *(v1 + 232) = 0u;
  *(v1 + 248) = 0u;
  *(v1 + 264) = 0;
  result = 2.84809454e-306;
  *(this + 68) = 0x80000000800000;
  *(this + 19) = 0x800000;
  *(this + 23) = -1;
  return result;
}

void sub_1002ECA30(CLKappaAlgBlock *this)
{
  *this = off_1004319D8;
  *(this + 14) = off_100431C98;
  *(this + 15) = off_100431DE0;
  *(this + *(*this - 176)) = off_100431ED0;
  v2 = *(this + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(this, off_100431F28);
}

void sub_1002ECB20(CLKappaAlgBlock *this)
{
  *this = off_1004319D8;
  *(this + 14) = off_100431C98;
  *(this + 15) = off_100431DE0;
  *(this + 16) = off_100431ED0;
  v2 = *(this + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(this, off_100431F28);

  operator delete();
}

void sub_1002ECC20(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_1004319D8;
  *(v1 + 14) = off_100431C98;
  *(v1 + 15) = off_100431DE0;
  *(v1 + 16) = off_100431ED0;
  v2 = *(v1 + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100431F28);
}

void sub_1002ECCF8(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_1004319D8;
  *(v1 + 14) = off_100431C98;
  *(v1 + 15) = off_100431DE0;
  *(v1 + 16) = off_100431ED0;
  v2 = *(v1 + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100431F28);

  operator delete();
}

void sub_1002ECDE4(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_1004319D8;
  *(v1 + 14) = off_100431C98;
  *(v1 + 15) = off_100431DE0;
  *(v1 + 16) = off_100431ED0;
  v2 = *(v1 + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100431F28);
}

void sub_1002ECEBC(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_1004319D8;
  *(v1 + 14) = off_100431C98;
  *(v1 + 15) = off_100431DE0;
  *(v1 + 16) = off_100431ED0;
  v2 = *(v1 + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100431F28);

  operator delete();
}

void sub_1002ECFCC(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_1004319D8;
  *(v1 + 14) = off_100431C98;
  *(v1 + 15) = off_100431DE0;
  *(v1 + 16) = off_100431ED0;
  v2 = *(v1 + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100431F28);
}

void sub_1002ED0A4(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_1004319D8;
  *(v1 + 14) = off_100431C98;
  *(v1 + 15) = off_100431DE0;
  *(v1 + 16) = off_100431ED0;
  v2 = *(v1 + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100431F28);

  operator delete();
}

void sub_1002ED190(id a1)
{
  qword_100456800 = os_log_create("com.apple.anomalydetectiond", "Alg");

  _objc_release_x1();
}

void sub_1002ED310(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1004325B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1002EDCA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38)
{
  objc_destroyWeak((v42 - 184));

  _Unwind_Resume(a1);
}

id sub_1002EDE0C()
{
  if (qword_100456948 != -1)
  {
    sub_1002EFAAC();
  }

  v1 = qword_100456950;

  return v1;
}

id sub_1002EDE50(uint64_t a1)
{
  if (qword_100456948 != -1)
  {
    sub_1002EFAAC();
  }

  v2 = qword_100456950;
  if (os_log_type_enabled(qword_100456950, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "DetectionSM timeout", v4, 2u);
  }

  return [*(*(a1 + 32) + 16) signal:9 data:0];
}

__CFString *sub_1002EDEE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  switch(a2)
  {
    case 4:
      [*(a1 + 32) clearAll];
      goto LABEL_11;
    case 3:
      switch(a3)
      {
        case 10:
          goto LABEL_9;
        case 4:
          v4 = *(*(a1 + 32) + 56);
          goto LABEL_13;
        case 1:
LABEL_9:
          v4 = *(*(a1 + 32) + 32);
LABEL_13:
          v3 = objc_retainBlock(v4);
          goto LABEL_14;
      }

LABEL_11:
      v3 = 0;
      break;
    case 1:
      v3 = @"idle";
      break;
    default:
      v3 = 0;
      break;
  }

LABEL_14:

  return v3;
}

__CFString *sub_1002EDF6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != 3)
  {
    if (a2 == 1)
    {
      v7 = @"potentialCrash";
    }

    else
    {
      v7 = 0;
    }

    return v7;
  }

  v11 = v3;
  v7 = 0;
  if (a3 > 3)
  {
    if (a3 == 4)
    {
      v10 = *(*(a1 + 32) + 56);
      goto LABEL_16;
    }

    if (a3 != 10)
    {
      goto LABEL_17;
    }
  }

  else if (a3 != 2)
  {
    if (a3 != 3)
    {
      goto LABEL_17;
    }

    v10 = *(*(a1 + 32) + 24);
    goto LABEL_16;
  }

  [*(*(a1 + 32) + 128) setBool:1 forKey:{@"ActiveKappaDecision", v4, v11, v5}];
  v10 = *(*(a1 + 32) + 40);
LABEL_16:
  v7 = objc_retainBlock(v10);
LABEL_17:

  return v7;
}

__CFString *sub_1002EE02C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *src)
{
  v5 = 0;
  if (a2 > 3)
  {
    if (a2 == 4)
    {
      memset(dst, 0, sizeof(dst));
      uuid_copy(dst, src);
      v7 = *(a1 + 32);
      v8 = [[NSUUID alloc] initWithUUIDBytes:dst];
      [v7 updateLocalUUID:v8];

      if (!*(*(a1 + 32) + 80))
      {
        if (qword_100456948 != -1)
        {
          sub_1002EFAC0();
        }

        v9 = qword_100456950;
        if (os_log_type_enabled(qword_100456950, OS_LOG_TYPE_DEBUG))
        {
          *v17 = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Local trigger UUID is nil in crashStagingState", v17, 2u);
        }
      }

      v10 = +[CSPersistentConfiguration sharedConfiguration];
      v11 = [v10 objectForKey:@"KappaCompanionWaitDuration"];

      v12 = +[CSPersistentConfiguration sharedConfiguration];
      [v12 floatForKey:@"KappaCompanionWaitDuration"];
      v14 = v13;

      v15 = v14;
      if (v11 == 0 || v14 < 0.0)
      {
        v15 = 1.0;
      }

      [*(a1 + 32) startTimer:v15];
    }

    else
    {
      if (a2 != 6)
      {
        goto LABEL_22;
      }

      [*(*(a1 + 32) + 128) removeObjectForKey:{@"KappaCompanionWaitDuration", src}];
      [*(a1 + 32) stopTimer];
    }
  }

  else
  {
    if (a2 == 1)
    {
      v5 = @"crashStaging";
      goto LABEL_22;
    }

    if (a2 != 3)
    {
      goto LABEL_22;
    }

    if ((a3 - 9) < 2)
    {
      *(*(a1 + 32) + 112) = 1;
      v6 = *(*(a1 + 32) + 48);
LABEL_20:
      v5 = objc_retainBlock(v6);
      goto LABEL_22;
    }

    if (a3 == 4)
    {
      [*(*(a1 + 32) + 128) setBool:0 forKey:@"ActiveKappaDecision"];
      v6 = *(*(a1 + 32) + 56);
      goto LABEL_20;
    }
  }

  v5 = 0;
LABEL_22:

  return v5;
}

__CFString *sub_1002EE290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  if (a2 > 3)
  {
    if (a2 == 4)
    {
      [*(*(a1 + 32) + 72) notifyCompanionOfLocalCrash:*(*(a1 + 32) + 80) forMode:*(*(a1 + 32) + 64) martyIsBicycle:*(*(a1 + 32) + 65)];
      [*(a1 + 32) startTimer:0.5];
    }

    else
    {
      if (a2 != 6)
      {
        goto LABEL_12;
      }

      [*(a1 + 32) stopTimer];
    }
  }

  else
  {
    if (a2 == 1)
    {
      v4 = @"notifyingCompanionState";
      goto LABEL_12;
    }

    if (a2 != 3)
    {
      goto LABEL_12;
    }

    if (a3 == 9)
    {
      v4 = objc_retainBlock(*(*(a1 + 32) + 56));
      goto LABEL_12;
    }
  }

  v4 = 0;
LABEL_12:

  return v4;
}

__CFString *sub_1002EE340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  if (a2 > 3)
  {
    if (a2 == 4)
    {
      v5 = *(a1 + 32);
      if (v5[112] != 1)
      {
LABEL_16:
        [v5 startTimer:60.0];
        v4 = 0;
        goto LABEL_20;
      }

      [v5 notifySOSDaemon];
    }

    else
    {
      if (a2 != 6)
      {
        goto LABEL_20;
      }

      [*(a1 + 32) stopTimer];
    }

    v5 = *(a1 + 32);
    goto LABEL_16;
  }

  if (a2 == 1)
  {
    v4 = @"crashProcessing";
    goto LABEL_20;
  }

  if (a2 != 3)
  {
    goto LABEL_20;
  }

  v4 = 0;
  if (a3 > 8)
  {
    if ((a3 - 9) >= 2)
    {
      goto LABEL_20;
    }
  }

  else if (a3 != 6)
  {
    if (a3 == 7)
    {
      [*(*(a1 + 32) + 120) didReceiveSOSStatusUpdate:*(*(a1 + 32) + 144) forMode:*(*(a1 + 32) + 64)];
      v6 = *(*(a1 + 32) + 56);
      goto LABEL_19;
    }

    if (a3 != 8)
    {
      goto LABEL_20;
    }

    [*(*(a1 + 32) + 120) didReceiveSOSStatusUpdate:*(*(a1 + 32) + 144) forMode:*(*(a1 + 32) + 64)];
  }

  v6 = *(*(a1 + 32) + 24);
LABEL_19:
  v4 = objc_retainBlock(v6);
LABEL_20:

  return v4;
}

void sub_1002EE4B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = CSSafetySOSStateMachine;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1002EED54(uint64_t a1, unint64_t a2, void *a3)
{
  v3 = a2;
  v12 = a2;
  v5 = a3;
  if (qword_100456948 != -1)
  {
    sub_1002EFAAC();
  }

  v6 = qword_100456950;
  if (os_log_type_enabled(qword_100456950, OS_LOG_TYPE_INFO))
  {
    *buf = 134218242;
    v14 = v3;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "SOS ACK block response:%ld, SOS UUID: %@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained[16] setBool:0 forKey:@"ActiveKappaDecision"];
  [WeakRetained[16] setBool:0 forKey:@"WaitingForSOSAck"];
  v8 = WeakRetained[16];
  v9 = +[SOSKappaManager currentSOSStatus];
  v10 = [v9 uuid];
  v11 = [v10 UUIDString];
  [v8 setObject:v11 forKey:@"KappaSOSUUID"];

  if (v3 <= 5)
  {
    if (((1 << v3) & 0x1A) != 0)
    {
      [WeakRetained[2] signal:6 data:&v12];
      v3 = v12;
    }

    else if (((1 << v3) & 0x21) != 0)
    {
      [WeakRetained[16] setInteger:*(WeakRetained + 64) forKey:kSOSEventKey];
      [WeakRetained notifyCompanionOfSafetyEventType:*(WeakRetained + 64)];
    }
  }

  [WeakRetained[15] didReceiveSOSAck:v3 forMode:*(*(a1 + 32) + 64)];
}

void sub_1002EFA24(id a1)
{
  qword_100456950 = os_log_create("com.apple.anomalydetectiond", "SOSStateMachine");

  _objc_release_x1();
}

void sub_1002EFA68(id a1)
{
  qword_100456870 = os_log_create("com.apple.anomalydetectiond", "Companion");

  _objc_release_x1();
}

uint64_t sub_1002EFAE8(id *a1)
{
  [*a1 removeObjectForKey:@"SimulateCrashProbability"];
  v1 = sub_1002EDE0C();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    sub_100009C7C();
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Simulating crash, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  v2 = sub_1002EDE0C();
  if (os_signpost_enabled(v2))
  {
    sub_100009C7C();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Simulating crash", "{msg%{public}.0s:Simulating crash, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  v3 = sub_1002EDE0C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    sub_100009C7C();
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Simulating crash, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  result = abort_report_np();
  __break(1u);
  return result;
}

void CLKappaDeescalatorTriggerClusters::CLKappaDeescalatorTriggerClusters(CLKappaDeescalatorTriggerClusters *this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 36) = 1;
  *(this + 10) = 0;
  *(this + 44) = 0;
  *this = &off_100432668;
  *(this + 80) = 0;
  *(this + 88) = 0;
  *(this + 71) = 5;
  strcpy(this + 48, "de-TC");
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 36) = 1;
  *(this + 10) = 0;
  *(this + 44) = 0;
  *this = &off_100432668;
  *(this + 80) = 0;
  *(this + 88) = 0;
  *(this + 71) = 5;
  strcpy(this + 48, "de-TC");
}

unint64_t CLKappaDeescalatorTriggerClusters::resetConfiguration(CLKappaDeescalatorTriggerClusters *this)
{
  *(this + 44) = CLKappaDeescalator::shouldForceNoop(this, "ForceTriggerCluster");
  result = CLKappaDeescalator::shouldForceDeescalate(this, "ForceTriggerCluster");
  *(this + 10) = result;
  return result;
}

void CLKappaDeescalatorTriggerClusters::log(CLKappaDeescalatorTriggerClusters *this, uint64_t a2)
{
  if (*(this + 88) == 1)
  {
    v4 = *(this + 10);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(this + 72);
  if (qword_1004567F8 != -1)
  {
    sub_1002F0234();
  }

  v6 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(this + 6);
    v8 = *(this + 36);
    v9 = 134350080;
    v10 = a2;
    v11 = 1026;
    v12 = v7;
    v13 = 1026;
    v14 = v8;
    v15 = 1026;
    v16 = v5;
    v17 = 2050;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[de-TC] summary,A,%{public}llu,B,%{public}u,mode,%{public}u,debug-1a,%{public}u,debug-1b,%{public}llu", &v9, 0x28u);
  }
}

uint64_t CLKappaDeescalatorTriggerClusters::assertReady(CLKappaDeescalatorTriggerClusters *this, uint64_t a2, const char *a3)
{
  result = CLKappaDeescalator::assertCrashTimestamp(this, a2, a3);
  if (*(this + 72) == 1)
  {
    v6 = *(this + 88);

    return CLKappaDeescalator::raiseUnless(v6, "[de-TC] condition met but missing window boundary", v5);
  }

  return result;
}

float CLKappaDeescalatorTriggerClusters::updateWithTriggerClustersFeatures(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 72) & 1) == 0 && *(a2 + 8) == 1 && *(a2 + 9) == 1 && (*(a2 + 10) & 1) == 0)
  {
    *(a1 + 72) = 1;
    *(a1 + 80) = *(a2 + 16);
    *(a1 + 88) = 1;
    if (qword_1004567F8 != -1)
    {
      sub_1002F0234();
    }

    v3 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a2 + 8);
      v6 = *(a2 + 9);
      v7 = *(a2 + 10);
      v8 = *(a2 + 16);
      v9[0] = 67109888;
      v9[1] = v5;
      v10 = 1024;
      v11 = v6;
      v12 = 1024;
      v13 = v7;
      v14 = 2048;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[de-TC] condition met - isTriggerCluster:%d, isClusterInBeginningOfDrive:%d, isBTHintDetected:%d, rightBoundaryTs:%llu", v9, 0x1Eu);
    }
  }

  return result;
}

uint64_t CLKappaDeescalatorTriggerClusters::deescalationCondition(uint64_t this, unint64_t a2, unint64_t a3)
{
  if (a2 <= a3)
  {
    return this;
  }

  else
  {
    return 0;
  }
}

uint64_t CLKappaDeescalatorTriggerClusters::onEvaluateBetweenMinAndMaxHoldDuration(CLKappaDeescalatorTriggerClusters *this)
{
  if (*(this + 88) == 1)
  {
    v1 = *(this + 10);
  }

  else
  {
    v1 = 0;
  }

  v2 = (this + 8);
  if (!*(this + 16))
  {
    v2 = &unk_1003BFC00;
  }

  if (((*v2 <= v1) & *(this + 72)) != 0)
  {
    return 4;
  }

  else
  {
    return 0;
  }
}

uint64_t CLKappaDeescalatorTriggerClusters::onEvaluateAtBoundary(CLKappaDeescalatorTriggerClusters *this)
{
  if (*(this + 88) == 1)
  {
    v2 = *(this + 10);
  }

  else
  {
    v2 = 0;
  }

  result = 0;
  if (*(this + 16))
  {
    v4 = (this + 8);
  }

  else
  {
    v4 = &unk_1003BFC00;
  }

  if (*v4 <= v2 && (*(this + 72) & 1) != 0)
  {
    if (qword_1004567F8 != -1)
    {
      sub_1002F0234();
    }

    v5 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
    {
      if (*(this + 16))
      {
        v6 = (this + 8);
      }

      else
      {
        v6 = &unk_1003BFC00;
      }

      v7 = *v6;
      v8 = 134218240;
      v9 = v7;
      v10 = 2048;
      v11 = v2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[de-TC] deescalated at boundary, crashTimestamp:%llu, deescalationBoundary:%llu", &v8, 0x16u);
    }

    return 4;
  }

  return result;
}

void sub_1002F01B8(void **a1)
{
  CLKappaDeescalator::~CLKappaDeescalator(a1);

  operator delete();
}

void sub_1002F01F0(id a1)
{
  qword_100456800 = os_log_create("com.apple.anomalydetectiond", "Alg");

  _objc_release_x1();
}

void KappaTriggerSample::KappaTriggerSample(KappaTriggerSample *this)
{
  *this = off_100432718;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 30) = 0;
}

{
  *this = off_100432718;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 30) = 0;
}

void KappaTriggerSample::~KappaTriggerSample(KappaTriggerSample *this)
{
  *this = off_100432718;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  PB::Base::~Base(this);
}

{
  KappaTriggerSample::~KappaTriggerSample(this);

  operator delete();
}

void KappaTriggerSample::KappaTriggerSample(KappaTriggerSample *this, const KappaTriggerSample *a2)
{
  *this = off_100432718;
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 30) = 0;
  v5 = *(a2 + 30);
  if ((v5 & 4) != 0)
  {
    v7 = *(a2 + 6);
    v6 = 4;
    *(this + 30) = 4;
    *(this + 6) = v7;
    v5 = *(a2 + 30);
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = 0;
  if ((v5 & 0x2000) != 0)
  {
LABEL_5:
    v8 = *(a2 + 25);
    v6 |= 0x2000u;
    *(this + 30) = v6;
    *(this + 25) = v8;
    v5 = *(a2 + 30);
  }

LABEL_6:
  if ((v5 & 0x8000) != 0)
  {
    v12 = *(a2 + 27);
    v6 |= 0x8000u;
    *(this + 30) = v6;
    *(this + 27) = v12;
    v5 = *(a2 + 30);
    if ((v5 & 0x400) == 0)
    {
LABEL_8:
      if ((v5 & 0x10000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_29;
    }
  }

  else if ((v5 & 0x400) == 0)
  {
    goto LABEL_8;
  }

  v13 = *(a2 + 22);
  v6 |= 0x400u;
  *(this + 30) = v6;
  *(this + 22) = v13;
  v5 = *(a2 + 30);
  if ((v5 & 0x10000) == 0)
  {
LABEL_9:
    if ((v5 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  v14 = *(a2 + 28);
  v6 |= 0x10000u;
  *(this + 30) = v6;
  *(this + 28) = v14;
  v5 = *(a2 + 30);
  if ((v5 & 8) == 0)
  {
LABEL_10:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  v15 = *(a2 + 7);
  v6 |= 8u;
  *(this + 30) = v6;
  *(this + 7) = v15;
  v5 = *(a2 + 30);
  if ((v5 & 0x40) == 0)
  {
LABEL_11:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  v16 = *(a2 + 18);
  v6 |= 0x40u;
  *(this + 30) = v6;
  *(this + 18) = v16;
  v5 = *(a2 + 30);
  if ((v5 & 0x200) == 0)
  {
LABEL_12:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  v17 = *(a2 + 21);
  v6 |= 0x200u;
  *(this + 30) = v6;
  *(this + 21) = v17;
  v5 = *(a2 + 30);
  if ((v5 & 0x4000) == 0)
  {
LABEL_13:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  v18 = *(a2 + 26);
  v6 |= 0x4000u;
  *(this + 30) = v6;
  *(this + 26) = v18;
  v5 = *(a2 + 30);
  if ((v5 & 0x100) == 0)
  {
LABEL_14:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  v19 = *(a2 + 20);
  v6 |= 0x100u;
  *(this + 30) = v6;
  *(this + 20) = v19;
  v5 = *(a2 + 30);
  if ((v5 & 0x10) == 0)
  {
LABEL_15:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  v20 = *(a2 + 16);
  v6 |= 0x10u;
  *(this + 30) = v6;
  *(this + 16) = v20;
  v5 = *(a2 + 30);
  if ((v5 & 0x20000) == 0)
  {
LABEL_16:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  v6 |= 0x20000u;
  *(this + 29) = *(a2 + 29);
  *(this + 30) = v6;
  v5 = *(a2 + 30);
  if ((v5 & 0x20) == 0)
  {
LABEL_17:
    if ((v5 & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_37:
  v21 = *(a2 + 17);
  v6 |= 0x20u;
  *(this + 30) = v6;
  *(this + 17) = v21;
  if ((*(a2 + 30) & 2) != 0)
  {
LABEL_18:
    v9 = *(a2 + 5);
    *(this + 30) = v6 | 2;
    *(this + 5) = v9;
  }

LABEL_19:
  if (this != a2)
  {
    sub_100035D1C(v4, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 2);
  }

  v10 = *(a2 + 30);
  if ((v10 & 0x1000) != 0)
  {
    v22 = *(a2 + 24);
    *(this + 30) |= 0x1000u;
    *(this + 24) = v22;
    v10 = *(a2 + 30);
    if ((v10 & 0x80) == 0)
    {
LABEL_23:
      if ((v10 & 0x800) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_41;
    }
  }

  else if ((v10 & 0x80) == 0)
  {
    goto LABEL_23;
  }

  v23 = *(a2 + 19);
  *(this + 30) |= 0x80u;
  *(this + 19) = v23;
  v10 = *(a2 + 30);
  if ((v10 & 0x800) == 0)
  {
LABEL_24:
    if ((v10 & 1) == 0)
    {
      return;
    }

    goto LABEL_25;
  }

LABEL_41:
  v24 = *(a2 + 23);
  *(this + 30) |= 0x800u;
  *(this + 23) = v24;
  if ((*(a2 + 30) & 1) == 0)
  {
    return;
  }

LABEL_25:
  v11 = *(a2 + 4);
  *(this + 30) |= 1u;
  *(this + 4) = v11;
}

KappaTriggerSample *KappaTriggerSample::operator=(KappaTriggerSample *a1, const KappaTriggerSample *a2)
{
  if (a1 != a2)
  {
    KappaTriggerSample::KappaTriggerSample(v4, a2);
    swap(a1, v4);
    KappaTriggerSample::~KappaTriggerSample(v4);
  }

  return a1;
}

double swap(KappaTriggerSample *a1, KappaTriggerSample *a2)
{
  v2 = *(a1 + 30);
  *(a1 + 30) = *(a2 + 30);
  *(a2 + 30) = v2;
  result = *(a1 + 6);
  *(a1 + 6) = *(a2 + 6);
  v4 = *(a1 + 18);
  *(a1 + 18) = *(a2 + 18);
  *(a2 + 18) = v4;
  v5 = *(a1 + 21);
  *(a1 + 21) = *(a2 + 21);
  v6 = *(a1 + 25);
  *(a1 + 25) = *(a2 + 25);
  *(a2 + 25) = v6;
  v7 = *(a1 + 27);
  *(a1 + 27) = *(a2 + 27);
  *(a2 + 27) = v7;
  v8 = *(a1 + 22);
  *(a1 + 22) = *(a2 + 22);
  *(a2 + 22) = v8;
  v9 = *(a1 + 28);
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = v9;
  v10 = *(a1 + 7);
  *(a1 + 7) = *(a2 + 7);
  *(a2 + 7) = v10;
  LODWORD(v10) = *(a1 + 26);
  *(a1 + 26) = *(a2 + 26);
  *(a2 + 26) = v10;
  LODWORD(v10) = *(a1 + 20);
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = v10;
  LODWORD(v10) = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v10;
  LODWORD(v10) = *(a1 + 29);
  *(a1 + 29) = *(a2 + 29);
  *(a2 + 29) = v10;
  LODWORD(v10) = *(a1 + 17);
  *(a1 + 17) = *(a2 + 17);
  *(a2 + 17) = v10;
  v11 = *(a1 + 5);
  *(a1 + 5) = *(a2 + 5);
  *(a2 + 5) = v11;
  v12 = *(a1 + 1);
  *(a1 + 1) = *(a2 + 1);
  *(a2 + 1) = v12;
  v13 = *(a1 + 2);
  *(a1 + 2) = *(a2 + 2);
  *(a2 + 2) = v13;
  LODWORD(v13) = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = v13;
  LODWORD(v13) = *(a1 + 19);
  *(a1 + 19) = *(a2 + 19);
  *(a2 + 19) = v13;
  LODWORD(v13) = *(a1 + 23);
  *(a1 + 23) = *(a2 + 23);
  v14 = *(a1 + 3);
  v15 = *(a1 + 4);
  v16 = *(a2 + 4);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 4) = v16;
  *(a2 + 6) = result;
  *(a2 + 21) = v5;
  *(a2 + 23) = v13;
  *(a2 + 3) = v14;
  *(a2 + 4) = v15;
  return result;
}

uint64_t KappaTriggerSample::KappaTriggerSample(uint64_t a1, uint64_t a2)
{
  *a1 = off_100432718;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 120) = *(a2 + 120);
  *(a2 + 120) = 0;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 40) = *(a2 + 40);
  sub_1002A2DD0(a1 + 8, (a2 + 8));
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

KappaTriggerSample *KappaTriggerSample::operator=(KappaTriggerSample *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    KappaTriggerSample::KappaTriggerSample(v4, a2);
    swap(a1, v4);
    KappaTriggerSample::~KappaTriggerSample(v4);
  }

  return a1;
}

uint64_t KappaTriggerSample::formatText(KappaTriggerSample *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 30);
  if ((v5 & 0x10) != 0)
  {
    PB::TextFormatter::format(a2, "basebandHint", *(this + 16));
    v5 = *(this + 30);
    if ((v5 & 0x20) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((v5 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "btHint", *(this + 17));
  v5 = *(this + 30);
  if ((v5 & 1) == 0)
  {
LABEL_4:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(a2, "companionAopTs", *(this + 4));
  v5 = *(this + 30);
  if ((v5 & 0x40) == 0)
  {
LABEL_5:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_29:
  PB::TextFormatter::format(a2, "decel", *(this + 18));
  v5 = *(this + 30);
  if ((v5 & 0x80) == 0)
  {
LABEL_6:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(a2, "enableMode", *(this + 19));
  v5 = *(this + 30);
  if ((v5 & 0x100) == 0)
  {
LABEL_7:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  PB::TextFormatter::format(a2, "gpsHint", *(this + 20));
  v5 = *(this + 30);
  if ((v5 & 0x200) == 0)
  {
LABEL_8:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(a2, "impact", *(this + 21));
  v5 = *(this + 30);
  if ((v5 & 0x400) == 0)
  {
LABEL_9:
    if ((v5 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(a2, "kappaArmedSeconds", *(this + 22));
  v5 = *(this + 30);
  if ((v5 & 2) == 0)
  {
LABEL_10:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(a2, "lastValidImuTimestamp", *(this + 5));
  v5 = *(this + 30);
  if ((v5 & 0x800) == 0)
  {
LABEL_11:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(a2, "martyArmedSeconds", *(this + 23));
  v5 = *(this + 30);
  if ((v5 & 0x1000) == 0)
  {
LABEL_12:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(a2, "martyPath", *(this + 24));
  v5 = *(this + 30);
  if ((v5 & 0x2000) == 0)
  {
LABEL_13:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(a2, "meta", *(this + 25));
  v5 = *(this + 30);
  if ((v5 & 0x4000) == 0)
  {
LABEL_14:
    if ((v5 & 4) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(a2, "motionHint", *(this + 26));
  v5 = *(this + 30);
  if ((v5 & 4) == 0)
  {
LABEL_15:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(a2, "now", *(this + 6));
  v5 = *(this + 30);
  if ((v5 & 0x8000) == 0)
  {
LABEL_16:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(a2, "path", *(this + 27));
  v5 = *(this + 30);
  if ((v5 & 0x10000) == 0)
  {
LABEL_17:
    if ((v5 & 8) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_41:
  PB::TextFormatter::format(a2, "rmsSN", *(this + 28));
  if ((*(this + 30) & 8) != 0)
  {
LABEL_18:
    PB::TextFormatter::format(a2, "timestamp", *(this + 7));
  }

LABEL_19:
  v6 = *(this + 1);
  v7 = *(this + 2);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::TextFormatter::format(a2, "vehicleProbabilityLongTermMean", v8);
  }

  if ((*(this + 122) & 2) != 0)
  {
    PB::TextFormatter::format(a2, "wifiHint", *(this + 29));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t KappaTriggerSample::readFrom(KappaTriggerSample *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    while (1)
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          goto LABEL_18;
        }
      }

LABEL_21:
      v22 = v10 & 7;
      if (v4 & 1 | (v22 == 4))
      {
        goto LABEL_363;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 30) |= 4u;
          v23 = *(a2 + 1);
          if (v23 > 0xFFFFFFFFFFFFFFF7 || v23 + 8 > *(a2 + 2))
          {
            goto LABEL_355;
          }

          *(this + 6) = *(*a2 + v23);
          v24 = *(a2 + 1) + 8;
          goto LABEL_358;
        case 2u:
          *(this + 30) |= 0x2000u;
          v115 = *(a2 + 1);
          v114 = *(a2 + 2);
          v116 = *a2;
          if (v115 <= 0xFFFFFFFFFFFFFFF5 && v115 + 10 <= v114)
          {
            v117 = 0;
            v118 = 0;
            v119 = 0;
            v120 = (v116 + v115);
            v121 = v115 + 1;
            do
            {
              *(a2 + 1) = v121;
              v122 = *v120++;
              v119 |= (v122 & 0x7F) << v117;
              if ((v122 & 0x80) == 0)
              {
                goto LABEL_330;
              }

              v117 += 7;
              ++v121;
              v14 = v118++ > 8;
            }

            while (!v14);
LABEL_232:
            LODWORD(v119) = 0;
            goto LABEL_330;
          }

          v229 = 0;
          v230 = 0;
          v119 = 0;
          v17 = v114 >= v115;
          v231 = v114 - v115;
          if (!v17)
          {
            v231 = 0;
          }

          v232 = (v116 + v115);
          v233 = v115 + 1;
          while (2)
          {
            if (v231)
            {
              v234 = *v232;
              *(a2 + 1) = v233;
              v119 |= (v234 & 0x7F) << v229;
              if (v234 < 0)
              {
                v229 += 7;
                --v231;
                ++v232;
                ++v233;
                v14 = v230++ > 8;
                if (v14)
                {
                  goto LABEL_232;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v119) = 0;
              }
            }

            else
            {
              LODWORD(v119) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_330:
          *(this + 25) = v119;
          goto LABEL_359;
        case 3u:
          *(this + 30) |= 0x8000u;
          v87 = *(a2 + 1);
          v86 = *(a2 + 2);
          v88 = *a2;
          if (v87 <= 0xFFFFFFFFFFFFFFF5 && v87 + 10 <= v86)
          {
            v89 = 0;
            v90 = 0;
            v91 = 0;
            v92 = (v88 + v87);
            v93 = v87 + 1;
            do
            {
              *(a2 + 1) = v93;
              v94 = *v92++;
              v91 |= (v94 & 0x7F) << v89;
              if ((v94 & 0x80) == 0)
              {
                goto LABEL_321;
              }

              v89 += 7;
              ++v93;
              v14 = v90++ > 8;
            }

            while (!v14);
LABEL_208:
            LODWORD(v91) = 0;
            goto LABEL_321;
          }

          v211 = 0;
          v212 = 0;
          v91 = 0;
          v17 = v86 >= v87;
          v213 = v86 - v87;
          if (!v17)
          {
            v213 = 0;
          }

          v214 = (v88 + v87);
          v215 = v87 + 1;
          while (2)
          {
            if (v213)
            {
              v216 = *v214;
              *(a2 + 1) = v215;
              v91 |= (v216 & 0x7F) << v211;
              if (v216 < 0)
              {
                v211 += 7;
                --v213;
                ++v214;
                ++v215;
                v14 = v212++ > 8;
                if (v14)
                {
                  goto LABEL_208;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v91) = 0;
              }
            }

            else
            {
              LODWORD(v91) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_321:
          *(this + 27) = v91;
          goto LABEL_359;
        case 4u:
          *(this + 30) |= 0x400u;
          v105 = *(a2 + 1);
          v104 = *(a2 + 2);
          v106 = *a2;
          if (v105 <= 0xFFFFFFFFFFFFFFF5 && v105 + 10 <= v104)
          {
            v107 = 0;
            v108 = 0;
            v109 = 0;
            v110 = (v106 + v105);
            v111 = v105 + 1;
            do
            {
              *(a2 + 1) = v111;
              v112 = *v110++;
              v109 |= (v112 & 0x7F) << v107;
              if ((v112 & 0x80) == 0)
              {
                goto LABEL_327;
              }

              v107 += 7;
              ++v111;
              v14 = v108++ > 8;
            }

            while (!v14);
LABEL_224:
            LODWORD(v109) = 0;
            goto LABEL_327;
          }

          v223 = 0;
          v224 = 0;
          v109 = 0;
          v17 = v104 >= v105;
          v225 = v104 - v105;
          if (!v17)
          {
            v225 = 0;
          }

          v226 = (v106 + v105);
          v227 = v105 + 1;
          while (2)
          {
            if (v225)
            {
              v228 = *v226;
              *(a2 + 1) = v227;
              v109 |= (v228 & 0x7F) << v223;
              if (v228 < 0)
              {
                v223 += 7;
                --v225;
                ++v226;
                ++v227;
                v14 = v224++ > 8;
                if (v14)
                {
                  goto LABEL_224;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v109) = 0;
              }
            }

            else
            {
              LODWORD(v109) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_327:
          *(this + 22) = v109;
          goto LABEL_359;
        case 5u:
          *(this + 30) |= 0x10000u;
          v60 = *(a2 + 1);
          v59 = *(a2 + 2);
          v61 = *a2;
          if (v60 <= 0xFFFFFFFFFFFFFFF5 && v60 + 10 <= v59)
          {
            v62 = 0;
            v63 = 0;
            v64 = 0;
            v65 = (v61 + v60);
            v66 = v60 + 1;
            do
            {
              *(a2 + 1) = v66;
              v67 = *v65++;
              v64 |= (v67 & 0x7F) << v62;
              if ((v67 & 0x80) == 0)
              {
                goto LABEL_312;
              }

              v62 += 7;
              ++v66;
              v14 = v63++ > 8;
            }

            while (!v14);
LABEL_184:
            LODWORD(v64) = 0;
            goto LABEL_312;
          }

          v193 = 0;
          v194 = 0;
          v64 = 0;
          v17 = v59 >= v60;
          v195 = v59 - v60;
          if (!v17)
          {
            v195 = 0;
          }

          v196 = (v61 + v60);
          v197 = v60 + 1;
          while (2)
          {
            if (v195)
            {
              v198 = *v196;
              *(a2 + 1) = v197;
              v64 |= (v198 & 0x7F) << v193;
              if (v198 < 0)
              {
                v193 += 7;
                --v195;
                ++v196;
                ++v197;
                v14 = v194++ > 8;
                if (v14)
                {
                  goto LABEL_184;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v64) = 0;
              }
            }

            else
            {
              LODWORD(v64) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_312:
          *(this + 28) = v64;
          goto LABEL_359;
        case 6u:
          *(this + 30) |= 8u;
          v133 = *(a2 + 1);
          v132 = *(a2 + 2);
          v134 = *a2;
          if (v133 <= 0xFFFFFFFFFFFFFFF5 && v133 + 10 <= v132)
          {
            v135 = 0;
            v136 = 0;
            v137 = 0;
            v138 = (v134 + v133);
            v139 = v133 + 1;
            do
            {
              *(a2 + 1) = v139;
              v140 = *v138++;
              v137 |= (v140 & 0x7F) << v135;
              if ((v140 & 0x80) == 0)
              {
                goto LABEL_336;
              }

              v135 += 7;
              ++v139;
              v14 = v136++ > 8;
            }

            while (!v14);
LABEL_248:
            v137 = 0;
            goto LABEL_336;
          }

          v241 = 0;
          v242 = 0;
          v137 = 0;
          v17 = v132 >= v133;
          v243 = v132 - v133;
          if (!v17)
          {
            v243 = 0;
          }

          v244 = (v134 + v133);
          v245 = v133 + 1;
          while (2)
          {
            if (v243)
            {
              v246 = *v244;
              *(a2 + 1) = v245;
              v137 |= (v246 & 0x7F) << v241;
              if (v246 < 0)
              {
                v241 += 7;
                --v243;
                ++v244;
                ++v245;
                v14 = v242++ > 8;
                if (v14)
                {
                  goto LABEL_248;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v137 = 0;
              }
            }

            else
            {
              v137 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_336:
          *(this + 7) = v137;
          goto LABEL_359;
        case 7u:
          *(this + 30) |= 0x40u;
          v150 = *(a2 + 1);
          if (v150 > 0xFFFFFFFFFFFFFFFBLL || v150 + 4 > *(a2 + 2))
          {
            goto LABEL_355;
          }

          *(this + 18) = *(*a2 + v150);
          goto LABEL_357;
        case 8u:
          *(this + 30) |= 0x200u;
          v113 = *(a2 + 1);
          if (v113 > 0xFFFFFFFFFFFFFFFBLL || v113 + 4 > *(a2 + 2))
          {
            goto LABEL_355;
          }

          *(this + 21) = *(*a2 + v113);
          goto LABEL_357;
        case 9u:
          *(this + 30) |= 0x4000u;
          v170 = *(a2 + 1);
          v169 = *(a2 + 2);
          v171 = *a2;
          if (v170 <= 0xFFFFFFFFFFFFFFF5 && v170 + 10 <= v169)
          {
            v172 = 0;
            v173 = 0;
            v174 = 0;
            v175 = (v171 + v170);
            v176 = v170 + 1;
            do
            {
              *(a2 + 1) = v176;
              v177 = *v175++;
              v174 |= (v177 & 0x7F) << v172;
              if ((v177 & 0x80) == 0)
              {
                goto LABEL_348;
              }

              v172 += 7;
              ++v176;
              v14 = v173++ > 8;
            }

            while (!v14);
LABEL_280:
            LODWORD(v174) = 0;
            goto LABEL_348;
          }

          v265 = 0;
          v266 = 0;
          v174 = 0;
          v17 = v169 >= v170;
          v267 = v169 - v170;
          if (!v17)
          {
            v267 = 0;
          }

          v268 = (v171 + v170);
          v269 = v170 + 1;
          while (2)
          {
            if (v267)
            {
              v270 = *v268;
              *(a2 + 1) = v269;
              v174 |= (v270 & 0x7F) << v265;
              if (v270 < 0)
              {
                v265 += 7;
                --v267;
                ++v268;
                ++v269;
                v14 = v266++ > 8;
                if (v14)
                {
                  goto LABEL_280;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v174) = 0;
              }
            }

            else
            {
              LODWORD(v174) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_348:
          *(this + 26) = v174;
          goto LABEL_359;
        case 0xAu:
          *(this + 30) |= 0x100u;
          v78 = *(a2 + 1);
          v77 = *(a2 + 2);
          v79 = *a2;
          if (v78 <= 0xFFFFFFFFFFFFFFF5 && v78 + 10 <= v77)
          {
            v80 = 0;
            v81 = 0;
            v82 = 0;
            v83 = (v79 + v78);
            v84 = v78 + 1;
            do
            {
              *(a2 + 1) = v84;
              v85 = *v83++;
              v82 |= (v85 & 0x7F) << v80;
              if ((v85 & 0x80) == 0)
              {
                goto LABEL_318;
              }

              v80 += 7;
              ++v84;
              v14 = v81++ > 8;
            }

            while (!v14);
LABEL_200:
            LODWORD(v82) = 0;
            goto LABEL_318;
          }

          v205 = 0;
          v206 = 0;
          v82 = 0;
          v17 = v77 >= v78;
          v207 = v77 - v78;
          if (!v17)
          {
            v207 = 0;
          }

          v208 = (v79 + v78);
          v209 = v78 + 1;
          while (2)
          {
            if (v207)
            {
              v210 = *v208;
              *(a2 + 1) = v209;
              v82 |= (v210 & 0x7F) << v205;
              if (v210 < 0)
              {
                v205 += 7;
                --v207;
                ++v208;
                ++v209;
                v14 = v206++ > 8;
                if (v14)
                {
                  goto LABEL_200;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v82) = 0;
              }
            }

            else
            {
              LODWORD(v82) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_318:
          *(this + 20) = v82;
          goto LABEL_359;
        case 0xBu:
          *(this + 30) |= 0x10u;
          v161 = *(a2 + 1);
          v160 = *(a2 + 2);
          v162 = *a2;
          if (v161 <= 0xFFFFFFFFFFFFFFF5 && v161 + 10 <= v160)
          {
            v163 = 0;
            v164 = 0;
            v165 = 0;
            v166 = (v162 + v161);
            v167 = v161 + 1;
            do
            {
              *(a2 + 1) = v167;
              v168 = *v166++;
              v165 |= (v168 & 0x7F) << v163;
              if ((v168 & 0x80) == 0)
              {
                goto LABEL_345;
              }

              v163 += 7;
              ++v167;
              v14 = v164++ > 8;
            }

            while (!v14);
LABEL_272:
            LODWORD(v165) = 0;
            goto LABEL_345;
          }

          v259 = 0;
          v260 = 0;
          v165 = 0;
          v17 = v160 >= v161;
          v261 = v160 - v161;
          if (!v17)
          {
            v261 = 0;
          }

          v262 = (v162 + v161);
          v263 = v161 + 1;
          while (2)
          {
            if (v261)
            {
              v264 = *v262;
              *(a2 + 1) = v263;
              v165 |= (v264 & 0x7F) << v259;
              if (v264 < 0)
              {
                v259 += 7;
                --v261;
                ++v262;
                ++v263;
                v14 = v260++ > 8;
                if (v14)
                {
                  goto LABEL_272;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v165) = 0;
              }
            }

            else
            {
              LODWORD(v165) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_345:
          *(this + 16) = v165;
          goto LABEL_359;
        case 0xCu:
          *(this + 30) |= 0x20000u;
          v51 = *(a2 + 1);
          v50 = *(a2 + 2);
          v52 = *a2;
          if (v51 <= 0xFFFFFFFFFFFFFFF5 && v51 + 10 <= v50)
          {
            v53 = 0;
            v54 = 0;
            v55 = 0;
            v56 = (v52 + v51);
            v57 = v51 + 1;
            do
            {
              *(a2 + 1) = v57;
              v58 = *v56++;
              v55 |= (v58 & 0x7F) << v53;
              if ((v58 & 0x80) == 0)
              {
                goto LABEL_309;
              }

              v53 += 7;
              ++v57;
              v14 = v54++ > 8;
            }

            while (!v14);
LABEL_176:
            LODWORD(v55) = 0;
            goto LABEL_309;
          }

          v187 = 0;
          v188 = 0;
          v55 = 0;
          v17 = v50 >= v51;
          v189 = v50 - v51;
          if (!v17)
          {
            v189 = 0;
          }

          v190 = (v52 + v51);
          v191 = v51 + 1;
          while (2)
          {
            if (v189)
            {
              v192 = *v190;
              *(a2 + 1) = v191;
              v55 |= (v192 & 0x7F) << v187;
              if (v192 < 0)
              {
                v187 += 7;
                --v189;
                ++v190;
                ++v191;
                v14 = v188++ > 8;
                if (v14)
                {
                  goto LABEL_176;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v55) = 0;
              }
            }

            else
            {
              LODWORD(v55) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_309:
          *(this + 29) = v55;
          goto LABEL_359;
        case 0xDu:
          *(this + 30) |= 0x20u;
          v69 = *(a2 + 1);
          v68 = *(a2 + 2);
          v70 = *a2;
          if (v69 <= 0xFFFFFFFFFFFFFFF5 && v69 + 10 <= v68)
          {
            v71 = 0;
            v72 = 0;
            v73 = 0;
            v74 = (v70 + v69);
            v75 = v69 + 1;
            do
            {
              *(a2 + 1) = v75;
              v76 = *v74++;
              v73 |= (v76 & 0x7F) << v71;
              if ((v76 & 0x80) == 0)
              {
                goto LABEL_315;
              }

              v71 += 7;
              ++v75;
              v14 = v72++ > 8;
            }

            while (!v14);
LABEL_192:
            LODWORD(v73) = 0;
            goto LABEL_315;
          }

          v199 = 0;
          v200 = 0;
          v73 = 0;
          v17 = v68 >= v69;
          v201 = v68 - v69;
          if (!v17)
          {
            v201 = 0;
          }

          v202 = (v70 + v69);
          v203 = v69 + 1;
          while (2)
          {
            if (v201)
            {
              v204 = *v202;
              *(a2 + 1) = v203;
              v73 |= (v204 & 0x7F) << v199;
              if (v204 < 0)
              {
                v199 += 7;
                --v201;
                ++v202;
                ++v203;
                v14 = v200++ > 8;
                if (v14)
                {
                  goto LABEL_192;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v73) = 0;
              }
            }

            else
            {
              LODWORD(v73) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_315:
          *(this + 17) = v73;
          goto LABEL_359;
        case 0xEu:
          *(this + 30) |= 2u;
          v142 = *(a2 + 1);
          v141 = *(a2 + 2);
          v143 = *a2;
          if (v142 <= 0xFFFFFFFFFFFFFFF5 && v142 + 10 <= v141)
          {
            v144 = 0;
            v145 = 0;
            v146 = 0;
            v147 = (v143 + v142);
            v148 = v142 + 1;
            do
            {
              *(a2 + 1) = v148;
              v149 = *v147++;
              v146 |= (v149 & 0x7F) << v144;
              if ((v149 & 0x80) == 0)
              {
                goto LABEL_339;
              }

              v144 += 7;
              ++v148;
              v14 = v145++ > 8;
            }

            while (!v14);
LABEL_256:
            v146 = 0;
            goto LABEL_339;
          }

          v247 = 0;
          v248 = 0;
          v146 = 0;
          v17 = v141 >= v142;
          v249 = v141 - v142;
          if (!v17)
          {
            v249 = 0;
          }

          v250 = (v143 + v142);
          v251 = v142 + 1;
          while (2)
          {
            if (v249)
            {
              v252 = *v250;
              *(a2 + 1) = v251;
              v146 |= (v252 & 0x7F) << v247;
              if (v252 < 0)
              {
                v247 += 7;
                --v249;
                ++v250;
                ++v251;
                v14 = v248++ > 8;
                if (v14)
                {
                  goto LABEL_256;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v146 = 0;
              }
            }

            else
            {
              v146 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_339:
          *(this + 5) = v146;
          goto LABEL_359;
        case 0xFu:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
LABEL_365:
              v282 = 0;
              return v282 & 1;
            }

            v34 = *(a2 + 1);
            v35 = *(a2 + 2);
            while (v34 < v35 && (*(a2 + 24) & 1) == 0)
            {
              v37 = *(this + 2);
              v36 = *(this + 3);
              if (v37 >= v36)
              {
                v39 = *(this + 1);
                v40 = v37 - v39;
                v41 = (v37 - v39) >> 2;
                v42 = v41 + 1;
                if ((v41 + 1) >> 62)
                {
                  goto LABEL_366;
                }

                v43 = v36 - v39;
                if (v43 >> 1 > v42)
                {
                  v42 = v43 >> 1;
                }

                if (v43 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v44 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v44 = v42;
                }

                if (v44)
                {
                  sub_10002290C(this + 8, v44);
                }

                v45 = (v37 - v39) >> 2;
                v46 = (4 * v41);
                v47 = (4 * v41 - 4 * v45);
                *v46 = 0;
                v38 = v46 + 1;
                memcpy(v47, v39, v40);
                v48 = *(this + 1);
                *(this + 1) = v47;
                *(this + 2) = v38;
                *(this + 3) = 0;
                if (v48)
                {
                  operator delete(v48);
                }
              }

              else
              {
                *v37 = 0;
                v38 = v37 + 4;
              }

              *(this + 2) = v38;
              v49 = *(a2 + 1);
              if (v49 > 0xFFFFFFFFFFFFFFFBLL || v49 + 4 > *(a2 + 2))
              {
                *(a2 + 24) = 1;
                break;
              }

              *(v38 - 1) = *(*a2 + v49);
              v35 = *(a2 + 2);
              v34 = *(a2 + 1) + 4;
              *(a2 + 1) = v34;
            }

            PB::Reader::recallMark();
          }

          else
          {
            v185 = *(this + 2);
            v184 = *(this + 3);
            if (v185 >= v184)
            {
              v271 = *(this + 1);
              v272 = v185 - v271;
              v273 = (v185 - v271) >> 2;
              v274 = v273 + 1;
              if ((v273 + 1) >> 62)
              {
LABEL_366:
                sub_10000CD24();
              }

              v275 = v184 - v271;
              if (v275 >> 1 > v274)
              {
                v274 = v275 >> 1;
              }

              if (v275 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v276 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v276 = v274;
              }

              if (v276)
              {
                sub_10002290C(this + 8, v276);
              }

              v277 = (v185 - v271) >> 2;
              v278 = (4 * v273);
              v279 = (4 * v273 - 4 * v277);
              *v278 = 0;
              v186 = v278 + 1;
              memcpy(v279, v271, v272);
              v280 = *(this + 1);
              *(this + 1) = v279;
              *(this + 2) = v186;
              *(this + 3) = 0;
              if (v280)
              {
                operator delete(v280);
              }
            }

            else
            {
              *v185 = 0;
              v186 = v185 + 4;
            }

            *(this + 2) = v186;
            v281 = *(a2 + 1);
            if (v281 <= 0xFFFFFFFFFFFFFFFBLL && v281 + 4 <= *(a2 + 2))
            {
              *(v186 - 1) = *(*a2 + v281);
LABEL_357:
              v24 = *(a2 + 1) + 4;
LABEL_358:
              *(a2 + 1) = v24;
            }

            else
            {
LABEL_355:
              *(a2 + 24) = 1;
            }
          }

LABEL_359:
          v2 = *(a2 + 1);
          v3 = *(a2 + 2);
          v4 = *(a2 + 24);
          if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
          {
            goto LABEL_363;
          }

          break;
        case 0x10u:
          *(this + 30) |= 0x1000u;
          v96 = *(a2 + 1);
          v95 = *(a2 + 2);
          v97 = *a2;
          if (v96 <= 0xFFFFFFFFFFFFFFF5 && v96 + 10 <= v95)
          {
            v98 = 0;
            v99 = 0;
            v100 = 0;
            v101 = (v97 + v96);
            v102 = v96 + 1;
            do
            {
              *(a2 + 1) = v102;
              v103 = *v101++;
              v100 |= (v103 & 0x7F) << v98;
              if ((v103 & 0x80) == 0)
              {
                goto LABEL_324;
              }

              v98 += 7;
              ++v102;
              v14 = v99++ > 8;
            }

            while (!v14);
LABEL_216:
            LODWORD(v100) = 0;
            goto LABEL_324;
          }

          v217 = 0;
          v218 = 0;
          v100 = 0;
          v17 = v95 >= v96;
          v219 = v95 - v96;
          if (!v17)
          {
            v219 = 0;
          }

          v220 = (v97 + v96);
          v221 = v96 + 1;
          while (2)
          {
            if (v219)
            {
              v222 = *v220;
              *(a2 + 1) = v221;
              v100 |= (v222 & 0x7F) << v217;
              if (v222 < 0)
              {
                v217 += 7;
                --v219;
                ++v220;
                ++v221;
                v14 = v218++ > 8;
                if (v14)
                {
                  goto LABEL_216;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v100) = 0;
              }
            }

            else
            {
              LODWORD(v100) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_324:
          *(this + 24) = v100;
          goto LABEL_359;
        case 0x11u:
          *(this + 30) |= 0x80u;
          v26 = *(a2 + 1);
          v25 = *(a2 + 2);
          v27 = *a2;
          if (v26 <= 0xFFFFFFFFFFFFFFF5 && v26 + 10 <= v25)
          {
            v28 = 0;
            v29 = 0;
            v30 = 0;
            v31 = (v27 + v26);
            v32 = v26 + 1;
            do
            {
              *(a2 + 1) = v32;
              v33 = *v31++;
              v30 |= (v33 & 0x7F) << v28;
              if ((v33 & 0x80) == 0)
              {
                goto LABEL_306;
              }

              v28 += 7;
              ++v32;
              v14 = v29++ > 8;
            }

            while (!v14);
LABEL_166:
            LODWORD(v30) = 0;
            goto LABEL_306;
          }

          v178 = 0;
          v179 = 0;
          v30 = 0;
          v17 = v25 >= v26;
          v180 = v25 - v26;
          if (!v17)
          {
            v180 = 0;
          }

          v181 = (v27 + v26);
          v182 = v26 + 1;
          while (2)
          {
            if (v180)
            {
              v183 = *v181;
              *(a2 + 1) = v182;
              v30 |= (v183 & 0x7F) << v178;
              if (v183 < 0)
              {
                v178 += 7;
                --v180;
                ++v181;
                ++v182;
                v14 = v179++ > 8;
                if (v14)
                {
                  goto LABEL_166;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v30) = 0;
              }
            }

            else
            {
              LODWORD(v30) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_306:
          *(this + 19) = v30;
          goto LABEL_359;
        case 0x12u:
          *(this + 30) |= 0x800u;
          v124 = *(a2 + 1);
          v123 = *(a2 + 2);
          v125 = *a2;
          if (v124 <= 0xFFFFFFFFFFFFFFF5 && v124 + 10 <= v123)
          {
            v126 = 0;
            v127 = 0;
            v128 = 0;
            v129 = (v125 + v124);
            v130 = v124 + 1;
            do
            {
              *(a2 + 1) = v130;
              v131 = *v129++;
              v128 |= (v131 & 0x7F) << v126;
              if ((v131 & 0x80) == 0)
              {
                goto LABEL_333;
              }

              v126 += 7;
              ++v130;
              v14 = v127++ > 8;
            }

            while (!v14);
LABEL_240:
            LODWORD(v128) = 0;
            goto LABEL_333;
          }

          v235 = 0;
          v236 = 0;
          v128 = 0;
          v17 = v123 >= v124;
          v237 = v123 - v124;
          if (!v17)
          {
            v237 = 0;
          }

          v238 = (v125 + v124);
          v239 = v124 + 1;
          while (2)
          {
            if (v237)
            {
              v240 = *v238;
              *(a2 + 1) = v239;
              v128 |= (v240 & 0x7F) << v235;
              if (v240 < 0)
              {
                v235 += 7;
                --v237;
                ++v238;
                ++v239;
                v14 = v236++ > 8;
                if (v14)
                {
                  goto LABEL_240;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v128) = 0;
              }
            }

            else
            {
              LODWORD(v128) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_333:
          *(this + 23) = v128;
          goto LABEL_359;
        case 0x13u:
          *(this + 30) |= 1u;
          v152 = *(a2 + 1);
          v151 = *(a2 + 2);
          v153 = *a2;
          if (v152 <= 0xFFFFFFFFFFFFFFF5 && v152 + 10 <= v151)
          {
            v154 = 0;
            v155 = 0;
            v156 = 0;
            v157 = (v153 + v152);
            v158 = v152 + 1;
            do
            {
              *(a2 + 1) = v158;
              v159 = *v157++;
              v156 |= (v159 & 0x7F) << v154;
              if ((v159 & 0x80) == 0)
              {
                goto LABEL_342;
              }

              v154 += 7;
              ++v158;
              v14 = v155++ > 8;
            }

            while (!v14);
LABEL_264:
            v156 = 0;
            goto LABEL_342;
          }

          v253 = 0;
          v254 = 0;
          v156 = 0;
          v17 = v151 >= v152;
          v255 = v151 - v152;
          if (!v17)
          {
            v255 = 0;
          }

          v256 = (v153 + v152);
          v257 = v152 + 1;
          while (2)
          {
            if (v255)
            {
              v258 = *v256;
              *(a2 + 1) = v257;
              v156 |= (v258 & 0x7F) << v253;
              if (v258 < 0)
              {
                v253 += 7;
                --v255;
                ++v256;
                ++v257;
                v14 = v254++ > 8;
                if (v14)
                {
                  goto LABEL_264;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v156 = 0;
              }
            }

            else
            {
              v156 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_342:
          *(this + 4) = v156;
          goto LABEL_359;
        default:
          if ((PB::Reader::skip(a2, v10 >> 3, v22, 0) & 1) == 0)
          {
            goto LABEL_365;
          }

          goto LABEL_359;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = (v7 + v2);
    v20 = v2 + 1;
    while (v18)
    {
      v21 = *v19;
      *(a2 + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        if (v4)
        {
          v10 = 0;
        }

        goto LABEL_21;
      }

      v15 += 7;
      --v18;
      ++v19;
      ++v20;
      v14 = v16++ > 8;
      if (v14)
      {
LABEL_18:
        v10 = 0;
        goto LABEL_21;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_363:
  v282 = v4 ^ 1;
  return v282 & 1;
}

uint64_t KappaTriggerSample::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 120);
  if ((v4 & 4) != 0)
  {
    this = PB::Writer::write(a2, *(this + 48), 1u);
    v4 = *(v3 + 120);
    if ((v4 & 0x2000) == 0)
    {
LABEL_3:
      if ((v4 & 0x8000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((v4 & 0x2000) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::writeVarInt(a2, *(v3 + 100), 2u);
  v4 = *(v3 + 120);
  if ((v4 & 0x8000) == 0)
  {
LABEL_4:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = PB::Writer::writeVarInt(a2, *(v3 + 108), 3u);
  v4 = *(v3 + 120);
  if ((v4 & 0x400) == 0)
  {
LABEL_5:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = PB::Writer::writeVarInt(a2, *(v3 + 88), 4u);
  v4 = *(v3 + 120);
  if ((v4 & 0x10000) == 0)
  {
LABEL_6:
    if ((v4 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = PB::Writer::writeVarInt(a2, *(v3 + 112), 5u);
  v4 = *(v3 + 120);
  if ((v4 & 8) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = PB::Writer::writeVarInt(a2, *(v3 + 56), 6u);
  v4 = *(v3 + 120);
  if ((v4 & 0x40) == 0)
  {
LABEL_8:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = PB::Writer::write(a2, *(v3 + 72), 7u);
  v4 = *(v3 + 120);
  if ((v4 & 0x200) == 0)
  {
LABEL_9:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = PB::Writer::write(a2, *(v3 + 84), 8u);
  v4 = *(v3 + 120);
  if ((v4 & 0x4000) == 0)
  {
LABEL_10:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = PB::Writer::writeVarInt(a2, *(v3 + 104), 9u);
  v4 = *(v3 + 120);
  if ((v4 & 0x100) == 0)
  {
LABEL_11:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = PB::Writer::writeVarInt(a2, *(v3 + 80), 0xAu);
  v4 = *(v3 + 120);
  if ((v4 & 0x10) == 0)
  {
LABEL_12:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = PB::Writer::writeVarInt(a2, *(v3 + 64), 0xBu);
  v4 = *(v3 + 120);
  if ((v4 & 0x20000) == 0)
  {
LABEL_13:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_14;
    }

LABEL_36:
    this = PB::Writer::writeVarInt(a2, *(v3 + 68), 0xDu);
    if ((*(v3 + 120) & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_35:
  this = PB::Writer::writeVarInt(a2, *(v3 + 116), 0xCu);
  v4 = *(v3 + 120);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_36;
  }

LABEL_14:
  if ((v4 & 2) != 0)
  {
LABEL_15:
    this = PB::Writer::writeVarInt(a2, *(v3 + 40), 0xEu);
  }

LABEL_16:
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    this = PB::Writer::write(a2, v7, 0xFu);
  }

  v8 = *(v3 + 120);
  if ((v8 & 0x1000) != 0)
  {
    this = PB::Writer::writeVarInt(a2, *(v3 + 96), 0x10u);
    v8 = *(v3 + 120);
    if ((v8 & 0x80) == 0)
    {
LABEL_21:
      if ((v8 & 0x800) == 0)
      {
        goto LABEL_22;
      }

LABEL_40:
      this = PB::Writer::writeVarInt(a2, *(v3 + 92), 0x12u);
      if ((*(v3 + 120) & 1) == 0)
      {
        return this;
      }

      goto LABEL_41;
    }
  }

  else if ((v8 & 0x80) == 0)
  {
    goto LABEL_21;
  }

  this = PB::Writer::writeVarInt(a2, *(v3 + 76), 0x11u);
  v8 = *(v3 + 120);
  if ((v8 & 0x800) != 0)
  {
    goto LABEL_40;
  }

LABEL_22:
  if ((v8 & 1) == 0)
  {
    return this;
  }

LABEL_41:
  v9 = *(v3 + 32);

  return PB::Writer::writeVarInt(a2, v9, 0x13u);
}

BOOL KappaTriggerSample::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 120);
  v3 = *(a2 + 120);
  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  if ((v2 & 0x2000) != 0)
  {
    if ((v3 & 0x2000) == 0 || *(a1 + 100) != *(a2 + 100))
    {
      return 0;
    }
  }

  else if ((v3 & 0x2000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x8000) != 0)
  {
    if ((v3 & 0x8000) == 0 || *(a1 + 108) != *(a2 + 108))
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x400) != 0)
  {
    if ((v3 & 0x400) == 0 || *(a1 + 88) != *(a2 + 88))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10000) != 0)
  {
    if ((v3 & 0x10000) == 0 || *(a1 + 112) != *(a2 + 112))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10000) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200) != 0)
  {
    if ((v3 & 0x200) == 0 || *(a1 + 84) != *(a2 + 84))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200) != 0)
  {
    return 0;
  }

  if ((v2 & 0x4000) != 0)
  {
    if ((v3 & 0x4000) == 0 || *(a1 + 104) != *(a2 + 104))
    {
      return 0;
    }
  }

  else if ((v3 & 0x4000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100) != 0)
  {
    if ((v3 & 0x100) == 0 || *(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20000) != 0)
  {
    if ((v3 & 0x20000) == 0 || *(a1 + 116) != *(a2 + 116))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 68) != *(a2 + 68))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a2 + 8);
  if (v4 - v5 != *(a2 + 16) - v6)
  {
    return 0;
  }

  while (v5 != v4)
  {
    if (*v5 != *v6)
    {
      return 0;
    }

    ++v5;
    ++v6;
  }

  if ((v2 & 0x1000) != 0)
  {
    if ((v3 & 0x1000) == 0 || *(a1 + 96) != *(a2 + 96))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 76) != *(a2 + 76))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((v2 & 0x800) != 0)
  {
    if ((v3 & 0x800) == 0 || *(a1 + 92) != *(a2 + 92))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800) != 0)
  {
    return 0;
  }

  v7 = (*(a2 + 120) & 1) == 0;
  if (v2)
  {
    return (v3 & 1) != 0 && *(a1 + 32) == *(a2 + 32);
  }

  return v7;
}

uint64_t KappaTriggerSample::hash_value(KappaTriggerSample *this)
{
  v2 = *(this + 30);
  if ((v2 & 4) != 0)
  {
    v14 = *(this + 6);
    if (v14 == 0.0)
    {
      v14 = 0.0;
    }

    v28 = v14;
    if ((v2 & 0x2000) != 0)
    {
LABEL_3:
      v27 = *(this + 25);
      if ((v2 & 0x8000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else
  {
    v28 = 0.0;
    if ((v2 & 0x2000) != 0)
    {
      goto LABEL_3;
    }
  }

  v27 = 0;
  if ((v2 & 0x8000) != 0)
  {
LABEL_4:
    v26 = *(this + 27);
    if ((v2 & 0x400) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_26:
  v26 = 0;
  if ((v2 & 0x400) != 0)
  {
LABEL_5:
    v25 = *(this + 22);
    if ((v2 & 0x10000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_27:
  v25 = 0;
  if ((v2 & 0x10000) != 0)
  {
LABEL_6:
    v24 = *(this + 28);
    if ((v2 & 8) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_28:
  v24 = 0;
  if ((v2 & 8) != 0)
  {
LABEL_7:
    v3 = *(this + 7);
    if ((v2 & 0x40) != 0)
    {
      goto LABEL_8;
    }

LABEL_30:
    v5 = 0;
    if ((v2 & 0x200) != 0)
    {
      goto LABEL_12;
    }

LABEL_31:
    v7 = 0;
    if ((v2 & 0x4000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_32;
  }

LABEL_29:
  v3 = 0;
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_30;
  }

LABEL_8:
  v4 = *(this + 18);
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  else
  {
    v5 = LODWORD(v4);
  }

  if ((v2 & 0x200) == 0)
  {
    goto LABEL_31;
  }

LABEL_12:
  v6 = *(this + 21);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  else
  {
    v7 = LODWORD(v6);
  }

  if ((v2 & 0x4000) != 0)
  {
LABEL_16:
    v8 = *(this + 26);
    if ((v2 & 0x100) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_33;
  }

LABEL_32:
  v8 = 0;
  if ((v2 & 0x100) != 0)
  {
LABEL_17:
    v9 = *(this + 20);
    if ((v2 & 0x10) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_34;
  }

LABEL_33:
  v9 = 0;
  if ((v2 & 0x10) != 0)
  {
LABEL_18:
    v10 = *(this + 16);
    if ((v2 & 0x20000) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_35;
  }

LABEL_34:
  v10 = 0;
  if ((v2 & 0x20000) != 0)
  {
LABEL_19:
    v11 = *(this + 29);
    if ((v2 & 0x20) != 0)
    {
      goto LABEL_20;
    }

LABEL_36:
    v12 = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_37;
  }

LABEL_35:
  v11 = 0;
  if ((v2 & 0x20) == 0)
  {
    goto LABEL_36;
  }

LABEL_20:
  v12 = *(this + 17);
  if ((v2 & 2) != 0)
  {
LABEL_21:
    v13 = *(this + 5);
    goto LABEL_38;
  }

LABEL_37:
  v13 = 0;
LABEL_38:
  v15 = *(this + 1);
  v16 = *(this + 2);
  v17 = PBHashBytes();
  v18 = *(this + 30);
  if ((v18 & 0x1000) != 0)
  {
    v19 = *(this + 24);
    if ((v18 & 0x80) != 0)
    {
LABEL_40:
      v20 = *(this + 19);
      if ((v18 & 0x800) != 0)
      {
        goto LABEL_41;
      }

LABEL_45:
      v21 = 0;
      if (v18)
      {
        goto LABEL_42;
      }

LABEL_46:
      v22 = 0;
      return v27 ^ *&v28 ^ v26 ^ v25 ^ v24 ^ v3 ^ v5 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v19 ^ v17 ^ v20 ^ v21 ^ v22;
    }
  }

  else
  {
    v19 = 0;
    if ((v18 & 0x80) != 0)
    {
      goto LABEL_40;
    }
  }

  v20 = 0;
  if ((v18 & 0x800) == 0)
  {
    goto LABEL_45;
  }

LABEL_41:
  v21 = *(this + 23);
  if ((v18 & 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_42:
  v22 = *(this + 4);
  return v27 ^ *&v28 ^ v26 ^ v25 ^ v24 ^ v3 ^ v5 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v19 ^ v17 ^ v20 ^ v21 ^ v22;
}

uint64_t CLKappaFeaturesAlgGPSResult::reset(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 12) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 56) = 2143289344;
  *(this + 64) = 0;
  *(this + 72) = 2143289344;
  *(this + 80) = 0;
  *(this + 88) = 2143289344;
  *(this + 96) = 0;
  *(this + 104) = 0;
  *(this + 108) = 0;
  return this;
}

double CLKappaFeaturesAlgGPSResult::logInternal(CLKappaFeaturesAlgGPSResult *this, int a2)
{
  if (a2)
  {
    if (qword_1004567F8 != -1)
    {
      sub_1002F3C38();
    }

    v3 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(this + 4);
      v6 = *(this + 40);
      v7 = *(this + 41);
      v8 = *(this + 6);
      v9 = *(this + 14);
      v10 = *(this + 8);
      v11 = *(this + 18);
      v12 = *(this + 10);
      v13 = *(this + 22);
      v14 = *(this + 4);
      v15 = *(this + 5);
      v16 = *(this + 6);
      v17 = *(this + 7);
      v18 = *(this + 12);
      v19 = *(this + 26);
      v20 = *(this + 108);
      v21 = 134353408;
      v22 = v5;
      v23 = 1026;
      v24 = v6;
      v25 = 1026;
      v26 = v7;
      v27 = 2050;
      v28 = v8;
      v29 = 2050;
      v30 = v9;
      v31 = 2050;
      v32 = v10;
      v33 = 2050;
      v34 = v11;
      v35 = 2050;
      v36 = v12;
      v37 = 2050;
      v38 = v13;
      v39 = 2050;
      v40 = v14;
      v41 = 2050;
      v42 = v15;
      v43 = 2050;
      v44 = v16;
      v45 = 2050;
      v46 = v17;
      v47 = 2050;
      v48 = v18;
      v49 = 2050;
      v50 = v19;
      v51 = 2050;
      v52 = (v19 / 0.44704);
      v53 = 1026;
      v54 = v20;
      v55 = 1026;
      v56 = 1;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[GP] summary,A,%{public}llu,B,%{public}d,C,%{public}d,D,%{public}llu,E,%{public}f,F,%{public}llu,G,%{public}f,H,%{public}llu,I,%{public}f,config-1,%{public}f,config-2,%{public}f,config-3,%{public}f,config-4,%{public}f,debug-1,%{public}llu,debug-2%{public}f,debug-3,%{public}f,debug-4,%{public}d,debug-5,%{public}d\n", &v21, 0xA6u);
    }
  }

  return result;
}

void CLKappaFeaturesAlgGPS::CLKappaFeaturesAlgGPS(CLKappaFeaturesAlgGPS *this, uint64_t *a2)
{
  CLKappaAlgBlock::CLKappaAlgBlock(this, a2 + 1);
  v4 = *a2;
  *v5 = *a2;
  *(this + *(v4 - 152)) = a2[6];
  *(this + *(*this - 160)) = a2[7];
  *(this + *(*this - 168)) = a2[8];
  *(this + *(*this - 176)) = a2[9];
  *(this + 4) = 0;
  *(this + 20) = 1;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
  *(this + 9) = vneg_f32(0x3F0000003FLL);
  *(this + 20) = 2143289344;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  sub_1002F3AF0();
}

void sub_1002F29A4(_Unwind_Exception *a1)
{
  v4 = *(v1 + 14);
  if (v4)
  {
    sub_100009A48(v4);
  }

  v5 = *(v1 + 12);
  if (v5)
  {
    sub_100009A48(v5);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, (v2 + 8));
  _Unwind_Resume(a1);
}

char **sub_1002F29D8@<X0>(uint64_t a1@<X0>, char ***a2@<X8>)
{
  result = *a1;
  {
    v6 = *(a1 + 8);
    *a2 = result;
    a2[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

void CLKappaFeaturesAlgGPS::CLKappaFeaturesAlgGPS(CLKappaFeaturesAlgGPS *this)
{
  *this = off_100411FE8;
  *(this + 15) = off_100412090;
  *(this + 16) = off_100412158;
  *(this + 17) = off_100412210;
  CLKappaAlgBlock::CLKappaAlgBlock(this, off_100432D58);
  *v1 = off_100432808;
  *(v1 + 120) = off_100432AC8;
  *(v1 + 128) = off_100432C10;
  *(v1 + 136) = off_100432D00;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 48) = 0;
  *(v1 + 72) = vneg_f32(0x3F0000003FLL);
  *(v1 + 80) = 2143289344;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0u;
  sub_1002F3AF0();
}

void sub_1002F2C80(_Unwind_Exception *a1)
{
  v3 = *(v1 + 14);
  if (v3)
  {
    sub_100009A48(v3);
  }

  v4 = *(v1 + 12);
  if (v4)
  {
    sub_100009A48(v4);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100432D58);
  _Unwind_Resume(a1);
}

uint64_t CLKappaFeaturesAlgGPS::reset(CLKappaFeaturesAlgGPS *this)
{
  result = (*(**(this + 11) + 24))(*(this + 11));
  *(this + 40) = 1;
  return result;
}

void CLKappaFeaturesAlgGPS::resetConfiguration(CLKappaFeaturesAlgGPS *this)
{
  v26 = [CSPersistentConfiguration configBaseKey:"FeaturesAlgGPSConfig" forFeatureMode:*(this + 24)];
  if (*(this + 24) == 2)
  {
    v2 = 6.0;
    v3 = 1099894125;
    v4 = 1074728301;
    v5 = 1050253722;
  }

  else
  {
    v3 = 1106925439;
    v4 = 1068214710;
    v5 = 1038174126;
    v2 = 1.01;
  }

  v6 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v7) = 1096193060;
  LODWORD(v8) = 1106925439;
  LODWORD(v9) = v3;
  [v6 algorithmThresholdNumber:0 inArrayForKey:v26 withMinValue:v7 maxValue:v8 defaultValue:v9];
  LODWORD(v27) = v10;

  v11 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v12) = 1068214710;
  LODWORD(v13) = 1083116909;
  LODWORD(v14) = v4;
  [v11 algorithmThresholdNumber:1 inArrayForKey:v26 withMinValue:v12 maxValue:v13 defaultValue:v14];
  DWORD1(v27) = v15;

  v16 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v17) = 1036831949;
  LODWORD(v18) = 0.5;
  LODWORD(v19) = v5;
  [v16 algorithmThresholdNumber:2 inArrayForKey:v26 withMinValue:v17 maxValue:v18 defaultValue:v19];
  DWORD2(v27) = v20;

  v21 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v22) = 1.0;
  LODWORD(v23) = 20.0;
  *&v24 = v2;
  [v21 algorithmThresholdNumber:3 inArrayForKey:v26 withMinValue:v22 maxValue:v23 defaultValue:v24];
  HIDWORD(v27) = v25;

  CLKappaFeaturesAlgGPS::setConfig(this, &v27);
}

double CLKappaFeaturesAlgGPS::setConfig(uint64_t a1, _OWORD *a2)
{
  *(*(a1 + 88) + 16) = *a2;
  if (qword_1004567F8 != -1)
  {
    sub_1002F3C38();
  }

  v3 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(*(a1 + 88) + 16);
    v12 = 134217984;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[GPS] config-1,%f", &v12, 0xCu);
  }

  if (qword_1004567F8 != -1)
  {
    sub_1002F3C4C();
  }

  v5 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(*(a1 + 88) + 20);
    v12 = 134217984;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[GPS] config-2,%f", &v12, 0xCu);
  }

  if (qword_1004567F8 != -1)
  {
    sub_1002F3C4C();
  }

  v7 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(*(a1 + 88) + 24);
    v12 = 134217984;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[GPS] config-3,%f", &v12, 0xCu);
  }

  if (qword_1004567F8 != -1)
  {
    sub_1002F3C4C();
  }

  v9 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(*(a1 + 88) + 28);
    v12 = 134217984;
    v13 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[GPS] config-4,%f", &v12, 0xCu);
  }

  return result;
}

uint64_t CLKappaFeaturesAlgGPS::feedGPS(uint64_t this, const CSSPUGps_Struct *a2)
{
  v2 = *(this + 88);
  timestamp = a2->timestamp;
  speedMS = a2->speedMS;
  v6 = *(v2 + 16);
  v5 = *(v2 + 20);
  v8 = a2->speedMS < v6 && speedMS >= v5;
  v9 = *(this + 40);
  if (v9 == 1)
  {
    *(this + 41) = 0;
    if (speedMS < v6)
    {
      v10 = *(this + 32);
      *(this + 48) = v10;
      *(this + 72) = 2143289344;
LABEL_15:
      LOBYTE(v9) = 1;
      goto LABEL_20;
    }

    LOBYTE(v9) = 2;
    *(this + 40) = 2;
    *(this + 48) = timestamp;
    *(this + 72) = speedMS;
LABEL_19:
    v10 = timestamp;
    goto LABEL_20;
  }

  if (v9 != 2)
  {
    v10 = *(this + 48);
    goto LABEL_20;
  }

  if (speedMS >= v6)
  {
    *(this + 48) = timestamp;
    *(this + 72) = speedMS;
    LOBYTE(v9) = 2;
    goto LABEL_19;
  }

  v10 = *(this + 48);
  v11 = v10 + ((*(v2 + 24) + *(v2 + 28)) * 1000000.0);
  if (v8 && timestamp <= v11)
  {
    LOBYTE(v9) = 2;
    goto LABEL_20;
  }

  if ((((speedMS >= v5) ^ v8) & 1) == 0 && timestamp > v11)
  {
    LOBYTE(v9) = 1;
    *(this + 40) = 1;
    v10 = *(this + 32);
    *(this + 48) = v10;
    *(this + 72) = 2143289344;
    goto LABEL_20;
  }

  LOBYTE(v9) = 2;
  if (speedMS < v5 && timestamp <= v11)
  {
    *(this + 40) = 257;
    v15 = *(this + 72);
    *(this + 56) = v10;
    *(this + 64) = timestamp;
    *(this + 76) = v15;
    *(this + 80) = speedMS;
    goto LABEL_15;
  }

LABEL_20:
  v12 = *(this + 76);
  *(v2 + 56) = *(this + 72);
  *(v2 + 32) = timestamp;
  v13 = *(this + 41);
  *(v2 + 40) |= v13;
  *(v2 + 41) = v9;
  *(v2 + 48) = v10;
  v14 = *(this + 64);
  *(v2 + 64) = *(this + 56);
  *(v2 + 72) = v12;
  *(v2 + 80) = v14;
  *(v2 + 88) = *(this + 80);
  *(v2 + 96) = timestamp;
  *(v2 + 104) = speedMS;
  *(v2 + 108) = v13;
  return this;
}

uint64_t CLKappaFeaturesAlgGPS::epochReset(uint64_t this)
{
  v1 = *(this + 88);
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 56) = 2143289344;
  *(v1 + 64) = 0;
  *(v1 + 72) = 2143289344;
  *(v1 + 80) = 0;
  *(v1 + 88) = 2143289344;
  v2 = *(this + 88);
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 108) = 0;
  return this;
}

void *virtual thunk toCLKappaFeaturesAlgGPS::epochReset(void *this)
{
  v1 = this + *(*this - 56);
  v2 = *(v1 + 11);
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 2143289344;
  *(v2 + 64) = 0;
  *(v2 + 72) = 2143289344;
  *(v2 + 80) = 0;
  *(v2 + 88) = 2143289344;
  v3 = *(v1 + 11);
  *(v3 + 96) = 0;
  *(v3 + 104) = 0;
  *(v3 + 108) = 0;
  return this;
}

void sub_1002F3334(CLKappaAlgBlock *this)
{
  *this = off_100432808;
  *(this + 15) = off_100432AC8;
  *(this + 16) = off_100432C10;
  *(this + *(*this - 176)) = off_100432D00;
  v2 = *(this + 14);
  if (v2)
  {
    sub_100009A48(v2);
  }

  v3 = *(this + 12);
  if (v3)
  {
    sub_100009A48(v3);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(this, off_100432D58);
}

void sub_1002F3430(CLKappaAlgBlock *this)
{
  *this = off_100432808;
  *(this + 15) = off_100432AC8;
  *(this + 16) = off_100432C10;
  *(this + 17) = off_100432D00;
  v2 = *(this + 14);
  if (v2)
  {
    sub_100009A48(v2);
  }

  v3 = *(this + 12);
  if (v3)
  {
    sub_100009A48(v3);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(this, off_100432D58);

  operator delete();
}

void sub_1002F3518(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100432808;
  *(v1 + 15) = off_100432AC8;
  *(v1 + 16) = off_100432C10;
  *(v1 + 17) = off_100432D00;
  v2 = *(v1 + 14);
  if (v2)
  {
    sub_100009A48(v2);
  }

  v3 = *(v1 + 12);
  if (v3)
  {
    sub_100009A48(v3);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100432D58);
}

void sub_1002F35FC(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100432808;
  *(v1 + 15) = off_100432AC8;
  *(v1 + 16) = off_100432C10;
  *(v1 + 17) = off_100432D00;
  v2 = *(v1 + 14);
  if (v2)
  {
    sub_100009A48(v2);
  }

  v3 = *(v1 + 12);
  if (v3)
  {
    sub_100009A48(v3);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100432D58);

  operator delete();
}

void sub_1002F36F4(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100432808;
  *(v1 + 15) = off_100432AC8;
  *(v1 + 16) = off_100432C10;
  *(v1 + 17) = off_100432D00;
  v2 = *(v1 + 14);
  if (v2)
  {
    sub_100009A48(v2);
  }

  v3 = *(v1 + 12);
  if (v3)
  {
    sub_100009A48(v3);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100432D58);
}

void sub_1002F37D8(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100432808;
  *(v1 + 15) = off_100432AC8;
  *(v1 + 16) = off_100432C10;
  *(v1 + 17) = off_100432D00;
  v2 = *(v1 + 14);
  if (v2)
  {
    sub_100009A48(v2);
  }

  v3 = *(v1 + 12);
  if (v3)
  {
    sub_100009A48(v3);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100432D58);

  operator delete();
}

void sub_1002F38D0(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100432808;
  *(v1 + 15) = off_100432AC8;
  *(v1 + 16) = off_100432C10;
  *(v1 + 17) = off_100432D00;
  v2 = *(v1 + 14);
  if (v2)
  {
    sub_100009A48(v2);
  }

  v3 = *(v1 + 12);
  if (v3)
  {
    sub_100009A48(v3);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100432D58);
}

void sub_1002F39B4(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100432808;
  *(v1 + 15) = off_100432AC8;
  *(v1 + 16) = off_100432C10;
  *(v1 + 17) = off_100432D00;
  v2 = *(v1 + 14);
  if (v2)
  {
    sub_100009A48(v2);
  }

  v3 = *(v1 + 12);
  if (v3)
  {
    sub_100009A48(v3);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100432D58);

  operator delete();
}

void sub_1002F3AAC(id a1)
{
  qword_100456800 = os_log_create("com.apple.anomalydetectiond", "Alg");

  _objc_release_x1();
}

void sub_1002F3BBC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1004333E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void CLSafetyDeescalatorJointDetection::CLSafetyDeescalatorJointDetection(CLSafetyDeescalatorJointDetection *this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 36) = 1;
  *(this + 10) = 0;
  *(this + 44) = 0;
  *this = &off_100433430;
  *(this + 80) = 0;
  *(this + 88) = 0;
  *(this + 136) = 0;
  *(this + 144) = 0;
  *(this + 160) = 0;
  *(this + 168) = 0;
  *(this + 172) = 0;
  *(this + 71) = 5;
  *(this + 12) = 1244489060;
  *(this + 52) = 68;
  *(this + 53) = 0;
  *(this + 84) = 1;
}

uint64_t CLSafetyDeescalatorJointDetection::assertReady(CLSafetyDeescalatorJointDetection *this, uint64_t a2, const char *a3)
{
  CLKappaDeescalator::raiseUnless(*(this + 160), "[de-JD] has not received local JD output", a3);
  CLKappaDeescalator::raiseUnless(1, "[de-JD] internal enum has been changed", v4);
  v6 = *(this + 80);

  return CLKappaDeescalator::raiseUnless(v6, "[de-JD] missing config", v5);
}

uint64_t CLSafetyDeescalatorJointDetection::setConfig(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if ((*(result + 80) & 1) == 0)
  {
    *(result + 80) = 1;
  }

  *(result + 72) = v2;
  return result;
}

void CLSafetyDeescalatorJointDetection::resetConfiguration(CLSafetyDeescalatorJointDetection *this)
{
  v5 = [CSPersistentConfiguration configBaseKey:"DeescalatorJDConfig" forFeatureMode:*(this + 36)];
  v2 = +[CSPersistentConfiguration sharedConfiguration];
  v3 = [v2 BOOLThreshold:&CLSafetyDeescalatorJointDetection::kConfigurationDefaults forKey:v5];
  [v2 floatThreshold:&unk_1003BFCF4 forKey:v5];
  if ((*(this + 80) & 1) == 0)
  {
    *(this + 80) = 1;
  }

  *(this + 18) = v3;
  *(this + 19) = v4;
  *(this + 44) = CLKappaDeescalator::shouldForceNoop(this, "ForceJointDetection");
  *(this + 10) = CLKappaDeescalator::shouldForceDeescalate(this, "ForceJointDetection");
}

void CLSafetyDeescalatorJointDetection::log(CLSafetyDeescalatorJointDetection *this, uint64_t a2)
{
  if (*(this + 160) == 1)
  {
    v4 = *(this + 19);
  }

  else
  {
    v4 = 0;
  }

  if (*(this + 136) == 1)
  {
    v6 = *(this + 14);
    v5 = *(this + 15);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = 0.0;
  if (*(this + 172) == 1)
  {
    v7 = *(this + 42);
  }

  if ((*(this + 80) & 1) == 0)
  {
    sub_100005BF0();
  }

  v8 = *(this + 84);
  if (qword_1004567F8 != -1)
  {
    sub_1002F4F18();
  }

  v9 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(this + 6);
    v11 = *(this + 36);
    v12 = *(this + 72);
    v13 = *(this + 19);
    v14 = 134351360;
    v15 = a2;
    v16 = 1026;
    v17 = v10;
    v18 = 1026;
    v19 = v11;
    v20 = 1026;
    v21 = v12;
    v22 = 2050;
    v23 = v13;
    v24 = 2050;
    v25 = v4;
    v26 = 2050;
    v27 = v5;
    v28 = 2050;
    v29 = v6;
    v30 = 1026;
    v31 = v8;
    v32 = 2050;
    v33 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[de-JD] summary,A,%{public}llu,B,%{public}u,mode,%{public}u,config-1,%{public}u,config-1,%{public}f,debug-1a,%{public}llu,debug-1b,%{public}llu,debug-1c,%{public}llu,debug-1d,%{public}u,debug-1e,%{public}f", &v14, 0x56u);
  }
}

id sub_1002F4010()
{
  if (qword_1004567F8 != -1)
  {
    sub_1002F4F18();
  }

  v1 = qword_100456800;

  return v1;
}

void CLSafetyDeescalatorJointDetection::updateWithRemoteSample(CLSafetyDeescalatorJointDetection *this, const CSRemoteSample_Struct *a2)
{
  v4 = a2->receivedAtTimestamp - a2->createdAtTimestamp;
  lastRealTriggerTimestamp = a2->lastRealTriggerTimestamp;
  if (qword_1004567F8 != -1)
  {
    sub_1002F4F18();
  }

  v6 = v4 + lastRealTriggerTimestamp;
  v7 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
  {
    v9 = a2->lastRealTriggerTimestamp;
    if (v9)
    {
      v10 = v6;
    }

    else
    {
      v10 = 0;
    }

    v41 = 134218240;
    *v42 = v9;
    *&v42[8] = 2048;
    v43 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[de-JD] received remote sample: [remote=%llu local=%llu]", &v41, 0x16u);
  }

  if (*(this + 84) == 2)
  {
    if (qword_1004567F8 != -1)
    {
      sub_1002F4F2C();
    }

    v11 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v41) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "[de-JD] already latched to sure-real", &v41, 2u);
    }

    return;
  }

  if (*(this + 36) != a2->mode)
  {
    if (qword_1004567F8 != -1)
    {
      sub_1002F4F2C();
    }

    v17 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
    {
      v18 = *(this + 36);
      mode = a2->mode;
      v41 = 67109376;
      *v42 = v18;
      *&v42[4] = 1024;
      *&v42[6] = mode;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "[de-JD] got sample for other mode me=%u other=%u: UNSURE", &v41, 0xEu);
    }

    *(this + 84) = 1;
    return;
  }

  CLKappaDeescalator::raiseUnless(1, "[de-JD] Precondition not met: different modes", v8);
  if (*(this + 84) != 3)
  {
    *(this + 84) = 1;
    CLKappaDeescalator::raiseUnless(1, "[de-JD] Precondition not met: not unsure", v12);
    v20 = CLSafetyDeescalatorJointDetection::sameEventRegionBoundary(this);
    if (v21)
    {
      v22 = v20;
      if (a2->receivedAtTimestamp < v20)
      {
        if (qword_1004567F8 != -1)
        {
          sub_1002F4F2C();
        }

        v23 = qword_100456800;
        if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v41) = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "[de-JD] RS was inside 'same event region'", &v41, 2u);
        }

        v25 = *(this + 136);
        v27 = *&a2->createdAtTimestamp;
        v26 = *&a2->lastRealTriggerTimestamp;
        *(this + 88) = *&a2->mode;
        *(this + 104) = v27;
        *(this + 120) = v26;
        if ((v25 & 1) == 0)
        {
          *(this + 136) = 1;
        }

        v28 = this;
        v29 = 0;
LABEL_54:
        CLSafetyDeescalatorJointDetection::verifySameEvent(v28, v29, v24);
        return;
      }

      if (qword_1004567F8 != -1)
      {
        sub_1002F4F2C();
      }

      v31 = qword_100456800;
      if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v41) = 0;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "[de-JD] RS was outside 'same event region'", &v41, 2u);
      }

      if (!a2->lastRealTriggerTimestamp)
      {
        v34 = sub_1002F4010();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v41) = 0;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "[de-JD] RS did not have a trigger: no blind spot", &v41, 2u);
        }

        goto LABEL_51;
      }

      v32 = sub_1002F4010();
      v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG);
      if (v6 < v22)
      {
        if (v33)
        {
          LOWORD(v41) = 0;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "[de-JD] RS had a trigger but no blind spot", &v41, 2u);
        }

LABEL_51:
        v35 = *(this + 136);
        v37 = *&a2->createdAtTimestamp;
        v36 = *&a2->lastRealTriggerTimestamp;
        *(this + 88) = *&a2->mode;
        *(this + 104) = v37;
        *(this + 120) = v36;
        if ((v35 & 1) == 0)
        {
          *(this + 136) = 1;
        }

        v28 = this;
        v29 = 1;
        goto LABEL_54;
      }

      if (v33)
      {
        LOWORD(v41) = 0;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "[de-JD] RS had a trigger that could have a blind spot: UNSURE", &v41, 2u);
      }
    }

    else
    {
      if (qword_1004567F8 != -1)
      {
        sub_1002F4F2C();
      }

      v30 = qword_100456800;
      if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v41) = 0;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "[de-JD] 'same event region' is undefined: UNSURE", &v41, 2u);
      }
    }

    *(this + 84) = 1;
    v38 = *(this + 136);
    v40 = *&a2->createdAtTimestamp;
    v39 = *&a2->lastRealTriggerTimestamp;
    *(this + 88) = *&a2->mode;
    *(this + 104) = v40;
    *(this + 120) = v39;
    if (v38)
    {
      return;
    }

    goto LABEL_59;
  }

  if (qword_1004567F8 != -1)
  {
    sub_1002F4F2C();
  }

  v13 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v41) = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "[de-JD] new remote sample does not change our SURE-NONE state", &v41, 2u);
  }

  v14 = *(this + 136);
  v16 = *&a2->createdAtTimestamp;
  v15 = *&a2->lastRealTriggerTimestamp;
  *(this + 88) = *&a2->mode;
  *(this + 104) = v16;
  *(this + 120) = v15;
  if ((v14 & 1) == 0)
  {
LABEL_59:
    *(this + 136) = 1;
  }
}

unint64_t CLSafetyDeescalatorJointDetection::sameEventRegionBoundary(CLSafetyDeescalatorJointDetection *this)
{
  if (*(this + 160) != 1)
  {
    v1 = 0;
    goto LABEL_6;
  }

  v1 = *(this + 19);
  if (!v1)
  {
LABEL_6:
    v2 = 0;
    return v2 | v1;
  }

  if ((*(this + 80) & 1) == 0)
  {
    sub_100005BF0();
  }

  v1 += (*(this + 19) * 1000000.0);
  v2 = v1 & 0xFFFFFFFFFFFFFF00;
  v1 = v1;
  return v2 | v1;
}

void CLSafetyDeescalatorJointDetection::verifySameEvent(CLSafetyDeescalatorJointDetection *this, int a2, const char *a3)
{
  CLKappaDeescalator::raiseUnless(*(this + 84) == 1, "[de-JD] precondition failed: verify same event but not unsure", a3);
  if ((*(this + 160) & 1) == 0)
  {
    if (!a2)
    {
      if (qword_1004567F8 != -1)
      {
        sub_1002F4F18();
      }

      v13 = qword_100456800;
      if (!os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
      {
        return;
      }

      LOWORD(v23) = 0;
      v14 = "[de-JD] verifying same event: no JD feature (hold, UNSURE)";
      goto LABEL_60;
    }

    if (qword_1004567F8 != -1)
    {
      sub_1002F4F18();
    }

    v11 = qword_100456800;
    if (!os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_49;
    }

    LOWORD(v23) = 0;
    v12 = "[de-JD] verifying same event: no JD feature (SURE-NONE)";
LABEL_47:
    v17 = v11;
    v18 = 2;
    goto LABEL_48;
  }

  v5 = *(this + 19);
  if (!v5)
  {
    if (!a2)
    {
      if (qword_1004567F8 != -1)
      {
        sub_1002F4F18();
      }

      v13 = qword_100456800;
      if (!os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
      {
        return;
      }

      LOWORD(v23) = 0;
      v14 = "[de-JD] verifying same event: no local real trigger (hold, UNSURE)";
      goto LABEL_60;
    }

    if (qword_1004567F8 != -1)
    {
      sub_1002F4F18();
    }

    v11 = qword_100456800;
    if (!os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_49;
    }

    LOWORD(v23) = 0;
    v12 = "[de-JD] verifying same event: no local real trigger (SURE-NONE)";
    goto LABEL_47;
  }

  if ((*(this + 136) & 1) == 0)
  {
    if (a2)
    {
      if (qword_1004567F8 != -1)
      {
        sub_1002F4F18();
      }

      v15 = qword_100456800;
      if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "[de-JD] verifying same event: no communication (UNSURE)", &v23, 2u);
      }

      v16 = 1;
      goto LABEL_50;
    }

    if (qword_1004567F8 != -1)
    {
      sub_1002F4F18();
    }

    v13 = qword_100456800;
    if (!os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    LOWORD(v23) = 0;
    v14 = "[de-JD] verifying same event: no communication (hold, UNSURE)";
    goto LABEL_60;
  }

  v6 = *(this + 15);
  if (!v6)
  {
    if (a2)
    {
      if (qword_1004567F8 != -1)
      {
        sub_1002F4F18();
      }

      v11 = qword_100456800;
      if (!os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_49;
      }

      LOWORD(v23) = 0;
      v12 = "[de-JD] verifying same event: no remote real trigger (SURE-NONE)";
      goto LABEL_47;
    }

    if (qword_1004567F8 != -1)
    {
      sub_1002F4F18();
    }

    v13 = qword_100456800;
    if (!os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    LOWORD(v23) = 0;
    v14 = "[de-JD] verifying same event: no remote real trigger (hold)";
LABEL_60:
    v20 = v13;
    v21 = 2;
LABEL_61:
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, v14, &v23, v21);
    return;
  }

  v7 = v5 + *(this + 13) - (v6 + *(this + 14));
  if (v7 < 0)
  {
    v7 = -v7;
  }

  if ((*(this + 80) & 1) == 0)
  {
    sub_100005BF0();
  }

  v8 = v7 / 1000000.0;
  v9 = *(this + 19);
  *(this + 42) = v8;
  *(this + 172) = 1;
  if (v8 < v9)
  {
    if (qword_1004567F8 != -1)
    {
      sub_1002F4F18();
    }

    v10 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
    {
      v23 = 134218240;
      v24 = v8;
      v25 = 2048;
      v26 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "[de-JD] verifying same event: SURE-REAL (%f < %f)", &v23, 0x16u);
    }

    *(this + 84) = 2;
    return;
  }

  if (a2)
  {
    if (qword_1004567F8 != -1)
    {
      sub_1002F4F18();
    }

    v19 = qword_100456800;
    if (!os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_49;
    }

    v23 = 134218240;
    v24 = v8;
    v25 = 2048;
    v26 = v9;
    v12 = "[de-JD] verifying same event: SURE-NONE (%f >= %f)";
    v17 = v19;
    v18 = 22;
LABEL_48:
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, v12, &v23, v18);
LABEL_49:
    v16 = 3;
LABEL_50:
    *(this + 84) = v16;
    return;
  }

  if (qword_1004567F8 != -1)
  {
    sub_1002F4F18();
  }

  v22 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
  {
    v23 = 134218240;
    v24 = v8;
    v25 = 2048;
    v26 = v9;
    v14 = "[de-JD] verifying same event: (hold, UNSURE) (%f >= %f)";
    v20 = v22;
    v21 = 22;
    goto LABEL_61;
  }
}