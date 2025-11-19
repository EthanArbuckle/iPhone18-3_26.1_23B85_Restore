void **sub_1000494C8(void **a1)
{
  sub_1000494FC(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1000494FC(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      sub_100009A48(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

void sub_100049550(id a1)
{
  qword_1004567F0 = os_log_create("com.apple.anomalydetectiond", "Flow");

  _objc_release_x1();
}

void sub_100049594(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100049320(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1000495E8(id a1)
{
  qword_100456800 = os_log_create("com.apple.anomalydetectiond", "Alg");

  _objc_release_x1();
}

void sub_10004962C(CLKappaAlgBlockResult *this)
{
  *this = &off_10041A038;
  v2 = *(this + 19);
  if (v2)
  {
    *(this + 20) = v2;
    operator delete(v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    *(this + 17) = v3;
    operator delete(v3);
  }

  v4 = *(this + 13);
  if (v4)
  {
    *(this + 14) = v4;
    operator delete(v4);
  }

  v5 = *(this + 10);
  if (v5)
  {
    *(this + 11) = v5;
    operator delete(v5);
  }

  v6 = *(this + 7);
  if (v6)
  {
    *(this + 8) = v6;
    operator delete(v6);
  }

  v7 = *(this + 4);
  if (v7)
  {
    *(this + 5) = v7;
    operator delete(v7);
  }

  CLKappaAlgBlockResult::~CLKappaAlgBlockResult(this);
}

void *sub_100049750(void *a1, unint64_t *a2, unint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10041A4A8;
  CSKappaEpochBuffer::CSKappaEpochBuffer((a1 + 3), *a2, *a3);
  return a1;
}

void sub_1000497D4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10041A4A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100049924(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10041A4F8;
  sub_10000ACE4((a1 + 3));
}

void sub_1000499A0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10041A4F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100049A78(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10041A548;
  CLKappaFeaturesAlgGolf::CLKappaFeaturesAlgGolf((a1 + 3));
}

void sub_100049AF4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10041A548;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100049BCC(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10041A598;
  CLKappaFeaturesAlgGPS::CLKappaFeaturesAlgGPS((a1 + 3));
}

void sub_100049C48(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10041A598;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100049D20(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10041A5E8;
  CLKappaFeaturesAlgGravityAutoCorrelation::CLKappaFeaturesAlgGravityAutoCorrelation((a1 + 3));
}

void sub_100049D9C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10041A5E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100049E74(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10041A638;
  CLKappaFeaturesAlgLackOfMotion::CLKappaFeaturesAlgLackOfMotion((a1 + 3));
}

void sub_100049EF0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10041A638;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100049FC8(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10041A688;
  CLKappaFeaturesAlgLocalAudio::CLKappaFeaturesAlgLocalAudio((a1 + 3));
}

void sub_10004A044(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10041A688;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10004A11C(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10041A6D8;
  sub_10001F7B0((a1 + 3));
}

void sub_10004A198(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10041A6D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10004A270(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10041A728;
  CLKappaFeaturesAlgRemoteAudio::CLKappaFeaturesAlgRemoteAudio((a1 + 3));
}

void sub_10004A2EC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10041A728;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10004A3C4(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10041A778;
  CLKappaFeaturesAlgShortAudio::CLKappaFeaturesAlgShortAudio((a1 + 3));
}

void sub_10004A440(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10041A778;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10004A518(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10041A7C8;
  CLKappaFeaturesAlgSpin::CLKappaFeaturesAlgSpin((a1 + 3));
}

void sub_10004A594(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10041A7C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10004A66C(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10041A818;
  CLKappaFeaturesAlgSteps::CLKappaFeaturesAlgSteps((a1 + 3));
}

void sub_10004A6E8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10041A818;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10004A7C0(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10041A868;
  sub_100007428((a1 + 3));
}

void sub_10004A83C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10041A868;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10004A914(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10041A8B8;
  CLKappaFeaturesAlgTriggerClusters::CLKappaFeaturesAlgTriggerClusters((a1 + 3));
}

void sub_10004A990(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10041A8B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10004AA68(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10041A908;
  CLKappaFeaturesAlgPeakDetectorMAP::CLKappaFeaturesAlgPeakDetectorMAP((a1 + 3));
}

void sub_10004AAE4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10041A908;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10004ABBC(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10041A958;
  CLSafetyFeaturesAlgJointDetection::CLSafetyFeaturesAlgJointDetection((a1 + 3));
}

void sub_10004AC38(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10041A958;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10004AD10(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10041A9A8;
  CLKappaFeaturesAlgCrashClassifier::CLKappaFeaturesAlgCrashClassifier((a1 + 3));
}

void sub_10004AD8C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10041A9A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10004AE64(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10041A9F8;
  CLKappaEstimatesAlgAirbag::CLKappaEstimatesAlgAirbag((a1 + 3));
}

void sub_10004AEE0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10041A9F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10004AFB8(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_10041AA48;
  CLKappaEstimatesAlgCrash::CLKappaEstimatesAlgCrash((a1 + 24));
}

void sub_10004B034(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10041AA48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10004B10C(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10041AA98;
  CLKappaEstimatesAlgRolloverCrash::CLKappaEstimatesAlgRolloverCrash((a1 + 3));
}

void sub_10004B188(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10041AA98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10004B260(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10041AAE8;
  CLKappaEstimatesAlgHighSpeedCrash::CLKappaEstimatesAlgHighSpeedCrash((a1 + 3));
}

void sub_10004B2DC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10041AAE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10004B3B4(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10041AB38;
  CLKappaEstimatesAlgCrashClassifier::CLKappaEstimatesAlgCrashClassifier((a1 + 3));
}

void sub_10004B430(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10041AB38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10004B508(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10041AB88;
  CLMartyEstimatesAlgCoupledCrash::CLMartyEstimatesAlgCoupledCrash((a1 + 3));
}

void sub_10004B584(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10041AB88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10004B65C(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10041ABD8;
  CLMartyEstimatesAlgUncoupledCrash::CLMartyEstimatesAlgUncoupledCrash((a1 + 3));
}

void sub_10004B6D8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10041ABD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10004B7B0(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10041AC28;
  CLMartyEstimatesAlgHighSpeedCrash::CLMartyEstimatesAlgHighSpeedCrash((a1 + 3));
}

void sub_10004B82C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10041AC28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10004B904(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10041AC78;
  CLKappaInferencesAlgSevereCrash::CLKappaInferencesAlgSevereCrash((a1 + 3));
}

void sub_10004B980(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10041AC78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10004BA58(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10041ACC8;
  CLMartyInferencesAlgSevereCrash::CLMartyInferencesAlgSevereCrash((a1 + 3));
}

void sub_10004BAD4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10041ACC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10004BBAC(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_10041AD18;
  CLKappaFeaturesAlgDataIntegrity::CLKappaFeaturesAlgDataIntegrity((a1 + 24));
}

void sub_10004BC28(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10041AD18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10004BCA4(uint64_t a1)
{
  *a1 = off_100419A78;

  v2 = *(a1 + 584);
  if (v2)
  {
    sub_100009A48(v2);
  }

  v31 = (a1 + 552);
  sub_100049594(&v31);
  v31 = (a1 + 528);
  sub_100049594(&v31);
  v31 = (a1 + 504);
  sub_100049594(&v31);
  v31 = (a1 + 480);
  sub_100049594(&v31);
  v3 = *(a1 + 472);
  if (v3)
  {
    sub_100009A48(v3);
  }

  v4 = *(a1 + 456);
  if (v4)
  {
    sub_100009A48(v4);
  }

  v5 = *(a1 + 440);
  if (v5)
  {
    sub_100009A48(v5);
  }

  v6 = *(a1 + 424);
  if (v6)
  {
    sub_100009A48(v6);
  }

  v7 = *(a1 + 408);
  if (v7)
  {
    sub_100009A48(v7);
  }

  v8 = *(a1 + 392);
  if (v8)
  {
    sub_100009A48(v8);
  }

  v9 = *(a1 + 376);
  if (v9)
  {
    sub_100009A48(v9);
  }

  v10 = *(a1 + 360);
  if (v10)
  {
    sub_100009A48(v10);
  }

  v11 = *(a1 + 344);
  if (v11)
  {
    sub_100009A48(v11);
  }

  v12 = *(a1 + 328);
  if (v12)
  {
    sub_100009A48(v12);
  }

  v13 = *(a1 + 312);
  if (v13)
  {
    sub_100009A48(v13);
  }

  v14 = *(a1 + 296);
  if (v14)
  {
    sub_100009A48(v14);
  }

  v15 = *(a1 + 280);
  if (v15)
  {
    sub_100009A48(v15);
  }

  v16 = *(a1 + 264);
  if (v16)
  {
    sub_100009A48(v16);
  }

  v17 = *(a1 + 248);
  if (v17)
  {
    sub_100009A48(v17);
  }

  v18 = *(a1 + 232);
  if (v18)
  {
    sub_100009A48(v18);
  }

  v19 = *(a1 + 216);
  if (v19)
  {
    sub_100009A48(v19);
  }

  v20 = *(a1 + 200);
  if (v20)
  {
    sub_100009A48(v20);
  }

  v21 = *(a1 + 184);
  if (v21)
  {
    sub_100009A48(v21);
  }

  v22 = *(a1 + 168);
  if (v22)
  {
    sub_100009A48(v22);
  }

  v23 = *(a1 + 152);
  if (v23)
  {
    sub_100009A48(v23);
  }

  v24 = *(a1 + 136);
  if (v24)
  {
    sub_100009A48(v24);
  }

  v25 = *(a1 + 120);
  if (v25)
  {
    sub_100009A48(v25);
  }

  v26 = *(a1 + 104);
  if (v26)
  {
    sub_100009A48(v26);
  }

  v27 = *(a1 + 88);
  if (v27)
  {
    sub_100009A48(v27);
  }

  v28 = *(a1 + 72);
  if (v28)
  {
    sub_100009A48(v28);
  }

  v29 = *(a1 + 56);
  if (v29)
  {
    sub_100009A48(v29);
  }

  return a1;
}

void CSKappaAOIGeoServices::CSKappaAOIGeoServices(CSKappaAOIGeoServices *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
}

{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
}

void CSKappaAOIGeoServices::addAOI(uint64_t a1, uint64_t *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
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
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 8) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 12;
  }

  *(a1 + 8) = v7;
}

BOOL CSKappaAOIGeoServices::isInAOI(float **this, float a2, float a3)
{
  v3 = *this;
  v4 = this[1];
  if (*this == v4)
  {
    return 0;
  }

  do
  {
    v5 = v3[2];
    v6 = *v3;
    v7 = v3[1];
    GEOCalculateDistanceHighPrecision();
    v9 = fabs(v8);
    result = v9 < v5;
    v3 += 3;
  }

  while (v9 >= v5 && v3 != v4);
  return result;
}

void *CSKappaAOIBoost::CSKappaAOIBoostImpl::CSKappaAOIBoostImpl(void *this)
{
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0x10000000000000;
  return this;
}

{
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0x10000000000000;
  return this;
}

void CSKappaAOIBoost::CSKappaAOIBoostImpl::addAOI(uint64_t a1, float32x2_t *a2)
{
  v4 = *a2;
  v5 = a2[1].f32[0];
  v7 = a1 + 16;
  v6 = *(a1 + 16);
  if (v6)
  {
    v8 = *(a1 + 8);
  }

  else
  {
    v6 = operator new(0x2B8uLL);
    v8 = 0;
    v6[1] = 0;
    *v6 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = v6;
    *a1 = 0;
  }

  v9 = vcvtq_f64_f32(v4);
  v11 = vextq_s8(v9, v9, 8uLL);
  v12 = v5;
  v13[0] = &v11;
  v16 = a1;
  v17 = a1;
  v18 = 0;
  v19 = v8;
  v20 = v7;
  v21 = a1 + 8;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = a1;
  v13[1] = v9.i64[1];
  v14 = v9;
  v15 = v9.i64[0];
  sub_10004CF18(v6, v13);
  ++*a1;
  v10 = a2[1].f32[0];
  if (*(a1 + 24) >= v10)
  {
    v10 = *(a1 + 24);
  }

  *(a1 + 24) = v10;
}

void CSKappaAOIBoost::CSKappaAOIBoostImpl::isInAOI(CSKappaAOIBoost::CSKappaAOIBoostImpl *this, float a2, float a3)
{
  *&v6 = a3;
  *(&v6 + 1) = a2;
  v3 = *this;
  v4 = v6;
  v5 = v3;
  sub_10004C33C(this, &v4);
}

void sub_10004C2E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a14)
  {
    (*(*a14 + 8))(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_10004C33C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    sub_1000517CC(&v2, a1, a2);
  }

  else
  {
    v2 = 0;
    v3 = *a2;
    v4 = *(a2 + 16);
    v5 = 0;
    v6 = 0;
    v7 = 0;
    __p = 0;
    v9 = 0;
    v11 = 0;
    v12 = 0;
    v10 = 0;
  }

  sub_100055E5C();
}

uint64_t sub_10004C418(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a1)
  {
    v4 = sub_100056304(a1);
    v5 = v4;
    if (v3)
    {
      v6 = sub_100056348(a2);
      v7 = *(*v5 + 48);

      return v7(v5, v6);
    }

    v9 = *(*v4 + 24);
  }

  else
  {
    if (!v3)
    {
      return 1;
    }

    v9 = *(*sub_100056304(a2) + 24);
  }

  return v9();
}

void CSKappaAOIBoost::CSKappaAOIBoost(CSKappaAOIBoost *this)
{
  operator new();
}

{
  operator new();
}

void CSKappaAOIBoost::~CSKappaAOIBoost(CSKappaAOIBoost *this)
{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    v2 = v1[2];
    if (v2)
    {
      v3[0] = v1[2];
      v3[1] = v1;
      sub_10004F0AC(v2, v3);
      v1[2] = 0;
    }

    *v1 = 0;
    v1[1] = 0;
    operator delete();
  }
}

uint64_t *sub_10004C640(uint64_t *a1)
{
  v2 = *a1;
  if (v2 && (*(*v2 + 32))(v2))
  {
    *a1 = 0;
  }

  return a1;
}

uint64_t sub_10004C69C(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (result)
  {
    result = (*(*result + 32))(result);
  }

  *a1 = a2;
  if (a2)
  {
    v5 = *(*a2 + 24);

    return v5(a2);
  }

  return result;
}

double sub_10004C734(double *a1, double *a2, double *a3)
{
  v4 = *a2;
  if ((atomic_load_explicit(&qword_100457D88, memory_order_acquire) & 1) == 0)
  {
    v31 = a3;
    v23 = a2;
    v27 = v4;
    sub_1000563FC();
    v4 = v27;
    a2 = v23;
    a3 = v31;
  }

  p_inst_meths = &OBJC_PROTOCOL___CSCompanionServiceClientProtocol.inst_meths;
  v6 = *&qword_100457D80;
  v7 = a2[1];
  if ((atomic_load_explicit(&qword_100457D88, memory_order_acquire) & 1) == 0)
  {
    v32 = a3;
    v24 = v7;
    v28 = v4;
    v20 = v6;
    sub_1000563FC();
    v6 = v20;
    v7 = v24;
    v4 = v28;
    p_inst_meths = (&OBJC_PROTOCOL___CSCompanionServiceClientProtocol + 24);
    a3 = v32;
  }

  v8 = *(p_inst_meths + 432);
  v9 = *a3;
  if ((atomic_load_explicit(&qword_100457D88, memory_order_acquire) & 1) == 0)
  {
    v33 = a3;
    v25 = v7;
    v29 = v4;
    v19 = v9;
    v21 = v6;
    v18 = v8;
    sub_1000563FC();
    v8 = v18;
    v9 = v19;
    v6 = v21;
    v7 = v25;
    v4 = v29;
    p_inst_meths = (&OBJC_PROTOCOL___CSCompanionServiceClientProtocol + 24);
    a3 = v33;
  }

  v10 = v4 * v6;
  v11 = v7 * v8;
  v12 = v9 * *(p_inst_meths + 432);
  v13 = a3[1];
  if ((atomic_load_explicit(&qword_100457D88, memory_order_acquire) & 1) == 0)
  {
    v30 = v12;
    v34 = v10;
    v22 = v11;
    v26 = v13;
    sub_1000563FC();
    v13 = v26;
    v12 = v30;
    p_inst_meths = (&OBJC_PROTOCOL___CSCompanionServiceClientProtocol + 24);
    v11 = v22;
    v10 = v34;
  }

  v14 = v13 * *(p_inst_meths + 432);
  v38 = v11;
  v39 = v10;
  v36 = v14;
  v37 = v12;
  sub_10004C89C(a1, v10, v11, v12, v14);
  if (v16)
  {
    return v15;
  }

  sub_10004CAE4(&v39, &v38, &v37, &v36, a1, v35);
  return v35[0];
}

double sub_10004C89C(double *a1, double a2, double a3, double a4, double a5)
{
  v8 = vabdd_f64(a4, a2);
  v9 = 3.14159265;
  if (v8 == 3.14159265)
  {
    goto LABEL_2;
  }

  v10 = a4 - a2;
  if (COERCE__INT64(fabs(a4 - a2)) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v19 = fabs(v8 + -3.14159265);
    v9 = 3.14159265;
    if (v8 < 3.14159265)
    {
      v8 = 3.14159265;
    }

    if (v8 < 1.0)
    {
      v8 = 1.0;
    }

    if (v19 <= v8 * 2.22044605e-16)
    {
      goto LABEL_2;
    }
  }

  v9 = 3.14159265;
  if (v10 <= 3.14159265)
  {
    if (v10 >= -3.14159265)
    {
      goto LABEL_3;
    }

    v9 = fmod(v10 + -3.14159265, 6.28318531) + 3.14159265;
LABEL_2:
    v10 = v9;
    goto LABEL_3;
  }

  v20 = fmod(v10 + 3.14159265, 6.28318531);
  v10 = v20 + -3.14159265;
  if (v20 + -3.14159265 == -3.14159265)
  {
    goto LABEL_2;
  }

  if (COERCE_UNSIGNED_INT64(fabs(v20 + -3.14159265)) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v21 = fabs(v10);
    v9 = 3.14159265;
    v22 = fabs(v10 + 3.14159265);
    if (v21 < 3.14159265)
    {
      v21 = 3.14159265;
    }

    if (v21 < 1.0)
    {
      v21 = 1.0;
    }

    if (v22 <= v21 * 2.22044605e-16)
    {
      goto LABEL_2;
    }
  }

LABEL_3:
  if (a3 <= a5)
  {
    v11 = a3;
  }

  else
  {
    v11 = a5;
  }

  if (a3 > a5)
  {
    a5 = a3;
  }

  if (sub_10004CD58(v11, a5, v10))
  {
    v12 = (*a1 - a1[1]) / *a1;
    v13 = v12 / (2.0 - v12);
    v14 = *a1 / (v13 + 1.0);
    v15 = v13 * 1.5;
    v16 = v14 * (a5 - sin(a5 + a5) * (v13 * 1.5));
    return vabdd_f64(v16, v14 * (v11 - sin(v11 + v11) * v15));
  }

  else
  {
    v18 = fabs(v10);
    if (v18 == 3.14159265)
    {
      return sub_10004CE5C(a1, v11, a5);
    }

    result = 0.0;
    if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v23 = fabs(v18 + -3.14159265);
      if (v18 < 3.14159265)
      {
        v18 = 3.14159265;
      }

      if (v18 < 1.0)
      {
        v18 = 1.0;
      }

      if (v23 <= v18 * 2.22044605e-16)
      {
        return sub_10004CE5C(a1, v11, a5);
      }
    }
  }

  return result;
}

void sub_10004CAE4(double *a1@<X0>, double *a2@<X1>, double *a3@<X2>, double *a4@<X3>, double *a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = 0u;
  *(a6 + 16) = 0u;
  *(a6 + 32) = 0x3FF0000000000000;
  v9 = *a1;
  v10 = *a3;
  if (*a1 != *a3)
  {
    if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_19;
    }

    v37 = fabs(v9);
    v38 = fabs(v10);
    v39 = vabdd_f64(v9, v10);
    if (v37 < v38)
    {
      v37 = v38;
    }

    if (v37 < 1.0)
    {
      v37 = 1.0;
    }

    if (v39 > v37 * 2.22044605e-16)
    {
      goto LABEL_19;
    }
  }

  v11 = *a2;
  v12 = *a4;
  if (*a2 != *a4)
  {
    v13 = (*&v11 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v12 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
    if (!v13)
    {
      goto LABEL_19;
    }

    v14 = fabs(v11);
    v15 = fabs(v12);
    v16 = vabdd_f64(v11, v12);
    if (v14 >= v15)
    {
      v17 = v14;
    }

    else
    {
      v17 = v15;
    }

    if (v17 < 1.0)
    {
      v17 = 1.0;
    }

    if (v16 > v17 * 2.22044605e-16)
    {
LABEL_19:
      v19 = *a5;
      v20 = *a5 - a5[1];
      v21 = cos(v10 - v9);
      v22 = __sincos_stret(*a2);
      v23 = __sincos_stret(*a4);
      v24 = v21 * (v22.__cosval * v23.__cosval) + v22.__sinval * v23.__sinval;
      if (v24 > 1.0)
      {
        v25 = 1.0;
      }

      else
      {
        v25 = v21 * (v22.__cosval * v23.__cosval) + v22.__sinval * v23.__sinval;
      }

      if (v24 >= -1.0)
      {
        v26 = v25;
      }

      else
      {
        v26 = -1.0;
      }

      v27 = acos(v26);
      v28 = sin(v27) * 3.0;
      v29 = 1.0 - v26;
      v30 = v26 + 1.0;
      v31 = 0.0;
      v32 = 0.0;
      if (1.0 - v26 != 0.0)
      {
        if (COERCE_UNSIGNED_INT64(fabs(1.0 - v26)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_31;
        }

        v33 = fabs(v29);
        v34 = 1.0;
        if (v33 >= 1.0)
        {
          v34 = v33;
        }

        v13 = v33 > v34 * 2.22044605e-16;
        v32 = 0.0;
        if (v13)
        {
LABEL_31:
          v32 = (v27 + v28) / v29;
        }
      }

      if (v30 != 0.0)
      {
        if (COERCE_UNSIGNED_INT64(fabs(v26 + 1.0)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_37;
        }

        v35 = fabs(v30);
        v36 = 1.0;
        if (v35 >= 1.0)
        {
          v36 = v35;
        }

        if (v35 > v36 * 2.22044605e-16)
        {
LABEL_37:
          v31 = (v27 - v28) / v30;
        }
      }

      *a6 = v19 * (v27 + v20 / v19 * -0.25 * ((v22.__sinval + v23.__sinval) * (v22.__sinval + v23.__sinval) * v31 + v32 * ((v22.__sinval - v23.__sinval) * (v22.__sinval - v23.__sinval))));
    }
  }
}

BOOL sub_10004CD58(double a1, double a2, double a3)
{
  if (a3 == 0.0)
  {
    return 1;
  }

  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v4 = fabs(a3);
    v5 = 1.0;
    if (v4 >= 1.0)
    {
      v5 = v4;
    }

    if (v4 <= v5 * 2.22044605e-16)
    {
      return 1;
    }
  }

  if (a2 != 1.57079633)
  {
    if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    v8 = fabs(a2);
    v9 = fabs(a2 + -1.57079633);
    if (v8 < 1.57079633)
    {
      v8 = 1.57079633;
    }

    if (v8 < 1.0)
    {
      v8 = 1.0;
    }

    if (v9 > v8 * 2.22044605e-16)
    {
      return 0;
    }
  }

  if (a1 == -1.57079633)
  {
    return 1;
  }

  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v6 = fabs(a1);
  v7 = fabs(a1 + 1.57079633);
  if (v6 < 1.57079633)
  {
    v6 = 1.57079633;
  }

  if (v6 < 1.0)
  {
    v6 = 1.0;
  }

  return v7 <= v6 * 2.22044605e-16;
}

double sub_10004CE5C(double *a1, double a2, double a3)
{
  if (a2 + a3 >= 0.0)
  {
    v5 = 2.0;
  }

  else
  {
    v5 = -2.0;
  }

  v6 = (*a1 - a1[1]) / *a1;
  v7 = v6 / (2.0 - v6);
  v8 = *a1 / (v7 + 1.0);
  v9 = v7 * 1.5;
  v10 = v5 * (v8 * (v7 * 1.5 * -1.2246468e-16 + 1.57079633)) - v8 * (a2 - sin(a2 + a2) * (v7 * 1.5));
  return vabdd_f64(v10, v8 * (a3 - sin(a3 + a3) * v9));
}

void sub_10004CF18(_DWORD *a1, uint64_t a2)
{
  v4 = a2;
  v2 = (a1 + 2);
  v3 = *a1;
  switch(v3 ^ (v3 >> 31))
  {
    case 0:
      if (v3 < 0)
      {
        v2 = *v2;
      }

      sub_10004D004(&v4, v2);
      break;
    case 1:
      if (v3 < 0)
      {
        v2 = *v2;
      }

      sub_10004F4B0(a2, v2);
      break;
    default:
      sub_10004D5E4();
  }
}

void sub_10004D004(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(*a1 + 104);
  if (v3 != **(*a1 + 80))
  {
    sub_100056444();
  }

  v4 = *(v2 + 64);
  if (v4 != v3 && v4 != -1)
  {
    sub_100056470();
  }

  sub_10004D078(a2, *v2);

  sub_10004D0C0(v2, a2);
}

__n128 sub_10004D078(void *a1, __n128 *a2)
{
  if ((*a1 - 17) <= 0xFFFFFFFFFFFFFFEDLL)
  {
    sub_10005649C();
  }

  v2 = &a1[3 * *a1];
  result = *a2;
  v2[3] = a2[1].n128_u64[0];
  *(v2 + 1) = result;
  ++*a1;
  return result;
}

void sub_10004D0C0(uint64_t a1, void *a2)
{
  v5 = *(a1 + 88);
  v4 = a1 + 88;
  if (v5)
  {
    v6 = sub_10004D170(v4);
    v7 = sub_10004D534(*(v6 + 32));
    if (!v7)
    {
      sub_10004D4D4();
    }

    if (v7 != a2)
    {
      sub_1000564C8();
    }
  }

  if (*a2 > 0x10uLL)
  {
    sub_10004D1B0(a1, a2);
  }
}

uint64_t sub_10004D170(uint64_t a1)
{
  v1 = *a1;
  if (!*a1)
  {
    sub_100056520();
  }

  v2 = *(a1 + 8);
  if (*v1 <= v2)
  {
    sub_1000564F4();
  }

  return &v1[5 * v2 + 1];
}

void sub_10004D1B0(uint64_t a1, void *a2)
{
  v30 = 0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 112);
  sub_10004DCE8(&v30, a2, &v28);
  if (v30 != 1)
  {
    sub_10005654C();
  }

  v8 = (a1 + 88);
  v7 = *(a1 + 88);
  v9 = *(a1 + 112);
  v26 = v31[4];
  v27 = v9;
  if (v7)
  {
    v10 = sub_10004D170(a1 + 88);
    v11 = v29;
    *v10 = v28;
    *(v10 + 16) = v11;
    if (*v8)
    {
      if (v30)
      {
        sub_10004DE74(*v8, v31);
        return;
      }

      v18 = "(i < v.size())&&(index out of bounds)";
      v19 = 94;
      v20 = "varray.hpp";
      v21 = "check_index";
    }

    else
    {
      v18 = "(parent)&&(null pointer)";
      v19 = 253;
      v20 = "insert.hpp";
      v21 = "parent_elements";
    }

LABEL_17:
    __assert_rtn(v21, v20, v19, v18);
  }

  v12 = sub_10004D534(**(a1 + 72));
  if (!v12)
  {
    *&v22[0].f64[0] = &off_10041AEB0;
    sub_10004D4D4();
  }

  if (v12 != a2)
  {
    v18 = "(&n == &rtree::get<Node>(*m_root_node))&&(node should be the root)";
    v19 = 449;
    v20 = "insert.hpp";
    v21 = "split";
    goto LABEL_17;
  }

  v13 = operator new(0x2B8uLL);
  *(v13 + 1) = 0;
  *v13 = 1;
  v14 = *(a1 + 112);
  v24 = v13;
  v25 = v14;
  v15 = sub_10004F3B0(v13);
  if (!v15)
  {
    *&v22[0].f64[0] = &off_10041AEB0;
    sub_10004D4D4();
  }

  v16 = **(a1 + 72);
  v22[0] = v28;
  v22[1] = v29;
  v23 = v16;
  sub_10004DE74(v15, v22);
  v17 = sub_10004F3B0(v13);
  if (!v17)
  {
    *&v22[0].f64[0] = &off_10041AEB0;
    sub_10004D4D4();
  }

  if (!v30)
  {
    __assert_rtn("check_index", "varray.hpp", 94, "(i < v.size())&&(index out of bounds)");
  }

  sub_10004DE74(v17, v31);
  **(a1 + 72) = v13;
  ++**(a1 + 80);
}

void sub_10004D434(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, _DWORD *a14, uint64_t a15, char a16)
{
  if (a2)
  {
    std::exception::~exception(&a9);
    __cxa_begin_catch(exception_object);
    *sub_10004DEC0(a14) = 0;
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_10004D494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  __cxa_end_catch();
  sub_10004DF34(va);
  JUMPOUT(0x10004D4C4);
}

void sub_10004D4D4()
{
  exception = __cxa_allocate_exception(0x38uLL);
  sub_10004D610(exception);
}

void *sub_10004D534(_DWORD *a1)
{
  v3 = *a1;
  v1 = a1 + 2;
  v2 = v3;
  v4 = 0;
  switch(v3 ^ (v3 >> 31))
  {
    case 0:
      if (v2 < 0)
      {
        v4 = *v1;
      }

      else
      {
        v4 = v1;
      }

      break;
    case 1:
      return v4;
    default:
      sub_10004D5E4();
  }

  return v4;
}

uint64_t sub_10004D610(uint64_t result)
{
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = -1;
  *result = &off_10041AE38;
  *(result + 8) = off_10041AE68;
  *(result + 16) = off_10041AE90;
  return result;
}

uint64_t sub_10004D680(uint64_t a1)
{
  *(a1 + 16) = &off_10041ADB8;
  sub_10004C640((a1 + 24));
  std::exception::~exception((a1 + 8));
  return a1;
}

void sub_10004D898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10004C640(&a9);
  sub_10004C640(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void sub_10004D904(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x38uLL);
  sub_10004DBB8(exception, a1);
}

void sub_10004D960(uint64_t a1)
{
  *(a1 + 16) = &off_10041ADB8;
  sub_10004C640((a1 + 24));
  std::exception::~exception((a1 + 8));

  operator delete();
}

void sub_10004D9D4(uint64_t a1)
{
  *(a1 + 8) = &off_10041ADB8;
  sub_10004C640((a1 + 16));

  std::exception::~exception(a1);
}

void sub_10004DA30(uint64_t a1)
{
  *(a1 + 8) = &off_10041ADB8;
  sub_10004C640((a1 + 16));
  std::exception::~exception(a1);

  operator delete();
}

void sub_10004DAB4(void *a1)
{
  *a1 = &off_10041ADB8;
  v1 = (a1 - 1);
  sub_10004C640(a1 + 1);

  std::exception::~exception(v1);
}

void sub_10004DB0C(void *a1)
{
  *a1 = &off_10041ADB8;
  v1 = (a1 - 1);
  sub_10004C640(a1 + 1);
  std::exception::~exception(v1);

  operator delete();
}

void sub_10004DB80(std::exception *a1)
{
  std::exception::~exception(a1);

  operator delete();
}

uint64_t sub_10004DBB8(uint64_t a1, uint64_t a2)
{
  *a1 = &off_10041AD88;
  *(a1 + 8) = &off_10041AEB0;
  v4 = *(a2 + 24);
  *(a1 + 16) = &off_10041ADB8;
  *(a1 + 24) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v5;
  *a1 = &off_10041AE38;
  *(a1 + 8) = off_10041AE68;
  *(a1 + 16) = off_10041AE90;
  return a1;
}

double sub_10004DCE8(void *a1, void *a2, float64x2_t *a3)
{
  v6 = operator new(0x2B8uLL);
  v6[1] = 0;
  *v6 = 0;
  v7 = sub_10004D534(v6);
  if (!v7)
  {
    *&v11[0] = &off_10041AEB0;
    sub_10004D4D4();
  }

  sub_10004DF64(a2, v7, a3, v13);
  if ((*a2 - 17) < 0xFFFFFFFFFFFFFFF3)
  {
    v9 = "(parameters.get_min_elements() <= rtree::elements(n).size() && rtree::elements(n).size() <= parameters.get_max_elements())&&(unexpected number of elements)";
    v10 = 193;
    goto LABEL_7;
  }

  if ((*v7 - 17) <= 0xFFFFFFFFFFFFFFF2)
  {
    v9 = "(parameters.get_min_elements() <= rtree::elements(n2).size() && rtree::elements(n2).size() <= parameters.get_max_elements())&&(unexpected number of elements)";
    v10 = 196;
LABEL_7:
    __assert_rtn("apply", "insert.hpp", v10, v9);
  }

  v11[0] = v13[0];
  v11[1] = v13[1];
  v12 = v6;
  *&result = sub_10004E3DC(a1, v11).n128_u64[0];
  return result;
}

void sub_10004DE18(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_begin_catch(a1);
  if (*v10 >= 0x11uLL)
  {
    --*v10;
  }

  sub_10004F0AC(v9, &a9);
  __cxa_rethrow();
}

__n128 sub_10004DE74(void *a1, uint64_t a2)
{
  if ((*a1 - 17) <= 0xFFFFFFFFFFFFFFEDLL)
  {
    sub_10005649C();
  }

  v2 = &a1[5 * *a1];
  result = *a2;
  v4 = *(a2 + 16);
  v2[5] = *(a2 + 32);
  *(v2 + 3) = v4;
  *(v2 + 1) = result;
  ++*a1;
  return result;
}

void *sub_10004DEC0(_DWORD *a1)
{
  result = sub_10004F3B0(a1);
  if (!result)
  {
    sub_10004D4D4();
  }

  return result;
}

void sub_10004DF64(uint64_t a1, void *a2, float64x2_t *a3, float64x2_t *a4)
{
  if (*a1 != 17)
  {
    sub_100056578();
  }

  v57 = 0;
  sub_10004E428(&v57, a1 + 8, (a1 + 416));
  if (v57 != 17)
  {
    sub_1000565A4();
  }

  v8 = 0;
  v9 = 0;
  v10 = &v58;
  v11 = v58;
  v12 = &v60;
  v13 = 1;
  v14 = v58;
  do
  {
    v15 = *v12;
    v12 += 3;
    v16 = v15;
    if (v15 < v11)
    {
      v9 = v13;
      v11 = v16;
    }

    if (v14 < v16)
    {
      v14 = v16;
      v8 = v13;
    }

    ++v13;
  }

  while (v13 != 17);
  if (v9 == v8)
  {
    v8 = (v9 + 1) % 0x11;
  }

  v17 = 0;
  v18 = 0;
  v19 = v14 - v11;
  v20 = v59;
  v21 = &v61;
  v22 = 1;
  v23 = v59;
  do
  {
    v24 = *v21;
    v21 += 3;
    v25 = v24;
    if (v24 < v20)
    {
      v18 = v22;
      v20 = v25;
    }

    if (v23 < v25)
    {
      v23 = v25;
      v17 = v22;
    }

    ++v22;
  }

  while (v22 != 17);
  v26 = v23 - v20;
  if (v18 == v17)
  {
    v17 = (v18 + 1) % 0x11;
  }

  if (v19 >= v26)
  {
    v27 = v9;
  }

  else
  {
    v27 = v18;
  }

  if (v19 >= v26)
  {
    v28 = v8;
  }

  else
  {
    v28 = v17;
  }

  *a1 = 0;
  if (*a2)
  {
    sub_1000565D0();
  }

  if (v27 > 0x10)
  {
    goto LABEL_53;
  }

  v29 = (&v58 + 3 * v27);
  sub_10004D078(a1, v29);
  if (v57 <= v28 || (v30 = (&v58 + 3 * v28), sub_10004D078(a2, v30), v31 = v57, v57 <= v27) || (v32 = *v29, *a3 = *v29, a3[1] = v32, v31 <= v28))
  {
LABEL_53:
    __assert_rtn("check_index", "varray.hpp", 94, "(i < v.size())&&(index out of bounds)");
  }

  v33 = 0;
  v34 = *v30;
  *a4 = *v30;
  a4[1] = v34;
  v35 = vsubq_f64(a3[1], *a3);
  v51 = (v34.n128_f64[0] - v34.n128_f64[0]) * (v34.n128_f64[1] - v34.n128_f64[1]);
  *&v52 = *&vmulq_laneq_f64(v35, v35, 1);
  v36 = 15;
  do
  {
    if (v27 != v33 && v28 != v33)
    {
      if (v57 <= v33)
      {
        __assert_rtn("check_index", "varray.hpp", 94, "(i < v.size())&&(index out of bounds)");
      }

      if ((*a1 + v36) <= 4)
      {
        sub_10004D078(a1, v10);
        sub_10004E514(a3, v10->n128_f64);
        v45 = vsubq_f64(a3[1], *a3);
        *&v46 = *&vmulq_laneq_f64(v45, v45, 1);
      }

      else
      {
        if ((*a2 + v36) <= 4)
        {
          sub_10004D078(a2, v10);
          sub_10004E514(a4, v10->n128_f64);
          v47 = vsubq_f64(a4[1], *a4);
          *&v44 = *&vmulq_laneq_f64(v47, v47, 1);
LABEL_44:
          v51 = v44;
          if (!v36)
          {
            goto LABEL_52;
          }

LABEL_48:
          --v36;
          goto LABEL_49;
        }

        v37 = a3[1];
        v55 = *a3;
        v56 = v37;
        v38 = a4[1];
        v53 = *a4;
        v54 = v38;
        sub_10004E514(&v55, v10->n128_f64);
        sub_10004E514(&v53, v10->n128_f64);
        v39 = vsubq_f64(v56, v55);
        v40 = vmulq_laneq_f64(v39, v39, 1).f64[0];
        v41 = vsubq_f64(v54, v53);
        v42 = vmulq_laneq_f64(v41, v41, 1).f64[0];
        v49 = v42;
        v50 = v40;
        if (v40 - v52 >= v42 - v51 && (v40 - v52 != v42 - v51 || v52 >= v51 && (v52 != v51 || *a1 > *a2)))
        {
          sub_10004D078(a2, v10);
          v43 = v54;
          *a4 = v53;
          a4[1] = v43;
          v44 = v49;
          goto LABEL_44;
        }

        sub_10004D078(a1, v10);
        v48 = v56;
        *a3 = v55;
        a3[1] = v48;
        v46 = v50;
      }

      v52 = v46;
      if (!v36)
      {
LABEL_52:
        __assert_rtn("apply", "redistribute_elements.hpp", 450, "(0 < remaining)&&(unexpected value)");
      }

      goto LABEL_48;
    }

LABEL_49:
    ++v33;
    v10 = (v10 + 24);
  }

  while (v33 != 17);
}

void sub_10004E37C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    *v3 = 0;
    *v2 = 0;
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_10004E3C4(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x10004E3CCLL);
  }

  sub_10000CD10(a1);
}

__n128 sub_10004E3DC(void *a1, uint64_t a2)
{
  if ((*a1 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    sub_10005649C();
  }

  v2 = &a1[5 * *a1];
  result = *a2;
  v4 = *(a2 + 16);
  v2[5] = *(a2 + 32);
  *(v2 + 3) = v4;
  *(v2 + 1) = result;
  ++*a1;
  return result;
}

unint64_t *sub_10004E428(unint64_t *result, uint64_t a2, __int128 *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a3 - a2) >> 3);
  if (v3 >= 0x12)
  {
    sub_10005649C();
  }

  v4 = *result;
  if (*result <= v3)
  {
    if (v4)
    {
      v6 = a2 + 24 * v4;
      v7 = result + 1;
      v8 = a2;
      do
      {
        *v7 = *v8;
        v7[2] = *(v8 + 16);
        v8 += 24;
        v7 += 3;
      }

      while (v8 != v6);
      v9 = *result;
    }

    else
    {
      v9 = 0;
    }

    v10 = (a2 + 24 * v9);
    if (v10 != a3)
    {
      v11 = &result[3 * v9 + 1];
      do
      {
        v12 = *v10;
        *(v11 + 16) = *(v10 + 2);
        *v11 = v12;
        v11 += 24;
        v10 = (v10 + 24);
      }

      while (v10 != a3);
    }
  }

  else if (a2 != a3)
  {
    v5 = result + 1;
    do
    {
      *v5 = *a2;
      v5[2] = *(a2 + 16);
      a2 += 24;
      v5 += 3;
    }

    while (a2 != a3);
  }

  *result = v3;
  return result;
}

void sub_10004E514(float64x2_t *a1, double *a2)
{
  v3 = *a2;
  v58 = a2[1];
  v59 = v3;
  sub_10004EAF0(&v59, &v58, 1);
  v5 = v58;
  v4 = v59;
  v6 = *a1;
  v7 = a1[1];
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(*a1, vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL)), vceqq_f64(v7, vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL)))))))
  {
    v8 = *a1;
    v58 = a1->f64[1];
    v59 = v8.f64[0];
    v56 = v7.f64[1];
    v57 = v7.f64[0];
    v9 = vabdd_f64(v6.f64[0], v7.f64[0]);
    if (v9 < 360.0)
    {
      v18 = vabdd_f64(360.0, v9);
      v19 = fmax(v9, 360.0);
      if (v19 < 1.0)
      {
        v19 = 1.0;
      }

      v10 = v18 <= v19 * 2.22044605e-16;
    }

    else
    {
      v10 = 1;
    }

    sub_10004ED74(&v59, &v58, &v57, &v56, v10);
    v21 = v58;
    v20 = v59;
    a1->f64[0] = v59;
    v17 = v56;
    v22 = v57;
    a1[1].f64[0] = v57;
    v23 = fabs(v5);
    v24 = 90.0;
    if (v23 == 90.0)
    {
      goto LABEL_25;
    }

    if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_38;
    }

    v26 = fabs(v23 + -90.0);
    if (v23 < 90.0)
    {
      v23 = 90.0;
    }

    if (v23 < 1.0)
    {
      v23 = 1.0;
    }

    if (v26 <= v23 * 2.22044605e-16)
    {
LABEL_25:
      if (v21 >= v5)
      {
        v25 = v5;
      }

      else
      {
        v25 = v21;
      }

      a1->f64[1] = v25;
    }

    else
    {
LABEL_38:
      v27 = fabs(v21);
      if (v21 != v17)
      {
        if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_58;
        }

        v29 = fabs(v17);
        v30 = vabdd_f64(v21, v17);
        if (v27 >= v29)
        {
          v29 = v27;
        }

        if (v29 < 1.0)
        {
          v29 = 1.0;
        }

        if (v30 > v29 * 2.22044605e-16)
        {
          goto LABEL_58;
        }
      }

      if (v27 != 90.0)
      {
        if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_58;
        }

        v31 = fabs(v27 + -90.0);
        if (v27 >= 90.0)
        {
          v24 = v27;
        }

        if (v24 < 1.0)
        {
          v24 = 1.0;
        }

        if (v31 > v24 * 2.22044605e-16)
        {
LABEL_58:
          if (v5 < v21)
          {
            v21 = v5;
          }

          if (v17 < v5)
          {
            v17 = v5;
          }

          if (v4 >= v20)
          {
            goto LABEL_70;
          }

          if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_81;
          }

          v37 = fabs(v20);
          v38 = fabs(v4);
          v39 = vabdd_f64(v20, v4);
          if (v37 < v38)
          {
            v37 = v38;
          }

          if (v37 < 1.0)
          {
            v37 = 1.0;
          }

          if (v39 <= v37 * 2.22044605e-16)
          {
LABEL_70:
            if (v22 < v4)
            {
              if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
              {
                goto LABEL_109;
              }

              v32 = fabs(v4);
              v33 = fabs(v22);
              v34 = vabdd_f64(v4, v22);
              if (v32 < v33)
              {
                v32 = v33;
              }

              if (v32 < 1.0)
              {
                v32 = 1.0;
              }

              if (v34 > v32 * 2.22044605e-16)
              {
LABEL_109:
                if (v20 < 0.0)
                {
                  v35 = v4 - v22;
                  v36 = 360.0 - v4 + v20;
                  if (v36 < v4 - v22)
                  {
                    if (COERCE_UNSIGNED_INT64(fabs(v4 - v22)) > 0x7FEFFFFFFFFFFFFFLL || COERCE_UNSIGNED_INT64(fabs(360.0 - v4 + v20)) > 0x7FEFFFFFFFFFFFFFLL)
                    {
                      goto LABEL_110;
                    }

                    v50 = fabs(v35);
                    v51 = fabs(v36);
                    v52 = vabdd_f64(v35, v36);
                    if (v50 >= v51)
                    {
                      v53 = v50;
                    }

                    else
                    {
                      v53 = v51;
                    }

                    if (v53 < 1.0)
                    {
                      v53 = 1.0;
                    }

                    if (v52 > v53 * 2.22044605e-16)
                    {
LABEL_110:
                      v22 = v22 + 360.0;
                      goto LABEL_92;
                    }
                  }
                }

                v22 = v4;
              }
            }
          }

          else
          {
LABEL_81:
            v40 = v4 + 360.0;
            if (v22 < v4 + 360.0)
            {
              if (COERCE_UNSIGNED_INT64(fabs(v4 + 360.0)) > 0x7FEFFFFFFFFFFFFFLL || (*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
              {
                goto LABEL_89;
              }

              v41 = fabs(v40);
              v42 = fabs(v22);
              v43 = vabdd_f64(v40, v22);
              if (v41 < v42)
              {
                v41 = v42;
              }

              if (v41 < 1.0)
              {
                v41 = 1.0;
              }

              if (v43 > v41 * 2.22044605e-16)
              {
LABEL_89:
                v44 = v20 - v4;
                v45 = v40 - v22;
                if (v20 - v4 < v40 - v22)
                {
                  if (COERCE_UNSIGNED_INT64(fabs(v40 - v22)) > 0x7FEFFFFFFFFFFFFFLL || COERCE_UNSIGNED_INT64(fabs(v20 - v4)) > 0x7FEFFFFFFFFFFFFFLL)
                  {
                    goto LABEL_92;
                  }

                  v46 = fabs(v45);
                  v47 = fabs(v44);
                  v48 = vabdd_f64(v45, v44);
                  if (v46 >= v47)
                  {
                    v49 = v46;
                  }

                  else
                  {
                    v49 = v47;
                  }

                  if (v49 < 1.0)
                  {
                    v49 = 1.0;
                  }

                  if (v48 > v49 * 2.22044605e-16)
                  {
                    goto LABEL_92;
                  }
                }

                v22 = v4 + 360.0;
              }
            }
          }

          v4 = v20;
LABEL_92:
          a1->f64[0] = v4;
          a1->f64[1] = v21;
          a1[1].f64[0] = v22;
          goto LABEL_31;
        }
      }

      if (v21 >= v5)
      {
        v28 = v5;
      }

      else
      {
        v28 = v21;
      }

      a1->f64[0] = v4;
      a1->f64[1] = v28;
      a1[1].f64[0] = v4;
    }

    if (v5 >= v17)
    {
      v17 = v5;
    }
  }

  else
  {
    if ((atomic_load_explicit(&qword_100457D88, memory_order_acquire) & 1) == 0)
    {
      sub_1000565FC();
    }

    p_inst_meths = &OBJC_PROTOCOL___CSCompanionServiceClientProtocol.inst_meths;
    v12 = v4 * *&qword_100457D80;
    if ((atomic_load_explicit(&qword_100457D98, memory_order_acquire) & 1) == 0)
    {
      sub_100056630();
      p_inst_meths = (&OBJC_PROTOCOL___CSCompanionServiceClientProtocol + 24);
    }

    v13 = &OBJC_PROTOCOL___CSCompanionServiceClientProtocol.inst_meths;
    a1->f64[0] = v12 * *&qword_100457D90;
    if ((atomic_load_explicit(&qword_100457D88, memory_order_acquire) & 1) == 0)
    {
      v54 = p_inst_meths;
      sub_1000565FC();
      v13 = (&OBJC_PROTOCOL___CSCompanionServiceClientProtocol + 24);
      p_inst_meths = v54;
    }

    v14 = v5 * *(p_inst_meths + 432);
    if ((atomic_load_explicit(&qword_100457D98, memory_order_acquire) & 1) == 0)
    {
      sub_100056630();
      v13 = (&OBJC_PROTOCOL___CSCompanionServiceClientProtocol + 24);
      p_inst_meths = (&OBJC_PROTOCOL___CSCompanionServiceClientProtocol + 24);
    }

    a1->f64[1] = v14 * *(v13 + 434);
    if ((atomic_load_explicit(&qword_100457D88, memory_order_acquire) & 1) == 0)
    {
      sub_1000565FC();
      v13 = (&OBJC_PROTOCOL___CSCompanionServiceClientProtocol + 24);
      p_inst_meths = (&OBJC_PROTOCOL___CSCompanionServiceClientProtocol + 24);
    }

    v15 = v4 * *(p_inst_meths + 432);
    if ((atomic_load_explicit(&qword_100457D98, memory_order_acquire) & 1) == 0)
    {
      sub_100056630();
      v13 = (&OBJC_PROTOCOL___CSCompanionServiceClientProtocol + 24);
      p_inst_meths = (&OBJC_PROTOCOL___CSCompanionServiceClientProtocol + 24);
    }

    a1[1].f64[0] = v15 * *(v13 + 434);
    if ((atomic_load_explicit(&qword_100457D88, memory_order_acquire) & 1) == 0)
    {
      sub_1000565FC();
      v13 = (&OBJC_PROTOCOL___CSCompanionServiceClientProtocol + 24);
      p_inst_meths = (&OBJC_PROTOCOL___CSCompanionServiceClientProtocol + 24);
    }

    v16 = v5 * *(p_inst_meths + 432);
    if ((atomic_load_explicit(&qword_100457D98, memory_order_acquire) & 1) == 0)
    {
      v55 = v13;
      sub_100056630();
      v13 = v55;
    }

    v17 = v16 * *(v13 + 434);
  }

LABEL_31:
  a1[1].f64[1] = v17;
}

void sub_10004EAF0(double *a1, double *a2, int a3)
{
  v6 = *a1;
  v7 = fabs(*a1);
  v8 = 180.0;
  if (v7 == 180.0)
  {
    goto LABEL_2;
  }

  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v10 = fabs(v7 + -180.0);
    v8 = 180.0;
    if (v7 < 180.0)
    {
      v7 = 180.0;
    }

    if (v7 < 1.0)
    {
      v7 = 1.0;
    }

    if (v10 <= v7 * 2.22044605e-16)
    {
      goto LABEL_2;
    }
  }

  v8 = 180.0;
  if (v6 <= 180.0)
  {
    if (v6 >= -180.0)
    {
      goto LABEL_3;
    }

    v8 = fmod(v6 + -180.0, 360.0) + 180.0;
    goto LABEL_2;
  }

  v6 = fmod(v6 + 180.0, 360.0) + -180.0;
  *a1 = v6;
  if (v6 == -180.0)
  {
    goto LABEL_2;
  }

  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v11 = fabs(v6);
    v8 = 180.0;
    v12 = fabs(v6 + 180.0);
    if (v11 < 180.0)
    {
      v11 = 180.0;
    }

    if (v11 < 1.0)
    {
      v11 = 1.0;
    }

    if (v12 <= v11 * 2.22044605e-16)
    {
LABEL_2:
      *a1 = v8;
      v6 = v8;
    }
  }

  if (!a3)
  {
    goto LABEL_27;
  }

LABEL_3:
  v9 = fabs(*a2);
  if (v9 == 90.0)
  {
    goto LABEL_5;
  }

  if ((*a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_27;
  }

  v13 = fabs(v9 + -90.0);
  if (v9 < 90.0)
  {
    v9 = 90.0;
  }

  if (v9 < 1.0)
  {
    v9 = 1.0;
  }

  if (v13 <= v9 * 2.22044605e-16)
  {
LABEL_5:
    *a1 = 0.0;
    v6 = 0.0;
  }

  else
  {
LABEL_27:
    if (v6 <= -180.0)
    {
      goto LABEL_44;
    }
  }

  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v14 = fabs(v6);
    v15 = fabs(v6 + 180.0);
    if (v14 < 180.0)
    {
      v14 = 180.0;
    }

    if (v14 < 1.0)
    {
      v14 = 1.0;
    }

    if (v15 <= v14 * 2.22044605e-16)
    {
LABEL_44:
      sub_100056664();
    }
  }

  if (v6 > 180.0)
  {
    if (v6 == INFINITY)
    {
      goto LABEL_45;
    }

    v16 = fabs(v6 + -180.0);
    if (v6 < 180.0)
    {
      v6 = 180.0;
    }

    if (v6 < 1.0)
    {
      v6 = 1.0;
    }

    if (v16 > v6 * 2.22044605e-16)
    {
LABEL_45:
      sub_100056690();
    }
  }
}

double sub_10004ED74(double *a1, double *a2, double *a3, double *a4, int a5)
{
  sub_10004EAF0(a1, a2, 0);
  sub_10004EAF0(a3, a4, 0);
  v10 = *a2;
  if (*a2 == -90.0)
  {
    goto LABEL_8;
  }

  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v14 = fabs(v10);
    v15 = fabs(v10 + 90.0);
    if (v14 < 90.0)
    {
      v14 = 90.0;
    }

    if (v14 < 1.0)
    {
      v14 = 1.0;
    }

    if (v15 <= v14 * 2.22044605e-16)
    {
LABEL_8:
      v11 = *a4;
      if (*a4 == -90.0)
      {
        goto LABEL_18;
      }

      if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        v12 = fabs(v11);
        v13 = fabs(v11 + 90.0);
        if (v12 < 90.0)
        {
          v12 = 90.0;
        }

        if (v12 < 1.0)
        {
          v12 = 1.0;
        }

        if (v13 <= v12 * 2.22044605e-16)
        {
          goto LABEL_18;
        }
      }
    }
  }

  if (v10 != 90.0)
  {
    if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_54;
    }

    v26 = fabs(v10);
    v27 = fabs(v10 + -90.0);
    if (v26 < 90.0)
    {
      v26 = 90.0;
    }

    if (v26 < 1.0)
    {
      v26 = 1.0;
    }

    if (v27 > v26 * 2.22044605e-16)
    {
      goto LABEL_54;
    }
  }

  v16 = *a4;
  if (*a4 == 90.0)
  {
    goto LABEL_18;
  }

  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_54;
  }

  v28 = fabs(v16);
  v29 = fabs(v16 + -90.0);
  if (v28 >= 90.0)
  {
    v30 = v28;
  }

  else
  {
    v30 = 90.0;
  }

  if (v30 < 1.0)
  {
    v30 = 1.0;
  }

  if (v29 <= v30 * 2.22044605e-16)
  {
LABEL_18:
    *a3 = 0.0;
    *a1 = 0.0;
    v17 = 0.0;
  }

  else
  {
LABEL_54:
    if (a5)
    {
      *a1 = -180.0;
      v31 = 180.0;
LABEL_58:
      *a3 = v31;
      v17 = *a1;
      goto LABEL_19;
    }

    v17 = *a1;
    if (*a1 > *a3)
    {
      v31 = *a3 + 360.0;
      goto LABEL_58;
    }
  }

