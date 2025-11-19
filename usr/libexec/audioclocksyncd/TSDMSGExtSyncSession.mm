@interface TSDMSGExtSyncSession
+ (id)withConfig:(id *)a3 andCallback:(id)a4;
- ($9A6480CA0849F83AAA69585CA702AD28)config;
- (_opaque_pthread_cond_t)sessionCond;
- (_opaque_pthread_mutex_t)sessionMutex;
- (id).cxx_construct;
- (int)start;
- (int)stop;
- (shared_ptr<std::counting_semaphore<3>>)extSyncSem;
- (timespec)startTime;
- (void)dealloc;
- (void)monitorSyncSessionThread;
- (void)runSyncSessionThread;
- (void)setSessionCond:(_opaque_pthread_cond_t *)a3;
- (void)setSessionMutex:(_opaque_pthread_mutex_t *)a3;
@end

@implementation TSDMSGExtSyncSession

+ (id)withConfig:(id *)a3 andCallback:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(TSDMSGExtSyncSession);
  v7 = v6;
  if (v6)
  {
    v6->_startTime.tv_sec = 0;
    v6->_startTime.tv_nsec = 0;
    *&v6->_config.syncId = *&a3->var0;
    v8 = *&a3->var2.var1;
    v9 = *&a3->var3.var1;
    v10 = *&a3->var5;
    v6->_config.simulationFilePath = a3->var7;
    *&v6->_config.toleranceSyncOutputNs = v10;
    *&v6->_config.syncMultiplier.denominator = v9;
    *&v6->_config.nominalTriggerDuration.denominator = v8;
    v6->_timeToLockNs = 0;
    v6->_triggerLostCnt = 0;
    v6->_callback = v5;
    v6->_triggerPresent = 0;
    *&v6->_syncSessionLocked = 0;
    v6->_maxTargetDuration = 0;
    v6->_nominalTriggerDurationNs = 0;
    v6->_sessionCond.__sig = 1018212795;
    *v6->_sessionCond.__opaque = 0u;
    *&v6->_sessionCond.__opaque[16] = 0u;
    *&v6->_sessionCond.__opaque[32] = 0;
    v6->_sessionMutex.__sig = 850045863;
    *&v6->_sessionMutex.__opaque[48] = 0;
    *&v6->_sessionMutex.__opaque[16] = 0u;
    *&v6->_sessionMutex.__opaque[32] = 0u;
    *v6->_sessionMutex.__opaque = 0u;
    v6->_exitStatus = -536870911;
    v11 = dispatch_group_create();
    dispatchGroup = v7->_dispatchGroup;
    v7->_dispatchGroup = v11;

    operator new();
  }

  return 0;
}

- (void)dealloc
{
  [(TSDMSGExtSyncSession *)self stop];
  dispatchGroup = self->_dispatchGroup;
  self->_dispatchGroup = 0;

  v4.receiver = self;
  v4.super_class = TSDMSGExtSyncSession;
  [(TSDMSGExtSyncSession *)&v4 dealloc];
}

- (int)start
{
  if ([(TSDMSGExtSyncSession *)self syncSessionThreadState])
  {
    return -536870203;
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10001F2D4;
  v18[3] = &unk_10004D128;
  v18[4] = self;
  if (qword_1000588C0 != -1)
  {
    dispatch_once(&qword_1000588C0, v18);
  }

  if (clock_gettime(_CLOCK_MONOTONIC, &self->_startTime) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10002D0EC();
  }

  [(TSDMSGExtSyncSession *)self setSyncSessionThreadState:1];
  v4 = [(TSDMSGExtSyncSession *)self dispatchGroup];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001F388;
  block[3] = &unk_10004D128;
  block[4] = self;
  dispatch_group_async(v4, qword_1000588B8, block);

  v5 = [(TSDMSGExtSyncSession *)self dispatchGroup];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10001F390;
  v16[3] = &unk_10004D128;
  v16[4] = self;
  dispatch_group_async(v5, qword_1000588B8, v16);

  pthread_mutex_lock(&self->_sessionMutex);
  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;
  [(TSDMSGExtSyncSession *)self config];
  [(TSDMSGExtSyncSession *)self config];
  sub_10001F398(&__tp, v14 / 0x3B9ACA00, v21 % 0x3B9ACA00);
  v3 = -536870199;
  while (![(TSDMSGExtSyncSession *)self syncSessionLocked]&& [(TSDMSGExtSyncSession *)self syncSessionThreadState]== 1)
  {
    v6 = pthread_cond_timedwait(&self->_sessionCond, &self->_sessionMutex, &__tp);
    if (v6)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10002DE6C();
      }

      if (v6 == 60)
      {
        v3 = -536870186;
      }

      else
      {
        v3 = -536870199;
      }

      break;
    }

    if ([(TSDMSGExtSyncSession *)self syncSessionLocked])
    {
      v3 = 0;
    }

    else if ([(TSDMSGExtSyncSession *)self syncSessionThreadState]== 3)
    {
      v3 = [(TSDMSGExtSyncSession *)self exitStatus];
    }
  }

  pthread_mutex_unlock(&self->_sessionMutex);
  if (v3)
  {
    [(TSDMSGExtSyncSession *)self stop];
  }

  else
  {
    v13.tv_sec = 0;
    v13.tv_nsec = 0;
    if (clock_gettime(_CLOCK_MONOTONIC, &v13))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10002DEE8();
      }
    }

    else
    {
      tv_sec = v13.tv_sec;
      v9 = [(TSDMSGExtSyncSession *)self startTime];
      tv_nsec = v13.tv_nsec;
      [(TSDMSGExtSyncSession *)self startTime];
      self->_timeToLockNs = tv_nsec + 1000000000 * (tv_sec - v9) - v11;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [(TSDMSGExtSyncSession *)self timeToLockNs];
        *buf = 134217984;
        v20 = v12;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "External sync session took %llu nanoseconds to lock", buf, 0xCu);
      }
    }
  }

  return v3;
}

