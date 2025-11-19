float CLKappaFeaturesAlgRemoteAudio::computeAOPTimeDelta(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a2 - a3;
  v8 = *a1 - (a2 - a3);
  v9 = (v8 - a4);
  if (qword_1004567F8 != -1)
  {
    sub_1002C1DDC();
  }

  v10 = qword_100456800;
  v11 = v9 / 1000000.0;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
  {
    v12 = a1[11];
    v13 = *a1;
    v15 = 134219520;
    v16 = a3;
    v17 = 2048;
    v18 = v12;
    v19 = 2048;
    v20 = v7;
    v21 = 2048;
    v22 = v8;
    v23 = 2048;
    v24 = v11;
    v25 = 2048;
    v26 = v13;
    v27 = 2048;
    v28 = a4;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "[RA] trigger %llu companion trigger %llu delta-aop %llu remote-adj %llu deltaTime %f remote aop epoch %llu our ts %llu", &v15, 0x48u);
  }

  return v11;
}

id CLKappaFeaturesAlgRemoteAudio::sortedRemoteAudio(void *a1)
{
  v1 = [a1 sortedArrayUsingComparator:&stru_10042D708];
  v2 = [[NSMutableArray alloc] initWithArray:v1];

  return v2;
}

int64_t sub_1002C0DE8(id a1, id a2, id a3)
{
  v4 = a2;
  v5 = a3;
  v13[2] = 0;
  v13[3] = 0;
  v14 = 0;
  v12[1] = 0;
  v13[0] = 0;
  *(v13 + 6) = 0;
  v10[2] = 0;
  v10[3] = 0;
  v11 = 0;
  v9[1] = 0;
  v10[0] = 0;
  *(v10 + 6) = 0;
  [v4 getBytes:v12 length:96];
  [v5 getBytes:v9 length:96];
  if (v12[0] >= v9[0])
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (v12[0] > v9[0])
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

void CLKappaFeaturesAlgRemoteAudio::logAudioInput(float *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (qword_1004567F8 != -1)
    {
      sub_1002C1DDC();
    }

    v4 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
    {
      v5 = *a1;
      v7 = *(a1 + 10);
      v6 = *(a1 + 11);
      v8 = a1[2];
      v9 = a1[3];
      v10 = a1[4];
      v11 = a1[5];
      v12 = *(a1 + 24);
      v13 = *(a1 + 25);
      v14 = *(a1 + 26);
      v15 = *(a1 + 27);
      v16 = *(a1 + 29);
      v17 = a1[8];
      v18 = a1[9];
      v19 = a1[10];
      v20 = *(a1 + 44);
      v21 = *(a1 + 45);
      v22 = *(a1 + 46);
      v23 = *(a1 + 47);
      v24 = *(a1 + 49);
      v25 = 138417410;
      v26 = v3;
      v27 = 2048;
      v28 = v5;
      v29 = 2048;
      v30 = v6;
      v31 = 2048;
      v32 = v7;
      v33 = 2048;
      v34 = v8;
      v35 = 2048;
      v36 = v9;
      v37 = 2048;
      v38 = v10;
      v39 = 2048;
      v40 = v11;
      v41 = 1024;
      v42 = v12;
      v43 = 1024;
      v44 = v13;
      v45 = 1024;
      v46 = v14;
      v47 = 1024;
      v48 = v15;
      v49 = 1024;
      v50 = v16;
      v51 = 2048;
      v52 = v17;
      v53 = 2048;
      v54 = v18;
      v55 = 2048;
      v56 = v19;
      v57 = 1024;
      v58 = v20;
      v59 = 1024;
      v60 = v21;
      v61 = 1024;
      v62 = v22;
      v63 = 1024;
      v64 = v23;
      v65 = 1024;
      v66 = v24;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%@ audio result %llu %llu %llu %f %f %f %f %d %d %d %d %d %f %f %f %d %d %d %d %d", &v25, 0xACu);
    }
  }
}

void CLKappaFeaturesAlgRemoteAudio::feedRemoteAudio(uint64_t a1, uint64_t a2)
{
  Current = CFAbsoluteTimeGetCurrent();
  if (Current - *(a2 + 64) <= 60.0)
  {
    CLKappaFeaturesAlgRemoteAudio::logAudioInput(a2, @"feed [RA]");
    v7 = *(*(a1 + 32) + 88);
    v8 = [NSData dataWithBytes:a2 length:96];
    [v7 addObject:v8];

    if ([v7 count] >= 0x15)
    {
      if (qword_1004567F8 != -1)
      {
        sub_1002C1DDC();
      }

      v9 = qword_100456800;
      if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_FAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "[RA] maximum buffer size reached!", &buf, 2u);
      }
    }

    v10 = CLKappaFeaturesAlgRemoteAudio::sortedRemoteAudio(v7);

    *(a1 + 64) = *(a2 + 88);
    *(a1 + 72) = 1;
    if (qword_1004567F8 != -1)
    {
      sub_1002C1DF0();
    }

    v11 = qword_100456800;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      if ((*(a1 + 72) & 1) == 0)
      {
        sub_100005BF0();
      }

      v12 = *(a1 + 64);
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "[RA] firstPhoneTriggerAOPTime %llu", &buf, 0xCu);
    }

    for (i = 0; [v10 count] > i; ++i)
    {
      v23[2] = 0;
      v23[3] = 0;
      v24 = 0;
      *(&buf + 1) = 0;
      v23[0] = 0;
      *(v23 + 6) = 0;
      v14 = [v10 objectAtIndexedSubscript:i];
      [v14 getBytes:&buf length:96];
      if (qword_1004567F8 != -1)
      {
        sub_1002C1DF0();
      }

      v15 = qword_100456800;
      if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
      {
        *v18 = 67109376;
        v19 = i;
        v20 = 2048;
        v21 = buf;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "i %d ts %llu", v18, 0x12u);
      }
    }

    v16 = *(a1 + 32);
    v17 = *(v16 + 88);
    *(v16 + 88) = v10;
  }

  else
  {
    if (qword_1004567F8 != -1)
    {
      sub_1002C1DDC();
    }

    v5 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEFAULT))
    {
      v6 = Current - *(a2 + 64);
      LODWORD(buf) = 134349056;
      *(&buf + 4) = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[RA] refusing to feed audio sample with age %{public}f", &buf, 0xCu);
    }
  }
}

void CLKappaFeaturesAlgRemoteAudio::setFirstWatchAOPTriggerTimestamp(CLKappaFeaturesAlgRemoteAudio *this, uint64_t a2)
{
  *(this + 10) = a2;
  *(this + 88) = 1;
  if (qword_1004567F8 != -1)
  {
    sub_1002C1DDC();
  }

  v3 = qword_100456800;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    if ((*(this + 88) & 1) == 0)
    {
      sub_100005BF0();
    }

    v4 = *(this + 10);
    v5 = 134217984;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[RA] fFirstWatchTriggerAOPTime %llu", &v5, 0xCu);
  }
}

void sub_1002C1518(CLKappaAlgBlock *this)
{
  *this = off_10042D150;
  *(this + 12) = off_10042D410;
  *(this + 13) = off_10042D558;
  *(this + *(*this - 176)) = off_10042D648;
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

  CLKappaAlgBlock::~CLKappaAlgBlock(this, off_10042D6A0);
}

void sub_1002C1614(CLKappaAlgBlock *this)
{
  *this = off_10042D150;
  *(this + 12) = off_10042D410;
  *(this + 13) = off_10042D558;
  *(this + 14) = off_10042D648;
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

  CLKappaAlgBlock::~CLKappaAlgBlock(this, off_10042D6A0);

  operator delete();
}

void sub_1002C16FC(uint64_t a1, uint64_t *a2)
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

void sub_1002C1728(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_10042D150;
  *(v1 + 12) = off_10042D410;
  *(v1 + 13) = off_10042D558;
  *(v1 + 14) = off_10042D648;
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

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_10042D6A0);
}

void sub_1002C180C(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_10042D150;
  *(v1 + 12) = off_10042D410;
  *(v1 + 13) = off_10042D558;
  *(v1 + 14) = off_10042D648;
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

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_10042D6A0);

  operator delete();
}

void sub_1002C1904(void *a1, uint64_t *a2)
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

void sub_1002C1944(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_10042D150;
  *(v1 + 12) = off_10042D410;
  *(v1 + 13) = off_10042D558;
  *(v1 + 14) = off_10042D648;
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

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_10042D6A0);
}

void sub_1002C1A28(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_10042D150;
  *(v1 + 12) = off_10042D410;
  *(v1 + 13) = off_10042D558;
  *(v1 + 14) = off_10042D648;
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

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_10042D6A0);

  operator delete();
}

void sub_1002C1B20(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_10042D150;
  *(v1 + 12) = off_10042D410;
  *(v1 + 13) = off_10042D558;
  *(v1 + 14) = off_10042D648;
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

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_10042D6A0);
}

void sub_1002C1C04(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_10042D150;
  *(v1 + 12) = off_10042D410;
  *(v1 + 13) = off_10042D558;
  *(v1 + 14) = off_10042D648;
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

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_10042D6A0);

  operator delete();
}

void sub_1002C1CFC(id a1)
{
  qword_100456800 = os_log_create("com.apple.anomalydetectiond", "Alg");

  _objc_release_x1();
}

void sub_1002C1D60(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10042DD68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void CLKappaDeescalatorSkiLift::CLKappaDeescalatorSkiLift(CLKappaDeescalatorSkiLift *this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 36) = 1;
  *(this + 10) = 0;
  *(this + 44) = 0;
  *this = &off_10042DDB8;
  *(this + 9) = 0;
  *(this + 71) = 10;
  strcpy(this + 48, "de-SkiLift");
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 36) = 1;
  *(this + 10) = 0;
  *(this + 44) = 0;
  *this = &off_10042DDB8;
  *(this + 9) = 0;
  *(this + 71) = 10;
  strcpy(this + 48, "de-SkiLift");
}

unint64_t CLKappaDeescalatorSkiLift::resetConfiguration(CLKappaDeescalatorSkiLift *this)
{
  *(this + 44) = CLKappaDeescalator::shouldForceNoop(this, "ForceSkiLift");
  result = CLKappaDeescalator::shouldForceDeescalate(this, "ForceSkiLift");
  *(this + 10) = result;
  return result;
}

void CLKappaDeescalatorSkiLift::log(CLKappaDeescalatorSkiLift *this, uint64_t a2)
{
  v4 = *(this + 9);
  if (qword_1004567F8 != -1)
  {
    sub_1002C24CC();
  }

  v5 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(this + 6);
    v7 = *(this + 36);
    v8 = 134350080;
    v9 = a2;
    v10 = 1026;
    v11 = v6;
    v12 = 1026;
    v13 = v7;
    v14 = 1026;
    v15 = v4;
    v16 = 1026;
    v17 = HIDWORD(v4);
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[de-SkiLift] summary,A,%{public}llu,B,%{public}u,mode,%{public}u,debug-1a,%{public}u,debug-1b,%{public}u", &v8, 0x24u);
  }
}

void CLKappaDeescalatorSkiLift::updateWithTrigger(CLKappaDeescalatorSkiLift *this, const TriggerSample *a2)
{
  if (qword_1004567F8 != -1)
  {
    sub_1002C24CC();
  }

  v4 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
  {
    path = a2->path;
    v6 = BYTE2(a2[1].rmsSN);
    v11 = 67109376;
    v12 = path;
    v13 = 1024;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[de-SkiLift] feedTrigger path %u martyPath %u", &v11, 0xEu);
  }

  if (*(this + 36) == 1 && (a2->path & 0x20) != 0)
  {
    ++*(this + 18);
    if (qword_1004567F8 != -1)
    {
      sub_1002C24E0();
    }

    v7 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(this + 18);
      v11 = 67109120;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[de-SkiLift] feedTrigger found ski lift trigger, count:%d", &v11, 8u);
    }
  }

  if (a2->btHint == 1)
  {
    ++*(this + 19);
    if (qword_1004567F8 != -1)
    {
      sub_1002C24E0();
    }

    v9 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
    {
      v10 = *(this + 19);
      v11 = 67109120;
      v12 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[de-SkiLift] feedTrigger found true btHint in trigger, count:%d", &v11, 8u);
    }
  }
}

uint64_t CLKappaDeescalatorSkiLift::onEvaluateBetweenMinAndMaxHoldDuration(CLKappaDeescalatorSkiLift *this)
{
  if (*(this + 19) || !*(this + 18))
  {
    return 0;
  }

  if (qword_1004567F8 != -1)
  {
    sub_1002C24CC();
  }

  v3 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
  {
    v4 = (this + 8);
    if (!*(this + 16))
    {
      v4 = &unk_1003BF128;
    }

    v5 = *v4;
    v6 = *(this + 7) != 0;
    v7 = *(this + 18);
    v8 = *(this + 19);
    v9 = 134218752;
    v10 = v5;
    v11 = 1024;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 1024;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[de-SkiLift] deescalated, crashTimestamp:%llu, numDeescalationSkiLift:%d, numTriggersWithRecentSkiLiftDetected:%d, numTriggersWithTrueBtHint:%d", &v9, 0x1Eu);
  }

  return 4;
}

uint64_t CLKappaDeescalatorSkiLift::onEvaluateAtBoundary(CLKappaDeescalatorSkiLift *this)
{
  if (*(this + 19) || !*(this + 18))
  {
    return 0;
  }

  if (qword_1004567F8 != -1)
  {
    sub_1002C24CC();
  }

  v3 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
  {
    v4 = (this + 8);
    if (!*(this + 16))
    {
      v4 = &unk_1003BF128;
    }

    v5 = *v4;
    v6 = *(this + 7) != 0;
    v7 = *(this + 18);
    v8 = *(this + 19);
    v9 = 134218752;
    v10 = v5;
    v11 = 1024;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 1024;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[de-SkiLift] deescalated at boundary, crashTimestamp:%llu, numDeescalationSkiLift:%d, numTriggersWithRecentSkiLiftDetected:%d, numTriggersWithTrueBtHint:%d", &v9, 0x1Eu);
  }

  return 4;
}

void sub_1002C2450(void **a1)
{
  CLKappaDeescalator::~CLKappaDeescalator(a1);

  operator delete();
}

void sub_1002C2488(id a1)
{
  qword_100456800 = os_log_create("com.apple.anomalydetectiond", "Alg");

  _objc_release_x1();
}

void CLKappaDeescalatorSkiing::CLKappaDeescalatorSkiing(CLKappaDeescalatorSkiing *this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 36) = 1;
  *(this + 10) = 0;
  *(this + 44) = 0;
  *this = off_10042DE68;
  *(this + 80) = 0;
  *(this + 84) = 0xA00000000;
  *(this + 13) = 0xA00000000;
  *(this + 76) = 0;
  *(this + 71) = 6;
  strcpy(this + 48, "de-Ski");
}

uint64_t CLKappaDeescalatorSkiing::setConfig(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if ((*(result + 80) & 1) == 0)
  {
    *(result + 80) = 1;
  }

  *(result + 72) = v2;
  return result;
}

void CLKappaDeescalatorSkiing::resetConfiguration(CLKappaDeescalatorSkiing *this)
{
  v6 = [CSPersistentConfiguration configBaseKey:"DeescalatorSkiConfig" forFeatureMode:*(this + 36)];
  v2 = +[CSPersistentConfiguration sharedConfiguration];
  v3 = [v2 intThreshold:&CLKappaDeescalatorSkiing::kConfigurationDefaults forKey:v6];
  v4 = [v2 intThreshold:&unk_1003BF158 forKey:v6];
  [v2 floatThreshold:&unk_1003BF168 forKey:v6];
  if ((*(this + 80) & 1) == 0)
  {
    *(this + 80) = 1;
  }

  *(this + 18) = v3 | (v4 << 8);
  *(this + 19) = v5;
  *(this + 44) = CLKappaDeescalator::shouldForceNoop(this, "ForceSkiing");
  *(this + 10) = CLKappaDeescalator::shouldForceDeescalate(this, "ForceSkiing");
}

double CLKappaDeescalatorSkiing::log(CLKappaDeescalatorSkiing *this, uint64_t a2)
{
  if ((*(this + 80) & 1) == 0)
  {
    sub_100005BF0();
  }

  v4 = *(this + 152);
  v5 = *(this + 153);
  if (qword_1004567F8 != -1)
  {
    sub_1002C2AEC();
  }

  v6 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(this + 6);
    v9 = *(this + 36);
    v10 = *(this + 72);
    v11 = *(this + 73);
    v12 = *(this + 19);
    v13 = 134350848;
    v14 = a2;
    v15 = 1026;
    v16 = v8;
    v17 = 1026;
    v18 = v9;
    v19 = 1026;
    v20 = v10;
    v21 = 1026;
    v22 = v11;
    v23 = 2050;
    v24 = v12;
    v25 = 1026;
    v26 = v4;
    v27 = 1026;
    v28 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[de-Ski] summary,A,%{public}llu,B,%{public}u,mode,%{public}u,config-1,%{public}u,config-2,%{public}u,config-3,%{public}f,debug-1a,%{public}d,debug-1b,%{public}d", &v13, 0x3Au);
  }

  return result;
}

uint64_t CLKappaDeescalatorSkiing::updateWithAudioTPQ(uint64_t this, char a2)
{
  v2 = *(this + 86);
  v3 = *(this + 88);
  v4 = *(this + 84);
  if (v4 + v2 >= v3)
  {
    v5 = *(this + 88);
  }

  else
  {
    v5 = 0;
  }

  *(this + v4 + v2 - v5 + 92) = a2;
  if (v3 <= v2)
  {
    if (v4 + 1 < v3)
    {
      LOWORD(v3) = 0;
    }

    *(this + 84) = v4 + 1 - v3;
  }

  else
  {
    *(this + 86) = v2 + 1;
  }

  return this;
}

uint64_t CLKappaDeescalatorSkiing::updateWithPressureMedian(uint64_t this, float a2)
{
  v2 = *(this + 106);
  v3 = *(this + 108);
  v4 = *(this + 104);
  if (v4 + v2 >= v3)
  {
    v5 = *(this + 108);
  }

  else
  {
    v5 = 0;
  }

  *(this + 4 * (v4 + v2 - v5) + 112) = a2;
  if (v3 <= v2)
  {
    if (v4 + 1 < v3)
    {
      LOWORD(v3) = 0;
    }

    *(this + 104) = v4 + 1 - v3;
  }

  else
  {
    *(this + 106) = v2 + 1;
  }

  return this;
}

uint64_t CLKappaDeescalatorSkiing::getNumAudioSkiing(unsigned __int16 *a1)
{
  if (a1[1])
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v3 += *sub_10002E0A8(a1, v2++);
    }

    while (v2 < a1[1]);
  }

  else
  {
    return 0;
  }

  return v3;
}

uint64_t CLKappaDeescalatorSkiing::getNumBaroIncreasesSkiing(unsigned __int16 *a1, float a2)
{
  if (a1[1] == 1)
  {
    return 0;
  }

  else
  {
    v5 = 0;
    v2 = 0;
    do
    {
      v6 = v5 + 1;
      v7 = *sub_1000404B8(a1, v5 + 1);
      if ((v7 - *sub_1000404B8(a1, v5)) > a2)
      {
        ++v2;
      }

      ++v5;
    }

    while (a1[1] - 1 > v6);
  }

  return v2;
}

uint64_t CLKappaDeescalatorSkiing::onEvaluateBetweenMinAndMaxHoldDuration(CLKappaDeescalatorSkiing *this)
{
  *(this + 152) = CLKappaDeescalatorSkiing::getNumAudioSkiing(this + 42);
  if ((*(this + 80) & 1) == 0)
  {
    sub_100005BF0();
  }

  v2 = *(this + 72);
  v3 = *(this + 73);
  NumBaroIncreasesSkiing = CLKappaDeescalatorSkiing::getNumBaroIncreasesSkiing(this + 52, *(this + 19));
  *(this + 153) = NumBaroIncreasesSkiing;
  if (NumBaroIncreasesSkiing >= v3 && *(this + 152) >= v2)
  {
    return 4;
  }

  else
  {
    return 0;
  }
}

uint64_t CLKappaDeescalatorSkiing::onPreviousEpochMadeDecision(uint64_t this)
{
  *(this + 84) = 0;
  *(this + 104) = 0;
  return this;
}

void sub_1002C2A54(void **a1)
{
  *a1 = off_10042DE68;
  CLKappaDeescalator::~CLKappaDeescalator(a1);

  operator delete();
}

void sub_1002C2AA8(id a1)
{
  qword_100456800 = os_log_create("com.apple.anomalydetectiond", "Alg");

  _objc_release_x1();
}

double CLKappaEstimatesAlgRolloverCrashResult::reset(CLKappaEstimatesAlgRolloverCrashResult *this)
{
  *(this + 8) = 0;
  *(this + 3) = 0;
  *(this + 148) = 0;
  *(this + 38) = 0;
  result = 0.0;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  return result;
}

void CLKappaEstimatesAlgRolloverCrashResult::log(CLKappaEstimatesAlgRolloverCrashResult *this)
{
  if (qword_1004567F8 != -1)
  {
    sub_1002C6160();
  }

  v2 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 78);
    v4 = *(this + 79);
    v5 = *(this + 81);
    v6 = *(this + 82);
    v7 = *(this + 86);
    v70 = 134371072;
    v8 = *(this + 87);
    v75 = v3;
    v9 = *(this + 88);
    v77 = v4;
    v10 = *(this + 96);
    v83 = v5;
    v11 = *(this + 97);
    v85 = v6;
    v91 = v7;
    v12 = *(this + 4);
    v13 = *(this + 5);
    v93 = v8;
    v95 = v9;
    v14 = *(this + 6);
    v15 = *(this + 7);
    v105 = v10;
    v111 = v11;
    LODWORD(v6) = *(this + 9);
    v16 = *(this + 8);
    v113 = v12;
    v115 = v13;
    LODWORD(v12) = *(this + 12);
    v17 = *(this + 13);
    v117 = v14;
    v119 = v15;
    v18 = *(this + 14);
    v19 = *(this + 15);
    v121 = v16;
    v123 = v17;
    v20 = *(this + 16);
    v21 = *(this + 17);
    v125 = v18;
    v127 = v19;
    v22 = *(this + 33);
    v23 = *(this + 34);
    v129 = v20;
    v131 = v21;
    v24 = *(this + 35);
    v25 = *(this + 36);
    v133 = v22;
    v135 = v23;
    v26 = *(this + 37);
    v27 = *(this + 38);
    v137 = v24;
    v139 = v25;
    v28 = *(this + 39);
    v29 = *(this + 40);
    v141 = v26;
    v143 = v27;
    v30 = *(this + 41);
    v31 = *(this + 42);
    v145 = v28;
    v147 = v29;
    v32 = *(this + 43);
    v33 = *(this + 44);
    v149 = v30;
    v151 = v31;
    v34 = *(this + 31);
    v35 = *(this + 32);
    v153 = v32;
    v155 = v33;
    v36 = *(this + 22);
    v37 = *(this + 23);
    v157 = v34;
    v159 = v35;
    v38 = *(this + 24);
    v39 = *(this + 25);
    v161 = v36;
    v163 = v37;
    LODWORD(v36) = *(this + 27);
    v40 = *(this + 26);
    v165 = v38;
    v167 = v39;
    v41 = *(this + 45);
    v42 = *(this + 46);
    v169 = v40;
    v171 = v41;
    v43 = *(this + 47);
    v44 = *(this + 48);
    v173 = v42;
    v175 = v43;
    v45 = *(this + 49);
    v46 = *(this + 50);
    v177 = v44;
    v179 = v45;
    v47 = *(this + 51);
    v48 = *(this + 52);
    v181 = v46;
    v183 = v47;
    LODWORD(v47) = *(this + 57);
    v49 = *(this + 58);
    v185 = v48;
    v187 = v49;
    v50 = *(this + 60);
    v189 = *(this + 59);
    v191 = v50;
    v51 = *(this + 62);
    v193 = *(this + 61);
    v195 = v51;
    v52 = *(this + 64);
    v197 = *(this + 63);
    v53 = *(this + 65);
    v199 = v52;
    v54 = *(this + 71);
    v201 = v53;
    v55 = *(this + 72);
    v203 = v54;
    v56 = *(this + 73);
    v205 = v55;
    v207 = v56;
    LODWORD(v56) = *(this + 11);
    v57 = *(this + 10);
    v209 = *&v6;
    v211 = v57;
    v58 = *(this + 54);
    v213 = *(this + 53);
    v215 = v58;
    LODWORD(v58) = *(this + 19);
    v217 = *(this + 18);
    v219 = *&v58;
    v221 = *(this + 66);
    v223 = *(this + 67);
    v225 = *&v36;
    LODWORD(v36) = *(this + 29);
    v227 = *(this + 28);
    v229 = *&v56;
    v231 = *(this + 55);
    v233 = *(this + 20);
    v235 = *(this + 68);
    v237 = *&v36;
    v239 = *&v12;
    v241 = *&v47;
    v243 = *(this + 70);
    v59 = *(this + 296);
    v60 = *(this + 320);
    v61 = *(this + 321);
    v62 = *(this + 332);
    v63 = *(this + 84);
    v64 = *(this + 368);
    v65 = *(this + 369);
    v66 = *(this + 370);
    v67 = *(this + 297);
    v68 = *(this + 93);
    v69 = *(this + 376);
    v71 = *(this + 38);
    v72 = 1026;
    v73 = v59;
    v74 = 2050;
    v76 = 2050;
    v78 = 1026;
    v79 = v60;
    v80 = 1026;
    v81 = v61;
    v82 = 2050;
    v84 = 2050;
    v86 = 1026;
    v87 = v62;
    v88 = 1026;
    v89 = v63;
    v90 = 2050;
    v92 = 2050;
    v94 = 2050;
    v96 = 1026;
    v97 = v64;
    v98 = 1026;
    v99 = v65;
    v100 = 1026;
    v101 = v66;
    v102 = 1026;
    v103 = v67;
    v104 = 2050;
    v106 = 1026;
    v107 = v68;
    v108 = 1026;
    v109 = v69;
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
    v178 = 2050;
    v180 = 2050;
    v182 = 2050;
    v184 = 2050;
    v186 = 2050;
    v188 = 2050;
    v190 = 2050;
    v192 = 2050;
    v194 = 2050;
    v196 = 2050;
    v198 = 2050;
    v200 = 2050;
    v202 = 2050;
    v204 = 2050;
    v206 = 2050;
    v208 = 2050;
    v210 = 2050;
    v212 = 2050;
    v214 = 2050;
    v216 = 2050;
    v218 = 2050;
    v220 = 2050;
    v222 = 2050;
    v224 = 2050;
    v226 = 2050;
    v228 = 2050;
    v230 = 2050;
    v232 = 2050;
    v234 = 2050;
    v236 = 2050;
    v238 = 2050;
    v240 = 2050;
    v242 = 2050;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[RC] AlgBlock summary,A,%{public}llu,B,%{public}d,C,%{public}f,D,%{public}f,E,%{public}d,F,%{public}d,G,%{public}f,H,%{public}f,I,%{public}d,J,%{public}d,K,%{public}f,L,%{public}f,M,%{public}f,N,%{public}d,O,%{public}d,P,%{public}d,Q,%{public}d,R,%{public}f,S,%{public}d,T,%{public}d,U,%{public}f,config-1,%{public}f,config-2,%{public}f,config-3,%{public}f,config-4,%{public}f,config-5,%{public}f,config-6,%{public}f,config-7,%{public}f,config-8,%{public}f,config-9,%{public}f,config-10,%{public}f,config-11,%{public}f,config-12,%{public}f,config-13,%{public}f,config-14,%{public}f,config-15,%{public}f,config-16,%{public}f,config-17,%{public}f,config-18,%{public}f,config-19,%{public}f,config-20,%{public}f,config-21,%{public}f,config-22,%{public}f,config-23,%{public}f,config-24,%{public}f,config-25,%{public}f,config-26,%{public}f,config-27,%{public}f,config-28,%{public}f,config-29,%{public}f,config-30,%{public}f,config-31,%{public}f,config-32,%{public}f,config-33,%{public}f,config-34,%{public}f,config-35,%{public}f,config-36,%{public}f,config-37,%{public}f,config-38,%{public}f,config-39,%{public}f,config-40,%{public}f,config-41,%{public}f,config-42,%{public}f,config-43,%{public}f,config-44,%{public}f,config-45,%{public}f,config-46,%{public}f,config-47,%{public}f,config-48,%{public}f,config-49,%{public}f,config-50,%{public}f,config-51,%{public}f,config-52,%{public}f,config-53,%{public}f,config-54,%{public}f,config-55,%{public}f,config-56,%{public}f,config-57,%{public}f,config-58,%{public}f,config-59,%{public}f,config-60,%{public}f,config-61,%{public}f,config-62,%{public}f,config-63,%{public}f,config-64,%{public}f,config-65,%{public}f,config-66,%{public}f\n", &v70, 0x33Cu);
  }
}

void CLKappaEstimatesAlgRolloverCrash::CLKappaEstimatesAlgRolloverCrash(CLKappaEstimatesAlgRolloverCrash *this, uint64_t *a2)
{
  CLKappaAlgBlock::CLKappaAlgBlock(this, a2 + 1);
  v4 = *a2;
  *v5 = *a2;
  *(this + *(v4 - 152)) = a2[6];
  *(this + *(*this - 160)) = a2[7];
  *(this + *(*this - 168)) = a2[8];
  *(this + *(*this - 176)) = a2[9];
  *(this + 2) = 0u;
  *(this + 6) = 0x80000000800000;
  *(this + 14) = 0;
  *&v6 = 0x80000000800000;
  *(&v6 + 1) = 0x80000000800000;
  *(this + 60) = v6;
  *(this + 19) = 0x800000;
  *(this + 40) = 0;
  *(this + 21) = 0x800000;
  *(this + 88) = 0;
  *(this + 92) = 0xFFFFFFFF00800000;
  *(this + 100) = 0;
  *(this + 13) = 0x80000000000000;
  *(this + 14) = 0xFFFFFFFF00000000;
  sub_1002C5F5C();
}