LABEL_19:
  v18 = *a3;
  if (*a3 < v17)
  {
    if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_59;
    }

    v19 = fabs(v17);
    v20 = fabs(v18);
    v21 = vabdd_f64(v17, v18);
    if (v19 < v20)
    {
      v19 = v20;
    }

    if (v19 < 1.0)
    {
      v19 = 1.0;
    }

    if (v21 > v19 * 2.22044605e-16)
    {
LABEL_59:
      sub_1000566BC();
    }
  }

  if (v17 < -180.0)
  {
    if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_60;
    }

    v22 = vabdd_f64(-180.0, v17);
    v23 = fmax(fabs(v17), 180.0);
    if (v23 < 1.0)
    {
      v23 = 1.0;
    }

    if (v22 > v23 * 2.22044605e-16)
    {
LABEL_60:
      sub_1000566E8();
    }
  }

  result = v18 - v17;
  if (result > 360.0)
  {
    if (result == INFINITY)
    {
      goto LABEL_61;
    }

    v25 = fabs(result + -360.0);
    if (result < 360.0)
    {
      result = 360.0;
    }

    if (result < 1.0)
    {
      result = 1.0;
    }

    result = result * 2.22044605e-16;
    if (v25 > result)
    {
LABEL_61:
      sub_100056714();
    }
  }

  return result;
}

