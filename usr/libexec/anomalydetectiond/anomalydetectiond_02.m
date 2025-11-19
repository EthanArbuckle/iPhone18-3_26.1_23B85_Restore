double CLMartyEstimatesAlgCoupledCrash::setConfig(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 32);
  v4 = *a2;
  *(v3 + 28) = *(a2 + 12);
  *(v3 + 16) = v4;
  if (qword_1004567F8 != -1)
  {
    sub_100030718();
  }

  v5 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 32);
    v8 = v7[4];
    v9 = v7[5];
    v10 = v7[6];
    v11 = v7[7];
    v12 = v7[8];
    v13 = v7[9];
    v14 = v7[10];
    v15 = 134219520;
    v16 = v8;
    v17 = 2048;
    v18 = v9;
    v19 = 2048;
    v20 = v10;
    v21 = 2048;
    v22 = v11;
    v23 = 2048;
    v24 = v12;
    v25 = 2048;
    v26 = v13;
    v27 = 2048;
    v28 = v14;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[M][CC] config-1,%f,config-2,%f,config-3,%f,config-4,%f,config-5,%f,config-6,%f,config-7,%f", &v15, 0x48u);
  }

  return result;
}

double CLMartyEstimatesAlgCoupledCrash::epochFinalize(CLMartyEstimatesAlgCoupledCrash *this, uint64_t a2)
{
  v2 = *(this + 4);
  *&v3 = *(v2 + 28);
  v4 = *(v2 + 36);
  *&v5 = *(this + 7);
  v6 = *(this + 21);
  v7 = v6 < *(&v3 + 1) && *(this + 23) < *(&v3 + 1);
  v8 = *(v2 + 20);
  v9 = *(v2 + 24);
  v10 = *(v2 + 40);
  v11 = *(this + 12);
  v12 = *(this + 16);
  v13 = *(this + 22);
  v14 = v13 >= v4 || *(this + 24) >= v4;
  v15 = *(v2 + 16);
  v16 = *&v5 < v8;
  if (*(&v5 + 1) < v9)
  {
    v16 = 1;
  }

  v17 = *(this + 25);
  if (v12 < *&v3)
  {
    v16 = 1;
  }

  v18 = v16 || v7;
  if (v17 < v10)
  {
    v14 = 0;
  }

  v19 = !v18 && v14;
  if (v11 >= *(this + 17))
  {
    v21 = vcge_f32(*&v5, *(this + 72));
    v20 = v21.i8[0] & (v12 >= *(this + 20)) & v21.i8[4];
  }

  else
  {
    v20 = 0;
  }

  v22 = v11 >= v15 && v19;
  *(v2 + 56) = a2;
  *(v2 + 48) = v22;
  *(v2 + 49) = v22;
  *(v2 + 64) = v15;
  *(v2 + 68) = v8;
  *(v2 + 72) = v9;
  *(v2 + 92) = *(this + 13);
  *(&v3 + 1) = __PAIR64__(LODWORD(v11), LODWORD(v4));
  *(v2 + 50) = v20;
  *(v2 + 76) = v3;
  *(&v5 + 1) = __PAIR64__(LODWORD(v6), LODWORD(v12));
  *(v2 + 96) = v5;
  *(v2 + 112) = v13;
  result = *(this + 92);
  *(v2 + 116) = result;
  *(v2 + 124) = v17;
  *(v2 + 128) = v10;
  return result;
}

double CLMartyEstimatesAlgCoupledCrash::feedFeatures(uint64_t a1, uint64_t a2)
{
  *(a1 + 64) = *(a2 + 12);
  result = *(a1 + 84);
  *&v3 = *(a2 + 44);
  *(&v3 + 1) = result;
  *(a1 + 84) = v3;
  return result;
}

double virtual thunk toCLMartyEstimatesAlgCoupledCrash::feedFeatures(void *a1, uint64_t a2)
{
  v2 = a1 + *(*a1 - 96);
  *(v2 + 16) = *(a2 + 12);
  result = *(v2 + 84);
  *&v4 = *(a2 + 44);
  *(&v4 + 1) = result;
  *(v2 + 84) = v4;
  return result;
}

float CLMartyEstimatesAlgCoupledCrash::feedFeatures(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 76);
  *(a1 + 48) = *(a2 + 96);
  *(a1 + 52) = v2;
  *(a1 + 60) = *(a2 + 16);
  result = *(a2 + 268);
  *(a1 + 100) = result;
  return result;
}

{
  result = *(a2 + 20);
  *(a1 + 56) = result;
  return result;
}

float virtual thunk toCLMartyEstimatesAlgCoupledCrash::feedFeatures(void *a1, uint64_t a2)
{
  v2 = a1 + *(*a1 - 32);
  v3 = *(a2 + 76);
  *(v2 + 12) = *(a2 + 96);
  *(v2 + 13) = v3;
  *(v2 + 15) = *(a2 + 16);
  result = *(a2 + 268);
  *(v2 + 25) = result;
  return result;
}

{
  result = *(a2 + 20);
  *(a1 + *(*a1 - 112) + 56) = result;
  return result;
}

double CLMartyEstimatesAlgCoupledCrash::epochReset(CLMartyEstimatesAlgCoupledCrash *this)
{
  v1 = *(this + 4);
  *(v1 + 48) = 0;
  *(v1 + 50) = 0;
  *(v1 + 56) = 0;
  result = 0.0;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0;
  return result;
}

double virtual thunk toCLMartyEstimatesAlgCoupledCrash::epochReset(CLMartyEstimatesAlgCoupledCrash *this)
{
  v1 = *(this + *(*this - 56) + 32);
  *(v1 + 48) = 0;
  *(v1 + 50) = 0;
  result = 0.0;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 116) = 0u;
  return result;
}

void sub_10002FE70(CLKappaAlgBlock *this)
{
  *this = off_100414680;
  *(this + 13) = off_100414940;
  *(this + 14) = off_100414A88;
  *(this + *(*this - 176)) = off_100414B78;
  v2 = *(this + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(this, off_100414BD0);
}

void sub_10002FF60(CLKappaAlgBlock *this)
{
  *this = off_100414680;
  *(this + 13) = off_100414940;
  *(this + 14) = off_100414A88;
  *(this + 15) = off_100414B78;
  v2 = *(this + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(this, off_100414BD0);

  operator delete();
}

void sub_10003003C(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100414680;
  *(v1 + 13) = off_100414940;
  *(v1 + 14) = off_100414A88;
  *(v1 + 15) = off_100414B78;
  v2 = *(v1 + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100414BD0);
}

void sub_100030114(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100414680;
  *(v1 + 13) = off_100414940;
  *(v1 + 14) = off_100414A88;
  *(v1 + 15) = off_100414B78;
  v2 = *(v1 + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100414BD0);

  operator delete();
}

void sub_100030200(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100414680;
  *(v1 + 13) = off_100414940;
  *(v1 + 14) = off_100414A88;
  *(v1 + 15) = off_100414B78;
  v2 = *(v1 + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100414BD0);
}

void sub_1000302D8(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100414680;
  *(v1 + 13) = off_100414940;
  *(v1 + 14) = off_100414A88;
  *(v1 + 15) = off_100414B78;
  v2 = *(v1 + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100414BD0);

  operator delete();
}

void sub_1000303C4(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100414680;
  *(v1 + 13) = off_100414940;
  *(v1 + 14) = off_100414A88;
  *(v1 + 15) = off_100414B78;
  v2 = *(v1 + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100414BD0);
}

void sub_10003049C(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100414680;
  *(v1 + 13) = off_100414940;
  *(v1 + 14) = off_100414A88;
  *(v1 + 15) = off_100414B78;
  v2 = *(v1 + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100414BD0);

  operator delete();
}

void sub_100030588(id a1)
{
  qword_100456800 = os_log_create("com.apple.anomalydetectiond", "Alg");

  _objc_release_x1();
}

void sub_10003069C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100415258;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

double CLMartyEstimatesAlgHighSpeedCrashResult::reset(CLMartyEstimatesAlgHighSpeedCrashResult *this)
{
  *(this + 8) = 0;
  *(this + 3) = 0;
  *(this + 16) = 0;
  *(this + 5) = 0;
  result = 0.0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 20) = 0;
  return result;
}

double CLMartyEstimatesAlgHighSpeedCrashResult::log(CLMartyEstimatesAlgHighSpeedCrashResult *this)
{
  if (qword_1004567F8 != -1)
  {
    sub_100031B30();
  }

  v2 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(this + 5);
    v5 = *(this + 32);
    v6 = *(this + 12);
    v7 = *(this + 13);
    v8 = *(this + 14);
    v9 = *(this + 15);
    v10 = *(this + 16);
    v11 = *(this + 68);
    v12 = *(this + 18);
    v13 = *(this + 19);
    v14 = *(this + 20);
    v15 = 134351616;
    v16 = v4;
    v17 = 1026;
    v18 = v5;
    v19 = 2050;
    v20 = v6;
    v21 = 2050;
    v22 = v7;
    v23 = 2050;
    v24 = v8;
    v25 = 2050;
    v26 = v9;
    v27 = 2050;
    v28 = v10;
    v29 = 1026;
    v30 = v11;
    v31 = 1026;
    v32 = v12;
    v33 = 1026;
    v34 = v13;
    v35 = 1026;
    v36 = v14;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[M][HSC] AlgBlock summary,A,%{public}llu,B,%{public}d,C,%{public}f,D,%{public}f,E,%{public}f,F,%{public}f,G,%{public}f,H,%{public}d,I,%{public}d,J,%{public}d,K,%{public}d\n", &v15, 0x5Cu);
  }

  return result;
}

void CLMartyEstimatesAlgHighSpeedCrash::CLMartyEstimatesAlgHighSpeedCrash(CLMartyEstimatesAlgHighSpeedCrash *this, uint64_t *a2)
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
  *(this + 14) = 0;
  *(this + 6) = 0;
  *(this + 60) = 0x80000000800000;
  *(this + 68) = 0;
  operator new();
}

void sub_100030B74(_Unwind_Exception *a1)
{
  v4 = *(v1 + 5);
  if (v4)
  {
    sub_100009A48(v4);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, (v2 + 8));
  _Unwind_Resume(a1);
}

char **sub_100030B9C@<X0>(uint64_t a1@<X0>, char ***a2@<X8>)
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

void CLMartyEstimatesAlgHighSpeedCrash::CLMartyEstimatesAlgHighSpeedCrash(CLMartyEstimatesAlgHighSpeedCrash *this)
{
  *this = off_100411FE8;
  *(this + 9) = off_100412090;
  *(this + 10) = off_100412158;
  *(this + 11) = off_100412210;
  CLKappaAlgBlock::CLKappaAlgBlock(this, off_100415898);
  *v1 = off_100415348;
  *(v1 + 72) = off_100415608;
  *(v1 + 80) = off_100415750;
  *(v1 + 88) = off_100415840;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 32) = 0;
  *(v1 + 56) = 0;
  *(v1 + 60) = 0x80000000800000;
  *(v1 + 68) = 0;
  operator new();
}

void sub_100030E8C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 5);
  if (v3)
  {
    sub_100009A48(v3);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100415898);
  _Unwind_Resume(a1);
}

void CLMartyEstimatesAlgHighSpeedCrash::resetConfiguration(CLMartyEstimatesAlgHighSpeedCrash *this)
{
  v17 = [CSPersistentConfiguration configBaseKey:"EstimatesAlgHSCConfig" forFeatureMode:*(this + 24)];
  v2 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v3) = 1008981770;
  LODWORD(v4) = 15.0;
  LODWORD(v5) = 15.0;
  [v2 algorithmThresholdNumber:0 inArrayForKey:v17 withMinValue:v3 maxValue:v4 defaultValue:v5];
  LODWORD(v18) = v6;

  v7 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v8) = 1117782016;
  LODWORD(v9) = -1138501878;
  LODWORD(v10) = 1117782016;
  [v7 algorithmThresholdNumber:1 inArrayForKey:v17 withMinValue:v9 maxValue:v8 defaultValue:v10];
  HIDWORD(v18) = v11;

  v12 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v13) = 1112014848;
  LODWORD(v14) = -1138501878;
  LODWORD(v15) = 1112014848;
  [v12 algorithmThresholdNumber:2 inArrayForKey:v17 withMinValue:v14 maxValue:v13 defaultValue:v15];
  v19 = v16;

  CLMartyEstimatesAlgHighSpeedCrash::setConfig(this, &v18);
}

double CLMartyEstimatesAlgHighSpeedCrash::setConfig(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 32);
  v4 = *a2;
  *(v3 + 24) = *(a2 + 2);
  *(v3 + 16) = v4;
  if (qword_1004567F8 != -1)
  {
    sub_100031B30();
  }

  v5 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 32);
    v8 = v7[4];
    v9 = v7[5];
    v10 = v7[6];
    v11 = 134218496;
    v12 = v8;
    v13 = 2048;
    v14 = v9;
    v15 = 2048;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[M][HSC] config-1,%f,config-2,%f,config-3,%f", &v11, 0x20u);
  }

  return result;
}

uint64_t CLMartyEstimatesAlgHighSpeedCrash::reset(CLMartyEstimatesAlgHighSpeedCrash *this)
{
  result = (*(**(this + 4) + 24))(*(this + 4));
  *(this + 68) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  return result;
}

uint64_t CLMartyEstimatesAlgHighSpeedCrash::resetCounters(uint64_t this)
{
  *(this + 68) = 0;
  *(this + 48) = 0;
  *(this + 56) = 0;
  return this;
}

uint64_t CLMartyEstimatesAlgHighSpeedCrash::epochFinalize(uint64_t this, uint64_t a2)
{
  v2 = *(this + 32);
  *&v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = *(this + 60);
  v5 = *(this + 64);
  v7 = *&v3;
  v8 = *&v3;
  if (v6 < *(&v3 + 1))
  {
    v9 = *(this + 48);
    v8 = (v9 - 1);
    if (!v9)
    {
      v8 = 0.0;
    }
  }

  v10 = v8;
  *(this + 48) = v8;
  v11 = *&v3;
  if (v5 < v4)
  {
    v12 = *(this + 52);
    v11 = (v12 - 1);
    if (!v12)
    {
      v11 = 0.0;
    }
  }

  v13 = v11;
  *(this + 52) = v11;
  v14 = *(this + 68);
  if ((v14 & 1) == 0)
  {
    v15 = *(this + 56);
    v7 = (v15 - 1);
    if (!v15)
    {
      v7 = 0.0;
    }
  }

  *(this + 56) = v7;
  if (v7)
  {
    v16 = v10 == 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = v16 || v13 == 0;
  v18 = !v17;
  *(v2 + 40) = a2;
  *(v2 + 32) = v18;
  *(v2 + 33) = v18;
  *(&v3 + 1) = __PAIR64__(LODWORD(v6), LODWORD(v4));
  *(v2 + 48) = v3;
  *(v2 + 64) = v5;
  *(v2 + 68) = v14;
  *(v2 + 72) = v10;
  *(v2 + 76) = v13;
  *(v2 + 80) = v7;
  if (!v17)
  {
    *(this + 68) = 0;
    *(this + 48) = 0;
    *(this + 56) = 0;
  }

  return this;
}

float CLMartyEstimatesAlgHighSpeedCrash::feedFeatures(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 16);
  *(a1 + 64) = result;
  return result;
}

{
  result = *(a2 + 20);
  *(a1 + 60) = result;
  return result;
}

float virtual thunk toCLMartyEstimatesAlgHighSpeedCrash::feedFeatures(void *a1, uint64_t a2)
{
  result = *(a2 + 16);
  *(a1 + *(*a1 - 32) + 64) = result;
  return result;
}

{
  result = *(a2 + 20);
  *(a1 + *(*a1 - 112) + 60) = result;
  return result;
}

double CLMartyEstimatesAlgHighSpeedCrash::epochReset(CLMartyEstimatesAlgHighSpeedCrash *this)
{
  v1 = *(this + 4);
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  result = 0.0;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0;
  return result;
}

double virtual thunk toCLMartyEstimatesAlgHighSpeedCrash::epochReset(CLMartyEstimatesAlgHighSpeedCrash *this)
{
  v1 = *(this + *(*this - 56) + 32);
  *(v1 + 32) = 0;
  result = 0.0;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 68) = 0u;
  return result;
}

void sub_100031338(CLKappaAlgBlock *this)
{
  *this = off_100415348;
  *(this + 9) = off_100415608;
  *(this + 10) = off_100415750;
  *(this + *(*this - 176)) = off_100415840;
  v2 = *(this + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(this, off_100415898);
}

void sub_100031428(CLKappaAlgBlock *this)
{
  *this = off_100415348;
  *(this + 9) = off_100415608;
  *(this + 10) = off_100415750;
  *(this + 11) = off_100415840;
  v2 = *(this + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(this, off_100415898);

  operator delete();
}

void sub_100031504(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100415348;
  *(v1 + 9) = off_100415608;
  *(v1 + 10) = off_100415750;
  *(v1 + 11) = off_100415840;
  v2 = *(v1 + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100415898);
}

void sub_1000315DC(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100415348;
  *(v1 + 9) = off_100415608;
  *(v1 + 10) = off_100415750;
  *(v1 + 11) = off_100415840;
  v2 = *(v1 + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100415898);

  operator delete();
}

void sub_1000316C8(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100415348;
  *(v1 + 9) = off_100415608;
  *(v1 + 10) = off_100415750;
  *(v1 + 11) = off_100415840;
  v2 = *(v1 + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100415898);
}

void sub_1000317A0(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100415348;
  *(v1 + 9) = off_100415608;
  *(v1 + 10) = off_100415750;
  *(v1 + 11) = off_100415840;
  v2 = *(v1 + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100415898);

  operator delete();
}

void sub_10003188C(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100415348;
  *(v1 + 9) = off_100415608;
  *(v1 + 10) = off_100415750;
  *(v1 + 11) = off_100415840;
  v2 = *(v1 + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100415898);
}

void sub_100031964(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100415348;
  *(v1 + 9) = off_100415608;
  *(v1 + 10) = off_100415750;
  *(v1 + 11) = off_100415840;
  v2 = *(v1 + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100415898);

  operator delete();
}

void sub_100031A50(id a1)
{
  qword_100456800 = os_log_create("com.apple.anomalydetectiond", "Alg");

  _objc_release_x1();
}

void sub_100031AB4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100415F20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t CLKappaFeaturesAlgStepsResult::reset(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 12) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 36) = 0;
  *(this + 41) = 0;
  *(this + 56) = 0;
  *(this + 64) = 0;
  *(this + 72) = 0;
  return this;
}

double CLKappaFeaturesAlgStepsResult::log(CLKappaFeaturesAlgStepsResult *this)
{
  if (qword_1004567F8 != -1)
  {
    sub_100032D08();
  }

  v2 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(this + 3);
    v5 = *(this + 32);
    v6 = *(this + 9);
    v7 = *(this + 10);
    v8 = *(this + 11);
    v9 = *(this + 48);
    v10 = *(this + 7);
    v11 = *(this + 8);
    v12 = *(this + 9);
    v13 = 134351104;
    v14 = v4;
    v15 = 1026;
    v16 = v5;
    v17 = 2050;
    v18 = v6;
    v19 = 2050;
    v20 = v7;
    v21 = 2050;
    v22 = v8;
    v23 = 1026;
    v24 = v9;
    v25 = 2050;
    v26 = v10;
    v27 = 2050;
    v28 = v11;
    v29 = 2050;
    v30 = v12;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[Steps] summary,A,%{public}llu,B,%{public}d,C,%{public}f,D,%{public}f,E,%{public}f,F,%{public}d,debug-1,%{public}llu,debug-2,%{public}llu,debug-3,%{public}llu\n", &v13, 0x54u);
  }

  return result;
}

void CLKappaFeaturesAlgSteps::CLKappaFeaturesAlgSteps(CLKappaFeaturesAlgSteps *this, uint64_t *a2)
{
  CLKappaAlgBlock::CLKappaAlgBlock(this, a2 + 1);
  v4 = *a2;
  *v5 = *a2;
  *(this + *(v4 - 152)) = a2[6];
  *(this + *(*this - 160)) = a2[7];
  *(this + *(*this - 168)) = a2[8];
  *(this + *(*this - 176)) = a2[9];
  *(this + 8) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  operator new();
}

void sub_100031F60(_Unwind_Exception *a1)
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

char **sub_100031F94@<X0>(uint64_t a1@<X0>, char ***a2@<X8>)
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

void CLKappaFeaturesAlgSteps::CLKappaFeaturesAlgSteps(CLKappaFeaturesAlgSteps *this)
{
  *this = off_100411FE8;
  *(this + 9) = off_100412090;
  *(this + 10) = off_100412158;
  *(this + 11) = off_100412210;
  CLKappaAlgBlock::CLKappaAlgBlock(this, off_100416560);
  *v1 = off_100416010;
  *(v1 + 64) = 0;
  *(v1 + 72) = off_1004162D0;
  *(v1 + 80) = off_100416418;
  *(v1 + 88) = off_100416508;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  operator new();
}

void sub_10003226C(_Unwind_Exception *a1)
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

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100416560);
  _Unwind_Resume(a1);
}

uint64_t CLKappaFeaturesAlgSteps::reset(CLKappaFeaturesAlgSteps *this)
{
  result = (*(**(this + 4) + 24))(*(this + 4));
  *(this + 8) = 0;
  return result;
}

float CLKappaFeaturesAlgSteps::feedSteps(uint64_t a1, float *a2)
{
  v2 = *a2;
  *(a1 + 64) = *a2;
  v3 = *(a1 + 32);
  v4 = *(a2 + 2);
  LODWORD(v5) = vcvt_f32_u32(v4).u32[0];
  HIDWORD(v5) = vcvt_f32_s32(v4).i32[1];
  *(v3 + 36) = v5;
  result = a2[4] * 60.0;
  *(v3 + 44) = result;
  *(v3 + 48) = *(a2 + 20);
  *(v3 + 56) = v2;
  return result;
}

float virtual thunk toCLKappaFeaturesAlgSteps::feedSteps(void *a1, float *a2)
{
  v2 = a1 + *(*a1 - 104);
  v3 = *a2;
  *(v2 + 8) = *a2;
  v4 = *(v2 + 4);
  v5 = *(a2 + 2);
  LODWORD(v6) = vcvt_f32_u32(v5).u32[0];
  HIDWORD(v6) = vcvt_f32_s32(v5).i32[1];
  *(v4 + 36) = v6;
  result = a2[4] * 60.0;
  *(v4 + 44) = result;
  *(v4 + 48) = *(a2 + 20);
  *(v4 + 56) = v3;
  return result;
}

uint64_t CLKappaFeaturesAlgSteps::epochFinalize(uint64_t this, uint64_t a2)
{
  v2 = *(this + 32);
  *(v2 + 24) = a2;
  v3 = *(this + 64);
  *(v2 + 32) = v3 != 0;
  *(v2 + 64) = v3;
  *(v2 + 72) = v3;
  *(this + 64) = 0;
  return this;
}

void *virtual thunk toCLKappaFeaturesAlgSteps::epochFinalize(void *this, uint64_t a2)
{
  v2 = this + *(*this - 48);
  v3 = *(v2 + 4);
  *(v3 + 24) = a2;
  v4 = *(v2 + 8);
  *(v3 + 32) = v4 != 0;
  *(v3 + 64) = v4;
  *(v3 + 72) = v4;
  *(v2 + 8) = 0;
  return this;
}

uint64_t CLKappaFeaturesAlgSteps::epochReset(CLKappaFeaturesAlgSteps *this)
{
  result = (*(**(this + 4) + 24))(*(this + 4));
  *(this + 8) = 0;
  return result;
}

uint64_t virtual thunk toCLKappaFeaturesAlgSteps::epochReset(CLKappaFeaturesAlgSteps *this)
{
  v1 = this + *(*this - 56);
  result = (*(**(v1 + 4) + 24))(*(v1 + 4));
  *(v1 + 8) = 0;
  return result;
}

void sub_1000324B0(CLKappaAlgBlock *this)
{
  *this = off_100416010;
  *(this + 9) = off_1004162D0;
  *(this + 10) = off_100416418;
  *(this + *(*this - 176)) = off_100416508;
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

  CLKappaAlgBlock::~CLKappaAlgBlock(this, off_100416560);
}

void sub_1000325AC(CLKappaAlgBlock *this)
{
  *this = off_100416010;
  *(this + 9) = off_1004162D0;
  *(this + 10) = off_100416418;
  *(this + 11) = off_100416508;
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

  CLKappaAlgBlock::~CLKappaAlgBlock(this, off_100416560);

  operator delete();
}

void sub_100032694(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100416010;
  *(v1 + 9) = off_1004162D0;
  *(v1 + 10) = off_100416418;
  *(v1 + 11) = off_100416508;
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

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100416560);
}

void sub_100032778(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100416010;
  *(v1 + 9) = off_1004162D0;
  *(v1 + 10) = off_100416418;
  *(v1 + 11) = off_100416508;
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

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100416560);

  operator delete();
}

void sub_100032870(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100416010;
  *(v1 + 9) = off_1004162D0;
  *(v1 + 10) = off_100416418;
  *(v1 + 11) = off_100416508;
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

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100416560);
}

void sub_100032954(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100416010;
  *(v1 + 9) = off_1004162D0;
  *(v1 + 10) = off_100416418;
  *(v1 + 11) = off_100416508;
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

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100416560);

  operator delete();
}

void sub_100032A4C(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100416010;
  *(v1 + 9) = off_1004162D0;
  *(v1 + 10) = off_100416418;
  *(v1 + 11) = off_100416508;
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

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100416560);
}

void sub_100032B30(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100416010;
  *(v1 + 9) = off_1004162D0;
  *(v1 + 10) = off_100416418;
  *(v1 + 11) = off_100416508;
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

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100416560);

  operator delete();
}

void sub_100032C28(id a1)
{
  qword_100456800 = os_log_create("com.apple.anomalydetectiond", "Alg");

  _objc_release_x1();
}

void sub_100032C8C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100416BE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

float32x2_t CLZgDetection::reset(float32x2_t *this)
{
  this[4] = -1;
  result = vneg_f32(0x80000000800000);
  this[5] = result;
  this[6].i32[0] = 2139095039;
  return result;
}

__n128 CLZgDetection::queryZgState(CLZgDetection *this, const CSSPUTriad_Struct *a2, CSSPUTriad_Struct *a3, CSSPUTriad_Struct *a4, const CSSPUTriad_Struct *a5, const CSSPUTriad_Struct *a6)
{
  CLZgDetection::calculateGyroAndAngAccel(this, a2, a3, a4, a5, a6);
  v8 = CLZgDetection::checkZgCondition(this, a2);
  *(this + 240) = v8;
  v9 = 104;
  if (v8)
  {
    v9 = 56;
  }

  v10 = (this + v9);
  result = *v10;
  *(this + 2) = *v10;
  *(this + 6) = v10[1].n128_u64[0];
  return result;
}