void sub_1002C33B8(_Unwind_Exception *a1)
{
  v4 = *(v1 + 5);
  if (v4)
  {
    sub_100009A48(v4);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, (v2 + 8));
  _Unwind_Resume(a1);
}

char **sub_1002C33E0@<X0>(uint64_t a1@<X0>, char ***a2@<X8>)
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

void CLKappaEstimatesAlgRolloverCrash::CLKappaEstimatesAlgRolloverCrash(CLKappaEstimatesAlgRolloverCrash *this)
{
  *this = off_100411FE8;
  *(this + 15) = off_100412090;
  *(this + 16) = off_100412158;
  *(this + 17) = off_100412210;
  CLKappaAlgBlock::CLKappaAlgBlock(this, off_10042E508);
  *v1 = off_10042DFB8;
  *(v1 + 120) = off_10042E278;
  *(v1 + 128) = off_10042E3C0;
  *(v1 + 136) = off_10042E4B0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0x80000000800000;
  *(v1 + 56) = 0;
  *&v2 = 0x80000000800000;
  *(&v2 + 1) = 0x80000000800000;
  *(v1 + 60) = v2;
  *(v1 + 76) = 0x800000;
  *(v1 + 80) = 0;
  *(v1 + 84) = 0x800000;
  *(v1 + 88) = 0;
  *(v1 + 92) = 0xFFFFFFFF00800000;
  *(v1 + 100) = 0;
  *(v1 + 104) = 0x80000000000000;
  *(v1 + 112) = 0xFFFFFFFF00000000;
  sub_1002C5F5C();
}

void sub_1002C36A0(_Unwind_Exception *a1)
{
  v3 = *(v1 + 5);
  if (v3)
  {
    sub_100009A48(v3);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_10042E508);
  _Unwind_Resume(a1);
}

void CLKappaEstimatesAlgRolloverCrash::resetConfiguration(CLKappaEstimatesAlgRolloverCrash *this)
{
  v299 = [CSPersistentConfiguration configBaseKey:"FeaturesAlgRolloverCrashConfig" forFeatureMode:*(this + 24)];
  v300[7] = 1176255488;
  v300[16] = 1176255488;
  v300[25] = 1176255488;
  v300[51] = 1176255488;
  v300[64] = 1176255488;
  v2 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v3) = 0.5;
  LODWORD(v4) = 3.0;
  LODWORD(v5) = 1193033728;
  [v2 algorithmThresholdNumber:0 inArrayForKey:v299 withMinValue:v3 maxValue:v5 defaultValue:v4];
  v300[0] = v6;

  v7 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v8) = 1091829760;
  LODWORD(v9) = 0.5;
  LODWORD(v10) = 1193033728;
  [v7 algorithmThresholdNumber:1 inArrayForKey:v299 withMinValue:v9 maxValue:v10 defaultValue:v8];
  v300[1] = v11;

  v12 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v13) = 1120403456;
  LODWORD(v14) = 1145569280;
  LODWORD(v15) = 1128792064;
  [v12 algorithmThresholdNumber:3 inArrayForKey:v299 withMinValue:v13 maxValue:v14 defaultValue:v15];
  v300[3] = v16;

  v17 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v18) = 1120403456;
  LODWORD(v19) = 10.0;
  LODWORD(v20) = 15.0;
  [v17 algorithmThresholdNumber:2 inArrayForKey:v299 withMinValue:v19 maxValue:v18 defaultValue:v20];
  v300[2] = v21;

  v22 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v23) = 5.0;
  LODWORD(v24) = 1008981770;
  LODWORD(v25) = 1022739087;
  [v22 algorithmThresholdNumber:4 inArrayForKey:v299 withMinValue:v24 maxValue:v23 defaultValue:v25];
  v300[4] = v26;

  v27 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v28) = 5.0;
  LODWORD(v29) = -1138501878;
  [v27 algorithmThresholdNumber:63 inArrayForKey:v299 withMinValue:v29 maxValue:v28 defaultValue:0.0];
  v300[8] = v30;

  v31 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v32) = 0.5;
  LODWORD(v33) = 3.0;
  LODWORD(v34) = 1193033728;
  [v31 algorithmThresholdNumber:5 inArrayForKey:v299 withMinValue:v32 maxValue:v34 defaultValue:v33];
  v300[9] = v35;

  v36 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v37) = 2139095039;
  LODWORD(v38) = 0.5;
  LODWORD(v39) = 2139095039;
  [v36 algorithmThresholdNumber:6 inArrayForKey:v299 withMinValue:v38 maxValue:v37 defaultValue:v39];
  v300[10] = v40;

  v41 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v42) = 1120403456;
  LODWORD(v43) = 1145569280;
  LODWORD(v44) = 1133903872;
  [v41 algorithmThresholdNumber:8 inArrayForKey:v299 withMinValue:v42 maxValue:v43 defaultValue:v44];
  v300[12] = v45;

  v46 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v47) = 1120403456;
  LODWORD(v48) = 10.0;
  LODWORD(v49) = 15.0;
  [v46 algorithmThresholdNumber:7 inArrayForKey:v299 withMinValue:v48 maxValue:v47 defaultValue:v49];
  v300[11] = v50;

  v51 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v52) = 5.0;
  LODWORD(v53) = 1008981770;
  LODWORD(v54) = 1022739087;
  [v51 algorithmThresholdNumber:9 inArrayForKey:v299 withMinValue:v53 maxValue:v52 defaultValue:v54];
  v300[13] = v55;

  v56 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v57) = 5.0;
  LODWORD(v58) = -1138501878;
  [v56 algorithmThresholdNumber:63 inArrayForKey:v299 withMinValue:v58 maxValue:v57 defaultValue:0.0];
  v300[17] = v59;

  v60 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v61) = 1120403456;
  LODWORD(v62) = 8.0;
  [v60 algorithmThresholdNumber:22 inArrayForKey:v299 withMinValue:0.0 maxValue:v61 defaultValue:v62];
  v300[27] = v63;

  v64 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v65) = 1145569280;
  LODWORD(v66) = 1125515264;
  [v64 algorithmThresholdNumber:23 inArrayForKey:v299 withMinValue:0.0 maxValue:v65 defaultValue:v66];
  v300[28] = v67;

  v68 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v69) = 2139095039;
  LODWORD(v70) = 0.5;
  LODWORD(v71) = 3.0;
  [v68 algorithmThresholdNumber:24 inArrayForKey:v299 withMinValue:v70 maxValue:v69 defaultValue:v71];
  v300[18] = v72;

  v73 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v74) = 2139095039;
  LODWORD(v75) = 10.0;
  LODWORD(v76) = 2139095039;
  [v73 algorithmThresholdNumber:25 inArrayForKey:v299 withMinValue:v75 maxValue:v74 defaultValue:v76];
  v300[19] = v77;

  v78 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v79) = 1120403456;
  LODWORD(v80) = 1145569280;
  LODWORD(v81) = 1133903872;
  [v78 algorithmThresholdNumber:27 inArrayForKey:v299 withMinValue:v79 maxValue:v80 defaultValue:v81];
  v300[21] = v82;

  v83 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v84) = 1120403456;
  LODWORD(v85) = 10.0;
  LODWORD(v86) = 15.0;
  [v83 algorithmThresholdNumber:26 inArrayForKey:v299 withMinValue:v85 maxValue:v84 defaultValue:v86];
  v300[20] = v87;

  v88 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v89) = 5.0;
  LODWORD(v90) = 1008981770;
  LODWORD(v91) = 1022739087;
  [v88 algorithmThresholdNumber:28 inArrayForKey:v299 withMinValue:v90 maxValue:v89 defaultValue:v91];
  v300[22] = v92;

  v93 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v94) = 5.0;
  LODWORD(v95) = -1138501878;
  [v93 algorithmThresholdNumber:63 inArrayForKey:v299 withMinValue:v95 maxValue:v94 defaultValue:0.0];
  v300[26] = v96;

  v97 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v98) = 1120403456;
  LODWORD(v99) = 1093533696;
  [v97 algorithmThresholdNumber:10 inArrayForKey:v299 withMinValue:0.0 maxValue:v98 defaultValue:v99];
  v300[29] = v100;

  v101 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v102) = 20.0;
  LODWORD(v103) = 0.40625;
  [v101 algorithmThresholdNumber:11 inArrayForKey:v299 withMinValue:0.0 maxValue:v102 defaultValue:v103];
  v300[30] = v104;

  v105 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v106) = 1165623296;
  LODWORD(v107) = 1123680256;
  [v105 algorithmThresholdNumber:12 inArrayForKey:v299 withMinValue:0.0 maxValue:v106 defaultValue:v107];
  v300[31] = v108;

  v109 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v110) = 1165623296;
  LODWORD(v111) = 1134723072;
  [v109 algorithmThresholdNumber:13 inArrayForKey:v299 withMinValue:0.0 maxValue:v110 defaultValue:v111];
  v300[32] = v112;

  v113 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v114) = 1120403456;
  LODWORD(v115) = 1093533696;
  [v113 algorithmThresholdNumber:14 inArrayForKey:v299 withMinValue:0.0 maxValue:v114 defaultValue:v115];
  v300[33] = v116;

  v117 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v118) = 20.0;
  LODWORD(v119) = 0.40625;
  [v117 algorithmThresholdNumber:15 inArrayForKey:v299 withMinValue:0.0 maxValue:v118 defaultValue:v119];
  v300[34] = v120;

  v121 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v122) = 1165623296;
  LODWORD(v123) = 1109393408;
  [v121 algorithmThresholdNumber:16 inArrayForKey:v299 withMinValue:0.0 maxValue:v122 defaultValue:v123];
  v300[35] = v124;

  v125 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v126) = 1165623296;
  LODWORD(v127) = 1120403456;
  [v125 algorithmThresholdNumber:17 inArrayForKey:v299 withMinValue:0.0 maxValue:v126 defaultValue:v127];
  v300[36] = v128;

  v129 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v130) = 1120403456;
  LODWORD(v131) = 1093533696;
  [v129 algorithmThresholdNumber:18 inArrayForKey:v299 withMinValue:0.0 maxValue:v130 defaultValue:v131];
  v300[37] = v132;

  v133 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v134) = 20.0;
  LODWORD(v135) = 0.40625;
  [v133 algorithmThresholdNumber:19 inArrayForKey:v299 withMinValue:0.0 maxValue:v134 defaultValue:v135];
  v300[38] = v136;

  v137 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v138) = 1061997773;
  LODWORD(v139) = 2.0;
  [v137 algorithmThresholdNumber:20 inArrayForKey:v299 withMinValue:0.0 maxValue:v139 defaultValue:v138];
  v300[39] = v140;

  v141 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v142) = *"fff?";
  LODWORD(v143) = 2.0;
  [v141 algorithmThresholdNumber:21 inArrayForKey:v299 withMinValue:0.0 maxValue:v143 defaultValue:v142];
  v300[40] = v144;

  v145 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v146) = 0.5;
  LODWORD(v147) = 7.0;
  LODWORD(v148) = 1193033728;
  [v145 algorithmThresholdNumber:29 inArrayForKey:v299 withMinValue:v146 maxValue:v148 defaultValue:v147];
  v300[41] = v149;

  v150 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v151) = 0.5;
  LODWORD(v152) = 13.0;
  LODWORD(v153) = 1193033728;
  [v150 algorithmThresholdNumber:30 inArrayForKey:v299 withMinValue:v151 maxValue:v153 defaultValue:v152];
  v300[42] = v154;

  v155 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v156) = 1120403456;
  LODWORD(v157) = 1112014848;
  LODWORD(v158) = 10.0;
  [v155 algorithmThresholdNumber:31 inArrayForKey:v299 withMinValue:v158 maxValue:v156 defaultValue:v157];
  v300[43] = v159;

  v160 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v161) = 1120403456;
  LODWORD(v162) = 1145569280;
  LODWORD(v163) = 1133903872;
  [v160 algorithmThresholdNumber:32 inArrayForKey:v299 withMinValue:v161 maxValue:v162 defaultValue:v163];
  v300[44] = v164;

  v165 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v166) = 5.0;
  LODWORD(v167) = 0.5;
  LODWORD(v168) = 1008981770;
  [v165 algorithmThresholdNumber:33 inArrayForKey:v299 withMinValue:v168 maxValue:v166 defaultValue:v167];
  v300[45] = v169;

  v170 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v171) = 1120403456;
  LODWORD(v172) = 1148846080;
  LODWORD(v173) = *"";
  [v170 algorithmThresholdNumber:34 inArrayForKey:v299 withMinValue:v171 maxValue:v173 defaultValue:v172];
  v300[46] = v174;

  v175 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v176) = 0.5;
  LODWORD(v177) = 7.0;
  LODWORD(v178) = 1193033728;
  [v175 algorithmThresholdNumber:37 inArrayForKey:v299 withMinValue:v176 maxValue:v178 defaultValue:v177];
  v300[54] = v179;

  v180 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v181) = 2139095039;
  LODWORD(v182) = 0.5;
  LODWORD(v183) = 2139095039;
  [v180 algorithmThresholdNumber:38 inArrayForKey:v299 withMinValue:v182 maxValue:v181 defaultValue:v183];
  v300[55] = v184;

  v185 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v186) = 1120403456;
  LODWORD(v187) = 1112014848;
  LODWORD(v188) = 10.0;
  [v185 algorithmThresholdNumber:39 inArrayForKey:v299 withMinValue:v188 maxValue:v186 defaultValue:v187];
  v300[56] = v189;

  v190 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v191) = 1120403456;
  LODWORD(v192) = 1145569280;
  LODWORD(v193) = 1133903872;
  [v190 algorithmThresholdNumber:40 inArrayForKey:v299 withMinValue:v191 maxValue:v192 defaultValue:v193];
  v300[57] = v194;

  v195 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v196) = 5.0;
  LODWORD(v197) = 0.5;
  LODWORD(v198) = 1008981770;
  [v195 algorithmThresholdNumber:41 inArrayForKey:v299 withMinValue:v198 maxValue:v196 defaultValue:v197];
  v300[58] = v199;

  v200 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v201) = 1120403456;
  LODWORD(v202) = 1148846080;
  LODWORD(v203) = *"";
  [v200 algorithmThresholdNumber:42 inArrayForKey:v299 withMinValue:v201 maxValue:v203 defaultValue:v202];
  v300[59] = v204;

  v205 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v206) = 1120403456;
  LODWORD(v207) = 8.0;
  [v205 algorithmThresholdNumber:35 inArrayForKey:v299 withMinValue:0.0 maxValue:v206 defaultValue:v207];
  v300[47] = v208;

  v209 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v210) = 1120403456;
  LODWORD(v211) = 8.0;
  [v209 algorithmThresholdNumber:43 inArrayForKey:v299 withMinValue:0.0 maxValue:v210 defaultValue:v211];
  v300[60] = v212;

  v213 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v214) = 1145569280;
  LODWORD(v215) = 1125515264;
  [v213 algorithmThresholdNumber:36 inArrayForKey:v299 withMinValue:0.0 maxValue:v214 defaultValue:v215];
  v300[48] = v216;

  v217 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v218) = 1145569280;
  LODWORD(v219) = 1125515264;
  [v217 algorithmThresholdNumber:44 inArrayForKey:v299 withMinValue:0.0 maxValue:v218 defaultValue:v219];
  v300[61] = v220;

  v221 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v222) = 5.0;
  LODWORD(v223) = -1138501878;
  [v221 algorithmThresholdNumber:63 inArrayForKey:v299 withMinValue:v223 maxValue:v222 defaultValue:0.0];
  v300[52] = v224;

  v225 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v226) = 5.0;
  LODWORD(v227) = -1138501878;
  [v225 algorithmThresholdNumber:63 inArrayForKey:v299 withMinValue:v227 maxValue:v226 defaultValue:0.0];
  v300[65] = v228;

  v229 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v230) = 15.0;
  LODWORD(v231) = -1138501878;
  LODWORD(v232) = 1193033728;
  [v229 algorithmThresholdNumber:64 inArrayForKey:v299 withMinValue:v231 maxValue:v232 defaultValue:v230];
  v300[53] = v233;

  v234 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v235) = 15.0;
  LODWORD(v236) = -1138501878;
  LODWORD(v237) = 1193033728;
  [v234 algorithmThresholdNumber:65 inArrayForKey:v299 withMinValue:v236 maxValue:v237 defaultValue:v235];
  v300[66] = v238;

  v239 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v240) = 1148846080;
  LODWORD(v241) = 1123024896;
  LODWORD(v242) = -1138501878;
  [v239 algorithmThresholdNumber:45 inArrayForKey:v299 withMinValue:v242 maxValue:v240 defaultValue:v241];
  v300[67] = v243;

  v244 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v245) = 1148846080;
  LODWORD(v246) = 1138819072;
  LODWORD(v247) = -1138501878;
  [v244 algorithmThresholdNumber:46 inArrayForKey:v299 withMinValue:v247 maxValue:v245 defaultValue:v246];
  v300[68] = v248;

  v249 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v250) = 1120403456;
  LODWORD(v251) = 7.0;
  LODWORD(v252) = -1138501878;
  [v249 algorithmThresholdNumber:47 inArrayForKey:v299 withMinValue:v252 maxValue:v250 defaultValue:v251];
  v300[69] = v253;

  v254 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v255) = 5.0;
  LODWORD(v256) = 1176256512;
  LODWORD(v257) = 1176255488;
  [v254 algorithmThresholdNumber:48 inArrayForKey:v299 withMinValue:v255 maxValue:v256 defaultValue:v257];
  v300[5] = v258;

  v259 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v260) = 1112014848;
  LODWORD(v261) = 1176256512;
  [v259 algorithmThresholdNumber:49 inArrayForKey:v299 withMinValue:0.0 maxValue:v261 defaultValue:v260];
  v300[6] = v262;

  v263 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v264) = 1108082688;
  LODWORD(v265) = 5.0;
  LODWORD(v266) = 1176256512;
  [v263 algorithmThresholdNumber:50 inArrayForKey:v299 withMinValue:v265 maxValue:v266 defaultValue:v264];
  v300[49] = v267;

  v268 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v269) = 1112014848;
  LODWORD(v270) = 1176256512;
  [v268 algorithmThresholdNumber:51 inArrayForKey:v299 withMinValue:0.0 maxValue:v270 defaultValue:v269];
  v300[50] = v271;

  v272 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v273) = 5.0;
  LODWORD(v274) = 1176256512;
  LODWORD(v275) = 1176255488;
  [v272 algorithmThresholdNumber:52 inArrayForKey:v299 withMinValue:v273 maxValue:v274 defaultValue:v275];
  v300[14] = v276;

  v277 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v278) = 1112014848;
  LODWORD(v279) = 1176256512;
  [v277 algorithmThresholdNumber:53 inArrayForKey:v299 withMinValue:0.0 maxValue:v279 defaultValue:v278];
  v300[15] = v280;

  v281 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v282) = 1108082688;
  LODWORD(v283) = 5.0;
  LODWORD(v284) = 1176256512;
  [v281 algorithmThresholdNumber:54 inArrayForKey:v299 withMinValue:v283 maxValue:v284 defaultValue:v282];
  v300[62] = v285;

  v286 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v287) = 1112014848;
  LODWORD(v288) = 1176256512;
  [v286 algorithmThresholdNumber:55 inArrayForKey:v299 withMinValue:0.0 maxValue:v288 defaultValue:v287];
  v300[63] = v289;

  v290 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v291) = 5.0;
  LODWORD(v292) = 1176256512;
  LODWORD(v293) = 1176255488;
  [v290 algorithmThresholdNumber:56 inArrayForKey:v299 withMinValue:v291 maxValue:v292 defaultValue:v293];
  v300[23] = v294;

  v295 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v296) = 1176256512;
  LODWORD(v297) = 1176255488;
  [v295 algorithmThresholdNumber:57 inArrayForKey:v299 withMinValue:0.0 maxValue:v296 defaultValue:v297];
  v300[24] = v298;

  CLKappaEstimatesAlgRolloverCrash::setConfig(this, v300);
}

double CLKappaEstimatesAlgRolloverCrash::setConfig(uint64_t a1, const void *a2)
{
  memcpy((*(a1 + 32) + 16), a2, 0x118uLL);
  if (qword_1004567F8 != -1)
  {
    sub_1002C6160();
  }

  v3 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 32);
    v5 = v4[4];
    v6 = v4[5];
    v7 = v4[7];
    v8 = v4[6];
    v9 = v4[8];
    v88 = 134219008;
    v89 = v5;
    v90 = 2048;
    v91 = v6;
    v92 = 2048;
    v93 = v7;
    v94 = 2048;
    v95 = v8;
    v96 = 2048;
    v97 = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[RC] config-1,%f,config-2,%f,config-3,%f,config-4,%f,config-5,%f", &v88, 0x34u);
  }

  if (qword_1004567F8 != -1)
  {
    sub_1002C6174();
  }

  v10 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 32);
    v12 = v11[13];
    v13 = v11[14];
    v14 = v11[16];
    v15 = v11[15];
    v16 = v11[17];
    v88 = 134219008;
    v89 = v12;
    v90 = 2048;
    v91 = v13;
    v92 = 2048;
    v93 = v14;
    v94 = 2048;
    v95 = v15;
    v96 = 2048;
    v97 = v16;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "[RC] config-6,%f,config-7,%f,config-8,%f,config-9,%f,config-10,%f", &v88, 0x34u);
  }

  if (qword_1004567F8 != -1)
  {
    sub_1002C6174();
  }

  v17 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
  {
    v18 = *(a1 + 32);
    v19 = v18[33];
    v20 = v18[34];
    v21 = v18[35];
    v22 = v18[36];
    v23 = v18[37];
    v24 = v18[38];
    v25 = v18[39];
    v26 = v18[40];
    v27 = v18[41];
    v28 = v18[42];
    v29 = v18[43];
    v30 = v18[44];
    v31 = v18[31];
    v32 = v18[32];
    v88 = 134221312;
    v89 = v19;
    v90 = 2048;
    v91 = v20;
    v92 = 2048;
    v93 = v21;
    v94 = 2048;
    v95 = v22;
    v96 = 2048;
    v97 = v23;
    v98 = 2048;
    v99 = v24;
    v100 = 2048;
    v101 = v25;
    v102 = 2048;
    v103 = v26;
    v104 = 2048;
    v105 = v27;
    v106 = 2048;
    v107 = v28;
    v108 = 2048;
    v109 = v29;
    v110 = 2048;
    v111 = v30;
    v112 = 2048;
    v113 = v31;
    v114 = 2048;
    v115 = v32;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "[RC] config-11,%f,config-12,%f,config-13,%f,config-14,%f,config-15,%f,config-16,%f,config-17,%f,config-18,%f,config-19,%f,config-20,%f,config-21,%f,config-22,%f,config-23,%f,config-24,%f", &v88, 0x8Eu);
  }

  if (qword_1004567F8 != -1)
  {
    sub_1002C6174();
  }

  v33 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
  {
    v34 = *(a1 + 32);
    v35 = v34[22];
    v36 = v34[23];
    v37 = v34[25];
    v38 = v34[24];
    v39 = v34[26];
    v88 = 134219008;
    v89 = v35;
    v90 = 2048;
    v91 = v36;
    v92 = 2048;
    v93 = v37;
    v94 = 2048;
    v95 = v38;
    v96 = 2048;
    v97 = v39;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "[RC] config-25,%f,config-26,%f,config-27,%f,config-28,%f,config-29,%f", &v88, 0x34u);
  }

  if (qword_1004567F8 != -1)
  {
    sub_1002C6174();
  }

  v40 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
  {
    v41 = *(a1 + 32);
    v42 = v41[45];
    v43 = v41[46];
    v44 = v41[47];
    v45 = v41[48];
    v46 = v41[49];
    v47 = v41[50];
    v48 = v41[51];
    v49 = v41[52];
    v88 = 134219776;
    v89 = v42;
    v90 = 2048;
    v91 = v43;
    v92 = 2048;
    v93 = v44;
    v94 = 2048;
    v95 = v45;
    v96 = 2048;
    v97 = v46;
    v98 = 2048;
    v99 = v47;
    v100 = 2048;
    v101 = v48;
    v102 = 2048;
    v103 = v49;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEBUG, "[RC] config-30,%f,config-31,%f,config-32,%f,config-33,%f,config-34,%f,config-35,%f,config-36,%f,config-37,%f", &v88, 0x52u);
  }

  if (qword_1004567F8 != -1)
  {
    sub_1002C6174();
  }

  v50 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
  {
    v51 = *(a1 + 32);
    v52 = v51[58];
    v53 = v51[59];
    v54 = v51[60];
    v55 = v51[61];
    v56 = v51[62];
    v57 = v51[63];
    v58 = v51[64];
    v59 = v51[65];
    v88 = 134219776;
    v89 = v52;
    v90 = 2048;
    v91 = v53;
    v92 = 2048;
    v93 = v54;
    v94 = 2048;
    v95 = v55;
    v96 = 2048;
    v97 = v56;
    v98 = 2048;
    v99 = v57;
    v100 = 2048;
    v101 = v58;
    v102 = 2048;
    v103 = v59;
    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEBUG, "[RC] config-38,%f,config-39,%f,config-40,%f,config-41,%f,config-42,%f,config-43,%f,config-44,%f,config-45,%f", &v88, 0x52u);
  }

  if (qword_1004567F8 != -1)
  {
    sub_1002C6174();
  }

  v60 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
  {
    v61 = *(a1 + 32);
    v62 = v61[71];
    v63 = v61[72];
    v64 = v61[73];
    v88 = 134218496;
    v89 = v62;
    v90 = 2048;
    v91 = v63;
    v92 = 2048;
    v93 = v64;
    _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEBUG, "[RC] config-46,%f,config-47,%f,config-48,%f", &v88, 0x20u);
  }

  if (qword_1004567F8 != -1)
  {
    sub_1002C6174();
  }

  v65 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
  {
    v66 = *(a1 + 32);
    v67 = v66[9];
    v68 = v66[10];
    v69 = v66[53];
    v70 = v66[54];
    v71 = v66[18];
    v72 = v66[19];
    v73 = v66[66];
    v74 = v66[67];
    v75 = v66[27];
    v76 = v66[28];
    v77 = v66[11];
    v78 = v66[55];
    v79 = v66[20];
    v80 = v66[68];
    v81 = v66[29];
    v88 = 134221568;
    v89 = v67;
    v90 = 2048;
    v91 = v68;
    v92 = 2048;
    v93 = v69;
    v94 = 2048;
    v95 = v70;
    v96 = 2048;
    v97 = v71;
    v98 = 2048;
    v99 = v72;
    v100 = 2048;
    v101 = v73;
    v102 = 2048;
    v103 = v74;
    v104 = 2048;
    v105 = v75;
    v106 = 2048;
    v107 = v76;
    v108 = 2048;
    v109 = v77;
    v110 = 2048;
    v111 = v78;
    v112 = 2048;
    v113 = v79;
    v114 = 2048;
    v115 = v80;
    v116 = 2048;
    v117 = v81;
    _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEBUG, "[RC] config-49,%f,config-50,%f,config-51,%f,config-52,%f,config-53,%f,,config-54,%f,config-55,%f,config-56,%f,config-57,%f,config-58,%f,config-59,%f,config-60,%f,config-61,%f,config-62,%f,config-63,%f", &v88, 0x98u);
  }

  if (qword_1004567F8 != -1)
  {
    sub_1002C6174();
  }

  v82 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
  {
    v84 = *(a1 + 32);
    v85 = v84[12];
    v86 = v84[57];
    v87 = v84[70];
    v88 = 134218496;
    v89 = v85;
    v90 = 2048;
    v91 = v86;
    v92 = 2048;
    v93 = v87;
    _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEBUG, "[RC] config-64,%f,config-65,%f,config-66,%f", &v88, 0x20u);
  }

  return result;
}

uint64_t CLKappaEstimatesAlgRolloverCrash::lowSensitivityDetector(CLKappaEstimatesAlgRolloverCrash *this, int a2)
{
  v2 = *(this + 4);
  if (a2)
  {
    v3 = 180;
  }

  else
  {
    v3 = 232;
  }

  if (a2)
  {
    v4 = 184;
  }

  else
  {
    v4 = 236;
  }

  if (a2)
  {
    v5 = 192;
  }

  else
  {
    v5 = 244;
  }

  if (a2)
  {
    v6 = 196;
  }

  else
  {
    v6 = 248;
  }

  if (a2)
  {
    v7 = 200;
  }

  else
  {
    v7 = 252;
  }

  v8 = 204;
  if (!a2)
  {
    v8 = 256;
  }

  v9 = 208;
  if (a2)
  {
    v10 = 212;
  }

  else
  {
    v9 = 260;
    v10 = 264;
  }

  if (a2)
  {
    v11 = 216;
  }

  else
  {
    v11 = 268;
  }

  v12 = 220;
  if (!a2)
  {
    v12 = 272;
  }

  v13 = 224;
  if (!a2)
  {
    v13 = 276;
  }

  v14 = 280;
  if (a2)
  {
    v14 = 228;
  }

  v15 = *(this + 13);
  v16 = *(this + 15);
  if (v15 < *(v2 + v5))
  {
    goto LABEL_34;
  }

  v17 = 240;
  if (a2)
  {
    v17 = 188;
  }

  if (v16 >= *(v2 + v17))
  {
    v18 = *(this + 16) >= *(v2 + v6);
  }

  else
  {
LABEL_34:
    v18 = 0;
  }

  v19 = *(v2 + v11);
  if (*(this + 100) == 1)
  {
    v20 = 0;
    if (*(this + 26) >= v19 && v16 >= *(v2 + v10))
    {
      v20 = *(this + 16) >= *(v2 + v13);
    }
  }

  else
  {
    v20 = 0;
  }

  v21 = *(v2 + v3);
  v22 = a2 ^ 1;
  v23 = v22 & (v18 || v20);
  if ((v22 & 1) == 0 && (v18 || v20))
  {
    v23 = *(this + 59);
  }

  v24 = *(this + 12);
  if (v24 >= v21)
  {
    if (v24 >= *(v2 + v4))
    {
      v25 = 2;
    }

    else
    {
      v25 = 1;
    }
  }

  else
  {
    v25 = 0;
  }

  if (*(this + 80) == 1 && *(this + 21) >= *(v2 + v7))
  {
    v29 = *(v2 + v9);
    v26 = v16 >= *(v2 + v8) && v15 >= v29;
    v27 = 1;
    if (v15 >= v29 && v16 >= *(v2 + v12) && *(this + 100))
    {
      v26 |= *(this + 26) >= v19;
      v27 = 1;
    }
  }

  else
  {
    v26 = 0;
    v27 = 0;
  }

  if ((v25 + 1) >= 2)
  {
    if (v25 == 2)
    {
      v28 = v23 & (*(this + 27) >= *(v2 + v14)) | v26;
    }

    else
    {
      v28 = v23 & v27;
    }
  }

  else
  {
    v28 = 0;
  }

  return v28 & 1;
}

