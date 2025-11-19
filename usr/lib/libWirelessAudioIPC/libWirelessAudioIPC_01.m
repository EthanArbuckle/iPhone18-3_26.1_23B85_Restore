void applesauce::dispatch::v1::group_session::~group_session(dispatch_object_t *this)
{
  v2 = *this;
  if (v2)
  {
    dispatch_group_leave(v2);
    if (*this)
    {
      dispatch_release(*this);
    }
  }
}

uint64_t waipc::timesync::BasebandService::setupProvider(os_unfair_lock *this)
{
  os_unfair_lock_assert_owner(this + 8);
  if (*&this[36]._os_unfair_lock_opaque)
  {
    waipc::timesync::BasebandService::setupProvider();
  }

  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3802000000;
  v13[3] = __Block_byref_object_copy__2;
  v13[4] = __Block_byref_object_dispose__2;
  std::shared_ptr<waipc::timesync::BasebandProvider>::shared_ptr[abi:ne200100]<waipc::timesync::BasebandProvider,0>(&v11, this);
  v2 = v12;
  v13[5] = v11;
  v14 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 0x40000000;
  v10[2] = ___ZN5waipc8timesync15BasebandService13setupProviderEv_block_invoke;
  v10[3] = &unk_29EE90B80;
  v10[4] = v13;
  v10[5] = this;
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 0x40000000;
  v9[2] = ___ZN5waipc8timesync15BasebandService13setupProviderEv_block_invoke_2;
  v9[3] = &unk_29EE90BA8;
  v9[4] = v13;
  v9[5] = this;
  v7[5] = this;
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 0x40000000;
  v8[2] = ___ZN5waipc8timesync15BasebandService13setupProviderEv_block_invoke_10;
  v8[3] = &unk_29EE90BD0;
  v8[4] = v13;
  v8[5] = this;
  v6[5] = this;
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 0x40000000;
  v7[2] = ___ZN5waipc8timesync15BasebandService13setupProviderEv_block_invoke_2_15;
  v7[3] = &unk_29EE90BF8;
  v7[4] = v13;
  v5[10] = this;
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 0x40000000;
  v6[2] = ___ZN5waipc8timesync15BasebandService13setupProviderEv_block_invoke_3;
  v6[3] = &unk_29EE90C20;
  v6[4] = v13;
  v3 = *&this[4]._os_unfair_lock_opaque;
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 0x40000000;
  v5[2] = ___ZN5waipc8timesync15BasebandService13setupProviderEv_block_invoke_4;
  v5[3] = &unk_29EE90C48;
  v5[4] = v10;
  v5[5] = v9;
  v5[6] = v8;
  v5[7] = v7;
  v5[8] = v6;
  v5[9] = v13;
  dispatch_async(v3, v5);
  _Block_object_dispose(v13, 8);
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  return 1;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __Block_byref_object_dispose__2(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN5waipc8timesync15BasebandService13setupProviderEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  Logger = waipc::logging::getLogger(1u);
  if (os_log_type_enabled(Logger, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_298307000, Logger, OS_LOG_TYPE_INFO, "provider connected", buf, 2u);
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 48);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = v6;
      if (*(v4 + 40))
      {
        os_unfair_lock_lock((v2 + 32));
        if (*(v2 + 144))
        {
          if ((*(v2 + 272) & 1) == 0)
          {
            *(v2 + 272) = 1;
            v8 = *(v2 + 280);
            *(v2 + 280) = 0;
            if (v8)
            {
              CFRelease(v8);
            }

            v9 = *(v2 + 424);
            *(v2 + 424) = 0;
            v10 = *(v2 + 344);
            if (v10 != (v2 + 352))
            {
              do
              {
                v11 = *(v10 + 32);
                v12 = v10[6];
                if (v12)
                {
                  v13 = v10[5];
                  atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                  v14 = std::__shared_weak_count::lock(v12);
                  if (v14)
                  {
                    v15 = v13 == 0;
                  }

                  else
                  {
                    v15 = 1;
                  }

                  v16 = !v15;
                }

                else
                {
                  v16 = 0;
                  v14 = 0;
                }

                (*(**(v2 + 144) + 16))(*(v2 + 144), v11, v16);
                if (v14)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v14);
                }

                if (v12)
                {
                  std::__shared_weak_count::__release_weak(v12);
                }

                v17 = v10[1];
                if (v17)
                {
                  do
                  {
                    v18 = v17;
                    v17 = *v17;
                  }

                  while (v17);
                }

                else
                {
                  do
                  {
                    v18 = v10[2];
                    v15 = *v18 == v10;
                    v10 = v18;
                  }

                  while (!v15);
                }

                v10 = v18;
              }

              while (v18 != (v2 + 352));
            }

            v19 = *(v2 + 368);
            v20 = (v2 + 376);
LABEL_30:
            while (v19 != v20)
            {
              if (*(v19 + 72) == 1)
              {
                __assert_rtn("setupProvider_block_invoke", "BasebandService.cpp", 158, "!info.awaitingRemoval");
              }

              (*(**(v2 + 144) + 24))(*(v2 + 144), *(v19 + 32), v19[5], v19[7]);
              v21 = v19[1];
              v22 = v19;
              if (v21)
              {
                do
                {
                  v23 = v21;
                  v21 = *v21;
                }

                while (v21);
              }

              else
              {
                do
                {
                  v23 = v22[2];
                  v15 = *v23 == v22;
                  v22 = v23;
                }

                while (!v15);
              }

              if (v23 != v20)
              {
                v24 = *(v19 + 32);
                while (*(v23 + 32) == v24)
                {
                  v25 = v23[1];
                  if (v25)
                  {
                    do
                    {
                      v19 = v25;
                      v25 = *v25;
                    }

                    while (v25);
                  }

                  else
                  {
                    do
                    {
                      v19 = v23[2];
                      v15 = *v19 == v23;
                      v23 = v19;
                    }

                    while (!v15);
                  }

                  v23 = v19;
                  if (v19 == v20)
                  {
                    goto LABEL_30;
                  }
                }
              }

              v19 = v23;
            }

            if (waipc::util::Broadcaster<void ()(waipc::timesync::KalmanEstimator const&,BOOL)>::context::hasObservers(*(v2 + 328)))
            {
              waipc::timesync::BasebandProvider::triggerTimesyncMeasurement(*(v2 + 144));
            }

            os_unfair_lock_unlock((v2 + 32));
            waipc::util::Broadcaster<void ()(BOOL,__CFString const*)>::context::broadcast<BOOL,decltype(nullptr)>(*(v2 + 312), 1);
            if (v9)
            {
              dispatch_group_leave(v9);
              dispatch_release(v9);
            }

            goto LABEL_52;
          }

          v26 = "!fConnected";
          v27 = 140;
        }

        else
        {
          v26 = "fProvider";
          v27 = 139;
        }

        __assert_rtn("setupProvider_block_invoke", "BasebandService.cpp", v27, v26);
      }

LABEL_52:
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

void sub_298317EA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::dispatch::v1::group_session::~group_session(va);
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

void ___ZN5waipc8timesync15BasebandService13setupProviderEv_block_invoke_2(uint64_t a1, const void *a2)
{
  v4 = *(a1 + 40);
  Logger = waipc::logging::getLogger(1u);
  if (os_log_type_enabled(Logger, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_298307000, Logger, OS_LOG_TYPE_INFO, " provider disconnectedBlock", buf, 2u);
  }

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 48);
  if (v7)
  {
    v8 = std::__shared_weak_count::lock(v7);
    if (v8)
    {
      v9 = v8;
      if (*(v6 + 40))
      {
        os_unfair_lock_lock((v4 + 32));
        *(v4 + 272) = 0;
        applesauce::CF::StringRef::from_get(a2, &v37);
        v10 = *(v4 + 280);
        *(v4 + 280) = v37;
        v37 = v10;
        if (v10)
        {
          CFRelease(v10);
        }

        v11 = *(v4 + 416);
        if (v11)
        {
          dispatch_retain(*(v4 + 416));
          dispatch_group_enter(v11);
        }

        v12 = *(v4 + 424);
        *(v4 + 424) = v11;
        if (v12)
        {
          dispatch_group_leave(v12);
          dispatch_release(v12);
        }

        *(v4 + 288) = 1;
        v13 = *(v4 + 416);
        if (v13)
        {
          dispatch_retain(*(v4 + 416));
          dispatch_group_enter(v13);
        }

        v14 = *(v4 + 432);
        *(v4 + 432) = v13;
        if (v14)
        {
          dispatch_group_leave(v14);
          dispatch_release(v14);
        }

        v36 = a2;
        v15 = *(v4 + 344);
        if (v15 != (v4 + 352))
        {
          while (1)
          {
            v16 = v15[6];
            if (v16)
            {
              break;
            }

LABEL_29:
            v22 = v15[1];
            if (v22)
            {
              do
              {
                v23 = v22;
                v22 = *v22;
              }

              while (v22);
            }

            else
            {
              do
              {
                v23 = v15[2];
                v24 = *v23 == v15;
                v15 = v23;
              }

              while (!v24);
            }

            v15 = v23;
            if (v23 == (v4 + 352))
            {
              goto LABEL_35;
            }
          }

          v17 = v15[5];
          atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          v18 = std::__shared_weak_count::lock(v16);
          if (!v18)
          {
LABEL_28:
            std::__shared_weak_count::__release_weak(v16);
            goto LABEL_29;
          }

          v19 = v18;
          if (v17)
          {
            *v17 = 0;
            if (*(v17 + 64) == 1)
            {
              v20 = *(v4 + 416);
              if (v20)
              {
                dispatch_retain(*(v4 + 416));
                dispatch_group_enter(v20);
              }

              v21 = *(v17 + 56);
              *(v17 + 56) = v20;
              if (!v21)
              {
                goto LABEL_27;
              }

              goto LABEL_26;
            }

            v21 = *(v17 + 56);
            *(v17 + 56) = 0;
            if (v21)
            {
LABEL_26:
              dispatch_group_leave(v21);
              dispatch_release(v21);
            }
          }

LABEL_27:
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
          goto LABEL_28;
        }

LABEL_35:
        v25 = *(v4 + 368);
        v26 = (v4 + 376);
        while (v25 != v26)
        {
          v27 = v25;
          v28 = v25[1];
          v29 = v25;
          if (v28)
          {
            do
            {
              v30 = v28;
              v28 = *v28;
            }

            while (v28);
          }

          else
          {
            do
            {
              v30 = v29[2];
              v24 = *v30 == v29;
              v29 = v30;
            }

            while (!v24);
          }

          if (v30 != v26)
          {
            v31 = *(v25 + 32);
            while (*(v30 + 32) == v31)
            {
              v32 = v30[1];
              if (v32)
              {
                do
                {
                  v25 = v32;
                  v32 = *v32;
                }

                while (v32);
              }

              else
              {
                do
                {
                  v25 = v30[2];
                  v24 = *v25 == v30;
                  v30 = v25;
                }

                while (!v24);
              }

              v30 = v25;
              if (v25 == v26)
              {
                goto LABEL_53;
              }
            }
          }

          v25 = v30;
LABEL_53:
          if (*(v27 + 72) == 1)
          {
            std::__tree<std::__value_type<waipc::timesync::BasebandProvider::bufferId,waipc::timesync::BasebandService::bufferInfo>,std::__map_value_compare<waipc::timesync::BasebandProvider::bufferId,std::__value_type<waipc::timesync::BasebandProvider::bufferId,waipc::timesync::BasebandService::bufferInfo>,std::less<waipc::timesync::BasebandProvider::bufferId>,true>,std::allocator<std::__value_type<waipc::timesync::BasebandProvider::bufferId,waipc::timesync::BasebandService::bufferInfo>>>::erase((v4 + 368), v27);
          }

          else
          {
            v33 = *(v4 + 416);
            if (v33)
            {
              dispatch_retain(*(v4 + 416));
              dispatch_group_enter(v33);
            }

            v34 = v27[8];
            v27[8] = v33;
            if (v34)
            {
              dispatch_group_leave(v34);
              dispatch_release(v34);
            }
          }
        }

        v35 = *(v4 + 152);
        *(v4 + 144) = 0;
        *(v4 + 152) = 0;
        if (v35)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v35);
        }

        os_unfair_lock_unlock((v4 + 32));
        waipc::util::Broadcaster<void ()(BOOL,__CFString const*)>::context::broadcast<BOOL,__CFString const*>(*(v4 + 312), 0, v36);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }
}

void ___ZN5waipc8timesync15BasebandService13setupProviderEv_block_invoke_10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v54 = *MEMORY[0x29EDCA608];
  v3 = *(*(a1 + 32) + 8);
  if (!*(v3 + 48))
  {
    goto LABEL_29;
  }

  v6 = *(a1 + 40);
  v7 = std::__shared_weak_count::lock(*(v3 + 48));
  if (!v7)
  {
    goto LABEL_29;
  }

  v8 = v7;
  if (!*(v3 + 40))
  {
    goto LABEL_28;
  }

  os_unfair_lock_lock((v6 + 32));
  if (!a3)
  {
    __assert_rtn("setupProvider_block_invoke", "BasebandService.cpp", 251, "count > 0");
  }

  v39 = v8;
  v9 = 0;
  v38 = a2;
  v10 = a3;
  do
  {
    memset(v40, 0, sizeof(v40));
    waipc::timesync::BasebandService::timesyncMeasurementAdapter::measurementFrom((v6 + 112), a2, v40);
    if (*(v6 + 288))
    {
      goto LABEL_17;
    }

    *buf = *(v6 + 192);
    v11 = *&v40[16];
    *&__y = 0;
    v12 = modf(*&v40[24], &__y);
    v13 = *&__y;
    waipc::timesync::Estimator::timestamp::normalize(buf);
    if (v12 >= 0.0)
    {
      v16 = 0.0;
    }

    else
    {
      v16 = 1.0;
    }

    v17 = (__PAIR128__(v11 + v13, *&v12) - COERCE_UNSIGNED_INT64(0.0)) >> 64;
    v18 = v17 == v14;
    v19 = v17 < v14;
    if (v18)
    {
      v19 = v12 + v16 < v15;
    }

    if (v19)
    {
      Logger = waipc::logging::getLogger(1u);
      if (os_log_type_enabled(Logger, OS_LOG_TYPE_DEFAULT))
      {
        v21 = *(v6 + 192) + vcvtmd_s64_f64(*(v6 + 200));
        *buf = 134218240;
        *&buf[4] = v21;
        *&buf[12] = 2048;
        *&buf[14] = *&v40[16] + vcvtmd_s64_f64(*&v40[24]);
        _os_log_impl(&dword_298307000, Logger, OS_LOG_TYPE_DEFAULT, "out-of-order time sync measurement prev=%llu new=%llu", buf, 0x16u);
      }

      *(v6 + 288) = 1;
LABEL_17:
      v22 = *(v6 + 128);
      v23 = v22 / *(v6 + 136) * (v22 / *(v6 + 136));
      v24 = *(v6 + 48);
      v25 = *(v6 + 40) * v23;
      *&__y = v22 / *(v6 + 136);
      *(&__y + 1) = v25;
      v47 = v23 * v24 / (1.0 / v22 * 1000000000.0);
      waipc::timesync::KalmanEstimator::KalmanEstimator(buf, &__y, v40);
      *(v6 + 216) = v50;
      *(v6 + 232) = v51;
      *(v6 + 248) = v52;
      *(v6 + 264) = v53;
      *(v6 + 168) = *&buf[8];
      *(v6 + 184) = *v49;
      *(v6 + 200) = *&v49[16];
      waipc::timesync::BasebandService::logEstimator(v6, (v6 + 160));
      *(v6 + 288) = 0;
      v9 = 1;
      goto LABEL_18;
    }

    if (*(v6 + 288))
    {
      goto LABEL_17;
    }

    waipc::timesync::KalmanEstimator::deviceToHost(v6 + 160, *&v40[16], *&v40[24]);
    v27 = v26;
    v29 = v28;
    v30 = *v40;
    v31 = waipc::timesync::KalmanEstimator::deviceToHostVariance(v6 + 160, *&v40[16], *&v40[24]);
    v32 = v29;
    v33 = sqrt(v31 + *&v40[32]) * 3.0;
    if (fabs(v29 - *(&v30 + 1) + (v27 - v30)) >= v33)
    {
      v34 = waipc::logging::getLogger(1u);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218752;
        *&buf[4] = *&v40[16] + vcvtmd_s64_f64(*&v40[24]);
        *&buf[12] = 2048;
        *&buf[14] = *v40 + vcvtmd_s64_f64(*&v40[8]);
        *&buf[22] = 2048;
        *v49 = v27 + vcvtmd_s64_f64(v32);
        *&v49[8] = 2048;
        *&v49[10] = v33;
        _os_log_impl(&dword_298307000, v34, OS_LOG_TYPE_DEFAULT, "rejected outlier time sync measurement device=%llu host=%llu expectedHost=%llu limit=%lf", buf, 0x2Au);
      }

      ++*(v6 + 440);
    }

    else
    {
      waipc::timesync::KalmanEstimator::update(v6 + 160, v40);
      waipc::timesync::BasebandService::logEstimator(v6, (v6 + 160));
    }

LABEL_18:
    a2 += 40;
    --v10;
  }

  while (v10);
  if (*(v6 + 288) == 1)
  {
    __assert_rtn("setupProvider_block_invoke", "BasebandService.cpp", 304, "!fReset");
  }

  *&__y = *(v6 + 432);
  v35 = __y;
  *(v6 + 432) = 0;
  *v40 = &unk_2A1EB7358;
  v42 = *(v6 + 216);
  v43 = *(v6 + 232);
  v44 = *(v6 + 248);
  v45 = *(v6 + 264);
  *&v40[8] = *(v6 + 168);
  *&v40[24] = *(v6 + 184);
  v41 = *(v6 + 200);
  os_unfair_lock_unlock((v6 + 32));
  waipc::util::Broadcaster<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)>::context::broadcast<waipc::timesync::BasebandProvider::timesyncMeasurement*,unsigned long>(*(v6 + 296), v38, a3);
  v36 = *(v6 + 328);
  v50 = v42;
  v51 = v43;
  v52 = v44;
  *buf = &unk_2A1EB7358;
  v53 = v45;
  *&buf[8] = *&v40[8];
  *v49 = *&v40[24];
  *&v49[16] = v41;
  waipc::util::Broadcaster<void ()(waipc::timesync::KalmanEstimator const&,BOOL)>::context::broadcast<waipc::timesync::KalmanEstimator,BOOL>(v36, buf, v9 & 1);
  v8 = v39;
  if (v35)
  {
    dispatch_group_leave(v35);
    dispatch_release(v35);
  }

LABEL_28:
  std::__shared_weak_count::__release_shared[abi:ne200100](v8);
LABEL_29:
  v37 = *MEMORY[0x29EDCA608];
}

void sub_2983187DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, dispatch_object_t a46)
{
  applesauce::dispatch::v1::group_session::~group_session(&a46);
  std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  _Unwind_Resume(a1);
}

long double waipc::timesync::BasebandService::timesyncMeasurementAdapter::measurementFrom@<D0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = 0.5;
  v9 = v7 * 0.5 + 0.5;
  v10 = a1[1];
  v11 = v10 * pow(v7, 2) / 4;
  v12 = a1[2];
  v13 = *(a2 + 32) / v12;
  v14 = 1;
  if (v13 == 1)
  {
    v15 = *(a2 + 24);
  }

  else
  {
    feclearexcept(159);
    v16 = *(a2 + 24);
    errIfInexact(v16);
    v18 = 0 + v17;
    feclearexcept(159);
    v19 = v16 * v13;
    errIfInexact(v19);
    v21 = 0 + v20;
    __y = 0.0;
    v22 = modf(v19, &__y);
    v15 = __y;
    v8 = v22 + v13 / 2;
    v14 = v21 + (1 + v18) * v13;
    v12 = a1[2];
  }

  v23 = pow(v14, 2);
  v24 = a1[3];
  v25 = v12 / v24 * (v12 / v24) * (v23 / 12);
  v26 = 1.0 / v24 * (1.0 / v24) * *a1 + v11;
  *a3 = v6;
  *(a3 + 8) = v9;
  *(a3 + 16) = v15;
  result = v26 + v25;
  *(a3 + 24) = v8;
  *(a3 + 32) = result;
  return result;
}

