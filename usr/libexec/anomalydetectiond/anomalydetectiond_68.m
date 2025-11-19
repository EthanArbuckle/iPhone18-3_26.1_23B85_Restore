void sub_1002AFC14(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100429B40;
  *(v1 + 6) = off_100429E00;
  *(v1 + 7) = off_100429F48;
  *(v1 + 8) = off_10042A038;
  v2 = *(v1 + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_10042A090);

  operator delete();
}

void sub_1002AFD00(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100429B40;
  *(v1 + 6) = off_100429E00;
  *(v1 + 7) = off_100429F48;
  *(v1 + 8) = off_10042A038;
  v2 = *(v1 + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_10042A090);
}

void sub_1002AFDD8(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100429B40;
  *(v1 + 6) = off_100429E00;
  *(v1 + 7) = off_100429F48;
  *(v1 + 8) = off_10042A038;
  v2 = *(v1 + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_10042A090);

  operator delete();
}

void sub_1002AFEC4(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100429B40;
  *(v1 + 6) = off_100429E00;
  *(v1 + 7) = off_100429F48;
  *(v1 + 8) = off_10042A038;
  v2 = *(v1 + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_10042A090);
}

void sub_1002AFF9C(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100429B40;
  *(v1 + 6) = off_100429E00;
  *(v1 + 7) = off_100429F48;
  *(v1 + 8) = off_10042A038;
  v2 = *(v1 + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_10042A090);

  operator delete();
}

void sub_1002B0088(id a1)
{
  qword_100456800 = os_log_create("com.apple.anomalydetectiond", "Alg");

  _objc_release_x1();
}

void sub_1002B00EC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10042A718;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

double CLKappaFeaturesAlgCrashClassifierResult::reset(CLKappaFeaturesAlgCrashClassifierResult *this)
{
  v3 = (this + 32);
  v2 = *(this + 4);
  *(v3 - 24) = 0;
  *(v3 - 20) = xmmword_1003879F0;
  *(v3 - 1) = 2560;
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v4 = *(this + 7);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  if (v4)
  {
    *(this + 8) = v4;
    operator delete(v4);
  }

  v5 = *(this + 10);
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  if (v5)
  {
    *(this + 11) = v5;
    operator delete(v5);
  }

  v6 = *(this + 13);
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  if (v6)
  {
    *(this + 14) = v6;
    operator delete(v6);
  }

  v7 = *(this + 16);
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  if (v7)
  {
    *(this + 17) = v7;
    operator delete(v7);
  }

  v8 = *(this + 19);
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  if (v8)
  {
    *(this + 20) = v8;
    operator delete(v8);
  }

  *(this + 184) = 0;
  result = 0.0;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 24) = 0;
  *(this + 214) = 0;
  return result;
}

void CLKappaFeaturesAlgCrashClassifierResult::log(CLKappaFeaturesAlgCrashClassifierResult *this)
{
  v2 = *(this + 51);
  v3 = *(this + 52);
  v4 = *(this + 53);
  v5 = +[CSPlatformInfo sharedInstance];
  v6 = [v5 isCrashClassifierSupportedPlatform];

  if (v6)
  {
    if (qword_1004567F8 != -1)
    {
      sub_1002B3880();
    }

    v7 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(this + 22);
      v9 = *(this + 4);
      v10 = *(this + 5);
      v11 = *(this + 6);
      v12 = *(this + 7);
      v13 = *(this + 96);
      v14 = *(this + 97);
      v15 = *(this + 98);
      v16 = *(this + 99);
      v17 = *(this + 100);
      v18 = *(this + 101);
      v19 = *(this + 51);
      v20 = *(this + 52);
      v21 = *(this + 53);
      v22 = *(this + 216);
      v23 = *(this + 217);
      v24 = *(this + 218);
      v25 = *(this + 219);
      v26 = *(this + 220);
      v27 = *(this + 221);
      v28 = 134354176;
      v29 = v8;
      v30 = 1026;
      v31 = v9;
      v32 = 1026;
      v33 = v10;
      v34 = 1026;
      v35 = v11;
      v36 = 1026;
      v37 = v12;
      v38 = 1026;
      v39 = v13;
      v40 = 1026;
      v41 = v14;
      v42 = 1026;
      v43 = v15;
      v44 = 1026;
      v45 = v16;
      v46 = 1026;
      v47 = v17;
      v48 = 1026;
      v49 = v18;
      v50 = 2050;
      v51 = v19;
      v52 = 2050;
      v53 = v20;
      v54 = 2050;
      v55 = v21;
      v56 = 1026;
      v57 = v22;
      v58 = 1026;
      v59 = v23;
      v60 = 1026;
      v61 = v24;
      v62 = 1026;
      v63 = v25;
      v64 = 1026;
      v65 = v26;
      v66 = 1026;
      v67 = v27;
      v68 = 2050;
      v69 = ((v2 + v3) + v4);
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[CrashClassifier-Features] summary,A,%{public}llu,config-1,%{public}d,config-2,%{public}d,config-3,%{public}d,config-4,%{public}d,debug-1a,%{public}u,debug-1b,%{public}u,debug-1c,%{public}u,debug-1d,%{public}u,debug-1e,%{public}u,debug-1f,%{public}u,debug-1g,%{public}f,debug-1h,%{public}f,debug-1i,%{public}f,debug-1j,%{public}d,debug-1k,%{public}d,debug-1l,%{public}d,debug-1m,%{public}d,debug-1n,%{public}d,debug-1o,%{public}d,debug-1p,%{public}f", &v28, 0x94u);
    }
  }
}

void CLKappaFeaturesAlgCrashClassifier::CLKappaFeaturesAlgCrashClassifier(CLKappaFeaturesAlgCrashClassifier *this, uint64_t *a2)
{
  CLKappaAlgBlock::CLKappaAlgBlock(this, a2 + 1);
  v4 = *a2;
  *v5 = *a2;
  *(this + *(v4 - 152)) = a2[6];
  *(this + *(*this - 160)) = a2[7];
  *(this + *(*this - 168)) = a2[8];
  *(this + *(*this - 176)) = a2[9];
  *(this + 11) = 0u;
  *(this + 2) = 0u;
  *(this + 5) = 0u;
  *(this + 8) = 0u;
  *(this + 32) = 0;
  *(this + 250) = 0;
  *(this + 33) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 185) = 0u;
  operator new();
}

void sub_1002B08DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, void **a10)
{
  v19 = *(v10 + 33);
  if (v19)
  {
    sub_100009A48(v19);
  }

  v20 = *v15;
  if (*v15)
  {
    *(v10 + 23) = v20;
    operator delete(v20);
  }

  v21 = *v16;
  if (*v16)
  {
    *(v10 + 20) = v21;
    operator delete(v21);
  }

  v22 = *v14;
  if (*v14)
  {
    *(v10 + 17) = v22;
    operator delete(v22);
  }

  v23 = *a9;
  if (*a9)
  {
    *(v10 + 14) = v23;
    operator delete(v23);
  }

  v24 = *v13;
  if (*v13)
  {
    *(v10 + 11) = v24;
    operator delete(v24);
  }

  v25 = *a10;
  if (*a10)
  {
    *(v10 + 8) = v25;
    operator delete(v25);
  }

  v26 = *v12;
  if (*v12)
  {
    *(v10 + 5) = v26;
    operator delete(v26);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v10, (v11 + 8));
  _Unwind_Resume(a1);
}

char **sub_1002B0988@<X0>(uint64_t a1@<X0>, char ***a2@<X8>)
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

void CLKappaFeaturesAlgCrashClassifier::CLKappaFeaturesAlgCrashClassifier(CLKappaFeaturesAlgCrashClassifier *this)
{
  *this = off_100411FE8;
  *(this + 34) = off_100412090;
  *(this + 35) = off_100412158;
  *(this + 36) = off_100412210;
  CLKappaAlgBlock::CLKappaAlgBlock(this, off_10042AD58);
  *v1 = off_10042A808;
  *(v1 + 264) = 0;
  *(v1 + 272) = off_10042AAC8;
  *(v1 + 280) = off_10042AC10;
  *(v1 + 288) = off_10042AD00;
  *(v1 + 32) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 176) = 0u;
  *(v1 + 250) = 0;
  *(v1 + 256) = 0;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0u;
  *(v1 + 185) = 0u;
  operator new();
}

void sub_1002B0DC0(_Unwind_Exception *a1)
{
  v7 = v6;

  v9 = *(v1 + 33);
  if (v9)
  {
    sub_100009A48(v9);
  }

  v10 = *v5;
  if (*v5)
  {
    *(v1 + 23) = v10;
    operator delete(v10);
  }

  v11 = *(v1 + 19);
  if (v11)
  {
    *(v1 + 20) = v11;
    operator delete(v11);
  }

  v12 = *v4;
  if (*v4)
  {
    *(v1 + 17) = v12;
    operator delete(v12);
  }

  v13 = *(v1 + 13);
  if (v13)
  {
    *(v1 + 14) = v13;
    operator delete(v13);
  }

  v14 = *v3;
  if (*v3)
  {
    *(v1 + 11) = v14;
    operator delete(v14);
  }

  v15 = *(v1 + 7);
  if (v15)
  {
    *(v1 + 8) = v15;
    operator delete(v15);
  }

  v16 = *v2;
  if (*v2)
  {
    *(v1 + 5) = v16;
    operator delete(v16);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_10042AD58);
  _Unwind_Resume(a1);
}

uint64_t CLKappaFeaturesAlgCrashClassifier::reset(CLKappaFeaturesAlgCrashClassifier *this)
{
  if (qword_1004567F8 != -1)
  {
    sub_1002B3880();
  }

  v2 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "[CrashClassifier][Features] reset()", v4, 2u);
  }

  return (*(**(this + 32) + 24))(*(this + 32));
}

void CLKappaFeaturesAlgCrashClassifier::resetConfiguration(CLKappaFeaturesAlgCrashClassifier *this)
{
  v6 = [CSPersistentConfiguration configBaseKey:"FeaturesAlgCrashClassifierConfig" forFeatureMode:*(this + 24)];
  v2 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v7) = [v2 algorithmIntegerNumber:0 inArrayForKey:v6 withMinValue:0xFFFFFFFFLL maxValue:2 defaultValue:1];
  v3 = +[CSPersistentConfiguration sharedConfiguration];
  DWORD1(v7) = [v3 algorithmIntegerNumber:1 inArrayForKey:v6 withMinValue:0xFFFFFFFFLL maxValue:480 defaultValue:384];
  v4 = +[CSPersistentConfiguration sharedConfiguration];
  DWORD2(v7) = [v4 algorithmIntegerNumber:2 inArrayForKey:v6 withMinValue:0xFFFFFFFFLL maxValue:800 defaultValue:640];
  v5 = +[CSPersistentConfiguration sharedConfiguration];
  HIDWORD(v7) = [v5 algorithmIntegerNumber:3 inArrayForKey:v6 withMinValue:0xFFFFFFFFLL maxValue:3200 defaultValue:2560];

  CLKappaFeaturesAlgCrashClassifier::setConfig(this, &v7);
}

float CLKappaFeaturesAlgCrashClassifier::setConfig(uint64_t a1, _OWORD *a2)
{
  *(*(a1 + 256) + 16) = *a2;
  if (qword_1004567F8 != -1)
  {
    sub_1002B3880();
  }

  v3 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 256);
    v6 = v5[4];
    v7 = v5[5];
    v8 = v5[6];
    LODWORD(v5) = v5[7];
    v9[0] = 67109888;
    v9[1] = v6;
    v10 = 1024;
    v11 = v7;
    v12 = 1024;
    v13 = v8;
    v14 = 1024;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[CrashClassifier][Features] setConfig enabled,%d,requiredBaroBufferSize,%d,requiredRotationRateBufferSize,%d,requiredInertialAccelBufferSize,%d", v9, 0x1Au);
  }

  return result;
}

void CLKappaFeaturesAlgCrashClassifier::epochFinalize(CLKappaFeaturesAlgCrashClassifier *this, uint64_t a2)
{
  v4 = +[CSPlatformInfo sharedInstance];
  v5 = [v4 isCrashClassifierSupportedPlatform];

  if ((v5 & 1) == 0)
  {
    goto LABEL_9;
  }

  if (!*(*(this + 32) + 16))
  {
    if (qword_1004567F8 != -1)
    {
      sub_1002B3880();
    }

    v7 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[CrashClassifier][Features] Disabled, skipping CrashClassifier", v9, 2u);
    }

    goto LABEL_9;
  }

  if (!CLKappaFeaturesAlgCrashClassifier::shouldRunCrashClassifier(this))
  {
LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  CLKappaFeaturesAlgCrashClassifier::prepareInputs(this);
  CLKappaFeaturesAlgCrashClassifier::runCrashClassifier(this);
  v6 = 1;
LABEL_10:
  v8 = *(this + 32);
  *(v8 + 220) = v6;
  *(v8 + 176) = a2;
}

uint64_t CLKappaFeaturesAlgCrashClassifier::shouldRunCrashClassifier(CLKappaFeaturesAlgCrashClassifier *this)
{
  v1 = *(this + 32);
  v2 = *(this + 8) - *(this + 7);
  v3 = v2 == *(this + 11) - *(this + 10) && v2 == *(this + 14) - *(this + 13) && v2 >> 3 > *(v1 + 24);
  v4 = *(this + 17) - *(this + 16);
  v5 = v4 == *(this + 20) - *(this + 19) && v4 == *(this + 23) - *(this + 22) && v4 >> 3 > *(v1 + 28);
  v6 = *(v1 + 20) < ((*(this + 5) - *(this + 4)) >> 3);
  *(v1 + 216) = v6;
  *(v1 + 217) = v3;
  *(v1 + 218) = v5;
  v7 = v3 && v5;
  result = v6 & v7;
  *(v1 + 219) = v6 & v7;
  return result;
}

void CLKappaFeaturesAlgCrashClassifier::prepareInputs(CLKappaFeaturesAlgCrashClassifier *this)
{
  v2 = *(this + 32);
  v2[5] = v2[4];
  v2[8] = v2[7];
  v2[11] = v2[10];
  v2[14] = v2[13];
  v2[17] = v2[16];
  v2[20] = v2[19];
  CLKappaFeaturesAlgCrashClassifier::forwardfillBuffers(this);

  CLKappaFeaturesAlgCrashClassifier::removeBaroMedian(this);
}

uint64_t CLKappaFeaturesAlgCrashClassifier::runCrashClassifier(CLKappaFeaturesAlgCrashClassifier *this)
{
  result = CLKappaFeaturesAlgCrashClassifier::runBaroCrashClassifier(this);
  if (result)
  {
    result = CLKappaFeaturesAlgCrashClassifier::runRotationRateCrashClassifier(this);
    if (result)
    {
      result = CLKappaFeaturesAlgCrashClassifier::runAccelCrashClassifier(this);
    }
  }

  v3 = *(this + 32);
  *(v3 + 184) = result;
  *(v3 + 221) = result;
  return result;
}

uint64_t CLKappaFeaturesAlgCrashClassifier::epochReset(uint64_t this)
{
  *(this + 40) = *(this + 32);
  *(this + 64) = *(this + 56);
  *(this + 88) = *(this + 80);
  *(this + 112) = *(this + 104);
  *(this + 136) = *(this + 128);
  *(this + 160) = *(this + 152);
  *(this + 184) = *(this + 176);
  if (*(this + 250) == 1)
  {
    *(this + 250) = 0;
  }

  v1 = *(this + 256);
  *(v1 + 40) = *(v1 + 32);
  *(v1 + 64) = *(v1 + 56);
  *(v1 + 88) = *(v1 + 80);
  *(v1 + 112) = *(v1 + 104);
  *(v1 + 136) = *(v1 + 128);
  *(v1 + 160) = *(v1 + 152);
  *(v1 + 176) = 0;
  *(v1 + 184) = 0;
  *(v1 + 200) = 0;
  *(v1 + 208) = 0;
  *(v1 + 192) = 0;
  *(v1 + 214) = 0;
  return this;
}

void CLKappaFeaturesAlgCrashClassifier::epochFeedFastAccel(CLKappaFeaturesAlgCrashClassifier *this, const CSSPUTriad_Struct *a2)
{
  if (*(*(this + 32) + 16))
  {
    v4 = +[CSPlatformInfo sharedInstance];
    v5 = [v4 isCrashClassifierSupportedPlatform];

    if (v5)
    {
      if (*(this + 250) == 1 && (*(this + 17) - *(this + 16)) >> 10 <= 0x18uLL)
      {
        ++*(*(this + 32) + 202);

        CLKappaFeaturesAlgCrashClassifier::epochFeedAlignedFastAccel(this, a2, (this + 200));
      }

      else
      {
        ++*(*(this + 32) + 196);
      }
    }
  }
}

void CLKappaFeaturesAlgCrashClassifier::epochFeedAlignedFastAccel(CLKappaFeaturesAlgCrashClassifier *this, const CSSPUTriad_Struct *a2, const DMSample *a3)
{
  v51 = *a3->quaternion;
  CMOQuaternion::normalize(&v51, v51);
  z = a2->z;
  v49 = *&a2->x;
  v50 = z;
  CMOQuaternion::rotateFrameInPlace(&v51, &v49);
  v6 = *&v49;
  v8 = *(this + 17);
  v7 = *(this + 18);
  if (v8 >= v7)
  {
    v10 = *(this + 16);
    v11 = v8 - v10;
    v12 = (v8 - v10) >> 3;
    v13 = v12 + 1;
    if ((v12 + 1) >> 61)
    {
      goto LABEL_35;
    }

    v14 = v7 - v10;
    if (v14 >> 2 > v13)
    {
      v13 = v14 >> 2;
    }

    v15 = v14 >= 0x7FFFFFFFFFFFFFF8;
    v16 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v15)
    {
      v16 = v13;
    }

    if (v16)
    {
      sub_10000CDCC(this + 128, v16);
    }

    v17 = (v8 - v10) >> 3;
    v18 = (8 * v12);
    v19 = (8 * v12 - 8 * v17);
    *v18 = v6;
    v9 = v18 + 1;
    memcpy(v19, v10, v11);
    v20 = *(this + 16);
    *(this + 16) = v19;
    *(this + 17) = v9;
    *(this + 18) = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    *v8 = v6;
    v9 = v8 + 1;
  }

  *(this + 17) = v9;
  v21 = *(&v49 + 1);
  v23 = *(this + 20);
  v22 = *(this + 21);
  if (v23 >= v22)
  {
    v25 = *(this + 19);
    v26 = v23 - v25;
    v27 = (v23 - v25) >> 3;
    v28 = v27 + 1;
    if ((v27 + 1) >> 61)
    {
      goto LABEL_35;
    }

    v29 = v22 - v25;
    if (v29 >> 2 > v28)
    {
      v28 = v29 >> 2;
    }

    v15 = v29 >= 0x7FFFFFFFFFFFFFF8;
    v30 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v15)
    {
      v30 = v28;
    }

    if (v30)
    {
      sub_10000CDCC(this + 152, v30);
    }

    v31 = (v23 - v25) >> 3;
    v32 = (8 * v27);
    v33 = (8 * v27 - 8 * v31);
    *v32 = v21;
    v24 = v32 + 1;
    memcpy(v33, v25, v26);
    v34 = *(this + 19);
    *(this + 19) = v33;
    *(this + 20) = v24;
    *(this + 21) = 0;
    if (v34)
    {
      operator delete(v34);
    }
  }

  else
  {
    *v23 = v21;
    v24 = v23 + 1;
  }

  *(this + 20) = v24;
  v35 = v50;
  v37 = *(this + 23);
  v36 = *(this + 24);
  if (v37 < v36)
  {
    *v37 = v35;
    v38 = v37 + 1;
    goto LABEL_34;
  }

  v39 = *(this + 22);
  v40 = v37 - v39;
  v41 = (v37 - v39) >> 3;
  v42 = v41 + 1;
  if ((v41 + 1) >> 61)
  {
LABEL_35:
    sub_10000CD24();
  }

  v43 = v36 - v39;
  if (v43 >> 2 > v42)
  {
    v42 = v43 >> 2;
  }

  v15 = v43 >= 0x7FFFFFFFFFFFFFF8;
  v44 = 0x1FFFFFFFFFFFFFFFLL;
  if (!v15)
  {
    v44 = v42;
  }

  if (v44)
  {
    sub_10000CDCC(this + 176, v44);
  }

  v45 = (v37 - v39) >> 3;
  v46 = (8 * v41);
  v47 = (8 * v41 - 8 * v45);
  *v46 = v35;
  v38 = v46 + 1;
  memcpy(v47, v39, v40);
  v48 = *(this + 22);
  *(this + 22) = v47;
  *(this + 23) = v38;
  *(this + 24) = 0;
  if (v48)
  {
    operator delete(v48);
  }

LABEL_34:
  *(this + 23) = v38;
}

void CLKappaFeaturesAlgCrashClassifier::epochFeedDM(CLKappaFeaturesAlgCrashClassifier *this, const DMSample *a2)
{
  if (!*(*(this + 32) + 16))
  {
    return;
  }

  v4 = +[CSPlatformInfo sharedInstance];
  v5 = [v4 isCrashClassifierSupportedPlatform];

  if ((v5 & 1) == 0)
  {
    return;
  }

  v6 = *(this + 7);
  v7 = *(this + 8);
  v8 = (v7 - v6) >> 3;
  if (v8 > 0x31F)
  {
    ++*(*(this + 32) + 194);
    return;
  }

  v9 = *(this + 9);
  if (v7 >= v9)
  {
    v10 = v9 - v6;
    if (v10 >> 2 <= v8 + 1)
    {
      v11 = v8 + 1;
    }

    else
    {
      v11 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    sub_10000CDCC(this + 56, v12);
  }

  *v7 = a2->rotation[0];
  *(this + 8) = v7 + 1;
  v13 = a2->rotation[1];
  v15 = *(this + 11);
  v14 = *(this + 12);
  if (v15 >= v14)
  {
    v17 = *(this + 10);
    v18 = v15 - v17;
    v19 = (v15 - v17) >> 3;
    v20 = v19 + 1;
    if ((v19 + 1) >> 61)
    {
      goto LABEL_40;
    }

    v21 = v14 - v17;
    if (v21 >> 2 > v20)
    {
      v20 = v21 >> 2;
    }

    v22 = v21 >= 0x7FFFFFFFFFFFFFF8;
    v23 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v22)
    {
      v23 = v20;
    }

    if (v23)
    {
      sub_10000CDCC(this + 80, v23);
    }

    v24 = (v15 - v17) >> 3;
    v25 = (8 * v19);
    v26 = (8 * v19 - 8 * v24);
    *v25 = v13;
    v16 = v25 + 1;
    memcpy(v26, v17, v18);
    v27 = *(this + 10);
    *(this + 10) = v26;
    *(this + 11) = v16;
    *(this + 12) = 0;
    if (v27)
    {
      operator delete(v27);
    }
  }

  else
  {
    *v15 = v13;
    v16 = v15 + 1;
  }

  *(this + 11) = v16;
  v28 = a2->rotation[2];
  v30 = *(this + 14);
  v29 = *(this + 15);
  if (v30 >= v29)
  {
    v32 = *(this + 13);
    v33 = v30 - v32;
    v34 = (v30 - v32) >> 3;
    v35 = v34 + 1;
    if (!((v34 + 1) >> 61))
    {
      v36 = v29 - v32;
      if (v36 >> 2 > v35)
      {
        v35 = v36 >> 2;
      }

      v22 = v36 >= 0x7FFFFFFFFFFFFFF8;
      v37 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v22)
      {
        v37 = v35;
      }

      if (v37)
      {
        sub_10000CDCC(this + 104, v37);
      }

      v38 = (v30 - v32) >> 3;
      v39 = (8 * v34);
      v40 = (8 * v34 - 8 * v38);
      *v39 = v28;
      v31 = v39 + 1;
      memcpy(v40, v32, v33);
      v41 = *(this + 13);
      *(this + 13) = v40;
      *(this + 14) = v31;
      *(this + 15) = 0;
      if (v41)
      {
        operator delete(v41);
      }

      goto LABEL_36;
    }

LABEL_40:
    sub_10000CD24();
  }

  *v30 = v28;
  v31 = v30 + 1;
LABEL_36:
  *(this + 14) = v31;
  v42 = *(this + 250);
  v44 = *a2->rotation;
  v43 = *&a2->userAccel[1];
  timestamp = a2->timestamp;
  *(this + 200) = *a2->quaternion;
  *(this + 124) = timestamp;
  *(this + 232) = v43;
  *(this + 216) = v44;
  if ((v42 & 1) == 0)
  {
    *(this + 250) = 1;
  }

  ++*(*(this + 32) + 200);
}

void CLKappaFeaturesAlgCrashClassifier::epochFeedPressure(CLKappaFeaturesAlgCrashClassifier *this, const FastUncompPressure *a2)
{
  if (*(*(this + 32) + 16))
  {
    v4 = +[CSPlatformInfo sharedInstance];
    v5 = [v4 isCrashClassifierSupportedPlatform];

    if (v5)
    {
      v6 = *(this + 4);
      v7 = *(this + 5);
      v8 = (v7 - v6) >> 3;
      if (v8 > 0x1DF)
      {
        ++*(*(this + 32) + 192);
      }

      else
      {
        v9 = *(this + 6);
        if (v7 >= v9)
        {
          v10 = v9 - v6;
          if (v10 >> 2 <= v8 + 1)
          {
            v11 = v8 + 1;
          }

          else
          {
            v11 = v10 >> 2;
          }

          if (v10 >= 0x7FFFFFFFFFFFFFF8)
          {
            v12 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v12 = v11;
          }

          sub_10000CDCC(this + 32, v12);
        }

        *v7 = a2->pressure;
        *(this + 5) = v7 + 1;
        ++*(*(this + 32) + 198);
      }
    }
  }
}

uint64_t CLKappaFeaturesAlgCrashClassifier::scalarBufferReset(uint64_t this)
{
  v1 = *(this + 256);
  v1[5] = v1[4];
  v1[8] = v1[7];
  v1[11] = v1[10];
  v1[14] = v1[13];
  v1[17] = v1[16];
  v1[20] = v1[19];
  return this;
}