void sub_10004F0AC(_DWORD *a1, uint64_t *a2)
{
  v4 = a2;
  v2 = a1 + 2;
  v3 = *a1;
  switch(v3 ^ (v3 >> 31))
  {
    case 0:
      if (v3 < 0)
      {
        v2 = *v2;
      }

      sub_10004F198(&v4, v2);
      break;
    case 1:
      if (v3 < 0)
      {
        v2 = *v2;
      }

      sub_10004F2B8(a2, v2);
      break;
    default:
      sub_10004D5E4();
  }
}

void sub_10004F198(uint64_t **a1, void *a2)
{
  v3 = *a1;
  v4 = sub_10004D534(**a1);
  if (!v4)
  {
    sub_10004D4D4();
  }

  if (v4 != a2)
  {
    sub_100056740();
  }

  v5 = *v3;
  sub_10004F238(*v3);
  operator delete(v5);
}

uint64_t sub_10004F238(uint64_t result)
{
  v1 = *result;
  v2 = v1 ^ (v1 >> 31);
  if (v2 == 1)
  {
    if (v1 < 0)
    {
      result = *(result + 8);
      if (result)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v2)
    {
      sub_10004D5E4();
    }

    if (v1 < 0)
    {
      result = *(result + 8);
      if (result)
      {
LABEL_9:

        operator delete();
      }
    }
  }

  return result;
}

void sub_10004F2B8(_DWORD **a1, void *a2)
{
  v4 = sub_10004F3B0(*a1);
  if (!v4)
  {
    sub_10004D4D4();
  }

  if (v4 != a2)
  {
    sub_10005676C();
  }

  v5 = *a1;
  if (*a2)
  {
    v6 = a2 + 5;
    v7 = a2 + 5;
    do
    {
      v8 = *v7;
      v7 += 5;
      *a1 = v8;
      sub_10004F0AC();
      *v6 = 0;
      v9 = v6 + 1 == &a2[5 * *a2 + 1];
      v6 = v7;
    }

    while (!v9);
  }

  sub_10004F238(v5);
  operator delete(v5);
}

void *sub_10004F3B0(_DWORD *a1)
{
  v3 = *a1;
  v1 = a1 + 2;
  v2 = v3;
  v4 = 0;
  switch(v3 ^ (v3 >> 31))
  {
    case 0:
      return v4;
    case 1:
      if (v2 < 0)
      {
        v4 = *v1;
      }

      else
      {
        v4 = v1;
      }

      break;
    default:
      sub_10004D5E4();
  }

  return v4;
}

void sub_10004F460(uint64_t a1, _DWORD *a2)
{
  v4 = *a1;
  if (v4)
  {
    v5 = v4 == a2;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = *(a1 + 8);
    v7[0] = v4;
    v7[1] = v6;
    sub_10004F0AC(v4, v7);
  }

  *a1 = a2;
}

void sub_10004F4B0(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 104);
  if (v2 >= **(a1 + 80))
  {
    sub_100056798();
  }

  if (v2 >= *(a1 + 64))
  {
    sub_1000567C4();
  }

  v5 = *a2;
  if (!*a2)
  {
    sub_1000567F0();
  }

  v6 = 0;
  v7 = 0;
  v8 = *a1;
  v9 = a2 + 1;
  v10 = (a2 + 3);
  v11 = 1.79769313e308;
  v12 = 1.79769313e308;
  do
  {
    if (*a2 <= v7)
    {
      sub_1000564F4();
    }

    v13 = *v10;
    v20 = v10[-1];
    v21 = v13;
    sub_10004E514(&v20, v8);
    v14 = vsubq_f64(v21, v20);
    v15 = vmulq_laneq_f64(v14, v14, 1);
    v16 = vsubq_f64(*v10, v10[-1]);
    v17 = vsubq_f64(v15, vmulq_laneq_f64(v16, v16, 1)).f64[0];
    if (v17 < v11 || (v17 == v11 ? (v18 = v15.f64[0] < v12) : (v18 = 0), v18))
    {
      v12 = v15.f64[0];
      v11 = v17;
      v6 = v7;
    }

    ++v7;
    v10 = (v10 + 40);
  }

  while (v5 != v7);
  if (*a2 <= v6)
  {
    sub_1000564F4();
  }

  sub_10004F6E4(&v9[5 * v6], (a1 + 8));
  v20 = *(a1 + 88);
  v21.f64[0] = *(a1 + 104);
  v19 = v21.f64[0];
  *(a1 + 88) = a2;
  *(a1 + 96) = v6;
  *(a1 + 104) = *&v19 + 1;
  if (*a2 <= v6)
  {
    sub_1000564F4();
  }

  sub_10004CF18(v9[5 * v6 + 4], a1);
  *(a1 + 88) = v20;
  *(a1 + 104) = v21.f64[0];
  sub_10004F634(a1, a2);
}

void sub_10004F634(uint64_t a1, void *a2)
{
  v5 = *(a1 + 88);
  v4 = a1 + 88;
  if (v5)
  {
    v6 = sub_10004D170(v4);
    v7 = sub_10004F3B0(*(v6 + 32));
    if (!v7)
    {
      sub_10004D4D4();
    }

    if (v7 != a2)
    {
      sub_1000564C8();
    }
  }

  if (*a2 > 0x10uLL)
  {
    sub_100050CA8(a1, a2);
  }
}

void sub_10004F6E4(float64x2_t *a1, float64x2_t *a2)
{
  v3 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v4 = *a2;
  v5 = a2[1];
  v6 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(*a2, v3), vceqq_f64(v5, v6))))))
  {
    v7 = *a2;
    v32 = a2->f64[1];
    v33[0] = v7.f64[0];
    v30 = v5.f64[1];
    v31 = v5.f64[0];
    v8 = vabdd_f64(v4.f64[0], v5.f64[0]);
    v27 = v6;
    v28 = v3;
    if (v8 < 360.0)
    {
      v14 = vabdd_f64(360.0, v8);
      v15 = fmax(v8, 360.0);
      if (v15 < 1.0)
      {
        v15 = 1.0;
      }

      v9 = v14 <= v15 * 2.22044605e-16;
    }

    else
    {
      v9 = 1;
    }

    sub_10004ED74(v33, &v32, &v31, &v30, v9);
    v10 = v32;
    v13 = v33[0];
    v11 = v30;
    v12 = v31;
    v6 = v27;
    v3 = v28;
  }

  else
  {
    v10 = 1.79769313e308;
    v11 = -1.79769313e308;
    v12 = -1.79769313e308;
    v13 = 1.79769313e308;
  }

  v33[0] = v13;
  v33[1] = v10;
  v33[2] = v12;
  v33[3] = v11;
  v16 = *a1;
  v17 = a1[1];
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(*a1, v3), vceqq_f64(v17, v6))))))
  {
    v18 = *a1;
    v31 = a1->f64[1];
    v32 = v18.f64[0];
    v29 = v17.f64[1];
    v30 = v17.f64[0];
    v19 = vabdd_f64(v16.f64[0], v17.f64[0]);
    if (v19 < 360.0)
    {
      v25 = vabdd_f64(360.0, v19);
      v26 = fmax(v19, 360.0);
      if (v26 < 1.0)
      {
        v26 = 1.0;
      }

      v20 = v25 <= v26 * 2.22044605e-16;
    }

    else
    {
      v20 = 1;
    }

    sub_10004ED74(&v32, &v31, &v30, &v29, v20);
    v21 = v31;
    v24 = v32;
    v22 = v29;
    v23 = v30;
  }

  else
  {
    v21 = 1.79769313e308;
    v22 = -1.79769313e308;
    v23 = -1.79769313e308;
    v24 = 1.79769313e308;
  }

  v33[4] = v24;
  v33[5] = v21;
  v33[6] = v23;
  v33[7] = v22;
  sub_10004F8D0(v33, a1);
}

void sub_10004F8D0(double *a1, void *a2)
{
  v4 = a1[5];
  v5 = a1[1];
  v6 = a1;
  if (v4 < v5)
  {
    if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_6;
    }

    v24 = fabs(v5);
    v25 = fabs(v4);
    v26 = vabdd_f64(v5, v4);
    if (v24 >= v25)
    {
      v27 = v24;
    }

    else
    {
      v27 = v25;
    }

    if (v27 < 1.0)
    {
      v27 = 1.0;
    }

    v6 = a1;
    if (v26 > v27 * 2.22044605e-16)
    {
LABEL_6:
      v6 = a1 + 4;
    }
  }

  v8 = a1[3];
  v9 = a1[7];
  v10 = a1;
  if (v8 < v9)
  {
    if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_12;
    }

    v28 = fabs(v9);
    v29 = fabs(v8);
    v30 = vabdd_f64(v9, v8);
    if (v28 >= v29)
    {
      v31 = v28;
    }

    else
    {
      v31 = v29;
    }

    if (v31 < 1.0)
    {
      v31 = 1.0;
    }

    v10 = a1;
    if (v30 > v31 * 2.22044605e-16)
    {
LABEL_12:
      v10 = a1 + 4;
    }
  }

  v12 = 0;
  __p = 0;
  v38 = 0;
  v39 = 0;
  v13 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  v14 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v33 = v14;
  v34 = v13;
  do
  {
    v15 = *&a1[v12];
    v16 = *&a1[v12 + 2];
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v15, v14), vceqq_f64(v16, v13))))) & 1) != 0 && v15.f64[1] != 90.0)
    {
      if ((*&v15.f64[1] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_28;
      }

      v17 = fabs(v15.f64[1]);
      v18 = fabs(v15.f64[1] + -90.0);
      if (v17 < 90.0)
      {
        v17 = 90.0;
      }

      if (v17 < 1.0)
      {
        v17 = 1.0;
      }

      if (v18 > v17 * 2.22044605e-16)
      {
LABEL_28:
        if (v16.f64[1] != -90.0)
        {
          if ((*&v16.f64[1] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_36;
          }

          v19 = fabs(v16.f64[1]);
          v20 = fabs(v16.f64[1] + 90.0);
          if (v19 < 90.0)
          {
            v19 = 90.0;
          }

          if (v19 < 1.0)
          {
            v19 = 1.0;
          }

          if (v20 > v19 * 2.22044605e-16)
          {
            if (v16.f64[0] <= 180.0)
            {
              goto LABEL_38;
            }

LABEL_36:
            if (v16.f64[0] == INFINITY)
            {
              goto LABEL_37;
            }

            v21 = fabs(v16.f64[0] + -180.0);
            if (v16.f64[0] >= 180.0)
            {
              v22 = a1[v12 + 2];
            }

            else
            {
              v22 = 180.0;
            }

            if (v22 < 1.0)
            {
              v22 = 1.0;
            }

            if (v21 > v22 * 2.22044605e-16)
            {
LABEL_37:
              v32 = *&a1[v12 + 2];
              *&v36 = a1[v12];
              *(&v36 + 1) = 0x4066800000000000;
              sub_10004FC38(&__p, &v36);
              *&v36 = 0xC066800000000000;
              *(&v36 + 1) = *&v32 + -360.0;
              sub_10004FC38(&__p, &v36);
            }

            else
            {
LABEL_38:
              *&v36 = a1[v12];
              *(&v36 + 1) = *&v16.f64[0];
              sub_10004FC38(&__p, &v36);
            }

            v14 = v33;
            v13 = v34;
          }
        }
      }
    }

    v12 += 4;
  }

  while (v12 != 8);
  v35 = 0;
  *&v36 = 0;
  sub_10004FD10(&__p, &v36, &v35);
  v23 = v35;
  *a2 = v36;
  a2[1] = *(v6 + 1);
  a2[2] = v23;
  a2[3] = *(v10 + 3);
  if (__p)
  {
    v38 = __p;
    operator delete(__p);
  }
}

void sub_10004FC10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10004FC38(uint64_t a1, _OWORD *a2)
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
      sub_100050268(a1, v10);
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

void sub_10004FD10(uint64_t *a1, double *a2, double *a3)
{
  *a3 = 0.0;
  *a2 = 0.0;
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v7 = v3 + 16;
    if ((v3 + 16) == v4)
    {
      *a2 = *v3;
    }

    else
    {
      v8 = (v3 + 16);
      v9 = *a1;
      do
      {
        v10 = *v8;
        v11 = *v9;
        if (*v8 < *v9)
        {
          if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_9;
          }

          v13 = fabs(v11);
          v14 = fabs(v10);
          v15 = vabdd_f64(v11, v10);
          if (v13 >= v14)
          {
            v16 = v13;
          }

          else
          {
            v16 = v14;
          }

          if (v16 < 1.0)
          {
            v16 = 1.0;
          }

          if (v15 > v16 * 2.22044605e-16)
          {
LABEL_9:
            v9 = v8;
          }
        }

        v8 += 2;
      }

      while (v8 != v4);
      *a2 = *v9;
      do
      {
        v17 = *(v3 + 8);
        v18 = *(v7 + 8);
        if (v17 < v18)
        {
          if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_24;
          }

          v20 = fabs(v18);
          v21 = fabs(v17);
          v22 = vabdd_f64(v18, v17);
          if (v20 >= v21)
          {
            v23 = v20;
          }

          else
          {
            v23 = v21;
          }

          if (v23 < 1.0)
          {
            v23 = 1.0;
          }

          if (v22 > v23 * 2.22044605e-16)
          {
LABEL_24:
            v3 = v7;
          }
        }

        v7 += 16;
      }

      while (v7 != v4);
    }

    v24 = *(v3 + 8);
    *a3 = v24;
    v25 = v24 - *a2;
    if (v25 > 180.0)
    {
      if (v25 == INFINITY)
      {
        goto LABEL_110;
      }

      v26 = fabs(v25 + -180.0);
      if (v25 < 180.0)
      {
        v25 = 180.0;
      }

      if (v25 < 1.0)
      {
        v25 = 1.0;
      }

      if (v26 > v25 * 2.22044605e-16)
      {
LABEL_110:
        __p = 0;
        v55 = 0;
        v56 = 0;
        v50 = 0;
        v51 = 0.0;
        v52 = 0.0;
        sub_1000502B0(a1, &__p, &v53, &v50);
        v27 = v51;
        v28 = v52;
        if (__p)
        {
          v55 = __p;
          operator delete(__p);
        }

        v29 = *a3;
        v30 = *a2;
        if (*a3 < *a2)
        {
          if ((*&v30 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_102;
          }

          v31 = fabs(v30);
          v32 = fabs(v29);
          v33 = vabdd_f64(v30, v29);
          if (v31 < v32)
          {
            v31 = v32;
          }

          if (v31 < 1.0)
          {
            v31 = 1.0;
          }

          if (v33 > v31 * 2.22044605e-16)
          {
LABEL_102:
            sub_10005681C();
          }
        }

        if (v29 > 180.0)
        {
          if (v29 == INFINITY)
          {
            goto LABEL_104;
          }

          v34 = fabs(v29 + -180.0);
          if (v29 >= 180.0)
          {
            v35 = *a3;
          }

          else
          {
            v35 = 180.0;
          }

          if (v35 < 1.0)
          {
            v35 = 1.0;
          }

          if (v34 > v35 * 2.22044605e-16)
          {
LABEL_104:
            sub_100056848();
          }
        }

        if (v30 < -180.0)
        {
          if ((*&v30 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_105;
          }

          v36 = vabdd_f64(-180.0, v30);
          v37 = fmax(fabs(v30), 180.0);
          if (v37 < 1.0)
          {
            v37 = 1.0;
          }

          if (v36 > v37 * 2.22044605e-16)
          {
LABEL_105:
            sub_100056874();
          }
        }

        if (v28 < v27)
        {
          if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_103;
          }

          v38 = fabs(v27);
          v39 = fabs(v28);
          v40 = vabdd_f64(v27, v28);
          if (v38 < v39)
          {
            v38 = v39;
          }

          if (v38 < 1.0)
          {
            v38 = 1.0;
          }

          if (v40 > v38 * 2.22044605e-16)
          {
LABEL_103:
            sub_1000568A0();
          }
        }

        if (v28 > 180.0)
        {
          if (v28 == INFINITY)
          {
            goto LABEL_106;
          }

          v41 = fabs(v28 + -180.0);
          if (v28 >= 180.0)
          {
            v42 = v28;
          }

          else
          {
            v42 = 180.0;
          }

          if (v42 < 1.0)
          {
            v42 = 1.0;
          }

          if (v41 > v42 * 2.22044605e-16)
          {
LABEL_106:
            sub_1000568CC();
          }
        }

        if (v27 < -180.0)
        {
          if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_107;
          }

          v43 = vabdd_f64(-180.0, v27);
          v44 = fmax(fabs(v27), 180.0);
          if (v44 < 1.0)
          {
            v44 = 1.0;
          }

          if (v43 > v44 * 2.22044605e-16)
          {
LABEL_107:
            sub_1000568F8();
          }
        }

        v45 = v28 - v27;
        if (v28 - v27 > 0.0)
        {
          if (v45 == INFINITY)
          {
            if (v30 + 360.0 - v29 >= v45)
            {
              return;
            }
          }

          else
          {
            v46 = 1.0;
            if (v45 >= 1.0)
            {
              v46 = v28 - v27;
            }

            if (v45 <= v46 * 2.22044605e-16)
            {
              return;
            }

            v47 = v30 + 360.0 - v29;
            if (v47 >= v45)
            {
              return;
            }

            if ((*&v47 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              v48 = fabs(v47);
              v49 = vabdd_f64(v45, v47);
              if (v45 >= v48)
              {
                v48 = v28 - v27;
              }

              if (v48 < 1.0)
              {
                v48 = 1.0;
              }

              if (v49 <= v48 * 2.22044605e-16)
              {
                return;
              }
            }
          }

          *a2 = v28;
          *a3 = v27 + 360.0;
        }
      }
    }
  }
}