void waipc::timesync::BasebandService::logEstimator(waipc::timesync::BasebandService *this, const waipc::timesync::KalmanEstimator *a2)
{
  os_unfair_lock_assert_owner(this + 8);
  if (*(this + 104) == 1)
  {
    v4 = *(this + 49);
    v5 = *(this + 50);
    if (0xEEEEEEEEEEEEEEEFLL * ((v5 - v4) >> 3) - 20 <= 0xFFFFFFFFFFFFFFEALL && v5 - 2280 != v4)
    {
      if (v5 - 2280 != v5)
      {
        v6 = v5 - v4 - 2280;
        do
        {
          v7 = v4 + v6;
          *v4 = *(v4 + v6);
          v8 = *(v4 + v6 + 16);
          v9 = *(v4 + v6 + 48);
          *(v4 + 32) = *(v4 + v6 + 32);
          *(v4 + 48) = v9;
          *(v4 + 16) = v8;
          v10 = *(v4 + v6 + 64);
          v11 = *(v4 + v6 + 80);
          v12 = *(v4 + v6 + 96);
          *(v4 + 112) = *(v4 + v6 + 112);
          *(v4 + 80) = v11;
          *(v4 + 96) = v12;
          *(v4 + 64) = v10;
          v4 += 120;
        }

        while (v7 + 120 != v5);
      }

      *(this + 50) = v4;
    }

    v13 = mach_absolute_time();
    v21 = v13;
    v14 = *(this + 50);
    if (v14 >= *(this + 51))
    {
      v20 = std::vector<std::pair<unsigned long long,waipc::timesync::KalmanEstimator>>::__emplace_back_slow_path<unsigned long long,waipc::timesync::KalmanEstimator const&>(this + 49, &v21, a2);
    }

    else
    {
      *v14 = v13;
      *(v14 + 8) = &unk_2A1EB7358;
      v15 = *(a2 + 8);
      v16 = *(a2 + 40);
      *(v14 + 32) = *(a2 + 24);
      *(v14 + 48) = v16;
      *(v14 + 16) = v15;
      v17 = *(a2 + 56);
      v18 = *(a2 + 72);
      v19 = *(a2 + 88);
      *(v14 + 112) = *(a2 + 13);
      *(v14 + 80) = v18;
      *(v14 + 96) = v19;
      *(v14 + 64) = v17;
      v20 = v14 + 120;
    }

    *(this + 50) = v20;
  }
}

void ___ZN5waipc8timesync15BasebandService13setupProviderEv_block_invoke_2_15(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 48);
  if (v7)
  {
    v12 = *(a1 + 40);
    v13 = std::__shared_weak_count::lock(v7);
    if (v13)
    {
      v14 = v13;
      if (*(v6 + 40))
      {
        os_unfair_lock_lock((v12 + 32));
        v15 = *(v12 + 352);
        if (!v15)
        {
          goto LABEL_18;
        }

        v16 = v12 + 352;
        do
        {
          v17 = *(v15 + 32);
          v18 = v17 >= a2;
          v19 = v17 < a2;
          if (v18)
          {
            v16 = v15;
          }

          v15 = *(v15 + 8 * v19);
        }

        while (v15);
        if (v16 != v12 + 352 && *(v16 + 32) <= a2 && (v20 = *(v16 + 48)) != 0 && (v21 = std::__shared_weak_count::lock(v20)) != 0)
        {
          v22 = v21;
          v23 = *(v16 + 40);
          if (v23)
          {
            *v23 = 1;
            *(v23 + 8) = a3;
            *(v23 + 16) = a5;
            *(v23 + 24) = a4;
            v24 = *(v23 + 56);
            *(v23 + 56) = 0;
            os_unfair_lock_unlock((v12 + 32));
            waipc::util::Broadcaster<void ()(unsigned long long,double,unsigned long long)>::context::broadcast<unsigned long long,double,unsigned long long>(*(v23 + 32), a3, a4, a5);
            if (v24)
            {
              dispatch_group_leave(v24);
              dispatch_release(v24);
            }
          }

          else
          {
            os_unfair_lock_unlock((v12 + 32));
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v22);
        }

        else
        {
LABEL_18:
          os_unfair_lock_unlock((v12 + 32));
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }
  }
}

void sub_298318C78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::dispatch::v1::group_session::~group_session(va);
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

void ___ZN5waipc8timesync15BasebandService13setupProviderEv_block_invoke_3(uint64_t a1, unsigned __int8 a2, int a3)
{
  v16 = a2;
  v3 = *(*(a1 + 32) + 8);
  if (*(v3 + 48))
  {
    v5 = *(a1 + 40);
    v6 = std::__shared_weak_count::lock(*(v3 + 48));
    if (v6)
    {
      v7 = v6;
      if (!*(v3 + 40))
      {
LABEL_18:
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        return;
      }

      os_unfair_lock_lock((v5 + 32));
      v8 = std::__tree<std::__value_type<waipc::timesync::BasebandProvider::bufferId,waipc::timesync::BasebandService::bufferInfo>,std::__map_value_compare<waipc::timesync::BasebandProvider::bufferId,std::__value_type<waipc::timesync::BasebandProvider::bufferId,waipc::timesync::BasebandService::bufferInfo>,std::less<waipc::timesync::BasebandProvider::bufferId>,true>,std::allocator<std::__value_type<waipc::timesync::BasebandProvider::bufferId,waipc::timesync::BasebandService::bufferInfo>>>::__equal_range_multi<waipc::timesync::BasebandProvider::bufferId>(v5 + 368, &v16);
      v9 = v8;
      v11 = v10;
      if (v8 != v10)
      {
        if (a3)
        {
          v12 = v8[8];
          v8[8] = 0;
          if (!v12)
          {
            goto LABEL_17;
          }
        }

        else
        {
          if (*(v8 + 72) == 1)
          {
            v13 = std::__tree<std::__value_type<waipc::timesync::BasebandProvider::bufferId,waipc::timesync::BasebandService::bufferInfo>,std::__map_value_compare<waipc::timesync::BasebandProvider::bufferId,std::__value_type<waipc::timesync::BasebandProvider::bufferId,waipc::timesync::BasebandService::bufferInfo>,std::less<waipc::timesync::BasebandProvider::bufferId>,true>,std::allocator<std::__value_type<waipc::timesync::BasebandProvider::bufferId,waipc::timesync::BasebandService::bufferInfo>>>::erase((v5 + 368), v8);
            if (v13 != v11 && *(v5 + 272) == 1)
            {
              v14 = *(v5 + 144);
              if (!v14)
              {
                __assert_rtn("setupProvider_block_invoke_3", "BasebandService.cpp", 386, "fProvider");
              }

              (*(*v14 + 24))(*(v5 + 144), v16, v13[5], v13[7]);
            }

            goto LABEL_17;
          }

          v15 = *(v5 + 416);
          if (v15)
          {
            dispatch_retain(*(v5 + 416));
            dispatch_group_enter(v15);
          }

          v12 = v9[8];
          v9[8] = v15;
          if (!v12)
          {
            goto LABEL_17;
          }
        }

        dispatch_group_leave(v12);
        dispatch_release(v12);
      }

LABEL_17:
      os_unfair_lock_unlock((v5 + 32));
      goto LABEL_18;
    }
  }
}

void sub_298318E10(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 8);
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void ___ZN5waipc8timesync15BasebandService13setupProviderEv_block_invoke_4(void *a1)
{
  v2 = *(a1[9] + 8);
  v3 = *(v2 + 48);
  if (v3)
  {
    v4 = a1[10];
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      if (*(v2 + 40))
      {
        v7 = *(v4 + 16);
        v15[0] = v7;
        if (v7)
        {
          dispatch_retain(v7);
        }

        v8 = *(v4 + 24);
        v15[1] = v8;
        if (v8)
        {
          dispatch_retain(v8);
        }

        v9 = a1[4];
        if (v9)
        {
          v9 = _Block_copy(v9);
        }

        v15[2] = v9;
        v10 = a1[5];
        if (v10)
        {
          v10 = _Block_copy(v10);
        }

        v15[3] = v10;
        v11 = a1[6];
        if (v11)
        {
          v11 = _Block_copy(v11);
        }

        v15[4] = v11;
        v12 = a1[7];
        if (v12)
        {
          v12 = _Block_copy(v12);
        }

        v15[5] = v12;
        v13 = a1[8];
        if (v13)
        {
          v13 = _Block_copy(v13);
        }

        v15[6] = v13;
        v16 = *(v4 + 88);
        v14 = 20;
        if (!*(v4 + 104))
        {
          v14 = 0;
        }

        v17 = v14;
        v18 = v14;
        waipc::timesync::BasebandProvider::create(v15, v6);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void sub_298318F8C(_Unwind_Exception *a1)
{
  v4 = *(v2 - 40);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void waipc::timesync::BasebandService::addMeasurementObserver(uint64_t a1@<X0>, const void *a2@<X1>, void **a3@<X8>)
{
  os_unfair_lock_lock((a1 + 32));
  waipc::util::Broadcaster<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)>::context::addObserver(*(a1 + 296), a2, a3);

  os_unfair_lock_unlock((a1 + 32));
}

void waipc::timesync::BasebandService::addConnectionObserver(uint64_t a1@<X0>, uint64_t a2@<X1>, void **a3@<X8>)
{
  os_unfair_lock_lock((a1 + 32));
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3802000000;
  v11[3] = __Block_byref_object_copy__24;
  v11[4] = __Block_byref_object_dispose__25;
  std::shared_ptr<waipc::timesync::BasebandProvider>::shared_ptr[abi:ne200100]<waipc::timesync::BasebandProvider,0>(&v12, a1);
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2000000000;
  v10 = 0;
  v6 = *(a1 + 16);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN5waipc8timesync15BasebandService21addConnectionObserverEU13block_pointerFvbPK10__CFStringE_block_invoke;
  block[3] = &unk_29EE90C70;
  block[6] = v9;
  block[7] = a1;
  block[4] = a2;
  block[5] = v11;
  dispatch_async(v6, block);
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 0x40000000;
  v7[2] = ___ZN5waipc8timesync15BasebandService21addConnectionObserverEU13block_pointerFvbPK10__CFStringE_block_invoke_2;
  v7[3] = &unk_29EE90C98;
  v7[4] = a2;
  v7[5] = v9;
  waipc::util::Broadcaster<void ()(BOOL,__CFString const*)>::context::addObserver(*(a1 + 312), v7, a3);
  _Block_object_dispose(v9, 8);
  _Block_object_dispose(v11, 8);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  os_unfair_lock_unlock((a1 + 32));
}

void sub_2983191C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 120), 8);
  v19 = *(v17 - 72);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  os_unfair_lock_unlock(v16 + 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__24(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __Block_byref_object_dispose__25(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void ___ZN5waipc8timesync15BasebandService21addConnectionObserverEU13block_pointerFvbPK10__CFStringE_block_invoke(void *a1)
{
  v2 = a1[7];
  os_unfair_lock_lock((v2 + 32));
  v3 = *(v2 + 272);
  v4 = *(v2 + 280);
  if (v4)
  {
    CFRetain(*(v2 + 280));
  }

  os_unfair_lock_unlock((v2 + 32));
  *(*(a1[6] + 8) + 24) = 1;
  (*(a1[4] + 16))();
  if (v4)
  {
    CFRelease(v4);
  }
}

void sub_2983192C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::StringRef::~StringRef(va);
  _Unwind_Resume(a1);
}

uint64_t ___ZN5waipc8timesync15BasebandService21addConnectionObserverEU13block_pointerFvbPK10__CFStringE_block_invoke_2(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 24) == 1)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void waipc::timesync::BasebandService::addTimesyncObserver(uint64_t a1@<X0>, uint64_t a2@<X1>, void **a3@<X8>)
{
  os_unfair_lock_lock((a1 + 32));
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3802000000;
  v11[3] = __Block_byref_object_copy__24;
  v11[4] = __Block_byref_object_dispose__25;
  std::shared_ptr<waipc::timesync::BasebandProvider>::shared_ptr[abi:ne200100]<waipc::timesync::BasebandProvider,0>(&v12, a1);
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2000000000;
  v10 = 0;
  v6 = *(a1 + 16);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN5waipc8timesync15BasebandService19addTimesyncObserverEU13block_pointerFvRKNS0_15KalmanEstimatorEbE_block_invoke;
  block[3] = &unk_29EE90CC0;
  block[6] = v9;
  block[7] = a1;
  block[4] = a2;
  block[5] = v11;
  dispatch_async(v6, block);
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 0x40000000;
  v7[2] = ___ZN5waipc8timesync15BasebandService19addTimesyncObserverEU13block_pointerFvRKNS0_15KalmanEstimatorEbE_block_invoke_2;
  v7[3] = &unk_29EE90CE8;
  v7[4] = a2;
  v7[5] = v9;
  waipc::util::Broadcaster<void ()(waipc::timesync::KalmanEstimator const&,BOOL)>::context::addObserver(*(a1 + 328), v7, a3);
  _Block_object_dispose(v9, 8);
  _Block_object_dispose(v11, 8);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  os_unfair_lock_unlock((a1 + 32));
}

void sub_298319488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 120), 8);
  v19 = *(v17 - 72);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  os_unfair_lock_unlock(v16 + 8);
  _Unwind_Resume(a1);
}

void ___ZN5waipc8timesync15BasebandService19addTimesyncObserverEU13block_pointerFvRKNS0_15KalmanEstimatorEbE_block_invoke(void *a1)
{
  v2 = a1[7];
  os_unfair_lock_lock((v2 + 32));
  v9 = &unk_2A1EB7358;
  v13 = *(v2 + 216);
  v14 = *(v2 + 232);
  v15 = *(v2 + 248);
  v16 = *(v2 + 264);
  v10 = *(v2 + 168);
  v11 = *(v2 + 184);
  v12 = *(v2 + 200);
  if (*(v2 + 288) == 1)
  {
    if (*(v2 + 272) == 1)
    {
      v3 = *(v2 + 144);
      if (!v3)
      {
        ___ZN5waipc8timesync15BasebandService19addTimesyncObserverEU13block_pointerFvRKNS0_15KalmanEstimatorEbE_block_invoke_cold_1();
      }

      waipc::timesync::BasebandProvider::triggerTimesyncMeasurement(v3);
    }

    os_unfair_lock_unlock((v2 + 32));
    *(*(a1[6] + 8) + 24) = 1;
  }

  else
  {
    os_unfair_lock_unlock((v2 + 32));
    *(*(a1[6] + 8) + 24) = 1;
    (*(a1[4] + 16))(a1[4], &v9, 1, v4, v5, v6, v7, v8);
  }
}

uint64_t ___ZN5waipc8timesync15BasebandService19addTimesyncObserverEU13block_pointerFvRKNS0_15KalmanEstimatorEbE_block_invoke_2(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 24) == 1)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void waipc::timesync::BasebandService::addTimestampObserver(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, void **a4@<X8>)
{
  os_unfair_lock_lock((a1 + 32));
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3802000000;
  v21[3] = __Block_byref_object_copy__24;
  v21[4] = __Block_byref_object_dispose__25;
  std::shared_ptr<waipc::timesync::BasebandProvider>::shared_ptr[abi:ne200100]<waipc::timesync::BasebandProvider,0>(&v22, a1);
  v14 = 0;
  v15 = &v14;
  v16 = 0x3802000000;
  v17 = __Block_byref_object_copy__32;
  v18 = __Block_byref_object_dispose__33;
  waipc::timesync::BasebandService::getTimestampSubscription(a1, a2, &v19);
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2000000000;
  v13 = 0;
  v8 = *(a1 + 16);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN5waipc8timesync15BasebandService20addTimestampObserverENS0_16BasebandProvider11timestampIdEU13block_pointerFvydyE_block_invoke;
  block[3] = &unk_29EE90D10;
  block[7] = v12;
  block[8] = a1;
  block[5] = v21;
  block[6] = &v14;
  block[4] = a3;
  dispatch_async(v8, block);
  v9 = v15[5];
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 0x40000000;
  v10[2] = ___ZN5waipc8timesync15BasebandService20addTimestampObserverENS0_16BasebandProvider11timestampIdEU13block_pointerFvydyE_block_invoke_2;
  v10[3] = &unk_29EE90D38;
  v10[5] = &v14;
  v10[6] = v12;
  v10[4] = a3;
  waipc::util::Broadcaster<void ()(unsigned long long,double,unsigned long long)>::context::addObserver(*(v9 + 32), v10, a4);
  _Block_object_dispose(v12, 8);
  _Block_object_dispose(&v14, 8);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  _Block_object_dispose(v21, 8);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  os_unfair_lock_unlock((a1 + 32));
}