uint64_t CLZgDetection::calculateGyroAndAngAccel(CLZgDetection *this, const CSSPUTriad_Struct *a2, CSSPUTriad_Struct *a3, CSSPUTriad_Struct *a4, const CSSPUTriad_Struct *a5, const CSSPUTriad_Struct *a6)
{
  v18 = 0;
  result = CLZgDetection::checkIfOnlyOneGyroSat(this, a4, a3, &v18);
  timestamp = a2->timestamp;
  v14 = (a2->timestamp - a4->timestamp) / (a3->timestamp - a4->timestamp);
  v15 = a4->z + (v14 * (a3->z - a4->z));
  *(this + 7) = a2->timestamp;
  *(this + 8) = vmla_n_f32(*&a4->x, vsub_f32(*&a3->x, *&a4->x), v14);
  *(this + 18) = v15;
  v16 = (timestamp - a6->timestamp) / (a5->timestamp - a6->timestamp);
  v17 = a6->z + (v16 * (a5->z - a6->z));
  *(this + 10) = timestamp;
  *(this + 11) = vmla_n_f32(*&a6->x, vsub_f32(*&a5->x, *&a6->x), v16);
  *(this + 24) = v17;
  *(this + 104) = *(this + 56);
  *(this + 15) = *(this + 9);
  if (result)
  {
    return CLZgDetection::calculateSatGyroAndAngAccel(this, a2, &v18);
  }

  return result;
}

uint64_t CLZgDetection::checkZgCondition(CLZgDetection *this, const CSSPUTriad_Struct *a2)
{
  v2 = 0;
  v3 = *(this + 36);
  v4 = *(this + 37);
  v6 = *(this + 32);
  v5 = *(this + 33);
  v7 = *(this + 34);
  v8 = *(this + 35);
  x = a2->x;
  y = a2->y;
  z = a2->z;
  v12 = sqrtf(((y * y) + (x * x)) + (z * z)) * 9.8067;
  v13 = *(this + 16);
  v14 = *(this + 17);
  v15 = *(this + 18);
  v16 = v14 * v14;
  v17 = v15 * v15;
  v18 = *(this + 24);
  v19 = (x * 9.8067) + (v16 + v17) * v8 + (v3 * (v18 - (v13 * v14)));
  v20 = v13 * v13;
  v21 = (y * 9.8067) + (v20 + v17) * v3;
  v22 = *(this + 22);
  LODWORD(v17) = *(this + 23);
  *&v19 = v19 + (v4 * -(*&v17 + (v13 * v15)));
  *&v21 = v21 + (v4 * (v22 - (v14 * v15))) + (v8 * -(v18 + (v13 * v14)));
  v23 = (z * 9.8067) + (v20 + v16) * v4 + (v8 * (*&v17 - (v13 * v15))) + (v3 * -(v22 + (v14 * v15)));
  v24 = sqrtf(((*&v21 * *&v21) + (*&v19 * *&v19)) + (v23 * v23));
  v25 = (-((v5 - v7) * v14) * v15) + (v6 * v22);
  v26 = (-((v7 - v6) * v13) * v15) + (v5 * *&v17);
  v27 = (-((v6 - v5) * v13) * v14) + (v7 * v18);
  v28 = sqrtf(((v26 * v26) + (v25 * v25)) + (v27 * v27));
  v29 = *(this + 3) * 9.8067;
  v31 = v24 > v29 && (v24 / v12) <= *(this + 4);
  if (v28 <= *(this + 5))
  {
    v2 = sqrtf(((v14 * v14) + (v13 * v13)) + (v15 * v15)) >= *(this + 6);
  }

  if (v24 <= v29 || v31)
  {
    v32 = 1;
  }

  else
  {
    v34 = v5 != 0.0 && v7 != 0.0;
    v32 = v34 && v2;
  }

  return v32 & 1;
}

BOOL CLZgDetection::checkIfOnlyOneGyroSat(uint64_t a1, float *a2, float *a3, _DWORD *a4)
{
  v4 = *(a1 + 8);
  if (fabsf(a3[2]) >= v4 || fabsf(a2[2]) >= v4)
  {
    v5 = 1;
    *a4 = 1;
  }

  else
  {
    v5 = 0;
  }

  if (fabsf(a3[3]) >= v4 || fabsf(a2[3]) >= v4)
  {
    ++v5;
    *a4 = 2;
  }

  if (fabsf(a3[4]) >= v4 || fabsf(a2[4]) >= v4)
  {
    ++v5;
    *a4 = 3;
  }

  return v5 == 1;
}

float32_t CLZgDetection::calculateInterpolate@<S0>(const CSSPUTriad_Struct *a1@<X1>, const CSSPUTriad_Struct *a2@<X2>, float32x2_t a3@<X3>, float32x2_t *a4@<X8>)
{
  v5 = (*&a3 - a2->timestamp) / (a1->timestamp - a2->timestamp);
  a4[1] = vmla_n_f32(*&a2->x, vsub_f32(*&a1->x, *&a2->x), v5);
  result = a2->z + (v5 * (a1->z - a2->z));
  a4[2].f32[0] = result;
  *a4 = a3;
  return result;
}

uint64_t CLZgDetection::calculateSatGyroAndAngAccel(uint64_t result, uint64_t a2, int *a3)
{
  v3 = *(result + 144);
  v4 = *(result + 148);
  v5 = *(result + 128);
  v6 = *(result + 132);
  v7 = *(result + 136);
  v8 = *(result + 140);
  v9 = *a3;
  if (*a3 == 3)
  {
    v30 = *(result + 64);
    v29 = *(result + 68);
    v31 = ((v3 * v29) + (v30 * v8));
    v32 = (v7 * v29) - (v6 * v29);
    v33 = ((v5 * v30) - (v7 * v30)) * ((v5 * v30) - (v7 * v30)) + v31 * v31 + v32 * v32;
    if (v33 == 0.0)
    {
      v37 = *(result + 72);
    }

    else
    {
      v35 = *(result + 88);
      v34 = *(result + 92);
      v36 = ((*(a2 + 16) * 9.8067) + (v30 * v30 + v29 * v29) * v4 + (v8 * v34) - (v3 * v35)) * v31;
      v37 = ((v36 + (-(v5 * v35) * v32)) + ((v34 * -v6) * ((v5 * v30) + (-v7 * v30)))) / v33;
    }

    *(result + 72) = v37;
    v44 = *(result + 32);
    if (v44 == -1 || (v45 = (*a2 - v44), v45 / 1000000.0 >= *result))
    {
      v48 = ((v5 - v6) * v30) * v29;
    }

    else
    {
      v46 = *(result + 28);
      v47 = v7 * (((v5 - v6) * v30) * v29);
      v7 = v46 + (v7 * v7);
      v48 = v47 + ((v37 - *(result + 48)) / v45) * 1000000.0 * v46;
    }

    if (v7 == 0.0)
    {
      v49 = *(result + 96);
    }

    else
    {
      v49 = v48 / v7;
    }

    *(result + 96) = v49;
  }

  else if (v9 == 2)
  {
    v20 = *(result + 64);
    v21 = *(result + 72);
    v22 = ((v4 * v21) + (v20 * v8));
    v23 = (v7 * v21) - (v6 * v21);
    v24 = ((v6 * v20) - (v5 * v20)) * ((v6 * v20) - (v5 * v20)) + v22 * v22 + v23 * v23;
    if (v24 == 0.0)
    {
      v28 = *(result + 68);
    }

    else
    {
      v25 = *(result + 96);
      v26 = *(result + 88);
      v27 = ((*(a2 + 12) * 9.8067) + (v20 * v20 + v21 * v21) * v3 + (v4 * v26) - (v8 * v25)) * v22;
      v28 = ((v27 + ((v26 * -v5) * v23)) + (-(v7 * v25) * ((v6 * v20) + (-v5 * v20)))) / v24;
    }

    *(result + 68) = v28;
    v38 = *(result + 32);
    if (v38 == -1 || (v39 = (*a2 - v38), v39 / 1000000.0 >= *result))
    {
      v42 = ((v7 - v5) * v20) * v21;
    }

    else
    {
      v40 = *(result + 28);
      v41 = v6 * (((v7 - v5) * v20) * v21);
      v6 = v40 + (v6 * v6);
      v42 = v41 + ((v28 - *(result + 44)) / v39) * 1000000.0 * v40;
    }

    if (v6 == 0.0)
    {
      v43 = *(result + 92);
    }

    else
    {
      v43 = v42 / v6;
    }

    *(result + 92) = v43;
  }

  else if (v9 == 1)
  {
    v11 = *(result + 68);
    v10 = *(result + 72);
    v12 = ((v4 * v10) + (v11 * v3));
    v13 = (v6 * v11) - (v5 * v11);
    v14 = (v5 * v10) - (v7 * v10);
    v15 = v14 * v14 + v13 * v13 + v12 * v12;
    if (v15 == 0.0)
    {
      v19 = *(result + 64);
    }

    else
    {
      v16 = *(result + 92);
      v17 = *(result + 96);
      v18 = ((*(a2 + 8) * 9.8067) + (v11 * v11 + v10 * v10) * v8 + (v3 * v17) - (v4 * v16)) * v12;
      v19 = ((v18 + ((v17 * -v7) * v13)) + (-(v6 * v16) * v14)) / v15;
    }

    *(result + 64) = v19;
    v50 = *(result + 32);
    if (v50 == -1 || (v51 = (*a2 - v50), v51 / 1000000.0 >= *result))
    {
      v54 = ((v6 - v7) * v11) * v10;
    }

    else
    {
      v52 = *(result + 28);
      v53 = v5 * (((v6 - v7) * v11) * v10);
      v5 = v52 + (v5 * v5);
      v54 = v53 + ((v19 - *(result + 40)) / v51) * 1000000.0 * v52;
    }

    if (v5 == 0.0)
    {
      v55 = *(result + 88);
    }

    else
    {
      v55 = v54 / v5;
    }

    *(result + 88) = v55;
  }

  return result;
}

void sub_1000335CC(id a1)
{
  qword_100456800 = os_log_create("com.apple.anomalydetectiond", "Alg");

  _objc_release_x1();
}

void sub_100033760(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_10003384C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained uploadCoreAnalyticsWithHandler:v6];
  }
}

void sub_100034260(id a1)
{
  qword_1004568B0 = os_log_create("com.apple.anomalydetectiond", "CoreAnalytics");

  _objc_release_x1();
}

void CLKappaFeaturesAlgPeakDetectorMAPResult::log(CLKappaFeaturesAlgPeakDetectorMAPResult *this)
{
  if (qword_1004567F8 != -1)
  {
    sub_10003601C();
  }

  v2 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 80);
    v4 = *(this + 11);
    v5 = *(this + 4);
    v6 = *(this + 3);
    v7 = *(this + 8);
    v8 = *(this + 5);
    v9 = *(this + 12);
    v10 = *(this + 13);
    v11 = *(this + 14);
    v12 = *(this + 15);
    v13 = *(this + 8);
    v14 = *(this + 18);
    v15 = *(this + 24);
    v16 = *(this + 32);
    v17 = *(this + 13);
    v18 = *(this + 14);
    v19 = *(this + 15);
    v20 = *(this + 184);
    v21[0] = 67244544;
    v21[1] = v3;
    v22 = 2050;
    v23 = v4;
    v24 = 2050;
    v25 = v5;
    v26 = 2050;
    v27 = v6;
    v28 = 1026;
    v29 = v7;
    v30 = 2050;
    v31 = v8;
    v32 = 2050;
    v33 = v9;
    v34 = 2050;
    v35 = v10;
    v36 = 2050;
    v37 = v11;
    v38 = 2050;
    v39 = v12;
    v40 = 2050;
    v41 = v13;
    v42 = 2050;
    v43 = v14;
    v44 = 1026;
    v45 = v15;
    v46 = 2050;
    v47 = v17;
    v48 = 2050;
    v49 = v16;
    v50 = 2050;
    v51 = v18;
    v52 = 2050;
    v53 = v19;
    v54 = 1026;
    v55 = v20;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[MAP] summary,A,%{public}d,B,%{public}llu,config-1,%{public}f,config-2,%{public}llu,config-3,%{public}d,config-4,%{public}llu,config-5,%{public}f,config-6,%{public}f,config-7,%{public}f,config-8,%{public}f,config-9,%{public}llu,config-10,%{public}f,debug-1,%{public}d,debug-2,%{public}llu,debug-3,%{public}f,debug-4,%{public}llu,debug-5,%{public}llu,debug-6,%{public}d\n", v21, 0xA6u);
  }
}

void CLKappaFeaturesAlgPeakDetectorMAPResult::reset(CLKappaFeaturesAlgPeakDetectorMAPResult *this)
{
  v3 = (this + 136);
  v2 = *(this + 17);
  *(v3 - 128) = 0;
  *(v3 - 31) = 0;
  *(v3 - 56) = 0;
  *(v3 - 6) = 0;
  *(v3 - 10) = 0;
  *(v3 - 3) = 0;
  *(v3 - 2) = 0;
  *(v3 - 4) = 0;
  *(v3 - 2) = 0;
  if (v2)
  {
    *(this + 18) = v2;
    operator delete(v2);
  }

  v4 = *(this + 20);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  if (v4)
  {
    *(this + 21) = v4;
    operator delete(v4);
  }

  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 184) = 1;
}

void CLKappaFeaturesAlgPeakDetectorMAP::CLKappaFeaturesAlgPeakDetectorMAP(CLKappaFeaturesAlgPeakDetectorMAP *this, uint64_t *a2)
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
  sub_100035E8C();
}

void sub_10003477C(_Unwind_Exception *a1)
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

char **sub_1000347B0@<X0>(uint64_t a1@<X0>, char ***a2@<X8>)
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

void CLKappaFeaturesAlgPeakDetectorMAP::CLKappaFeaturesAlgPeakDetectorMAP(CLKappaFeaturesAlgPeakDetectorMAP *this)
{
  *this = off_100411FE8;
  *(this + 8) = off_100412090;
  *(this + 9) = off_100412158;
  *(this + 10) = off_100412210;
  CLKappaAlgBlock::CLKappaAlgBlock(this, off_1004172B8);
  *v1 = off_100416D68;
  *(v1 + 64) = off_100417028;
  *(v1 + 72) = off_100417170;
  *(v1 + 80) = off_100417260;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  sub_100035E8C();
}

void sub_100034A2C(_Unwind_Exception *a1)
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

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_1004172B8);
  _Unwind_Resume(a1);
}

void CLKappaFeaturesAlgPeakDetectorMAP::resetConfiguration(CLKappaFeaturesAlgPeakDetectorMAP *this)
{
  v31 = [CSPersistentConfiguration configBaseKey:"FeaturesAlgPeakDetectorMAPConfig" forFeatureMode:*(this + 24)];
  v2 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v3) = 1148846080;
  LODWORD(v4) = 1.0;
  LODWORD(v5) = 8.0;
  [v2 algorithmThresholdNumber:0 inArrayForKey:v31 withMinValue:v4 maxValue:v3 defaultValue:v5];
  LODWORD(v32) = v6;

  v7 = +[CSPersistentConfiguration sharedConfiguration];
  *(&v32 + 1) = [v7 algorithmIntegerNumber:1 inArrayForKey:v31 withMinValue:0 maxValue:10000000 defaultValue:100000];

  v8 = +[CSPersistentConfiguration sharedConfiguration];
  v33 = [v8 algorithmIntegerNumber:2 inArrayForKey:v31 withMinValue:1 maxValue:100000 defaultValue:5];

  v9 = +[CSPersistentConfiguration sharedConfiguration];
  v34 = [v9 algorithmIntegerNumber:3 inArrayForKey:v31 withMinValue:0 maxValue:10000000 defaultValue:120000];

  v10 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v11) = 1.0;
  LODWORD(v12) = 1045220557;
  [v10 algorithmThresholdNumber:4 inArrayForKey:v31 withMinValue:0.0 maxValue:v11 defaultValue:v12];
  v35 = v13;

  v14 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v15) = 1061997773;
  LODWORD(v16) = 1.0;
  [v14 algorithmThresholdNumber:5 inArrayForKey:v31 withMinValue:0.0 maxValue:v16 defaultValue:v15];
  v36 = v17;

  v18 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v19) = 1.0;
  LODWORD(v20) = 1045220557;
  [v18 algorithmThresholdNumber:6 inArrayForKey:v31 withMinValue:0.0 maxValue:v19 defaultValue:v20];
  v37 = v21;

  v22 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v23) = 1.0;
  LODWORD(v24) = 1.0;
  [v22 algorithmThresholdNumber:7 inArrayForKey:v31 withMinValue:0.0 maxValue:v23 defaultValue:v24];
  v38 = v25;

  v26 = +[CSPersistentConfiguration sharedConfiguration];
  v39 = [v26 algorithmIntegerNumber:8 inArrayForKey:v31 withMinValue:0 maxValue:10000000 defaultValue:70000];

  v27 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v28) = 1120403456;
  LODWORD(v29) = 15.0;
  [v27 algorithmThresholdNumber:9 inArrayForKey:v31 withMinValue:0.0 maxValue:v28 defaultValue:v29];
  v40 = v30;

  CLKappaFeaturesAlgPeakDetectorMAP::setConfig(this, &v32);
}

double CLKappaFeaturesAlgPeakDetectorMAP::setConfig(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 32);
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  *(v3 + 60) = *(a2 + 44);
  v3[2] = v5;
  v3[3] = v6;
  v3[1] = v4;
  if (qword_1004567F8 != -1)
  {
    sub_10003601C();
  }

  v7 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_INFO))
  {
    v9 = *a2;
    v10 = *(a2 + 1);
    v11 = *(a2 + 4);
    v12 = *(a2 + 3);
    v13 = *(a2 + 8);
    v14 = *(a2 + 9);
    v15 = *(a2 + 10);
    v16 = *(a2 + 11);
    v17 = *(a2 + 6);
    v18 = *(a2 + 14);
    v19 = 134220288;
    v20 = v9;
    v21 = 2048;
    v22 = v10;
    v23 = 1024;
    v24 = v11;
    v25 = 2048;
    v26 = v12;
    v27 = 2048;
    v28 = v13;
    v29 = 2048;
    v30 = v14;
    v31 = 2048;
    v32 = v15;
    v33 = 2048;
    v34 = v16;
    v35 = 2048;
    v36 = v17;
    v37 = 2048;
    v38 = v18;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[MAP] config-1,%f,config-2,%llu,config-3,%d,config-4,%llu,config-5,%f,config-6,%f,config-7,%f,config-8,%f,config-9,%llu,config-10,%f", &v19, 0x62u);
  }

  return result;
}

void CLKappaFeaturesAlgPeakDetectorMAP::epochFinalize(CLKappaFeaturesAlgPeakDetectorMAP *this, uint64_t a2)
{
  v4 = *(*(this + 6) + 24);
  CSAccelPeakDetectorResult::detectPeaks(v4, v43, *(*(this + 4) + 16), *(*(this + 4) + 24) * 0.000001);
  __p = 0;
  v41 = 0;
  v42 = 0;
  sub_10002AA98(&__p, v44, v45, (v45 - v44) >> 2);
  __src = 0;
  v38 = 0;
  v39 = 0;
  v5 = v45 - v44;
  v6 = *(this + 4);
  if (*(v6 + 32) <= ((v45 - v44) >> 2))
  {
    v9 = v46;
    if ((v47 - v46) < 9)
    {
      v8 = 1;
    }

    else
    {
      v36 = a2;
      v10 = 0;
      v11 = 0;
      v8 = 1;
      do
      {
        v12 = v9[v10 + 1] - v9[v10];
        if (v11 >= v39)
        {
          v13 = __src;
          v14 = v11 - __src;
          v15 = (v11 - __src) >> 3;
          v16 = v15 + 1;
          if ((v15 + 1) >> 61)
          {
            sub_10000CD24();
          }

          v17 = v39 - __src;
          if ((v39 - __src) >> 2 > v16)
          {
            v16 = v17 >> 2;
          }

          if (v17 >= 0x7FFFFFFFFFFFFFF8)
          {
            v18 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v18 = v16;
          }

          if (v18)
          {
            sub_10000CDCC(&__src, v18);
          }

          v19 = v15;
          v20 = (8 * v15);
          v21 = &v20[-v19];
          *v20 = v12;
          v11 = (v20 + 1);
          memcpy(v21, v13, v14);
          v22 = __src;
          __src = v21;
          v38 = v11;
          v39 = 0;
          if (v22)
          {
            operator delete(v22);
          }
        }

        else
        {
          *v11 = v12;
          v11 += 8;
        }

        v38 = v11;
        v8 &= v12 > *(*(this + 4) + 40);
        v9 = v46;
        v23 = v10 + 2;
        ++v10;
      }

      while (v23 < (v47 - v46) >> 3);
      a2 = v36;
    }

    std::__sort<std::__less<unsigned long long,unsigned long long> &,unsigned long long *>();
    std::__sort<std::__less<float,float> &,float *>();
    v6 = *(this + 4);
    v24 = ((v38 - __src) >> 3);
    v25 = vcvtms_s32_f32(*(v6 + 48) * v24);
    v26 = vcvtps_s32_f32(*(v6 + 52) * v24);
    v27 = ((v41 - __p) >> 2);
    v28 = vcvtms_s32_f32(*(v6 + 56) * v27);
    if (v25 <= 1)
    {
      v25 = 1;
    }

    if (v26 <= 1)
    {
      v26 = 1;
    }

    v29 = *(__src + v26 - 1) - *(__src + v25 - 1);
    if (v28 <= 1)
    {
      v30 = 1;
    }

    else
    {
      v30 = v28;
    }

    v31 = vcvtps_s32_f32(*(v6 + 60) * v27);
    if (v31 <= 1)
    {
      v31 = 1;
    }

    v32 = *(__p + v31 - 1) - *(__p + v30 - 1);
    if (v29 <= *(v6 + 64))
    {
      v7 = (v32 <= *(v6 + 72)) & v8;
    }

    else
    {
      v7 = 0;
    }

    *(v6 + 104) = v29;
    *(v6 + 128) = v32;
    v5 = v45 - v44;
  }

  else
  {
    v7 = 0;
    *(v6 + 104) = 0;
    *(v6 + 128) = 0;
    v8 = 1;
  }

  *(v6 + 96) = v5 >> 2;
  *(v6 + 184) = v8;
  *(v6 + 88) = a2;
  *(v6 + 80) = v7;
  if ((v6 + 136) != &v46)
  {
    sub_100035BF0((v6 + 136), v46, v47, (v47 - v46) >> 3);
    v6 = *(this + 4);
  }

  if ((v6 + 160) != &v44)
  {
    sub_100035D1C((v6 + 160), v44, v45, (v45 - v44) >> 2);
  }

  v33 = [v4 count];
  if (v33)
  {
    v34 = [v4 objectAtIndex:0];
    v35 = [v4 objectAtIndex:v33 - 1];
    *(*(this + 4) + 112) = [v34 timestamp];
    *(*(this + 4) + 120) = [v35 timestamp];
  }

  if (__src)
  {
    v38 = __src;
    operator delete(__src);
  }

  if (__p)
  {
    v41 = __p;
    operator delete(__p);
  }

  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }
}

void sub_1000352A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  sub_100035E48(&a17);

  _Unwind_Resume(a1);
}

uint64_t CLKappaFeaturesAlgPeakDetectorMAP::getLowerPercentileIndex(CLKappaFeaturesAlgPeakDetectorMAP *this, unint64_t a2, float a3)
{
  v3 = vcvtms_s32_f32(a2 * a3);
  if (v3 <= 1)
  {
    v3 = 1;
  }

  return (v3 - 1);
}

uint64_t CLKappaFeaturesAlgPeakDetectorMAP::getUpperPercentileIndex(CLKappaFeaturesAlgPeakDetectorMAP *this, unint64_t a2, float a3)
{
  v3 = vcvtps_s32_f32(a2 * a3);
  if (v3 <= 1)
  {
    v3 = 1;
  }

  return (v3 - 1);
}

uint64_t CLKappaFeaturesAlgPeakDetectorMAP::epochReset(uint64_t this)
{
  v1 = *(this + 32);
  *(v1 + 144) = *(v1 + 136);
  *(v1 + 168) = *(v1 + 160);
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  *(v1 + 184) = 1;
  return this;
}

void *virtual thunk toCLKappaFeaturesAlgPeakDetectorMAP::epochReset(void *this)
{
  v1 = *(this + *(*this - 56) + 32);
  *(v1 + 144) = *(v1 + 136);
  *(v1 + 168) = *(v1 + 160);
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  *(v1 + 184) = 1;
  return this;
}

void sub_1000353CC(CLKappaAlgBlock *this)
{
  *this = off_100416D68;
  *(this + 8) = off_100417028;
  *(this + 9) = off_100417170;
  *(this + *(*this - 176)) = off_100417260;
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

  CLKappaAlgBlock::~CLKappaAlgBlock(this, off_1004172B8);
}

void sub_1000354C8(CLKappaAlgBlock *this)
{
  *this = off_100416D68;
  *(this + 8) = off_100417028;
  *(this + 9) = off_100417170;
  *(this + 10) = off_100417260;
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

  CLKappaAlgBlock::~CLKappaAlgBlock(this, off_1004172B8);

  operator delete();
}

void sub_1000355AC(uint64_t a1, uint64_t *a2)
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

void sub_1000355D8(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100416D68;
  *(v1 + 8) = off_100417028;
  *(v1 + 9) = off_100417170;
  *(v1 + 10) = off_100417260;
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

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_1004172B8);
}

void sub_1000356BC(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100416D68;
  *(v1 + 8) = off_100417028;
  *(v1 + 9) = off_100417170;
  *(v1 + 10) = off_100417260;
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

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_1004172B8);

  operator delete();
}

void sub_1000357B4(void *a1, uint64_t *a2)
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

void sub_1000357F4(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100416D68;
  *(v1 + 8) = off_100417028;
  *(v1 + 9) = off_100417170;
  *(v1 + 10) = off_100417260;
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

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_1004172B8);
}

void sub_1000358D8(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100416D68;
  *(v1 + 8) = off_100417028;
  *(v1 + 9) = off_100417170;
  *(v1 + 10) = off_100417260;
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

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_1004172B8);

  operator delete();
}