void sub_100050244(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100050268(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_1000092C0();
}

void sub_1000502B0(uint64_t *a1, uint64_t **a2, uint64_t a3, uint64_t a4)
{
  if (*a2 != a2[1])
  {
    sub_100056924();
  }

  v6 = *a1;
  v7 = a1[1];
  v8 = (v7 - *a1) >> 4;
  v26 = 0;
  v25 = 0uLL;
  sub_1000505F4(&v25, v6, v7, v8);
  v10 = *(&v25 + 1);
  v9 = v25;
  v11 = (*(&v25 + 1) - v25) >> 4;
  if (v11 >= 2)
  {
    v12 = (v11 - 2) >> 1;
    v13 = (v25 + 16 * v12);
    v14 = v12 + 1;
    do
    {
      sub_1000506FC(v9, &v23, v11, v13);
      v13 -= 2;
      --v14;
    }

    while (v14);
    v10 = *(&v25 + 1);
    v9 = v25;
  }

  v15 = *a2;
  *a2 = v9;
  a2[1] = v10;
  v16 = v26;
  v17 = a2[2];
  *&v25 = v15;
  v26 = v17;
  a2[2] = v16;
  if (v15)
  {
    *(&v25 + 1) = v15;
    operator delete(v15);
    v9 = *a2;
    v10 = a2[1];
  }

  while (v9 != v10)
  {
    v23 = *v9;
    v18 = (v10 - v9) >> 4;
    if (v18 >= 2)
    {
      v25 = *v9;
      v19 = sub_100050A0C(v9, &v24, v18);
      v20 = v10 - 2;
      if (v10 - 2 == v19)
      {
        *v19 = v25;
        *(v19 + 8) = BYTE8(v25);
      }

      else
      {
        v21 = *v20;
        *(v19 + 8) = *(v10 - 8);
        *v19 = v21;
        v22 = v25;
        *(v10 - 8) = BYTE8(v25);
        *v20 = v22;
        sub_100050B10(v9, (v19 + 2), &v24, ((v19 + 2) - v9) >> 4);
      }

      v10 = a2[1];
    }

    a2[1] = v10 - 2;
    sub_100050494(a4, &v23, a2);
    v9 = *a2;
    v10 = a2[1];
  }
}

void sub_100050470(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100050494(uint64_t result, _BYTE *a2, uint64_t a3)
{
  v4 = *result;
  if (a2[8] == 1)
  {
    *result = v4 + 1;
    v5 = *a2;
    v7 = *(a3 + 8);
    v6 = *(a3 + 16);
    if (v7 >= v6)
    {
      v13 = (v7 - *a3) >> 4;
      v14 = v13 + 1;
      if ((v13 + 1) >> 60)
      {
        sub_10000CD24();
      }

      v15 = v6 - *a3;
      if (v15 >> 3 > v14)
      {
        v14 = v15 >> 3;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFF0)
      {
        v16 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        sub_1000506B4(a3, v16);
      }

      v17 = 16 * v13;
      *v17 = v5;
      *(v17 + 8) = 0;
      v8 = 16 * v13 + 16;
      v18 = *(a3 + 8) - *a3;
      v19 = 16 * v13 - v18;
      memcpy((v17 - v18), *a3, v18);
      v20 = *a3;
      *a3 = v19;
      *(a3 + 8) = v8;
      *(a3 + 16) = 0;
      if (v20)
      {
        operator delete(v20);
      }
    }

    else
    {
      *v7 = v5;
      *(v7 + 8) = 0;
      v8 = v7 + 16;
    }

    *(a3 + 8) = v8;
    return sub_100050B10(*a3, v8, &v21, (v8 - *a3) >> 4);
  }

  else
  {
    v9 = v4 - 1;
    *result = v9;
    if (!v9)
    {
      v10 = *a3;
      if (*a3 != *(a3 + 8))
      {
        if ((v10[1] & 1) == 0)
        {
          sub_100056950();
        }

        v11 = **v10;
        v12 = *(*a2 + 8);
        if (v11 - v12 > *(result + 16) - *(result + 8))
        {
          *(result + 8) = v12;
          *(result + 16) = v11;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000505F4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100050678(result, a4);
  }

  return result;
}

void sub_10005065C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100050678(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_1000506B4(a1, a2);
  }

  sub_10000CD24();
}

void sub_1000506B4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_1000092C0();
}

uint64_t sub_1000506FC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 < 2)
  {
    return result;
  }

  v4 = a4 - result;
  v5 = (a3 - 2) >> 1;
  if (v5 < (a4 - result) >> 4)
  {
    return result;
  }

  v6 = v4 >> 3;
  v7 = (v4 >> 3) | 1;
  v8 = (result + 16 * v7);
  v9 = v6 + 2;
  if (v9 >= a3)
  {
    goto LABEL_16;
  }

  v10 = 8;
  if (*(v8 + 24))
  {
    v11 = 0;
  }

  else
  {
    v11 = 8;
  }

  v12 = *(v8[2] + v11);
  if (*(v8 + 8))
  {
    v10 = 0;
  }

  v13 = *(*v8 + v10);
  if (v12 == v13)
  {
    goto LABEL_99;
  }

  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_81;
  }

  v47 = fabs(v12);
  v48 = fabs(v13);
  v49 = vabdd_f64(v12, v13);
  if (v47 < v48)
  {
    v47 = v48;
  }

  if (v47 < 1.0)
  {
    v47 = 1.0;
  }

  if (v49 <= v47 * 2.22044605e-16)
  {
LABEL_99:
    if (*(v8 + 24))
    {
      v14 = *(v8 + 8) == 0;
    }

    else
    {
      v14 = 0;
    }

    if (!v14)
    {
      goto LABEL_16;
    }
  }

  else
  {
LABEL_81:
    if (v12 >= v13)
    {
      goto LABEL_16;
    }
  }

  v8 += 2;
  v7 = v9;
LABEL_16:
  v15 = *(a4 + 8);
  v16 = *a4;
  v17 = 8;
  if (*(a4 + 8))
  {
    v18 = 0;
  }

  else
  {
    v18 = 8;
  }

  v19 = *(v16 + v18);
  if (*(v8 + 8))
  {
    v17 = 0;
  }

  v20 = *(*v8 + v17);
  if (v19 == v20)
  {
    goto LABEL_100;
  }

  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_29;
  }

  v44 = fabs(v19);
  v45 = fabs(v20);
  v46 = vabdd_f64(v19, v20);
  if (v44 < v45)
  {
    v44 = v45;
  }

  if (v44 < 1.0)
  {
    v44 = 1.0;
  }

  if (v46 <= v44 * 2.22044605e-16)
  {
LABEL_100:
    if (*(a4 + 8) && !*(v8 + 8))
    {
      return result;
    }
  }

  else
  {
LABEL_29:
    if (v19 < v20)
    {
      return result;
    }
  }

  v22 = *v8;
  *(a4 + 8) = *(v8 + 8);
  *a4 = v22;
  if (v5 < v7)
  {
    goto LABEL_84;
  }

  while (1)
  {
    v23 = v8;
    v24 = 2 * v7;
    v7 = (2 * v7) | 1;
    v8 = (result + 16 * v7);
    v25 = v24 + 2;
    if (v25 < a3)
    {
      if (*(v8 + 24))
      {
        v26 = 0;
      }

      else
      {
        v26 = 8;
      }

      v27 = *(v8[2] + v26);
      if (*(v8 + 8))
      {
        v28 = 0;
      }

      else
      {
        v28 = 8;
      }

      v29 = *(*v8 + v28);
      if (v27 == v29)
      {
        goto LABEL_101;
      }

      if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_63;
      }

      v40 = fabs(v27);
      v41 = fabs(v29);
      v42 = vabdd_f64(v27, v29);
      if (v40 < v41)
      {
        v40 = v41;
      }

      if (v40 < 1.0)
      {
        v40 = 1.0;
      }

      if (v42 <= v40 * 2.22044605e-16)
      {
LABEL_101:
        if (*(v8 + 24))
        {
          v30 = *(v8 + 8) == 0;
        }

        else
        {
          v30 = 0;
        }

        if (!v30)
        {
          goto LABEL_45;
        }
      }

      else
      {
LABEL_63:
        if (v27 >= v29)
        {
          goto LABEL_45;
        }
      }

      v8 += 2;
      v7 = v25;
    }

LABEL_45:
    v31 = *(v16 + v18);
    v32 = *(v8 + 8) ? 0 : 8;
    v33 = *(*v8 + v32);
    if (v31 == v33)
    {
      break;
    }

    if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v33 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v37 = fabs(v31);
      v38 = fabs(v33);
      v39 = vabdd_f64(v31, v33);
      if (v37 < v38)
      {
        v37 = v38;
      }

      if (v37 < 1.0)
      {
        v37 = 1.0;
      }

      if (v39 <= v37 * 2.22044605e-16)
      {
        break;
      }
    }

    if (v31 < v33)
    {
      goto LABEL_83;
    }

LABEL_57:
    v35 = *v8;
    *(v23 + 8) = *(v8 + 8);
    *v23 = v35;
    if (v5 < v7)
    {
      goto LABEL_84;
    }
  }

  if (!v15 || *(v8 + 8))
  {
    goto LABEL_57;
  }

LABEL_83:
  v8 = v23;
LABEL_84:
  *v8 = v16;
  *(v8 + 8) = v15;
  return result;
}

uint64_t *sub_100050A0C(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = result;
    result += 2 * v3 + 2;
    v5 = 2 * v3;
    v3 = (2 * v3) | 1;
    v6 = v5 + 2;
    if (v6 >= a3)
    {
      goto LABEL_16;
    }

    if (*(result + 24))
    {
      v7 = 0;
    }

    else
    {
      v7 = 8;
    }

    v8 = *(result[2] + v7);
    if (*(result + 8))
    {
      v9 = 0;
    }

    else
    {
      v9 = 8;
    }

    v10 = *(*result + v9);
    if (v8 == v10)
    {
      goto LABEL_32;
    }

    if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_22;
    }

    v14 = fabs(v8);
    v15 = fabs(v10);
    v16 = vabdd_f64(v8, v10);
    if (v14 < v15)
    {
      v14 = v15;
    }

    if (v14 < 1.0)
    {
      v14 = 1.0;
    }

    if (v16 <= v14 * 2.22044605e-16)
    {
LABEL_32:
      if (*(result + 24))
      {
        v11 = *(result + 8) == 0;
      }

      else
      {
        v11 = 0;
      }

      if (v11)
      {
LABEL_15:
        result += 2;
        v3 = v6;
      }
    }

    else
    {
LABEL_22:
      if (v8 < v10)
      {
        goto LABEL_15;
      }
    }

LABEL_16:
    v12 = *result;
    *(v4 + 8) = *(result + 8);
    *v4 = v12;
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

uint64_t sub_100050B10(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 < 2)
  {
    return result;
  }

  v5 = v4 >> 1;
  v6 = (result + 16 * (v4 >> 1));
  v9 = *(a2 - 16);
  v7 = a2 - 16;
  v8 = v9;
  v10 = *(v7 + 8);
  v11 = 8;
  if (*(v7 + 8))
  {
    v12 = 0;
  }

  else
  {
    v12 = 8;
  }

  v13 = *(v8 + v12);
  if (*(v6 + 8))
  {
    v11 = 0;
  }

  v14 = *(*v6 + v11);
  if (v13 == v14)
  {
    goto LABEL_48;
  }

  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_15;
  }

  v27 = fabs(v13);
  v28 = fabs(v14);
  v29 = vabdd_f64(v13, v14);
  if (v27 < v28)
  {
    v27 = v28;
  }

  if (v27 < 1.0)
  {
    v27 = 1.0;
  }

  if (v29 <= v27 * 2.22044605e-16)
  {
LABEL_48:
    if (!*(v7 + 8) || *(v6 + 8))
    {
      return result;
    }
  }

  else
  {
LABEL_15:
    if (v13 >= v14)
    {
      return result;
    }
  }

  v16 = *v6;
  *(v7 + 8) = *(v6 + 8);
  *v7 = v16;
  if (v4 < 2)
  {
    goto LABEL_39;
  }

  v17 = (result + 16 * (v4 >> 1));
  while (1)
  {
    v18 = v5 - 1;
    v5 = (v5 - 1) >> 1;
    v6 = (result + 16 * v5);
    v19 = *(v8 + v12);
    v20 = *(v6 + 8) ? 0 : 8;
    v21 = *(*v6 + v20);
    if (v19 == v21)
    {
      break;
    }

    if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v21 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v24 = fabs(v19);
      v25 = fabs(v21);
      v26 = vabdd_f64(v19, v21);
      if (v24 < v25)
      {
        v24 = v25;
      }

      if (v24 < 1.0)
      {
        v24 = 1.0;
      }

      if (v26 <= v24 * 2.22044605e-16)
      {
        break;
      }
    }

    if (v19 >= v21)
    {
      goto LABEL_38;
    }

LABEL_30:
    v23 = *v6;
    *(v17 + 8) = *(v6 + 8);
    *v17 = v23;
    v17 = (result + 16 * v5);
    if (v18 <= 1)
    {
      goto LABEL_39;
    }
  }

  if (v10 && !*(v6 + 8))
  {
    goto LABEL_30;
  }

LABEL_38:
  v6 = v17;
LABEL_39:
  *v6 = v8;
  *(v6 + 8) = v10;
  return result;
}

void sub_100050CA8(uint64_t a1, void *a2)
{
  v28 = 0;
  v4 = *(a1 + 112);
  sub_100050FCC(&v28, a2, &v26, *(a1 + 40), *(a1 + 48));
  if (v28 != 1)
  {
    sub_10005654C();
  }

  v6 = (a1 + 88);
  v5 = *(a1 + 88);
  v7 = *(a1 + 112);
  v24 = v29[4];
  v25 = v7;
  if (v5)
  {
    v8 = sub_10004D170(a1 + 88);
    v9 = v27;
    *v8 = v26;
    *(v8 + 16) = v9;
    if (*v6)
    {
      if (v28)
      {
        sub_10004DE74(*v6, v29);
        return;
      }

      v16 = "(i < v.size())&&(index out of bounds)";
      v17 = 94;
      v18 = "varray.hpp";
      v19 = "check_index";
    }

    else
    {
      v16 = "(parent)&&(null pointer)";
      v17 = 253;
      v18 = "insert.hpp";
      v19 = "parent_elements";
    }

LABEL_17:
    __assert_rtn(v19, v18, v17, v16);
  }

  v10 = sub_10004F3B0(**(a1 + 72));
  if (!v10)
  {
    *&v20[0] = &off_10041AEB0;
    sub_10004D4D4();
  }

  if (v10 != a2)
  {
    v16 = "(&n == &rtree::get<Node>(*m_root_node))&&(node should be the root)";
    v17 = 449;
    v18 = "insert.hpp";
    v19 = "split";
    goto LABEL_17;
  }

  v11 = operator new(0x2B8uLL);
  *(v11 + 1) = 0;
  *v11 = 1;
  v12 = *(a1 + 112);
  v22 = v11;
  v23 = v12;
  v13 = sub_10004F3B0(v11);
  if (!v13)
  {
    *&v20[0] = &off_10041AEB0;
    sub_10004D4D4();
  }

  v14 = **(a1 + 72);
  v20[0] = v26;
  v20[1] = v27;
  v21 = v14;
  sub_10004DE74(v13, v20);
  v15 = sub_10004F3B0(v11);
  if (!v15)
  {
    *&v20[0] = &off_10041AEB0;
    sub_10004D4D4();
  }

  if (!v28)
  {
    __assert_rtn("check_index", "varray.hpp", 94, "(i < v.size())&&(index out of bounds)");
  }

  sub_10004DE74(v15, v29);
  **(a1 + 72) = v11;
  ++**(a1 + 80);
}

void sub_100050F2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, _DWORD *a14, uint64_t a15, char a16)
{
  if (a2)
  {
    std::exception::~exception(&a9);
    __cxa_begin_catch(exception_object);
    *sub_10004DEC0(a14) = 0;
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_100050F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  __cxa_end_catch();
  sub_10004DF34(va);
  JUMPOUT(0x100050FBCLL);
}

double sub_100050FCC(void *a1, void *a2, float64x2_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = operator new(0x2B8uLL);
  v10[1] = 0;
  *v10 = 1;
  v11 = sub_10004F3B0(v10);
  if (!v11)
  {
    *&v15[0] = &off_10041AEB0;
    sub_10004D4D4();
  }

  sub_10005119C(a2, v11, a3, v17, a4, a5);
  if ((*a2 - 17) < 0xFFFFFFFFFFFFFFF3)
  {
    v13 = "(parameters.get_min_elements() <= rtree::elements(n).size() && rtree::elements(n).size() <= parameters.get_max_elements())&&(unexpected number of elements)";
    v14 = 193;
    goto LABEL_7;
  }

  if ((*v11 - 17) <= 0xFFFFFFFFFFFFFFF2)
  {
    v13 = "(parameters.get_min_elements() <= rtree::elements(n2).size() && rtree::elements(n2).size() <= parameters.get_max_elements())&&(unexpected number of elements)";
    v14 = 196;
LABEL_7:
    __assert_rtn("apply", "insert.hpp", v14, v13);
  }

  v15[0] = v17[0];
  v15[1] = v17[1];
  v16 = v10;
  *&result = sub_10004E3DC(a1, v15).n128_u64[0];
  return result;
}

void sub_100051100(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _DWORD *a9)
{
  __cxa_begin_catch(a1);
  if (*v10 >= 0x11uLL)
  {
    a9 = v10[85];
    sub_10004F0AC(a9, &a9);
    v10[85] = 0;
    if (!*v10)
    {
      __assert_rtn("check_not_empty", "varray.hpp", 101, "(!v.empty())&&(the container is empty)");
    }

    --*v10;
  }

  sub_10004F0AC(v9, &a9);
  __cxa_rethrow();
}

void sub_10005119C(uint64_t a1, void *a2, float64x2_t *a3, float64x2_t *a4, uint64_t a5, uint64_t a6)
{
  if (*a1 != 17)
  {
    sub_100056578();
  }

  v46 = 0;
  sub_100051590(&v46, (a1 + 8), a1 + 688);
  v44 = 0;
  v45 = 0;
  v42.f64[0] = 0.0;
  sub_100051628(&v46, a5, a6, v42.f64, &v45, &v44);
  *a1 = 0;
  if (*a2)
  {
    sub_1000565D0();
  }

  if (v46 <= v45)
  {
    goto LABEL_32;
  }

  v12 = v47;
  sub_10004DE74(a1, &v47[5 * v45]);
  if (v46 <= v44 || (sub_10004DE74(a2, &v47[5 * v44]), v13 = v46, v46 <= v45) || (v14 = &v47[5 * v45], v15 = v14[1], *a3 = *v14, a3[1] = v15, v13 <= v44))
  {
LABEL_32:
    __assert_rtn("check_index", "varray.hpp", 94, "(i < v.size())&&(index out of bounds)");
  }

  v16 = 0;
  v17 = &v47[5 * v44];
  v18 = v17[1];
  *a4 = *v17;
  a4[1] = v18;
  v19 = vsubq_f64(a3[1], *a3);
  *&v20 = *&vmulq_laneq_f64(v19, v19, 1);
  v21 = vsubq_f64(a4[1], *a4);
  *&v38 = *&vmulq_laneq_f64(v21, v21, 1);
  v39 = v20;
  v22 = 15;
  do
  {
    if (v16 != v45 && v16 != v44)
    {
      if (v46 <= v16)
      {
        __assert_rtn("check_index", "varray.hpp", 94, "(i < v.size())&&(index out of bounds)");
      }

      if ((*a1 + v22) <= 4)
      {
        sub_10004DE74(a1, v12);
        sub_10004F6E4(a3, v12);
        v32 = vsubq_f64(a3[1], *a3);
        *&v33 = *&vmulq_laneq_f64(v32, v32, 1);
      }

      else
      {
        if ((*a2 + v22) <= 4)
        {
          sub_10004DE74(a2, v12);
          sub_10004F6E4(a4, v12);
          v34 = vsubq_f64(a4[1], *a4);
          *&v31 = *&vmulq_laneq_f64(v34, v34, 1);
LABEL_23:
          v38 = v31;
          if (!v22)
          {
            goto LABEL_31;
          }

LABEL_27:
          --v22;
          goto LABEL_28;
        }

        v24 = a3[1];
        v42 = *a3;
        v43 = v24;
        v25 = a4[1];
        v40 = *a4;
        v41 = v25;
        sub_10004F6E4(&v42, v12);
        sub_10004F6E4(&v40, v12);
        v26 = vsubq_f64(v43, v42);
        v27 = vmulq_laneq_f64(v26, v26, 1).f64[0];
        v28 = vsubq_f64(v41, v40);
        v29 = vmulq_laneq_f64(v28, v28, 1).f64[0];
        v36 = v29;
        v37 = v27;
        if (v27 - v39 >= v29 - v38 && (v27 - v39 != v29 - v38 || v39 >= v38 && (v39 != v38 || *a1 > *a2)))
        {
          sub_10004DE74(a2, v12);
          v30 = v41;
          *a4 = v40;
          a4[1] = v30;
          v31 = v36;
          goto LABEL_23;
        }

        sub_10004DE74(a1, v12);
        v35 = v43;
        *a3 = v42;
        a3[1] = v35;
        v33 = v37;
      }

      v39 = v33;
      if (!v22)
      {
LABEL_31:
        __assert_rtn("apply", "redistribute_elements.hpp", 450, "(0 < remaining)&&(unexpected value)");
      }

      goto LABEL_27;
    }

LABEL_28:
    ++v16;
    v12 = (v12 + 40);
  }

  while (v16 != 17);
}

void sub_1000514F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, _DWORD *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    *v34 = 0;
    *v33 = 0;
    if (a28)
    {
      v35 = 40 * a28;
      v36 = &a33;
      do
      {
        a21 = *v36;
        sub_10004F0AC(a21, &a21);
        *v36 = 0;
        v36 += 5;
        v35 -= 40;
      }

      while (v35);
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_100051578(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x100051580);
  }

  sub_10000CD10(a1);
}

void *sub_100051590(unint64_t *a1, char *a2, uint64_t a3)
{
  v4 = a3 - a2;
  v5 = 0xCCCCCCCCCCCCCCCDLL * (v4 >> 3);
  if (v5 >= 0x12)
  {
    sub_10005649C();
  }

  v7 = *a1;
  if (*a1 <= v5)
  {
    v9 = 5 * v7;
    v10 = &a2[40 * v7];
    memmove(a1 + 1, a2, 40 * v7);
    result = memcpy(&a1[v9 + 1], v10, a3 - v10);
  }

  else
  {
    result = memmove(a1 + 1, a2, v4);
  }

  *a1 = v5;
  return result;
}

uint64_t sub_100051628(uint64_t result, uint64_t a2, uint64_t a3, double *a4, void *a5, uint64_t *a6)
{
  if (*result != 17)
  {
    sub_10005697C();
  }

  v6 = 0;
  v7 = result + 8;
  v8 = *(result + 8);
  v9 = *(result + 24);
  v10 = (result + 64);
  v11 = 1;
  v12 = v9;
  do
  {
    v13 = *(v10 - 2);
    v14 = *v10;
    v10 += 5;
    v15 = v14;
    if (v14 < v12)
    {
      v12 = v15;
      v6 = v11;
    }

    if (v13 < v8)
    {
      v8 = v13;
    }

    if (v9 < v15)
    {
      v9 = v15;
    }

    ++v11;
  }

  while (v11 != 17);
  v16 = v6 == 0;
  v17 = (8 * v16) | (32 * v16);
  v18 = *(v7 + v17);
  v19 = v17 + 8;
  v20 = v16;
  do
  {
    if (v18 < *(result + v19) && v6 != v16)
    {
      v18 = *(result + v19);
      v20 = v16;
    }

    ++v16;
    v19 += 40;
  }

  while (v16 != 17);
  v22 = v9 - v8;
  v23 = v18 - v12;
  v24 = (v18 - v12) / v22;
  if (v22 <= 2.22044605e-16)
  {
    v25 = v23;
  }

  else
  {
    v25 = v24;
  }

  *a4 = v25;
  *a5 = v20;
  *a6 = v6;
  if (*result != 17)
  {
    sub_10005697C();
  }

  v26 = 0;
  v27 = *(result + 16);
  v28 = *(result + 32);
  v29 = (result + 72);
  v30 = 1;
  v31 = v28;
  do
  {
    v32 = *(v29 - 2);
    v33 = *v29;
    v29 += 5;
    v34 = v33;
    if (v33 < v31)
    {
      v31 = v34;
      v26 = v30;
    }

    if (v32 < v27)
    {
      v27 = v32;
    }

    if (v28 < v34)
    {
      v28 = v34;
    }

    ++v30;
  }

  while (v30 != 17);
  v35 = v26 == 0;
  v36 = (8 * v35) | (32 * v35);
  v37 = *(v7 + v36 + 8);
  v38 = (v36 + result + 16);
  v39 = v35;
  do
  {
    v40 = *v38;
    v38 += 5;
    v41 = v40;
    if (v37 < v40 && v26 != v35)
    {
      v37 = v41;
      v39 = v35;
    }

    ++v35;
  }

  while (v35 != 17);
  v43 = v28 - v27;
  v44 = v37 - v31;
  v45 = (v37 - v31) / v43;
  if (v43 <= 2.22044605e-16)
  {
    v46 = v44;
  }

  else
  {
    v46 = v45;
  }

  if (v25 < v46)
  {
    *a4 = v46;
    *a5 = v39;
    *a6 = v26;
  }

  return result;
}