void sub_2983197E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, std::__shared_weak_count *a35)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  if (a35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a35);
  }

  _Block_object_dispose((v36 - 120), 8);
  v38 = *(v36 - 72);
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  os_unfair_lock_unlock(v35 + 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__32(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __Block_byref_object_dispose__33(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

std::__shared_weak_count *waipc::timesync::BasebandService::getTimestampSubscription@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v25 = a2;
  os_unfair_lock_assert_owner((a1 + 32));
  v6 = *(a1 + 352);
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = a1 + 352;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == a1 + 352 || *(v7 + 32) > a2 || (*a3 = 0, a3[1] = 0, (v11 = *(v7 + 48)) == 0) || (result = std::__shared_weak_count::lock(v11), (a3[1] = result) == 0))
  {
LABEL_13:
    v23[0] = 0;
    v23[1] = v23;
    v23[2] = 0x3802000000;
    v23[3] = __Block_byref_object_copy__2;
    v23[4] = __Block_byref_object_dispose__2;
    std::shared_ptr<waipc::timesync::BasebandProvider>::shared_ptr[abi:ne200100]<waipc::timesync::BasebandProvider,0>(v15, a1);
    v14 = *(&v15[0] + 1);
    v24 = v15[0];
    if (*(&v15[0] + 1))
    {
      atomic_fetch_add_explicit((*(&v15[0] + 1) + 16), 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    aBlock = MEMORY[0x29EDCA5F8];
    v17 = 0x40000000;
    v18 = ___ZN5waipc8timesync15BasebandService24getTimestampSubscriptionENS0_16BasebandProvider11timestampIdE_block_invoke;
    v19 = &unk_29EE90D60;
    v20 = v23;
    v21 = a1;
    v22 = a2;
    LOBYTE(v15[0]) = 0;
    v15[1] = 0uLL;
    *(&v15[0] + 1) = 0;
    _ZNSt3__115allocate_sharedB8ne200100IN5waipc4util11BroadcasterIFvydyEE7contextENS_9allocatorIS6_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  v13 = *(v7 + 40);
  *a3 = v13;
  if (!v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](result);
    goto LABEL_13;
  }

  return result;
}

void sub_298319B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  waipc::timesync::BasebandService::timestampSubscription::~timestampSubscription(&a9);
  _Block_object_dispose((v9 - 112), 8);
  v11 = *(v9 - 64);
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  _Unwind_Resume(a1);
}

void ___ZN5waipc8timesync15BasebandService20addTimestampObserverENS0_16BasebandProvider11timestampIdEU13block_pointerFvydyE_block_invoke(void *a1)
{
  v2 = a1[8];
  os_unfair_lock_lock(v2 + 8);
  v3 = *(*(a1[6] + 8) + 40);
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  os_unfair_lock_unlock(v2 + 8);
  *(*(a1[7] + 8) + 24) = 1;
  if (v4 == 1)
  {
    v9 = *(a1[4] + 16);
    v8.n128_u64[0] = v6;

    v9(v8);
  }
}

uint64_t ___ZN5waipc8timesync15BasebandService20addTimestampObserverENS0_16BasebandProvider11timestampIdEU13block_pointerFvydyE_block_invoke_2(uint64_t result)
{
  if (*(*(*(result + 48) + 8) + 24) == 1)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void waipc::timesync::BasebandService::setTimestampRequiredForReady(uint64_t a1, unsigned int a2, int a3)
{
  os_unfair_lock_lock((a1 + 32));
  waipc::timesync::BasebandService::getTimestampSubscription(a1, a2, &v9);
  v6 = v9;
  *(v9 + 64) = a3;
  if (!a3 || (*v6 & 1) != 0)
  {
    v7 = *(v6 + 56);
    *(v6 + 56) = 0;
    if (!v7)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v8 = *(a1 + 416);
  if (v8)
  {
    dispatch_retain(*(a1 + 416));
    dispatch_group_enter(v8);
  }

  v7 = *(v6 + 56);
  *(v6 + 56) = v8;
  if (v7)
  {
LABEL_4:
    dispatch_group_leave(v7);
    dispatch_release(v7);
  }

LABEL_5:
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  os_unfair_lock_unlock((a1 + 32));
}

void ___ZN5waipc8timesync15BasebandService24getTimestampSubscriptionENS0_16BasebandProvider11timestampIdE_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 48);
  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(v2 + 40);
      if (v7)
      {
        v8 = *(v4 + 16);
        v9[0] = MEMORY[0x29EDCA5F8];
        v9[1] = 1174405120;
        v9[2] = ___ZN5waipc8timesync15BasebandService24getTimestampSubscriptionENS0_16BasebandProvider11timestampIdE_block_invoke_2;
        v9[3] = &__block_descriptor_tmp_37_0;
        v9[4] = v4;
        v9[5] = v7;
        v10 = v6;
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        v11 = *(a1 + 48);
        dispatch_async(v8, v9);
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void ___ZN5waipc8timesync15BasebandService24getTimestampSubscriptionENS0_16BasebandProvider11timestampIdE_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  os_unfair_lock_lock((v2 + 32));
  v3 = *(v2 + 352);
  if (v3)
  {
    v4 = *(a1 + 56);
    v5 = v2 + 352;
    do
    {
      v6 = *(v3 + 32);
      v7 = v6 >= v4;
      v8 = v6 < v4;
      if (v7)
      {
        v5 = v3;
      }

      v3 = *(v3 + 8 * v8);
    }

    while (v3);
    if (v5 != v2 + 352 && v4 >= *(v5 + 32))
    {
      v9 = *(v5 + 48);
      if (v9)
      {
        v10 = std::__shared_weak_count::lock(v9);
        if (v10 && *(v5 + 40))
        {
LABEL_18:
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
          goto LABEL_19;
        }
      }

      else
      {
        v10 = 0;
      }

      if (*(v2 + 272) == 1)
      {
        v11 = *(v2 + 144);
        if (!v11)
        {
          __assert_rtn("getTimestampSubscription_block_invoke_2", "BasebandService.cpp", 612, "fProvider");
        }

        (*(*v11 + 16))(v11, *(a1 + 56), 0);
      }

      std::__tree<std::__value_type<waipc::timesync::BasebandProvider::timestampId,std::weak_ptr<waipc::timesync::BasebandService::timestampSubscription>>,std::__map_value_compare<waipc::timesync::BasebandProvider::timestampId,std::__value_type<waipc::timesync::BasebandProvider::timestampId,std::weak_ptr<waipc::timesync::BasebandService::timestampSubscription>>,std::less<waipc::timesync::BasebandProvider::timestampId>,true>,std::allocator<std::__value_type<waipc::timesync::BasebandProvider::timestampId,std::weak_ptr<waipc::timesync::BasebandService::timestampSubscription>>>>::erase((v2 + 344), v5);
      if (v10)
      {
        goto LABEL_18;
      }
    }
  }

LABEL_19:

  os_unfair_lock_unlock((v2 + 32));
}

void sub_298319F6C(_Unwind_Exception *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  os_unfair_lock_unlock(v2 + 8);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c61_ZTSKNSt3__110shared_ptrIN5waipc8timesync15BasebandServiceEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c61_ZTSKNSt3__110shared_ptrIN5waipc8timesync15BasebandServiceEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void waipc::timesync::BasebandService::triggerMeasurement(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 8);
  if (LOBYTE(this[68]._os_unfair_lock_opaque) == 1)
  {
    v2 = *&this[36]._os_unfair_lock_opaque;
    if (!v2)
    {
      __assert_rtn("triggerMeasurement", "BasebandService.cpp", 643, "fProvider");
    }

    waipc::timesync::BasebandProvider::triggerTimesyncMeasurement(v2);
  }

  os_unfair_lock_unlock(this + 8);
}

void waipc::timesync::BasebandService::triggerReset(waipc::timesync::BasebandService *this)
{
  os_unfair_lock_lock(this + 8);
  *(this + 288) = 1;
  v2 = *(this + 52);
  if (v2)
  {
    dispatch_retain(*(this + 52));
    dispatch_group_enter(v2);
  }

  v3 = *(this + 54);
  *(this + 54) = v2;
  if (v3)
  {
    dispatch_group_leave(v3);
    dispatch_release(v3);
  }

  v4 = *(this + 18);
  if (v4)
  {
    waipc::timesync::BasebandProvider::cancelTimesyncMeasurement(v4);
  }

  if (*(this + 272) == 1)
  {
    v5 = *(this + 18);
    if (!v5)
    {
      __assert_rtn("triggerReset", "BasebandService.cpp", 660, "fProvider");
    }

    waipc::timesync::BasebandProvider::triggerTimesyncMeasurement(v5);
  }

  os_unfair_lock_unlock(this + 8);
}

void waipc::timesync::BasebandService::mapBuffer(uint64_t a1, unsigned __int8 a2, uint64_t *a3)
{
  v8 = a2;
  os_unfair_lock_lock((a1 + 32));
  std::__tree<std::__value_type<waipc::timesync::BasebandProvider::bufferId,waipc::timesync::BasebandService::bufferInfo>,std::__map_value_compare<waipc::timesync::BasebandProvider::bufferId,std::__value_type<waipc::timesync::BasebandProvider::bufferId,waipc::timesync::BasebandService::bufferInfo>,std::less<waipc::timesync::BasebandProvider::bufferId>,true>,std::allocator<std::__value_type<waipc::timesync::BasebandProvider::bufferId,waipc::timesync::BasebandService::bufferInfo>>>::__equal_range_multi<waipc::timesync::BasebandProvider::bufferId>(a1 + 368, &v8);
  v6 = *a3;
  v5 = a3[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 416);
  if (v7)
  {
    dispatch_retain(*(a1 + 416));
    dispatch_group_enter(v7);
  }

  std::__tree<std::__value_type<waipc::timesync::BasebandProvider::bufferId,waipc::timesync::BasebandService::bufferInfo>,std::__map_value_compare<waipc::timesync::BasebandProvider::bufferId,std::__value_type<waipc::timesync::BasebandProvider::bufferId,waipc::timesync::BasebandService::bufferInfo>,std::less<waipc::timesync::BasebandProvider::bufferId>,true>,std::allocator<std::__value_type<waipc::timesync::BasebandProvider::bufferId,waipc::timesync::BasebandService::bufferInfo>>>::__emplace_hint_multi<std::pair<waipc::timesync::BasebandProvider::bufferId,waipc::timesync::BasebandService::bufferInfo>>();
}

uint64_t std::pair<waipc::timesync::BasebandProvider::bufferId,waipc::timesync::BasebandService::bufferInfo>::~pair(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 32);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return a1;
}

void ___ZN5waipc8timesync15BasebandService9mapBufferENS0_16BasebandProvider8bufferIdERKNSt3__110shared_ptrIvEEm_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 48);
  if (!v3)
  {
    return;
  }

  v4 = *(a1 + 40);
  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    return;
  }

  v6 = v5;
  if (*(v2 + 40))
  {
    os_unfair_lock_lock((v4 + 32));
    v7 = *(v4 + 376);
    if (!v7)
    {
      goto LABEL_12;
    }

    v8 = *(a1 + 56);
    v9 = v4 + 376;
    do
    {
      v10 = *(v7 + 32);
      v11 = v10 >= v8;
      v12 = v10 < v8;
      if (v11)
      {
        v9 = v7;
      }

      v7 = *(v7 + 8 * v12);
    }

    while (v7);
    if (v9 == v4 + 376 || v8 < *(v9 + 32))
    {
LABEL_12:
      v9 = v4 + 376;
    }

    v13 = *(a1 + 48);
    if (v9 == v13 && *(v4 + 272) == 1)
    {
      if (*(v13 + 72) == 1)
      {
        v15 = "!it->second.awaitingRemoval";
        v16 = 699;
      }

      else
      {
        *(v13 + 72) = 1;
        v14 = *(v4 + 144);
        if (v14)
        {
          (*(*v14 + 32))(v14, *(a1 + 56));
LABEL_20:
          os_unfair_lock_unlock((v4 + 32));
          goto LABEL_21;
        }

        v15 = "fProvider";
        v16 = 702;
      }

      __assert_rtn("mapBuffer_block_invoke", "BasebandService.cpp", v16, v15);
    }

    std::__tree<std::__value_type<waipc::timesync::BasebandProvider::bufferId,waipc::timesync::BasebandService::bufferInfo>,std::__map_value_compare<waipc::timesync::BasebandProvider::bufferId,std::__value_type<waipc::timesync::BasebandProvider::bufferId,waipc::timesync::BasebandService::bufferInfo>,std::less<waipc::timesync::BasebandProvider::bufferId>,true>,std::allocator<std::__value_type<waipc::timesync::BasebandProvider::bufferId,waipc::timesync::BasebandService::bufferInfo>>>::erase((v4 + 368), v13);
    goto LABEL_20;
  }

LABEL_21:

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
}