void sub_1000359D0(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100416D68;
  *(v1 + 8) = off_100417028;
  *(v1 + 9) = off_100417170;
  *(v1 + 10) = off_100417260;
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

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_1004172B8);
}

void sub_100035AB4(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100416D68;
  *(v1 + 8) = off_100417028;
  *(v1 + 9) = off_100417170;
  *(v1 + 10) = off_100417260;
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

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_1004172B8);

  operator delete();
}

void sub_100035BAC(id a1)
{
  qword_100456800 = os_log_create("com.apple.anomalydetectiond", "Alg");

  _objc_release_x1();
}

void *sub_100035BF0(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_10000F18C(v6, v10);
    }

    sub_10000CD24();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void *sub_100035D1C(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_1000228D0(v6, v10);
    }

    sub_10000CD24();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void *sub_100035E48(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_100035FA0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100417940;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100036260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  objc_destroyWeak((v23 + 40));

  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v24 - 72));

  _Unwind_Resume(a1);
}

void sub_1000362C4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (qword_1004568A8 != -1)
    {
      sub_10003A44C();
    }

    v3 = qword_1004568B0;
    if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_DEBUG))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "CoreAnalytics queryCompanion timeout", v11, 2u);
    }

    v4 = +[CSPersistentConfiguration sharedConfiguration];
    v5 = [v4 objectForKey:@"CSKappaCoreAnalyticsDailyInfo"];

    [v5 getBytes:WeakRetained + 2 length:84];
    v6 = [WeakRetained sendUserInfoToCoreAnalytics];
    [WeakRetained clearUserInfo];
    v7 = +[CSPersistentConfiguration sharedConfiguration];
    v8 = +[NSDate now];
    [v7 setObject:v8 forKey:@"CSKappaCoreAnalyticsLastSuccessfulUpload"];

    v9 = [NSData dataWithBytes:WeakRetained + 2 length:84];

    [WeakRetained[29] setObject:v9 forKey:@"CSKappaCoreAnalyticsDailyInfo"];
  }

  else
  {
    v6 = 0;
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, 1, v6);
  }
}

void sub_1000364C0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (qword_1004568A8 != -1)
    {
      sub_10003A44C();
    }

    v5 = qword_1004568B0;
    if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "CoreAnalytics query completion kTypeCASettings", buf, 2u);
    }

    [WeakRetained stopTimer];
    v6 = +[CSPersistentConfiguration sharedConfiguration];
    v7 = [v6 objectForKey:@"CSKappaCoreAnalyticsDailyInfo"];

    [v7 getBytes:WeakRetained + 2 length:84];
    [v3 getBytes:v14 length:8];
    *(WeakRetained + 18) = v14[4];
    *(WeakRetained + 20) = v14[5];
    *(WeakRetained + 15) = v15;
    v8 = [WeakRetained sendUserInfoToCoreAnalytics];
    [WeakRetained clearUserInfo];
    v9 = +[CSPersistentConfiguration sharedConfiguration];
    v10 = +[NSDate now];
    [v9 setObject:v10 forKey:@"CSKappaCoreAnalyticsLastSuccessfulUpload"];

    v11 = [NSData dataWithBytes:WeakRetained + 2 length:84];

    [WeakRetained[29] setObject:v11 forKey:@"CSKappaCoreAnalyticsDailyInfo"];
    v12 = *(a1 + 32);
    if (v12)
    {
      (*(v12 + 16))(v12, 1, v8);
    }
  }

  else
  {
    v13 = *(a1 + 32);
    if (v13)
    {
      (*(v13 + 16))(v13, 1, 0);
    }
  }
}

void sub_10003A2BC(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_10003A408(id a1)
{
  qword_1004568B0 = os_log_create("com.apple.anomalydetectiond", "CoreAnalytics");

  _objc_release_x1();
}

void CLKappaDeescalatorAutocorrelation::CLKappaDeescalatorAutocorrelation(CLKappaDeescalatorAutocorrelation *this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 36) = 1;
  *(this + 10) = 0;
  *(this + 44) = 0;
  *this = off_100417A28;
  *(this + 76) = 0;
  *(this + 10) = 0x1100000000;
  *(this + 45) = 0x1100000000;
  *(this + 49) = 0x1100000000;
  *(this + 492) = 0x1100000000;
  *(this + 991) = 0;
  *(this + 1984) = 0;
  *(this + 71) = 5;
  *(this + 12) = 1093494116;
  *(this + 52) = 67;
  *(this + 53) = 0;
}

uint64_t CLKappaDeescalatorAutocorrelation::prepareForNextEpoch(uint64_t this)
{
  *(this + 3964) = 0;
  *(this + 3968) = 0;
  return this;
}

uint64_t CLKappaDeescalatorAutocorrelation::setConfig(uint64_t result, int *a2)
{
  v2 = *a2;
  if ((*(result + 76) & 1) == 0)
  {
    *(result + 76) = 1;
  }

  *(result + 72) = v2;
  return result;
}

void CLKappaDeescalatorAutocorrelation::resetConfiguration(CLKappaDeescalatorAutocorrelation *this)
{
  v4 = [CSPersistentConfiguration configBaseKey:"DeescalatorACConfig" forFeatureMode:*(this + 36)];
  v2 = +[CSPersistentConfiguration sharedConfiguration];
  v3 = [v2 intThreshold:&CLKappaDeescalatorAutocorrelation::kConfigurationDefaults forKey:v4];
  if ((*(this + 76) & 1) == 0)
  {
    *(this + 76) = 1;
  }

  *(this + 18) = v3;
  *(this + 44) = CLKappaDeescalator::shouldForceNoop(this, "ForceAutoCorr");
  *(this + 10) = CLKappaDeescalator::shouldForceDeescalate(this, "ForceAutoCorr");
}

void CLKappaDeescalatorAutocorrelation::log(CLKappaDeescalatorAutocorrelation *this, uint64_t a2)
{
  if ((*(this + 76) & 1) == 0)
  {
    sub_100005BF0();
  }

  v4 = *(this + 991);
  v5 = *(this + 3968);
  v6 = *(this + 3969);
  if (qword_1004567F8 != -1)
  {
    sub_10003ADB0();
  }

  v7 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(this + 6);
    v9 = *(this + 36);
    v10 = *(this + 18);
    v11 = 134350592;
    v12 = a2;
    v13 = 1026;
    v14 = v8;
    v15 = 1026;
    v16 = v9;
    v17 = 1026;
    v18 = v10;
    v19 = 1026;
    v20 = v4;
    v21 = 1026;
    v22 = v6;
    v23 = 1026;
    v24 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[de-AC] summary,A,%{public}llu,B,%{public}u,mode,%{public}u,config-1,%{public}d,debug-1a,%{public}d,debug-1b,%{public}d,debug-1c,%{public}d", &v11, 0x30u);
  }
}

uint64_t CLKappaDeescalatorAutocorrelation::updateWithAnyCrashDetected(uint64_t this, char a2)
{
  v2 = *(this + 362);
  v3 = *(this + 364);
  v4 = *(this + 360);
  if (v4 + v2 >= v3)
  {
    v5 = *(this + 364);
  }

  else
  {
    v5 = 0;
  }

  *(this + v4 + v2 - v5 + 368) = a2;
  if (v3 <= v2)
  {
    if (v4 + 1 < v3)
    {
      LOWORD(v3) = 0;
    }

    *(this + 360) = v4 + 1 - v3;
  }

  else
  {
    *(this + 362) = v2 + 1;
  }

  return this;
}

unsigned __int16 *sub_10003A7A4(unsigned __int16 *result, _OWORD *a2)
{
  v2 = *(result + 1);
  v3 = *result + result[1];
  if (v3 < v2)
  {
    v2 = 0;
  }

  *&result[8 * (v3 - v2) + 4] = *a2;
  v4 = result[1];
  v5 = *(result + 1);
  if (v5 <= v4)
  {
    v6 = *result + 1;
    if (v6 < v5)
    {
      LOWORD(v5) = 0;
    }

    *result = v6 - v5;
  }

  else
  {
    result[1] = v4 + 1;
  }

  return result;
}

unsigned __int16 *sub_10003A80C(unsigned __int16 *result, _OWORD *a2)
{
  v2 = *(result + 1);
  v3 = *result + result[1];
  if (v3 < v2)
  {
    v2 = 0;
  }

  v4 = &result[104 * (v3 - v2)];
  *(v4 + 4) = *a2;
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[2];
  *(v4 + 12) = a2[1];
  *(v4 + 36) = v6;
  *(v4 + 28) = v5;
  *(v4 + 20) = v7;
  v8 = a2[7];
  v9 = a2[8];
  v10 = a2[6];
  *(v4 + 44) = a2[5];
  *(v4 + 68) = v9;
  *(v4 + 60) = v8;
  *(v4 + 52) = v10;
  v11 = a2[11];
  v12 = a2[12];
  v13 = a2[10];
  *(v4 + 76) = a2[9];
  *(v4 + 100) = v12;
  *(v4 + 92) = v11;
  *(v4 + 84) = v13;
  v14 = result[1];
  v15 = *(result + 1);
  if (v15 <= v14)
  {
    v16 = *result + 1;
    if (v16 < v15)
    {
      LOWORD(v15) = 0;
    }

    *result = v16 - v15;
  }

  else
  {
    result[1] = v14 + 1;
  }

  return result;
}

uint64_t CLKappaDeescalatorAutocorrelation::updateWithHighSpeedCrash(uint64_t this, char a2)
{
  v2 = *(this + 3938);
  v3 = *(this + 3940);
  v4 = *(this + 3936);
  if (v4 + v2 >= v3)
  {
    v5 = *(this + 3940);
  }

  else
  {
    v5 = 0;
  }

  *(this + v4 + v2 - v5 + 3944) = a2;
  if (v3 <= v2)
  {
    if (v4 + 1 < v3)
    {
      LOWORD(v3) = 0;
    }

    *(this + 3936) = v4 + 1 - v3;
  }

  else
  {
    *(this + 3938) = v2 + 1;
  }

  return this;
}

uint64_t CLKappaDeescalatorAutocorrelation::getAutocorrelationStats(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (!a1[1])
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    if (*(sub_10003A9A4(a1, v4) + 8) == 1 && ((*(sub_10003A9A4(a1, v4) + 9) & 1) != 0 || (*sub_10002E0A8(a2, v4) & 1) == 0))
    {
      v5 = (v5 + 1);
    }

    ++v4;
  }

  while (v4 < a1[1]);
  return v5;
}

uint64_t sub_10003A9A4(unsigned __int16 *a1, unint64_t a2)
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
      v12 = "const T &CMQueue<CLKappaFeaturesAlgGravityAutoCorrelationOutput>::operator[](const size_t) const [T = CLKappaFeaturesAlgGravityAutoCorrelationOutput]";
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

  return &a1[8 * (v5 - v4) + 4];
}

uint64_t CLKappaDeescalatorAutocorrelation::getAirbagDetectedStats(unsigned __int16 *a1)
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

uint64_t sub_10003AB3C(unsigned __int16 *a1, unint64_t a2)
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
      v12 = "const T &CMQueue<CLKappaFeaturesAlgBaroOutput>::operator[](const size_t) const [T = CLKappaFeaturesAlgBaroOutput]";
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

  return &a1[104 * (v5 - v4) + 4];
}

uint64_t CLKappaDeescalatorAutocorrelation::onEvaluateAtSecondDeescalationOpportunity(CLKappaDeescalatorAutocorrelation *this)
{
  *(this + 3968) = CLKappaDeescalatorAutocorrelation::getAirbagDetectedStats(this + 196);
  *(this + 991) = CLKappaDeescalatorAutocorrelation::getAutocorrelationStats(this + 40, this + 180);
  HighSpeedDetectedStats = CLKappaDeescalator::getHighSpeedDetectedStats(this + 1968);
  *(this + 3969) = HighSpeedDetectedStats;
  if ((*(this + 76) & 1) == 0)
  {
    sub_100005BF0();
  }

  if (*(this + 991) < *(this + 18) || ((*(this + 3968) | HighSpeedDetectedStats) & 1) != 0)
  {
    return 1;
  }

  else
  {
    return 4;
  }
}

_DWORD *CLKappaDeescalatorAutocorrelation::onPreviousEpochMadeDecision(_DWORD *this)
{
  this[20] = 0;
  this[90] = 0;
  this[98] = 0;
  this[984] = 0;
  return this;
}

void sub_10003AD18(void **a1)
{
  *a1 = off_100417A28;
  CLKappaDeescalator::~CLKappaDeescalator(a1);

  operator delete();
}

void sub_10003AD6C(id a1)
{
  qword_100456800 = os_log_create("com.apple.anomalydetectiond", "Alg");

  _objc_release_x1();
}

double CLKappaInferencesAlgSevereCrashResult::reset(CLKappaInferencesAlgSevereCrashResult *this)
{
  *(this + 8) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 46) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 70) = 0;
  result = 0.0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 141) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 185) = 0u;
  *(this + 120) = 0;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 252) = 0;
  *(this + 244) = 0;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 286) = 0;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 321) = 0u;
  *(this + 85) = 0;
  return result;
}

void CLKappaInferencesAlgSevereCrashResult::log(CLKappaInferencesAlgSevereCrashResult *this)
{
  if (qword_1004567F8 != -1)
  {
    sub_10003FC58();
  }

  v2 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 4);
    v4 = *(this + 5);
    v5 = *(this + 48);
    v6 = *(this + 49);
    v7 = *(this + 51);
    v8 = *(this + 52);
    v9 = *(this + 53);
    v10 = *(this + 4);
    v11 = *(this + 5);
    v12 = *(this + 6);
    v13 = *(this + 7);
    v14 = *(this + 56);
    v15 = *(this + 57);
    v16 = *(this + 58);
    v17 = *(this + 62);
    v18 = *(this + 63);
    v19 = *(this + 64);
    v20 = *(this + 65);
    v21 = *(this + 66);
    v22 = *(this + 67);
    v23 = *(this + 68);
    v24 = *(this + 69);
    v25 = *(this + 70);
    v26 = *(this + 71);
    v27 = *(this + 72);
    v28 = *(this + 73);
    v29 = *(this + 74);
    v30 = *(this + 75);
    v31 = *(this + 76);
    v32 = *(this + 77);
    v33 = *(this + 156);
    v34 = *(this + 86);
    *buf = 134356992;
    v36 = v3;
    v37 = 2050;
    v38 = v4;
    v39 = 1026;
    v40 = v5;
    v41 = 1026;
    v42 = v6;
    v43 = 1026;
    v44 = v7;
    v45 = 1026;
    v46 = v8;
    v47 = 1026;
    v48 = v9;
    v49 = 2050;
    v50 = v10;
    v51 = 2050;
    v52 = v11;
    v53 = 2050;
    v54 = v12;
    v55 = 2050;
    v56 = v13;
    v57 = 1026;
    v58 = v14;
    v59 = 1026;
    v60 = v15;
    v61 = 1026;
    v62 = v16;
    v63 = 1026;
    v64 = v17;
    v65 = 1026;
    v66 = v18;
    v67 = 1026;
    v68 = v19;
    v69 = 1026;
    v70 = v20;
    v71 = 1026;
    v72 = v21;
    v73 = 1026;
    v74 = v22;
    v75 = 1026;
    v76 = v23;
    v77 = 1026;
    v78 = v24;
    v79 = 1026;
    v80 = v25;
    v81 = 1026;
    v82 = v26;
    v83 = 1026;
    v84 = v27;
    v85 = 1026;
    v86 = v28;
    v87 = 1026;
    v88 = v29;
    v89 = 1026;
    v90 = v30;
    v91 = 1026;
    v92 = v31;
    v93 = 1026;
    v94 = v32;
    v95 = 1026;
    v96 = v33;
    v97 = 1026;
    v98 = v34;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[SC] AlgBlock summary,A,%{public}llu,B,%{public}llu,C,%{public}d,D,%{public}d,E,%{public}d,F,%{public}d,G,%{public}d,config-1,%{public}f,config-2,%{public}f,config-3,%{public}f,config-4,%{public}f,debug-1a,%{public}u,debug-1b,%{public}u,debug-1c,%{public}u,debug-2a,%{public}u,debug-2b,%{public}u,debug-2c,%{public}u,debug-2d,%{public}u,debug-2e,%{public}u,debug-2f,%{public}u,debug-2g,%{public}u,debug-2h,%{public}u,debug-2i,%{public}u,debug-2j,%{public}u,debug-2k,%{public}u,debug-2l,%{public}u,debug-2m,%{public}u,debug-2n,%{public}u,debug-2o,%{public}u,debug-2p,%{public}u,debug-2q,%{public}u,debug-2r,%{public}u", buf, 0xDAu);
  }
}

void CLKappaInferencesAlgSevereCrash::CLKappaInferencesAlgSevereCrash(CLKappaInferencesAlgSevereCrash *this, uint64_t *a2)
{
  CLKappaAlgBlock::CLKappaAlgBlock(this, a2 + 1);
  v4 = *a2;
  *v5 = *a2;
  *(this + *(v4 - 152)) = a2[6];
  *(this + *(*this - 160)) = a2[7];
  *(this + *(*this - 168)) = a2[8];
  *(this + *(*this - 176)) = a2[9];
  *(this + 28) = 0u;
  *(this + 536) = 0;
  *(this + 44) = 0u;
  *(this + 60) = 0u;
  *(this + 76) = 0u;
  *(this + 92) = 0u;
  *(this + 108) = 0u;
  *(this + 124) = 0u;
  *(this + 140) = 0u;
  *(this + 156) = 0u;
  *(this + 172) = 0u;
  *(this + 188) = 0u;
  *(this + 204) = 0u;
  *(this + 220) = 0u;
  *(this + 236) = 0u;
  *(this + 252) = 0u;
  *(this + 268) = 0u;
  *(this + 284) = 0u;
  *(this + 300) = 0u;
  *(this + 316) = 0u;
  *(this + 332) = 0u;
  *(this + 348) = 0u;
  *(this + 364) = 0u;
  *(this + 380) = 0u;
  *(this + 396) = 0u;
  *(this + 412) = 0u;
  *(this + 428) = 0u;
  *(this + 444) = 0u;
  *(this + 460) = 0u;
  *(this + 476) = 0u;
  *(this + 492) = 0u;
  *(this + 508) = 0u;
  *(this + 521) = 0;
  *(this + 68) = 0;
  *(this + 69) = 0x500000000;
  *(this + 568) = 0;
  *(this + 572) = 0;
  *(this + 579) = 0;
  sub_10003E6B4();
}

void sub_10003B858(_Unwind_Exception *a1)
{
  v4 = *(v1 + 65);
  if (v4)
  {
    sub_100009A48(v4);
  }

  v5 = 0;
  while (1)
  {
    v6 = *(v1 + v5 + 504);
    if (v6)
    {
      sub_100009A48(v6);
    }

    v5 -= 16;
    if (v5 == -240)
    {
      v7 = *(v1 + 33);
      if (v7)
      {
        sub_100009A48(v7);
      }

      v8 = *(v1 + 31);
      if (v8)
      {
        sub_100009A48(v8);
      }

      v9 = *(v1 + 29);
      if (v9)
      {
        sub_100009A48(v9);
      }

      v10 = *(v1 + 27);
      if (v10)
      {
        sub_100009A48(v10);
      }

      v11 = *(v1 + 25);
      if (v11)
      {
        sub_100009A48(v11);
      }

      v12 = *(v1 + 23);
      if (v12)
      {
        sub_100009A48(v12);
      }

      v13 = *(v1 + 21);
      if (v13)
      {
        sub_100009A48(v13);
      }

      v14 = *(v1 + 19);
      if (v14)
      {
        sub_100009A48(v14);
      }

      v15 = *(v1 + 17);
      if (v15)
      {
        sub_100009A48(v15);
      }

      v16 = *(v1 + 15);
      if (v16)
      {
        sub_100009A48(v16);
      }

      v17 = *(v1 + 13);
      if (v17)
      {
        sub_100009A48(v17);
      }

      v18 = *(v1 + 11);
      if (v18)
      {
        sub_100009A48(v18);
      }

      v19 = *(v1 + 9);
      if (v19)
      {
        sub_100009A48(v19);
      }

      v20 = *(v1 + 7);
      if (v20)
      {
        sub_100009A48(v20);
      }

      v21 = *(v1 + 5);
      if (v21)
      {
        sub_100009A48(v21);
      }

      CLKappaAlgBlock::~CLKappaAlgBlock(v1, (v2 + 8));
      _Unwind_Resume(a1);
    }
  }
}

char **sub_10003B98C@<X0>(uint64_t a1@<X0>, char ***a2@<X8>)
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

uint64_t CLKappaInferencesAlgSevereCrash::setDeescalatorsMode(uint64_t this)
{
  v1 = 0;
  v2 = *(this + 24);
  do
  {
    *(*(this + 272 + v1) + 36) = v2;
    v1 += 16;
  }

  while (v1 != 240);
  return this;
}

void CLKappaInferencesAlgSevereCrash::CLKappaInferencesAlgSevereCrash(CLKappaInferencesAlgSevereCrash *this)
{
  *this = off_100411FE8;
  *(this + 73) = off_100412090;
  *(this + 74) = off_100412158;
  *(this + 75) = off_100412210;
  CLKappaAlgBlock::CLKappaAlgBlock(this, off_1004180C8);
  *v1 = off_100417B78;
  *(v1 + 584) = off_100417E38;
  *(v1 + 592) = off_100417F80;
  *(v1 + 600) = off_100418070;
  *(v1 + 536) = 0;
  *(v1 + 44) = 0u;
  *(v1 + 60) = 0u;
  *(v1 + 76) = 0u;
  *(v1 + 92) = 0u;
  *(v1 + 108) = 0u;
  *(v1 + 124) = 0u;
  *(v1 + 140) = 0u;
  *(v1 + 156) = 0u;
  *(v1 + 172) = 0u;
  *(v1 + 188) = 0u;
  *(v1 + 204) = 0u;
  *(v1 + 220) = 0u;
  *(v1 + 236) = 0u;
  *(v1 + 252) = 0u;
  *(v1 + 521) = 0;
  *(v1 + 28) = 0u;
  *(v1 + 268) = 0u;
  *(v1 + 284) = 0u;
  *(v1 + 300) = 0u;
  *(v1 + 316) = 0u;
  *(v1 + 332) = 0u;
  *(v1 + 348) = 0u;
  *(v1 + 364) = 0u;
  *(v1 + 380) = 0u;
  *(v1 + 396) = 0u;
  *(v1 + 412) = 0u;
  *(v1 + 428) = 0u;
  *(v1 + 444) = 0u;
  *(v1 + 460) = 0u;
  *(v1 + 476) = 0u;
  *(v1 + 492) = 0u;
  *(v1 + 508) = 0u;
  *(v1 + 544) = 0;
  *(v1 + 552) = 0x500000000;
  *(v1 + 568) = 0;
  *(v1 + 572) = 0;
  *(v1 + 579) = 0;
  sub_10003E6B4();
}

void sub_10003C18C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 65);
  if (v3)
  {
    sub_100009A48(v3);
  }

  v4 = 0;
  while (1)
  {
    v5 = *(v1 + v4 + 504);
    if (v5)
    {
      sub_100009A48(v5);
    }

    v4 -= 16;
    if (v4 == -240)
    {
      v6 = *(v1 + 33);
      if (v6)
      {
        sub_100009A48(v6);
      }

      v7 = *(v1 + 31);
      if (v7)
      {
        sub_100009A48(v7);
      }

      v8 = *(v1 + 29);
      if (v8)
      {
        sub_100009A48(v8);
      }

      v9 = *(v1 + 27);
      if (v9)
      {
        sub_100009A48(v9);
      }

      v10 = *(v1 + 25);
      if (v10)
      {
        sub_100009A48(v10);
      }

      v11 = *(v1 + 23);
      if (v11)
      {
        sub_100009A48(v11);
      }

      v12 = *(v1 + 21);
      if (v12)
      {
        sub_100009A48(v12);
      }

      v13 = *(v1 + 19);
      if (v13)
      {
        sub_100009A48(v13);
      }

      v14 = *(v1 + 17);
      if (v14)
      {
        sub_100009A48(v14);
      }

      v15 = *(v1 + 15);
      if (v15)
      {
        sub_100009A48(v15);
      }

      v16 = *(v1 + 13);
      if (v16)
      {
        sub_100009A48(v16);
      }

      v17 = *(v1 + 11);
      if (v17)
      {
        sub_100009A48(v17);
      }

      v18 = *(v1 + 9);
      if (v18)
      {
        sub_100009A48(v18);
      }

      v19 = *(v1 + 7);
      if (v19)
      {
        sub_100009A48(v19);
      }

      v20 = *(v1 + 5);
      if (v20)
      {
        sub_100009A48(v20);
      }

      CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_1004180C8);
      _Unwind_Resume(a1);
    }
  }
}

void CLKappaInferencesAlgSevereCrash::resetConfiguration(CLKappaInferencesAlgSevereCrash *this)
{
  v20 = [CSPersistentConfiguration configBaseKey:"InferencesAlgSCConfig" forFeatureMode:*(this + 24)];
  v2 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v3) = 3.0;
  LODWORD(v4) = 15.0;
  LODWORD(v5) = 1142308864;
  [v2 algorithmThresholdNumber:0 inArrayForKey:v20 withMinValue:v3 maxValue:v5 defaultValue:v4];
  LODWORD(v21) = v6;
  LODWORD(v7) = 1114636288;
  LODWORD(v8) = 3.0;
  LODWORD(v9) = 1142308864;
  [v2 algorithmThresholdNumber:1 inArrayForKey:v20 withMinValue:v8 maxValue:v9 defaultValue:v7];
  DWORD1(v21) = v10;
  LODWORD(v11) = 10.0;
  LODWORD(v12) = 1142308864;
  [v2 algorithmThresholdNumber:2 inArrayForKey:v20 withMinValue:0.0 maxValue:v12 defaultValue:v11];
  DWORD2(v21) = v13;
  LODWORD(v14) = 3.0;
  LODWORD(v15) = 25.0;
  LODWORD(v16) = 1142308864;
  [v2 algorithmThresholdNumber:3 inArrayForKey:v20 withMinValue:v14 maxValue:v16 defaultValue:v15];
  HIDWORD(v21) = v17;
  for (i = 272; i != 512; i += 16)
  {
    (*(**(this + i) + 16))(*(this + i));
  }

  v19 = [v2 objectForKey:@"ForceLowSenseDetected"];
  if (v19)
  {
    *(this + 275) = [v2 BOOLForKey:@"ForceLowSenseDetected"] | 0x100;
  }

  CLKappaInferencesAlgSevereCrash::setConfig(this, &v21);
}

