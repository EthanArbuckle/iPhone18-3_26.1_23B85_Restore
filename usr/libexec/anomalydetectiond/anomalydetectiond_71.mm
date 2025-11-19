void CLSafetyDeescalatorJointDetection::updateWithJointDetectionOutput(uint64_t a1, uint64_t a2)
{
  if (qword_1004567F8 != -1)
  {
    sub_1002F4F18();
  }

  v4 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a2 + 8);
    v11 = 134217984;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[de-JD] received local lastRealTriggerTimestamp: %llu", &v11, 0xCu);
  }

  if (*(a1 + 84) != 2)
  {
    if (*(a1 + 160) == 1)
    {
      if (*(a2 + 8) == *(a1 + 152))
      {
        if (qword_1004567F8 != -1)
        {
          sub_1002F4F2C();
        }

        v9 = qword_100456800;
        if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v11) = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[de-JD]: lack of new local trigger does not change our mind", &v11, 2u);
        }

        v10 = *(a1 + 160);
        *(a1 + 144) = *a2;
        if ((v10 & 1) == 0)
        {
          goto LABEL_11;
        }

        return;
      }

      *(a1 + 84) = 1;
      *(a1 + 144) = *a2;
    }

    else
    {
      *(a1 + 84) = 1;
      *(a1 + 144) = *a2;
      *(a1 + 160) = 1;
    }

    CLSafetyDeescalatorJointDetection::verifySameEvent(a1, 0, v5);
    return;
  }

  if (qword_1004567F8 != -1)
  {
    sub_1002F4F2C();
  }

  v7 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[de-JD] already latched to sure-real", &v11, 2u);
  }

  v8 = *(a1 + 160);
  *(a1 + 144) = *a2;
  if ((v8 & 1) == 0)
  {
LABEL_11:
    *(a1 + 160) = 1;
  }
}

uint64_t CLSafetyDeescalatorJointDetection::onEvaluateAtMinHoldDuration(CLSafetyDeescalatorJointDetection *this)
{
  if (qword_1004567F8 != -1)
  {
    sub_1002F4F18();
  }

  v2 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "[de-JD] evaluating at min hold duration", buf, 2u);
  }

  if ((*(this + 80) & 1) == 0)
  {
    sub_100005BF0();
  }

  if ((*(this + 72) & 1) == 0)
  {
    if (qword_1004567F8 != -1)
    {
      sub_1002F4F2C();
    }

    v7 = qword_100456800;
    if (!os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
    {
      return 7;
    }

    *v16 = 0;
    v8 = "[de-JD] disabled";
    v9 = v16;
    goto LABEL_18;
  }

  v3 = *(this + 84);
  if (v3 != 3)
  {
    if (v3 == 2)
    {
      if (qword_1004567F8 != -1)
      {
        sub_1002F4F2C();
      }

      v4 = qword_100456800;
      if (!os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
      {
        return 1;
      }

      *v13 = 0;
      v5 = "[de-JD] final - no-decision: SURE-REAL";
      v6 = v13;
      goto LABEL_24;
    }

    if (v3 == 1)
    {
      if (qword_1004567F8 != -1)
      {
        sub_1002F4F2C();
      }

      v4 = qword_100456800;
      if (!os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
      {
        return 1;
      }

      v15 = 0;
      v5 = "[de-JD] final - no-decision: UNSURE";
      v6 = &v15;
LABEL_24:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, v5, v6, 2u);
      return 1;
    }

    if (qword_1004567F8 != -1)
    {
      sub_1002F4F2C();
    }

    v7 = qword_100456800;
    if (!os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
    {
      return 7;
    }

    v12 = 0;
    v8 = "[de-JD] final - no-decision";
    v9 = &v12;
LABEL_18:
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, v8, v9, 2u);
    return 7;
  }

  if (qword_1004567F8 != -1)
  {
    sub_1002F4F2C();
  }

  v11 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "[de-JD] final - de-escalate: SURE-NONE", v14, 2u);
  }

  return 4;
}

void sub_1002F4E9C(void **a1)
{
  CLKappaDeescalator::~CLKappaDeescalator(a1);

  operator delete();
}

void sub_1002F4ED4(id a1)
{
  qword_100456800 = os_log_create("com.apple.anomalydetectiond", "Alg");

  _objc_release_x1();
}

double CLMartyEstimatesAlgUncoupledCrashResult::reset(CLMartyEstimatesAlgUncoupledCrashResult *this)
{
  *(this + 8) = 0;
  *(this + 3) = 0;
  *(this + 28) = 0;
  *(this + 58) = 0;
  *(this + 8) = 0;
  result = 0.0;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 38) = 0;
  return result;
}

double CLMartyEstimatesAlgUncoupledCrashResult::log(CLMartyEstimatesAlgUncoupledCrashResult *this)
{
  if (qword_1004567F8 != -1)
  {
    sub_1002F66BC();
  }

  v2 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(this + 8);
    v5 = *(this + 56);
    v6 = *(this + 58);
    v7 = *(this + 18);
    v8 = *(this + 19);
    v9 = *(this + 20);
    v10 = *(this + 21);
    v11 = *(this + 22);
    v12 = *(this + 23);
    v13 = *(this + 24);
    v14 = *(this + 25);
    v15 = *(this + 26);
    v16 = *(this + 27);
    v17 = *(this + 28);
    v18 = *(this + 29);
    v19 = *(this + 30);
    v20 = *(this + 31);
    v21 = *(this + 32);
    v22 = *(this + 33);
    v23 = *(this + 34);
    v24 = *(this + 35);
    v25 = *(this + 36);
    v26 = *(this + 37);
    v27 = *(this + 38);
    v28 = 134354944;
    v29 = v4;
    v30 = 1026;
    v31 = v5;
    v32 = 1026;
    v33 = v6;
    v34 = 2050;
    v35 = v7;
    v36 = 2050;
    v37 = v8;
    v38 = 2050;
    v39 = v9;
    v40 = 2050;
    v41 = v10;
    v42 = 2050;
    v43 = v11;
    v44 = 2050;
    v45 = v12;
    v46 = 2050;
    v47 = v13;
    v48 = 2050;
    v49 = v14;
    v50 = 2050;
    v51 = v15;
    v52 = 2050;
    v53 = v16;
    v54 = 2050;
    v55 = v17;
    v56 = 2050;
    v57 = v18;
    v58 = 2050;
    v59 = v19;
    v60 = 2050;
    v61 = v20;
    v62 = 2050;
    v63 = v21;
    v64 = 2050;
    v65 = v22;
    v66 = 2050;
    v67 = v23;
    v68 = 2050;
    v69 = v24;
    v70 = 2050;
    v71 = v25;
    v72 = 2050;
    v73 = v26;
    v74 = 2050;
    v75 = v27;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[M][UC] AlgBlock summary,A,%{public}llu,B,%{public}d,C,%{public}d,debug-1,%{public}f,debug-2,%{public}f,debug-3,%{public}f,debug-4,%{public}f,debug-5,%{public}f,debug-6,%{public}f,debug-7,%{public}f,debug-8,%{public}f,debug-9,%{public}f,debug-10,%{public}f,debug-11,%{public}f,debug-12,%{public}f,debug-13,%{public}f,debug-14,%{public}f,debug-15,%{public}f,debug-16,%{public}f,debug-17,%{public}f,debug-18,%{public}f,debug-19,%{public}f,debug-20,%{public}f,debug-21,%{public}f", &v28, 0xEAu);
  }

  return result;
}

void CLMartyEstimatesAlgUncoupledCrash::CLMartyEstimatesAlgUncoupledCrash(CLMartyEstimatesAlgUncoupledCrash *this, uint64_t *a2)
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
  *&v6 = 0x80000000800000;
  *(&v6 + 1) = 0x80000000800000;
  *(this + 3) = v6;
  *(this + 4) = xmmword_1003BFD60;
  *(this + 5) = xmmword_1003BFD70;
  *(this + 6) = v6;
  sub_1002F6564();
}

void sub_1002F5420(_Unwind_Exception *a1)
{
  v4 = *(v1 + 5);
  if (v4)
  {
    sub_100009A48(v4);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, (v2 + 8));
  _Unwind_Resume(a1);
}

char **sub_1002F5448@<X0>(uint64_t a1@<X0>, char ***a2@<X8>)
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

void CLMartyEstimatesAlgUncoupledCrash::CLMartyEstimatesAlgUncoupledCrash(CLMartyEstimatesAlgUncoupledCrash *this)
{
  *this = off_100411FE8;
  *(this + 14) = off_100412090;
  *(this + 15) = off_100412158;
  *(this + 16) = off_100412210;
  CLKappaAlgBlock::CLKappaAlgBlock(this, off_100433AD0);
  *v1 = off_100433580;
  *(v1 + 112) = off_100433840;
  *(v1 + 120) = off_100433988;
  *(v1 + 128) = off_100433A78;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *&v2 = 0x80000000800000;
  *(&v2 + 1) = 0x80000000800000;
  *(v1 + 48) = v2;
  *(v1 + 64) = xmmword_1003BFD60;
  *(v1 + 80) = xmmword_1003BFD70;
  *(v1 + 96) = v2;
  sub_1002F6564();
}

void sub_1002F56DC(_Unwind_Exception *a1)
{
  v3 = *(v1 + 5);
  if (v3)
  {
    sub_100009A48(v3);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100433AD0);
  _Unwind_Resume(a1);
}

void CLMartyEstimatesAlgUncoupledCrash::resetConfiguration(CLMartyEstimatesAlgUncoupledCrash *this)
{
  v42 = [CSPersistentConfiguration configBaseKey:"EstimatesAlgUCConfig" forFeatureMode:*(this + 24)];
  v2 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v3) = 0.5;
  LODWORD(v4) = 11.5;
  LODWORD(v5) = 1193033728;
  [v2 algorithmThresholdNumber:0 inArrayForKey:v42 withMinValue:v3 maxValue:v5 defaultValue:v4];
  LODWORD(v43) = v6;

  v7 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v8) = 1117782016;
  LODWORD(v9) = 1110704128;
  [v7 algorithmThresholdNumber:1 inArrayForKey:v42 withMinValue:0.0 maxValue:v8 defaultValue:v9];
  DWORD1(v43) = v10;

  v11 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v12) = 5.0;
  LODWORD(v13) = -1138501878;
  [v11 algorithmThresholdNumber:2 inArrayForKey:v42 withMinValue:v13 maxValue:v12 defaultValue:0.0];
  DWORD2(v43) = v14;

  v15 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v16) = 1132068864;
  LODWORD(v17) = 1159479296;
  [v15 algorithmThresholdNumber:3 inArrayForKey:v42 withMinValue:0.0 maxValue:v17 defaultValue:v16];
  HIDWORD(v43) = v18;

  v19 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v20) = 19.0;
  LODWORD(v21) = 1159479296;
  [v19 algorithmThresholdNumber:4 inArrayForKey:v42 withMinValue:0.0 maxValue:v21 defaultValue:v20];
  v44 = v22;

  v23 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v24) = 1118568448;
  LODWORD(v25) = 1159479296;
  [v23 algorithmThresholdNumber:5 inArrayForKey:v42 withMinValue:0.0 maxValue:v25 defaultValue:v24];
  v45 = v26;

  v27 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v28) = 0.5;
  LODWORD(v29) = 20.0;
  LODWORD(v30) = 1193033728;
  [v27 algorithmThresholdNumber:6 inArrayForKey:v42 withMinValue:v28 maxValue:v30 defaultValue:v29];
  v46 = v31;

  v32 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v33) = 6.0;
  LODWORD(v34) = -1138501878;
  LODWORD(v35) = 1193033728;
  [v32 algorithmThresholdNumber:7 inArrayForKey:v42 withMinValue:v34 maxValue:v35 defaultValue:v33];
  v47 = v36;

  v37 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v38) = 1112014848;
  LODWORD(v39) = 4.0;
  LODWORD(v40) = -1138501878;
  [v37 algorithmThresholdNumber:8 inArrayForKey:v42 withMinValue:v40 maxValue:v38 defaultValue:v39];
  v48 = v41;

  CLMartyEstimatesAlgUncoupledCrash::setConfig(this, &v43);
}

double CLMartyEstimatesAlgUncoupledCrash::setConfig(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 32);
  v4 = *a2;
  v5 = a2[1];
  *(v3 + 48) = *(a2 + 8);
  *(v3 + 16) = v4;
  *(v3 + 32) = v5;
  if (qword_1004567F8 != -1)
  {
    sub_1002F66BC();
  }

  v6 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 32);
    v9 = v8[4];
    v10 = v8[5];
    v11 = v8[6];
    v12 = v8[7];
    v13 = v8[8];
    v14 = v8[9];
    v15 = v8[10];
    v16 = v8[11];
    v17 = v8[12];
    v18 = 134220032;
    v19 = v9;
    v20 = 2048;
    v21 = v10;
    v22 = 2048;
    v23 = v11;
    v24 = 2048;
    v25 = v12;
    v26 = 2048;
    v27 = v13;
    v28 = 2048;
    v29 = v14;
    v30 = 2048;
    v31 = v15;
    v32 = 2048;
    v33 = v16;
    v34 = 2048;
    v35 = v17;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[M][UC] config-1,%f,config-2,%f,config-3,%f,config-4,%f,config-5,%f,config-6,%f,config-7,%f,config-8,%f,config-9,%f", &v18, 0x5Cu);
  }

  return result;
}

int32x4_t CLMartyEstimatesAlgUncoupledCrash::epochFinalize(CLMartyEstimatesAlgUncoupledCrash *this, uint64_t a2)
{
  v2 = *(this + 4);
  *&v3 = *(v2 + 28);
  v4 = *(v2 + 36);
  v5 = *(this + 21);
  v6 = v5 < *(&v3 + 1) && *(this + 23) < *(&v3 + 1);
  v7 = *(v2 + 16);
  v8 = *(this + 12);
  v9 = *(this + 22);
  v10 = v9 < v4 && *(this + 24) < v4;
  v11 = *(v2 + 20);
  v12 = *(v2 + 24);
  v13 = *(v2 + 40);
  v14 = *(v2 + 48);
  v16 = *(this + 15);
  v15 = *(this + 16);
  v17.i64[0] = *(this + 100);
  v18 = *(this + 27);
  v19 = *(this + 14);
  if (v8 >= v7)
  {
    v21 = v19 < v11;
    if (v15 < *&v3)
    {
      v21 = 1;
    }

    v22.i64[0] = *(this + 100);
    v22.i64[1] = __PAIR64__(LODWORD(v16), v18);
    v23.i64[0] = *(v2 + 40);
    v23.i64[1] = __PAIR64__(v12, v14);
    v20 = vminv_u16(vmovn_s32(vcgeq_f32(v22, v23))) & (!v21 && !v6 && !v10);
  }

  else
  {
    v20 = 0;
  }

  v24 = *(this + 17);
  v25 = v16 >= *(this + 19);
  if (v19 < *(this + 18) || v15 < *(this + 20))
  {
    v25 = 0;
  }

  v26 = v20 & 1;
  *(v2 + 64) = a2;
  *(v2 + 56) = v26;
  *(v2 + 57) = v26;
  *(v2 + 72) = v7;
  *(v2 + 76) = v11;
  *(v2 + 80) = v12;
  *(v2 + 100) = *(this + 13);
  *(v2 + 104) = v19;
  *(v2 + 108) = v16;
  *(v2 + 112) = v15;
  *(v2 + 58) = v8 >= v24 && v25;
  *(&v3 + 1) = __PAIR64__(LODWORD(v8), LODWORD(v4));
  *(v2 + 84) = v3;
  *(v2 + 116) = v5;
  *(v2 + 120) = v9;
  v17.i64[1] = v13;
  *(v2 + 124) = *(this + 92);
  result = vuzp1q_s32(v17, vrev64q_s32(v17));
  *(v2 + 132) = result;
  *(v2 + 148) = v18;
  *(v2 + 152) = v14;
  return result;
}

double CLMartyEstimatesAlgUncoupledCrash::feedFeatures(uint64_t a1, uint64_t a2)
{
  *(a1 + 64) = *(a2 + 12);
  result = *(a1 + 84);
  *&v3 = *(a2 + 44);
  *(&v3 + 1) = result;
  *(a1 + 84) = v3;
  return result;
}

double virtual thunk toCLMartyEstimatesAlgUncoupledCrash::feedFeatures(void *a1, uint64_t a2)
{
  v2 = a1 + *(*a1 - 96);
  *(v2 + 16) = *(a2 + 12);
  result = *(v2 + 84);
  *&v4 = *(a2 + 44);
  *(&v4 + 1) = result;
  *(v2 + 84) = v4;
  return result;
}

float CLMartyEstimatesAlgUncoupledCrash::feedFeatures(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 68);
  *(a1 + 48) = *(a2 + 88);
  *(a1 + 52) = v2;
  result = *(a2 + 268);
  *(a1 + 108) = *(a2 + 16);
  v4 = *(a2 + 96);
  *(a1 + 100) = result;
  *(a1 + 104) = v4;
  return result;
}

{
  result = *(a2 + 20);
  v3 = *(a2 + 28);
  *(a1 + 56) = result;
  *(a1 + 60) = v3;
  return result;
}

float virtual thunk toCLMartyEstimatesAlgUncoupledCrash::feedFeatures(void *a1, uint64_t a2)
{
  v2 = a1 + *(*a1 - 32);
  v3 = *(a2 + 68);
  *(v2 + 12) = *(a2 + 88);
  *(v2 + 13) = v3;
  result = *(a2 + 268);
  *(v2 + 27) = *(a2 + 16);
  v5 = *(a2 + 96);
  *(v2 + 25) = result;
  *(v2 + 26) = v5;
  return result;
}

{
  v2 = (a1 + *(*a1 - 112));
  result = *(a2 + 20);
  v4 = *(a2 + 28);
  v2[14] = result;
  *(v2 + 15) = v4;
  return result;
}

double CLMartyEstimatesAlgUncoupledCrash::epochReset(CLMartyEstimatesAlgUncoupledCrash *this)
{
  v1 = *(this + 4);
  *(v1 + 56) = 0;
  *(v1 + 58) = 0;
  *(v1 + 64) = 0;
  result = 0.0;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 120) = 0u;
  *(v1 + 136) = 0u;
  *(v1 + 152) = 0;
  return result;
}

double virtual thunk toCLMartyEstimatesAlgUncoupledCrash::epochReset(CLMartyEstimatesAlgUncoupledCrash *this)
{
  v1 = *(this + *(*this - 56) + 32);
  *(v1 + 56) = 0;
  *(v1 + 58) = 0;
  result = 0.0;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 140) = 0u;
  return result;
}

void sub_1002F5E08(CLKappaAlgBlock *this)
{
  *this = off_100433580;
  *(this + 14) = off_100433840;
  *(this + 15) = off_100433988;
  *(this + *(*this - 176)) = off_100433A78;
  v2 = *(this + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(this, off_100433AD0);
}

void sub_1002F5EF8(CLKappaAlgBlock *this)
{
  *this = off_100433580;
  *(this + 14) = off_100433840;
  *(this + 15) = off_100433988;
  *(this + 16) = off_100433A78;
  v2 = *(this + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(this, off_100433AD0);

  operator delete();
}

void sub_1002F5FD4(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100433580;
  *(v1 + 14) = off_100433840;
  *(v1 + 15) = off_100433988;
  *(v1 + 16) = off_100433A78;
  v2 = *(v1 + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100433AD0);
}

void sub_1002F60AC(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100433580;
  *(v1 + 14) = off_100433840;
  *(v1 + 15) = off_100433988;
  *(v1 + 16) = off_100433A78;
  v2 = *(v1 + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100433AD0);

  operator delete();
}

void sub_1002F6198(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100433580;
  *(v1 + 14) = off_100433840;
  *(v1 + 15) = off_100433988;
  *(v1 + 16) = off_100433A78;
  v2 = *(v1 + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100433AD0);
}

void sub_1002F6270(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100433580;
  *(v1 + 14) = off_100433840;
  *(v1 + 15) = off_100433988;
  *(v1 + 16) = off_100433A78;
  v2 = *(v1 + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100433AD0);

  operator delete();
}

void sub_1002F635C(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100433580;
  *(v1 + 14) = off_100433840;
  *(v1 + 15) = off_100433988;
  *(v1 + 16) = off_100433A78;
  v2 = *(v1 + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100433AD0);
}

void sub_1002F6434(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100433580;
  *(v1 + 14) = off_100433840;
  *(v1 + 15) = off_100433988;
  *(v1 + 16) = off_100433A78;
  v2 = *(v1 + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100433AD0);

  operator delete();
}

void sub_1002F6520(id a1)
{
  qword_100456800 = os_log_create("com.apple.anomalydetectiond", "Alg");

  _objc_release_x1();
}

void sub_1002F6640(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100434158;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void CMFourierTransformSafety::CMFourierTransformSafety(CMFourierTransformSafety *this)
{
  *(this + 18) = this + 152;
  *(this + 1) = 1024;
  *this = 10;
  v2 = &_mh_execute_header;
  v3 = 152;
  v10 = vdupq_n_s64(0x3F60000000000000uLL);
  v11 = vdupq_n_s64(0x400921FB54442D18uLL);
  do
  {
    v4 = vneg_s32(v2);
    v5.i64[0] = v4.i32[0];
    v5.i64[1] = v4.i32[1];
    v6 = vcvt_f32_f64(vmulq_f64(vmulq_f64(vcvtq_f64_s64(v5), v11), v10));
    v12 = v6.f32[0];
    v7 = __sincosf_stret(v6.f32[1]);
    v8 = __sincosf_stret(v12);
    v13.val[1] = __PAIR64__(LODWORD(v7.__sinval), LODWORD(v8.__sinval));
    v13.val[0] = __PAIR64__(LODWORD(v7.__cosval), LODWORD(v8.__cosval));
    v9 = (this + v3);
    vst2_f32(v9, v13);
    v2 = vadd_s32(v2, 0x200000002);
    v3 += 16;
  }

  while (v3 != 8344);
  kf_factor_cs(1024, this + 4);
}

uint64_t CMFourierTransformSafety::findExponent(CMFourierTransformSafety *this, int a2)
{
  result = 0;
  if ((a2 & 1) == 0)
  {
    do
    {
      v3 = a2;
      result = (result + 1);
      a2 >>= 1;
    }

    while ((v3 & 2) == 0);
  }

  return result;
}

uint64_t kf_factor_cs(uint64_t result, int *a2)
{
  v2 = sqrtf(result);
  v3 = 4;
  do
  {
    while (result % v3)
    {
      v4 = v3 + 2;
      if (v3 == 2)
      {
        v4 = 3;
      }

      if (v3 == 4)
      {
        v3 = 2;
      }

      else
      {
        v3 = v4;
      }

      if (v2 < v3)
      {
        v3 = result;
      }
    }

    result = (result / v3);
    *a2 = v3;
    a2[1] = result;
    a2 += 2;
  }

  while (result > 1);
  return result;
}

void CMFourierTransformSafety::forward(uint64_t a1, _DWORD *a2, unsigned __int16 *a3)
{
  v5 = (a1 + 8);
  bzero(&v12, 8 * *(a1 + 8));
  sub_1002F6B0C(&v12, a3, 0, 1, 1u, v5 + 2, v5);
  *a2 = 0;
  v6 = (*v5 >> 1);
  if (v6 >= 2)
  {
    v7 = *v5;
    v8 = (a2 + 1);
    v9 = &v13;
    v10 = v6 - 1;
    do
    {
      v11 = *v9++;
      *v8++ = sqrtf(vaddv_f32(vmul_f32(v11, v11)) / v7);
      --v10;
    }

    while (v10);
  }
}

void CMFourierTransformSafety::forward_wide(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v5 = v4;
  v6 = (v1 + 8);
  bzero(v11, 8 * *(v1 + 8));
  sub_1002F6B0C(v11, v3, 0, 1, 1u, v6 + 2, v6);
  v7 = *v6;
  if (v7 >= 1)
  {
    v8 = v7;
    v9 = v11;
    do
    {
      v10 = *v9++;
      *v5++ = sqrtf(vaddv_f32(vmul_f32(v10, v10)) / v8);
      --v7;
    }

    while (v7);
  }
}

float CMFourierTransformSafety::forward_real(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v5 = v4;
  v6 = (v1 + 8);
  bzero(v11, 8 * *(v1 + 8));
  LODWORD(result) = sub_1002F6B0C(v11, v3, 0, 1, 1u, v6 + 2, v6).u32[0];
  v8 = *v6;
  if (v8 >= 1)
  {
    v9 = v11;
    do
    {
      v10 = v9->f32[0];
      ++v9;
      result = v10;
      *v5++ = v10;
      --v8;
    }

    while (v8);
  }

  return result;
}

float32x2_t sub_1002F6B0C(float32x2_t *a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4, unsigned int a5, int *a6, uint64_t a7)
{
  v9 = a1;
  v10 = a6[1];
  v11 = *a6;
  v12 = v10;
  v13 = v10 * v11;
  v61 = *a6;
  if (v10 == 1)
  {
    v14 = a4 * a5;
    v15 = 8 * v13;
    v16 = a1;
    do
    {
      v16->i32[0] = *sub_1000404B8(a2, a3);
      ++v16;
      LODWORD(a3) = a3 + v14;
      v15 -= 8;
    }

    while (v15);
  }

  else
  {
    v62 = v11 * a4;
    v19 = 8 * v13;
    v20 = 8 * v10;
    v21 = a1;
    v22 = a4 * a5;
    do
    {
      sub_1002F6B0C(v21, a2, a3, v62, a5, a6 + 2, a7);
      a3 = (a3 + v22);
      v21 = (v21 + v20);
      v19 -= v20;
    }

    while (v19);
  }

  if (v61 == 2)
  {
    v56 = *(a7 + 136);
    v57 = &v9[v10];
    do
    {
      v58.i32[0] = v57->i32[1];
      v58.f32[1] = -v58.f32[0];
      v59 = vmla_n_f32(vrev64_s32(vmul_f32(*v56, v58)), *v56, v57->f32[0]);
      *v57++ = vsub_f32(*v9, v59);
      result = vadd_f32(v59, *v9);
      *v9++ = result;
      v56 += a4;
      --v10;
    }

    while (v10);
  }

  else
  {
    if (v61 != 4)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1002F6DCC(v61);
      }

      __assert_rtn("kf_work", "CMFourierTransformSafety.cpp", 253, "false");
    }

    v23 = &v9[v10];
    v24 = (*(a7 + 136) + 4);
    v25 = &v9[2 * v10];
    v26 = &v9[3 * v10];
    v27 = *(a7 + 4);
    v28 = v9 + 1;
    v29 = v24;
    v30 = v24;
    do
    {
      v31 = *(v24 - 1);
      v32 = v23[1];
      v33 = (*v23 * v31) - (v32 * *v24);
      v34 = (v31 * v32) + (*v23 * *v24);
      v35 = *(v29 - 1);
      v36 = v25[1];
      v37 = (*v25 * v35) - (v36 * *v29);
      v38 = (v35 * v36) + (*v25 * *v29);
      v39 = *(v30 - 1);
      v40 = v26[1];
      v41 = (*v26 * v39) - (v40 * *v30);
      v42 = (v39 * v40) + (*v26 * *v30);
      v43 = *(v28 - 1);
      v44 = v43 - v37;
      v45 = *v28 - v38;
      v46 = v37 + v43;
      v47 = v38 + *v28;
      *(v28 - 1) = v46;
      *v28 = v47;
      v48 = v33 + v41;
      v49 = v34 + v42;
      v50 = v33 - v41;
      v51 = v34 - v42;
      *v25 = v46 - v48;
      v25[1] = v47 - v49;
      v52 = v49 + *v28;
      *(v28 - 1) = v48 + *(v28 - 1);
      *v28 = v52;
      if (v27)
      {
        result.f32[0] = v44 + v51;
        v53 = v45 - v50;
        v54 = v44 - v51;
        v55 = v45 + v50;
      }

      else
      {
        v54 = v44 + v51;
        v55 = v45 - v50;
        result.f32[0] = v44 - v51;
        v53 = v45 + v50;
      }

      *v23 = v54;
      v23[1] = v55;
      v23 += 2;
      v30 += 6 * a4;
      v25 += 2;
      v29 += 4 * a4;
      *v26 = result.f32[0];
      v26[1] = v53;
      v26 += 2;
      v24 += 2 * a4;
      v28 += 2;
      --v12;
    }

    while (v12);
  }

  return result;
}

void sub_1002F6DCC(int a1)
{
  v2 = 134218498;
  Current = CFAbsoluteTimeGetCurrent();
  v4 = 2080;
  v5 = "void kf_work(kiss_fft_cpx *, const CMQueue<scalar_32> &, int, const size_t, int, const int *, const kiss_fft_state *)";
  v6 = 1024;
  v7 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "ERROR,Die,Time,%.3f,Function,%s,Error in FFT,p,%d\n", &v2, 0x1Cu);
}

id sub_1002F7258()
{
  if (qword_100456818 != -1)
  {
    sub_1003061F8();
  }

  v1 = qword_100456820;

  return v1;
}

void sub_1002F7A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13)
{
  objc_destroyWeak((v17 - 136));

  _Unwind_Resume(a1);
}

__CFString *sub_1002F7B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  switch(a2)
  {
    case 4:
      v4 = *(a1 + 32);
      if (v4[408] == 1)
      {
        [v4 resetSession];
      }

LABEL_10:
      v3 = 0;
      break;
    case 3:
      if (a3 == 1)
      {
        v3 = objc_retainBlock(*(*(a1 + 32) + 56));
        break;
      }

      goto LABEL_10;
    case 1:
      v3 = @"idle";
      break;
    default:
      v3 = 0;
      break;
  }

  return v3;
}

__CFString *sub_1002F7C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  switch(a2)
  {
    case 4:
      [*(a1 + 32) start];
      v4 = 0;
      break;
    case 3:
      v4 = 0;
      if (a3 > 3)
      {
        if (a3 == 4)
        {
          v5 = *(*(a1 + 32) + 64);
        }

        else
        {
          if (a3 != 5)
          {
            break;
          }

          v5 = *(*(a1 + 32) + 72);
        }
      }

      else if ((a3 - 2) >= 2)
      {
        if (a3 != 1)
        {
          break;
        }

        if (qword_100456818 != -1)
        {
          sub_1003061F8();
        }

        v6 = qword_100456820;
        if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO))
        {
          v8[0] = 67109120;
          v8[1] = 600;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "reset timeout to  %u sec", v8, 8u);
        }

        [*(*(a1 + 32) + 88) setNextFireDelay:600.0 interval:1.79769313e308];
        v5 = *(*(a1 + 32) + 56);
      }

      else
      {
        v5 = *(*(a1 + 32) + 48);
      }

      v4 = objc_retainBlock(v5);
      break;
    case 1:
      v4 = @"reading";
      break;
    default:
      v4 = 0;
      break;
  }

  return v4;
}

__CFString *sub_1002F7D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  if (a2 > 3)
  {
    if (a2 == 4)
    {
      if (qword_100456818 != -1)
      {
        sub_1003061F8();
      }

      v7 = qword_100456820;
      if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "set timer for POI resolution timeout", v13, 2u);
      }

      [*(*(a1 + 32) + 88) setNextFireDelay:10.0 interval:1.79769313e308];
      goto LABEL_26;
    }

    if (a2 != 6)
    {
      goto LABEL_35;
    }

    if (qword_100456818 != -1)
    {
      sub_1003061F8();
    }

    v6 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "cancel POI timeout timer", buf, 2u);
    }

    [*(*(a1 + 32) + 88) setNextFireDelay:1.79769313e308 interval:1.79769313e308];
LABEL_12:
    v5 = 0;
    if (a3 <= 2)
    {
      if (a3 != 1)
      {
        if (a3 != 2)
        {
          goto LABEL_35;
        }

LABEL_25:
        [*(a1 + 32) evaluateCrashWithPOI];
LABEL_26:
        v5 = 0;
        goto LABEL_35;
      }

      if (qword_100456818 != -1)
      {
        sub_10030620C();
      }

      v9 = qword_100456820;
      if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "ignoring trigger in wait state while waiting for POI resolution", v11, 2u);
      }

      v8 = *(*(a1 + 32) + 72);
    }

    else
    {
      switch(a3)
      {
        case 3:
          v8 = *(*(a1 + 32) + 48);
          break;
        case 4:
          v8 = *(*(a1 + 32) + 64);
          break;
        case 6:
          goto LABEL_25;
        default:
          goto LABEL_35;
      }
    }

    v5 = objc_retainBlock(v8);
    goto LABEL_35;
  }

  if (a2 == 1)
  {
    v5 = @"waitForPOI";
    goto LABEL_35;
  }

  if (a2 == 3)
  {
    goto LABEL_12;
  }

LABEL_35:

  return v5;
}

__CFString *sub_1002F7FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  if (a2 > 3)
  {
    if (a2 == 4)
    {
      if ((*(*(a1 + 32) + 409) & 1) == 0)
      {
        if (qword_100456818 != -1)
        {
          sub_1003061F8();
        }

        v11 = qword_100456820;
        if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_FAULT))
        {
          *v16 = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "SOSInProgress false while in wait state", v16, 2u);
        }

        goto LABEL_33;
      }

      if (qword_100456818 != -1)
      {
        sub_1003061F8();
      }

      v10 = qword_100456820;
      if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO))
      {
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "wait for 30s for SOS resolution", v15, 2u);
      }

      v8 = *(*(a1 + 32) + 88);
      v9 = 30.0;
    }

    else
    {
      if (a2 != 6)
      {
        goto LABEL_35;
      }

      if (qword_100456818 != -1)
      {
        sub_1003061F8();
      }

      v7 = qword_100456820;
      if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "cancel sos timeout timer", buf, 2u);
      }

      v8 = *(*(a1 + 32) + 88);
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

  if (a3 == 7 || a3 == 2)
  {
    goto LABEL_33;
  }

  if (a3 != 1)
  {
    goto LABEL_28;
  }

  if (*(*(a1 + 32) + 409) == 1)
  {
    if (qword_100456818 != -1)
    {
      sub_1003061F8();
    }

    v5 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "ignoring trigger in wait state while waiting for SOS resolution", v13, 2u);
    }

    v6 = *(*(a1 + 32) + 64);
    goto LABEL_34;
  }

LABEL_33:
  v6 = *(*(a1 + 32) + 48);
LABEL_34:
  v4 = objc_retainBlock(v6);
LABEL_35:

  return v4;
}