void sub_29831A558(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 8);
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t waipc::timesync::BasebandService::dumpState(waipc::timesync::BasebandService *this)
{
  v38[2] = *MEMORY[0x29EDCA608];
  os_unfair_lock_lock(this + 8);
  memset(v25, 0, sizeof(v25));
  std::vector<applesauce::CF::DictionaryRef>::reserve(v25, *(this + 45));
  std::transform[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<waipc::timesync::BasebandProvider::timestampId,std::weak_ptr<waipc::timesync::BasebandService::timestampSubscription>>,std::__tree_node<std::__value_type<waipc::timesync::BasebandProvider::timestampId,std::weak_ptr<waipc::timesync::BasebandService::timestampSubscription>>,void *> *,long>>,std::back_insert_iterator<std::vector<applesauce::CF::DictionaryRef>>,applesauce::CF::DictionaryRef({block_pointer})(std::pair<waipc::timesync::BasebandProvider::timestampId,std::weak_ptr<waipc::timesync::BasebandService::timestampSubscription>> const&)>(*(this + 43), this + 44, v25, &__block_literal_global_1);
  memset(v24, 0, sizeof(v24));
  std::vector<applesauce::CF::DictionaryRef>::reserve(v24, *(this + 48));
  std::transform[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<waipc::timesync::BasebandProvider::bufferId,waipc::timesync::BasebandService::bufferInfo>,std::__tree_node<std::__value_type<waipc::timesync::BasebandProvider::bufferId,waipc::timesync::BasebandService::bufferInfo>,void *> *,long>>,std::back_insert_iterator<std::vector<applesauce::CF::DictionaryRef>>,applesauce::CF::DictionaryRef({block_pointer})(std::pair<waipc::timesync::BasebandProvider::bufferId,waipc::timesync::BasebandService::bufferInfo> const&)>(*(this + 46), this + 47, v24, &__block_literal_global_66);
  memset(v23, 0, sizeof(v23));
  std::vector<applesauce::CF::DictionaryRef>::reserve(v23, 0xEEEEEEEEEEEEEEEFLL * ((*(this + 50) - *(this + 49)) >> 3));
  v2 = *(this + 49);
  v3 = *(this + 50);
  v27 = v23;
  while (v2 != v3)
  {
    ___ZNK5waipc8timesync15BasebandService9dumpStateEv_block_invoke_3(v2, &cf);
    std::back_insert_iterator<std::vector<applesauce::CF::DictionaryRef>>::operator=[abi:ne200100](&v27, &cf);
    if (cf)
    {
      CFRelease(cf);
    }

    v2 += 15;
  }

  waipc::util::_kv::_kv<double const&,void>(v28, @"Rate Variance", this + 5);
  waipc::util::_kv::_kv<double const&,void>(&v29, @"Process Variance", this + 6);
  waipc::util::_kv::_kv<double const&,void>(&v30, @"Extra Sync Variance", this + 7);
  waipc::util::_kv::_kv<double const&,void>(&v31, @"Host Variance Weight", this + 8);
  cf = *(this + 9);
  waipc::util::_kv::_kv<double,void>(&v32, @"Nominal Device Tick", &cf);
  v22 = *(this + 10);
  waipc::util::_kv::_kv<double,void>(&v33, @"Nominal Host Tick", &v22);
  waipc::util::_kv::_kv<unsigned int const&,void>(&v34, @"Open Timeout", this + 22);
  waipc::util::_kv::_kv<unsigned int const&,void>(&v35, @"Open Retry", this + 23);
  waipc::util::_kv::_kv<unsigned int const&,void>(&v36, @"Measurement Burst", this + 24);
  waipc::util::_kv::_kv<unsigned int const&,void>(v37, @"Measurement Min Interval", this + 25);
  v4 = *(this + 18);
  if (v4)
  {
    v4 = waipc::timesync::BasebandProvider::dumpState(v4);
  }

  v37[2] = @"Provider";
  v37[3] = v4;
  v5 = waipc::timesync::KalmanEstimator::dumpState((this + 160));
  v37[4] = @"Estimator";
  v37[5] = v5;
  v6 = *MEMORY[0x29EDB8F00];
  v7 = *MEMORY[0x29EDB8EF8];
  if (*(this + 272))
  {
    v8 = *MEMORY[0x29EDB8F00];
  }

  else
  {
    v8 = *MEMORY[0x29EDB8EF8];
  }

  v37[6] = @"Connected";
  v37[7] = v8;
  v37[8] = @"Disconnect Reason";
  v9 = *(this + 35);
  if (v9)
  {
    CFRetain(*(this + 35));
  }

  v37[9] = v9;
  v37[10] = @"Reset";
  if (*(this + 288))
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  v37[11] = v10;
  if (waipc::util::Broadcaster<void ()(waipc::timesync::KalmanEstimator const&,BOOL)>::context::hasObservers(*(this + 37)))
  {
    v11 = v6;
  }

  else
  {
    v11 = v7;
  }

  v37[12] = @"Measurement Observers Present";
  v37[13] = v11;
  if (waipc::util::Broadcaster<void ()(waipc::timesync::KalmanEstimator const&,BOOL)>::context::hasObservers(*(this + 39)))
  {
    v12 = v6;
  }

  else
  {
    v12 = v7;
  }

  v37[14] = @"Connection Observers Present";
  v37[15] = v12;
  if (waipc::util::Broadcaster<void ()(waipc::timesync::KalmanEstimator const&,BOOL)>::context::hasObservers(*(this + 41)))
  {
    v13 = v6;
  }

  else
  {
    v13 = v7;
  }

  v37[16] = @"Timesync Observers Present";
  v37[17] = v13;
  v37[18] = @"Timestamp Contexts";
  v37[19] = applesauce::CF::details::make_CFArrayRef<applesauce::CF::DictionaryRef>(v25);
  v37[20] = @"Mapped Buffers";
  v37[21] = applesauce::CF::details::make_CFArrayRef<applesauce::CF::DictionaryRef>(v24);
  v37[22] = @"Estimator Log";
  v37[23] = applesauce::CF::details::make_CFArrayRef<applesauce::CF::DictionaryRef>(v23);
  v37[24] = @"Connection Ready";
  v14 = *(this + 54);
  if (*(this + 53))
  {
    v15 = v7;
  }

  else
  {
    v15 = v6;
  }

  v37[25] = v15;
  v37[26] = @"Estimator Ready";
  if (v14)
  {
    v16 = v7;
  }

  else
  {
    v16 = v6;
  }

  v37[27] = v16;
  waipc::util::_kv::_kv<unsigned int const&,void>(v38, @"Timesync Outlier Count", this + 110);
  waipc::util::createCFDictDropNull<24l>(v28, &v27);
  for (i = 47; i != -1; i -= 2)
  {
    v18 = v28[i];
    if (v18)
    {
      CFRelease(v18);
    }
  }

  v19 = v27;
  v28[0] = v23;
  std::vector<applesauce::CF::DictionaryRef>::__destroy_vector::operator()[abi:ne200100](v28);
  v28[0] = v24;
  std::vector<applesauce::CF::DictionaryRef>::__destroy_vector::operator()[abi:ne200100](v28);
  v28[0] = v25;
  std::vector<applesauce::CF::DictionaryRef>::__destroy_vector::operator()[abi:ne200100](v28);
  os_unfair_lock_unlock(this + 8);
  v20 = *MEMORY[0x29EDCA608];
  return v19;
}

void sub_29831A9C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::transform[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<waipc::timesync::BasebandProvider::timestampId,std::weak_ptr<waipc::timesync::BasebandService::timestampSubscription>>,std::__tree_node<std::__value_type<waipc::timesync::BasebandProvider::timestampId,std::weak_ptr<waipc::timesync::BasebandService::timestampSubscription>>,void *> *,long>>,std::back_insert_iterator<std::vector<applesauce::CF::DictionaryRef>>,applesauce::CF::DictionaryRef({block_pointer})(std::pair<waipc::timesync::BasebandProvider::timestampId,std::weak_ptr<waipc::timesync::BasebandService::timestampSubscription>> const&)>(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v16 = a3;
  if (a1 != a2)
  {
    v6 = a1;
    do
    {
      v12[0] = *(v6 + 32);
      v7 = v6[6];
      v13 = v6[5];
      v14 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      (*(a4 + 16))(&cf, a4, v12);
      std::back_insert_iterator<std::vector<applesauce::CF::DictionaryRef>>::operator=[abi:ne200100](&v16, &cf);
      if (cf)
      {
        CFRelease(cf);
      }

      if (v14)
      {
        std::__shared_weak_count::__release_weak(v14);
      }

      v8 = v6[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v6[2];
          v10 = *v9 == v6;
          v6 = v9;
        }

        while (!v10);
      }

      v6 = v9;
    }

    while (v9 != a2);
    return v16;
  }

  return a3;
}

void sub_29831ABCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, char a13)
{
  if (a12)
  {
    std::__shared_weak_count::__release_weak(a12);
  }

  _Unwind_Resume(exception_object);
}

void ___ZNK5waipc8timesync15BasebandService9dumpStateEv_block_invoke(unsigned __int8 *a1@<X1>, void *a2@<X8>)
{
  v45 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 2);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    v6 = *(a1 + 1);
    if (v5)
    {
      v7 = *(a1 + 1);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
    v5 = 0;
  }

  TimestampName = waipc::timesync::BasebandProvider::getTimestampName(*a1);
  v9 = TimestampName;
  v32[0] = @"Name";
  if (TimestampName)
  {
    CFRetain(TimestampName);
  }

  v32[1] = v9;
  if (v7)
  {
    hasObservers = waipc::util::Broadcaster<void ()(waipc::timesync::KalmanEstimator const&,BOOL)>::context::hasObservers(*(v7 + 32));
    v11 = *MEMORY[0x29EDB8F00];
    v12 = *MEMORY[0x29EDB8EF8];
    if (hasObservers)
    {
      v13 = *MEMORY[0x29EDB8F00];
    }

    else
    {
      v13 = *MEMORY[0x29EDB8EF8];
    }

    v33 = @"Observers Present";
    if (v13)
    {
      CFRetain(v13);
    }

    v34 = v13;
    if (*v7)
    {
      v14 = v11;
    }

    else
    {
      v14 = v12;
    }

    v35 = @"Latest Valid";
    if (v14)
    {
      CFRetain(v14);
    }

    v36 = v14;
    valuePtr = *(v7 + 8);
    v15 = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
    v16 = v15;
    v30 = v15;
    if (!v15)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C288110](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    v37 = @"Latest Timestamp";
    CFRetain(v15);
    v38 = v16;
    valuePtr = *(v7 + 16);
    v17 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
    v18 = v17;
    v29 = v17;
    if (!v17)
    {
      v26 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C288110](v26, "Could not construct");
      __cxa_throw(v26, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    v39 = @"Latest Timestamp Granularity";
    CFRetain(v17);
    v40 = v18;
    valuePtr = *(v7 + 24);
    v19 = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
    v20 = v19;
    cf = v19;
    if (!v19)
    {
      v27 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C288110](v27, "Could not construct");
      __cxa_throw(v27, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    v41 = @"Latest Interval";
    CFRetain(v19);
    v42 = v20;
    if (*(v7 + 56))
    {
      v21 = v12;
    }

    else
    {
      v21 = v11;
    }

    valuePtr = v21;
    v43 = @"Ready";
    if (v21)
    {
      CFRetain(v21);
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v21 = 0;
    v33 = @"Observers Present";
    v34 = 0;
    v35 = @"Latest Valid";
    v36 = 0;
    v29 = 0;
    v30 = 0;
    v37 = @"Latest Timestamp";
    v38 = 0;
    v39 = @"Latest Timestamp Granularity";
    v40 = 0;
    cf = 0;
    v42 = 0;
    v43 = @"Ready";
    v41 = @"Latest Interval";
    valuePtr = 0;
  }

  v44 = v21;
  waipc::util::createCFDictDropNull<7l>(v32, a2);
  for (i = 13; i != -1; i -= 2)
  {
    v23 = v32[i];
    if (v23)
    {
      CFRelease(v23);
    }
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v24 = *MEMORY[0x29EDCA608];
}

void sub_29831AFDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, const void *a11, const void *a12, const void *a13, const void *a14, uint64_t a15, char a16)
{
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(&a10);
  applesauce::CF::NumberRef::~NumberRef(&a11);
  applesauce::CF::NumberRef::~NumberRef(&a12);
  applesauce::CF::BooleanRef::~BooleanRef(&a13);
  applesauce::CF::BooleanRef::~BooleanRef(&a14);
  while (v17 != &a16)
  {
    v17 = (v17 - 16);
    waipc::util::_kv::~_kv(v17);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  _Unwind_Resume(a1);
}

void applesauce::CF::BooleanRef::~BooleanRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t std::transform[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<waipc::timesync::BasebandProvider::bufferId,waipc::timesync::BasebandService::bufferInfo>,std::__tree_node<std::__value_type<waipc::timesync::BasebandProvider::bufferId,waipc::timesync::BasebandService::bufferInfo>,void *> *,long>>,std::back_insert_iterator<std::vector<applesauce::CF::DictionaryRef>>,applesauce::CF::DictionaryRef({block_pointer})(std::pair<waipc::timesync::BasebandProvider::bufferId,waipc::timesync::BasebandService::bufferInfo> const&)>(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v20 = a3;
  if (a1 != a2)
  {
    v6 = a1;
    do
    {
      v13[0] = *(v6 + 32);
      v7 = v6[6];
      v14 = v6[5];
      v15 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = v6[8];
      v16 = v6[7];
      group = v8;
      if (v8)
      {
        dispatch_retain(v8);
        if (group)
        {
          dispatch_group_enter(group);
        }
      }

      v18 = *(v6 + 72);
      (*(a4 + 16))(&cf, a4, v13);
      std::back_insert_iterator<std::vector<applesauce::CF::DictionaryRef>>::operator=[abi:ne200100](&v20, &cf);
      if (cf)
      {
        CFRelease(cf);
      }

      if (group)
      {
        dispatch_group_leave(group);
        if (group)
        {
          dispatch_release(group);
        }
      }

      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      v9 = v6[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v6[2];
          v11 = *v10 == v6;
          v6 = v10;
        }

        while (!v11);
      }

      v6 = v10;
    }

    while (v10 != a2);
    return v20;
  }

  return a3;
}

void ___ZNK5waipc8timesync15BasebandService9dumpStateEv_block_invoke_2(unsigned __int8 *a1@<X1>, void *a2@<X8>)
{
  v21 = *MEMORY[0x29EDCA608];
  BufferName = waipc::timesync::BasebandProvider::getBufferName(*a1);
  v5 = BufferName;
  v15[0] = @"Name";
  if (BufferName)
  {
    CFRetain(BufferName);
  }

  v15[1] = v5;
  v15[2] = @"Length";
  v14 = *(a1 + 3);
  if (!CFNumberCreate(0, kCFNumberLongType, &v14))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C288110](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v6 = *MEMORY[0x29EDB8F00];
  v7 = *MEMORY[0x29EDB8EF8];
  if (*(a1 + 4))
  {
    v8 = *MEMORY[0x29EDB8EF8];
  }

  else
  {
    v8 = *MEMORY[0x29EDB8F00];
  }

  v17 = @"Ready";
  v18 = v8;
  if (a1[40])
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  v19 = @"Awaiting Removal";
  v20 = v9;
  waipc::util::createCFDictDropNull<4l>(v15, a2);
  for (i = 7; i != -1; i -= 2)
  {
    v11 = v15[i];
    if (v11)
    {
      CFRelease(v11);
    }
  }

  v12 = *MEMORY[0x29EDCA608];
}

void sub_29831B42C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(va1);
  waipc::util::_kv::~_kv(va);
  _Unwind_Resume(a1);
}

void ___ZNK5waipc8timesync15BasebandService9dumpStateEv_block_invoke_3(uint64_t *a1@<X1>, void *a2@<X8>)
{
  v14 = *MEMORY[0x29EDCA608];
  v9 = *a1;
  v10 = @"Mach Time";
  if (!CFNumberCreate(0, kCFNumberLongLongType, &v9))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C288110](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v4 = waipc::timesync::KalmanEstimator::dumpState((a1 + 1));
  v12 = @"Estimator";
  v13 = v4;
  v9 = 0;
  waipc::util::createCFDictDropNull<2l>(&v10, a2);
  for (i = 24; i != -8; i -= 16)
  {
    v6 = *(&v10 + i);
    if (v6)
    {
      CFRelease(v6);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
}

void sub_29831B5A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

const void *waipc::util::createCFDictDropNull<2l>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = 0;
  keys[2] = *MEMORY[0x29EDCA608];
  keys[0] = 0;
  keys[1] = 0;
  values[0] = 0;
  values[1] = 0;
  v4 = (a1 + 8);
  v5 = 32;
  do
  {
    v6 = *(v4 - 1);
    if (v6)
    {
      v7 = *v4;
      if (*v4)
      {
        keys[v3] = v6;
        values[v3++] = v7;
      }
    }

    v4 += 2;
    v5 -= 16;
  }

  while (v5);
  result = CFDictionaryCreate(*MEMORY[0x29EDB8ED8], keys, values, v3, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  *a2 = result;
  if (result)
  {
    v9 = CFGetTypeID(result);
    result = CFDictionaryGetTypeID();
    if (v9 != result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C288110](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29831B73C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

const void *waipc::util::createCFDictDropNull<24l>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = 0;
  v25 = *MEMORY[0x29EDCA608];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  *keys = 0u;
  v14 = 0u;
  v4 = (a1 + 8);
  v5 = 384;
  memset(v12, 0, sizeof(v12));
  do
  {
    v6 = *(v4 - 1);
    if (v6)
    {
      v7 = *v4;
      if (*v4)
      {
        keys[v3] = v6;
        *(v12 + v3++) = v7;
      }
    }

    v4 += 2;
    v5 -= 16;
  }

  while (v5);
  result = CFDictionaryCreate(*MEMORY[0x29EDB8ED8], keys, v12, v3, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  *a2 = result;
  if (result)
  {
    v9 = CFGetTypeID(result);
    result = CFDictionaryGetTypeID();
    if (v9 != result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C288110](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29831B8C4(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

void *waipc::util::_kv::_kv<double,void>(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = a2;
  valuePtr = *a3;
  v4 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  a1[1] = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C288110](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  return a1;
}

void errIfInexact(long double a1)
{
  if (fetestexcept(16))
  {
    nextafter(a1, -INFINITY);
    nextafter(a1, INFINITY);
  }
}

void waipc::util::GuardBlock::~GuardBlock(const void **this)
{
  v2 = *this;
  if (v2)
  {
    v2[2]();
    if (*this)
    {
      _Block_release(*this);
    }
  }
}

void waipc::timesync::BasebandService::timestampSubscription::~timestampSubscription(waipc::timesync::BasebandService::timestampSubscription *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(this + 7);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  waipc::util::GuardBlock::~GuardBlock(this + 6);
  v4 = *(this + 5);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void waipc::timesync::BasebandService::bufferInfo::~bufferInfo(waipc::timesync::BasebandService::bufferInfo *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(this + 3);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = *(this + 1);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t std::vector<std::pair<unsigned long long,waipc::timesync::KalmanEstimator>>::__emplace_back_slow_path<unsigned long long,waipc::timesync::KalmanEstimator const&>(uint64_t *a1, void *a2, uint64_t a3)
{
  v3 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 3);
  v4 = v3 + 1;
  if (v3 + 1 > 0x222222222222222)
  {
    std::vector<std::pair<unsigned long long,waipc::timesync::BasebandProvider::deviceTimestamp>>::__throw_length_error[abi:ne200100]();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3) > v4)
  {
    v4 = 0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 3) >= 0x111111111111111)
  {
    v7 = 0x222222222222222;
  }

  else
  {
    v7 = v4;
  }

  v20 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long long,waipc::timesync::KalmanEstimator>>>(a1, v7);
  }

  v8 = 120 * v3;
  __p = 0;
  v17 = v8;
  v19 = 0;
  *v8 = *a2;
  *(v8 + 8) = &unk_2A1EB7358;
  v9 = *(a3 + 56);
  v10 = *(a3 + 72);
  v11 = *(a3 + 88);
  *(v8 + 112) = *(a3 + 104);
  *(v8 + 80) = v10;
  *(v8 + 96) = v11;
  *(v8 + 64) = v9;
  v12 = *(a3 + 8);
  v13 = *(a3 + 40);
  *(v8 + 32) = *(a3 + 24);
  *(v8 + 48) = v13;
  *(v8 + 16) = v12;
  v18 = 120 * v3 + 120;
  std::vector<std::pair<unsigned long long,waipc::timesync::KalmanEstimator>>::__swap_out_circular_buffer(a1, &__p);
  v14 = a1[1];
  if (v18 != v17)
  {
    v18 = (v18 - v17 - 120) % 0x78uLL + v17;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v14;
}

void sub_29831BC80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<std::pair<unsigned long long,waipc::timesync::KalmanEstimator>>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v2 = a2[1];
  v3 = *result;
  v4 = result[1];
  v5 = v2 - (v4 - *result);
  if (v4 != *result)
  {
    v6 = v2 - 8 * ((v4 - *result) >> 3) + 8;
    v7 = v5;
    do
    {
      *v7 = *v3;
      *(v7 + 8) = &unk_2A1EB7358;
      v8 = *(v3 + 16);
      v9 = *(v3 + 48);
      *(v7 + 32) = *(v3 + 32);
      *(v7 + 48) = v9;
      *(v7 + 16) = v8;
      v10 = *(v3 + 64);
      v11 = *(v3 + 80);
      v12 = *(v3 + 96);
      *(v7 + 112) = *(v3 + 112);
      *(v7 + 80) = v11;
      *(v7 + 96) = v12;
      *(v7 + 64) = v10;
      v3 += 120;
      v7 += 120;
      v6 += 120;
    }

    while (v3 != v4);
    v3 = *result;
  }

  a2[1] = v5;
  *result = v5;
  result[1] = v3;
  a2[1] = v3;
  v13 = result[1];
  result[1] = a2[2];
  a2[2] = v13;
  v14 = result[2];
  result[2] = a2[3];
  a2[3] = v14;
  *a2 = a2[1];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long long,waipc::timesync::KalmanEstimator>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x222222222222223)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::shared_ptr<waipc::timesync::BasebandService>::shared_ptr[abi:ne200100]<waipc::timesync::BasebandService,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_29831BEB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<waipc::timesync::BasebandService>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

const os_unfair_lock **std::unique_ptr<waipc::timesync::BasebandService>::~unique_ptr[abi:ne200100](const os_unfair_lock **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    waipc::timesync::BasebandService::~BasebandService(v2);
    MEMORY[0x29C288190]();
  }

  return a1;
}

void std::__shared_ptr_pointer<waipc::timesync::BasebandService *,std::shared_ptr<waipc::timesync::BasebandService>::__shared_ptr_default_delete<waipc::timesync::BasebandService,waipc::timesync::BasebandService>,std::allocator<waipc::timesync::BasebandService>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C288190);
}

const os_unfair_lock *std::__shared_ptr_pointer<waipc::timesync::BasebandService *,std::shared_ptr<waipc::timesync::BasebandService>::__shared_ptr_default_delete<waipc::timesync::BasebandService,waipc::timesync::BasebandService>,std::allocator<waipc::timesync::BasebandService>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    waipc::timesync::BasebandService::~BasebandService(result);

    JUMPOUT(0x29C288190);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<waipc::timesync::BasebandService *,std::shared_ptr<waipc::timesync::BasebandService>::__shared_ptr_default_delete<waipc::timesync::BasebandService,waipc::timesync::BasebandService>,std::allocator<waipc::timesync::BasebandService>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
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

void std::__shared_ptr_emplace<waipc::util::Broadcaster<void ()(BOOL,__CFString const*)>::context,std::allocator<waipc::util::Broadcaster<void ()(BOOL,__CFString const*)>::context>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1EB7558;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C288190);
}

void std::__shared_ptr_emplace<waipc::util::Broadcaster<void ()(BOOL,__CFString const*)>::context,std::allocator<waipc::util::Broadcaster<void ()(BOOL,__CFString const*)>::context>>::__on_zero_shared(uint64_t a1)
{
  v3 = (a1 + 72);
  std::vector<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(BOOL,__CFString const*)>>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (a1 + 48);
  std::vector<applesauce::dispatch::v1::block<void ()(BOOL,__CFString const*)>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void std::vector<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(BOOL,__CFString const*)>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 16;
        std::__destroy_at[abi:ne200100]<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(BOOL,__CFString const*)>>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(BOOL,__CFString const*)>>,0>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    _Block_release(v1);
  }
}

void std::vector<applesauce::dispatch::v1::block<void ()(BOOL,__CFString const*)>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        std::__destroy_at[abi:ne200100]<applesauce::dispatch::v1::block<void ()(BOOL,__CFString const*)>,0>(--v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:ne200100]<applesauce::dispatch::v1::block<void ()(BOOL,__CFString const*)>,0>(const void **a1)
{
  v1 = *a1;
  if (v1)
  {
    _Block_release(v1);
  }
}

void std::__shared_ptr_emplace<waipc::util::Broadcaster<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)>::context,std::allocator<waipc::util::Broadcaster<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)>::context>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1EB75A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C288190);
}

void std::__shared_ptr_emplace<waipc::util::Broadcaster<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)>::context,std::allocator<waipc::util::Broadcaster<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)>::context>>::__on_zero_shared(uint64_t a1)
{
  v3 = (a1 + 72);
  std::vector<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)>>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (a1 + 48);
  std::vector<applesauce::dispatch::v1::block<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void std::vector<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 16;
        std::__destroy_at[abi:ne200100]<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)>>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)>>,0>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    _Block_release(v1);
  }
}

void std::vector<applesauce::dispatch::v1::block<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        std::__destroy_at[abi:ne200100]<applesauce::dispatch::v1::block<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)>,0>(--v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:ne200100]<applesauce::dispatch::v1::block<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)>,0>(const void **a1)
{
  v1 = *a1;
  if (v1)
  {
    _Block_release(v1);
  }
}

void std::__shared_ptr_emplace<waipc::util::Broadcaster<void ()(waipc::timesync::KalmanEstimator const&,BOOL)>::context,std::allocator<waipc::util::Broadcaster<void ()(waipc::timesync::KalmanEstimator const&,BOOL)>::context>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1EB75F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C288190);
}

void std::__shared_ptr_emplace<waipc::util::Broadcaster<void ()(waipc::timesync::KalmanEstimator const&,BOOL)>::context,std::allocator<waipc::util::Broadcaster<void ()(waipc::timesync::KalmanEstimator const&,BOOL)>::context>>::__on_zero_shared(uint64_t a1)
{
  v3 = (a1 + 72);
  std::vector<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(waipc::timesync::KalmanEstimator const&,BOOL)>>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (a1 + 48);
  std::vector<applesauce::dispatch::v1::block<void ()(waipc::timesync::KalmanEstimator const&,BOOL)>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void std::vector<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(waipc::timesync::KalmanEstimator const&,BOOL)>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 16;
        std::__destroy_at[abi:ne200100]<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(waipc::timesync::KalmanEstimator const&,BOOL)>>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(waipc::timesync::KalmanEstimator const&,BOOL)>>,0>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    _Block_release(v1);
  }
}

void std::vector<applesauce::dispatch::v1::block<void ()(waipc::timesync::KalmanEstimator const&,BOOL)>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        std::__destroy_at[abi:ne200100]<applesauce::dispatch::v1::block<void ()(waipc::timesync::KalmanEstimator const&,BOOL)>,0>(--v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:ne200100]<applesauce::dispatch::v1::block<void ()(waipc::timesync::KalmanEstimator const&,BOOL)>,0>(const void **a1)
{
  v1 = *a1;
  if (v1)
  {
    _Block_release(v1);
  }
}

void std::__tree<std::__value_type<waipc::timesync::BasebandProvider::timestampId,std::weak_ptr<waipc::timesync::BasebandService::timestampSubscription>>,std::__map_value_compare<waipc::timesync::BasebandProvider::timestampId,std::__value_type<waipc::timesync::BasebandProvider::timestampId,std::weak_ptr<waipc::timesync::BasebandService::timestampSubscription>>,std::less<waipc::timesync::BasebandProvider::timestampId>,true>,std::allocator<std::__value_type<waipc::timesync::BasebandProvider::timestampId,std::weak_ptr<waipc::timesync::BasebandService::timestampSubscription>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<waipc::timesync::BasebandProvider::timestampId,std::weak_ptr<waipc::timesync::BasebandService::timestampSubscription>>,std::__map_value_compare<waipc::timesync::BasebandProvider::timestampId,std::__value_type<waipc::timesync::BasebandProvider::timestampId,std::weak_ptr<waipc::timesync::BasebandService::timestampSubscription>>,std::less<waipc::timesync::BasebandProvider::timestampId>,true>,std::allocator<std::__value_type<waipc::timesync::BasebandProvider::timestampId,std::weak_ptr<waipc::timesync::BasebandService::timestampSubscription>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<waipc::timesync::BasebandProvider::timestampId,std::weak_ptr<waipc::timesync::BasebandService::timestampSubscription>>,std::__map_value_compare<waipc::timesync::BasebandProvider::timestampId,std::__value_type<waipc::timesync::BasebandProvider::timestampId,std::weak_ptr<waipc::timesync::BasebandService::timestampSubscription>>,std::less<waipc::timesync::BasebandProvider::timestampId>,true>,std::allocator<std::__value_type<waipc::timesync::BasebandProvider::timestampId,std::weak_ptr<waipc::timesync::BasebandService::timestampSubscription>>>>::destroy(a1, a2[1]);
    v4 = a2[6];
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<waipc::timesync::BasebandProvider::bufferId,waipc::timesync::BasebandService::bufferInfo>,std::__map_value_compare<waipc::timesync::BasebandProvider::bufferId,std::__value_type<waipc::timesync::BasebandProvider::bufferId,waipc::timesync::BasebandService::bufferInfo>,std::less<waipc::timesync::BasebandProvider::bufferId>,true>,std::allocator<std::__value_type<waipc::timesync::BasebandProvider::bufferId,waipc::timesync::BasebandService::bufferInfo>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<waipc::timesync::BasebandProvider::bufferId,waipc::timesync::BasebandService::bufferInfo>,std::__map_value_compare<waipc::timesync::BasebandProvider::bufferId,std::__value_type<waipc::timesync::BasebandProvider::bufferId,waipc::timesync::BasebandService::bufferInfo>,std::less<waipc::timesync::BasebandProvider::bufferId>,true>,std::allocator<std::__value_type<waipc::timesync::BasebandProvider::bufferId,waipc::timesync::BasebandService::bufferInfo>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<waipc::timesync::BasebandProvider::bufferId,waipc::timesync::BasebandService::bufferInfo>,std::__map_value_compare<waipc::timesync::BasebandProvider::bufferId,std::__value_type<waipc::timesync::BasebandProvider::bufferId,waipc::timesync::BasebandService::bufferInfo>,std::less<waipc::timesync::BasebandProvider::bufferId>,true>,std::allocator<std::__value_type<waipc::timesync::BasebandProvider::bufferId,waipc::timesync::BasebandService::bufferInfo>>>::destroy(a1, a2[1]);
    std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<waipc::timesync::BasebandProvider::bufferId,waipc::timesync::BasebandService::bufferInfo>,void *>>>::destroy[abi:ne200100]<std::pair<waipc::timesync::BasebandProvider::bufferId const,waipc::timesync::BasebandService::bufferInfo>,void,0>(a1, (a2 + 4));

    operator delete(a2);
  }
}

