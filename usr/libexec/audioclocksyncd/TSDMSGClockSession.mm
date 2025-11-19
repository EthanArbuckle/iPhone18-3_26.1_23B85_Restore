@interface TSDMSGClockSession
+ (BOOL)checkRemoveKernelClock:(unsigned int)a3;
+ (id)createSession:(unsigned int)a3 nominalSyncDuration:(id)a4 clockId:(unint64_t)a5 error:(id *)a6;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)nominalSyncDuration;
- (_opaque_pthread_cond_t)clockSessionCond;
- (_opaque_pthread_mutex_t)clockSessionMutex;
- (int)isMSGSyncRunning:(BOOL *)a3;
- (int)start;
- (int)startClockThread:(unint64_t)a3;
- (int)stop;
- (int)stopClockThread:(unint64_t)a3;
- (timespec)startTime;
- (void)runClockSessionThread;
- (void)setClockSessionCond:(_opaque_pthread_cond_t *)a3;
- (void)setClockSessionMutex:(_opaque_pthread_mutex_t *)a3;
@end

@implementation TSDMSGClockSession

+ (BOOL)checkRemoveKernelClock:(unsigned int)a3
{
  v3 = [a1 getClkUserIdForSyncId:?];
  v4 = +[TSDClockManager sharedClockManager];
  v5 = 0;
  v6 = 0;
  v7 = 100;
  while (1)
  {
    v12 = v6;
    v8 = [v4 removePersistentUserFilteredClock:v3 error:&v12];
    v9 = v12;

    if ((v8 & 1) == 0)
    {
      break;
    }

    v5 = 1;
    v6 = v9;
    if (!--v7)
    {
      goto LABEL_6;
    }
  }

  if ((v5 & 1) == 0)
  {
    v10 = 0;
    goto LABEL_10;
  }

LABEL_6:
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10002CF18();
  }

  v10 = 1;
LABEL_10:

  return v10;
}

+ (id)createSession:(unsigned int)a3 nominalSyncDuration:(id)a4 clockId:(unint64_t)a5 error:(id *)a6
{
  if (a3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002A4F0();
    }

LABEL_4:
    [NSError errorWithDomain:@"TSDErrorDomain" code:-536870206 userInfo:0];
    *a6 = v7 = 0;
    goto LABEL_5;
  }

  var1 = a4.var1;
  if (!a4.var1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002CF90();
    }

    goto LABEL_4;
  }

  var0 = a4.var0;
  v12 = objc_alloc_init(TSDMSGClockSession);
  v7 = v12;
  if (v12)
  {
    v12->_syncId = 0;
    v12->_threadRestarts = 0;
    v12->_clockId = a5;
    [(TSDMSGClockSession *)v12 setClockThreadShouldRun:0];
    v7->_nominalSyncDuration.denominator = var1;
    v7->_clockSessionCond.__sig = 1018212795;
    *v7->_clockSessionCond.__opaque = 0u;
    *&v7->_clockSessionCond.__opaque[16] = 0u;
    *&v7->_clockSessionCond.__opaque[32] = 0;
    v7->_clockSessionMutex.__sig = 850045863;
    *v7->_clockSessionMutex.__opaque = 0u;
    *&v7->_clockSessionMutex.__opaque[16] = 0u;
    *&v7->_clockSessionMutex.__opaque[32] = 0u;
    *&v7->_clockSessionMutex.__opaque[48] = 0;
    v7->_nominalSyncDuration.numerator = var0;
    v13 = var0 / var1 * 1000000000.0;
    v7->_nominalSyncDurationNs = v13;
    v7->_nominalSyncDurationNsRounded = vcvtad_u64_f64(v13);
    v14 = [TSDMSGClockSession getClkUserIdForSyncId:0];
    userId = v7->_userId;
    v7->_userId = v14;
  }

LABEL_5:

  return v7;
}

- (int)isMSGSyncRunning:(BOOL *)a3
{
  *a3 = 0;
  MSGController::MSGController(v7, 0, 1);
  Status = MSGController::SyncGetStatus(v7, [(TSDMSGClockSession *)self syncId], a3);
  if (Status && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10002D074();
  }

  MSGController::~MSGController(v7);
  return Status;
}