id sub_1002F81EC(uint64_t a1)
{
  if (qword_100456818 != -1)
  {
    sub_1003061F8();
  }

  v2 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Trigger timeout expired", v4, 2u);
  }

  return [*(*(a1 + 32) + 40) signal:2 data:0];
}

void sub_1002F8550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  v20 = v15;

  _Unwind_Resume(a1);
}

void sub_1002F85B4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v24 = v5;
  v26 = a3;
  if (v26)
  {
    if (qword_100456818 != -1)
    {
      sub_1003061F8();
    }

    v6 = qword_100456820;
    if (!os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    *buf = 138543362;
    v33 = v26;
    v7 = "geoservices place lookup failed with error: %{public}@";
    v8 = v6;
    v9 = 12;
LABEL_6:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, v7, buf, v9);
LABEL_7:
    *(*(a1 + 32) + 194) = 1;
    goto LABEL_25;
  }

  if (!v5)
  {
    if (qword_100456818 != -1)
    {
      sub_1003061F8();
    }

    v23 = qword_100456820;
    if (!os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v7 = "geoservices place unexpectedly received a nil result but no error";
    v8 = v23;
    v9 = 2;
    goto LABEL_6;
  }

  v10 = [*(a1 + 40) objectAtIndexedSubscript:0];
  v11 = [v5 mapItemsForSpatialLookupParameters:v10];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v11;
  v12 = [obj countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v12)
  {
    v13 = *v29;
    do
    {
      v14 = 0;
      do
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v28 + 1) + 8 * v14);
        if (qword_100456818 != -1)
        {
          sub_10030620C();
        }

        v16 = qword_100456820;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v17 = [v15 name];
          v18 = [v15 spatialMappedPlaceCategories];
          v19 = *(a1 + 48);
          v20 = *(a1 + 56);
          [v15 centerCoordinate];
          GEOCalculateDistance();
          *buf = 134218755;
          v33 = v15;
          v34 = 2113;
          v35 = v17;
          v36 = 2112;
          v37 = v18;
          v38 = 2048;
          v39 = v21;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "geoservices mapItem %p name %{private}@ category %@ distance %f", buf, 0x2Au);
        }

        *(*(a1 + 32) + 192) = 1;
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [obj countByEnumeratingWithState:&v28 objects:v40 count:16];
    }

    while (v12);
  }

  *(*(a1 + 32) + 194) = 1;
  if (qword_100456818 != -1)
  {
    sub_10030620C();
  }

  v22 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "geoservices lookup done", buf, 2u);
  }

LABEL_25:
  [*(*(a1 + 32) + 40) signal:6 data:{0, v24}];
}

void sub_1002F8EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a14)
  {
    sub_100009A48(a14);
  }

  if (a18)
  {
    sub_100009A48(a18);
  }

  _Unwind_Resume(a1);
}

char **sub_1002F8F1C@<X0>(uint64_t a1@<X0>, char ***a2@<X8>)
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

void sub_1002F93C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a12)
  {
    sub_100009A48(a12);
  }

  if (a16)
  {
    sub_100009A48(a16);
  }

  _Unwind_Resume(a1);
}

void sub_1002F95A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1002F9710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = a10;
  a10 = 0;
  if (v12)
  {
    sub_100011018(&a10, v12);
  }

  _Unwind_Resume(a1);
}

void sub_1002FA8D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_1002FAA5C()
{
  if (qword_100456868 != -1)
  {
    sub_1003065C0();
  }

  v1 = qword_100456870;

  return v1;
}

void sub_1002FAB2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

void sub_1002FAE8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = a10;
  a10 = 0;
  if (v20)
  {
    sub_1002E6574(&a10, v20);
  }

  _Unwind_Resume(a1);
}

void sub_1002FB6EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a12)
  {
    sub_100009A48(a12);
  }

  if (a16)
  {
    sub_100009A48(a16);
  }

  _Unwind_Resume(a1);
}

void sub_1002FB9A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100009A48(a11);
  }

  _Unwind_Resume(a1);
}

void sub_1002FBEC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (a24)
  {
    sub_100009A48(a24);
  }

  if (v24)
  {
    sub_100009A48(v24);
  }

  _Unwind_Resume(a1);
}

void sub_1002FC1D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (v22)
  {
    sub_100009A48(v22);
    if (!v21)
    {
LABEL_3:
      if (!v20)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if (!v21)
  {
    goto LABEL_3;
  }

  sub_100009A48(v21);
  if (!v20)
  {
LABEL_4:
    if (!v19)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_10:
  sub_100009A48(v20);
  if (!v19)
  {
LABEL_6:
    if (a18)
    {
      sub_100009A48(a18);
    }

    if (v18)
    {
      sub_100009A48(v18);
    }

    _Unwind_Resume(exception_object);
  }

LABEL_5:
  sub_100009A48(v19);
  goto LABEL_6;
}

void sub_1002FCA00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, std::__shared_weak_count *a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30)
{
  if (a18)
  {
    sub_100009A48(a18);
    if (!v33)
    {
LABEL_3:
      if (!v32)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if (!v33)
  {
    goto LABEL_3;
  }

  sub_100009A48(v33);
  if (!v32)
  {
LABEL_4:
    if (!v31)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_10:
  sub_100009A48(v32);
  if (!v31)
  {
LABEL_6:
    if (a10)
    {
      sub_100009A48(a10);
    }

    if (v30)
    {
      sub_100009A48(v30);
    }

    if (a26)
    {
      sub_100009A48(a26);
    }

    if (a11)
    {
      sub_100009A48(a11);
    }

    if (a30)
    {
      sub_100009A48(a30);
    }

    if (a12)
    {
      sub_100009A48(a12);
    }

    _Unwind_Resume(a1);
  }

LABEL_5:
  sub_100009A48(v31);
  goto LABEL_6;
}

void sub_1002FD774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  v23 = *(v21 - 104);
  if (v23)
  {
    sub_100009A48(v23);
  }

  if (v19)
  {
    sub_100009A48(v19);
  }

  _Unwind_Resume(a1);
}

void *sub_1002FD810(void *result)
{
  *(result[4] + 360) = result[5];
  v2 = result[4];
  if (*(v2 + 195))
  {
    if (!*(v2 + 409))
    {
      return result;
    }

    goto LABEL_5;
  }

  if (*(v2 + 409))
  {
LABEL_5:
    v3 = *(v2 + 40);

    return [v3 signal:4 data:0];
  }

  v4 = result;
  [*(v2 + 32) feedDetectionDecision:0 uuid:0 forMode:1];
  [*(v4[4] + 40) signal:3 data:0];
  v5 = *(v4[4] + 168);

  return [v5 releasePowerAssertion];
}

void sub_1002FDC6C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100009A48(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002FDC84(uint64_t a1, int a2)
{
  if (qword_1004567F8 != -1)
  {
    sub_1003073A8();
  }

  v4 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_INFO))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[C] force de %d", v5, 8u);
  }

  *(a1 + 104) = a2;
}

void sub_1002FDD4C(uint64_t a1, int a2)
{
  if (qword_1004567F8 != -1)
  {
    sub_1003073A8();
  }

  v4 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_INFO))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[C] force pu %d", v5, 8u);
  }

  *(a1 + 100) = a2;
}

void sub_1002FDE14(uint64_t a1, int a2)
{
  if (qword_1004567F8 != -1)
  {
    sub_1003073A8();
  }

  v4 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_INFO))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[C] force ff %d", v5, 8u);
  }

  *(a1 + 101) = a2;
}

void sub_1002FDEDC(uint64_t a1, int a2)
{
  if (qword_1004567F8 != -1)
  {
    sub_1003073A8();
  }

  v4 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_INFO))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[C] force ba %d", v5, 8u);
  }

  *(a1 + 102) = a2;
}

void sub_1002FDFA4(uint64_t a1, int a2)
{
  if (qword_1004567F8 != -1)
  {
    sub_1003073A8();
  }

  v4 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_INFO))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[C] force au %d", v5, 8u);
  }

  *(a1 + 103) = a2;
}

void sub_1002FE06C(uint64_t a1, int a2)
{
  if (qword_1004567F8 != -1)
  {
    sub_1003073A8();
  }

  v4 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_INFO))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[C] force re %d", v5, 8u);
  }

  *(a1 + 108) = a2;
}

void sub_1002FE464(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100009A48(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002FE47C(uint64_t a1, int a2)
{
  if (qword_1004567F8 != -1)
  {
    sub_1003073A8();
  }

  v4 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_INFO))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[HSC] setting force de %d", v5, 8u);
  }

  *(a1 + 81) = a2;
}

void sub_1002FE544(uint64_t a1, int a2)
{
  if (qword_1004567F8 != -1)
  {
    sub_1003073A8();
  }

  v4 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_INFO))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[HSC] setting force pu %d", v5, 8u);
  }

  *(a1 + 76) = a2;
}

void sub_1002FE60C(uint64_t a1, int a2)
{
  if (qword_1004567F8 != -1)
  {
    sub_1003073A8();
  }

  v4 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_INFO))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[HSC] setting force ff %d", v5, 8u);
  }

  *(a1 + 77) = a2;
}

void sub_1002FE6D4(uint64_t a1, int a2)
{
  if (qword_1004567F8 != -1)
  {
    sub_1003073A8();
  }

  v4 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_INFO))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[HSC] setting force ba %d", v5, 8u);
  }

  *(a1 + 78) = a2;
}

void sub_1002FE79C(uint64_t a1, int a2)
{
  if (qword_1004567F8 != -1)
  {
    sub_1003073A8();
  }

  v4 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_INFO))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[HSC] setting force au %d", v5, 8u);
  }

  *(a1 + 79) = a2;
}

void sub_1002FE864(uint64_t a1, int a2)
{
  if (qword_1004567F8 != -1)
  {
    sub_1003073A8();
  }

  v4 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_INFO))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[HSC] setting force gp %d", v5, 8u);
  }

  *(a1 + 80) = a2;
}

void sub_1002FEB84(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100009A48(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002FEB9C(uint64_t a1, int a2)
{
  if (qword_1004567F8 != -1)
  {
    sub_1003073A8();
  }

  v4 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_INFO))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[RC] setting force de %d", v5, 8u);
  }

  *(a1 + 112) = a2;
}

void sub_1002FEC64(uint64_t a1, int a2)
{
  if (qword_1004567F8 != -1)
  {
    sub_1003073A8();
  }

  v4 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_INFO))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[RC] setting force ba %d", v5, 8u);
  }

  *(a1 + 113) = a2;
}

void sub_1002FED2C(uint64_t a1, int a2)
{
  if (qword_1004567F8 != -1)
  {
    sub_1003073A8();
  }

  v4 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_INFO))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[RC] setting force ro %d", v5, 8u);
  }

  *(a1 + 115) = a2;
}

void sub_1002FEDF4(uint64_t a1, int a2)
{
  if (qword_1004567F8 != -1)
  {
    sub_1003073A8();
  }

  v4 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_INFO))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[RC] setting force re %d", v5, 8u);
  }

  *(a1 + 116) = a2;
}

void sub_1002FF1EC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100009A48(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002FF204(uint64_t a1, int a2)
{
  if (qword_1004567F8 != -1)
  {
    sub_1003073A8();
  }

  v4 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_INFO))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[SC] setting force de %d", v5, 8u);
  }

  *(a1 + 581) = a2;
}

void sub_1002FF2CC(uint64_t a1, int a2)
{
  if (qword_1004567F8 != -1)
  {
    sub_1003073A8();
  }

  v4 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_INFO))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[SC] setting force c %d", v5, 8u);
  }

  *(a1 + 577) = a2;
}

void sub_1002FF394(uint64_t a1, int a2)
{
  if (qword_1004567F8 != -1)
  {
    sub_1003073A8();
  }

  v4 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_INFO))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[SC] setting force roc %d", v5, 8u);
  }

  *(a1 + 578) = a2;
}

void sub_1002FF45C(uint64_t a1, int a2)
{
  if (qword_1004567F8 != -1)
  {
    sub_1003073A8();
  }

  v4 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_INFO))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[SC] setting force hsc %d", v5, 8u);
  }

  *(a1 + 579) = a2;
}

void sub_1002FF524(uint64_t a1, int a2)
{
  if (qword_1004567F8 != -1)
  {
    sub_1003073A8();
  }

  v4 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_INFO))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[SC] setting force desc %d", v5, 8u);
  }

  *(a1 + 580) = a2;
}

void sub_1002FF5EC(uint64_t a1, int a2)
{
  if (qword_1004567F8 != -1)
  {
    sub_1003073A8();
  }

  v4 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_INFO))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[SC] setting force au %d", v5, 8u);
  }

  *(a1 + 582) = a2;
}

void sub_1002FF774(uint64_t a1, int a2)
{
  if (qword_1004567E8 != -1)
  {
    sub_100307B90();
  }

  v4 = qword_1004567F0;
  if (os_log_type_enabled(qword_1004567F0, OS_LOG_TYPE_DEBUG))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "setting force participation %d", v5, 8u);
  }

  *(a1 + 40) = a2;
}

void sub_100300294(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100009A48(a12);
  }

  if (v12)
  {
    sub_100009A48(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100300D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    sub_100009A48(a20);
  }

  if (a10)
  {
    sub_100009A48(a10);
  }

  _Unwind_Resume(a1);
}

void sub_100301E8C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100304498(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_100458888);

  _Unwind_Resume(a1);
}

void sub_1003046C0(id a1)
{
  v1 = +[NSFileManager defaultManager];
  v2 = NSTemporaryDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"kappaTestTTRSpooler"];
  [v1 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:0];

  v4 = [CSKappaTap2Radar alloc];
  v5 = NSTemporaryDirectory();
  v6 = [v5 stringByAppendingPathComponent:@"kappaTestTTRSpooler"];
  v7 = [(CSKappaTap2Radar *)v4 initWithSpoolerFolder:v6 andConfiguration:qword_100458880];
  v8 = qword_100458890;
  qword_100458890 = v7;

  v11 = 0;
  [qword_100458890 startMonitoringWithError:&v11];
  v9 = v11;
  if (v9)
  {
    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v10 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "[TTR] Error monitoring for TTR test: %@", buf, 0xCu);
    }
  }
}

void sub_1003049A8(_Unwind_Exception *a1)
{
  v3 = v1;

  _Unwind_Resume(a1);
}

void sub_100305DD0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[50] uploadUserInfoWithHandler:v6];
  }
}

void sub_100306090(id a1)
{
  qword_100456820 = os_log_create("com.apple.anomalydetectiond", "KappaDetection");

  _objc_release_x1();
}

void sub_1003060D4(id a1)
{
  qword_1004567E0 = os_log_create("com.apple.anomalydetectiond", "AnomalyEvent");

  _objc_release_x1();
}

void sub_100306118(id a1)
{
  qword_100456870 = os_log_create("com.apple.anomalydetectiond", "Companion");

  _objc_release_x1();
}

void sub_10030615C(id a1)
{
  qword_100456800 = os_log_create("com.apple.anomalydetectiond", "Alg");

  _objc_release_x1();
}

void sub_1003061A0(id a1)
{
  qword_1004567F0 = os_log_create("com.apple.anomalydetectiond", "Flow");

  _objc_release_x1();
}

void CLKappaFeaturesAlgDataIntegrityResult::CLKappaFeaturesAlgDataIntegrityResult(CLKappaFeaturesAlgDataIntegrityResult *this)
{
  *(this + 8) = 0;
  *this = off_100434320;
  *(this + 82) = 0;
}

{
  *(this + 8) = 0;
  *this = off_100434320;
  *(this + 82) = 0;
}

void CLKappaFeaturesAlgDataIntegrityResult::~CLKappaFeaturesAlgDataIntegrityResult(CLKappaFeaturesAlgDataIntegrityResult *this)
{
  CLKappaAlgBlockResult::~CLKappaAlgBlockResult(this);

  operator delete();
}

_OWORD *CLKappaFeaturesAlgDataIntegrityResult::reset(CLKappaFeaturesAlgDataIntegrityResult *this)
{
  *(this + 40) = 0u;
  result = (this + 40);
  *(result - 3) = 0;
  *(result - 2) = 0;
  *(result - 1) = 0;
  result[1] = 0u;
  result[2] = 0u;
  result[3] = 0u;
  result[4] = 0u;
  result[5] = 0u;
  result[6] = 0u;
  result[7] = 0u;
  result[8] = 0u;
  result[9] = 0u;
  result[10] = 0u;
  result[11] = 0u;
  result[12] = 0u;
  result[13] = 0u;
  result[14] = 0u;
  result[15] = 0u;
  result[16] = 0u;
  result[17] = 0u;
  return result;
}

void CLKappaFeaturesAlgDataIntegrity::CLKappaFeaturesAlgDataIntegrity(CLKappaFeaturesAlgDataIntegrity *this, uint64_t *a2)
{
  CLKappaAlgBlock::CLKappaAlgBlock(this, a2 + 1);
  v4 = *a2;
  *v5 = *a2;
  *(this + *(v4 - 152)) = a2[6];
  *(this + *(*this - 160)) = a2[7];
  *(this + *(*this - 168)) = a2[8];
  *(this + *(*this - 176)) = a2[9];
  *(this + 120) = 0;
  *(this + 128) = 0;
  *(this + 132) = 0u;
  *(this + 148) = 0u;
  *(this + 41) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 64) = 0;
  operator new();
}

void sub_10030952C(_Unwind_Exception *a1)
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

char **sub_100309560@<X0>(uint64_t a1@<X0>, char ***a2@<X8>)
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

void CLKappaFeaturesAlgDataIntegrity::CLKappaFeaturesAlgDataIntegrity(CLKappaFeaturesAlgDataIntegrity *this)
{
  *this = off_100411FE8;
  *(this + 21) = off_100412090;
  *(this + 22) = off_100412158;
  *(this + 23) = off_100412210;
  CLKappaAlgBlock::CLKappaAlgBlock(this, off_100434958);
  *v1 = off_100434408;
  *(v1 + 168) = off_1004346C8;
  *(v1 + 176) = off_100434810;
  *(v1 + 184) = off_100434900;
  *(v1 + 120) = 0;
  *(v1 + 128) = 0;
  *(v1 + 132) = 0u;
  *(v1 + 148) = 0u;
  *(v1 + 164) = 0;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0;
  operator new();
}

void sub_10030983C(_Unwind_Exception *a1)
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

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100434958);
  _Unwind_Resume(a1);
}

void CLKappaFeaturesAlgDataIntegrity::~CLKappaFeaturesAlgDataIntegrity(CLKappaFeaturesAlgDataIntegrity *this, uint64_t *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 152)) = a2[6];
  *(this + *(*this - 160)) = a2[7];
  *(this + *(*this - 168)) = a2[8];
  *(this + *(*this - 176)) = a2[9];
  v5 = *(this + 7);
  if (v5)
  {
    sub_100009A48(v5);
  }

  v6 = *(this + 5);
  if (v6)
  {
    sub_100009A48(v6);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(this, a2 + 1);
}

void CLKappaFeaturesAlgDataIntegrity::~CLKappaFeaturesAlgDataIntegrity(CLKappaFeaturesAlgDataIntegrity *this)
{
}

{

  operator delete();
}

void virtual thunk toCLKappaFeaturesAlgDataIntegrity::~CLKappaFeaturesAlgDataIntegrity(void *a1)
{
}

{
}

{
}

{

  operator delete();
}

{

  operator delete();
}

{

  operator delete();
}

void virtual thunk toCLKappaFeaturesAlgDataIntegrity::~CLKappaFeaturesAlgDataIntegrity(CLKappaFeaturesAlgDataIntegrity *this)
{
}

{

  operator delete();
}

uint64_t CLKappaFeaturesAlgDataIntegrity::reset(CLKappaFeaturesAlgDataIntegrity *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  return TrustedAudioHelper::reset(this + 128);
}

void CLKappaFeaturesAlgDataIntegrity::streamInfo(CLKappaFeaturesAlgDataIntegrity *this@<X0>, NSArray *a2@<X1>, uint64_t a3@<X8>)
{
  v9 = a2;
  v4 = [(NSArray *)v9 count];
  if (v4)
  {
    v5 = [(NSArray *)v9 objectAtIndex:0];
    v6 = [v5 timestamp];

    v7 = [(NSArray *)v9 objectAtIndex:v4 - 1];
    v8 = [v7 timestamp];
  }

  else
  {
    v8 = 0;
    v6 = 0;
  }

  *a3 = v4;
  *(a3 + 8) = v6;
  *(a3 + 16) = v8;
}

uint64_t CLKappaFeaturesAlgDataIntegrity::epochFinalize(CLKappaFeaturesAlgDataIntegrity *this, NSArray *a2)
{
  v2 = a2;
  v4 = *(this + 4);
  *(v4 + 16) = a2;
  ++*(v4 + 328);
  v5 = *(*(this + 6) + 24);
  CLKappaFeaturesAlgDataIntegrity::streamInfo(v5, v5, buf);
  *(v4 + 88) = *buf;
  v6 = v81;
  *(v4 + 136) = *&buf[8];
  *(v4 + 232) = v6;

  v7 = *(*(this + 6) + 32);
  CLKappaFeaturesAlgDataIntegrity::streamInfo(v7, v7, buf);
  *(v4 + 92) = *buf;
  v8 = v81;
  *(v4 + 144) = *&buf[8];
  *(v4 + 240) = v8;

  v9 = *(*(this + 6) + 96);
  CLKappaFeaturesAlgDataIntegrity::streamInfo(v9, v9, buf);
  *(v4 + 96) = *buf;
  v10 = v81;
  *(v4 + 152) = *&buf[8];
  *(v4 + 248) = v10;

  v11 = *(*(this + 6) + 72);
  CLKappaFeaturesAlgDataIntegrity::streamInfo(v11, v11, buf);
  *(v4 + 100) = *buf;
  v12 = v81;
  *(v4 + 160) = *&buf[8];
  *(v4 + 256) = v12;

  v13 = *(*(this + 6) + 48);
  CLKappaFeaturesAlgDataIntegrity::streamInfo(v13, v13, buf);
  *(v4 + 104) = *buf;
  v14 = v81;
  *(v4 + 168) = *&buf[8];
  *(v4 + 264) = v14;

  v15 = *(*(this + 6) + 56);
  CLKappaFeaturesAlgDataIntegrity::streamInfo(v15, v15, buf);
  *(v4 + 108) = *buf;
  v16 = v81;
  *(v4 + 176) = *&buf[8];
  *(v4 + 272) = v16;

  v17 = *(*(this + 6) + 80);
  CLKappaFeaturesAlgDataIntegrity::streamInfo(v17, v17, buf);
  *(v4 + 112) = *buf;
  v18 = v81;
  *(v4 + 184) = *&buf[8];
  *(v4 + 280) = v18;

  v19 = *(*(this + 6) + 64);
  CLKappaFeaturesAlgDataIntegrity::streamInfo(v19, v19, buf);
  *(v4 + 116) = *buf;
  v20 = v81;
  *(v4 + 192) = *&buf[8];
  *(v4 + 288) = v20;

  v21 = *(*(this + 6) + 112);
  CLKappaFeaturesAlgDataIntegrity::streamInfo(v21, v21, buf);
  *(v4 + 120) = *buf;
  v22 = v81;
  *(v4 + 200) = *&buf[8];
  *(v4 + 296) = v22;

  v23 = *(*(this + 6) + 120);
  CLKappaFeaturesAlgDataIntegrity::streamInfo(v23, v23, buf);
  *(v4 + 124) = *buf;
  v24 = v81;
  *(v4 + 208) = *&buf[8];
  *(v4 + 304) = v24;

  v25 = *(*(this + 6) + 128);
  CLKappaFeaturesAlgDataIntegrity::streamInfo(v25, v25, buf);
  *(v4 + 128) = *buf;
  v26 = v81;
  *(v4 + 216) = *&buf[8];
  *(v4 + 312) = v26;

  v27 = *(*(this + 6) + 88);
  CLKappaFeaturesAlgDataIntegrity::streamInfo(v27, v27, buf);
  *(v4 + 132) = *buf;
  v28 = v81;
  *(v4 + 224) = *&buf[8];
  *(v4 + 320) = v28;

  if (qword_1004567F8 != -1)
  {
    sub_10030A7F4();
  }

  v29 = qword_100456800;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    v77 = v2;
    v49 = *(v4 + 88);
    v50 = *(*(this + 4) + 328);
    v48 = *(v4 + 92);
    v30 = *(v4 + 136);
    v31 = *(v4 + 144);
    v32 = *(v4 + 232);
    v33 = *(v4 + 240);
    v34 = *(v4 + 96);
    v51 = *(v4 + 100);
    v35 = *(v4 + 152);
    v36 = *(v4 + 248);
    v56 = *(v4 + 104);
    v61 = *(v4 + 108);
    v54 = *(v4 + 168);
    v55 = *(v4 + 256);
    v60 = *(v4 + 176);
    v52 = *(v4 + 160);
    v53 = *(v4 + 264);
    v62 = *(v4 + 112);
    v58 = *(v4 + 184);
    v59 = *(v4 + 272);
    v66 = *(v4 + 192);
    v57 = *(v4 + 280);
    v67 = *(v4 + 116);
    v68 = *(v4 + 120);
    v73 = *(v4 + 124);
    v64 = *(v4 + 200);
    v65 = *(v4 + 288);
    v63 = *(v4 + 296);
    v71 = *(v4 + 304);
    v72 = *(v4 + 208);
    v74 = *(v4 + 128);
    v76 = *(v4 + 132);
    v37 = *(v4 + 216);
    v75 = *(v4 + 224);
    v38 = *(v4 + 312);
    v39 = *(v4 + 320);
    v69 = v38;
    v70 = v37;
    v40 = +[CSTimeManager SPU_estimate_current_timestamp];
    if (*(this + 120) == 1)
    {
      v41 = *(this + 18) > 0.0;
    }

    else
    {
      v41 = -1;
    }

    *&buf[4] = v50;
    *&buf[10] = v49;
    v81 = v30;
    v83 = v32;
    v85 = v48;
    v87 = v31;
    v89 = v33;
    v91 = v34;
    v93 = v35;
    v95 = v36;
    *buf = 67119104;
    v97 = v51;
    *&buf[8] = 1024;
    v99 = v52;
    *&buf[14] = 2048;
    v82 = 2048;
    v84 = 1024;
    v86 = 2048;
    v88 = 2048;
    v90 = 1024;
    v92 = 2048;
    v94 = 2048;
    v96 = 1024;
    v98 = 2048;
    v100 = 2048;
    v101 = v55;
    v102 = 1024;
    v103 = v56;
    v104 = 2048;
    v105 = v54;
    v106 = 2048;
    v107 = v53;
    v108 = 1024;
    v109 = v61;
    v110 = 2048;
    v111 = v60;
    v112 = 2048;
    v113 = v59;
    v114 = 1024;
    v115 = v62;
    v116 = 2048;
    v117 = v58;
    v118 = 2048;
    v119 = v57;
    v120 = 1024;
    v121 = v67;
    v122 = 2048;
    v123 = v66;
    v124 = 2048;
    v125 = v65;
    v126 = 1024;
    v127 = v68;
    v128 = 2048;
    v129 = v64;
    v130 = 2048;
    v131 = v63;
    v132 = 1024;
    v133 = v73;
    v134 = 2048;
    v135 = v72;
    v136 = 2048;
    v137 = v71;
    v138 = 1024;
    v139 = v74;
    v140 = 2048;
    v141 = v70;
    v142 = 2048;
    v143 = v69;
    v144 = 1024;
    v145 = v76;
    v146 = 2048;
    v147 = v75;
    v148 = 2048;
    v149 = v39;
    v150 = 2048;
    v2 = v77;
    v151 = v77;
    v152 = 2048;
    v153 = v40;
    v154 = 1024;
    v155 = v41;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "[DataIntegrity] Stream=count [min_ts max_ts] epoch %d accel800=%u [%llu %llu] hgaccel=%u [%llu %llu] trigger=%u [%llu %llu] dm6=%u [%llu %llu] gps=%u [%llu %llu] steps=%u [%llu %llu] audio=%u [%llu %llu] pressure=%u [%llu %llu] hertzSample=%u [%llu %llu] companionStatus=%u [%llu %llu] remoteSample=%u [%llu %llu] ta=%u [%llu %llu] ts %llu now %llu la=%d ", buf, 0x15Au);
  }

  v42 = +[CSPlatformInfo sharedInstance];
  v43 = [v42 isMDevice];

  if (v43)
  {
    v44 = *(this + 6);
    v45 = *(v44 + 88);
    v46 = *(v44 + 24);
    TrustedAudioHelper::summarizeTrusted(v46, v45, v2, &v78);
    *buf = v78;
    v81 = v79;
  }

  else
  {
    TrustedAudioHelper::summarizeUntrusted(*(*(this + 6) + 24), this + 64, v2, &v78);
    *buf = v78;
    v81 = v79;
  }

  v78 = *buf;
  v79 = v81;
  return TrustedAudioHelper::update(this + 128, &v78);
}

uint64_t CLKappaFeaturesAlgDataIntegrity::epochReset(CLKappaFeaturesAlgDataIntegrity *this)
{
  result = (*(**(this + 4) + 24))(*(this + 4));
  if (*(this + 120) == 1)
  {
    *(this + 120) = 0;
  }

  return result;
}

uint64_t virtual thunk toCLKappaFeaturesAlgDataIntegrity::epochReset(CLKappaFeaturesAlgDataIntegrity *this)
{
  v1 = this + *(*this - 56);
  result = (*(**(v1 + 4) + 24))(*(v1 + 4));
  if (v1[120] == 1)
  {
    v1[120] = 0;
  }

  return result;
}

__n128 CLKappaFeaturesAlgDataIntegrity::feedFeatures(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  if (*(a1 + 120) == 1)
  {
    *(a1 + 112) = *(a2 + 48);
    *(a1 + 80) = v3;
    *(a1 + 96) = v4;
    *(a1 + 64) = result;
  }

  else
  {
    *(a1 + 112) = *(a2 + 48);
    *(a1 + 80) = v3;
    *(a1 + 96) = v4;
    *(a1 + 64) = result;
    *(a1 + 120) = 1;
  }

  return result;
}

__n128 virtual thunk toCLKappaFeaturesAlgDataIntegrity::feedFeatures(void *a1, __n128 *a2)
{
  v2 = (a1 + *(*a1 - 88));
  result = *a2;
  v4 = a2[1];
  v5 = a2[2];
  if (v2[7].n128_u8[8] == 1)
  {
    v2[7].n128_u32[0] = a2[3].n128_u32[0];
    v2[5] = v4;
    v2[6] = v5;
    v2[4] = result;
  }

  else
  {
    v2[7].n128_u64[0] = a2[3].n128_u64[0];
    v2[5] = v4;
    v2[6] = v5;
    v2[4] = result;
    v2[7].n128_u8[8] = 1;
  }

  return result;
}

void sub_10030A6A8(uint64_t a1, uint64_t *a2)
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

void sub_10030A6D4(void *a1, uint64_t *a2)
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

void sub_10030A714(id a1)
{
  qword_100456800 = os_log_create("com.apple.anomalydetectiond", "Alg");

  _objc_release_x1();
}

void sub_10030A778(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100434FF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

double GPBCodedInputStreamReadDouble(void *a1)
{
  sub_10030ACF4(a1, 8);
  v2 = a1[2];
  result = *(*a1 + v2);
  a1[2] = v2 + 8;
  return result;
}

float GPBCodedInputStreamReadFloat(void *a1)
{
  sub_10030ACF4(a1, 4);
  v2 = a1[2];
  result = *(*a1 + v2);
  a1[2] = v2 + 4;
  return result;
}

uint64_t GPBCodedInputStreamReadInt64_0(uint64_t *a1)
{
  v2 = 0;
  v3 = 0;
  while (v2 <= 0x3F)
  {
    sub_10030ACF4(a1, 1);
    v4 = *a1;
    v5 = a1[2];
    a1[2] = v5 + 1;
    LOBYTE(v4) = *(v4 + v5);
    v3 |= (v4 & 0x7F) << v2;
    v2 += 7;
    if ((v4 & 0x80) == 0)
    {
      return v3;
    }
  }

  sub_10030AB68(-105, @"Invalid VarInt64");
  return 0;
}

uint64_t GPBCodedInputStreamReadFixed64(void *a1)
{
  sub_10030ACF4(a1, 8);
  v2 = a1[2];
  result = *(*a1 + v2);
  a1[2] = v2 + 8;
  return result;
}

uint64_t GPBCodedInputStreamReadFixed32(void *a1)
{
  sub_10030ACF4(a1, 4);
  v2 = a1[2];
  result = *(*a1 + v2);
  a1[2] = v2 + 4;
  return result;
}

uint64_t GPBCodedInputStreamReadSFixed32(void *a1)
{
  sub_10030ACF4(a1, 4);
  v2 = a1[2];
  result = *(*a1 + v2);
  a1[2] = v2 + 4;
  return result;
}

uint64_t GPBCodedInputStreamReadSFixed64(void *a1)
{
  sub_10030ACF4(a1, 8);
  v2 = a1[2];
  result = *(*a1 + v2);
  a1[2] = v2 + 8;
  return result;
}

uint64_t GPBCodedInputStreamReadTag(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 == *(a1 + 8) || v2 == *(a1 + 24))
  {
    Int64_0 = 0;
    *(a1 + 32) = 0;
  }

  else
  {
    Int64_0 = GPBCodedInputStreamReadInt64_0(a1);
    *(a1 + 32) = Int64_0;
    if (!GPBWireFormatIsValidTag(Int64_0))
    {
      sub_10030AB68(-103, @"Invalid wireformat in tag.");
      Int64_0 = *(a1 + 32);
    }

    if (!GPBWireFormatGetTagFieldNumber(Int64_0))
    {
      sub_10030AB68(-103, @"A zero field number on the wire is invalid.");
      return *(a1 + 32);
    }
  }

  return Int64_0;
}