void std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<waipc::timesync::BasebandProvider::bufferId,waipc::timesync::BasebandService::bufferInfo>,void *>>>::destroy[abi:ne200100]<std::pair<waipc::timesync::BasebandProvider::bufferId const,waipc::timesync::BasebandService::bufferInfo>,void,0>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = *(a2 + 32);
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  v5 = *(a2 + 16);
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

BOOL waipc::util::Broadcaster<void ()(waipc::timesync::KalmanEstimator const&,BOOL)>::context::hasObservers(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 16));
  v2 = (*(a1 + 32) - *(a1 + 24)) >> 3;
  for (i = *(a1 + 48); i != *(a1 + 56); i += 16)
  {
    if (*i)
    {
      ++v2;
    }

    else
    {
      --v2;
    }
  }

  v5 = v2 != 0;
  os_unfair_lock_unlock((a1 + 16));
  return v5;
}

void waipc::util::Broadcaster<void ()(BOOL,__CFString const*)>::context::broadcast<BOOL,decltype(nullptr)>(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 20));
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  while (v4 != v5)
  {
    if (*v4)
    {
      (*(*v4 + 16))(*v4, a2, 0);
    }

    ++v4;
  }

  os_unfair_lock_unlock((a1 + 20));
  os_unfair_lock_lock((a1 + 16));
  os_unfair_lock_lock((a1 + 20));
  waipc::util::Broadcaster<void ()(BOOL,__CFString const*)>::context::applyUpdates(a1);
  os_unfair_lock_unlock((a1 + 20));

  os_unfair_lock_unlock((a1 + 16));
}

void sub_29831CA5C(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1 + 5);
  os_unfair_lock_unlock(v1 + 4);
  _Unwind_Resume(a1);
}

void waipc::util::Broadcaster<void ()(BOOL,__CFString const*)>::context::applyUpdates(uint64_t a1)
{
  os_unfair_lock_assert_owner((a1 + 20));
  os_unfair_lock_assert_owner((a1 + 16));
  v3 = *(a1 + 48);
  v2 = *(a1 + 56);
  if (v3 != v2)
  {
    do
    {
      if (*v3 == 1)
      {
        std::vector<applesauce::dispatch::v1::block<void ()(BOOL,__CFString const*)>>::push_back[abi:ne200100]((a1 + 24), (v3 + 8));
      }

      else
      {
        v5 = *(a1 + 24);
        v4 = *(a1 + 32);
        if (v5 != v4)
        {
          while (*v5 != *(v3 + 8))
          {
            if (++v5 == v4)
            {
              v5 = *(a1 + 32);
              break;
            }
          }
        }

        if (v4 == v5)
        {
          waipc::util::Broadcaster<void ()(BOOL,__CFString const*)>::context::applyUpdates();
        }

        std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<applesauce::dispatch::v1::block<void ()(BOOL,__CFString const*)> *,applesauce::dispatch::v1::block<void ()(BOOL,__CFString const*)> *,applesauce::dispatch::v1::block<void ()(BOOL,__CFString const*)> *>(&v9, v5 + 1, v4, v5);
        v7 = v6;
        v8 = *(a1 + 32);
        if (v8 != v6)
        {
          do
          {
            std::__destroy_at[abi:ne200100]<applesauce::dispatch::v1::block<void ()(BOOL,__CFString const*)>,0>(--v8);
          }

          while (v8 != v7);
        }

        *(a1 + 32) = v7;
      }

      v3 += 16;
    }

    while (v3 != v2);
    v3 = *(a1 + 48);
    v2 = *(a1 + 56);
  }

  while (v2 != v3)
  {
    v2 -= 16;
    std::__destroy_at[abi:ne200100]<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(BOOL,__CFString const*)>>,0>(v2);
  }

  *(a1 + 56) = v3;
}

uint64_t std::vector<applesauce::dispatch::v1::block<void ()(BOOL,__CFString const*)>>::push_back[abi:ne200100](void *a1, void **a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *a1) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::vector<std::pair<unsigned long long,waipc::timesync::BasebandProvider::deviceTimestamp>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v12[4] = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::dispatch::v1::block<void ()(BOOL,__CFString const*)>>>(a1, v11);
    }

    v12[0] = 0;
    v12[1] = 8 * v8;
    v12[3] = 0;
    std::construct_at[abi:ne200100]<applesauce::dispatch::v1::block<void ()(BOOL,__CFString const*)>,applesauce::dispatch::v1::block<void ()(BOOL,__CFString const*)> const&,applesauce::dispatch::v1::block<void ()(BOOL,__CFString const*)>*>((8 * v8), a2);
    v12[2] = 8 * v8 + 8;
    std::vector<applesauce::dispatch::v1::block<void ()(BOOL,__CFString const*)>>::__swap_out_circular_buffer(a1, v12);
    v7 = a1[1];
    result = std::__split_buffer<applesauce::dispatch::v1::block<void ()(BOOL,__CFString const*)>>::~__split_buffer(v12);
  }

  else
  {
    result = std::construct_at[abi:ne200100]<applesauce::dispatch::v1::block<void ()(BOOL,__CFString const*)>,applesauce::dispatch::v1::block<void ()(BOOL,__CFString const*)> const&,applesauce::dispatch::v1::block<void ()(BOOL,__CFString const*)>*>(a1[1], a2);
    v7 = v5 + 8;
  }

  a1[1] = v7;
  return result;
}

void sub_29831CC68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<applesauce::dispatch::v1::block<void ()(BOOL,__CFString const*)>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::construct_at[abi:ne200100]<applesauce::dispatch::v1::block<void ()(BOOL,__CFString const*)>,applesauce::dispatch::v1::block<void ()(BOOL,__CFString const*)> const&,applesauce::dispatch::v1::block<void ()(BOOL,__CFString const*)>*>(void *a1, void **a2)
{
  v3 = *a2;
  if (*a2)
  {
    v3 = _Block_copy(v3);
  }

  *a1 = v3;
  return a1;
}

void std::vector<applesauce::dispatch::v1::block<void ()(BOOL,__CFString const*)>>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v5);
    do
    {
      *v8++ = *v7;
      *v7++ = 0;
    }

    while (v7 != v5);
    do
    {
      std::__destroy_at[abi:ne200100]<applesauce::dispatch::v1::block<void ()(BOOL,__CFString const*)>,0>(v4++);
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  *(a1 + 8) = v4;
  a2[1] = v4;
  v9 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v9;
  v10 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::dispatch::v1::block<void ()(BOOL,__CFString const*)>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<applesauce::dispatch::v1::block<void ()(BOOL,__CFString const*)>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::__destroy_at[abi:ne200100]<applesauce::dispatch::v1::block<void ()(BOOL,__CFString const*)>,0>((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

const void **std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<applesauce::dispatch::v1::block<void ()(BOOL,__CFString const*)> *,applesauce::dispatch::v1::block<void ()(BOOL,__CFString const*)> *,applesauce::dispatch::v1::block<void ()(BOOL,__CFString const*)> *>(uint64_t a1, const void **a2, const void **a3, const void **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *v5 = 0;
      v8 = *a4;
      *a4 = v7;
      if (v8)
      {
        _Block_release(v8);
      }

      ++v5;
      ++a4;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t *std::__tree<std::__value_type<waipc::timesync::BasebandProvider::bufferId,waipc::timesync::BasebandService::bufferInfo>,std::__map_value_compare<waipc::timesync::BasebandProvider::bufferId,std::__value_type<waipc::timesync::BasebandProvider::bufferId,waipc::timesync::BasebandService::bufferInfo>,std::less<waipc::timesync::BasebandProvider::bufferId>,true>,std::allocator<std::__value_type<waipc::timesync::BasebandProvider::bufferId,waipc::timesync::BasebandService::bufferInfo>>>::erase(uint64_t **a1, uint64_t *a2)
{
  v4 = std::__tree<std::__value_type<waipc::timesync::BasebandProvider::bufferId,waipc::timesync::BasebandService::bufferInfo>,std::__map_value_compare<waipc::timesync::BasebandProvider::bufferId,std::__value_type<waipc::timesync::BasebandProvider::bufferId,waipc::timesync::BasebandService::bufferInfo>,std::less<waipc::timesync::BasebandProvider::bufferId>,true>,std::allocator<std::__value_type<waipc::timesync::BasebandProvider::bufferId,waipc::timesync::BasebandService::bufferInfo>>>::__remove_node_pointer(a1, a2);
  std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<waipc::timesync::BasebandProvider::bufferId,waipc::timesync::BasebandService::bufferInfo>,void *>>>::destroy[abi:ne200100]<std::pair<waipc::timesync::BasebandProvider::bufferId const,waipc::timesync::BasebandService::bufferInfo>,void,0>(a1, (a2 + 4));
  operator delete(a2);
  return v4;
}

uint64_t *std::__tree<std::__value_type<waipc::timesync::BasebandProvider::bufferId,waipc::timesync::BasebandService::bufferInfo>,std::__map_value_compare<waipc::timesync::BasebandProvider::bufferId,std::__value_type<waipc::timesync::BasebandProvider::bufferId,waipc::timesync::BasebandService::bufferInfo>,std::less<waipc::timesync::BasebandProvider::bufferId>,true>,std::allocator<std::__value_type<waipc::timesync::BasebandProvider::bufferId,waipc::timesync::BasebandService::bufferInfo>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      else
      {
        v18 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_68;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v33 = *v25;
    v7[1] = *v25;
    if (v33)
    {
      *(v33 + 16) = v7;
    }

    v34 = v7[2];
    v25[2] = v34;
    v34[*v34 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}

void waipc::util::Broadcaster<void ()(BOOL,__CFString const*)>::context::broadcast<BOOL,__CFString const*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock((a1 + 20));
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  while (v6 != v7)
  {
    if (*v6)
    {
      (*(*v6 + 16))(*v6, a2, a3);
    }

    ++v6;
  }

  os_unfair_lock_unlock((a1 + 20));
  os_unfair_lock_lock((a1 + 16));
  os_unfair_lock_lock((a1 + 20));
  waipc::util::Broadcaster<void ()(BOOL,__CFString const*)>::context::applyUpdates(a1);
  os_unfair_lock_unlock((a1 + 20));

  os_unfair_lock_unlock((a1 + 16));
}

void sub_29831D35C(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1 + 5);
  os_unfair_lock_unlock(v1 + 4);
  _Unwind_Resume(a1);
}

void waipc::util::Broadcaster<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)>::context::broadcast<waipc::timesync::BasebandProvider::timesyncMeasurement*,unsigned long>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock((a1 + 20));
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  while (v6 != v7)
  {
    if (*v6)
    {
      (*(*v6 + 16))(*v6, a2, a3);
    }

    ++v6;
  }

  os_unfair_lock_unlock((a1 + 20));
  os_unfair_lock_lock((a1 + 16));
  os_unfair_lock_lock((a1 + 20));
  waipc::util::Broadcaster<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)>::context::applyUpdates(a1);
  os_unfair_lock_unlock((a1 + 20));

  os_unfair_lock_unlock((a1 + 16));
}

void sub_29831D424(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1 + 5);
  os_unfair_lock_unlock(v1 + 4);
  _Unwind_Resume(a1);
}

void waipc::util::Broadcaster<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)>::context::applyUpdates(uint64_t a1)
{
  os_unfair_lock_assert_owner((a1 + 20));
  os_unfair_lock_assert_owner((a1 + 16));
  v3 = *(a1 + 48);
  v2 = *(a1 + 56);
  if (v3 != v2)
  {
    do
    {
      if (*v3 == 1)
      {
        std::vector<applesauce::dispatch::v1::block<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)>>::push_back[abi:ne200100]((a1 + 24), (v3 + 8));
      }

      else
      {
        v5 = *(a1 + 24);
        v4 = *(a1 + 32);
        if (v5 != v4)
        {
          while (*v5 != *(v3 + 8))
          {
            if (++v5 == v4)
            {
              v5 = *(a1 + 32);
              break;
            }
          }
        }

        if (v4 == v5)
        {
          waipc::util::Broadcaster<void ()(BOOL,__CFString const*)>::context::applyUpdates();
        }

        std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<applesauce::dispatch::v1::block<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)> *,applesauce::dispatch::v1::block<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)> *,applesauce::dispatch::v1::block<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)> *>(&v9, v5 + 1, v4, v5);
        v7 = v6;
        v8 = *(a1 + 32);
        if (v8 != v6)
        {
          do
          {
            std::__destroy_at[abi:ne200100]<applesauce::dispatch::v1::block<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)>,0>(--v8);
          }

          while (v8 != v7);
        }

        *(a1 + 32) = v7;
      }

      v3 += 16;
    }

    while (v3 != v2);
    v3 = *(a1 + 48);
    v2 = *(a1 + 56);
  }

  while (v2 != v3)
  {
    v2 -= 16;
    std::__destroy_at[abi:ne200100]<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)>>,0>(v2);
  }

  *(a1 + 56) = v3;
}

uint64_t std::vector<applesauce::dispatch::v1::block<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)>>::push_back[abi:ne200100](void *a1, void **a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *a1) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::vector<std::pair<unsigned long long,waipc::timesync::BasebandProvider::deviceTimestamp>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v12[4] = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::dispatch::v1::block<void ()(BOOL,__CFString const*)>>>(a1, v11);
    }

    v12[0] = 0;
    v12[1] = 8 * v8;
    v12[3] = 0;
    std::construct_at[abi:ne200100]<applesauce::dispatch::v1::block<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)>,applesauce::dispatch::v1::block<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)> const&,applesauce::dispatch::v1::block<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)>*>((8 * v8), a2);
    v12[2] = 8 * v8 + 8;
    std::vector<applesauce::dispatch::v1::block<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)>>::__swap_out_circular_buffer(a1, v12);
    v7 = a1[1];
    result = std::__split_buffer<applesauce::dispatch::v1::block<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)>>::~__split_buffer(v12);
  }

  else
  {
    result = std::construct_at[abi:ne200100]<applesauce::dispatch::v1::block<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)>,applesauce::dispatch::v1::block<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)> const&,applesauce::dispatch::v1::block<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)>*>(a1[1], a2);
    v7 = v5 + 8;
  }

  a1[1] = v7;
  return result;
}

void sub_29831D630(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<applesauce::dispatch::v1::block<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::construct_at[abi:ne200100]<applesauce::dispatch::v1::block<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)>,applesauce::dispatch::v1::block<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)> const&,applesauce::dispatch::v1::block<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)>*>(void *a1, void **a2)
{
  v3 = *a2;
  if (*a2)
  {
    v3 = _Block_copy(v3);
  }

  *a1 = v3;
  return a1;
}

void std::vector<applesauce::dispatch::v1::block<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)>>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v5);
    do
    {
      *v8++ = *v7;
      *v7++ = 0;
    }

    while (v7 != v5);
    do
    {
      std::__destroy_at[abi:ne200100]<applesauce::dispatch::v1::block<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)>,0>(v4++);
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  *(a1 + 8) = v4;
  a2[1] = v4;
  v9 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v9;
  v10 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<applesauce::dispatch::v1::block<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::__destroy_at[abi:ne200100]<applesauce::dispatch::v1::block<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)>,0>((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

const void **std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<applesauce::dispatch::v1::block<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)> *,applesauce::dispatch::v1::block<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)> *,applesauce::dispatch::v1::block<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)> *>(uint64_t a1, const void **a2, const void **a3, const void **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *v5 = 0;
      v8 = *a4;
      *a4 = v7;
      if (v8)
      {
        _Block_release(v8);
      }

      ++v5;
      ++a4;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void waipc::util::Broadcaster<void ()(waipc::timesync::KalmanEstimator const&,BOOL)>::context::broadcast<waipc::timesync::KalmanEstimator,BOOL>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock((a1 + 20));
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  while (v6 != v7)
  {
    if (*v6)
    {
      (*(*v6 + 16))(*v6, a2, a3);
    }

    ++v6;
  }

  os_unfair_lock_unlock((a1 + 20));
  os_unfair_lock_lock((a1 + 16));
  os_unfair_lock_lock((a1 + 20));
  waipc::util::Broadcaster<void ()(waipc::timesync::KalmanEstimator const&,BOOL)>::context::applyUpdates(a1);
  os_unfair_lock_unlock((a1 + 20));

  os_unfair_lock_unlock((a1 + 16));
}

void sub_29831D89C(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1 + 5);
  os_unfair_lock_unlock(v1 + 4);
  _Unwind_Resume(a1);
}

void waipc::util::Broadcaster<void ()(waipc::timesync::KalmanEstimator const&,BOOL)>::context::applyUpdates(uint64_t a1)
{
  os_unfair_lock_assert_owner((a1 + 20));
  os_unfair_lock_assert_owner((a1 + 16));
  v3 = *(a1 + 48);
  v2 = *(a1 + 56);
  if (v3 != v2)
  {
    do
    {
      if (*v3 == 1)
      {
        std::vector<applesauce::dispatch::v1::block<void ()(waipc::timesync::KalmanEstimator const&,BOOL)>>::push_back[abi:ne200100]((a1 + 24), (v3 + 8));
      }

      else
      {
        v5 = *(a1 + 24);
        v4 = *(a1 + 32);
        if (v5 != v4)
        {
          while (*v5 != *(v3 + 8))
          {
            if (++v5 == v4)
            {
              v5 = *(a1 + 32);
              break;
            }
          }
        }

        if (v4 == v5)
        {
          waipc::util::Broadcaster<void ()(BOOL,__CFString const*)>::context::applyUpdates();
        }

        std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<applesauce::dispatch::v1::block<void ()(waipc::timesync::KalmanEstimator const&,BOOL)> *,applesauce::dispatch::v1::block<void ()(waipc::timesync::KalmanEstimator const&,BOOL)> *,applesauce::dispatch::v1::block<void ()(waipc::timesync::KalmanEstimator const&,BOOL)> *>(&v9, v5 + 1, v4, v5);
        v7 = v6;
        v8 = *(a1 + 32);
        if (v8 != v6)
        {
          do
          {
            std::__destroy_at[abi:ne200100]<applesauce::dispatch::v1::block<void ()(waipc::timesync::KalmanEstimator const&,BOOL)>,0>(--v8);
          }

          while (v8 != v7);
        }

        *(a1 + 32) = v7;
      }

      v3 += 16;
    }

    while (v3 != v2);
    v3 = *(a1 + 48);
    v2 = *(a1 + 56);
  }

  while (v2 != v3)
  {
    v2 -= 16;
    std::__destroy_at[abi:ne200100]<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(waipc::timesync::KalmanEstimator const&,BOOL)>>,0>(v2);
  }

  *(a1 + 56) = v3;
}