double CLKappaInferencesAlgSevereCrash::setConfig(uint64_t a1, _OWORD *a2)
{
  *(*(a1 + 512) + 16) = *a2;
  if (qword_1004567F8 != -1)
  {
    sub_10003FC58();
  }

  v3 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 512);
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
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[SC] config, %f, %f, %f, %f", &v10, 0x2Au);
  }

  return result;
}

_DWORD *CLKappaInferencesAlgSevereCrash::reset(CLKappaInferencesAlgSevereCrash *this)
{
  (*(**(this + 64) + 24))(*(this + 64));
  if (*(this + 536) == 1)
  {
    *(this + 536) = 0;
  }

  *(this + 7) = 0;
  v2 = this + 28;
  *(v2 + 129) = 0;
  *(v2 + 260) = 0;
  result = CLKappaDeescalationDecision::reset(v2);
  *(v2 + 131) = 0;
  v2[540] = 0;
  return result;
}

void CLKappaInferencesAlgSevereCrash::epochFinalize(CLKappaInferencesAlgSevereCrash *this, uint64_t a2)
{
  v4 = (this + 28);
  if (CLKappaDeescalator::isDecidedForOption(*(this + 7)))
  {
    for (i = 0; i != 240; i += 16)
    {
      CLKappaDeescalator::previousEpochMadeDecision(*(this + i + 272));
    }

    if (*(this + 536) == 1)
    {
      *(this + 536) = 0;
    }
  }

  if (qword_1004567F8 != -1)
  {
    sub_10003FC58();
  }

  v6 = qword_100456800;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v104 = *(this + 581);
    v105 = *(this + 577);
    v106 = *(this + 578);
    v108 = *(this + 579);
    v109 = *(this + 580);
    v110 = *(this + 545);
    v111 = *(this + 546);
    v112 = *(this + 547);
    isDecidedForOption = CLKappaDeescalator::isDecidedForOption(*(this + 7));
    shouldDeescalateForOption = CLKappaDeescalator::shouldDeescalateForOption(*v4);
    v102 = CLKappaDeescalator::isDecidedForOption(*(*(this + 18) + 24));
    v101 = CLKappaDeescalator::isDecidedForOption(*(*(this + 10) + 24));
    v7 = CLKappaDeescalator::isDecidedForOption(*(*(this + 6) + 24));
    v8 = CLKappaDeescalator::isDecidedForOption(*(*(this + 20) + 24));
    v9 = CLKappaDeescalator::isDecidedForOption(*(*(this + 24) + 24));
    v10 = CLKappaDeescalator::isDecidedForOption(*(*(this + 26) + 24));
    v11 = CLKappaDeescalator::isDecidedForOption(*(*(this + 28) + 24));
    v12 = CLKappaDeescalator::isDecidedForOption(*(*(this + 30) + 24));
    v13 = CLKappaDeescalator::isDecidedForOption(*(*(this + 32) + 24));
    v14 = *(this + 582);
    *buf = 67113984;
    v115 = v104;
    v116 = 1024;
    *v117 = v105;
    *&v117[4] = 1024;
    *&v117[6] = v106;
    v118 = 1024;
    v119 = v108;
    v120 = 1024;
    v121 = v109;
    v122 = 1024;
    v123 = v110;
    v124 = 1024;
    v125 = v111;
    v126 = 1024;
    v127 = v112;
    v128 = 1024;
    v129 = isDecidedForOption;
    v130 = 1024;
    v131 = shouldDeescalateForOption;
    v132 = 1024;
    v133 = v102;
    v134 = 1024;
    v135 = v101;
    v136 = 1024;
    v137 = v7;
    v138 = 1024;
    v139 = v8;
    v140 = 1024;
    v141 = v9;
    v142 = 1024;
    v143 = v10;
    v144 = 1024;
    v145 = v11;
    v146 = 1024;
    v147 = v12;
    v148 = 1024;
    v149 = v13;
    v150 = 1024;
    v151 = v14;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[SC] force %d %d %d %d %d is %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d", buf, 0x7Au);
  }

  CLKappaDeescalationDecision::reset(v4);
  if (*(this + 545))
  {
    v15 = 1;
  }

  else
  {
    v15 = *(this + 546);
  }

  if (*(this + 548))
  {
    v16 = 1;
  }

  else
  {
    v16 = *(this + 549);
  }

  v17 = v16 & 1;
  v18 = *(this + 277);
  v19 = *(this + 139);
  v20 = *(this + 276);
  if (v20 + v18 >= v19)
  {
    v21 = *(this + 139);
  }

  else
  {
    v21 = 0;
  }

  *(this + v20 + v18 - v21 + 560) = v17;
  if (v19 <= v18)
  {
    if (v20 + 1 < v19)
    {
      LOWORD(v19) = 0;
    }

    *(this + 276) = v20 + 1 - v19;
  }

  else
  {
    *(this + 277) = v18 + 1;
  }

  v113 = +[CSPersistentConfiguration sharedConfiguration];
  v22 = [v113 getBooleanDefault:@"KappaForceEarlyCrashInSevereBlock"];
  if ((v22 & 0x100) != 0 && (v22 & 1) != 0 && (*(this + 536) & 1) == 0 && (*(this + 576) & 1) == 0)
  {
    if (qword_1004567F8 != -1)
    {
      sub_10003FC6C();
    }

    v48 = qword_100456800;
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEBUG, "[SC] punch thru forcing early crash decision", buf, 2u);
    }

    *(this + 66) = a2;
    *(this + 536) = 1;
    *(this + 576) = 1;
  }

  else if ((v15 & 1) == 0)
  {
    LOBYTE(v24) = 0;
    goto LABEL_55;
  }

  *(this + 143) = 0;
  if (*(this + 277))
  {
    v23 = 0;
    do
    {
      v24 = *sub_10002E0A8(this + 276, v23);
      if (v24 == 1)
      {
        break;
      }

      ++v23;
    }

    while (v23 < *(this + 277));
  }

  else
  {
    LOBYTE(v24) = 0;
  }

  if (*(this + 551) == 1)
  {
    v24 = *(this + 550);
    if (v24 == 1)
    {
      if (qword_1004567F8 != -1)
      {
        sub_10003FC6C();
      }

      v25 = qword_100456800;
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_47;
      }

      *buf = 0;
      v26 = "[SC] force low sense high";
    }

    else
    {
      if (qword_1004567F8 != -1)
      {
        sub_10003FC6C();
      }

      v25 = qword_100456800;
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_47;
      }

      *buf = 0;
      v26 = "[SC] force low sense low";
    }

    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, v26, buf, 2u);
LABEL_47:
  }

  sub_100004EB4(*(this + 22), v24);
  v27 = 0;
  *(this + 66) = a2;
  *(this + 536) = 1;
  do
  {
    CLKappaDeescalator::earlyCrashDetected(*(this + v27 + 272), a2);
    v27 += 16;
  }

  while (v27 != 240);
  if (qword_1004567F8 != -1)
  {
    sub_10003FC6C();
  }

  v28 = qword_100456800;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109376;
    v115 = v15 & 1;
    v116 = 2048;
    *v117 = a2;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "[SC] anyCrashDetectorDecision:%d, crashTimestamp:%llu", buf, 0x12u);
  }

LABEL_55:
  CLKappaDeescalatorAutocorrelation::updateWithAnyCrashDetected(*(this + 6), v15 & 1);
  v29 = *(this + 536);
  if (v29 != 1)
  {
    goto LABEL_112;
  }

  v30 = *(this + 66);
  CLKappaDeescalatorStaticGps::updateCountTotal(*(this + 16));
  v31 = (a2 - v30) * 0.000001;
  v32 = *(this + 64);
  if (v32[6] < v31)
  {
    CLKappaDeescalatorMovingGps::updateCountTotal(*(this + 8));
    v32 = *(this + 64);
  }

  if (v32[4] >= v31)
  {
    goto LABEL_112;
  }

  if (v32[5] <= v31)
  {
    v40 = 0;
    while (1)
    {
      v41 = CLKappaDeescalator::evaluateAtBoundary(*(this + v40 + 272));
      CLKappaDeescalationDecision::update(v4, v41);
      if (v41 == 3)
      {
        break;
      }

      if (v41 == 2)
      {
        if (qword_1004567F8 != -1)
        {
          sub_10003FC6C();
        }

        v42 = qword_100456800;
        if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "two-level feed is escalation candidate", buf, 2u);
        }

        v43 = 1;
        *(*(this + 64) + 156) = 1;
LABEL_93:
        sub_100004EBC(*(this + 22), v43);
      }

      v40 += 16;
      if (v40 == 240)
      {
        if (*(this + 576) == 1 && (CLKappaDeescalator::isDecidedForOption(*v4) & 1) == 0)
        {
          CLKappaDeescalationDecision::update(v4, 6);
        }

        v45 = CLKappaDeescalator::isDecidedForOption(*v4);
        CLKappaDeescalator::raiseUnless(v45, "[SC] Reached boundary condition but made no decision", v46);
        v47 = 1;
        goto LABEL_113;
      }
    }

    if (qword_1004567F8 != -1)
    {
      sub_10003FC6C();
    }

    v44 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEBUG, "two-level feed is no longer escalation candidate", buf, 2u);
    }

    v43 = 0;
    goto LABEL_93;
  }

  if (!*(this + 143))
  {
    for (j = 0; j != 240; j += 16)
    {
      v34 = CLKappaDeescalator::evaluateAtMinHoldDuration(*(this + j + 272));
      CLKappaDeescalationDecision::update(v4, v34);
    }

    *(this + 143) = 1;
  }

  for (k = 0; k != 240; k += 16)
  {
    v36 = CLKappaDeescalator::evaluateBetweenMinAndMaxHoldDuration(*(this + k + 272));
    CLKappaDeescalationDecision::update(v4, v36);
    if (v36 == 3)
    {
      if (qword_1004567F8 != -1)
      {
        sub_10003FC6C();
      }

      v39 = qword_100456800;
      if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "two-level feed is no longer escalation candidate", buf, 2u);
      }

      v38 = 0;
    }

    else
    {
      if (v36 != 2)
      {
        continue;
      }

      if (qword_1004567F8 != -1)
      {
        sub_10003FC6C();
      }

      v37 = qword_100456800;
      if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "two-level feed is escalation candidate", buf, 2u);
      }

      v38 = 1;
      *(*(this + 64) + 156) = 1;
    }

    sub_100004EBC(*(this + 22), v38);
  }

  v49 = *(this + 64);
  if ((*(v49 + 28) < v31 || *(v49 + 156) == 1) && *(this + 143) == 1)
  {
    for (m = 0; m != 240; m += 16)
    {
      v51 = CLKappaDeescalator::evaluateAtSecondDeescalationOpportunity(*(this + m + 272));
      CLKappaDeescalationDecision::update(v4, v51);
    }

    *(this + 143) = 2;
  }

  if (*(this + 580) == 1)
  {
    CLKappaDeescalationDecision::update(v4, 4);
    v47 = 0;
    *(this + 580) = 0;
    goto LABEL_113;
  }

LABEL_112:
  v47 = 0;
LABEL_113:
  if (CLKappaDeescalator::isDecidedForOption(*v4))
  {
    if (*(this + 581) == 1)
    {
      CLKappaDeescalationDecision::update(v4, 6);
      *(this + 581) = 0;
    }

    if (sub_10003D6C0(v4))
    {
      for (n = 0; n != 240; n += 16)
      {
        v53 = CLKappaDeescalator::evaluateFollowingEscalation(*(this + n + 272));
        CLKappaDeescalationDecision::update(v4, v53);
      }
    }

    v54 = sub_10003D6C0(v4);
    if (v54)
    {
      v55 = 0;
    }

    else
    {
      v55 = *(*(this + 64) + 156);
    }

    if (qword_1004567F8 != -1)
    {
      sub_10003FC6C();
    }

    v56 = qword_100456800;
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67240448;
      v115 = v54;
      v116 = 1026;
      *v117 = v55 & 1;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "[SC] de %{public}d suppress %{public}d", buf, 0xEu);
    }
  }

  else
  {
    v55 = 0;
    LOBYTE(v54) = 0;
  }

  v57 = *(this + 64);
  *(v57 + 32) = a2;
  *(v57 + 48) = v54;
  if (*(this + 536) == 1)
  {
    v58 = *(this + 66);
  }

  else
  {
    v58 = 0;
  }

  *(v57 + 40) = v58;
  *(v57 + 49) = v29;
  *(v57 + 50) = *(this + 568);
  *(*(this + 64) + 51) = CLKappaDeescalator::isDecidedForOption(*(this + 7));
  v59 = CLKappaDeescalator::shouldDeescalateForOption(*(this + 7));
  v60 = *(this + 64);
  *(v60 + 52) = v59;
  *(v60 + 148) = CLKappaDeescalator::fFaultCounter;
  *(v60 + 77) = v47;
  *(v60 + 53) = v55 & 1;
  *(v60 + 56) = *(this + 545);
  *(v60 + 60) = *(this + 549);
  *(v60 + 61) = v24;
  *(*(this + 64) + 152) = sub_100004ECC(*(this + 22));
  *(*(this + 64) + 62) = CLKappaDeescalator::shouldDeescalateForOption(*(*(this + 4) + 24));
  *(*(this + 64) + 63) = CLKappaDeescalator::shouldDeescalateForOption(*(*(this + 6) + 24));
  *(*(this + 64) + 64) = CLKappaDeescalator::shouldDeescalateForOption(*(*(this + 8) + 24));
  *(*(this + 64) + 65) = CLKappaDeescalator::shouldDeescalateForOption(*(*(this + 10) + 24));
  *(*(this + 64) + 66) = CLKappaDeescalator::shouldDeescalateForOption(*(*(this + 12) + 24));
  *(*(this + 64) + 67) = CLKappaDeescalator::shouldDeescalateForOption(*(*(this + 14) + 24));
  *(*(this + 64) + 68) = CLKappaDeescalator::shouldDeescalateForOption(*(*(this + 16) + 24));
  *(*(this + 64) + 69) = CLKappaDeescalator::shouldDeescalateForOption(*(*(this + 18) + 24));
  *(*(this + 64) + 70) = CLKappaDeescalator::shouldDeescalateForOption(*(*(this + 20) + 24));
  *(*(this + 64) + 71) = CLKappaDeescalator::shouldDeescalateForOption(*(*(this + 22) + 24));
  *(*(this + 64) + 72) = CLKappaDeescalator::shouldDeescalateForOption(*(*(this + 24) + 24));
  *(*(this + 64) + 73) = CLKappaDeescalator::shouldDeescalateForOption(*(*(this + 26) + 24));
  *(*(this + 64) + 74) = CLKappaDeescalator::shouldDeescalateForOption(*(*(this + 28) + 24));
  *(*(this + 64) + 75) = CLKappaDeescalator::shouldDeescalateForOption(*(*(this + 30) + 24));
  v61 = CLKappaDeescalator::shouldDeescalateForOption(*(*(this + 32) + 24));
  v62 = *(this + 64);
  *(v62 + 76) = v61;
  v63.i32[0] = *(*(this + 4) + 28);
  v63.i32[1] = *(*(this + 6) + 28);
  v63.i32[2] = *(*(this + 8) + 28);
  v63.i32[3] = *(*(this + 10) + 28);
  v64.i64[0] = 0x100000001;
  v64.i64[1] = 0x100000001;
  *(v62 + 80) = vbicq_s8(v64, vceqzq_s32(v63));
  v63.i32[0] = *(*(this + 12) + 28);
  v63.i32[1] = *(*(this + 14) + 28);
  v63.i32[2] = *(*(this + 16) + 28);
  v63.i32[3] = *(*(this + 18) + 28);
  *(v62 + 96) = vbicq_s8(v64, vceqzq_s32(v63));
  *(v62 + 112) = *(*(this + 20) + 28) != 0;
  v63.i32[0] = *(*(this + 24) + 28);
  v63.i32[1] = *(*(this + 26) + 28);
  v63.i32[2] = *(*(this + 28) + 28);
  v63.i32[3] = *(*(this + 30) + 28);
  *(v62 + 120) = vbicq_s8(v64, vceqzq_s32(v63));
  *(v62 + 140) = vbic_s8(0x100000001, vceqz_s32(*(*(this + 32) + 28)));
  v65 = *(this + 22);
  v66 = *(v65 + 28);
  *(v62 + 116) = 0;
  *(v62 + 136) = 0;
  if (v66)
  {
    v67 = sub_100005308(v65);
    if (v67 == 1)
    {
      *(*(this + 64) + 116) = 1;
    }

    else if (v67 == 2)
    {
      *(*(this + 64) + 136) = 1;
    }
  }

  v68 = *(this + 6);
  v69 = *(v68 + 3964);
  v70 = *(v68 + 3968);
  v71 = *(this + 64);
  *(v71 + 288) = v69;
  *(v71 + 292) = v70;
  v72 = *(this + 8);
  v73 = *(v72 + 76);
  LODWORD(v72) = *(v72 + 84);
  *(v71 + 168) = v73;
  *(v71 + 172) = v72;
  v74 = *(this + 10);
  *(v71 + 272) = vzip2q_s32(*(v74 + 164), vextq_s8(*(v74 + 164), *(v74 + 164), 8uLL));
  *(v71 + 264) = *(v74 + 180);
  v75 = *(this + 12);
  v76 = *(v75 + 152);
  LODWORD(v75) = *(v75 + 153);
  *(v71 + 296) = v76;
  *(v71 + 300) = v75;
  *(v71 + 304) = *(*(this + 14) + 72);
  v77 = *(this + 16);
  v78 = *(v77 + 84);
  v79 = *(v77 + 92);
  LODWORD(v77) = *(v77 + 100);
  *(v71 + 176) = v78;
  *(v71 + 160) = v79;
  *(v71 + 164) = v77;
  v80 = *(this + 18);
  if (*(v80 + 3120) == 1)
  {
    v81 = *(v80 + 3100);
    v82 = *(v80 + 3096);
    v83 = *(v80 + 3088);
    v84 = *(v80 + 3104);
    v85 = *(v80 + 3112);
  }

  else
  {
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v85 = 0;
    v81 = 0;
  }

  v86 = *(v80 + 2634);
  v87 = *(v80 + 3136);
  v88 = *(v80 + 3140);
  *(v71 + 248) = v81;
  *(v71 + 244) = v82;
  *(v71 + 241) = v83;
  *(v71 + 252) = v84;
  *(v71 + 256) = v85;
  *(v71 + 224) = v86;
  *(v71 + 228) = vrev64_s32(*(v80 + 3128));
  *(v71 + 236) = v87;
  *(v71 + 240) = v88;
  v89 = *(this + 20);
  if (*(v89 + 88) == 1)
  {
    v90 = *(v89 + 80);
  }

  else
  {
    v90 = 0;
  }

  *(v71 + 184) = v90;
  *(v71 + 192) = *(*(this + 24) + 220);
  v91 = *(this + 28);
  *(v71 + 200) = *(v91 + 213);
  *(v71 + 208) = *(v91 + 216);
  v92 = *(this + 30);
  if (*(v92 + 160) == 1)
  {
    v93 = *(v92 + 152);
  }

  else
  {
    v93 = 0;
  }

  if (*(v92 + 136) == 1)
  {
    v95 = *(v92 + 112);
    v94 = *(v92 + 120);
  }

  else
  {
    v94 = 0;
    v95 = 0;
  }

  v96 = *(v92 + 84);
  v97 = 0;
  if (*(v92 + 172) == 1)
  {
    v97 = *(v92 + 168);
  }

  v98 = 0;
  *(v71 + 312) = v93;
  *(v71 + 320) = v94;
  *(v71 + 328) = v95;
  *(v71 + 336) = v96;
  v99 = this + 272;
  *(v71 + 340) = v97;
  do
  {
    (*(**&v99[v98] + 32))(*&v99[v98], a2);
    (*(**&v99[v98] + 24))(*&v99[v98]);
    v98 += 16;
  }

  while (v98 != 240);
  v100 = *(this + 64);
  if (v100[26])
  {
    v100[86] |= 1u;
  }

  if (v100[22])
  {
    v100[86] |= 2u;
  }

  if (v100[27])
  {
    v100[86] |= 4u;
  }

  if (v100[23])
  {
    v100[86] |= 8u;
  }

  if (v100[21])
  {
    v100[86] |= 0x10u;
  }

  if (v100[28])
  {
    v100[86] |= 0x20u;
  }

  if (v100[24])
  {
    v100[86] |= 0x40u;
  }

  if (v100[25])
  {
    v100[86] |= 0x80u;
  }

  if (v100[30])
  {
    v100[86] |= 0x100u;
  }

  if (v100[20])
  {
    v100[86] |= 0x200u;
  }

  if (v100[32])
  {
    v100[86] |= 0x1000u;
  }

  if (v100[34])
  {
    v100[86] |= 0x800u;
  }

  if (v100[29])
  {
    v100[86] |= 0x400u;
  }

  if (v100[33])
  {
    v100[86] |= 0x2000u;
  }

  if (v100[31])
  {
    v100[86] |= 0x4000u;
  }

  if (v100[35])
  {
    v100[86] |= 0x20000u;
  }

  if (v100[36])
  {
    v100[86] |= 0x40000u;
  }
}

uint64_t sub_10003D6C0(unsigned int *a1)
{
  result = CLKappaDeescalator::isDecidedForOption(*a1);
  if (result)
  {
    return !CLKappaDeescalator::shouldDeescalateForOption(*a1);
  }

  return result;
}

void CLKappaInferencesAlgSevereCrash::feedTrigger(CLKappaInferencesAlgSevereCrash *this, TriggerSample *a2)
{
  CLKappaDeescalatorAOI::updateWithTrigger(*(this + 4), a2);
  CLKappaDeescalatorSkiLift::updateWithTrigger(*(this + 14), a2);
  sub_100005638(*(this + 22), a2);
  v4 = *(this + 26);

  CLKappaDeescalatorWaterProxy::updateWithTrigger(v4, a2);
}

void CLKappaInferencesAlgSevereCrash::feedGPS(CLKappaDeescalatorAOI **this, const CSSPUGps_Struct *a2)
{
  if (qword_1004567F8 != -1)
  {
    sub_10003FC58();
  }

  v4 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
  {
    latitude = a2->latitude;
    longitude = a2->longitude;
    v7 = 134545921;
    v8 = latitude;
    v9 = 2053;
    v10 = longitude;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[SC] lat %{sensitive}f long %{sensitive}f", &v7, 0x16u);
  }

  CLKappaDeescalatorAOI::updateWithCurrentLocation(this[4], a2);
  CLKappaDeescalatorWaterProxy::updateWithCurrentLocation(this[26], a2);
}

void CLKappaInferencesAlgSevereCrash::feedRoads(uint64_t a1, uint64_t a2)
{
  if (qword_1004567F8 != -1)
  {
    sub_10003FC58();
  }

  v4 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a2 + 8);
    v6 = 134217984;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[SC] feedRoads distanceToNearestRoad:%f", &v6, 0xCu);
  }

  sub_100005910(*(a1 + 176), a2);
  CLKappaDeescalatorWaterProxy::updateWithRoadInfo(*(a1 + 208), a2);
}

uint64_t CLKappaInferencesAlgSevereCrash::feedFeatures(uint64_t a1, uint64_t a2)
{
  CLKappaDeescalatorStaticGps::updateWithFeatures(*(a1 + 128), a2);
  v4 = *(a1 + 64);

  return CLKappaDeescalatorMovingGps::updateWithFeatures(v4, a2);
}

uint64_t virtual thunk toCLKappaInferencesAlgSevereCrash::feedFeatures(void *a1, uint64_t a2)
{
  v3 = a1 + *(*a1 - 48);
  CLKappaDeescalatorStaticGps::updateWithFeatures(*(v3 + 16), a2);
  v4 = *(v3 + 8);

  return CLKappaDeescalatorMovingGps::updateWithFeatures(v4, a2);
}

unsigned __int16 *CLKappaInferencesAlgSevereCrash::feedFeatures(uint64_t a1, uint64_t a2)
{
  return CLKappaDeescalatorSteps::updateWithStepsFeatures(*(a1 + 144), a2);
}

{
  CLKappaDeescalatorQuiescence::updateWithSpinFeatures(*(a1 + 80), a2);
  v4 = *(a1 + 192);

  return CLKappaDeescalatorUsha::updateWithCumulativeRotation(v4, a2);
}

{
  if (*(a1 + 582) == 1)
  {
    if (qword_1004567F8 != -1)
    {
      sub_10003FC58();
    }

    v4 = qword_100456800;
    v5 = 1;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[SC] forcing au", v7, 2u);
    }
  }

  else
  {
    v5 = *(a2 + 29);
  }

  CLKappaDeescalatorSkiing::updateWithAudioTPQ(*(a1 + 96), v5 & 1);
  return CLKappaDeescalatorUsha::updateWithIsAudioRollover(*(a1 + 192), a2);
}

{
  return CLKappaDeescalatorMAP::updateWithIsMAP(*(a1 + 224), a2);
}

{
  return CLKappaDeescalatorMAP::updateWithFreeFall(*(a1 + 224), a2);
}

unsigned __int16 *virtual thunk toCLKappaInferencesAlgSevereCrash::feedFeatures(void *a1, uint64_t a2)
{
  return CLKappaDeescalatorSteps::updateWithStepsFeatures(*(a1 + *(*a1 - 104) + 144), a2);
}

{
  v3 = a1 + *(*a1 - 96);
  CLKappaDeescalatorQuiescence::updateWithSpinFeatures(*(v3 + 10), a2);
  v4 = *(v3 + 24);

  return CLKappaDeescalatorUsha::updateWithCumulativeRotation(v4, a2);
}

{
  return CLKappaInferencesAlgSevereCrash::feedFeatures(a1 + *(*a1 - 88), a2);
}

{
  return CLKappaDeescalatorMAP::updateWithIsMAP(*(a1 + *(*a1 - 136) + 224), a2);
}

{
  return CLKappaDeescalatorMAP::updateWithFreeFall(*(a1 + *(*a1 - 112) + 224), a2);
}

float CLKappaInferencesAlgSevereCrash::feedFeatures(uint64_t a1, uint64_t a2)
{
  return CLKappaDeescalatorQuiescence::updateWithPulseFeatures(*(a1 + 80), a2);
}

{
  return CLKappaDeescalatorTriggerClusters::updateWithTriggerClustersFeatures(*(a1 + 160), a2);
}

float virtual thunk toCLKappaInferencesAlgSevereCrash::feedFeatures(void *a1, uint64_t a2)
{
  return CLKappaDeescalatorQuiescence::updateWithPulseFeatures(*(a1 + *(*a1 - 32) + 80), a2);
}