void CLKappaFeaturesAlgCrashClassifier::forwardfillBuffers(CLKappaFeaturesAlgCrashClassifier *this)
{
  CLKappaFeaturesAlgCrashClassifier::forwardfill(this, this + 4, 0x1E0uLL);
  CLKappaFeaturesAlgCrashClassifier::forwardfill(v2, this + 7, 0x320uLL);
  CLKappaFeaturesAlgCrashClassifier::forwardfill(v3, this + 10, 0x320uLL);
  CLKappaFeaturesAlgCrashClassifier::forwardfill(v4, this + 13, 0x320uLL);
  CLKappaFeaturesAlgCrashClassifier::forwardfill(v5, this + 16, 0xC80uLL);
  CLKappaFeaturesAlgCrashClassifier::forwardfill(v6, this + 19, 0xC80uLL);

  CLKappaFeaturesAlgCrashClassifier::forwardfill(v7, this + 22, 0xC80uLL);
}

void CLKappaFeaturesAlgCrashClassifier::removeBaroMedian(CLKappaFeaturesAlgCrashClassifier *this)
{
  v2 = CLKappaFeaturesAlgCrashClassifier::median(this, this + 4);
  v3 = *(this + 4);
  v4 = *(this + 5);
  while (v3 != v4)
  {
    *v3 = *v3 - v2;
    ++v3;
  }
}

void CLKappaFeaturesAlgCrashClassifier::forwardfill(int a1, void *a2, unint64_t a3)
{
  v5 = a2[1];
  v6 = __OFSUB__(v5, *a2);
  if (!a3 || v5 == *a2)
  {
    if (qword_1004567F8 != -1)
    {
      sub_1002B3880();
    }

    v9 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_ERROR))
    {
      v10 = (a2[1] - *a2) >> 3;
      v11 = 134218240;
      v12 = v10;
      v13 = 2048;
      v14 = a3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[CrashClassifier][Features] forward fill error with bufferSize,%zu,desiredBufferSize%zu", &v11, 0x16u);
    }
  }

  else
  {
    v7 = &v5[-*a2] >> 3;
    v8 = a3 - v7;
    if (a3 > v7)
    {

      sub_1002B1E9C(a2, v5, v8, v5 - 8);
    }
  }
}

char *sub_1002B1E9C(void *a1, char *__src, unint64_t a3, char *a4)
{
  if (!a3)
  {
    return __src;
  }

  v5 = a4;
  v8 = a1[1];
  v9 = a1[2];
  if (a3 <= (v9 - v8) >> 3)
  {
    v15 = v8 - __src;
    if (a3 <= (v8 - __src) >> 3)
    {
      v18 = a1[1];
      v17 = a3;
    }

    else
    {
      v16 = 0;
      v17 = v15 >> 3;
      v18 = &v8[8 * (a3 - (v15 >> 3))];
      v19 = *a4;
      v20 = (8 * a3 - v15 - 8) >> 3;
      v21 = vdupq_n_s64(v20);
      do
      {
        v22 = vmovn_s64(vcgeq_u64(v21, vorrq_s8(vdupq_n_s64(v16), xmmword_100387A10)));
        if (v22.i8[0])
        {
          *&v8[8 * v16] = v19;
        }

        if (v22.i8[4])
        {
          *&v8[8 * v16 + 8] = v19;
        }

        v16 += 2;
      }

      while (((v20 + 2) & 0x3FFFFFFFFFFFFFFELL) != v16);
      a1[1] = v18;
      if (v8 == __src)
      {
        return __src;
      }
    }

    v23 = &__src[8 * a3];
    v24 = &v18[-8 * a3];
    v25 = v18;
    if (v24 < v8)
    {
      v25 = v18;
      do
      {
        v26 = *v24;
        v24 += 8;
        *v25 = v26;
        v25 += 8;
      }

      while (v24 < v8);
    }

    a1[1] = v25;
    if (v18 != v23)
    {
      memmove(&__src[8 * a3], __src, v18 - v23);
    }

    if (__src <= v5)
    {
      if (a1[1] <= v5)
      {
        v27 = 0;
      }

      else
      {
        v27 = a3;
      }

      v5 += 8 * v27;
    }

    v28 = 0;
    v29 = *v5;
    v30 = vdupq_n_s64(v17 - 1);
    v31 = __src + 8;
    do
    {
      v32 = vmovn_s64(vcgeq_u64(v30, vorrq_s8(vdupq_n_s64(v28), xmmword_100387A10)));
      if (v32.i8[0])
      {
        *(v31 - 1) = v29;
      }

      if (v32.i8[4])
      {
        *v31 = v29;
      }

      v28 += 2;
      v31 += 2;
    }

    while (((v17 + 1) & 0xFFFFFFFFFFFFFFFELL) != v28);
    return __src;
  }

  v10 = *a1;
  v11 = a3 + (&v8[-*a1] >> 3);
  if (v11 >> 61)
  {
    sub_10000CD24();
  }

  v12 = __src - v10;
  v13 = v9 - v10;
  if (v13 >> 2 > v11)
  {
    v11 = v13 >> 2;
  }

  if (v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    v14 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = v11;
  }

  if (v14)
  {
    sub_10000CDCC(a1, v14);
  }

  v34 = 0;
  v33 = 8 * (v12 >> 3);
  v35 = *a4;
  v36 = (a3 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
  v37 = v36 - ((a3 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
  v38 = vdupq_n_s64(v36);
  v39 = (v33 + 8);
  do
  {
    v40 = vmovn_s64(vcgeq_u64(v38, vorrq_s8(vdupq_n_s64(v34), xmmword_100387A10)));
    if (v40.i8[0])
    {
      *(v39 - 1) = v35;
    }

    if (v40.i8[4])
    {
      *v39 = v35;
    }

    v34 += 2;
    v39 += 2;
  }

  while (v37 != v34);
  memcpy((v33 + 8 * a3), __src, a1[1] - __src);
  v41 = *a1;
  v42 = v33 + 8 * a3 + a1[1] - __src;
  a1[1] = __src;
  v43 = (__src - v41);
  v44 = (v33 - (__src - v41));
  memcpy(v44, v41, v43);
  v45 = *a1;
  *a1 = v44;
  a1[1] = v42;
  a1[2] = 0;
  if (v45)
  {
    operator delete(v45);
  }

  return v33;
}

void CLKappaFeaturesAlgCrashClassifier::normalize(uint64_t a1, double **a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = v2 - *a2;
  v5 = v4 - 1;
  if (v4 > 1)
  {
    if (v3 != v2)
    {
      v9 = 0.0;
      v10 = *a2;
      do
      {
        v11 = *v10++;
        v9 = v9 + v11;
      }

      while (v10 != v2);
      v12 = v9 / v4;
      v13 = 0.0;
      v14 = *a2;
      do
      {
        v15 = *v14++;
        v13 = v13 + (v15 - v12) * (v15 - v12);
      }

      while (v14 != v2);
      if (v3 != v2)
      {
        v16 = sqrt(v13 / v5) + 2.22044605e-16;
        do
        {
          *v3 = (*v3 - v12) / v16;
          ++v3;
        }

        while (v3 != v2);
      }
    }
  }

  else
  {
    if (qword_1004567F8 != -1)
    {
      sub_1002B3880();
    }

    v7 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_ERROR))
    {
      v8 = a2[1] - *a2;
      v17 = 134217984;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[CrashClassifier][Features] Tried to normalize a buffer with size,%zu", &v17, 0xCu);
    }
  }
}

double CLKappaFeaturesAlgCrashClassifier::median(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v3 == v4)
  {
    if (qword_1004567F8 != -1)
    {
      sub_1002B3880();
    }

    v7 = qword_100456800;
    v6 = 0.0;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[CrashClassifier][Features] Tried to calculate the median of an empty buffer", &v9, 2u);
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    sub_1002B3548(&v9, v3, v4, (v4 - v3) >> 3);
    std::__sort<std::__less<double,double> &,double *>();
    v5 = &v9[8 * ((v10 - v9) >> 4)];
    if (((v10 - v9) & 8) != 0)
    {
      v6 = *v5;
    }

    else
    {
      v6 = (*(v5 - 1) + *v5) * 0.5;
    }

    v10 = v9;
    operator delete(v9);
  }

  return v6;
}

void sub_1002B23A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CLKappaFeaturesAlgCrashClassifier::runBaroCrashClassifier(CLKappaFeaturesAlgCrashClassifier *this)
{
  v2.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v7 = CLKappaFeaturesAlgCrashClassifier::runKernels(v3, v4, v5, v2.__d_.__rep_, &unk_100387A50, this + 4);
  v10 = v7;
  v11 = v8;
  v12 = 0;
  for (i = &unk_100387AC0; ; i += 112)
  {
    v14 = v12;
    v15 = *(this + 32);
    v17 = v15[5];
    v16 = v15[6];
    if (v17 >= v16)
    {
      v19 = v15[4];
      v20 = v17 - v19;
      v21 = (v17 - v19) >> 3;
      v22 = v21 + 1;
      if ((v21 + 1) >> 61)
      {
        goto LABEL_61;
      }

      v23 = v16 - v19;
      if (v23 >> 2 > v22)
      {
        v22 = v23 >> 2;
      }

      if (v23 >= 0x7FFFFFFFFFFFFFF8)
      {
        v24 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v24 = v22;
      }

      if (v24)
      {
        sub_10000CDCC((v15 + 4), v24);
      }

      v25 = (v17 - v19) >> 3;
      v26 = (8 * v21);
      v27 = (8 * v21 - 8 * v25);
      *v26 = v10;
      v18 = v26 + 1;
      memcpy(v27, v19, v20);
      v6 = v15[4];
      v15[4] = v27;
      v15[5] = v18;
      v15[6] = 0;
      if (v6)
      {
        operator delete(v6);
      }
    }

    else
    {
      *v17 = v10;
      v18 = v17 + 8;
    }

    v15[5] = v18;
    v28 = *(this + 32);
    v30 = v28[5];
    v29 = v28[6];
    if (v30 >= v29)
    {
      v32 = v28[4];
      v33 = v30 - v32;
      v34 = (v30 - v32) >> 3;
      v35 = v34 + 1;
      if ((v34 + 1) >> 61)
      {
LABEL_61:
        sub_10000CD24();
      }

      v36 = v29 - v32;
      if (v36 >> 2 > v35)
      {
        v35 = v36 >> 2;
      }

      if (v36 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v35;
      }

      if (v37)
      {
        sub_10000CDCC((v28 + 4), v37);
      }

      v38 = (v30 - v32) >> 3;
      v39 = (8 * v34);
      v40 = (8 * v34 - 8 * v38);
      *v39 = v11;
      v31 = v39 + 1;
      memcpy(v40, v32, v33);
      v6 = v28[4];
      v28[4] = v40;
      v28[5] = v31;
      v28[6] = 0;
      if (v6)
      {
        operator delete(v6);
      }
    }

    else
    {
      *v30 = v11;
      v31 = v30 + 8;
    }

    v28[5] = v31;
    if (v14 == 46)
    {
      break;
    }

    v7 = CLKappaFeaturesAlgCrashClassifier::runKernels(v7, v8, v9, v6, i, this + 4);
    v10 = v7;
    v11 = v8;
    v12 = v14 + 1;
  }

  v41 = 0;
  v42 = *(*(this + 32) + 32);
  do
  {
    *(v42 + 8 * v41) = (*(v42 + 8 * v41) - dbl_100388EE0[v41]) / dbl_1003891D0[v41];
  }

  while (v41++ <= 0x5C);
  CLKappaFeaturesAlgCrashClassifier::normalize(v6, this + 4);
  v48 = -1;
  v49 = &unk_1003894C0;
  do
  {
    v45 = CLKappaFeaturesAlgCrashClassifier::runKernels(v45, v46, v47, v44, v49, this + 4);
    v50 = v46;
    v51 = *(this + 32);
    v53 = v51[14];
    v52 = v51[15];
    if (v53 >= v52)
    {
      v55 = v51[13];
      v56 = v53 - v55;
      v57 = (v53 - v55) >> 3;
      v58 = v57 + 1;
      if ((v57 + 1) >> 61)
      {
        goto LABEL_61;
      }

      v59 = v52 - v55;
      if (v59 >> 2 > v58)
      {
        v58 = v59 >> 2;
      }

      if (v59 >= 0x7FFFFFFFFFFFFFF8)
      {
        v60 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v60 = v58;
      }

      if (v60)
      {
        sub_10000CDCC((v51 + 13), v60);
      }

      v61 = (v53 - v55) >> 3;
      v62 = (8 * v57);
      v63 = (8 * v57 - 8 * v61);
      *v62 = v45;
      v54 = v62 + 1;
      memcpy(v63, v55, v56);
      v44 = v51[13];
      v51[13] = v63;
      v51[14] = v54;
      v51[15] = 0;
      if (v44)
      {
        operator delete(v44);
      }
    }

    else
    {
      *v53 = v45;
      v54 = v53 + 1;
    }

    v51[14] = v54;
    v64 = *(this + 32);
    v66 = v64[14];
    v65 = v64[15];
    if (v66 >= v65)
    {
      v68 = v64[13];
      v69 = v66 - v68;
      v70 = (v66 - v68) >> 3;
      v71 = v70 + 1;
      if ((v70 + 1) >> 61)
      {
        goto LABEL_61;
      }

      v72 = v65 - v68;
      if (v72 >> 2 > v71)
      {
        v71 = v72 >> 2;
      }

      if (v72 >= 0x7FFFFFFFFFFFFFF8)
      {
        v73 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v73 = v71;
      }

      if (v73)
      {
        sub_10000CDCC((v64 + 13), v73);
      }

      v74 = (v66 - v68) >> 3;
      v75 = (8 * v70);
      v76 = (8 * v70 - 8 * v74);
      *v75 = v50;
      v67 = v75 + 1;
      memcpy(v76, v68, v69);
      v44 = v64[13];
      v64[13] = v76;
      v64[14] = v67;
      v64[15] = 0;
      if (v44)
      {
        operator delete(v44);
      }
    }

    else
    {
      *v66 = v50;
      v67 = v66 + 8;
    }

    v64[14] = v67;
    ++v48;
    v49 += 112;
  }

  while (v48 < 0x116);
  v77 = 0;
  v78 = *(*(this + 32) + 104);
  do
  {
    *(v78 + 8 * v77) = (*(v78 + 8 * v77) - dbl_100390ED0[v77]) / dbl_100392040[v77];
  }

  while (v77++ < 0x22D);
  *(*(this + 32) + 204) = (std::chrono::steady_clock::now().__d_.__rep_ - v2.__d_.__rep_) / 1000000.0;
  return 1;
}

uint64_t CLKappaFeaturesAlgCrashClassifier::runRotationRateCrashClassifier(CLKappaFeaturesAlgCrashClassifier *this)
{
  v2.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v7 = CLKappaFeaturesAlgCrashClassifier::runKernels3D(v3, v4, v5, v2.__d_.__rep_, &unk_1003931B0, this + 7, this + 10, this + 13);
  v10 = v7;
  v11 = v8;
  v12 = 0;
  for (i = &unk_1003932D0; ; i += 288)
  {
    v14 = v12;
    v15 = *(this + 32);
    v17 = v15[8];
    v16 = v15[9];
    if (v17 >= v16)
    {
      v19 = v15[7];
      v20 = v17 - v19;
      v21 = (v17 - v19) >> 3;
      v22 = v21 + 1;
      if ((v21 + 1) >> 61)
      {
        goto LABEL_61;
      }

      v23 = v16 - v19;
      if (v23 >> 2 > v22)
      {
        v22 = v23 >> 2;
      }

      if (v23 >= 0x7FFFFFFFFFFFFFF8)
      {
        v24 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v24 = v22;
      }

      if (v24)
      {
        sub_10000CDCC((v15 + 7), v24);
      }

      v25 = (v17 - v19) >> 3;
      v26 = (8 * v21);
      v27 = (8 * v21 - 8 * v25);
      *v26 = v10;
      v18 = v26 + 1;
      memcpy(v27, v19, v20);
      v6 = v15[7];
      v15[7] = v27;
      v15[8] = v18;
      v15[9] = 0;
      if (v6)
      {
        operator delete(v6);
      }
    }

    else
    {
      *v17 = v10;
      v18 = v17 + 8;
    }

    v15[8] = v18;
    v28 = *(this + 32);
    v30 = v28[8];
    v29 = v28[9];
    if (v30 >= v29)
    {
      v32 = v28[7];
      v33 = v30 - v32;
      v34 = (v30 - v32) >> 3;
      v35 = v34 + 1;
      if ((v34 + 1) >> 61)
      {
LABEL_61:
        sub_10000CD24();
      }

      v36 = v29 - v32;
      if (v36 >> 2 > v35)
      {
        v35 = v36 >> 2;
      }

      if (v36 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v35;
      }

      if (v37)
      {
        sub_10000CDCC((v28 + 7), v37);
      }

      v38 = (v30 - v32) >> 3;
      v39 = (8 * v34);
      v40 = (8 * v34 - 8 * v38);
      *v39 = v11;
      v31 = v39 + 1;
      memcpy(v40, v32, v33);
      v6 = v28[7];
      v28[7] = v40;
      v28[8] = v31;
      v28[9] = 0;
      if (v6)
      {
        operator delete(v6);
      }
    }

    else
    {
      *v30 = v11;
      v31 = v30 + 8;
    }

    v28[8] = v31;
    if (v14 == 311)
    {
      break;
    }

    v7 = CLKappaFeaturesAlgCrashClassifier::runKernels3D(v7, v8, v9, v6, i, this + 7, this + 10, this + 13);
    v10 = v7;
    v11 = v8;
    v12 = v14 + 1;
  }

  v41 = 0;
  v42 = *(*(this + 32) + 56);
  do
  {
    *(v42 + 8 * v41) = (*(v42 + 8 * v41) - dbl_1003A90B0[v41]) / dbl_1003AA430[v41];
  }

  while (v41++ <= 0x26E);
  CLKappaFeaturesAlgCrashClassifier::normalize(v6, this + 7);
  CLKappaFeaturesAlgCrashClassifier::normalize(v44, this + 10);
  CLKappaFeaturesAlgCrashClassifier::normalize(v45, this + 13);
  v50 = -1;
  v51 = &unk_1003AB7B0;
  do
  {
    v47 = CLKappaFeaturesAlgCrashClassifier::runKernels3D(v47, v48, v49, v46, v51, this + 7, this + 10, this + 13);
    v52 = v48;
    v53 = *(this + 32);
    v55 = v53[17];
    v54 = v53[18];
    if (v55 >= v54)
    {
      v57 = v53[16];
      v58 = v55 - v57;
      v59 = (v55 - v57) >> 3;
      v60 = v59 + 1;
      if ((v59 + 1) >> 61)
      {
        goto LABEL_61;
      }

      v61 = v54 - v57;
      if (v61 >> 2 > v60)
      {
        v60 = v61 >> 2;
      }

      if (v61 >= 0x7FFFFFFFFFFFFFF8)
      {
        v62 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v62 = v60;
      }

      if (v62)
      {
        sub_10000CDCC((v53 + 16), v62);
      }

      v63 = (v55 - v57) >> 3;
      v64 = (8 * v59);
      v65 = (8 * v59 - 8 * v63);
      *v64 = v47;
      v56 = v64 + 1;
      memcpy(v65, v57, v58);
      v46 = v53[16];
      v53[16] = v65;
      v53[17] = v56;
      v53[18] = 0;
      if (v46)
      {
        operator delete(v46);
      }
    }

    else
    {
      *v55 = v47;
      v56 = v55 + 1;
    }

    v53[17] = v56;
    v66 = *(this + 32);
    v68 = v66[17];
    v67 = v66[18];
    if (v68 >= v67)
    {
      v70 = v66[16];
      v71 = v68 - v70;
      v72 = (v68 - v70) >> 3;
      v73 = v72 + 1;
      if ((v72 + 1) >> 61)
      {
        goto LABEL_61;
      }

      v74 = v67 - v70;
      if (v74 >> 2 > v73)
      {
        v73 = v74 >> 2;
      }

      if (v74 >= 0x7FFFFFFFFFFFFFF8)
      {
        v75 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v75 = v73;
      }

      if (v75)
      {
        sub_10000CDCC((v66 + 16), v75);
      }

      v76 = (v68 - v70) >> 3;
      v77 = (8 * v72);
      v78 = (8 * v72 - 8 * v76);
      *v77 = v52;
      v69 = v77 + 1;
      memcpy(v78, v70, v71);
      v46 = v66[16];
      v66[16] = v78;
      v66[17] = v69;
      v66[18] = 0;
      if (v46)
      {
        operator delete(v46);
      }
    }

    else
    {
      *v68 = v52;
      v69 = v68 + 8;
    }

    v66[17] = v69;
    ++v50;
    v51 += 288;
  }

  while (v50 < 0x2E);
  v79 = 0;
  v80 = *(*(this + 32) + 128);
  do
  {
    *(v80 + 8 * v79) = (*(v80 + 8 * v79) - dbl_1003AEC90[v79]) / dbl_1003AEF80[v79];
  }

  while (v79++ < 0x5D);
  *(*(this + 32) + 208) = (std::chrono::steady_clock::now().__d_.__rep_ - v2.__d_.__rep_) / 1000000.0;
  return 1;
}

uint64_t CLKappaFeaturesAlgCrashClassifier::runAccelCrashClassifier(CLKappaFeaturesAlgCrashClassifier *this)
{
  v2.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v7 = CLKappaFeaturesAlgCrashClassifier::runKernels3D(v3, v4, v5, v2.__d_.__rep_, &unk_1003AF270, this + 16, this + 19, this + 22);
  v10 = v7;
  v11 = v8;
  v12 = 0;
  for (i = &unk_1003AF390; ; i += 288)
  {
    v14 = v12;
    v15 = *(this + 32);
    v17 = v15[11];
    v16 = v15[12];
    if (v17 >= v16)
    {
      v19 = v15[10];
      v20 = v17 - v19;
      v21 = (v17 - v19) >> 3;
      v22 = v21 + 1;
      if ((v21 + 1) >> 61)
      {
        goto LABEL_61;
      }

      v23 = v16 - v19;
      if (v23 >> 2 > v22)
      {
        v22 = v23 >> 2;
      }

      if (v23 >= 0x7FFFFFFFFFFFFFF8)
      {
        v24 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v24 = v22;
      }

      if (v24)
      {
        sub_10000CDCC((v15 + 10), v24);
      }

      v25 = (v17 - v19) >> 3;
      v26 = (8 * v21);
      v27 = (8 * v21 - 8 * v25);
      *v26 = v10;
      v18 = v26 + 1;
      memcpy(v27, v19, v20);
      v6 = v15[10];
      v15[10] = v27;
      v15[11] = v18;
      v15[12] = 0;
      if (v6)
      {
        operator delete(v6);
      }
    }

    else
    {
      *v17 = v10;
      v18 = v17 + 8;
    }

    v15[11] = v18;
    v28 = *(this + 32);
    v30 = v28[11];
    v29 = v28[12];
    if (v30 >= v29)
    {
      v32 = v28[10];
      v33 = v30 - v32;
      v34 = (v30 - v32) >> 3;
      v35 = v34 + 1;
      if ((v34 + 1) >> 61)
      {
LABEL_61:
        sub_10000CD24();
      }

      v36 = v29 - v32;
      if (v36 >> 2 > v35)
      {
        v35 = v36 >> 2;
      }

      if (v36 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v35;
      }

      if (v37)
      {
        sub_10000CDCC((v28 + 10), v37);
      }

      v38 = (v30 - v32) >> 3;
      v39 = (8 * v34);
      v40 = (8 * v34 - 8 * v38);
      *v39 = v11;
      v31 = v39 + 1;
      memcpy(v40, v32, v33);
      v6 = v28[10];
      v28[10] = v40;
      v28[11] = v31;
      v28[12] = 0;
      if (v6)
      {
        operator delete(v6);
      }
    }

    else
    {
      *v30 = v11;
      v31 = v30 + 8;
    }

    v28[11] = v31;
    if (v14 == 64)
    {
      break;
    }

    v7 = CLKappaFeaturesAlgCrashClassifier::runKernels3D(v7, v8, v9, v6, i, this + 16, this + 19, this + 22);
    v10 = v7;
    v11 = v8;
    v12 = v14 + 1;
  }

  v41 = 0;
  v42 = *(*(this + 32) + 80);
  do
  {
    *(v42 + 8 * v41) = (*(v42 + 8 * v41) - dbl_1003B3B90[v41]) / dbl_1003B3FA0[v41];
  }

  while (v41++ <= 0x80);
  CLKappaFeaturesAlgCrashClassifier::normalize(v6, this + 16);
  CLKappaFeaturesAlgCrashClassifier::normalize(v44, this + 19);
  CLKappaFeaturesAlgCrashClassifier::normalize(v45, this + 22);
  v50 = -1;
  v51 = &unk_1003B43B0;
  do
  {
    v47 = CLKappaFeaturesAlgCrashClassifier::runKernels3D(v47, v48, v49, v46, v51, this + 16, this + 19, this + 22);
    v52 = v48;
    v53 = *(this + 32);
    v55 = v53[20];
    v54 = v53[21];
    if (v55 >= v54)
    {
      v57 = v53[19];
      v58 = v55 - v57;
      v59 = (v55 - v57) >> 3;
      v60 = v59 + 1;
      if ((v59 + 1) >> 61)
      {
        goto LABEL_61;
      }

      v61 = v54 - v57;
      if (v61 >> 2 > v60)
      {
        v60 = v61 >> 2;
      }

      if (v61 >= 0x7FFFFFFFFFFFFFF8)
      {
        v62 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v62 = v60;
      }

      if (v62)
      {
        sub_10000CDCC((v53 + 19), v62);
      }

      v63 = (v55 - v57) >> 3;
      v64 = (8 * v59);
      v65 = (8 * v59 - 8 * v63);
      *v64 = v47;
      v56 = v64 + 1;
      memcpy(v65, v57, v58);
      v46 = v53[19];
      v53[19] = v65;
      v53[20] = v56;
      v53[21] = 0;
      if (v46)
      {
        operator delete(v46);
      }
    }

    else
    {
      *v55 = v47;
      v56 = v55 + 1;
    }

    v53[20] = v56;
    v66 = *(this + 32);
    v68 = v66[20];
    v67 = v66[21];
    if (v68 >= v67)
    {
      v70 = v66[19];
      v71 = v68 - v70;
      v72 = (v68 - v70) >> 3;
      v73 = v72 + 1;
      if ((v72 + 1) >> 61)
      {
        goto LABEL_61;
      }

      v74 = v67 - v70;
      if (v74 >> 2 > v73)
      {
        v73 = v74 >> 2;
      }

      if (v74 >= 0x7FFFFFFFFFFFFFF8)
      {
        v75 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v75 = v73;
      }

      if (v75)
      {
        sub_10000CDCC((v66 + 19), v75);
      }

      v76 = (v68 - v70) >> 3;
      v77 = (8 * v72);
      v78 = (8 * v72 - 8 * v76);
      *v77 = v52;
      v69 = v77 + 1;
      memcpy(v78, v70, v71);
      v46 = v66[19];
      v66[19] = v78;
      v66[20] = v69;
      v66[21] = 0;
      if (v46)
      {
        operator delete(v46);
      }
    }

    else
    {
      *v68 = v52;
      v69 = v68 + 8;
    }

    v66[20] = v69;
    ++v50;
    v51 += 288;
  }

  while (v50 < 0x86);
  v79 = 0;
  v80 = *(*(this + 32) + 152);
  do
  {
    *(v80 + 8 * v79) = (*(v80 + 8 * v79) - dbl_1003BDB90[v79]) / dbl_1003BE400[v79];
  }

  while (v79++ < 0x10D);
  *(*(this + 32) + 212) = (std::chrono::steady_clock::now().__d_.__rep_ - v2.__d_.__rep_) / 1000000.0;
  return 1;
}