- (int)startClockThread:(unint64_t)a3
{
  objc_initWeak(&location, self);
  pthread_mutex_lock(&self->_clockSessionMutex);
  if ([(TSDMSGClockSession *)self clockThreadRunning])
  {
    v5 = -536870203;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002D1A8();
    }
  }

  else
  {
    [(TSDMSGClockSession *)self setClockThreadShouldRun:1];
    if (clock_gettime(_CLOCK_MONOTONIC, &self->_startTime) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002D0EC();
    }

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10001D988;
    v9[3] = &unk_10004D100;
    objc_copyWeak(&v10, &location);
    [NSThread detachNewThreadWithBlock:v9];
    v8.tv_sec = a3 / 0x3B9ACA00;
    v8.tv_nsec = a3 % 0x3B9ACA00;
    v6 = pthread_cond_timedwait_relative_np(&self->_clockSessionCond, &self->_clockSessionMutex, &v8);
    if (v6 == 60)
    {
      v5 = -536870186;
    }

    else if (v6)
    {
      v5 = -536870199;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10002D130();
      }
    }

    else if ([(TSDMSGClockSession *)self clockThreadRunning])
    {
      v5 = 0;
    }

    else
    {
      v5 = -536870212;
    }

    objc_destroyWeak(&v10);
  }

  pthread_mutex_unlock(&self->_clockSessionMutex);
  objc_destroyWeak(&location);
  return v5;
}

- (int)stopClockThread:(unint64_t)a3
{
  v5 = -536870199;
  pthread_mutex_lock(&self->_clockSessionMutex);
  if ([(TSDMSGClockSession *)self clockThreadRunning])
  {
    [(TSDMSGClockSession *)self setClockThreadShouldRun:0];
    v8.tv_sec = a3 / 0x3B9ACA00;
    v8.tv_nsec = a3 % 0x3B9ACA00;
    v6 = pthread_cond_timedwait_relative_np(&self->_clockSessionCond, &self->_clockSessionMutex, &v8);
    if (v6 == 60)
    {
      v5 = -536870186;
    }

    else if (v6)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10002D230();
      }
    }

    else if ([(TSDMSGClockSession *)self clockThreadRunning])
    {
      v5 = -536870212;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = -536870195;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002D1EC();
    }
  }

  pthread_mutex_unlock(&self->_clockSessionMutex);
  return v5;
}

- (int)start
{
  v17 = 0;
  v3 = +[TSDClockManager sharedClockManager];
  if (!v3)
  {
    sub_10002D488();
LABEL_18:
    v9 = *buf;
    v11 = v19;
    goto LABEL_12;
  }

  v4 = [(TSDMSGClockSession *)self isMSGSyncRunning:&v17];
  if (v4)
  {
    sub_10002D2A8(v4, v4, buf, &v19);
    goto LABEL_18;
  }

  if ([(TSDMSGClockSession *)self clockId]== -1)
  {
    v5 = [v3 machAbsoluteNanosecondsToTicks:{-[TSDMSGClockSession nominalSyncDurationNsRounded](self, "nominalSyncDurationNsRounded")}];
    v6 = [(TSDMSGClockSession *)self nominalSyncDurationNsRounded];
    v7 = [(TSDMSGClockSession *)self userId];
    v16 = 0;
    v8 = [v3 addPersistentUserFilteredClockWithMachInterval:v5 domainInterval:v6 usingFilterShift:0 isAdaptive:0 withUserID:v7 error:&v16];
    v9 = v16;
    self->_clockId = v8;

    v10 = -536870212;
    if (v9 && [v9 code])
    {
      v10 = [v9 code];
    }

    if (self->_clockId == -1)
    {
      sub_10002D39C(v10, v5, v9, &v18, &v19, buf);
      v11 = v18;
      v5 = v19;
      v9 = *buf;
      goto LABEL_11;
    }
  }

  else
  {
    v5 = 0;
    v9 = 0;
  }

  v11 = [(TSDMSGClockSession *)self startClockThread:500000000];
LABEL_11:
  if (v11)
  {
LABEL_12:
    [(TSDMSGClockSession *)self stop];
    goto LABEL_15;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(TSDMSGClockSession *)self syncId];
    v13 = [(TSDMSGClockSession *)self nominalSyncDuration];
    [(TSDMSGClockSession *)self nominalSyncDuration];
    *buf = 67109888;
    *&buf[4] = v12;
    v21 = 2048;
    v22 = v5;
    v23 = 2048;
    v24 = v13;
    v25 = 2048;
    v26 = v14;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Added MSG clock with:\nsyncId: %u\nnominal machInterval: %llu\nnominal syncDuration: (%llu/%llu)", buf, 0x26u);
    v11 = 0;
  }