- (int)stop
{
  v3 = -536870186;
  if ([(TSDMSGExtSyncSession *)self syncSessionThreadState]!= 1)
  {
    return -536870184;
  }

  [(TSDMSGExtSyncSession *)self setSyncSessionThreadState:2];
  v4 = [(TSDMSGExtSyncSession *)self dispatchGroup];
  v5 = dispatch_time(0, 5000000000);
  v6 = dispatch_group_wait(v4, v5);

  if (!v6)
  {
    return 0;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10002DF70();
  }

  return v3;
}

- (void)runSyncSessionThread
{
  v28 = 0;
  v3 = +[TSDClockManager sharedClockManager];
  if (v3)
  {
    memset(&__p, 0, sizeof(__p));
    MSGController::MSGController(buf, 0, 1);
    MSGController::MSGController(v25, 0, 1);
    [(TSDMSGExtSyncSession *)self config];
    size = v35.__r_.__value_.__l.__size_;
    if (v35.__r_.__value_.__l.__size_)
    {
      [(TSDMSGExtSyncSession *)self config];
      sub_100020650(&__p, v35.__r_.__value_.__l.__size_);
    }

    [(TSDMSGExtSyncSession *)self config];
    v5 = *&v30[4];
    [(TSDMSGExtSyncSession *)self config];
    v6 = *&v53;
    [(TSDMSGExtSyncSession *)self config];
    v7 = v32;
    [(TSDMSGExtSyncSession *)self config];
    v8 = v5 / v6;
    if (v8 * 1000000000.0 <= 1.84467441e19)
    {
      v10 = v54;
      [(TSDMSGExtSyncSession *)self setNominalTriggerDurationNs:(v8 * 1000000000.0)];
      v11 = [v3 machAbsoluteNanosecondsToTicks:{-[TSDMSGExtSyncSession nominalTriggerDurationNs](self, "nominalTriggerDurationNs")}];
      [(TSDMSGExtSyncSession *)self config];
      v12 = [v3 machAbsoluteNanosecondsToTicks:*(&v33 + 1)];
      [(TSDMSGExtSyncSession *)self config];
      v13 = [v3 machAbsoluteNanosecondsToTicks:v34];
      v14 = v7 / v10;
      v15 = v11 / v14;
      v16 = v15 - v12;
      if (v15 < v12 || __CFADD__(v11, v12) || (v17 = v15 - v13, v15 < v13) || (v20 = &v13[v11], __CFADD__(v11, v13)))
      {
        v9 = 3758097090;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10002E054();
        }
      }

      else
      {
        [(TSDMSGExtSyncSession *)self setMaxTargetDuration:&v12[v11]];
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          [(TSDMSGExtSyncSession *)self config];
          v19 = v49;
          [(TSDMSGExtSyncSession *)self config];
          *v29 = 134220032;
          *v30 = v16;
          *&v30[8] = 2048;
          *&v30[10] = &v12[v11];
          v31 = 2048;
          v32 = v17;
          LOWORD(v33) = 2048;
          *(&v33 + 2) = v20;
          WORD5(v33) = 1024;
          HIDWORD(v33) = (1.0 / v8);
          LOWORD(v34) = 1024;
          *(&v34 + 2) = v14;
          HIWORD(v34) = 1024;
          LODWORD(v35.__r_.__value_.__l.__data_) = v19;
          WORD2(v35.__r_.__value_.__r.__words[0]) = 1024;
          *(v35.__r_.__value_.__r.__words + 6) = v24;
          WORD1(v35.__r_.__value_.__r.__words[1]) = 1024;
          HIDWORD(v35.__r_.__value_.__r.__words[1]) = size != 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "alignToExternalSync args:\nminTargetFrameDur: %llu\nmaxTargetFrameDur: %llu\nminOutputFrameDur: %llu\nmaxOutputFrameDur: %llu\nnominalSystemFramerate: %u\nfrequencyMultiplier: %u\ntriggerId: %u\nsyncId: %u\nisSimulation: %i", v29, 0x48u);
        }

        [(TSDMSGExtSyncSession *)self config];
        *v29 = *v48;
        *&v30[4] = buf;
        [(TSDMSGExtSyncSession *)self config];
        *&v30[12] = v24;
        v32 = 0;
        [(TSDMSGExtSyncSession *)self config];
        LODWORD(v33) = v23;
        *(&v33 + 1) = v25;
        [(TSDMSGExtSyncSession *)self extSyncSem];
        v34 = v21;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100020740(&v35, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
        }

        else
        {
          v35 = __p;
        }

        v36 = v16;
        v37 = &v12[v11];
        v38 = v17;
        v39 = v20;
        v40 = (1.0 / v8);
        v41 = v14;
        v42 = 0;
        v43 = size != 0;
        v44 = 0;
        v45 = size != 0;
        v46 = 0;
        v47 = 0;
        if (v22)
        {
          sub_100020860(v22);
        }

        v9 = alignToExternalSync();
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *v48 = 67109632;
          v49 = v9;
          v50 = 1024;
          v51 = v28;
          v52 = 2048;
          v53 = *(&v28 + 1);
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "alignToExternalSync finished with status: 0x%x, exit state: 0x%x, detected fps:%f\n", v48, 0x18u);
        }

        if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v35.__r_.__value_.__l.__data_);
        }
      }
    }

    else
    {
      v9 = 3758097090;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10002E0E4();
      }
    }

    MSGController::~MSGController(v25);
    MSGController::~MSGController(buf);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002E128();
    }

    v9 = 3758097097;
  }

  pthread_mutex_lock(&self->_sessionMutex);
  [(TSDMSGExtSyncSession *)self setSyncSessionLocked:0];
  [(TSDMSGExtSyncSession *)self setExtSyncOutputs:v28];
  [(TSDMSGExtSyncSession *)self setExitStatus:v9];
  [(TSDMSGExtSyncSession *)self setSyncSessionThreadState:3];
  pthread_cond_broadcast(&self->_sessionCond);
  pthread_mutex_unlock(&self->_sessionMutex);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "TSDMSGSyncSession thread exiting.\n", buf, 2u);
  }
}