double CLKappaFeaturesAlgCrashClassifier::runKernels(double a1, double a2, double a3, uint64_t a4, uint64_t a5, void *a6)
{
  v6 = *(a5 + 102);
  v7 = *(a5 + 96);
  if ((v7 + v6 < 0) ^ __OFADD__(v7, v6) | (v7 + v6 == 0))
  {
    v14 = 0.0;
  }

  else
  {
    v8 = 0;
    v9 = -v6;
    v10 = -1.79769313e308;
    do
    {
      a3 = *(a5 + 88);
      v11 = a5;
      v12 = *(a5 + 108);
      v13 = v9;
      if (*(a5 + 108))
      {
        do
        {
          if ((v13 & 0x80000000) == 0 && v13 < *(a5 + 106))
          {
            a3 = a3 + *v11 * *(*a6 + 8 * v13);
          }

          v13 += *(a5 + 100);
          ++v11;
          --v12;
        }

        while (v12);
      }

      if (a3 > v10)
      {
        v10 = a3;
      }

      if (a3 > 0.0)
      {
        ++v8;
      }

      ++v9;
    }

    while (v9 != v7);
    v14 = v8;
  }

  LOWORD(a3) = *(a5 + 104);
  return v14 / *&a3;
}

double CLKappaFeaturesAlgCrashClassifier::runKernels3D(double a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, void *a8)
{
  v8 = *(a5 + 278);
  v9 = *(a5 + 272);
  if ((v9 + v8 < 0) ^ __OFADD__(v9, v8) | (v9 + v8 == 0))
  {
    v18 = 0.0;
  }

  else
  {
    v10 = 0;
    v11 = -v8;
    v12 = *a6;
    v13 = *a7;
    v14 = -1.79769313e308;
    do
    {
      a3 = *(a5 + 264);
      v15 = (a5 + 88);
      v16 = *(a5 + 284);
      v17 = v11;
      if (*(a5 + 284))
      {
        do
        {
          if ((v17 & 0x80000000) == 0 && v17 < *(a5 + 282))
          {
            a3 = a3 + *(v15 - 11) * *(v12 + 8 * v17) + *v15 * *(v13 + 8 * v17) + v15[11] * *(*a8 + 8 * v17);
          }

          v17 += *(a5 + 276);
          ++v15;
          --v16;
        }

        while (v16);
      }

      if (a3 > v14)
      {
        v14 = a3;
      }

      if (a3 > 0.0)
      {
        ++v10;
      }

      ++v11;
    }

    while (v11 != v9);
    v18 = v10;
  }

  LOWORD(a3) = *(a5 + 280);
  return v18 / *&a3;
}

void sub_1002B3320(CLKappaAlgBlock *a1)
{

  operator delete();
}

void sub_1002B3384(void *a1)
{

  operator delete();
}

void sub_1002B3410(void *a1)
{

  operator delete();
}

void sub_1002B349C(void *a1)
{

  operator delete();
}

void sub_1002B3504(id a1)
{
  qword_100456800 = os_log_create("com.apple.anomalydetectiond", "Alg");

  _objc_release_x1();
}

uint64_t sub_1002B3548(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10000F18C(result, a4);
  }

  return result;
}

void sub_1002B35A8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002B35C4(CLKappaAlgBlock *this, uint64_t *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 152)) = a2[6];
  *(this + *(*this - 160)) = a2[7];
  *(this + *(*this - 168)) = a2[8];
  *(this + *(*this - 176)) = a2[9];
  v5 = *(this + 33);
  if (v5)
  {
    sub_100009A48(v5);
  }

  v6 = *(this + 22);
  if (v6)
  {
    *(this + 23) = v6;
    operator delete(v6);
  }

  v7 = *(this + 19);
  if (v7)
  {
    *(this + 20) = v7;
    operator delete(v7);
  }

  v8 = *(this + 16);
  if (v8)
  {
    *(this + 17) = v8;
    operator delete(v8);
  }

  v9 = *(this + 13);
  if (v9)
  {
    *(this + 14) = v9;
    operator delete(v9);
  }

  v10 = *(this + 10);
  if (v10)
  {
    *(this + 11) = v10;
    operator delete(v10);
  }

  v11 = *(this + 7);
  if (v11)
  {
    *(this + 8) = v11;
    operator delete(v11);
  }

  v12 = *(this + 4);
  if (v12)
  {
    *(this + 5) = v12;
    operator delete(v12);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(this, a2 + 1);
}

void sub_1002B3804(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10042B3E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void CLKappaDeescalatorSteps::CLKappaDeescalatorSteps(CLKappaDeescalatorSteps *this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 36) = 1;
  *(this + 10) = 0;
  *(this + 44) = 0;
  *this = off_10042B430;
  *(this + 88) = 0;
  *(this + 12) = 0xC00000000;
  *(this + 325) = 0x1100000000;
  *(this + 329) = 0xB00000000;
  *(this + 3080) = 0;
  *(this + 3120) = 0;
  *(this + 391) = 0;
  *(this + 3133) = 0;
  *(this + 71) = 8;
  strcpy(this + 48, "de-Steps");
}

uint64_t CLKappaDeescalatorSteps::assertReady(CLKappaDeescalatorSteps *this, uint64_t a2, const char *a3)
{
  CLKappaDeescalator::assertCrashTimestamp(this, a2, a3);
  v5 = *(this + 88);

  return CLKappaDeescalator::raiseUnless(v5, "[de-Steps] missing config", v4);
}

double CLKappaDeescalatorSteps::prepareForNextEpoch(CLKappaDeescalatorSteps *this)
{
  result = 0.0;
  *(this + 391) = 0;
  *(this + 784) = 0;
  return result;
}

uint64_t CLKappaDeescalatorSteps::setConfig(uint64_t result, _OWORD *a2)
{
  v2 = *(result + 88);
  *(result + 72) = *a2;
  if ((v2 & 1) == 0)
  {
    *(result + 88) = 1;
  }

  return result;
}

void CLKappaDeescalatorSteps::resetConfiguration(CLKappaDeescalatorSteps *this)
{
  v10 = [CSPersistentConfiguration configBaseKey:"DeescalatorStepsConfig" forFeatureMode:*(this + 36)];
  v2 = +[CSPersistentConfiguration sharedConfiguration];
  [v2 floatThreshold:&CLKappaDeescalatorSteps::kConfigurationDefaults forKey:v10];
  v4 = v3;
  [v2 floatThreshold:&unk_1003BED38 forKey:v10];
  v6 = v5;
  v7 = [v2 intThreshold:&unk_1003BED48 forKey:v10];
  v8 = [v2 intThreshold:&unk_1003BED58 forKey:v10];
  v9 = *(this + 88);
  *(this + 18) = v4;
  *(this + 19) = v6;
  *(this + 20) = v7;
  *(this + 21) = v8;
  if ((v9 & 1) == 0)
  {
    *(this + 88) = 1;
  }

  *(this + 44) = CLKappaDeescalator::shouldForceNoop(this, "ForceSteps");
  *(this + 10) = CLKappaDeescalator::shouldForceDeescalate(this, "ForceSteps");
}

void CLKappaDeescalatorSteps::log(CLKappaDeescalatorSteps *this, uint64_t a2)
{
  if (*(this + 3120) == 1)
  {
    v4 = *(this + 774);
    v5 = *(this + 3088);
    v6 = *(this + 3104);
    v7 = *(this + 389);
    v8 = *(this + 775);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0.0;
  }

  if ((*(this + 88) & 1) == 0)
  {
    sub_100005BF0();
  }

  v9 = *(this + 782);
  v10 = *(this + 1317);
  v11 = *(this + 783);
  v12 = *(this + 784);
  v13 = *(this + 3140);
  if (qword_1004567F8 != -1)
  {
    sub_1002B43D8();
  }

  v14 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(this + 6);
    v16 = *(this + 36);
    v17 = *(this + 18);
    v18 = *(this + 19);
    v19 = *(this + 20);
    v20 = *(this + 21);
    v21 = 134353152;
    v22 = a2;
    v23 = 1026;
    v24 = v15;
    v25 = 1026;
    v26 = v16;
    v27 = 2050;
    v28 = v17;
    v29 = 2050;
    v30 = v18;
    v31 = 1026;
    v32 = v19;
    v33 = 1026;
    v34 = v20;
    v35 = 2050;
    v36 = v8;
    v37 = 1026;
    v38 = v4;
    v39 = 1026;
    v40 = v5;
    v41 = 1026;
    v42 = v6;
    v43 = 2050;
    v44 = v9;
    v45 = 2050;
    v46 = v7;
    v47 = 1026;
    v48 = v10;
    v49 = 2050;
    v50 = v11;
    v51 = 1026;
    v52 = v12;
    v53 = 1026;
    v54 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[de-Steps] summary,A,%{public}llu,B,%{public}u,mode,%{public}u,config-1,%{public}f,config-2,%{public}f,config-3,%{public}u,config-4,%{public}u,debug-1a,%{public}f,debug-1b,%{public}u,debug-1c,%{public}u,debug-1d,%{public}u,debug-1e,%{public}f,debug-1f,%{public}llu,debug-1g,%{public}u,debug-1h,%{public}f,debug-1i,%{public}u,debug-1j,%{public}u", &v21, 0x84u);
  }
}

uint64_t CLKappaDeescalatorSteps::updateWithHighSpeedCrash(uint64_t this, char a2)
{
  v2 = *(this + 2602);
  v3 = *(this + 2604);
  v4 = *(this + 2600);
  if (v4 + v2 >= v3)
  {
    v5 = *(this + 2604);
  }

  else
  {
    v5 = 0;
  }

  *(this + v4 + v2 - v5 + 2608) = a2;
  if (v3 <= v2)
  {
    if (v4 + 1 < v3)
    {
      LOWORD(v3) = 0;
    }

    *(this + 2600) = v4 + 1 - v3;
  }

  else
  {
    *(this + 2602) = v2 + 1;
  }

  return this;
}

unsigned __int16 *CLKappaDeescalatorSteps::updateWithStepsFeatures(unsigned __int16 *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8) == 1)
  {
    result = sub_1002B3D80(result + 1316, a2);
  }

  v4 = *(v3 + 3120);
  v5 = *(a2 + 32);
  v6 = *(a2 + 16);
  *(v3 + 1540) = *a2;
  *(v3 + 1548) = v6;
  *(v3 + 389) = v5;
  if ((v4 & 1) == 0)
  {
    *(v3 + 3120) = 1;
  }

  return result;
}

unsigned __int16 *sub_1002B3D80(unsigned __int16 *result, __int128 *a2)
{
  v2 = *(result + 1);
  v3 = *result + result[1];
  if (v3 < v2)
  {
    v2 = 0;
  }

  v4 = &result[20 * (v3 - v2)];
  v6 = *a2;
  v5 = a2[1];
  *(v4 + 5) = *(a2 + 4);
  *(v4 + 4) = v6;
  *(v4 + 12) = v5;
  v7 = result[1];
  v8 = *(result + 1);
  if (v8 <= v7)
  {
    v9 = *result + 1;
    if (v9 < v8)
    {
      LOWORD(v8) = 0;
    }

    *result = v9 - v8;
  }

  else
  {
    result[1] = v7 + 1;
  }

  return result;
}

uint64_t CLKappaDeescalatorSteps::getAirbagDetectedStats(unsigned __int16 *a1)
{
  if (a1[1])
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v3 |= *(sub_10003AB3C(a1, v2++) + 52) != 0;
    }

    while (v2 < a1[1]);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

float CLKappaDeescalatorSteps::getStepsStats(unsigned __int16 *a1, unint64_t a2, float a3)
{
  v3 = a1[1];
  v4 = 0.0;
  if (a1[1])
  {
    if (*sub_1002B4060(a1, 0) > a2)
    {
LABEL_21:
      if (qword_1004567F8 != -1)
      {
        sub_1002B43D8();
      }

      v21 = qword_100456800;
      if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_FAULT))
      {
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_FAULT, "Something is funny with steps history", v23, 2u);
      }
    }

    else
    {
      v8 = -1;
      v9 = 1;
      while (v3 != v9)
      {
        v10 = sub_1002B4060(a1, v9);
        ++v8;
        ++v9;
        if (*v10 > a2)
        {
          if (v8 < 0)
          {
            goto LABEL_21;
          }

          goto LABEL_7;
        }
      }

      v8 = v3 - 1;
      if (v3 - 1 < 0)
      {
        goto LABEL_21;
      }

LABEL_7:
      v11 = 0;
      v12 = v8 - 3;
      v13 = (v8 + 6);
      v14 = v8 - 2;
      v15 = (v8 + 3);
      v16 = v14;
      v17 = v12;
      v18 = 0.0;
      v19 = 0.0;
      v4 = 0.0;
      do
      {
        if (v11 >= v17 && v11 <= v13)
        {
          if (v11 <= v16 || v11 >= v15)
          {
            v20 = sub_1002B4060(a1, v11);
            if (v4 < *(v20 + 20))
            {
              v4 = *(v20 + 20);
            }

            if (*(sub_1002B4060(a1, v11) + 20) > a3 && !*(sub_1002B4060(a1, v11) + 24))
            {
              v19 = v19 + *(sub_1002B4060(a1, v11) + 16);
            }
          }

          v18 = v18 + 2.56;
        }

        ++v11;
      }

      while (v3 != v11);
    }
  }

  return v4;
}

uint64_t sub_1002B4060(unsigned __int16 *a1, unint64_t a2)
{
  v4 = *(a1 + 1);
  if (v4 <= a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      Current = CFAbsoluteTimeGetCurrent();
      v8 = *(a1 + 1);
      v9 = 134218754;
      v10 = Current;
      v11 = 2080;
      v12 = "const T &CMQueue<CLKappaFeaturesAlgStepsOutput>::operator[](const size_t) const [T = CLKappaFeaturesAlgStepsOutput]";
      v13 = 2048;
      v14 = a2;
      v15 = 1024;
      v16 = v8;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "ERROR,Die,Time,%.3f,Function,%s,i,%zu,capacity,%u\n", &v9, 0x26u);
    }

    __assert_rtn("operator[]", "CMQueue.h", 244, "false");
  }

  v5 = *a1 + a2;
  if (v5 < v4)
  {
    v4 = 0;
  }

  return &a1[20 * (v5 - v4) + 4];
}

uint64_t CLKappaDeescalatorSteps::getStepsCountStats(unsigned __int16 *a1, int a2)
{
  v2 = a1[1];
  if (a1[1])
  {
    v3 = a2 < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return 0;
  }

  LODWORD(v5) = 0;
  v6 = (v2 - a2) & ~((v2 - a2) >> 31);
  do
  {
    v5 = (*(sub_1002B4060(a1, v6++) + 16) + v5);
  }

  while (v6 < v2);
  return v5;
}

uint64_t CLKappaDeescalatorSteps::onEvaluateAtMinHoldDuration(CLKappaDeescalatorSteps *this)
{
  if ((*(this + 88) & 1) == 0)
  {
    sub_100005BF0();
  }

  v3 = *(this + 18);
  v2 = *(this + 19);
  v4 = (this + 8);
  if (!*(this + 16))
  {
    v4 = &unk_1003BED90;
  }

  StepsStats = CLKappaDeescalatorSteps::getStepsStats(this + 1316, *v4, v2);
  v7 = v6;
  HighSpeedDetectedStats = CLKappaDeescalator::getHighSpeedDetectedStats(this + 1300);
  AirbagDetectedStats = CLKappaDeescalatorSteps::getAirbagDetectedStats(this + 48);
  result = 0;
  *(this + 782) = StepsStats;
  *(this + 783) = v7;
  v11 = v7 <= v3 || StepsStats <= v2;
  if (!v11 && (HighSpeedDetectedStats & 1) == 0 && (AirbagDetectedStats & 1) == 0)
  {
    *(this + 3140) = 1;
    return 4;
  }

  return result;
}

uint64_t CLKappaDeescalatorSteps::onEvaluateAtSecondDeescalationOpportunity(CLKappaDeescalatorSteps *this)
{
  if ((*(this + 88) & 1) == 0)
  {
    sub_100005BF0();
  }

  v2 = *(this + 20);
  StepsCountStats = CLKappaDeescalatorSteps::getStepsCountStats(this + 1316, *(this + 21));
  *(this + 784) = StepsCountStats;
  if (StepsCountStats <= v2)
  {
    return 1;
  }

  *(this + 3140) = 2;
  return 4;
}

_DWORD *CLKappaDeescalatorSteps::onPreviousEpochMadeDecision(_DWORD *this)
{
  this[24] = 0;
  this[650] = 0;
  this[658] = 0;
  return this;
}

void sub_1002B4340(void **a1)
{
  *a1 = off_10042B430;
  CLKappaDeescalator::~CLKappaDeescalator(a1);

  operator delete();
}

void sub_1002B4394(id a1)
{
  qword_100456800 = os_log_create("com.apple.anomalydetectiond", "Alg");

  _objc_release_x1();
}

void CLKappaDeescalatorMAP::CLKappaDeescalatorMAP(CLKappaDeescalatorMAP *this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 36) = 1;
  *(this + 10) = 0;
  *(this + 44) = 0;
  *this = off_10042B4E0;
  *(this + 36) = 0;
  *(this + 76) = 0xB00000000;
  *(this + 12) = 0xB00000000;
  *(this + 24) = 0xB00000000;
  *(this + 106) = 0;
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 116) = 0;
  *(this + 71) = 6;
  strcpy(this + 48, "de-MAP");
}

void CLKappaDeescalatorMAP::resetConfiguration(CLKappaDeescalatorMAP *this)
{
  v4 = [CSPersistentConfiguration configBaseKey:"DeescalatorMAPConfig" forFeatureMode:*(this + 36)];
  v2 = +[CSPersistentConfiguration sharedConfiguration];
  v3 = [v2 BOOLThreshold:&CLKappaDeescalatorMAP::kConfigurationDefaults forKey:v4];
  if ((*(this + 73) & 1) == 0)
  {
    *(this + 73) = 1;
  }

  *(this + 72) = v3;
  *(this + 44) = CLKappaDeescalator::shouldForceNoop(this, "ForceMAP");
  *(this + 10) = CLKappaDeescalator::shouldForceDeescalate(this, "ForceMAP");
}

uint64_t CLKappaDeescalatorMAP::setConfig(uint64_t result, char *a2)
{
  v2 = *a2;
  if ((*(result + 73) & 1) == 0)
  {
    *(result + 73) = 1;
  }

  *(result + 72) = v2;
  return result;
}

void CLKappaDeescalatorMAP::log(CLKappaDeescalatorMAP *this, uint64_t a2)
{
  if ((*(this + 73) & 1) == 0)
  {
    sub_100005BF0();
  }

  v4 = *(this + 212);
  v5 = *(this + 213);
  v7 = *(this + 27);
  v6 = *(this + 28);
  if (qword_1004567F8 != -1)
  {
    sub_1002B4B40();
  }

  v8 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 6);
    v10 = *(this + 36);
    v11 = *(this + 72);
    v12 = 134350848;
    v13 = a2;
    v14 = 1026;
    v15 = v9;
    v16 = 1026;
    v17 = v10;
    v18 = 1026;
    v19 = v11;
    v20 = 1026;
    v21 = v4;
    v22 = 1026;
    v23 = v5;
    v24 = 2050;
    v25 = v7;
    v26 = 2050;
    v27 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[de-MAP] summary,A,%{public}llu,B,%{public}u,mode,%{public}u,config-1,%{public}u,debug-1a,%{public}u,debug-1b,%{public}u,debug-1c,%{public}llu,debug-1d,%{public}llu", &v12, 0x3Eu);
  }
}

uint64_t CLKappaDeescalatorMAP::prepareForNextEpoch(uint64_t this)
{
  *(this + 216) = 0;
  *(this + 224) = 0;
  return this;
}

unsigned __int16 *CLKappaDeescalatorMAP::updateWithIsMAP(uint64_t a1, uint64_t a2)
{
  sub_1002B470C((a1 + 76), a2);
  *(a1 + 212) = *a2;

  return sub_1002B4760((a1 + 96), (a2 + 8));
}

unsigned __int16 *sub_1002B470C(unsigned __int16 *result, _BYTE *a2)
{
  v2 = result[1];
  v3 = *(result + 1);
  v4 = *result;
  if (v4 + v2 >= v3)
  {
    v5 = *(result + 1);
  }

  else
  {
    v5 = 0;
  }

  *(result + v4 + v2 - v5 + 8) = *a2;
  if (v3 <= v2)
  {
    if (v4 + 1 < v3)
    {
      LOWORD(v3) = 0;
    }

    *result = v4 + 1 - v3;
  }

  else
  {
    result[1] = v2 + 1;
  }

  return result;
}

unsigned __int16 *sub_1002B4760(unsigned __int16 *result, void *a2)
{
  v2 = result[1];
  v3 = *(result + 1);
  v4 = *result;
  if (v4 + v2 >= v3)
  {
    v5 = *(result + 1);
  }

  else
  {
    v5 = 0;
  }

  *&result[4 * (v4 + v2 - v5) + 4] = *a2;
  if (v3 <= v2)
  {
    if (v4 + 1 < v3)
    {
      LOWORD(v3) = 0;
    }

    *result = v4 + 1 - v3;
  }

  else
  {
    result[1] = v2 + 1;
  }

  return result;
}

unsigned __int16 *CLKappaDeescalatorMAP::updateWithFreeFall(uint64_t a1, uint64_t a2)
{
  result = sub_1002B470C((a1 + 192), (a2 + 44));
  *(a1 + 213) = *(a2 + 44);
  return result;
}

uint64_t CLKappaDeescalatorMAP::onEvaluateAtMinHoldDuration(CLKappaDeescalatorMAP *this)
{
  if ((*(this + 73) & 1) == 0)
  {
    sub_100005BF0();
  }

  if (*(this + 72) != 1)
  {
    return 1;
  }

  v2 = (this + 8);
  if (!*(this + 16))
  {
    v2 = &unk_1003BEDE8;
  }

  v3 = 1;
  if (*(this + 39))
  {
    v4 = 0;
    v5 = 0;
    v6 = *v2;
    v7 = *v2 + 8100000;
    do
    {
      if (*sub_1002B4A18(this + 48, v4) + 5000000 >= v6 && *sub_1002B4A18(this + 48, v4) <= v7)
      {
        if ((*(this + 232) & 1) == 0)
        {
          *(this + 27) = *sub_1002B4A18(this + 48, v4);
          *(this + 232) = 1;
        }

        *(this + 28) = *sub_1002B4A18(this + 48, v4);
        if (v5)
        {
          v5 = 1;
        }

        else if (*sub_10002E0A8(this + 38, v4) == 1)
        {
          v5 = *sub_10002E0A8(this + 96, v4) ^ 1;
        }

        else
        {
          v5 = 0;
        }
      }

      ++v4;
    }

    while (v4 < *(this + 39));
    if (v5)
    {
      return 4;
    }

    else
    {
      return 1;
    }
  }

  return v3;
}

uint64_t CLKappaDeescalatorMAP::onPreviousEpochMadeDecision(uint64_t this)
{
  *(this + 76) = 0;
  *(this + 192) = 0;
  *(this + 216) = 0;
  *(this + 224) = 0;
  *(this + 232) = 0;
  return this;
}

void sub_1002B4980(void **a1)
{
  *a1 = off_10042B4E0;
  CLKappaDeescalator::~CLKappaDeescalator(a1);

  operator delete();
}

void sub_1002B49D4(id a1)
{
  qword_100456800 = os_log_create("com.apple.anomalydetectiond", "Alg");

  _objc_release_x1();
}

uint64_t sub_1002B4A18(unsigned __int16 *a1, unint64_t a2)
{
  v4 = *(a1 + 1);
  if (v4 <= a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      Current = CFAbsoluteTimeGetCurrent();
      v8 = *(a1 + 1);
      v9 = 134218754;
      v10 = Current;
      v11 = 2080;
      v12 = "const T &CMQueue<unsigned long long>::operator[](const size_t) const [T = unsigned long long]";
      v13 = 2048;
      v14 = a2;
      v15 = 1024;
      v16 = v8;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "ERROR,Die,Time,%.3f,Function,%s,i,%zu,capacity,%u\n", &v9, 0x26u);
    }

    __assert_rtn("operator[]", "CMQueue.h", 244, "false");
  }

  v5 = *a1 + a2;
  if (v5 < v4)
  {
    v4 = 0;
  }

  return &a1[4 * (v5 - v4) + 4];
}