void CLKappaEstimatesAlgRolloverCrash::epochFinalize(CLKappaEstimatesAlgRolloverCrash *this, uint64_t a2)
{
  if (*(this + 57) == 1)
  {
    if (qword_1004567F8 != -1)
    {
      sub_1002C6160();
    }

    v4 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v56) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[RC] using audio thresholds", &v56, 2u);
    }

    v5 = 12;
    v6 = 11;
    v7 = 10;
    v8 = 9;
    v9 = 8;
    v10 = 7;
    v11 = 6;
    v12 = 5;
    v13 = 4;
  }

  else
  {
    if (qword_1004567F8 != -1)
    {
      sub_1002C6160();
    }

    v14 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v56) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "[RC] without audio thresholds", &v56, 2u);
    }

    v5 = 21;
    v6 = 20;
    v7 = 19;
    v8 = 18;
    v9 = 17;
    v10 = 16;
    v11 = 15;
    v12 = 14;
    v13 = 13;
  }

  v15 = *(this + 4);
  v16 = *(this + 13);
  v17 = *(this + 15);
  v19 = v16 >= v15[v10] && v17 >= v15[v11] && *(this + 16) >= v15[v9];
  v20 = v15[v7];
  v21 = *(this + 100);
  v23 = v21 == 1 && (*(this + 26) >= v20 ? (v22 = v17 < v15[v8]) : (v22 = 1), !v22) && *(this + 16) >= v15[v5];
  if (*(this + 80) != 1)
  {
    v26 = 0;
LABEL_41:
    v29 = 0;
    goto LABEL_42;
  }

  v24 = v15[32];
  v26 = v16 >= v24 && v17 >= v15[31];
  if (v17 < v15[v6] || v16 < v24 || v21 == 0)
  {
    goto LABEL_41;
  }

  v29 = *(this + 26) >= v20;
LABEL_42:
  v30 = v15[v13];
  v31 = v15[v12];
  v32 = CLSafetyAlgorithmsMath::computeSigmoidalThreshold(v15 + 33, *(this + 12));
  v33 = CLSafetyAlgorithmsMath::computeSigmoidalThreshold((*(this + 4) + 148), *(this + 12));
  v34 = CLSafetyAlgorithmsMath::computeSigmoidalThreshold((*(this + 4) + 164), *(this + 12));
  v35 = *(this + 17) >= v32 && *(this + 18) >= v33 && *(this + 19) >= v34;
  *(this + 58) = v35;
  v36 = *(this + 56) & v35;
  v37 = *(this + 24);
  v39 = 0;
  if (v37 != -1)
  {
    v38 = *(this + 4);
    if (v38[71] > v37 && *(this + 21) < v38[72] && *(this + 23) < v38[73])
    {
      v39 = 1;
    }
  }

  v40 = v36 & !v39;
  *(this + 59) = v40;
  v41 = *(this + 12);
  if (v41 >= v30)
  {
    if (v41 >= v31)
    {
      v42 = 2;
    }

    else
    {
      v42 = 1;
    }
  }

  else
  {
    v42 = 0;
  }

  v43 = v19 || v23;
  v44 = *(this + 57) ^ 1 | v40;
  if (qword_1004567F8 != -1)
  {
    sub_1002C6174();
  }

  v45 = v43 & v44;
  v46 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_INFO))
  {
    v47 = *(this + 112);
    v48 = *(this + 115);
    v49 = *(this + 113);
    v50 = *(this + 29);
    v56 = 67109888;
    v57 = v47;
    v58 = 1024;
    v59 = v48;
    v60 = 1024;
    v61 = v49;
    v62 = 1024;
    v63 = v50;
    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "[RC] force %d %d %d re %d", &v56, 0x1Au);
  }

  if (*(this + 115) == 1)
  {
    *(this + 115) = 0;
    v45 = 1;
  }

  v51 = *(this + 29);
  if (v51 != -1)
  {
    *(this + 29) = -1;
    v42 = v51;
  }

  if (v42 == 2)
  {
    v52 = v45 | v26 | v29;
  }

  else if (v42 == 1)
  {
    v52 = v45 & *(this + 80);
  }

  else
  {
    v52 = 0;
  }

  v53 = CLKappaEstimatesAlgRolloverCrash::lowSensitivityDetector(this, *(this + 57));
  if (*(this + 112) == 1)
  {
    *(this + 112) = 0;
    v52 = 1;
  }

  if (qword_1004567F8 != -1)
  {
    sub_1002C6174();
  }

  v54 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEFAULT))
  {
    v56 = 67240704;
    v57 = v52 & 1;
    v58 = 1026;
    v59 = v42;
    v60 = 1026;
    v61 = v53;
    _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "[RC] de %{public}d re %{public}d low %{public}d", &v56, 0x14u);
  }

  v55 = *(this + 4);
  *(v55 + 296) = v52 & 1;
  *(v55 + 304) = a2;
  *(v55 + 297) = v53;
  *(v55 + 312) = *(this + 6);
  *(v55 + 320) = *(this + 28);
  *(v55 + 324) = *(this + 60);
  *(v55 + 332) = *(this + 80);
  *(v55 + 336) = v42;
  *(v55 + 340) = 0;
  *(v55 + 344) = *(this + 68);
  *(v55 + 352) = *(this + 19);
  *(v55 + 356) = v32;
  *(v55 + 360) = v33;
  *(v55 + 364) = v34;
  *(v55 + 368) = *(this + 58);
  *(v55 + 369) = *(this + 59);
  *(v55 + 370) = *(this + 81);
  *(v55 + 372) = *(this + 24);
  *(v55 + 376) = v39;
  *(v55 + 380) = *(this + 21);
  *(v55 + 384) = *(this + 23);
  *(v55 + 388) = *(this + 27);
}

float CLKappaEstimatesAlgRolloverCrash::feedFeatures(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 88);
  *(a1 + 108) = *(a2 + 268);
  result = *(a2 + 16);
  *(a1 + 92) = result;
  return result;
}

{
  v2 = *(a1 + 113);
  if (v2 == 1)
  {
    *(a1 + 113) = 0;
  }

  else
  {
    LOBYTE(v2) = *(a2 + 52) != 0;
  }

  *(a1 + 80) = v2;
  result = *(a2 + 32);
  *(a1 + 84) = result;
  return result;
}

{
  result = *(a2 + 20);
  v3 = *(a2 + 28);
  *(a1 + 60) = result;
  *(a1 + 64) = v3;
  return result;
}

{
  *(a1 + 52) = *(a2 + 12);
  *(a1 + 100) = *(a2 + 16);
  result = *(a2 + 40);
  *(a1 + 104) = result;
  return result;
}

float virtual thunk toCLKappaEstimatesAlgRolloverCrash::feedFeatures(void *a1, uint64_t a2)
{
  v2 = a1 + *(*a1 - 32);
  *(v2 + 12) = *(a2 + 88);
  *(v2 + 27) = *(a2 + 268);
  result = *(a2 + 16);
  *(v2 + 23) = result;
  return result;
}

{
  v2 = (a1 + *(*a1 - 56));
  v3 = *(v2 + 113);
  if (v3 == 1)
  {
    *(v2 + 113) = 0;
  }

  else
  {
    LOBYTE(v3) = *(a2 + 52) != 0;
  }

  *(v2 + 80) = v3;
  result = *(a2 + 32);
  v2[21] = result;
  return result;
}

{
  v2 = (a1 + *(*a1 - 112));
  result = *(a2 + 20);
  v4 = *(a2 + 28);
  v2[15] = result;
  *(v2 + 16) = v4;
  return result;
}

{
  v2 = a1 + *(*a1 - 96);
  *(v2 + 13) = *(a2 + 12);
  v2[100] = *(a2 + 16);
  result = *(a2 + 40);
  *(v2 + 26) = result;
  return result;
}

uint64_t CLKappaEstimatesAlgRolloverCrash::feedFeatures(uint64_t result, uint64_t a2)
{
  *(result + 56) = *(a2 + 49);
  v2 = *(a2 + 8);
  *(result + 57) = v2 > 0.0;
  *(result + 68) = *(a2 + 32);
  *(result + 76) = v2;
  return result;
}

void *virtual thunk toCLKappaEstimatesAlgRolloverCrash::feedFeatures(void *result, uint64_t a2)
{
  v2 = result + *(*result - 88);
  v2[56] = *(a2 + 49);
  v3 = *(a2 + 8);
  v2[57] = v3 > 0.0;
  *(v2 + 68) = *(a2 + 32);
  *(v2 + 19) = v3;
  return result;
}

void sub_1002C57C0(CLKappaAlgBlock *this)
{
  *this = off_10042DFB8;
  *(this + 15) = off_10042E278;
  *(this + 16) = off_10042E3C0;
  *(this + *(*this - 176)) = off_10042E4B0;
  v2 = *(this + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(this, off_10042E508);
}

void sub_1002C58B0(CLKappaAlgBlock *this)
{
  *this = off_10042DFB8;
  *(this + 15) = off_10042E278;
  *(this + 16) = off_10042E3C0;
  *(this + 17) = off_10042E4B0;
  v2 = *(this + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(this, off_10042E508);

  operator delete();
}

void sub_1002C59AC(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_10042DFB8;
  *(v1 + 15) = off_10042E278;
  *(v1 + 16) = off_10042E3C0;
  *(v1 + 17) = off_10042E4B0;
  v2 = *(v1 + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_10042E508);
}

void sub_1002C5A84(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_10042DFB8;
  *(v1 + 15) = off_10042E278;
  *(v1 + 16) = off_10042E3C0;
  *(v1 + 17) = off_10042E4B0;
  v2 = *(v1 + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_10042E508);

  operator delete();
}

void sub_1002C5B70(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_10042DFB8;
  *(v1 + 15) = off_10042E278;
  *(v1 + 16) = off_10042E3C0;
  *(v1 + 17) = off_10042E4B0;
  v2 = *(v1 + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_10042E508);
}

void sub_1002C5C48(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_10042DFB8;
  *(v1 + 15) = off_10042E278;
  *(v1 + 16) = off_10042E3C0;
  *(v1 + 17) = off_10042E4B0;
  v2 = *(v1 + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_10042E508);

  operator delete();
}

void sub_1002C5D54(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_10042DFB8;
  *(v1 + 15) = off_10042E278;
  *(v1 + 16) = off_10042E3C0;
  *(v1 + 17) = off_10042E4B0;
  v2 = *(v1 + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_10042E508);
}

void sub_1002C5E2C(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_10042DFB8;
  *(v1 + 15) = off_10042E278;
  *(v1 + 16) = off_10042E3C0;
  *(v1 + 17) = off_10042E4B0;
  v2 = *(v1 + 5);
  if (v2)
  {
    sub_100009A48(v2);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_10042E508);

  operator delete();
}

void sub_1002C5F18(id a1)
{
  qword_100456800 = os_log_create("com.apple.anomalydetectiond", "Alg");

  _objc_release_x1();
}

void sub_1002C60E4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10042EB90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void CLKappaDeescalatorUsha::CLKappaDeescalatorUsha(CLKappaDeescalatorUsha *this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 36) = 1;
  *(this + 10) = 0;
  *(this + 44) = 0;
  *this = off_10042EBE0;
  *(this + 84) = 0;
  *(this + 11) = 0xB00000000;
  *(this + 108) = 0xB00000000;
  *(this + 20) = 0xB00000000;
  *(this + 53) = 0;
  *(this + 216) = 0;
  *(this + 220) = 0;
  *(this + 71) = 7;
  strcpy(this + 48, "de-USHA");
}

uint64_t CLKappaDeescalatorUsha::assertReady(CLKappaDeescalatorUsha *this, uint64_t a2, const char *a3)
{
  CLKappaDeescalator::raiseUnless(*(this + 84), "[de-USHA] missing config", a3);
  CLKappaDeescalator::raiseUnless(*(this + 45) == *(this + 55), "[de-USHA] buffer size mismatch", v4);
  v6 = *(this + 45) == *(this + 81);

  return CLKappaDeescalator::raiseUnless(v6, "[de-USHA] buffer size mismatch", v5);
}

uint64_t CLKappaDeescalatorUsha::prepareForNextEpoch(uint64_t this)
{
  *(this + 220) = 0;
  *(this + 224) = 0;
  return this;
}

uint64_t CLKappaDeescalatorUsha::setConfig(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if (*(result + 84) == 1)
  {
    *(result + 80) = *(a2 + 4);
    *(result + 72) = v2;
  }

  else
  {
    *(result + 80) = *(a2 + 2);
    *(result + 72) = v2;
    *(result + 84) = 1;
  }

  return result;
}

void CLKappaDeescalatorUsha::resetConfiguration(CLKappaDeescalatorUsha *this)
{
  v9 = [CSPersistentConfiguration configBaseKey:"DeescalatorUSHAConfig" forFeatureMode:*(this + 36)];
  v2 = +[CSPersistentConfiguration sharedConfiguration];
  [v2 floatThreshold:&CLKappaDeescalatorUsha::kConfigurationDefaults forKey:v9];
  v4 = v3;
  [v2 floatThreshold:&unk_1003BF43C forKey:v9];
  v6 = v5;
  v7 = [v2 intThreshold:&unk_1003BF44C forKey:v9];
  v8 = [v2 intThreshold:&unk_1003BF45C forKey:v9];
  if ((*(this + 84) & 1) == 0)
  {
    *(this + 84) = 1;
  }

  *(this + 18) = v4;
  *(this + 19) = v6;
  *(this + 80) = v7;
  *(this + 81) = v8;
  *(this + 44) = CLKappaDeescalator::shouldForceNoop(this, "ForceUsha");
  *(this + 10) = CLKappaDeescalator::shouldForceDeescalate(this, "ForceUsha");
}

double CLKappaDeescalatorUsha::log(CLKappaDeescalatorUsha *this, uint64_t a2)
{
  if ((*(this + 84) & 1) == 0)
  {
    sub_100005BF0();
  }

  v4 = *(this + 220);
  if (qword_1004567F8 != -1)
  {
    sub_1002C68B0();
  }

  v5 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(this + 6);
    v8 = *(this + 36);
    v9 = *(this + 18);
    v10 = *(this + 19);
    v11 = *(this + 80);
    v12 = *(this + 81);
    v13 = 134351104;
    v14 = a2;
    v15 = 1026;
    v16 = v7;
    v17 = 1026;
    v18 = v8;
    v19 = 2050;
    v20 = v9;
    v21 = 2050;
    v22 = v10;
    v23 = 1026;
    v24 = v11;
    v25 = 1026;
    v26 = v12;
    v27 = 1026;
    v28 = v4;
    v29 = 1026;
    v30 = HIDWORD(v4);
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[de-USHA] summary,A,%{public}llu,B,%{public}u,mode,%{public}u,config-1,%{public}f,config-2,%{public}f,config-3,%{public}u,config-4,%{public}u,debug-1a,%{public}d,debug-1b,%{public}d", &v13, 0x44u);
  }

  return result;
}

unsigned __int16 *CLKappaDeescalatorUsha::updateWithIsAudioRollover(uint64_t a1, uint64_t a2)
{
  result = sub_1002B470C((a1 + 88), (a2 + 49));
  *(a1 + 216) = *(a2 + 49);
  return result;
}

float CLKappaDeescalatorUsha::updateWithPeakPressure(uint64_t a1, uint64_t a2)
{
  sub_100040338((a1 + 160), (a2 + 32));
  result = *(a2 + 32);
  *(a1 + 212) = result;
  return result;
}

uint64_t CLKappaDeescalatorUsha::getNumUshaFPEpoch(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  if (!a2[1])
  {
    return 0;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  do
  {
    v8 = sub_1000404B8(a3, v6);
    if ((*(a1 + 84) & 1) == 0)
    {
      sub_100005BF0();
    }

    v9 = *v8;
    v10 = *(a1 + 72);
    v11 = *sub_10002E0A8(a2, v6);
    if (v9 > v10)
    {
      v11 = 0;
    }

    v7 = (v7 + v11);
    ++v6;
  }

  while (v6 < a2[1]);
  return v7;
}

uint64_t CLKappaDeescalatorUsha::getNumUshaCPEpoch(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, unsigned __int16 *a4)
{
  if (!a2[1])
  {
    return 0;
  }

  v8 = 0;
  LODWORD(v9) = 0;
  do
  {
    v10 = sub_1000404B8(a3, v8);
    if ((*(a1 + 84) & 1) == 0 || (v11 = *v10, v12 = *(a1 + 72), v13 = sub_1000404B8(a4, v8), (*(a1 + 84) & 1) == 0))
    {
      sub_100005BF0();
    }

    v14 = *v13;
    v15 = *(a1 + 76);
    v16 = *sub_10002E0A8(a2, v8);
    v17 = v11 > v12;
    if (v14 > v15)
    {
      v17 = 1;
    }

    v18 = v9 + v17;
    if (v16 == 1)
    {
      v9 = v18;
    }

    else
    {
      v9 = v9;
    }

    ++v8;
  }

  while (v8 < a2[1]);
  return v9;
}

uint64_t CLKappaDeescalatorUsha::onEvaluateAtMinHoldDuration(CLKappaDeescalatorUsha *this)
{
  *(this + 55) = CLKappaDeescalatorUsha::getNumUshaFPEpoch(this, this + 44, this + 54);
  NumUshaCPEpoch = CLKappaDeescalatorUsha::getNumUshaCPEpoch(this, this + 44, this + 54, this + 80);
  *(this + 56) = NumUshaCPEpoch;
  if ((*(this + 84) & 1) == 0)
  {
    sub_100005BF0();
  }

  LOBYTE(v3) = *(this + 80);
  v4 = v3;
  if (*(this + 55) < v4)
  {
    return 1;
  }

  LOBYTE(v4) = *(this + 81);
  if (NumUshaCPEpoch >= LODWORD(v4))
  {
    return 1;
  }

  else
  {
    return 4;
  }
}

_DWORD *CLKappaDeescalatorUsha::onPreviousEpochMadeDecision(_DWORD *this)
{
  this[22] = 0;
  this[27] = 0;
  this[40] = 0;
  return this;
}

void sub_1002C6818(void **a1)
{
  *a1 = off_10042EBE0;
  CLKappaDeescalator::~CLKappaDeescalator(a1);

  operator delete();
}

void sub_1002C686C(id a1)
{
  qword_100456800 = os_log_create("com.apple.anomalydetectiond", "Alg");

  _objc_release_x1();
}

void sub_1002C69A8(id a1)
{
  qword_100458868 = [[CLDispatchSilo alloc] initWithIdentifier:@"CSAnomalyEventServiceSilo"];

  _objc_release_x1();
}

void sub_1002C6CDC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 40));

  _Unwind_Resume(a1);
}

void sub_1002C6D00(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (xpc_get_type(v3) == &_xpc_type_error)
  {
    v5 = xpc_copy_description(v3);
    if (qword_100456958 != -1)
    {
      sub_1002CD464();
    }

    v6 = qword_100456960;
    if (!os_log_type_enabled(qword_100456960, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_12;
    }

    v13 = 136315138;
    v14 = v5;
    v7 = "Connection received error: %s";
    goto LABEL_11;
  }

  if (xpc_get_type(v3) != &_xpc_type_dictionary)
  {
    v5 = xpc_copy_description(v3);
    if (qword_100456958 != -1)
    {
      sub_1002CD464();
    }

    v6 = qword_100456960;
    if (!os_log_type_enabled(qword_100456960, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_12;
    }

    v13 = 136315138;
    v14 = v5;
    v7 = "Connection received object: %s";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, v7, &v13, 0xCu);
LABEL_12:
    free(v5);
    goto LABEL_22;
  }

  if (qword_100456958 != -1)
  {
    sub_1002CD464();
  }

  v8 = qword_100456960;
  if (os_log_type_enabled(qword_100456960, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "received xpc trigger connection", &v13, 2u);
  }

  uint64 = xpc_dictionary_get_uint64(v3, "seq");
  if (qword_100456958 != -1)
  {
    sub_1002CD478();
  }

  v10 = qword_100456960;
  if (os_log_type_enabled(qword_100456960, OS_LOG_TYPE_DEBUG))
  {
    v13 = 134217984;
    v14 = uint64;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Connection received seq: %llu", &v13, 0xCu);
  }

  reply = xpc_dictionary_create_reply(v3);
  v12 = dword_100458878++;
  xpc_dictionary_set_uint64(reply, "seq", v12);
  [WeakRetained[19] addObject:reply];

LABEL_22:
}

void sub_1002C7170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1002C7198(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (qword_100456958 != -1)
  {
    sub_1002CD464();
  }

  v5 = qword_100456960;
  if (os_log_type_enabled(qword_100456960, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "received xpc trigger event", &v8, 2u);
  }

  [WeakRetained[14] createPowerAssertion:@"AOP Trigger"];
  ++*(WeakRetained + 26);
  if (xpc_get_type(v3) == &_xpc_type_connection)
  {
    [WeakRetained[20] addObject:v3];
    [WeakRetained handleConnection:v3];
  }

  else
  {
    v6 = xpc_copy_description(v3);
    if (qword_100456958 != -1)
    {
      sub_1002CD478();
    }

    v7 = qword_100456960;
    if (os_log_type_enabled(qword_100456960, OS_LOG_TYPE_DEBUG))
    {
      v8 = 136315138;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "received object: %s", &v8, 0xCu);
    }

    free(v6);
  }
}

id sub_1002C7914()
{
  if (qword_1004567D8 != -1)
  {
    sub_1002CD4A0();
  }

  v1 = qword_1004567E0;

  return v1;
}

void sub_1002CC5B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    operator delete();
  }

  _Unwind_Resume(a1);
}

void sub_1002CD398(id a1)
{
  qword_100456960 = os_log_create("com.apple.anomalydetectiond", "XPC");

  _objc_release_x1();
}

void sub_1002CD3DC(id a1)
{
  qword_1004567E0 = os_log_create("com.apple.anomalydetectiond", "AnomalyEvent");

  _objc_release_x1();
}

BOOL sub_1002CD420(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_FAULT);
}

BOOL sub_1002CD438(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_INFO);
}

void sub_1002CD4DC()
{
  v1 = sub_1002C7914();
  if (sub_1002CD420(v1))
  {
    sub_100009C7C();
    sub_10002EB78(&_mh_execute_header, v2, v3, "{msg%{public}.0s:UUID cannot be nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v21, v22, v23, v24, v25);
  }

  v8 = sub_1002C7914();
  if (os_signpost_enabled(v8))
  {
    sub_100009C7C();
    sub_10002EAF4(&_mh_execute_header, v9, v10, v11, "UUID cannot be nil", "{msg%{public}.0s:UUID cannot be nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v12, v13, v21, v22, v23, v24, v25);
  }

  v14 = sub_1002C7914();
  if (sub_1002CD438(v14))
  {
    sub_100009C7C();
    sub_10002EB58(&_mh_execute_header, v15, v16, "{msg%{public}.0s:UUID cannot be nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v17, v18, v19, v20, v21, v22, v23, v24, v25);
  }

  abort_report_np();
  __break(1u);
}

uint64_t sub_1002CD608()
{
  v1 = sub_1002C7914();
  if (sub_1002CD420(v1))
  {
    sub_100009C7C();
    sub_10002EB78(&_mh_execute_header, v2, v3, "{msg%{public}.0s:invalid mode, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v23, v24, v25, v26, v27);
  }

  v8 = sub_1002C7914();
  if (os_signpost_enabled(v8))
  {
    sub_100009C7C();
    sub_10002EAF4(&_mh_execute_header, v9, v10, v11, "invalid mode", "{msg%{public}.0s:invalid mode, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v12, v13, v23, v24, v25, v26, v27);
  }

  v14 = sub_1002C7914();
  if (sub_1002CD438(v14))
  {
    sub_100009C7C();
    sub_10002EB58(&_mh_execute_header, v15, v16, "{msg%{public}.0s:invalid mode, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v17, v18, v19, v20, v23, v24, v25, v26, v27);
  }

  v21 = abort_report_np();
  return sub_1002CD72C(v21);
}

uint64_t sub_1002CD72C()
{
  v1 = sub_1002C7914();
  if (sub_1002CD420(v1))
  {
    sub_100009C7C();
    sub_10002EB78(&_mh_execute_header, v2, v3, "{msg%{public}.0s:invalid mode, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v23, v24, v25, v26, v27);
  }

  v8 = sub_1002C7914();
  if (os_signpost_enabled(v8))
  {
    sub_100009C7C();
    sub_10002EAF4(&_mh_execute_header, v9, v10, v11, "invalid mode", "{msg%{public}.0s:invalid mode, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v12, v13, v23, v24, v25, v26, v27);
  }

  v14 = sub_1002C7914();
  if (sub_1002CD438(v14))
  {
    sub_100009C7C();
    sub_10002EB58(&_mh_execute_header, v15, v16, "{msg%{public}.0s:invalid mode, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v17, v18, v19, v20, v23, v24, v25, v26, v27);
  }

  v21 = abort_report_np();
  return sub_1002CD850(v21);
}

uint64_t sub_1002CD850()
{
  v1 = sub_1002C7914();
  if (sub_1002CD420(v1))
  {
    sub_100009C7C();
    sub_10002EB78(&_mh_execute_header, v2, v3, "{msg%{public}.0s:No _aop to tell about companion, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v25, v26, v27, v28, v29);
  }

  v8 = sub_1002C7914();
  if (os_signpost_enabled(v8))
  {
    sub_100009C7C();
    sub_10002EAF4(&_mh_execute_header, v9, v10, v11, "No _aop to tell about companion", "{msg%{public}.0s:No _aop to tell about companion, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v12, v13, v25, v26, v27, v28, v29);
  }

  v14 = sub_1002C7914();
  if (sub_1002CD438(v14))
  {
    sub_100009C7C();
    sub_10002EB58(&_mh_execute_header, v15, v16, "{msg%{public}.0s:No _aop to tell about companion, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v17, v18, v19, v20, v25, v26, v27, v28, v29);
  }

  v21 = abort_report_np();
  return CSAOPSvc::Idle::trigger(v21, v22, v23);
}

CSAOPSvc::Idle *CSAOPSvc::Idle::trigger(CSAOPSvc::Idle *this, uint64_t a2, const void *a3)
{
  if (a2 != 1)
  {
    return 0;
  }

  v3 = this;
  if ((*([*(*(this + 6) + 40) c_struct] + 1) & 0x10) != 0)
  {
    if (qword_100456808 != -1)
    {
      sub_1002D5800();
    }

    v4 = qword_100456810;
    if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v5 = "ignore post driving kappa trigger";
      v6 = buf;
LABEL_11:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, v5, v6, 2u);
    }
  }

  else
  {
    if (*([*(*(v3 + 6) + 40) c_struct] + 1) || (*(objc_msgSend(*(*(v3 + 6) + 40), "c_struct") + 46) & 0x10) == 0)
    {
LABEL_5:
      [*(*(v3 + 6) + 1064) addObject:*(*(v3 + 6) + 40)];
      return (*(v3 + 6) + 120);
    }

    if ((*([*(*(v3 + 6) + 40) c_struct] + 93) & 2) != 0)
    {
      if (qword_100456808 != -1)
      {
        sub_1002D5800();
      }

      v8 = qword_100456810;
      if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_DEBUG))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Letting post riding marty trigger since it is remotely armed", v10, 2u);
      }

      goto LABEL_5;
    }

    if (qword_100456808 != -1)
    {
      sub_1002D5800();
    }

    v4 = qword_100456810;
    if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_DEBUG))
    {
      v9 = 0;
      v5 = "Ignoring post riding marty trigger";
      v6 = &v9;
      goto LABEL_11;
    }
  }

  return v3;
}

id sub_1002CDB10()
{
  if (qword_100456808 != -1)
  {
    sub_1002D5800();
  }

  v1 = qword_100456810;

  return v1;
}

void CSAOPSvc::Idle::action(CSAOPSvc::Idle *this, uint64_t a2, const void *a3)
{
  if (a2 == 1)
  {
    if (qword_100456808 != -1)
    {
      sub_1002D5800();
    }

    v4 = qword_100456810;
    if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(*(this + 6) + 40);
      v22 = 138412290;
      *v23 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "triggered data %@", &v22, 0xCu);
    }

    v6 = *(this + 6);
    v7 = *(v6 + 1008);
    *(v6 + 1008) = 0;

    v8 = CSAOPSvc::resetTriggerSessionStats(*(this + 6));
    v9 = *(this + 6);
    *(v9 + 1050) = 0;
    v10 = *([*(v9 + 40) c_struct] + 1);
    if (*([*(*(this + 6) + 40) c_struct] + 1))
    {
      v11 = (*([*(*(this + 6) + 40) c_struct] + 1) & 0x10) == 0;
    }

    else
    {
      v11 = 0;
    }

    if (*([*(*(this + 6) + 40) c_struct] + 46))
    {
      v12 = (*([*(*(this + 6) + 40) c_struct] + 46) & 0x10) == 0;
    }

    else
    {
      v12 = 0;
    }

    if (!*([*(*(this + 6) + 40) c_struct] + 1) && (*(objc_msgSend(*(*(this + 6) + 40), "c_struct") + 46) & 0x10) != 0)
    {
      v13 = (*([*(*(this + 6) + 40) c_struct] + 93) >> 1) & 1;
    }

    else
    {
      v13 = 0;
    }

    v14 = *([*(*(this + 6) + 40) c_struct] + 46);
    v15 = *([*(*(this + 6) + 40) c_struct] + 64);
    v16 = (v10 | v14) == 0;
    v17 = v15;
    if (v15)
    {
      v18 = v16;
    }

    else
    {
      v18 = 0;
    }

    *(*(this + 6) + 1032) = v18;
    if (qword_100456808 != -1)
    {
      sub_1002D5814();
    }

    v19 = qword_100456810;
    if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_DEBUG))
    {
      v22 = 67109632;
      *v23 = v11;
      *&v23[4] = 1024;
      *&v23[6] = v12;
      v24 = 1024;
      v25 = v17;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "isKappaNotPostDriving %d isMartyNotPostRiding %d isIgneous %d", &v22, 0x14u);
    }

    if (v11 || v12 || v17)
    {
      goto LABEL_29;
    }

    if (v13)
    {
      if (qword_100456808 != -1)
      {
        sub_1002D5814();
      }

      v20 = qword_100456810;
      if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v22) = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Letting post riding marty action since it is remotely armed", &v22, 2u);
      }

LABEL_29:
      [*(*(this + 6) + 16) triggered:*(*(this + 6) + 40)];
      return;
    }

    if (qword_100456808 != -1)
    {
      sub_1002D5814();
    }

    v21 = qword_100456810;
    if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "ignoring post driving kappa trigger in action", &v22, 2u);
    }
  }
}