uint64_t sub_1000517CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  v4 = *(a3 + 16);
  *(a1 + 16) = *a3;
  *(a1 + 32) = v4;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  sub_10005182C(a1, a2);
  return a1;
}

void *sub_10005182C(void *result, uint64_t a2)
{
  if (result[4])
  {
    v2 = result;
    sub_100051878(result, *(a2 + 16), *(a2 + 8));

    return sub_100051DE4(v2);
  }

  return result;
}

uint64_t sub_100051878(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  if (a3)
  {
    result = sub_10004F3B0(a2);
    if (!result)
    {
      *&v63 = &off_10041AEB0;
      sub_10004D4D4();
    }

    if (*result)
    {
      v6 = 40 * *result;
      v7 = a3 - 1;
      v8 = (result + 40);
      do
      {
        *&v63 = 0;
        sub_100051FF8((a1 + 16), (v8 - 4), 6378137.0, 6356752.31);
        *&v63 = v9;
        result = sub_100051F88(a1, &v63);
        if ((result & 1) == 0)
        {
          v10 = *v8;
          v11 = *(a1 + 48);
          v12 = *(a1 + 56);
          if (v11 >= v12)
          {
            v14 = *(a1 + 40);
            v15 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v14) >> 3);
            v16 = v15 + 1;
            if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_10000CD24();
            }

            v17 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v14) >> 3);
            if (2 * v17 > v16)
            {
              v16 = 2 * v17;
            }

            if (v17 >= 0x555555555555555)
            {
              v18 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v18 = v16;
            }

            if (v18)
            {
              sub_1000557A8(a1 + 40, v18);
            }

            v19 = 24 * v15;
            *v19 = v63;
            *(v19 + 8) = v7;
            *(v19 + 16) = v10;
            v13 = 24 * v15 + 24;
            v20 = *(a1 + 40);
            v21 = *(a1 + 48) - v20;
            v22 = v19 - v21;
            memcpy((v19 - v21), v20, v21);
            v23 = *(a1 + 40);
            *(a1 + 40) = v22;
            *(a1 + 48) = v13;
            *(a1 + 56) = 0;
            if (v23)
            {
              operator delete(v23);
            }
          }

          else
          {
            *v11 = v63;
            v13 = (v11 + 3);
            v11[1] = v7;
            v11[2] = v10;
          }

          *(a1 + 48) = v13;
          result = sub_100055800(*(a1 + 40), v13, &v62, 0xAAAAAAAAAAAAAAABLL * ((v13 - *(a1 + 40)) >> 3));
        }

        v8 += 5;
        v6 -= 40;
      }

      while (v6);
    }

    return result;
  }

  result = sub_10004D534(a2);
  if (!result)
  {
    *&v63 = &off_10041AEB0;
    sub_10004D4D4();
  }

  if (*result)
  {
    v24 = result + 24 * *result + 8;
    v25 = (result + 8);
    while (1)
    {
      v62 = 0.0;
      v63 = xmmword_10037F940;
      v62 = sub_10004C734(&v63, (a1 + 16), v25);
      result = sub_100051F88(a1, &v62);
      if (result)
      {
        goto LABEL_68;
      }

      v27 = *(a1 + 80);
      v26 = *(a1 + 88);
      if (v27 >= v26)
      {
        v29 = *(a1 + 72);
        v30 = (v27 - v29) >> 4;
        v31 = v30 + 1;
        if ((v30 + 1) >> 60)
        {
          sub_10000CD24();
        }

        v32 = v26 - v29;
        if (v32 >> 3 > v31)
        {
          v31 = v32 >> 3;
        }

        if (v32 >= 0x7FFFFFFFFFFFFFF0)
        {
          v33 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v33 = v31;
        }

        if (v33)
        {
          sub_1000558C0(a1 + 72, v33);
        }

        v34 = (16 * v30);
        *v34 = v62;
        *(v34 + 1) = v25;
        v28 = 16 * v30 + 16;
        v35 = *(a1 + 72);
        v36 = *(a1 + 80) - v35;
        v37 = v34 - v36;
        memcpy(v34 - v36, v35, v36);
        v38 = *(a1 + 72);
        *(a1 + 72) = v37;
        *(a1 + 80) = v28;
        *(a1 + 88) = 0;
        if (v38)
        {
          operator delete(v38);
        }
      }

      else
      {
        *v27 = v62;
        *(v27 + 1) = v25;
        v28 = (v27 + 2);
      }

      *(a1 + 80) = v28;
      result = *(a1 + 72);
      v39 = v28 - result;
      v40 = (v28 - result) >> 4;
      v41 = v40 - 2;
      if (v40 >= 2)
      {
        break;
      }

LABEL_59:
      if ((*(a1 + 104) + v40) > *(a1 + 32))
      {
        v56 = result;
        if (v39 < 17)
        {
          goto LABEL_61;
        }

        v57 = (result + 16);
        if (v39 == 32)
        {
          goto LABEL_64;
        }

        v56 = (result + 32);
        if (*(result + 32) <= *(result + 16))
        {
          v56 = (result + 16);
        }

LABEL_61:
        v57 = v56;
        if (v40 >= 2)
        {
LABEL_64:
          v58 = *(v28 - 16);
          v59 = *(v28 - 8);
          *(v28 - 16) = *v57;
          *(v28 - 8) = v57[1];
          v60 = v40 - 1;
          v61 = (v57 - result) >> 4;
          if ((1 - __clz(v61 + 1)))
          {
            result = sub_100055B1C(result, v61, v60, v58, v59);
          }

          else
          {
            result = sub_100055908(result, v61, v60, v58, v59);
          }
        }

        *(a1 + 80) -= 16;
      }

LABEL_68:
      v25 += 3;
      if (v25 == v24)
      {
        return result;
      }
    }

    v42 = v40 - 1;
    v43 = (result + 16 * (v40 - 1));
    v44 = *v43;
    v45 = *(v43 + 1);
    v46 = *v43;
    v47 = v41 >> 1;
    v48 = (result + 16 * (v41 >> 1));
    v49 = *v48;
    if (__clz(v40))
    {
      if (*v48 < *v43)
      {
        *v43 = v49;
        v43[1] = v48[1];
        if (v41 >= 6)
        {
          while (1)
          {
            v52 = v47 - 3;
            v51 = (result + 16 * ((v47 - 3) >> 2));
            v48 = (result + 16 * v47);
            if (*v51 >= v46)
            {
              break;
            }

            *v48 = *v51;
            v48[1] = v51[1];
            v47 = (v47 - 3) >> 2;
            if (v52 <= 0xB)
            {
LABEL_48:
              v48 = v51;
              goto LABEL_58;
            }
          }
        }

        goto LABEL_58;
      }

      if (v42 >= 3)
      {
        while (1)
        {
          v55 = v42 - 3;
          v54 = (result + 16 * ((v42 - 3) >> 2));
          v48 = (result + 16 * v42);
          if (*v54 <= v46)
          {
            goto LABEL_58;
          }

          *v48 = *v54;
          v48[1] = v54[1];
          v42 = (v42 - 3) >> 2;
          if (v55 <= 0xB)
          {
LABEL_56:
            v48 = v54;
            goto LABEL_58;
          }
        }
      }
    }

    else
    {
      if (*v48 > *v43)
      {
        *v43 = v49;
        v43[1] = v48[1];
        if (v41 >= 6)
        {
          while (1)
          {
            v50 = v47 - 3;
            v51 = (result + 16 * ((v47 - 3) >> 2));
            v48 = (result + 16 * v47);
            if (*v51 <= v46)
            {
              break;
            }

            *v48 = *v51;
            v48[1] = v51[1];
            v47 = (v47 - 3) >> 2;
            if (v50 <= 0xB)
            {
              goto LABEL_48;
            }
          }
        }

        goto LABEL_58;
      }

      if (v42 >= 3)
      {
        while (1)
        {
          v53 = v42 - 3;
          v54 = (result + 16 * ((v42 - 3) >> 2));
          v48 = (result + 16 * v42);
          if (*v54 >= v46)
          {
            goto LABEL_58;
          }

          *v48 = *v54;
          v48[1] = v54[1];
          v42 = (v42 - 3) >> 2;
          if (v53 <= 0xB)
          {
            goto LABEL_56;
          }
        }
      }
    }

    v48 = (result + 16 * (v40 - 1));
LABEL_58:
    *v48 = v44;
    *(v48 + 1) = v45;
    goto LABEL_59;
  }

  return result;
}

void *sub_100051DE4(void *a1)
{
  v2 = a1[5];
  if (v2 == a1[6])
  {
LABEL_14:
    v14 = a1[9];
    result = a1 + 9;
    if (v14 == a1[10])
    {
      a1[13] = a1[4];
      a1[14] = 0;
      return result;
    }

    v15 = *(v14 + 8);
    ++a1[13];
    a1[14] = v15;
  }

  else
  {
    while (1)
    {
      v3 = a1[9];
      v4 = a1[10];
      if (v3 != v4 && *v3 <= *v2)
      {
        break;
      }

      if ((a1[13] + ((v4 - v3) >> 4)) > a1[4])
      {
        sub_1000569A8();
      }

      if (sub_100051F88(a1, v2))
      {
        a1[6] = a1[5];
        goto LABEL_14;
      }

      v7 = v2 + 8;
      v6 = *(v2 + 8);
      v5 = *(v7 + 8);
      v8 = a1[5];
      v9 = a1[6];
      if (v9 - v8 >= 25)
      {
        v18 = *v8;
        v19 = v8[1].n128_u64[0];
        sub_100055D94(v8, &v17, 0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3));
        v11 = (v9 - 24);
        if ((v9 - 24) == v10)
        {
          *v10 = v18;
          v10[1].n128_u64[0] = v19;
        }

        else
        {
          v12 = *v11;
          v10[1].n128_u64[0] = *(v9 - 8);
          *v10 = v12;
          *v11 = v18;
          *(v9 - 8) = v19;
          sub_100055800(v8, &v10[1].n128_i64[1], &v17, 0xAAAAAAAAAAAAAAABLL * ((&v10[1].n128_i8[8] - v8) >> 3));
        }

        v9 = a1[6];
      }

      a1[6] = v9 - 24;
      sub_100051878(a1, v5, v6);
      v2 = a1[5];
      if (v2 == a1[6])
      {
        goto LABEL_14;
      }
    }

    v16 = *(v3 + 8);
    ++a1[13];
    a1[14] = v16;
    result = a1 + 9;
  }

  return sub_100055D30(result);
}

BOOL sub_100051F88(void *a1, double *a2)
{
  v2 = a1[9];
  v3 = a1[10];
  v4 = v3 - v2;
  if (a1[13] + ((v3 - v2) >> 4) != a1[4])
  {
    return 0;
  }

  if (v2 == v3)
  {
    return 1;
  }

  if (v4 >= 17)
  {
    v5 = v2 + 2;
    if (v4 == 32 || (v6 = v2[4], v2 += 4, v6 <= *(v2 - 2)))
    {
      v2 = v5;
    }
  }

  return *v2 <= *a2;
}

void sub_100051FF8(double *a1, uint64_t a2, double a3, double a4)
{
  v4 = a1;
  v72 = a3;
  v73 = a4;
  v5 = *(a2 + 8);
  v70 = *a2;
  v71 = v5;
  v6 = *(a2 + 24);
  v69[0] = *(a2 + 16);
  *&v69[1] = v5;
  *v68 = v70;
  *&v68[1] = v6;
  v66 = *v69;
  v67 = v6;
  v7 = *a1;
  if ((atomic_load_explicit(&qword_100457D88, memory_order_acquire) & 1) == 0)
  {
    v40 = v7;
    sub_1000563FC();
    v7 = v40;
    v4 = a1;
  }

  p_inst_meths = &OBJC_PROTOCOL___CSCompanionServiceClientProtocol.inst_meths;
  v9 = *&qword_100457D80;
  v10 = v4[1];
  if ((atomic_load_explicit(&qword_100457D88, memory_order_acquire) & 1) == 0)
  {
    v61 = v4;
    v41 = v7;
    v42 = v9;
    sub_1000563FC();
    v9 = v42;
    v7 = v41;
    p_inst_meths = (&OBJC_PROTOCOL___CSCompanionServiceClientProtocol + 24);
    v4 = v61;
  }

  v11 = *(p_inst_meths + 432);
  if ((atomic_load_explicit(&qword_100457D88, memory_order_acquire) & 1) == 0)
  {
    v62 = v4;
    v43 = v11;
    v56 = v7;
    v50 = v9;
    sub_1000563FC();
    v9 = v50;
    v7 = v56;
    v11 = v43;
    p_inst_meths = (&OBJC_PROTOCOL___CSCompanionServiceClientProtocol + 24);
    v4 = v62;
  }

  v12 = *(p_inst_meths + 432);
  v13 = v71;
  if ((atomic_load_explicit(&qword_100457D88, memory_order_acquire) & 1) == 0)
  {
    v63 = v4;
    v47 = v11;
    v51 = v9;
    v57 = v7;
    sub_1000563FC();
    v9 = v51;
    v13 = v71;
    v7 = v57;
    v11 = v47;
    p_inst_meths = (&OBJC_PROTOCOL___CSCompanionServiceClientProtocol + 24);
    v4 = v63;
  }

  v14 = *(p_inst_meths + 432);
  v15 = v66;
  if ((atomic_load_explicit(&qword_100457D88, memory_order_acquire) & 1) == 0)
  {
    v64 = v4;
    v48 = v11;
    v52 = v9;
    v54 = v13;
    v58 = v7;
    v45 = v14;
    sub_1000563FC();
    v15 = v66;
    v14 = v45;
    v9 = v52;
    v13 = v54;
    v7 = v58;
    v11 = v48;
    p_inst_meths = (&OBJC_PROTOCOL___CSCompanionServiceClientProtocol + 24);
    v4 = v64;
  }

  v16 = v7 * v9;
  v17 = v70 * v12;
  v18 = v15 * *(p_inst_meths + 432);
  if ((atomic_load_explicit(&qword_100457D88, memory_order_acquire) & 1) == 0)
  {
    v65 = v4;
    v44 = v16;
    v55 = v13;
    v59 = v17;
    v49 = v11;
    v53 = v18;
    v46 = v14;
    sub_1000563FC();
    v14 = v46;
    v11 = v49;
    v18 = v53;
    v13 = v55;
    p_inst_meths = (&OBJC_PROTOCOL___CSCompanionServiceClientProtocol + 24);
    v17 = v59;
    v16 = v44;
    v4 = v65;
  }

  v19 = v16 > v18 || v16 < v17;
  v20 = 6.28318531;
  if (v19 && v16 + 6.28318531 > v18)
  {
    if (v18 > 3.14159265)
    {
      v28 = (v17 - v18) * 0.5 + 3.14159265;
      if (fabs(v28) > 3.14159265)
      {
        sub_100056A2C();
      }

      if (v16 <= v28)
      {
        goto LABEL_48;
      }

LABEL_30:
      v35 = &v70;
      v36 = v68;
LABEL_49:
      sub_1000523F4(&v72, v4, v35, v36);
      return;
    }

    v34 = v17 + v18;
    if (v17 + v18 == 0.0)
    {
      goto LABEL_29;
    }

    if (COERCE_UNSIGNED_INT64(fabs(v17 + v18)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v37 = fabs(v34);
      v38 = 1.0;
      if (v37 >= 1.0)
      {
        v38 = v37;
      }

      if (v37 <= v38 * 2.22044605e-16)
      {
LABEL_29:
        if (v16 < v17)
        {
          goto LABEL_30;
        }

LABEL_48:
        v35 = v69;
        v36 = &v66;
        goto LABEL_49;
      }
    }

    v39 = v34 * 0.5 + -3.14159265;
    if (v39 <= 3.14159265)
    {
      if (v39 >= -3.14159265)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v20 = -6.28318531;
    }

    v39 = v39 + v20;
LABEL_41:
    if (fabs(v39) > 3.14159265)
    {
      sub_100056A00();
    }

    if (v34 <= 0.0)
    {
      if (v16 <= v18 || v16 > v39)
      {
        goto LABEL_30;
      }
    }

    else if (v16 < v17 && v16 >= v39)
    {
      goto LABEL_30;
    }

    goto LABEL_48;
  }

  v22 = v10 * v11;
  v23 = v67 * *(p_inst_meths + 432);
  if (v22 <= v23)
  {
    v29 = v13 * v14;
    if (v22 >= v13 * v14)
    {
      if (v22 > v23)
      {
        sub_1000569D4();
      }
    }

    else
    {
      v30 = (v72 - v73) / v72 / (2.0 - (v72 - v73) / v72);
      v31 = v72 / (v30 + 1.0);
      v32 = v30 * 1.5;
      v33 = v31 * (v22 - sin(v22 + v22) * (v30 * 1.5));
      vabdd_f64(v33, v31 * (v29 - sin(v29 + v29) * v32));
    }
  }

  else
  {
    v24 = (v72 - v73) / v72 / (2.0 - (v72 - v73) / v72);
    v25 = v72 / (v24 + 1.0);
    v26 = v24 * 1.5;
    v27 = v25 * (v23 - sin(v23 + v23) * (v24 * 1.5));
    vabdd_f64(v27, v25 * (v22 - sin(v22 + v22) * v26));
  }
}

double sub_1000523F4(double *a1, double *a2, double *a3, double *a4)
{
  v4 = a1;
  v5 = *a3;
  if ((atomic_load_explicit(&qword_100457D88, memory_order_acquire) & 1) == 0)
  {
    v22 = a2;
    v14 = a3;
    v17 = a4;
    v13 = v5;
    sub_1000563FC();
    v5 = v13;
    a3 = v14;
    a4 = v17;
    a2 = v22;
    v4 = a1;
  }

  p_inst_meths = &OBJC_PROTOCOL___CSCompanionServiceClientProtocol.inst_meths;
  v39 = v5 * *&qword_100457D80;
  v7 = a3[1];
  if ((atomic_load_explicit(&qword_100457D88, memory_order_acquire) & 1) == 0)
  {
    v23 = a2;
    v29 = v4;
    v18 = a4;
    v15 = v7;
    sub_1000563FC();
    v7 = v15;
    p_inst_meths = (&OBJC_PROTOCOL___CSCompanionServiceClientProtocol + 24);
    a4 = v18;
    a2 = v23;
    v4 = v29;
  }

  v38 = v7 * *(p_inst_meths + 432);
  v8 = *a4;
  if ((atomic_load_explicit(&qword_100457D88, memory_order_acquire) & 1) == 0)
  {
    v24 = a2;
    v30 = v4;
    v19 = a4;
    v16 = v8;
    sub_1000563FC();
    v8 = v16;
    p_inst_meths = (&OBJC_PROTOCOL___CSCompanionServiceClientProtocol + 24);
    a4 = v19;
    a2 = v24;
    v4 = v30;
  }

  v37 = v8 * *(p_inst_meths + 432);
  v9 = a4[1];
  if ((atomic_load_explicit(&qword_100457D88, memory_order_acquire) & 1) == 0)
  {
    v25 = a2;
    v31 = v4;
    v20 = v9;
    sub_1000563FC();
    v9 = v20;
    p_inst_meths = (&OBJC_PROTOCOL___CSCompanionServiceClientProtocol + 24);
    a2 = v25;
    v4 = v31;
  }

  v36 = v9 * *(p_inst_meths + 432);
  v10 = *a2;
  if ((atomic_load_explicit(&qword_100457D88, memory_order_acquire) & 1) == 0)
  {
    v26 = a2;
    v32 = v4;
    v21 = v10;
    sub_1000563FC();
    v10 = v21;
    p_inst_meths = (&OBJC_PROTOCOL___CSCompanionServiceClientProtocol + 24);
    a2 = v26;
    v4 = v32;
  }

  v35 = v10 * *(p_inst_meths + 432);
  v11 = a2[1];
  if ((atomic_load_explicit(&qword_100457D88, memory_order_acquire) & 1) == 0)
  {
    v33 = v4;
    v27 = v11;
    sub_1000563FC();
    v11 = v27;
    p_inst_meths = (&OBJC_PROTOCOL___CSCompanionServiceClientProtocol + 24);
    v4 = v33;
  }

  v34 = v11 * *(p_inst_meths + 432);
  sub_1000525B0(&v39, &v38, &v37, &v36, &v35, &v34, v4);
  return result;
}

void sub_1000525B0(double *a1, double *a2, double *a3, double *a4, double *a5, double *a6, double *a7)
{
  v85 = a7[1];
  v87 = *a7;
  memset(v106, 0, sizeof(v106));
  v8 = *a1;
  v9 = *a2;
  v104 = *a2;
  v105 = v8;
  v103 = *a3;
  v10 = v103;
  v11 = *a4;
  v12 = *a5;
  v101 = *a5;
  v102 = v11;
  v13 = *a6;
  v100 = *a6;
  if (v8 <= v103)
  {
    v14 = v11;
    v11 = v9;
    v15 = v8;
    v8 = v103;
  }

  else
  {
    v104 = v11;
    v105 = v103;
    v103 = v8;
    v14 = v9;
    v15 = v10;
    v102 = v9;
  }

  v16 = vabdd_f64(v8, v15);
  v17 = 3.14159265;
  if (v16 == 3.14159265)
  {
    goto LABEL_5;
  }

  v18 = v8 - v15;
  if (COERCE__INT64(fabs(v8 - v15)) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v22 = fabs(v16 + -3.14159265);
    v17 = 3.14159265;
    if (v16 >= 3.14159265)
    {
      v23 = v16;
    }

    else
    {
      v23 = 3.14159265;
    }

    if (v23 < 1.0)
    {
      v23 = 1.0;
    }

    if (v22 <= v23 * 2.22044605e-16)
    {
      goto LABEL_5;
    }
  }

  v17 = 3.14159265;
  if (v18 <= 3.14159265)
  {
    if (v18 >= -3.14159265)
    {
      goto LABEL_6;
    }

    v17 = fmod(v18 + -3.14159265, 6.28318531) + 3.14159265;
LABEL_5:
    v16 = fabs(v17);
    v18 = v17;
    goto LABEL_6;
  }

  v24 = fmod(v18 + 3.14159265, 6.28318531);
  v18 = v24 + -3.14159265;
  if (v24 + -3.14159265 == -3.14159265)
  {
    goto LABEL_5;
  }

  v16 = fabs(v18);
  if (COERCE_UNSIGNED_INT64(fabs(v24 + -3.14159265)) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v17 = 3.14159265;
    v25 = fabs(v18 + 3.14159265);
    if (v16 >= 3.14159265)
    {
      v26 = v16;
    }

    else
    {
      v26 = 3.14159265;
    }

    if (v26 < 1.0)
    {
      v26 = 1.0;
    }

    if (v25 <= v26 * 2.22044605e-16)
    {
      goto LABEL_5;
    }
  }

LABEL_6:
  v19 = sub_10004CD58(v11, v14, v18);
  v20 = v19;
  if (v16 == 3.14159265)
  {
    v21 = 1;
  }

  else
  {
    v21 = 0;
    if (v16 != INFINITY)
    {
      v27 = fabs(v16 + -3.14159265);
      if (v16 >= 3.14159265)
      {
        v28 = v16;
      }

      else
      {
        v28 = 3.14159265;
      }

      if (v28 < 1.0)
      {
        v28 = 1.0;
      }

      v21 = v27 <= v28 * 2.22044605e-16;
    }
  }

  if (v11 == 0.0)
  {
    goto LABEL_33;
  }

  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v30 = fabs(v11);
    v31 = 1.0;
    if (v30 >= 1.0)
    {
      v31 = v30;
    }

    if (v30 <= v31 * 2.22044605e-16)
    {
LABEL_33:
      if (v14 == 0.0)
      {
        v29 = 0;
      }

      else
      {
        if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_45;
        }

        v32 = fabs(v14);
        v33 = 1.0;
        if (v32 >= 1.0)
        {
          v33 = v32;
        }

        v29 = v32 > v33 * 2.22044605e-16;
      }

      if (v21 || v29)
      {
        goto LABEL_45;
      }

      if (v12 <= v15)
      {
        v98 = v15;
        v96 = v11;
        v95[0] = v12;
        v93 = v13;
        v36 = v15;
      }

      else
      {
        if (v12 >= v8)
        {
          v98 = v8;
          v96 = v14;
          v95[0] = v12;
          v93 = v13;
          v36 = v8;
          v37 = v14;
          goto LABEL_66;
        }

        v98 = v12;
        v96 = v11;
        v95[0] = v12;
        v93 = v13;
        v36 = v12;
      }

      v37 = v11;
LABEL_66:
      sub_10004C89C(a7, v36, v37, v12, v13);
      if (v40)
      {
        return;
      }

      v41 = &v98;
      v42 = &v96;
      v43 = v95;
      v44 = &v93;
LABEL_69:
      sub_10004CAE4(v41, v42, v43, v44, a7, v107);
      return;
    }
  }