void TrustedAudioHelper::summarizeTrusted(TrustedAudioHelper *this@<X0>, NSArray *a2@<X1>, NSArray *a3@<X2>, uint64_t a4@<X8>)
{
  v11 = this;
  v7 = TrustedAudioHelper::selectTrustedAudioResult(a2, a3);
  v8 = v7;
  if (v7)
  {
    v9 = *([v7 c_struct] + 46) == 0.0;
    v10 = *([v8 c_struct] + 27);
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  *a4 = [(TrustedAudioHelper *)v11 count]!= 0;
  *(a4 + 1) = v8 != 0;
  *(a4 + 2) = v9;
  *(a4 + 8) = v10;
  *(a4 + 16) = a3;
}

id TrustedAudioHelper::selectTrustedAudioResult(TrustedAudioHelper *this, NSArray *a2)
{
  v3 = this;
  if ([(TrustedAudioHelper *)v3 count])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = v3;
    v5 = [(TrustedAudioHelper *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = *v11;
LABEL_4:
      v7 = 0;
      while (1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        if ([v8 timestamp] == a2)
        {
          break;
        }

        if (v5 == ++v7)
        {
          v5 = [(TrustedAudioHelper *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
          if (v5)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id TrustedAudioHelper::summarizeUntrusted@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a2 + 56);
  v7 = *(a2 + 8);
  result = [a1 count];
  if (v7 > 0.0)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  *a4 = result != 0;
  *(a4 + 1) = v9;
  *(a4 + 2) = v9 ^ 1;
  *(a4 + 8) = 0;
  *(a4 + 16) = a3;
  return result;
}

uint64_t TrustedAudioHelper::update(uint64_t result, uint64_t a2)
{
  if (*a2 == 1)
  {
    ++*(result + 8);
    if ((*(a2 + 1) & 1) == 0)
    {
      if (*result)
      {
        ++*(result + 16);
      }

      else
      {
        ++*(result + 12);
      }

      goto LABEL_11;
    }
  }

  else if (*(a2 + 1) != 1)
  {
    goto LABEL_11;
  }

  ++*(result + 4);
  if ((*result & 1) == 0)
  {
    v2 = *(a2 + 16) - 4000000;
    if (*(a2 + 8) > v2)
    {
      v2 = *(a2 + 8);
    }

    *(result + 24) = v2;
    *result = 1;
  }

LABEL_11:
  *(result + 20) += *(a2 + 2);
  *(result + 32) = *(a2 + 16);
  return result;
}

uint64_t TrustedAudioHelper::reset(uint64_t this)
{
  *this = 0;
  *(this + 24) = 0;
  *(this + 12) = 0;
  *(this + 4) = 0;
  return this;
}

unint64_t TrustedAudioHelper::getStats(TrustedAudioHelper *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4)
  {
    v5 = *(this + 1) / v4;
  }

  else
  {
    v5 = -1.0;
  }

  v6 = *(this + 3);
  if (v6)
  {
    v7 = (a2 - v6) / 1000000.0;
  }

  else
  {
    v7 = -3.4028e38;
  }

  if (qword_1004567F8 != -1)
  {
    sub_1002B50AC();
  }

  v8 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(this + 1);
    v10 = *(this + 2);
    v11 = *(this + 3);
    v12 = *(this + 4);
    v13 = *(this + 5);
    v14 = *(this + 3);
    v15 = *(this + 4);
    v18[0] = 67111424;
    v18[1] = v9;
    v19 = 1024;
    v20 = v10;
    v21 = 2048;
    v22 = v5;
    v23 = 1024;
    v24 = v11;
    v25 = 1024;
    v26 = v12;
    v27 = 1024;
    v28 = v13;
    v29 = 2048;
    v30 = a2;
    v31 = 2048;
    v32 = v14;
    v33 = 2048;
    v34 = v7;
    v35 = 2048;
    v36 = v15;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[TAH] %d %d %f %d %d %d %llu %llu %f %llu", v18, 0x52u);
  }

  result = LODWORD(v5) | (*(this + 3) << 32);
  v17 = *(this + 4) | (LODWORD(v7) << 32);
  return result;
}

void sub_1002B5068(id a1)
{
  qword_100456800 = os_log_create("com.apple.anomalydetectiond", "Alg");

  _objc_release_x1();
}

void sub_1002B5104(id a1)
{
  if (qword_100456968 != -1)
  {
    sub_1002B5478();
  }

  v1 = qword_100456970;
  if (os_log_type_enabled(qword_100456970, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "creating CSMapDataQuality shared instance", v6, 2u);
  }

  v2 = [CSMapDataQuality alloc];
  v3 = +[GEOCountryConfiguration sharedConfiguration];
  v4 = [(CSMapDataQuality *)v2 initWithGEOCountryConfiguration:v3];
  v5 = qword_100458858;
  qword_100458858 = v4;
}

void sub_1002B5420(id a1)
{
  qword_100456970 = os_log_create("com.apple.anomalydetectiond", "MapDataQuality");

  _objc_release_x1();
}

float CLSafetyAlgorithmsMath::computeSigmoidalThreshold(float *a1, float a2)
{
  v3 = (a2 - *a1) / a1[1];
  if (fabsf(v3) <= 20.0)
  {
    v5 = 1.0 / (expf(v3) + 1.0);
  }

  else
  {
    v4 = v3 <= 20.0;
    v5 = 1.0;
    if (!v4)
    {
      v5 = 0.0;
    }
  }

  return a1[2] + ((a1[3] - a1[2]) * v5);
}

void CLKappaFeaturesAlgGolfResult::reset(CLKappaFeaturesAlgGolfResult *this)
{
  v3 = this + 120;
  v2 = *(this + 15);
  *(v3 - 1) = 0;
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }

  *v3 = 0;
  *(v3 + 1) = 0;
  v3[24] = 0;
  *(v3 + 2) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
}

void CLKappaFeaturesAlgGolfResult::log(CLKappaFeaturesAlgGolfResult *this)
{
  if (qword_1004567F8 != -1)
  {
    sub_1002B8EE0();
  }

  v2 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 144);
    v4 = *(this + 13);
    v5 = *(this + 14);
    v6 = *(this + 2);
    v7 = *(this + 3);
    v8 = *(this + 4);
    v9 = *(this + 5);
    v10 = *(this + 6);
    v11 = *(this + 7);
    v13 = *(this + 8);
    v12 = *(this + 9);
    v14 = *(this + 10);
    v15 = *(this + 11);
    v16 = *(this + 12);
    v17 = *(this + 19);
    v18 = *(this + 20);
    v19[0] = 67244032;
    v19[1] = v3;
    v20 = 2050;
    v21 = v5;
    v22 = 2050;
    v23 = v6;
    v24 = 2050;
    v25 = v7;
    v26 = 2050;
    v27 = v8;
    v28 = 2050;
    v29 = v9;
    v30 = 2050;
    v31 = v10;
    v32 = 2050;
    v33 = v11;
    v34 = 2050;
    v35 = v13;
    v36 = 2050;
    v37 = v16;
    v38 = 2050;
    v39 = v12;
    v40 = 2050;
    v41 = v14;
    v42 = 2050;
    v43 = v15;
    v44 = 2050;
    v45 = v4;
    v46 = 2050;
    v47 = v17;
    v48 = 2050;
    v49 = v18;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[GLF] AlgBlock summary,A,%{public}d,B,%{public}lluconfig-1,%{public}f,config-2,%{public}f,config-3,%{public}f,config-4,%{public}f,config-5,%{public}f,config-6,%{public}f,config-7,%{public}f,config-8,%{public}f,config-9,%{public}f,config-10,%{public}f,config-11,%{public}f,config-12,%{public}f,debug-1,%{public}lu,debug-2,%{public}lu", v19, 0x9Eu);
  }
}

void CLKappaFeaturesAlgGolf::CLKappaFeaturesAlgGolf(CLKappaFeaturesAlgGolf *this, uint64_t *a2)
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
  sub_1002B85C4();
}

void sub_1002B592C(_Unwind_Exception *a1)
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

char **sub_1002B5960@<X0>(uint64_t a1@<X0>, char ***a2@<X8>)
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

void CLKappaFeaturesAlgGolf::CLKappaFeaturesAlgGolf(CLKappaFeaturesAlgGolf *this)
{
  *this = off_100411FE8;
  *(this + 8) = off_100412090;
  *(this + 9) = off_100412158;
  *(this + 10) = off_100412210;
  CLKappaAlgBlock::CLKappaAlgBlock(this, off_10042BBE0);
  *v1 = off_10042B690;
  *(v1 + 64) = off_10042B950;
  *(v1 + 72) = off_10042BA98;
  *(v1 + 80) = off_10042BB88;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  sub_1002B85C4();
}

void sub_1002B5BDC(_Unwind_Exception *a1)
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

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_10042BBE0);
  _Unwind_Resume(a1);
}

void CLKappaFeaturesAlgGolf::resetConfiguration(CLKappaFeaturesAlgGolf *this)
{
  v50 = [CSPersistentConfiguration configBaseKey:"FeaturesAlgGLFConfig" forFeatureMode:*(this + 24)];
  v2 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v3) = 1120403456;
  LODWORD(v4) = 10.0;
  [v2 algorithmThresholdNumber:0 inArrayForKey:v50 withMinValue:0.0 maxValue:v3 defaultValue:v4];
  *(*(this + 4) + 16) = v5;

  v6 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v7) = 1120403456;
  LODWORD(v8) = 1045220557;
  [v6 algorithmThresholdNumber:1 inArrayForKey:v50 withMinValue:0.0 maxValue:v7 defaultValue:v8];
  *(*(this + 4) + 24) = v9;

  v10 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v11) = 1120403456;
  LODWORD(v12) = 15.0;
  [v10 algorithmThresholdNumber:2 inArrayForKey:v50 withMinValue:0.0 maxValue:v11 defaultValue:v12];
  *(*(this + 4) + 32) = v13;

  v14 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v15) = 1120403456;
  LODWORD(v16) = 1045220557;
  [v14 algorithmThresholdNumber:3 inArrayForKey:v50 withMinValue:0.0 maxValue:v15 defaultValue:v16];
  *(*(this + 4) + 40) = v17;

  v18 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v19) = 1114636288;
  LODWORD(v20) = 1176256512;
  [v18 algorithmThresholdNumber:4 inArrayForKey:v50 withMinValue:0.0 maxValue:v20 defaultValue:v19];
  *(*(this + 4) + 48) = v21;

  v22 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v23) = 30.0;
  LODWORD(v24) = 1176256512;
  [v22 algorithmThresholdNumber:5 inArrayForKey:v50 withMinValue:0.0 maxValue:v24 defaultValue:v23];
  *(*(this + 4) + 56) = v25;

  v26 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v27) = 1123024896;
  LODWORD(v28) = 1176256512;
  [v26 algorithmThresholdNumber:6 inArrayForKey:v50 withMinValue:0.0 maxValue:v28 defaultValue:v27];
  *(*(this + 4) + 64) = v29;

  v30 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v31) = 10.0;
  LODWORD(v32) = 1041865114;
  [v30 algorithmThresholdNumber:7 inArrayForKey:v50 withMinValue:0.0 maxValue:v31 defaultValue:v32];
  *(*(this + 4) + 72) = v33;

  v34 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v35) = 1034147594;
  LODWORD(v36) = 10.0;
  [v34 algorithmThresholdNumber:8 inArrayForKey:v50 withMinValue:0.0 maxValue:v36 defaultValue:v35];
  *(*(this + 4) + 80) = v37;

  v38 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v39) = 10.0;
  LODWORD(v40) = 1041865114;
  [v38 algorithmThresholdNumber:9 inArrayForKey:v50 withMinValue:0.0 maxValue:v39 defaultValue:v40];
  *(*(this + 4) + 88) = v41;

  v42 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v43) = *"ff&?33s?";
  LODWORD(v44) = 10.0;
  [v42 algorithmThresholdNumber:10 inArrayForKey:v50 withMinValue:0.0 maxValue:v44 defaultValue:v43];
  *(*(this + 4) + 96) = v45;

  v46 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v47) = 1053609165;
  LODWORD(v48) = 10.0;
  [v46 algorithmThresholdNumber:11 inArrayForKey:v50 withMinValue:0.0 maxValue:v48 defaultValue:v47];
  *(*(this + 4) + 104) = v49;
}

void CLKappaFeaturesAlgGolf::setConfig(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 32);
  v4 = a2[1];
  v3[1] = *a2;
  v3[2] = v4;
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[5];
  v3[5] = a2[4];
  v3[6] = v7;
  v3[3] = v5;
  v3[4] = v6;
  if (qword_1004567F8 != -1)
  {
    sub_1002B8EE0();
  }

  v8 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 32);
    v10 = v9[2];
    v11 = v9[3];
    v12 = v9[4];
    v13 = v9[5];
    v14 = v9[6];
    v15 = v9[7];
    v16 = v9[8];
    v17 = v9[9];
    v19 = v9[10];
    v18 = v9[11];
    v20 = v9[12];
    v21 = v9[13];
    v22 = 134351872;
    v23 = v10;
    v24 = 2050;
    v25 = v11;
    v26 = 2050;
    v27 = v12;
    v28 = 2050;
    v29 = v13;
    v30 = 2050;
    v31 = v14;
    v32 = 2050;
    v33 = v15;
    v34 = 2050;
    v35 = v16;
    v36 = 2050;
    v37 = v20;
    v38 = 2050;
    v39 = v17;
    v40 = 2050;
    v41 = v19;
    v42 = 2050;
    v43 = v18;
    v44 = 2050;
    v45 = v21;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[GLF] config-1,%{public}f,config-2,%{public}f,config-3,%{public}f,config-4,%{public}f,config-5,%{public}f,config-6,%{public}f,config-7,%{public}f,config-8,%{public}f,config-9,%{public}f,config-10,%{public}f,config-11,%{public}f,config-12,%{public}f", &v22, 0x7Au);
  }
}

uint64_t CLKappaFeaturesAlgGolf::Window::sufficientData(id *this, unint64_t a2)
{
  if (a2 >= 0xE7EF0)
  {
    if ([*this count])
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v8 = [*this objectAtIndexedSubscript:v5];
        v9 = [v8 timestamp];

        v10 = [*this objectAtIndexedSubscript:v5];
        v7 |= v9 <= a2 - 950000;
        v6 |= [v10 timestamp] >= a2 + 950000;

        if (v7 & 1) != 0 && (v6)
        {
          break;
        }

        if (++v5 >= [*this count])
        {
          goto LABEL_11;
        }
      }

      v7 = 1;
      v6 = 1;
LABEL_11:
      v11 = v7 & v6;
    }

    else
    {
      v11 = 0;
    }

    if ([this[1] count])
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = a2 - 150000;
      v16 = a2 + 150000;
      while (1)
      {
        v17 = [this[1] objectAtIndexedSubscript:v12];
        v18 = [v17 timestamp];

        v19 = [this[1] objectAtIndexedSubscript:v12];
        v14 |= v18 <= v15;
        v13 |= [v19 timestamp] >= v16;

        if (v14 & 1) != 0 && (v13)
        {
          break;
        }

        if (++v12 >= [this[1] count])
        {
          goto LABEL_20;
        }
      }

      v14 = 1;
      v13 = 1;
LABEL_20:
      v20 = v14 & v13;
    }

    else
    {
      v20 = 0;
    }

    v2 = v11 & v20;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

unint64_t CLKappaFeaturesAlgGolf::Window::scrollToPeakTimestamp(CLKappaFeaturesAlgGolf::Window *this, unint64_t a2)
{
  if (*(this + 2) > a2 - 1000000 || (v4 = a2 + 1000000, a2 + 1000000 >= *(this + 3)))
  {
    if (qword_1004567F8 != -1)
    {
      sub_1002B8EE0();
    }

    v5 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "[GLF] peakTimestamp out of bounds", buf, 2u);
    }

    v4 = a2 + 1000000;
  }

  if (a2 >= 0xF4240)
  {
    v6 = a2 - 1000000;
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_1002B6524(*(this + 5), v6, *this);
  *(this + 5) = v7;
  v8 = sub_1002B6524(v7, a2, *this);
  *(this + 4) = v8;
  *(this + 6) = sub_1002B65C4(v8, v4, *this);
  v9 = [*this objectAtIndexedSubscript:*(this + 4)];
  v10 = [v9 timestamp];

  if (v10 != a2)
  {
    if (qword_1004567F8 != -1)
    {
      sub_1002B8EF4();
    }

    v11 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_FAULT))
    {
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "[GLF] error locating peak in window", v19, 2u);
    }
  }

  if (a2 >= 0x249F0)
  {
    v12 = a2 - 150000;
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_1002B6524(*(this + 8), v12, *(this + 1));
  *(this + 8) = v13;
  if (a2 >= 0x11170)
  {
    v14 = a2 - 70000;
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_1002B6524(v13, v14, *(this + 1));
  *(this + 10) = v15;
  v16 = sub_1002B65C4(v15, a2, *(this + 1));
  *(this + 7) = v16;
  v17 = sub_1002B65C4(v16, a2 + 70000, *(this + 1));
  *(this + 11) = v17;
  result = sub_1002B65C4(v17, a2 + 150000, *(this + 1));
  *(this + 9) = result;
  return result;
}

unint64_t sub_1002B6524(unint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;
  while (a1 < [v5 count])
  {
    v6 = [v5 objectAtIndexedSubscript:a1];
    v7 = [v6 timestamp];

    if (v7 >= a2)
    {
      break;
    }

    ++a1;
  }

  return a1;
}

unint64_t sub_1002B65C4(unint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;
  while (a1 < [v5 count])
  {
    v6 = [v5 objectAtIndexedSubscript:a1];
    v7 = [v6 timestamp];

    if (v7 > a2)
    {
      break;
    }

    ++a1;
  }

  return a1 - 1;
}

double CLKappaFeaturesAlgGolf::computeAccelFeatures(id *this, double a2, const CLKappaFeaturesAlgGolf::Window *a3)
{
  CLKappaFeaturesAlgGolf::computeWindowWeightedNorm(this, __p);
  v4 = CLKappaFeaturesAlgGolf::computeTBar(__p, this);
  CLKappaFeaturesAlgGolf::computeTauDs(__p, this, v4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v4;
}

void sub_1002B66E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CLKappaFeaturesAlgGolf::computeWindowWeightedNorm(id *this@<X0>, const void **a2@<X8>)
{
  v5 = *this;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v6 = this[6] - this[5] + 1;
  sub_1000223C0(a2, v6);
  v7 = this[5];
  if (v7 <= this[6])
  {
    do
    {
      v9 = [v5 objectAtIndexedSubscript:v7];
      v11 = CSAccelPeakDetectorResult::accelNorm(v9, v10);

      v12 = 1.0 / (exp((v11 + -10.0) * -2.0) + 1.0) * v11;
      v14 = a2[1];
      v13 = a2[2];
      if (v14 >= v13)
      {
        v15 = *a2;
        v16 = v14 - *a2;
        v17 = v16 >> 3;
        v18 = (v16 >> 3) + 1;
        if (v18 >> 61)
        {
          sub_10000CD24();
        }

        v19 = v13 - v15;
        if (v19 >> 2 > v18)
        {
          v18 = v19 >> 2;
        }

        if (v19 >= 0x7FFFFFFFFFFFFFF8)
        {
          v20 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v18;
        }

        if (v20)
        {
          sub_10000CDCC(a2, v20);
        }

        *(8 * v17) = v12;
        v8 = 8 * v17 + 8;
        memcpy(0, v15, v16);
        v21 = *a2;
        *a2 = 0;
        a2[1] = v8;
        a2[2] = 0;
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        *v14 = v12;
        v8 = (v14 + 1);
      }

      a2[1] = v8;
      ++v7;
    }

    while (v7 <= this[6]);
  }

  else
  {
    v8 = a2[1];
  }

  if (v6 != (v8 - *a2) >> 3)
  {
    if (qword_1004567F8 != -1)
    {
      sub_1002B8EE0();
    }

    v22 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_FAULT))
    {
      v23[0] = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_FAULT, "[GLF] weightedNorm size error", v23, 2u);
    }
  }
}

void sub_1002B6914(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

double CLKappaFeaturesAlgGolf::computeTBar(void *a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 40);
  if (v5 > *(a2 + 48))
  {
    goto LABEL_5;
  }

  v6 = 0.0;
  v7 = 0.0;
  do
  {
    v8 = [v4 objectAtIndexedSubscript:v5];
    v9 = [v8 timestamp] * 0.000001;

    v10 = *(*a1 - 8 * *(a2 + 40) + 8 * v5);
    v6 = v6 + v10 * v9;
    v7 = v7 + v10;
    ++v5;
  }

  while (v5 <= *(a2 + 48));
  if (v7 == 0.0)
  {
LABEL_5:
    if (qword_1004567F8 != -1)
    {
      sub_1002B8EE0();
    }

    v11 = qword_100456800;
    v12 = 0.0;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_FAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "[GLF] tBarDenominator is zero", v14, 2u);
    }
  }

  else
  {
    v12 = v6 / v7;
  }

  return v12;
}

double CLKappaFeaturesAlgGolf::computeTauDs(void *a1, uint64_t a2, double a3)
{
  v6 = *a2;
  v7 = *(a2 + 40);
  if (v7 > *(a2 + 48))
  {
    goto LABEL_5;
  }

  v8 = 0.0;
  v9 = 0.0;
  do
  {
    v10 = [v6 objectAtIndexedSubscript:v7];
    v11 = [v10 timestamp] * 0.000001;

    v12 = *(*a1 - 8 * *(a2 + 40) + 8 * v7);
    v8 = v8 + v12 * ((v11 - a3) * (v11 - a3));
    v9 = v9 + v12;
    ++v7;
  }

  while (v7 <= *(a2 + 48));
  if (v9 == 0.0)
  {
LABEL_5:
    if (qword_1004567F8 != -1)
    {
      sub_1002B8EE0();
    }

    v13 = qword_100456800;
    v14 = 0.0;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_FAULT))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "[GLF] tauDsDenominator is zero", v16, 2u);
    }
  }

  else
  {
    v14 = sqrt(v8 / v9);
  }

  return v14;
}

void CLKappaFeaturesAlgGolf::WindowCrownOrientation::push(CLKappaFeaturesAlgGolf::WindowCrownOrientation *this, float32x4_t *a2)
{
  v11.i32[0] = CLKappaFeaturesAlgGolf::WindowCrownOrientation::crownFromDM(a2, a2);
  v11.i32[1] = v3;
  v12 = v4;
  sub_1002B6D40(this, &v11);
  if (*(this + 1) - *this == 12)
  {
    v11 = 0;
    v12 = 0.0;
  }

  else
  {
    *this;
    v5 = *(this + 1);
    v6 = *(v5 - 20);
    v7.i32[0] = vdup_lane_s32(v6, 1).u32[0];
    v7.i32[1] = *(v5 - 24);
    v8 = *(v5 - 8);
    v9.i32[0] = vdup_lane_s32(v8, 1).u32[0];
    v9.i32[1] = *(v5 - 12);
    v11 = vmla_f32(vmul_f32(v8, vneg_f32(v7)), v9, v6);
    v12 = (v7.f32[1] * v8.f32[0]) - (v6.f32[0] * v9.f32[1]);
  }

  sub_1002B6D40(this + 3, &v11);
  if (*(this + 1) - *this != *(this + 4) - *(this + 3))
  {
    if (qword_1004567F8 != -1)
    {
      sub_1002B8EF4();
    }

    v10 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_FAULT))
    {
      v11.i16[0] = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "[GLF] crown buffer size mismatch", &v11, 2u);
    }
  }
}

void sub_1002B6D40(uint64_t *a1, uint64_t *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 2);
    v9 = v8 + 1;
    if (v8 + 1 > 0x1555555555555555)
    {
      sub_10000CD24();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0xAAAAAAAAAAAAAAALL)
    {
      v11 = 0x1555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_100022744(a1, v11);
    }

    v12 = 12 * v8;
    v13 = *a2;
    *(v12 + 8) = *(a2 + 2);
    *v12 = v13;
    v7 = 12 * v8 + 12;
    v14 = *a1;
    v15 = a1[1];
    v16 = 12 * v8 + *a1 - v15;
    if (*a1 != v15)
    {
      v17 = 12 * v8 + *a1 - v15;
      do
      {
        v18 = *v14;
        *(v17 + 8) = v14[2];
        *v17 = v18;
        v17 += 12;
        v14 += 3;
      }

      while (v14 != v15);
      v14 = *a1;
    }

    *a1 = v16;
    a1[1] = v7;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 8) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 12;
  }

  a1[1] = v7;
}

float CLKappaFeaturesAlgGolf::WindowCrownOrientation::crownFromDM(float32x4_t *this, const DMSample *a2)
{
  v6 = *this;
  CMOQuaternion::normalize(&v6, v6);
  v4 = 1065353216;
  v5 = 0;
  CMOQuaternion::rotationMatrixTranspose(&v6, v3);
  return sub_1002AC2D0(v3, &v4);
}

void CLKappaFeaturesAlgGolf::computeWindowCrownOrientation(id *this@<X0>, __int128 *a2@<X8>)
{
  v5 = this[1];
  *a2 = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *(a2 + 6) = *this;
  *(a2 + 7) = this[1];
  v6 = *(this + 4);
  a2[6] = *(this + 3);
  a2[7] = v6;
  a2[8] = *(this + 5);
  v7 = *(this + 2);
  a2[4] = *(this + 1);
  a2[5] = v7;
  v8 = 0uLL;
  v9 = this[8];
  if (v9 <= this[9])
  {
    do
    {
      v10 = [v5 objectAtIndexedSubscript:{v9, *&v8}];
      CLKappaFeaturesAlgGolf::WindowCrownOrientation::push(a2, [v10 c_struct]);

      ++v9;
    }

    while (v9 <= this[9]);
    v8 = *a2;
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  sub_1002B84F8(&v14, v8, *(&v8 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v8 + 1) - v8) >> 2));
  v11 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v14) >> 2);
  v12 = this[9] - this[8] + 1;
  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  if (v11 != v12)
  {
    if (qword_1004567F8 != -1)
    {
      sub_1002B8EF4();
    }

    v13 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "[GLF] error building windowCrownOrientation", &v14, 2u);
    }
  }
}

void sub_1002B7040(_Unwind_Exception *a1)
{
  sub_1002B7068(v2);

  _Unwind_Resume(a1);
}