double CSAOPSvc::resetTriggerSessionStats(CSAOPSvc *this)
{
  if (qword_100456808 != -1)
  {
    sub_1002D5800();
  }

  v2 = qword_100456810;
  if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "trigger session stats (reset)", v8, 2u);
  }

  *(this + 112) = 0xFFFFFFFF00000000;
  *(this + 226) = 0;
  *(this + 908) = 0;
  *(this + 57) = 0u;
  *(this + 116) = 0xBF80000000000000;
  __asm { FMOV            V0.2S, #-1.0 }

  *(this + 117) = result;
  *(this + 118) = 0xBFF0000000000000;
  *(this + 238) = -1;
  *(this + 956) = 0;
  *(this + 120) = result;
  *(this + 242) = -1082130432;
  *(this + 486) = 0;
  *(this + 974) = 0;
  return result;
}

CSAOPSvc::Reading *CSAOPSvc::Reading::Reading(CSAOPSvc::Reading *this, CSAOPSvc *a2, CLSilo *a3)
{
  v5 = a3;
  CSHSM::State::State(this, "reading");
  *this = &off_10042ED20;
  *(this + 6) = a2;
  v6 = [(CLSilo *)v5 newTimer];
  *(this + 10) = v6;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1002CE06C;
  v8[3] = &unk_100423460;
  v8[4] = this;
  [v6 setHandler:v8];

  return this;
}

void sub_1002CE018(_Unwind_Exception *a1)
{
  *v2 = &off_100436270;
  v4 = *(v2 + 16);
  if (v4)
  {
    *(v2 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t CSAOPSvc::Reading::getMaxCollectionTimeInSecondsConfig(CSAOPSvc::Reading *this)
{
  v1 = +[CSPersistentConfiguration sharedConfiguration];
  v2 = [v1 objectForKey:@"CSCollectionTimeInSeconds"];
  if (v2)
  {
    v3 = [v1 integerForKey:@"CSCollectionTimeInSeconds"];
    if (v3 >= 600)
    {
      v4 = 600;
    }

    else
    {
      v4 = v3;
    }
  }

  else
  {
    v4 = 200;
  }

  return v4;
}

id CSAOPSvc::Reading::entry(CSAOPSvc::Reading *this, unint64_t a2, const void *a3)
{
  *(this + 28) = 0;
  *(this + 60) = 0x25800000000;
  if (qword_100456808 != -1)
  {
    sub_1002D5800();
  }

  v4 = qword_100456810;
  v5 = os_log_type_enabled(qword_100456810, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    v23 = 134217984;
    v24 = 660000000;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "kExpirationDuration %llu", &v23, 0xCu);
  }

  MaxCollectionTimeInSecondsConfig = CSAOPSvc::Reading::getMaxCollectionTimeInSecondsConfig(v5);
  if (qword_100456808 != -1)
  {
    sub_1002D5814();
  }

  v7 = qword_100456810;
  if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_DEBUG))
  {
    v23 = 67109120;
    LODWORD(v24) = MaxCollectionTimeInSecondsConfig;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "configuring collection to be %d seconds", &v23, 8u);
  }

  *(this + 17) = MaxCollectionTimeInSecondsConfig + 2;
  v8 = +[CSPower sharedInstance];
  v9 = *(this + 6);
  v10 = *(v9 + 1040);
  *(v9 + 1040) = v8;

  [*(*(this + 6) + 1040) createPowerAssertion:@"Opening Fastpaths"];
  [*(*(this + 6) + 1040) powerlogActivity:5 event:1 isActive:CFAbsoluteTimeGetCurrent()];
  *(*(this + 6) + 1051) = 0;
  if (qword_100456808 != -1)
  {
    sub_1002D5814();
  }

  v11 = qword_100456810;
  if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(*(this + 6) + 32);
    v23 = 134217984;
    v24 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "opening fastpaths device %p", &v23, 0xCu);
  }

  CSAOPSvc::openFastpaths(*(this + 6), *(*(this + 6) + 32));
  v13 = *([*(*(this + 6) + 40) c_struct] + 64) == 0;
  v14 = +[CSPermissions sharedInstance];
  v15 = v14;
  if (v13)
  {
    v16 = [v14 isAuthorizedToCollectData];
  }

  else
  {
    v16 = [v14 isAuthorizedToCollectDataIgneous];
  }

  *(this + 72) = v16;

  v17 = +[CSPlatformInfo sharedInstance];
  v18 = [v17 isInternalInstall];

  if (v18)
  {
    *(this + 72) |= *([*(*(this + 6) + 40) c_struct] + 46) != 0;
  }

  if (qword_100456808 != -1)
  {
    sub_1002D5814();
  }

  v19 = qword_100456810;
  if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_DEBUG))
  {
    v20 = *(this + 72);
    v23 = 67109120;
    LODWORD(v24) = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "_authorizedToCollectData %d", &v23, 8u);
  }

  CSAOPSvc::resetFastpaths(*(this + 6));
  [*(*(this + 6) + 1072) reset];
  if (qword_100456808 != -1)
  {
    sub_1002D5814();
  }

  v21 = qword_100456810;
  if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v23) = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Scheduling fastpath periodic check", &v23, 2u);
  }

  return [*(this + 10) setNextFireDelay:0.0 interval:1.0];
}

void CSAOPSvc::openFastpaths(void *a1, void *a2)
{
  v3 = a2;
  if (qword_100456808 != -1)
  {
    sub_1002D5800();
  }

  *parent = 0;
  v4 = qword_100456810;
  if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "opening fastpaths", buf, 2u);
  }

  ParentEntry = IORegistryEntryGetParentEntry([v3 service], "IOService", &parent[1]);
  if (ParentEntry)
  {
    if (qword_100456808 != -1)
    {
      sub_1002D5814();
    }

    v6 = qword_100456810;
    if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109120;
      *&buf[4] = ParentEntry;
      v7 = "IORegistryEntryGetParentEntry failed 0x%0x";
LABEL_15:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, v7, buf, 8u);
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  ChildIterator = IORegistryEntryGetChildIterator(parent[1], "IOService", parent);
  if (!ChildIterator)
  {
    v9 = IOIteratorNext(parent[0]);
    if (!v9)
    {
      goto LABEL_16;
    }

    while (1)
    {
      v10 = IOObjectCopyClass(v9);
      if (CFEqual(@"AppleSPUFastpathInterface", v10))
      {
        CFRelease(v10);
        child = 0;
        ChildEntry = IORegistryEntryGetChildEntry(v9, "IOService", &child);
        if (!ChildEntry)
        {
          v13 = IOObjectCopyClass(child);
          if (!CFEqual(v13, @"AppleSPUFastpathDriver"))
          {
            if (qword_100456808 != -1)
            {
              sub_1002D5814();
            }

            v21 = qword_100456810;
            if (!os_log_type_enabled(qword_100456810, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_118;
            }

            *buf = 0;
            v16 = buf;
            v17 = v21;
            v18 = OS_LOG_TYPE_FAULT;
            v19 = "unexpected child class";
            v20 = 2;
            goto LABEL_117;
          }

          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          *buf = 0u;
          v54 = 0u;
          Name = IORegistryEntryGetName(child, buf);
          if (Name)
          {
            if (qword_100456808 != -1)
            {
              sub_1002D5814();
            }

            v15 = qword_100456810;
            if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_FAULT))
            {
              *__s1 = 67109120;
              *&__s1[4] = Name;
              v16 = __s1;
              v17 = v15;
              v18 = OS_LOG_TYPE_FAULT;
              v19 = "IORegistryEntryGetName failed 0x%0x";
              v20 = 8;
              goto LABEL_117;
            }

LABEL_118:
            if (v13)
            {
              CFRelease(v13);
            }

            IOObjectRelease(child);
            goto LABEL_121;
          }

          sub_10029F5A0(__s1, "Acc800Fp");
          v22 = strlen(buf);
          if ((v52 & 0x8000000000000000) == 0)
          {
            if (v22 == v52 && !memcmp(__s1, buf, v22))
            {
              goto LABEL_42;
            }

            goto LABEL_44;
          }

          if (v22 != *&__s1[8])
          {
            operator delete(*__s1);
            goto LABEL_44;
          }

          if (v22 == -1)
          {
            sub_1002D51E8();
          }

          v23 = *__s1;
          v24 = memcmp(*__s1, buf, v22);
          operator delete(v23);
          if (!v24)
          {
LABEL_42:
            v25 = 0;
            v26 = (a1 + 34);
LABEL_107:
            if (*(v26 + 2))
            {
              if (qword_100456808 != -1)
              {
                sub_1002D5814();
              }

              v45 = qword_100456810;
              if (!os_log_type_enabled(qword_100456810, OS_LOG_TYPE_INFO))
              {
                goto LABEL_118;
              }

              *__s1 = 136315138;
              *&__s1[4] = buf;
              v16 = __s1;
              v17 = v45;
              v18 = OS_LOG_TYPE_INFO;
              v19 = "Fastpath %s already opened.";
              v20 = 12;
            }

            else
            {
              v46 = CSFastpathGlue::open(v26, v25, child);
              if (!v46)
              {
                goto LABEL_118;
              }

              if (qword_100456808 != -1)
              {
                sub_1002D5814();
              }

              v47 = qword_100456810;
              if (!os_log_type_enabled(qword_100456810, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_118;
              }

              *__s1 = 136315394;
              *&__s1[4] = buf;
              *&__s1[12] = 1024;
              *&__s1[14] = v46;
              v16 = __s1;
              v17 = v47;
              v18 = OS_LOG_TYPE_ERROR;
              v19 = "Failed to open %s, error 0x%x";
              v20 = 18;
            }

LABEL_117:
            _os_log_impl(&_mh_execute_header, v17, v18, v19, v16, v20);
            goto LABEL_118;
          }

LABEL_44:
          sub_10029F5A0(__s1, "Acc100Fp");
          v27 = strlen(buf);
          if ((v52 & 0x8000000000000000) != 0)
          {
            if (v27 == *&__s1[8])
            {
              if (v27 == -1)
              {
                sub_1002D51E8();
              }

              v28 = *__s1;
              v29 = memcmp(*__s1, buf, v27);
              operator delete(v28);
              if (!v29)
              {
                goto LABEL_51;
              }
            }

            else
            {
              operator delete(*__s1);
            }
          }

          else if (v27 == v52 && !memcmp(__s1, buf, v27))
          {
LABEL_51:
            v25 = 7;
            v26 = (a1 + 76);
            goto LABEL_107;
          }

          sub_10029F5A0(__s1, "HgAccFp");
          v30 = strlen(buf);
          if ((v52 & 0x8000000000000000) != 0)
          {
            if (v30 == *&__s1[8])
            {
              if (v30 == -1)
              {
                sub_1002D51E8();
              }

              v31 = *__s1;
              v32 = memcmp(*__s1, buf, v30);
              operator delete(v31);
              if (!v32)
              {
                goto LABEL_60;
              }
            }

            else
            {
              operator delete(*__s1);
            }
          }

          else if (v30 == v52 && !memcmp(__s1, buf, v30))
          {
LABEL_60:
            v25 = 5;
            v26 = (a1 + 64);
            goto LABEL_107;
          }

          sub_10029F5A0(__s1, "DmFp");
          v33 = strlen(buf);
          if ((v52 & 0x8000000000000000) != 0)
          {
            if (v33 == *&__s1[8])
            {
              if (v33 == -1)
              {
                sub_1002D51E8();
              }

              v34 = *__s1;
              v35 = memcmp(*__s1, buf, v33);
              operator delete(v34);
              if (!v35)
              {
                goto LABEL_69;
              }
            }

            else
            {
              operator delete(*__s1);
            }
          }

          else if (v33 == v52 && !memcmp(__s1, buf, v33))
          {
LABEL_69:
            v25 = 1;
            v26 = (a1 + 40);
            goto LABEL_107;
          }

          sub_10029F5A0(__s1, "PressureFp");
          v36 = sub_1002D3AF4(__s1, buf);
          if (v52 < 0)
          {
            operator delete(*__s1);
          }

          if (v36)
          {
            v25 = 2;
            v26 = (a1 + 46);
          }

          else
          {
            sub_10029F5A0(__s1, "GpsFp");
            v37 = sub_1002D3AF4(__s1, buf);
            if (v52 < 0)
            {
              operator delete(*__s1);
            }

            if (v37)
            {
              v25 = 3;
              v26 = (a1 + 52);
            }

            else
            {
              sub_10029F5A0(__s1, "RmsFp");
              v38 = sub_1002D3AF4(__s1, buf);
              if (v52 < 0)
              {
                operator delete(*__s1);
              }

              if (v38)
              {
                v25 = 4;
                v26 = (a1 + 58);
              }

              else
              {
                sub_10029F5A0(__s1, "StepsFp");
                v39 = sub_1002D3AF4(__s1, buf);
                if (v52 < 0)
                {
                  operator delete(*__s1);
                }

                if (v39)
                {
                  v25 = 6;
                  v26 = (a1 + 70);
                }

                else
                {
                  sub_10029F5A0(__s1, "RoadsFp");
                  v40 = sub_1002D3AF4(__s1, buf);
                  if (v52 < 0)
                  {
                    operator delete(*__s1);
                  }

                  if (v40)
                  {
                    v25 = 8;
                    v26 = (a1 + 82);
                  }

                  else
                  {
                    sub_10029F5A0(__s1, "AudioFp");
                    v41 = sub_1002D3AF4(__s1, buf);
                    if (v52 < 0)
                    {
                      operator delete(*__s1);
                    }

                    if (v41)
                    {
                      v25 = 9;
                      v26 = (a1 + 88);
                    }

                    else
                    {
                      sub_10029F5A0(__s1, "ActivityFp");
                      v42 = sub_1002D3AF4(__s1, buf);
                      if (v52 < 0)
                      {
                        operator delete(*__s1);
                      }

                      if (v42)
                      {
                        v25 = 10;
                        v26 = (a1 + 94);
                      }

                      else
                      {
                        sub_10029F5A0(__s1, "HertzFp");
                        v43 = sub_1002D3AF4(__s1, buf);
                        if (v52 < 0)
                        {
                          operator delete(*__s1);
                        }

                        if (v43)
                        {
                          v25 = 11;
                          v26 = (a1 + 100);
                        }

                        else
                        {
                          sub_10029F5A0(__s1, "MagFp");
                          v44 = sub_1002D3AF4(__s1, buf);
                          if (v52 < 0)
                          {
                            operator delete(*__s1);
                          }

                          if (!v44)
                          {
                            v48 = sub_1002CDB10();
                            if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                            {
                              *__s1 = 136315138;
                              *&__s1[4] = buf;
                              _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "Unexpected AppleSPUFastpathDriver %s", __s1, 0xCu);
                            }

                            goto LABEL_118;
                          }

                          v25 = 12;
                          v26 = (a1 + 106);
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          goto LABEL_107;
        }

        if (qword_100456808 != -1)
        {
          sub_1002D5814();
        }

        v12 = qword_100456810;
        if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_FAULT))
        {
          *buf = 67109120;
          *&buf[4] = ChildEntry;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "IORegistryEntryGetChildEntry failed for AppleSPUFastpathInterface 0x%0x", buf, 8u);
        }
      }

      else
      {
        CFRelease(v10);
      }

LABEL_121:
      if (!IOObjectRelease(v9))
      {
        v9 = IOIteratorNext(parent[0]);
        if (!v9)
        {
          goto LABEL_16;
        }
      }
    }
  }

  if (qword_100456808 != -1)
  {
    sub_1002D5814();
  }

  v6 = qword_100456810;
  if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_FAULT))
  {
    *buf = 67109120;
    *&buf[4] = ChildIterator;
    v7 = "IORegistryEntryGetChildIterator failed 0x%0x";
    goto LABEL_15;
  }

LABEL_16:
}

void CSAOPSvc::resetFastpaths(CSAOPSvc *this)
{
  if (qword_100456808 != -1)
  {
    sub_1002D5800();
  }

  v2 = qword_100456810;
  if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "reset fastpaths", v5, 2u);
  }

  v3 = this + 272;
  for (i = -5; i != 8; ++i)
  {
    if (i)
    {
      CSFastpathGlue::reset(v3);
    }

    v3 += 48;
  }
}

id CSAOPSvc::Reading::exit(id *this, unint64_t a2, const void *a3)
{
  [this[10] setNextFireDelay:a3 interval:{1.79769313e308, 1.79769313e308}];
  if (qword_1004567E8 != -1)
  {
    sub_1002D583C();
  }

  v4 = qword_1004567F0;
  if (os_log_type_enabled(qword_1004567F0, OS_LOG_TYPE_DEBUG))
  {
    v7[0] = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Notifying streaming timeout", v7, 2u);
  }

  result = [*(this[6] + 133) reset];
  v6 = this[6];
  if (v6[1000] == 1)
  {
    v6[1000] = 0;
  }

  return result;
}

void CSAOPSvc::restartSessionInternal(id *this)
{
  if (!CSHSM::isIn(this, (this + 15)))
  {
    sub_1002D5850();
  }

  if (qword_100456808 != -1)
  {
    sub_1002D5800();
  }

  v2 = qword_100456810;
  if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "forcefully restarting the session; any recordings will be discarded", v5, 2u);
  }

  *(this + 45) = 0;
  [this[126] stopAndKeep:0];
  v3 = this[126];
  this[126] = 0;

  CSAOPSvc::resetFastpaths(this);
  [this[134] reset];
  *(this + 176) = 0;
  [this[133] reset];
  v4 = [this[5] timestamp];
  if (v4 && (this[125] & 1) == 0)
  {
    this[124] = v4;
    *(this + 1000) = 1;
  }

  [this[133] addObject:this[5]];
  *(this + 1050) = 0;
  objc_storeStrong(this + 126, this[127]);
}

void CSAOPSvc::wasLendedCompanionPunchThru(CSAOPSvc *this)
{
  if (qword_100456808 != -1)
  {
    sub_1002D5800();
  }

  v2 = qword_100456810;
  if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "was lended punch thru", v3, 2u);
  }

  *(this + 1051) = 1;
}

void CSAOPSvc::wasRetractedCompanionPunchThru(CSAOPSvc *this)
{
  if (qword_100456808 != -1)
  {
    sub_1002D5800();
  }

  v2 = qword_100456810;
  if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "was retracted punch thru", v3, 2u);
  }

  *(this + 1051) = 0;
}

uint64_t CSAOPSvc::punchThruCollectionShouldBeAborted(CSAOPSvc *this)
{
  if (qword_100456808 != -1)
  {
    sub_1002D5800();
  }

  v2 = qword_100456810;
  if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(this + 1051);
    v4 = *(this + 1052);
    v7[0] = 67109376;
    v7[1] = v3;
    v8 = 1024;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "lended punch thru %d force stopped %d", v7, 0xEu);
  }

  if (*(this + 1051) == 1)
  {
    v5 = *(this + 1052);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void CSAOPSvc::forceStopCollection(CSAOPSvc *this)
{
  if (*(this + 1051) == 1)
  {
    if (qword_100456808 != -1)
    {
      sub_1002D5800();
    }

    v2 = qword_100456810;
    if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "refusing to stop the collection, the recording was lent a punch through by the companion", buf, 2u);
    }

    *(this + 1052) = 1;
  }

  else
  {
    if (qword_100456808 != -1)
    {
      sub_1002D5800();
    }

    v3 = qword_100456810;
    if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_DEBUG))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "forcefully stopping the collection", v5, 2u);
    }

    *(this + 47) = 0;
    [*(this + 126) stopAndKeep:0];
    v4 = *(this + 126);
    *(this + 126) = 0;

    [*(this + 2) abortSession];
  }
}

CSAOPSvc::Reading *CSAOPSvc::Reading::trigger(CSAOPSvc::Reading *this, uint64_t a2, const void *a3)
{
  v3 = this;
  if (a2 == 3)
  {
    if (qword_100456808 != -1)
    {
      sub_1002D5800();
    }

    v30 = qword_100456810;
    if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v32) = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "aop timeout command", &v32, 2u);
    }

    *(v3 + 28) = 257;
    return (*(v3 + 6) + 208);
  }

  if (a2 == 2)
  {
    v22 = *(this + 6);
    if (*(v22 + 1050) == 1)
    {
      CSAOPSvc::restartSessionInternal(v22);
    }

    v23 = *(v3 + 15) + 1;
    *(v3 + 15) = v23;
    if (v23 >= *(v3 + 17) || (*(v3 + 72) & 1) == 0)
    {
      *(v3 + 57) = 1;
    }

    if (qword_100456808 != -1)
    {
      sub_1002D5800();
    }

    v24 = qword_100456810;
    if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_DEBUG))
    {
      v25 = *(v3 + 15);
      v26 = *(v3 + 16);
      v27 = *(v3 + 17);
      v28 = *(v3 + 56);
      v29 = *(v3 + 57);
      v32 = 67110144;
      *v33 = v25;
      *&v33[4] = 1024;
      *&v33[6] = v26;
      *v34 = 1024;
      *&v34[2] = v27;
      *v35 = 1024;
      *&v35[2] = v28;
      LOWORD(v36) = 1024;
      *(&v36 + 2) = v29;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "_Nsec %d _NsecToRead %d _NsecToCollect %d _doneRunningAlgs %d _doneCollecting %d", &v32, 0x20u);
    }

    if (*(v3 + 15) < *(v3 + 16) && (*(v3 + 57) != 1 || *(v3 + 56) != 1))
    {
      CSAOPSvc::readFastpaths(*(v3 + 6));
      CSAOPSvc::readAPEventsBuffer(*(v3 + 6));
      CSAOPSvc::dispatchSamples(*(v3 + 6), (*(v3 + 57) & 1) == 0);
      return v3;
    }

    return (*(v3 + 6) + 208);
  }

  if (a2 != 1)
  {
    return 0;
  }

  v4 = *(this + 6);
  if (!*(v4 + 40))
  {
    sub_1002D5984();
  }

  [*(v4 + 1064) addObject:?];
  if (qword_100456808 != -1)
  {
    sub_1002D5800();
  }

  v5 = qword_100456810;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(*(v3 + 6) + 40) timestamp];
    v7 = *([*(*(v3 + 6) + 40) c_struct] + 1);
    _H8 = *([*(*(v3 + 6) + 40) c_struct] + 49);
    _H9 = *([*(*(v3 + 6) + 40) c_struct] + 50);
    _H10 = *([*(*(v3 + 6) + 40) c_struct] + 51);
    v11 = [*(*(v3 + 6) + 40) c_struct];
    __asm { FCVT            D0, H8 }

    v17 = v11[104];
    __asm
    {
      FCVT            D1, H9
      FCVT            D3, H10
    }

    v32 = 134350592;
    *v33 = v6;
    *&v33[8] = 1026;
    *v34 = v7;
    *&v34[4] = 1026;
    *v35 = 112;
    *&v35[4] = 2050;
    v36 = _D0;
    v37 = 2050;
    v38 = _D1;
    v39 = 2050;
    v40 = _D3;
    v41 = 1026;
    v42 = v17;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "trigger %{public}llu path %{public}d size %{public}d metrics %{public}f,%{public}f,%{public}f,%{public}d", &v32, 0x3Cu);
  }

  if ((*([*(*(v3 + 6) + 40) c_struct] + 1) & 0x10) == 0 && (*(objc_msgSend(*(*(v3 + 6) + 40), "c_struct") + 46) & 0x10) == 0)
  {
    *(v3 + 16) = *(v3 + 15) + 600;
    if (qword_100456808 != -1)
    {
      sub_1002D5814();
    }

    v20 = qword_100456810;
    if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_INFO))
    {
      v21 = *(v3 + 16);
      v32 = 67109120;
      *v33 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Extend reading to %u sec", &v32, 8u);
    }

    *(v3 + 56) = 0;
    [*(*(v3 + 6) + 16) triggered:*(*(v3 + 6) + 40)];
  }

  return v3;
}