LABEL_15:

  return v11;
}

- (int)stop
{
  [(TSDMSGClockSession *)self stopClockThread:5000000000];
  v3 = +[TSDClockManager sharedClockManager];
  if (v3)
  {
    v4 = [(TSDMSGClockSession *)self userId];
    v11 = 0;
    v5 = [v3 removePersistentUserFilteredClock:v4 error:&v11];
    v6 = v11;

    v7 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        v8 = [(TSDMSGClockSession *)self syncId];
        *buf = 67109120;
        *&buf[4] = v8;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Removed MSG clock with syncId: %u\n", buf, 8u);
      }

      v9 = 0;
    }

    else
    {
      v9 = -536870212;
      if (sub_10002D548(v7, v6))
      {
        v6 = 0;
      }

      else if ([v6 code])
      {
        v9 = [v6 code];
      }
    }
  }

  else
  {
    sub_10002D5FC();
    v6 = *buf;
    v9 = v12;
  }

  return v9;
}

- (void)runClockSessionThread
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v66 = [(TSDMSGClockSession *)self syncId];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "MSG clock thread starting for syncId: %u\n", buf, 8u);
  }

  MSGController::MSGController(buf, 0, 1);
  v54 = 0;
  v52 = 0;
  v53 = 0;
  v51 = 0;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  *thread_info_out = 0u;
  policy_info = 0;
  v3 = +[TSDClockManager sharedClockManager];
  thread_info_outCnt = 28;
  v4 = [(TSDMSGClockSession *)self nominalSyncDurationNsRounded];
  [(TSDMSGClockSession *)self nominalSyncDurationNs];
  v6 = v5;
  [(TSDMSGClockSession *)self nominalSyncDurationNs];
  v48[0] = vcvtd_n_u64_f64(v7 - v6, 0x40uLL);
  v48[1] = v6;
  v55[0] = 0;
  *v67 = 0;
  if (mach_get_times())
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002D6BC();
    }

LABEL_15:
    v10 = 0;