uint64_t sub_1002B7068(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

double CLKappaFeaturesAlgGolf::computeSufficientSwing(void *a1)
{
  v1 = 0;
  v2 = a1[14];
  v3 = a1[15];
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  if (v2 <= v3)
  {
    v10 = a1[13];
    v11 = (a1[3] + 8);
    v8 = 0.0;
    v9 = 0.0;
    do
    {
      v12 = *(v11 - 2);
      v13 = *v11;
      v11 += 3;
      v14 = v13;
      v15 = COERCE_DOUBLE(vadd_f32(v12, *&v9));
      v16 = v13 + v6;
      v17 = COERCE_DOUBLE(vadd_f32(v12, *&v8));
      v18 = v13 + v7;
      if (v2 <= v10)
      {
        v7 = v18;
        v8 = v17;
      }

      else
      {
        v6 = v16;
      }

      if (v2 > v10)
      {
        v9 = v15;
      }

      v1 = vadd_f32(v12, v1);
      v5 = v14 + v5;
      ++v2;
    }

    while (v2 <= v3);
  }

  v19 = 0;
  v33 = v8;
  v34 = v7;
  v31 = v9;
  v32 = v6;
  v29 = v1;
  v30 = v5;
  v35 = v8;
  v36 = v7;
  do
  {
    v4 = v4 + (*(&v35 + v19) * *(&v35 + v19));
    v19 += 4;
  }

  while (v19 != 12);
  v20 = 0;
  v35 = v9;
  v21 = 0.0;
  v36 = v6;
  do
  {
    v21 = v21 + (*(&v35 + v20) * *(&v35 + v20));
    v20 += 4;
  }

  while (v20 != 12);
  v22 = 0;
  v23 = 0.0;
  do
  {
    v23 = v23 + (*(&v33 + v22) * *(&v33 + v22));
    v22 += 4;
  }

  while (v22 != 12);
  v24 = 0;
  v25 = 0.0;
  do
  {
    v25 = v25 + (*(&v31 + v24) * *(&v31 + v24));
    v24 += 4;
  }

  while (v24 != 12);
  v26 = 0;
  v27 = 0.0;
  do
  {
    v27 = v27 + (v29.f32[v26] * v29.f32[v26]);
    ++v26;
  }

  while (v26 != 3);
  return sqrtf(v23) * 57.2957795;
}

double CLKappaFeaturesAlgGolf::computePlanarity@<D0>(CLKappaFeaturesAlgGolf *this@<X0>, double *a2@<X8>)
{
  v54 = 0;
  v55 = 0;
  v5 = *this;
  v6 = 12 * (*(this + 13) - *(this + 14)) + 12;
  v51 = 0;
  v52 = 0;
  __p = 0;
  sub_1002B84F8(&__p, v5, v6 + v5, 0xAAAAAAAAAAAAAAABLL * (v6 >> 2));
  v7 = sub_1002B75A4(&__p, &v54, v53);
  v9 = v8;
  v11 = v10;
  v12 = *this;
  v13 = 12 * (*(this + 13) - *(this + 14)) + 12;
  v48 = 0;
  v49 = 0;
  v47 = 0;
  sub_1002B84F8(&v47, v12, v13 + v12, 0xAAAAAAAAAAAAAAABLL * (v13 >> 2));
  v14 = v47;
  v15 = v48;
  if (v47)
  {
    v48 = v47;
    operator delete(v47);
  }

  if (__p)
  {
    v51 = __p;
    operator delete(__p);
  }

  v16 = *(this + 1);
  v17 = *this + 12 * (*(this + 13) - *(this + 14)) + 12;
  v51 = 0;
  v52 = 0;
  __p = 0;
  sub_1002B84F8(&__p, v17, v16, 0xAAAAAAAAAAAAAAABLL * ((v16 - v17) >> 2));
  v18 = sub_1002B75A4(&__p, &v54, v53);
  v20 = v19;
  v22 = v21;
  v23 = *(this + 1);
  v24 = *this + 12 * (*(this + 13) - *(this + 14)) + 12;
  v48 = 0;
  v49 = 0;
  v47 = 0;
  sub_1002B84F8(&v47, v24, v23, 0xAAAAAAAAAAAAAAABLL * ((v23 - v24) >> 2));
  v46 = v9;
  v25 = v47;
  v26 = v48;
  if (v47)
  {
    v48 = v47;
    operator delete(v47);
  }

  v27 = v11;
  v28 = v7;
  if (__p)
  {
    v51 = __p;
    operator delete(__p);
  }

  v29 = *this;
  v30 = *(this + 1);
  v31 = 0xAAAAAAAAAAAAAAABLL * ((v30 - *this) >> 2);
  v51 = 0;
  v52 = 0;
  __p = 0;
  sub_1002B84F8(&__p, v29, v30, v31);
  v32 = sub_1002B75A4(&__p, &v54, v53);
  v34 = v33;
  v36 = v35;
  v37 = *this;
  v38 = *(this + 1);
  v39 = 0xAAAAAAAAAAAAAAABLL * ((v38 - *this) >> 2);
  v48 = 0;
  v49 = 0;
  v47 = 0;
  sub_1002B84F8(&v47, v37, v38, v39);
  v40 = v47;
  v41 = v48;
  if (v47)
  {
    v48 = v47;
    operator delete(v47);
  }

  if (__p)
  {
    v51 = __p;
    operator delete(__p);
  }

  v42 = (0xAAAAAAAAAAAAAAABLL * ((v26 - v25) >> 2));
  v43 = (0xAAAAAAAAAAAAAAABLL * ((v15 - v14) >> 2));
  v44 = (0xAAAAAAAAAAAAAAABLL * ((v41 - v40) >> 2));
  *a2 = (v28 / v43);
  a2[1] = (v18 / v42);
  a2[2] = (v32 / v44);
  a2[3] = (v46 / v43);
  a2[4] = (v20 / v42);
  a2[5] = (v34 / v44);
  a2[6] = (v27 / v43);
  a2[7] = (v22 / v42);
  result = (v36 / v44);
  a2[8] = result;
  return result;
}

void sub_1002B7574(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float sub_1002B75A4(uint64_t *a1, float32x2_t *a2, uint64_t a3)
{
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v4 = *a1;
  if (a1[1] != *a1)
  {
    v7 = 0;
    do
    {
      v8 = (v4 + 12 * v7);
      v9 = v8[1].f32[0] - a2[1].f32[0];
      v20 = vsub_f32(*v8, *a2);
      v21 = v9;
      sub_1002B876C(&v20, v18);
      for (i = 0; i != 9; ++i)
      {
        *(&v15 + i) = sub_1002AD72C(v18, i) + *(&v15 + i);
      }

      ++v7;
      v4 = *a1;
    }

    while (v7 < 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2));
  }

  v18[0] = v15;
  v18[1] = v16;
  v19 = v17;
  sub_1002B87F4(v18, a3);
  v20 = __PAIR64__(v12, v11);
  v21 = v13;
  *&v18[0] = &v20;
  *(&v18[0] + 1) = a3;
  sub_1002B8DBC(v18, 0, 1uLL);
  sub_1002B8DBC(v18, 0, 2uLL);
  sub_1002B8DBC(v18, 1uLL, 2uLL);
  return *&v20;
}

void *CLKappaFeaturesAlgGolf::computeOrientation(void *result)
{
  v1 = result[16];
  v2 = result[17];
  v3 = 0.0;
  if (v1 <= v2)
  {
    v4 = (12 * v1 - 12 * result[14] + *result + 8);
    do
    {
      v5 = *v4;
      v4 += 3;
      v6 = fabsf(v5);
      if (v3 < v6)
      {
        v3 = v6;
      }

      ++v1;
    }

    while (v1 <= v2);
  }

  return result;
}

void CLKappaFeaturesAlgGolf::computeDMFeatures(id *this@<X0>, uint64_t a2@<X8>)
{
  CLKappaFeaturesAlgGolf::computeWindowCrownOrientation(this, v12);
  *a2 = CLKappaFeaturesAlgGolf::computeSufficientSwing(v12);
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  CLKappaFeaturesAlgGolf::computePlanarity(v12, (a2 + 32));
  v7 = v18;
  v8 = 0.0;
  if (v18 <= v19)
  {
    v9 = (v12[0] + 12 * v18 - 12 * v17 + 8);
    do
    {
      v10 = *v9;
      v9 += 3;
      v11 = fabsf(v10);
      if (v8 < v11)
      {
        v8 = v11;
      }

      ++v7;
    }

    while (v7 <= v19);
  }

  *(a2 + 104) = v8;

  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  if (v12[0])
  {
    v12[1] = v12[0];
    operator delete(v12[0]);
  }
}

void CLKappaFeaturesAlgGolf::epochFinalize(CLKappaFeaturesAlgGolf *this, uint64_t a2)
{
  v4 = *(*(this + 6) + 24);
  v5 = *(*(this + 6) + 72);
  CSAccelPeakDetectorResult::detectPeaks(v4, v68, *(*(this + 4) + 16), *(*(this + 4) + 24));
  v51 = a2;
  v6 = *(this + 6);
  v7 = v6[2];
  if (v7 == -1)
  {
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v8 = *(*(this + 6) + 8) * v7;
    v9 = v8 + *v6;
  }

  v10 = v4;
  v11 = v5;
  v60 = v10;
  v61 = v11;
  v62 = v8;
  v63 = v9;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v13 = v69;
  v12 = v70;
  v14 = v70 - v69;
  if ((v70 - v69) >= 5)
  {
    v15 = 0;
    do
    {
      if (v71[v15 + 1] < v71[v15])
      {
        if (qword_1004567F8 != -1)
        {
          sub_1002B8EF4();
        }

        v16 = qword_100456800;
        if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "[GLF] peak timestamps are not in increasing order", buf, 2u);
        }

        v13 = v69;
        v12 = v70;
      }

      ++v15;
      v14 = v12 - v13;
    }

    while (v15 + 1 < (v12 - v13));
  }

  if (v12 == v13)
  {
    v46 = v14 >> 2;
    v48 = v10;
    v47 = v11;
  }

  else
  {
    v17 = 0;
    do
    {
      v18 = v71[v17];
      v20 = v62;
      v19 = v63;
      v21 = CLKappaFeaturesAlgGolf::Window::sufficientData(&v60, v18);
      v22 = v20 > v18 - 1000000 || v18 + 1000000 >= v19;
      v23 = !v22;
      if ((v23 & v21) == 1)
      {
        CLKappaFeaturesAlgGolf::Window::scrollToPeakTimestamp(&v60, v71[v17]);
        CLKappaFeaturesAlgGolf::computeAccelFeatures(&v60, v69[v17], v24);
        v26 = v25;
        v28 = v27;
        CLKappaFeaturesAlgGolf::computeDMFeatures(&v60, buf);
        v29 = *(this + 4);
        if (v28 >= *(v29 + 32) && v26 <= *(v29 + 40) && *buf >= *(v29 + 48) && v53 >= *(v29 + 56) && v54 >= *(v29 + 64) && v55 >= *(v29 + 96) && v56 >= *(v29 + 72) && v57 >= *(v29 + 80) && v58 >= *(v29 + 88))
        {
          v30 = *(v29 + 104);
          v31 = v59 < v30;
          *(v29 + 144) |= v59 >= v30;
          if (!v31)
          {
            v33 = *(v29 + 128);
            v32 = *(v29 + 136);
            if (v33 >= v32)
            {
              v35 = *(v29 + 120);
              v36 = v33 - v35;
              v37 = (v33 - v35) >> 3;
              v38 = v37 + 1;
              if ((v37 + 1) >> 61)
              {
                sub_10000CD24();
              }

              v39 = v32 - v35;
              if (v39 >> 2 > v38)
              {
                v38 = v39 >> 2;
              }

              v22 = v39 >= 0x7FFFFFFFFFFFFFF8;
              v40 = 0x1FFFFFFFFFFFFFFFLL;
              if (!v22)
              {
                v40 = v38;
              }

              if (v40)
              {
                sub_10000CDCC(v29 + 120, v40);
              }

              v41 = v37;
              v42 = (8 * v37);
              v43 = &v42[-v41];
              *v42 = v18;
              v34 = v42 + 1;
              v44 = v43;
              memcpy(v43, v35, v36);
              v45 = *(v29 + 120);
              *(v29 + 120) = v44;
              *(v29 + 128) = v34;
              *(v29 + 136) = 0;
              if (v45)
              {
                operator delete(v45);
              }
            }

            else
            {
              *v33 = v18;
              v34 = v33 + 1;
            }

            *(v29 + 128) = v34;
          }
        }
      }

      ++v17;
      v46 = v70 - v69;
    }

    while (v46 > v17);
    v48 = v60;
    v47 = v61;
  }

  v49 = *(this + 4);
  v49[14] = v51;
  v50 = (v49[16] - v49[15]) >> 3;
  v49[19] = v46;
  v49[20] = v50;

  if (v71)
  {
    v72 = v71;
    operator delete(v71);
  }

  if (v69)
  {
    v70 = v69;
    operator delete(v69);
  }
}

void sub_1002B7C0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, void *a29)
{
  sub_100035E48((v30 - 168));

  _Unwind_Resume(a1);
}

void sub_1002B7CD4(CLKappaAlgBlock *this)
{
  *this = off_10042B690;
  *(this + 8) = off_10042B950;
  *(this + 9) = off_10042BA98;
  *(this + *(*this - 176)) = off_10042BB88;
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

  CLKappaAlgBlock::~CLKappaAlgBlock(this, off_10042BBE0);
}

void sub_1002B7DD0(CLKappaAlgBlock *this)
{
  *this = off_10042B690;
  *(this + 8) = off_10042B950;
  *(this + 9) = off_10042BA98;
  *(this + 10) = off_10042BB88;
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

  CLKappaAlgBlock::~CLKappaAlgBlock(this, off_10042BBE0);

  operator delete();
}

void sub_1002B7EB4(uint64_t a1, uint64_t *a2)
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

void sub_1002B7EE0(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_10042B690;
  *(v1 + 8) = off_10042B950;
  *(v1 + 9) = off_10042BA98;
  *(v1 + 10) = off_10042BB88;
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

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_10042BBE0);
}

void sub_1002B7FC4(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_10042B690;
  *(v1 + 8) = off_10042B950;
  *(v1 + 9) = off_10042BA98;
  *(v1 + 10) = off_10042BB88;
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

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_10042BBE0);

  operator delete();
}

void sub_1002B80BC(void *a1, uint64_t *a2)
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

void sub_1002B80FC(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_10042B690;
  *(v1 + 8) = off_10042B950;
  *(v1 + 9) = off_10042BA98;
  *(v1 + 10) = off_10042BB88;
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

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_10042BBE0);
}

void sub_1002B81E0(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_10042B690;
  *(v1 + 8) = off_10042B950;
  *(v1 + 9) = off_10042BA98;
  *(v1 + 10) = off_10042BB88;
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

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_10042BBE0);

  operator delete();
}

void sub_1002B82D8(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_10042B690;
  *(v1 + 8) = off_10042B950;
  *(v1 + 9) = off_10042BA98;
  *(v1 + 10) = off_10042BB88;
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

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_10042BBE0);
}

void sub_1002B83BC(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_10042B690;
  *(v1 + 8) = off_10042B950;
  *(v1 + 9) = off_10042BA98;
  *(v1 + 10) = off_10042BB88;
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

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_10042BBE0);

  operator delete();
}

void sub_1002B84B4(id a1)
{
  qword_100456800 = os_log_create("com.apple.anomalydetectiond", "Alg");

  _objc_release_x1();
}

uint64_t sub_1002B84F8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1002B8578(result, a4);
  }

  return result;
}

void sub_1002B855C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002B8578(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    sub_100022744(a1, a2);
  }

  sub_10000CD24();
}

double sub_1002B8620(uint64_t a1)
{
  result = 0.0;
  *(a1 + 8) = 0u;
  *a1 = off_10042C268;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 24) = off_100419AF8;
  *(a1 + 40) = xmmword_1003BEE20;
  *(a1 + 56) = xmmword_1003BEE30;
  *(a1 + 72) = xmmword_1003BEE40;
  *(a1 + 88) = xmmword_1003BEE50;
  *(a1 + 104) = xmmword_1003BEE60;
  *(a1 + 120) = xmmword_1003BEE70;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  return result;
}

void sub_1002B86F0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10042C268;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

float *sub_1002B876C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  for (i = 0; i != 3; ++i)
  {
    for (j = 0; j != 3; ++j)
    {
      v6 = sub_10002247C(a1, i);
      v7 = v6 * sub_10002247C(a1, j);
      result = sub_1002AD228(a2, i, j);
      *result = v7;
    }
  }

  return result;
}

float *sub_1002B87F4(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  do
  {
    *sub_1002AD228(a2, v4, v4) = 1065353216;
    v5 = *sub_1002AD228(a1, v4, v4);
    *sub_1000204F0(&v68, v4) = v5;
    v6 = *sub_1002AD228(a1, v4, v4);
    *sub_1000204F0(&v66, v4) = v6;
    *sub_1000204F0(&v64, v4++) = 0;
  }

  while (v4 != 3);
  v7 = 0;
  do
  {
    v8 = 0;
    v9 = 1;
    v10 = 0.0;
    do
    {
      v11 = v9;
      v12 = v8 + 1;
      do
      {
        result = sub_1002AD228(a1, v8, v12);
        v14 = *result;
        if (*result < 0.0)
        {
          v14 = -*result;
        }

        v10 = v10 + v14;
        ++v12;
      }

      while (v12 != 3);
      v9 = 0;
      v8 = 1;
    }

    while ((v11 & 1) != 0);
    if (v10 == 0.0)
    {
      break;
    }

    v15 = 0.0;
    if (v7 <= 2)
    {
      v15 = (v10 * 0.2) / 9.0;
    }

    v16 = 0;
    v17 = 0;
    v63 = v7 + 1;
    v18 = 1;
    do
    {
      v19 = v18;
      v20 = v17 + 1;
      do
      {
        v21 = sub_1002AD228(a1, v17, v20);
        v22 = *v21;
        if (*v21 < 0.0)
        {
          v22 = -*v21;
        }

        v23 = v22 * 100.0;
        if (v7 < 4)
        {
          goto LABEL_31;
        }

        v24 = sub_1000204F0(&v68, v17);
        v25 = v23 + *v24;
        if (v25 >= 0.0)
        {
          v26 = v23 + *v24;
        }

        else
        {
          v26 = -v25;
        }

        v27 = sub_1000204F0(&v68, v17);
        v28 = *v27;
        if (*v27 < 0.0)
        {
          v28 = -*v27;
        }

        if (v26 != v28)
        {
          goto LABEL_31;
        }

        v29 = sub_1000204F0(&v68, v20);
        v30 = v23 + *v29;
        if (v30 >= 0.0)
        {
          v31 = v23 + *v29;
        }

        else
        {
          v31 = -v30;
        }

        v32 = sub_1000204F0(&v68, v20);
        v33 = *v32;
        if (*v32 < 0.0)
        {
          v33 = -*v32;
        }

        if (v31 == v33)
        {
          result = sub_1002AD228(a1, v17, v20);
          *result = 0.0;
        }

        else
        {
LABEL_31:
          result = sub_1002AD228(a1, v17, v20);
          v34 = *result;
          if (*result < 0.0)
          {
            v34 = -*result;
          }

          if (v34 > v15)
          {
            v35 = *sub_1000204F0(&v68, v20);
            v36 = v35 - *sub_1000204F0(&v68, v17);
            v37 = v23 + v36;
            if ((v23 + v36) < 0.0)
            {
              v37 = -(v23 + v36);
            }

            v38 = -v36;
            if (v36 >= 0.0)
            {
              v38 = v36;
            }

            if (v37 == v38)
            {
              v39 = *sub_1002AD228(a1, v17, v20) / v36;
            }

            else
            {
              v40 = sub_1002AD228(a1, v17, v20);
              v41 = (v36 * 0.5) / *v40;
              v42 = -v41;
              v43 = v41 < 0.0;
              if (v41 >= 0.0)
              {
                v42 = (v36 * 0.5) / *v40;
              }

              v44 = 1.0 / (v42 + sqrtf((v41 * v41) + 1.0));
              if (v43)
              {
                v39 = -v44;
              }

              else
              {
                v39 = v44;
              }
            }

            v45 = 1.0 / sqrtf((v39 * v39) + 1.0);
            v46 = v39 * v45;
            v47 = (v39 * v45) / (v45 + 1.0);
            v48 = v39 * *sub_1002AD228(a1, v17, v20);
            v49 = sub_1000204F0(&v64, v17);
            *v49 = *v49 - v48;
            v50 = sub_1000204F0(&v64, v20);
            *v50 = v48 + *v50;
            v51 = sub_1000204F0(&v68, v17);
            *v51 = *v51 - v48;
            v52 = sub_1000204F0(&v68, v20);
            *v52 = v48 + *v52;
            *sub_1002AD228(a1, v17, v20) = 0;
            if (v16)
            {
              v53 = *(a1 + 12);
              v54 = sub_1002AD228(a1, 0, v20);
              v55 = *v54;
              *(a1 + 12) = v53 - (v46 * (*v54 + (v53 * v47)));
              *sub_1002AD228(a1, 0, v20) = v55 + (v46 * (v53 - (v55 * v47)));
            }

            if (v17 + 1 < v20)
            {
              do
              {
                v56 = *sub_1002AD228(a1, v17, 1uLL);
                v57 = *(a1 + 28);
                *sub_1002AD228(a1, v17, 1uLL) = v56 + (-v46 * (v57 + (v56 * v47)));
                *(a1 + 28) = v57 + (v46 * (v56 - (v57 * v47)));
              }

              while (v20 > 2);
            }

            if (v20 != 2)
            {
              v58 = *sub_1002AD228(a1, v17, 2uLL);
              v59 = *sub_1002AD228(a1, v20, 2uLL);
              *sub_1002AD228(a1, v17, 2uLL) = v58 - (v46 * (v59 + (v58 * v47)));
              *sub_1002AD228(a1, v20, 2uLL) = v59 + (v46 * (v58 - (v59 * v47)));
            }

            for (i = 0; i != 3; ++i)
            {
              v61 = *sub_1002AD228(a2, i, v17);
              v62 = *sub_1002AD228(a2, i, v20);
              *sub_1002AD228(a2, i, v17) = v61 + (-v46 * (v62 + (v61 * v47)));
              result = sub_1002AD228(a2, i, v20);
              *result = v62 + (v46 * (v61 - (v62 * v47)));
            }
          }
        }

        ++v20;
      }

      while (v20 != 3);
      v18 = 0;
      v16 = 1;
      v17 = 1;
    }

    while ((v19 & 1) != 0);
    v66 = vadd_f32(v64, v66);
    v67 = v65 + v67;
    v68 = v66;
    v69 = v67;
    v65 = 0.0;
    v64 = 0;
    ++v7;
  }

  while (v63 != 10);
  return result;
}

int *sub_1002B8DBC(uint64_t *a1, unint64_t a2, unint64_t a3)
{
  v6 = *sub_1000204F0(*a1, a2);
  result = sub_1000204F0(*a1, a3);
  if (v6 < *result)
  {
    v8 = sub_1000204F0(*a1, a2);
    v9 = sub_1000204F0(*a1, a3);
    v10 = *v8;
    *v8 = *v9;
    *v9 = v10;
    v11 = sub_1002AD228(a1[1], 0, a2);
    v12 = sub_1002AD228(a1[1], 0, a3);
    v13 = *v11;
    *v11 = *v12;
    *v12 = v13;
    v14 = sub_1002AD228(a1[1], 1uLL, a2);
    v15 = sub_1002AD228(a1[1], 1uLL, a3);
    v16 = *v14;
    *v14 = *v15;
    *v15 = v16;
    v17 = sub_1002AD228(a1[1], 2uLL, a2);
    result = sub_1002AD228(a1[1], 2uLL, a3);
    v18 = *v17;
    *v17 = *result;
    *result = v18;
  }

  return result;
}

void sub_1002B8F1C()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    CFAbsoluteTimeGetCurrent();
    sub_1002AD78C();
    sub_1002AD750();
    sub_1002AD770(&_mh_execute_header, &_os_log_default, v0, "ERROR,Die,Time,%.3f,Function,%s,invalid index %zu >= %zu\n", v1, v2, v3, v4, v5);
  }

  __assert_rtn("operator[]", "CMVector.h", 271, "false");
}

void sub_1002B8FC8()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    CFAbsoluteTimeGetCurrent();
    sub_1002AD78C();
    sub_1002AD750();
    sub_1002AD770(&_mh_execute_header, &_os_log_default, v0, "ERROR,Die,Time,%.3f,Function,%s,invalid index %zu >= %zu\n", v1, v2, v3, v4, v5);
  }

  __assert_rtn("operator[]", "CMVector.h", 277, "false");
}

void sub_1002B9074()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    CFAbsoluteTimeGetCurrent();
    sub_1002AD78C();
    sub_1002AD750();
    sub_1002AD770(&_mh_execute_header, &_os_log_default, v0, "ERROR,Die,Time,%.3f,Function,%s,invalid col %zu > %zu\n", v1, v2, v3, v4, v5);
  }

  __assert_rtn("operator()", "CMMatrix.h", 71, "false");
}

void sub_1002B9120()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    CFAbsoluteTimeGetCurrent();
    sub_1002AD78C();
    sub_1002AD750();
    sub_1002AD770(&_mh_execute_header, &_os_log_default, v0, "ERROR,Die,Time,%.3f,Function,%s,invalid row %zu > %zu\n", v1, v2, v3, v4, v5);
  }

  __assert_rtn("operator()", "CMMatrix.h", 70, "false");
}

void sub_1002B91CC()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    CFAbsoluteTimeGetCurrent();
    sub_1002AD78C();
    sub_1002AD750();
    sub_1002AD770(&_mh_execute_header, &_os_log_default, v0, "ERROR,Die,Time,%.3f,Function,%s,invalid col %zu > %zu\n", v1, v2, v3, v4, v5);
  }

  __assert_rtn("operator()", "CMMatrix.h", 78, "false");
}

void sub_1002B9278()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    CFAbsoluteTimeGetCurrent();
    sub_1002AD78C();
    sub_1002AD750();
    sub_1002AD770(&_mh_execute_header, &_os_log_default, v0, "ERROR,Die,Time,%.3f,Function,%s,invalid row %zu > %zu\n", v1, v2, v3, v4, v5);
  }

  __assert_rtn("operator()", "CMMatrix.h", 77, "false");
}

void sub_1002B9324()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    CFAbsoluteTimeGetCurrent();
    sub_1002AD78C();
    sub_1002AD770(&_mh_execute_header, &_os_log_default, v0, "ERROR,Die,Time,%.3f,Function,%s,invalid element %zu >= %zu\n", v1, v2, v3, v4, v5);
  }

  __assert_rtn("operator[]", "CMMatrix.h", 84, "false");
}