void CSAOPSvc::readFastpaths(CSAOPSvc *this)
{
  v1 = __chkstk_darwin(this);
  v180 = v1;
  if (v1[102])
  {
    for (i = 0; i != 240; i += 8)
    {
      v3 = &v188[i];
      *(v3 + 2) = 0;
      *v3 = 0;
    }

    v4 = CSFastpathGlue::read((v1 + 100), v188, 30);
    v1 = v180;
    if (v4)
    {
      v5 = *&v188[8 * v4 - 8];
      if (qword_100456808 != -1)
      {
        sub_1002D5814();
      }

      v6 = qword_100456810;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109632;
        *v186 = v4;
        *&v186[4] = 2048;
        *&v186[6] = *v188;
        *&v186[14] = 2048;
        *&v186[16] = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%u HzSamples %llu %llu", buf, 0x1Cu);
      }

      v7 = v4;
      v8 = &v188[5] + 1;
      v1 = v180;
      do
      {
        if ((*(v8 - 11) + 30000000) >= v1[123])
        {
          v9 = [[CSSPUHertzSample alloc] initWithTimestamp:*(v8 - 11) dramDurationMs:*(v8 - 3) vehicularFlags:*(v8 - 1) hapticsOn:*v8];
          [v180[133] addObject:v9];

          v1 = v180;
        }

        v8 += 16;
        --v7;
      }

      while (v7);
    }
  }

  if (v1[36])
  {
    v10 = CSFastpathGlue::read((v1 + 34), v188, 2400);
    v1 = v180;
    if (v10)
    {
      if (qword_100456808 != -1)
      {
        sub_1002D5814();
      }

      v11 = qword_100456810;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109376;
        *v186 = v10;
        *&v186[4] = 2048;
        *&v186[6] = *&v188[6];
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%u acc800 %llu", buf, 0x12u);
      }

      v12 = v10;
      v13 = &v188[6];
      v1 = v180;
      do
      {
        if ((*v13 + 3000000) >= v1[123])
        {
          v14 = [CSSPUAccel800 alloc];
          LODWORD(v15) = *(v13 - 3);
          LODWORD(v16) = *(v13 - 2);
          LODWORD(v17) = *(v13 - 1);
          v18 = [(CSSPUAccel800 *)v14 initWithTimestamp:*v13 x:v15 y:v16 z:v17];
          [v180[133] addObject:v18];

          v1 = v180;
        }

        v13 = (v13 + 20);
        --v12;
      }

      while (v12);
    }
  }

  if (v1[78])
  {
    v19 = CSFastpathGlue::read((v1 + 76), v188, 3000);
    v1 = v180;
    if (v19)
    {
      if (qword_100456808 != -1)
      {
        sub_1002D5814();
      }

      v20 = qword_100456810;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109376;
        *v186 = v19;
        *&v186[4] = 2048;
        *&v186[6] = *&v188[6];
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%u acc100 %llu", buf, 0x12u);
      }

      v21 = v19;
      v22 = &v188[6];
      v1 = v180;
      do
      {
        if ((*v22 + 30000000) >= v1[123])
        {
          v23 = [CSSPUAccel alloc];
          LODWORD(v24) = *(v22 - 3);
          LODWORD(v25) = *(v22 - 2);
          LODWORD(v26) = *(v22 - 1);
          v27 = [(CSSPUTriad *)v23 initWithTimestamp:*v22 x:v24 y:v25 z:v26];
          [v180[133] addObject:v27];

          v1 = v180;
        }

        v22 = (v22 + 20);
        --v21;
      }

      while (v21);
    }
  }

  if (v1[66])
  {
    v28 = CSFastpathGlue::read((v1 + 64), v188, 800);
    if (v28)
    {
      if (qword_100456808 != -1)
      {
        sub_1002D5814();
      }

      v29 = qword_100456810;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109376;
        *v186 = v28;
        *&v186[4] = 2048;
        *&v186[6] = *&v188[3];
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "%u hgacc %llu", buf, 0x12u);
      }

      v30 = v28;
      v31 = &v188[3];
      v32 = v180;
      do
      {
        if ((*v31 + 3000000) >= v32[123])
        {
          v33 = [CSSPUHgAccel alloc];
          *&v34 = vcvts_n_f32_s32(*(v31 - 3), 5uLL);
          *&v35 = vcvts_n_f32_s32(*(v31 - 2), 5uLL);
          *&v36 = vcvts_n_f32_s32(*(v31 - 1), 5uLL);
          v37 = [(CSSPUHgAccel *)v33 initWithTimestamp:*v31 x:v34 y:v35 z:v36];
          [v180[133] addObject:v37];

          v32 = v180;
        }

        v31 = (v31 + 14);
        --v30;
      }

      while (v30);
    }
  }

  v38 = +[CSPlatformInfo sharedInstance];
  v39 = [v38 isExtendedPretriggerMagDevice];

  v40 = v180;
  if (v39 && v180[108])
  {
    operator new[]();
  }

  if (v180[42])
  {
    operator new[]();
  }

  if (v180[60])
  {
    v41 = CSFastpathGlue::read((v180 + 58), v188, 3000);
    v40 = v180;
    if (v41)
    {
      if (qword_100456808 != -1)
      {
        sub_1002D5814();
      }

      v42 = qword_100456810;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109632;
        *v186 = v41;
        *&v186[4] = 1024;
        *&v186[6] = *&v188[4];
        *&v186[10] = 2048;
        *&v186[12] = *&v188[6];
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "%u SPL, sn = 0x%08x, %g", buf, 0x18u);
      }

      v43 = v41;
      v44 = &v188[6];
      v40 = v180;
      do
      {
        v45 = *(v44 - 1);
        if (*(v40 + 976) == v45 >> 28)
        {
          v46 = v40[123];
          v47 = 1000 * ((v45 & 0xFFFFFFF) - *(v40 + 245));
          if (-1000 * ((v45 & 0xFFFFFFF) - *(v40 + 245)) - 3000001 >= v46)
          {
            v48 = [CSSPUSpl alloc];
            *&v49 = sqrtf(*v44);
            v50 = [(CSSPUSpl *)v48 initWithTimestamp:v47 + v46 rms:v49];
            [v180[133] addObject:v50];

            v40 = v180;
          }
        }

        v44 += 4;
        --v43;
      }

      while (v43);
    }
  }

  if (v40[48])
  {
    v51 = CSFastpathGlue::read((v40 + 46), v188, 360);
    v40 = v180;
    if (v51)
    {
      if (qword_100456808 != -1)
      {
        sub_1002D5814();
      }

      v52 = qword_100456810;
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109632;
        *v186 = v51;
        *&v186[4] = 2048;
        *&v186[6] = *v188;
        *&v186[14] = 2048;
        *&v186[16] = *&v188[4];
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEBUG, "%u pressure, batch[0] = %llu %f", buf, 0x1Cu);
      }

      v53 = v51;
      v54 = v188;
      v40 = v180;
      do
      {
        if ((*v54 + 3000000) >= v40[123])
        {
          v55 = [CSSPUPressure alloc];
          LODWORD(v56) = *(v54 + 2);
          LODWORD(v57) = *(v54 + 3);
          v58 = [(CSSPUPressure *)v55 initWithTimestamp:*v54 pressure:v56 temperature:v57];
          [v180[133] addObject:v58];

          v40 = v180;
        }

        v54 += 8;
        --v53;
      }

      while (v53);
    }
  }

  if (v40[54])
  {
    for (j = 12; j != 972; j += 32)
    {
      *&v188[j] = -1;
    }

    v60 = CSFastpathGlue::read((v40 + 52), v188, 30);
    if (v60)
    {
      v61 = v60;
      v62 = &v190 + 4;
      do
      {
        if ((*(v62 + 1) + 30000000) >= v180[123])
        {
          if (qword_100456808 != -1)
          {
            sub_1002D5814();
          }

          v63 = qword_100456810;
          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
          {
            v64 = *(v62 + 1);
            v65 = *(v62 - 8);
            *buf = 134218240;
            *v186 = v64;
            *&v186[8] = 2048;
            *&v186[10] = v65;
            _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEBUG, "GPS, %llu %f...", buf, 0x16u);
          }

          v66 = [CSSPUGps alloc];
          LODWORD(v67) = *(v62 - 8);
          LODWORD(v68) = *(v62 - 7);
          LODWORD(v69) = *(v62 - 6);
          LODWORD(v70) = *(v62 - 5);
          LODWORD(v71) = *(v62 - 4);
          LODWORD(v72) = *(v62 - 3);
          v73 = *(v62 - 1);
          v74 = *v62;
          LODWORD(v75) = *(v62 + 4);
          v76 = *(v62 + 5);
          v77 = *(v62 + 7);
          LODWORD(v176) = *(v62 + 6);
          v78 = [CSSPUGps initWithTimestamp:v66 doubleTS:"initWithTimestamp:doubleTS:speedMS:speedAccuracyMS:courseDeg:courseAccuracyDeg:latitude:longitude:wayForm:roadClass:signalEnvironment:horizontalAccuracy:demNumContiguousFlatPoints:demConfidence:type:" speedMS:*(v62 + 1) speedAccuracyMS:v67 courseDeg:v68 courseAccuracyDeg:v69 latitude:v70 longitude:v71 wayForm:v72 roadClass:v75 signalEnvironment:v176 horizontalAccuracy:? demNumContiguousFlatPoints:? demConfidence:? type:?];
          [v180[133] addObject:v78];
        }

        v62 += 64;
        --v61;
      }

      while (v61);
    }

    v40 = v180;
  }

  if (v40[72])
  {
    v79 = CSFastpathGlue::read((v40 + 70), v188, 4);
    v40 = v180;
    if (v79)
    {
      if (qword_100456808 != -1)
      {
        sub_1002D5814();
      }

      v80 = qword_100456810;
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67110400;
        *v186 = v79;
        *&v186[4] = 2048;
        *&v186[6] = *v188;
        *&v186[14] = 1024;
        *&v186[16] = *&v188[4];
        *&v186[20] = 1024;
        *&v186[22] = *&v188[6];
        *&v186[26] = 2048;
        *&v186[28] = *&v188[8];
        *v187 = 1024;
        *&v187[2] = LOBYTE(v188[10]);
        _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEBUG, "%u steps, batch[0] = %llu %i %i %f %d", buf, 0x2Eu);
      }

      v81 = v79;
      v82 = v188;
      v40 = v180;
      do
      {
        if ((*v82 + 12800000) >= v40[123])
        {
          v83 = [CSSPUSteps alloc];
          LODWORD(v84) = *(v82 + 4);
          v85 = [(CSSPUSteps *)v83 initWithTimestamp:*v82 stepCount:*(v82 + 2) deltaSteps:*(v82 + 3) currentCadence:*(v82 + 20) pedometerArmConstrainedState:v84];
          [v180[133] addObject:v85];

          v40 = v180;
        }

        v82 += 12;
        --v81;
      }

      while (v81);
    }
  }

  if (v40[84])
  {
    v86 = CSFastpathGlue::read((v40 + 82), v188, 1);
    if (v86)
    {
      v87 = 0;
      v88 = 96 * v86;
      do
      {
        v89 = v180;
        if ((*v188 + 3000000) >= v180[123])
        {
          if (qword_100456808 != -1)
          {
            sub_1002D5814();
          }

          v92 = qword_100456810;
          if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
          {
            v93 = *&v188[v87 / 2 + 4];
            *buf = 134218240;
            *v186 = *v188;
            *&v186[8] = 2048;
            *&v186[10] = v93;
            _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEBUG, "Roads, %llu %f...", buf, 0x16u);
          }

          v94 = [CSSPURoadInfo alloc];
          v95 = *v188;
          v96 = &v188[v87 / 2];
          v97 = *&v188[v87 / 2 + 4];
          v98 = LOBYTE(v188[v87 / 2 + 6]);
          v99 = *&v188[v87 / 2 + 8];
          v100 = v188[v87 / 2 + 10];
          v101 = [[NSString alloc] initWithBytes:&v188[v87 / 2 + 11] length:strnlen(&v188[v87 / 2 + 11] encoding:{0x40uLL), 1}];
          LODWORD(v102) = v99;
          v90 = [(CSSPURoadInfo *)v94 initWithTimestamp:v95 distanceToNearestRoad:v98 roadClass:v100 horizontalAccuracy:v101 numRoadFeaturesEvaluated:*&v192[v87 + 32] GEOHandlerErrorDomain:v97 GEOHandlerErrorCode:v102];

          if (qword_100456808 != -1)
          {
            sub_1002D5814();
          }

          v103 = qword_100456810;
          if (os_log_type_enabled(v103, OS_LOG_TYPE_INFO))
          {
            v104 = v96[2];
            v105 = *(v96 + 12);
            v106 = v96[4];
            v107 = *(v96 + 10);
            v108 = *&v192[v87 + 32];
            *buf = 134219522;
            *v186 = *v188;
            *&v186[8] = 2048;
            *&v186[10] = v104;
            *&v186[18] = 1024;
            *&v186[20] = v105;
            *&v186[24] = 2048;
            *&v186[26] = v106;
            *&v186[34] = 1024;
            *v187 = v107;
            *&v187[4] = 2080;
            *&v187[6] = &v188[v87 / 2 + 11];
            *&v187[14] = 2048;
            *&v187[16] = v108;
            _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_INFO, "road info %llu %f %d %f %d %s %ld", buf, 0x40u);
          }

          [v180[133] addObject:v90];
        }

        else
        {
          if (qword_100456808 != -1)
          {
            sub_1002D5814();
            v89 = v180;
          }

          v90 = qword_100456810;
          if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
          {
            v91 = v89[123];
            *buf = 134218496;
            *v186 = *v188;
            *&v186[8] = 2048;
            *&v186[10] = v91;
            *&v186[18] = 2048;
            *&v186[20] = (v91 - *v188 - 3000000) / 1000000.0;
            _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEBUG, "DROPPED Roads: %llu < %llu by %f seconds", buf, 0x20u);
          }
        }

        v87 += 96;
      }

      while (v88 != v87);
    }

    v40 = v180;
  }

  if (v40[125])
  {
    v109 = 1;
  }

  else
  {
    if (qword_100456808 != -1)
    {
      sub_1002D5814();
    }

    v110 = qword_100456810;
    if (os_log_type_enabled(v110, OS_LOG_TYPE_FAULT))
    {
      v188[0] = 0;
      _os_log_impl(&_mh_execute_header, v110, OS_LOG_TYPE_FAULT, "missing _firstTriggerTimestamp", v188, 2u);
    }

    v40 = v180;
    v109 = *(v180 + 1000);
  }

  v111 = (v109 & 1) == 0;
  v112 = 123;
  if (!v111)
  {
    v112 = 124;
  }

  v178 = v40[v112];
  v113 = +[CSPlatformInfo sharedInstance];
  v114 = [v113 isMDevice];

  v115 = v180;
  if (v114)
  {
    if (v180[90])
    {
      for (k = 0; k != 248; k += 124)
      {
        v117 = &v188[k];
        *v117 = 0;
        *(v117 + 2) = 0;
        *(v117 + 22) = 0;
        *(v117 + 44) = 0;
        *(v117 + 21) = 0;
        *(v117 + 2) = 0;
        *(v117 + 3) = 0;
        *(v117 + 8) = 0;
        *(v117 + 5) = 0;
        *(v117 + 6) = 0;
        *(v117 + 14) = 0;
        *(v117 + 8) = 0;
        *(v117 + 9) = 0;
        *(v117 + 80) = 0;
        *(v117 + 12) = 0;
        *(v117 + 13) = 0;
        *(v117 + 28) = 0;
        *(v117 + 34) = 0;
        *(v117 + 15) = 0;
        *(v117 + 16) = 0;
        *(v117 + 18) = 0;
        *(v117 + 19) = 0;
        *(v117 + 160) = 0;
        *(v117 + 92) = 0uLL;
        *(v117 + 100) = 0uLL;
        *(v117 + 108) = 0uLL;
        *(v117 + 114) = 0uLL;
      }

      v118 = CSFastpathGlue::read((v180 + 88), v188, 2);
      if (v118)
      {
        v119 = v178 - 3000000;
        v120 = v118;
        v121 = v188;
        p_vtable = GPBRootObject.vtable;
        v123 = GPBRootObject.vtable;
        v124 = &_mh_execute_header;
        p_info = (&OBJC_METACLASS___CSSPUMag + 32);
        do
        {
          v126 = p_vtable[257];
          if (*v121 >= v119)
          {
            if (v126 != -1)
            {
              sub_1002D5814();
            }

            v130 = v123[258];
            if (os_log_type_enabled(v130, OS_LOG_TYPE_DEBUG))
            {
              v131 = v124;
              v132 = *v121;
              v133 = *(v121 + 44);
              v135 = *(v121 + 25);
              v134 = *(v121 + 26);
              v137 = *(v121 + 27);
              v136 = *(v121 + 28);
              v138 = +[CSTimeManager SPU_estimate_current_timestamp];
              *buf = 134219520;
              *v186 = v132;
              *&v186[8] = 1024;
              *&v186[10] = v133;
              *&v186[14] = 2048;
              *&v186[16] = v135;
              *&v186[24] = 2048;
              *&v186[26] = v134;
              *&v186[34] = 2048;
              *v187 = v137;
              *&v187[8] = 2048;
              *&v187[10] = v136;
              *&v187[18] = 2048;
              *&v187[20] = v138;
              v124 = v131;
              _os_log_impl(v131, v130, OS_LOG_TYPE_DEBUG, "AudioResult, %llu %d dram %llu,%llu calc %llu wr %llu now %llu", buf, 0x44u);
              p_vtable = (GPBRootObject + 24);
              v119 = v178 - 3000000;
              v123 = (GPBRootObject + 24);
              p_info = &OBJC_METACLASS___CSSPUMag.info;
            }

            v127 = [objc_alloc((p_info + 61)) initWithSPUPacketStruct:v121];
            [v180[133] addObject:v127];
          }

          else
          {
            if (v126 != -1)
            {
              sub_1002D5814();
            }

            v127 = v123[258];
            if (os_log_type_enabled(v127, OS_LOG_TYPE_DEBUG))
            {
              v128 = *v121;
              v129 = (v119 - *v121);
              *buf = 134218496;
              *v186 = v128;
              *&v186[8] = 2048;
              *&v186[10] = v178;
              *&v186[18] = 2048;
              *&v186[20] = v129 / 1000000.0;
              _os_log_impl(v124, v127, OS_LOG_TYPE_DEBUG, "DROPPED AudioResult: %llu < %llu by %f seconds", buf, 0x20u);
            }
          }

          v121 += 124;
          --v120;
        }

        while (v120);
      }
    }

    else
    {
      if (qword_100456808 != -1)
      {
        sub_1002D5814();
      }

      v139 = qword_100456810;
      if (os_log_type_enabled(v139, OS_LOG_TYPE_DEBUG))
      {
        v188[0] = 0;
        _os_log_impl(&_mh_execute_header, v139, OS_LOG_TYPE_DEBUG, "AudioResult glue invalid", v188, 2u);
      }
    }

    v115 = v180;
  }

  if (v115[96])
  {
    v189 = 0;
    v190 = 0;
    *v188 = 0;
    *&v188[4] = 0;
    *(&v188[6] + 1) = 0;
    v191 = 0u;
    memset(v192, 0, 28);
    v140 = CSFastpathGlue::read((v115 + 94), v188, 1);
    if (v140)
    {
      v141 = 0;
      v177 = 88 * v140;
      HIDWORD(v142) = 0;
      do
      {
        v143 = v180;
        if ((*v188 + 3000000) >= v180[123])
        {
          LODWORD(v142) = *&v188[v141 / 2 + 4];
          v146 = [NSNumber numberWithFloat:v142];
          v184[0] = v146;
          LODWORD(v147) = *&v188[v141 / 2 + 6];
          v148 = [NSNumber numberWithFloat:v147];
          v184[1] = v148;
          LODWORD(v149) = *&v188[v141 / 2 + 8];
          v150 = [NSNumber numberWithFloat:v149];
          v184[2] = v150;
          v179 = [NSArray arrayWithObjects:v184 count:3];

          LODWORD(v151) = *&v188[v141 / 2 + 12];
          v152 = [NSNumber numberWithFloat:v151];
          v183[0] = v152;
          LODWORD(v153) = *(&v190 + v141);
          v154 = [NSNumber numberWithFloat:v153];
          v183[1] = v154;
          LODWORD(v155) = *(&v190 + v141 + 4);
          v156 = [NSNumber numberWithFloat:v155];
          v183[2] = v156;
          v157 = [NSArray arrayWithObjects:v183 count:3];

          v158 = [NSNumber numberWithUnsignedShort:*&v192[v141 - 8]];
          v182[0] = v158;
          v159 = [NSNumber numberWithUnsignedShort:*&v192[v141 - 6]];
          v182[1] = v159;
          v160 = [NSNumber numberWithUnsignedShort:*&v192[v141 - 4]];
          v182[2] = v160;
          v161 = [NSNumber numberWithUnsignedShort:*&v192[v141 - 2]];
          v182[3] = v161;
          v162 = [NSNumber numberWithUnsignedShort:*&v192[v141]];
          v182[4] = v162;
          v163 = [NSArray arrayWithObjects:v182 count:5];

          v164 = [NSNumber numberWithUnsignedShort:*&v192[v141 + 2]];
          v181[0] = v164;
          v165 = [NSNumber numberWithUnsignedShort:*&v192[v141 + 4]];
          v181[1] = v165;
          v166 = [NSNumber numberWithUnsignedShort:*&v192[v141 + 6]];
          v181[2] = v166;
          v167 = [NSNumber numberWithUnsignedShort:*&v192[v141 + 8]];
          v181[3] = v167;
          v168 = [NSNumber numberWithUnsignedShort:*&v192[v141 + 10]];
          v181[4] = v168;
          v169 = [NSArray arrayWithObjects:v181 count:5];

          v170 = [CSSPUActivityPhone alloc];
          LODWORD(v171) = *&v192[v141 + 12];
          LODWORD(v172) = *&v192[v141 + 16];
          LODWORD(v173) = *&v192[v141 + 20];
          LODWORD(v174) = *&v192[v141 + 24];
          v175 = [(CSSPUActivityPhone *)v170 initWithTimestamp:*v188 armTimeImuConfidences:v179 armTimeActivityHints:LOBYTE(v188[v141 / 2 + 10]) windowAfterArmImuConfidences:v157 triggerTimeLastHighImuDrivingConfidenceTimestamp:*&v192[v141 - 16] sessionSwivelAngleDegHistogram:v163 sessionTiltAngleDegHistogram:v171 sessionImuHintPercentage:v172 sessionBtHintPercentage:v173 sessionGpsHintPercentage:v174 sessionWifiHintPercentage:v169];
          [v180[133] addObject:v175];
        }

        else
        {
          if (qword_100456808 != -1)
          {
            sub_1002D5814();
            v143 = v180;
          }

          v144 = qword_100456810;
          v179 = v144;
          if (os_log_type_enabled(v144, OS_LOG_TYPE_DEBUG))
          {
            v145 = v143[123];
            *buf = 134218496;
            *v186 = *v188;
            *&v186[8] = 2048;
            *&v186[10] = v145;
            *&v186[18] = 2048;
            *&v186[20] = (v145 - *v188 - 3000000) / 1000000.0;
            _os_log_impl(&_mh_execute_header, v144, OS_LOG_TYPE_DEBUG, "DROPPED Activity: %llu < %llu by %f seconds", buf, 0x20u);
          }
        }

        v141 += 88;
      }

      while (v177 != v141);
    }
  }
}

void CSAOPSvc::readAPEventsBuffer(id *this)
{
  v2 = [this[134] readSamples];
  [this[133] addObjectsFromArray:?];
}

void CSAOPSvc::dispatchSamples(id *this, int a2)
{
  v4 = [this[133] getNextSortedArray];
  CSAOPSvc::recordStreams(this, v4, a2);
  if ((this[22] & 1) == 0)
  {
    [this[2] feedSortedSamples:v4];
  }
}

CSAOPSvc::Done *CSAOPSvc::Done::Done(CSAOPSvc::Done *this, id *a2)
{
  v4 = CSHSM::State::State(this, "done");
  *v4 = &off_10042ED68;
  *(v4 + 6) = a2;
  v5 = [a2[6] newTimer];
  *(this + 7) = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002D12F8;
  v7[3] = &unk_100423460;
  v7[4] = this;
  [v5 setHandler:v7];
  return this;
}

void sub_1002D12B0(_Unwind_Exception *a1)
{
  *v1 = &off_100436270;
  v3 = *(v1 + 16);
  if (v3)
  {
    *(v1 + 24) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

id CSAOPSvc::Done::entry(CSAOPSvc::Done *this, unint64_t a2, const void *a3)
{
  if (qword_100456808 != -1)
  {
    sub_1002D5800();
  }

  v4 = qword_100456810;
  if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "enter the done state", v8, 2u);
  }

  CSAOPSvc::updateMetadataAtEnd(*(this + 6));
  [*(*(this + 6) + 1064) reset];
  v5 = *(this + 6);
  if (*(v5 + 1000) == 1)
  {
    *(v5 + 1000) = 0;
  }

  *(v5 + 1048) = 0;
  v6 = *(v5 + 1008);
  *(v5 + 1008) = 0;

  CSAOPSvc::stopAOPReading(*(this + 6));
  CSAOPSvc::closeFastpaths(*(this + 6));
  [*(this + 7) setNextFireDelay:1.0 interval:1.79769313e308];
  [*(*(this + 6) + 1040) releasePowerAssertion];
  [*(*(this + 6) + 1040) powerlogActivity:5 event:0 isActive:CFAbsoluteTimeGetCurrent()];
  return [*(*(this + 6) + 16) replyToXPCMessage];
}

void CSAOPSvc::updateMetadataAtEnd(CSAOPSvc *this)
{
  v2 = +[CSPlatformInfo sharedInstance];
  v63 = v2;
  if ([v2 isKappaDetectionDevice])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isKappaLoggingDevice] - 1;
  }

  v4 = *(this + 224);
  v5 = *(this + 225);
  v6 = *(this + 904);
  v7 = *(this + 905);
  v8 = *(this + 906);
  v9 = *(this + 907);
  v10 = *(this + 908);
  v11 = *(this + 115);
  v12 = *(this + 464);
  v61 = *(this + 465);
  v13 = *(this + 233);
  v14 = *(this + 234);
  v15 = *(this + 235);
  v16 = *(this + 118);
  v58 = *(this + 238);
  v59 = *(this + 956);
  v17 = *(this + 240);
  v18 = *(this + 241);
  v19 = *(this + 242);
  v55 = *(this + 973);
  v56 = *(this + 972);
  v54 = *(this + 974);
  if (v5 >= 1000)
  {
    v5 = 1000;
  }

  v57 = v5;
  v53 = *(this + 126);
  v64[0] = @"hasGPS";
  v51 = [NSNumber numberWithInt:v4];
  v65[0] = v51;
  v64[1] = @"recordingUUID";
  v52 = [*(this + 128) UUIDString];
  v65[1] = v52;
  v64[2] = @"systemReleaseType";
  v50 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v63 getSystemReleaseType]);
  v65[2] = v50;
  v64[3] = @"HW";
  v49 = [v63 getSystemModel];
  v65[3] = v49;
  v64[4] = @"osVersionBuild";
  v48 = [v63 getSystemVersionDescription];
  v65[4] = v48;
  v64[5] = @"kappaDeviceType";
  v47 = [NSNumber numberWithInt:v3];
  v65[5] = v47;
  v64[6] = @"martyDeviceType";
  v46 = [NSNumber numberWithInt:0];
  v65[6] = v46;
  v64[7] = @"hasAudio";
  v45 = [NSNumber numberWithBool:v6 & 1];
  v65[7] = v45;
  v64[8] = @"trigger";
  v44 = [NSNumber numberWithUnsignedLongLong:v11];
  v65[8] = v44;
  v64[9] = @"kappaTriggerPathBitmap";
  v43 = [NSNumber numberWithUnsignedChar:v7];
  v65[9] = v43;
  v64[10] = @"martyTriggerPathBitmap";
  v42 = [NSNumber numberWithUnsignedChar:v8];
  v65[10] = v42;
  v64[11] = @"btHint";
  v41 = [NSNumber numberWithUnsignedChar:v9];
  v65[11] = v41;
  v64[12] = @"gpsHint";
  v40 = [NSNumber numberWithUnsignedChar:v10];
  v65[12] = v40;
  v64[13] = @"kappaArmedSeconds";
  v39 = [NSNumber numberWithUnsignedShort:v12];
  v65[13] = v39;
  v64[14] = @"martyArmedSeconds";
  v62 = [NSNumber numberWithUnsignedShort:v61];
  v65[14] = v62;
  v64[15] = @"enableMode";
  v60 = [NSNumber numberWithUnsignedChar:v59];
  v65[15] = v60;
  v64[16] = @"IMU0";
  LODWORD(v20) = v13;
  v38 = [NSNumber numberWithFloat:v20];
  v65[16] = v38;
  v64[17] = @"IMU1";
  LODWORD(v21) = v14;
  v37 = [NSNumber numberWithFloat:v21];
  v65[17] = v37;
  v64[18] = @"IMU2";
  LODWORD(v22) = v15;
  v36 = [NSNumber numberWithFloat:v22];
  v65[18] = v36;
  v64[19] = @"deltaMaxIMUToTriggerTime";
  v35 = [NSNumber numberWithDouble:v16];
  v65[19] = v35;
  v64[20] = @"deltaMaxIMUToTriggerTimeIMU";
  v23 = [NSNumber numberWithInt:v58];
  v65[20] = v23;
  v64[21] = @"distToRoad";
  v24 = [NSNumber numberWithInt:v57];
  v65[21] = v24;
  v64[22] = @"maxAudioMeanTenMinPreFirstTrigger";
  LODWORD(v25) = v17;
  v26 = [NSNumber numberWithFloat:v25];
  v65[22] = v26;
  v64[23] = @"lastCompletedAudio15sWindowMeanFirstTrigger";
  LODWORD(v27) = v18;
  v28 = [NSNumber numberWithFloat:v27];
  v65[23] = v28;
  v64[24] = @"currentAudioWindowMeanFirstTrigger";
  LODWORD(v29) = v19;
  v30 = [NSNumber numberWithFloat:v29];
  v65[24] = v30;
  v64[25] = @"numAudioMaxEnvelopesFirstTrigger";
  v31 = [NSNumber numberWithUnsignedChar:v56];
  v65[25] = v31;
  v64[26] = @"locallyArmed";
  v32 = [NSNumber numberWithUnsignedChar:v55];
  v65[26] = v32;
  v64[27] = @"overrideMode";
  v33 = [NSNumber numberWithUnsignedChar:v54];
  v65[27] = v33;
  v34 = [NSDictionary dictionaryWithObjects:v65 forKeys:v64 count:28];
  [v53 updateMetadata:v34];
}

void CSAOPSvc::stopAOPReading(CSAOPSvc *this)
{
  if (qword_1004567E8 != -1)
  {
    sub_1002D583C();
  }

  v2 = qword_1004567F0;
  if (os_log_type_enabled(qword_1004567F0, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "stopping the aop streaming", buf, 2u);
  }

  v3 = 5;
  CSAOPSvc::sendCommand(this, &v3, 1u);
}

uint64_t CSAOPSvc::closeFastpaths(CSAOPSvc *this)
{
  if (qword_100456808 != -1)
  {
    sub_1002D5800();
  }

  v2 = qword_100456810;
  if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "closing fastpaths", v6, 2u);
  }

  v3 = (this + 272);
  v4 = 13;
  do
  {
    result = CSFastpathGlue::close(v3);
    v3 = (v3 + 48);
    --v4;
  }

  while (v4);
  return result;
}

uint64_t CSAOPSvc::Done::trigger(CSAOPSvc::Done *this, uint64_t a2, const void *a3)
{
  if (a2 != 4)
  {
    return 0;
  }

  [*(*(this + 6) + 16) finishSession];
  return *(this + 6) + 64;
}

void CSAOPSvc::CSAOPSvc(CSAOPSvc *this, CSAnomalyEventService *a2, CLSilo *a3)
{
  v5 = a2;
  v6 = a3;
  if (qword_100456808 != -1)
  {
    sub_1002D5800();
  }

  v7 = qword_100456810;
  *this = 0;
  *(this + 1) = v7;
  v8 = v5;
  *(this + 2) = v8;
  v9 = objc_opt_new();
  *(this + 4) = 0;
  *(this + 3) = v9;
  *(this + 5) = 0;
  v10 = v6;
  *(this + 6) = v10;
  *(this + 7) = 0;
  CSHSM::State::State((this + 64), "idle");
  *(this + 8) = &off_10042EDF0;
  *(this + 14) = this;
  CSAOPSvc::Reading::Reading((this + 120), this, v10);
  CSAOPSvc::Done::Done((this + 208), this);
  v11 = 0;
  v12 = (this + 352);
  v13 = vdupq_n_s64(0xDuLL);
  do
  {
    v14 = vorrq_s8(vdupq_n_s64(v11), xmmword_100387A10);
    if (vmovn_s64(vcgtq_u64(v13, v14)).u8[0])
    {
      *(v12 - 6) = 0;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xDuLL), v14)).i32[1])
    {
      *v12 = 0;
    }

    v11 += 2;
    v12 += 12;
  }

  while (v11 != 14);
  *(this + 992) = 0;
  *(this + 1000) = 0;
  *(this + 130) = 0;
  *(this + 1048) = 0;
  *(this + 1051) = 0;
  *(this + 126) = 0;
  *(this + 128) = 0;
  *(this + 127) = 0;
  *(this + 1032) = 0;
  *(this + 133) = objc_alloc_init(CSSyncQueue);
  *(this + 134) = objc_alloc_init(CSAPEventsBuffer);
  bzero(this + 272, 0x270uLL);
  if (qword_100456808 != -1)
  {
    sub_1002D5800();
  }

  v15 = qword_100456810;
  if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_INFO))
  {
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "init", v16, 2u);
  }
}