{
  return CLKappaDeescalatorTriggerClusters::updateWithTriggerClustersFeatures(*(a1 + *(*a1 - 128) + 160), a2);
}

{
  return CLKappaInferencesAlgSevereCrash::feedFeatures((a1 + *(*a1 - 56)), a2);
}

float CLKappaInferencesAlgSevereCrash::feedFeatures(uint64_t *a1, uint64_t a2)
{
  CLKappaDeescalatorAutocorrelation::updateWithBaroFeatures(a1[6], a2);
  CLKappaDeescalatorSteps::updateWithBaroFeatures(a1[18], a2);
  CLKappaDeescalatorSkiing::updateWithPressureMedian(a1[12], *(a2 + 200));
  v4 = a1[24];

  return CLKappaDeescalatorUsha::updateWithPeakPressure(v4, a2);
}

void CLKappaInferencesAlgSevereCrash::feedEstimates(uint64_t a1, _BYTE *a2)
{
  *(a1 + 545) = *a2;
  v4 = a2[1];
  *(a1 + 548) = v4;
  *(a1 + 568) |= v4;
  if (*(a1 + 577) == 1)
  {
    if (qword_1004567F8 != -1)
    {
      sub_10003FC58();
    }

    v5 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[SC] forcing c", v6, 2u);
    }

    *(a1 + 545) = 1;
    *(a1 + 577) = 0;
  }

  CLKappaDeescalatorCrashClassifier::updateWithAlgCrashEstimates(*(a1 + 256), a2);
}

{
  *(a1 + 546) = *a2;
  v4 = a2[1];
  *(a1 + 568) |= v4;
  if (*(a1 + 578) == 1)
  {
    if (qword_1004567F8 != -1)
    {
      sub_10003FC58();
    }

    v5 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[SC] forcing ro", v6, 2u);
    }

    *(a1 + 546) = 1;
    *(a1 + 578) = 0;
    v4 = a2[1];
  }

  *(a1 + 549) = v4;
  CLKappaDeescalatorCrashClassifier::updateWithAlgRolloverCrashEstimates(*(a1 + 256), a2);
}

void virtual thunk toCLKappaInferencesAlgSevereCrash::feedEstimates(void *a1, _BYTE *a2)
{
  CLKappaInferencesAlgSevereCrash::feedEstimates(a1 + *(*a1 - 40), a2);
}

{
  CLKappaInferencesAlgSevereCrash::feedEstimates(a1 + *(*a1 - 48), a2);
}

uint64_t CLKappaInferencesAlgSevereCrash::feedEstimates(uint64_t a1, char *a2)
{
  v3 = *a2;
  *(a1 + 547) = *a2;
  if (*(a1 + 579) == 1)
  {
    if (qword_1004567F8 != -1)
    {
      sub_10003FC58();
    }

    v4 = qword_100456800;
    v3 = 1;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[SC] forcing hsc", v6, 2u);
    }

    *(a1 + 547) = 1;
    *(a1 + 579) = 0;
  }

  CLKappaDeescalatorAutocorrelation::updateWithHighSpeedCrash(*(a1 + 48), v3 & 1);
  return CLKappaDeescalatorSteps::updateWithHighSpeedCrash(*(a1 + 144), *(a1 + 547));
}

double CLKappaInferencesAlgSevereCrash::epochReset(CLKappaInferencesAlgSevereCrash *this)
{
  v1 = *(this + 64);
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 46) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 70) = 0;
  result = 0.0;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 141) = 0u;
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0u;
  *(v1 + 185) = 0u;
  *(v1 + 208) = 0u;
  *(v1 + 224) = 0u;
  *(v1 + 240) = 0;
  *(v1 + 244) = 0;
  *(v1 + 252) = 0;
  *(v1 + 286) = 0;
  *(v1 + 256) = 0u;
  *(v1 + 272) = 0u;
  *(v1 + 296) = 0u;
  *(v1 + 312) = 0u;
  *(v1 + 321) = 0u;
  *(v1 + 340) = 0;
  return result;
}

double virtual thunk toCLKappaInferencesAlgSevereCrash::epochReset(CLKappaInferencesAlgSevereCrash *this)
{
  v1 = *(this + *(*this - 56) + 512);
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 46) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 70) = 0;
  result = 0.0;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 141) = 0u;
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0u;
  *(v1 + 185) = 0u;
  *(v1 + 208) = 0u;
  *(v1 + 224) = 0u;
  *(v1 + 240) = 0;
  *(v1 + 252) = 0;
  *(v1 + 244) = 0;
  *(v1 + 256) = 0u;
  *(v1 + 272) = 0u;
  *(v1 + 286) = 0;
  *(v1 + 296) = 0u;
  *(v1 + 312) = 0u;
  *(v1 + 321) = 0u;
  *(v1 + 340) = 0;
  return result;
}

void sub_10003E114(CLKappaAlgBlock *a1)
{

  operator delete();
}

BOOL sub_10003E154(uint64_t a1, unint64_t a2)
{
  v4 = (a1 + 528);
  if (!*(a1 + 536))
  {
    v4 = &unk_10037E598;
  }

  result = CLKappaAlgBlock::isActiveInferences(a1, a2, *v4);
  if (result)
  {
    if (*(a1 + 536) == 1 && (CLKappaDeescalator::isDecidedForOption(*(a1 + 28)) & 1) == 0)
    {
      if ((*(a1 + 536) & 1) == 0)
      {
        sub_100005BF0();
      }

      return *(a1 + 528) + (*(*(a1 + 512) + 20) * 1000000.0) > a2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10003E1F0(uint64_t result, char a2)
{
  v2 = 0;
  *(result + 24) = a2;
  do
  {
    *(*(result + 272 + v2) + 36) = a2;
    v2 += 16;
  }

  while (v2 != 240);
  return result;
}

void sub_10003E250(void *a1)
{

  operator delete();
}

void sub_10003E2DC(void *a1)
{

  operator delete();
}

void sub_10003E37C(void *a1)
{

  operator delete();
}

void sub_10003E3E8(id a1)
{
  qword_100456800 = os_log_create("com.apple.anomalydetectiond", "Alg");

  _objc_release_x1();
}

void sub_10003E42C(CLKappaAlgBlock *this, uint64_t *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 152)) = a2[6];
  *(this + *(*this - 160)) = a2[7];
  *(this + *(*this - 168)) = a2[8];
  *(this + *(*this - 176)) = a2[9];
  v5 = *(this + 65);
  if (v5)
  {
    sub_100009A48(v5);
  }

  for (i = 504; i != 264; i -= 16)
  {
    v7 = *(this + i);
    if (v7)
    {
      sub_100009A48(v7);
    }
  }

  v8 = *(this + 33);
  if (v8)
  {
    sub_100009A48(v8);
  }

  v9 = *(this + 31);
  if (v9)
  {
    sub_100009A48(v9);
  }

  v10 = *(this + 29);
  if (v10)
  {
    sub_100009A48(v10);
  }

  v11 = *(this + 27);
  if (v11)
  {
    sub_100009A48(v11);
  }

  v12 = *(this + 25);
  if (v12)
  {
    sub_100009A48(v12);
  }

  v13 = *(this + 23);
  if (v13)
  {
    sub_100009A48(v13);
  }

  v14 = *(this + 21);
  if (v14)
  {
    sub_100009A48(v14);
  }

  v15 = *(this + 19);
  if (v15)
  {
    sub_100009A48(v15);
  }

  v16 = *(this + 17);
  if (v16)
  {
    sub_100009A48(v16);
  }

  v17 = *(this + 15);
  if (v17)
  {
    sub_100009A48(v17);
  }

  v18 = *(this + 13);
  if (v18)
  {
    sub_100009A48(v18);
  }

  v19 = *(this + 11);
  if (v19)
  {
    sub_100009A48(v19);
  }

  v20 = *(this + 9);
  if (v20)
  {
    sub_100009A48(v20);
  }

  v21 = *(this + 7);
  if (v21)
  {
    sub_100009A48(v21);
  }

  v22 = *(this + 5);
  if (v22)
  {
    sub_100009A48(v22);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(this, a2 + 1);
}

void sub_10003E7F0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100418750;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10003E8C8(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1004187A0;
  CLKappaDeescalatorAOI::CLKappaDeescalatorAOI((a1 + 3));
  return a1;
}

void sub_10003E944(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1004187A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10003EA1C(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1004187F0;
  CLKappaDeescalatorAutocorrelation::CLKappaDeescalatorAutocorrelation((a1 + 3));
  return a1;
}

void sub_10003EA98(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1004187F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10003EB70(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100418840;
  CLKappaDeescalatorMovingGps::CLKappaDeescalatorMovingGps((a1 + 3));
  return a1;
}

void sub_10003EBEC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100418840;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10003ECC4(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100418890;
  CLKappaDeescalatorQuiescence::CLKappaDeescalatorQuiescence((a1 + 3));
  return a1;
}

void sub_10003ED40(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100418890;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10003EE18(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1004188E0;
  CLKappaDeescalatorSkiing::CLKappaDeescalatorSkiing((a1 + 3));
  return a1;
}

void sub_10003EE94(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1004188E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10003EF6C(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100418930;
  CLKappaDeescalatorSkiLift::CLKappaDeescalatorSkiLift((a1 + 3));
  return a1;
}

void sub_10003EFE8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100418930;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10003F0C0(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100418980;
  CLKappaDeescalatorStaticGps::CLKappaDeescalatorStaticGps((a1 + 3));
  return a1;
}

void sub_10003F13C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100418980;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10003F214(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1004189D0;
  CLKappaDeescalatorSteps::CLKappaDeescalatorSteps((a1 + 3));
  return a1;
}

void sub_10003F290(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1004189D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10003F368(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100418A20;
  CLKappaDeescalatorTriggerClusters::CLKappaDeescalatorTriggerClusters((a1 + 3));
  return a1;
}

void sub_10003F3E4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100418A20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10003F4BC(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100418A70;
  sub_100004868((a1 + 3));
  return a1;
}

void sub_10003F538(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100418A70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10003F610(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100418AC0;
  CLKappaDeescalatorUsha::CLKappaDeescalatorUsha((a1 + 3));
  return a1;
}

void sub_10003F68C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100418AC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10003F764(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100418B10;
  CLKappaDeescalatorWaterProxy::CLKappaDeescalatorWaterProxy((a1 + 3));
  return a1;
}

void sub_10003F7E0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100418B10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10003F8B8(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100418B60;
  CLKappaDeescalatorMAP::CLKappaDeescalatorMAP((a1 + 3));
  return a1;
}

void sub_10003F934(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100418B60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10003FA0C(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100418BB0;
  CLSafetyDeescalatorJointDetection::CLSafetyDeescalatorJointDetection((a1 + 3));
  return a1;
}

void sub_10003FA88(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100418BB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10003FB60(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100418C00;
  CLKappaDeescalatorCrashClassifier::CLKappaDeescalatorCrashClassifier((a1 + 3));
  return a1;
}

void sub_10003FBDC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100418C00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void CLSafetyDeescalatorProjectilePhone::CLSafetyDeescalatorProjectilePhone(CLSafetyDeescalatorProjectilePhone *this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 36) = 1;
  *(this + 10) = 0;
  *(this + 44) = 0;
  *this = off_100418C50;
  *(this + 72) = 0;
  *(this + 88) = 0;
  *(this + 92) = 0xB00000000;
  *(this + 18) = 0xB00000000;
  *(this + 196) = 0xB00000000;
  *(this + 31) = 0xB00000000;
  *(this + 300) = 0xB00000000;
  *(this + 40) = 0xB00000000;
  *(this + 178) = 0;
  *(this + 348) = 0;
  *(this + 340) = 0;
  *(this + 71) = 5;
  strcpy(this + 48, "de-PP");
}

uint64_t CLSafetyDeescalatorProjectilePhone::assertReady(CLSafetyDeescalatorProjectilePhone *this, uint64_t a2, const char *a3)
{
  v3 = *(this + 47);
  v4 = *(this + 73);
  v17 = v3;
  v18 = v4;
  v5 = *(this + 125);
  v6 = *(this + 99);
  v19 = v5;
  v20 = v6;
  v7 = 8;
  v8 = v3;
  v9 = &v17;
  do
  {
    if (*(&v17 + v7) < v8)
    {
      v8 = *(&v17 + v7);
      v9 = (&v17 + v7);
    }

    v7 += 8;
  }

  while (v7 != 32);
  v10 = *v9;
  v17 = v3;
  v18 = v4;
  v11 = 8;
  v12 = &v17;
  v19 = v5;
  v20 = v6;
  do
  {
    v13 = *(&v17 + v11);
    v14 = v3 >= v13;
    if (v3 <= v13)
    {
      v3 = *(&v17 + v11);
    }

    if (!v14)
    {
      v12 = (&v17 + v11);
    }

    v11 += 8;
  }

  while (v11 != 32);
  v15 = v10 == *v12;

  return CLKappaDeescalator::raiseUnless(v15, "[de-PP] Buffer sizes are not the same", a3);
}

uint64_t CLSafetyDeescalatorProjectilePhone::setConfig(uint64_t result, _OWORD *a2)
{
  v2 = *(result + 88);
  *(result + 72) = *a2;
  if ((v2 & 1) == 0)
  {
    *(result + 88) = 1;
  }

  return result;
}

void CLSafetyDeescalatorProjectilePhone::resetConfiguration(CLSafetyDeescalatorProjectilePhone *this)
{
  v11 = [CSPersistentConfiguration configBaseKey:"DeescalatorPPConfig" forFeatureMode:*(this + 36)];
  v2 = +[CSPersistentConfiguration sharedConfiguration];
  [v2 floatThreshold:&CLSafetyDeescalatorProjectilePhone::kConfigurationDefaults forKey:v11];
  v4 = v3;
  [v2 floatThreshold:&unk_10037E9D4 forKey:v11];
  v6 = v5;
  [v2 floatThreshold:&unk_10037E9E4 forKey:v11];
  v8 = v7;
  [v2 floatThreshold:&unk_10037E9F4 forKey:v11];
  v9 = *(this + 88);
  *(this + 18) = v4;
  *(this + 19) = v6;
  *(this + 20) = v8;
  *(this + 21) = v10;
  if ((v9 & 1) == 0)
  {
    *(this + 88) = 1;
  }

  *(this + 44) = CLKappaDeescalator::shouldForceNoop(this, "ForceProjectilePhone");
  *(this + 10) = CLKappaDeescalator::shouldForceDeescalate(this, "ForceProjectilePhone");
}

void CLSafetyDeescalatorProjectilePhone::log(CLSafetyDeescalatorProjectilePhone *this, uint64_t a2)
{
  if ((*(this + 88) & 1) == 0)
  {
    sub_100005BF0();
  }

  v4 = *(this + 85);
  v5 = *(this + 86);
  v6 = *(this + 87);
  v7 = *(this + 88);
  v8 = *(this + 356);
  v9 = *(this + 357);
  if (qword_1004567F8 != -1)
  {
    sub_100040698();
  }

  v10 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(this + 6);
    v12 = *(this + 36);
    v13 = *(this + 18);
    v14 = *(this + 19);
    v15 = *(this + 20);
    v16 = *(this + 21);
    v17 = 134352128;
    v18 = a2;
    v19 = 1026;
    v20 = v11;
    v21 = 1026;
    v22 = v12;
    v23 = 2050;
    v24 = v13;
    v25 = 2050;
    v26 = v14;
    v27 = 2050;
    v28 = v15;
    v29 = 2050;
    v30 = v16;
    v31 = 2050;
    v32 = v4;
    v33 = 2050;
    v34 = v5;
    v35 = 2050;
    v36 = v6;
    v37 = 2050;
    v38 = v7;
    v39 = 1026;
    v40 = v8;
    v41 = 1026;
    v42 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[de-PP] summary,A,%{public}llu,B,%{public}u,mode,%{public}u,config-1,%{public}f,config-2,%{public}f,config-3,%{public}f,config-4,%{public}f,debug-1a,%{public}f,debug-1b,%{public}f,debug-1c,%{public}f,debug-1d,%{public}f,debug-2a,%{public}d,debug-2b,%{public}d", &v17, 0x74u);
  }
}

uint64_t CLSafetyDeescalatorProjectilePhone::onEvaluateAtMinHoldDuration(CLSafetyDeescalatorProjectilePhone *this)
{
  if (!*(this + 47))
  {
    return 0;
  }

  v2 = 0;
  LOBYTE(v3) = 0;
  do
  {
    if (*sub_10002E0A8(this + 150, v2) & 1) != 0 || (*sub_10002E0A8(this + 160, v2))
    {
      ProjectileInEpoch = CLSafetyDeescalatorProjectilePhone::getProjectileInEpoch(this, v2 - 1);
      v5 = CLSafetyDeescalatorProjectilePhone::getProjectileInEpoch(this, v2++);
      v6 = CLSafetyDeescalatorProjectilePhone::getProjectileInEpoch(this, v2);
      v3 = 1;
      if (!ProjectileInEpoch && !v5 && !v6)
      {
        return v3;
      }
    }

    else
    {
      ++v2;
    }
  }

  while (v2 < *(this + 47));
  if (v3)
  {
    return 4;
  }

  else
  {
    return 0;
  }
}

BOOL CLSafetyDeescalatorProjectilePhone::getProjectileInEpoch(CLSafetyDeescalatorProjectilePhone *this, unsigned int a2)
{
  if ((*(this + 88) & 1) == 0)
  {
    sub_100005BF0();
  }

  if ((a2 & 0x80000000) != 0 || *(this + 47) <= a2)
  {
    return 0;
  }

  v4 = 0.0;
  v5 = 0.0;
  if (a2)
  {
    v5 = *sub_1000404B8(this + 124, a2 - 1);
  }

  if (*(this + 125) - 1 > a2)
  {
    v4 = *sub_1000404B8(this + 124, a2 + 1);
  }

  v6 = *sub_1000404B8(this + 124, a2);
  if (v5 >= v6)
  {
    v6 = v5;
  }

  if (v6 >= v4)
  {
    v4 = v6;
  }

  return *sub_1000404B8(this + 46, a2) >= *(this + 18) && *sub_1000404B8(this + 72, a2) >= *(this + 19) && *sub_1000404B8(this + 98, a2) >= *(this + 20) && v4 <= *(this + 21);
}

float CLSafetyDeescalatorProjectilePhone::updateWithSpinFeatures(uint64_t a1, uint64_t a2)
{
  sub_100040338((a1 + 144), (a2 + 12));
  result = *(a2 + 12);
  *(a1 + 344) = result;
  return result;
}

unsigned __int16 *sub_100040338(unsigned __int16 *result, _DWORD *a2)
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

  *&result[2 * (v4 + v2 - v5) + 4] = *a2;
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

float CLSafetyDeescalatorProjectilePhone::updateWithPulseFeatures(uint64_t a1, uint64_t a2)
{
  sub_100040338((a1 + 196), (a2 + 248));
  *(a1 + 348) = *(a2 + 248);
  sub_100040338((a1 + 248), (a2 + 16));
  result = *(a2 + 16);
  *(a1 + 352) = result;
  return result;
}

float CLSafetyDeescalatorProjectilePhone::updateWithFreeFallFeatures(uint64_t a1, uint64_t a2)
{
  sub_100040338((a1 + 92), (a2 + 28));
  result = *(a2 + 28);
  *(a1 + 340) = result;
  return result;
}

uint64_t CLSafetyDeescalatorProjectilePhone::updateWithCoupledCrash(uint64_t this, char a2)
{
  v2 = *(this + 302);
  v3 = *(this + 304);
  v4 = *(this + 300);
  if (v4 + v2 >= v3)
  {
    v5 = *(this + 304);
  }

  else
  {
    v5 = 0;
  }

  *(this + v4 + v2 - v5 + 308) = a2;
  if (v3 <= v2)
  {
    if (v4 + 1 < v3)
    {
      LOWORD(v3) = 0;
    }

    *(this + 300) = v4 + 1 - v3;
  }

  else
  {
    *(this + 302) = v2 + 1;
  }

  *(this + 356) = a2;
  return this;
}

uint64_t CLSafetyDeescalatorProjectilePhone::updateWithUncoupledCrash(uint64_t this, char a2)
{
  v2 = *(this + 322);
  v3 = *(this + 324);
  v4 = *(this + 320);
  if (v4 + v2 >= v3)
  {
    v5 = *(this + 324);
  }

  else
  {
    v5 = 0;
  }

  *(this + v4 + v2 - v5 + 328) = a2;
  if (v3 <= v2)
  {
    if (v4 + 1 < v3)
    {
      LOWORD(v3) = 0;
    }

    *(this + 320) = v4 + 1 - v3;
  }

  else
  {
    *(this + 322) = v2 + 1;
  }

  *(this + 357) = a2;
  return this;
}

uint64_t sub_1000404B8(unsigned __int16 *a1, unint64_t a2)
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
      v12 = "const T &CMQueue<float>::operator[](const size_t) const [T = float]";
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

  return &a1[2 * (v5 - v4) + 4];
}

void sub_100040600(void **a1)
{
  *a1 = off_100418C50;
  CLKappaDeescalator::~CLKappaDeescalator(a1);

  operator delete();
}

void sub_100040654(id a1)
{
  qword_100456800 = os_log_create("com.apple.anomalydetectiond", "Alg");

  _objc_release_x1();
}

double CLKappaEstimatesAlgAirbagResult::reset(CLKappaEstimatesAlgAirbagResult *this)
{
  *(this + 8) = 0;
  *(this + 3) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 36) = 0;
  __asm { FMOV            V0.2S, #-1.0 }

  *(this + 5) = result;
  *(this + 12) = -1082130432;
  *(this + 7) = 0;
  *(this + 16) = 0x7FFFFFFF;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 22) = -1082130432;
  return result;
}

double CLKappaEstimatesAlgAirbagResult::log(CLKappaEstimatesAlgAirbagResult *this)
{
  if (qword_1004567F8 != -1)
  {
    sub_100041714();
  }

  v2 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(this + 3);
    v5 = *(this + 36);
    v6 = *(this + 10);
    v7 = *(this + 11);
    v8 = *(this + 12);
    v9 = *(this + 7);
    v10 = *(this + 16);
    v11 = *(this + 8);
    v12 = *(this + 9);
    v13 = *(this + 10);
    v14 = *(this + 22);
    v15 = 134351616;
    v16 = v4;
    v17 = 1026;
    v18 = v5;
    v19 = 2050;
    v20 = v6;
    v21 = 2050;
    v22 = v7;
    v23 = 2050;
    v24 = v8;
    v25 = 2050;
    v26 = v9;
    v27 = 1026;
    v28 = v10;
    v29 = 1026;
    v30 = v11;
    v31 = 2050;
    v32 = v12;
    v33 = 2050;
    v34 = v13;
    v35 = 2050;
    v36 = v14;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[AB] summary,A,%{public}llu,B,%{public}d,C,%{public}f,D,%{public}f,E,%{public}f,F,%{public}llu,G,%{public}d,H,%{public}d,I,%{public}llu,J,%{public}llu,K,%{public}f\n", &v15, 0x64u);
  }

  return result;
}

void CLKappaEstimatesAlgAirbag::CLKappaEstimatesAlgAirbag(CLKappaEstimatesAlgAirbag *this, uint64_t *a2)
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
  operator new();
}

void sub_100040AD8(_Unwind_Exception *a1)
{
  v4 = *(v1 + 5);
  if (v4)
  {
    sub_100009A48(v4);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, (v2 + 8));
  _Unwind_Resume(a1);
}

char **sub_100040AFC@<X0>(uint64_t a1@<X0>, char ***a2@<X8>)
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

void CLKappaEstimatesAlgAirbag::CLKappaEstimatesAlgAirbag(CLKappaEstimatesAlgAirbag *this)
{
  *this = off_100411FE8;
  *(this + 6) = off_100412090;
  *(this + 7) = off_100412158;
  *(this + 8) = off_100412210;
  CLKappaAlgBlock::CLKappaAlgBlock(this, off_1004192F0);
  *v1 = off_100418DA0;
  v1[5] = 0;
  v1[6] = off_100419060;
  v1[7] = off_1004191A8;
  v1[8] = off_100419298;
  v1[4] = 0;
  operator new();
}

void sub_100040DB4(_Unwind_Exception *a1)
{
  v3 = *(v1 + 5);
  if (v3)
  {
    sub_100009A48(v3);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_1004192F0);
  _Unwind_Resume(a1);
}

__n128 CLKappaEstimatesAlgAirbag::feedFeatures(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  *(v2 + 32) = *(a2 + 48);
  *(v2 + 36) = *(a2 + 52) != 0;
  *(v2 + 40) = *(a2 + 32);
  *(v2 + 48) = *(a2 + 40);
  *(v2 + 56) = *(a2 + 16);
  *(v2 + 64) = *(a2 + 28);
  *(v2 + 88) = *(a2 + 64);
  result = *(a2 + 72);
  *(v2 + 72) = result;
  return result;
}

void sub_100040EB0(CLKappaAlgBlock *this)
{
  *this = off_100418DA0;
  *(this + 6) = off_100419060;
  *(this + 7) = off_1004191A8;
  *(this + *(*this - 176)) = off_100419298;
  v2 = *(this + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(this, off_1004192F0);
}

void sub_100040FA0(CLKappaAlgBlock *this)
{
  *this = off_100418DA0;
  *(this + 6) = off_100419060;
  *(this + 7) = off_1004191A8;
  *(this + 8) = off_100419298;
  v2 = *(this + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(this, off_1004192F0);

  operator delete();
}

void sub_1000410B4(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100418DA0;
  *(v1 + 6) = off_100419060;
  *(v1 + 7) = off_1004191A8;
  *(v1 + 8) = off_100419298;
  v2 = *(v1 + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_1004192F0);
}

void sub_10004118C(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100418DA0;
  *(v1 + 6) = off_100419060;
  *(v1 + 7) = off_1004191A8;
  *(v1 + 8) = off_100419298;
  v2 = *(v1 + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_1004192F0);

  operator delete();
}

void sub_100041278(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100418DA0;
  *(v1 + 6) = off_100419060;
  *(v1 + 7) = off_1004191A8;
  *(v1 + 8) = off_100419298;
  v2 = *(v1 + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_1004192F0);
}

void sub_100041350(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100418DA0;
  *(v1 + 6) = off_100419060;
  *(v1 + 7) = off_1004191A8;
  *(v1 + 8) = off_100419298;
  v2 = *(v1 + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_1004192F0);

  operator delete();
}

void sub_100041470(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100418DA0;
  *(v1 + 6) = off_100419060;
  *(v1 + 7) = off_1004191A8;
  *(v1 + 8) = off_100419298;
  v2 = *(v1 + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_1004192F0);
}

void sub_100041548(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_100418DA0;
  *(v1 + 6) = off_100419060;
  *(v1 + 7) = off_1004191A8;
  *(v1 + 8) = off_100419298;
  v2 = *(v1 + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_1004192F0);

  operator delete();
}

void sub_100041634(id a1)
{
  qword_100456800 = os_log_create("com.apple.anomalydetectiond", "Alg");

  _objc_release_x1();
}

void sub_100041698(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100419978;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

float sunElevationDeg(double a1, float a2, float a3)
{
  v6 = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
  v7 = [NSTimeZone timeZoneForSecondsFromGMT:0];
  [v6 setTimeZone:v7];

  v8 = [NSDate dateWithTimeIntervalSinceReferenceDate:a1];
  v9 = [v6 components:252 fromDate:v8];
  v10 = [v9 month];
  v11 = [v9 day];
  v12 = [v9 year];
  v13 = [v9 hour];
  v14 = [v9 minute];
  v15 = [v9 second];
  v16 = v10 + 12;
  if (v10 >= 3)
  {
    v16 = v10;
  }

  v17 = &v12[-(v10 < 3)];
  v18 = (((v17 + 4716) * 365.25) + ((v16 + 1) * 30.6001) + ((v13 + (v14 + v15 / 60) / 60) / 24.0 + v11)) + -1524.5;
  v44 = a2;
  if (v18 > 2299200.0)
  {
    v18 = ((v18 + 2.0) - (&v12[-(v10 < 3)] / 100)) + (v17 / 400);
  }

  v19 = ((v18 + -2451500.0) / 36525.0);
  v20 = (v14 / 60.0 + v13 + v15 / 3600.0) / 24.0;
  v43 = v20;
  v21 = v19 * (v19 * -0.0001537 + 35999.0503) + 357.52911;
  v22 = 0.016708634 - v19 * (v19 * 0.0000001267 + 0.000042037);
  v42 = v22;
  v23 = sinf(v21 * 0.017453);
  v41 = sinf(v21 * 0.034907);
  v24 = (v19 * -0.000101 + 0.019993) * v41 + v23 * (1.914602 - v19 * (v19 * 0.000014 + 0.004817)) + sinf(v21 * 0.05236) * 0.000289;
  v25 = ((v19 * (v19 * 0.0003032 + 36000.7698) + 280.46646) % 360);
  v26 = (v25 + v24) + -0.00569;
  v27 = __sincos_stret((v19 * -1934.136 + 125.04) * 0.0174532924);
  *&v26 = v26 + v27.__sinval * -0.00478;
  v28 = ((21.448 - v19 * (v19 * (v19 * -0.001813 + 0.00059) + 46.815)) / 60.0 + 26.0) / 60.0 + 23.0;
  v29 = v28 + v27.__cosval * 0.00256;
  *&v19 = v29 * 0.017453;
  v30 = sinf(v29 * 0.017453);
  v31 = sinf(*&v26 * 0.017453);
  v32 = asinf(v30 * v31);
  v33 = tanf(*&v19 * 0.5);
  *&v26 = v33 * v33;
  v34 = __sincosf_stret(v25 * 0.034907);
  v35 = (((((v42 * -2.0) * v23) + (*&v26 * v34.__sinval)) + ((v23 * ((v42 * 4.0) * *&v26)) * v34.__cosval)) + *&v26 * -0.5 * *&v26 * sinf(v25 * 0.069813) + v42 * -1.25 * v42 * v41) * 229.183121;
  v36 = (((v35 + (v43 * 1440.0)) + (a3 * 4.0)) % 1440) * 0.25;
  *&v19 = v36 + dbl_10037EBC0[v36 < 0.0];
  v37 = __sincosf_stret(v44 * 0.017453);
  v38 = __sincosf_stret((v32 * 57.296) * 0.017453);
  v39 = cosf(*&v19 * 0.017453);
  *&v26 = asinf(((v37.__cosval * v38.__cosval) * v39) + (v37.__sinval * v38.__sinval)) * 57.296;

  return *&v26;
}

void CLSafetyDeescalatorGolf::CLSafetyDeescalatorGolf(CLSafetyDeescalatorGolf *this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 36) = 1;
  *(this + 10) = 0;
  *(this + 44) = 0;
  *this = off_1004199C8;
  *(this + 76) = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 71) = 6;
  strcpy(this + 48, "de-GLF");
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 36) = 1;
  *(this + 10) = 0;
  *(this + 44) = 0;
  *this = off_1004199C8;
  *(this + 76) = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 71) = 6;
  strcpy(this + 48, "de-GLF");
}

void CLSafetyDeescalatorGolf::resetConfiguration(CLSafetyDeescalatorGolf *this)
{
  v4 = [CSPersistentConfiguration configBaseKey:"DeescalatorGLFConfig" forFeatureMode:*(this + 36)];
  v2 = +[CSPersistentConfiguration sharedConfiguration];
  [v2 floatThreshold:&CLSafetyDeescalatorGolf::kConfigurationDefaults forKey:v4];
  if ((*(this + 76) & 1) == 0)
  {
    *(this + 76) = 1;
  }

  *(this + 18) = v3;
  *(this + 44) = CLKappaDeescalator::shouldForceNoop(this, "ForceGolf");
  *(this + 10) = CLKappaDeescalator::shouldForceDeescalate(this, "ForceGolf");
}

uint64_t CLSafetyDeescalatorGolf::setConfig(uint64_t result, int *a2)
{
  v2 = *a2;
  if ((*(result + 76) & 1) == 0)
  {
    *(result + 76) = 1;
  }

  *(result + 72) = v2;
  return result;
}

void CLSafetyDeescalatorGolf::log(CLSafetyDeescalatorGolf *this, uint64_t a2)
{
  sub_1000420A4(this, &__p);
  if ((*(this + 76) & 1) == 0)
  {
    sub_100005BF0();
  }

  if (qword_1004567F8 != -1)
  {
    sub_100042954();
  }

  v4 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 6);
    v6 = *(this + 36);
    v7 = (this + 8);
    if (!*(this + 16))
    {
      v7 = &unk_10037EC20;
    }

    v8 = *v7;
    v9 = *(this + 18);
    *buf = 134350848;
    v14 = a2;
    v15 = 1026;
    v16 = v5;
    v17 = 1026;
    v18 = v6;
    v19 = 2050;
    v20 = v9;
    v21 = 2050;
    v22 = v8;
    v23 = 2050;
    v24 = (v11 - __p) >> 3;
    v25 = 2050;
    v26 = v12[5];
    v27 = 2050;
    v28 = v12[6];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[de-GLF] summary,A,%{public}llu,B,%{public}d,mode,%{public}u,config-1,%{public}f,debug-1a,%{public}llu,debug-1b,%{public}lu,debug-1c,%{public}lu,debug-1d,%{public}llu", buf, 0x4Au);
  }

  sub_10000EEA4(v12);
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }
}