uint64_t std::vector<applesauce::dispatch::v1::block<void ()(waipc::timesync::KalmanEstimator const&,BOOL)>>::push_back[abi:ne200100](void *a1, void **a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *a1) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::vector<std::pair<unsigned long long,waipc::timesync::BasebandProvider::deviceTimestamp>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v12[4] = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::dispatch::v1::block<void ()(BOOL,__CFString const*)>>>(a1, v11);
    }

    v12[0] = 0;
    v12[1] = 8 * v8;
    v12[3] = 0;
    std::construct_at[abi:ne200100]<applesauce::dispatch::v1::block<void ()(waipc::timesync::KalmanEstimator const&,BOOL)>,applesauce::dispatch::v1::block<void ()(waipc::timesync::KalmanEstimator const&,BOOL)> const&,applesauce::dispatch::v1::block<void ()(waipc::timesync::KalmanEstimator const&,BOOL)>*>((8 * v8), a2);
    v12[2] = 8 * v8 + 8;
    std::vector<applesauce::dispatch::v1::block<void ()(waipc::timesync::KalmanEstimator const&,BOOL)>>::__swap_out_circular_buffer(a1, v12);
    v7 = a1[1];
    result = std::__split_buffer<applesauce::dispatch::v1::block<void ()(waipc::timesync::KalmanEstimator const&,BOOL)>>::~__split_buffer(v12);
  }

  else
  {
    result = std::construct_at[abi:ne200100]<applesauce::dispatch::v1::block<void ()(waipc::timesync::KalmanEstimator const&,BOOL)>,applesauce::dispatch::v1::block<void ()(waipc::timesync::KalmanEstimator const&,BOOL)> const&,applesauce::dispatch::v1::block<void ()(waipc::timesync::KalmanEstimator const&,BOOL)>*>(a1[1], a2);
    v7 = v5 + 8;
  }

  a1[1] = v7;
  return result;
}

void sub_29831DAA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<applesauce::dispatch::v1::block<void ()(waipc::timesync::KalmanEstimator const&,BOOL)>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::construct_at[abi:ne200100]<applesauce::dispatch::v1::block<void ()(waipc::timesync::KalmanEstimator const&,BOOL)>,applesauce::dispatch::v1::block<void ()(waipc::timesync::KalmanEstimator const&,BOOL)> const&,applesauce::dispatch::v1::block<void ()(waipc::timesync::KalmanEstimator const&,BOOL)>*>(void *a1, void **a2)
{
  v3 = *a2;
  if (*a2)
  {
    v3 = _Block_copy(v3);
  }

  *a1 = v3;
  return a1;
}

void std::vector<applesauce::dispatch::v1::block<void ()(waipc::timesync::KalmanEstimator const&,BOOL)>>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v5);
    do
    {
      *v8++ = *v7;
      *v7++ = 0;
    }

    while (v7 != v5);
    do
    {
      std::__destroy_at[abi:ne200100]<applesauce::dispatch::v1::block<void ()(waipc::timesync::KalmanEstimator const&,BOOL)>,0>(v4++);
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  *(a1 + 8) = v4;
  a2[1] = v4;
  v9 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v9;
  v10 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<applesauce::dispatch::v1::block<void ()(waipc::timesync::KalmanEstimator const&,BOOL)>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::__destroy_at[abi:ne200100]<applesauce::dispatch::v1::block<void ()(waipc::timesync::KalmanEstimator const&,BOOL)>,0>((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

const void **std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<applesauce::dispatch::v1::block<void ()(waipc::timesync::KalmanEstimator const&,BOOL)> *,applesauce::dispatch::v1::block<void ()(waipc::timesync::KalmanEstimator const&,BOOL)> *,applesauce::dispatch::v1::block<void ()(waipc::timesync::KalmanEstimator const&,BOOL)> *>(uint64_t a1, const void **a2, const void **a3, const void **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *v5 = 0;
      v8 = *a4;
      *a4 = v7;
      if (v8)
      {
        _Block_release(v8);
      }

      ++v5;
      ++a4;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void waipc::util::Broadcaster<void ()(unsigned long long,double,unsigned long long)>::context::broadcast<unsigned long long,double,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  os_unfair_lock_lock((a1 + 20));
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  while (v8 != v9)
  {
    if (*v8)
    {
      (*(*v8 + 16))(*v8, a2, a3, a4);
    }

    ++v8;
  }

  os_unfair_lock_unlock((a1 + 20));
  os_unfair_lock_lock((a1 + 16));
  os_unfair_lock_lock((a1 + 20));
  waipc::util::Broadcaster<void ()(unsigned long long,double,unsigned long long)>::context::applyUpdates(a1);
  os_unfair_lock_unlock((a1 + 20));

  os_unfair_lock_unlock((a1 + 16));
}

void sub_29831DD24(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1 + 5);
  os_unfair_lock_unlock(v1 + 4);
  _Unwind_Resume(a1);
}

void waipc::util::Broadcaster<void ()(unsigned long long,double,unsigned long long)>::context::applyUpdates(uint64_t a1)
{
  os_unfair_lock_assert_owner((a1 + 20));
  os_unfair_lock_assert_owner((a1 + 16));
  v3 = *(a1 + 48);
  v2 = *(a1 + 56);
  if (v3 != v2)
  {
    do
    {
      if (*v3 == 1)
      {
        std::vector<applesauce::dispatch::v1::block<void ()(unsigned long long,double,unsigned long long)>>::push_back[abi:ne200100]((a1 + 24), (v3 + 8));
      }

      else
      {
        v5 = *(a1 + 24);
        v4 = *(a1 + 32);
        if (v5 != v4)
        {
          while (*v5 != *(v3 + 8))
          {
            if (++v5 == v4)
            {
              v5 = *(a1 + 32);
              break;
            }
          }
        }

        if (v4 == v5)
        {
          waipc::util::Broadcaster<void ()(BOOL,__CFString const*)>::context::applyUpdates();
        }

        std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<applesauce::dispatch::v1::block<void ()(unsigned long long,double,unsigned long long)> *,applesauce::dispatch::v1::block<void ()(unsigned long long,double,unsigned long long)> *,applesauce::dispatch::v1::block<void ()(unsigned long long,double,unsigned long long)> *>(&v9, v5 + 1, v4, v5);
        v7 = v6;
        v8 = *(a1 + 32);
        if (v8 != v6)
        {
          do
          {
            std::__destroy_at[abi:ne200100]<applesauce::dispatch::v1::block<void ()(unsigned long long,double,unsigned long long)>,0>(--v8);
          }

          while (v8 != v7);
        }

        *(a1 + 32) = v7;
      }

      v3 += 16;
    }

    while (v3 != v2);
    v3 = *(a1 + 48);
    v2 = *(a1 + 56);
  }

  while (v2 != v3)
  {
    v2 -= 16;
    std::__destroy_at[abi:ne200100]<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(unsigned long long,double,unsigned long long)>>,0>(v2);
  }

  *(a1 + 56) = v3;
}

uint64_t std::vector<applesauce::dispatch::v1::block<void ()(unsigned long long,double,unsigned long long)>>::push_back[abi:ne200100](void *a1, void **a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *a1) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::vector<std::pair<unsigned long long,waipc::timesync::BasebandProvider::deviceTimestamp>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v12[4] = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::dispatch::v1::block<void ()(BOOL,__CFString const*)>>>(a1, v11);
    }

    v12[0] = 0;
    v12[1] = 8 * v8;
    v12[3] = 0;
    std::construct_at[abi:ne200100]<applesauce::dispatch::v1::block<void ()(unsigned long long,double,unsigned long long)>,applesauce::dispatch::v1::block<void ()(unsigned long long,double,unsigned long long)> const&,applesauce::dispatch::v1::block<void ()(unsigned long long,double,unsigned long long)>*>((8 * v8), a2);
    v12[2] = 8 * v8 + 8;
    std::vector<applesauce::dispatch::v1::block<void ()(unsigned long long,double,unsigned long long)>>::__swap_out_circular_buffer(a1, v12);
    v7 = a1[1];
    result = std::__split_buffer<applesauce::dispatch::v1::block<void ()(unsigned long long,double,unsigned long long)>>::~__split_buffer(v12);
  }

  else
  {
    result = std::construct_at[abi:ne200100]<applesauce::dispatch::v1::block<void ()(unsigned long long,double,unsigned long long)>,applesauce::dispatch::v1::block<void ()(unsigned long long,double,unsigned long long)> const&,applesauce::dispatch::v1::block<void ()(unsigned long long,double,unsigned long long)>*>(a1[1], a2);
    v7 = v5 + 8;
  }

  a1[1] = v7;
  return result;
}

void sub_29831DF30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<applesauce::dispatch::v1::block<void ()(unsigned long long,double,unsigned long long)>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::construct_at[abi:ne200100]<applesauce::dispatch::v1::block<void ()(unsigned long long,double,unsigned long long)>,applesauce::dispatch::v1::block<void ()(unsigned long long,double,unsigned long long)> const&,applesauce::dispatch::v1::block<void ()(unsigned long long,double,unsigned long long)>*>(void *a1, void **a2)
{
  v3 = *a2;
  if (*a2)
  {
    v3 = _Block_copy(v3);
  }

  *a1 = v3;
  return a1;
}

void std::vector<applesauce::dispatch::v1::block<void ()(unsigned long long,double,unsigned long long)>>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v5);
    do
    {
      *v8++ = *v7;
      *v7++ = 0;
    }

    while (v7 != v5);
    do
    {
      std::__destroy_at[abi:ne200100]<applesauce::dispatch::v1::block<void ()(unsigned long long,double,unsigned long long)>,0>(v4++);
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  *(a1 + 8) = v4;
  a2[1] = v4;
  v9 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v9;
  v10 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
}

void std::__destroy_at[abi:ne200100]<applesauce::dispatch::v1::block<void ()(unsigned long long,double,unsigned long long)>,0>(const void **a1)
{
  v1 = *a1;
  if (v1)
  {
    _Block_release(v1);
  }
}

uint64_t std::__split_buffer<applesauce::dispatch::v1::block<void ()(unsigned long long,double,unsigned long long)>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::__destroy_at[abi:ne200100]<applesauce::dispatch::v1::block<void ()(unsigned long long,double,unsigned long long)>,0>((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

const void **std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<applesauce::dispatch::v1::block<void ()(unsigned long long,double,unsigned long long)> *,applesauce::dispatch::v1::block<void ()(unsigned long long,double,unsigned long long)> *,applesauce::dispatch::v1::block<void ()(unsigned long long,double,unsigned long long)> *>(uint64_t a1, const void **a2, const void **a3, const void **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *v5 = 0;
      v8 = *a4;
      *a4 = v7;
      if (v8)
      {
        _Block_release(v8);
      }

      ++v5;
      ++a4;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void std::__destroy_at[abi:ne200100]<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(unsigned long long,double,unsigned long long)>>,0>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    _Block_release(v1);
  }
}

uint64_t *std::__tree<std::__value_type<waipc::timesync::BasebandProvider::bufferId,waipc::timesync::BasebandService::bufferInfo>,std::__map_value_compare<waipc::timesync::BasebandProvider::bufferId,std::__value_type<waipc::timesync::BasebandProvider::bufferId,waipc::timesync::BasebandService::bufferInfo>,std::less<waipc::timesync::BasebandProvider::bufferId>,true>,std::allocator<std::__value_type<waipc::timesync::BasebandProvider::bufferId,waipc::timesync::BasebandService::bufferInfo>>>::__equal_range_multi<waipc::timesync::BasebandProvider::bufferId>(uint64_t a1, unsigned __int8 *a2)
{
  v2 = (a1 + 8);
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *a2;
  while (1)
  {
    v5 = *(v3 + 32);
    if (v4 >= v5)
    {
      break;
    }

    v2 = v3;
LABEL_7:
    v3 = *v3;
    if (!v3)
    {
      return v2;
    }
  }

  if (v5 < v4)
  {
    ++v3;
    goto LABEL_7;
  }

  v7 = *v3;
  result = v3;
  if (*v3)
  {
    result = v3;
    do
    {
      v8 = *(v7 + 32);
      v9 = v8 >= v4;
      v10 = v8 < v4;
      if (v9)
      {
        result = v7;
      }

      v7 = v7[v10];
    }

    while (v7);
  }

  for (i = v3[1]; i; i = *(i + 8 * (v4 >= *(i + 32))))
  {
    *(i + 32);
  }

  return result;
}

void waipc::util::Broadcaster<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)>::context::addObserver(uint64_t a1@<X0>, const void *a2@<X1>, void **a3@<X8>)
{
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3802000000;
  v16[3] = __Block_byref_object_copy__166;
  v16[4] = __Block_byref_object_dispose__167;
  std::shared_ptr<waipc::timesync::BasebandProvider>::shared_ptr[abi:ne200100]<waipc::timesync::BasebandProvider,0>(&v10, a1);
  v6 = v11;
  v16[5] = v10;
  v17 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 2, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x3002000000;
  v13 = __Block_byref_object_copy__168;
  v14 = __Block_byref_object_dispose__169;
  if (a2)
  {
    v7 = _Block_copy(a2);
  }

  else
  {
    v7 = 0;
  }

  v15 = v7;
  os_unfair_lock_lock((a1 + 16));
  v9 = 1;
  std::vector<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)>>>::emplace_back<BOOL,applesauce::dispatch::v1::block<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)> const&>((a1 + 48), &v9, v11 + 5);
  if (os_unfair_lock_trylock((a1 + 20)))
  {
    waipc::util::Broadcaster<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)>::context::applyUpdates(a1);
    os_unfair_lock_unlock((a1 + 20));
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN5waipc4util11BroadcasterIFvPKNS_8timesync16BasebandProvider19timesyncMeasurementEmEE7context11addObserverEU13block_pointerS7__block_invoke;
  aBlock[3] = &unk_29EE90DF0;
  aBlock[4] = v16;
  aBlock[5] = &v10;
  aBlock[6] = a1;
  *a3 = _Block_copy(aBlock);
  os_unfair_lock_unlock((a1 + 16));
  _Block_object_dispose(&v10, 8);
  if (v15)
  {
    _Block_release(v15);
  }

  _Block_object_dispose(v16, 8);
  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }
}

void sub_29831E390(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *aBlock)
{
  os_unfair_lock_unlock(v23 + 4);
  _Block_object_dispose(&a18, 8);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  _Block_object_dispose((v24 - 88), 8);
  v26 = *(v24 - 40);
  if (v26)
  {
    std::__shared_weak_count::__release_weak(v26);
  }

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__166(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __Block_byref_object_dispose__167(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void *__Block_byref_object_copy__168(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 40) = result;
  return result;
}

void __Block_byref_object_dispose__169(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    _Block_release(v1);
  }
}

uint64_t std::vector<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)>>>::emplace_back<BOOL,applesauce::dispatch::v1::block<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)> const&>(uint64_t *a1, _BYTE *a2, void **a3)
{
  v5 = a1[1];
  v6 = a1[2];
  if (v5 >= v6)
  {
    v8 = (v5 - *a1) >> 4;
    if ((v8 + 1) >> 60)
    {
      std::vector<std::pair<unsigned long long,waipc::timesync::BasebandProvider::deviceTimestamp>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v6 - *a1;
    v10 = v9 >> 3;
    if (v9 >> 3 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v13[4] = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)>>>>(a1, v11);
    }

    v13[0] = 0;
    v13[1] = 16 * v8;
    v13[3] = 0;
    std::pair<BOOL,applesauce::dispatch::v1::block<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)>>::pair[abi:ne200100]<BOOL,applesauce::dispatch::v1::block<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)> const&,0>(16 * v8, a2, a3);
    v13[2] = 16 * v8 + 16;
    std::vector<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)>>>::__swap_out_circular_buffer(a1, v13);
    v7 = a1[1];
    std::__split_buffer<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)>>>::~__split_buffer(v13);
  }

  else
  {
    v7 = std::pair<BOOL,applesauce::dispatch::v1::block<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)>>::pair[abi:ne200100]<BOOL,applesauce::dispatch::v1::block<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)> const&,0>(v5, a2, a3) + 16;
    a1[1] = v7;
  }

  a1[1] = v7;
  return v7 - 16;
}

void sub_29831E568(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void ___ZN5waipc4util11BroadcasterIFvPKNS_8timesync16BasebandProvider19timesyncMeasurementEmEE7context11addObserverEU13block_pointerS7__block_invoke(void *a1)
{
  v2 = *(a1[4] + 8);
  v3 = *(v2 + 48);
  if (v3)
  {
    v4 = a1[6];
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (*(v2 + 40))
      {
        os_unfair_lock_lock((v4 + 16));
        v7 = 0;
        std::vector<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)>>>::emplace_back<BOOL,applesauce::dispatch::v1::block<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)> const&>((v4 + 48), &v7, (*(a1[5] + 8) + 40));
        if (os_unfair_lock_trylock((v4 + 20)))
        {
          waipc::util::Broadcaster<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)>::context::applyUpdates(v4);
          os_unfair_lock_unlock((v4 + 20));
        }

        os_unfair_lock_unlock((v4 + 16));
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void sub_29831E624(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 4);
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t std::pair<BOOL,applesauce::dispatch::v1::block<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)>>::pair[abi:ne200100]<BOOL,applesauce::dispatch::v1::block<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)> const&,0>(uint64_t a1, _BYTE *a2, void **a3)
{
  *a1 = *a2;
  v4 = *a3;
  if (*a3)
  {
    v4 = _Block_copy(v4);
  }

  *(a1 + 8) = v4;
  return a1;
}

void std::vector<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)>>>::__swap_out_circular_buffer(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v5;
    do
    {
      *v8 = *v7;
      *(v8 + 8) = *(v7 + 8);
      *(v7 + 8) = 0;
      v7 += 16;
      v8 += 16;
    }

    while (v7 != v5);
    do
    {
      std::__destroy_at[abi:ne200100]<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)>>,0>(v4);
      v4 += 16;
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  a1[1] = v4;
  a2[1] = v4;
  v9 = a1[1];
  a1[1] = a2[2];
  a2[2] = v9;
  v10 = a1[2];
  a1[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)>>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
    std::__destroy_at[abi:ne200100]<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)>>,0>(i - 16);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void waipc::util::Broadcaster<void ()(BOOL,__CFString const*)>::context::addObserver(uint64_t a1@<X0>, const void *a2@<X1>, void **a3@<X8>)
{
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3802000000;
  v16[3] = __Block_byref_object_copy__171;
  v16[4] = __Block_byref_object_dispose__172;
  std::shared_ptr<waipc::timesync::BasebandProvider>::shared_ptr[abi:ne200100]<waipc::timesync::BasebandProvider,0>(&v10, a1);
  v6 = v11;
  v16[5] = v10;
  v17 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 2, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x3002000000;
  v13 = __Block_byref_object_copy__173;
  v14 = __Block_byref_object_dispose__174;
  if (a2)
  {
    v7 = _Block_copy(a2);
  }

  else
  {
    v7 = 0;
  }

  v15 = v7;
  os_unfair_lock_lock((a1 + 16));
  v9 = 1;
  std::vector<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(BOOL,__CFString const*)>>>::emplace_back<BOOL,applesauce::dispatch::v1::block<void ()(BOOL,__CFString const*)> const&>((a1 + 48), &v9, v11 + 5);
  if (os_unfair_lock_trylock((a1 + 20)))
  {
    waipc::util::Broadcaster<void ()(BOOL,__CFString const*)>::context::applyUpdates(a1);
    os_unfair_lock_unlock((a1 + 20));
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN5waipc4util11BroadcasterIFvbPK10__CFStringEE7context11addObserverEU13block_pointerS5__block_invoke;
  aBlock[3] = &unk_29EE90E18;
  aBlock[4] = v16;
  aBlock[5] = &v10;
  aBlock[6] = a1;
  *a3 = _Block_copy(aBlock);
  os_unfair_lock_unlock((a1 + 16));
  _Block_object_dispose(&v10, 8);
  if (v15)
  {
    _Block_release(v15);
  }

  _Block_object_dispose(v16, 8);
  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }
}