void sub_1002D1FAC(_Unwind_Exception *a1)
{
  sub_1002D5138(v1 + 208);
  sub_1002D5190(v1 + 120);
  *(v1 + 64) = &off_100436270;
  v5 = *(v1 + 80);
  if (v5)
  {
    *(v1 + 88) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void *sub_1002D208C(void *a1)
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

void CSAOPSvc::sendCommand(CSAOPSvc *this, const unsigned __int8 *a2, unsigned int a3)
{
  v4 = *(this + 4);
  v9 = 0;
  v5 = [v4 setReport:a2 reportLength:a3 withIdentifier:0 forType:1 error:&v9];
  v6 = v9;
  if ((v5 & 1) == 0)
  {
    if (qword_100456808 != -1)
    {
      sub_1002D5814();
    }

    v7 = qword_100456810;
    if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_FAULT))
    {
      v8 = *a2;
      *buf = 67109378;
      v11 = v8;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "cmd(%u) HIDDevice setReport failed %@", buf, 0x12u);
    }
  }
}

void CSAOPSvc::suppressTriggers(CSAOPSvc *this, int a2)
{
  if (qword_100456808 != -1)
  {
    sub_1002D5800();
  }

  v4 = qword_100456810;
  if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "suppressing triggers %d", v5, 8u);
  }

  *(this + 1049) = a2;
}

id CSAOPSvc::reset(id *this)
{
  if (qword_1004567E8 != -1)
  {
    sub_1002D583C();
  }

  v2 = qword_1004567F0;
  if (os_log_type_enabled(qword_1004567F0, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "go back to idle state", v4, 2u);
  }

  CSHSM::signal(this, 4, 0);
  result = [this[133] reset];
  if (*(this + 1000) == 1)
  {
    *(this + 1000) = 0;
  }

  *(this + 1048) = 0;
  *(this + 1032) = 0;
  return result;
}

id CSAOPSvc::getArmedState(id *this, CSArmedSeconds *a2)
{
  v3 = a2;
  if (v3)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    *v14 = 0u;
    v15 = 0u;
    v14[0] = 4;
    v10 = 0;
    v11 = 128;
    v4 = [this[4] getReport:v14 reportLength:&v11 withIdentifier:4 forType:1 error:&v10];
    v5 = v10;
    if (v4)
    {
      if (qword_100456808 != -1)
      {
        sub_1002D5814();
      }

      v6 = qword_100456810;
      if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        LODWORD(v13) = v15;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "armed seconds %d", buf, 8u);
      }

      [(CSArmedSeconds *)v3 setArmedSeconds:v15];
      [(CSArmedSeconds *)v3 setIsArmed:BYTE4(v15)];
    }

    else
    {
      if (qword_100456808 != -1)
      {
        sub_1002D5814();
      }

      v8 = qword_100456810;
      if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v13 = v5;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "getReport failed %@", buf, 0xCu);
      }
    }
  }

  else
  {
    if (qword_100456808 != -1)
    {
      sub_1002D5800();
    }

    v7 = qword_100456810;
    if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "query nil", v14, 2u);
    }

    v4 = 0;
  }

  return v4;
}

id CSAOPSvc::getArmedClients(id *this, CSArmedClients *a2)
{
  v3 = a2;
  if (v3)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    *v18 = 0u;
    v19 = 0u;
    v18[0] = 5;
    v10 = 0;
    v11 = 128;
    v4 = [this[4] getReport:v18 reportLength:&v11 withIdentifier:5 forType:1 error:&v10];
    v5 = v10;
    if (v4)
    {
      [(CSArmedClients *)v3 setKappaArmedSeconds:v19];
      if (qword_100456808 != -1)
      {
        sub_1002D5814();
      }

      v6 = qword_100456810;
      if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109888;
        *v13 = v19;
        *&v13[4] = 1024;
        *&v13[6] = DWORD1(v19);
        v14 = 1024;
        v15 = DWORD2(v19);
        v16 = 1024;
        v17 = v20;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "clients %d %d %d %d", buf, 0x1Au);
      }

      [(CSArmedClients *)v3 setMartyArmedSecondsLocal:DWORD1(v19)];
      [(CSArmedClients *)v3 setMartyArmedSecondsRemote:DWORD2(v19)];
      [(CSArmedClients *)v3 setEnableMode:v20];
    }

    else
    {
      if (qword_100456808 != -1)
      {
        sub_1002D5814();
      }

      v8 = qword_100456810;
      if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        *v13 = v5;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "getReport failed %@", buf, 0xCu);
      }
    }
  }

  else
  {
    if (qword_100456808 != -1)
    {
      sub_1002D5800();
    }

    v7 = qword_100456810;
    if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_INFO))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "query nil", v18, 2u);
    }

    v4 = 0;
  }

  return v4;
}

uint64_t CSAOPSvc::getStat(CSAOPSvc *this, CSCAStat *a2)
{
  v4 = a2;
  v5 = *(this + 4);
  if (v5)
  {
    v8 = *(this + 7);
    v7 = (this + 56);
    v6 = v8;
    if (v8)
    {
      -[CSCAStat setUserAge:](v4, "setUserAge:", [v6 userAge]);
      -[CSCAStat setSex:](v4, "setSex:", [*v7 sex]);
      -[CSCAStat setMcc1:](v4, "setMcc1:", [*v7 mcc1]);
      -[CSCAStat setMnc1:](v4, "setMnc1:", [*v7 mnc1]);
      -[CSCAStat setMcc2:](v4, "setMcc2:", [*v7 mcc2]);
      -[CSCAStat setMnc2:](v4, "setMnc2:", [*v7 mnc2]);
      -[CSCAStat setArmedSec:](v4, "setArmedSec:", [*v7 armedSec]);
      -[CSCAStat setArmedSecMartyLocal:](v4, "setArmedSecMartyLocal:", [*v7 armedSecMartyLocal]);
      -[CSCAStat setArmedSecMartyRemote:](v4, "setArmedSecMartyRemote:", [*v7 armedSecMartyRemote]);
      -[CSCAStat setArmedSecMartyBicycle:](v4, "setArmedSecMartyBicycle:", [*v7 armedSecMartyBicycle]);
      v9 = 1;
    }

    else
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      *buf = 0u;
      v28 = 0u;
      buf[0] = 3;
      v19 = 0;
      v20 = 128;
      v9 = [v5 getReport:buf reportLength:&v20 withIdentifier:3 forType:1 error:&v19];
      v11 = v19;
      if (v9)
      {
        [(CSCAStat *)v4 setUserAge:v28];
        [(CSCAStat *)v4 setSex:BYTE1(v28)];
        [(CSCAStat *)v4 setMcc1:SWORD1(v28)];
        [(CSCAStat *)v4 setMnc1:SWORD2(v28)];
        [(CSCAStat *)v4 setMcc2:SWORD3(v28)];
        [(CSCAStat *)v4 setMnc2:SWORD4(v28)];
        [(CSCAStat *)v4 setArmedSec:WORD5(v28)];
        [(CSCAStat *)v4 setArmedSecMartyLocal:HIWORD(v28)];
        [(CSCAStat *)v4 setArmedSecMartyRemote:v29];
        [(CSCAStat *)v4 setArmedSecMartyBicycle:WORD6(v28)];
        objc_storeStrong(v7, a2);
        if (qword_100456808 != -1)
        {
          sub_1002D5814();
        }

        v12 = qword_100456810;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v13 = [(CSCAStat *)v4 armedSec];
          v14 = [(CSCAStat *)v4 armedSecMartyLocal];
          v15 = [(CSCAStat *)v4 armedSecMartyRemote];
          v16 = [(CSCAStat *)v4 armedSecMartyBicycle];
          *v21 = 67109888;
          *v22 = v13;
          *&v22[4] = 1024;
          *&v22[6] = v14;
          v23 = 1024;
          v24 = v15;
          v25 = 1024;
          v26 = v16;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "kappa sec %d marty local %d remote %d bicycle %d", v21, 0x1Au);
        }
      }

      else
      {
        if (qword_100456808 != -1)
        {
          sub_1002D5814();
        }

        v17 = qword_100456810;
        if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_FAULT))
        {
          *v21 = 138412290;
          *v22 = v11;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, "getReport failed %@", v21, 0xCu);
        }
      }
    }
  }

  else
  {
    if (qword_100456808 != -1)
    {
      sub_1002D5800();
    }

    v10 = qword_100456810;
    if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Invalid _device", buf, 2u);
    }

    v9 = 0;
  }

  return v9;
}

uint64_t CSAOPSvc::clearStat(CSAOPSvc *this)
{
  v1 = *(this + 7);
  *(this + 7) = 0;
  return _objc_release_x1();
}

void CSAOPSvc::begin(CSAOPSvc *this)
{
  CSHSM::initial(this, (this + 64));

  CSAOPSvc::openHidManager(this);
}

void CSAOPSvc::openHidManager(CSAOPSvc *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    [v2 open];
    [*(this + 3) setDeviceMatching:&off_10043F1B0];
    v3 = *(this + 3);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1002D2DD4;
    v9[3] = &unk_10042EDA0;
    v9[4] = this;
    [v3 setDeviceNotificationHandler:v9];
    v4 = *(this + 3);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1002D3528;
    v8[3] = &unk_10042EDC0;
    v8[4] = this;
    [v4 setInputReportHandler:v8];
    v5 = *(this + 3);
    v6 = [*(this + 6) queue];
    [v5 setDispatchQueue:v6];

    [*(this + 3) activate];
  }

  else
  {
    if (qword_100456808 != -1)
    {
      sub_1002D5800();
    }

    v7 = qword_100456810;
    if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "NULL IOHIDManager", buf, 2u);
    }
  }
}

void sub_1002D2DD4(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  entryID = 0;
  RegistryEntryID = IORegistryEntryGetRegistryEntryID([v5 service], &entryID);
  if (RegistryEntryID)
  {
    if (qword_100456808 != -1)
    {
      sub_1002D5814();
    }

    v8 = qword_100456810;
    if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109120;
      LODWORD(v17) = RegistryEntryID;
      v9 = "IORegistryEntryGetRegistryEntryID failed 0x%x";
      v10 = v8;
      v11 = OS_LOG_TYPE_FAULT;
      v12 = 8;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v10, v11, v9, buf, v12);
    }
  }

  else
  {
    if (!a3)
    {
      CSAOPSvc::onServiceRemoved(v6);
      goto LABEL_19;
    }

    if (qword_100456808 != -1)
    {
      sub_1002D5814();
    }

    v13 = qword_100456810;
    if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v17 = entryID;
      v18 = 2048;
      v19 = v6;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "A new safety device entry ID %llu, this %p", buf, 0x16u);
    }

    if (!*(v6 + 4))
    {
      CSAOPSvc::onServiceAdded(v6, v5);
      goto LABEL_19;
    }

    if (qword_100456808 != -1)
    {
      sub_1002D5814();
    }

    v14 = qword_100456810;
    if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v9 = "unexpected duplicate safety device";
      v10 = v14;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 2;
      goto LABEL_6;
    }
  }

LABEL_19:
}

void CSAOPSvc::onServiceAdded(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((a1 + 32), a2);
  if (qword_100456808 != -1)
  {
    sub_1002D5800();
  }

  v5 = qword_100456810;
  if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 32);
    *buf = 134217984;
    *&buf[4] = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "setting fastpaths device %p", buf, 0xCu);
  }

  v48 = 0u;
  v49 = 0u;
  v47 = 0u;
  v45 = 0u;
  memset(v46, 0, sizeof(v46));
  *buf = 0u;
  v44 = 0u;
  v35 = 0;
  v36 = 128;
  v7 = [v4 getReport:buf reportLength:&v36 withIdentifier:0 forType:1 error:&v35];
  v8 = v35;
  if (v7)
  {
    if ((v44 & 0x80000000) == 0)
    {
      v9 = DWORD1(v44);
      *(a1 + 980) = DWORD1(v44) & 0xFFFFFFF;
      *(a1 + 976) = v9 >> 28;
      v10 = *(&v44 + 1);
      *(a1 + 984) = *(&v44 + 1);
      if (v10 && (*(a1 + 1000) & 1) == 0)
      {
        *(a1 + 992) = v10;
        *(a1 + 1000) = 1;
      }

      *(a1 + 1056) = CFAbsoluteTimeGetCurrent();
      if (qword_100456808 != -1)
      {
        sub_1002D5814();
      }

      v11 = qword_100456810;
      if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_INFO))
      {
        v12 = *(a1 + 984);
        v13 = *(a1 + 976);
        v14 = *(a1 + 980);
        *v37 = 134218752;
        *v38 = v12;
        *&v38[8] = 2048;
        v39 = *&buf[8];
        *v40 = 1024;
        *&v40[2] = v13;
        v41 = 1024;
        v42 = v14;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Service added trigger timestamp %llu, now %llu, RMS session %u SN %d", v37, 0x22u);
      }

      if (*&buf[8] - *(a1 + 984) <= 0x1E847FuLL)
      {
        v15 = [CSSPUKappaTrigger alloc];
        LODWORD(v17) = DWORD1(v45);
        LODWORD(v16) = v45;
        LOWORD(v19) = WORD2(v49);
        LOWORD(v18) = WORD1(v49);
        LOWORD(v20) = WORD3(v49);
        LODWORD(v22) = DWORD2(v48);
        LODWORD(v21) = DWORD1(v48);
        BYTE4(v34) = BYTE12(v48);
        WORD1(v34) = v49;
        LOWORD(v34) = *(&v48 + 13);
        BYTE1(v33) = v47;
        LOBYTE(v33) = BYTE8(v49);
        LODWORD(v32) = *(v46 + 14);
        BYTE2(v31) = BYTE12(v45);
        LOWORD(v31) = WORD5(v45);
        v23 = [CSSPUKappaTrigger initWithTimestamp:v15 meta:"initWithTimestamp:meta:decel:impact:path:armedSec:motionHint:gpsHint:basebandHint:wifiHint:btHint:lastValidImuTimestamp:vehicleProbabilityLongTermMean:martyPath:enableMode:martyArmedSec:companionAopTs:maxMeanTenMinPreTrigger:lastCompleted15sWindowMean:currentWindowMean:numMaxEnvelopes:igneousPath:igneousGUID:martyImpactMagnitude:martyRotationMagnitude:overrideMode:martyIsBicycle:martyArmedSecBicycle:locallyArmed:" decel:*(&v44 + 1) impact:v44 path:BYTE1(v44) armedSec:WORD1(v44) motionHint:SBYTE8(v45) gpsHint:SBYTE9(v45) basebandHint:v16 wifiHint:v17 btHint:v18 lastValidImuTimestamp:v19 vehicleProbabilityLongTermMean:v20 martyPath:v21 enableMode:v22 martyArmedSec:v31 companionAopTs:*&v46[0] maxMeanTenMinPreTrigger:v46 + 8 lastCompleted15sWindowMean:v32 currentWindowMean:*(&v46[1] + 1) numMaxEnvelopes:v33 igneousPath:&v47 + 1 igneousGUID:v34 martyImpactMagnitude:? martyRotationMagnitude:? overrideMode:? martyIsBicycle:? martyArmedSecBicycle:? locallyArmed:?];
        if (*(a1 + 1049) == 1)
        {
          if (qword_100456808 != -1)
          {
            sub_1002D5814();
          }

          v24 = qword_100456810;
          if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_DEFAULT))
          {
            *v37 = 0;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "suppressing trigger until detection service is ready", v37, 2u);
          }
        }

        else
        {
          objc_storeStrong((a1 + 40), v23);
          if (qword_100456808 != -1)
          {
            sub_1002D5814();
          }

          v26 = qword_100456810;
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v27 = *([(CSSPUKappaTrigger *)v23 c_struct]+ 1);
            v28 = *([(CSSPUKappaTrigger *)v23 c_struct]+ 46);
            v29 = *([(CSSPUKappaTrigger *)v23 c_struct]+ 64);
            v30 = *([(CSSPUKappaTrigger *)v23 c_struct]+ 47);
            *v37 = 67109888;
            *v38 = v27;
            *&v38[4] = 1024;
            *&v38[6] = v28;
            LOWORD(v39) = 1024;
            *(&v39 + 2) = v29;
            HIWORD(v39) = 1024;
            *v40 = v30;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "aop trigger path %d marty path %d igneous path %d enabledMode %d", v37, 0x1Au);
          }

          CSHSM::signal(a1, 1, 0);
        }
      }
    }
  }

  else
  {
    if (qword_100456808 != -1)
    {
      sub_1002D5814();
    }

    v25 = qword_100456810;
    if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_FAULT))
    {
      *v37 = 138412290;
      *v38 = v8;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_FAULT, "getReport failed %@", v37, 0xCu);
    }
  }
}

void CSAOPSvc::onServiceRemoved(CSAOPSvc *this)
{
  if (qword_100456808 != -1)
  {
    sub_1002D5800();
  }

  v2 = qword_100456810;
  if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_FAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "safety service disappeared!", v6, 2u);
  }

  v3 = (this + 272);
  v4 = 13;
  do
  {
    CSFastpathGlue::close(v3);
    v3 = (v3 + 48);
    --v4;
  }

  while (v4);
  v5 = *(this + 4);
  *(this + 4) = 0;
}

void sub_1002D3528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = a6;
  if (!a4)
  {
    CSAOPSvc::onInputReport(*(a1 + 32), v8);
  }
}

void CSAOPSvc::onInputReport(id *this, NSData *a2)
{
  v3 = a2;
  v50 = 0u;
  v51 = 0u;
  v49 = 0u;
  v47 = 0u;
  memset(v48, 0, sizeof(v48));
  __dst = 0u;
  v46 = 0u;
  v4 = [(NSData *)v3 length];
  if (v4 >= 129)
  {
    if (qword_100456808 != -1)
    {
      sub_1002D5800();
    }

    v5 = qword_100456810;
    if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109376;
      *v40 = v4;
      *&v40[4] = 1024;
      *&v40[6] = 128;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "mismatch between report and nsdata sizes %d %d", buf, 0xEu);
    }
  }

  v6 = v3;
  v7 = [(NSData *)v3 bytes];
  if (v4 >= 128)
  {
    v8 = 128;
  }

  else
  {
    v8 = v4;
  }

  memcpy(&__dst, v7, v8);
  v9 = __dst;
  if (__dst > 1u)
  {
    if (__dst == 2)
    {
      [this[2] sosActivated];
      goto LABEL_46;
    }

    if (__dst != 3)
    {
LABEL_18:
      if (qword_100456808 != -1)
      {
        sub_1002D5814();
      }

      v12 = qword_100456810;
      if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *v40 = v9;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Unexpected input report %u", buf, 8u);
      }
    }
  }

  else
  {
    if (__dst)
    {
      if (__dst == 1)
      {
        if (qword_100456808 != -1)
        {
          sub_1002D5814();
        }

        v10 = qword_100456810;
        if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_INFO))
        {
          v11 = *(&__dst + 1);
          *buf = 134217984;
          *v40 = *(&__dst + 1);
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "stream stopped at %llu", buf, 0xCu);
        }

        else
        {
          v11 = *(&__dst + 1);
        }

        if (v11 > this[123])
        {
          CSHSM::signal(this, 3, 0);
        }

        goto LABEL_46;
      }

      goto LABEL_18;
    }

    v13 = DWORD1(v46);
    *(this + 245) = DWORD1(v46) & 0xFFFFFFF;
    *(this + 976) = v13 >> 28;
    v14 = *(&v46 + 1);
    this[123] = *(&v46 + 1);
    if (v14 && (this[125] & 1) == 0)
    {
      this[124] = v14;
      *(this + 1000) = 1;
    }

    *(this + 132) = CFAbsoluteTimeGetCurrent();
    if (qword_100456808 != -1)
    {
      sub_1002D5814();
    }

    v15 = qword_100456810;
    if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_DEFAULT))
    {
      v16 = this[123];
      v17 = *(&__dst + 1);
      v18 = *(this + 976);
      v19 = *(this + 245);
      *buf = 134218752;
      *v40 = v16;
      *&v40[8] = 2048;
      v41 = *(&__dst + 1);
      *v42 = 1024;
      *&v42[2] = v18;
      v43 = 1024;
      v44 = v19;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "trigger timestamp %llu, now %llu, RMS session %u SN %d", buf, 0x22u);
    }

    else
    {
      v17 = *(&__dst + 1);
    }

    if ((v17 - this[123]) <= 0x1E847F)
    {
      v20 = [CSSPUKappaTrigger alloc];
      LODWORD(v22) = DWORD1(v47);
      LODWORD(v21) = v47;
      LOWORD(v24) = WORD2(v51);
      LOWORD(v23) = WORD1(v51);
      LOWORD(v25) = WORD3(v51);
      LODWORD(v27) = DWORD2(v50);
      LODWORD(v26) = DWORD1(v50);
      BYTE4(v38) = BYTE12(v50);
      WORD1(v38) = v51;
      LOWORD(v38) = *(&v50 + 13);
      BYTE1(v37) = v49;
      LOBYTE(v37) = BYTE8(v51);
      LODWORD(v36) = *(v48 + 14);
      BYTE2(v35) = BYTE12(v47);
      LOWORD(v35) = WORD5(v47);
      v28 = [CSSPUKappaTrigger initWithTimestamp:v20 meta:"initWithTimestamp:meta:decel:impact:path:armedSec:motionHint:gpsHint:basebandHint:wifiHint:btHint:lastValidImuTimestamp:vehicleProbabilityLongTermMean:martyPath:enableMode:martyArmedSec:companionAopTs:maxMeanTenMinPreTrigger:lastCompleted15sWindowMean:currentWindowMean:numMaxEnvelopes:igneousPath:igneousGUID:martyImpactMagnitude:martyRotationMagnitude:overrideMode:martyIsBicycle:martyArmedSecBicycle:locallyArmed:" decel:v14 impact:v46 path:BYTE1(v46) armedSec:WORD1(v46) motionHint:SBYTE8(v47) gpsHint:SBYTE9(v47) basebandHint:v21 wifiHint:v22 btHint:v23 lastValidImuTimestamp:v24 vehicleProbabilityLongTermMean:v25 martyPath:v26 enableMode:v27 martyArmedSec:v35 companionAopTs:*&v48[0] maxMeanTenMinPreTrigger:v48 + 8 lastCompleted15sWindowMean:v36 currentWindowMean:*(&v48[1] + 1) numMaxEnvelopes:v37 igneousPath:&v49 + 1 igneousGUID:v38 martyImpactMagnitude:? martyRotationMagnitude:? overrideMode:? martyIsBicycle:? martyArmedSecBicycle:? locallyArmed:?];
      if (*(this + 1049) == 1)
      {
        if (qword_100456808 != -1)
        {
          sub_1002D5814();
        }

        v29 = qword_100456810;
        if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "suppressing trigger until detection service is ready", buf, 2u);
        }
      }

      else
      {
        objc_storeStrong(this + 5, v28);
        if (qword_100456808 != -1)
        {
          sub_1002D5814();
        }

        v30 = qword_100456810;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = *([(CSSPUKappaTrigger *)v28 c_struct]+ 1);
          v32 = *([(CSSPUKappaTrigger *)v28 c_struct]+ 46);
          v33 = *([(CSSPUKappaTrigger *)v28 c_struct]+ 64);
          v34 = *([(CSSPUKappaTrigger *)v28 c_struct]+ 47);
          *buf = 67109888;
          *v40 = v31;
          *&v40[4] = 1024;
          *&v40[6] = v32;
          LOWORD(v41) = 1024;
          *(&v41 + 2) = v33;
          HIWORD(v41) = 1024;
          *v42 = v34;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "aop trigger path %d marty path %d igneous path %d enabledMode %d", buf, 0x1Au);
        }

        CSHSM::signal(this, 1, 0);
      }
    }
  }

LABEL_46:
}

BOOL sub_1002D3AF4(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      sub_1002D51E8();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

char *CSAOPSvc::recordStreams(id *this, NSMutableArray *a2, int a3)
{
  v5 = a2;
  v6 = [(NSMutableArray *)v5 count];
  if (!v6)
  {
    v25 = 0;
    v26 = 0;
    v24 = 0;
    HIDWORD(v23) = 0;
    v9 = 0;
    v27 = 0;
    v28 = 0;
    v15 = 0;
    v29 = 0;
    v8 = 0;
    v7 = 0;
    goto LABEL_69;
  }

  v28 = 0;
  v29 = 0;
  v7 = 0;
  v8 = 0;
  v26 = 0;
  v27 = 0;
  v23 = 0;
  v24 = 0;
  v9 = 0;
  v25 = 0;
  while (1)
  {
    v10 = [(NSMutableArray *)v5 objectAtIndexedSubscript:v9];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      break;
    }

    if (a3)
    {
      [this[126] recordSoundPressureLevel:v10];
    }

    ++v8;
    *(this + 904) = 1;
LABEL_7:

    if (v6 == ++v9)
    {
      v9 = v6;
      goto LABEL_67;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    ++v7;
    if (a3)
    {
      [this[126] recordAccel800:v10];
    }

    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    ++HIDWORD(v29);
    if (a3)
    {
      [this[126] recordHgAccel:v10];
    }

    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    LODWORD(v29) = v29 + 1;
    if (a3)
    {
      [this[126] recordDeviceMotion:v10];
    }

    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    ++HIDWORD(v28);
    if (a3)
    {
      [this[126] recordPressure:v10];
    }

    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    LODWORD(v28) = v28 + 1;
    if (a3)
    {
      [this[126] recordAccel:v10];
    }

    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (a3)
    {
      [this[126] recordGPS:v10];
    }

    CSAOPSvc::processSample(this, v10);
    ++HIDWORD(v27);
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = +[CSPersistentConfiguration sharedConfiguration];
      v14 = [(CSSPUKappaTrigger *)v22 BOOLForKey:@"CSKappaRecordSteps"];

      LODWORD(v23) = v23 + 1;
      if ((v14 & a3) == 1)
      {
        [this[126] recordSteps:v10];
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        LODWORD(v27) = v27 + 1;
        if (a3)
        {
          [this[126] recordMag:v10];
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          ++HIDWORD(v26);
          if (a3)
          {
            [this[126] recordPressureCalibration:v10];
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (a3)
            {
              [this[126] recordRoadInfo:v10];
            }

            CSAOPSvc::processSample(this, v10);
            LODWORD(v26) = v26 + 1;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              ++HIDWORD(v25);
              if (a3)
              {
                [this[126] recordTrustedAudio:v10];
              }
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                LODWORD(v25) = v25 + 1;
                if (a3)
                {
                  [this[126] recordActivityPhone:v10];
                }
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  ++HIDWORD(v24);
                  if (a3)
                  {
                    [this[126] recordSafetyHertzSample:v10];
                  }
                }

                else
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    LODWORD(v24) = v24 + 1;
                    if (a3)
                    {
                      [this[126] recordCompanionStatus:v10];
                    }
                  }

                  else
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      ++HIDWORD(v23);
                      if (a3)
                      {
                        [this[126] recordRemoteSample:v10];
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

    goto LABEL_7;
  }

  v21 = v10;
  if (([(CSSPUKappaTrigger *)v21 meta]& 0x80000000) == 0)
  {
    if (qword_100456808 != -1)
    {
      sub_1002D5814();
    }

    v11 = qword_100456810;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v11;
      v12 = [(CSSPUKappaTrigger *)v21 timestamp];
      v13 = *([(CSSPUKappaTrigger *)v21 c_struct]+ 1);
      *buf = 134349568;
      *v31 = v12;
      *&v31[8] = 2048;
      v11 = v20;
      v32 = v21;
      *v33 = 1024;
      *&v33[2] = v13;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Notifying trigger %{public}llu %p %d", buf, 0x1Cu);
    }

    goto LABEL_42;
  }

  if ([(CSSPUKappaTrigger *)v21 timestamp]<= this[123])
  {
LABEL_42:
    if (a3)
    {
      [this[126] recordKappaTrigger:v21];
    }

    CSAOPSvc::processSample(this, v21);

    goto LABEL_7;
  }

  v18 = sub_1002CDB10();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [(CSSPUKappaTrigger *)v21 timestamp];
    *buf = 134349056;
    *v31 = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Notifying streaming finish %{public}llu", buf, 0xCu);
  }

LABEL_67:
  v15 = v23;
LABEL_69:
  if (qword_100456808 != -1)
  {
    sub_1002D5814();
  }

  v16 = qword_100456810;
  if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67113216;
    *v31 = v7;
    *&v31[4] = 1024;
    *&v31[6] = v29;
    LOWORD(v32) = 1024;
    *(&v32 + 2) = HIDWORD(v28);
    HIWORD(v32) = 1024;
    *v33 = v8;
    *&v33[4] = 1024;
    v34 = HIDWORD(v27);
    v35 = 1024;
    v36 = HIDWORD(v29);
    v37 = 1024;
    v38 = v15;
    v39 = 1024;
    v40 = v28;
    v41 = 1024;
    v42 = v27;
    v43 = 1024;
    v44 = HIDWORD(v26);
    v45 = 1024;
    v46 = v26;
    v47 = 1024;
    v48 = v25;
    v49 = 1024;
    v50 = 0;
    v51 = 1024;
    v52 = HIDWORD(v24);
    v53 = 1024;
    v54 = v24;
    v55 = 1024;
    v56 = HIDWORD(v23);
    v57 = 1024;
    v58 = HIDWORD(v25);
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Sorted %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u", buf, 0x68u);
  }

  return v9;
}