- (void)monitorSyncSessionThread
{
  if ([(TSDMSGExtSyncSession *)self syncSessionThreadState]== 3)
  {
    goto LABEL_26;
  }

  *&v3 = 134219264;
  v10 = v3;
  while (1)
  {
    [(TSDMSGExtSyncSession *)self extSyncSem];
    v15 = 500000000;
    v4 = sub_1000208CC(*buf, &v15);
    if (*&buf[8])
    {
      sub_100020860(*&buf[8]);
    }

    if ((v4 & 1) == 0)
    {
      goto LABEL_16;
    }

    if ([(TSDMSGExtSyncSession *)self syncSessionThreadState]== 2)
    {
      break;
    }

    current_status = load_current_status();
    v7 = v6;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = v10;
      *&buf[4] = current_status;
      *&buf[12] = 1024;
      *&buf[14] = v7;
      v17 = 1024;
      v18 = WORD2(v7);
      v19 = 1024;
      v20 = BYTE6(v7);
      v21 = 1024;
      v22 = HIBYTE(v7) & 1;
      v23 = 1024;
      v24 = (v7 & 0x200000000000000) != 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "sync status:\nestimatedTicksUntilFullySynced: %lli\nticksSinceLastReceivedTrigger: %u\nframesSinceLastInvalidTrigger: %u\nversion: %u\nisFullySyncedAndLocked: %u\nreceivedEnoughTriggers: %u\n", buf, 0x2Au);
    }

    if ([(TSDMSGExtSyncSession *)self syncSessionLocked]!= (v7 & 0x100000000000000uLL) >> 56)
    {
      pthread_mutex_lock(&self->_sessionMutex);
      if ([(TSDMSGExtSyncSession *)self syncSessionThreadState]!= 3)
      {
        [(TSDMSGExtSyncSession *)self setSyncSessionLocked:(v7 & 0x100000000000000) != 0];
        pthread_cond_broadcast(&self->_sessionCond);
      }

      pthread_mutex_unlock(&self->_sessionMutex);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100020018;
      block[3] = &unk_10004D128;
      block[4] = self;
      dispatch_async(qword_1000588B8, block);
    }

    v8 = [(TSDMSGExtSyncSession *)self triggerPresent];
    [(TSDMSGExtSyncSession *)self setTriggerPresent:v7 - 1 < [(TSDMSGExtSyncSession *)self maxTargetDuration]];
    if (v8 != [(TSDMSGExtSyncSession *)self triggerPresent])
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1000200E0;
      v13[3] = &unk_10004D128;
      v13[4] = self;
      dispatch_async(qword_1000588B8, v13);
      if (![(TSDMSGExtSyncSession *)self triggerPresent])
      {
        ++self->_triggerLostCnt;
      }
    }