LABEL_45:
  if ((v19 || v21) && fabs(v11) > fabs(v14))
  {
    v104 = v14;
    v102 = v11;
  }

  if (v21)
  {
    v107[0] = dbl_10037F950[v13 >= 0.0];
    v34 = v107[0];
    sub_100052E94(&v105, &v104, &v105, v107, &v101, &v100, a7);
    v107[0] = v34;
    sub_100052E94(&v103, &v102, &v103, v107, &v101, &v100, a7);
    return;
  }

  sub_100053778(&v105, &v104, &v103, &v102, a7, &v98);
  sub_100053D04(&v105, &v104, &v101, &v100, a7, &v96);
  v35 = v98;
  if (v98 == 0.0)
  {
    goto LABEL_51;
  }

  if ((*&v98 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v38 = fabs(v98);
    v39 = 1.0;
    if (v38 >= 1.0)
    {
      v39 = v38;
    }

    if (v38 <= v39 * 2.22044605e-16)
    {
LABEL_51:
      sub_10004C89C(a7, v105, v104, v101, v100);
      return;
    }
  }

  if (v97 - v99[0] != 0.0)
  {
    if (COERCE_UNSIGNED_INT64(fabs(v97 - v99[0])) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_83;
    }

    v45 = fabs(v97 - v99[0]);
    v46 = 1.0;
    if (v45 >= 1.0)
    {
      v46 = v45;
    }

    if (v45 > v46 * 2.22044605e-16)
    {
      goto LABEL_83;
    }
  }

  if (!v20)
  {
    goto LABEL_83;
  }

  v47 = v104;
  if (v102 >= v104)
  {
    v48 = v104;
  }

  else
  {
    v48 = v102;
  }

  if (v102 >= v104)
  {
    v47 = v102;
  }

  if (v100 < v48 || v100 > v47)
  {
LABEL_83:
    v49 = cos(v97 - v99[0]);
    if (v49 * v96 / v35 < 0.0)
    {
      v95[0] = v105;
      v93 = v104;
      v92[0] = v101;
      v90 = v100;
      sub_10004C89C(a7, v105, v104, v101, v100);
      if (v50)
      {
        return;
      }

      v41 = v95;
      v42 = &v93;
      v43 = v92;
      v44 = &v90;
      goto LABEL_69;
    }

    sub_100053D04(&v103, &v102, &v101, &v100, a7, v95);
    v51 = cos(v95[1] - v99[1] + 3.14159265);
    if (v95[0] * v51 / v98 < 0.0)
    {
      v93 = v103;
      v92[0] = v102;
      v90 = v101;
      v111 = v100;
      sub_10004C89C(a7, v103, v102, v101, v100);
      if (v52)
      {
        return;
      }

      v41 = &v93;
      v42 = v92;
      v43 = &v90;
      v44 = &v111;
      goto LABEL_69;
    }

    v53 = (v85 + v87 * 2.0) / 3.0;
    v93 = v105;
    v94 = v104;
    v92[0] = v103;
    v92[1] = v102;
    v90 = v101;
    v91 = v100;
    v107[0] = v53;
    v54 = sub_100054420(v107, &v90, &v93, v92);
    v55 = asin(sqrt(v54));
    v88 = v53 * (v55 + v55);
    v57 = v93;
    v56 = v94;
    v59 = v90;
    v58 = v91;
    v60 = sin((v91 - v94) * 0.5);
    v61 = v60 * v60;
    v62 = cos(v56);
    v63 = v62 * cos(v58);
    v64 = sin((v59 - v57) * 0.5);
    v65 = asin(sqrt(v61 + v63 * (v64 * v64)));
    v66 = cos(v53 * (v65 + v65) / v53);
    v67 = v66 / cos(v88 / v53);
    v68 = 0.0;
    if (v67 < 1.0)
    {
      if (v67 <= -1.0)
      {
        v68 = v53 * 3.14159265;
      }

      else
      {
        v68 = v53 * acos(v67);
      }
    }

    v86 = v105;
    v69 = __sincos_stret(v103 - v105);
    v89 = v104;
    v70 = __sincos_stret(v104);
    v71 = __sincos_stret(v102);
    v72 = atan2(v69.__sinval * v71.__cosval, v69.__cosval * -(v70.__sinval * v71.__cosval) + v70.__cosval * v71.__sinval);
    v73 = __sincos_stret(v72);
    v74 = atan2(v70.__cosval * v73.__sinval, sqrt(v70.__sinval * (v70.__sinval * (v73.__sinval * v73.__sinval)) + v73.__cosval * v73.__cosval));
    v75 = atan2(v70.__sinval, v70.__cosval * v73.__cosval);
    v76 = __sincos_stret(v68 / v53 + v75);
    v77 = __sincos_stret(v74);
    v78 = __sincos_stret(v75);
    v79 = atan2(v77.__cosval * v76.__sinval, sqrt(v77.__sinval * v77.__sinval + v77.__cosval * v77.__cosval * v76.__cosval * v76.__cosval));
    v80 = atan2(v77.__sinval * v78.__sinval, v78.__cosval);
    v81 = v86 + atan2(v77.__sinval * v76.__sinval, v76.__cosval) - v80;
    if (v81 <= 3.14159265)
    {
      if (v81 > -3.14159265)
      {
LABEL_98:
        v110 = v89;
        v111 = v86;
        v108 = v79;
        v109 = v81;
        sub_10004C89C(a7, v86, v89, v81, v79);
        if ((v84 & 1) == 0)
        {
          sub_10004CAE4(&v111, &v110, &v109, &v108, a7, v107);
          v83 = v107[0];
        }

        v107[0] = v83;
        sub_1000541F0(&v105, &v104, &v103, &v102, &v101, &v100, a7, v107, v99, v106);
        return;
      }

      v82 = 6.28318531;
    }

    else
    {
      v82 = -6.28318531;
    }

    v81 = v81 + v82;
    goto LABEL_98;
  }
}

void sub_100052E94(double *a1, double *a2, double *a3, double *a4, double *a5, double *a6, double *a7)
{
  v85 = a7[1];
  v87 = *a7;
  memset(v106, 0, sizeof(v106));
  v8 = *a1;
  v9 = *a2;
  v104 = *a2;
  v105 = v8;
  v103 = *a3;
  v10 = v103;
  v11 = *a4;
  v12 = *a5;
  v101 = *a5;
  v102 = v11;
  v13 = *a6;
  v100 = *a6;
  if (v8 <= v103)
  {
    v14 = v11;
    v11 = v9;
    v15 = v8;
    v8 = v103;
  }

  else
  {
    v104 = v11;
    v105 = v103;
    v103 = v8;
    v14 = v9;
    v15 = v10;
    v102 = v9;
  }

  v16 = vabdd_f64(v8, v15);
  v17 = 3.14159265;
  if (v16 == 3.14159265)
  {
    goto LABEL_5;
  }

  v18 = v8 - v15;
  if (COERCE__INT64(fabs(v8 - v15)) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v22 = fabs(v16 + -3.14159265);
    v17 = 3.14159265;
    if (v16 >= 3.14159265)
    {
      v23 = v16;
    }

    else
    {
      v23 = 3.14159265;
    }

    if (v23 < 1.0)
    {
      v23 = 1.0;
    }

    if (v22 <= v23 * 2.22044605e-16)
    {
      goto LABEL_5;
    }
  }

  v17 = 3.14159265;
  if (v18 <= 3.14159265)
  {
    if (v18 >= -3.14159265)
    {
      goto LABEL_6;
    }

    v17 = fmod(v18 + -3.14159265, 6.28318531) + 3.14159265;
LABEL_5:
    v16 = fabs(v17);
    v18 = v17;
    goto LABEL_6;
  }

  v24 = fmod(v18 + 3.14159265, 6.28318531);
  v18 = v24 + -3.14159265;
  if (v24 + -3.14159265 == -3.14159265)
  {
    goto LABEL_5;
  }

  v16 = fabs(v18);
  if (COERCE_UNSIGNED_INT64(fabs(v24 + -3.14159265)) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v17 = 3.14159265;
    v25 = fabs(v18 + 3.14159265);
    if (v16 >= 3.14159265)
    {
      v26 = v16;
    }

    else
    {
      v26 = 3.14159265;
    }

    if (v26 < 1.0)
    {
      v26 = 1.0;
    }

    if (v25 <= v26 * 2.22044605e-16)
    {
      goto LABEL_5;
    }
  }

LABEL_6:
  v19 = sub_10004CD58(v11, v14, v18);
  v20 = v19;
  if (v16 == 3.14159265)
  {
    v21 = 1;
  }

  else
  {
    v21 = 0;
    if (v16 != INFINITY)
    {
      v27 = fabs(v16 + -3.14159265);
      if (v16 >= 3.14159265)
      {
        v28 = v16;
      }

      else
      {
        v28 = 3.14159265;
      }

      if (v28 < 1.0)
      {
        v28 = 1.0;
      }

      v21 = v27 <= v28 * 2.22044605e-16;
    }
  }

  if (v11 == 0.0)
  {
    goto LABEL_33;
  }

  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v30 = fabs(v11);
    v31 = 1.0;
    if (v30 >= 1.0)
    {
      v31 = v30;
    }

    if (v30 <= v31 * 2.22044605e-16)
    {
LABEL_33:
      if (v14 == 0.0)
      {
        v29 = 0;
      }

      else
      {
        if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_45;
        }

        v32 = fabs(v14);
        v33 = 1.0;
        if (v32 >= 1.0)
        {
          v33 = v32;
        }

        v29 = v32 > v33 * 2.22044605e-16;
      }

      if (v21 || v29)
      {
        goto LABEL_45;
      }

      if (v12 <= v15)
      {
        v98 = v15;
        v96 = v11;
        v95[0] = v12;
        v93 = v13;
        v36 = v15;
      }

      else
      {
        if (v12 >= v8)
        {
          v98 = v8;
          v96 = v14;
          v95[0] = v12;
          v93 = v13;
          v36 = v8;
          v37 = v14;
          goto LABEL_66;
        }

        v98 = v12;
        v96 = v11;
        v95[0] = v12;
        v93 = v13;
        v36 = v12;
      }

      v37 = v11;
LABEL_66:
      sub_10004C89C(a7, v36, v37, v12, v13);
      if (v40)
      {
        return;
      }

      v41 = &v98;
      v42 = &v96;
      v43 = v95;
      v44 = &v93;
LABEL_69:
      sub_10004CAE4(v41, v42, v43, v44, a7, v107);
      return;
    }
  }

LABEL_45:
  if ((v19 || v21) && fabs(v11) > fabs(v14))
  {
    v104 = v14;
    v102 = v11;
  }

  if (v21)
  {
    v107[0] = dbl_10037F950[v13 >= 0.0];
    v34 = v107[0];
    sub_100052E94(&v105, &v104, &v105, v107, &v101, &v100, a7);
    v107[0] = v34;
    sub_100052E94(&v103, &v102, &v103, v107, &v101, &v100, a7);
    return;
  }

  sub_100053778(&v105, &v104, &v103, &v102, a7, &v98);
  sub_100053D04(&v105, &v104, &v101, &v100, a7, &v96);
  v35 = v98;
  if (v98 == 0.0)
  {
    goto LABEL_51;
  }

  if ((*&v98 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v38 = fabs(v98);
    v39 = 1.0;
    if (v38 >= 1.0)
    {
      v39 = v38;
    }

    if (v38 <= v39 * 2.22044605e-16)
    {
LABEL_51:
      sub_10004C89C(a7, v105, v104, v101, v100);
      return;
    }
  }

  if (v97 - v99[0] != 0.0)
  {
    if (COERCE_UNSIGNED_INT64(fabs(v97 - v99[0])) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_83;
    }

    v45 = fabs(v97 - v99[0]);
    v46 = 1.0;
    if (v45 >= 1.0)
    {
      v46 = v45;
    }

    if (v45 > v46 * 2.22044605e-16)
    {
      goto LABEL_83;
    }
  }

  if (!v20)
  {
    goto LABEL_83;
  }

  v47 = v104;
  if (v102 >= v104)
  {
    v48 = v104;
  }

  else
  {
    v48 = v102;
  }

  if (v102 >= v104)
  {
    v47 = v102;
  }

  if (v100 < v48 || v100 > v47)
  {
LABEL_83:
    v49 = cos(v97 - v99[0]);
    if (v49 * v96 / v35 < 0.0)
    {
      v95[0] = v105;
      v93 = v104;
      v92[0] = v101;
      v90 = v100;
      sub_10004C89C(a7, v105, v104, v101, v100);
      if (v50)
      {
        return;
      }

      v41 = v95;
      v42 = &v93;
      v43 = v92;
      v44 = &v90;
      goto LABEL_69;
    }

    sub_100053D04(&v103, &v102, &v101, &v100, a7, v95);
    v51 = cos(v95[1] - v99[1] + 3.14159265);
    if (v95[0] * v51 / v98 < 0.0)
    {
      v93 = v103;
      v92[0] = v102;
      v90 = v101;
      v111 = v100;
      sub_10004C89C(a7, v103, v102, v101, v100);
      if (v52)
      {
        return;
      }

      v41 = &v93;
      v42 = v92;
      v43 = &v90;
      v44 = &v111;
      goto LABEL_69;
    }

    v53 = (v85 + v87 * 2.0) / 3.0;
    v93 = v105;
    v94 = v104;
    v92[0] = v103;
    v92[1] = v102;
    v90 = v101;
    v91 = v100;
    v107[0] = v53;
    v54 = sub_100054420(v107, &v90, &v93, v92);
    v55 = asin(sqrt(v54));
    v88 = v53 * (v55 + v55);
    v57 = v93;
    v56 = v94;
    v59 = v90;
    v58 = v91;
    v60 = sin((v91 - v94) * 0.5);
    v61 = v60 * v60;
    v62 = cos(v56);
    v63 = v62 * cos(v58);
    v64 = sin((v59 - v57) * 0.5);
    v65 = asin(sqrt(v61 + v63 * (v64 * v64)));
    v66 = cos(v53 * (v65 + v65) / v53);
    v67 = v66 / cos(v88 / v53);
    v68 = 0.0;
    if (v67 < 1.0)
    {
      if (v67 <= -1.0)
      {
        v68 = v53 * 3.14159265;
      }

      else
      {
        v68 = v53 * acos(v67);
      }
    }

    v86 = v105;
    v69 = __sincos_stret(v103 - v105);
    v89 = v104;
    v70 = __sincos_stret(v104);
    v71 = __sincos_stret(v102);
    v72 = atan2(v69.__sinval * v71.__cosval, v69.__cosval * -(v70.__sinval * v71.__cosval) + v70.__cosval * v71.__sinval);
    v73 = __sincos_stret(v72);
    v74 = atan2(v70.__cosval * v73.__sinval, sqrt(v70.__sinval * (v70.__sinval * (v73.__sinval * v73.__sinval)) + v73.__cosval * v73.__cosval));
    v75 = atan2(v70.__sinval, v70.__cosval * v73.__cosval);
    v76 = __sincos_stret(v68 / v53 + v75);
    v77 = __sincos_stret(v74);
    v78 = __sincos_stret(v75);
    v79 = atan2(v77.__cosval * v76.__sinval, sqrt(v77.__sinval * v77.__sinval + v77.__cosval * v77.__cosval * v76.__cosval * v76.__cosval));
    v80 = atan2(v77.__sinval * v78.__sinval, v78.__cosval);
    v81 = v86 + atan2(v77.__sinval * v76.__sinval, v76.__cosval) - v80;
    if (v81 <= 3.14159265)
    {
      if (v81 > -3.14159265)
      {
LABEL_98:
        v110 = v89;
        v111 = v86;
        v108 = v79;
        v109 = v81;
        sub_10004C89C(a7, v86, v89, v81, v79);
        if ((v84 & 1) == 0)
        {
          sub_10004CAE4(&v111, &v110, &v109, &v108, a7, v107);
          v83 = v107[0];
        }

        v107[0] = v83;
        sub_1000541F0(&v105, &v104, &v103, &v102, &v101, &v100, a7, v107, v99, v106);
        return;
      }

      v82 = 6.28318531;
    }

    else
    {
      v82 = -6.28318531;
    }

    v81 = v81 + v82;
    goto LABEL_98;
  }
}