uint64_t CLKappaFeaturesAlgLackOfMotionResult::reset(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 12) = 0;
  *(this + 60) = 0;
  *(this + 64) = 0;
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 32) = 0;
  *(this + 56) = 0;
  *(this + 72) = 0;
  *(this + 80) = 0;
  *(this + 85) = 0;
  return this;
}

void CLKappaFeaturesAlgLackOfMotionResult::logInternal(CLKappaFeaturesAlgLackOfMotionResult *this, int a2)
{
  if (a2)
  {
    if (qword_1004567F8 != -1)
    {
      sub_1002BAD84();
    }

    v3 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(this + 4);
      v5 = *(this + 5);
      v6 = *(this + 12);
      v7 = *(this + 13);
      v8 = *(this + 56);
      v9 = *(this + 57);
      v10 = *(this + 15);
      v11 = *(this + 16);
      v12 = *(this + 4);
      v13 = *(this + 5);
      v14 = *(this + 6);
      v16 = *(this + 9);
      v15 = *(this + 10);
      v17 = *(this + 7);
      v18 = *(this + 22);
      v19 = *(this + 92);
      v20 = 134353664;
      v21 = v4;
      v22 = 2050;
      v23 = v5;
      v24 = 1026;
      v25 = v6;
      v26 = 1026;
      v27 = v7;
      v28 = 1026;
      v29 = v8;
      v30 = 1026;
      v31 = v9;
      v32 = 1026;
      v33 = v10;
      v34 = 1026;
      v35 = v11;
      v36 = 2050;
      v37 = v12;
      v38 = 2050;
      v39 = v13;
      v40 = 2050;
      v41 = v14;
      v42 = 2050;
      v43 = v17;
      v44 = 2050;
      v45 = v16;
      v46 = 2050;
      v47 = v15;
      v48 = 2050;
      v49 = v15 * 0.000001;
      v50 = 2050;
      v51 = v18;
      v52 = 2050;
      v53 = (v18 / 0.44704);
      v54 = 1026;
      v55 = v19;
      v56 = 1026;
      v57 = 1;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[LOM] summary,A,%{public}llu,B,%{public}llu,C,%{public}i,D,%{public}i,E,%{public}d,F,%{public}d,G,%{public}d,H,%{public}d,config-1,%{public}f,config-2,%{public}f,config-3,%{public}f,config-4,%{public}f,debug-1,%{public}llu,debug-2,%{public}llu,debug-3,%{public}f,debug-4,%{public}f,debug-5,%{public}f,debug-6,%{public}d,debug-7,%{public}d\n", &v20, 0xA0u);
    }
  }
}

void CLKappaFeaturesAlgLackOfMotion::CLKappaFeaturesAlgLackOfMotion(CLKappaFeaturesAlgLackOfMotion *this, uint64_t *a2)
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
  *(this + 8) = 0xA00000000;
  *(this + 14) = 0xA00000000;
  *(this + 17) = 0;
  *(this + 72) = 0;
  *(this + 37) = 0;
  *(this + 38) = 0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  operator new();
}

void sub_1002B98C8(_Unwind_Exception *a1)
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

char **sub_1002B98FC@<X0>(uint64_t a1@<X0>, char ***a2@<X8>)
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

void CLKappaFeaturesAlgLackOfMotion::CLKappaFeaturesAlgLackOfMotion(CLKappaFeaturesAlgLackOfMotion *this)
{
  *this = off_100411FE8;
  *(this + 22) = off_100412090;
  *(this + 23) = off_100412158;
  *(this + 24) = off_100412210;
  CLKappaAlgBlock::CLKappaAlgBlock(this, off_10042C8A8);
  *v1 = off_10042C358;
  *(v1 + 168) = 0;
  *(v1 + 176) = off_10042C618;
  *(v1 + 184) = off_10042C760;
  *(v1 + 192) = off_10042C850;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0xA00000000;
  *(v1 + 112) = 0xA00000000;
  *(v1 + 136) = 0;
  *(v1 + 144) = 0;
  *(v1 + 148) = 0;
  *(v1 + 152) = 0;
  *(v1 + 160) = 0;
  operator new();
}

void sub_1002B9C0C(_Unwind_Exception *a1)
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

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_10042C8A8);
  _Unwind_Resume(a1);
}

void CLKappaFeaturesAlgLackOfMotion::resetConfiguration(CLKappaFeaturesAlgLackOfMotion *this)
{
  v22 = [CSPersistentConfiguration configBaseKey:"FeaturesAlgLOMConfig" forFeatureMode:*(this + 24)];
  v2 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v3) = 1106925439;
  LODWORD(v4) = 1091505517;
  LODWORD(v5) = 1074728301;
  [v2 algorithmThresholdNumber:0 inArrayForKey:v22 withMinValue:v5 maxValue:v3 defaultValue:v4];
  LODWORD(v23) = v6;

  v7 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v8) = 1027021677;
  LODWORD(v9) = 1087804452;
  LODWORD(v10) = 1074728301;
  [v7 algorithmThresholdNumber:1 inArrayForKey:v22 withMinValue:v8 maxValue:v9 defaultValue:v10];
  DWORD1(v23) = v11;

  v12 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v13) = 1138722042;
  LODWORD(v14) = 1076603318;
  LODWORD(v15) = 1074728301;
  [v12 algorithmThresholdNumber:2 inArrayForKey:v22 withMinValue:v15 maxValue:v13 defaultValue:v14];
  DWORD2(v23) = v16;

  v17 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v18) = 1027021677;
  LODWORD(v19) = 1087804452;
  LODWORD(v20) = 1074728301;
  [v17 algorithmThresholdNumber:3 inArrayForKey:v22 withMinValue:v18 maxValue:v19 defaultValue:v20];
  HIDWORD(v23) = v21;

  CLKappaFeaturesAlgLackOfMotion::setConfig(this, &v23);
}

double CLKappaFeaturesAlgLackOfMotion::setConfig(uint64_t a1, _OWORD *a2)
{
  *(*(a1 + 32) + 16) = *a2;
  if (qword_1004567F8 != -1)
  {
    sub_1002BAD84();
  }

  v3 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 32);
    v6 = v5[4];
    v7 = v5[5];
    v8 = v5[6];
    v9 = v5[7];
    v10 = 134218752;
    v11 = v6;
    v12 = 2048;
    v13 = v7;
    v14 = 2048;
    v15 = v8;
    v16 = 2048;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[LOM] config, ,%f, %f, %f, %f", &v10, 0x2Au);
  }

  return result;
}

uint64_t CLKappaFeaturesAlgLackOfMotion::resetCounters(uint64_t this)
{
  *(this + 144) = 0;
  *(this + 148) = 0;
  *(this + 152) = 0;
  return this;
}

uint64_t CLKappaFeaturesAlgLackOfMotion::reset(CLKappaFeaturesAlgLackOfMotion *this)
{
  result = (*(**(this + 4) + 24))(*(this + 4));
  *(this + 72) = 0;
  *(this + 37) = 0;
  *(this + 38) = 0;
  v3 = *(this + 17);
  *(this + 20) = v3;
  *(this + 21) = v3;
  return result;
}

void CLKappaFeaturesAlgLackOfMotion::fillGapsAsRequiredUpToTimestamp(CLKappaFeaturesAlgLackOfMotion *this, unint64_t a2)
{
  if (*(this + 20) == *(this + 17))
  {
    *(this + 20) = a2;
  }

  v4 = 1001;
  while (1)
  {
    v5 = *(this + 20);
    if (v5 + 1500000 >= a2)
    {
      break;
    }

    *v8 = v5 + 1000000;
    *&v8[8] = 2143289344;
    LOBYTE(v9) = 0;
    CLKappaFeaturesAlgLackOfMotion::processGPS(this, v8);
    if (!--v4)
    {
      if (qword_1004567F8 != -1)
      {
        sub_1002BAD84();
      }

      v6 = qword_100456800;
      if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_FAULT))
      {
        v7 = *(this + 20);
        *v8 = 134218496;
        *&v8[4] = v7;
        v9 = 2048;
        v10 = a2;
        v11 = 2048;
        v12 = 1000000;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "[LOM] Something is funny with GPS stream, fLastGPSTimestamp:%llu, nextTimestamp:%llu, deltaTime:%llu", v8, 0x20u);
      }

      return;
    }
  }
}

void virtual thunk toCLKappaFeaturesAlgLackOfMotion::epochFinalize(CLKappaFeaturesAlgLackOfMotion *this, unint64_t a2)
{
  v3 = (this + *(*this - 48));
  CLKappaFeaturesAlgLackOfMotion::fillGapsAsRequiredUpToTimestamp(v3, a2);
  *(*(v3 + 4) + 32) = a2;
}

uint64_t CLKappaFeaturesAlgLackOfMotion::epochReset(uint64_t this)
{
  *(this + 144) = 0;
  *(this + 148) = 0;
  *(this + 152) = 0;
  return this;
}

void *virtual thunk toCLKappaFeaturesAlgLackOfMotion::epochReset(void *this)
{
  v1 = this + *(*this - 56);
  *(v1 + 72) = 0;
  *(v1 + 37) = 0;
  *(v1 + 38) = 0;
  return this;
}

double CLKappaFeaturesAlgLackOfMotion::feedGPS(CLKappaFeaturesAlgLackOfMotion *this, const CSSPUGps_Struct *a2)
{
  timestamp = a2->timestamp;
  if (timestamp <= *(this + 20))
  {
    if (qword_1004567F8 != -1)
    {
      sub_1002BAD84();
    }

    v6 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_FAULT))
    {
      v7 = a2->timestamp * 0.000001;
      v8 = *(this + 20) * 0.000001;
      *v9 = 134218240;
      *&v9[4] = v7;
      v10 = 2048;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "[LOM] Dropped GPS sample because we already move forward further than that sample (Sample timestamp:%lf)(Current timestamp:%lf)", v9, 0x16u);
    }
  }

  else
  {
    CLKappaFeaturesAlgLackOfMotion::fillGapsAsRequiredUpToTimestamp(this, timestamp);
    *v9 = a2->timestamp;
    *&v9[8] = a2->speedMS;
    LOBYTE(v10) = 1;
    *&result = CLKappaFeaturesAlgLackOfMotion::processGPS(this, v9);
  }

  return result;
}

float CLKappaFeaturesAlgLackOfMotion::processGPS(uint64_t a1, float *a2)
{
  v4 = a2[2];
  v5 = (v4 >= 0.0) & a2[3];
  v7 = (a1 + 64);
  v6 = *(a1 + 64);
  v8 = *(a1 + 66);
  v9 = *(a1 + 68);
  if (v6 + v8 >= v9)
  {
    v10 = *(a1 + 68);
  }

  else
  {
    v10 = 0;
  }

  *(a1 + 4 * (v6 + v8 - v10) + 72) = v4;
  if (v9 <= v8)
  {
    v11 = v6 + 1;
    if (v11 < v9)
    {
      LOWORD(v9) = 0;
    }

    *v7 = v11 - v9;
  }

  else
  {
    LOWORD(v8) = v8 + 1;
    *(a1 + 66) = v8;
  }

  v12 = *(a1 + 112);
  v13 = *(a1 + 114);
  v14 = *(a1 + 116);
  if (v12 + v13 >= v14)
  {
    v15 = *(a1 + 116);
  }

  else
  {
    v15 = 0;
  }

  *(a1 + v12 + v13 - v15 + 120) = v5;
  if (v14 <= v13)
  {
    v16 = v12 + 1;
    if (v16 < v14)
    {
      LOWORD(v14) = 0;
    }

    *(a1 + 112) = v16 - v14;
  }

  else
  {
    *(a1 + 114) = v13 + 1;
  }

  if (v8)
  {
    v17 = 0;
    v18 = 0;
    do
    {
      if (*sub_10002E0A8((a1 + 112), v17) != 1 || *sub_1000404B8(v7, v17) <= *(*(a1 + 32) + 28))
      {
        ++v18;
      }

      ++v17;
    }

    while (v8 != v17);
  }

  else
  {
    v18 = 0;
  }

  v19 = *(a1 + 32);
  if (v5)
  {
    if (v4 >= *(v19 + 24))
    {
      v20 = *(a1 + 152) + 1;
      *(a1 + 152) = v20;
    }

    else
    {
      v20 = 0;
      *(a1 + 145) = 1;
      *(a1 + 152) = 0;
    }

    if (v4 <= *(v19 + 28))
    {
      v21 = *(a1 + 148) + 1;
      *(a1 + 148) = v21;
    }

    else
    {
      v21 = 0;
      *(a1 + 144) = 1;
      *(a1 + 148) = 0;
    }
  }

  else
  {
    v21 = *(a1 + 148);
    v20 = *(a1 + 152);
  }

  *(v19 + 40) = *(a1 + 168);
  *(v19 + 56) = *(a1 + 144);
  *(v19 + 48) = v21;
  *(v19 + 52) = v20;
  *(v19 + 60) = v8;
  *(v19 + 64) = v18;
  v22 = *a2;
  *(v19 + 72) = *a2;
  result = a2[2];
  *(v19 + 88) = result;
  *(v19 + 92) = *(a2 + 12);
  *(a1 + 160) = v22;
  return result;
}

uint64_t CLKappaFeaturesAlgLackOfMotion::feedTrigger(uint64_t this, const TriggerSample *a2)
{
  v2 = *(this + 24);
  if (v2 == 2)
  {
    if ((a2[1].rmsSN & 0x100000) != 0)
    {
      return this;
    }

    goto LABEL_4;
  }

  if (v2 != 1 || (a2->path & 0x10) == 0)
  {
LABEL_4:
    *(this + 168) = a2->timestamp;
  }

  return this;
}

void *virtual thunk toCLKappaFeaturesAlgLackOfMotion::feedTrigger(void *this, const TriggerSample *a2)
{
  v2 = this + *(*this - 88);
  v3 = v2[24];
  if (v3 == 2)
  {
    if ((a2[1].rmsSN & 0x100000) != 0)
    {
      return this;
    }

    goto LABEL_4;
  }

  if (v3 != 1 || (a2->path & 0x10) == 0)
  {
LABEL_4:
    *(v2 + 21) = a2->timestamp;
  }

  return this;
}

void sub_1002BA52C(CLKappaAlgBlock *this)
{
  *this = off_10042C358;
  *(this + 22) = off_10042C618;
  *(this + 23) = off_10042C760;
  *(this + *(*this - 176)) = off_10042C850;
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

  CLKappaAlgBlock::~CLKappaAlgBlock(this, off_10042C8A8);
}

void sub_1002BA628(CLKappaAlgBlock *this)
{
  *this = off_10042C358;
  *(this + 22) = off_10042C618;
  *(this + 23) = off_10042C760;
  *(this + 24) = off_10042C850;
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

  CLKappaAlgBlock::~CLKappaAlgBlock(this, off_10042C8A8);

  operator delete();
}

void sub_1002BA710(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_10042C358;
  *(v1 + 22) = off_10042C618;
  *(v1 + 23) = off_10042C760;
  *(v1 + 24) = off_10042C850;
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

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_10042C8A8);
}

void sub_1002BA7F4(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_10042C358;
  *(v1 + 22) = off_10042C618;
  *(v1 + 23) = off_10042C760;
  *(v1 + 24) = off_10042C850;
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

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_10042C8A8);

  operator delete();
}

void sub_1002BA8EC(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_10042C358;
  *(v1 + 22) = off_10042C618;
  *(v1 + 23) = off_10042C760;
  *(v1 + 24) = off_10042C850;
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

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_10042C8A8);
}

void sub_1002BA9D0(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_10042C358;
  *(v1 + 22) = off_10042C618;
  *(v1 + 23) = off_10042C760;
  *(v1 + 24) = off_10042C850;
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

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_10042C8A8);

  operator delete();
}

void sub_1002BAAC8(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_10042C358;
  *(v1 + 22) = off_10042C618;
  *(v1 + 23) = off_10042C760;
  *(v1 + 24) = off_10042C850;
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

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_10042C8A8);
}

void sub_1002BABAC(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_10042C358;
  *(v1 + 22) = off_10042C618;
  *(v1 + 23) = off_10042C760;
  *(v1 + 24) = off_10042C850;
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

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_10042C8A8);

  operator delete();
}

void sub_1002BACA4(id a1)
{
  qword_100456800 = os_log_create("com.apple.anomalydetectiond", "Alg");

  _objc_release_x1();
}

void sub_1002BAD08(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10042CF30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void CLKappaDeescalatorQuiescence::CLKappaDeescalatorQuiescence(CLKappaDeescalatorQuiescence *this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 36) = 1;
  *(this + 10) = 0;
  *(this + 44) = 0;
  *this = off_10042CF80;
  *(this + 80) = 0;
  *(this + 84) = 0x800000000;
  *(this + 124) = 0x800000000;
  *(this + 41) = 2143289344;
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 46) = 0;
  *(this + 71) = 6;
  strcpy(this + 48, "de-Qui");
}

uint64_t CLKappaDeescalatorQuiescence::assertReady(CLKappaDeescalatorQuiescence *this, uint64_t a2, const char *a3)
{
  CLKappaDeescalator::raiseUnless(*(this + 80), "[de-Qui] missing config", a3);
  v5 = *(this + 43) == *(this + 63);

  return CLKappaDeescalator::raiseUnless(v5, "[de-Qui] buffer size mismatch", v4);
}

uint64_t CLKappaDeescalatorQuiescence::prepareForNextEpoch(uint64_t this)
{
  *(this + 168) = 0;
  *(this + 176) = 0;
  return this;
}

uint64_t CLKappaDeescalatorQuiescence::setConfig(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if ((*(result + 80) & 1) == 0)
  {
    *(result + 80) = 1;
  }

  *(result + 72) = v2;
  return result;
}

void CLKappaDeescalatorQuiescence::resetConfiguration(CLKappaDeescalatorQuiescence *this)
{
  v6 = [CSPersistentConfiguration configBaseKey:"DeescalatorQuiConfig" forFeatureMode:*(this + 36)];
  v2 = +[CSPersistentConfiguration sharedConfiguration];
  [v2 floatThreshold:&CLKappaDeescalatorQuiescence::kConfigurationDefaults forKey:v6];
  v4 = v3;
  [v2 floatThreshold:&unk_1003BF000 forKey:v6];
  if ((*(this + 80) & 1) == 0)
  {
    *(this + 80) = 1;
  }

  *(this + 18) = v5;
  *(this + 19) = v4;
  *(this + 44) = CLKappaDeescalator::shouldForceNoop(this, "ForceQuiescence");
  *(this + 10) = CLKappaDeescalator::shouldForceDeescalate(this, "ForceQuiescence");
}

void CLKappaDeescalatorQuiescence::log(CLKappaDeescalatorQuiescence *this, uint64_t a2)
{
  if ((*(this + 80) & 1) == 0)
  {
    sub_100005BF0();
  }

  v4 = *(this + 41);
  v5 = *(this + 42);
  v6 = *(this + 43);
  v7 = *(this + 44);
  v9 = *(this + 45);
  v8 = *(this + 46);
  if (qword_1004567F8 != -1)
  {
    sub_1002BB388();
  }

  v10 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(this + 6);
    v12 = *(this + 36);
    v13 = *(this + 19);
    v14 = *(this + 18);
    v15 = 134351616;
    v16 = a2;
    v17 = 1026;
    v18 = v11;
    v19 = 1026;
    v20 = v12;
    v21 = 2050;
    v22 = v13;
    v23 = 2050;
    v24 = v14;
    v25 = 2050;
    v26 = v4;
    v27 = 2050;
    v28 = v5;
    v29 = 2050;
    v30 = v6;
    v31 = 2050;
    v32 = v7;
    v33 = 1026;
    v34 = v9;
    v35 = 1026;
    v36 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[de-Qui] summary,A,%{public}llu,B,%{public}u,mode,%{public}u,config-1,%{public}f,config-2,%{public}f,debug-1a,%{public}f,debug-1b,%{public}f,debug-1c,%{public}f,debug-1d,%{public}f,debug-1e,%{public}d,debug-1f,%{public}d", &v15, 0x60u);
  }
}

float CLKappaDeescalatorQuiescence::updateWithPulseFeatures(uint64_t a1, uint64_t a2)
{
  sub_100040338((a1 + 84), (a2 + 16));
  result = *(a2 + 16);
  *(a1 + 172) = result;
  *(a1 + 180) = *(a1 + 86);
  return result;
}

float CLKappaDeescalatorQuiescence::updateWithSpinFeatures(uint64_t a1, uint64_t a2)
{
  sub_100040338((a1 + 124), (a2 + 12));
  result = *(a2 + 12);
  *(a1 + 164) = result;
  *(a1 + 184) = *(a1 + 126);
  return result;
}

float CLKappaDeescalatorQuiescence::getRobustHarmonicMean(unsigned __int16 *a1)
{
  if (!a1[1])
  {
    return 0.0;
  }

  v2 = 0;
  v3 = 0.0;
  v4 = 0.0;
  while ((*sub_1000404B8(a1, v2) & 0x7FFFFFFFu) <= 0x7F7FFFFF && *sub_1000404B8(a1, v2) > 0.000001)
  {
    v4 = v4 + (1.0 / *sub_1000404B8(a1, v2++));
    v5 = a1[1];
    if (v2 >= v5)
    {
      return v5 / v4;
    }
  }

  return v3;
}

uint64_t CLKappaDeescalatorQuiescence::onEvaluateAtMinHoldDuration(CLKappaDeescalatorQuiescence *this)
{
  *(this + 44) = CLKappaDeescalatorQuiescence::getRobustHarmonicMean(this + 42);
  RobustHarmonicMean = CLKappaDeescalatorQuiescence::getRobustHarmonicMean(this + 62);
  *(this + 42) = RobustHarmonicMean;
  if ((*(this + 80) & 1) == 0)
  {
    sub_100005BF0();
  }

  if (RobustHarmonicMean < *(this + 18) && *(this + 44) < *(this + 19))
  {
    return 1;
  }

  else
  {
    return 4;
  }
}

_DWORD *CLKappaDeescalatorQuiescence::onPreviousEpochMadeDecision(_DWORD *this)
{
  this[21] = 0;
  this[31] = 0;
  this[45] = 0;
  this[46] = 0;
  return this;
}

void sub_1002BB2F0(void **a1)
{
  *a1 = off_10042CF80;
  CLKappaDeescalator::~CLKappaDeescalator(a1);

  operator delete();
}

void sub_1002BB344(id a1)
{
  qword_100456800 = os_log_create("com.apple.anomalydetectiond", "Alg");

  _objc_release_x1();
}

void CSKappaEpochBuffer::CSKappaEpochBuffer(CSKappaEpochBuffer *this, uint64_t a2, uint64_t a3)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = -1;
  *(this + 24) = 0u;
  v4 = (this + 24);
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  v5 = objc_alloc_init(NSMutableArray);
  v6 = *v4;
  *v4 = v5;

  v7 = objc_alloc_init(NSMutableArray);
  v8 = *(this + 4);
  *(this + 4) = v7;

  v9 = objc_alloc_init(NSMutableArray);
  v10 = *(this + 5);
  *(this + 5) = v9;

  v11 = objc_alloc_init(NSMutableArray);
  v12 = *(this + 6);
  *(this + 6) = v11;

  v13 = objc_alloc_init(NSMutableArray);
  v14 = *(this + 7);
  *(this + 7) = v13;

  v15 = objc_alloc_init(NSMutableArray);
  v16 = *(this + 8);
  *(this + 8) = v15;

  v17 = objc_alloc_init(NSMutableArray);
  v18 = *(this + 9);
  *(this + 9) = v17;

  v19 = objc_alloc_init(NSMutableArray);
  v20 = *(this + 10);
  *(this + 10) = v19;

  v21 = objc_alloc_init(NSMutableArray);
  v22 = *(this + 11);
  *(this + 11) = v21;

  v23 = objc_alloc_init(NSMutableArray);
  v24 = *(this + 12);
  *(this + 12) = v23;

  v25 = objc_alloc_init(NSMutableArray);
  v26 = *(this + 13);
  *(this + 13) = v25;

  v27 = objc_alloc_init(NSMutableArray);
  v28 = *(this + 14);
  *(this + 14) = v27;

  v29 = objc_alloc_init(NSMutableArray);
  v30 = *(this + 15);
  *(this + 15) = v29;

  v31 = objc_alloc_init(NSMutableArray);
  v32 = *(this + 16);
  *(this + 16) = v31;
}

id CSKappaEpochBuffer::reset(id *this)
{
  [this[3] removeAllObjects];
  [this[4] removeAllObjects];
  [this[5] removeAllObjects];
  [this[6] removeAllObjects];
  [this[7] removeAllObjects];
  [this[8] removeAllObjects];
  [this[9] removeAllObjects];
  [this[10] removeAllObjects];
  [this[11] removeAllObjects];
  [this[12] removeAllObjects];
  [this[13] removeAllObjects];
  [this[14] removeAllObjects];
  [this[15] removeAllObjects];
  result = [this[16] removeAllObjects];
  this[2] = -1;
  return result;
}

void CSKappaEpochBuffer::advanceStream(CSKappaEpochBuffer *this, NSMutableArray *a2)
{
  v8 = a2;
  if ([(NSMutableArray *)v8 count])
  {
    v4 = *(this + 1);
    v3 = *(this + 2);
    v5 = [(NSMutableArray *)v8 objectAtIndexedSubscript:0];
    v6 = v4 * v3;
    while ([v5 timestamp] < v6)
    {
      [(NSMutableArray *)v8 removeObjectAtIndex:0];
      if (![(NSMutableArray *)v8 count])
      {
        break;
      }

      v7 = [(NSMutableArray *)v8 objectAtIndexedSubscript:0];

      v5 = v7;
    }
  }
}