void sub_29831E9A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *aBlock)
{
  os_unfair_lock_unlock(v23 + 4);
  _Block_object_dispose(&a18, 8);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  _Block_object_dispose((v24 - 88), 8);
  v26 = *(v24 - 40);
  if (v26)
  {
    std::__shared_weak_count::__release_weak(v26);
  }

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__171(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __Block_byref_object_dispose__172(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void *__Block_byref_object_copy__173(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 40) = result;
  return result;
}

void __Block_byref_object_dispose__174(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    _Block_release(v1);
  }
}

uint64_t std::vector<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(BOOL,__CFString const*)>>>::emplace_back<BOOL,applesauce::dispatch::v1::block<void ()(BOOL,__CFString const*)> const&>(uint64_t *a1, _BYTE *a2, void **a3)
{
  v5 = a1[1];
  v6 = a1[2];
  if (v5 >= v6)
  {
    v8 = (v5 - *a1) >> 4;
    if ((v8 + 1) >> 60)
    {
      std::vector<std::pair<unsigned long long,waipc::timesync::BasebandProvider::deviceTimestamp>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v6 - *a1;
    v10 = v9 >> 3;
    if (v9 >> 3 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v13[4] = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)>>>>(a1, v11);
    }

    v13[0] = 0;
    v13[1] = 16 * v8;
    v13[3] = 0;
    std::pair<BOOL,applesauce::dispatch::v1::block<void ()(BOOL,__CFString const*)>>::pair[abi:ne200100]<BOOL,applesauce::dispatch::v1::block<void ()(BOOL,__CFString const*)> const&,0>(16 * v8, a2, a3);
    v13[2] = 16 * v8 + 16;
    std::vector<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(BOOL,__CFString const*)>>>::__swap_out_circular_buffer(a1, v13);
    v7 = a1[1];
    std::__split_buffer<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(BOOL,__CFString const*)>>>::~__split_buffer(v13);
  }

  else
  {
    v7 = std::pair<BOOL,applesauce::dispatch::v1::block<void ()(BOOL,__CFString const*)>>::pair[abi:ne200100]<BOOL,applesauce::dispatch::v1::block<void ()(BOOL,__CFString const*)> const&,0>(v5, a2, a3) + 16;
    a1[1] = v7;
  }

  a1[1] = v7;
  return v7 - 16;
}

void sub_29831EB80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(BOOL,__CFString const*)>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void ___ZN5waipc4util11BroadcasterIFvbPK10__CFStringEE7context11addObserverEU13block_pointerS5__block_invoke(void *a1)
{
  v2 = *(a1[4] + 8);
  v3 = *(v2 + 48);
  if (v3)
  {
    v4 = a1[6];
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (*(v2 + 40))
      {
        os_unfair_lock_lock((v4 + 16));
        v7 = 0;
        std::vector<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(BOOL,__CFString const*)>>>::emplace_back<BOOL,applesauce::dispatch::v1::block<void ()(BOOL,__CFString const*)> const&>((v4 + 48), &v7, (*(a1[5] + 8) + 40));
        if (os_unfair_lock_trylock((v4 + 20)))
        {
          waipc::util::Broadcaster<void ()(BOOL,__CFString const*)>::context::applyUpdates(v4);
          os_unfair_lock_unlock((v4 + 20));
        }

        os_unfair_lock_unlock((v4 + 16));
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void sub_29831EC3C(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 4);
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t std::pair<BOOL,applesauce::dispatch::v1::block<void ()(BOOL,__CFString const*)>>::pair[abi:ne200100]<BOOL,applesauce::dispatch::v1::block<void ()(BOOL,__CFString const*)> const&,0>(uint64_t a1, _BYTE *a2, void **a3)
{
  *a1 = *a2;
  v4 = *a3;
  if (*a3)
  {
    v4 = _Block_copy(v4);
  }

  *(a1 + 8) = v4;
  return a1;
}

void std::vector<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(BOOL,__CFString const*)>>>::__swap_out_circular_buffer(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v5;
    do
    {
      *v8 = *v7;
      *(v8 + 8) = *(v7 + 8);
      *(v7 + 8) = 0;
      v7 += 16;
      v8 += 16;
    }

    while (v7 != v5);
    do
    {
      std::__destroy_at[abi:ne200100]<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(BOOL,__CFString const*)>>,0>(v4);
      v4 += 16;
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  a1[1] = v4;
  a2[1] = v4;
  v9 = a1[1];
  a1[1] = a2[2];
  a2[2] = v9;
  v10 = a1[2];
  a1[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(BOOL,__CFString const*)>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
    std::__destroy_at[abi:ne200100]<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(BOOL,__CFString const*)>>,0>(i - 16);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void waipc::util::Broadcaster<void ()(waipc::timesync::KalmanEstimator const&,BOOL)>::context::addObserver(uint64_t a1@<X0>, const void *a2@<X1>, void **a3@<X8>)
{
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3802000000;
  v16[3] = __Block_byref_object_copy__176;
  v16[4] = __Block_byref_object_dispose__177;
  std::shared_ptr<waipc::timesync::BasebandProvider>::shared_ptr[abi:ne200100]<waipc::timesync::BasebandProvider,0>(&v10, a1);
  v6 = v11;
  v16[5] = v10;
  v17 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 2, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x3002000000;
  v13 = __Block_byref_object_copy__178;
  v14 = __Block_byref_object_dispose__179;
  if (a2)
  {
    v7 = _Block_copy(a2);
  }

  else
  {
    v7 = 0;
  }

  v15 = v7;
  os_unfair_lock_lock((a1 + 16));
  v9 = 1;
  std::vector<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(waipc::timesync::KalmanEstimator const&,BOOL)>>>::emplace_back<BOOL,applesauce::dispatch::v1::block<void ()(waipc::timesync::KalmanEstimator const&,BOOL)> const&>((a1 + 48), &v9, v11 + 5);
  if (os_unfair_lock_trylock((a1 + 20)))
  {
    waipc::util::Broadcaster<void ()(waipc::timesync::KalmanEstimator const&,BOOL)>::context::applyUpdates(a1);
    os_unfair_lock_unlock((a1 + 20));
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN5waipc4util11BroadcasterIFvRKNS_8timesync15KalmanEstimatorEbEE7context11addObserverEU13block_pointerS6__block_invoke;
  aBlock[3] = &unk_29EE90E40;
  aBlock[4] = v16;
  aBlock[5] = &v10;
  aBlock[6] = a1;
  *a3 = _Block_copy(aBlock);
  os_unfair_lock_unlock((a1 + 16));
  _Block_object_dispose(&v10, 8);
  if (v15)
  {
    _Block_release(v15);
  }

  _Block_object_dispose(v16, 8);
  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }
}

void sub_29831EF78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *aBlock)
{
  os_unfair_lock_unlock(v23 + 4);
  _Block_object_dispose(&a18, 8);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  _Block_object_dispose((v24 - 88), 8);
  v26 = *(v24 - 40);
  if (v26)
  {
    std::__shared_weak_count::__release_weak(v26);
  }

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__176(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __Block_byref_object_dispose__177(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void *__Block_byref_object_copy__178(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 40) = result;
  return result;
}

void __Block_byref_object_dispose__179(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    _Block_release(v1);
  }
}

uint64_t std::vector<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(waipc::timesync::KalmanEstimator const&,BOOL)>>>::emplace_back<BOOL,applesauce::dispatch::v1::block<void ()(waipc::timesync::KalmanEstimator const&,BOOL)> const&>(uint64_t *a1, _BYTE *a2, void **a3)
{
  v5 = a1[1];
  v6 = a1[2];
  if (v5 >= v6)
  {
    v8 = (v5 - *a1) >> 4;
    if ((v8 + 1) >> 60)
    {
      std::vector<std::pair<unsigned long long,waipc::timesync::BasebandProvider::deviceTimestamp>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v6 - *a1;
    v10 = v9 >> 3;
    if (v9 >> 3 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v13[4] = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)>>>>(a1, v11);
    }

    v13[0] = 0;
    v13[1] = 16 * v8;
    v13[3] = 0;
    std::pair<BOOL,applesauce::dispatch::v1::block<void ()(waipc::timesync::KalmanEstimator const&,BOOL)>>::pair[abi:ne200100]<BOOL,applesauce::dispatch::v1::block<void ()(waipc::timesync::KalmanEstimator const&,BOOL)> const&,0>(16 * v8, a2, a3);
    v13[2] = 16 * v8 + 16;
    std::vector<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(waipc::timesync::KalmanEstimator const&,BOOL)>>>::__swap_out_circular_buffer(a1, v13);
    v7 = a1[1];
    std::__split_buffer<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(waipc::timesync::KalmanEstimator const&,BOOL)>>>::~__split_buffer(v13);
  }

  else
  {
    v7 = std::pair<BOOL,applesauce::dispatch::v1::block<void ()(waipc::timesync::KalmanEstimator const&,BOOL)>>::pair[abi:ne200100]<BOOL,applesauce::dispatch::v1::block<void ()(waipc::timesync::KalmanEstimator const&,BOOL)> const&,0>(v5, a2, a3) + 16;
    a1[1] = v7;
  }

  a1[1] = v7;
  return v7 - 16;
}

void sub_29831F150(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(waipc::timesync::KalmanEstimator const&,BOOL)>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void ___ZN5waipc4util11BroadcasterIFvRKNS_8timesync15KalmanEstimatorEbEE7context11addObserverEU13block_pointerS6__block_invoke(void *a1)
{
  v2 = *(a1[4] + 8);
  v3 = *(v2 + 48);
  if (v3)
  {
    v4 = a1[6];
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (*(v2 + 40))
      {
        os_unfair_lock_lock((v4 + 16));
        v7 = 0;
        std::vector<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(waipc::timesync::KalmanEstimator const&,BOOL)>>>::emplace_back<BOOL,applesauce::dispatch::v1::block<void ()(waipc::timesync::KalmanEstimator const&,BOOL)> const&>((v4 + 48), &v7, (*(a1[5] + 8) + 40));
        if (os_unfair_lock_trylock((v4 + 20)))
        {
          waipc::util::Broadcaster<void ()(waipc::timesync::KalmanEstimator const&,BOOL)>::context::applyUpdates(v4);
          os_unfair_lock_unlock((v4 + 20));
        }

        os_unfair_lock_unlock((v4 + 16));
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void sub_29831F20C(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 4);
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t std::pair<BOOL,applesauce::dispatch::v1::block<void ()(waipc::timesync::KalmanEstimator const&,BOOL)>>::pair[abi:ne200100]<BOOL,applesauce::dispatch::v1::block<void ()(waipc::timesync::KalmanEstimator const&,BOOL)> const&,0>(uint64_t a1, _BYTE *a2, void **a3)
{
  *a1 = *a2;
  v4 = *a3;
  if (*a3)
  {
    v4 = _Block_copy(v4);
  }

  *(a1 + 8) = v4;
  return a1;
}

void std::vector<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(waipc::timesync::KalmanEstimator const&,BOOL)>>>::__swap_out_circular_buffer(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v5;
    do
    {
      *v8 = *v7;
      *(v8 + 8) = *(v7 + 8);
      *(v7 + 8) = 0;
      v7 += 16;
      v8 += 16;
    }

    while (v7 != v5);
    do
    {
      std::__destroy_at[abi:ne200100]<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(waipc::timesync::KalmanEstimator const&,BOOL)>>,0>(v4);
      v4 += 16;
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  a1[1] = v4;
  a2[1] = v4;
  v9 = a1[1];
  a1[1] = a2[2];
  a2[2] = v9;
  v10 = a1[2];
  a1[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(waipc::timesync::KalmanEstimator const&,BOOL)>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
    std::__destroy_at[abi:ne200100]<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(waipc::timesync::KalmanEstimator const&,BOOL)>>,0>(i - 16);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void waipc::util::Broadcaster<void ()(unsigned long long,double,unsigned long long)>::context::addObserver(uint64_t a1@<X0>, const void *a2@<X1>, void **a3@<X8>)
{
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3802000000;
  v16[3] = __Block_byref_object_copy__181;
  v16[4] = __Block_byref_object_dispose__182;
  std::shared_ptr<waipc::timesync::BasebandProvider>::shared_ptr[abi:ne200100]<waipc::timesync::BasebandProvider,0>(&v10, a1);
  v6 = v11;
  v16[5] = v10;
  v17 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 2, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x3002000000;
  v13 = __Block_byref_object_copy__183;
  v14 = __Block_byref_object_dispose__184;
  if (a2)
  {
    v7 = _Block_copy(a2);
  }

  else
  {
    v7 = 0;
  }

  v15 = v7;
  os_unfair_lock_lock((a1 + 16));
  v9 = 1;
  std::vector<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(unsigned long long,double,unsigned long long)>>>::emplace_back<BOOL,applesauce::dispatch::v1::block<void ()(unsigned long long,double,unsigned long long)> const&>((a1 + 48), &v9, v11 + 5);
  if (os_unfair_lock_trylock((a1 + 20)))
  {
    waipc::util::Broadcaster<void ()(unsigned long long,double,unsigned long long)>::context::applyUpdates(a1);
    os_unfair_lock_unlock((a1 + 20));
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN5waipc4util11BroadcasterIFvydyEE7context11addObserverEU13block_pointerS2__block_invoke;
  aBlock[3] = &unk_29EE90E68;
  aBlock[4] = v16;
  aBlock[5] = &v10;
  aBlock[6] = a1;
  *a3 = _Block_copy(aBlock);
  os_unfair_lock_unlock((a1 + 16));
  _Block_object_dispose(&v10, 8);
  if (v15)
  {
    _Block_release(v15);
  }

  _Block_object_dispose(v16, 8);
  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }
}

void sub_29831F548(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *aBlock)
{
  os_unfair_lock_unlock(v23 + 4);
  _Block_object_dispose(&a18, 8);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  _Block_object_dispose((v24 - 88), 8);
  v26 = *(v24 - 40);
  if (v26)
  {
    std::__shared_weak_count::__release_weak(v26);
  }

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__181(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __Block_byref_object_dispose__182(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void *__Block_byref_object_copy__183(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 40) = result;
  return result;
}

void __Block_byref_object_dispose__184(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    _Block_release(v1);
  }
}

uint64_t std::vector<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(unsigned long long,double,unsigned long long)>>>::emplace_back<BOOL,applesauce::dispatch::v1::block<void ()(unsigned long long,double,unsigned long long)> const&>(uint64_t *a1, _BYTE *a2, void **a3)
{
  v5 = a1[1];
  v6 = a1[2];
  if (v5 >= v6)
  {
    v8 = (v5 - *a1) >> 4;
    if ((v8 + 1) >> 60)
    {
      std::vector<std::pair<unsigned long long,waipc::timesync::BasebandProvider::deviceTimestamp>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v6 - *a1;
    v10 = v9 >> 3;
    if (v9 >> 3 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v13[4] = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(waipc::timesync::BasebandProvider::timesyncMeasurement const*,unsigned long)>>>>(a1, v11);
    }

    v13[0] = 0;
    v13[1] = 16 * v8;
    v13[3] = 0;
    std::pair<BOOL,applesauce::dispatch::v1::block<void ()(unsigned long long,double,unsigned long long)>>::pair[abi:ne200100]<BOOL,applesauce::dispatch::v1::block<void ()(unsigned long long,double,unsigned long long)> const&,0>(16 * v8, a2, a3);
    v13[2] = 16 * v8 + 16;
    std::vector<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(unsigned long long,double,unsigned long long)>>>::__swap_out_circular_buffer(a1, v13);
    v7 = a1[1];
    std::__split_buffer<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(unsigned long long,double,unsigned long long)>>>::~__split_buffer(v13);
  }

  else
  {
    v7 = std::pair<BOOL,applesauce::dispatch::v1::block<void ()(unsigned long long,double,unsigned long long)>>::pair[abi:ne200100]<BOOL,applesauce::dispatch::v1::block<void ()(unsigned long long,double,unsigned long long)> const&,0>(v5, a2, a3) + 16;
    a1[1] = v7;
  }

  a1[1] = v7;
  return v7 - 16;
}

void sub_29831F720(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(unsigned long long,double,unsigned long long)>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void ___ZN5waipc4util11BroadcasterIFvydyEE7context11addObserverEU13block_pointerS2__block_invoke(void *a1)
{
  v2 = *(a1[4] + 8);
  v3 = *(v2 + 48);
  if (v3)
  {
    v4 = a1[6];
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (*(v2 + 40))
      {
        os_unfair_lock_lock((v4 + 16));
        v7 = 0;
        std::vector<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(unsigned long long,double,unsigned long long)>>>::emplace_back<BOOL,applesauce::dispatch::v1::block<void ()(unsigned long long,double,unsigned long long)> const&>((v4 + 48), &v7, (*(a1[5] + 8) + 40));
        if (os_unfair_lock_trylock((v4 + 20)))
        {
          waipc::util::Broadcaster<void ()(unsigned long long,double,unsigned long long)>::context::applyUpdates(v4);
          os_unfair_lock_unlock((v4 + 20));
        }

        os_unfair_lock_unlock((v4 + 16));
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void sub_29831F7DC(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 4);
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t std::pair<BOOL,applesauce::dispatch::v1::block<void ()(unsigned long long,double,unsigned long long)>>::pair[abi:ne200100]<BOOL,applesauce::dispatch::v1::block<void ()(unsigned long long,double,unsigned long long)> const&,0>(uint64_t a1, _BYTE *a2, void **a3)
{
  *a1 = *a2;
  v4 = *a3;
  if (*a3)
  {
    v4 = _Block_copy(v4);
  }

  *(a1 + 8) = v4;
  return a1;
}

void std::vector<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(unsigned long long,double,unsigned long long)>>>::__swap_out_circular_buffer(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v5;
    do
    {
      *v8 = *v7;
      *(v8 + 8) = *(v7 + 8);
      *(v7 + 8) = 0;
      v7 += 16;
      v8 += 16;
    }

    while (v7 != v5);
    do
    {
      std::__destroy_at[abi:ne200100]<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(unsigned long long,double,unsigned long long)>>,0>(v4);
      v4 += 16;
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  a1[1] = v4;
  a2[1] = v4;
  v9 = a1[1];
  a1[1] = a2[2];
  a2[2] = v9;
  v10 = a1[2];
  a1[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(unsigned long long,double,unsigned long long)>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
    std::__destroy_at[abi:ne200100]<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(unsigned long long,double,unsigned long long)>>,0>(i - 16);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<waipc::timesync::BasebandProvider::timestampId,std::weak_ptr<waipc::timesync::BasebandService::timestampSubscription>>,std::__map_value_compare<waipc::timesync::BasebandProvider::timestampId,std::__value_type<waipc::timesync::BasebandProvider::timestampId,std::weak_ptr<waipc::timesync::BasebandService::timestampSubscription>>,std::less<waipc::timesync::BasebandProvider::timestampId>,true>,std::allocator<std::__value_type<waipc::timesync::BasebandProvider::timestampId,std::weak_ptr<waipc::timesync::BasebandService::timestampSubscription>>>>::erase(uint64_t **a1, uint64_t *a2)
{
  v3 = std::__tree<std::__value_type<waipc::timesync::BasebandProvider::bufferId,waipc::timesync::BasebandService::bufferInfo>,std::__map_value_compare<waipc::timesync::BasebandProvider::bufferId,std::__value_type<waipc::timesync::BasebandProvider::bufferId,waipc::timesync::BasebandService::bufferInfo>,std::less<waipc::timesync::BasebandProvider::bufferId>,true>,std::allocator<std::__value_type<waipc::timesync::BasebandProvider::bufferId,waipc::timesync::BasebandService::bufferInfo>>>::__remove_node_pointer(a1, a2);
  v4 = a2[6];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(a2);
  return v3;
}

void std::__shared_ptr_emplace<waipc::util::Broadcaster<void ()(unsigned long long,double,unsigned long long)>::context,std::allocator<waipc::util::Broadcaster<void ()(unsigned long long,double,unsigned long long)>::context>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1EB7648;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C288190);
}

void std::__shared_ptr_emplace<waipc::util::Broadcaster<void ()(unsigned long long,double,unsigned long long)>::context,std::allocator<waipc::util::Broadcaster<void ()(unsigned long long,double,unsigned long long)>::context>>::__on_zero_shared(uint64_t a1)
{
  v3 = (a1 + 72);
  std::vector<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(unsigned long long,double,unsigned long long)>>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (a1 + 48);
  std::vector<applesauce::dispatch::v1::block<void ()(unsigned long long,double,unsigned long long)>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void std::vector<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(unsigned long long,double,unsigned long long)>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 16;
        std::__destroy_at[abi:ne200100]<std::pair<BOOL,applesauce::dispatch::v1::block<void ()(unsigned long long,double,unsigned long long)>>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<applesauce::dispatch::v1::block<void ()(unsigned long long,double,unsigned long long)>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        std::__destroy_at[abi:ne200100]<applesauce::dispatch::v1::block<void ()(unsigned long long,double,unsigned long long)>,0>(--v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__shared_ptr_emplace<waipc::timesync::BasebandService::timestampSubscription>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1EB7698;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C288190);
}

void std::__shared_ptr_emplace<waipc::timesync::BasebandService::timestampSubscription>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 80);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  waipc::util::GuardBlock::~GuardBlock((a1 + 72));
  v4 = *(a1 + 64);
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t *std::__tree<std::__value_type<waipc::timesync::BasebandProvider::timestampId,std::weak_ptr<waipc::timesync::BasebandService::timestampSubscription>>,std::__map_value_compare<waipc::timesync::BasebandProvider::timestampId,std::__value_type<waipc::timesync::BasebandProvider::timestampId,std::weak_ptr<waipc::timesync::BasebandService::timestampSubscription>>,std::less<waipc::timesync::BasebandProvider::timestampId>,true>,std::allocator<std::__value_type<waipc::timesync::BasebandProvider::timestampId,std::weak_ptr<waipc::timesync::BasebandService::timestampSubscription>>>>::__emplace_unique_key_args<waipc::timesync::BasebandProvider::timestampId,std::piecewise_construct_t const&,std::tuple<waipc::timesync::BasebandProvider::timestampId const&>,std::tuple<>>(uint64_t a1, unsigned __int8 *a2)
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

uint64_t *std::__tree<std::__value_type<waipc::timesync::BasebandProvider::timestampId,std::weak_ptr<waipc::timesync::BasebandService::timestampSubscription>>,std::__map_value_compare<waipc::timesync::BasebandProvider::timestampId,std::__value_type<waipc::timesync::BasebandProvider::timestampId,std::weak_ptr<waipc::timesync::BasebandService::timestampSubscription>>,std::less<waipc::timesync::BasebandProvider::timestampId>,true>,std::allocator<std::__value_type<waipc::timesync::BasebandProvider::timestampId,std::weak_ptr<waipc::timesync::BasebandService::timestampSubscription>>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

void *std::__tree<std::__value_type<waipc::timesync::BasebandProvider::bufferId,waipc::timesync::BasebandService::bufferInfo>,std::__map_value_compare<waipc::timesync::BasebandProvider::bufferId,std::__value_type<waipc::timesync::BasebandProvider::bufferId,waipc::timesync::BasebandService::bufferInfo>,std::less<waipc::timesync::BasebandProvider::bufferId>,true>,std::allocator<std::__value_type<waipc::timesync::BasebandProvider::bufferId,waipc::timesync::BasebandService::bufferInfo>>>::__find_leaf(void *a1, void *a2, void *a3, unsigned __int8 *a4)
{
  v4 = a1 + 1;
  if (a1 + 1 != a2)
  {
    v5 = *a4;
    if (*(a2 + 32) < v5)
    {
      while (1)
      {
        v6 = *v4;
        a2 = v4;
        if (!*v4)
        {
          break;
        }

        while (1)
        {
          v4 = v6;
          if (*(v6 + 32) >= v5)
          {
            break;
          }

          v6 = *(v6 + 8);
          if (!v6)
          {
            goto LABEL_19;
          }
        }
      }

LABEL_20:
      *a3 = v4;
      return a2;
    }
  }

  v7 = *a2;
  if (*a1 == a2)
  {
    v9 = a2;
  }

  else
  {
    if (v7)
    {
      v8 = *a2;
      do
      {
        v9 = v8;
        v8 = v8[1];
      }

      while (v8);
    }

    else
    {
      v10 = a2;
      do
      {
        v9 = v10[2];
        v11 = *v9 == v10;
        v10 = v9;
      }

      while (v11);
    }

    v12 = *a4;
    if (v12 < *(v9 + 32))
    {
      while (1)
      {
        v13 = *v4;
        a2 = v4;
        if (!*v4)
        {
          goto LABEL_20;
        }

        while (1)
        {
          v4 = v13;
          if (v12 < *(v13 + 32))
          {
            break;
          }

          v13 = *(v13 + 8);
          if (!v13)
          {
LABEL_19:
            a2 = v4 + 1;
            goto LABEL_20;
          }
        }
      }
    }
  }

  if (v7)
  {
    *a3 = v9;
    return v9 + 1;
  }

  else
  {
    *a3 = a2;
  }

  return a2;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<waipc::timesync::BasebandProvider::bufferId,waipc::timesync::BasebandService::bufferInfo>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<waipc::timesync::BasebandProvider::bufferId,waipc::timesync::BasebandService::bufferInfo>,void *>>>::destroy[abi:ne200100]<std::pair<waipc::timesync::BasebandProvider::bufferId const,waipc::timesync::BasebandService::bufferInfo>,void,0>(*a1, __p + 32);
  }

  if (__p)
  {

    operator delete(__p);
  }
}

mach_vm_address_t *waipc::MappableBuffer::MappableBuffer(mach_vm_address_t *this, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = ~*MEMORY[0x29EDCA6C8] & (*MEMORY[0x29EDCA6C8] + a2);
  v5[0] = 0;
  v5[1] = v2;
  v6 = 0;
  result = waipc::MappableBuffer::MappableBuffer(this, a2, v5, 1);
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

{
  v7 = *MEMORY[0x29EDCA608];
  v2 = ~*MEMORY[0x29EDCA6C8] & (*MEMORY[0x29EDCA6C8] + a2);
  v5[0] = 0;
  v5[1] = v2;
  v6 = 0;
  result = waipc::MappableBuffer::MappableBuffer(this, a2, v5, 1);
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

mach_vm_address_t *waipc::MappableBuffer::MappableBuffer(mach_vm_address_t *this, uint64_t a2, int a3)
{
  v8 = *MEMORY[0x29EDCA608];
  v3 = ~*MEMORY[0x29EDCA6C8] & (*MEMORY[0x29EDCA6C8] + a2);
  v6[0] = 0;
  v6[1] = v3;
  v7 = a3;
  result = waipc::MappableBuffer::MappableBuffer(this, a2, v6, 1);
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

{
  v8 = *MEMORY[0x29EDCA608];
  v3 = ~*MEMORY[0x29EDCA6C8] & (*MEMORY[0x29EDCA6C8] + a2);
  v6[0] = 0;
  v6[1] = v3;
  v7 = a3;
  result = waipc::MappableBuffer::MappableBuffer(this, a2, v6, 1);
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

mach_vm_address_t *waipc::MappableBuffer::MappableBuffer(mach_vm_address_t *address, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = *MEMORY[0x29EDCA608];
  *address = 0;
  address[1] = 0;
  address[2] = 0;
  v7 = MEMORY[0x29EDCA6C8];
  v8 = ~*MEMORY[0x29EDCA6C8] & (*MEMORY[0x29EDCA6C8] + a2);
  v9 = MEMORY[0x29EDCA6B0];
  v10 = mach_vm_allocate(*MEMORY[0x29EDCA6B0], address, v8, 1);
  if (v10)
  {
    v11 = v10;
    Logger = waipc::logging::getLogger(3u);
    if (os_log_type_enabled(Logger, OS_LOG_TYPE_INFO))
    {
      v26 = 67109120;
      v27 = v11;
      v13 = "failed to allocate shared memory region 0x%08x";
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  v14 = *address;
  v15 = *v7;
  if ((*address & ~~*v7) != 0)
  {
    waipc::MappableBuffer::MappableBuffer();
  }

  address[1] = v8;
  if (a4)
  {
    v16 = (a3 + 16);
    while (1)
    {
      v17 = *(v16 - 2);
      v18 = ~v15;
      if ((v17 & ~v18) != 0)
      {
        waipc::MappableBuffer::MappableBuffer();
      }

      v19 = *(v16 - 1);
      if (((v19 + v15) & v18) != v19)
      {
        waipc::MappableBuffer::MappableBuffer();
      }

      if (*v16 >= 8)
      {
        waipc::MappableBuffer::MappableBuffer();
      }

      if (v19 + v17 > v8)
      {
        waipc::MappableBuffer::MappableBuffer();
      }

      if (v19)
      {
        v20 = mach_vm_protect(*v9, *address + v17, v19, 0, *v16);
        if (v20)
        {
          v23 = v20;
          Logger = waipc::logging::getLogger(3u);
          if (os_log_type_enabled(Logger, OS_LOG_TYPE_INFO))
          {
            v26 = 67109120;
            v27 = v23;
            v13 = "failed to set protection attributes for shared memory region 0x%08x";
LABEL_22:
            _os_log_impl(&dword_298307000, Logger, OS_LOG_TYPE_INFO, v13, &v26, 8u);
          }

          goto LABEL_23;
        }

        v15 = *v7;
      }

      v16 += 6;
      if (!--a4)
      {
        v14 = *address;
        break;
      }
    }
  }

  v21 = mach_vm_inherit(*v9, v14, v8, 2u);
  if (v21)
  {
    v22 = v21;
    Logger = waipc::logging::getLogger(3u);
    if (os_log_type_enabled(Logger, OS_LOG_TYPE_INFO))
    {
      v26 = 67109120;
      v27 = v22;
      v13 = "failed to set inheritance attributes for shared memory region 0x%08x";
      goto LABEL_22;
    }
  }

  else
  {
    address[2] = *address;
  }

LABEL_23:
  v24 = *MEMORY[0x29EDCA608];
  return address;
}

void waipc::MappableBuffer::~MappableBuffer(mach_vm_address_t *this)
{
  v5 = *MEMORY[0x29EDCA608];
  if (*this)
  {
    v1 = mach_vm_deallocate(*MEMORY[0x29EDCA6B0], *this, this[1]);
    if (v1)
    {
      Logger = waipc::logging::getLogger(3u);
      if (os_log_type_enabled(Logger, OS_LOG_TYPE_INFO))
      {
        v4[0] = 67109120;
        v4[1] = v1;
        _os_log_impl(&dword_298307000, Logger, OS_LOG_TYPE_INFO, "failed to deallocate shared memory region 0x%08x", v4, 8u);
      }
    }
  }

  v3 = *MEMORY[0x29EDCA608];
}

void sub_2983206C0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void BasebandVoice_setTimesyncOverride(uint64_t *a1)
{
  os_unfair_lock_lock(&sTimesyncOverrideLock);
  v2 = timesyncOverrideStorage();
  v4 = *a1;
  v3 = a1[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = v2[1];
  *v2 = v4;
  v2[1] = v3;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  os_unfair_lock_unlock(&sTimesyncOverrideLock);
}

void BasebandVoice_getTimesyncOverride(uint64_t *a1@<X8>)
{
  os_unfair_lock_lock(&sTimesyncOverrideLock);
  v2 = timesyncOverrideStorage();
  v3 = v2[1];
  *a1 = *v2;
  a1[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(&sTimesyncOverrideLock);
}

void waipc::timesync::BasebandProvider::init()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void waipc::timesync::BasebandProvider::setupTransport()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void waipc::timesync::BasebandProvider::clearTransport()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void waipc::timesync::BasebandProvider::transportReadCompletion()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x29EDCA608];
}

{
  __assert_rtn("transportReadCompletion", "BasebandProvider.cpp", 274, "buffer");
}

void ___ZN5waipc8timesync16BasebandProvider20checkPendingTimesyncEv_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void ___ZN5waipc8timesync16BasebandProvider20checkPendingTimesyncEv_block_invoke_17_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void ___ZN5waipc8timesync22ModernBasebandProvider9mapBufferENS0_16BasebandProvider8bufferIdEPvm_block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 48);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xBu);
  v7 = *MEMORY[0x29EDCA608];
}

void ___ZN5waipc8timesync22ModernBasebandProvider11unmapBufferENS0_16BasebandProvider8bufferIdE_block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 48);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xBu);
  v7 = *MEMORY[0x29EDCA608];
}

void waipc::timesync::ModernBasebandProvider::handleTimeEvent(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v12 = *MEMORY[0x29EDCA608];
  v8 = *a1;
  v9 = *(a1 + 1);
  v10 = *(a1 + 1);
  v11 = *a2;
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x1Eu);
  v7 = *MEMORY[0x29EDCA608];
}

void waipc::timesync::LegacyBasebandProvider::handleDeviceTimesyncMeasurement(unsigned int *a1, uint64_t *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = *a2;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x12u);
  v9 = *MEMORY[0x29EDCA608];
}

void waipc::timesync::LegacyBasebandProvider::handleUplinkScheduleUpdate(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 4);
  v2 = *(a1 + 8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x12u);
  v8 = *MEMORY[0x29EDCA608];
}

void waipc::timesync::BasebandProvider::timesyncMeasurement::complete()
{
  __assert_rtn("complete", "BasebandProvider.h", 52, "seq == host.seq");
}

{
  __assert_rtn("complete", "BasebandProvider.h", 53, "seq == device.seq");
}

void waipc::PCIeAudioLink::computeBufferLength()
{
  __assert_rtn("computeBufferLength", "PCIeAudioLink.cpp", 218, "mach_vm_trunc_page( layout.headerOffset) == layout.headerOffset");
}

{
  __assert_rtn("computeBufferLength", "PCIeAudioLink.cpp", 219, "mach_vm_round_page( layout.headerLength) == layout.headerLength");
}

{
  __assert_rtn("computeBufferLength", "PCIeAudioLink.cpp", 220, "mach_vm_trunc_page( layout.ringOffsetUL) == layout.ringOffsetUL");
}

{
  __assert_rtn("computeBufferLength", "PCIeAudioLink.cpp", 221, "mach_vm_round_page( layout.ringLengthUL) == layout.ringLengthUL");
}

{
  __assert_rtn("computeBufferLength", "PCIeAudioLink.cpp", 222, "mach_vm_trunc_page( layout.ringOffsetDL) == layout.ringOffsetDL");
}

{
  __assert_rtn("computeBufferLength", "PCIeAudioLink.cpp", 223, "mach_vm_round_page( layout.ringLengthDL) == layout.ringLengthDL");
}

void waipc::PCIeAudioLink::checkUplink()
{
  __assert_rtn("checkUplink", "PCIeAudioLink.cpp", 603, "skip < fConfig.burstInterval");
}

{
  __assert_rtn("checkUplink", "PCIeAudioLink.cpp", 618, "skip < fConfig.burstInterval");
}

void waipc::PCIeAudioLink::logDLStallEnd()
{
  __assert_rtn("logDLStallEnd", "PCIeAudioLink.cpp", 1041, "entry.active");
}

{
  __assert_rtn("logDLStallEnd", "PCIeAudioLink.cpp", 1039, "!fStateLogger->current.dlStallLog.empty()");
}

void waipc::PCIeAudioLink::logDLUnderrunEnd()
{
  __assert_rtn("logDLUnderrunEnd", "PCIeAudioLink.cpp", 1085, "entry.active");
}

{
  __assert_rtn("logDLUnderrunEnd", "PCIeAudioLink.cpp", 1083, "!fStateLogger->current.dlUnderrunLog.empty()");
}

void waipc::util::StateStash<waipc::PCIeAudioLink::stateLogger::state>::putIdle()
{
  __assert_rtn("putIdle", "Util.h", 429, "!prev");
}

{
  __assert_rtn("putIdle", "Util.h", 426, "i >= 0 && i < kStashCount");
}

{
  __assert_rtn("putIdle", "Util.h", 423, "state");
}

void ___ZN5waipc4util22NonblockingEventSourceC2EP16dispatch_queue_sU13block_pointerFvjEU13block_pointerFvvE_block_invoke_cold_1(int a1)
{
  v3 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 67109120;
    v2[1] = a1;
    _os_log_impl(&dword_298307000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "unexpected error in mach_msg receive: 0x%08x", v2, 8u);
  }

  __assert_rtn("NonblockingEventSource_block_invoke", "Util.cpp", 135, "false");
}

void ___ZN5waipc4util22NonblockingEventSourceC2EP16dispatch_queue_sU13block_pointerFvjEU13block_pointerFvvE_block_invoke_3_cold_1(int a1)
{
  v3 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 67109120;
    v2[1] = a1;
    _os_log_impl(&dword_298307000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "unexpected error in mach_msg send: 0x%08x", v2, 8u);
  }

  __assert_rtn("NonblockingEventSource_block_invoke", "Util.cpp", 185, "false");
}

void waipc::BlockRing::BlockRing()
{
  __assert_rtn("BlockRing", "BlockRing.cpp", 28, "fBlockCount <= fWrapIndex / 2");
}

{
  __assert_rtn("BlockRing", "BlockRing.cpp", 27, "fBlockCount > 0");
}

void waipc::BlockRing::addWrapped()
{
  __assert_rtn("addWrapped", "BlockRing.cpp", 133, "rhs <= fWrapIndex");
}

{
  __assert_rtn("addWrapped", "BlockRing.cpp", 132, "lhs <= fWrapIndex");
}

void waipc::BlockRing::isWrappedLE()
{
  __assert_rtn("isWrappedLE", "BlockRing.cpp", 159, "rhs <= fWrapIndex");
}

{
  __assert_rtn("isWrappedLE", "BlockRing.cpp", 158, "lhs <= fWrapIndex");
}

void waipc::BlockRing::subWrapped()
{
  __assert_rtn("subWrapped", "BlockRing.cpp", 146, "rhs <= fWrapIndex");
}

{
  __assert_rtn("subWrapped", "BlockRing.cpp", 145, "lhs <= fWrapIndex");
}

void timesyncOverrideStorage()
{
  if (__cxa_guard_acquire(&_MergedGlobals))
  {
    qword_2A13A9D50 = 0;
    unk_2A13A9D58 = 0;

    __cxa_guard_release(&_MergedGlobals);
  }
}

{
  if (__cxa_guard_acquire(&_MergedGlobals_0))
  {
    qword_2A13A9D70 = 0;
    unk_2A13A9D78 = 0;

    __cxa_guard_release(&_MergedGlobals_0);
  }
}

void waipc::MappableBuffer::MappableBuffer()
{
  __assert_rtn("MappableBuffer", "MappableBuffer.cpp", 44, "mach_vm_trunc_page( fAddress) == fAddress");
}

{
  __assert_rtn("MappableBuffer", "MappableBuffer.cpp", 49, "mach_vm_trunc_page( protect[i].offset) == protect[i].offset");
}

{
  __assert_rtn("MappableBuffer", "MappableBuffer.cpp", 50, "mach_vm_round_page( protect[i].size) == protect[i].size");
}

{
  __assert_rtn("MappableBuffer", "MappableBuffer.cpp", 52, "protect[i].offset + protect[i].size <= length");
}

{
  __assert_rtn("MappableBuffer", "MappableBuffer.cpp", 51, "( protect[i].prot & VM_PROT_ALL) == protect[i].prot");
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

void operator new()
{
    ;
  }
}