uint64_t sub_1000420A4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_10000F110(a2, a1[16], a1[17], (a1[17] - a1[16]) >> 3);
  result = sub_100042338((a2 + 3), a1 + 10);
  a2[9] = a1[19];
  return result;
}

void sub_1000420F8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *CLSafetyDeescalatorGolf::updateWithGolfFeatures(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 76) & 1) == 0)
  {
    sub_100005BF0();
  }

  if (*(a1 + 16))
  {
    v4 = (a1 + 8);
  }

  else
  {
    v4 = &unk_10037EC20;
  }

  v5 = *(a1 + 120);
  if (v5)
  {
    v6 = *v4;
    v7 = (*(a1 + 72) * 1000000.0);
    do
    {
      v8 = *(*(*(a1 + 88) + ((*(a1 + 112) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(a1 + 112) & 0x1FFLL)) + v7;
      if (v6)
      {
        if (v8 >= v6)
        {
          break;
        }
      }

      else if (v8 >= *a2)
      {
        break;
      }

      ++*(a1 + 112);
      *(a1 + 120) = v5 - 1;
      sub_100010720(a1 + 80, 1);
      v5 = *(a1 + 120);
    }

    while (v5);
  }

  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  while (v9 != v10)
  {
    v11 = *v9++;
    v13 = v11;
    sub_10000BB8C((a1 + 80), &v13);
  }

  result = (a1 + 128);
  if (a1 + 128 != a2 + 8)
  {
    return sub_100035BF0(result, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
  }

  return result;
}

void sub_100042254(uint64_t a1)
{
  *a1 = off_1004199C8;
  v2 = *(a1 + 128);
  if (v2)
  {
    *(a1 + 136) = v2;
    operator delete(v2);
  }

  sub_10000EEA4((a1 + 80));

  CLKappaDeescalator::~CLKappaDeescalator(a1);
}

void sub_1000422BC(uint64_t a1)
{
  *a1 = off_1004199C8;
  v2 = *(a1 + 128);
  if (v2)
  {
    *(a1 + 136) = v2;
    operator delete(v2);
  }

  sub_10000EEA4((a1 + 80));
  CLKappaDeescalator::~CLKappaDeescalator(a1);

  operator delete();
}

uint64_t sub_100042338(uint64_t a1, void *a2)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v4 = a2[4];
  v5 = a2[1];
  v6 = a2[2];
  v7 = (v5 + 8 * (v4 >> 9));
  if (v6 == v5)
  {
    v8 = 0;
    v11 = 0;
    v10 = (v5 + 8 * ((a2[5] + v4) >> 9));
  }

  else
  {
    v8 = &(*v7)[8 * (v4 & 0x1FF)];
    v9 = a2[5] + v4;
    v10 = (v5 + 8 * (v9 >> 9));
    v11 = (*v10 + 8 * (v9 & 0x1FF));
  }

  sub_1000423E4(a1, v7, v8, v10, v11);
  return a1;
}

uint64_t *sub_1000423E4(void *a1, char **a2, char *a3, char *a4, char *a5)
{
  if (a5 == a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = (&a5[-*a4] >> 3) + ((a4 - a2) << 6) - ((a3 - *a2) >> 3);
  }

  return sub_100042418(a1, a2, a3, v5);
}

uint64_t *sub_100042418(void *a1, char **a2, char *a3, unint64_t a4)
{
  v8 = a1[1];
  v9 = a1[2];
  if (v9 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = ((v9 - v8) << 6) - 1;
  }

  v11 = a1[5] + a1[4];
  v12 = v10 - v11;
  if (a4 > v12)
  {
    sub_100042558(a1, a4 - v12);
    v8 = a1[1];
    v9 = a1[2];
    v11 = a1[4] + a1[5];
  }

  v13 = (v8 + 8 * (v11 >> 9));
  if (v9 == v8)
  {
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v14 = *v13 + 8 * (v11 & 0x1FF);
    v15 = v14;
  }

  v25[0] = v13;
  v25[1] = v15;
  result = sub_100042870(v25, a4);
  if (v14 != v17)
  {
    v18 = a1[5];
    do
    {
      if (v13 == result)
      {
        v19 = v17;
      }

      else
      {
        v19 = *v13 + 4096;
      }

      if (v14 == v19)
      {
        v19 = v14;
      }

      else
      {
        v20 = *a2;
        v21 = v14;
        do
        {
          v22 = *a3;
          a3 += 8;
          *v21++ = v22;
          if (a3 - v20 == 4096)
          {
            v23 = a2[1];
            ++a2;
            v20 = v23;
            a3 = v23;
          }
        }

        while (v21 != v19);
      }

      v18 += (v19 - v14) >> 3;
      if (v13 == result)
      {
        break;
      }

      v24 = v13[1];
      ++v13;
      v14 = v24;
    }

    while (v24 != v17);
    a1[5] = v18;
  }

  return result;
}

void *sub_100042558(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[2] - result[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if ((v4 & 0x1FF) != 0)
  {
    v5 = (v4 >> 9) + 1;
  }

  else
  {
    v5 = v4 >> 9;
  }

  v6 = result[4];
  if (v5 >= v6 >> 9)
  {
    v7 = v6 >> 9;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 9)
  {
    for (result[4] = v6 - (v7 << 9); v7; --v7)
    {
      v14 = v2[1];
      v16[0] = *v14;
      v2[1] = v14 + 1;
      result = sub_10000FD18(v2, v16);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = result[3] - *result;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      v10 = v3 >> 3;
      v11 = v9 >> 2;
      if (v11 <= v8 + v10)
      {
        v12 = v8 + v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = v10 - v7;
      v18 = result;
      if (v12)
      {
        sub_100010140(result, v12);
      }

      v16[0] = 0;
      v16[1] = 8 * v13;
      v17 = 8 * v13;
      operator new();
    }

    if (v8)
    {
      if (result[3] != result[2])
      {
        operator new();
      }

      operator new();
    }

    for (result[4] -= v7 << 9; v7; --v7)
    {
      v15 = v2[1];
      v16[0] = *v15;
      v2[1] = v15 + 1;
      result = sub_10000FD18(v2, v16);
    }
  }

  return result;
}

void sub_1000427FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_100042870(uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (a2)
  {
    v4 = a2 + ((*(a1 + 8) - *result) >> 3);
    if (v4 < 1)
    {
      result -= (511 - v4) >> 9;
      v6 = *result;
    }

    else
    {
      result += v4 >> 9;
      v5 = *result;
    }
  }

  return result;
}

void sub_1000428D4(id a1)
{
  qword_100456800 = os_log_create("com.apple.anomalydetectiond", "Alg");

  _objc_release_x1();
}

uint64_t sub_100042918(uint64_t a1)
{
  sub_10000EEA4((a1 + 24));
  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

void CLKappaAlgFlowController::CLKappaAlgFlowController(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  *a1 = off_100419A78;
  bzero((a1 + 48), 0x220uLL);
  *(a1 + 592) = a3;
  *(a1 + 600) = v5;
  sub_1000496DC();
}

void sub_100043664(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, uint64_t a10, uint64_t a11)
{
  v14 = 40;
  while (1)
  {
    v15 = *(v13 + v14);
    if (v15)
    {
      sub_100009A48(v15);
    }

    v14 -= 16;
    if (v14 == -8)
    {

      v16 = *(v11 + 584);
      if (v16)
      {
        sub_100009A48(v16);
      }

      sub_100049594(&a11);
      sub_100049594(&a11);
      sub_100049594(&a11);
      sub_100049594(&a11);
      v17 = *(v11 + 472);
      if (v17)
      {
        sub_100009A48(v17);
      }

      v18 = *(v11 + 456);
      if (v18)
      {
        sub_100009A48(v18);
      }

      v19 = *(v11 + 440);
      if (v19)
      {
        sub_100009A48(v19);
      }

      v20 = *(v11 + 424);
      if (v20)
      {
        sub_100009A48(v20);
      }

      v21 = *(v11 + 408);
      if (v21)
      {
        sub_100009A48(v21);
      }

      v22 = *(v11 + 392);
      if (v22)
      {
        sub_100009A48(v22);
      }

      v23 = *(v11 + 376);
      if (v23)
      {
        sub_100009A48(v23);
      }

      v24 = *(v11 + 360);
      if (v24)
      {
        sub_100009A48(v24);
      }

      v25 = *(v11 + 344);
      if (v25)
      {
        sub_100009A48(v25);
      }

      v26 = *(v11 + 328);
      if (v26)
      {
        sub_100009A48(v26);
      }

      v27 = *(v11 + 312);
      if (v27)
      {
        sub_100009A48(v27);
      }

      v28 = *(v11 + 296);
      if (v28)
      {
        sub_100009A48(v28);
      }

      v29 = *(v11 + 280);
      if (v29)
      {
        sub_100009A48(v29);
      }

      v30 = *(v11 + 264);
      if (v30)
      {
        sub_100009A48(v30);
      }

      v31 = *(v11 + 248);
      if (v31)
      {
        sub_100009A48(v31);
      }

      v32 = *(v11 + 232);
      if (v32)
      {
        sub_100009A48(v32);
      }

      v33 = *(v11 + 216);
      if (v33)
      {
        sub_100009A48(v33);
      }

      v34 = *(v11 + 200);
      if (v34)
      {
        sub_100009A48(v34);
      }

      v35 = *(v11 + 184);
      if (v35)
      {
        sub_100009A48(v35);
      }

      v36 = *(v11 + 168);
      if (v36)
      {
        sub_100009A48(v36);
      }

      v37 = *(v11 + 152);
      if (v37)
      {
        sub_100009A48(v37);
      }

      v38 = *(v11 + 136);
      if (v38)
      {
        sub_100009A48(v38);
      }

      v39 = *(v11 + 120);
      if (v39)
      {
        sub_100009A48(v39);
      }

      v40 = *(v11 + 104);
      if (v40)
      {
        sub_100009A48(v40);
      }

      v41 = *(v11 + 88);
      if (v41)
      {
        sub_100009A48(v41);
      }

      v42 = *(v11 + 72);
      if (v42)
      {
        sub_100009A48(v42);
      }

      v43 = *(v11 + 56);
      if (v43)
      {
        sub_100009A48(v43);
      }

      _Unwind_Resume(a1);
    }
  }
}

CLKappaAlgFlowController *CLKappaAlgFlowController::resetAlgConfigurations(CLKappaAlgFlowController *this)
{
  v1 = *(this + 69);
  v2 = *(this + 70);
  while (v1 != v2)
  {
    this = *v1;
    if (*(*v1 + 25) == 1)
    {
      this = (*(*this + 312))(this);
    }

    v1 += 2;
  }

  return this;
}

CLKappaAlgFlowController *CLKappaAlgFlowController::setMaxTriggerSessionTime(CLKappaAlgFlowController *this, uint64_t a2)
{
  if ((*(this + 8) & 1) == 0)
  {
    *(this + 4) = a2;
  }

  return this;
}

void CLKappaAlgFlowController::feedFastAccel(CLKappaAlgFlowController *this, CSSPUAccel800 *a2)
{
  v3 = a2;
  v4 = *(this + 3);
  if (v4 <= *[(CSSPUTriad *)v3 c_struct]+ 30000000)
  {
    v5 = *(this + 72);
    v6 = [(CSSPUTriad *)v3 timestamp];
    v8 = *(v5 + 16);
    if (v8 == -1 || *(v5 + 8) * v8 <= v6)
    {
      v9 = *(this + 69);
      v10 = *(this + 70);
      while (v9 != v10)
      {
        if (*(*v9 + 25) == 1 && *(this + 8) == 1)
        {
          (*(**v9 + 16))(*v9, [(CSSPUTriad *)v3 c_struct]);
        }

        v9 += 2;
      }

      if (*(this + 8) == 1)
      {
        *&v7 = 134217984;
        v20 = v7;
        while (1)
        {
          v11 = *(this + 72);
          v12 = [(CSSPUTriad *)v3 timestamp];
          v13 = v11[1];
          v14 = v11[2];
          if (v14 == -1)
          {
            break;
          }

          if (*v11 + v13 * v14 > v12)
          {
            goto LABEL_24;
          }

          if (qword_1004567E8 != -1)
          {
            sub_10004BE84();
          }

          v15 = qword_1004567F0;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = [(CSSPUTriad *)v3 timestamp];
            *buf = v20;
            v22 = v16;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "closing epoch because of feedFastAccel t=%llu", buf, 0xCu);
          }

          v17 = *(this + 72);
          v18 = v17[2];
          if (v18 == -1)
          {
            v19 = -1;
          }

          else
          {
            v19 = *v17 + v17[1] * v18 - 1;
          }

          if (!CLKappaAlgFlowController::closeEpoch(this, v19))
          {
            goto LABEL_25;
          }
        }

        v11[2] = v12 / v13;
LABEL_24:
        CSKappaEpochBuffer::feedFastAccel(*(this + 72), v3);
      }
    }
  }

LABEL_25:
}

uint64_t CLKappaAlgFlowController::closeEpoch(CLKappaAlgFlowController *this, unint64_t a2)
{
  if (qword_1004567E8 != -1)
  {
    sub_10004BEAC();
  }

  v4 = qword_1004567F0;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    *v61 = a2;
    *&v61[8] = 2048;
    *&v61[10] = +[CSTimeManager SPU_estimate_current_timestamp];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%llu closeEpoch now %llu", buf, 0x16u);
  }

  v5 = *(this + 73);
  v53 = *(this + 72);
  v54 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  CSKappaEpochBufferIterator::CSKappaEpochBufferIterator(buf, &v53);
  if (v54)
  {
    sub_100009A48(v54);
  }

  v6 = 0;
  while (1)
  {
    v7 = CSKappaEpochBufferIterator::getNextSample(buf);

    if (!v7)
    {
      break;
    }

    v6 = v7;
    CLKappaAlgFlowController::feedEpochFunctions(this, v7);
  }

  v8 = *(this + 60);
  for (i = *(this + 61); v8 != i; v8 += 2)
  {
    v10 = *v8;
    if (*(*v8 + 25) == 1)
    {
      v11 = *(this + 73);
      *v57 = *(this + 72);
      *&v57[8] = v11;
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }

      (*(*v10 + 152))(v10, v57);
      if (*&v57[8])
      {
        sub_100009A48(*&v57[8]);
      }

      (*(**v8 + 168))(*v8, a2);
      (*(**v8 + 160))(&v55);
      v12 = *(this + 63);
      v13 = *(this + 64);
      while (v12 != v13)
      {
        if (*(*v12 + 25) == 1)
        {
          (*(*v55 + 16))(v55);
        }

        v12 += 16;
      }

      v14 = *(this + 66);
      v15 = *(this + 67);
      while (v14 != v15)
      {
        if (*(*v14 + 25) == 1)
        {
          (*(*v55 + 16))(v55);
        }

        v14 += 16;
      }

      (*(*v55 + 32))(v55);
      if (v56)
      {
        sub_100009A48(v56);
      }
    }
  }

  v16 = *(this + 63);
  for (j = *(this + 64); v16 != j; v16 += 2)
  {
    v18 = *v16;
    if (*(*v16 + 25) == 1)
    {
      v19 = *(this + 73);
      *v57 = *(this + 72);
      *&v57[8] = v19;
      if (v19)
      {
        atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
      }

      (*(*v18 + 152))(v18, v57);
      if (*&v57[8])
      {
        sub_100009A48(*&v57[8]);
      }

      (*(**v16 + 168))(*v16, a2);
      (*(**v16 + 160))(&v55);
      v20 = *(this + 66);
      v21 = *(this + 67);
      while (v20 != v21)
      {
        if (*(*v20 + 25) == 1)
        {
          (*(*v55 + 16))(v55);
        }

        v20 += 16;
      }

      (*(*v55 + 32))(v55);
      if (v56)
      {
        sub_100009A48(v56);
      }
    }
  }

  v22 = *(this + 66);
  for (k = *(this + 67); v22 != k; v22 += 2)
  {
    v24 = *v22;
    if (*(*v22 + 25) == 1)
    {
      v25 = *(this + 73);
      *v57 = *(this + 72);
      *&v57[8] = v25;
      if (v25)
      {
        atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
      }

      (*(*v24 + 152))(v24, v57);
      if (*&v57[8])
      {
        sub_100009A48(*&v57[8]);
      }

      (*(**v22 + 168))(*v22, a2);
      (*(**v22 + 160))(&v55);
      (*(*v55 + 32))(v55);
      if (v56)
      {
        sub_100009A48(v56);
      }
    }
  }

  if ((*(this + 40) & 1) == 0 && *(*(this + 44) + 25) == 1)
  {
    if (qword_1004567E8 != -1)
    {
      sub_10004BE84();
    }

    v26 = qword_1004567F0;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *v57 = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "overriding SC de", v57, 2u);
    }

    v27 = *(this + 54);
    v28 = *(this + 55);
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    {
      v31 = v30;
      if (!v28)
      {
        v33 = 0;
LABEL_68:
        (*(*v31 + 160))(&lpsrc, v31);
        if (lpsrc)
        {
          v34 = **lpsrc;
          if (v35)
          {
            v36 = v52;
            if (v52)
            {
              atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            goto LABEL_74;
          }
        }

        else
        {
          v35 = 0;
        }

        v36 = 0;
LABEL_74:
        if (v52)
        {
          sub_100009A48(v52);
        }

        v35[48] = 0;
        if (v36)
        {
          sub_100009A48(v36);
        }

        if (v33)
        {
          sub_100009A48(v33);
        }

        goto LABEL_80;
      }

      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      v32 = v28;
    }

    else
    {
      v31 = 0;
      v32 = 0;
      v33 = 0;
      if (!v28)
      {
        goto LABEL_68;
      }
    }

    sub_100009A48(v28);
    v33 = v32;
    goto LABEL_68;
  }

LABEL_80:
  if (qword_1004567E8 != -1)
  {
    sub_10004BE84();
  }

  v37 = qword_1004567F0;
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    v38 = *(this + 3);
    v39 = *(this + 2);
    if (v39)
    {
      v40 = a2 - v39;
    }

    else
    {
      v40 = 0;
    }

    *v57 = 67240704;
    *&v57[4] = v38;
    *&v57[8] = 2050;
    *&v57[10] = a2;
    v58 = 2050;
    v59 = v40;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "close epoch cnt %{public}d, ts %{public}llu, delta microseconds %{public}llu", v57, 0x1Cu);
  }

  [*(this + 75) onCloseEpoch:a2 epochNumber:(*(this + 3))++];
  v41 = *(this + 2);
  if (v41)
  {
    v42 = *(this + 69);
    v43 = *(this + 70);
    while (1)
    {
      if (v42 == v43)
      {
        if (qword_1004567E8 != -1)
        {
          sub_10004BE84();
        }

        v44 = qword_1004567F0;
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v45 = a2 - *(this + 2);
          *v57 = 134349056;
          *&v57[4] = v45;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "stopping %{public}llu microseconds after trigger", v57, 0xCu);
        }

        goto LABEL_96;
      }

      if ((*(**v42 + 136))(*v42, a2, v41))
      {
        break;
      }

      v42 += 2;
    }

    if (*(this + 2) + 1000000 * *(this + 4) < a2)
    {
      if (qword_1004567E8 != -1)
      {
        sub_10004BE84();
      }

      v44 = qword_1004567F0;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
      {
        v47 = a2 - *(this + 2);
        *v57 = 134217984;
        *&v57[4] = v47;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_FAULT, "forcing stop %llu microseconds after trigger", v57, 0xCu);
      }

LABEL_96:

      CLKappaAlgFlowController::stop(this, a2);
      v46 = 0;
      goto LABEL_109;
    }
  }

  v48 = *(this + 69);
  v49 = *(this + 70);
  while (v48 != v49)
  {
    if (*(*v48 + 25) == 1)
    {
      (*(**v48 + 176))(*v48, a2);
    }

    v48 += 2;
  }

  CSKappaEpochBuffer::advanceEpoch(*(this + 72));
  v46 = 1;