void CSKappaEpochBuffer::advanceEpoch(CSKappaEpochBuffer *this)
{
  v2 = *(this + 3);
  ++*(this + 2);
  CSKappaEpochBuffer::advanceStream(this, v2);
  CSKappaEpochBuffer::advanceStream(this, *(this + 4));
  CSKappaEpochBuffer::advanceStream(this, *(this + 5));
  CSKappaEpochBuffer::advanceStream(this, *(this + 6));
  CSKappaEpochBuffer::advanceStream(this, *(this + 7));
  CSKappaEpochBuffer::advanceStream(this, *(this + 8));
  CSKappaEpochBuffer::advanceStream(this, *(this + 9));
  CSKappaEpochBuffer::advanceStream(this, *(this + 10));
  CSKappaEpochBuffer::advanceStream(this, *(this + 11));
  CSKappaEpochBuffer::advanceStream(this, *(this + 12));
  CSKappaEpochBuffer::advanceStream(this, *(this + 13));
  CSKappaEpochBuffer::advanceStream(this, *(this + 14));
  CSKappaEpochBuffer::advanceStream(this, *(this + 15));
  v3 = *(this + 16);

  CSKappaEpochBuffer::advanceStream(this, v3);
}

void CSKappaEpochBuffer::dumpStreamStats(CSKappaEpochBuffer *this, NSMutableArray *a2)
{
  v2 = a2;
  if ([(NSMutableArray *)v2 count])
  {
    v3 = [(NSMutableArray *)v2 objectAtIndex:0];
    if ([(NSMutableArray *)v2 count]== 1)
    {
      if (qword_100456858 != -1)
      {
        sub_1002BE668();
      }

      v4 = qword_100456860;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v10 = 134217984;
        v11 = [v3 timestamp];
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%llu", &v10, 0xCu);
      }
    }

    else
    {
      v4 = [(NSMutableArray *)v2 objectAtIndex:[(NSMutableArray *)v2 count]- 1];
      if (qword_100456858 != -1)
      {
        sub_1002BE668();
      }

      v6 = qword_100456860;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v7 = [v3 timestamp];
        v8 = [v4 timestamp];
        v9 = [v4 timestamp];
        v10 = 134218496;
        v11 = v7;
        v12 = 2048;
        v13 = v8;
        v14 = 2048;
        v15 = (v9 - [v3 timestamp]) * 0.000001;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%llu %llu %f", &v10, 0x20u);
      }
    }
  }

  else
  {
    if (qword_100456858 != -1)
    {
      sub_1002BE668();
    }

    v5 = qword_100456860;
    if (os_log_type_enabled(qword_100456860, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "insufficient info", &v10, 2u);
    }
  }
}

void CSKappaEpochBuffer::dumpStats(CSKappaEpochBuffer *this)
{
  if (qword_100456858 != -1)
  {
    sub_1002BE668();
  }

  v2 = qword_100456860;
  if (os_log_type_enabled(qword_100456860, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(this + 2);
    v4 = *(this + 1) * v3;
    v5 = *this + v4 - 1;
    *buf = 134218496;
    *&buf[4] = v3;
    *&buf[12] = 2048;
    *&buf[14] = v4;
    *&buf[22] = 2048;
    *&buf[24] = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "epoch buffer stats: current: %llu,  min ts: %llu, max ts: %llu", buf, 0x20u);
  }

  __p = 0;
  v37 = 0;
  v38 = 0;
  if ([*(this + 3) count])
  {
    v6 = [*(this + 3) objectAtIndex:0];
    *buf = [v6 timestamp];
    buf[8] = 2;
    sub_1002BC59C(&__p, buf);
  }

  if ([*(this + 4) count])
  {
    v7 = [*(this + 4) objectAtIndex:0];
    *buf = [v7 timestamp];
    buf[8] = 3;
    sub_1002BC59C(&__p, buf);
  }

  if ([*(this + 5) count])
  {
    v8 = [*(this + 5) objectAtIndex:0];
    *buf = [v8 timestamp];
    buf[8] = 1;
    sub_1002BC59C(&__p, buf);
  }

  if ([*(this + 6) count])
  {
    v9 = [*(this + 6) objectAtIndex:0];
    *buf = [v9 timestamp];
    buf[8] = 4;
    sub_1002BC59C(&__p, buf);
  }

  if ([*(this + 7) count])
  {
    v10 = [*(this + 7) objectAtIndex:0];
    *buf = [v10 timestamp];
    buf[8] = 5;
    sub_1002BC59C(&__p, buf);
  }

  if ([*(this + 8) count])
  {
    v11 = [*(this + 8) objectAtIndex:0];
    *buf = [v11 timestamp];
    buf[8] = 7;
    sub_1002BC59C(&__p, buf);
  }

  if ([*(this + 9) count])
  {
    v12 = [*(this + 9) objectAtIndex:0];
    *buf = [v12 timestamp];
    buf[8] = 0;
    sub_1002BC59C(&__p, buf);
  }

  if ([*(this + 10) count])
  {
    v13 = [*(this + 10) objectAtIndex:0];
    *buf = [v13 timestamp];
    buf[8] = 8;
    sub_1002BC59C(&__p, buf);
  }

  if ([*(this + 11) count])
  {
    v14 = [*(this + 11) objectAtIndex:0];
    *buf = [v14 timestamp];
    buf[8] = 8;
    sub_1002BC59C(&__p, buf);
  }

  if ([*(this + 12) count])
  {
    v15 = [*(this + 12) objectAtIndex:0];
    *buf = [v15 timestamp];
    buf[8] = 6;
    sub_1002BC59C(&__p, buf);
  }

  if ([*(this + 13) count])
  {
    v16 = [*(this + 13) objectAtIndex:0];
    *buf = [v16 timestamp];
    buf[8] = 10;
    sub_1002BC59C(&__p, buf);
  }

  if ([*(this + 14) count])
  {
    v17 = [*(this + 14) objectAtIndex:0];
    *buf = [v17 timestamp];
    buf[8] = 11;
    sub_1002BC59C(&__p, buf);
  }

  if ([*(this + 15) count])
  {
    v18 = [*(this + 15) objectAtIndex:0];
    *buf = [v18 timestamp];
    buf[8] = 12;
    sub_1002BC59C(&__p, buf);
  }

  if ([*(this + 16) count])
  {
    v19 = [*(this + 16) objectAtIndex:0];
    *buf = [v19 timestamp];
    buf[8] = 13;
    sub_1002BC59C(&__p, buf);
  }

  *buf = 2;
  sub_10029F5A0(&buf[8], "accel800");
  *&buf[32] = 3;
  sub_10029F5A0(v41, "hgacc");
  v42 = 1;
  sub_10029F5A0(v43, "accel");
  v44 = 0;
  sub_10029F5A0(v45, "dm");
  v46 = 4;
  sub_10029F5A0(v47, "gps");
  v48 = 5;
  sub_10029F5A0(v49, "steps");
  v50 = 6;
  sub_10029F5A0(v51, "trigger");
  v52 = 7;
  sub_10029F5A0(v53, "pressure");
  v54 = 8;
  sub_10029F5A0(v55, "audio");
  v56 = 9;
  sub_10029F5A0(v57, "trustedaudioresult");
  v58 = 10;
  sub_10029F5A0(v59, "roads");
  v60 = 11;
  sub_10029F5A0(v61, "hertz");
  v62 = 12;
  sub_10029F5A0(v63, "companionstatus");
  v64 = 13;
  sub_10029F5A0(v65, "remotesample");
  sub_1002BE164(v35, buf, 14);
  v20 = 448;
  do
  {
    if (buf[v20 - 1] < 0)
    {
      operator delete(*(&v38 + v20));
    }

    v20 -= 32;
  }

  while (v20);
  v21 = 126 - 2 * __clz((v37 - __p) >> 4);
  *buf = sub_1002BC674;
  if (v37 == __p)
  {
    v22 = 0;
  }

  else
  {
    v22 = v21;
  }

  sub_1002BCBEC(__p, v37, buf, v22, 1);
  v23 = *__p;
  if (qword_100456858 != -1)
  {
    sub_1002BE67C();
  }

  v24 = qword_100456860;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    v34 = *(__p + 8);
    v39 = &v34;
    v25 = sub_1002BE590(v35, &v34);
    v26 = v25 + 5;
    if (*(v25 + 63) < 0)
    {
      v26 = *v26;
    }

    v27 = *__p;
    *buf = 136315394;
    *&buf[4] = v26;
    *&buf[12] = 2048;
    *&buf[14] = v27;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "0 %s %llu\n", buf, 0x16u);
  }

  if ((v37 - __p) >= 0x11)
  {
    v28 = 0;
    v29 = 1;
    do
    {
      if (qword_100456858 != -1)
      {
        sub_1002BE67C();
      }

      v30 = qword_100456860;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        v34 = *(__p + v28 + 24);
        v39 = &v34;
        v31 = sub_1002BE590(v35, &v34);
        v32 = v31 + 5;
        if (*(v31 + 63) < 0)
        {
          v32 = *v32;
        }

        v33 = *(__p + v28 + 16);
        *buf = 67109890;
        *&buf[4] = v29;
        *&buf[8] = 2080;
        *&buf[10] = v32;
        *&buf[18] = 2048;
        *&buf[20] = v33;
        *&buf[28] = 2048;
        *&buf[30] = ((v33 - v23) / 1000000.0);
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "%d %s %llu %f\n", buf, 0x26u);
      }

      ++v29;
      v28 += 16;
    }

    while (v29 < (v37 - __p) >> 4);
  }

  sub_1002BE52C(v35, v35[1]);
  if (__p)
  {
    v37 = __p;
    operator delete(__p);
  }
}

void sub_1002BC3E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, char *a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  sub_1002BE52C(&a13, a14);
  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1002BC59C(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_10000CD24();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_1002BCBA4(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

double CSKappaEpochBufferIterator::CSKappaEpochBufferIterator(uint64_t a1, void *a2)
{
  v2 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

{
  v2 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

id CSKappaEpochBufferIterator::getNextSample(id **this)
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v41 = (this + 8);
  v42 = this + 17;
  v39 = (this + 7);
  v40 = this + 15;
  v37 = this + 11;
  v38 = (this + 6);
  v35 = this + 13;
  v36 = this + 9;
  v33 = this + 7;
  v34 = (this + 4);
  v32 = (this + 5);
  v5 = this + 5;
  v6 = (this + 3);
  v7 = (this + 2);
  v8 = -1;
  v9 = -1;
  do
  {
    v10 = *this;
    switch(v3)
    {
      case 1:
        v21 = *v6;
        if ([v10[5] count] > v21)
        {
          v12 = 5;
          v13 = v6;
          goto LABEL_31;
        }

        break;
      case 2:
        v18 = *v7;
        if ([v10[3] count] > v18)
        {
          v12 = 3;
          v13 = v7;
          goto LABEL_31;
        }

        break;
      case 3:
        v19 = *v5;
        if ([v10[4] count] > v19)
        {
          v12 = 4;
          v13 = v5;
          goto LABEL_31;
        }

        break;
      case 4:
        v15 = *v33;
        if ([v10[6] count] > v15)
        {
          v12 = 6;
          v13 = v33;
          goto LABEL_31;
        }

        break;
      case 5:
        v22 = *v34;
        if ([v10[7] count] > v22)
        {
          v12 = 7;
          v13 = v34;
          goto LABEL_31;
        }

        break;
      case 6:
        v24 = *v35;
        if ([v10[12] count] > v24)
        {
          v12 = 12;
          v13 = v35;
          goto LABEL_31;
        }

        break;
      case 7:
        v20 = *v36;
        if ([v10[8] count] > v20)
        {
          v12 = 8;
          v13 = v36;
          goto LABEL_31;
        }

        break;
      case 8:
        v26 = *v37;
        if ([v10[10] count] > v26)
        {
          v12 = 10;
          v13 = v37;
          goto LABEL_31;
        }

        break;
      case 9:
        v17 = *v38;
        if ([v10[11] count] > v17)
        {
          v12 = 11;
          v13 = v38;
          goto LABEL_31;
        }

        break;
      case 10:
        v25 = *v39;
        if ([v10[13] count] > v25)
        {
          v12 = 13;
          v13 = v39;
          goto LABEL_31;
        }

        break;
      case 11:
        v14 = *v40;
        if ([v10[14] count] > v14)
        {
          v12 = 14;
          v13 = v40;
          goto LABEL_31;
        }

        break;
      case 12:
        v16 = *v41;
        if ([v10[15] count] > v16)
        {
          v12 = 15;
          v13 = v41;
          goto LABEL_31;
        }

        break;
      case 13:
        v23 = *v42;
        if ([v10[16] count] > v23)
        {
          v12 = 16;
          v13 = v42;
          goto LABEL_31;
        }

        break;
      default:
        v11 = *v32;
        if ([v10[9] count] > v11)
        {
          v12 = 9;
          v13 = v32;
LABEL_31:
          v27 = [(*this)[v12] objectAtIndexedSubscript:*v13];

          v2 = v27;
        }

        break;
    }

    if (v2 && [v2 timestamp] < v8)
    {
      v8 = [v2 timestamp];
      v28 = v2;

      v4 = v28;
      v9 = v3;
    }

    ++v3;
  }

  while (v3 != 14);
  v29 = 0;
  switch(v9)
  {
    case -1:
      goto LABEL_53;
    case 0:
      v30 = v32;
      goto LABEL_51;
    case 1:
      ++*v6;
      break;
    case 2:
      ++*v7;
      break;
    case 3:
      ++*v5;
      break;
    case 4:
      v30 = v33;
      goto LABEL_51;
    case 5:
      v30 = v34;
      goto LABEL_51;
    case 6:
      v30 = v35;
      goto LABEL_51;
    case 7:
      v30 = v36;
      goto LABEL_51;
    case 8:
      v30 = v37;
      goto LABEL_51;
    case 9:
      v30 = v38;
      goto LABEL_51;
    case 10:
      v30 = v39;
      goto LABEL_51;
    case 11:
      v30 = v40;
      goto LABEL_51;
    case 12:
      v30 = v41;
      goto LABEL_51;
    case 13:
      v30 = v42;
LABEL_51:
      ++*v30;
      break;
    default:
      break;
  }

  v29 = v4;
LABEL_53:

  return v29;
}

void sub_1002BCB60(id a1)
{
  qword_100456860 = os_log_create("com.apple.anomalydetectiond", "Epoch");

  _objc_release_x1();
}

void sub_1002BCBA4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_1000092C0();
}

void sub_1002BCBEC(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4, char a5)
{
LABEL_1:
  v53 = a2 - 4;
  v54 = a2 - 2;
  v52 = a2 - 6;
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 4;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return;
      }

      if (v12 == 2)
      {
        v47 = *(a2 - 2);
        v48 = *(a2 - 1);
        v49 = a2 - 2;
        if ((*a3)(v47, v48, *v9, v9[1]))
        {
          v73 = *v9;
          *v9 = *v49;
          *v49 = v73;
        }

        return;
      }

      goto LABEL_10;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {

      sub_1002BD41C(v9, v9 + 2, v9 + 4, v54, a3);
      return;
    }

    if (v12 == 5)
    {

      sub_1002BD57C(v9, v9 + 2, v9 + 4, v9 + 6, v54, a3);
      return;
    }

LABEL_10:
    if (v12 <= 23)
    {
      if (a5)
      {

        sub_1002BD660(v9, a2, a3);
      }

      else
      {

        sub_1002BD738(v9, a2, a3);
      }

      return;
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        sub_1002BDD64(v9, a2, a2, a3);
      }

      return;
    }

    v13 = &v9[2 * (v12 >> 1)];
    v14 = *a3;
    if (v12 >= 0x81)
    {
      v15 = v14(*v13, v13[1], *v9, v9[1]);
      v16 = (*a3)(*(a2 - 2), *(a2 - 1), *v13, v13[1]);
      if (v15)
      {
        if (v16)
        {
          v55 = *v9;
          v17 = a2 - 2;
          *v9 = *v54;
          goto LABEL_28;
        }

        v61 = *v9;
        *v9 = *v13;
        *v13 = v61;
        if ((*a3)(*(a2 - 2), *(a2 - 1), *v13, v13[1]))
        {
          v55 = *v13;
          v17 = a2 - 2;
          *v13 = *v54;
LABEL_28:
          *v17 = v55;
        }
      }

      else if (v16)
      {
        v57 = *v13;
        *v13 = *v54;
        *v54 = v57;
        if ((*a3)(*v13, v13[1], *v9, v9[1]))
        {
          v58 = *v9;
          *v9 = *v13;
          *v13 = v58;
        }
      }

      v21 = (v9 + 2);
      v22 = v13 - 2;
      v23 = (*a3)(*(v13 - 2), *(v13 - 1), a1[2], a1[3]);
      v24 = (*a3)(*(a2 - 4), *(a2 - 3), *(v13 - 2), *(v13 - 1));
      if (v23)
      {
        if (v24)
        {
          v25 = *v21;
          v26 = a2 - 4;
          *v21 = *v53;
          goto LABEL_42;
        }

        v28 = *v21;
        *v21 = *v22;
        *v22 = v28;
        if ((*a3)(*(a2 - 4), *(a2 - 3), *v22, *(v13 - 1)))
        {
          v64 = *v22;
          v26 = a2 - 4;
          *v22 = *v53;
          v25 = v64;
LABEL_42:
          *v26 = v25;
        }
      }

      else if (v24)
      {
        v62 = *v22;
        *v22 = *v53;
        *v53 = v62;
        if ((*a3)(*v22, *(v13 - 1), a1[2], a1[3]))
        {
          v27 = *v21;
          *v21 = *v22;
          *v22 = v27;
        }
      }

      v29 = (a1 + 4);
      v30 = v13 + 2;
      v31 = (*a3)(v13[2], v13[3], a1[4], a1[5]);
      v32 = (*a3)(*(a2 - 6), *(a2 - 5), v13[2], v13[3]);
      if (v31)
      {
        if (v32)
        {
          v33 = *v29;
          v34 = a2 - 6;
          *v29 = *v52;
          goto LABEL_51;
        }

        v36 = *v29;
        *v29 = *v30;
        *v30 = v36;
        if ((*a3)(*(a2 - 6), *(a2 - 5), *v30, v13[3]))
        {
          v66 = *v30;
          v34 = a2 - 6;
          *v30 = *v52;
          v33 = v66;
LABEL_51:
          *v34 = v33;
        }
      }

      else if (v32)
      {
        v65 = *v30;
        *v30 = *v52;
        *v52 = v65;
        if ((*a3)(*v30, v13[3], a1[4], a1[5]))
        {
          v35 = *v29;
          *v29 = *v30;
          *v30 = v35;
        }
      }

      v37 = (*a3)(*v13, v13[1], *v22, *(v13 - 1));
      v38 = (*a3)(*v30, v13[3], *v13, v13[1]);
      if (v37)
      {
        if (v38)
        {
          v67 = *v22;
          *v22 = *v30;
          goto LABEL_60;
        }

        v70 = *v22;
        *v22 = *v13;
        *v13 = v70;
        if ((*a3)(*v30, v13[3], *v13, v13[1]))
        {
          v67 = *v13;
          *v13 = *v30;
LABEL_60:
          *v30 = v67;
        }
      }

      else if (v38)
      {
        v68 = *v13;
        *v13 = *v30;
        *v30 = v68;
        if ((*a3)(*v13, v13[1], *v22, *(v13 - 1)))
        {
          v69 = *v22;
          *v22 = *v13;
          *v13 = v69;
        }
      }

      v71 = *a1;
      *a1 = *v13;
      *v13 = v71;
      if (a5)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    v18 = v14(*v9, v9[1], *v13, v13[1]);
    v19 = (*a3)(*(a2 - 2), *(a2 - 1), *v9, v9[1]);
    if (v18)
    {
      if (v19)
      {
        v56 = *v13;
        v20 = a2 - 2;
        *v13 = *v54;
        goto LABEL_37;
      }

      v63 = *v13;
      *v13 = *v9;
      *v9 = v63;
      if ((*a3)(*(a2 - 2), *(a2 - 1), *v9, v9[1]))
      {
        v56 = *v9;
        v20 = a2 - 2;
        *v9 = *v54;
LABEL_37:
        *v20 = v56;
      }

LABEL_38:
      if (a5)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (!v19)
    {
      goto LABEL_38;
    }

    v59 = *v9;
    *v9 = *v54;
    *v54 = v59;
    if (!(*a3)(*v9, v9[1], *v13, v13[1]))
    {
      goto LABEL_38;
    }

    v60 = *v13;
    *v13 = *v9;
    *v9 = v60;
    if (a5)
    {
      goto LABEL_63;
    }

LABEL_62:
    if (((*a3)(*(a1 - 2), *(a1 - 1), *a1, a1[1]) & 1) == 0)
    {
      v9 = sub_1002BD7E8(a1, a2, a3);
      goto LABEL_68;
    }

LABEL_63:
    v39 = sub_1002BD920(a1, a2, a3);
    if ((v40 & 1) == 0)
    {
      goto LABEL_66;
    }

    v41 = sub_1002BDA54(a1, v39, a3);
    v9 = v39 + 2;
    if (sub_1002BDA54(v39 + 2, a2, a3))
    {
      a4 = -v11;
      a2 = v39;
      if (v41)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v41)
    {
LABEL_66:
      sub_1002BCBEC(a1, v39, a3, -v11, a5 & 1);
      v9 = v39 + 2;
LABEL_68:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  v42 = v9 + 2;
  v43 = (*a3)(v9[2], v9[3], *v9, v9[1]);
  v44 = a2 - 2;
  v45 = (*a3)(*(a2 - 2), *(a2 - 1), v9[2], v9[3]);
  if (v43)
  {
    if (v45)
    {
      v72 = *v9;
      *v9 = *v44;
      v46 = v72;
    }

    else
    {
      v75 = *v9;
      *v9 = *v42;
      *v42 = v75;
      if (!(*a3)(*(a2 - 2), *(a2 - 1), v9[2], v9[3]))
      {
        return;
      }

      v46 = *v42;
      *v42 = *v44;
    }

    *v44 = v46;
  }

  else if (v45)
  {
    v51 = *v42;
    *v42 = *v44;
    *v44 = v51;
    if ((*a3)(v9[2], v9[3], *v9, v9[1]))
    {
      v74 = *v9;
      *v9 = *v42;
      *v42 = v74;
    }
  }
}

__n128 sub_1002BD41C(void *a1, void *a2, void *a3, void *a4, uint64_t (**a5)(void, void, void, void))
{
  v10 = (*a5)(*a2, a2[1], *a1, a1[1]);
  v11 = (*a5)(*a3, a3[1], *a2, a2[1]);
  if (v10)
  {
    if (v11)
    {
      v12 = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = v12;
      goto LABEL_10;
    }

    v15 = *a1;
    *a1 = *a2;
    *a2 = v15;
    if ((*a5)(*a3, a3[1], *a2, a2[1]))
    {
      v12 = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    if ((*a5)(*a2, a2[1], *a1, a1[1]))
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

LABEL_10:
  if ((*a5)(*a4, a4[1], *a3, a3[1]))
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    if ((*a5)(*a3, a3[1], *a2, a2[1]))
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      if ((*a5)(*a2, a2[1], *a1, a1[1]))
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  return result;
}

__n128 sub_1002BD57C(void *a1, void *a2, void *a3, void *a4, void *a5, uint64_t (**a6)(void, void, void, void))
{
  v12 = sub_1002BD41C(a1, a2, a3, a4, a6);
  if ((*a6)(*a5, a5[1], *a4, a4[1], v12))
  {
    v14 = *a4;
    *a4 = *a5;
    *a5 = v14;
    if ((*a6)(*a4, a4[1], *a3, a3[1]))
    {
      v15 = *a3;
      *a3 = *a4;
      *a4 = v15;
      if ((*a6)(*a3, a3[1], *a2, a2[1]))
      {
        v16 = *a2;
        *a2 = *a3;
        *a3 = v16;
        if ((*a6)(*a2, a2[1], *a1, a1[1]))
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1002BD660(uint64_t result, void *a2, uint64_t (**a3)(uint64_t, uint64_t, void, void))
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 16);
    if ((result + 16) != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v9 = v5;
        result = (*a3)(v8[2], v8[3], *v8, v8[1]);
        if (result)
        {
          v10 = *v9;
          v11 = v8[3];
          v12 = v7;
          while (1)
          {
            *(v4 + v12 + 16) = *(v4 + v12);
            if (!v12)
            {
              break;
            }

            result = (*a3)(v10, v11, *(v4 + v12 - 16), *(v4 + v12 - 8));
            v12 -= 16;
            if ((result & 1) == 0)
            {
              v13 = (v4 + v12 + 16);
              goto LABEL_10;
            }
          }

          v13 = v4;
LABEL_10:
          *v13 = v10;
          v13[1] = v11;
        }

        v5 = v9 + 2;
        v7 += 16;
        v8 = v9;
      }

      while (v9 + 2 != a2);
    }
  }

  return result;
}

uint64_t sub_1002BD738(uint64_t result, void *a2, uint64_t (**a3)(uint64_t, uint64_t, void, void))
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 16);
    if ((result + 16) != a2)
    {
      do
      {
        v7 = v5;
        result = (*a3)(v4[2], v4[3], *v4, v4[1]);
        if (result)
        {
          v8 = *v7;
          v9 = v4[3];
          v10 = v7;
          do
          {
            v11 = v10 - 1;
            *v10 = *(v10 - 1);
            result = (*a3)(v8, v9, *(v10 - 4), *(v10 - 3));
            v10 = v11;
          }

          while ((result & 1) != 0);
          *v11 = v8;
          v11[1] = v9;
        }

        v5 = v7 + 2;
        v4 = v7;
      }

      while (v7 + 2 != a2);
    }
  }

  return result;
}

void *sub_1002BD7E8(void *a1, _OWORD *a2, uint64_t (**a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = a2;
  v6 = *a1;
  v7 = a1[1];
  if ((*a3)(*a1, v7, *(a2 - 2), *(a2 - 1)))
  {
    v8 = a1;
    do
    {
      v9 = v8[2];
      v10 = v8[3];
      v8 += 2;
    }

    while (((*a3)(v6, v7, v9, v10) & 1) == 0);
  }

  else
  {
    v11 = a1 + 2;
    do
    {
      v8 = v11;
      if (v11 >= v4)
      {
        break;
      }

      v12 = (*a3)(v6, v7, *v11, v11[1]);
      v11 = v8 + 2;
    }

    while (!v12);
  }

  if (v8 < v4)
  {
    do
    {
      v13 = *(v4 - 2);
      v14 = *(v4-- - 1);
    }

    while (((*a3)(v6, v7, v13, v14) & 1) != 0);
  }

  while (v8 < v4)
  {
    v20 = *v8;
    *v8 = *v4;
    *v4 = v20;
    do
    {
      v15 = v8[2];
      v16 = v8[3];
      v8 += 2;
    }

    while (!(*a3)(v6, v7, v15, v16));
    do
    {
      v17 = *(v4 - 2);
      v18 = *(v4-- - 1);
    }

    while (((*a3)(v6, v7, v17, v18) & 1) != 0);
  }

  if (v8 - 2 != a1)
  {
    *a1 = *(v8 - 1);
  }

  *(v8 - 2) = v6;
  *(v8 - 1) = v7;
  return v8;
}

uint64_t *sub_1002BD920(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = 0;
  v7 = *a1;
  v8 = a1[1];
  do
  {
    v9 = (*a3)(a1[v6 + 2], a1[v6 + 3], v7, v8);
    v6 += 2;
  }

  while ((v9 & 1) != 0);
  v10 = &a1[v6];
  if (v6 == 2)
  {
    do
    {
      if (v10 >= a2)
      {
        break;
      }

      v13 = *(a2 - 2);
      v14 = *(a2 - 1);
      a2 -= 2;
    }

    while (((*a3)(v13, v14, v7, v8) & 1) == 0);
  }

  else
  {
    do
    {
      v11 = *(a2 - 2);
      v12 = *(a2 - 1);
      a2 -= 2;
    }

    while (!(*a3)(v11, v12, v7, v8));
  }

  v15 = &a1[v6];
  if (v10 < a2)
  {
    v16 = a2;
    do
    {
      v17 = *v15;
      *v15 = *v16;
      *v16 = v17;
      do
      {
        v18 = v15[2];
        v19 = v15[3];
        v15 += 2;
      }

      while (((*a3)(v18, v19, v7, v8) & 1) != 0);
      do
      {
        v20 = *(v16 - 2);
        v21 = *(v16 - 1);
        v16 -= 2;
      }

      while (!(*a3)(v20, v21, v7, v8));
    }

    while (v15 < v16);
  }

  result = v15 - 2;
  if (v15 - 2 != a1)
  {
    *a1 = *result;
  }

  *(v15 - 2) = v7;
  *(v15 - 1) = v8;
  return result;
}

BOOL sub_1002BDA54(void *a1, char *a2, uint64_t (**a3)(uint64_t, uint64_t, void, void))
{
  v6 = (a2 - a1) >> 4;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v9 = a1 + 2;
        v10 = (*a3)(a1[2], a1[3], *a1, a1[1]);
        v11 = a2 - 16;
        v12 = (*a3)(*(a2 - 2), *(a2 - 1), *v9, a1[3]);
        if ((v10 & 1) == 0)
        {
          if (v12)
          {
            v19 = *v9;
            *v9 = *v11;
            *v11 = v19;
            if ((*a3)(a1[2], a1[3], *a1, a1[1]))
            {
              v20 = *a1;
              *a1 = *v9;
              *v9 = v20;
            }
          }

          return 1;
        }

        if (v12)
        {
          v13 = *a1;
          *a1 = *v11;
        }

        else
        {
          v23 = *a1;
          *a1 = *v9;
          *v9 = v23;
          if (!(*a3)(*(a2 - 2), *(a2 - 1), a1[2], a1[3]))
          {
            return 1;
          }

          v13 = *v9;
          *v9 = *v11;
        }

        *v11 = v13;
        return 1;
      case 4:
        sub_1002BD41C(a1, a1 + 2, a1 + 4, a2 - 2, a3);
        break;
      case 5:
        sub_1002BD57C(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2, a3);
        break;
      default:
        goto LABEL_13;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 16;
    if ((*a3)(*(a2 - 2), *(a2 - 1), *a1, a1[1]))
    {
      v8 = *a1;
      *a1 = *v7;
      *v7 = v8;
    }

    return 1;
  }

LABEL_13:
  v14 = a1 + 2;
  v15 = (*a3)(a1[2], a1[3], *a1, a1[1]);
  v16 = (a1 + 4);
  v17 = (*a3)(a1[4], a1[5], *v14, a1[3]);
  if (v15)
  {
    if (v17)
    {
      v18 = *a1;
      *a1 = *v16;
    }

    else
    {
      v24 = *a1;
      *a1 = *v14;
      *v14 = v24;
      if (!(*a3)(a1[4], a1[5], a1[2], a1[3]))
      {
        goto LABEL_29;
      }

      v18 = *v14;
      *v14 = *v16;
    }

    *v16 = v18;
  }

  else if (v17)
  {
    v21 = *v14;
    *v14 = *v16;
    *v16 = v21;
    if ((*a3)(a1[2], a1[3], *a1, a1[1]))
    {
      v22 = *a1;
      *a1 = *v14;
      *v14 = v22;
    }
  }

LABEL_29:
  v25 = (a1 + 6);
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v26 = 0;
  v27 = 0;
  while (1)
  {
    if ((*a3)(*v25, *(v25 + 1), *v16, *(v16 + 1)))
    {
      v28 = *v25;
      v29 = *(v25 + 1);
      v30 = v26;
      while (1)
      {
        v31 = a1 + v30;
        *(a1 + v30 + 48) = *(a1 + v30 + 32);
        if (v30 == -32)
        {
          break;
        }

        v30 -= 16;
        if (((*a3)(v28, v29, *(v31 + 2), *(v31 + 3)) & 1) == 0)
        {
          v32 = (a1 + v30 + 48);
          goto LABEL_37;
        }
      }

      v32 = a1;
LABEL_37:
      *v32 = v28;
      v32[1] = v29;
      if (++v27 == 8)
      {
        return v25 + 16 == a2;
      }
    }

    v16 = v25;
    v26 += 16;
    v25 += 16;
    if (v25 == a2)
    {
      return 1;
    }
  }
}

char *sub_1002BDD64(char *a1, char *a2, char *a3, uint64_t (**a4)(void, void, uint64_t, uint64_t))
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[16 * v9];
      do
      {
        sub_1002BDEC4(a1, a4, v8, v11);
        v11 -= 16;
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        if ((*a4)(*v12, *(v12 + 1), *a1, *(a1 + 1)))
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          sub_1002BDEC4(a1, a4, v8, a1);
        }

        v12 += 16;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v14 = a2 - 16;
      do
      {
        v18 = *a1;
        v15 = sub_1002BE008(a1, a4, v8);
        if (v14 == v15)
        {
          *v15 = v18;
        }

        else
        {
          *v15 = *v14;
          *v14 = v18;
          sub_1002BE0B8(a1, (v15 + 16), a4, (v15 + 16 - a1) >> 4);
        }

        v14 -= 16;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_1002BDEC4(uint64_t result, unsigned int (**a2)(void, void, void, void), uint64_t a3, void *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v17 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 4)
    {
      v9 = (a4 - result) >> 3;
      v10 = v9 + 1;
      v11 = (result + 16 * (v9 + 1));
      v12 = v9 + 2;
      if (v9 + 2 < a3 && (*a2)(*v11, v11[1], v11[2], v11[3]))
      {
        v11 += 2;
        v10 = v12;
      }

      result = (*a2)(*v11, v11[1], *v5, v5[1]);
      if ((result & 1) == 0)
      {
        v13 = *v5;
        v14 = v5[1];
        do
        {
          v15 = v11;
          *v5 = *v11;
          if (v17 < v10)
          {
            break;
          }

          v16 = (2 * v10) | 1;
          v11 = (v6 + 16 * v16);
          if (2 * v10 + 2 < a3)
          {
            if ((*a2)(*v11, v11[1], v11[2], v11[3]))
            {
              v11 += 2;
              v16 = 2 * v10 + 2;
            }
          }

          result = (*a2)(*v11, v11[1], v13, v14);
          v5 = v15;
          v10 = v16;
        }

        while (!result);
        *v15 = v13;
        v15[1] = v14;
      }
    }
  }

  return result;
}

_OWORD *sub_1002BE008(_OWORD *a1, unsigned int (**a2)(void, void, uint64_t, void), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[v6];
    v9 = v8 + 1;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 >= a3)
    {
      v6 = (2 * v6) | 1;
    }

    else
    {
      v13 = *(v8 + 4);
      v12 = v8 + 2;
      if ((*a2)(*(v12 - 2), *(v12 - 1), v13, *(v12 + 1)))
      {
        v9 = v12;
        v6 = v11;
      }

      else
      {
        v6 = v10;
      }
    }

    *a1 = *v9;
    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

uint64_t sub_1002BE0B8(uint64_t result, uint64_t a2, uint64_t (**a3)(void, void, uint64_t, uint64_t), uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v7 = result;
    v8 = v4 >> 1;
    v9 = (result + 16 * (v4 >> 1));
    v10 = (a2 - 16);
    result = (*a3)(*v9, v9[1], *(a2 - 16), *(a2 - 8));
    if (result)
    {
      v11 = *(a2 - 16);
      v12 = *(a2 - 8);
      do
      {
        v13 = v9;
        *v10 = *v9;
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = (v7 + 16 * v8);
        result = (*a3)(*v9, v9[1], v11, v12);
        v10 = v13;
      }

      while ((result & 1) != 0);
      *v13 = v11;
      v13[1] = v12;
    }
  }

  return result;
}