void CSAOPSvc::processSample(CSAOPSvc *this, CSSPUGps *a2)
{
  v3 = a2;
  v4 = *(this + 224);
  if (!v4)
  {
    Current = CFAbsoluteTimeGetCurrent();
    LODWORD(Current) = sunElevationDeg(Current, *([(CSSPUGps *)v3 c_struct]+ 4), *([(CSSPUGps *)v3 c_struct]+ 5));
    v6 = *([(CSSPUGps *)v3 c_struct]+ 32);
    v7 = *(this + 126);
    v12[0] = @"sunElevation";
    LODWORD(v8) = LODWORD(Current);
    v9 = [NSNumber numberWithFloat:v8];
    v12[1] = @"signalEnvironment";
    v13[0] = v9;
    v10 = [NSNumber numberWithUnsignedChar:v6];
    v13[1] = v10;
    v11 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
    [v7 updateMetadata:v11];

    v4 = *(this + 224);
  }

  *(this + 224) = v4 + 1;
}

void CSAOPSvc::processSample(CSAOPSvc *this, CSSPUKappaTrigger *a2)
{
  v3 = a2;
  v4 = v3;
  if (!*(this + 114))
  {
    _H0 = *([(CSSPUKappaTrigger *)v3 c_struct]+ 49);
    __asm { FCVT            S0, H0 }

    *(this + 240) = _S0;
    _H0 = *([(CSSPUKappaTrigger *)v4 c_struct]+ 50);
    __asm { FCVT            S0, H0 }

    *(this + 241) = _S0;
    _H0 = *([(CSSPUKappaTrigger *)v4 c_struct]+ 51);
    __asm { FCVT            S0, H0 }

    *(this + 242) = _S0;
    *(this + 972) = *([(CSSPUKappaTrigger *)v4 c_struct]+ 104);
  }

  if (qword_100456808 != -1)
  {
    sub_1002D5800();
  }

  v15 = qword_100456810;
  if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_INFO))
  {
    v16 = *(this + 240);
    v17 = *(this + 241);
    v18 = *(this + 242);
    v19 = *(this + 972);
    v39 = 134218752;
    v40 = v16;
    v41 = 2048;
    v42 = v17;
    v43 = 2048;
    v44 = v18;
    v45 = 1024;
    LODWORD(v46) = v19;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "historical loudness stats %f / %f / %f / %i", &v39, 0x26u);
  }

  if (!*(this + 114))
  {
    *(this + 114) = CFAbsoluteTimeGetCurrent();
    *(this + 115) = *([(CSSPUKappaTrigger *)v4 c_struct]+ 1);
    *(this + 907) = *([(CSSPUKappaTrigger *)v4 c_struct]+ 28);
    *(this + 908) = *([(CSSPUKappaTrigger *)v4 c_struct]+ 25);
    *(this + 464) = *([(CSSPUKappaTrigger *)v4 c_struct]+ 1);
    *(this + 465) = *([(CSSPUKappaTrigger *)v4 c_struct]+ 24);
    *(this + 974) = *([(CSSPUKappaTrigger *)v4 c_struct]+ 93);
    *(this + 973) = *([(CSSPUKappaTrigger *)v4 c_struct]+ 92);
  }

  *(this + 905) |= *([(CSSPUKappaTrigger *)v4 c_struct]+ 1);
  *(this + 906) |= *([(CSSPUKappaTrigger *)v4 c_struct]+ 46);
  *(this + 956) |= *([(CSSPUKappaTrigger *)v4 c_struct]+ 47);
  _H0 = *([(CSSPUKappaTrigger *)v4 c_struct]+ 20);
  __asm { FCVT            S0, H0 }

  if (*(this + 233) >= _S0)
  {
    v22 = -1;
  }

  else
  {
    v22 = 0;
    _H0 = *([(CSSPUKappaTrigger *)v4 c_struct]+ 20);
    __asm { FCVT            S0, H0 }

    *(this + 233) = _S0;
  }

  _H0 = *([(CSSPUKappaTrigger *)v4 c_struct]+ 21);
  __asm { FCVT            S0, H0 }

  if (*(this + 234) < _S0)
  {
    _H0 = *([(CSSPUKappaTrigger *)v4 c_struct]+ 21);
    __asm { FCVT            S0, H0 }

    *(this + 234) = _S0;
    v22 = 1;
  }

  _H0 = *([(CSSPUKappaTrigger *)v4 c_struct]+ 22);
  __asm { FCVT            S0, H0 }

  if (*(this + 235) >= _S0)
  {
    if (v22 == -1)
    {
      goto LABEL_19;
    }
  }

  else
  {
    _H0 = *([(CSSPUKappaTrigger *)v4 c_struct]+ 22);
    __asm { FCVT            S0, H0 }

    *(this + 235) = _S0;
    v22 = 2;
  }

  if (*(this + 132) > 0.0)
  {
    *(this + 118) = (*([(CSSPUKappaTrigger *)v4 c_struct]+ 1) - *(this + 114));
    *(this + 238) = v22;
  }

LABEL_19:
  if (qword_100456808 != -1)
  {
    sub_1002D5814();
  }

  v33 = qword_100456810;
  if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_INFO))
  {
    v34 = *(this + 233);
    v35 = *(this + 234);
    v36 = *(this + 235);
    v37 = *(this + 118);
    v38 = *(this + 238);
    v39 = 134219008;
    v40 = v34;
    v41 = 2048;
    v42 = v35;
    v43 = 2048;
    v44 = v36;
    v45 = 2048;
    v46 = v37;
    v47 = 1024;
    v48 = v38;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "trigger session stats %f / %f / %f / %f / %d", &v39, 0x30u);
  }
}

void CSAOPSvc::processSample(CSAOPSvc *this, CSSPURoadInfo *a2)
{
  v3 = a2;
  v4 = *(this + 126);
  v16[0] = @"roadClass";
  v5 = [NSNumber numberWithUnsignedChar:*([(CSSPURoadInfo *)v3 c_struct]+ 16)];
  v17[0] = v5;
  v16[1] = @"distToRoadHorizontalAccuracy";
  *&v6 = roundf(*([(CSSPURoadInfo *)v3 c_struct]+ 5));
  v7 = [NSNumber numberWithFloat:v6];
  v17[1] = v7;
  v16[2] = @"numRoadFeaturesEvaluated";
  v8 = [NSNumber numberWithUnsignedShort:*([(CSSPURoadInfo *)v3 c_struct]+ 12)];
  v17[2] = v8;
  v16[3] = @"GEOHandlerErrorDomain";
  v9 = [[NSString alloc] initWithBytes:-[CSSPURoadInfo c_struct](v3 length:"c_struct") + 26 encoding:{strnlen(-[CSSPURoadInfo c_struct](v3, "c_struct") + 26, 0x40uLL), 1}];
  v17[3] = v9;
  v16[4] = @"GEOHandlerErrorCode";
  v10 = [NSNumber numberWithLong:*([(CSSPURoadInfo *)v3 c_struct]+ 12)];
  v17[4] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:5];
  [v4 updateMetadata:v11];

  if (*([(CSSPURoadInfo *)v3 c_struct]+ 16) != 9)
  {
    v12 = *(this + 225);
    if (v12 == -1 || *([(CSSPURoadInfo *)v3 c_struct]+ 1) > v12)
    {
      v13 = *([(CSSPURoadInfo *)v3 c_struct]+ 1);
      *(this + 225) = llroundf(v13);
    }

    else
    {
      if (qword_100456808 != -1)
      {
        sub_1002D5814();
      }

      v14 = qword_100456810;
      if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_ERROR))
      {
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Received road info more than once per session.", v15, 2u);
      }
    }
  }
}

void CSAOPSvc::setRecording(id *this, CSMSLDataRecording *a2, NSUUID *a3, char a4)
{
  v8 = a2;
  v9 = a3;
  if ((a4 & 1) == 0 && !CSHSM::isIn(this, (this + 8)))
  {
    sub_1002D5AC0(buf);

    abort_report_np();
    __break(1u);
  }

  if (qword_100456808 != -1)
  {
    sub_1002D5800();
  }

  v10 = qword_100456810;
  if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    *&buf[4] = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "setting msl recording for %@", buf, 0xCu);
  }

  objc_storeStrong(this + 126, a2);
  objc_storeStrong(this + 128, a3);
  *(this + 1048) = 1;
  [this[126] updateMetadata:&off_10043F1D8];
}

void CSAOPSvc::onCompanionStatusUpdate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100456808 != -1)
  {
    sub_1002D5800();
  }

  v6 = qword_100456810;
  if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_DEBUG))
  {
    v8[0] = 67109376;
    v8[1] = a2;
    v9 = 2048;
    v10 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "CSCompanionStatus status=%d t=%llu", v8, 0x12u);
  }

  v7 = [[CSCompanionStatus alloc] initWithTimestamp:a3 code:a2];
  [*(a1 + 1072) addObject:v7];
}

void CSAOPSvc::onSafetyRemoteSample(id *this, const CSRemoteSample_Struct *a2)
{
  v4 = +[CSTimeManager SPU_estimate_current_timestamp];
  v5 = *&a2->createdAtTimestamp;
  v7 = *&a2->mode;
  v8 = v5;
  v9 = *&a2->lastRealTriggerTimestamp;
  *(&v8 + 1) = v4;
  v6 = [[CSRemoteSample alloc] initWithStruct:&v7];
  [this[134] addObject:{v6, v7, v8, v9}];
}

void sub_1002D4F50(void *a1)
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

void sub_1002D4FC0(uint64_t a1)
{
  *a1 = &off_100436270;
  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 24) = v2;
    operator delete(v2);
  }

  operator delete();
}

void sub_1002D5038(uint64_t a1)
{
  *a1 = &off_100436270;
  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 24) = v2;
    operator delete(v2);
  }

  operator delete();
}

void sub_1002D50B0(id a1)
{
  qword_100456810 = os_log_create("com.apple.anomalydetectiond", "AOP");

  _objc_release_x1();
}

void sub_1002D50F4(id a1)
{
  qword_1004567F0 = os_log_create("com.apple.anomalydetectiond", "Flow");

  _objc_release_x1();
}

uint64_t sub_1002D5138(uint64_t a1)
{
  *a1 = &off_100436270;
  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 24) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_1002D5190(uint64_t a1)
{
  *a1 = &off_100436270;
  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 24) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1002D5200(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_1002D525C(exception, a1);
}

std::logic_error *sub_1002D525C(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

uint64_t sub_1002D5300(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10042EEC0;
  a2[1] = v2;
  return result;
}

void sub_1002D532C(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v3 = *a3;
  if (v3)
  {
    v4 = *a2;
    v5 = *(a1 + 8);
    if (qword_100456808 != -1)
    {
      sub_1002D5800();
    }

    v6 = qword_100456810;
    if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(v4 + 16);
      v9[0] = 67109376;
      v9[1] = v3;
      v10 = 2048;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%u mag100 %llu", v9, 0x12u);
    }

    do
    {
      if ((*(v5 + 1032) & 1) == 0 && (*(v4 + 16) + 180000000) >= *(v5 + 984))
      {
        v8 = [[CSSPUMag alloc] initWithStruct:v4];
        [*(v5 + 1064) addObject:v8];
      }

      v4 += 24;
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_1002D5480(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL sub_1002D54CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t sub_1002D5520(uint64_t a1)
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

uint64_t sub_1002D5610(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10042EF50;
  a2[1] = v2;
  return result;
}

void sub_1002D563C(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v3 = *a3;
  if (v3)
  {
    v4 = *a2;
    v5 = *(a1 + 8);
    if (qword_100456808 != -1)
    {
      sub_1002D5800();
    }

    v6 = qword_100456810;
    if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(v4 + 92);
      v11[0] = 67109376;
      v11[1] = v3;
      v12 = 2048;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%u DM200 %llu", v11, 0x12u);
    }

    v8 = v4 + 28;
    do
    {
      if (*(v5 + 1032))
      {
        v9 = 90000000;
      }

      else
      {
        v9 = 180000000;
      }

      if ((v9 + *(v8 + 14)) >= *(v5 + 984))
      {
        v10 = [[CSSPUDM alloc] initWithTimestamp:*(v8 + 14) quaternion:v8 - 28 rate:v8 - 12 userAccel:v8];
        [*(v5 + 1064) addObject:v10];
      }

      v8 += 50;
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_1002D57B4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1002D5850()
{
  v0 = sub_1002CDB10();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    sub_100009C7C();
    sub_10002EB78(&_mh_execute_header, v1, v2, "{msg%{public}.0s:restartSession can only happen in reading, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v3, v4, v5, v6, v21, v22, v23, v24, v25);
  }

  v7 = sub_1002CDB10();
  if (os_signpost_enabled(v7))
  {
    sub_100009C7C();
    sub_10002EAF4(&_mh_execute_header, v8, v9, v10, "restartSession can only happen in reading", "{msg%{public}.0s:restartSession can only happen in reading, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v11, v12, v21, v22, v23, v24, v25);
  }

  v13 = sub_1002CDB10();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    sub_100009C7C();
    sub_10002EB58(&_mh_execute_header, v14, v15, "{msg%{public}.0s:restartSession can only happen in reading, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v16, v17, v18, v19, v21, v22, v23, v24, v25);
  }

  v20 = abort_report_np();
  sub_1002D5984(v20);
}

void sub_1002D5984()
{
  v0 = sub_1002CDB10();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    sub_100009C7C();
    sub_10002EB78(&_mh_execute_header, v1, v2, "{msg%{public}.0s:trigger is null, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v3, v4, v5, v6, v20, v21, v22, v23, v24);
  }

  v7 = sub_1002CDB10();
  if (os_signpost_enabled(v7))
  {
    sub_100009C7C();
    sub_10002EAF4(&_mh_execute_header, v8, v9, v10, "trigger is null", "{msg%{public}.0s:trigger is null, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v11, v12, v20, v21, v22, v23, v24);
  }

  v13 = sub_1002CDB10();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    sub_100009C7C();
    sub_10002EB58(&_mh_execute_header, v14, v15, "{msg%{public}.0s:trigger is null, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v16, v17, v18, v19, v20, v21, v22, v23, v24);
  }

  abort_report_np();
  __break(1u);
}

void sub_1002D5AC0(NSObject **a1)
{
  v2 = sub_1002CDB10();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_1000190D0();
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:recording details can only be set in idle, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v5, 0x26u);
  }

  v3 = sub_1002CDB10();
  if (os_signpost_enabled(v3))
  {
    sub_1000190D0();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "recording details can only be set in idle", "{msg%{public}.0s:recording details can only be set in idle, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v5, 0x26u);
  }

  v4 = sub_1002CDB10();
  *a1 = v4;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    sub_1000190D0();
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:recording details can only be set in idle, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v5, 0x26u);
  }
}

int64x2_t CLRobustMaxAccelNorm::resetChunks(CLRobustMaxAccelNorm *this, unint64_t a2)
{
  v2 = 50000 * (a2 / 0xC350);
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 2) = v2;
  *(this + 3) = v2 + 100000;
  result = vaddq_s64(vdupq_n_s64(v2), xmmword_1003BF630);
  *this = result;
  return result;
}

int8x8_t CLRobustMaxAccelNorm::updateMaxes(CLRobustMaxAccelNorm *this, int8x16_t a2, int8x16_t a3, float a4)
{
  *a2.i32 = fabsf(*a2.i32);
  *&a3.i32[1] = a4;
  *a3.i8 = vabs_f32(*a3.i8);
  v4 = vextq_s8(vextq_s8(a2, a2, 4uLL), a3, 0xCuLL);
  v4.i32[3] = v4.i32[0];
  *(this + 2) = vbslq_s8(vcgtq_f32(v4, *(this + 2)), v4, *(this + 2));
  result = vbsl_s8(vcgt_f32(*a3.i8, *(this + 48)), *a3.i8, *(this + 48));
  *(this + 6) = result;
  return result;
}

__n128 CLRobustMaxAccelNorm::switchChunks(CLRobustMaxAccelNorm *this)
{
  *(this + 4) = *(this + 44);
  *(this + 10) = *(this + 13);
  result = *(this + 1);
  *(this + 6) = 0;
  *(this + 11) = 0;
  *this = result;
  *(this + 1) = vaddq_s64(vdupq_lane_s64(result.n128_i64[0], 0), xmmword_1003BF640);
  return result;
}

float CLRobustMaxAccelNorm::run(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 count];
  if (v4)
  {
    v5 = 0;
    v6 = 0.0;
    v24 = xmmword_1003BF640;
    do
    {
      v7 = [v3 objectAtIndex:{v5, *&v24}];
      v8 = *[v7 c_struct];
      v9 = *(a1 + 24);
      if (v9 <= v8)
      {
        v11 = sqrtf(((*(a1 + 36) * *(a1 + 36)) + (*(a1 + 32) * *(a1 + 32))) + (*(a1 + 40) * *(a1 + 40)));
        if (v6 < v11)
        {
          v6 = v11;
        }

        *(a1 + 32) = 0;
        *(a1 + 40) = 0;
        *(a1 + 48) = 0;
        v12 = 50000 * (v8 / 0xC350);
        v9 = v12 + 100000;
        *(a1 + 16) = v12;
        *(a1 + 24) = v12 + 100000;
        v13 = v12 - 50000;
        v10 = v12 + 50000;
        *a1 = v13;
        *(a1 + 8) = v10;
      }

      else
      {
        v10 = *(a1 + 8);
      }

      if (v10 <= v8)
      {
        v14 = sqrtf(((*(a1 + 36) * *(a1 + 36)) + (*(a1 + 32) * *(a1 + 32))) + (*(a1 + 40) * *(a1 + 40)));
        if (v6 < v14)
        {
          v6 = v14;
        }

        *(a1 + 32) = *(a1 + 44);
        *(a1 + 40) = *(a1 + 52);
        v15 = *(a1 + 16);
        *a1 = v15;
        *(a1 + 8) = v9;
        *(a1 + 48) = 0;
        *(a1 + 44) = 0;
        *(a1 + 16) = vaddq_s64(vdupq_n_s64(v15), v24);
      }

      v16 = *([v7 c_struct] + 2);
      v17 = *([v7 c_struct] + 3);
      v18 = [v7 c_struct];
      v19.i32[0] = v16;
      v20.i32[0] = v17;
      CLRobustMaxAccelNorm::updateMaxes(a1, v19, v20, v18[4]);

      ++v5;
    }

    while (v4 != v5);
  }

  else
  {
    v6 = 0.0;
  }

  v21 = sqrtf(((*(a1 + 36) * *(a1 + 36)) + (*(a1 + 32) * *(a1 + 32))) + (*(a1 + 40) * *(a1 + 40)));
  if (v6 >= v21)
  {
    v22 = v6;
  }

  else
  {
    v22 = v21;
  }

  return v22;
}

float CLRobustMaxAccelNorm::robustMaxAccelNorm(void *a1)
{
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  return CLRobustMaxAccelNorm::run(v2, a1);
}

double CLMartyInferencesAlgSevereCrashResult::reset(CLMartyInferencesAlgSevereCrashResult *this)
{
  *(this + 8) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 45) = 0;
  *(this + 14) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 40) = 0;
  result = 0.0;
  *(this + 84) = 0u;
  *(this + 100) = 0u;
  *(this + 116) = 0u;
  *(this + 130) = 0u;
  return result;
}

void CLMartyInferencesAlgSevereCrashResult::log(CLMartyInferencesAlgSevereCrashResult *this)
{
  if (qword_1004567F8 != -1)
  {
    sub_1002D969C();
  }

  v2 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 4);
    v4 = *(this + 5);
    v5 = *(this + 49);
    v6 = *(this + 48);
    v7 = *(this + 50);
    v8 = *(this + 51);
    v9 = *(this + 52);
    v10 = *(this + 14);
    v11 = *(this + 4);
    v12 = *(this + 5);
    v13 = *(this + 6);
    v14 = *(this + 7);
    v15 = *(this + 64);
    v16 = *(this + 65);
    v17 = *(this + 66);
    v18 = *(this + 68);
    v19 = *(this + 69);
    v20 = *(this + 70);
    v21 = *(this + 71);
    v22 = *(this + 72);
    v23 = *(this + 73);
    v24 = *(this + 74);
    v25 = *(this + 75);
    v26 = *(this + 76);
    v27 = *(this + 77);
    v28 = *(this + 79);
    v29 = *(this + 144);
    v30 = *(this + 145);
    v31 = *(this + 80);
    v32 = *(this + 78);
    v33 = *(this + 81);
    v34 = *(this + 37);
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
    v49 = 1026;
    v50 = v10;
    v51 = 2050;
    v52 = v11;
    v53 = 2050;
    v54 = v12;
    v55 = 2050;
    v56 = v13;
    v57 = 2050;
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
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[M][SC] AlgBlock summary,A,%{public}llu,B,%{public}llu,C,%{public}d,D,%{public}d,E,%{public}d,F,%{public}d,G,%{public}d,H,%{public}d,config-1,%{public}f,config-2,%{public}f,config-3,%{public}f,config-4,%{public}f,debug-1a,%{public}u,debug-1b,%{public}u,debug-1c,%{public}u,debug-2a,%{public}u,debug-2b,%{public}u,debug-2c,%{public}u,debug-2d,%{public}u,debug-2e,%{public}u,debug-2f,%{public}u,debug-2g,%{public}u,debug-2h,%{public}u,debug-2i,%{public}u,debug-2j,%{public}u,debug-2k,%{public}u,debug-2l,%{public}u,debug-2m,%{public}u,debug-2n,%{public}u,debug-2o,%{public}u,debug-2p,%{public}u,debug-2q,%{public}u", buf, 0xDAu);
  }
}

void CLMartyInferencesAlgSevereCrash::CLMartyInferencesAlgSevereCrash(CLMartyInferencesAlgSevereCrash *this, uint64_t *a2)
{
  CLKappaAlgBlock::CLKappaAlgBlock(this, a2 + 1);
  v4 = *a2;
  *v5 = *a2;
  *(this + *(v4 - 152)) = a2[6];
  *(this + *(*this - 160)) = a2[7];
  *(this + *(*this - 168)) = a2[8];
  *(this + *(*this - 176)) = a2[9];
  *(this + 28) = 0u;
  *(this + 444) = 0u;
  *(this + 460) = 0u;
  *(this + 412) = 0u;
  *(this + 428) = 0u;
  *(this + 380) = 0u;
  *(this + 396) = 0u;
  *(this + 348) = 0u;
  *(this + 364) = 0u;
  *(this + 316) = 0u;
  *(this + 332) = 0u;
  *(this + 284) = 0u;
  *(this + 300) = 0u;
  *(this + 252) = 0u;
  *(this + 268) = 0u;
  *(this + 220) = 0u;
  *(this + 236) = 0u;
  *(this + 188) = 0u;
  *(this + 204) = 0u;
  *(this + 156) = 0u;
  *(this + 172) = 0u;
  *(this + 124) = 0u;
  *(this + 140) = 0u;
  *(this + 92) = 0u;
  *(this + 108) = 0u;
  *(this + 60) = 0u;
  *(this + 76) = 0u;
  *(this + 44) = 0u;
  *(this + 476) = 0;
  *(this + 484) = 0x500000000;
  *(this + 528) = 0;
  *(this + 64) = 0;
  *(this + 63) = 0;
  *(this + 520) = 0;
  *(this + 67) = 0;
  *(this + 543) = 0;
  sub_1002D9298();
}

void sub_1002D6A04(_Unwind_Exception *a1)
{
  v4 = *(v1 + 64);
  if (v4)
  {
    sub_100009A48(v4);
  }

  v5 = 472;
  while (1)
  {
    v6 = *(v1 + v5);
    if (v6)
    {
      sub_100009A48(v6);
    }

    v5 -= 16;
    if (v5 == 248)
    {
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

      CLKappaAlgBlock::~CLKappaAlgBlock(v1, (v2 + 8));
      _Unwind_Resume(a1);
    }
  }
}

char **sub_1002D6B24@<X0>(uint64_t a1@<X0>, char ***a2@<X8>)
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

uint64_t CLMartyInferencesAlgSevereCrash::setDeescalatorsMode(uint64_t this)
{
  v1 = 0;
  v2 = *(this + 24);
  do
  {
    *(*(this + 256 + v1) + 36) = v2;
    v1 += 16;
  }

  while (v1 != 224);
  return this;
}

void CLMartyInferencesAlgSevereCrash::CLMartyInferencesAlgSevereCrash(CLMartyInferencesAlgSevereCrash *this)
{
  *this = off_100411FE8;
  *(this + 69) = off_100412090;
  *(this + 70) = off_100412158;
  *(this + 71) = off_100412210;
  CLKappaAlgBlock::CLKappaAlgBlock(this, off_10042F5C0);
  *v1 = off_10042F070;
  *(v1 + 552) = off_10042F330;
  *(v1 + 560) = off_10042F478;
  *(v1 + 568) = off_10042F568;
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
  *(v1 + 28) = 0u;
  *(v1 + 252) = 0u;
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
  *(v1 + 476) = 0;
  *(v1 + 484) = 0x500000000;
  *(v1 + 528) = 0;
  *(v1 + 504) = 0;
  *(v1 + 512) = 0;
  *(v1 + 520) = 0;
  *(v1 + 536) = 0;
  *(v1 + 543) = 0;
  sub_1002D9298();
}

void sub_1002D733C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 64);
  if (v3)
  {
    sub_100009A48(v3);
  }

  v4 = 472;
  while (1)
  {
    v5 = *(v1 + v4);
    if (v5)
    {
      sub_100009A48(v5);
    }

    v4 -= 16;
    if (v4 == 248)
    {
      v6 = *(v1 + 31);
      if (v6)
      {
        sub_100009A48(v6);
      }

      v7 = *(v1 + 29);
      if (v7)
      {
        sub_100009A48(v7);
      }

      v8 = *(v1 + 27);
      if (v8)
      {
        sub_100009A48(v8);
      }

      v9 = *(v1 + 25);
      if (v9)
      {
        sub_100009A48(v9);
      }

      v10 = *(v1 + 23);
      if (v10)
      {
        sub_100009A48(v10);
      }

      v11 = *(v1 + 21);
      if (v11)
      {
        sub_100009A48(v11);
      }

      v12 = *(v1 + 19);
      if (v12)
      {
        sub_100009A48(v12);
      }

      v13 = *(v1 + 17);
      if (v13)
      {
        sub_100009A48(v13);
      }

      v14 = *(v1 + 15);
      if (v14)
      {
        sub_100009A48(v14);
      }

      v15 = *(v1 + 13);
      if (v15)
      {
        sub_100009A48(v15);
      }

      v16 = *(v1 + 11);
      if (v16)
      {
        sub_100009A48(v16);
      }

      v17 = *(v1 + 9);
      if (v17)
      {
        sub_100009A48(v17);
      }

      v18 = *(v1 + 7);
      if (v18)
      {
        sub_100009A48(v18);
      }

      v19 = *(v1 + 5);
      if (v19)
      {
        sub_100009A48(v19);
      }

      CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_10042F5C0);
      _Unwind_Resume(a1);
    }
  }
}

void CLMartyInferencesAlgSevereCrash::resetConfiguration(CLMartyInferencesAlgSevereCrash *this)
{
  v20 = [CSPersistentConfiguration configBaseKey:"InferencesAlgSCConfig" forFeatureMode:*(this + 24)];
  v2 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v3) = 3.0;
  LODWORD(v4) = 15.0;
  LODWORD(v5) = 1142308864;
  [v2 algorithmThresholdNumber:0 inArrayForKey:v20 withMinValue:v3 maxValue:v5 defaultValue:v4];
  LODWORD(v21) = v6;
  LODWORD(v7) = 1110704128;
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
  for (i = 256; i != 480; i += 16)
  {
    (*(**(this + i) + 16))(*(this + i));
  }

  v19 = [v2 objectForKey:@"MartyForceLowSenseDetected"];
  if (v19)
  {
    *(this + 545) = [v2 BOOLForKey:@"MartyForceLowSenseDetected"] | 0x100;
  }

  CLMartyInferencesAlgSevereCrash::setConfig(this, &v21);
}

double CLMartyInferencesAlgSevereCrash::setConfig(uint64_t a1, _OWORD *a2)
{
  *(*(a1 + 504) + 16) = *a2;
  if (qword_1004567F8 != -1)
  {
    sub_1002D969C();
  }

  v3 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 504);
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
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[M][SC] config, %f, %f, %f, %f", &v10, 0x2Au);
  }

  return result;
}

uint64_t CLMartyInferencesAlgSevereCrash::reset(CLMartyInferencesAlgSevereCrash *this)
{
  result = (*(**(this + 63) + 24))(*(this + 63));
  if (*(this + 528) == 1)
  {
    *(this + 528) = 0;
  }

  *(this + 537) = 0;
  *(this + 539) = 0;
  *(this + 121) = 0;
  return result;
}