id sub_10030AB68(uint64_t a1, void *a2)
{
  if ([a2 length])
  {
    v8 = @"Reason";
    v9 = a2;
    v4 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  }

  else
  {
    v4 = 0;
  }

  v6 = @"GPBCodedInputStreamUnderlyingErrorKey";
  v7 = [NSError errorWithDomain:@"GPBCodedInputStreamErrorDomain" code:a1 userInfo:v4];
  return [+[NSException exceptionWithName:reason:userInfo:](NSException raise:@"GPBCodedInputStreamException"];
}

const __CFString *GPBCodedInputStreamReadRetainedString(uint64_t *a1)
{
  Int64_0 = GPBCodedInputStreamReadInt64_0(a1);
  if (!Int64_0)
  {
    return &stru_100436548;
  }

  sub_10030ACF4(a1, Int64_0);
  result = [[NSString alloc] initWithBytes:*a1 + a1[2] length:Int64_0 encoding:4];
  a1[2] += Int64_0;
  if (!result)
  {
    sub_10030AB68(-104, 0);
    return 0;
  }

  return result;
}

void *sub_10030ACF4(void *result, uint64_t a2)
{
  v2 = result;
  v3 = result[2] + a2;
  if (v3 > result[1])
  {
    result = sub_10030AB68(-100, 0);
  }

  v4 = v2[3];
  if (v3 > v4)
  {
    v2[2] = v4;

    return sub_10030AB68(-101, 0);
  }

  return result;
}

id GPBCodedInputStreamReadRetainedBytes(uint64_t *a1)
{
  Int64_0 = GPBCodedInputStreamReadInt64_0(a1);
  if (Int64_0 < 0)
  {
    return 0;
  }

  v3 = Int64_0 & 0x7FFFFFFF;
  sub_10030ACF4(a1, v3);
  result = [[NSData alloc] initWithBytes:*a1 + a1[2] length:v3];
  a1[2] += v3;
  return result;
}

id GPBCodedInputStreamReadRetainedBytesNoCopy(uint64_t *a1)
{
  Int64_0 = GPBCodedInputStreamReadInt64_0(a1);
  if (Int64_0 < 0)
  {
    return 0;
  }

  v3 = Int64_0 & 0x7FFFFFFF;
  sub_10030ACF4(a1, v3);
  result = [[NSData alloc] initWithBytesNoCopy:*a1 + a1[2] length:v3 freeWhenDone:0];
  a1[2] += v3;
  return result;
}

unint64_t GPBCodedInputStreamPushLimit(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 16) + a2;
  if (v4 > v3)
  {
    sub_10030AB68(-102, 0);
  }

  *(a1 + 24) = v4;
  return v3;
}

_DWORD *GPBCodedInputStreamCheckLastTagWas(_DWORD *result, int a2)
{
  if (result[8] != a2)
  {
    return sub_10030AB68(-103, @"Unexpected tag read");
  }

  return result;
}

id sub_10030B734(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];

  return [(NSAssertionHandler *)v4 handleFailureInMethod:a1 object:a2 file:@"GPBCodedInputStream.m" lineNumber:349 description:@"Invalid tag"];
}

SEL sub_10030C5FC(char *__s, char *str, const char *a3, int a4)
{
  if (!__s && !a3 && (a4 & 1) == 0)
  {

    return sel_getUid(str);
  }

  if (__s)
  {
    v9 = strlen(__s);
  }

  else
  {
    v9 = 0;
  }

  v10 = strlen(str);
  v11 = v10;
  if (a3)
  {
    v10 = strlen(a3);
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  v19 = &v19;
  v13 = v11 + v9 + v12;
  v14 = v13 + 2;
  if (a4)
  {
    v15 = v13 + 2;
  }

  else
  {
    v15 = v13 + 1;
  }

  __chkstk_darwin(v10);
  v17 = &v19 - v16;
  v18 = &v19 - v16;
  if (!__s)
  {
    memcpy(v18, str, v11);
    if (!a3)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  memcpy(v18, __s, v9);
  memcpy(&v17[v9], str, v11);
  v17[v9] = __toupper(v17[v9]);
  if (a3)
  {
LABEL_18:
    memcpy(&v17[v9 + v11], a3, v12);
  }

LABEL_19:
  if (a4)
  {
    v17[v14 - 2] = 58;
  }

  v17[v15 - 1] = 0;
  return sel_getUid(v17);
}

uint64_t GPBFieldTag(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 28);
  if ((v2 & 0xF00) != 0)
  {
    v3 = 15;
    LOBYTE(v4) = 0;
  }

  else
  {
    v3 = *(v1 + 30);
    v4 = (v2 >> 2) & 1;
  }

  v5 = GPBWireFormatForType(v3, v4);
  v6 = *(v1 + 16);

  return GPBWireFormatMakeTag(v6, v5);
}

uint64_t GPBFieldAlternateTag(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 28);
  if ((*(v1 + 28) & 2) == 0)
  {
    sub_10030DE18((v1 + 28), &v6);
    v2 = v6;
  }

  v3 = GPBWireFormatForType(*(v1 + 30), (v2 & 4) == 0);
  v4 = *(v1 + 16);

  return GPBWireFormatMakeTag(v4, v3);
}

id sub_10030DCD4()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"[GPBDescriptor setupOneofs:count:firstHasIndex:]"];

  return [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"GPBDescriptor.m" lineNumber:191 description:@"Should always be <0"];
}

id sub_10030DDBC()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10030DCC8();
  return [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

id sub_10030DE18(_WORD *a1, _WORD *a2)
{
  result = [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInFunction:"handleFailureInFunction:file:lineNumber:description:" file:[NSString stringWithUTF8String:?], @"GPBDescriptor.m", 456, @"Only valid on repeated fields"];
  *a2 = *a1;
  return result;
}

id sub_10030DE90()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10030DCC8();
  return [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

id sub_10030DEEC()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10030DCC8();
  return [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

id sub_10030DF48()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10030DCC8();
  return [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

uint64_t GPBWireFormatForType(int a1, char a2)
{
  if (a2)
  {
    return 2;
  }

  else
  {
    return dword_1003BFFB4[a1];
  }
}

void *GPBCreateMessageWithAutocreator(objc_class *a1, uint64_t a2, void *a3)
{
  v5 = objc_alloc_init(a1);
  v5[4] = a2;
  v5[5] = a3;
  return v5;
}

id GPBBecomeVisibleToAutocreator(void *a1)
{
  result = a1[4];
  if (result)
  {
    v3 = a1[5];
    if (v3)
    {
      return GPBSetObjectIvarWithFieldPrivate(result, v3, a1);
    }

    else
    {
      return [result setExtension:a1[6] value:?];
    }
  }

  return result;
}

id GPBAutocreatedArrayModified(void *a1, uint64_t a2)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *([objc_opt_class() descriptor] + 1);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 fieldType] == 1 && GPBGetObjectIvarWithFieldNoAutocreate(a1, v9) == a2)
        {
          if (*(v9[1] + 30) - 13 >= 4)
          {
            v11 = &OBJC_IVAR___GPBInt32Array__autocreator;
          }

          else
          {
            v11 = &OBJC_IVAR___GPBAutocreatedArray__autocreator;
          }

          *(a2 + *v11) = 0;
          return GPBBecomeVisibleToAutocreator(a1);
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  return [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInFunction:"handleFailureInFunction:file:lineNumber:description:" file:[NSString lineNumber:"stringWithUTF8String:" description:"void GPBAutocreatedArrayModified(GPBMessage * stringWithUTF8String:?], @"GPBMessage.m", 719, @"Unknown autocreated %@ for %@."", objc_opt_class(), a1];
}

id GPBAutocreatedDictionaryModified(void *a1, uint64_t a2)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *([objc_opt_class() descriptor] + 1);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 fieldType] == 2 && GPBGetObjectIvarWithFieldNoAutocreate(a1, v9) == a2)
        {
          if ([v9 mapKeyDataType] == 14 && *(v9[1] + 30) - 13 < 4)
          {
            v11 = &OBJC_IVAR___GPBAutocreatedDictionary__autocreator;
          }

          else
          {
            v11 = &OBJC_IVAR___GPBInt32Int32Dictionary__autocreator;
          }

          *(a2 + *v11) = 0;
          return GPBBecomeVisibleToAutocreator(a1);
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  return [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInFunction:"handleFailureInFunction:file:lineNumber:description:" file:[NSString lineNumber:"stringWithUTF8String:" description:"void GPBAutocreatedDictionaryModified(GPBMessage * stringWithUTF8String:?], @"GPBMessage.m", 742, @"Unknown autocreated %@ for %@."", objc_opt_class(), a1];
}

void GPBClearMessageAutocreator(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 32))
    {
      *(a1 + 32) = 0;

      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
    }
  }
}

void GPBPrepareReadOnlySemaphore(uint64_t a1)
{
  v1 = (a1 + 56);
  if (!atomic_load((a1 + 56)))
  {
    v3 = dispatch_semaphore_create(1);
    v4 = 0;
    atomic_compare_exchange_strong(v1, &v4, v3);
    if (v4)
    {

      dispatch_release(v3);
    }
  }
}

NSError *sub_10030E75C(void *a1)
{
  if (![objc_msgSend(a1 "name")] || (result = objc_msgSend(objc_msgSend(a1, "userInfo"), "objectForKeyedSubscript:", @"GPBCodedInputStreamUnderlyingErrorKey")) == 0)
  {
    v3 = [a1 reason];
    if ([v3 length])
    {
      v5 = @"Reason";
      v6 = v3;
      v4 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
    }

    else
    {
      v4 = 0;
    }

    return [NSError errorWithDomain:@"GPBMessageErrorDomain" code:-100 userInfo:v4];
  }

  return result;
}

void sub_10030ED94(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 copyWithZone:*(a1 + 40)];
  [*(a1 + 32) setObject:v5 forKey:a2];
}

NSMutableDictionary *sub_10030EE78(void *a1, uint64_t a2)
{
  if (![a1 count])
  {
    return 0;
  }

  v4 = -[NSMutableDictionary initWithCapacity:](+[NSMutableDictionary allocWithZone:](NSMutableDictionary, "allocWithZone:", a2), "initWithCapacity:", [a1 count]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = [a1 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    v21 = *v29;
    v22 = v4;
    do
    {
      v8 = 0;
      v23 = v6;
      do
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(a1);
        }

        v9 = *(*(&v28 + 1) + 8 * v8);
        v10 = [a1 objectForKey:v9];
        v11 = *(v9[1] + 44) - 15;
        if ([v9 isRepeated])
        {
          if (v11 > 1)
          {
            v18 = [v10 mutableCopyWithZone:a2];
            goto LABEL_20;
          }

          v12 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v10, "count")}];
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v13 = [v10 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v25;
            do
            {
              for (i = 0; i != v14; i = i + 1)
              {
                if (*v25 != v15)
                {
                  objc_enumerationMutation(v10);
                }

                v17 = [*(*(&v24 + 1) + 8 * i) copyWithZone:a2];
                [v12 addObject:v17];
              }

              v14 = [v10 countByEnumeratingWithState:&v24 objects:v32 count:16];
            }

            while (v14);
          }

          v4 = v22;
          [(NSMutableDictionary *)v22 setObject:v12 forKey:v9];

          v7 = v21;
          v6 = v23;
        }

        else
        {
          if (v11 <= 1)
          {
            v18 = [v10 copyWithZone:a2];
LABEL_20:
            v19 = v18;
            [(NSMutableDictionary *)v4 setObject:v18 forKey:v9];

            goto LABEL_22;
          }

          [(NSMutableDictionary *)v4 setObject:v10 forKey:v9];
        }

LABEL_22:
        v8 = v8 + 1;
      }

      while (v8 != v6);
      v6 = [a1 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v6);
  }

  return v4;
}

void *GPBGetObjectIvarWithField(uint64_t a1, void *a2)
{
  v4 = a2[1];
  if ((*(v4 + 28) & 0xF02) != 0)
  {
    sub_100316638(a2, &v10);
    v4 = v10;
  }

  if (*(v4 + 30) - 15 >= 2)
  {
    if (GPBGetHasIvar(a1, *(v4 + 20), *(v4 + 16)))
    {
      return *(*(a1 + 64) + *(a2[1] + 24));
    }

    else
    {
      return [a2 defaultValue];
    }
  }

  else
  {
    v5 = (*(a1 + 64) + *(v4 + 24));
    v6 = atomic_load(v5);
    if (!v6)
    {
      v6 = objc_alloc_init([a2 msgClass]);
      v6[4] = a1;
      v7 = a2;
      v8 = 0;
      v6[5] = v7;
      atomic_compare_exchange_strong(v5, &v8, v6);
      if (v8)
      {
        GPBClearMessageAutocreator(v6);

        return v8;
      }
    }
  }

  return v6;
}