void *sub_1002BE164(void *a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      sub_1002BE1E4(a1, v4, a2);
      a2 += 8;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_1002BE1E4(void *a1, uint64_t *a2, int *a3)
{
  result = *sub_1002BE268(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_1002BE410();
  }

  return result;
}

uint64_t *sub_1002BE268(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 8), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 8) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 32);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 8))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void sub_1002BE4AC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1002BE4C8(v3, v2);
  _Unwind_Resume(a1);
}

void sub_1002BE4C8(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 63) < 0)
    {
      operator delete(__p[5]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_1002BE52C(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1002BE52C(a1, *a2);
    sub_1002BE52C(a1, *(a2 + 1));
    if (a2[63] < 0)
    {
      operator delete(*(a2 + 5));
    }

    operator delete(a2);
  }
}

uint64_t *sub_1002BE590(uint64_t a1, int *a2)
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
      v5 = *(v2 + 32);
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

int64_t sub_1002BE928(id a1, CSTimestampedSample *a2, CSTimestampedSample *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(CSTimestampedSample *)v4 timestamp];
  if (v6 <= [(CSTimestampedSample *)v5 timestamp])
  {
    v8 = [(CSTimestampedSample *)v4 timestamp];
    if (v8 >= [(CSTimestampedSample *)v5 timestamp])
    {
      v7 = 0;
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

void sub_1002BF2C8(id a1)
{
  qword_100456810 = os_log_create("com.apple.anomalydetectiond", "AOP");

  _objc_release_x1();
}

uint64_t CLKappaFeaturesAlgRemoteAudioResult::reset(CLKappaFeaturesAlgRemoteAudioResult *this)
{
  *(this + 8) = 0;
  *(this + 3) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 54) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 40) = 0;
  v1 = *(this + 11);
  *(this + 11) = 0;
  return _objc_release_x1();
}

void CLKappaFeaturesAlgRemoteAudioResult::log(CLKappaFeaturesAlgRemoteAudioResult *this)
{
  if (qword_1004567F8 != -1)
  {
    sub_1002C1DDC();
  }

  v2 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 61);
    v4 = *(this + 81);
    v5 = *(this + 10);
    v6 = *(this + 4);
    v7 = *(this + 5);
    v8 = *(this + 6);
    v9 = *(this + 4);
    *buf = 67241728;
    *v23 = v3;
    *&v23[4] = 1026;
    *&v23[6] = v4;
    *v24 = 2050;
    *&v24[2] = v5;
    LOWORD(v25) = 1026;
    *(&v25 + 2) = v6;
    HIWORD(v25) = 2050;
    *v26 = v7;
    *&v26[8] = 2050;
    *v27 = v8;
    *&v27[8] = 2050;
    v28 = v9;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[RA] AlgBlock summary,A,%{public}d,B,%{public}d,C,%{public}f,config-1,%{public}d,config-2,%{public}f,config-3,%{public}f,debug-1,%{public}llu", buf, 0x3Cu);
  }

  if ([*(this + 11) count])
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v17 = 0;
    memset(v18, 0, 14);
    v10 = [*(this + 11) objectAtIndexedSubscript:0];
    [v10 getBytes:&v16 length:96];

    if (qword_1004567F8 != -1)
    {
      sub_1002C1DF0();
    }

    v11 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134222848;
      *v23 = v16;
      *&v23[8] = 2048;
      *v24 = *&v17;
      *&v24[8] = 2048;
      v25 = *(&v17 + 1);
      *v26 = 2048;
      *&v26[2] = *v18;
      *v27 = 2048;
      *&v27[2] = *(v18 + 1);
      LOWORD(v28) = 1024;
      *(&v28 + 2) = LOBYTE(v18[1]);
      HIWORD(v28) = 1024;
      v29 = BYTE1(v18[1]);
      v30 = 1024;
      v31 = BYTE2(v18[1]);
      v32 = 1024;
      v33 = BYTE3(v18[1]);
      v34 = 1024;
      v35 = BYTE4(v18[1]);
      v36 = 1024;
      v37 = BYTE4(v18[1]);
      v38 = 2048;
      v39 = *&v19;
      v40 = 2048;
      v41 = *(&v19 + 1);
      v42 = 2048;
      v43 = *&v20;
      v44 = 1024;
      v45 = BYTE4(v20);
      v46 = 1024;
      v47 = BYTE5(v20);
      v48 = 1024;
      v49 = BYTE6(v20);
      v50 = 1024;
      v51 = HIBYTE(v20);
      v52 = 1024;
      v53 = v21;
      v54 = 1024;
      v55 = v21;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "[RemoteAudioBuffer0] AlgBlock summary,A,%llu,B,%f,C,%f,D,%f,E,%f,F,%d,G,%d,H,%d,I,%d,J,%d,K,%d,L,%f,M,%f,N,%f,O,%d,P,%d,Q,%d,R,%d,S,%d,T,%d", buf, 0x9Au);
    }
  }

  if ([*(this + 11) count] >= 2)
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v17 = 0;
    memset(v18, 0, 14);
    v12 = [*(this + 11) objectAtIndexedSubscript:1];
    [v12 getBytes:&v16 length:96];

    if (qword_1004567F8 != -1)
    {
      sub_1002C1DF0();
    }

    v13 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134222848;
      *v23 = v16;
      *&v23[8] = 2048;
      *v24 = *&v17;
      *&v24[8] = 2048;
      v25 = *(&v17 + 1);
      *v26 = 2048;
      *&v26[2] = *v18;
      *v27 = 2048;
      *&v27[2] = *(v18 + 1);
      LOWORD(v28) = 1024;
      *(&v28 + 2) = LOBYTE(v18[1]);
      HIWORD(v28) = 1024;
      v29 = BYTE1(v18[1]);
      v30 = 1024;
      v31 = BYTE2(v18[1]);
      v32 = 1024;
      v33 = BYTE3(v18[1]);
      v34 = 1024;
      v35 = BYTE4(v18[1]);
      v36 = 1024;
      v37 = BYTE4(v18[1]);
      v38 = 2048;
      v39 = *&v19;
      v40 = 2048;
      v41 = *(&v19 + 1);
      v42 = 2048;
      v43 = *&v20;
      v44 = 1024;
      v45 = BYTE4(v20);
      v46 = 1024;
      v47 = BYTE5(v20);
      v48 = 1024;
      v49 = BYTE6(v20);
      v50 = 1024;
      v51 = HIBYTE(v20);
      v52 = 1024;
      v53 = v21;
      v54 = 1024;
      v55 = v21;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "[RemoteAudioBuffer1] AlgBlock summary,A,%llu,B,%f,C,%f,D,%f,E,%f,F,%d,G,%d,H,%d,I,%d,J,%d,K,%d,L,%f,M,%f,N,%f,O,%d,P,%d,Q,%d,R,%d,S,%d,T,%d", buf, 0x9Au);
    }
  }

  if ([*(this + 11) count] >= 3)
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v17 = 0;
    memset(v18, 0, 14);
    v14 = [*(this + 11) objectAtIndexedSubscript:2];
    [v14 getBytes:&v16 length:96];

    if (qword_1004567F8 != -1)
    {
      sub_1002C1DF0();
    }

    v15 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134222848;
      *v23 = v16;
      *&v23[8] = 2048;
      *v24 = *&v17;
      *&v24[8] = 2048;
      v25 = *(&v17 + 1);
      *v26 = 2048;
      *&v26[2] = *v18;
      *v27 = 2048;
      *&v27[2] = *(v18 + 1);
      LOWORD(v28) = 1024;
      *(&v28 + 2) = LOBYTE(v18[1]);
      HIWORD(v28) = 1024;
      v29 = BYTE1(v18[1]);
      v30 = 1024;
      v31 = BYTE2(v18[1]);
      v32 = 1024;
      v33 = BYTE3(v18[1]);
      v34 = 1024;
      v35 = BYTE4(v18[1]);
      v36 = 1024;
      v37 = BYTE4(v18[1]);
      v38 = 2048;
      v39 = *&v19;
      v40 = 2048;
      v41 = *(&v19 + 1);
      v42 = 2048;
      v43 = *&v20;
      v44 = 1024;
      v45 = BYTE4(v20);
      v46 = 1024;
      v47 = BYTE5(v20);
      v48 = 1024;
      v49 = BYTE6(v20);
      v50 = 1024;
      v51 = HIBYTE(v20);
      v52 = 1024;
      v53 = v21;
      v54 = 1024;
      v55 = v21;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "[RemoteAudioBuffer2] AlgBlock summary,A,%llu,B,%f,C,%f,D,%f,E,%f,F,%d,G,%d,H,%d,I,%d,J,%d,K,%d,L,%f,M,%f,N,%f,O,%d,P,%d,Q,%d,R,%d,S,%d,T,%d", buf, 0x9Au);
    }
  }
}

void CLKappaFeaturesAlgRemoteAudio::CLKappaFeaturesAlgRemoteAudio(CLKappaFeaturesAlgRemoteAudio *this, uint64_t *a2)
{
  CLKappaAlgBlock::CLKappaAlgBlock(this, a2 + 1);
  v4 = *a2;
  *v5 = *a2;
  *(this + *(v4 - 152)) = a2[6];
  *(this + *(*this - 160)) = a2[7];
  *(this + *(*this - 168)) = a2[8];
  *(this + *(*this - 176)) = a2[9];
  *(this + 72) = 0;
  *(this + 80) = 0;
  *(this + 88) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 64) = 0;
  operator new();
}

void sub_1002BFCB4(_Unwind_Exception *a1)
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

char **sub_1002BFCE8@<X0>(uint64_t a1@<X0>, char ***a2@<X8>)
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

void CLKappaFeaturesAlgRemoteAudio::CLKappaFeaturesAlgRemoteAudio(CLKappaFeaturesAlgRemoteAudio *this)
{
  *this = off_100411FE8;
  *(this + 12) = off_100412090;
  *(this + 13) = off_100412158;
  *(this + 14) = off_100412210;
  CLKappaAlgBlock::CLKappaAlgBlock(this, off_10042D6A0);
  *v1 = off_10042D150;
  *(v1 + 96) = off_10042D410;
  *(v1 + 104) = off_10042D558;
  *(v1 + 112) = off_10042D648;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0;
  operator new();
}

void sub_1002C001C(_Unwind_Exception *a1)
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

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_10042D6A0);
  _Unwind_Resume(a1);
}

void CLKappaFeaturesAlgRemoteAudio::resetConfiguration(CLKappaFeaturesAlgRemoteAudio *this)
{
  v8 = [CSPersistentConfiguration configBaseKey:"FeaturesAlgRAConfig" forFeatureMode:*(this + 24)];
  v2 = +[CSPersistentConfiguration sharedConfiguration];
  [v2 algorithmThresholdNumber:0 inArrayForKey:v8 withMinValue:0.0 maxValue:0.0 defaultValue:0.0];
  *(*(this + 4) + 16) = v3;

  v4 = +[CSPersistentConfiguration sharedConfiguration];
  [v4 algorithmThresholdNumber:1 inArrayForKey:v8 withMinValue:0.0 maxValue:0.0 defaultValue:0.0];
  *(*(this + 4) + 20) = v5;

  v6 = +[CSPersistentConfiguration sharedConfiguration];
  [v6 algorithmThresholdNumber:2 inArrayForKey:v8 withMinValue:0.0 maxValue:0.0 defaultValue:0.0];
  *(*(this + 4) + 24) = v7;
}

double CLKappaFeaturesAlgRemoteAudio::setConfig(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 32);
  v4 = *a2;
  *(v3 + 24) = *(a2 + 2);
  *(v3 + 16) = v4;
  if (qword_1004567F8 != -1)
  {
    sub_1002C1DDC();
  }

  v5 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
  {
    v7 = *a2;
    v8 = *(a2 + 1);
    v9 = *(a2 + 2);
    v10[0] = 67109632;
    v10[1] = v7;
    v11 = 2048;
    v12 = v8;
    v13 = 2048;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[RA] config-1,%d,config-2,%f,config-3,%f", v10, 0x1Cu);
  }

  return result;
}

void CLKappaFeaturesAlgRemoteAudio::epochFinalize(CLKappaFeaturesAlgRemoteAudio *this, uint64_t a2)
{
  v4 = *(this + 4);
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 32) = a2;
  *(v4 + 54) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  v5 = *(v4 + 88);
  v6 = v5;
  if (*(this + 88))
  {
    if (*(this + 72))
    {
      v7 = *(this + 4);
      v9 = *(v7 + 20);
      v8 = *(v7 + 24);
      CLKappaFeaturesAlgRemoteAudio::logAudioBufferPhoneAOPTimes(v5, @"before filtering");
      if (*(this + 72) != 1 || (*(this + 88) & 1) == 0)
      {
        sub_100005BF0();
      }

      v10 = CLKappaFeaturesAlgRemoteAudio::filterOldRemoteAudioElements(v6, *(this + 8), *(this + 10), a2, v9);

      CLKappaFeaturesAlgRemoteAudio::logAudioBufferPhoneAOPTimes(v10, @"after filtering old");
      if (*(this + 72) != 1 || (*(this + 88) & 1) == 0)
      {
        sub_100005BF0();
      }

      v11 = CLKappaFeaturesAlgRemoteAudio::filterFutureRemoteAudioElements(v10, *(this + 8), *(this + 10), a2, v8);
      CLKappaFeaturesAlgRemoteAudio::logAudioBufferPhoneAOPTimes(v11, @"to use this epoch");
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v12 = v11;
      v13 = [v12 countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v13)
      {
        v25 = v11;
        v26 = v10;
        v14 = 0;
        v15 = 0;
        v16 = *v34;
        v17 = 0.0;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v34 != v16)
            {
              objc_enumerationMutation(v12);
            }

            v19 = *(*(&v33 + 1) + 8 * i);
            v30 = 0;
            v31 = 0;
            v32 = 0;
            v28 = 0;
            memset(v29, 0, sizeof(v29));
            [v19 getBytes:buf length:{96, v25}];
            v20 = v29[13] | v14 & 1;
            v14 = v29[13] & 1 | v14 & 1;
            v21 = HIBYTE(v32) | v15 & 1;
            v15 = HIBYTE(v32) & 1 | v15 & 1;
            if (*&v28 >= v17)
            {
              v17 = *&v28;
            }
          }

          v13 = [v12 countByEnumeratingWithState:&v33 objects:v37 count:16];
        }

        while (v13);
        v10 = v26;
      }

      else
      {
        v20 = 0;
        v21 = 0;
        v17 = 0.0;
      }

      v24 = *(this + 4);
      *(v24 + 40) = v17;
      *(v24 + 61) = v20 & 1;
      *(v24 + 81) = v21 & 1;
      objc_storeStrong((v24 + 88), v10);

      v6 = v10;
      goto LABEL_29;
    }

    if ([v5 count])
    {
      if (qword_1004567F8 != -1)
      {
        sub_1002C1DDC();
      }

      v22 = qword_100456800;
      if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        v23 = "[RA] non-empty buffer but no first trigger timestamp";
        goto LABEL_26;
      }
    }
  }

  else
  {
    if (qword_1004567F8 != -1)
    {
      sub_1002C1DDC();
    }

    v22 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      v23 = "[RA] trigger time not set before epochFinalize";
LABEL_26:
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_FAULT, v23, buf, 2u);
    }
  }

LABEL_29:
}

void CLKappaFeaturesAlgRemoteAudio::logAudioBufferPhoneAOPTimes(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v21 count:16];
  v7 = v4;
  if (v6)
  {
    v8 = *v15;
    v7 = v4;
    do
    {
      v9 = 0;
      v10 = v7;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v14 + 1) + 8 * v9);
        v19[2] = 0;
        v19[3] = 0;
        v20 = 0;
        *(&buf + 1) = 0;
        v19[0] = 0;
        *(v19 + 6) = 0;
        [v11 getBytes:&buf length:96];
        v7 = [NSString stringWithFormat:@"%@, %llu", v10, buf, v14];

        v9 = v9 + 1;
        v10 = v7;
      }

      while (v6 != v9);
      v6 = [v5 countByEnumeratingWithState:&v14 objects:v21 count:16];
    }

    while (v6);
  }

  v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@, now %llu", v7, +[CSTimeManager SPU_estimate_current_timestamp]);

  if (qword_1004567F8 != -1)
  {
    sub_1002C1DF0();
  }

  v13 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
  }
}

id CLKappaFeaturesAlgRemoteAudio::filterOldRemoteAudioElements(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  v16 = a1;
  v9 = objc_alloc_init(NSMutableArray);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v16;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v18[2] = 0;
        v18[3] = 0;
        v19 = 0;
        v17[1] = 0;
        v18[0] = 0;
        *(v18 + 6) = 0;
        [v14 getBytes:v17 length:96];
        if (CLKappaFeaturesAlgRemoteAudio::computeAOPTimeDelta(v17, a2, a3, a4) >= a5)
        {
          [v9 addObject:v14];
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  return v9;
}

id CLKappaFeaturesAlgRemoteAudio::filterFutureRemoteAudioElements(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  v16 = a1;
  v9 = objc_alloc_init(NSMutableArray);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v16;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v18[2] = 0;
        v18[3] = 0;
        v19 = 0;
        v17[1] = 0;
        v18[0] = 0;
        *(v18 + 6) = 0;
        [v14 getBytes:v17 length:96];
        if (CLKappaFeaturesAlgRemoteAudio::computeAOPTimeDelta(v17, a2, a3, a4) <= a5)
        {
          [v9 addObject:v14];
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  return v9;
}