LABEL_109:
  if (*&v61[4])
  {
    sub_100009A48(*&v61[4]);
  }

  return v46;
}

void sub_100044578(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (v20)
  {
    sub_100009A48(v20);
  }

  if (a20)
  {
    sub_100009A48(a20);
  }

  _Unwind_Resume(exception_object);
}

void CLKappaAlgFlowController::feedAccel(CLKappaAlgFlowController *this, CSSPUAccel *a2)
{
  v3 = a2;
  v4 = *(this + 3);
  if (v4 <= *[(CSSPUTriad *)v3 c_struct]+ 30000000)
  {
    v5 = *(this + 72);
    v6 = [(CSSPUTriad *)v3 timestamp];
    v8 = *(v5 + 16);
    if (v8 == -1 || *(v5 + 8) * v8 <= v6)
    {
      v9 = *(this + 69);
      v10 = *(this + 70);
      while (v9 != v10)
      {
        if (*(*v9 + 25) == 1 && *(this + 8) == 1)
        {
          (*(**v9 + 24))(*v9, [(CSSPUTriad *)v3 c_struct]);
        }

        v9 += 2;
      }

      if (*(this + 8) == 1)
      {
        *&v7 = 134217984;
        v20 = v7;
        while (1)
        {
          v11 = *(this + 72);
          v12 = [(CSSPUTriad *)v3 timestamp];
          v13 = v11[1];
          v14 = v11[2];
          if (v14 == -1)
          {
            break;
          }

          if (*v11 + v13 * v14 > v12)
          {
            goto LABEL_24;
          }

          if (qword_1004567E8 != -1)
          {
            sub_10004BE84();
          }

          v15 = qword_1004567F0;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = [(CSSPUTriad *)v3 timestamp];
            *buf = v20;
            v22 = v16;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "closing epoch because of feedAccel t=%llu", buf, 0xCu);
          }

          v17 = *(this + 72);
          v18 = v17[2];
          if (v18 == -1)
          {
            v19 = -1;
          }

          else
          {
            v19 = *v17 + v17[1] * v18 - 1;
          }

          if (!CLKappaAlgFlowController::closeEpoch(this, v19))
          {
            goto LABEL_25;
          }
        }

        v11[2] = v12 / v13;
LABEL_24:
        CSKappaEpochBuffer::feedAccel(*(this + 72), v3);
      }
    }
  }

LABEL_25:
}

void CLKappaAlgFlowController::feedHgAccel(CLKappaAlgFlowController *this, CSSPUHgAccel *a2)
{
  v3 = a2;
  v4 = *(this + 3);
  if (v4 <= *[(CSSPUTriad *)v3 c_struct]+ 30000000)
  {
    v5 = *(this + 72);
    v6 = [(CSSPUTriad *)v3 timestamp];
    v8 = *(v5 + 16);
    if (v8 == -1 || *(v5 + 8) * v8 <= v6)
    {
      v9 = *(this + 69);
      v10 = *(this + 70);
      while (v9 != v10)
      {
        if (*(*v9 + 25) == 1 && *(this + 8) == 1)
        {
          (*(**v9 + 32))(*v9, [(CSSPUTriad *)v3 c_struct]);
        }

        v9 += 2;
      }

      if (*(this + 8) == 1)
      {
        *&v7 = 134217984;
        v20 = v7;
        while (1)
        {
          v11 = *(this + 72);
          v12 = [(CSSPUTriad *)v3 timestamp];
          v13 = v11[1];
          v14 = v11[2];
          if (v14 == -1)
          {
            break;
          }

          if (*v11 + v13 * v14 > v12)
          {
            goto LABEL_24;
          }

          if (qword_1004567E8 != -1)
          {
            sub_10004BE84();
          }

          v15 = qword_1004567F0;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = [(CSSPUTriad *)v3 timestamp];
            *buf = v20;
            v22 = v16;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "closing epoch because of feedHgAccel t=%llu", buf, 0xCu);
          }

          v17 = *(this + 72);
          v18 = v17[2];
          if (v18 == -1)
          {
            v19 = -1;
          }

          else
          {
            v19 = *v17 + v17[1] * v18 - 1;
          }

          if (!CLKappaAlgFlowController::closeEpoch(this, v19))
          {
            goto LABEL_25;
          }
        }

        v11[2] = v12 / v13;
LABEL_24:
        CSKappaEpochBuffer::feedHgAccel(*(this + 72), v3);
      }
    }
  }

LABEL_25:
}

void CLKappaAlgFlowController::feedPressure(CLKappaAlgFlowController *this, CSSPUPressure *a2)
{
  v3 = a2;
  v4 = *(this + 3);
  if (v4 <= *[(CSSPUPressure *)v3 c_struct]+ 30000000)
  {
    v5 = *(this + 72);
    v6 = [(CSSPUPressure *)v3 timestamp];
    v8 = *(v5 + 16);
    if (v8 == -1 || *(v5 + 8) * v8 <= v6)
    {
      v9 = *(this + 69);
      v10 = *(this + 70);
      while (v9 != v10)
      {
        if (*(*v9 + 25) == 1 && *(this + 8) == 1)
        {
          (*(**v9 + 40))(*v9, [(CSSPUPressure *)v3 c_struct]);
        }

        v9 += 2;
      }

      if (*(this + 8) == 1)
      {
        *&v7 = 134217984;
        v20 = v7;
        while (1)
        {
          v11 = *(this + 72);
          v12 = [(CSSPUPressure *)v3 timestamp];
          v13 = v11[1];
          v14 = v11[2];
          if (v14 == -1)
          {
            break;
          }

          if (*v11 + v13 * v14 > v12)
          {
            goto LABEL_24;
          }

          if (qword_1004567E8 != -1)
          {
            sub_10004BE84();
          }

          v15 = qword_1004567F0;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = [(CSSPUPressure *)v3 timestamp];
            *buf = v20;
            v22 = v16;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "closing epoch because of feedPressure t=%llu", buf, 0xCu);
          }

          v17 = *(this + 72);
          v18 = v17[2];
          if (v18 == -1)
          {
            v19 = -1;
          }

          else
          {
            v19 = *v17 + v17[1] * v18 - 1;
          }

          if (!CLKappaAlgFlowController::closeEpoch(this, v19))
          {
            goto LABEL_25;
          }
        }

        v11[2] = v12 / v13;
LABEL_24:
        CSKappaEpochBuffer::feedPressure(*(this + 72), v3);
      }
    }
  }

LABEL_25:
}

void CLKappaAlgFlowController::feedDM(CLKappaAlgFlowController *this, CSSPUDM *a2)
{
  v3 = a2;
  v4 = *(this + 3);
  if (v4 <= *([(CSSPUDM *)v3 c_struct]+ 42) + 3000000)
  {
    v5 = *(this + 72);
    v6 = [(CSSPUDM *)v3 timestamp];
    v8 = *(v5 + 16);
    if (v8 == -1 || *(v5 + 8) * v8 <= v6)
    {
      v9 = *(this + 69);
      v10 = *(this + 70);
      while (v9 != v10)
      {
        if (*(*v9 + 25) == 1 && *(this + 8) == 1)
        {
          (*(**v9 + 48))(*v9, [(CSSPUDM *)v3 c_struct]);
        }

        v9 += 2;
      }

      if (*(this + 8) == 1)
      {
        *&v7 = 134217984;
        v20 = v7;
        while (1)
        {
          v11 = *(this + 72);
          v12 = [(CSSPUDM *)v3 timestamp];
          v13 = v11[1];
          v14 = v11[2];
          if (v14 == -1)
          {
            break;
          }

          if (*v11 + v13 * v14 > v12)
          {
            goto LABEL_24;
          }

          if (qword_1004567E8 != -1)
          {
            sub_10004BE84();
          }

          v15 = qword_1004567F0;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = [(CSSPUDM *)v3 timestamp];
            *buf = v20;
            v22 = v16;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "closing epoch because of feedDM t=%llu", buf, 0xCu);
          }

          v17 = *(this + 72);
          v18 = v17[2];
          if (v18 == -1)
          {
            v19 = -1;
          }

          else
          {
            v19 = *v17 + v17[1] * v18 - 1;
          }

          if (!CLKappaAlgFlowController::closeEpoch(this, v19))
          {
            goto LABEL_25;
          }
        }

        v11[2] = v12 / v13;
LABEL_24:
        CSKappaEpochBuffer::feedDM(*(this + 72), v3);
      }
    }
  }

LABEL_25:
}

void CLKappaAlgFlowController::feedAudioRms(CLKappaAlgFlowController *this, CSSPUSpl *a2)
{
  v3 = a2;
  v4 = *(this + 3);
  if (v4 <= *[(CSSPUSpl *)v3 c_struct]+ 30000000)
  {
    v5 = *(this + 72);
    v6 = [(CSSPUSpl *)v3 timestamp];
    v8 = *(v5 + 16);
    if (v8 == -1 || *(v5 + 8) * v8 <= v6)
    {
      v9 = *(this + 69);
      v10 = *(this + 70);
      while (v9 != v10)
      {
        if (*(*v9 + 25) == 1 && *(this + 8) == 1)
        {
          (*(**v9 + 56))(*v9, [(CSSPUSpl *)v3 c_struct]);
        }

        v9 += 2;
      }

      if (*(this + 8) == 1)
      {
        *&v7 = 134217984;
        v20 = v7;
        while (1)
        {
          v11 = *(this + 72);
          v12 = [(CSSPUSpl *)v3 timestamp];
          v13 = v11[1];
          v14 = v11[2];
          if (v14 == -1)
          {
            break;
          }

          if (*v11 + v13 * v14 > v12)
          {
            goto LABEL_24;
          }

          if (qword_1004567E8 != -1)
          {
            sub_10004BE84();
          }

          v15 = qword_1004567F0;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = [(CSSPUSpl *)v3 timestamp];
            *buf = v20;
            v22 = v16;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "closing epoch because of feedAudioRms t=%llu", buf, 0xCu);
          }

          v17 = *(this + 72);
          v18 = v17[2];
          if (v18 == -1)
          {
            v19 = -1;
          }

          else
          {
            v19 = *v17 + v17[1] * v18 - 1;
          }

          if (!CLKappaAlgFlowController::closeEpoch(this, v19))
          {
            goto LABEL_25;
          }
        }

        v11[2] = v12 / v13;
LABEL_24:
        CSKappaEpochBuffer::feedAudioRms(*(this + 72), v3);
      }
    }
  }

LABEL_25:
}

void CLKappaAlgFlowController::feedTrustedAudioResult(CLKappaAlgFlowController *this, CSSPUTrustedAudioResult *a2)
{
  v3 = a2;
  if (qword_1004567E8 != -1)
  {
    sub_10004BEAC();
  }

  v4 = qword_1004567F0;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = *[(CSSPUTrustedAudioResult *)v3 c_struct];
    *buf = 134218240;
    v26 = v5;
    v27 = 2048;
    v28 = +[CSTimeManager SPU_estimate_current_timestamp];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "feed ta timestamp %llu now %llu", buf, 0x16u);
  }

  v6 = *(this + 3);
  if (v6 <= *[(CSSPUTrustedAudioResult *)v3 c_struct]+ 30000000)
  {
    v9 = *(this + 72);
    v10 = [(CSSPUTrustedAudioResult *)v3 timestamp];
    v12 = *(v9 + 16);
    if (v12 == -1 || *(v9 + 8) * v12 <= v10)
    {
      v13 = *(this + 69);
      v14 = *(this + 70);
      while (v13 != v14)
      {
        if (*(*v13 + 25) == 1 && *(this + 8) == 1)
        {
          (*(**v13 + 64))(*v13, [(CSSPUTrustedAudioResult *)v3 c_struct]);
        }

        v13 += 2;
      }

      if (*(this + 8) == 1)
      {
        *&v11 = 134217984;
        v24 = v11;
        while (1)
        {
          v15 = *(this + 72);
          v16 = [(CSSPUTrustedAudioResult *)v3 timestamp];
          v17 = v15[1];
          v18 = v15[2];
          if (v18 == -1)
          {
            break;
          }

          if (*v15 + v17 * v18 > v16)
          {
            goto LABEL_37;
          }

          if (qword_1004567E8 != -1)
          {
            sub_10004BE84();
          }

          v19 = qword_1004567F0;
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v20 = [(CSSPUTrustedAudioResult *)v3 timestamp];
            *buf = v24;
            v26 = v20;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "closing epoch because of feedTrustedAudioResult t=%llu", buf, 0xCu);
          }

          v21 = *(this + 72);
          v22 = v21[2];
          if (v22 == -1)
          {
            v23 = -1;
          }

          else
          {
            v23 = *v21 + v21[1] * v22 - 1;
          }

          if (!CLKappaAlgFlowController::closeEpoch(this, v23))
          {
            goto LABEL_38;
          }
        }

        v15[2] = v16 / v17;
LABEL_37:
        CSKappaEpochBuffer::feedTrustedAudioResult(*(this + 72), v3);
      }
    }

    else
    {
      if (qword_1004567E8 != -1)
      {
        sub_10004BE84();
      }

      v7 = qword_1004567F0;
      if (os_log_type_enabled(qword_1004567F0, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v8 = "TrustedAudio is late!";
        goto LABEL_16;
      }
    }
  }

  else
  {
    if (qword_1004567E8 != -1)
    {
      sub_10004BE84();
    }

    v7 = qword_1004567F0;
    if (os_log_type_enabled(qword_1004567F0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v8 = "TrustedAudio is before pre-trigger limit";
LABEL_16:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, v8, buf, 2u);
    }
  }

LABEL_38:
}

void CLKappaAlgFlowController::feedTrigger(CLKappaAlgFlowController *this, CSSPUKappaTrigger *a2)
{
  v3 = a2;
  v4 = *(this + 3);
  if (v4 > *([(CSSPUKappaTrigger *)v3 c_struct]+ 1) + 30000000)
  {
    goto LABEL_49;
  }

  v5 = *(this + 72);
  v6 = [(CSSPUKappaTrigger *)v3 timestamp];
  v7 = *(v5 + 16);
  if (v7 != -1 && *(v5 + 8) * v7 > v6)
  {
    goto LABEL_49;
  }

  v8 = [(CSSPUKappaTrigger *)v3 c_struct];
  v9 = *(this + 592);
  if (v9 == 2)
  {
    if ((v8[1].rmsSN & 0xD0000) != 0)
    {
      v11 = (*([(CSSPUKappaTrigger *)v3 c_struct]+ 46) & 0x10) == 0;
      v13 = *(this + 592);
      if (v13 == 2)
      {
        if ((*([(CSSPUKappaTrigger *)v3 c_struct]+ 46) & 0x10) != 0)
        {
          v10 = (*([(CSSPUKappaTrigger *)v3 c_struct]+ 93) >> 1) & 1;
        }

        else
        {
          v10 = 0;
        }

        v13 = *(this + 592);
      }

      else
      {
        v10 = 0;
      }

      if (v13 != 1)
      {
        goto LABEL_24;
      }

      goto LABEL_21;
    }

LABEL_12:
    if (qword_1004567E8 != -1)
    {
      sub_10004BEAC();
    }

    v14 = qword_1004567F0;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = *(this + 592);
      v16 = *([(CSSPUKappaTrigger *)v3 c_struct]+ 1);
      v17 = *([(CSSPUKappaTrigger *)v3 c_struct]+ 46);
      *buf = 67109632;
      *v31 = v15;
      *&v31[4] = 1024;
      *&v31[6] = v16;
      v32 = 1024;
      v33 = v17;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Ignoring at FC feedTrigger: [%u %u %u]", buf, 0x14u);
    }

    goto LABEL_49;
  }

  if (v9 != 1 || (v8->path & 0xF) == 0)
  {
    goto LABEL_12;
  }

  v10 = 0;
  v11 = 0;
LABEL_21:
  if ((*([(CSSPUKappaTrigger *)v3 c_struct]+ 1) & 0x10) == 0)
  {
    *(this + 2) = *([(CSSPUKappaTrigger *)v3 c_struct]+ 1);
    if ((*([(CSSPUKappaTrigger *)v3 c_struct]+ 1) & 3) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_24:
  if (!v11 && !v10)
  {
    goto LABEL_28;
  }

  *(this + 2) = *([(CSSPUKappaTrigger *)v3 c_struct]+ 1);
  if ((*([(CSSPUKappaTrigger *)v3 c_struct]+ 46) & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_27:
  *(this + 40) = 1;
LABEL_28:
  v18 = *(this + 69);
  v19 = *(this + 70);
  while (v18 != v19)
  {
    if (*(*v18 + 25) == 1 && *(this + 8) == 1)
    {
      (*(**v18 + 72))(*v18, [(CSSPUKappaTrigger *)v3 c_struct]);
    }

    v18 += 2;
  }

  if (*(this + 8) == 1)
  {
    *&v12 = 134217984;
    v29 = v12;
    while (1)
    {
      v20 = *(this + 72);
      v21 = [(CSSPUKappaTrigger *)v3 timestamp];
      v22 = v20[1];
      v23 = v20[2];
      if (v23 == -1)
      {
        break;
      }

      if (*v20 + v22 * v23 > v21)
      {
        goto LABEL_48;
      }

      if (qword_1004567E8 != -1)
      {
        sub_10004BE84();
      }

      v24 = qword_1004567F0;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = [(CSSPUKappaTrigger *)v3 timestamp];
        *buf = v29;
        *v31 = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "closing epoch because of feedTrigger t=%llu", buf, 0xCu);
      }

      v26 = *(this + 72);
      v27 = v26[2];
      if (v27 == -1)
      {
        v28 = -1;
      }

      else
      {
        v28 = *v26 + v26[1] * v27 - 1;
      }

      if (!CLKappaAlgFlowController::closeEpoch(this, v28))
      {
        goto LABEL_49;
      }
    }

    v20[2] = v21 / v22;
LABEL_48:
    CSKappaEpochBuffer::feedTrigger(*(this + 72), v3);
  }

LABEL_49:
}

uint64_t CLKappaAlgFlowController::isTriggerFor(uint64_t a1, int a2)
{
  if (a2 == 2)
  {
    v2 = *(a1 + 46);
    v3 = (v2 & 5) == 0;
  }

  else
  {
    if (a2 != 1)
    {
      return 0;
    }

    v2 = *(a1 + 1);
    v3 = (v2 & 7) == 0;
  }

  v4 = (v2 >> 3) & 1;
  if (v3)
  {
    return v4;
  }

  else
  {
    return 1;
  }
}

void CLKappaAlgFlowController::feedGPS(CLKappaAlgFlowController *this, CSSPUGps *a2)
{
  v3 = a2;
  v4 = *(this + 3);
  if (v4 <= *([(CSSPUGps *)v3 c_struct]+ 5) + 30000000)
  {
    v5 = *(this + 72);
    v6 = [(CSSPUGps *)v3 timestamp];
    v8 = *(v5 + 16);
    if (v8 == -1 || *(v5 + 8) * v8 <= v6)
    {
      v9 = *(this + 69);
      v10 = *(this + 70);
      while (v9 != v10)
      {
        if (*(*v9 + 25) == 1 && *(this + 8) == 1)
        {
          (*(**v9 + 80))(*v9, [(CSSPUGps *)v3 c_struct]);
        }

        v9 += 2;
      }

      if (*(this + 8) == 1)
      {
        *&v7 = 134217984;
        v20 = v7;
        while (1)
        {
          v11 = *(this + 72);
          v12 = [(CSSPUGps *)v3 timestamp];
          v13 = v11[1];
          v14 = v11[2];
          if (v14 == -1)
          {
            break;
          }

          if (*v11 + v13 * v14 > v12)
          {
            goto LABEL_24;
          }

          if (qword_1004567E8 != -1)
          {
            sub_10004BE84();
          }

          v15 = qword_1004567F0;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = [(CSSPUGps *)v3 timestamp];
            *buf = v20;
            v22 = v16;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "closing epoch because of feedGPS t=%llu", buf, 0xCu);
          }

          v17 = *(this + 72);
          v18 = v17[2];
          if (v18 == -1)
          {
            v19 = -1;
          }

          else
          {
            v19 = *v17 + v17[1] * v18 - 1;
          }

          if (!CLKappaAlgFlowController::closeEpoch(this, v19))
          {
            goto LABEL_25;
          }
        }

        v11[2] = v12 / v13;
LABEL_24:
        CSKappaEpochBuffer::feedGPS(*(this + 72), v3);
      }
    }
  }

LABEL_25:
}

void CLKappaAlgFlowController::feedSteps(CLKappaAlgFlowController *this, CSSPUSteps *a2)
{
  v3 = a2;
  v4 = *(this + 72);
  v5 = [(CSSPUSteps *)v3 timestamp];
  v7 = *(v4 + 16);
  if (v7 == -1 || *(v4 + 8) * v7 <= v5)
  {
    v8 = *(this + 69);
    v9 = *(this + 70);
    while (v8 != v9)
    {
      if (*(*v8 + 25) == 1 && *(this + 8) == 1)
      {
        (*(**v8 + 88))(*v8, [(CSSPUSteps *)v3 c_struct]);
      }

      v8 += 2;
    }

    if (*(this + 8) == 1)
    {
      *&v6 = 134217984;
      v19 = v6;
      while (1)
      {
        v10 = *(this + 72);
        v11 = [(CSSPUSteps *)v3 timestamp];
        v12 = v10[1];
        v13 = v10[2];
        if (v13 == -1)
        {
          break;
        }

        if (*v10 + v12 * v13 > v11)
        {
          goto LABEL_23;
        }

        if (qword_1004567E8 != -1)
        {
          sub_10004BE84();
        }

        v14 = qword_1004567F0;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = [(CSSPUSteps *)v3 timestamp];
          *buf = v19;
          v21 = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "closing epoch because of feedSteps t=%llu", buf, 0xCu);
        }

        v16 = *(this + 72);
        v17 = v16[2];
        if (v17 == -1)
        {
          v18 = -1;
        }

        else
        {
          v18 = *v16 + v16[1] * v17 - 1;
        }

        if (!CLKappaAlgFlowController::closeEpoch(this, v18))
        {
          goto LABEL_24;
        }
      }

      v10[2] = v11 / v12;
LABEL_23:
      CSKappaEpochBuffer::feedSteps(*(this + 72), v3);
    }
  }

LABEL_24:
}

void CLKappaAlgFlowController::feedRoads(CLKappaAlgFlowController *this, CSSPURoadInfo *a2)
{
  v3 = a2;
  v4 = *(this + 72);
  v5 = [(CSSPURoadInfo *)v3 timestamp];
  v6 = *(v4 + 16);
  if (v6 == -1 || *(v4 + 8) * v6 <= v5)
  {
    if (qword_1004567E8 != -1)
    {
      sub_10004BEAC();
    }

    v7 = qword_1004567F0;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = *[(CSSPURoadInfo *)v3 c_struct];
      v9 = *([(CSSPURoadInfo *)v3 c_struct]+ 1);
      v10 = *([(CSSPURoadInfo *)v3 c_struct]+ 5);
      v11 = *([(CSSPURoadInfo *)v3 c_struct]+ 12);
      v12 = [(CSSPURoadInfo *)v3 c_struct];
      v13 = *([(CSSPURoadInfo *)v3 c_struct]+ 12);
      *buf = 134219266;
      v28 = v8;
      v29 = 2048;
      v30 = v9;
      v31 = 2048;
      v32 = v10;
      v33 = 1024;
      v34 = v11;
      v35 = 2080;
      var5 = v12->var5;
      v37 = 2048;
      v38 = v13;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%llu feedRoads [%f %f %d %s %ld]", buf, 0x3Au);
    }

    v15 = *(this + 69);
    v16 = *(this + 70);
    while (v15 != v16)
    {
      if (*(*v15 + 25) == 1 && *(this + 8) == 1)
      {
        (*(**v15 + 96))(*v15, [(CSSPURoadInfo *)v3 c_struct]);
      }

      v15 += 2;
    }

    if (*(this + 8) == 1)
    {
      *&v14 = 134217984;
      v26 = v14;
      while (1)
      {
        v17 = *(this + 72);
        v18 = [(CSSPURoadInfo *)v3 timestamp];
        v19 = v17[1];
        v20 = v17[2];
        if (v20 == -1)
        {
          break;
        }

        if (*v17 + v19 * v20 > v18)
        {
          goto LABEL_27;
        }

        if (qword_1004567E8 != -1)
        {
          sub_10004BE84();
        }

        v21 = qword_1004567F0;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v22 = [(CSSPURoadInfo *)v3 timestamp];
          *buf = v26;
          v28 = v22;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "closing epoch because of feedRoads t=%llu", buf, 0xCu);
        }

        v23 = *(this + 72);
        v24 = v23[2];
        if (v24 == -1)
        {
          v25 = -1;
        }

        else
        {
          v25 = *v23 + v23[1] * v24 - 1;
        }

        if (!CLKappaAlgFlowController::closeEpoch(this, v25))
        {
          goto LABEL_28;
        }
      }

      v17[2] = v18 / v19;
LABEL_27:
      CSKappaEpochBuffer::feedRoads(*(this + 72), v3);
    }
  }

LABEL_28:
}

void CLKappaAlgFlowController::feedHertzSample(CLKappaAlgFlowController *this, CSSPUHertzSample *a2)
{
  v3 = a2;
  v4 = *(this + 3);
  if (v4 <= [(CSSPUHertzSample *)v3 timestamp]+ 30000000)
  {
    v5 = *(this + 72);
    v6 = [(CSSPUHertzSample *)v3 timestamp];
    v7 = *(v5 + 16);
    if (v7 == -1 || *(v5 + 8) * v7 <= v6)
    {
      if (qword_1004567E8 != -1)
      {
        sub_10004BEAC();
      }

      v8 = qword_1004567F0;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = *[(CSSPUHertzSample *)v3 c_struct];
        v10 = *([(CSSPUHertzSample *)v3 c_struct]+ 4);
        v11 = *([(CSSPUHertzSample *)v3 c_struct]+ 10);
        *buf = 134218496;
        v26 = v9;
        v27 = 1024;
        v28 = v10;
        v29 = 1024;
        v30 = v11;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%llu feedHertzSample [%d %d]", buf, 0x18u);
      }

      v13 = *(this + 69);
      v14 = *(this + 70);
      while (v13 != v14)
      {
        if (*(*v13 + 25) == 1 && *(this + 8) == 1)
        {
          (*(**v13 + 104))(*v13, [(CSSPUHertzSample *)v3 c_struct]);
        }

        v13 += 2;
      }

      if (*(this + 8) == 1)
      {
        *&v12 = 134217984;
        v24 = v12;
        while (1)
        {
          v15 = *(this + 72);
          v16 = [(CSSPUHertzSample *)v3 timestamp];
          v17 = v15[1];
          v18 = v15[2];
          if (v18 == -1)
          {
            break;
          }

          if (*v15 + v17 * v18 > v16)
          {
            goto LABEL_28;
          }

          if (qword_1004567E8 != -1)
          {
            sub_10004BE84();
          }

          v19 = qword_1004567F0;
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v20 = [(CSSPUHertzSample *)v3 timestamp];
            *buf = v24;
            v26 = v20;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "closing epoch because of feedHertzSample t=%llu", buf, 0xCu);
          }

          v21 = *(this + 72);
          v22 = v21[2];
          if (v22 == -1)
          {
            v23 = -1;
          }

          else
          {
            v23 = *v21 + v21[1] * v22 - 1;
          }

          if (!CLKappaAlgFlowController::closeEpoch(this, v23))
          {
            goto LABEL_29;
          }
        }

        v15[2] = v16 / v17;
LABEL_28:
        CSKappaEpochBuffer::feedHertzSample(*(this + 72), v3);
      }
    }
  }