void sub_10030F8CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_10030F8EC(void *result, void *a2, void *a3, _BYTE *a4)
{
  if (*(a2[1] + 44) - 15 <= 1)
  {
    v6 = result;
    if ([a2 isRepeated])
    {
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      result = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (!result)
      {
        return result;
      }

      v7 = result;
      v8 = *v11;
LABEL_5:
      v9 = 0;
      while (1)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(a3);
        }

        result = [*(*(&v10 + 1) + 8 * v9) isInitialized];
        if (!result)
        {
          break;
        }

        if (v7 == ++v9)
        {
          result = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
          v7 = result;
          if (result)
          {
            goto LABEL_5;
          }

          return result;
        }
      }
    }

    else
    {
      result = [a3 isInitialized];
      if (result)
      {
        return result;
      }
    }

    *(*(v6[4] + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

uint64_t sub_100310C10(uint64_t a1, void *a2)
{
  [a2 containingMessageClass];
  result = objc_opt_isKindOfClass();
  if ((result & 1) == 0)
  {
    return +[NSException raise:format:](NSException, "raise:format:", NSInvalidArgumentException, @"Extension %@ used on wrong class (%@ instead of %@)", [a2 singletonName], objc_opt_class(), objc_msgSend(a2, "containingMessageClass"));
  }

  return result;
}

uint64_t sub_1003115DC(void *a1)
{
  result = a1[1];
  if (!result)
  {
    a1[1] = objc_alloc_init(GPBUnknownFieldSet);
    GPBBecomeVisibleToAutocreator(a1);
    return a1[1];
  }

  return result;
}

uint64_t sub_100311D60(void *a1, void *a2, int a3, uint64_t a4)
{
  v6 = *(a2[1] + 30);
  v7 = GPBGetMessageRepeatedField_0(a1, a2);
  Int32 = GPBCodedInputStreamReadInt32((a4 + 8));
  v14 = GPBCodedInputStreamPushLimit(a4 + 8, Int32);
  while (GPBCodedInputStreamBytesUntilLimit(a4 + 8))
  {
    switch(v6)
    {
      case 0:
        Bool = GPBCodedInputStreamReadBool((a4 + 8));
        goto LABEL_21;
      case 1:
        Bool = GPBCodedInputStreamReadFixed32((a4 + 8));
        goto LABEL_21;
      case 2:
        Bool = GPBCodedInputStreamReadSFixed32((a4 + 8));
        goto LABEL_21;
      case 3:
        *&v10 = GPBCodedInputStreamReadFloat((a4 + 8));
        [v7 addValue:v10];
        break;
      case 4:
        Bool = GPBCodedInputStreamReadFixed64((a4 + 8));
        goto LABEL_21;
      case 5:
        Bool = GPBCodedInputStreamReadSFixed64((a4 + 8));
        goto LABEL_21;
      case 6:
        [v7 addValue:GPBCodedInputStreamReadDouble((a4 + 8))];
        break;
      case 7:
        Bool = GPBCodedInputStreamReadInt32((a4 + 8));
        goto LABEL_21;
      case 8:
        Bool = GPBCodedInputStreamReadInt64((a4 + 8));
        goto LABEL_21;
      case 9:
        Bool = GPBCodedInputStreamReadSInt32((a4 + 8));
        goto LABEL_21;
      case 10:
        Bool = GPBCodedInputStreamReadSInt64((a4 + 8));
        goto LABEL_21;
      case 11:
        Bool = GPBCodedInputStreamReadUInt32((a4 + 8));
        goto LABEL_21;
      case 12:
        Bool = GPBCodedInputStreamReadUInt64(a4 + 8);
LABEL_21:
        [v7 addValue:Bool];
        break;
      case 13:
      case 14:
      case 15:
      case 16:
        [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInFunction:"handleFailureInFunction:file:lineNumber:description:" file:[NSString lineNumber:"stringWithUTF8String:" description:"void MergeRepeatedPackedFieldFromCodedInputStream(GPBMessage * stringWithUTF8String:GPBFileSyntax, GPBCodedInputStream *)"], @"GPBMessage.m", 2288, @"Non primitive types can't be packed"];
        break;
      case 17:
        Enum = GPBCodedInputStreamReadEnum((a4 + 8));
        if (a3 == 3 || [a2 isValidEnumValue:Enum])
        {
          [v7 addRawValue:Enum];
        }

        else
        {
          [sub_1003115DC(a1) mergeVarintField:*(a2[1] + 16) value:Enum];
        }

        break;
      default:
        break;
    }
  }

  return GPBCodedInputStreamPopLimit(a4 + 8, v14);
}

void sub_100312010(void *a1, void *a2, int a3, uint64_t *a4, uint64_t a5)
{
  v10 = GPBGetMessageRepeatedField_0(a1, a2);
  switch(*(a2[1] + 30))
  {
    case 0:
      GPBCodedInputStreamReadBool(a4 + 1);
      goto LABEL_17;
    case 1:
      GPBCodedInputStreamReadFixed32(a4 + 1);
      goto LABEL_17;
    case 2:
      GPBCodedInputStreamReadSFixed32(a4 + 1);
      goto LABEL_17;
    case 3:
      *&Double = GPBCodedInputStreamReadFloat(a4 + 1);
      v15 = v10;

      goto LABEL_14;
    case 4:
      GPBCodedInputStreamReadFixed64(a4 + 1);
      goto LABEL_36;
    case 5:
      GPBCodedInputStreamReadSFixed64(a4 + 1);
      goto LABEL_36;
    case 6:
      Double = GPBCodedInputStreamReadDouble(a4 + 1);
      v15 = v10;

      goto LABEL_14;
    case 7:
      GPBCodedInputStreamReadInt32(a4 + 1);
      goto LABEL_17;
    case 8:
      GPBCodedInputStreamReadInt64(a4 + 1);
      goto LABEL_36;
    case 9:
      GPBCodedInputStreamReadSInt32(a4 + 1);
      goto LABEL_17;
    case 0xA:
      GPBCodedInputStreamReadSInt64(a4 + 1);
      goto LABEL_36;
    case 0xB:
      GPBCodedInputStreamReadUInt32(a4 + 1);
LABEL_17:
      v15 = v10;

      goto LABEL_14;
    case 0xC:
      GPBCodedInputStreamReadUInt64(a4 + 1);
LABEL_36:
      v15 = v10;

LABEL_14:
      [v15 addValue:Double];
      return;
    case 0xD:
      RetainedBytes = GPBCodedInputStreamReadRetainedBytes(a4 + 1);
      goto LABEL_27;
    case 0xE:
      RetainedBytes = GPBCodedInputStreamReadRetainedString(a4 + 1);
LABEL_27:
      v14 = RetainedBytes;
      v19 = RetainedBytes;
      v13 = v10;
      goto LABEL_28;
    case 0xF:
      v19 = objc_alloc_init([a2 msgClass]);
      [a4 readMessage:v19 extensionRegistry:a5];
      goto LABEL_11;
    case 0x10:
      v19 = objc_alloc_init([a2 msgClass]);
      [a4 readGroup:*(a2[1] + 16) message:v19 extensionRegistry:a5];
LABEL_11:
      v13 = v10;
      v14 = v19;
LABEL_28:
      [v13 addObject:v14];

      break;
    case 0x11:
      Enum = GPBCodedInputStreamReadEnum(a4 + 1);
      if (a3 == 3 || [a2 isValidEnumValue:Enum])
      {

        [v10 addRawValue:Enum];
      }

      else
      {
        v17 = sub_1003115DC(a1);
        v18 = *(a2[1] + 16);

        [v17 mergeVarintField:v18 value:Enum];
      }

      break;
    default:
      return;
  }
}

void *GPBGetMessageMapField_0(void *a1, void *a2)
{
  v4 = GPBGetObjectIvarWithFieldNoAutocreate(a1, a2);
  if (!v4)
  {
    v4 = sub_100315898(a2, 0);
    GPBSetRetainedObjectIvarWithFieldPrivate(a1, a2, v4);
  }

  return v4;
}

void *GPBGetMessageRepeatedField_0(void *a1, void *a2)
{
  v4 = GPBGetObjectIvarWithFieldNoAutocreate(a1, a2);
  if (!v4)
  {
    v4 = sub_100316118(a2, 0);
    GPBSetRetainedObjectIvarWithFieldPrivate(a1, a2, v4);
  }

  return v4;
}

uint64_t sub_100313F7C(uint64_t a1)
{
  result = GPBComputeBoolSizeNoTag();
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_100313FB8(uint64_t a1)
{
  result = GPBComputeFixed32SizeNoTag();
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_100313FF4(uint64_t a1)
{
  result = GPBComputeSFixed32SizeNoTag();
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_100314030(uint64_t a1)
{
  result = GPBComputeFloatSizeNoTag();
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_100314068(uint64_t a1)
{
  result = GPBComputeFixed64SizeNoTag();
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_1003140A4(uint64_t a1)
{
  result = GPBComputeSFixed64SizeNoTag();
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_1003140E0(uint64_t a1)
{
  result = GPBComputeDoubleSizeNoTag();
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_100314118(uint64_t a1, unsigned int a2)
{
  result = GPBComputeInt32SizeNoTag(a2);
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_100314154(uint64_t a1, uint64_t a2)
{
  result = GPBComputeInt64SizeNoTag(a2);
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_100314190(uint64_t a1, int a2)
{
  result = GPBComputeSInt32SizeNoTag(a2);
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_1003141CC(uint64_t a1, uint64_t a2)
{
  result = GPBComputeSInt64SizeNoTag(a2);
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_100314208(uint64_t a1, unsigned int a2)
{
  result = GPBComputeUInt32SizeNoTag(a2);
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_100314244(uint64_t a1, uint64_t a2)
{
  result = GPBComputeUInt64SizeNoTag(a2);
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_100314280(uint64_t a1, unsigned int a2)
{
  result = GPBComputeEnumSizeNoTag(a2);
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

void *sub_1003154D0(uint64_t a1, void *a2, int a3)
{
  if (a3)
  {
    v5 = objc_opt_class();
    v6 = *(a1 + 32);
    if (*(v6 + 48))
    {
      v7 = *(v6 + 48);
    }

    else
    {
      v7 = 0;
    }

    [NSException raise:NSInvalidArgumentException format:@"%@: %@ can only be set to NO (to clear field).", v5, NSStringFromSelector(v7)];
  }

  v8 = *(a1 + 32);

  return GPBClearMessageField(a2, v8);
}

GPBAutocreatedArray *sub_1003155B8(uint64_t a1, objc_class *a2)
{
  v2 = *(a1 + 32);
  v3 = (*(a2 + 8) + *(v2[1] + 24));
  result = atomic_load(v3);
  if (!result)
  {
    result = sub_100316118(v2, a2);
    v5 = 0;
    atomic_compare_exchange_strong(v3, &v5, result);
    if (v5)
    {
      if (*(v2[1] + 30) - 13 >= 4)
      {
        v6 = &OBJC_IVAR___GPBInt32Array__autocreator;
      }

      else
      {
        v6 = &OBJC_IVAR___GPBAutocreatedArray__autocreator;
      }

      *(&result->super.super.super.isa + *v6) = 0;

      return v5;
    }
  }

  return result;
}

GPBAutocreatedDictionary *sub_100315654(uint64_t a1, objc_class *a2)
{
  v2 = *(a1 + 32);
  v3 = (*(a2 + 8) + *(v2[1] + 24));
  v4 = atomic_load(v3);
  if (!v4)
  {
    v4 = sub_100315898(*(a1 + 32), a2);
    v5 = 0;
    atomic_compare_exchange_strong(v3, &v5, v4);
    if (v5)
    {
      if ([v2 mapKeyDataType] == 14 && *(v2[1] + 30) - 13 < 4)
      {
        v6 = &OBJC_IVAR___GPBAutocreatedDictionary__autocreator;
      }

      else
      {
        v6 = &OBJC_IVAR___GPBInt32Int32Dictionary__autocreator;
      }

      *(&v4->super.super.super.isa + *v6) = 0;

      return v5;
    }
  }

  return v4;
}

id sub_100315724(uint64_t a1, uint64_t a2)
{
  v2 = GPBGetObjectIvarWithFieldNoAutocreate(a2, *(a1 + 32));

  return [v2 count];
}

GPBAutocreatedDictionary *sub_100315898(void *a1, objc_class *a2)
{
  v4 = [a1 mapKeyDataType];
  v5 = a1[1];
  v6 = *(v5 + 30);
  switch(v4)
  {
    case 0u:
      switch(*(v5 + 30))
      {
        case 0:
          v12 = GPBBoolBoolDictionary;
          goto LABEL_75;
        case 1:
        case 0xB:
          v12 = GPBBoolUInt32Dictionary;
          goto LABEL_75;
        case 2:
        case 7:
        case 9:
          v12 = GPBBoolInt32Dictionary;
          goto LABEL_75;
        case 3:
          v12 = GPBBoolFloatDictionary;
          goto LABEL_75;
        case 4:
        case 0xC:
          v12 = GPBBoolUInt64Dictionary;
          goto LABEL_75;
        case 5:
        case 8:
        case 0xA:
          v12 = GPBBoolInt64Dictionary;
          goto LABEL_75;
        case 6:
          v12 = GPBBoolDoubleDictionary;
          goto LABEL_75;
        case 0xD:
        case 0xE:
        case 0xF:
          v12 = GPBBoolObjectDictionary;
          goto LABEL_75;
        case 0x10:
          v18 = +[NSAssertionHandler currentHandler];
          v8 = [NSString stringWithUTF8String:"id CreateMapForField(GPBFieldDescriptor *, GPBMessage *)"];
          v9 = v18;
          v10 = 307;
          goto LABEL_3;
        case 0x11:
          v15 = GPBBoolEnumDictionary;
          goto LABEL_83;
        default:
          goto LABEL_16;
      }

    case 1u:
    case 0xBu:
      switch(*(v5 + 30))
      {
        case 0:
          v12 = GPBUInt32BoolDictionary;
          goto LABEL_75;
        case 1:
        case 0xB:
          v12 = GPBUInt32UInt32Dictionary;
          goto LABEL_75;
        case 2:
        case 7:
        case 9:
          v12 = GPBUInt32Int32Dictionary;
          goto LABEL_75;
        case 3:
          v12 = GPBUInt32FloatDictionary;
          goto LABEL_75;
        case 4:
        case 0xC:
          v12 = GPBUInt32UInt64Dictionary;
          goto LABEL_75;
        case 5:
        case 8:
        case 0xA:
          v12 = GPBUInt32Int64Dictionary;
          goto LABEL_75;
        case 6:
          v12 = GPBUInt32DoubleDictionary;
          goto LABEL_75;
        case 0xD:
        case 0xE:
        case 0xF:
          v12 = GPBUInt32ObjectDictionary;
          goto LABEL_75;
        case 0x10:
          v17 = +[NSAssertionHandler currentHandler];
          v8 = [NSString stringWithUTF8String:"id CreateMapForField(GPBFieldDescriptor *, GPBMessage *)"];
          v9 = v17;
          v10 = 351;
          goto LABEL_3;
        case 0x11:
          v15 = GPBUInt32EnumDictionary;
          goto LABEL_83;
        default:
          goto LABEL_16;
      }

    case 2u:
    case 7u:
    case 9u:
      switch(*(v5 + 30))
      {
        case 0:
          v12 = GPBInt32BoolDictionary;
          goto LABEL_75;
        case 1:
        case 0xB:
          v12 = GPBInt32UInt32Dictionary;
          goto LABEL_75;
        case 2:
        case 7:
        case 9:
          v12 = GPBInt32Int32Dictionary;
          goto LABEL_75;
        case 3:
          v12 = GPBInt32FloatDictionary;
          goto LABEL_75;
        case 4:
        case 0xC:
          v12 = GPBInt32UInt64Dictionary;
          goto LABEL_75;
        case 5:
        case 8:
        case 0xA:
          v12 = GPBInt32Int64Dictionary;
          goto LABEL_75;
        case 6:
          v12 = GPBInt32DoubleDictionary;
          goto LABEL_75;
        case 0xD:
        case 0xE:
        case 0xF:
          v12 = GPBInt32ObjectDictionary;
          goto LABEL_75;
        case 0x10:
          v13 = +[NSAssertionHandler currentHandler];
          v8 = [NSString stringWithUTF8String:"id CreateMapForField(GPBFieldDescriptor *, GPBMessage *)"];
          v9 = v13;
          v10 = 396;
          goto LABEL_3;
        case 0x11:
          v15 = GPBInt32EnumDictionary;
          goto LABEL_83;
        default:
          goto LABEL_16;
      }

    case 3u:
    case 6u:
    case 0xDu:
    case 0xFu:
    case 0x10u:
    case 0x11u:
      v7 = +[NSAssertionHandler currentHandler];
      v8 = [NSString stringWithUTF8String:"id CreateMapForField(GPBFieldDescriptor *, GPBMessage *)"];
      v9 = v7;
      v10 = 543;
LABEL_3:
      [(NSAssertionHandler *)v9 handleFailureInFunction:v8 file:@"GPBMessage.m" lineNumber:v10 description:@"shouldn't happen"];
      result = 0;
      break;
    case 4u:
    case 0xCu:
      switch(*(v5 + 30))
      {
        case 0:
          v12 = GPBUInt64BoolDictionary;
          goto LABEL_75;
        case 1:
        case 0xB:
          v12 = GPBUInt64UInt32Dictionary;
          goto LABEL_75;
        case 2:
        case 7:
        case 9:
          v12 = GPBUInt64Int32Dictionary;
          goto LABEL_75;
        case 3:
          v12 = GPBUInt64FloatDictionary;
          goto LABEL_75;
        case 4:
        case 0xC:
          v12 = GPBUInt64UInt64Dictionary;
          goto LABEL_75;
        case 5:
        case 8:
        case 0xA:
          v12 = GPBUInt64Int64Dictionary;
          goto LABEL_75;
        case 6:
          v12 = GPBUInt64DoubleDictionary;
          goto LABEL_75;
        case 0xD:
        case 0xE:
        case 0xF:
          v12 = GPBUInt64ObjectDictionary;
          goto LABEL_75;
        case 0x10:
          v16 = +[NSAssertionHandler currentHandler];
          v8 = [NSString stringWithUTF8String:"id CreateMapForField(GPBFieldDescriptor *, GPBMessage *)"];
          v9 = v16;
          v10 = 440;
          goto LABEL_3;
        case 0x11:
          v15 = GPBUInt64EnumDictionary;
          goto LABEL_83;
        default:
          goto LABEL_16;
      }

    case 5u:
    case 8u:
    case 0xAu:
      switch(*(v5 + 30))
      {
        case 0:
          v12 = GPBInt64BoolDictionary;
          goto LABEL_75;
        case 1:
        case 0xB:
          v12 = GPBInt64UInt32Dictionary;
          goto LABEL_75;
        case 2:
        case 7:
        case 9:
          v12 = GPBInt64Int32Dictionary;
          goto LABEL_75;
        case 3:
          v12 = GPBInt64FloatDictionary;
          goto LABEL_75;
        case 4:
        case 0xC:
          v12 = GPBInt64UInt64Dictionary;
          goto LABEL_75;
        case 5:
        case 8:
        case 0xA:
          v12 = GPBInt64Int64Dictionary;
          goto LABEL_75;
        case 6:
          v12 = GPBInt64DoubleDictionary;
          goto LABEL_75;
        case 0xD:
        case 0xE:
        case 0xF:
          v12 = GPBInt64ObjectDictionary;
          goto LABEL_75;
        case 0x10:
          v14 = +[NSAssertionHandler currentHandler];
          v8 = [NSString stringWithUTF8String:"id CreateMapForField(GPBFieldDescriptor *, GPBMessage *)"];
          v9 = v14;
          v10 = 485;
          goto LABEL_3;
        case 0x11:
          v15 = GPBInt64EnumDictionary;
          goto LABEL_83;
        default:
          goto LABEL_16;
      }

    case 0xEu:
      switch(*(v5 + 30))
      {
        case 0:
          v12 = GPBStringBoolDictionary;
          goto LABEL_75;
        case 1:
        case 0xB:
          v12 = GPBStringUInt32Dictionary;
          goto LABEL_75;
        case 2:
        case 7:
        case 9:
          v12 = GPBStringInt32Dictionary;
          goto LABEL_75;
        case 3:
          v12 = GPBStringFloatDictionary;
          goto LABEL_75;
        case 4:
        case 0xC:
          v12 = GPBStringUInt64Dictionary;
          goto LABEL_75;
        case 5:
        case 8:
        case 0xA:
          v12 = GPBStringInt64Dictionary;
          goto LABEL_75;
        case 6:
          v12 = GPBStringDoubleDictionary;
LABEL_75:
          result = objc_alloc_init(v12);
          if (a2)
          {
            goto LABEL_76;
          }

          return result;
        case 0xD:
        case 0xE:
        case 0xF:
          if (a2)
          {
            result = objc_alloc_init(GPBAutocreatedDictionary);
            goto LABEL_78;
          }

          result = objc_alloc_init(NSMutableDictionary);
          break;
        case 0x10:
          v19 = +[NSAssertionHandler currentHandler];
          v8 = [NSString stringWithUTF8String:"id CreateMapForField(GPBFieldDescriptor *, GPBMessage *)"];
          v9 = v19;
          v10 = 532;
          goto LABEL_3;
        case 0x11:
          v15 = GPBStringEnumDictionary;
LABEL_83:
          result = [[v15 alloc] initWithValidationFunction:{objc_msgSend(objc_msgSend(a1, "enumDescriptor"), "enumVerifier")}];
          if (a2)
          {
            goto LABEL_76;
          }

          return result;
        default:
          goto LABEL_16;
      }

      break;
    default:
LABEL_16:
      result = 0;
      if (a2)
      {
LABEL_76:
        if (v4 == 14 && (v6 - 13) <= 3)
        {
LABEL_78:
          v20 = &OBJC_IVAR___GPBAutocreatedDictionary__autocreator;
        }

        else
        {
          v20 = &OBJC_IVAR___GPBInt32Int32Dictionary__autocreator;
        }

        *(&result->super.super.super.isa + *v20) = a2;
      }

      break;
  }

  return result;
}

GPBAutocreatedArray *sub_100316118(void *a1, objc_class *a2)
{
  v3 = *(a1[1] + 30);
  switch(*(a1[1] + 30))
  {
    case 0:
      v5 = GPBBoolArray;
      goto LABEL_14;
    case 1:
    case 0xB:
      v5 = GPBUInt32Array;
      goto LABEL_14;
    case 2:
    case 7:
    case 9:
      v5 = GPBInt32Array;
      goto LABEL_14;
    case 3:
      v5 = GPBFloatArray;
      goto LABEL_14;
    case 4:
    case 0xC:
      v5 = GPBUInt64Array;
      goto LABEL_14;
    case 5:
    case 8:
    case 0xA:
      v5 = GPBInt64Array;
      goto LABEL_14;
    case 6:
      v5 = GPBDoubleArray;
LABEL_14:
      result = objc_alloc_init(v5);
      goto LABEL_15;
    case 0xD:
    case 0xE:
    case 0xF:
    case 0x10:
      if (a2)
      {
        result = objc_alloc_init(GPBAutocreatedArray);
LABEL_17:
        v6 = &OBJC_IVAR___GPBAutocreatedArray__autocreator;
LABEL_19:
        *(&result->super.super.super.isa + *v6) = a2;
      }

      else
      {

        return objc_alloc_init(NSMutableArray);
      }

      return result;
    case 0x11:
      result = -[GPBEnumArray initWithValidationFunction:]([GPBEnumArray alloc], "initWithValidationFunction:", [objc_msgSend(a1 "enumDescriptor")]);
      goto LABEL_15;
    default:
      result = 0;
LABEL_15:
      if (!a2)
      {
        return result;
      }

      if ((v3 - 13) <= 3)
      {
        goto LABEL_17;
      }

      v6 = &OBJC_IVAR___GPBInt32Array__autocreator;
      goto LABEL_19;
  }
}

id sub_1003164AC(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = [a3 copy];

  return GPBSetRetainedObjectIvarWithFieldPrivate(a2, v4, v5);
}

id sub_1003164F4(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = [a3 copy];

  return GPBSetRetainedObjectIvarWithFieldPrivate(a2, v4, v5);
}

id sub_10031656C()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"[GPBMessage dealloc]"];

  return [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"GPBMessage.m" lineNumber:946 description:@"Autocreator was not cleared before dealloc."];
}

id sub_100316638(uint64_t a1, void *a2)
{
  result = [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInFunction:"handleFailureInFunction:file:lineNumber:description:" file:[NSString lineNumber:"stringWithUTF8String:" description:"id GPBGetObjectIvarWithField(GPBMessage * stringWithUTF8String:?], @"GPBMessage.m", 3364, @"Shouldn't get here""];
  *a2 = *(a1 + 8);
  return result;
}

uint64_t sub_100316F28(uint64_t a1, unint64_t a2)
{
  result = GPBComputeUInt64Size(*(a1 + 40), a2);
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_100316F64(uint64_t a1)
{
  result = GPBComputeFixed32Size(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_100316FA0(uint64_t a1)
{
  result = GPBComputeFixed64Size(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t GPBEmptyNSData()
{
  if (qword_1004588B0 != -1)
  {
    sub_10031B134();
  }

  return qword_1004588B8;
}

id GPBMessageDropUnknownFieldsRecursively(id result)
{
  if (result)
  {
    v1 = [NSMutableArray arrayWithObject:result];
    result = [(NSMutableArray *)v1 count];
    if (result)
    {
      v29 = v41;
      v30 = v43;
      v31 = v39;
      v27 = v37;
      v28 = v45;
      v26 = v47;
      do
      {
        v2 = [(NSMutableArray *)v1 lastObject:v26];
        [(NSMutableArray *)v1 removeLastObject];
        [v2 setUnknownFields:0];
        v3 = [objc_opt_class() descriptor];
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v4 = v3[1];
        v5 = [v4 countByEnumeratingWithState:&v48 objects:v53 count:16];
        if (v5)
        {
          v6 = v5;
          v7 = *v49;
          do
          {
            for (i = 0; i != v6; i = i + 1)
            {
              if (*v49 != v7)
              {
                objc_enumerationMutation(v4);
              }

              v9 = *(*(&v48 + 1) + 8 * i);
              if (*(v9[1] + 30) - 15 <= 1)
              {
                v10 = [*(*(&v48 + 1) + 8 * i) fieldType];
                if (v10 == 2)
                {
                  v15 = v2[8];
                  if (v15)
                  {
                    v16 = *(v15 + *(v9[1] + 24));
                  }

                  else
                  {
                    v16 = 0;
                  }

                  switch([v9 mapKeyDataType])
                  {
                    case 0u:
                      v46[0] = _NSConcreteStackBlock;
                      v46[1] = 3221225472;
                      v47[0] = sub_10031801C;
                      v47[1] = &unk_1004354D0;
                      v47[2] = v1;
                      v17 = v46;
                      goto LABEL_34;
                    case 1u:
                    case 0xBu:
                      v44[0] = _NSConcreteStackBlock;
                      v44[1] = 3221225472;
                      v45[0] = sub_100318024;
                      v45[1] = &unk_1004354F8;
                      v45[2] = v1;
                      v17 = v44;
                      goto LABEL_34;
                    case 2u:
                    case 7u:
                    case 9u:
                      v42[0] = _NSConcreteStackBlock;
                      v42[1] = 3221225472;
                      v43[0] = sub_10031802C;
                      v43[1] = &unk_100435520;
                      v43[2] = v1;
                      v17 = v42;
                      goto LABEL_34;
                    case 3u:
                    case 6u:
                    case 0xDu:
                    case 0xFu:
                    case 0x10u:
                    case 0x11u:
                      [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInFunction:"handleFailureInFunction:file:lineNumber:description:" file:[NSString stringWithUTF8String:?], @"GPBUtilities.m", 174, @"Aren't valid key types."];
                      continue;
                    case 4u:
                    case 0xCu:
                      v40[0] = _NSConcreteStackBlock;
                      v40[1] = 3221225472;
                      v41[0] = sub_100318034;
                      v41[1] = &unk_100435548;
                      v41[2] = v1;
                      v17 = v40;
                      goto LABEL_34;
                    case 5u:
                    case 8u:
                    case 0xAu:
                      v38[0] = _NSConcreteStackBlock;
                      v38[1] = 3221225472;
                      v39[0] = sub_10031803C;
                      v39[1] = &unk_100435570;
                      v39[2] = v1;
                      v17 = v38;
                      goto LABEL_34;
                    case 0xEu:
                      v36[0] = _NSConcreteStackBlock;
                      v36[1] = 3221225472;
                      v37[0] = sub_100318044;
                      v37[1] = &unk_100435598;
                      v37[2] = v1;
                      v17 = v36;
LABEL_34:
                      [v16 enumerateKeysAndObjectsUsingBlock:v17];
                      break;
                    default:
                      continue;
                  }
                }

                else if (v10 == 1)
                {
                  v13 = v2[8];
                  if (v13)
                  {
                    v14 = *(v13 + *(v9[1] + 24));
                  }

                  else
                  {
                    v14 = 0;
                  }

                  if ([v14 count])
                  {
                    [(NSMutableArray *)v1 addObjectsFromArray:v14];
                  }
                }

                else if (!v10 && GPBGetHasIvar(v2, *(v9[1] + 20), *(v9[1] + 16)))
                {
                  v11 = v2[8];
                  if (v11)
                  {
                    v12 = *(v11 + *(v9[1] + 24));
                  }

                  else
                  {
                    v12 = 0;
                  }

                  [(NSMutableArray *)v1 addObject:v12];
                }
              }
            }

            v6 = [v4 countByEnumeratingWithState:&v48 objects:v53 count:16];
          }

          while (v6);
        }

        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v18 = [v2 extensionsCurrentlySet];
        v19 = [v18 countByEnumeratingWithState:&v32 objects:v52 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v33;
          do
          {
            for (j = 0; j != v20; j = j + 1)
            {
              if (*v33 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = *(*(&v32 + 1) + 8 * j);
              if ([v23 dataType] - 15 <= 1)
              {
                v24 = [v23 isRepeated];
                v25 = [v2 getExtension:v23];
                if (v24)
                {
                  [(NSMutableArray *)v1 addObjectsFromArray:v25];
                }

                else
                {
                  [(NSMutableArray *)v1 addObject:v25];
                }
              }
            }

            v20 = [v18 countByEnumeratingWithState:&v32 objects:v52 count:16];
          }

          while (v20);
        }

        result = [(NSMutableArray *)v1 count];
      }

      while (result);
    }
  }

  return result;
}

uint64_t GPBGetObjectIvarWithFieldNoAutocreate(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    return *(v2 + *(*(a2 + 8) + 24));
  }

  else
  {
    return 0;
  }
}

id GPBCheckRuntimeVersionSupport(id result)
{
  if (result >= 30005)
  {
    return [NSException raise:NSInternalInconsistencyException format:@"Linked to ProtocolBuffer runtime version %d, but code compiled needing at least %d!", 30004, result];
  }

  if (result <= 30000)
  {
    return [NSException raise:NSInternalInconsistencyException format:@"Proto generation source compiled against runtime version %d, but this version of the runtime only supports back to %d!", result, 30001];
  }

  return result;
}

id GPBCheckRuntimeVersionInternal(id result)
{
  if (result != 30001)
  {
    return [NSException raise:NSInternalInconsistencyException format:@"Linked to ProtocolBuffer runtime version %d, but code compiled with version %d!", 30001, result, v1, v2];
  }

  return result;
}

BOOL GPBMessageHasFieldNumberSet(void *a1, uint64_t a2)
{
  v3 = [objc_msgSend(a1 "descriptor")];

  return GPBMessageHasFieldSet(a1, v3);
}

BOOL GPBMessageHasFieldSet(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  if (!a1 || !a2)
  {
    return v4;
  }

  v5 = *(a2 + 8);
  if ((*(v5 + 28) & 0xF02) != 0)
  {
    v6 = *(a1 + 64);
    if (v6)
    {
      v7 = *(v6 + *(v5 + 24));
    }

    else
    {
      v7 = 0;
    }

    return [v7 count] != 0;
  }

  v9 = *(v5 + 16);
  v8 = *(v5 + 20);

  return GPBGetHasIvar(a1, v8, v9);
}

void *GPBClearMessageField(void *a1, uint64_t a2)
{
  result = GPBGetHasIvar(a1, *(*(a2 + 8) + 20), *(*(a2 + 8) + 16));
  if (result)
  {
    v5 = *(a2 + 8);
    if ((*(v5 + 28) & 0xF02) != 0 || *(v5 + 30) - 13 <= 3)
    {
      v6 = a1[8];
      v7 = *(v5 + 24);

      *(v6 + v7) = 0;
    }

    v9 = *(v5 + 16);
    v8 = *(v5 + 20);

    return GPBSetHasIvar(a1, v8, v9, 0);
  }

  return result;
}

void *GPBSetHasIvar(void *result, unsigned int a2, int a3, int a4)
{
  v6 = result;
  if ((a2 & 0x80000000) != 0)
  {
    if (!a3)
    {
      result = sub_10031B1B0();
    }

    if (a4)
    {
      v12 = a3;
    }

    else
    {
      v12 = 0;
    }

    *(v6[8] + 4 * -a2) = v12;
  }

  else
  {
    if (a2 == 0x7FFFFFFF)
    {
      result = sub_10031B148();
    }

    v7 = v6[8];
    v8 = a2 >> 5;
    v9 = 1 << a2;
    if (a4)
    {
      v10 = *(v7 + 4 * v8) | v9;
    }

    else
    {
      v10 = *(v7 + 4 * v8) & ~v9;
    }

    *(v7 + 4 * v8) = v10;
  }

  return result;
}

void *GPBClearOneof(void *a1, id *a2)
{
  v4 = *(*([a2[2] objectAtIndexedSubscript:0] + 1) + 20);

  return sub_1003183DC(a1, a2, v4, 0);
}

void *sub_1003183DC(void *a1, void *a2, uint64_t a3, int a4)
{
  v5 = a3;
  result = GPBGetHasOneof(a1, a3);
  if (result != a4)
  {
    v9 = result;
    if (result)
    {
      v10 = [a2 fieldWithNumber:result];
      if (v10)
      {
        v11 = v10[1];
        if ((*(v11 + 28) & 0xF02) != 0 || *(v11 + 30) - 13 <= 3)
        {
          v12 = a1[8];
          v13 = *(v11 + 24);

          *(v12 + v13) = 0;
        }
      }

      else
      {
        sub_10031B218(a1, v9);
      }

      return GPBSetHasIvar(a1, v5, 1, 0);
    }
  }

  return result;
}

BOOL GPBGetHasIvar(uint64_t a1, unsigned int a2, int a3)
{
  if (*(a1 + 64))
  {
    if ((a2 & 0x80000000) == 0)
    {
LABEL_3:
      if (a2 == 0x7FFFFFFF)
      {
        sub_10031B31C();
      }

      return (*(*(a1 + 64) + 4 * (a2 >> 5)) >> a2) & 1;
    }
  }

  else
  {
    sub_10031B2A0();
    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  if (!a3)
  {
    sub_10031B384();
  }

  return *(*(a1 + 64) + 4 * -a2) == a3;
}

uint64_t GPBGetHasOneof(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a2 & 0x80000000) == 0)
  {
    sub_10031B3EC(a1, a2);
  }

  return *(*(a1 + 64) - 4 * v2);
}

void GPBClearAutocreatedMessageIvarWithField(uint64_t a1, uint64_t a2)
{
  if (!GPBGetHasIvar(a1, *(*(a2 + 8) + 20), *(*(a2 + 8) + 16)))
  {
    v4 = *(a1 + 64);
    v5 = *(*(a2 + 8) + 24);
    v6 = *(v4 + v5);
    v7 = v6;
    *(v4 + v5) = 0;
    GPBClearMessageAutocreator(v6);
  }
}

uint64_t GPBSetObjectIvarWithFieldPrivate(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;

  return GPBSetRetainedObjectIvarWithFieldPrivate(a1, a2, v5);
}

id GPBSetRetainedObjectIvarWithFieldPrivate(void *a1, void *a2, void *a3)
{
  if (!a1[8])
  {
    sub_10031B474();
  }

  v6 = a2[1];
  v7 = *(v6 + 30);
  v8 = *(v6 + 28);
  if ((v8 & 0xF02) != 0)
  {
    v9 = a1[8];
    v10 = *(v6 + 24);
    v11 = *(v9 + v10);
    *(v9 + v10) = a3;
    if (!v11)
    {
      goto LABEL_27;
    }

    if ([a2 fieldType] == 1)
    {
      if ((v7 - 13) <= 3)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = &OBJC_IVAR___GPBAutocreatedArray__autocreator;
          goto LABEL_24;
        }

LABEL_26:

        goto LABEL_27;
      }

      v12 = &OBJC_IVAR___GPBInt32Array__autocreator;
    }

    else if ([a2 mapKeyDataType] == 14 && (v7 - 13) <= 3)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_26;
      }

      v12 = &OBJC_IVAR___GPBAutocreatedDictionary__autocreator;
    }

    else
    {
      v12 = &OBJC_IVAR___GPBInt32Int32Dictionary__autocreator;
    }

LABEL_24:
    v17 = *v12;
    if (*&v11[v17] == a1)
    {
      *&v11[v17] = 0;
    }

    goto LABEL_26;
  }

  v13 = a2[2];
  if (v13)
  {
    sub_1003183DC(a1, v13, *(v6 + 20), *(v6 + 16));
    v8 = *(v6 + 28);
  }

  v14 = a3 != 0;
  if ((v8 & 0x20) != 0 && ![a3 length])
  {

    v14 = 0;
    a3 = 0;
  }

  GPBSetHasIvar(a1, *(v6 + 20), *(v6 + 16), v14);
  v15 = a1[8];
  v16 = *(v6 + 24);
  v11 = *(v15 + v16);
  *(v15 + v16) = a3;
  if (v11)
  {
    if ((v7 - 15) <= 1 && GPBWasMessageAutocreatedBy(v11, a1))
    {
      GPBClearMessageAutocreator(v11);
    }

    goto LABEL_26;
  }

LABEL_27:

  return GPBBecomeVisibleToAutocreator(a1);
}

uint64_t GPBGetMessageEnumField(void *a1, void *a2)
{
  v4 = GPBGetMessageInt32Field(a1, a2);
  if ([objc_msgSend(objc_msgSend(a1 "descriptor")] == 3)
  {
    if ([a2 isValidEnumValue:v4])
    {
      return v4;
    }

    else
    {
      return 4222467823;
    }
  }

  return v4;
}

id GPBGetMessageInt32Field(uint64_t a1, void *a2)
{
  if (GPBGetHasIvar(a1, *(a2[1] + 20), *(a2[1] + 16)))
  {
    return *(*(a1 + 64) + *(a2[1] + 24));
  }

  else
  {
    return [a2 defaultValue];
  }
}

id GPBSetEnumIvarWithFieldPrivate(void *a1, void *a2, uint64_t a3)
{
  if (([a2 isValidEnumValue:?] & 1) == 0)
  {
    +[NSException raise:format:](NSException, "raise:format:", NSInvalidArgumentException, @"%@.%@: Attempt to set an unknown enum value (%d)", objc_opt_class(), [a2 name], a3);
  }

  return GPBSetInt32IvarWithFieldPrivate(a1, a2, a3);
}

id GPBSetInt32IvarWithFieldPrivate(void *a1, uint64_t a2, int a3)
{
  v6 = *(a2 + 16);
  v7 = *(a2 + 8);
  if (v6)
  {
    sub_1003183DC(a1, v6, *(v7 + 20), *(v7 + 16));
  }

  *(a1[8] + *(v7 + 24)) = a3;
  if (a3)
  {
    v8 = 1;
  }

  else
  {
    v8 = (*(v7 + 28) & 0x20) == 0;
  }

  GPBSetHasIvar(a1, *(v7 + 20), *(v7 + 16), v8);

  return GPBBecomeVisibleToAutocreator(a1);
}

unint64_t GPBGetMessageBoolField(uint64_t a1, void *a2)
{
  if (!GPBGetHasIvar(a1, *(a2[1] + 20), *(a2[1] + 16)))
  {
    return [a2 defaultValue] & 1;
  }

  v4 = a2[1];
  v5 = *(v4 + 24);
  v6 = *(v4 + 16);

  return GPBGetHasIvar(a1, v5, v6);
}

void *GPBSetMessageBoolField(void *a1, uint64_t a2, int a3)
{
  if (a1)
  {
    if (a2)
    {
      return GPBSetBoolIvarWithFieldPrivate(a1, a2, a3);
    }
  }

  return a1;
}

id GPBSetBoolIvarWithFieldPrivate(void *a1, uint64_t a2, int a3)
{
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  if (v6)
  {
    sub_1003183DC(a1, v6, *(v5 + 20), *(v5 + 16));
  }

  GPBSetHasIvar(a1, *(v5 + 24), *(v5 + 16), a3);
  v7 = (a3 & 1) != 0 || (*(v5 + 28) & 0x20) == 0;
  GPBSetHasIvar(a1, *(v5 + 20), *(v5 + 16), v7);

  return GPBBecomeVisibleToAutocreator(a1);
}

void *GPBSetMessageInt32Field(void *a1, uint64_t a2, int a3)
{
  if (a1)
  {
    if (a2)
    {
      return GPBSetInt32IvarWithFieldPrivate(a1, a2, a3);
    }
  }

  return a1;
}

id GPBGetMessageUInt32Field(uint64_t a1, void *a2)
{
  if (GPBGetHasIvar(a1, *(a2[1] + 20), *(a2[1] + 16)))
  {
    return *(*(a1 + 64) + *(a2[1] + 24));
  }

  else
  {
    return [a2 defaultValue];
  }
}

void *GPBSetMessageUInt32Field(void *a1, uint64_t a2, int a3)
{
  if (a1)
  {
    if (a2)
    {
      return GPBSetUInt32IvarWithFieldPrivate(a1, a2, a3);
    }
  }

  return a1;
}

id GPBSetUInt32IvarWithFieldPrivate(void *a1, uint64_t a2, int a3)
{
  v6 = *(a2 + 16);
  v7 = *(a2 + 8);
  if (v6)
  {
    sub_1003183DC(a1, v6, *(v7 + 20), *(v7 + 16));
  }

  *(a1[8] + *(v7 + 24)) = a3;
  if (a3)
  {
    v8 = 1;
  }

  else
  {
    v8 = (*(v7 + 28) & 0x20) == 0;
  }

  GPBSetHasIvar(a1, *(v7 + 20), *(v7 + 16), v8);

  return GPBBecomeVisibleToAutocreator(a1);
}

id GPBGetMessageInt64Field(uint64_t a1, void *a2)
{
  if (GPBGetHasIvar(a1, *(a2[1] + 20), *(a2[1] + 16)))
  {
    return *(*(a1 + 64) + *(a2[1] + 24));
  }

  return [a2 defaultValue];
}

void *GPBSetMessageInt64Field(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a2)
    {
      return GPBSetInt64IvarWithFieldPrivate(a1, a2, a3);
    }
  }

  return a1;
}

id GPBSetInt64IvarWithFieldPrivate(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  v7 = *(a2 + 8);
  if (v6)
  {
    sub_1003183DC(a1, v6, *(v7 + 20), *(v7 + 16));
  }

  *(a1[8] + *(v7 + 24)) = a3;
  if (a3)
  {
    v8 = 1;
  }

  else
  {
    v8 = (*(v7 + 28) & 0x20) == 0;
  }

  GPBSetHasIvar(a1, *(v7 + 20), *(v7 + 16), v8);

  return GPBBecomeVisibleToAutocreator(a1);
}

id GPBGetMessageUInt64Field(uint64_t a1, void *a2)
{
  if (GPBGetHasIvar(a1, *(a2[1] + 20), *(a2[1] + 16)))
  {
    return *(*(a1 + 64) + *(a2[1] + 24));
  }

  return [a2 defaultValue];
}

void *GPBSetMessageUInt64Field(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a2)
    {
      return GPBSetUInt64IvarWithFieldPrivate(a1, a2, a3);
    }
  }

  return a1;
}

id GPBSetUInt64IvarWithFieldPrivate(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  v7 = *(a2 + 8);
  if (v6)
  {
    sub_1003183DC(a1, v6, *(v7 + 20), *(v7 + 16));
  }

  *(a1[8] + *(v7 + 24)) = a3;
  if (a3)
  {
    v8 = 1;
  }

  else
  {
    v8 = (*(v7 + 28) & 0x20) == 0;
  }

  GPBSetHasIvar(a1, *(v7 + 20), *(v7 + 16), v8);

  return GPBBecomeVisibleToAutocreator(a1);
}

float GPBGetMessageFloatField(uint64_t a1, void *a2)
{
  if (GPBGetHasIvar(a1, *(a2[1] + 20), *(a2[1] + 16)))
  {
    return *(*(a1 + 64) + *(a2[1] + 24));
  }

  LODWORD(result) = [a2 defaultValue];
  return result;
}

void *GPBSetMessageFloatField(void *a1, uint64_t a2, float a3)
{
  if (a1)
  {
    if (a2)
    {
      return GPBSetFloatIvarWithFieldPrivate(a1, a2, a3);
    }
  }

  return a1;
}

id GPBSetFloatIvarWithFieldPrivate(void *a1, uint64_t a2, float a3)
{
  v6 = *(a2 + 16);
  v7 = *(a2 + 8);
  if (v6)
  {
    sub_1003183DC(a1, v6, *(v7 + 20), *(v7 + 16));
  }

  *(a1[8] + *(v7 + 24)) = a3;
  v8 = a3 != 0.0 || (*(v7 + 28) & 0x20) == 0;
  GPBSetHasIvar(a1, *(v7 + 20), *(v7 + 16), v8);

  return GPBBecomeVisibleToAutocreator(a1);
}

double GPBGetMessageDoubleField(uint64_t a1, void *a2)
{
  if (GPBGetHasIvar(a1, *(a2[1] + 20), *(a2[1] + 16)))
  {
    return *(*(a1 + 64) + *(a2[1] + 24));
  }

  else
  {
    return COERCE_DOUBLE([a2 defaultValue]);
  }
}

void *GPBSetMessageDoubleField(void *a1, uint64_t a2, double a3)
{
  if (a1)
  {
    if (a2)
    {
      return GPBSetDoubleIvarWithFieldPrivate(a1, a2, a3);
    }
  }

  return a1;
}

id GPBSetDoubleIvarWithFieldPrivate(void *a1, uint64_t a2, double a3)
{
  v6 = *(a2 + 16);
  v7 = *(a2 + 8);
  if (v6)
  {
    sub_1003183DC(a1, v6, *(v7 + 20), *(v7 + 16));
  }

  *(a1[8] + *(v7 + 24)) = a3;
  v8 = a3 != 0.0 || (*(v7 + 28) & 0x20) == 0;
  GPBSetHasIvar(a1, *(v7 + 20), *(v7 + 16), v8);

  return GPBBecomeVisibleToAutocreator(a1);
}

void *GPBSetMessageStringField(void *result, void *a2, void *a3)
{
  if (result && a2)
  {
    v4 = result;
    v5 = [a3 copy];

    return GPBSetRetainedObjectIvarWithFieldPrivate(v4, a2, v5);
  }

  return result;
}

void *GPBSetMessageBytesField(void *result, void *a2, void *a3)
{
  if (result && a2)
  {
    v4 = result;
    v5 = [a3 copy];

    return GPBSetRetainedObjectIvarWithFieldPrivate(v4, a2, v5);
  }

  return result;
}

void *GPBSetMessageGroupField_0(void *result, void *a2, void *a3)
{
  if (result && a2)
  {
    v4 = result;
    v5 = a3;

    return GPBSetRetainedObjectIvarWithFieldPrivate(v4, a2, v5);
  }

  return result;
}

char *GPBMessageEncodingForSelector(const char *a1, BOOL a2)
{
  Protocol = objc_getProtocol("GPBMessageSignatureProtocol");
  if (!Protocol)
  {
    sub_10031B4F0();
  }

  MethodDescription = protocol_getMethodDescription(Protocol, a1, 0, a2);
  if (MethodDescription.name)
  {
    v6 = MethodDescription.types == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    sub_10031B558(a1);
  }

  return MethodDescription.types;
}

__CFString *GPBTextFormatForMessage(void *a1, __CFString *a2)
{
  v2 = &stru_100436548;
  if (a1)
  {
    if (a2)
    {
      v4 = a2;
    }

    else
    {
      v4 = &stru_100436548;
    }

    v2 = +[NSMutableString string];
    sub_100319498(a1, v2, v4);
  }

  return v2;
}

id sub_100319498(void *a1, void *a2, __CFString *a3)
{
  v5 = a1;
  v6 = [a1 descriptor];
  v7 = v6[1];
  v8 = [v7 count];
  v9 = [v6 extensionRanges];
  LODWORD(v10) = [v6 extensionRangesCount];
  v11 = [objc_msgSend(v5 "extensionsCurrentlySet")];
  if (v8)
  {
    v12 = 0;
  }

  else
  {
    v12 = v10 == 0;
  }

  if (!v12)
  {
    v13 = v11;
    v14 = 0;
    v15 = 0;
    v10 = v10;
    v56 = v74;
    v57 = v70;
    v66 = v5;
    v59 = v11;
    v60 = v9;
    v63 = a3;
    v64 = v10;
    v61 = v8;
    v62 = v7;
    while (1)
    {
      if (v14 == v8)
      {
        sub_10031A78C(v5, v13, v9[v15++], a2, a3);
        v14 = v8;
        goto LABEL_96;
      }

      if (v15 != v10)
      {
        v16 = [v7 objectAtIndexedSubscript:v14];
        v17 = &v9[v15];
        if (*(v16[1] + 16) >= *v17)
        {
          ++v15;
          sub_10031A78C(v5, v13, *v17, a2, a3);
          goto LABEL_96;
        }
      }

      v67 = v14 + 1;
      v68 = [v7 objectAtIndexedSubscript:v14];
      v18 = [v68 fieldType];
      v19 = v18;
      if (v18 == 2)
      {
        break;
      }

      if (v18 == 1)
      {
        v65 = v15;
        v23 = v5[8];
        v24 = v68;
        if (v23)
        {
LABEL_20:
          v21 = *(v23 + *(v24[1] + 24));
          goto LABEL_23;
        }

LABEL_22:
        v21 = 0;
LABEL_23:
        v22 = [v21 count];
        if (v22)
        {
          goto LABEL_24;
        }

        goto LABEL_14;
      }

      if (v18)
      {
        v14 = v67;
        goto LABEL_96;
      }

      v65 = v15;
      HasIvar = GPBGetHasIvar(v5, *(v68[1] + 20), *(v68[1] + 16));
      v21 = 0;
      v22 = HasIvar;
      if (HasIvar)
      {
LABEL_24:
        v25 = [v68 textFormatName];
        if (![(NSString *)v25 length])
        {
          v25 = [NSString stringWithFormat:@"%u", *(v68[1] + 16)];
          if (v22 == 1)
          {
            a3 = v63;
            v5 = v66;
            v26 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"  # %@", [v68 name]);
LABEL_29:
            if (v19 == 2)
            {
              v27 = [v68 mapKeyDataType];
              a3 = v63;
              v28 = *(v68[1] + 30);
              v58 = [NSString stringWithFormat:@"%@%@ {%@\n", v63, v25, v26, v56, v57];
              v29 = [NSString stringWithFormat:@"%@%@ {\n", v63, v25];
              v30 = [NSString stringWithFormat:@"%@}\n", v63];
              v31 = [NSString stringWithFormat:@"%@  key: ", v63];
              v32 = ":";
              if ((v28 - 15) < 2)
              {
                v32 = "";
              }

              v33 = [NSString stringWithFormat:@"%@  value%s ", v63, v32];
              v76[0] = 0;
              v76[1] = v76;
              v76[2] = 0x2020000000;
              v77 = 1;
              if (v27 == 14 && (v28 - 13) <= 3)
              {
                v73[0] = _NSConcreteStackBlock;
                v73[1] = 3221225472;
                v74[0] = sub_10031AD64;
                v74[1] = &unk_100435610;
                v74[2] = a2;
                v74[3] = v58;
                v74[4] = v29;
                v74[5] = v31;
                v75 = v28;
                v74[6] = v33;
                v74[7] = v63;
                v74[8] = v30;
                v74[9] = v76;
                [v21 enumerateKeysAndObjectsUsingBlock:v73];
              }

              else
              {
                v69[0] = _NSConcreteStackBlock;
                v69[1] = 3221225472;
                v70[0] = sub_10031AEF8;
                v70[1] = &unk_100435638;
                v70[9] = v30;
                v70[10] = v76;
                v70[2] = a2;
                v70[3] = v58;
                v71 = v27;
                v70[4] = v29;
                v70[5] = v31;
                v72 = v28;
                v70[6] = v33;
                v70[7] = v63;
                v70[8] = v68;
                [v21 enumerateForTextFormat:v69];
              }

              _Block_object_dispose(v76, 8);
              v5 = v66;
              v14 = v67;
            }

            else
            {
              v34 = 0;
              v35 = *(v68[1] + 30);
              if ((v35 - 15) >= 2)
              {
                v36 = ":";
              }

              else
              {
                v36 = "";
              }

              do
              {
                [a2 appendFormat:@"%@%@%s ", a3, v25, v36];
                switch(v35)
                {
                  case 0:
                    if (v21)
                    {
                      v44 = [v21 valueAtIndex:v34];
                    }

                    else
                    {
                      v44 = GPBGetMessageBoolField(v5, v68);
                    }

                    if (v44)
                    {
                      v50 = @"true";
                    }

                    else
                    {
                      v50 = @"false";
                    }

                    [a2 appendString:v50];
                    break;
                  case 1:
                  case 11:
                    if (v21)
                    {
                      v41 = [v21 valueAtIndex:v34];
                    }

                    else
                    {
                      v41 = GPBGetMessageUInt32Field(v5, v68);
                    }

                    [a2 appendFormat:@"%u", v41, v55];
                    break;
                  case 2:
                  case 7:
                  case 9:
                    if (v21)
                    {
                      v37 = [v21 valueAtIndex:v34];
                    }

                    else
                    {
                      v37 = GPBGetMessageInt32Field(v5, v68);
                    }

                    [a2 appendFormat:@"%d", v37, v55];
                    break;
                  case 3:
                    if (v21)
                    {
                      [v21 valueAtIndex:v34];
                    }

                    else
                    {
                      v45 = GPBGetMessageFloatField(v5, v68);
                    }

                    [a2 appendFormat:@"%.*g", 6, v45];
                    break;
                  case 4:
                  case 12:
                    if (v21)
                    {
                      v39 = [v21 valueAtIndex:v34];
                    }

                    else
                    {
                      v39 = GPBGetMessageUInt64Field(v5, v68);
                    }

                    [a2 appendFormat:@"%llu", v39, v55];
                    break;
                  case 5:
                  case 8:
                  case 10:
                    if (v21)
                    {
                      v38 = [v21 valueAtIndex:v34];
                    }

                    else
                    {
                      v38 = GPBGetMessageInt64Field(v5, v68);
                    }

                    [a2 appendFormat:@"%lld", v38, v55];
                    break;
                  case 6:
                    if (v21)
                    {
                      [v21 valueAtIndex:v34];
                    }

                    else
                    {
                      v43 = GPBGetMessageDoubleField(v5, v68);
                    }

                    [a2 appendFormat:@"%.*lg", 15, *&v43];
                    break;
                  case 13:
                    if (v21)
                    {
                      v48 = [v21 objectAtIndex:v34];
                    }

                    else
                    {
                      v48 = GPBGetObjectIvarWithField(v5, v68);
                    }

                    sub_10031A270(v48, a2);
                    break;
                  case 14:
                    if (v21)
                    {
                      v42 = [v21 objectAtIndex:v34];
                    }

                    else
                    {
                      v42 = GPBGetObjectIvarWithField(v5, v68);
                    }

                    sub_10031ABCC(v42, a2);
                    break;
                  case 15:
                  case 16:
                    if (v21)
                    {
                      v40 = [v21 objectAtIndex:v34];
                    }

                    else
                    {
                      v40 = GPBGetObjectIvarWithField(v5, v68);
                    }

                    v49 = v40;
                    [a2 appendFormat:@"{%@\n", v26];
                    sub_100319498(v49, a2, [(__CFString *)a3 stringByAppendingString:@"  "]);
                    [a2 appendFormat:@"%@}", a3];
                    v26 = &stru_100436548;
                    v5 = v66;
                    break;
                  case 17:
                    if (v21)
                    {
                      v46 = [v21 rawValueAtIndex:v34];
                      v47 = v68;
                    }

                    else
                    {
                      v47 = v68;
                      v46 = GPBGetMessageInt32Field(v5, v68);
                    }

                    v51 = [v47 enumDescriptor];
                    if (v51 && (v52 = [v51 textFormatNameForValue:v46]) != 0)
                    {
                      [a2 appendString:v52];
                    }

                    else
                    {
                      [a2 appendFormat:@"%d", v46];
                    }

                    v5 = v66;
                    a3 = v63;
                    break;
                  default:
                    break;
                }

                [a2 appendFormat:@"%@\n", v26];
                ++v34;
              }

              while (v22 != v34);
              v14 = v67;
            }

            v8 = v61;
            v7 = v62;
            v13 = v59;
            v9 = v60;
            goto LABEL_95;
          }

          [a2 appendFormat:@"%@# %@\n", a3, objc_msgSend(v68, "name")];
        }

        v26 = &stru_100436548;
        goto LABEL_29;
      }

LABEL_14:
      v14 = v67;
LABEL_95:
      v10 = v64;
      v15 = v65;
LABEL_96:
      if (v14 >= v8 && v15 >= v10)
      {
        goto LABEL_98;
      }
    }

    v65 = v15;
    v23 = v5[8];
    if (v23)
    {
      v24 = v68;
      goto LABEL_20;
    }

    goto LABEL_22;
  }

LABEL_98:
  v53 = GPBTextFormatForUnknownFieldSet([v5 unknownFields], a3);
  result = [(__CFString *)v53 length];
  if (result)
  {
    [a2 appendFormat:@"%@# --- Unknown fields ---\n", a3];
    return [a2 appendString:v53];
  }

  return result;
}

__CFString *GPBTextFormatForUnknownFieldSet(void *a1, const __CFString *a2)
{
  v2 = &stru_100436548;
  if (a1)
  {
    v4 = a2 ? a2 : &stru_100436548;
    v2 = +[NSMutableString string];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = [a1 sortedFields];
    v26 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v26)
    {
      v25 = *v44;
      do
      {
        v5 = 0;
        do
        {
          if (*v44 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v28 = v5;
          v6 = *(*(&v43 + 1) + 8 * v5);
          v7 = [v6 number];
          v8 = [v6 varintList];
          v41[0] = _NSConcreteStackBlock;
          v41[1] = 3221225472;
          v41[2] = sub_10031A1BC;
          v41[3] = &unk_1004355C0;
          v41[4] = v2;
          v41[5] = v4;
          v42 = v7;
          [v8 enumerateValuesWithBlock:v41];
          v9 = [v6 fixed32List];
          v39[0] = _NSConcreteStackBlock;
          v39[1] = 3221225472;
          v39[2] = sub_10031A1F8;
          v39[3] = &unk_1004355E8;
          v39[4] = v2;
          v39[5] = v4;
          v40 = v7;
          [v9 enumerateValuesWithBlock:v39];
          v10 = [v6 fixed64List];
          v37[0] = _NSConcreteStackBlock;
          v37[1] = 3221225472;
          v37[2] = sub_10031A234;
          v37[3] = &unk_1004355C0;
          v37[4] = v2;
          v37[5] = v4;
          v38 = v7;
          [v10 enumerateValuesWithBlock:v37];
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v27 = v6;
          v11 = [v6 lengthDelimitedList];
          v12 = [v11 countByEnumeratingWithState:&v33 objects:v48 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v34;
            do
            {
              for (i = 0; i != v13; i = i + 1)
              {
                if (*v34 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v33 + 1) + 8 * i);
                [(__CFString *)v2 appendFormat:@"%@%d: ", v4, v7];
                sub_10031A270(v16, v2);
                [(__CFString *)v2 appendString:@"\n"];
              }

              v13 = [v11 countByEnumeratingWithState:&v33 objects:v48 count:16];
            }

            while (v13);
          }

          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v17 = [v27 groupList];
          v18 = [v17 countByEnumeratingWithState:&v29 objects:v47 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v30;
            do
            {
              for (j = 0; j != v19; j = j + 1)
              {
                if (*v30 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v22 = *(*(&v29 + 1) + 8 * j);
                [(__CFString *)v2 appendFormat:@"%@%d: {\n", v4, v7];
                [(__CFString *)v2 appendString:GPBTextFormatForUnknownFieldSet(v22, [(__CFString *)v4 stringByAppendingString:@"  "])];
                [(__CFString *)v2 appendFormat:@"%@}\n", v4];
              }

              v19 = [v17 countByEnumeratingWithState:&v29 objects:v47 count:16];
            }

            while (v19);
          }

          v5 = v28 + 1;
        }

        while ((v28 + 1) != v26);
        v26 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
      }

      while (v26);
    }
  }

  return v2;
}

id sub_10031A270(void *a1, void *a2)
{
  v4 = [a1 bytes];
  v5 = [a1 length];
  [a2 appendString:@""];
  if (v5 >= 1)
  {
    v6 = &v4[v5];
    do
    {
      v7 = *v4;
      v8 = *v4;
      if (*v4 > 0x21u)
      {
        switch(v8)
        {
          case '""':
            v9 = a2;
            v10 = @"\\"";
            goto LABEL_19;
          case '\'':
            v9 = a2;
            v10 = @"\\'";
            goto LABEL_19;
          case '\\':
            v9 = a2;
            v10 = @"\\\";
            goto LABEL_19;
        }
      }

      else
      {
        switch(v8)
        {
          case 9:
            v9 = a2;
            v10 = @"\\t";
            goto LABEL_19;
          case 0xA:
            v9 = a2;
            v10 = @"\\n";
            goto LABEL_19;
          case 0xD:
            v9 = a2;
            v10 = @"\\r";
LABEL_19:
            [v9 appendString:v10];
            goto LABEL_20;
        }
      }

      if ((v7 & 0x80000000) != 0)
      {
        if (!__maskrune(*v4, 0x40000uLL))
        {
LABEL_23:
          [a2 appendFormat:@"\\%03o", v8];
          goto LABEL_20;
        }
      }

      else if ((_DefaultRuneLocale.__runetype[v7] & 0x40000) == 0)
      {
        goto LABEL_23;
      }

      [a2 appendFormat:@"%c", v7];
LABEL_20:
      ++v4;
    }

    while (v4 < v6);
  }

  return [a2 appendString:@""];
}

NSString *GPBDecodeTextFormatName(char *a1, int a2, void *a3)
{
  v3 = 0;
  if (a1 && a3)
  {
    v23 = a1;
    v6 = sub_10031A608(&v23);
    if (v6 < 1)
    {
      return 0;
    }

    else
    {
      v7 = v6;
      while (1)
      {
        v8 = sub_10031A608(&v23);
        v9 = v23;
        if (v8 == a2)
        {
          break;
        }

        v10 = v23 + 1;
          ;
        }

        v23 = v10;
        if (v7-- < 2)
        {
          return 0;
        }
      }

      if (*v23)
      {
        v3 = +[NSMutableString stringWithCapacity:](NSMutableString, "stringWithCapacity:", [a3 length]);
        v14 = *v9;
        if (*v9)
        {
          v15 = 0;
          while (1)
          {
            if (v14 < 0)
            {
              [(NSMutableString *)v3 appendString:@"_"];
              v14 = *v9;
            }

            v16 = v14 & 0x1F;
            v17 = v14 & 0x60;
            if (v17 == 32)
            {
              break;
            }

            if (v17 == 64)
            {
              v18 = __toupper([a3 characterAtIndex:v15]);
LABEL_21:
              [(NSMutableString *)v3 appendFormat:@"%c", v18];
              ++v15;
              --v16;
            }

            if (v16 >= 1)
            {
              v19 = v16;
              v20 = v15;
              do
              {
                v21 = [a3 characterAtIndex:v20];
                if (v17 == 96)
                {
                  [(NSMutableString *)v3 appendFormat:@"%c", __toupper(v21)];
                }

                else
                {
                  [(NSMutableString *)v3 appendFormat:@"%C", v21];
                }

                ++v20;
                --v19;
              }

              while (v19);
            }

            v15 += v16;
            v22 = *++v9;
            v14 = v22;
            if (!v22)
            {
              return v3;
            }
          }

          v18 = __tolower([a3 characterAtIndex:v15]);
          goto LABEL_21;
        }
      }

      else
      {
        return [NSString stringWithUTF8String:v23 + 1];
      }
    }
  }

  return v3;
}

uint64_t sub_10031A608(char **a1)
{
  v1 = *a1;
  v2 = *(*a1)++;
  if ((v2 & 0x80000000) != 0)
  {
    v3 = v2 & 0x7F;
    v4 = v1[1];
    *a1 = v1 + 2;
    v5 = v4 << 7;
    if ((v4 & 0x80000000) == 0)
    {
      return v5 | v3;
    }

    v3 |= v5 & 0x3F80;
    v6 = v1[2];
    *a1 = v1 + 3;
    v5 = v6 << 14;
    if ((v6 & 0x80000000) == 0)
    {
      return v5 | v3;
    }

    v3 |= v5 & 0x1FC000;
    v7 = v1[3];
    *a1 = v1 + 4;
    v5 = v7 << 21;
    if (v7 < 0)
    {
      v9 = v1[4];
      *a1 = v1 + 5;
      v2 = v5 & 0xFE00000 | (v9 << 28) | v3;
      if (v9 < 0)
      {
        v10 = v1 + 6;
        v11 = 5;
        while (1)
        {
          v12 = *(v10 - 1);
          *a1 = v10;
          if ((v12 & 0x80000000) == 0)
          {
            break;
          }

          ++v10;
          if (!--v11)
          {
            [NSException raise:NSParseErrorException format:@"Unable to read varint32"];
            return v2;
          }
        }
      }
    }

    else
    {
      return v5 | v3;
    }
  }

  return v2;
}

void *GPBSetInt32IvarWithFieldInternal(void *a1, uint64_t a2, int a3)
{
  if (a1)
  {
    if (a2)
    {
      return GPBSetInt32IvarWithFieldPrivate(a1, a2, a3);
    }
  }

  return a1;
}

BOOL GPBClassHasSel(objc_class *a1, const char *a2)
{
  outCount = 0;
  v3 = class_copyMethodList(a1, &outCount);
  if (outCount)
  {
    for (i = 0; i < outCount; ++i)
    {
      Name = method_getName(v3[i]);
      v6 = Name == a2;
      if (Name == a2)
      {
        break;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  free(v3);
  return v6;
}

id sub_10031A78C(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  result = [a2 countByEnumeratingWithState:&v32 objects:v36 count:16];
  v28 = result;
  if (result)
  {
    v27 = *v33;
    do
    {
      v7 = 0;
      do
      {
        if (*v33 != v27)
        {
          objc_enumerationMutation(a2);
        }

        v30 = v7;
        v8 = *(*(&v32 + 1) + 8 * v7);
        result = [v8 fieldNumber];
        if (result >= a3)
        {
          v9 = result;
          if (result >= HIDWORD(a3))
          {
            return result;
          }

          v10 = [a1 getExtension:v8];
          v11 = [v8 isRepeated];
          if (v11)
          {
            v12 = [v10 count];
            v13 = [v8 singletonName];
            if (v12 != 1)
            {
              [a4 appendFormat:@"%@# [%@]\n", a5, v13];
              v14 = [v8 dataType];
              if (!v12)
              {
                goto LABEL_36;
              }

              v15 = v14;
              v16 = &stru_100436548;
              goto LABEL_14;
            }
          }

          else
          {
            v13 = [v8 singletonName];
          }

          v16 = [NSString stringWithFormat:@"  # [%@]", v13];
          v15 = [v8 dataType];
          v12 = 1;
LABEL_14:
          v17 = 0;
          if (v15 - 15 >= 2)
          {
            v18 = ":";
          }

          else
          {
            v18 = "";
          }

          do
          {
            v19 = v10;
            if (v11)
            {
              v19 = [v10 objectAtIndex:v17];
            }

            [a4 appendFormat:@"%@%u%s ", a5, v9, v18];
            switch(v15)
            {
              case 0u:
                if ([v19 BOOLValue])
                {
                  v23 = @"true";
                }

                else
                {
                  v23 = @"false";
                }

                [a4 appendString:v23];
                break;
              case 1u:
              case 0xBu:
                [a4 appendFormat:@"%u", objc_msgSend(v19, "unsignedIntValue"), v24];
                break;
              case 2u:
                v20 = [v19 unsignedIntValue];
                goto LABEL_34;
              case 3u:
                [v19 floatValue];
                [a4 appendFormat:@"%.*g", 6, v21];
                break;
              case 4u:
              case 0xCu:
                [a4 appendFormat:@"%llu", objc_msgSend(v19, "unsignedLongLongValue"), v24];
                break;
              case 5u:
              case 8u:
              case 0xAu:
                [a4 appendFormat:@"%lld", objc_msgSend(v19, "longLongValue"), v24];
                break;
              case 6u:
                [v19 doubleValue];
                [a4 appendFormat:@"%.*lg", 15, v22];
                break;
              case 7u:
              case 9u:
              case 0x11u:
                v20 = [v19 intValue];
LABEL_34:
                [a4 appendFormat:@"%d", v20, v24];
                break;
              case 0xDu:
                sub_10031A270(v19, a4);
                break;
              case 0xEu:
                sub_10031ABCC(v19, a4);
                break;
              case 0xFu:
              case 0x10u:
                [a4 appendFormat:@"{%@\n", v16];
                sub_100319498(v19, a4, [a5 stringByAppendingString:@"  "]);
                [a4 appendFormat:@"%@}", a5];
                v16 = &stru_100436548;
                break;
              default:
                break;
            }

            [a4 appendFormat:@"%@\n", v16];
            ++v17;
          }

          while (v12 != v17);
        }

LABEL_36:
        v7 = v30 + 1;
      }

      while ((v30 + 1) != v28);
      result = [a2 countByEnumeratingWithState:&v32 objects:v36 count:16];
      v28 = result;
    }

    while (result);
  }

  return result;
}

id sub_10031ABCC(void *a1, void *a2)
{
  [a2 appendString:@""];
  v4 = [a1 length];
  if (v4)
  {
    v5 = v4;
    for (i = 0; v5 != i; ++i)
    {
      v7 = [a1 characterAtIndex:i];
      if (v7 > 33)
      {
        switch(v7)
        {
          case '""':
            v8 = a2;
            v9 = @"\\"";
            break;
          case '\'':
            v8 = a2;
            v9 = @"\\'";
            break;
          case '\\':
            v8 = a2;
            v9 = @"\\\";
            break;
          default:
LABEL_14:
            if (v7 > 0x1F)
            {
              [a2 appendFormat:@"%C", v7, v11, v12];
            }

            else
            {
              [a2 appendFormat:@"\\%d%d%d", 0, v7 >> 3, v7 & 7];
            }

            continue;
        }
      }

      else
      {
        switch(v7)
        {
          case 9:
            v8 = a2;
            v9 = @"\\t";
            break;
          case 0xA:
            v8 = a2;
            v9 = @"\\n";
            break;
          case 0xD:
            v8 = a2;
            v9 = @"\\r";
            break;
          default:
            goto LABEL_14;
        }
      }

      [v8 appendString:v9];
    }
  }

  return [a2 appendString:@""];
}

id sub_10031AD64(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v7 = 48;
  if (*(*(*(a1 + 88) + 8) + 24))
  {
    v7 = 40;
  }

  [v6 appendString:*(a1 + v7)];
  *(*(*(a1 + 88) + 8) + 24) = 0;
  [*(a1 + 32) appendString:*(a1 + 56)];
  sub_10031ABCC(a2, *(a1 + 32));
  [*(a1 + 32) appendString:@"\n"];
  [*(a1 + 32) appendString:*(a1 + 64)];
  v8 = *(a1 + 96);
  switch(v8)
  {
    case 13:
      sub_10031A270(a3, *(a1 + 32));
      break;
    case 15:
      [*(a1 + 32) appendString:@"{\n"];
      sub_100319498(a3, *(a1 + 32), [*(a1 + 72) stringByAppendingString:@"    "]);
      [*(a1 + 32) appendFormat:@"%@  }", *(a1 + 72)];
      break;
    case 14:
      sub_10031ABCC(a3, *(a1 + 32));
      break;
    default:
      [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInFunction:"handleFailureInFunction:file:lineNumber:description:" file:[NSString lineNumber:"stringWithUTF8String:" description:"void AppendTextFormatForMapMessageField(id stringWithUTF8String:NSMutableString *, NSString *, NSString *, NSString *)_block_invoke"], @"GPBUtilities.m", 1672, @"Can't happen"];
      break;
  }

  [*(a1 + 32) appendString:@"\n"];
  v9 = *(a1 + 32);
  v10 = *(a1 + 80);

  return [v9 appendString:v10];
}

id sub_10031AEF8(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v7 = 48;
  if (*(*(*(a1 + 96) + 8) + 24))
  {
    v7 = 40;
  }

  [v6 appendString:*(a1 + v7)];
  *(*(*(a1 + 96) + 8) + 24) = 0;
  v8 = *(a1 + 32);
  if (*(a1 + 104) == 14)
  {
    [v8 appendString:*(a1 + 56)];
    sub_10031ABCC(a2, *(a1 + 32));
    [*(a1 + 32) appendString:@"\n"];
  }

  else
  {
    [v8 appendFormat:@"%@%@\n", *(a1 + 56), a2];
  }

  [*(a1 + 32) appendString:*(a1 + 64)];
  v9 = *(a1 + 105);
  if (v9 <= 0xE)
  {
    if (v9 == 13)
    {
      sub_10031A270(a3, *(a1 + 32));
      goto LABEL_22;
    }

    if (v9 == 14)
    {
      sub_10031ABCC(a3, *(a1 + 32));
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  if (v9 == 15)
  {
    [*(a1 + 32) appendString:@"{\n"];
    sub_100319498(a3, *(a1 + 32), [*(a1 + 72) stringByAppendingString:@"    "]);
    [*(a1 + 32) appendFormat:@"%@  }", *(a1 + 72)];
    goto LABEL_22;
  }

  if (v9 != 17)
  {
    if (v9 == 16)
    {
      [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInFunction:"handleFailureInFunction:file:lineNumber:description:" file:[NSString lineNumber:"stringWithUTF8String:" description:"void AppendTextFormatForMapMessageField(id stringWithUTF8String:NSMutableString *, NSString *, NSString *, NSString *)_block_invoke_2"], @"GPBUtilities.m", 1731, @"Can't happen"];
    }

LABEL_20:
    v14 = *(a1 + 32);
    v13 = a3;
    goto LABEL_21;
  }

  v10 = [a3 intValue];
  v11 = [*(a1 + 80) enumDescriptor];
  if (!v11 || (v12 = [v11 textFormatNameForValue:v10]) == 0)
  {
    [*(a1 + 32) appendFormat:@"%d", v10];
    goto LABEL_22;
  }

  v13 = v12;
  v14 = *(a1 + 32);
LABEL_21:
  [v14 appendString:v13];
LABEL_22:
  [*(a1 + 32) appendString:@"\n"];
  v15 = *(a1 + 32);
  v16 = *(a1 + 88);

  return [v15 appendString:v16];
}

id sub_10031B148()
{
  +[NSAssertionHandler currentHandler];
  [NSString stringWithUTF8String:"void GPBSetHasIvar(GPBMessage *, int32_t, uint32_t, BOOL)"];
  v0 = sub_10031B128();

  return [v0 handleFailureInFunction:? file:? lineNumber:? description:?];
}

id sub_10031B1B0()
{
  +[NSAssertionHandler currentHandler];
  [NSString stringWithUTF8String:"void GPBSetHasIvar(GPBMessage *, int32_t, uint32_t, BOOL)"];
  v0 = sub_10031B128();

  return [v0 handleFailureInFunction:? file:? lineNumber:? description:?];
}

id sub_10031B2A0()
{
  +[NSAssertionHandler currentHandler];
  [NSString stringWithUTF8String:"BOOL GPBGetHasIvar(GPBMessage *, int32_t, uint32_t)"];
  objc_opt_class();
  return [sub_10031B118() handleFailureInFunction:? file:? lineNumber:? description:?];
}

id sub_10031B31C()
{
  +[NSAssertionHandler currentHandler];
  [NSString stringWithUTF8String:"BOOL GPBGetHasIvar(GPBMessage *, int32_t, uint32_t)"];
  v0 = sub_10031B128();

  return [v0 handleFailureInFunction:? file:? lineNumber:? description:?];
}

id sub_10031B384()
{
  +[NSAssertionHandler currentHandler];
  [NSString stringWithUTF8String:"BOOL GPBGetHasIvar(GPBMessage *, int32_t, uint32_t)"];
  v0 = sub_10031B128();

  return [v0 handleFailureInFunction:? file:? lineNumber:? description:?];
}

id sub_10031B474()
{
  +[NSAssertionHandler currentHandler];
  [NSString stringWithUTF8String:"void GPBSetRetainedObjectIvarWithFieldPrivate(GPBMessage *, GPBFieldDescriptor *, id)"];
  objc_opt_class();
  return [sub_10031B118() handleFailureInFunction:? file:? lineNumber:? description:?];
}

id sub_10031B4F0()
{
  +[NSAssertionHandler currentHandler];
  [NSString stringWithUTF8String:"const char *GPBMessageEncodingForSelector(SEL, BOOL)"];
  v0 = sub_10031B128();

  return [v0 handleFailureInFunction:? file:? lineNumber:? description:?];
}

id sub_10031B558(const char *a1)
{
  +[NSAssertionHandler currentHandler];
  [NSString stringWithUTF8String:"const char *GPBMessageEncodingForSelector(SEL, BOOL)"];
  NSStringFromSelector(a1);
  return [sub_10031B118() handleFailureInFunction:? file:? lineNumber:? description:?];
}

GPBFileDescriptor *sub_10031B67C()
{
  result = qword_1004588F0;
  if (!qword_1004588F0)
  {
    result = [[GPBFileDescriptor alloc] initWithPackage:@"CSHWProto" objcPrefix:@"CSHWProto" syntax:2];
    qword_1004588F0 = result;
  }

  return result;
}

unint64_t CSHWProtoValue_ValueType_EnumDescriptor()
{
  if (!atomic_load(&qword_1004588D0))
  {
    v1 = [GPBEnumDescriptor allocDescriptorForName:@"CSHWProtoValue_ValueType" valueNames:"ValueTypeNull" values:&unk_1003C0060 count:4 enumVerifier:CSHWProtoValue_ValueType_IsValidValue extraTextFormatInfo:&unk_1003C0070];
    v2 = 0;
    atomic_compare_exchange_strong(&qword_1004588D0, &v2, v1);
    if (v2)
    {
    }
  }

  return atomic_load(&qword_1004588D0);
}

void sub_10031BA18(uint64_t a1, void *a2, void *a3)
{
  v4 = [a2 copy];
  [a3 addField:v4];
}

int sub_10031BD2C(id a1, const void *a2, const void *a3)
{
  if (*a2 == *a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = -1;
  }

  if (*a2 > *a3)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

int sub_10031BE7C(id a1, const void *a2, const void *a3)
{
  if (*a2 == *a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = -1;
  }

  if (*a2 > *a3)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

id sub_10031BF54(uint64_t a1, void *a2, void *a3)
{
  result = [a2 serializedSize];
  *a3 += result;
  return result;
}

id sub_10031BFF4(uint64_t a1, void *a2, void *a3)
{
  result = [a2 serializedSizeAsMessageSetExtension];
  *a3 += result;
  return result;
}

void sub_10031C20C(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 number];
  if (!v5)
  {
    [NSException raise:NSInvalidArgumentException format:@"Zero is not a valid field number."];
  }

  v6 = [a3 mutableFieldForNumber:v5 create:0];
  if (v6)
  {

    [v6 mergeFromField:a2];
  }

  else
  {
    v7 = [a2 copy];
    [a3 addField:v7];
  }
}

id sub_10031C6F8(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];

  return [(NSAssertionHandler *)v4 handleFailureInMethod:a1 object:a2 file:@"GPBUnknownFieldSet.m" lineNumber:325 description:@"Got passed an invalid tag"];
}

uint64_t GPBDictionaryComputeSizeInternalHelper(void *a1, uint64_t a2)
{
  v4 = *(*(a2 + 8) + 30);
  v5 = [a1 keyEnumerator];
  v6 = [v5 nextObject];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    do
    {
      v9 = [a1 objectForKeyedSubscript:v7];
      v10 = GPBComputeStringSize(1, v7);
      v11 = &v10[sub_10031C838(v9, v4)];
      v8 += &v11[GPBComputeRawVarint32SizeForInteger(v11)];
      v7 = [v5 nextObject];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v12 = GPBComputeWireFormatTagSize(*(*(a2 + 8) + 16), 15);
  return v8 + [a1 count] * v12;
}

char *sub_10031C838(void *a1, uint64_t a2)
{
  switch(a2)
  {
    case 0xD:

      return GPBComputeBytesSize(2, a1);
    case 0xE:

      return GPBComputeStringSize(2, a1);
    case 0xF:

      return GPBComputeMessageSize(2, a1);
    default:
      [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInFunction:"handleFailureInFunction:file:lineNumber:description:" file:[NSString lineNumber:"stringWithUTF8String:" description:"size_t ComputeDictObjectFieldSize(id stringWithUTF8String:GPBDataType)"], @"GPBDictionary.m", 312, @"Unexpected type %d", a2];
      return 0;
  }
}

id GPBDictionaryWriteToStreamInternalHelper(void *a1, void *a2, void *a3)
{
  if ([a3 mapKeyDataType] != 14)
  {
    sub_10033AF50();
  }

  v6 = a3[1];
  v7 = *(v6 + 30);
  Tag = GPBWireFormatMakeTag(*(v6 + 16), 2);
  v9 = [a2 keyEnumerator];
  result = [v9 nextObject];
  if (result)
  {
    v11 = result;
    do
    {
      v12 = [a2 objectForKeyedSubscript:v11];
      [a1 writeInt32NoTag:Tag];
      v13 = GPBComputeStringSize(1, v11);
      [a1 writeInt32NoTag:{sub_10031C838(v12, v7) + v13}];
      [a1 writeString:1 value:v11];
      sub_10031CA3C(a1, v12, v7);
      result = [v9 nextObject];
      v11 = result;
    }

    while (result);
  }

  return result;
}

id sub_10031CA3C(void *a1, uint64_t a2, uint64_t a3)
{
  switch(a3)
  {
    case 0xD:

      return [a1 writeBytes:2 value:a2];
    case 0xE:

      return [a1 writeString:2 value:a2];
    case 0xF:

      return [a1 writeMessage:2 value:a2];
    default:
      return [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInFunction:"handleFailureInFunction:file:lineNumber:description:" file:[NSString lineNumber:"stringWithUTF8String:" description:"void WriteDictObjectField(GPBCodedOutputStream * stringWithUTF8String:uint32_t, GPBDataType)"], @"GPBDictionary.m", 325, @"Unexpected type %d", a3];
  }
}

BOOL GPBDictionaryIsInitializedInternalHelper(void *a1, void *a2)
{
  if ([a2 mapKeyDataType] != 14)
  {
    sub_10033AFBC();
  }

  if (*(a2[1] + 30) != 15)
  {
    sub_10033B028();
  }

  v4 = [a1 objectEnumerator];
  do
  {
    v5 = [v4 nextObject];
    v6 = v5;
  }

  while (v5 && ([v5 isInitialized] & 1) != 0);
  return v6 == 0;
}

void GPBDictionaryReadEntry(void *a1, uint64_t *a2, uint64_t a3, void *a4, void *a5)
{
  v10 = [a4 mapKeyDataType];
  v11 = *(a4[1] + 30);
  v24 = 0;
  v25 = 0;
  if (v11 == 17)
  {
    v24 = [a4 defaultValue];
  }

  v12 = GPBWireFormatForType(v10, 0);
  Tag = GPBWireFormatMakeTag(1, v12);
  v14 = GPBWireFormatForType(v11, 0);
  v15 = GPBWireFormatMakeTag(2, v14);
  while (1)
  {
    while (1)
    {
      v16 = GPBCodedInputStreamReadTag((a2 + 1));
      if (v16 == Tag)
      {
        v17 = &v25;
        v18 = a2;
        v19 = v10;
        goto LABEL_8;
      }

      v20 = v16;
      if (v16 != v15)
      {
        break;
      }

      v17 = &v24;
      v18 = a2;
      v19 = v11;
LABEL_8:
      sub_10031CE58(v18, v17, v19, a3, a4);
    }

    if (!v16)
    {
      break;
    }

    if (([a2 skipField:v16] & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  v21 = v25;
  if (v10 == 14 && !v25)
  {
    v21 = &stru_100436548;
    v25 = v21;
  }

  v22 = v24;
  if ((v11 - 13) > 3u || v24)
  {
    goto LABEL_25;
  }

  switch(v11)
  {
    case 13:
      v23 = GPBEmptyNSData();
      goto LABEL_23;
    case 15:
      v23 = objc_alloc_init([a4 msgClass]);
LABEL_23:
      v22 = v23;
      v24 = v23;
      goto LABEL_25;
    case 14:
      v23 = &stru_100436548;
      goto LABEL_23;
  }

  v22 = 0;
LABEL_25:
  if (v10 == 14 && (v11 - 13) <= 3u)
  {
    [a1 setObject:v22 forKey:v21];
    goto LABEL_34;
  }

  if (v11 != 17 || [objc_msgSend(objc_msgSend(a5 descriptor] == 3 || objc_msgSend(a4, "isValidEnumValue:", v22))
  {
    [a1 setGPBGenericValue:&v24 forGPBGenericValueKey:&v25];
  }

  else
  {
    [a5 addUnknownMapEntry:*(a4[1] + 16) value:{objc_msgSend(a1, "serializedDataForUnknownValue:forKey:keyDataType:", v22, &v25, v10)}];
  }

LABEL_32:
  if ((v10 - 13) > 3u)
  {
    goto LABEL_35;
  }

  v21 = v25;
LABEL_34:

LABEL_35:
  if ((v11 - 13) <= 3u)
  {
  }
}

void sub_10031CE58(uint64_t *a1, id *a2, int a3, uint64_t a4, void *a5)
{
  switch(a3)
  {
    case 0:
      *a2 = GPBCodedInputStreamReadBool(a1 + 1);
      return;
    case 1:
      Fixed32 = GPBCodedInputStreamReadFixed32(a1 + 1);
      goto LABEL_17;
    case 2:
      Fixed32 = GPBCodedInputStreamReadSFixed32(a1 + 1);
      goto LABEL_17;
    case 3:
      *a2 = GPBCodedInputStreamReadFloat(a1 + 1);
      return;
    case 4:
      Fixed64 = GPBCodedInputStreamReadFixed64(a1 + 1);
      goto LABEL_23;
    case 5:
      Fixed64 = GPBCodedInputStreamReadSFixed64(a1 + 1);
      goto LABEL_23;
    case 6:
      *a2 = GPBCodedInputStreamReadDouble(a1 + 1);
      return;
    case 7:
      Fixed32 = GPBCodedInputStreamReadInt32(a1 + 1);
      goto LABEL_17;
    case 8:
      Fixed64 = GPBCodedInputStreamReadInt64(a1 + 1);
      goto LABEL_23;
    case 9:
      Fixed32 = GPBCodedInputStreamReadSInt32(a1 + 1);
      goto LABEL_17;
    case 10:
      Fixed64 = GPBCodedInputStreamReadSInt64(a1 + 1);
      goto LABEL_23;
    case 11:
      Fixed32 = GPBCodedInputStreamReadUInt32(a1 + 1);
      goto LABEL_17;
    case 12:
      Fixed64 = GPBCodedInputStreamReadUInt64(a1 + 1);
      goto LABEL_23;
    case 13:

      Fixed64 = GPBCodedInputStreamReadRetainedBytes(a1 + 1);
      goto LABEL_23;
    case 14:

      Fixed64 = GPBCodedInputStreamReadRetainedString(a1 + 1);
LABEL_23:
      *a2 = Fixed64;
      break;
    case 15:
      v12 = objc_alloc_init([a5 msgClass]);
      [a1 readMessage:v12 extensionRegistry:a4];

      *a2 = v12;
      break;
    case 16:
      v7 = +[NSAssertionHandler currentHandler];
      v8 = [NSString stringWithUTF8String:"void ReadValue(GPBCodedInputStream *, GPBGenericValue *, GPBDataType, GPBExtensionRegistry *, GPBFieldDescriptor *)"];

      [(NSAssertionHandler *)v7 handleFailureInFunction:v8 file:@"GPBDictionary.m" lineNumber:447 description:@"Can't happen"];
      break;
    case 17:
      Fixed32 = GPBCodedInputStreamReadEnum(a1 + 1);
LABEL_17:
      *a2 = Fixed32;
      break;
    default:
      return;
  }
}

uint64_t sub_10031D598(unsigned int a1, int a2, uint64_t a3)
{
  if (a3 == 1)
  {

    return GPBComputeFixed32Size(a2);
  }

  else if (a3 == 11)
  {

    return GPBComputeUInt32Size(a2, a1);
  }

  else
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInFunction:"handleFailureInFunction:file:lineNumber:description:" file:[NSString lineNumber:"stringWithUTF8String:" description:"size_t ComputeDictUInt32FieldSize(uint32_t stringWithUTF8String:GPBDataType)"], @"GPBDictionary.m", 183, @"Unexpected type %d", a3];
    return 0;
  }
}

id sub_10031D7A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 1)
  {

    return [a1 writeFixed32:a3 value:a2];
  }

  else if (a4 == 11)
  {

    return [a1 writeUInt32:a3 value:a2];
  }

  else
  {
    return [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInFunction:"handleFailureInFunction:file:lineNumber:description:" file:[NSString lineNumber:"stringWithUTF8String:" description:"void WriteDictUInt32Field(GPBCodedOutputStream * stringWithUTF8String:uint32_t, GPBDataType)"], @"GPBDictionary.m", 194, @"Unexpected type %d", a4];
  }
}

uint64_t sub_10031D944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%u", a2];
  v6 = [NSString stringWithFormat:@"%u", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_10031DFD8(unsigned int a1, int a2, uint64_t a3)
{
  switch(a3)
  {
    case 2:

      return GPBComputeSFixed32Size(a2);
    case 9:

      return GPBComputeSInt32Size(a2, a1);
    case 7:

      return GPBComputeInt32Size(a2, a1);
    default:
      [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInFunction:"handleFailureInFunction:file:lineNumber:description:" file:[NSString lineNumber:"stringWithUTF8String:" description:"size_t ComputeDictInt32FieldSize(int32_t stringWithUTF8String:GPBDataType)"], @"GPBDictionary.m", 160, @"Unexpected type %d", a3];
      return 0;
  }
}

id sub_10031E218(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  switch(a4)
  {
    case 2:

      return [a1 writeSFixed32:a3 value:a2];
    case 9:

      return [a1 writeSInt32:a3 value:a2];
    case 7:

      return [a1 writeInt32:a3 value:a2];
    default:
      return [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInFunction:"handleFailureInFunction:file:lineNumber:description:" file:[NSString lineNumber:"stringWithUTF8String:" description:"void WriteDictInt32Field(GPBCodedOutputStream * stringWithUTF8String:uint32_t, GPBDataType)"], @"GPBDictionary.m", 173, @"Unexpected type %d", a4];
  }
}

uint64_t sub_10031E3E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%u", a2];
  v6 = [NSString stringWithFormat:@"%d", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_10031EA6C(unint64_t a1, int a2, uint64_t a3)
{
  if (a3 == 4)
  {

    return GPBComputeFixed64Size(a2);
  }

  else if (a3 == 12)
  {

    return GPBComputeUInt64Size(a2, a1);
  }

  else
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInFunction:"handleFailureInFunction:file:lineNumber:description:" file:[NSString lineNumber:"stringWithUTF8String:" description:"size_t ComputeDictUInt64FieldSize(uint64_t stringWithUTF8String:GPBDataType)"], @"GPBDictionary.m", 229, @"Unexpected type %d", a3];
    return 0;
  }
}

id sub_10031EC7C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 4)
  {

    return [a1 writeFixed64:a3 value:a2];
  }

  else if (a4 == 12)
  {

    return [a1 writeUInt64:a3 value:a2];
  }

  else
  {
    return [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInFunction:"handleFailureInFunction:file:lineNumber:description:" file:[NSString lineNumber:"stringWithUTF8String:" description:"void WriteDictUInt64Field(GPBCodedOutputStream * stringWithUTF8String:uint32_t, GPBDataType)"], @"GPBDictionary.m", 240, @"Unexpected type %d", a4];
  }
}

uint64_t sub_10031EE18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%u", a2];
  v6 = [NSString stringWithFormat:@"%llu", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_10031F4A4(unint64_t a1, int a2, uint64_t a3)
{
  switch(a3)
  {
    case 5:

      return GPBComputeSFixed64Size(a2);
    case 0xA:

      return GPBComputeSInt64Size(a2, a1);
    case 8:

      return GPBComputeInt64Size(a2, a1);
    default:
      [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInFunction:"handleFailureInFunction:file:lineNumber:description:" file:[NSString lineNumber:"stringWithUTF8String:" description:"size_t ComputeDictInt64FieldSize(int64_t stringWithUTF8String:GPBDataType)"], @"GPBDictionary.m", 206, @"Unexpected type %d", a3];
      return 0;
  }
}

id sub_10031F6E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  switch(a4)
  {
    case 5:

      return [a1 writeSFixed64:a3 value:a2];
    case 0xA:

      return [a1 writeSInt64:a3 value:a2];
    case 8:

      return [a1 writeInt64:a3 value:a2];
    default:
      return [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInFunction:"handleFailureInFunction:file:lineNumber:description:" file:[NSString lineNumber:"stringWithUTF8String:" description:"void WriteDictInt64Field(GPBCodedOutputStream * stringWithUTF8String:uint32_t, GPBDataType)"], @"GPBDictionary.m", 219, @"Unexpected type %d", a4];
  }
}

uint64_t sub_10031F8AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%u", a2];
  v6 = [NSString stringWithFormat:@"%lld", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_10031FF38(uint64_t a1, int a2, int a3)
{
  if (a3)
  {
    sub_10033B274();
  }

  return GPBComputeBoolSize(a2);
}

id sub_1003200BC(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    sub_10033B2E0();
  }

  return [a1 writeBool:a3 value:a2];
}

uint64_t sub_1003201EC(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%u", a2];
  if (a3)
  {
    v6 = @"true";
  }

  else
  {
    v6 = @"false";
  }

  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_100320864(int a1)
{
  if (a1 != 3)
  {
    sub_10033B3AC();
  }

  return GPBComputeFloatSize(2);
}

id sub_1003209DC(void *a1, int a2, double a3)
{
  v3 = LODWORD(a3);
  if (a2 != 3)
  {
    sub_10033B418();
  }

  LODWORD(a3) = v3;

  return [a1 writeFloat:2 value:a3];
}

uint64_t sub_100320B0C(uint64_t a1, uint64_t a2, float a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%u", a2];
  v6 = [NSString stringWithFormat:@"%.*g", 6, a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_1003211A4(int a1)
{
  if (a1 != 6)
  {
    sub_10033B4E4();
  }

  return GPBComputeDoubleSize(2);
}

id sub_10032131C(void *a1, int a2, double a3)
{
  if (a2 != 6)
  {
    sub_10033B550();
  }

  return [a1 writeDouble:2 value:a3];
}

uint64_t sub_10032144C(uint64_t a1, uint64_t a2, double a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%u", a2];
  v6 = [NSString stringWithFormat:@"%.*lg", 15, *&a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_100321B38(unsigned int a1, int a2)
{
  if (a2 != 17)
  {
    sub_10033B61C();
  }

  return GPBComputeEnumSize(2, a1);
}

id sub_100321CB4(void *a1, uint64_t a2, int a3)
{
  if (a3 != 17)
  {
    sub_10033B688();
  }

  return [a1 writeEnum:2 value:a2];
}

uint64_t sub_100321E8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%u", a2];
  v6 = [NSNumber numberWithInt:a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_100322ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%u", a2];
  v6 = *(v4 + 16);

  return v6(v4, v5, a3);
}

uint64_t sub_100323338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%d", a2];
  v6 = [NSString stringWithFormat:@"%u", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_100323BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%d", a2];
  v6 = [NSString stringWithFormat:@"%d", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_100324470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%d", a2];
  v6 = [NSString stringWithFormat:@"%llu", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_100324D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%d", a2];
  v6 = [NSString stringWithFormat:@"%lld", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_1003255A0(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%d", a2];
  if (a3)
  {
    v6 = @"true";
  }

  else
  {
    v6 = @"false";
  }

  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_100325E1C(uint64_t a1, uint64_t a2, float a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%d", a2];
  v6 = [NSString stringWithFormat:@"%.*g", 6, a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_1003266B8(uint64_t a1, uint64_t a2, double a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%d", a2];
  v6 = [NSString stringWithFormat:@"%.*lg", 15, *&a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_100327044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%d", a2];
  v6 = [NSNumber numberWithInt:a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_100327C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%d", a2];
  v6 = *(v4 + 16);

  return v6(v4, v5, a3);
}

uint64_t sub_1003284F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%llu", a2];
  v6 = [NSString stringWithFormat:@"%u", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_100328D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%llu", a2];
  v6 = [NSString stringWithFormat:@"%d", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_100329620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%llu", a2];
  v6 = [NSString stringWithFormat:@"%llu", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_100329EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%llu", a2];
  v6 = [NSString stringWithFormat:@"%lld", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_10032A758(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%llu", a2];
  if (a3)
  {
    v6 = @"true";
  }

  else
  {
    v6 = @"false";
  }

  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_10032AFD4(uint64_t a1, uint64_t a2, float a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%llu", a2];
  v6 = [NSString stringWithFormat:@"%.*g", 6, a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_10032B870(uint64_t a1, uint64_t a2, double a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%llu", a2];
  v6 = [NSString stringWithFormat:@"%.*lg", 15, *&a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_10032C1FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%llu", a2];
  v6 = [NSNumber numberWithInt:a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_10032CE3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%llu", a2];
  v6 = *(v4 + 16);

  return v6(v4, v5, a3);
}

uint64_t sub_10032D6A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%lld", a2];
  v6 = [NSString stringWithFormat:@"%u", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_10032DF40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%lld", a2];
  v6 = [NSString stringWithFormat:@"%d", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_10032E7D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%lld", a2];
  v6 = [NSString stringWithFormat:@"%llu", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_10032F070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%lld", a2];
  v6 = [NSString stringWithFormat:@"%lld", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_10032F910(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%lld", a2];
  if (a3)
  {
    v6 = @"true";
  }

  else
  {
    v6 = @"false";
  }

  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_10033018C(uint64_t a1, uint64_t a2, float a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%lld", a2];
  v6 = [NSString stringWithFormat:@"%.*g", 6, a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_100330A28(uint64_t a1, uint64_t a2, double a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%lld", a2];
  v6 = [NSString stringWithFormat:@"%.*lg", 15, *&a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_1003313B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%lld", a2];
  v6 = [NSNumber numberWithInt:a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_100331FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%lld", a2];
  v6 = *(v4 + 16);

  return v6(v4, v5, a3);
}

char *sub_100332660(void *a1, int a2)
{
  if (a2 != 14)
  {
    sub_10033C1D4();
  }

  return GPBComputeStringSize(1, a1);
}

id sub_1003327D0(void *a1, uint64_t a2, int a3)
{
  if (a3 != 14)
  {
    sub_10033C240();
  }

  return [a1 writeString:1 value:a2];
}

uint64_t sub_1003328E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%u", a3];
  v6 = *(v4 + 16);

  return v6(v4, a2, v5);
}

uint64_t sub_1003330F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%d", a3];
  v6 = *(v4 + 16);

  return v6(v4, a2, v5);
}

uint64_t sub_100333910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%llu", a3];
  v6 = *(v4 + 16);

  return v6(v4, a2, v5);
}

uint64_t sub_100334128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%lld", a3];
  v6 = *(v4 + 16);

  return v6(v4, a2, v5);
}

uint64_t sub_100334940(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v4 = @"true";
  }

  else
  {
    v4 = @"false";
  }

  return (*(v3 + 16))(v3, a2, v4);
}

uint64_t sub_100335108(uint64_t a1, uint64_t a2, float a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%.*g", 6, a3];
  v6 = *(v4 + 16);

  return v6(v4, a2, v5);
}

uint64_t sub_100335928(uint64_t a1, uint64_t a2, double a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%.*lg", 15, *&a3];
  v6 = *(v4 + 16);

  return v6(v4, a2, v5);
}

uint64_t sub_100336230(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [NSNumber numberWithInt:?];
  v5 = *(v3 + 16);

  return v5(v3, a2, v4);
}

uint64_t sub_10033AF38()
{

  return objc_opt_class();
}

id sub_10033AF50()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"void GPBDictionaryWriteToStreamInternalHelper(GPBCodedOutputStream *, NSDictionary *, GPBFieldDescriptor *)"];

  return [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"GPBDictionary.m" lineNumber:351 description:@"Unexpected key type"];
}

id sub_10033AFBC()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"BOOL GPBDictionaryIsInitializedInternalHelper(NSDictionary *, GPBFieldDescriptor *)"];

  return [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"GPBDictionary.m" lineNumber:372 description:@"Unexpected key type"];
}

id sub_10033B028()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"BOOL GPBDictionaryIsInitializedInternalHelper(NSDictionary *, GPBFieldDescriptor *)"];

  return [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"GPBDictionary.m" lineNumber:373 description:@"Unexpected value type"];
}

id sub_10033B094()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10033AF38();
  sub_10033AF14();
  return [sub_10033AF04() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10033B0F4()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10033AF38();
  sub_10033AF14();
  return [sub_10033AF04() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10033B154()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10033AF38();
  sub_10033AF14();
  return [sub_10033AF04() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10033B1B4()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10033AF38();
  sub_10033AF14();
  return [sub_10033AF04() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10033B214()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10033AF38();
  sub_10033AF14();
  return [sub_10033AF04() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10033B274()
{
  +[NSAssertionHandler currentHandler];
  [NSString stringWithUTF8String:"size_t ComputeDictBoolFieldSize(BOOL, uint32_t, GPBDataType)"];
  sub_10033AF2C();
  return [sub_10033AF20() handleFailureInFunction:? file:? lineNumber:? description:?];
}

id sub_10033B2E0()
{
  +[NSAssertionHandler currentHandler];
  [NSString stringWithUTF8String:"void WriteDictBoolField(GPBCodedOutputStream *, BOOL, uint32_t, GPBDataType)"];
  sub_10033AF2C();
  return [sub_10033AF20() handleFailureInFunction:? file:? lineNumber:? description:?];
}

id sub_10033B34C()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10033AF38();
  sub_10033AF14();
  return [sub_10033AF04() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10033B3AC()
{
  +[NSAssertionHandler currentHandler];
  [NSString stringWithUTF8String:"size_t ComputeDictFloatFieldSize(float, uint32_t, GPBDataType)"];
  sub_10033AF2C();
  return [sub_10033AF20() handleFailureInFunction:? file:? lineNumber:? description:?];
}

id sub_10033B418()
{
  +[NSAssertionHandler currentHandler];
  [NSString stringWithUTF8String:"void WriteDictFloatField(GPBCodedOutputStream *, float, uint32_t, GPBDataType)"];
  sub_10033AF2C();
  return [sub_10033AF20() handleFailureInFunction:? file:? lineNumber:? description:?];
}

id sub_10033B484()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10033AF38();
  sub_10033AF14();
  return [sub_10033AF04() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10033B4E4()
{
  +[NSAssertionHandler currentHandler];
  [NSString stringWithUTF8String:"size_t ComputeDictDoubleFieldSize(double, uint32_t, GPBDataType)"];
  sub_10033AF2C();
  return [sub_10033AF20() handleFailureInFunction:? file:? lineNumber:? description:?];
}

id sub_10033B550()
{
  +[NSAssertionHandler currentHandler];
  [NSString stringWithUTF8String:"void WriteDictDoubleField(GPBCodedOutputStream *, double, uint32_t, GPBDataType)"];
  sub_10033AF2C();
  return [sub_10033AF20() handleFailureInFunction:? file:? lineNumber:? description:?];
}

id sub_10033B5BC()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10033AF38();
  sub_10033AF14();
  return [sub_10033AF04() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10033B61C()
{
  +[NSAssertionHandler currentHandler];
  [NSString stringWithUTF8String:"size_t ComputeDictEnumFieldSize(int32_t, uint32_t, GPBDataType)"];
  sub_10033AF2C();
  return [sub_10033AF20() handleFailureInFunction:? file:? lineNumber:? description:?];
}

id sub_10033B688()
{
  +[NSAssertionHandler currentHandler];
  [NSString stringWithUTF8String:"void WriteDictEnumField(GPBCodedOutputStream *, int32_t, uint32_t, GPBDataType)"];
  sub_10033AF2C();
  return [sub_10033AF20() handleFailureInFunction:? file:? lineNumber:? description:?];
}

id sub_10033B6F4()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10033AF38();
  sub_10033AF14();
  return [sub_10033AF04() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10033B754()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10033AF38();
  sub_10033AF14();
  return [sub_10033AF04() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10033B7B4()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10033AF38();
  sub_10033AF14();
  return [sub_10033AF04() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10033B814()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10033AF38();
  sub_10033AF14();
  return [sub_10033AF04() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10033B874()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10033AF38();
  sub_10033AF14();
  return [sub_10033AF04() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10033B8D4()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10033AF38();
  sub_10033AF14();
  return [sub_10033AF04() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10033B934()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10033AF38();
  sub_10033AF14();
  return [sub_10033AF04() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10033B994()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10033AF38();
  sub_10033AF14();
  return [sub_10033AF04() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10033B9F4()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10033AF38();
  sub_10033AF14();
  return [sub_10033AF04() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10033BA54()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10033AF38();
  sub_10033AF14();
  return [sub_10033AF04() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10033BAB4()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10033AF38();
  sub_10033AF14();
  return [sub_10033AF04() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10033BB14()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10033AF38();
  sub_10033AF14();
  return [sub_10033AF04() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10033BB74()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10033AF38();
  sub_10033AF14();
  return [sub_10033AF04() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10033BBD4()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10033AF38();
  sub_10033AF14();
  return [sub_10033AF04() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10033BC34()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10033AF38();
  sub_10033AF14();
  return [sub_10033AF04() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10033BC94()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10033AF38();
  sub_10033AF14();
  return [sub_10033AF04() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10033BCF4()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10033AF38();
  sub_10033AF14();
  return [sub_10033AF04() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10033BD54()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10033AF38();
  sub_10033AF14();
  return [sub_10033AF04() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10033BDB4()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10033AF38();
  sub_10033AF14();
  return [sub_10033AF04() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10033BE14()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10033AF38();
  sub_10033AF14();
  return [sub_10033AF04() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10033BE74()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10033AF38();
  sub_10033AF14();
  return [sub_10033AF04() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10033BED4()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10033AF38();
  sub_10033AF14();
  return [sub_10033AF04() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10033BF34()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10033AF38();
  sub_10033AF14();
  return [sub_10033AF04() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10033BF94()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10033AF38();
  sub_10033AF14();
  return [sub_10033AF04() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10033BFF4()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10033AF38();
  sub_10033AF14();
  return [sub_10033AF04() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10033C054()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10033AF38();
  sub_10033AF14();
  return [sub_10033AF04() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10033C0B4()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10033AF38();
  sub_10033AF14();
  return [sub_10033AF04() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10033C114()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10033AF38();
  sub_10033AF14();
  return [sub_10033AF04() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10033C174()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10033AF38();
  sub_10033AF14();
  return [sub_10033AF04() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10033C1D4()
{
  +[NSAssertionHandler currentHandler];
  [NSString stringWithUTF8String:"size_t ComputeDictStringFieldSize(NSString *, uint32_t, GPBDataType)"];
  sub_10033AF2C();
  return [sub_10033AF20() handleFailureInFunction:? file:? lineNumber:? description:?];
}

id sub_10033C240()
{
  +[NSAssertionHandler currentHandler];
  [NSString stringWithUTF8String:"void WriteDictStringField(GPBCodedOutputStream *, NSString *, uint32_t, GPBDataType)"];
  sub_10033AF2C();
  return [sub_10033AF20() handleFailureInFunction:? file:? lineNumber:? description:?];
}

id sub_10033C2AC()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10033AF38();
  sub_10033AF14();
  return [sub_10033AF04() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10033C30C()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10033AF38();
  sub_10033AF14();
  return [sub_10033AF04() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10033C36C()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10033AF38();
  sub_10033AF14();
  return [sub_10033AF04() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10033C3CC()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10033AF38();
  sub_10033AF14();
  return [sub_10033AF04() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10033C42C()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10033AF38();
  sub_10033AF14();
  return [sub_10033AF04() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10033C48C()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10033AF38();
  sub_10033AF14();
  return [sub_10033AF04() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10033C4EC()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10033AF38();
  sub_10033AF14();
  return [sub_10033AF04() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10033C54C()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10033AF38();
  sub_10033AF14();
  return [sub_10033AF04() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10033C5AC()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10033AF38();
  sub_10033AF14();
  return [sub_10033AF04() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10033C60C()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10033AF38();
  sub_10033AF14();
  return [sub_10033AF04() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10033C66C()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10033AF38();
  sub_10033AF14();
  return [sub_10033AF04() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10033C6CC()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10033AF38();
  sub_10033AF14();
  return [sub_10033AF04() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10033C72C()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10033AF38();
  sub_10033AF14();
  return [sub_10033AF04() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10033C78C()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10033AF38();
  sub_10033AF14();
  return [sub_10033AF04() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10033C7EC()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10033AF38();
  sub_10033AF14();
  return [sub_10033AF04() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10033C84C()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10033AF38();
  sub_10033AF14();
  return [sub_10033AF04() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10033C8AC()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10033AF38();
  sub_10033AF14();
  return [sub_10033AF04() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

uint64_t sub_10033CA10(_BYTE *a1)
{
  LOBYTE(v1) = *a1;
  if (*a1)
  {
    v2 = 0;
    v3 = 1;
    do
    {
      v2 = (1025 * (v2 + v1)) ^ ((1025 * (v2 + v1)) >> 6);
      v1 = a1[v3++];
    }

    while (v1);
    v4 = 9 * v2;
  }

  else
  {
    v4 = 0;
  }

  return 32769 * (v4 ^ (v4 >> 11));
}

uint64_t GPBResolveExtensionClassMethod(objc_class *a1, const char *a2)
{
  result = sub_10033CBA8(a1, a2);
  if (result)
  {
    v5 = result;
    v6 = GPBMessageEncodingForSelector("getClassValue", 0);
    Name = class_getName(a1);
    MetaClass = objc_getMetaClass(Name);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10033CD14;
    block[3] = &unk_100435D08;
    block[4] = v5;
    v9 = imp_implementationWithBlock(block);
    return class_addMethod(MetaClass, a2, v9, v6) || GPBClassHasSel(MetaClass, a2);
  }

  return result;
}

const void *sub_10033CBA8(objc_class *a1, SEL sel)
{
  Name = sel_getName(sel);
  v5 = *Name;
  if (v5 == 95)
  {
    return 0;
  }

  v7 = Name;
  v8 = 1;
  if (*Name)
  {
    while (v5 != 58)
    {
      v5 = Name[v8++];
      if (!v5)
      {
        goto LABEL_6;
      }
    }

    return 0;
  }

LABEL_6:
  v9 = class_getName(a1);
  v10 = strlen(v9);
  __chkstk_darwin(v10);
  v12 = &v14 - v11;
  memcpy(&v14 - v11, v9, v10);
  v12[v10] = 95;
  memcpy(&v12[v10 + 1], v7, v8 - 1);
  v12[v10 + v8] = 0;
  if (!qword_1004588F8)
  {
    sub_10033CD7C(sel, a1);
  }

  dispatch_semaphore_wait(qword_100458900, 0xFFFFFFFFFFFFFFFFLL);
  Value = CFDictionaryGetValue(qword_1004588F8, v12);
  dispatch_semaphore_signal(qword_100458900);
  return Value;
}

id sub_10033CD7C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];

  return [(NSAssertionHandler *)v4 handleFailureInMethod:a1 object:a2 file:@"GPBRootObject.m" lineNumber:190 description:@"Startup order broken!"];
}

uint64_t *sub_10033CFD8(uint64_t *result, uint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[1])
  {
    result = sub_1003400C8(result);
    v4 = v3[2];
  }

  v5 = *v3;
  v3[2] = v4 + 1;
  *(v5 + v4) = a2;
  v6 = v3[2];
  if (v6 == v3[1])
  {
    result = sub_1003400C8(v3);
    v6 = v3[2];
  }

  v7 = *v3;
  v3[2] = v6 + 1;
  *(v7 + v6) = BYTE1(a2);
  v8 = v3[2];
  if (v8 == v3[1])
  {
    result = sub_1003400C8(v3);
    v8 = v3[2];
  }

  v9 = *v3;
  v3[2] = v8 + 1;
  *(v9 + v8) = BYTE2(a2);
  v10 = v3[2];
  if (v10 == v3[1])
  {
    result = sub_1003400C8(v3);
    v10 = v3[2];
  }

  v11 = *v3;
  v3[2] = v10 + 1;
  *(v11 + v10) = BYTE3(a2);
  v12 = v3[2];
  if (v12 == v3[1])
  {
    result = sub_1003400C8(v3);
    v12 = v3[2];
  }

  v13 = *v3;
  v3[2] = v12 + 1;
  *(v13 + v12) = BYTE4(a2);
  v14 = v3[2];
  if (v14 == v3[1])
  {
    result = sub_1003400C8(v3);
    v14 = v3[2];
  }

  v15 = *v3;
  v3[2] = v14 + 1;
  *(v15 + v14) = BYTE5(a2);
  v16 = v3[2];
  if (v16 == v3[1])
  {
    result = sub_1003400C8(v3);
    v16 = v3[2];
  }

  v17 = *v3;
  v3[2] = v16 + 1;
  *(v17 + v16) = BYTE6(a2);
  v18 = v3[2];
  if (v18 == v3[1])
  {
    result = sub_1003400C8(v3);
    v18 = v3[2];
  }

  v19 = *v3;
  v3[2] = v18 + 1;
  *(v19 + v18) = HIBYTE(a2);
  return result;
}

uint64_t *sub_10033D1C0(uint64_t *result, int a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[1])
  {
    result = sub_1003400C8(result);
    v4 = v3[2];
  }

  v5 = *v3;
  v3[2] = v4 + 1;
  *(v5 + v4) = a2;
  v6 = v3[2];
  if (v6 == v3[1])
  {
    result = sub_1003400C8(v3);
    v6 = v3[2];
  }

  v7 = *v3;
  v3[2] = v6 + 1;
  *(v7 + v6) = BYTE1(a2);
  v8 = v3[2];
  if (v8 == v3[1])
  {
    result = sub_1003400C8(v3);
    v8 = v3[2];
  }

  v9 = *v3;
  v3[2] = v8 + 1;
  *(v9 + v8) = BYTE2(a2);
  v10 = v3[2];
  if (v10 == v3[1])
  {
    result = sub_1003400C8(v3);
    v10 = v3[2];
  }

  v11 = *v3;
  v3[2] = v10 + 1;
  *(v11 + v10) = HIBYTE(a2);
  return result;
}

uint64_t *sub_10033D2F8(uint64_t *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  if (a2 >= 0x80)
  {
    do
    {
      v5 = v3[2];
      if (v5 == v3[1])
      {
        result = sub_1003400C8(v3);
        v5 = v3[2];
      }

      v6 = *v3;
      v3[2] = v5 + 1;
      *(v6 + v5) = v2 | 0x80;
      v4 = v2 >> 7;
      v7 = v2 >= 0x4000;
      v2 >>= 7;
    }

    while (v7);
  }

  else
  {
    LOBYTE(v4) = a2;
  }

  v8 = v3[2];
  if (v8 == v3[1])
  {
    result = sub_1003400C8(v3);
    v8 = v3[2];
  }

  v9 = *v3;
  v3[2] = v8 + 1;
  *(v9 + v8) = v4;
  return result;
}

uint64_t *sub_10033D458(uint64_t *result, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    return sub_10033D2F8(result, a2);
  }

  else
  {
    return sub_10033D800(result, a2);
  }
}

uint64_t *sub_10033D800(uint64_t *result, unsigned int a2)
{
  v2 = a2;
  v3 = result;
  if (a2 >= 0x80)
  {
    do
    {
      v5 = v3[2];
      if (v5 == v3[1])
      {
        result = sub_1003400C8(v3);
        v5 = v3[2];
      }

      v6 = *v3;
      v3[2] = v5 + 1;
      *(v6 + v5) = v2 | 0x80;
      v4 = v2 >> 7;
      v7 = v2 >= 0x4000;
      v2 >>= 7;
    }

    while (v7);
  }

  else
  {
    LOBYTE(v4) = a2;
  }

  v8 = v3[2];
  if (v8 == v3[1])
  {
    result = sub_1003400C8(v3);
    v8 = v3[2];
  }

  v9 = *v3;
  v3[2] = v8 + 1;
  *(v9 + v8) = v4;
  return result;
}

uint64_t *sub_10033DBC8(uint64_t *a1, int a2, unsigned int a3)
{
  Tag = GPBWireFormatMakeTag(a2, 0);
  sub_10033D800(a1, Tag);

  return sub_10033D800(a1, a3);
}

uint64_t sub_10033E368(uint64_t a1, unint64_t a2)
{
  result = GPBComputeRawVarint64Size(a2);
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_10033E56C(uint64_t a1, unint64_t a2)
{
  result = GPBComputeRawVarint64Size(a2);
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_10033E770(uint64_t result, unsigned int a2)
{
  v2 = 10;
  v3 = 1;
  v4 = 2;
  v5 = 3;
  v6 = 4;
  if (a2 >> 28)
  {
    v6 = 5;
  }

  if (a2 >= 0x200000)
  {
    v5 = v6;
  }

  if (a2 >= 0x4000)
  {
    v4 = v5;
  }

  if (a2 >= 0x80)
  {
    v3 = v4;
  }

  if ((a2 & 0x80000000) == 0)
  {
    v2 = v3;
  }

  *(*(*(result + 32) + 8) + 24) += v2;
  return result;
}

uint64_t GPBComputeInt32SizeNoTag(unsigned int a1)
{
  v1 = 1;
  v2 = 2;
  v3 = 3;
  v4 = 4;
  if (a1 >> 28)
  {
    v4 = 5;
  }

  if (a1 >= 0x200000)
  {
    v3 = v4;
  }

  if (a1 >= 0x4000)
  {
    v2 = v3;
  }

  if (a1 >= 0x80)
  {
    v1 = v2;
  }

  if ((a1 & 0x80000000) == 0)
  {
    return v1;
  }

  else
  {
    return 10;
  }
}

uint64_t sub_10033E9D0(uint64_t result, unsigned int a2)
{
  v2 = 1;
  v3 = 2;
  v4 = 3;
  v5 = 4;
  if (a2 >> 28)
  {
    v5 = 5;
  }

  if (a2 >= 0x200000)
  {
    v4 = v5;
  }

  if (a2 >= 0x4000)
  {
    v3 = v4;
  }

  if (a2 >= 0x80)
  {
    v2 = v3;
  }

  *(*(*(result + 32) + 8) + 24) += v2;
  return result;
}

uint64_t GPBComputeUInt32SizeNoTag(unsigned int a1)
{
  v1 = 2;
  v2 = 3;
  v3 = 4;
  if (a1 >> 28)
  {
    v3 = 5;
  }

  if (a1 >= 0x200000)
  {
    v2 = v3;
  }

  if (a1 >= 0x4000)
  {
    v1 = v2;
  }

  if (a1 >= 0x80)
  {
    return v1;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_10033EFE0(uint64_t result, int a2)
{
  v2 = (2 * a2) ^ (a2 >> 31);
  v3 = 2;
  v4 = 3;
  v5 = 4;
  if (v2 >> 28)
  {
    v5 = 5;
  }

  if (v2 >= 0x200000)
  {
    v4 = v5;
  }

  if (v2 >= 0x4000)
  {
    v3 = v4;
  }

  if (v2 >= 0x80)
  {
    v6 = v3;
  }

  else
  {
    v6 = 1;
  }

  *(*(*(result + 32) + 8) + 24) += v6;
  return result;
}

uint64_t GPBComputeSInt32SizeNoTag(int a1)
{
  v1 = (2 * a1) ^ (a1 >> 31);
  v2 = 2;
  v3 = 3;
  v4 = 4;
  if (v1 >> 28)
  {
    v4 = 5;
  }

  if (v1 >= 0x200000)
  {
    v3 = v4;
  }

  if (v1 >= 0x4000)
  {
    v2 = v3;
  }

  if (v1 >= 0x80)
  {
    return v2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_10033F238(uint64_t a1, uint64_t a2)
{
  result = GPBComputeRawVarint64Size((2 * a2) ^ (a2 >> 63));
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_10033F9F4(uint64_t result, unsigned int a2)
{
  v2 = 10;
  v3 = 1;
  v4 = 2;
  v5 = 3;
  v6 = 4;
  if (a2 >> 28)
  {
    v6 = 5;
  }

  if (a2 >= 0x200000)
  {
    v5 = v6;
  }

  if (a2 >= 0x4000)
  {
    v4 = v5;
  }

  if (a2 >= 0x80)
  {
    v3 = v4;
  }

  if ((a2 & 0x80000000) == 0)
  {
    v2 = v3;
  }

  *(*(*(result + 32) + 8) + 24) += v2;
  return result;
}

uint64_t GPBComputeEnumSizeNoTag(unsigned int a1)
{
  v1 = 1;
  v2 = 2;
  v3 = 3;
  v4 = 4;
  if (a1 >> 28)
  {
    v4 = 5;
  }

  if (a1 >= 0x200000)
  {
    v3 = v4;
  }

  if (a1 >= 0x4000)
  {
    v2 = v3;
  }

  if (a1 >= 0x80)
  {
    v1 = v2;
  }

  if ((a1 & 0x80000000) == 0)
  {
    return v1;
  }

  else
  {
    return 10;
  }
}

void *sub_1003400C8(void *result)
{
  v1 = result;
  if (!result[3])
  {
    result = [NSException raise:@"OutOfSpace" format:&stru_100436548];
  }

  if (v1[2])
  {
    result = [v1[3] write:*v1 maxLength:?];
    if (result != v1[2])
    {
      result = [NSException raise:@"WriteFailed" format:&stru_100436548];
    }

    v1[2] = 0;
  }

  return result;
}

uint64_t GPBComputeRawVarint64Size(unint64_t a1)
{
  if (a1 < 0x80)
  {
    return 1;
  }

  if (a1 < 0x4000)
  {
    return 2;
  }

  if (a1 < 0x200000)
  {
    return 3;
  }

  if (!(a1 >> 28))
  {
    return 4;
  }

  if (!(a1 >> 35))
  {
    return 5;
  }

  if (!(a1 >> 42))
  {
    return 6;
  }

  if (!(a1 >> 49))
  {
    return 7;
  }

  v2 = 9;
  if ((a1 & 0x8000000000000000) != 0)
  {
    v2 = 10;
  }

  if (HIBYTE(a1))
  {
    return v2;
  }

  else
  {
    return 8;
  }
}

uint64_t GPBComputeRawVarint32Size(unsigned int a1)
{
  v1 = 2;
  v2 = 3;
  v3 = 4;
  if (a1 >> 28)
  {
    v3 = 5;
  }

  if (a1 >= 0x200000)
  {
    v2 = v3;
  }

  if (a1 >= 0x4000)
  {
    v1 = v2;
  }

  if (a1 >= 0x80)
  {
    return v1;
  }

  else
  {
    return 1;
  }
}

uint64_t GPBComputeSizeTSizeAsInt32NoTag(unsigned int a1)
{
  v1 = 1;
  v2 = 2;
  v3 = 3;
  v4 = 4;
  if (a1 >> 28)
  {
    v4 = 5;
  }

  if (a1 >= 0x200000)
  {
    v3 = v4;
  }

  if (a1 >= 0x4000)
  {
    v2 = v3;
  }

  if (a1 >= 0x80)
  {
    v1 = v2;
  }

  if ((a1 & 0x80000000) == 0)
  {
    return v1;
  }

  else
  {
    return 10;
  }
}

char *GPBComputeStringSizeNoTag(void *a1)
{
  v1 = [a1 lengthOfBytesUsingEncoding:4];
  v2 = 1;
  v3 = 2;
  v4 = 3;
  v5 = 4;
  if (v1 >> 28)
  {
    v5 = 5;
  }

  if (v1 >= 0x200000)
  {
    v4 = v5;
  }

  if (v1 >= 0x4000)
  {
    v3 = v4;
  }

  if (v1 >= 0x80)
  {
    v2 = v3;
  }

  return &v1[v2];
}

uint64_t GPBComputeRawVarint32SizeForInteger(unsigned int a1)
{
  v1 = 2;
  v2 = 3;
  v3 = 4;
  if (a1 >> 28)
  {
    v3 = 5;
  }

  if (a1 >= 0x200000)
  {
    v2 = v3;
  }

  if (a1 >= 0x4000)
  {
    v1 = v2;
  }

  if (a1 >= 0x80)
  {
    return v1;
  }

  else
  {
    return 1;
  }
}

char *GPBComputeMessageSizeNoTag(void *a1)
{
  v1 = [a1 serializedSize];
  v2 = 1;
  v3 = 2;
  v4 = 3;
  v5 = 4;
  if (v1 >> 28)
  {
    v5 = 5;
  }

  if (v1 >= 0x200000)
  {
    v4 = v5;
  }

  if (v1 >= 0x4000)
  {
    v3 = v4;
  }

  if (v1 >= 0x80)
  {
    v2 = v3;
  }

  return &v1[v2];
}

char *GPBComputeBytesSizeNoTag(void *a1)
{
  v1 = [a1 length];
  v2 = 1;
  v3 = 2;
  v4 = 3;
  v5 = 4;
  if (v1 >> 28)
  {
    v5 = 5;
  }

  if (v1 >= 0x200000)
  {
    v4 = v5;
  }

  if (v1 >= 0x4000)
  {
    v3 = v4;
  }

  if (v1 >= 0x80)
  {
    v2 = v3;
  }

  return &v1[v2];
}

uint64_t GPBComputeDoubleSize(int a1)
{
  Tag = GPBWireFormatMakeTag(a1, 0);
  v2 = 10;
  v3 = 11;
  v4 = 12;
  if (Tag >> 28)
  {
    v4 = 13;
  }

  if (Tag >= 0x200000)
  {
    v3 = v4;
  }

  if (Tag >= 0x4000)
  {
    v2 = v3;
  }

  if (Tag >= 0x80)
  {
    return v2;
  }

  else
  {
    return 9;
  }
}

uint64_t GPBComputeTagSize(int a1)
{
  Tag = GPBWireFormatMakeTag(a1, 0);
  v2 = 2;
  v3 = 3;
  v4 = 4;
  if (Tag >> 28)
  {
    v4 = 5;
  }

  if (Tag >= 0x200000)
  {
    v3 = v4;
  }

  if (Tag >= 0x4000)
  {
    v2 = v3;
  }

  if (Tag >= 0x80)
  {
    return v2;
  }

  else
  {
    return 1;
  }
}

uint64_t GPBComputeFloatSize(int a1)
{
  Tag = GPBWireFormatMakeTag(a1, 0);
  v2 = 6;
  v3 = 7;
  v4 = 8;
  if (Tag >> 28)
  {
    v4 = 9;
  }

  if (Tag >= 0x200000)
  {
    v3 = v4;
  }

  if (Tag >= 0x4000)
  {
    v2 = v3;
  }

  if (Tag >= 0x80)
  {
    return v2;
  }

  else
  {
    return 5;
  }
}

uint64_t GPBComputeUInt64Size(int a1, unint64_t a2)
{
  Tag = GPBWireFormatMakeTag(a1, 0);
  v4 = 2;
  v5 = 3;
  v6 = 4;
  if (Tag >> 28)
  {
    v6 = 5;
  }

  if (Tag >= 0x200000)
  {
    v5 = v6;
  }

  if (Tag >= 0x4000)
  {
    v4 = v5;
  }

  if (Tag >= 0x80)
  {
    v7 = v4;
  }

  else
  {
    v7 = 1;
  }

  return GPBComputeRawVarint64Size(a2) + v7;
}

uint64_t GPBComputeInt64Size(int a1, unint64_t a2)
{
  Tag = GPBWireFormatMakeTag(a1, 0);
  v4 = 2;
  v5 = 3;
  v6 = 4;
  if (Tag >> 28)
  {
    v6 = 5;
  }

  if (Tag >= 0x200000)
  {
    v5 = v6;
  }

  if (Tag >= 0x4000)
  {
    v4 = v5;
  }

  if (Tag >= 0x80)
  {
    v7 = v4;
  }

  else
  {
    v7 = 1;
  }

  return GPBComputeRawVarint64Size(a2) + v7;
}

uint64_t GPBComputeInt32Size(int a1, unsigned int a2)
{
  Tag = GPBWireFormatMakeTag(a1, 0);
  v4 = 1;
  v5 = 2;
  v6 = 3;
  v7 = 4;
  if (Tag >> 28)
  {
    v7 = 5;
  }

  if (Tag >= 0x200000)
  {
    v6 = v7;
  }

  if (Tag >= 0x4000)
  {
    v5 = v6;
  }

  if (Tag >= 0x80)
  {
    v4 = v5;
  }

  v8 = 10;
  v9 = 1;
  v10 = 2;
  v11 = 3;
  v12 = 4;
  if (a2 >> 28)
  {
    v12 = 5;
  }

  if (a2 >= 0x200000)
  {
    v11 = v12;
  }

  if (a2 >= 0x4000)
  {
    v10 = v11;
  }

  if (a2 >= 0x80)
  {
    v9 = v10;
  }

  if ((a2 & 0x80000000) == 0)
  {
    v8 = v9;
  }

  return v8 + v4;
}

uint64_t GPBComputeFixed64Size(int a1)
{
  Tag = GPBWireFormatMakeTag(a1, 0);
  v2 = 10;
  v3 = 11;
  v4 = 12;
  if (Tag >> 28)
  {
    v4 = 13;
  }

  if (Tag >= 0x200000)
  {
    v3 = v4;
  }

  if (Tag >= 0x4000)
  {
    v2 = v3;
  }

  if (Tag >= 0x80)
  {
    return v2;
  }

  else
  {
    return 9;
  }
}

uint64_t GPBComputeFixed32Size(int a1)
{
  Tag = GPBWireFormatMakeTag(a1, 0);
  v2 = 6;
  v3 = 7;
  v4 = 8;
  if (Tag >> 28)
  {
    v4 = 9;
  }

  if (Tag >= 0x200000)
  {
    v3 = v4;
  }

  if (Tag >= 0x4000)
  {
    v2 = v3;
  }

  if (Tag >= 0x80)
  {
    return v2;
  }

  else
  {
    return 5;
  }
}

uint64_t GPBComputeBoolSize(int a1)
{
  Tag = GPBWireFormatMakeTag(a1, 0);
  v2 = 3;
  v3 = 4;
  v4 = 5;
  if (Tag >> 28)
  {
    v4 = 6;
  }

  if (Tag >= 0x200000)
  {
    v3 = v4;
  }

  if (Tag >= 0x4000)
  {
    v2 = v3;
  }

  if (Tag >= 0x80)
  {
    return v2;
  }

  else
  {
    return 2;
  }
}

char *GPBComputeStringSize(int a1, void *a2)
{
  Tag = GPBWireFormatMakeTag(a1, 0);
  v4 = 2;
  v5 = 3;
  v6 = 4;
  if (Tag >> 28)
  {
    v6 = 5;
  }

  if (Tag >= 0x200000)
  {
    v5 = v6;
  }

  if (Tag >= 0x4000)
  {
    v4 = v5;
  }

  if (Tag >= 0x80)
  {
    v7 = v4;
  }

  else
  {
    v7 = 1;
  }

  v8 = [a2 lengthOfBytesUsingEncoding:4];
  v9 = 1;
  v10 = 2;
  v11 = 3;
  v12 = 4;
  if (v8 >> 28)
  {
    v12 = 5;
  }

  if (v8 >= 0x200000)
  {
    v11 = v12;
  }

  if (v8 >= 0x4000)
  {
    v10 = v11;
  }

  if (v8 >= 0x80)
  {
    v9 = v10;
  }

  return &v8[v7 + v9];
}

char *GPBComputeGroupSize(int a1, void *a2)
{
  Tag = GPBWireFormatMakeTag(a1, 0);
  v4 = 4;
  v5 = 6;
  v6 = 10;
  if (!(Tag >> 28))
  {
    v6 = 8;
  }

  if (Tag >= 0x200000)
  {
    v5 = v6;
  }

  if (Tag >= 0x4000)
  {
    v4 = v5;
  }

  if (Tag >= 0x80)
  {
    v7 = v4;
  }

  else
  {
    v7 = 2;
  }

  return [a2 serializedSize] + v7;
}

char *GPBComputeUnknownGroupSize(int a1, void *a2)
{
  Tag = GPBWireFormatMakeTag(a1, 0);
  v4 = 4;
  v5 = 6;
  v6 = 10;
  if (!(Tag >> 28))
  {
    v6 = 8;
  }

  if (Tag >= 0x200000)
  {
    v5 = v6;
  }

  if (Tag >= 0x4000)
  {
    v4 = v5;
  }

  if (Tag >= 0x80)
  {
    v7 = v4;
  }

  else
  {
    v7 = 2;
  }

  return [a2 serializedSize] + v7;
}

char *GPBComputeMessageSize(int a1, void *a2)
{
  Tag = GPBWireFormatMakeTag(a1, 0);
  v4 = 2;
  v5 = 3;
  v6 = 4;
  if (Tag >> 28)
  {
    v6 = 5;
  }

  if (Tag >= 0x200000)
  {
    v5 = v6;
  }

  if (Tag >= 0x4000)
  {
    v4 = v5;
  }

  if (Tag >= 0x80)
  {
    v7 = v4;
  }

  else
  {
    v7 = 1;
  }

  v8 = [a2 serializedSize];
  v9 = 1;
  v10 = 2;
  v11 = 3;
  v12 = 4;
  if (v8 >> 28)
  {
    v12 = 5;
  }

  if (v8 >= 0x200000)
  {
    v11 = v12;
  }

  if (v8 >= 0x4000)
  {
    v10 = v11;
  }

  if (v8 >= 0x80)
  {
    v9 = v10;
  }

  return &v8[v7 + v9];
}

char *GPBComputeBytesSize(int a1, void *a2)
{
  Tag = GPBWireFormatMakeTag(a1, 0);
  v4 = 2;
  v5 = 3;
  v6 = 4;
  if (Tag >> 28)
  {
    v6 = 5;
  }

  if (Tag >= 0x200000)
  {
    v5 = v6;
  }

  if (Tag >= 0x4000)
  {
    v4 = v5;
  }

  if (Tag >= 0x80)
  {
    v7 = v4;
  }

  else
  {
    v7 = 1;
  }

  v8 = [a2 length];
  v9 = 1;
  v10 = 2;
  v11 = 3;
  v12 = 4;
  if (v8 >> 28)
  {
    v12 = 5;
  }

  if (v8 >= 0x200000)
  {
    v11 = v12;
  }

  if (v8 >= 0x4000)
  {
    v10 = v11;
  }

  if (v8 >= 0x80)
  {
    v9 = v10;
  }

  return &v8[v7 + v9];
}

uint64_t GPBComputeUInt32Size(int a1, unsigned int a2)
{
  Tag = GPBWireFormatMakeTag(a1, 0);
  v4 = 1;
  v5 = 2;
  v6 = 3;
  v7 = 4;
  if (Tag >> 28)
  {
    v7 = 5;
  }

  if (Tag >= 0x200000)
  {
    v6 = v7;
  }

  if (Tag >= 0x4000)
  {
    v5 = v6;
  }

  if (Tag >= 0x80)
  {
    v4 = v5;
  }

  v8 = 1;
  v9 = 2;
  v10 = 3;
  v11 = 4;
  if (a2 >> 28)
  {
    v11 = 5;
  }

  if (a2 >= 0x200000)
  {
    v10 = v11;
  }

  if (a2 >= 0x4000)
  {
    v9 = v10;
  }

  if (a2 >= 0x80)
  {
    v8 = v9;
  }

  return v8 + v4;
}

uint64_t GPBComputeEnumSize(int a1, unsigned int a2)
{
  Tag = GPBWireFormatMakeTag(a1, 0);
  v4 = 1;
  v5 = 2;
  v6 = 3;
  v7 = 4;
  if (Tag >> 28)
  {
    v7 = 5;
  }

  if (Tag >= 0x200000)
  {
    v6 = v7;
  }

  if (Tag >= 0x4000)
  {
    v5 = v6;
  }

  if (Tag >= 0x80)
  {
    v4 = v5;
  }

  v8 = 10;
  v9 = 1;
  v10 = 2;
  v11 = 3;
  v12 = 4;
  if (a2 >> 28)
  {
    v12 = 5;
  }

  if (a2 >= 0x200000)
  {
    v11 = v12;
  }

  if (a2 >= 0x4000)
  {
    v10 = v11;
  }

  if (a2 >= 0x80)
  {
    v9 = v10;
  }

  if ((a2 & 0x80000000) == 0)
  {
    v8 = v9;
  }

  return v8 + v4;
}

uint64_t GPBComputeSFixed32Size(int a1)
{
  Tag = GPBWireFormatMakeTag(a1, 0);
  v2 = 6;
  v3 = 7;
  v4 = 8;
  if (Tag >> 28)
  {
    v4 = 9;
  }

  if (Tag >= 0x200000)
  {
    v3 = v4;
  }

  if (Tag >= 0x4000)
  {
    v2 = v3;
  }

  if (Tag >= 0x80)
  {
    return v2;
  }

  else
  {
    return 5;
  }
}

uint64_t GPBComputeSFixed64Size(int a1)
{
  Tag = GPBWireFormatMakeTag(a1, 0);
  v2 = 10;
  v3 = 11;
  v4 = 12;
  if (Tag >> 28)
  {
    v4 = 13;
  }

  if (Tag >= 0x200000)
  {
    v3 = v4;
  }

  if (Tag >= 0x4000)
  {
    v2 = v3;
  }

  if (Tag >= 0x80)
  {
    return v2;
  }

  else
  {
    return 9;
  }
}

uint64_t GPBComputeSInt32Size(int a1, int a2)
{
  Tag = GPBWireFormatMakeTag(a1, 0);
  v4 = 1;
  v5 = 2;
  v6 = 3;
  v7 = 4;
  if (Tag >> 28)
  {
    v7 = 5;
  }

  if (Tag >= 0x200000)
  {
    v6 = v7;
  }

  if (Tag >= 0x4000)
  {
    v5 = v6;
  }

  if (Tag >= 0x80)
  {
    v4 = v5;
  }

  v8 = (2 * a2) ^ (a2 >> 31);
  v9 = 2;
  v10 = 3;
  v11 = 4;
  if (v8 >> 28)
  {
    v11 = 5;
  }

  if (v8 >= 0x200000)
  {
    v10 = v11;
  }

  if (v8 >= 0x4000)
  {
    v9 = v10;
  }

  if (v8 >= 0x80)
  {
    v12 = v9;
  }

  else
  {
    v12 = 1;
  }

  return v12 + v4;
}

uint64_t GPBComputeSInt64Size(int a1, uint64_t a2)
{
  Tag = GPBWireFormatMakeTag(a1, 0);
  v4 = 2;
  v5 = 3;
  v6 = 4;
  if (Tag >> 28)
  {
    v6 = 5;
  }

  if (Tag >= 0x200000)
  {
    v5 = v6;
  }

  if (Tag >= 0x4000)
  {
    v4 = v5;
  }

  if (Tag >= 0x80)
  {
    v7 = v4;
  }

  else
  {
    v7 = 1;
  }

  return GPBComputeRawVarint64Size((2 * a2) ^ (a2 >> 63)) + v7;
}

char *GPBComputeMessageSetExtensionSize(unsigned int a1, void *a2)
{
  Tag = GPBWireFormatMakeTag(1, 0);
  v5 = 4;
  v6 = 6;
  v7 = 10;
  if (!(Tag >> 28))
  {
    v7 = 8;
  }

  if (Tag >= 0x200000)
  {
    v6 = v7;
  }

  if (Tag >= 0x4000)
  {
    v5 = v6;
  }

  if (Tag >= 0x80)
  {
    v8 = v5;
  }

  else
  {
    v8 = 2;
  }

  v9 = GPBComputeUInt32Size(2, a1) + v8;
  return &GPBComputeMessageSize(3, a2)[v9];
}

char *GPBComputeRawMessageSetExtensionSize(unsigned int a1, void *a2)
{
  Tag = GPBWireFormatMakeTag(1, 0);
  v5 = 4;
  v6 = 6;
  v7 = 10;
  if (!(Tag >> 28))
  {
    v7 = 8;
  }

  if (Tag >= 0x200000)
  {
    v6 = v7;
  }

  if (Tag >= 0x4000)
  {
    v5 = v6;
  }

  if (Tag >= 0x80)
  {
    v8 = v5;
  }

  else
  {
    v8 = 2;
  }

  v9 = GPBComputeUInt32Size(2, a1) + v8;
  return &GPBComputeBytesSize(3, a2)[v9];
}

uint64_t GPBComputeWireFormatTagSize(int a1, int a2)
{
  Tag = GPBWireFormatMakeTag(a1, 0);
  v4 = 1;
  v5 = 2;
  v6 = 3;
  v7 = 4;
  if (Tag >> 28)
  {
    v7 = 5;
  }

  if (Tag >= 0x200000)
  {
    v6 = v7;
  }

  if (Tag >= 0x4000)
  {
    v5 = v6;
  }

  if (Tag >= 0x80)
  {
    v4 = v5;
  }

  return v4 << (a2 == 16);
}

void sub_1003412FC(void *key, const __CFDictionary *a2, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, key);
  if (Value)
  {

    CFDictionaryApplyFunction(a2, sub_1003413B4, Value);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, a2);
    CFDictionarySetValue(theDict, key, MutableCopy);

    CFRelease(MutableCopy);
  }
}

id sub_100346804()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10033AF38();
  sub_10033AF14();
  return [sub_10033AF04() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_100346864()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10033AF38();
  sub_10033AF14();
  return [sub_10033AF04() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_1003468C4()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10033AF38();
  sub_10033AF14();
  return [sub_10033AF04() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_100346924()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10033AF38();
  sub_10033AF14();
  return [sub_10033AF04() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_100346984()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10033AF38();
  sub_10033AF14();
  return [sub_10033AF04() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_1003469E4()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10033AF38();
  sub_10033AF14();
  return [sub_10033AF04() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_100346A44()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10033AF38();
  sub_10033AF14();
  return [sub_10033AF04() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_100346AA4()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10033AF38();
  sub_10033AF14();
  return [sub_10033AF04() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_100346B04()
{
  sub_10030DCB8();
  +[NSAssertionHandler currentHandler];
  sub_10033AF38();
  sub_10033AF14();
  return [sub_10033AF04() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void GPBExtensionMergeFromInputStream(void *a1, int a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v9 = a1[1];
  v10 = *(v9 + 45);
  if (a2)
  {
    if ((*(v9 + 45) & 1) == 0)
    {
      sub_100348290();
    }

    Int32 = GPBCodedInputStreamReadInt32(a3 + 1);
    v12 = GPBCodedInputStreamPushLimit((a3 + 1), Int32);
    while (GPBCodedInputStreamBytesUntilLimit((a3 + 1)))
    {
      v13 = sub_100346CF8(a1, a3, a4, 0);
      [a5 addExtension:a1 value:v13];
    }

    GPBCodedInputStreamPopLimit((a3 + 1), v12);
  }

  else
  {
    if (*(v9 + 45))
    {
      v15 = sub_100346CF8(a1, a3, a4, 0);
      [a5 addExtension:a1 value:?];
    }

    else
    {
      if (*(v9 + 44) - 15 > 1)
      {
        v14 = 0;
      }

      else
      {
        v14 = [a5 getExistingExtension:a1];
      }

      v15 = sub_100346CF8(a1, a3, a4, v14);
      [a5 setExtension:a1 value:?];
    }
  }
}

const __CFString *sub_100346CF8(void *a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v4 = a1[1];
  switch(*(v4 + 44))
  {
    case 0:
      v17 = [NSNumber alloc];
      Bool = GPBCodedInputStreamReadBool(a2 + 1);

      return [v17 initWithBool:Bool];
    case 1:
      v9 = [NSNumber alloc];
      Fixed32 = GPBCodedInputStreamReadFixed32(a2 + 1);
      goto LABEL_23;
    case 2:
      v13 = [NSNumber alloc];
      SFixed32 = GPBCodedInputStreamReadSFixed32(a2 + 1);
      goto LABEL_27;
    case 3:
      v15 = [NSNumber alloc];
      GPBCodedInputStreamReadFloat(a2 + 1);

      return [v15 initWithFloat:v16];
    case 4:
      v11 = [NSNumber alloc];
      Fixed64 = GPBCodedInputStreamReadFixed64(a2 + 1);
      goto LABEL_10;
    case 5:
      v19 = [NSNumber alloc];
      SFixed64 = GPBCodedInputStreamReadSFixed64(a2 + 1);
      goto LABEL_39;
    case 6:
      v21 = [NSNumber alloc];
      GPBCodedInputStreamReadDouble(a2 + 1);

      return [v21 initWithDouble:v22];
    case 7:
      v13 = [NSNumber alloc];
      SFixed32 = GPBCodedInputStreamReadInt32(a2 + 1);
      goto LABEL_27;
    case 8:
      v19 = [NSNumber alloc];
      SFixed64 = GPBCodedInputStreamReadInt64(a2 + 1);
      goto LABEL_39;
    case 9:
      v13 = [NSNumber alloc];
      SFixed32 = GPBCodedInputStreamReadSInt32(a2 + 1);
      goto LABEL_27;
    case 0xA:
      v19 = [NSNumber alloc];
      SFixed64 = GPBCodedInputStreamReadSInt64(a2 + 1);
LABEL_39:

      return [v19 initWithLongLong:SFixed64];
    case 0xB:
      v9 = [NSNumber alloc];
      Fixed32 = GPBCodedInputStreamReadUInt32(a2 + 1);
LABEL_23:

      return [v9 initWithUnsignedInt:Fixed32];
    case 0xC:
      v11 = [NSNumber alloc];
      Fixed64 = GPBCodedInputStreamReadUInt64(a2 + 1);
LABEL_10:

      return [v11 initWithUnsignedLongLong:Fixed64];
    case 0xD:

      return GPBCodedInputStreamReadRetainedBytes(a2 + 1);
    case 0xE:

      return GPBCodedInputStreamReadRetainedString(a2 + 1);
    case 0xF:
    case 0x10:
      if (a4)
      {
        v7 = a4;
      }

      else
      {
        v7 = objc_alloc_init([objc_msgSend(objc_msgSend(a1 "msgClass")]);
      }

      v23 = v7;
      if (*(v4 + 44) == 16)
      {
        [a2 readGroup:*(v4 + 40) message:v7 extensionRegistry:a3];
      }

      else if ((*(v4 + 45) & 4) != 0)
      {
        [v7 mergeFromCodedInputStream:a2 extensionRegistry:a3];
      }

      else
      {
        [a2 readMessage:v7 extensionRegistry:a3];
      }

      return v23;
    case 0x11:
      v13 = [NSNumber alloc];
      SFixed32 = GPBCodedInputStreamReadEnum(a2 + 1);
LABEL_27:

      return [v13 initWithInt:SFixed32];
    default:
      return 0;
  }
}

id GPBWriteExtensionValueToOutputStream(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 8);
  if (*(v5 + 45))
  {
    if ((*(v5 + 45) & 2) != 0)
    {
      [a3 writeTag:*(v5 + 40) format:2];
      v10 = *(v5 + 44);
      if (v10 > 6)
      {
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v13 = [a2 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v13)
        {
          v14 = v13;
          v12 = 0;
          v15 = *v25;
          do
          {
            for (i = 0; i != v14; i = i + 1)
            {
              if (*v25 != v15)
              {
                objc_enumerationMutation(a2);
              }

              v12 += sub_100347FD8(*(v5 + 44), *(*(&v24 + 1) + 8 * i));
            }

            v14 = [a2 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v14);
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v11 = qword_1003C00A8[v10];
        v12 = [a2 count] * v11;
      }

      [a3 writeRawVarintSizeTAs32:v12];
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      result = [a2 countByEnumeratingWithState:&v20 objects:&v28 count:16];
      if (result)
      {
        v17 = result;
        v18 = *v21;
        do
        {
          v19 = 0;
          do
          {
            if (*v21 != v18)
            {
              objc_enumerationMutation(a2);
            }

            switch(*(v5 + 44))
            {
              case 0:
                [a3 writeBoolNoTag:{objc_msgSend(*(*(&v20 + 1) + 8 * v19), "BOOLValue")}];
                break;
              case 1:
                [a3 writeFixed32NoTag:{objc_msgSend(*(*(&v20 + 1) + 8 * v19), "unsignedIntValue")}];
                break;
              case 2:
                [a3 writeSFixed32NoTag:{objc_msgSend(*(*(&v20 + 1) + 8 * v19), "intValue")}];
                break;
              case 3:
                [*(*(&v20 + 1) + 8 * v19) floatValue];
                [a3 writeFloatNoTag:?];
                break;
              case 4:
                [a3 writeFixed64NoTag:{objc_msgSend(*(*(&v20 + 1) + 8 * v19), "unsignedLongLongValue")}];
                break;
              case 5:
                [a3 writeSFixed64NoTag:{objc_msgSend(*(*(&v20 + 1) + 8 * v19), "longLongValue")}];
                break;
              case 6:
                [*(*(&v20 + 1) + 8 * v19) doubleValue];
                [a3 writeDoubleNoTag:?];
                break;
              case 7:
                [a3 writeInt32NoTag:{objc_msgSend(*(*(&v20 + 1) + 8 * v19), "intValue")}];
                break;
              case 8:
                [a3 writeInt64NoTag:{objc_msgSend(*(*(&v20 + 1) + 8 * v19), "longLongValue")}];
                break;
              case 9:
                [a3 writeSInt32NoTag:{objc_msgSend(*(*(&v20 + 1) + 8 * v19), "intValue")}];
                break;
              case 0xA:
                [a3 writeSInt64NoTag:{objc_msgSend(*(*(&v20 + 1) + 8 * v19), "longLongValue")}];
                break;
              case 0xB:
                [a3 writeUInt32NoTag:{objc_msgSend(*(*(&v20 + 1) + 8 * v19), "unsignedIntValue")}];
                break;
              case 0xC:
                [a3 writeUInt64NoTag:{objc_msgSend(*(*(&v20 + 1) + 8 * v19), "unsignedLongLongValue")}];
                break;
              case 0xD:
                [a3 writeBytesNoTag:*(*(&v20 + 1) + 8 * v19)];
                break;
              case 0xE:
                [a3 writeStringNoTag:*(*(&v20 + 1) + 8 * v19)];
                break;
              case 0xF:
                [a3 writeMessageNoTag:*(*(&v20 + 1) + 8 * v19)];
                break;
              case 0x10:
                [a3 writeGroupNoTag:*(v5 + 40) value:*(*(&v20 + 1) + 8 * v19)];
                break;
              case 0x11:
                [a3 writeEnumNoTag:{objc_msgSend(*(*(&v20 + 1) + 8 * v19), "intValue")}];
                break;
              default:
                break;
            }

            v19 = v19 + 1;
          }

          while (v17 != v19);
          result = [a2 countByEnumeratingWithState:&v20 objects:&v28 count:16];
          v17 = result;
        }

        while (result);
      }
    }

    else
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      result = [a2 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (result)
      {
        v7 = result;
        v8 = *v29;
        do
        {
          v9 = 0;
          do
          {
            if (*v29 != v8)
            {
              objc_enumerationMutation(a2);
            }

            sub_1003475A8(*(*(&v28 + 1) + 8 * v9), v5, a3);
            v9 = v9 + 1;
          }

          while (v7 != v9);
          result = [a2 countByEnumeratingWithState:&v28 objects:v32 count:16];
          v7 = result;
        }

        while (result);
      }
    }
  }

  else
  {

    return sub_1003475A8(a2, v5, a3);
  }

  return result;
}

id sub_1003475A8(id result, uint64_t a2, void *a3)
{
  switch(*(a2 + 44))
  {
    case 0:
      v4 = *(a2 + 40);
      v5 = [result BOOLValue];

      result = [a3 writeBool:v4 value:v5];
      break;
    case 1:
      v16 = *(a2 + 40);
      [result unsignedIntValue];

      result = [a3 writeFixed32:v16 value:?];
      break;
    case 2:
      v12 = *(a2 + 40);
      [result intValue];

      result = [a3 writeSFixed32:v12 value:?];
      break;
    case 3:
      v14 = *(a2 + 40);
      [result floatValue];

      result = [a3 writeFloat:v14 value:?];
      break;
    case 4:
      v9 = *(a2 + 40);
      [result unsignedLongLongValue];

      result = [a3 writeFixed64:v9 value:?];
      break;
    case 5:
      v19 = *(a2 + 40);
      [result longLongValue];

      result = [a3 writeSFixed64:v19 value:?];
      break;
    case 6:
      v21 = *(a2 + 40);
      [result doubleValue];

      result = [a3 writeDouble:v21 value:?];
      break;
    case 7:
      v15 = *(a2 + 40);
      [result intValue];

      result = [a3 writeInt32:v15 value:?];
      break;
    case 8:
      v23 = *(a2 + 40);
      [result longLongValue];

      result = [a3 writeInt64:v23 value:?];
      break;
    case 9:
      v11 = *(a2 + 40);
      [result intValue];

      result = [a3 writeSInt32:v11 value:?];
      break;
    case 0xA:
      v22 = *(a2 + 40);
      [result longLongValue];

      result = [a3 writeSInt64:v22 value:?];
      break;
    case 0xB:
      v8 = *(a2 + 40);
      [result unsignedIntValue];

      result = [a3 writeUInt32:v8 value:?];
      break;
    case 0xC:
      v10 = *(a2 + 40);
      [result unsignedLongLongValue];

      result = [a3 writeUInt64:v10 value:?];
      break;
    case 0xD:
      v20 = *(a2 + 40);

      result = [a3 writeBytes:v20 value:result];
      break;
    case 0xE:
      v7 = *(a2 + 40);

      result = [a3 writeString:v7 value:result];
      break;
    case 0xF:
      v13 = *(a2 + 40);
      if ((*(a2 + 45) & 4) != 0)
      {

        result = [a3 writeMessageSetExtension:v13 value:?];
      }

      else
      {

        result = [a3 writeMessage:v13 value:result];
      }

      break;
    case 0x10:
      v6 = *(a2 + 40);

      result = [a3 writeGroup:v6 value:result];
      break;
    case 0x11:
      v17 = *(a2 + 40);
      v18 = [result intValue];

      result = [a3 writeEnum:v17 value:v18];
      break;
    default:
      return result;
  }

  return result;
}

uint64_t GPBComputeExtensionSerializedSizeIncludingTag(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if (*(v3 + 45))
  {
    if ((*(v3 + 45) & 2) != 0)
    {
      v11 = *(v3 + 44);
      if (v11 > 6)
      {
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v14 = [a2 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v14)
        {
          v15 = v14;
          v13 = 0;
          v16 = *v20;
          do
          {
            for (i = 0; i != v15; i = i + 1)
            {
              if (*v20 != v16)
              {
                objc_enumerationMutation(a2);
              }

              v13 += sub_100347FD8(*(v3 + 44), *(*(&v19 + 1) + 8 * i));
            }

            v15 = [a2 countByEnumeratingWithState:&v19 objects:v23 count:16];
          }

          while (v15);
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v12 = qword_1003C00A8[v11];
        v13 = [a2 count] * v12;
      }

      v18 = GPBComputeTagSize(*(v3 + 40));
      return v18 + v13 + GPBComputeRawVarint32SizeForInteger(v13);
    }

    else
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v6 = [a2 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = 0;
        v9 = *v20;
        do
        {
          for (j = 0; j != v7; j = j + 1)
          {
            if (*v20 != v9)
            {
              objc_enumerationMutation(a2);
            }

            v8 += sub_100347C0C(v3, *(*(&v19 + 1) + 8 * j));
          }

          v7 = [a2 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v7);
      }

      else
      {
        return 0;
      }
    }

    return v8;
  }

  else
  {
    v4 = *(a1 + 8);

    return sub_100347C0C(v4, a2);
  }
}

uint64_t sub_100347C0C(uint64_t result, void *a2)
{
  switch(*(result + 44))
  {
    case 0:
      v2 = *(result + 40);
      [a2 BOOLValue];

      result = GPBComputeBoolSize(v2);
      break;
    case 1:
      v18 = *(result + 40);
      [a2 unsignedIntValue];

      result = GPBComputeFixed32Size(v18);
      break;
    case 2:
      v12 = *(result + 40);
      [a2 intValue];

      result = GPBComputeSFixed32Size(v12);
      break;
    case 3:
      v15 = *(result + 40);
      [a2 floatValue];

      result = GPBComputeFloatSize(v15);
      break;
    case 4:
      v7 = *(result + 40);
      [a2 unsignedLongLongValue];

      result = GPBComputeFixed64Size(v7);
      break;
    case 5:
      v21 = *(result + 40);
      [a2 longLongValue];

      result = GPBComputeSFixed64Size(v21);
      break;
    case 6:
      v23 = *(result + 40);
      [a2 doubleValue];

      result = GPBComputeDoubleSize(v23);
      break;
    case 7:
      v16 = *(result + 40);
      v17 = [a2 intValue];

      result = GPBComputeInt32Size(v16, v17);
      break;
    case 8:
      v26 = *(result + 40);
      v27 = [a2 longLongValue];

      result = GPBComputeInt64Size(v26, v27);
      break;
    case 9:
      v10 = *(result + 40);
      v11 = [a2 intValue];

      result = GPBComputeSInt32Size(v10, v11);
      break;
    case 0xA:
      v24 = *(result + 40);
      v25 = [a2 longLongValue];

      result = GPBComputeSInt64Size(v24, v25);
      break;
    case 0xB:
      v5 = *(result + 40);
      v6 = [a2 unsignedIntValue];

      result = GPBComputeUInt32Size(v5, v6);
      break;
    case 0xC:
      v8 = *(result + 40);
      v9 = [a2 unsignedLongLongValue];

      result = GPBComputeUInt64Size(v8, v9);
      break;
    case 0xD:
      v22 = *(result + 40);

      result = GPBComputeBytesSize(v22, a2);
      break;
    case 0xE:
      v4 = *(result + 40);

      result = GPBComputeStringSize(v4, a2);
      break;
    case 0xF:
      v13 = *(result + 45);
      v14 = *(result + 40);
      if ((v13 & 4) != 0)
      {

        result = GPBComputeMessageSetExtensionSize(v14, a2);
      }

      else
      {

        result = GPBComputeMessageSize(v14, a2);
      }

      break;
    case 0x10:
      v3 = *(result + 40);

      result = GPBComputeGroupSize(v3, a2);
      break;
    case 0x11:
      v19 = *(result + 40);
      v20 = [a2 intValue];

      result = GPBComputeEnumSize(v19, v20);
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100347FD8(uint64_t result, void *a2)
{
  switch(result)
  {
    case 0:
      [a2 BOOLValue];

      result = GPBComputeBoolSizeNoTag();
      break;
    case 1:
      [a2 unsignedIntValue];

      result = GPBComputeFixed32SizeNoTag();
      break;
    case 2:
      [a2 intValue];

      result = GPBComputeSFixed32SizeNoTag();
      break;
    case 3:
      [a2 floatValue];

      result = GPBComputeFloatSizeNoTag();
      break;
    case 4:
      [a2 unsignedLongLongValue];

      result = GPBComputeFixed64SizeNoTag();
      break;
    case 5:
      [a2 longLongValue];

      result = GPBComputeSFixed64SizeNoTag();
      break;
    case 6:
      [a2 doubleValue];

      result = GPBComputeDoubleSizeNoTag();
      break;
    case 7:
      v5 = [a2 intValue];

      result = GPBComputeInt32SizeNoTag(v5);
      break;
    case 8:
      v8 = [a2 longLongValue];

      result = GPBComputeInt64SizeNoTag(v8);
      break;
    case 9:
      v4 = [a2 intValue];

      result = GPBComputeSInt32SizeNoTag(v4);
      break;
    case 10:
      v7 = [a2 longLongValue];

      result = GPBComputeSInt64SizeNoTag(v7);
      break;
    case 11:
      v2 = [a2 unsignedIntValue];

      result = GPBComputeUInt32SizeNoTag(v2);
      break;
    case 12:
      v3 = [a2 unsignedLongLongValue];

      result = GPBComputeUInt64SizeNoTag(v3);
      break;
    case 13:

      result = GPBComputeBytesSizeNoTag(a2);
      break;
    case 14:

      result = GPBComputeStringSizeNoTag(a2);
      break;
    case 15:

      result = GPBComputeMessageSizeNoTag(a2);
      break;
    case 16:

      result = GPBComputeGroupSizeNoTag(a2);
      break;
    case 17:
      v6 = [a2 intValue];

      result = GPBComputeEnumSizeNoTag(v6);
      break;
    default:
      return result;
  }

  return result;
}

id sub_100348290()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"void GPBExtensionMergeFromInputStream(GPBExtensionDescriptor *, BOOL, GPBCodedInputStream *, GPBExtensionRegistry *, GPBMessage *)"];

  return [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"GPBExtensionInternals.m" lineNumber:282 description:@"How was it packed if it isn't repeated?"];
}

void sub_1003484A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

id sub_1003484F0()
{
  if (qword_100456868 != -1)
  {
    sub_10034BBDC();
  }

  v1 = qword_100456870;

  return v1;
}

void sub_100348534(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateIDSStatus];
}

void sub_100349DA8(id a1)
{
  qword_100458910 = [[CLDispatchSilo alloc] initWithIdentifier:@"CSCompanionServiceSilo"];

  _objc_release_x1();
}

void sub_100349F84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100349FA0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (v6)
  {
    if (qword_100456868 != -1)
    {
      sub_10034BBDC();
    }

    v9 = qword_100456870;
    if (os_log_type_enabled(qword_100456870, OS_LOG_TYPE_FAULT))
    {
      buf = 68289282;
      v31 = 2082;
      v32 = "";
      v33 = 2114;
      v34 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:IDS service failed to initialize, Error:%{public, location:escape_only}@}", &buf, 0x1Cu);
    }

    if (qword_100456868 != -1)
    {
      sub_10034BBF0();
    }

    v10 = qword_100456870;
    if (os_signpost_enabled(qword_100456870))
    {
      buf = 68289282;
      v31 = 2082;
      v32 = "";
      v33 = 2114;
      v34 = v6;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "IDS service failed to initialize", "{msg%{public}.0s:IDS service failed to initialize, Error:%{public, location:escape_only}@}", &buf, 0x1Cu);
    }
  }

  else
  {
    [WeakRetained setIdsService:v5];
    v11 = [CompanionDelegate alloc];
    v12 = [v8 silo];
    v13 = [v8 idsService];
    v14 = [(CompanionDelegate *)v11 initWithSilo:v12 idsService:v13];
    [v8 setDelegate:v14];

    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10034A4D8;
    v28[3] = &unk_100435F98;
    v28[4] = *(a1 + 32);
    objc_copyWeak(&v29, (a1 + 40));
    v15 = [v8 delegate];
    [v15 setTestTriggerHandler:v28];

    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10034A614;
    v26[3] = &unk_100435FE8;
    v26[4] = *(a1 + 32);
    objc_copyWeak(&v27, (a1 + 40));
    v16 = [v8 delegate];
    [v16 setMessageHandler:v26];

    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10034A794;
    v24[3] = &unk_100436038;
    v24[4] = *(a1 + 32);
    objc_copyWeak(&v25, (a1 + 40));
    v17 = [v8 delegate];
    [v17 setStatusHandler:v24];

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10034A914;
    v22[3] = &unk_100436088;
    v22[4] = *(a1 + 32);
    objc_copyWeak(&v23, (a1 + 40));
    v18 = [v8 delegate];
    [v18 setCompanionStatusHandler:v22];

    v19 = [*(a1 + 32) silo];
    v20 = [v19 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10034AA70;
    block[3] = &unk_100431708;
    block[4] = v8;
    dispatch_async(v20, block);

    objc_destroyWeak(&v23);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&v27);
    objc_destroyWeak(&v29);
  }
}

void sub_10034A410(_Unwind_Exception *a1)
{
  objc_destroyWeak((v7 + 40));
  objc_destroyWeak((v6 + 40));
  objc_destroyWeak((v5 + 40));
  objc_destroyWeak((v4 + 40));

  _Unwind_Resume(a1);
}

void sub_10034A4D8(uint64_t a1, double a2)
{
  v4 = [*(a1 + 32) silo];
  v5 = [v4 queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10034A5B0;
  v6[3] = &unk_100435F70;
  objc_copyWeak(v7, (a1 + 40));
  v7[1] = *&a2;
  dispatch_async(v5, v6);

  objc_destroyWeak(v7);
}

void sub_10034A5B0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained testTriggerHandler:*(a1 + 40)];
}

void sub_10034A614(uint64_t a1, int a2, void *a3, double a4)
{
  v7 = a3;
  v8 = [*(a1 + 32) silo];
  v9 = [v8 queue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10034A728;
  v11[3] = &unk_100435FC0;
  objc_copyWeak(v13, (a1 + 40));
  v14 = a2;
  v12 = v7;
  v13[1] = *&a4;
  v10 = v7;
  dispatch_async(v9, v11);

  objc_destroyWeak(v13);
}

void sub_10034A728(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained messageHandler:*(a1 + 56) data:*(a1 + 32) timestamp:*(a1 + 48)];
}

void sub_10034A794(uint64_t a1, char a2, void *a3, double a4)
{
  v7 = a3;
  v8 = [*(a1 + 32) silo];
  v9 = [v8 queue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10034A8A8;
  v11[3] = &unk_100436010;
  objc_copyWeak(v13, (a1 + 40));
  v14 = a2;
  v12 = v7;
  v13[1] = *&a4;
  v10 = v7;
  dispatch_async(v9, v11);

  objc_destroyWeak(v13);
}

void sub_10034A8A8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained statusHandler:*(a1 + 56) pairedDevice:*(a1 + 32) timestamp:*(a1 + 48)];
}

void sub_10034A914(uint64_t a1, void *a2, int a3, double a4)
{
  v8 = [*(a1 + 32) silo];
  v9 = [v8 queue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10034AA04;
  v10[3] = &unk_100436060;
  objc_copyWeak(v11, (a1 + 40));
  v12 = a3;
  v11[1] = *&a4;
  v11[2] = a2;
  dispatch_async(v9, v10);

  objc_destroyWeak(v11);
}

void sub_10034AA04(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained onCompanionConnectionStatusUpdate:*(a1 + 56) cftime:*(a1 + 48) sputime:*(a1 + 40)];
}

void sub_10034BB98(id a1)
{
  qword_100456870 = os_log_create("com.apple.anomalydetectiond", "Companion");

  _objc_release_x1();
}

void sub_10034BC2C(NSObject **a1)
{
  v2 = sub_1003484F0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_1000190D0();
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Invalid client mode, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v5, 0x26u);
  }

  v3 = sub_1003484F0();
  if (os_signpost_enabled(v3))
  {
    sub_1000190D0();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Invalid client mode", "{msg%{public}.0s:Invalid client mode, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v5, 0x26u);
  }

  v4 = sub_1003484F0();
  *a1 = v4;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    sub_1000190D0();
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Invalid client mode, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v5, 0x26u);
  }
}

void sub_10034BE38(uint64_t a1)
{
  if (qword_100456838 != -1)
  {
    sub_100350BF0();
  }

  v2 = qword_100456840;
  if (os_log_type_enabled(qword_100456840, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "creating CSPlatformInfo shared Instance with hardware %lu", &v6, 0xCu);
  }

  v4 = [[CSPlatformInfo alloc] initWithHardware:*(a1 + 32)];
  v5 = qword_100458920;
  qword_100458920 = v4;
}

id sub_10034BF18()
{
  if (qword_100456838 != -1)
  {
    sub_100350BF0();
  }

  v1 = qword_100456840;

  return v1;
}

void sub_10034BFA0(id a1)
{
  if (qword_100456838 != -1)
  {
    sub_100350BF0();
  }

  v1 = qword_100456840;
  if (os_log_type_enabled(qword_100456840, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "creating CSPlatformInfo shared instance", v4, 2u);
  }

  v2 = objc_alloc_init(CSPlatformInfo);
  v3 = qword_100458920;
  qword_100458920 = v2;
}

void sub_10034D664(id a1)
{
  v1 = MGCopyAnswer();
  if (!v1)
  {
    return;
  }

  v2 = v1;
  v3 = CFGetTypeID(v1);
  if (v3 == CFStringGetTypeID())
  {
    if (CFStringCompare(v2, @"Beta", 0) == kCFCompareEqualTo)
    {
      v4 = 0;
      goto LABEL_18;
    }

    if (CFStringCompare(v2, @"Carrier", 0) == kCFCompareEqualTo)
    {
      v4 = 1;
      goto LABEL_18;
    }

    if (CFStringCompare(v2, @"Internal", 0) == kCFCompareEqualTo)
    {
      v4 = 2;
      goto LABEL_18;
    }

    if (CFStringCompare(v2, @"Desense", 0) == kCFCompareEqualTo)
    {
      v4 = 3;
      goto LABEL_18;
    }

    if (CFStringCompare(v2, @"Lite Internal", 0) == kCFCompareEqualTo)
    {
      v4 = 4;
      goto LABEL_18;
    }

    if (CFStringCompare(v2, @"Vendor", 0) == kCFCompareEqualTo)
    {
      v4 = 5;
      goto LABEL_18;
    }

    if (CFStringCompare(v2, @"NonUI", 0) == kCFCompareEqualTo)
    {
      v4 = 6;
LABEL_18:
      dword_100458710 = v4;
    }
  }

  CFRelease(v2);
}

void sub_10034D9A8(id a1)
{
  v1 = MGCopyAnswer();
  if (v1)
  {
    v2 = v1;
    v3 = CFGetTypeID(v1);
    if (v3 == CFBooleanGetTypeID() && CFBooleanGetValue(v2) == 1)
    {
      byte_100458938 = 1;
    }

    CFRelease(v2);
  }
}

uint64_t sub_10034DB5C(uint64_t a1)
{
  qword_100458948 = [*(a1 + 32) getSystem:"hw.model"];

  return _objc_release_x1();
}

void sub_10034DCAC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_10034DE74(uint64_t a1)
{
  v2 = MGCopyAnswer();
  if (v2)
  {
    v3 = v2;
    v4 = CFGetTypeID(v2);
    if (v4 == CFBooleanGetTypeID() && CFBooleanGetValue(v3))
    {
      v5 = 24;
    }

    else
    {
      v5 = [*(a1 + 32) queryEmbeddedSystemHardware];
    }

    qword_100458958 = v5;

    CFRelease(v3);
  }

  else
  {
    qword_100458958 = [*(a1 + 32) queryEmbeddedSystemHardware];
  }
}

void sub_100350AF0(id a1)
{
  v1 = IOServiceMatching("IOPlatformExpertDevice");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v1);
  if (MatchingService)
  {
    v3 = MatchingService;
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"IOPlatformSerialNumber", kCFAllocatorDefault, 0);
    if (CFProperty)
    {
      objc_storeStrong(&qword_100458968, CFProperty);
    }

    IOObjectRelease(v3);
  }
}

void sub_100350BAC(id a1)
{
  qword_100456840 = os_log_create("com.apple.anomalydetectiond", "Platform");

  _objc_release_x1();
}

void sub_100351790(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, id location, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

void sub_100351834(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  sub_1003520EC(&v20, a2);
  v6 = [CSConnection alloc];
  v18 = v20;
  v19 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = a3[1];
  v16 = *a3;
  v17 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = [(CSConnection *)v6 initWithConnection:&v18 message:&v16 delegate:WeakRetained];
  if (v17)
  {
    sub_100009A48(v17);
  }

  if (v19)
  {
    sub_100009A48(v19);
  }

  v9 = [WeakRetained mutableConnections];
  [v9 addObject:v8];

  [(CSConnection *)v8 start];
  v10 = [CSConnectionMessage alloc];
  v11 = a3[1];
  v14 = *a3;
  v15 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = [(CSConnectionMessage *)v10 initWithConnectionMessage:&v14];
  if (v15)
  {
    sub_100009A48(v15);
  }

  v13 = [WeakRetained delegate];
  [v13 connectionCreated:v8 withMessage:v12];

  if (v21)
  {
    sub_100009A48(v21);
  }
}

void sub_100351980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  v20 = v18;

  if (a16)
  {
    sub_100009A48(a16);
  }

  _Unwind_Resume(a1);
}

void sub_100351A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = CSConnectionServer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

CLConnectionServer *sub_100351AB4(CLConnectionServer **a1, CLConnectionServer *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    CLConnectionServer::~CLConnectionServer(result);

    operator delete();
  }

  return result;
}

void sub_1003520A8(id a1)
{
  qword_100456880 = os_log_create("com.apple.anomalydetectiond", "CSConnection");

  _objc_release_x1();
}

uint64_t *sub_1003520EC(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2)
  {
    operator new();
  }

  result[1] = 0;
  *a2 = 0;
  return result;
}

void sub_100352170(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

CLConnection *sub_1003521A8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return CLConnection::deferredDelete(result);
  }

  return result;
}

uint64_t sub_1003521CC(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003522C0(uint64_t a1)
{
  qword_100458978 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_100352C20(id a1)
{
  qword_1004568C0 = os_log_create("com.apple.anomalydetectiond", "Power");

  _objc_release_x1();
}

CSHSM::State *CSHSM::State::State(CSHSM::State *this, const char *a2)
{
  *this = &off_100436270;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = a2;
  CSHSM::State::initializeChain(this);
  return this;
}

void sub_100352CF4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    *(v1 + 24) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void CSHSM::State::initializeChain(CSHSM::State *this)
{
  if (this)
  {
    v2 = *(this + 3);
    v3 = this;
    do
    {
      v4 = *(this + 4);
      if (v2 >= v4)
      {
        v5 = *(this + 2);
        v6 = (v2 - v5) >> 3;
        if ((v6 + 1) >> 61)
        {
          sub_10000CD24();
        }

        v7 = v4 - v5;
        v8 = v7 >> 2;
        if (v7 >> 2 <= (v6 + 1))
        {
          v8 = v6 + 1;
        }

        if (v7 >= 0x7FFFFFFFFFFFFFF8)
        {
          v9 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v9 = v8;
        }

        if (v9)
        {
          sub_10005CF54(this + 16, v9);
        }

        *(8 * v6) = v3;
        v2 = (8 * v6 + 8);
        v10 = *(this + 2);
        v11 = *(this + 3) - v10;
        v12 = (8 * v6 - v11);
        memcpy(v12, v10, v11);
        v13 = *(this + 2);
        *(this + 2) = v12;
        *(this + 3) = v2;
        *(this + 4) = 0;
        if (v13)
        {
          operator delete(v13);
        }
      }

      else
      {
        *v2++ = v3;
      }

      *(this + 3) = v2;
      v3 = *(v3 + 1);
    }

    while (v3);
  }
}

CSHSM::State *CSHSM::State::State(CSHSM::State *this, const char *a2, CSHSM::State *a3)
{
  *this = &off_100436270;
  *(this + 1) = a3;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = a2;
  CSHSM::State::initializeChain(this);
  return this;
}

void sub_100352E54(_Unwind_Exception *exception_object)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 24) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

BOOL CSHSM::isIn(CSHSM *this, CSHSM::State *a2)
{
  v3 = *(*this + 16);
  v2 = *(*this + 24);
  if (v3 == v2)
  {
    return 0;
  }

  v4 = v3 + 8;
  do
  {
    v5 = *(v4 - 8);
    result = v5 == a2;
    v7 = v5 == a2 || v4 == v2;
    v4 += 8;
  }

  while (!v7);
  return result;
}

CSHSM::State *CSHSM::initial(CSHSM *this, CSHSM::State *a2)
{
  v4 = a2;
  do
  {
    *this = v4;
    v5 = *(this + 1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(v4 + 5);
      *buf = 136315138;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "initial, enter(%s)", buf, 0xCu);
      v4 = *this;
    }

    (*(*v4 + 24))(v4, 0, 0);
    result = (*(*a2 + 8))(a2);
    v4 = result;
  }

  while (result);
  return result;
}

void CSHSM::signal(CSHSM *this, uint64_t a2, const void *a3)
{
  v3 = *this;
  if (*this)
  {
    while (1)
    {
      v7 = (**v3)(v3, a2, a3);
      if (v7)
      {
        break;
      }

      v3 = v3[1];
      if (!v3)
      {
        return;
      }
    }

    v8 = v7;
    if (v7 == v3)
    {
      v16 = *(*v3 + 16);

      v16(v3, a2, a3);
    }

    else
    {
      v9 = *this;
      v29 = 0;
      v30 = 0;
      v28 = 0;
      sub_10035348C(&v28, v9[2], v9[3], (v9[3] - v9[2]) >> 3);
      v26 = 0;
      v27 = 0;
      __p = 0;
      sub_10035348C(&__p, *(v8 + 16), *(v8 + 24), (*(v8 + 24) - *(v8 + 16)) >> 3);
      v11 = v28;
      v10 = v29;
      if (v28 != v29)
      {
        v12 = v26 - 8;
        v13 = v29 - 8;
        while (v12 + 8 != __p)
        {
          if (*v13 != *v12)
          {
            goto LABEL_17;
          }

          v10 -= 8;
          v29 = v13;
          v26 = v12;
          v12 -= 8;
          v14 = v13 - 8;
          v15 = v13 == v28;
          v13 -= 8;
          if (v15)
          {
            v10 = v14 + 8;
            goto LABEL_17;
          }
        }

        v10 = v13 + 8;
      }

LABEL_17:
      if (v28 != v10)
      {
        do
        {
          v17 = *v11;
          (*(**v11 + 32))(*v11, a2, a3);
          v18 = *(this + 1);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v19 = *(v17 + 40);
            *buf = 134218242;
            v32 = a2;
            v33 = 2080;
            v34 = v19;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "event %llu, exit(%s)", buf, 0x16u);
          }

          v11 += 8;
        }

        while (v11 != v10);
      }

      (*(*v3 + 16))(v3, a2, a3);
      for (i = v26; ; i -= 8)
      {
        v21 = __p;
        if (i == __p)
        {
          break;
        }

        v22 = *(this + 1);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = *(*(i - 1) + 40);
          *buf = 134218242;
          v32 = a2;
          v33 = 2080;
          v34 = v23;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "event %llu, enter(%s)", buf, 0x16u);
        }

        v24 = *(i - 1);
        (*(*v24 + 24))(v24, a2, a3);
      }

      *this = v8;
      if (i)
      {
        v26 = v21;
        operator delete(v21);
      }

      if (v28)
      {
        v29 = v28;
        operator delete(v28);
      }
    }
  }
}

void sub_100353388(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
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

void *sub_1003533CC(void *a1)
{
  *a1 = &off_100436270;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_10035341C(void *a1)
{
  *a1 = &off_100436270;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  operator delete();
}

uint64_t sub_10035348C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100353508(result, a4);
  }

  return result;
}

void sub_1003534EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100353508(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_10005CF54(a1, a2);
  }

  sub_10000CD24();
}

char *sub_1003535A4(int a1, void *a2, void *a3, void *a4, void *a5, unsigned int a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = +[CSPermissions sharedInstance];
  v16 = [v15 isAuthorizedToCollectData];

  if (v16)
  {
    v17 = +[CSPersistentConfiguration sharedConfiguration];
    [v17 doubleForKey:v11];
    v19 = v18;
    v20 = [v17 integerForKey:v12];
    v21 = [v17 integerForKey:v13 withFallback:86400];
    Current = CFAbsoluteTimeGetCurrent();
    v23 = [v17 integerForKey:v14 withFallback:a6];
    if (qword_1004567D8 != -1)
    {
      sub_1003539F0();
    }

    v24 = qword_1004567E0;
    if (os_log_type_enabled(qword_1004567E0, OS_LOG_TYPE_DEBUG))
    {
      if (v19 == 0.0)
      {
        v25 = v21;
      }

      else
      {
        v25 = Current - v19;
      }

      v28 = 134218240;
      v29 = v25;
      v30 = 1024;
      v31 = v21;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "tokenTS delta %f threshold %d", &v28, 0x12u);
    }

    if (v19 == 0.0 || Current - v19 >= v21)
    {
      if (!a1)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (v20 < 1 || v20 <= v23)
      {
        if (v20 < 1)
        {
          v23 = 0;
        }

        else
        {
          if (a1)
          {
            [v17 setInteger:v20 - 1 forKey:v12];
          }

          v23 = v20;
        }

        goto LABEL_27;
      }

      if (!a1)
      {
LABEL_27:

        goto LABEL_28;
      }
    }

    [v17 setDouble:v11 forKey:Current];
    [v17 setInteger:v23 - 1 forKey:v12];
    goto LABEL_27;
  }

  if (qword_1004567D8 != -1)
  {
    sub_1003539F0();
  }

  v26 = qword_1004567E0;
  if (os_log_type_enabled(qword_1004567E0, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v28) = 0;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "Not authorized to collect data, returning 0 tokens", &v28, 2u);
  }

  v23 = 0;
LABEL_28:

  return v23;
}

void sub_1003539AC(id a1)
{
  qword_1004567E0 = os_log_create("com.apple.anomalydetectiond", "AnomalyEvent");

  _objc_release_x1();
}

void sub_100353B14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100009A48(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100353B9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100009A48(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100353C38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100009A48(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100353CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100009A48(a10);
  }

  _Unwind_Resume(a1);
}

void sub_100353DFC(id a1)
{
  qword_100458990 = objc_alloc_init(CSPersistentConfiguration);

  _objc_release_x1();
}

void sub_100354BF8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100354CE4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100354FD8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
  }

  else
  {
    if (qword_100456928 != -1)
    {
      sub_100356120();
    }

    v7 = qword_100456930;
    if (os_log_type_enabled(qword_100456930, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412546;
      v9 = v5;
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "key '%@' has non-string value: %@", &v8, 0x16u);
    }
  }
}

id sub_10035510C()
{
  if (qword_100456928 != -1)
  {
    sub_100356120();
  }

  v1 = qword_100456930;

  return v1;
}

void sub_100355320(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 buf)
{
  if (a2 == 1)
  {
    v16 = objc_begin_catch(a1);
    v17 = [v16 name];
    v18 = [v17 isEqual:NSRangeException];

    if (v18)
    {
      v19 = sub_10035510C();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Index out of bounds for server configuration value", &buf, 2u);
      }

      objc_end_catch();
      JUMPOUT(0x1003552ECLL);
    }

    objc_exception_throw(v16);
  }

  _Unwind_Resume(a1);
}

void sub_100355E2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_100355EB0(uint64_t a1, void *a2)
{
  activity = a2;
  if (!xpc_activity_get_state(activity))
  {
    v3 = +[CSPower sharedInstance];
    [v3 powerlogActivity:3 event:1 isActive:CFAbsoluteTimeGetCurrent()];

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v5 = [*(a1 + 32) objectForKey:@"CLPersistentConfigurationServerDefaults"];
    v6 = v5;
    if (v5 && [v5 unsignedLongLongValue] != WeakRetained[3])
    {
      v7 = xpc_activity_copy_criteria(activity);
      xpc_dictionary_set_int64(v7, XPC_ACTIVITY_INTERVAL, [v6 unsignedLongLongValue]);
      xpc_activity_set_criteria(activity, v7);
      WeakRetained[3] = [v6 unsignedLongLongValue];
    }

    v8 = +[CSPower sharedInstance];
    [v8 powerlogActivity:3 event:0 isActive:CFAbsoluteTimeGetCurrent()];
  }
}

void sub_100356070(id a1)
{
  qword_100456800 = os_log_create("com.apple.anomalydetectiond", "Alg");

  _objc_release_x1();
}

void sub_1003560B4(id a1)
{
  qword_100456930 = os_log_create("com.apple.anomalydetectiond", "PersistentConfiguration");

  _objc_release_x1();
}

void sub_1003561A0(id a1)
{
  if (qword_100456848 != -1)
  {
    sub_10035667C();
  }

  v1 = qword_100456850;
  if (os_log_type_enabled(qword_100456850, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "creating CSPermissions", v4, 2u);
  }

  v2 = objc_alloc_init(CSPermissions);
  v3 = qword_100458998;
  qword_100458998 = v2;
}

void sub_100356624(id a1)
{
  qword_100456850 = os_log_create("com.apple.anomalydetectiond", "Permissions");

  _objc_release_x1();
}

void sub_100356AB4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 connectionHandleDisconnection:WeakRetained];
}

void sub_100356B30(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 connectionHandleInterruption:WeakRetained];
}

void sub_100356BAC(uint64_t a1, uint64_t *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained name];
  v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Connection, name: %@, pid: %d", v4, [WeakRetained remotePid]);

  v6 = [WeakRetained delegate];
  v7 = [CSConnectionMessage alloc];
  v8 = a2[1];
  v10 = *a2;
  v11 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = [(CSConnectionMessage *)v7 initWithConnectionMessage:&v10];
  [v6 connection:WeakRetained handleMessage:v9];

  if (v11)
  {
    sub_100009A48(v11);
  }
}

void sub_100356C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100009A48(a12);
  }

  _Unwind_Resume(a1);
}

void sub_100356D34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = CSConnection;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_100356DA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100009A48(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100356E6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a11)
  {
    sub_100009A48(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_100356F0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100009A48(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100356FF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, std::__shared_weak_count *a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a11)
  {
    sub_100009A48(a11);
  }

  if (a13)
  {
    sub_100009A48(a13);
  }

  if (a19)
  {
    sub_100009A48(a19);
  }

  _Unwind_Resume(a1);
}

void sub_1003571AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, std::__shared_weak_count *a15, void *__p, std::__shared_weak_count *a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15)
  {
    sub_100009A48(a15);
  }

  if (a17)
  {
    sub_100009A48(a17);
  }

  v25 = *(v23 - 56);
  if (v25)
  {
    sub_100009A48(v25);
  }

  _Unwind_Resume(a1);
}

void sub_10035721C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 32);
  v4 = [CSConnectionMessage alloc];
  v5 = a2[1];
  v7 = *a2;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = [(CSConnectionMessage *)v4 initWithConnectionMessage:&v7];
  (*(v3 + 16))(v3, v6);

  if (v8)
  {
    sub_100009A48(v8);
  }
}

void sub_10035729C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100009A48(a10);
  }

  _Unwind_Resume(a1);
}

void sub_100357418(id a1)
{
  qword_100456880 = os_log_create("com.apple.anomalydetectiond", "CSConnection");

  _objc_release_x1();
}

void *sub_1003574D0(void *a1, uint64_t a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100436448;
  v4 = *a3;
  CLConnectionMessage::CLConnectionMessage();
  return a1;
}

void sub_100357550(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100436448;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100357614()
{
  sub_1000031F4();
  v0 = +[NSAssertionHandler currentHandler];
  sub_100003200();
  [v1 handleFailureInMethod:@"certificate != NULL" object:? file:? lineNumber:? description:?];
}

void sub_100357684()
{
  sub_1000031F4();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100003200();
  [v0 handleFailureInMethod:@"certificate != NULL" object:? file:? lineNumber:? description:?];
}

void sub_1003576F8()
{
  sub_1000031F4();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100003200();
  [v0 handleFailureInMethod:@"error != NULL" object:? file:? lineNumber:? description:?];
}

void sub_10035776C()
{
  sub_1000031F4();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100003200();
  [v0 handleFailureInMethod:@"data != nil" object:? file:? lineNumber:? description:?];
}

void sub_1003577E0()
{
  sub_1000031F4();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100003200();
  [v0 handleFailureInMethod:@"certificate != NULL" object:? file:? lineNumber:? description:?];
}

void sub_100357854()
{
  sub_1000031F4();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100003200();
  [v0 handleFailureInMethod:@"error != NULL" object:? file:? lineNumber:? description:?];
}

void sub_1003578C8()
{
  sub_1000031F4();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100003200();
  [v0 handleFailureInMethod:@"key != nil" object:? file:? lineNumber:? description:?];
}

void sub_10035793C()
{
  sub_1000031F4();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100003200();
  [v0 handleFailureInMethod:@"iv != nil" object:? file:? lineNumber:? description:?];
}

void sub_1003579B0()
{
  sub_1000031F4();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100003200();
  [v0 handleFailureInMethod:@"error != NULL" object:? file:? lineNumber:? description:?];
}

void sub_100357A7C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_CSCompressionEngine.m" lineNumber:161 description:{@"Invalid parameter not satisfying: %@", @"_stream == nil"}];
}

uint64_t sub_100357BB8()
{
  v0 = sub_100006AA0();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    sub_100009C7C();
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Q empty, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  v1 = sub_100006AA0();
  if (os_signpost_enabled(v1))
  {
    sub_100009C7C();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Q empty", "{msg%{public}.0s:Q empty, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  v2 = sub_100006AA0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    sub_100009C7C();
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Q empty, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  v3 = abort_report_np();
  return sub_100357D28(v3);
}

void sub_100357DF0(NSObject **a1)
{
  v2 = sub_10001782C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_1000190D0();
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:invalid kappa TTR type, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v5, 0x26u);
  }

  v3 = sub_10001782C();
  if (os_signpost_enabled(v3))
  {
    sub_1000190D0();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "invalid kappa TTR type", "{msg%{public}.0s:invalid kappa TTR type, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v5, 0x26u);
  }

  v4 = sub_10001782C();
  *a1 = v4;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    sub_1000190D0();
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:invalid kappa TTR type, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v5, 0x26u);
  }
}

void sub_100357F98()
{
  sub_1000031F4();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100003200();
  [v0 handleFailureInMethod:@"certificate != NULL" object:? file:? lineNumber:? description:?];
}

void sub_10035800C()
{
  sub_1000031F4();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100003200();
  [v0 handleFailureInMethod:@"configuration != nil" object:? file:? lineNumber:? description:?];
}

void sub_100358080()
{
  sub_1000031F4();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100003200();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_1003580EC()
{
  sub_1000031F4();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100003200();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_100358234(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v2 = 134218754;
    Current = CFAbsoluteTimeGetCurrent();
    v4 = 2080;
    v5 = "T &CMVector<float, 3>::operator[](const size_t) [T = float, N = 3]";
    v6 = 2048;
    v7 = a1;
    v8 = 2048;
    v9 = 3;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "ERROR,Die,Time,%.3f,Function,%s,invalid index %zu >= %zu\n", &v2, 0x2Au);
  }

  __assert_rtn("operator[]", "CMVector.h", 277, "false");
}

void sub_100358300()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v0 = 134218242;
    Current = CFAbsoluteTimeGetCurrent();
    v2 = 2080;
    v3 = "Element CMVectorBufferBase<float, 3>::front() const [T = float, N = 3]";
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "ERROR,Die,Time,%.3f,Function,%s,front() on empty buffer\n", &v0, 0x16u);
  }

  __assert_rtn("front", "CMVectorBuffer.h", 139, "false");
}

void sub_1003583AC(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v2 = 134218498;
    Current = CFAbsoluteTimeGetCurrent();
    v4 = 2080;
    v5 = "Element &CMVectorBufferBase<float, 3>::operator[](const size_t) [T = float, N = 3]";
    v6 = 2048;
    v7 = a1;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "ERROR,Die,Time,%.3f,Function,%s,out of buffer range %zu\n", &v2, 0x20u);
  }

  __assert_rtn("operator[]", "CMVectorBuffer.h", 39, "false");
}

void sub_100358494(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v2 = 134218754;
    Current = CFAbsoluteTimeGetCurrent();
    v4 = 2080;
    v5 = "T CMVector<float, 3>::operator[](const size_t) const [T = float, N = 3]";
    v6 = 2048;
    v7 = a1;
    v8 = 2048;
    v9 = 3;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "ERROR,Die,Time,%.3f,Function,%s,invalid index %zu >= %zu\n", &v2, 0x2Au);
  }

  __assert_rtn("operator[]", "CMVector.h", 271, "false");
}

void sub_100358628(NSObject **a1)
{
  v2 = sub_1000268F4();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_1000190D0();
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:cannot raise none type marty TTR, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v5, 0x26u);
  }

  v3 = sub_1000268F4();
  if (os_signpost_enabled(v3))
  {
    sub_1000190D0();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "cannot raise none type marty TTR", "{msg%{public}.0s:cannot raise none type marty TTR, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v5, 0x26u);
  }

  v4 = sub_1000268F4();
  *a1 = v4;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    sub_1000190D0();
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:cannot raise none type marty TTR, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v5, 0x26u);
  }
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v3 = _CFUUIDGetUUIDBytes(uuid);
  v2 = *&v3.byte8;
  v1 = *&v3.byte0;
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}

uint64_t CLConnection::sendMessage()
{
  return CLConnection::sendMessage();
}

{
  return CLConnection::sendMessage();
}

uint64_t PB::TextFormatter::format()
{
  return PB::TextFormatter::format();
}

{
  return PB::TextFormatter::format();
}

uint64_t PB::Reader::read()
{
  return PB::Reader::read();
}

{
  return PB::Reader::read();
}

uint64_t PB::Writer::write()
{
  return PB::Writer::write();
}

{
  return PB::Writer::write();
}

void operator delete[]()
{
    ;
  }
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

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
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
  v3 = ___sincos_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  v3 = ___sincosf_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}

objc_method_description protocol_getMethodDescription(Protocol *p, SEL aSel, BOOL isRequiredMethod, BOOL isInstanceMethod)
{
  MethodDescription = _protocol_getMethodDescription(p, aSel, isRequiredMethod, isInstanceMethod);
  types = MethodDescription.types;
  name = MethodDescription.name;
  result.types = types;
  result.name = name;
  return result;
}