void CLMartyInferencesAlgSevereCrash::epochFinalize(CLMartyInferencesAlgSevereCrash *this, uint64_t a2)
{
  v72 = +[CSPersistentConfiguration sharedConfiguration];
  v4 = (this + 28);
  if (CLKappaDeescalator::isDecidedForOption(*(this + 7)))
  {
    for (i = 0; i != 224; i += 16)
    {
      CLKappaDeescalator::previousEpochMadeDecision(*(this + i + 256));
    }

    if (*(this + 528) == 1)
    {
      *(this + 528) = 0;
    }
  }

  if (qword_1004567F8 != -1)
  {
    sub_1002D969C();
  }

  v6 = qword_100456800;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(this + 537);
    v8 = *(this + 538);
    v9 = *(this + 539);
    isDecidedForOption = CLKappaDeescalator::isDecidedForOption(*(this + 7));
    shouldDeescalateForOption = CLKappaDeescalator::shouldDeescalateForOption(*v4);
    *buf = 67110144;
    v74 = v7;
    v75 = 1024;
    *v76 = v8;
    *&v76[4] = 1024;
    *&v76[6] = v9;
    v77 = 1024;
    v78 = isDecidedForOption;
    v79 = 1024;
    v80 = shouldDeescalateForOption;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[M][SC] is %u %u %u %u %u", buf, 0x20u);
  }

  CLKappaDeescalationDecision::reset(this + 7);
  if (*(this + 537))
  {
    v12 = 1;
  }

  else
  {
    v12 = *(this + 538);
  }

  if (*(this + 540))
  {
    v13 = 1;
  }

  else
  {
    v13 = *(this + 541);
  }

  v14 = v13 & 1;
  v15 = *(this + 243);
  v16 = *(this + 122);
  v17 = *(this + 242);
  if (v17 + v15 >= v16)
  {
    v18 = *(this + 122);
  }

  else
  {
    v18 = 0;
  }

  *(this + v17 + v15 - v18 + 492) = v14;
  if (v16 <= v15)
  {
    if (v17 + 1 < v16)
    {
      LOWORD(v16) = 0;
    }

    *(this + 242) = v17 + 1 - v16;
  }

  else
  {
    *(this + 243) = v15 + 1;
  }

  v19 = *(this + 544);
  if (*(this + 543))
  {
    v19 |= 2u;
  }

  if (*(this + 539))
  {
    v19 |= 4u;
  }

  v71 = v19;
  v20 = [v72 getBooleanDefault:@"MartyForceEarlyCrashInSevereBlock"];
  if ((v20 & 0x100) != 0 && (v20 & 1) != 0 && (*(this + 528) & 1) == 0 && (*(this + 536) & 1) == 0)
  {
    if (qword_1004567F8 != -1)
    {
      sub_1002D96B0();
    }

    v46 = qword_100456800;
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEBUG, "[M][SC] forcing early crash decision", buf, 2u);
    }

    *(this + 65) = a2;
    *(this + 528) = 1;
    *(this + 536) = 1;
LABEL_33:
    *(this + 120) = 0;
    if (*(this + 243))
    {
      v21 = 0;
      do
      {
        v22 = *sub_10002E0A8(this + 242, v21);
        if (v22 == 1)
        {
          break;
        }

        ++v21;
      }

      while (v21 < *(this + 243));
    }

    else
    {
      LOBYTE(v22) = 0;
    }

    if (*(this + 546) != 1)
    {
      goto LABEL_52;
    }

    v22 = *(this + 545);
    if (v22 == 1)
    {
      if (qword_1004567F8 != -1)
      {
        sub_1002D96B0();
      }

      v23 = qword_100456800;
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_51;
      }

      *buf = 0;
      v24 = "[M][SC] force low sense high";
    }

    else
    {
      if (qword_1004567F8 != -1)
      {
        sub_1002D96B0();
      }

      v23 = qword_100456800;
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_51;
      }

      *buf = 0;
      v24 = "[M][SC] force low sense low";
    }

    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, v24, buf, 2u);
LABEL_51:

LABEL_52:
    sub_100004EB4(*(this + 28), v22);
    v25 = 0;
    *(this + 65) = a2;
    *(this + 528) = 1;
    do
    {
      CLKappaDeescalator::earlyCrashDetected(*(this + v25 + 256), a2);
      v25 += 16;
    }

    while (v25 != 224);
    if (qword_1004567F8 != -1)
    {
      sub_1002D96B0();
    }

    v26 = qword_100456800;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109376;
      v74 = v12 & 1;
      v75 = 2048;
      *v76 = a2;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "[M][SC] anyCrashDetectorDecision:%d, crashTimestamp:%llu", buf, 0x12u);
    }

    goto LABEL_59;
  }

  if (v12)
  {
    goto LABEL_33;
  }

  LOBYTE(v22) = 0;
LABEL_59:
  CLKappaDeescalatorAutocorrelation::updateWithAnyCrashDetected(*(this + 6), v12 & 1);
  v27 = *(this + 528);
  if (v27 != 1)
  {
    goto LABEL_114;
  }

  v28 = *(this + 65);
  CLKappaDeescalatorStaticGps::updateCountTotal(*(this + 18));
  v29 = (a2 - v28) * 0.000001;
  v30 = *(this + 63);
  if (v30[6] < v29)
  {
    CLKappaDeescalatorMovingGps::updateCountTotal(*(this + 8));
    v30 = *(this + 63);
  }

  if (v30[4] >= v29)
  {
    goto LABEL_114;
  }

  if (v30[5] > v29)
  {
    if (!*(this + 120))
    {
      for (j = 0; j != 224; j += 16)
      {
        v32 = CLKappaDeescalator::evaluateAtMinHoldDuration(*(this + j + 256));
        CLKappaDeescalationDecision::update(this + 7, v32);
      }

      *(this + 120) = 1;
    }

    v33 = 0;
    while (1)
    {
      v34 = CLKappaDeescalator::evaluateBetweenMinAndMaxHoldDuration(*(this + v33 + 256));
      CLKappaDeescalationDecision::update(this + 7, v34);
      if (v34 == 3)
      {
        break;
      }

      if (v34 == 2)
      {
        if (qword_1004567F8 != -1)
        {
          sub_1002D96B0();
        }

        v35 = qword_100456800;
        if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, "[M][SC] two-level feed is escalation candidate", buf, 2u);
        }

        v36 = 1;
        *(*(this + 63) + 145) = 1;
LABEL_81:
        sub_100004EBC(*(this + 28), v36);
      }

      v33 += 16;
      if (v33 == 224)
      {
        v47 = *(this + 63);
        if ((*(v47 + 28) < v29 || *(v47 + 145) == 1) && *(this + 120) == 1)
        {
          for (k = 0; k != 224; k += 16)
          {
            v49 = CLKappaDeescalator::evaluateAtSecondDeescalationOpportunity(*(this + k + 256));
            CLKappaDeescalationDecision::update(this + 7, v49);
          }

          v45 = 0;
          *(this + 120) = 2;
          goto LABEL_115;
        }

LABEL_114:
        v45 = 0;
        goto LABEL_115;
      }
    }

    if (qword_1004567F8 != -1)
    {
      sub_1002D96B0();
    }

    v37 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "[M][SC] two-level feed is no longer escalation candidate", buf, 2u);
    }

    v36 = 0;
    goto LABEL_81;
  }

  for (m = 0; m != 224; m += 16)
  {
    v39 = CLKappaDeescalator::evaluateAtBoundary(*(this + m + 256));
    CLKappaDeescalationDecision::update(this + 7, v39);
    if (v39 == 3)
    {
      if (qword_1004567F8 != -1)
      {
        sub_1002D96B0();
      }

      v42 = qword_100456800;
      if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "[M][SC] two-level feed is no longer escalation candidate", buf, 2u);
      }

      v41 = 0;
    }

    else
    {
      if (v39 != 2)
      {
        continue;
      }

      if (qword_1004567F8 != -1)
      {
        sub_1002D96B0();
      }

      v40 = qword_100456800;
      if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEBUG, "[M][SC] two-level feed is escalation candidate", buf, 2u);
      }

      v41 = 1;
      *(*(this + 63) + 145) = 1;
    }

    sub_100004EBC(*(this + 28), v41);
  }

  if (*(this + 536) == 1 && (CLKappaDeescalator::isDecidedForOption(*v4) & 1) == 0)
  {
    CLKappaDeescalationDecision::update(this + 7, 6);
  }

  v43 = CLKappaDeescalator::isDecidedForOption(*v4);
  CLKappaDeescalator::raiseUnless(v43, "[M][SC] Reached boundary condition but made no decision", v44);
  v45 = 1;
LABEL_115:
  if (CLKappaDeescalator::isDecidedForOption(*v4))
  {
    if (qword_1004567F8 != -1)
    {
      sub_1002D96B0();
    }

    v50 = qword_100456800;
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
    {
      v51 = sub_10003D6C0(this + 7);
      *buf = 67109120;
      v74 = v51;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEBUG, "[M][SC] deescalation decision decided %d", buf, 8u);
    }

    if (sub_10003D6C0(this + 7))
    {
      for (n = 0; n != 224; n += 16)
      {
        v53 = CLKappaDeescalator::evaluateFollowingEscalation(*(this + n + 256));
        CLKappaDeescalationDecision::update(this + 7, v53);
      }
    }

    v54 = sub_10003D6C0(this + 7);
    if (v54)
    {
      v55 = 0;
    }

    else
    {
      v55 = *(*(this + 63) + 145);
    }

    if (qword_1004567F8 != -1)
    {
      sub_1002D96B0();
    }

    v56 = qword_100456800;
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67240448;
      v74 = v54;
      v75 = 1026;
      *v76 = v55 & 1;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "[M][SC] de %{public}d suppress %{public}d", buf, 0xEu);
    }
  }

  else
  {
    v55 = 0;
    LOBYTE(v54) = 0;
  }

  v57 = *(this + 63);
  *(v57 + 32) = a2;
  *(v57 + 48) = v54;
  if (*(this + 528) == 1)
  {
    v58 = *(this + 65);
  }

  else
  {
    v58 = 0;
  }

  *(v57 + 40) = v58;
  *(v57 + 49) = v27;
  *(*(this + 63) + 50) = CLKappaDeescalator::isDecidedForOption(*v4);
  v59 = CLKappaDeescalator::shouldDeescalateForOption(*(this + 7));
  v60 = *(this + 63);
  *(v60 + 51) = v59;
  *(v60 + 52) = v55 & 1;
  *(v60 + 56) = v71;
  *(v60 + 64) = *(this + 537);
  *(v60 + 65) = *(this + 269);
  *(v60 + 67) = v22;
  *(*(this + 63) + 68) = CLKappaDeescalator::shouldDeescalateForOption(*(*(this + 4) + 24));
  *(*(this + 63) + 69) = CLKappaDeescalator::shouldDeescalateForOption(*(*(this + 6) + 24));
  *(*(this + 63) + 70) = CLKappaDeescalator::shouldDeescalateForOption(*(*(this + 8) + 24));
  *(*(this + 63) + 71) = CLKappaDeescalator::shouldDeescalateForOption(*(*(this + 10) + 24));
  *(*(this + 63) + 72) = CLKappaDeescalator::shouldDeescalateForOption(*(*(this + 12) + 24));
  *(*(this + 63) + 73) = CLKappaDeescalator::shouldDeescalateForOption(*(*(this + 14) + 24));
  *(*(this + 63) + 74) = CLKappaDeescalator::shouldDeescalateForOption(*(*(this + 16) + 24));
  *(*(this + 63) + 75) = CLKappaDeescalator::shouldDeescalateForOption(*(*(this + 18) + 24));
  *(*(this + 63) + 76) = CLKappaDeescalator::shouldDeescalateForOption(*(*(this + 20) + 24));
  *(*(this + 63) + 77) = CLKappaDeescalator::shouldDeescalateForOption(*(*(this + 22) + 24));
  *(*(this + 63) + 80) = CLKappaDeescalator::shouldDeescalateForOption(*(*(this + 24) + 24));
  *(*(this + 63) + 79) = CLKappaDeescalator::shouldDeescalateForOption(*(*(this + 28) + 24));
  *(*(this + 63) + 78) = CLKappaDeescalator::shouldDeescalateForOption(*(*(this + 30) + 24));
  v61 = CLKappaDeescalator::shouldDeescalateForOption(*(*(this + 26) + 24));
  v62 = *(this + 63);
  *(v62 + 81) = v61;
  *(v62 + 144) = v45;
  v63.i32[0] = *(*(this + 4) + 28);
  v63.i32[1] = *(*(this + 6) + 28);
  v63.i32[2] = *(*(this + 8) + 28);
  v63.i32[3] = *(*(this + 10) + 28);
  v64.i64[0] = 0x100000001;
  v64.i64[1] = 0x100000001;
  *(v62 + 84) = vbicq_s8(v64, vceqzq_s32(v63));
  v63.i32[0] = *(*(this + 12) + 28);
  v63.i32[1] = *(*(this + 14) + 28);
  v63.i32[2] = *(*(this + 16) + 28);
  v63.i32[3] = *(*(this + 18) + 28);
  *(v62 + 100) = vbicq_s8(v64, vceqzq_s32(v63));
  *(v62 + 116) = *(*(this + 20) + 28) != 0;
  *(v62 + 120) = *(*(this + 22) + 28) != 0;
  *(v62 + 124) = *(*(this + 30) + 28) != 0;
  v65 = *(this + 28);
  v66 = *(v65 + 28);
  *(v62 + 136) = *(*(this + 24) + 28) != 0;
  *(v62 + 140) = *(*(this + 26) + 28) != 0;
  *(v62 + 128) = 0;
  if (v66)
  {
    v67 = sub_100005308(v65);
    if (v67 == 1)
    {
      *(*(this + 63) + 128) = 1;
    }

    else if (v67 == 2)
    {
      *(*(this + 63) + 132) = 1;
    }
  }

  v68 = 0;
  v69 = this + 256;
  do
  {
    (*(**&v69[v68] + 32))(*&v69[v68], a2);
    (*(**&v69[v68] + 24))(*&v69[v68]);
    v68 += 16;
  }

  while (v68 != 224);
  v70 = *(this + 63);
  if (v70[28])
  {
    v70[37] |= 1u;
  }

  if (v70[23])
  {
    v70[37] |= 2u;
  }

  if (v70[26])
  {
    v70[37] |= 4u;
  }

  if (v70[24])
  {
    v70[37] |= 8u;
  }

  if (v70[22])
  {
    v70[37] |= 0x10u;
  }

  if (v70[27])
  {
    v70[37] |= 0x20u;
  }

  if (v70[25])
  {
    v70[37] |= 0x80u;
  }

  if (v70[21])
  {
    v70[37] |= 0x200u;
  }

  if (v70[30])
  {
    v70[37] |= 0x1000u;
  }

  if (v70[32])
  {
    v70[37] |= 0x400u;
  }

  if (v70[33])
  {
    v70[37] |= 0x800u;
  }

  if (v70[34])
  {
    v70[37] |= 0x2000u;
  }

  if (v70[29])
  {
    v70[37] |= 0x4000u;
  }

  if (v70[31])
  {
    v70[37] |= 0x8000u;
  }

  if (v70[35])
  {
    v70[37] |= 0x10000u;
  }
}

void CLMartyInferencesAlgSevereCrash::feedTrigger(CLMartyInferencesAlgSevereCrash *this, TriggerSample *a2)
{
  CLKappaDeescalatorAOI::updateWithTrigger(*(this + 4), a2);
  CLKappaDeescalatorSkiLift::updateWithTrigger(*(this + 12), a2);
  sub_100005638(*(this + 28), a2);
  v4 = *(this + 20);

  CLKappaDeescalatorWaterProxy::updateWithTrigger(v4, a2);
}

void CLMartyInferencesAlgSevereCrash::feedGPS(CLKappaDeescalatorAOI **this, const CSSPUGps_Struct *a2)
{
  if (qword_1004567F8 != -1)
  {
    sub_1002D969C();
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
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[M][SC] lat %{sensitive}f long %{sensitive}f", &v7, 0x16u);
  }

  CLKappaDeescalatorAOI::updateWithCurrentLocation(this[4], a2);
  CLKappaDeescalatorWaterProxy::updateWithCurrentLocation(this[20], a2);
}

void CLMartyInferencesAlgSevereCrash::feedRoads(uint64_t a1, uint64_t a2)
{
  if (qword_1004567F8 != -1)
  {
    sub_1002D969C();
  }

  v4 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a2 + 8);
    v6 = 134217984;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[M][SC] feedRoads distanceToNearestRoad:%f", &v6, 0xCu);
  }

  sub_100005910(*(a1 + 224), a2);
  CLKappaDeescalatorWaterProxy::updateWithRoadInfo(*(a1 + 160), a2);
}

uint64_t CLMartyInferencesAlgSevereCrash::feedFeatures(uint64_t a1, uint64_t a2)
{
  CLKappaDeescalatorStaticGps::updateWithFeatures(*(a1 + 144), a2);
  v4 = *(a1 + 64);

  return CLKappaDeescalatorMovingGps::updateWithFeatures(v4, a2);
}

uint64_t virtual thunk toCLMartyInferencesAlgSevereCrash::feedFeatures(void *a1, uint64_t a2)
{
  v3 = a1 + *(*a1 - 48);
  CLKappaDeescalatorStaticGps::updateWithFeatures(*(v3 + 18), a2);
  v4 = *(v3 + 8);

  return CLKappaDeescalatorMovingGps::updateWithFeatures(v4, a2);
}

unsigned __int16 *CLMartyInferencesAlgSevereCrash::feedFeatures(uint64_t a1, uint64_t a2)
{
  return CLKappaDeescalatorSteps::updateWithStepsFeatures(*(a1 + 112), a2);
}

{
  return CLKappaDeescalatorMAP::updateWithIsMAP(*(a1 + 176), a2);
}

unsigned __int16 *virtual thunk toCLMartyInferencesAlgSevereCrash::feedFeatures(void *a1, uint64_t a2)
{
  return CLKappaDeescalatorSteps::updateWithStepsFeatures(*(a1 + *(*a1 - 104) + 112), a2);
}

{
  return CLKappaDeescalatorMAP::updateWithIsMAP(*(a1 + *(*a1 - 136) + 176), a2);
}

float CLMartyInferencesAlgSevereCrash::feedFeatures(uint64_t a1, uint64_t a2)
{
  CLKappaDeescalatorQuiescence::updateWithPulseFeatures(*(a1 + 80), a2);
  v4 = *(a1 + 240);

  return CLSafetyDeescalatorProjectilePhone::updateWithPulseFeatures(v4, a2);
}

{
  CLKappaDeescalatorQuiescence::updateWithSpinFeatures(*(a1 + 80), a2);
  v4 = *(a1 + 240);

  return CLSafetyDeescalatorProjectilePhone::updateWithSpinFeatures(v4, a2);
}

{
  return CLKappaDeescalatorTriggerClusters::updateWithTriggerClustersFeatures(*(a1 + 128), a2);
}

{
  CLKappaDeescalatorMAP::updateWithFreeFall(*(a1 + 176), a2);
  v4 = *(a1 + 240);

  return CLSafetyDeescalatorProjectilePhone::updateWithFreeFallFeatures(v4, a2);
}

float virtual thunk toCLMartyInferencesAlgSevereCrash::feedFeatures(void *a1, uint64_t a2)
{
  v3 = a1 + *(*a1 - 32);
  CLKappaDeescalatorQuiescence::updateWithPulseFeatures(*(v3 + 10), a2);
  v4 = *(v3 + 30);

  return CLSafetyDeescalatorProjectilePhone::updateWithPulseFeatures(v4, a2);
}

{
  v3 = a1 + *(*a1 - 96);
  CLKappaDeescalatorQuiescence::updateWithSpinFeatures(*(v3 + 10), a2);
  v4 = *(v3 + 30);

  return CLSafetyDeescalatorProjectilePhone::updateWithSpinFeatures(v4, a2);
}

{
  return CLKappaDeescalatorTriggerClusters::updateWithTriggerClustersFeatures(*(a1 + *(*a1 - 128) + 128), a2);
}

{
  v3 = a1 + *(*a1 - 112);
  CLKappaDeescalatorMAP::updateWithFreeFall(*(v3 + 22), a2);
  v4 = *(v3 + 30);

  return CLSafetyDeescalatorProjectilePhone::updateWithFreeFallFeatures(v4, a2);
}

uint64_t CLMartyInferencesAlgSevereCrash::feedEstimates(uint64_t a1, char *a2)
{
  v2 = *a2;
  *(a1 + 537) = *a2;
  *(a1 + 540) = a2[1];
  *(a1 + 544) = a2[2];
  return CLSafetyDeescalatorProjectilePhone::updateWithCoupledCrash(*(a1 + 240), v2);
}

{
  v2 = *a2;
  *(a1 + 538) = *a2;
  *(a1 + 541) = a2[1];
  *(a1 + 543) = a2[2];
  return CLSafetyDeescalatorProjectilePhone::updateWithUncoupledCrash(*(a1 + 240), v2);
}

{
  v3 = *a2;
  *(a1 + 539) = *a2;
  *(a1 + 542) = a2[1];
  CLKappaDeescalatorAutocorrelation::updateWithHighSpeedCrash(*(a1 + 48), v3);
  v4 = *(a1 + 112);
  v5 = *(a1 + 539);

  return CLKappaDeescalatorSteps::updateWithHighSpeedCrash(v4, v5);
}

uint64_t virtual thunk toCLMartyInferencesAlgSevereCrash::feedEstimates(void *a1, char *a2)
{
  v2 = a1 + *(*a1 - 72);
  v3 = *a2;
  v2[537] = *a2;
  v2[540] = a2[1];
  v2[544] = a2[2];
  return CLSafetyDeescalatorProjectilePhone::updateWithCoupledCrash(*(v2 + 30), v3);
}

{
  v2 = a1 + *(*a1 - 80);
  v3 = *a2;
  v2[538] = *a2;
  v2[541] = a2[1];
  v2[543] = a2[2];
  return CLSafetyDeescalatorProjectilePhone::updateWithUncoupledCrash(*(v2 + 30), v3);
}

{
  return CLMartyInferencesAlgSevereCrash::feedEstimates(a1 + *(*a1 - 88), a2);
}

double CLMartyInferencesAlgSevereCrash::epochReset(CLMartyInferencesAlgSevereCrash *this)
{
  v1 = *(this + 63);
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 45) = 0;
  *(v1 + 56) = 0;
  v2 = *(this + 63);
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  result = 0.0;
  *(v2 + 84) = 0u;
  *(v2 + 100) = 0u;
  *(v2 + 116) = 0u;
  *(v2 + 130) = 0u;
  return result;
}

double virtual thunk toCLMartyInferencesAlgSevereCrash::epochReset(CLMartyInferencesAlgSevereCrash *this)
{
  v1 = this + *(*this - 56);
  v2 = *(v1 + 63);
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 45) = 0;
  *(v2 + 56) = 0;
  v3 = *(v1 + 63);
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  result = 0.0;
  *(v3 + 84) = 0u;
  *(v3 + 100) = 0u;
  *(v3 + 116) = 0u;
  *(v3 + 130) = 0u;
  return result;
}

void sub_1002D8D34(CLKappaAlgBlock *a1)
{

  operator delete();
}

BOOL sub_1002D8D74(uint64_t a1, unint64_t a2)
{
  v4 = (a1 + 520);
  if (!*(a1 + 528))
  {
    v4 = &unk_1003BF698;
  }

  result = CLKappaAlgBlock::isActiveInferences(a1, a2, *v4);
  if (result)
  {
    if (*(a1 + 528) == 1 && (CLKappaDeescalator::isDecidedForOption(*(a1 + 28)) & 1) == 0)
    {
      if ((*(a1 + 528) & 1) == 0)
      {
        sub_100005BF0();
      }

      return *(a1 + 520) + (*(*(a1 + 504) + 20) * 1000000.0) > a2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1002D8E10(uint64_t result, char a2)
{
  v2 = 0;
  *(result + 24) = a2;
  do
  {
    *(*(result + 256 + v2) + 36) = a2;
    v2 += 16;
  }

  while (v2 != 224);
  return result;
}

void sub_1002D8E58(void *a1)
{

  operator delete();
}

void sub_1002D8EE4(void *a1)
{

  operator delete();
}

void sub_1002D8F70(void *a1)
{

  operator delete();
}

void sub_1002D8FD8(id a1)
{
  qword_100456800 = os_log_create("com.apple.anomalydetectiond", "Alg");

  _objc_release_x1();
}

void sub_1002D901C(CLKappaAlgBlock *this, uint64_t *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 152)) = a2[6];
  *(this + *(*this - 160)) = a2[7];
  *(this + *(*this - 168)) = a2[8];
  *(this + *(*this - 176)) = a2[9];
  v5 = *(this + 64);
  if (v5)
  {
    sub_100009A48(v5);
  }

  for (i = 472; i != 248; i -= 16)
  {
    v7 = *(this + i);
    if (v7)
    {
      sub_100009A48(v7);
    }
  }

  v8 = *(this + 31);
  if (v8)
  {
    sub_100009A48(v8);
  }

  v9 = *(this + 29);
  if (v9)
  {
    sub_100009A48(v9);
  }

  v10 = *(this + 27);
  if (v10)
  {
    sub_100009A48(v10);
  }

  v11 = *(this + 25);
  if (v11)
  {
    sub_100009A48(v11);
  }

  v12 = *(this + 23);
  if (v12)
  {
    sub_100009A48(v12);
  }

  v13 = *(this + 21);
  if (v13)
  {
    sub_100009A48(v13);
  }

  v14 = *(this + 19);
  if (v14)
  {
    sub_100009A48(v14);
  }

  v15 = *(this + 17);
  if (v15)
  {
    sub_100009A48(v15);
  }

  v16 = *(this + 15);
  if (v16)
  {
    sub_100009A48(v16);
  }

  v17 = *(this + 13);
  if (v17)
  {
    sub_100009A48(v17);
  }

  v18 = *(this + 11);
  if (v18)
  {
    sub_100009A48(v18);
  }

  v19 = *(this + 9);
  if (v19)
  {
    sub_100009A48(v19);
  }

  v20 = *(this + 7);
  if (v20)
  {
    sub_100009A48(v20);
  }

  v21 = *(this + 5);
  if (v21)
  {
    sub_100009A48(v21);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(this, a2 + 1);
}

void sub_1002D9378(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10042FC48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1002D9450(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10042FC98;
  CLSafetyDeescalatorProjectilePhone::CLSafetyDeescalatorProjectilePhone((a1 + 3));
  return a1;
}

void sub_1002D94CC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10042FC98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1002D95A4(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10042FCE8;
  CLSafetyDeescalatorGolf::CLSafetyDeescalatorGolf((a1 + 3));
  return a1;
}

void sub_1002D9620(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10042FCE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t CLSafetyFeaturesAlgJointDetectionResult::reset(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 12) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 24) = 0;
  return this;
}

void CLSafetyFeaturesAlgJointDetectionResult::log(CLSafetyFeaturesAlgJointDetectionResult *this)
{
  if (qword_1004567F8 != -1)
  {
    sub_1002DA904();
  }

  v2 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 3);
    v4 = *(this + 4);
    v5 = 134349312;
    v6 = v3;
    v7 = 2050;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[JD] AlgBlock summary,A,%{public}llu,B,%{public}llu\n", &v5, 0x16u);
  }
}

void CLSafetyFeaturesAlgJointDetection::CLSafetyFeaturesAlgJointDetection(CLSafetyFeaturesAlgJointDetection *this, uint64_t *a2)
{
  CLKappaAlgBlock::CLKappaAlgBlock(this, a2 + 1);
  v4 = *a2;
  *v5 = *a2;
  *(this + *(v4 - 152)) = a2[6];
  *(this + *(*this - 160)) = a2[7];
  *(this + *(*this - 168)) = a2[8];
  *(this + *(*this - 176)) = a2[9];
  *(this + 72) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 64) = 0;
  operator new();
}

void sub_1002D9A74(_Unwind_Exception *a1)
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

char **sub_1002D9AA8@<X0>(uint64_t a1@<X0>, char ***a2@<X8>)
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

void CLSafetyFeaturesAlgJointDetection::CLSafetyFeaturesAlgJointDetection(CLSafetyFeaturesAlgJointDetection *this)
{
  *this = off_100411FE8;
  *(this + 10) = off_100412090;
  *(this + 11) = off_100412158;
  *(this + 12) = off_100412210;
  CLKappaAlgBlock::CLKappaAlgBlock(this, off_100430328);
  *v1 = off_10042FDD8;
  *(v1 + 80) = off_100430098;
  *(v1 + 88) = off_1004301E0;
  *(v1 + 96) = off_1004302D0;
  *(v1 + 72) = 0;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0;
  operator new();
}

void sub_1002D9D74(_Unwind_Exception *a1)
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

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100430328);
  _Unwind_Resume(a1);
}

void CLSafetyFeaturesAlgJointDetection::reset(CLSafetyFeaturesAlgJointDetection *this)
{
  (*(**(this + 4) + 24))(*(this + 4));
  if (qword_1004567F8 != -1)
  {
    sub_1002DA904();
  }

  v1 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "[JD] reset", v2, 2u);
  }
}

void CLSafetyFeaturesAlgJointDetection::feedTrigger(CLSafetyFeaturesAlgJointDetection *this, const TriggerSample *a2)
{
  v3 = *(this + 24);
  if (v3 == 2)
  {
    if ((a2[1].rmsSN & 0x10000) == 0)
    {
      return;
    }

    goto LABEL_6;
  }

  if (v3 == 1)
  {
    if ((a2->path & 3) == 0)
    {
      return;
    }

LABEL_6:
    *(this + 8) = a2->timestamp;
    *(this + 72) = 1;
    return;
  }

  if (qword_1004567F8 != -1)
  {
    sub_1002DA904();
  }

  v4 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_FAULT))
  {
    v5 = *(this + 24);
    v6[0] = 67109120;
    v6[1] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "[JD] unsupported feature mode %u", v6, 8u);
  }
}

uint64_t CLSafetyFeaturesAlgJointDetection::epochFinalize(uint64_t this, uint64_t a2)
{
  v2 = *(this + 32);
  *(v2 + 24) = a2;
  if (*(this + 72) == 1)
  {
    v3 = *(this + 64);
  }

  else
  {
    v3 = 0;
  }

  *(v2 + 32) = v3;
  return this;
}

void *virtual thunk toCLSafetyFeaturesAlgJointDetection::epochFinalize(void *this, uint64_t a2)
{
  v2 = this + *(*this - 48);
  v3 = *(v2 + 4);
  *(v3 + 24) = a2;
  if (v2[72] == 1)
  {
    v4 = *(v2 + 8);
  }

  else
  {
    v4 = 0;
  }

  *(v3 + 32) = v4;
  return this;
}

void sub_1002DA040(CLKappaAlgBlock *this)
{
  *this = off_10042FDD8;
  *(this + 10) = off_100430098;
  *(this + 11) = off_1004301E0;
  *(this + *(*this - 176)) = off_1004302D0;
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
}