void sub_100053778(double *a1@<X0>, double *a2@<X1>, double *a3@<X2>, double *a4@<X3>, double *a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = 0u;
  *(a6 + 16) = 0u;
  *(a6 + 32) = 0x3FF0000000000000;
  v9 = *a1;
  v10 = *a3;
  if (*a1 != *a3)
  {
    if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_19;
    }

    v43 = fabs(v9);
    v44 = fabs(v10);
    v45 = vabdd_f64(v9, v10);
    if (v43 < v44)
    {
      v43 = v44;
    }

    if (v43 < 1.0)
    {
      v43 = 1.0;
    }

    if (v45 > v43 * 2.22044605e-16)
    {
      goto LABEL_19;
    }
  }

  v11 = *a2;
  v12 = *a4;
  if (*a2 != *a4)
  {
    v13 = (*&v11 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v12 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
    if (!v13)
    {
      goto LABEL_19;
    }

    v14 = fabs(v11);
    v15 = fabs(v12);
    v16 = vabdd_f64(v11, v12);
    if (v14 >= v15)
    {
      v17 = v14;
    }

    else
    {
      v17 = v15;
    }

    if (v17 < 1.0)
    {
      v17 = 1.0;
    }

    if (v16 > v17 * 2.22044605e-16)
    {
LABEL_19:
      v19 = *a5;
      v20 = *a5 - a5[1];
      v21 = __sincos_stret(v10 - v9);
      v22 = __sincos_stret(*a2);
      v23 = __sincos_stret(*a4);
      v24 = v21.__cosval * (v22.__cosval * v23.__cosval) + v22.__sinval * v23.__sinval;
      if (v24 > 1.0)
      {
        v25 = 1.0;
      }

      else
      {
        v25 = v21.__cosval * (v22.__cosval * v23.__cosval) + v22.__sinval * v23.__sinval;
      }

      if (v24 >= -1.0)
      {
        v26 = v25;
      }

      else
      {
        v26 = -1.0;
      }

      v27 = acos(v26);
      v28 = sin(v27);
      v29 = v28 * 3.0;
      v30 = 1.0 - v26;
      v31 = v26 + 1.0;
      v32 = 0.0;
      v33 = 0.0;
      if (1.0 - v26 != 0.0)
      {
        if (COERCE_UNSIGNED_INT64(fabs(1.0 - v26)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_31;
        }

        v34 = fabs(v30);
        v35 = 1.0;
        if (v34 >= 1.0)
        {
          v35 = v34;
        }

        v13 = v34 > v35 * 2.22044605e-16;
        v33 = 0.0;
        if (v13)
        {
LABEL_31:
          v33 = (v27 + v29) / v30;
        }
      }

      v36 = v20 / v19;
      if (v31 != 0.0)
      {
        if (COERCE_UNSIGNED_INT64(fabs(v26 + 1.0)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_37;
        }

        v37 = fabs(v31);
        v38 = 1.0;
        if (v37 >= 1.0)
        {
          v38 = v37;
        }

        if (v37 > v38 * 2.22044605e-16)
        {
LABEL_37:
          v32 = (v27 - v29) / v31;
        }
      }

      *a6 = v19 * (v27 + v36 * -0.25 * ((v22.__sinval + v23.__sinval) * (v22.__sinval + v23.__sinval) * v32 + v33 * ((v22.__sinval - v23.__sinval) * (v22.__sinval - v23.__sinval))));
      if (v28 == 0.0)
      {
        goto LABEL_39;
      }

      if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        v39 = fabs(v28);
        v40 = 1.0;
        if (v39 >= 1.0)
        {
          v40 = v39;
        }

        if (v39 <= v40 * 2.22044605e-16)
        {
LABEL_39:
          if (v26 >= 0.0)
          {
            *(a6 + 8) = 0;
            *(a6 + 16) = 0;
          }

          else
          {
            if (v22.__sinval == 1.0)
            {
              goto LABEL_41;
            }

            if ((*&v22.__sinval & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_60;
            }

            v46 = fabs(v22.__sinval);
            v47 = fabs(v22.__sinval + -1.0);
            if (v46 < 1.0)
            {
              v46 = 1.0;
            }

            if (v47 <= v46 * 2.22044605e-16)
            {
LABEL_41:
              *(a6 + 8) = 0x400921FB54442D18;
            }

            else
            {
LABEL_60:
              *(a6 + 16) = 0x400921FB54442D18;
            }
          }

          return;
        }
      }

      if (v23.__cosval == 0.0)
      {
        goto LABEL_47;
      }

      if ((*&v23.__cosval & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_65;
      }

      v48 = fabs(v23.__cosval);
      v49 = 1.0;
      if (v48 >= 1.0)
      {
        v49 = v48;
      }

      if (v48 <= v49 * 2.22044605e-16)
      {
LABEL_47:
        v41 = 0.0;
        if (v23.__sinval >= 0.0)
        {
          v42 = 0.0;
        }

        else
        {
          v42 = 3.14159265;
        }

        cosval = v22.__cosval;
      }

      else
      {
LABEL_65:
        v42 = atan2(v21.__sinval, v22.__cosval * (v23.__sinval / v23.__cosval) - v22.__sinval * v21.__cosval);
        v50 = sin(v42 + v42);
        cosval = v22.__cosval;
        v41 = v36 * 0.5 * (cosval * cosval) * v50;
      }

      if (cosval == 0.0)
      {
        goto LABEL_69;
      }

      if ((*&cosval & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_75;
      }

      v54 = fabs(cosval);
      v55 = 1.0;
      if (v54 >= 1.0)
      {
        v55 = v54;
      }

      if (v54 <= v55 * 2.22044605e-16)
      {
LABEL_69:
        v52 = 0.0;
        if (v22.__sinval >= 0.0)
        {
          v53 = 0.0;
        }

        else
        {
          v53 = 3.14159265;
        }
      }

      else
      {
LABEL_75:
        v53 = atan2(v21.__sinval, v23.__cosval * (v22.__sinval / cosval) - v23.__sinval * v21.__cosval);
        v52 = v36 * 0.5 * (v23.__cosval * v23.__cosval) * sin(v53 + v53);
      }

      v56 = -(v41 - v52 * (v27 / v28));
      v57 = v42 - v56;
      *(a6 + 8) = v42 - v56;
      if (v42 >= 0.0)
      {
        if (v56 >= 0.0)
        {
          v58 = 0;
          if (v57 >= 0.0)
          {
            goto LABEL_88;
          }

          goto LABEL_87;
        }

        v58 = 0x400921FB54442D18;
        if (v57 > 3.14159265)
        {
LABEL_87:
          *(a6 + 8) = v58;
        }
      }

      else
      {
        if (v56 > 0.0)
        {
          v58 = 0xC00921FB54442D18;
          if (v57 >= -3.14159265)
          {
            goto LABEL_88;
          }

          goto LABEL_87;
        }

        v58 = 0;
        if (v57 > 0.0)
        {
          goto LABEL_87;
        }
      }

LABEL_88:
      v59 = v52 + -v41 * (v27 / v28);
      if (v53 >= 0.0)
      {
        v60 = 0x400921FB54442D18;
        v62 = 3.14159265 - v53 - v59;
        *(a6 + 16) = v62;
        if (v59 >= 0.0)
        {
          v60 = 0;
          if (v62 >= 0.0)
          {
            return;
          }
        }

        else if (v62 <= 3.14159265)
        {
          return;
        }
      }

      else
      {
        v60 = 0xC00921FB54442D18;
        v61 = -3.14159265 - v53 - v59;
        *(a6 + 16) = v61;
        if (v59 <= 0.0)
        {
          v60 = 0;
          if (v61 <= 0.0)
          {
            return;
          }
        }

        else if (v61 >= -3.14159265)
        {
          return;
        }
      }

      *(a6 + 16) = v60;
    }
  }
}

void sub_100053D04(double *a1@<X0>, double *a2@<X1>, double *a3@<X2>, double *a4@<X3>, double *a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = 0u;
  *(a6 + 16) = 0u;
  *(a6 + 32) = 0x3FF0000000000000;
  v9 = *a1;
  v10 = *a3;
  if (*a1 != *a3)
  {
    if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_19;
    }

    v44 = fabs(v9);
    v45 = fabs(v10);
    v46 = vabdd_f64(v9, v10);
    if (v44 < v45)
    {
      v44 = v45;
    }

    if (v44 < 1.0)
    {
      v44 = 1.0;
    }

    if (v46 > v44 * 2.22044605e-16)
    {
      goto LABEL_19;
    }
  }

  v11 = *a2;
  v12 = *a4;
  if (*a2 != *a4)
  {
    v13 = (*&v11 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v12 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
    if (!v13)
    {
      goto LABEL_19;
    }

    v14 = fabs(v11);
    v15 = fabs(v12);
    v16 = vabdd_f64(v11, v12);
    if (v14 >= v15)
    {
      v17 = v14;
    }

    else
    {
      v17 = v15;
    }

    if (v17 < 1.0)
    {
      v17 = 1.0;
    }

    if (v16 > v17 * 2.22044605e-16)
    {
LABEL_19:
      v19 = *a5;
      v20 = *a5 - a5[1];
      v21 = __sincos_stret(v10 - v9);
      v22 = __sincos_stret(*a2);
      v23 = __sincos_stret(*a4);
      v24 = v21.__cosval * (v22.__cosval * v23.__cosval) + v22.__sinval * v23.__sinval;
      if (v24 > 1.0)
      {
        v25 = 1.0;
      }

      else
      {
        v25 = v21.__cosval * (v22.__cosval * v23.__cosval) + v22.__sinval * v23.__sinval;
      }

      if (v24 >= -1.0)
      {
        v26 = v25;
      }

      else
      {
        v26 = -1.0;
      }

      v27 = acos(v26);
      v28 = sin(v27);
      v29 = v28 * 3.0;
      v30 = 1.0 - v26;
      v31 = v26 + 1.0;
      v32 = 0.0;
      v33 = 0.0;
      if (1.0 - v26 != 0.0)
      {
        if (COERCE_UNSIGNED_INT64(fabs(1.0 - v26)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_31;
        }

        v34 = fabs(v30);
        v35 = 1.0;
        if (v34 >= 1.0)
        {
          v35 = v34;
        }

        v13 = v34 > v35 * 2.22044605e-16;
        v33 = 0.0;
        if (v13)
        {
LABEL_31:
          v33 = (v27 + v29) / v30;
        }
      }

      v36 = v20 / v19;
      if (v31 != 0.0)
      {
        if (COERCE_UNSIGNED_INT64(fabs(v26 + 1.0)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_37;
        }

        v37 = fabs(v31);
        v38 = 1.0;
        if (v37 >= 1.0)
        {
          v38 = v37;
        }

        if (v37 > v38 * 2.22044605e-16)
        {
LABEL_37:
          v32 = (v27 - v29) / v31;
        }
      }

      *a6 = v19 * (v27 + v36 * -0.25 * ((v22.__sinval + v23.__sinval) * (v22.__sinval + v23.__sinval) * v32 + v33 * ((v22.__sinval - v23.__sinval) * (v22.__sinval - v23.__sinval))));
      if (v28 != 0.0)
      {
        if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_64;
        }

        v39 = fabs(v28);
        v40 = 1.0;
        if (v39 >= 1.0)
        {
          v40 = v39;
        }

        if (v39 > v40 * 2.22044605e-16)
        {
LABEL_64:
          if (v23.__cosval == 0.0)
          {
            goto LABEL_47;
          }

          if ((*&v23.__cosval & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_65;
          }

          v49 = fabs(v23.__cosval);
          v50 = 1.0;
          if (v49 >= 1.0)
          {
            v50 = v49;
          }

          if (v49 <= v50 * 2.22044605e-16)
          {
LABEL_47:
            v41 = 0.0;
            cosval = v22.__cosval;
            if (v23.__sinval >= 0.0)
            {
              v43 = 0.0;
            }

            else
            {
              v43 = 3.14159265;
            }
          }

          else
          {
LABEL_65:
            v43 = atan2(v21.__sinval, v22.__cosval * (v23.__sinval / v23.__cosval) - v22.__sinval * v21.__cosval);
            v51 = sin(v43 + v43);
            cosval = v22.__cosval;
            v41 = v36 * 0.5 * (cosval * cosval) * v51;
          }

          v52 = 0.0;
          if (cosval != 0.0)
          {
            if ((*&cosval & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_72;
            }

            v53 = fabs(cosval);
            v54 = 1.0;
            if (v53 >= 1.0)
            {
              v54 = v53;
            }

            if (v53 > v54 * 2.22044605e-16)
            {
LABEL_72:
              v55 = atan2(v21.__sinval, v23.__cosval * (v22.__sinval / cosval) - v23.__sinval * v21.__cosval);
              v52 = v36 * 0.5 * (v23.__cosval * v23.__cosval) * sin(v55 + v55);
            }
          }

          v56 = -(v41 - v52 * (v27 / v28));
          v57 = v43 - v56;
          *(a6 + 8) = v43 - v56;
          if (v43 >= 0.0)
          {
            if (v56 >= 0.0)
            {
              v58 = 0;
              if (v57 >= 0.0)
              {
                return;
              }
            }

            else
            {
              v58 = 0x400921FB54442D18;
              if (v57 <= 3.14159265)
              {
                return;
              }
            }
          }

          else if (v56 <= 0.0)
          {
            v58 = 0;
            if (v57 <= 0.0)
            {
              return;
            }
          }

          else
          {
            v58 = 0xC00921FB54442D18;
            if (v57 >= -3.14159265)
            {
              return;
            }
          }

          *(a6 + 8) = v58;
          return;
        }
      }

      if (v26 >= 0.0)
      {
        *(a6 + 8) = 0;
        *(a6 + 16) = 0;
      }

      else
      {
        if (v22.__sinval == 1.0)
        {
          goto LABEL_41;
        }

        if ((*&v22.__sinval & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_60;
        }

        v47 = fabs(v22.__sinval);
        v48 = fabs(v22.__sinval + -1.0);
        if (v47 < 1.0)
        {
          v47 = 1.0;
        }

        if (v48 <= v47 * 2.22044605e-16)
        {
LABEL_41:
          *(a6 + 8) = 0x400921FB54442D18;
        }

        else
        {
LABEL_60:
          *(a6 + 16) = 0x400921FB54442D18;
        }
      }
    }
  }
}

void sub_1000541F0(double *a1, double *a2, double *a3, double *a4, double *a5, double *a6, double *a7, double *a8, double *a9, double *a10)
{
  v16 = 0;
  v35 = 0u;
  v36 = 0u;
  v37 = 0x3FF0000000000000;
  v34 = *a8;
  v17 = -1.0;
  v18 = 0.0;
  do
  {
    sub_1000546E8(a1, a2, &v34, a9, a7, &v31);
    v35 = v31;
    v36 = v32;
    v37 = *&v33;
    sub_100054AF0(&v35, &v35 + 1, a3, a4, a7, &v31);
    v19 = *(&v31 + 1);
    sub_100054F08(&v35, &v35 + 1, a5, a6, a7, &v31);
    v20 = *&v31;
    v21 = *(&v31 + 1) - v19;
    if (*(&v32 + 1) != 0.0)
    {
      v22 = v33 / *(&v32 + 1);
      v23 = sin(v21) * v22;
      if (v21 >= -3.92699082)
      {
        if (v21 <= 3.92699082)
        {
          if (v21 >= 0.0 || v21 <= -2.35619449)
          {
            v18 = v21 + -1.57079633;
          }

          else
          {
            v23 = -v23;
            v18 = -1.57079633 - v21;
          }
        }

        else
        {
          v23 = -v23;
          v18 = 4.71238898 - v21;
        }
      }

      else
      {
        v18 = v21 + 4.71238898;
      }

      v24 = v18 / v23;
      v28 = v23 == 0.0;
      v25 = 0.0;
      if (!v28)
      {
        v25 = v24;
      }

      v34 = v34 - v25;
    }

    v26 = v17 == -1.0;
    if (v17 > v20)
    {
      v26 = 1;
    }

    if (v26)
    {
      v27 = v20;
    }

    else
    {
      v27 = v17;
    }

    *a10 = v27;
    v28 = v21 == 1.57079633 || !v26;
    if (v28)
    {
      break;
    }

    if (v18 == 0.0)
    {
      break;
    }

    v17 = v20;
  }

  while (v16++ < 0x64);
}

long double sub_100054420(uint64_t a1, double *a2, double *a3, double *a4)
{
  v5 = *a3;
  v6 = a3[1];
  v7 = *a2;
  v8 = a2[1];
  v9 = sin((v8 - v6) * 0.5);
  v10 = v9 * v9;
  v11 = cos(v6);
  v47 = v8;
  v46 = cos(v8);
  v49 = v7;
  v45 = v7 - v5;
  v12 = sin((v7 - v5) * 0.5);
  v51 = v10 + v11 * v46 * (v12 * v12);
  v13 = *a4;
  v14 = a4[1];
  v15 = sin((v14 - v6) * 0.5);
  v16 = v15 * v15;
  v17 = cos(v14);
  v18 = v13 - v5;
  v19 = sin(v18 * 0.5);
  v20 = v16 + v11 * v17 * (v19 * v19);
  if (v20 == 0.0)
  {
    return v51;
  }

  v43 = v11;
  if (COERCE_UNSIGNED_INT64(fabs(v16 + v11 * v17 * (v19 * v19))) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_8;
  }

  v23 = fabs(v20);
  v24 = 1.0;
  if (v23 >= 1.0)
  {
    v24 = v23;
  }

  if (v23 <= v24 * 2.22044605e-16)
  {
    return v51;
  }

LABEL_8:
  v41 = v20;
  v25 = sin((v8 - v14) * 0.5);
  v26 = v25 * v25;
  v44 = v17;
  v42 = v49 - v13;
  v27 = sin((v49 - v13) * 0.5);
  v50 = v26 + v46 * v17 * (v27 * v27);
  v28 = __sincos_stret(v45);
  v29 = sin(v6);
  v30 = sin(v47);
  v48 = atan2(v28.__sinval * v46, v28.__cosval * -(v29 * v46) + v43 * v30);
  v31 = __sincos_stret(v18);
  v32 = sin(v14);
  v33 = -(v29 * v17);
  v34 = atan2(v31.__sinval * v44, v31.__cosval * v33 + v43 * v32);
  v35 = atan2(v43 * v31.__sinval, v33 + v43 * v32 * v31.__cosval) + -3.14159265;
  v36 = __sincos_stret(v42);
  v37 = atan2(v46 * v36.__sinval, v36.__cosval * -(v32 * v46) + v44 * v30) - v35;
  v21 = v51;
  v38 = v51 * cos(v48 - v34) / v41;
  v39 = cos(v37);
  if (v38 <= 0.0 || v50 * v39 / v41 <= 0.0)
  {
    if (v50 < v51)
    {
      return v50;
    }
  }

  else
  {
    v40 = sin(v48 - v34);
    return v51 * v40 * (v40 - v51 * v40) / (sqrt(0.25 - v51 * v40 * (v40 - v51 * v40)) + 0.5);
  }

  return v21;
}

void sub_1000546E8(double *a1@<X0>, double *a2@<X1>, double *a3@<X2>, double *a4@<X3>, double *a5@<X4>, uint64_t a6@<X8>)
{
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  v7 = (a6 + 8);
  *(a6 + 24) = 0;
  *(a6 + 32) = 0x3FF0000000000000;
  v8 = *a4;
  v9 = 3.14159265;
  if (fabs(*a4) > 3.14159265)
  {
    sub_100056A58();
  }

  v11 = *a2;
  v12 = *a5;
  v13 = (*a5 - a5[1]) / *a5;
  v14 = 1.57079633;
  v48 = *a4;
  if (v8 > 1.57079633)
  {
    goto LABEL_5;
  }

  if (v8 < -1.57079633)
  {
    v9 = -3.14159265;
LABEL_5:
    v8 = v9 - v8;
    v11 = -v11;
    v15 = 1;
    goto LABEL_7;
  }

  v15 = 0;
LABEL_7:
  v51 = *a1;
  if (v11 != 1.57079633)
  {
    if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v16 = fabs(v11);
      if (v16 < 1.57079633)
      {
        v16 = 1.57079633;
      }

      if (v16 < 1.0)
      {
        v16 = 1.0;
      }

      if (v11 == -1.57079633 || fabs(v11 + -1.57079633) <= v16 * 2.22044605e-16 || fabs(v11 + 1.57079633) <= v16 * 2.22044605e-16)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    v14 = -1.57079633;
    if (v11 != -1.57079633)
    {
LABEL_18:
      v17 = tan(v11);
      v11 = atan((1.0 - v13) * v17);
LABEL_19:
      v14 = v11;
    }
  }

  v52 = 1.0 - v13;
  v18 = __sincos_stret(v14);
  v19 = __sincos_stret(v8);
  v20 = v19.__sinval * v18.__cosval;
  v21 = acos(v19.__sinval * v18.__cosval);
  v22 = sin(v21);
  v23 = v13 * (1.0 - v20 * v20) * 0.25;
  v50 = v13 * (v19.__sinval * v18.__cosval);
  v24 = v23 * -2.0 + 1.0 - v13 * v20 * v20;
  v25 = v23 / v24;
  v26 = 1.0;
  if (v22 != 0.0)
  {
    if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || ((v27 = fabs(v22), v27 >= 1.0) ? (v28 = v27) : (v28 = 1.0), v27 > v28 * 2.22044605e-16))
    {
      v29 = v18.__sinval / v22;
      v30 = -1.0;
      if (v29 >= -1.0)
      {
        v30 = v29;
      }

      if (v29 <= 1.0)
      {
        v26 = v30;
      }
    }
  }

  v31 = acos(v26);
  v32 = *a3 / (v12 * v24);
  v49 = v31;
  v33 = v31 - v32 + v31 - v32;
  v34 = __sincos_stret(v32);
  v35 = __sincos_stret(v33);
  v36 = v32 - v34.__sinval * ((1.0 - (v25 + v25) * v35.__cosval) * ((v25 + v25) * (v35.__cosval * v34.__cosval - v35.__sinval * v34.__sinval)));
  v37 = __sincos_stret(v36);
  v38 = atan2(v20, v19.__cosval * v18.__cosval * v37.__cosval - v18.__sinval * v37.__sinval);
  v39 = v38;
  *(a6 + 16) = v38;
  if (v15)
  {
    if (v38 == 0.0)
    {
      v39 = dbl_10037F960[v48 >= 0.0];
    }

    else
    {
      if (v38 <= 0.0)
      {
        v40 = -3.14159265;
      }

      else
      {
        v40 = 3.14159265;
      }

      v39 = v40 - v39;
    }

    *(a6 + 16) = v39;
  }

  v41 = v51 + atan2(v19.__sinval * v37.__sinval, v19.__cosval * -(v18.__sinval * v37.__sinval) + v18.__cosval * v37.__cosval) - v50 * v36;
  *a6 = v41;
  if (v20 == 0.0)
  {
    goto LABEL_39;
  }

  if (COERCE_UNSIGNED_INT64(fabs(v19.__sinval * v18.__cosval)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_44;
  }

  v44 = fabs(v20);
  v45 = 1.0;
  if (v44 >= 1.0)
  {
    v45 = v44;
  }

  if (v44 <= v45 * 2.22044605e-16)
  {
LABEL_39:
    v42 = __sincos_stret(-(v36 - v49 * 2.0) - v49);
    v43 = v42.__cosval / fabs(v42.__sinval);
  }

  else
  {
LABEL_44:
    v43 = (v19.__cosval * v18.__cosval * v37.__sinval + v18.__sinval * v37.__cosval) * sin(v39) / v20;
  }

  v46 = atan(v43 / v52);
  if (v15)
  {
    v46 = -v46;
  }

  *v7 = v46;
  if (v41 <= 3.14159265)
  {
    if (v41 > -3.14159265)
    {
      return;
    }

    v47 = 6.28318531;
  }

  else
  {
    v47 = -6.28318531;
  }

  *a6 = v41 + v47;
}

void sub_100054AF0(double *a1@<X0>, double *a2@<X1>, double *a3@<X2>, double *a4@<X3>, double *a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = 0u;
  *(a6 + 16) = 0u;
  *(a6 + 32) = 0x3FF0000000000000;
  v9 = *a1;
  v10 = *a3;
  if (*a1 != *a3)
  {
    if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_19;
    }

    v33 = fabs(v9);
    v34 = fabs(v10);
    v35 = vabdd_f64(v9, v10);
    if (v33 < v34)
    {
      v33 = v34;
    }

    if (v33 < 1.0)
    {
      v33 = 1.0;
    }

    if (v35 > v33 * 2.22044605e-16)
    {
      goto LABEL_19;
    }
  }

  v11 = *a2;
  v12 = *a4;
  if (*a2 != *a4)
  {
    if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_19;
    }

    v14 = fabs(v11);
    v15 = fabs(v12);
    v16 = vabdd_f64(v11, v12);
    if (v14 >= v15)
    {
      v17 = v14;
    }

    else
    {
      v17 = v15;
    }

    if (v17 < 1.0)
    {
      v17 = 1.0;
    }

    if (v16 > v17 * 2.22044605e-16)
    {
LABEL_19:
      v19 = *a5;
      v49 = a5[1];
      v20 = __sincos_stret(v10 - v9);
      v21 = __sincos_stret(*a2);
      v22 = __sincos_stret(*a4);
      v23 = v20.__cosval * (v21.__cosval * v22.__cosval) + v21.__sinval * v22.__sinval;
      v24 = -1.0;
      if (v23 >= -1.0)
      {
        v24 = v20.__cosval * (v21.__cosval * v22.__cosval) + v21.__sinval * v22.__sinval;
        if (v23 > 1.0)
        {
          v24 = 1.0;
        }
      }

      v25 = acos(v24);
      v26 = sin(v25);
      if (v26 != 0.0)
      {
        v27 = v26;
        if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_30;
        }

        v28 = fabs(v26);
        v29 = 1.0;
        if (v28 >= 1.0)
        {
          v29 = v28;
        }

        if (v28 > v29 * 2.22044605e-16)
        {
LABEL_30:
          v30 = (v19 - v49) / v19;
          if (v22.__cosval == 0.0)
          {
            goto LABEL_31;
          }

          if ((*&v22.__cosval & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_49;
          }

          v38 = fabs(v22.__cosval);
          v39 = 1.0;
          if (v38 >= 1.0)
          {
            v39 = v38;
          }

          if (v38 <= v39 * 2.22044605e-16)
          {
LABEL_31:
            v31 = 0.0;
            if (v22.__sinval >= 0.0)
            {
              v32 = 0.0;
            }

            else
            {
              v32 = 3.14159265;
            }
          }

          else
          {
LABEL_49:
            v32 = atan2(v20.__sinval, v21.__cosval * (v22.__sinval / v22.__cosval) - v21.__sinval * v20.__cosval);
            v40 = sin(v32 + v32);
            v30 = (v19 - v49) / v19;
            v31 = v30 * 0.5 * (v21.__cosval * v21.__cosval) * v40;
          }

          v41 = 0.0;
          if (v21.__cosval != 0.0)
          {
            if ((*&v21.__cosval & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_56;
            }

            v42 = fabs(v21.__cosval);
            v43 = 1.0;
            if (v42 >= 1.0)
            {
              v43 = v42;
            }

            if (v42 > v43 * 2.22044605e-16)
            {
LABEL_56:
              v44 = v30;
              v45 = atan2(v20.__sinval, v22.__cosval * (v21.__sinval / v21.__cosval) - v22.__sinval * v20.__cosval);
              v41 = v44 * 0.5 * (v22.__cosval * v22.__cosval) * sin(v45 + v45);
            }
          }

          v46 = -(v31 - v41 * (v25 / v27));
          v47 = v32 - v46;
          *(a6 + 8) = v32 - v46;
          if (v32 >= 0.0)
          {
            if (v46 >= 0.0)
            {
              v48 = 0;
              if (v47 >= 0.0)
              {
                return;
              }
            }

            else
            {
              v48 = 0x400921FB54442D18;
              if (v47 <= 3.14159265)
              {
                return;
              }
            }
          }

          else if (v46 <= 0.0)
          {
            v48 = 0;
            if (v47 <= 0.0)
            {
              return;
            }
          }

          else
          {
            v48 = 0xC00921FB54442D18;
            if (v47 >= -3.14159265)
            {
              return;
            }
          }

          *(a6 + 8) = v48;
          return;
        }
      }

      if (v24 >= 0.0)
      {
        *(a6 + 8) = 0;
        *(a6 + 16) = 0;
      }

      else
      {
        if (v21.__sinval == 1.0)
        {
          goto LABEL_25;
        }

        if ((*&v21.__sinval & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_44;
        }

        v36 = fabs(v21.__sinval);
        v37 = fabs(v21.__sinval + -1.0);
        if (v36 < 1.0)
        {
          v36 = 1.0;
        }

        if (v37 <= v36 * 2.22044605e-16)
        {
LABEL_25:
          *(a6 + 8) = 0x400921FB54442D18;
        }

        else
        {
LABEL_44:
          *(a6 + 16) = 0x400921FB54442D18;
        }
      }
    }
  }
}

void sub_100054F08(double *a1@<X0>, double *a2@<X1>, double *a3@<X2>, double *a4@<X3>, double *a5@<X4>, uint64_t a6@<X8>)
{
  *(a6 + 32) = 0x3FF0000000000000;
  *a6 = 0u;
  *(a6 + 16) = 0u;
  v9 = *a1;
  v10 = *a3;
  if (*a1 != *a3)
  {
    if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_19;
    }

    v43 = fabs(v9);
    v44 = fabs(v10);
    v45 = vabdd_f64(v9, v10);
    if (v43 < v44)
    {
      v43 = v44;
    }

    if (v43 < 1.0)
    {
      v43 = 1.0;
    }

    if (v45 > v43 * 2.22044605e-16)
    {
      goto LABEL_19;
    }
  }

  v11 = *a2;
  v12 = *a4;
  if (*a2 != *a4)
  {
    v13 = (*&v11 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v12 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
    if (!v13)
    {
      goto LABEL_19;
    }

    v14 = fabs(v11);
    v15 = fabs(v12);
    v16 = vabdd_f64(v11, v12);
    if (v14 >= v15)
    {
      v17 = v14;
    }

    else
    {
      v17 = v15;
    }

    if (v17 < 1.0)
    {
      v17 = 1.0;
    }

    if (v16 > v17 * 2.22044605e-16)
    {
LABEL_19:
      v19 = *a5;
      v63 = a5[1];
      v70 = (v19 - v63) / v19;
      v69 = v10 - v9;
      v20 = __sincos_stret(v10 - v9);
      v21 = __sincos_stret(*a2);
      cosval = v21.__cosval;
      sinval = v21.__sinval;
      v22 = __sincos_stret(*a4);
      v65 = v22.__cosval;
      v66 = v22.__sinval;
      v23 = v20.__cosval * (v21.__cosval * v22.__cosval) + v21.__sinval * v22.__sinval;
      if (v23 > 1.0)
      {
        v24 = 1.0;
      }

      else
      {
        v24 = v20.__cosval * (v21.__cosval * v22.__cosval) + v21.__sinval * v22.__sinval;
      }

      if (v23 >= -1.0)
      {
        v25 = v24;
      }

      else
      {
        v25 = -1.0;
      }

      v26 = acos(v25);
      v27 = sin(v26);
      v28 = v27 * 3.0;
      v29 = 1.0 - v25;
      v30 = v25 + 1.0;
      v31 = 0.0;
      v32 = 0.0;
      if (1.0 - v25 != 0.0)
      {
        if (COERCE_UNSIGNED_INT64(fabs(1.0 - v25)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_31;
        }

        v33 = fabs(v29);
        v34 = 1.0;
        if (v33 >= 1.0)
        {
          v34 = v33;
        }

        v13 = v33 > v34 * 2.22044605e-16;
        v32 = 0.0;
        if (v13)
        {
LABEL_31:
          v32 = (v26 + v28) / v29;
        }
      }

      if (v30 == 0.0)
      {
        v35 = (v19 - v63) / v19;
      }

      else
      {
        v35 = (v19 - v63) / v19;
        if (COERCE_UNSIGNED_INT64(fabs(v25 + 1.0)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_38;
        }

        v36 = fabs(v30);
        v37 = 1.0;
        if (v36 >= 1.0)
        {
          v37 = v36;
        }

        if (v36 > v37 * 2.22044605e-16)
        {
LABEL_38:
          v31 = (v26 - v28) / v30;
        }
      }

      *a6 = v19 * (v26 + v35 * -0.25 * ((v21.__sinval + v22.__sinval) * (v21.__sinval + v22.__sinval) * v31 + v32 * ((v21.__sinval - v22.__sinval) * (v21.__sinval - v22.__sinval))));
      if (v27 == 0.0)
      {
        goto LABEL_40;
      }

      if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        v39 = fabs(v27);
        v40 = 1.0;
        if (v39 >= 1.0)
        {
          v40 = v39;
        }

        if (v39 <= v40 * 2.22044605e-16)
        {
LABEL_40:
          if (v25 >= 0.0)
          {
            *(a6 + 8) = 0;
            *(a6 + 16) = 0;
          }

          else
          {
            if (v21.__sinval == 1.0)
            {
              goto LABEL_42;
            }

            if ((*&v21.__sinval & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_61;
            }

            v46 = fabs(v21.__sinval);
            v47 = fabs(v21.__sinval + -1.0);
            if (v46 < 1.0)
            {
              v46 = 1.0;
            }

            if (v47 <= v46 * 2.22044605e-16)
            {
LABEL_42:
              v38 = xmmword_10037F980;
            }

            else
            {
LABEL_61:
              v38 = xmmword_10037F970;
            }

            *(a6 + 8) = v38;
          }

          goto LABEL_101;
        }
      }

      if (v22.__cosval == 0.0)
      {
        goto LABEL_48;
      }

      if ((*&v22.__cosval & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_67;
      }

      v48 = fabs(v22.__cosval);
      v49 = 1.0;
      if (v48 >= 1.0)
      {
        v49 = v48;
      }

      if (v48 <= v49 * 2.22044605e-16)
      {
LABEL_48:
        v41 = 0.0;
        if (v22.__sinval >= 0.0)
        {
          v42 = 0.0;
        }

        else
        {
          v42 = 3.14159265;
        }

        v51 = v21.__cosval;
      }

      else
      {
LABEL_67:
        v42 = atan2(v20.__sinval, v21.__cosval * (v22.__sinval / v22.__cosval) - v21.__sinval * v20.__cosval);
        v50 = sin(v42 + v42);
        v51 = v21.__cosval;
        v41 = v35 * 0.5 * (v51 * v51) * v50;
      }

      if (v51 == 0.0)
      {
        goto LABEL_71;
      }

      if ((*&v51 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_77;
      }

      v54 = fabs(v51);
      v55 = 1.0;
      if (v54 >= 1.0)
      {
        v55 = v54;
      }

      if (v54 <= v55 * 2.22044605e-16)
      {
LABEL_71:
        v52 = 0.0;
        if (v21.__sinval >= 0.0)
        {
          v53 = 0.0;
        }

        else
        {
          v53 = 3.14159265;
        }
      }

      else
      {
LABEL_77:
        v53 = atan2(v20.__sinval, v22.__cosval * (v21.__sinval / v51) - v22.__sinval * v20.__cosval);
        v52 = v35 * 0.5 * (v22.__cosval * v22.__cosval) * sin(v53 + v53);
      }

      v56 = -(v41 - v52 * (v26 / v27));
      v57 = v42 - v56;
      *(a6 + 8) = v42 - v56;
      if (v42 >= 0.0)
      {
        if (v56 >= 0.0)
        {
          v58 = 0;
          if (v57 >= 0.0)
          {
            goto LABEL_90;
          }

          goto LABEL_89;
        }

        v58 = 0x400921FB54442D18;
        if (v57 > 3.14159265)
        {
LABEL_89:
          *(a6 + 8) = v58;
        }
      }

      else
      {
        if (v56 > 0.0)
        {
          v58 = 0xC00921FB54442D18;
          if (v57 >= -3.14159265)
          {
            goto LABEL_90;
          }

          goto LABEL_89;
        }

        v58 = 0;
        if (v57 > 0.0)
        {
          goto LABEL_89;
        }
      }

LABEL_90:
      v59 = v52 + -v41 * (v26 / v27);
      if (v53 >= 0.0)
      {
        v60 = 0x400921FB54442D18;
        v62 = 3.14159265 - v53 - v59;
        *(a6 + 16) = v62;
        if (v59 >= 0.0)
        {
          v60 = 0;
          if (v62 >= 0.0)
          {
LABEL_101:
            v64 = v63;
            sub_1000554E4(&v69, &sinval, &cosval, &v66, &v65, (a6 + 8), (a6 + 16), &v64, &v70, (a6 + 24), (a6 + 32));
            return;
          }
        }

        else if (v62 <= 3.14159265)
        {
          goto LABEL_101;
        }
      }

      else
      {
        v60 = 0xC00921FB54442D18;
        v61 = -3.14159265 - v53 - v59;
        *(a6 + 16) = v61;
        if (v59 <= 0.0)
        {
          v60 = 0;
          if (v61 <= 0.0)
          {
            goto LABEL_101;
          }
        }

        else if (v61 >= -3.14159265)
        {
          goto LABEL_101;
        }
      }

      *(a6 + 16) = v60;
      goto LABEL_101;
    }
  }
}

void sub_1000554E4(double *a1, double *a2, double *a3, double *a4, double *a5, double *a6, long double *a7, double *a8, double *a9, double *a10, double *a11)
{
  v15 = *a9;
  v16 = 1.0 - *a9;
  v17 = v16 * *a2;
  v18 = v16 * *a4;
  if (v17 != 0.0)
  {
    if (COERCE_UNSIGNED_INT64(fabs(v16 * *a2)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_16;
    }

    v23 = fabs(v17);
    v24 = 1.0;
    if (v23 >= 1.0)
    {
      v24 = v23;
    }

    if (v23 > v24 * 2.22044605e-16)
    {
      goto LABEL_16;
    }
  }

  if (v18 == 0.0)
  {
    goto LABEL_3;
  }

  if (COERCE_UNSIGNED_INT64(fabs(v16 * *a4)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_16;
  }

  v25 = fabs(v18);
  v26 = 1.0;
  if (v25 >= 1.0)
  {
    v26 = v25;
  }

  if (v25 <= v26 * 2.22044605e-16)
  {
LABEL_3:
    v19 = *a6;
    if (fabs(*a6) > 3.14159265)
    {
      sub_100056A84();
    }

    v22 = __sincos_stret(*a1 / v16);
    cosval = v22.__cosval;
    sinval = v22.__sinval;
    if (v19 < 0.0)
    {
      sinval = -v22.__sinval;
    }

    *a10 = *a8 * sinval;
  }

  else
  {
LABEL_16:
    v48 = v15 * (2.0 - v15) / (v16 * v16);
    v27 = __sincos_stret(*a6);
    v28 = cos(*a7);
    v29 = sqrt(v17 * v17 + *a3 * *a3);
    v30 = v17 / v29;
    v31 = *a3 / v29;
    v32 = sqrt(v18 * v18 + *a5 * *a5);
    v33 = v18 / v32;
    v34 = *a5 / v32;
    v35 = v28 * v34;
    v36 = sqrt(v30 * v30 + v27.__cosval * v31 * (v27.__cosval * v31));
    v37 = v30 / v36;
    v38 = v27.__cosval * v31 / v36;
    v39 = v33 * v33;
    v40 = sqrt(v33 * v33 + v35 * v35);
    v41 = v33 / v40;
    v42 = v35 / v40;
    v46 = v30 * v30;
    v47 = v30 / v36 * (v33 / v40) + v38 * (v35 / v40);
    v43 = v15 * (1.0 - v27.__sinval * v31 * (v27.__sinval * v31)) * (atan2(v38 * (v33 / v40) - v30 / v36 * (v35 / v40), v47) + (v33 / v40 * (v42 + v42) - v30 / v36 * (v38 + v38)) * -0.5);
    v44 = sqrt(v48 * v46 + 1.0);
    v45 = sqrt(v48 * v39 + 1.0);
    *a10 = *a8 * (v45 * (v38 * v41) - v44 * (v37 * v42) + -(v38 * v42) * v43);
    cosval = v47 + v37 * ((v31 + v34) * (v48 * (v31 - v34)) / (v44 + v45) * v41 - v42 * v43) / v44;
  }

  *a11 = cosval;
}

void sub_1000557A8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1000092C0();
}

uint64_t sub_100055800(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 24 * (v4 >> 1));
    v7 = *(a2 - 24);
    if (*v6 <= v7)
    {
      if (*v6 != v7)
      {
        return result;
      }

      v8 = *(a2 - 16);
      if (*(v6 + 1) <= v8)
      {
        return result;
      }
    }

    else
    {
      v8 = *(a2 - 16);
    }

    v9 = *(a2 - 8);
    v10 = *v6;
    *(a2 - 8) = *(v6 + 2);
    *(a2 - 24) = v10;
    if (v4 >= 2)
    {
      v11 = (result + 24 * (v4 >> 1));
      while (1)
      {
        v12 = v5 - 1;
        v5 = (v5 - 1) >> 1;
        v6 = (result + 24 * v5);
        if (*v6 <= v7 && (*v6 != v7 || *(v6 + 1) <= v8))
        {
          break;
        }

        v13 = *v6;
        *(v11 + 2) = *(v6 + 2);
        *v11 = v13;
        v11 = (result + 24 * v5);
        if (v12 <= 1)
        {
          goto LABEL_14;
        }
      }

      v6 = v11;
    }

LABEL_14:
    *v6 = v7;
    *(v6 + 1) = v8;
    *(v6 + 2) = v9;
  }

  return result;
}

void sub_1000558C0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_1000092C0();
}

uint64_t sub_100055908(uint64_t result, int64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 >= 7)
  {
    v6 = (a3 - 3) >> 2;
    if (v6 <= a2)
    {
LABEL_19:
      if (a2 > ((a3 - 2) >> 1))
      {
        goto LABEL_34;
      }

      v11 = (2 * a2) | 1;
      if (a3 != 2 && a2 <= ((a3 - 3) >> 1))
      {
        v17 = 2 * a2 + 2;
        if (a3 >= 4 && a2 <= ((a3 - 4) >> 2))
        {
          v18 = (2 * v11) | 1;
          if (a3 == 4 || a2 > ((a3 - 5) >> 2))
          {
            v11 = (2 * v11) | 1;
          }

          else
          {
            v24 = 2 * v11;
            v25 = (result + 16 * v18);
            v26 = v25[2];
            v27 = *v25;
            v11 = v24 + 2;
            if (v26 > v27)
            {
              v11 = v18;
            }

            if (a3 >= 6)
            {
              v28 = v24 + 3;
              if (a2 <= ((a3 - 6) >> 2))
              {
                v17 = v28;
              }
            }
          }
        }

        if (*(16 * v17 + result) <= *(16 * v11 + result))
        {
          v11 = v17;
        }
      }

      v19 = (result + 16 * v11);
      if (*&a4 <= *v19)
      {
LABEL_34:
        v15 = *&a4;
        v11 = a2;
      }

      else
      {
        v20 = (result + 16 * a2);
        *v20 = *v19;
        v20[1] = v19[1];
        if (v11 < 3 || a2 > ((v11 - 3) >> 2) || (v21 = ((8 * v11 - 8) & 0xFFFFFFFFFFFFFFF0) + result, v15 = *v21, *&a4 <= *v21))
        {
          v15 = *&a4;
        }

        else
        {
          *v21 = *&a4;
          v22 = *(v21 + 8);
          *(v21 + 8) = a5;
          a5 = v22;
        }
      }

      goto LABEL_36;
    }

    while (1)
    {
      v7 = (4 * a2) | 3;
      v8 = (result + 16 * v7);
      if (v8[2] > *v8)
      {
        v9 = (4 * a2) | 3;
      }

      else
      {
        v9 = v7 + 1;
      }

      if (v8[6] <= v8[4])
      {
        v10 = 3;
      }

      else
      {
        v10 = 2;
      }

      v11 = v10 + v7;
      if (*(16 * v11 + result) > *(16 * v9 + result))
      {
        v11 = v9;
      }

      v12 = result + 16 * v11;
      if (*&a4 <= *v12)
      {
        break;
      }

      v13 = (result + 16 * a2);
      *v13 = *v12;
      v13[1] = *(v12 + 8);
      v14 = (((8 * v11 - 8) & 0xFFFFFFFFFFFFFFF0) + result);
      v15 = *v14;
      if (*&a4 <= *v14)
      {
        v15 = *&a4;
      }

      else
      {
        *v14 = *&a4;
        v16 = *(v14 + 1);
        *(v14 + 1) = a5;
        a5 = v16;
        *&a4 = v15;
      }

      a2 = v11;
      if (v11 >= v6)
      {
        goto LABEL_18;
      }
    }
  }

  v15 = *&a4;
  v11 = a2;
LABEL_18:
  a2 = v11;
  *&a4 = v15;
  if (a3 >= 2)
  {
    goto LABEL_19;
  }

LABEL_36:
  v23 = (result + 16 * v11);
  *v23 = v15;
  *(v23 + 1) = a5;
  return result;
}

uint64_t sub_100055B1C(uint64_t result, int64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 >= 7)
  {
    v6 = (a3 - 3) >> 2;
    if (v6 <= a2)
    {
LABEL_19:
      if (a2 > ((a3 - 2) >> 1))
      {
        goto LABEL_34;
      }

      v11 = (2 * a2) | 1;
      if (a3 != 2 && a2 <= ((a3 - 3) >> 1))
      {
        v17 = 2 * a2 + 2;
        if (a3 >= 4 && a2 <= ((a3 - 4) >> 2))
        {
          v18 = (2 * v11) | 1;
          if (a3 == 4 || a2 > ((a3 - 5) >> 2))
          {
            v11 = (2 * v11) | 1;
          }

          else
          {
            v24 = 2 * v11;
            v25 = (result + 16 * v18);
            v26 = *v25;
            v27 = v25[2];
            v11 = v24 + 2;
            if (v26 > v27)
            {
              v11 = v18;
            }

            if (a3 >= 6)
            {
              v28 = v24 + 3;
              if (a2 <= ((a3 - 6) >> 2))
              {
                v17 = v28;
              }
            }
          }
        }

        if (*(16 * v11 + result) <= *(16 * v17 + result))
        {
          v11 = v17;
        }
      }

      v19 = (result + 16 * v11);
      if (*v19 <= *&a4)
      {
LABEL_34:
        v15 = *&a4;
        v11 = a2;
      }

      else
      {
        v20 = (result + 16 * a2);
        *v20 = *v19;
        v20[1] = v19[1];
        if (v11 < 3 || a2 > ((v11 - 3) >> 2) || (v21 = ((8 * v11 - 8) & 0xFFFFFFFFFFFFFFF0) + result, v15 = *v21, *v21 <= *&a4))
        {
          v15 = *&a4;
        }

        else
        {
          *v21 = *&a4;
          v22 = *(v21 + 8);
          *(v21 + 8) = a5;
          a5 = v22;
        }
      }

      goto LABEL_36;
    }

    while (1)
    {
      v7 = (4 * a2) | 3;
      v8 = (result + 16 * v7);
      if (*v8 > v8[2])
      {
        v9 = (4 * a2) | 3;
      }

      else
      {
        v9 = v7 + 1;
      }

      if (v8[4] <= v8[6])
      {
        v10 = 3;
      }

      else
      {
        v10 = 2;
      }

      v11 = v10 + v7;
      if (*(16 * v9 + result) > *(16 * v11 + result))
      {
        v11 = v9;
      }

      v12 = result + 16 * v11;
      if (*v12 <= *&a4)
      {
        break;
      }

      v13 = (result + 16 * a2);
      *v13 = *v12;
      v13[1] = *(v12 + 8);
      v14 = (((8 * v11 - 8) & 0xFFFFFFFFFFFFFFF0) + result);
      v15 = *v14;
      if (*v14 <= *&a4)
      {
        v15 = *&a4;
      }

      else
      {
        *v14 = *&a4;
        v16 = *(v14 + 1);
        *(v14 + 1) = a5;
        a5 = v16;
        *&a4 = v15;
      }

      a2 = v11;
      if (v11 >= v6)
      {
        goto LABEL_18;
      }
    }
  }

  v15 = *&a4;
  v11 = a2;
LABEL_18:
  a2 = v11;
  *&a4 = v15;
  if (a3 >= 2)
  {
    goto LABEL_19;
  }

LABEL_36:
  v23 = (result + 16 * v11);
  *v23 = v15;
  *(v23 + 1) = a5;
  return result;
}

void *sub_100055D30(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 8);
  v4 = (v3 - result) >> 4;
  if (v4 >= 2)
  {
    v5 = *(v3 - 16);
    v6 = *(v3 - 8);
    *(v3 - 16) = *result;
    *(v3 - 8) = result[1];
    result = sub_100055908(result, 0, v4 - 1, v5, v6);
    v3 = *(a1 + 8);
  }

  *(a1 + 8) = v3 - 16;
  return result;
}

__n128 sub_100055D94(__n128 *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = a1;
    a1 = (a1 + 24 * v3 + 24);
    v5 = 2 * v3;
    v3 = (2 * v3) | 1;
    v6 = v5 + 2;
    if (v6 < a3)
    {
      v7 = a1[1].n128_f64[1];
      if (a1->n128_f64[0] > v7 || a1->n128_f64[0] == v7 && a1->n128_u64[1] > a1[2].n128_u64[0])
      {
        a1 = (a1 + 24);
        v3 = v6;
      }
    }

    result = *a1;
    v4[1].n128_u64[0] = a1[1].n128_u64[0];
    *v4 = result;
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

void *sub_100055E18(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    a1[6] = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_100055ED0(uint64_t a1, __int128 *a2)
{
  *a1 = off_10041AED8;
  v4 = *a2;
  v5 = a2[1];
  *(a1 + 40) = *(a2 + 4);
  *(a1 + 24) = v5;
  *(a1 + 8) = v4;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  sub_10005618C(a1 + 48, *(a2 + 5), *(a2 + 6), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 6) - *(a2 + 5)) >> 3));
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  sub_100056254(a1 + 80, *(a2 + 9), *(a2 + 10), (*(a2 + 10) - *(a2 + 9)) >> 4);
  *(a1 + 112) = *(a2 + 104);
  return a1;
}

void sub_100055F84(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 56) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100055FA0(void *a1)
{
  *a1 = off_10041AED8;
  v2 = a1[10];
  if (v2)
  {
    a1[11] = v2;
    operator delete(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_100056000(void *a1)
{
  *a1 = off_10041AED8;
  v2 = a1[10];
  if (v2)
  {
    a1[11] = v2;
    operator delete(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
    operator delete(v3);
  }

  operator delete();
}

BOOL sub_10005610C(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  if (!v4)
  {
    sub_100056AB0();
  }

  return *(a1 + 112) == v4[14];
}

uint64_t sub_10005618C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100056208(result, a4);
  }

  return result;
}

void sub_1000561EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100056208(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_1000557A8(a1, a2);
  }

  sub_10000CD24();
}

uint64_t sub_100056254(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1000562C8(result, a4);
  }

  return result;
}

void sub_1000562AC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000562C8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_1000558C0(a1, a2);
  }

  sub_10000CD24();
}

uint64_t sub_100056304(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "scoped_ptr.hpp", 105, "px != 0");
  }

  return result;
}

uint64_t sub_100056348(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "scoped_ptr.hpp", 99, "px != 0");
  }

  return result;
}