LABEL_29:
}

void CLKappaAlgFlowController::feedMag(CLKappaAlgFlowController *this, CSSPUMag *a2)
{
  v3 = a2;
  v4 = *(this + 3);
  v5 = v3;
  if (v4 <= *([(CSSPUMag *)v3 c_struct]+ 2) + 30000000)
  {
    [(CSSPUMag *)v5 timestamp];
  }
}

void CLKappaAlgFlowController::feedCompanionStatus(CLKappaAlgFlowController *this, CSCompanionStatus *a2)
{
  v3 = a2;
  v4 = *(this + 3);
  if (v4 <= *[(CSCompanionStatus *)v3 c_struct]+ 30000000)
  {
    v5 = *(this + 72);
    v6 = [(CSCompanionStatus *)v3 timestamp];
    v8 = *(v5 + 16);
    if (v8 == -1 || *(v5 + 8) * v8 <= v6)
    {
      v9 = *(this + 69);
      v10 = *(this + 70);
      while (v9 != v10)
      {
        if (*(*v9 + 25) == 1 && *(this + 8) == 1)
        {
          (*(**v9 + 112))(*v9, [(CSCompanionStatus *)v3 c_struct]);
        }

        v9 += 2;
      }

      if (*(this + 8) == 1)
      {
        *&v7 = 134217984;
        v20 = v7;
        while (1)
        {
          v11 = *(this + 72);
          v12 = [(CSCompanionStatus *)v3 timestamp];
          v13 = v11[1];
          v14 = v11[2];
          if (v14 == -1)
          {
            break;
          }

          if (*v11 + v13 * v14 > v12)
          {
            goto LABEL_24;
          }

          if (qword_1004567E8 != -1)
          {
            sub_10004BE84();
          }

          v15 = qword_1004567F0;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = [(CSCompanionStatus *)v3 timestamp];
            *buf = v20;
            v22 = v16;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "closing epoch because of feedCompanionStatus t=%llu", buf, 0xCu);
          }

          v17 = *(this + 72);
          v18 = v17[2];
          if (v18 == -1)
          {
            v19 = -1;
          }

          else
          {
            v19 = *v17 + v17[1] * v18 - 1;
          }

          if (!CLKappaAlgFlowController::closeEpoch(this, v19))
          {
            goto LABEL_25;
          }
        }

        v11[2] = v12 / v13;
LABEL_24:
        CSKappaEpochBuffer::feedCompanionStatus(*(this + 72), v3);
      }
    }
  }

LABEL_25:
}

void CLKappaAlgFlowController::feedRemoteSample(CLKappaAlgFlowController *this, CSRemoteSample *a2)
{
  v3 = a2;
  v4 = *(this + 3);
  if (v4 <= [(CSRemoteSample *)v3 timestamp]+ 30000000)
  {
    v5 = *(this + 72);
    v6 = [(CSRemoteSample *)v3 timestamp];
    v8 = *(v5 + 16);
    if (v8 == -1 || *(v5 + 8) * v8 <= v6)
    {
      v9 = *(this + 69);
      v10 = *(this + 70);
      while (v9 != v10)
      {
        if (*(*v9 + 25) == 1 && *(this + 8) == 1)
        {
          (*(**v9 + 120))(*v9, [(CSRemoteSample *)v3 c_struct]);
        }

        v9 += 2;
      }

      if (*(this + 8) == 1)
      {
        *&v7 = 134217984;
        v20 = v7;
        while (1)
        {
          v11 = *(this + 72);
          v12 = [(CSRemoteSample *)v3 timestamp];
          v13 = v11[1];
          v14 = v11[2];
          if (v14 == -1)
          {
            break;
          }

          if (*v11 + v13 * v14 > v12)
          {
            goto LABEL_24;
          }

          if (qword_1004567E8 != -1)
          {
            sub_10004BE84();
          }

          v15 = qword_1004567F0;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = [(CSRemoteSample *)v3 timestamp];
            *buf = v20;
            v22 = v16;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "closing epoch because of feedRemoteSample t=%llu", buf, 0xCu);
          }

          v17 = *(this + 72);
          v18 = v17[2];
          if (v18 == -1)
          {
            v19 = -1;
          }

          else
          {
            v19 = *v17 + v17[1] * v18 - 1;
          }

          if (!CLKappaAlgFlowController::closeEpoch(this, v19))
          {
            goto LABEL_25;
          }
        }

        v11[2] = v12 / v13;
LABEL_24:
        CSKappaEpochBuffer::feedRemoteSample(*(this + 72), v3);
      }
    }
  }

LABEL_25:
}

CLKappaAlgFlowController *CLKappaAlgFlowController::finalizeAlgBlocks(CLKappaAlgFlowController *this)
{
  v1 = *(this + 69);
  v2 = *(this + 70);
  while (v1 != v2)
  {
    this = *v1;
    if (*(*v1 + 25) == 1)
    {
      this = (*(*this + 128))(this);
    }

    v1 += 2;
  }

  return this;
}

void CLKappaAlgFlowController::logAlgBlockResults(CLKappaAlgFlowController *this)
{
  v1 = *(this + 69);
  v2 = *(this + 70);
  while (v1 != v2)
  {
    if (*(*v1 + 25) == 1)
    {
      (*(**v1 + 160))(&v3);
      (*(*v3 + 32))(v3);
      if (v4)
      {
        sub_100009A48(v4);
      }
    }

    v1 += 16;
  }
}

void sub_100046AB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100009A48(a10);
  }

  _Unwind_Resume(exception_object);
}

CLKappaAlgFlowController *CLKappaAlgFlowController::resetAlgBlocks(CLKappaAlgFlowController *this)
{
  v1 = *(this + 69);
  v2 = *(this + 70);
  while (v1 != v2)
  {
    this = *v1;
    if (*(*v1 + 25) == 1)
    {
      this = (*(*this + 304))(this);
    }

    v1 += 2;
  }

  return this;
}

CLKappaAlgFlowController *CLKappaAlgFlowController::epochResetAlgBlocks(CLKappaAlgFlowController *this, uint64_t a2)
{
  v2 = *(this + 69);
  for (i = *(this + 70); v2 != i; v2 += 2)
  {
    this = *v2;
    if (*(*v2 + 25) == 1)
    {
      this = (*(*this + 176))(this, a2);
    }
  }

  return this;
}

id CLKappaAlgFlowController::resetEpochBuffer(CLKappaAlgFlowController *this)
{
  result = CSKappaEpochBuffer::reset(*(this + 72));
  *(this + 40) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  return result;
}

void CLKappaAlgFlowController::feedEpochFunctions(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = *(a1 + 552);
    v6 = *(a1 + 560);
    while (v5 != v6)
    {
      if (*(*v5 + 25) == 1 && *(a1 + 8) == 1)
      {
        (*(**v5 + 184))(*v5, [v4 c_struct]);
      }

      v5 += 2;
    }

    goto LABEL_43;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v7 = *(a1 + 552);
    v8 = *(a1 + 560);
    while (v7 != v8)
    {
      if (*(*v7 + 25) == 1 && *(a1 + 8) == 1)
      {
        (*(**v7 + 200))(*v7, [v4 c_struct]);
      }

      v7 += 2;
    }

    goto LABEL_43;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v9 = *(a1 + 552);
    v10 = *(a1 + 560);
    while (v9 != v10)
    {
      if (*(*v9 + 25) == 1 && *(a1 + 8) == 1)
      {
        (*(**v9 + 192))(*v9, [v4 c_struct]);
      }

      v9 += 2;
    }

    goto LABEL_43;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v11 = [v4 c_struct];
    v12 = *(a1 + 592);
    if (v12 == 2)
    {
      if ((v11[46] & 0xD) == 0)
      {
LABEL_43:

        goto LABEL_44;
      }
    }

    else if (v12 != 1 || (v11[1] & 0xF) == 0)
    {
      goto LABEL_43;
    }

    v15 = *(a1 + 552);
    v16 = *(a1 + 560);
    while (v15 != v16)
    {
      if (*(*v15 + 25) == 1 && *(a1 + 8) == 1)
      {
        (*(**v15 + 240))(*v15, [v4 c_struct]);
      }

      v15 += 2;
    }

    goto LABEL_43;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v13 = *(a1 + 552);
    v14 = *(a1 + 560);
    while (v13 != v14)
    {
      if (*(*v13 + 25) == 1 && *(a1 + 8) == 1)
      {
        (*(**v13 + 216))(*v13, [v4 c_struct]);
      }

      v13 += 2;
    }

    goto LABEL_43;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *v18 = v3;
    sub_1000472E0(*(a1 + 552), *(a1 + 560), a1, v18);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *v18 = v3;
      sub_100047388(*(a1 + 552), *(a1 + 560), a1, v18);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        *v18 = v3;
        sub_100047430(*(a1 + 552), *(a1 + 560), a1, v18);
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          *v18 = v3;
          sub_1000474D8(*(a1 + 552), *(a1 + 560), a1, v18);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            *v18 = v3;
            sub_100047588(*(a1 + 552), *(a1 + 560), a1, v18);
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              *v18 = v3;
              sub_100047638(*(a1 + 552), *(a1 + 560), a1, v18);
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                *v18 = v3;
                sub_1000476E8(*(a1 + 552), *(a1 + 560), a1, v18);
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  *v18 = v3;
                  sub_100047798(*(a1 + 552), *(a1 + 560), a1, v18);
                }

                else
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    *v18 = v3;
                    sub_100047848(*(a1 + 552), *(a1 + 560), a1, v18);
                  }

                  else
                  {
                    v17 = sub_1000478F8();
                    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                    {
                      *v18 = 138412290;
                      *&v18[4] = objc_opt_class();
                      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "problem! unknown / missing epochFeed for %@", v18, 0xCu);
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

LABEL_44:
}

uint64_t sub_1000472E0(void *a1, void *a2, uint64_t a3, id *a4)
{
  if (a1 != a2)
  {
    v7 = a1;
    do
    {
      if (*(*v7 + 25) == 1 && *(a3 + 8) == 1)
      {
        (*(**v7 + 248))(*v7, [*a4 c_struct]);
      }

      v7 += 2;
    }

    while (v7 != a2);
  }

  return a3;
}

uint64_t sub_100047388(void *a1, void *a2, uint64_t a3, id *a4)
{
  if (a1 != a2)
  {
    v7 = a1;
    do
    {
      if (*(*v7 + 25) == 1 && *(a3 + 8) == 1)
      {
        (*(**v7 + 224))(*v7, [*a4 c_struct]);
      }

      v7 += 2;
    }

    while (v7 != a2);
  }

  return a3;
}

uint64_t sub_100047430(void *a1, void *a2, uint64_t a3, id *a4)
{
  if (a1 != a2)
  {
    v7 = a1;
    do
    {
      if (*(*v7 + 25) == 1 && *(a3 + 8) == 1)
      {
        (*(**v7 + 208))(*v7, [*a4 c_struct]);
      }

      v7 += 2;
    }

    while (v7 != a2);
  }

  return a3;
}

uint64_t sub_1000474D8(void *a1, void *a2, uint64_t a3, id *a4)
{
  if (a1 != a2)
  {
    v7 = a1;
    do
    {
      if (*(*v7 + 25) == 1 && *(a3 + 8) == 1)
      {
        (*(**v7 + 256))(*v7, [*a4 c_struct]);
      }

      v7 += 2;
    }

    while (v7 != a2);
  }

  return a3;
}

uint64_t sub_100047588(void *a1, void *a2, uint64_t a3, id *a4)
{
  if (a1 != a2)
  {
    v7 = a1;
    do
    {
      if (*(*v7 + 25) == 1 && *(a3 + 8) == 1)
      {
        (*(**v7 + 264))(*v7, [*a4 c_struct]);
      }

      v7 += 2;
    }

    while (v7 != a2);
  }

  return a3;
}

uint64_t sub_100047638(void *a1, void *a2, uint64_t a3, id *a4)
{
  if (a1 != a2)
  {
    v7 = a1;
    do
    {
      if (*(*v7 + 25) == 1 && *(a3 + 8) == 1)
      {
        (*(**v7 + 272))(*v7, [*a4 c_struct]);
      }

      v7 += 2;
    }

    while (v7 != a2);
  }

  return a3;
}

uint64_t sub_1000476E8(void *a1, void *a2, uint64_t a3, id *a4)
{
  if (a1 != a2)
  {
    v7 = a1;
    do
    {
      if (*(*v7 + 25) == 1 && *(a3 + 8) == 1)
      {
        (*(**v7 + 280))(*v7, [*a4 c_struct]);
      }

      v7 += 2;
    }

    while (v7 != a2);
  }

  return a3;
}

uint64_t sub_100047798(void *a1, void *a2, uint64_t a3, id *a4)
{
  if (a1 != a2)
  {
    v7 = a1;
    do
    {
      if (*(*v7 + 25) == 1 && *(a3 + 8) == 1)
      {
        (*(**v7 + 288))(*v7, [*a4 c_struct]);
      }

      v7 += 2;
    }

    while (v7 != a2);
  }

  return a3;
}

uint64_t sub_100047848(void *a1, void *a2, uint64_t a3, id *a4)
{
  if (a1 != a2)
  {
    v7 = a1;
    do
    {
      if (*(*v7 + 25) == 1 && *(a3 + 8) == 1)
      {
        (*(**v7 + 296))(*v7, [*a4 c_struct]);
      }

      v7 += 2;
    }

    while (v7 != a2);
  }

  return a3;
}

id sub_1000478F8()
{
  if (qword_1004567F8 != -1)
  {
    sub_10004BEC0();
  }

  v1 = qword_100456800;

  return v1;
}

uint64_t CLKappaAlgFlowController::isActive(CLKappaAlgFlowController *this, uint64_t a2, uint64_t a3)
{
  v3 = *(this + 69);
  v4 = *(this + 70);
  if (v3 == v4)
  {
    return 0;
  }

  v7 = v3 + 16;
  do
  {
    result = (*(**(v7 - 16) + 136))(*(v7 - 16), a2, a3);
    if (result)
    {
      break;
    }

    v9 = v7 == v4;
    v7 += 16;
  }

  while (!v9);
  return result;
}

void CLKappaAlgFlowController::stop(CLKappaAlgFlowController *this, uint64_t a2)
{
  if (qword_1004567E8 != -1)
  {
    sub_10004BEAC();
  }

  v4 = qword_1004567F0;
  if (os_log_type_enabled(qword_1004567F0, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "stop", v5, 2u);
  }

  if (*(this + 8) == 1)
  {
    [*(this + 75) stop:a2];
  }

  *(this + 8) = 0;
  *(this + 3) = 0;
  *(this + 3) = 0;
}

CLKappaAlgFlowController *CLKappaAlgFlowController::disableAllAlgBlocks(CLKappaAlgFlowController *this)
{
  v1 = *(this + 69);
  v2 = *(this + 70);
  while (v1 != v2)
  {
    v3 = *v1;
    v1 += 2;
    *(v3 + 25) = 0;
  }

  return this;
}

void CLKappaAlgFlowController::start(CLKappaAlgFlowController *this, uint64_t a2)
{
  if ((*(this + 8) & 1) == 0)
  {
    *(this + 3) = 0;
    *(this + 2) = 0;
    *(this + 3) = a2;
  }

  if (qword_1004567E8 != -1)
  {
    sub_10004BEAC();
  }

  v3 = qword_1004567F0;
  if (os_log_type_enabled(qword_1004567F0, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "trigger", v4, 2u);
  }

  *(this + 8) = 1;
}

void CLKappaAlgFlowController::createRemoteSample(CLKappaAlgFlowController *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 8) & 1) != 0 && (v4 = *(this + 34), (v4[25]))
  {
    (*(*v4 + 160))(&lpsrc);
    if (lpsrc)
    {
      v5 = **lpsrc;
      if (v6)
      {
        v7 = v11;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
      v6 = 0;
    }

    if (v11)
    {
      sub_100009A48(v11);
    }

    *(a2 + 3) = 0;
    *(a2 + 1) = 0;
    v8 = *(this + 3);
    v9 = v6[4];
    *a2 = *(this + 592);
    *(a2 + 4) = 0;
    *(a2 + 8) = v8;
    *(a2 + 20) = 0;
    *(a2 + 12) = 0;
    *(a2 + 28) = 0;
    *(a2 + 32) = v9;
    *(a2 + 40) = 0;
    *(a2 + 48) = 1;
    if (v7)
    {
      sub_100009A48(v7);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }
}

void sub_1000486CC(CLKappaAlgBlockResult *a1)
{
  CLKappaAlgBlockResult::~CLKappaAlgBlockResult(a1);

  operator delete();
}

uint64_t sub_100048704(uint64_t result)
{
  *(result + 8) = 0;
  *(result + 12) = 0;
  return result;
}

void sub_100048710(CLKappaAlgBlockResult *this)
{
  *this = off_100419AF8;
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }

  CLKappaAlgBlockResult::~CLKappaAlgBlockResult(this);
}

void sub_100048770(CLKappaAlgBlockResult *this)
{
  *this = off_100419AF8;
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }

  CLKappaAlgBlockResult::~CLKappaAlgBlockResult(this);

  operator delete();
}

void sub_1000487F0(CLKappaAlgBlockResult *a1)
{
  CLKappaAlgBlockResult::~CLKappaAlgBlockResult(a1);

  operator delete();
}

void sub_10004882C(CLKappaAlgBlockResult *a1)
{
  CLKappaAlgBlockResult::~CLKappaAlgBlockResult(a1);

  operator delete();
}

void sub_100048868(CLKappaAlgBlockResult *a1)
{
  CLKappaAlgBlockResult::~CLKappaAlgBlockResult(a1);

  operator delete();
}

void sub_1000488A4(CLKappaAlgBlockResult *a1)
{
  CLKappaAlgBlockResult::~CLKappaAlgBlockResult(a1);

  operator delete();
}

void sub_1000488E0(CLKappaAlgBlockResult *a1)
{
  CLKappaAlgBlockResult::~CLKappaAlgBlockResult(a1);

  operator delete();
}

void sub_100048918(id *a1)
{

  CLKappaAlgBlockResult::~CLKappaAlgBlockResult(a1);
}

void sub_100048954(id *a1)
{
  CLKappaAlgBlockResult::~CLKappaAlgBlockResult(a1);

  operator delete();
}

void sub_1000489A8(CLKappaAlgBlockResult *a1)
{
  CLKappaAlgBlockResult::~CLKappaAlgBlockResult(a1);

  operator delete();
}

void sub_1000489E0(CLKappaAlgBlockResult *this)
{
  *this = off_100419DF8;
  v2 = *(this + 25);
  if (v2)
  {
    *(this + 26) = v2;
    operator delete(v2);
  }

  v3 = *(this + 22);
  if (v3)
  {
    *(this + 23) = v3;
    operator delete(v3);
  }

  v4 = *(this + 19);
  if (v4)
  {
    *(this + 20) = v4;
    operator delete(v4);
  }

  v5 = *(this + 16);
  if (v5)
  {
    *(this + 17) = v5;
    operator delete(v5);
  }

  v6 = *(this + 13);
  if (v6)
  {
    *(this + 14) = v6;
    operator delete(v6);
  }

  CLKappaAlgBlockResult::~CLKappaAlgBlockResult(this);
}

void sub_100048A80(CLKappaAlgBlockResult *this)
{
  *this = off_100419DF8;
  v2 = *(this + 25);
  if (v2)
  {
    *(this + 26) = v2;
    operator delete(v2);
  }

  v3 = *(this + 22);
  if (v3)
  {
    *(this + 23) = v3;
    operator delete(v3);
  }

  v4 = *(this + 19);
  if (v4)
  {
    *(this + 20) = v4;
    operator delete(v4);
  }

  v5 = *(this + 16);
  if (v5)
  {
    *(this + 17) = v5;
    operator delete(v5);
  }

  v6 = *(this + 13);
  if (v6)
  {
    *(this + 14) = v6;
    operator delete(v6);
  }

  CLKappaAlgBlockResult::~CLKappaAlgBlockResult(this);

  operator delete();
}

void sub_100048B38(CLKappaAlgBlockResult *a1)
{
  CLKappaAlgBlockResult::~CLKappaAlgBlockResult(a1);

  operator delete();
}

void sub_100048B74(CLKappaAlgBlockResult *a1)
{
  CLKappaAlgBlockResult::~CLKappaAlgBlockResult(a1);

  operator delete();
}

void sub_100048BB0(CLKappaAlgBlockResult *a1)
{
  CLKappaAlgBlockResult::~CLKappaAlgBlockResult(a1);

  operator delete();
}

void sub_100048BE8(CLKappaAlgBlockResult *this)
{
  *this = off_100419F78;
  v2 = *(this + 20);
  if (v2)
  {
    *(this + 21) = v2;
    operator delete(v2);
  }

  v3 = *(this + 17);
  if (v3)
  {
    *(this + 18) = v3;
    operator delete(v3);
  }

  CLKappaAlgBlockResult::~CLKappaAlgBlockResult(this);
}

void sub_100048C58(CLKappaAlgBlockResult *this)
{
  *this = off_100419F78;
  v2 = *(this + 20);
  if (v2)
  {
    *(this + 21) = v2;
    operator delete(v2);
  }

  v3 = *(this + 17);
  if (v3)
  {
    *(this + 18) = v3;
    operator delete(v3);
  }

  CLKappaAlgBlockResult::~CLKappaAlgBlockResult(this);

  operator delete();
}

void sub_100048CE0(CLKappaAlgBlockResult *a1)
{
  CLKappaAlgBlockResult::~CLKappaAlgBlockResult(a1);

  operator delete();
}

void sub_100048D1C(CLKappaAlgBlockResult *a1)
{
  sub_10004962C(a1);

  operator delete();
}

void sub_100048D58(CLKappaAlgBlockResult *a1)
{
  CLKappaAlgBlockResult::~CLKappaAlgBlockResult(a1);

  operator delete();
}

void sub_100048D94(CLKappaAlgBlockResult *a1)
{
  CLKappaAlgBlockResult::~CLKappaAlgBlockResult(a1);

  operator delete();
}

void sub_100048DD0(CLKappaAlgBlockResult *a1)
{
  CLKappaAlgBlockResult::~CLKappaAlgBlockResult(a1);

  operator delete();
}

void sub_100048E0C(CLKappaAlgBlockResult *a1)
{
  CLKappaAlgBlockResult::~CLKappaAlgBlockResult(a1);

  operator delete();
}

void sub_100048E48(CLKappaAlgBlockResult *a1)
{
  CLKappaAlgBlockResult::~CLKappaAlgBlockResult(a1);

  operator delete();
}

void sub_100048E84(CLKappaAlgBlockResult *a1)
{
  CLKappaAlgBlockResult::~CLKappaAlgBlockResult(a1);

  operator delete();
}

void sub_100048EC0(CLKappaAlgBlockResult *a1)
{
  CLKappaAlgBlockResult::~CLKappaAlgBlockResult(a1);

  operator delete();
}

void sub_100048EFC(CLKappaAlgBlockResult *a1)
{
  CLKappaAlgBlockResult::~CLKappaAlgBlockResult(a1);

  operator delete();
}

void sub_100048F38(CLKappaAlgBlockResult *a1)
{
  CLKappaAlgBlockResult::~CLKappaAlgBlockResult(a1);

  operator delete();
}

void sub_100048F74(CLKappaAlgBlockResult *a1)
{
  CLKappaAlgBlockResult::~CLKappaAlgBlockResult(a1);

  operator delete();
}

void sub_100048FB0(uint64_t a1)
{
  sub_10004BCA4(a1);

  operator delete();
}

void sub_100048FE8(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 4)
  {
    sub_100049128(a1);
    if (!(a4 >> 60))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 3;
      if (v9 >> 3 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF0)
      {
        v11 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      sub_100049168(a1, v11);
    }

    sub_10000CD24();
  }

  v12 = a1[1] - v8;
  if (a4 <= v12 >> 4)
  {
    sub_1000492A8(&v18, a2, a3, v8);
    v14 = v13;
    v15 = a1[1];
    if (v15 != v13)
    {
      do
      {
        v16 = *(v15 - 8);
        if (v16)
        {
          sub_100009A48(v16);
        }

        v15 -= 16;
      }

      while (v15 != v14);
    }

    a1[1] = v14;
  }

  else
  {
    sub_1000492A8(&v17, a2, (a2 + v12), v8);
    a1[1] = sub_1000491A4(a1, (a2 + v12), a3, a1[1]);
  }
}

void sub_100049128(uint64_t *a1)
{
  if (*a1)
  {
    sub_100049320(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_100049168(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_10004936C(a1, a2);
  }

  sub_10000CD24();
}

void *sub_1000491A4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  sub_10004922C(v7);
  return v4;
}

uint64_t sub_10004922C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_100049264(a1);
  }

  return a1;
}

void sub_100049264(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 8);
    if (v3)
    {
      sub_100009A48(v3);
    }

    v1 -= 16;
  }
}

uint64_t *sub_1000492A8(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v8 = *v5;
      v7 = v5[1];
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      v9 = a4[1];
      *a4 = v8;
      a4[1] = v7;
      if (v9)
      {
        sub_100009A48(v9);
      }

      v5 += 2;
      a4 += 2;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_100049320(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      sub_100009A48(v4);
    }
  }

  a1[1] = v2;
}

void sub_10004936C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_1000092C0();
}

void **sub_1000493B4(void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      sub_10000CD24();
    }

    v10 = v5 - *result;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      sub_10004936C(result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = result[1] - *result;
    v15 = v12 - v14;
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = sub_1000494C8(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}