LABEL_16:
    v11 = 0;
    goto LABEL_17;
  }

  v8 = *v67 - v55[0];
  if (*v67 < v55[0])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002DD7C();
    }

    goto LABEL_15;
  }

  if ((*v67 - v55[0]) < 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002DD04();
    }

    goto LABEL_15;
  }

  v9 = mach_thread_self();
  if (thread_info(v9, 5u, thread_info_out, &thread_info_outCnt))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002D734();
    }

    goto LABEL_15;
  }

  policy_info = HIDWORD(v60);
  v15 = [(TSDMSGClockSession *)self userId];
  v47 = 0;
  v16 = [v3 getPersistentUserFilteredClockIdentifier:v15 error:&v47];
  v10 = v47;

  if (v16 == -1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v17 = [(TSDMSGClockSession *)self userId];
      sub_10002DC9C(v17, [v10 code], v55);
    }

    goto LABEL_16;
  }

  v18 = [v3 clockWithClockIdentifier:v16];
  if (!v18)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002DBC8();
    }

    goto LABEL_16;
  }

  v11 = v18;
  v19 = MSGController::registerForTimingInfo(buf, [(TSDMSGClockSession *)self syncId], 0, &v54, 0);
  if (v19)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002D7AC(v55, v19, [(TSDMSGClockSession *)self syncId]);
    }
  }

  else
  {
    v43 = 0x7735940 / v4 + 1;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [(TSDMSGClockSession *)self nominalSyncDuration];
      [(TSDMSGClockSession *)self nominalSyncDuration];
      v22 = v21;
      v23 = [(TSDMSGClockSession *)self syncId];
      LODWORD(v55[0]) = 134219008;
      *(v55 + 4) = v20;
      WORD2(v55[1]) = 2048;
      *(&v55[1] + 6) = v22;
      HIWORD(v55[2]) = 2048;
      v55[3] = v43;
      LOWORD(v56) = 1024;
      *(&v56 + 2) = v23;
      HIWORD(v56) = 2048;
      v57 = -v8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Nominal sync period: (%llu/%llu), nominal syncs per poll: %llu, syncId: %u, matOffset: %lli\n", v55, 0x30u);
    }

    v24 = mach_thread_self();
    if (thread_policy_set(v24, 3u, &policy_info, 1u))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10002D7EC();
      }
    }

    else
    {
      CurrentMasterFrame = MSGController::getCurrentMasterFrame(buf, &v53, &v51, &v52);
      if (CurrentMasterFrame)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10002D864(v55, CurrentMasterFrame, [(TSDMSGClockSession *)self syncId]);
        }
      }

      else
      {
        *&v26 = 134218496;
        v42 = v26;
        while (2)
        {
          if ([(TSDMSGClockSession *)self clockThreadShouldRun])
          {
            v27 = v54;
            v28 = v51;
            v56 = 0;
            memset(v55, 0, sizeof(v55));
            v29 = v53 + v43;
            if (v53 + v43)
            {
              while (1)
              {
                *v67 = 0;
                if (MSGController::getNextNFrames(buf, v27, 5u, v28, v55, v67))
                {
                  break;
                }

                v30 = *v67 + 4;
                v28 = v56;
                if (*v67 + 4 >= v29)
                {
                  goto LABEL_51;
                }
              }

              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                sub_10002D8A4();
              }
            }

            else
            {
              v30 = 0;
LABEL_51:
              if (v30 - v29 >= 5)
              {
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  sub_10002DB08();
                }
              }

              else
              {
                v31 = v55[4 - (v30 - v29)];
                if (v31)
                {
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
                  {
                    *v67 = 134218240;
                    *&v67[4] = v29;
                    v68 = 2048;
                    v69 = v31;
                    _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Calculated future frame#: %llu, time: %llu\n", v67, 0x16u);
                  }

                  if (![(TSDMSGClockSession *)self clockThreadRunning])
                  {
                    pthread_mutex_lock(&self->_clockSessionMutex);
                    [(TSDMSGClockSession *)self setClockThreadRunning:1];
                    pthread_cond_broadcast(&self->_clockSessionCond);
                    pthread_mutex_unlock(&self->_clockSessionMutex);
                  }

                  v32 = v31 - v8;
                  mach_wait_until(v31 - v8);
                  v33 = 10;
                  while (1)
                  {
                    v34 = MSGController::getCurrentMasterFrame(buf, &v53, &v51, &v52);
                    if (v34)
                    {
                      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                      {
                        sub_10002D91C(v55, v34, [(TSDMSGClockSession *)self syncId]);
                      }

                      goto LABEL_75;
                    }

                    if (v53 == v29)
                    {
                      break;
                    }

                    if (v53 < v29)
                    {
                      mach_wait_until(v32);
                    }

                    if (!--v33)
                    {
                      if (v53 != v29)
                      {
                        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                        {
                          sub_10002D95C(v55, v53, v29, [(TSDMSGClockSession *)self syncId]);
                        }

                        goto LABEL_75;
                      }

                      break;
                    }
                  }

                  v35 = sub_100028578(v48, v29, v55);
                  if (*&v55[2] == 0)
                  {
                    if (v55[0] <= 0x7FFFFFFFFFFFFFFEuLL)
                    {
                      v36 = v55[1];
                    }

                    else
                    {
                      v36 = v55[1] + 1;
                    }

                    v37 = v51 - v8;
                    v46 = v10;
                    v38 = [v11 addTimestampWithMachAbsolute:v51 - v8 andDomainTime:v36 error:{&v46, v35}];
                    v39 = v46;

                    if (v38)
                    {
                      v10 = v39;
                      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
                      {
                        v40 = [(TSDMSGClockSession *)self syncId];
                        LODWORD(v55[0]) = v42;
                        *(v55 + 4) = v37;
                        WORD2(v55[1]) = 2048;
                        *(&v55[1] + 6) = v36;
                        HIWORD(v55[2]) = 1024;
                        LODWORD(v55[3]) = v40;
                        _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Added cross-timestamp: (%llu : %llu), syncId: %u\n", v55, 0x1Cu);
                        v10 = v39;
                      }

                      continue;
                    }

                    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                    {
                      sub_10002DA40(v55, [(TSDMSGClockSession *)self syncId]);
                    }

                    v10 = v39;
                  }

                  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    sub_10002D9C0(&v53);
                  }
                }

                else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  sub_10002DA8C();
                }
              }
            }
          }

          break;
        }
      }
    }