void sub_1000563FC()
{
  if (__cxa_guard_acquire(&qword_100457D88))
  {
    sub_10005638C();

    __cxa_guard_release(&qword_100457D88);
  }
}

void sub_1000565FC()
{
  if (__cxa_guard_acquire(&qword_100457D88))
  {
    sub_10005638C();
    __cxa_guard_release(&qword_100457D88);
  }
}

void sub_100056630()
{
  if (__cxa_guard_acquire(&qword_100457D98))
  {
    sub_1000563A8();
    __cxa_guard_release(&qword_100457D98);
  }
}

void CLKappaDeescalatorWaterProxy::CLKappaDeescalatorWaterProxy(CLKappaDeescalatorWaterProxy *this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 36) = 1;
  *(this + 10) = 0;
  *(this + 44) = 0;
  *this = &off_10041AF48;
  *(this + 96) = 0;
  *(this + 25) = 0;
  *(this + 52) = 0;
  *(this + 71) = 5;
  strcpy(this + 48, "de-WP");
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 36) = 1;
  *(this + 10) = 0;
  *(this + 44) = 0;
  *this = &off_10041AF48;
  *(this + 96) = 0;
  *(this + 25) = 0;
  *(this + 52) = 0;
  *(this + 71) = 5;
  strcpy(this + 48, "de-WP");
}

uint64_t CLKappaDeescalatorWaterProxy::setConfig(uint64_t result, uint64_t a2)
{
  v2 = *(result + 96);
  v3 = *(a2 + 16);
  *(result + 72) = *a2;
  *(result + 88) = v3;
  if ((v2 & 1) == 0)
  {
    *(result + 96) = 1;
  }

  return result;
}

void CLKappaDeescalatorWaterProxy::resetConfiguration(CLKappaDeescalatorWaterProxy *this)
{
  v13 = [CSPersistentConfiguration configBaseKey:"DeescalatorWPConfig" forFeatureMode:*(this + 36)];
  v2 = +[CSPersistentConfiguration sharedConfiguration];
  v3 = [v2 BOOLThreshold:&CLKappaDeescalatorWaterProxy::kConfigurationDefaults forKey:v13];
  [v2 floatThreshold:&unk_10037FD64 forKey:v13];
  v5 = v4;
  [v2 floatThreshold:&unk_10037FD74 forKey:v13];
  v7 = v6;
  v8 = [v2 BOOLThreshold:&unk_10037FD84 forKey:v13];
  v9 = [v2 BOOLThreshold:&unk_10037FD94 forKey:v13];
  v10 = [v2 intThreshold:&unk_10037FDA4 forKey:v13];
  [v2 floatThreshold:&unk_10037FDB4 forKey:v13];
  v11 = *(this + 96);
  *(this + 72) = v3;
  *(this + 19) = v5;
  *(this + 20) = v7;
  *(this + 84) = v8;
  *(this + 85) = v9;
  *(this + 22) = v10;
  *(this + 23) = v12;
  if ((v11 & 1) == 0)
  {
    *(this + 96) = 1;
  }

  *(this + 44) = CLKappaDeescalator::shouldForceNoop(this, "ForceWaterProxy");
  *(this + 10) = CLKappaDeescalator::shouldForceDeescalate(this, "ForceWaterProxy");
}

double CLKappaDeescalatorWaterProxy::log(CLKappaDeescalatorWaterProxy *this, uint64_t a2)
{
  if ((*(this + 96) & 1) == 0)
  {
    sub_100005BF0();
  }

  if (qword_1004567F8 != -1)
  {
    sub_10005773C();
  }

  v4 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(this + 6);
    v7 = *(this + 36);
    v8 = *(this + 72);
    v9 = *(this + 19);
    v10 = *(this + 20);
    v11 = *(this + 84);
    v12 = *(this + 85);
    v13 = *(this + 22);
    v14 = *(this + 23);
    v15 = 134351360;
    v16 = a2;
    v17 = 1026;
    v18 = v6;
    v19 = 1026;
    v20 = v7;
    v21 = 1026;
    v22 = v8;
    v23 = 2050;
    v24 = v9;
    v25 = 2050;
    v26 = v10;
    v27 = 1026;
    v28 = v11;
    v29 = 1026;
    v30 = v12;
    v31 = 1026;
    v32 = v13;
    v33 = 2050;
    v34 = v14;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[de-WP] summary,A,%{public}llu,B,%{public}u,mode,%{public}u,config-1,%{public}u,config-2,%{public}f,config-3,%{public}f,config-4,%{public}u,config-5,%{public}u,config-6,%{public}d,config-7,%{public}f", &v15, 0x4Eu);
  }

  return result;
}

id sub_100056EBC()
{
  if (qword_1004567F8 != -1)
  {
    sub_10005773C();
  }

  v1 = qword_100456800;

  return v1;
}

void CLKappaDeescalatorWaterProxy::updateWithCurrentLocation(CLKappaDeescalatorWaterProxy *this, const CSSPUGps_Struct *a2)
{
  demNumContiguousFlatPoints = a2->demNumContiguousFlatPoints;
  if (demNumContiguousFlatPoints < 0)
  {
    if (qword_1004567F8 != -1)
    {
      sub_10005773C();
    }

    v6 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_INFO))
    {
      v7 = a2->demNumContiguousFlatPoints;
      v16 = 67109120;
      LODWORD(v17) = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[de-WP] rejecting DEM error = %d", &v16, 8u);
    }
  }

  else if ((*(this + 105) & 1) == 0)
  {
    if ((*(this + 96) & 1) == 0)
    {
      sub_100005BF0();
    }

    if (a2->horizontalAccuracy < *(this + 19))
    {
      if (demNumContiguousFlatPoints <= *(this + 22) || a2->demConfidence <= *(this + 23))
      {
        v5 = 256;
      }

      else
      {
        v5 = 257;
      }

      *(this + 52) = v5;
      if (qword_1004567F8 != -1)
      {
        sub_10005773C();
      }

      v8 = qword_100456800;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        if (*(this + 96) != 1 || (*(this + 105) & 1) == 0)
        {
          sub_100005BF0();
        }

        horizontalAccuracy = a2->horizontalAccuracy;
        demConfidence = a2->demConfidence;
        v11 = *(this + 22);
        v12 = a2->demNumContiguousFlatPoints;
        v13 = *(this + 19);
        v14 = *(this + 23);
        v15 = *(this + 104);
        v16 = 134219520;
        v17 = horizontalAccuracy;
        v18 = 2048;
        v19 = v13;
        v20 = 1024;
        v21 = v12;
        v22 = 1024;
        v23 = v11;
        v24 = 2048;
        v25 = demConfidence;
        v26 = 2048;
        v27 = v14;
        v28 = 1024;
        v29 = v15;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[de-WP] gps %f/%f flat %d/%d conf %f/%f %df", &v16, 0x3Cu);
      }
    }
  }
}