LABEL_16:
    if ([(TSDMSGExtSyncSession *)self syncSessionThreadState]== 3)
    {
      goto LABEL_26;
    }
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Monitor thread: requesting external sync session to stop\n", buf, 2u);
  }

  externalSyncShouldStopRunning();
  pthread_mutex_lock(&self->_sessionMutex);
  *buf = 0;
  *&buf[8] = 0;
  sub_10001F398(buf, 4, 0);
  while ([(TSDMSGExtSyncSession *)self syncSessionThreadState]!= 3)
  {
    if (pthread_cond_timedwait(&self->_sessionCond, &self->_sessionMutex, buf))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10002E16C(self);
      }

      break;
    }
  }

  pthread_mutex_unlock(&self->_sessionMutex);
LABEL_26:
  if ([(TSDMSGExtSyncSession *)self syncSessionThreadState]== 3)
  {
    if ([(TSDMSGExtSyncSession *)self extSyncOutputs]== 3 || [(TSDMSGExtSyncSession *)self extSyncOutputs]== 4)
    {
      LODWORD(v9) = [(TSDMSGExtSyncSession *)self extSyncOutputs]>> 32;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1000201A8;
      v12[3] = &unk_10004D150;
      v12[4] = self;
      v12[5] = ((1.0 / v9) * 1000000000.0) - [(TSDMSGExtSyncSession *)self nominalTriggerDurationNs];
      dispatch_async(qword_1000588B8, v12);
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100020258;
    v11[3] = &unk_10004D128;
    v11[4] = self;
    dispatch_async(qword_1000588B8, v11);
  }
}

- (timespec)startTime
{
  tv_nsec = self->_startTime.tv_nsec;
  tv_sec = self->_startTime.tv_sec;
  result.tv_nsec = tv_nsec;
  result.tv_sec = tv_sec;
  return result;
}

- ($9A6480CA0849F83AAA69585CA702AD28)config
{
  v3 = *&self[3].var2.var1;
  v4 = *&self[3].var3.var1;
  retstr->var7 = self[3].var7;
  *&retstr->var0 = *&self[3].var0;
  *&retstr->var2.var1 = v3;
  v5 = *&self[3].var5;
  *&retstr->var3.var1 = v4;
  *&retstr->var5 = v5;
  return self;
}

- (_opaque_pthread_cond_t)sessionCond
{
  v3 = *&self[2].__opaque[16];
  *&retstr->__sig = *self[2].__opaque;
  *&retstr->__opaque[8] = v3;
  *&retstr->__opaque[24] = *&self[2].__opaque[32];
  return self;
}

- (void)setSessionCond:(_opaque_pthread_cond_t *)a3
{
  v3 = *&a3->__sig;
  v4 = *&a3->__opaque[8];
  *&self->_sessionCond.__opaque[24] = *&a3->__opaque[24];
  *&self->_sessionCond.__opaque[8] = v4;
  *&self->_sessionCond.__sig = v3;
}

- (_opaque_pthread_mutex_t)sessionMutex
{
  v3 = *&self[2].__opaque[32];
  *&retstr->__sig = *&self[2].__opaque[16];
  *&retstr->__opaque[8] = v3;
  v4 = *self[3].__opaque;
  *&retstr->__opaque[24] = *&self[2].__opaque[48];
  *&retstr->__opaque[40] = v4;
  return self;
}

- (void)setSessionMutex:(_opaque_pthread_mutex_t *)a3
{
  v3 = *&a3->__sig;
  v4 = *&a3->__opaque[8];
  v5 = *&a3->__opaque[24];
  *&self->_sessionMutex.__opaque[40] = *&a3->__opaque[40];
  *&self->_sessionMutex.__opaque[24] = v5;
  *&self->_sessionMutex.__opaque[8] = v4;
  *&self->_sessionMutex.__sig = v3;
}

- (shared_ptr<std::counting_semaphore<3>>)extSyncSem
{
  objc_copyCppObjectAtomic(v2, &self->_extSyncSem, sub_1000204C8);
  result.__cntrl_ = v4;
  result.__ptr_ = v3;
  return result;
}

- (id).cxx_construct
{
  *(self + 11) = 0;
  *(self + 12) = 0;
  return self;
}

@end