LABEL_75:
    v41 = MSGController::unregisterForTimingInfo(buf, v54);
    if (v41 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002DB88(v67, v41, [(TSDMSGClockSession *)self syncId]);
    }
  }

LABEL_17:

  MSGController::~MSGController(buf);
  if ([(TSDMSGClockSession *)self clockThreadShouldRun])
  {
    ++self->_threadRestarts;
    if ([(TSDMSGClockSession *)self threadRestarts]> 9)
    {
      v12 = 10;
    }

    else
    {
      v12 = [(TSDMSGClockSession *)self threadRestarts];
    }

    v14 = 100 << v12;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002DDF4();
    }

    usleep(1000 * v14);
    objc_initWeak(thread_info_out, self);
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_10001EB84;
    v44[3] = &unk_10004D100;
    objc_copyWeak(&v45, thread_info_out);
    [NSThread detachNewThreadWithBlock:v44];
    objc_destroyWeak(&v45);
    objc_destroyWeak(thread_info_out);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(TSDMSGClockSession *)self syncId];
      thread_info_out[0] = 67109120;
      thread_info_out[1] = v13;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "MSG clock thread exiting for syncId: %u\n", thread_info_out, 8u);
    }

    pthread_mutex_lock(&self->_clockSessionMutex);
    [(TSDMSGClockSession *)self setClockThreadRunning:0];
    pthread_cond_broadcast(&self->_clockSessionCond);
    pthread_mutex_unlock(&self->_clockSessionMutex);
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

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)nominalSyncDuration
{
  denominator = self->_nominalSyncDuration.denominator;
  numerator = self->_nominalSyncDuration.numerator;
  result.var1 = denominator;
  result.var0 = numerator;
  return result;
}

- (_opaque_pthread_cond_t)clockSessionCond
{
  v3 = *self[2].__opaque;
  *&retstr->__sig = *&self[1].__opaque[32];
  *&retstr->__opaque[8] = v3;
  *&retstr->__opaque[24] = *&self[2].__opaque[16];
  return self;
}

- (void)setClockSessionCond:(_opaque_pthread_cond_t *)a3
{
  v3 = *&a3->__sig;
  v4 = *&a3->__opaque[8];
  *&self->_clockSessionCond.__opaque[24] = *&a3->__opaque[24];
  *&self->_clockSessionCond.__opaque[8] = v4;
  *&self->_clockSessionCond.__sig = v3;
}

- (_opaque_pthread_mutex_t)clockSessionMutex
{
  v3 = *&self[2].__opaque[16];
  *&retstr->__sig = *self[2].__opaque;
  *&retstr->__opaque[8] = v3;
  v4 = *&self[2].__opaque[48];
  *&retstr->__opaque[24] = *&self[2].__opaque[32];
  *&retstr->__opaque[40] = v4;
  return self;
}

- (void)setClockSessionMutex:(_opaque_pthread_mutex_t *)a3
{
  v3 = *&a3->__sig;
  v4 = *&a3->__opaque[8];
  v5 = *&a3->__opaque[24];
  *&self->_clockSessionMutex.__opaque[40] = *&a3->__opaque[40];
  *&self->_clockSessionMutex.__opaque[24] = v5;
  *&self->_clockSessionMutex.__opaque[8] = v4;
  *&self->_clockSessionMutex.__sig = v3;
}

@end