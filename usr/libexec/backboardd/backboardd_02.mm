void sub_10005BAF0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v11 = a2;
  v12 = [v11 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v12)
  {
    v14 = v12;
    v15 = *v30;
    *&v13 = 138543362;
    v28 = v13;
    do
    {
      v16 = 0;
      do
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v29 + 1) + 8 * v16);
        if (v17)
        {
          v18 = *(v17 + 24);
        }

        else
        {
          v18 = 0;
        }

        v19 = v18;
        if ((*a3 & 0xFFFFFFFFFFFFFFFELL) == 2)
        {
          v20 = v17 ? *(v17 + 16) : 0;
          if ([v20 pinOnButtonDown])
          {
            v21 = v11;
            v22 = *(a1 + 416);
            if (!v22)
            {
              v23 = objc_alloc_init(NSMutableSet);
              v24 = *(a1 + 416);
              *(a1 + 416) = v23;

              v22 = *(a1 + 416);
            }

            [v22 addObject:v19];
            v25 = BKLogMousePointer();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v28;
              v34 = v19;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "pinning global destination: %{public}@", buf, 0xCu);
            }

            v11 = v21;
          }
        }

        sub_10001ADEC(v19, *(a3 + 72));
        if (v19)
        {
          v19[10] = a5;
          v19[11] = a6;
        }

        if (v17)
        {
          if (*(v17 + 8))
          {
            v26 = 0;
            goto LABEL_24;
          }

          *(v17 + 8) = 1;
        }

        v26 = 1;
LABEL_24:
        sub_10005E1A0(a1, v26, v19, a3, a4);

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v27 = [v11 countByEnumeratingWithState:&v29 objects:v35 count:16];
      v14 = v27;
    }

    while (v27);
  }
}

void sub_10005BD2C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a2 && a3)
  {
    v23 = [NSString stringWithFormat:@"cannot set both filter UUIDs"];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v24 = NSStringFromSelector("_locked_exitGlobalContextsOnlyOnDisplayUUID:exceptDisplayUUID:exitPinned:timestamp:eventPoster:");
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      *buf = 138544642;
      v47 = v24;
      v48 = 2114;
      v49 = v26;
      v50 = 2048;
      v51 = a1;
      v52 = 2114;
      v53 = @"BKMousePointerController.m";
      v54 = 1024;
      v55 = 1825;
      v56 = 2114;
      v57 = v23;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v23 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x10005C07CLL);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = [*(a1 + 408) allValues];
  v29 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v29)
  {
    v28 = *v41;
    v8 = BKSDisplayUUIDMainKey;
    do
    {
      v9 = 0;
      do
      {
        if (*v41 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v30 = v9;
        v10 = *(*(&v40 + 1) + 8 * v9);
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v35 = v10;
        v11 = [v35 countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v37;
          do
          {
            v14 = 0;
            do
            {
              if (*v37 != v13)
              {
                objc_enumerationMutation(v35);
              }

              v15 = *(*(&v36 + 1) + 8 * v14);
              if (v15)
              {
                v16 = *(v15 + 24);
                v17 = v16;
                if (v16)
                {
                  v18 = *(v16 + 5);
                  goto LABEL_16;
                }
              }

              else
              {
                v17 = 0;
              }

              v18 = 0;
LABEL_16:
              v19 = v18;
              if ([v19 length])
              {
                v20 = v19;
              }

              else
              {
                v20 = v8;
              }

              v21 = v20;

              if ((!a2 || [v21 isEqual:a2]) && (!a3 || (objc_msgSend(v21, "isEqual:", a3) & 1) == 0))
              {
                sub_10005DF10(a1, v15, a5, a4, a6);
              }

              v14 = v14 + 1;
            }

            while (v12 != v14);
            v22 = [v35 countByEnumeratingWithState:&v36 objects:v44 count:16];
            v12 = v22;
          }

          while (v22);
        }

        v9 = v30 + 1;
      }

      while ((v30 + 1) != v29);
      v29 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v29);
  }
}

void sub_10005C084(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  if ([a3 count])
  {
    if (*a4 == 1)
    {
      v15 = [*(a1 + 424) count];
      [*(a1 + 424) minusSet:a3];
      if ([*(a1 + 424) count] != v15)
      {
        v16 = BKLogMousePointer();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = a3;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "unpinning hit-test contexts (mouse up) %{public}@", buf, 0xCu);
        }
      }
    }

    else
    {
      if (*a4 != 2)
      {
        v91 = 1;
        goto LABEL_15;
      }

      if (!*(a1 + 424))
      {
        v12 = objc_alloc_init(NSMutableSet);
        v13 = *(a1 + 424);
        *(a1 + 424) = v12;
      }

      v14 = BKLogMousePointer();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = a3;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "pinning hit-test contexts (mouse down) %{public}@", buf, 0xCu);
      }

      [*(a1 + 424) unionSet:a3];
    }

    v91 = 0;
LABEL_15:
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    obj = a3;
    v95 = [obj countByEnumeratingWithState:&v102 objects:v109 count:16];
    if (!v95)
    {
      goto LABEL_136;
    }

    v93 = *v103;
    *&v17 = 138543362;
    v86 = v17;
    while (1)
    {
      v18 = 0;
      do
      {
        if (*v103 != v93)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v102 + 1) + 8 * v18);
        sub_10001ADEC(v19, *(a4 + 72));
        v101 = *(a4 + 8);
        sub_10005D948(a1, v19, &v101, a4, a6, a7);
        v20 = sub_10005D280(a1, *(a4 + 16), v19);
        v96 = sub_10005D3B8(a1, 1, a2, v19, a4);
        v100 = 0;
        if ([*(a1 + 240) buttonMaskDidChange] && !objc_msgSend(*(a1 + 240), "buttonMask"))
        {
          if (!v19)
          {
            goto LABEL_30;
          }

          LOBYTE(v24) = 0;
LABEL_29:
          *(v19 + 25) = v24;
          goto LABEL_30;
        }

        if (v19)
        {
          if (*(v19 + 25))
          {
            goto LABEL_115;
          }

          v21 = *(v19 + 8);
        }

        else
        {
          v21 = 0;
        }

        v22 = *(a4 + 80);
        v23 = *(a4 + 32);
        BSMonotonicReferencedTimeFromMachTime();
        v24 = (v19 != 0) & [v22 shouldCancelTouchesDeliveredToContextId:v21 withInitialTouchTimestamp:?];
        if (v24 == 1)
        {
          goto LABEL_29;
        }

LABEL_30:
        v25 = [*(a1 + 240) eventTypeMask];
        v26 = 0x200000000F6;
        if ((v25 & 0x40) == 0)
        {
          goto LABEL_48;
        }

        v27 = [*(a1 + 240) scrollPhase];
        if (!v19)
        {
          v26 = 0x200000000F6;
          if (!v27 || (v27 & 0xC) != 0)
          {
            goto LABEL_48;
          }

          v28 = 0;
          goto LABEL_38;
        }

        if ((*(v19 + 24) & 1) == 0)
        {
          v26 = 0x200000000F6;
          if (!v27 || (v27 & 0xC) != 0)
          {
            goto LABEL_48;
          }

          v28 = *(v19 + 8);
LABEL_38:
          v29 = *(a4 + 80);
          v30 = *(a4 + 32);
          BSMonotonicReferencedTimeFromMachTime();
          v31 = [v29 shouldCancelTouchesDeliveredToContextId:v28 withInitialTouchTimestamp:?];
          v26 = 0x200000000F6;
          if (!v31)
          {
            goto LABEL_48;
          }

          if (v19)
          {
            *(v19 + 24) = 1;
          }

          v32 = BKLogMousePointer();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            if (v19)
            {
              v33 = *(v19 + 8);
            }

            else
            {
              v33 = 0;
            }

            *buf = 67109120;
            *&buf[4] = v33;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "TDPS: scroll terminated for %X", buf, 8u);
          }

          mach_absolute_time();
          ScrollEvent = IOHIDEventCreateScrollEvent();
          IOHIDEventSetPhase();
          IOHIDEventAppendEvent();
          CFRelease(ScrollEvent);
          goto LABEL_46;
        }

        if ((v27 & 0x81) != 0)
        {
          *(v19 + 24) = 0;
        }

LABEL_46:
        v35 = BKLogMousePointer();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          if (v19)
          {
            v84 = *(v19 + 8);
          }

          else
          {
            v84 = 0;
          }

          *buf = 67109120;
          *&buf[4] = v84;
          _os_log_debug_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, "TDPS: skipping cancelled scroll for %X", buf, 8u);
        }

        v26 = 0x200000000B6;
LABEL_48:
        [*(a1 + 240) appendSubeventsForEventTypeMask:v26 toTopLevelEvent:v20 interfaceOrientation:v101 getEventSummary:&v100];
        if (v19 && *(v19 + 25) == 1 && [*(a1 + 240) buttonMask])
        {
          v36 = BKLogMousePointer();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            v37 = *(v19 + 8);
            *buf = 67109120;
            *&buf[4] = v37;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "TDPS: cancelling button up %X", buf, 8u);
          }

          IOHIDEventSetIntegerValue();
          IOHIDEventSetPhase();
        }

        if (*(a4 + 24))
        {
          BKSHIDEventSetRemoteTimestamp();
        }

        if ((v100 & 0x20) == 0)
        {
          goto LABEL_66;
        }

        if (v19)
        {
          v38 = *(v19 + 28);
          if (v38)
          {
            v39 = BKLogMousePointer();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
            {
              *buf = 67109120;
              *&buf[4] = v38;
              _os_log_debug_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "slotID up! %X", buf, 8u);
            }

            v40 = *(v19 + 12);
            v41 = *(v19 + 40);
            os_unfair_lock_assert_owner((a1 + 8));
            v42 = *(v19 + 56);
            v43 = v42 == 0;

            if (v43)
            {
              v53 = BKLogMousePointer();
              if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
              {
                LODWORD(__src[0]) = v86;
                *(__src + 4) = v19;
                _os_log_debug_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEBUG, "missing test info at down for destination %{public}@", __src, 0xCu);
              }

              v52 = 0;
              v51 = 0;
              goto LABEL_77;
            }

            v108 = 0;
            v44 = *(v19 + 28);
            v45 = +[BKHIDEventProcessorRegistry sharedInstance];
            v46 = [v45 eventProcessorOfClass:objc_opt_class()];

            v47 = [v46 authenticationSpecificationForSlotID:v44 registrantEntitled:&v108];
            v48 = v47;
            if (v47)
            {
              v89 = [v47 authenticationMessageContext];
              memset(__src, 0, sizeof(__src));
              v49 = sub_10000ED90(BKDisplayController, 0, 0, v48, 0);
              if ([*(a1 + 312) contextIDAtCAScreenLocation:v41 displayUUID:v49 options:0 securityAnalysis:__src results:{*(v19 + 80), *(v19 + 88)}])
              {
                v106 = 0u;
                v107 = 0u;
                if (BSAuditTokenForTask())
                {
                  v50 = +[BKHIDSystemInterface sharedInstance];
                  v88 = [v50 deliveryManager];

                  v87 = [v88 authenticationOriginator];
                  *buf = _NSConcreteStackBlock;
                  *&buf[8] = 3221225472;
                  *&v111 = sub_10005DC40;
                  *(&v111 + 1) = &unk_1000FBE58;
                  memcpy(v113, __src, sizeof(v113));
                  v112 = v19;
                  v114 = v89;
                  v117 = v108;
                  v115 = v106;
                  v116 = v107;
                  v51 = [v87 buildMessage:buf];
                }

                else
                {
                  v51 = 0;
                }

LABEL_74:
                if (v51)
                {
                  [v96 setAuthenticationMessage:v51];
                  v52 = 1;
                }

                else
                {
                  v52 = 0;
                }

LABEL_77:

LABEL_78:
                if (((v91 | v52) & 1) == 0)
                {
                  *buf = 0u;
                  v111 = 0u;
                  if (v19)
                  {
                    v54 = *(v19 + 12);
                  }

                  goto LABEL_81;
                }

                goto LABEL_83;
              }
            }

            v51 = 0;
            goto LABEL_74;
          }

LABEL_66:
          v52 = 0;
          goto LABEL_78;
        }

        if ((v91 & 1) == 0)
        {
          *buf = 0u;
          v111 = 0u;
LABEL_81:
          if (BSAuditTokenForTask())
          {
            v55 = +[BKHIDSystemInterface sharedInstance];
            v56 = [v55 deliveryManager];

            v57 = [v56 simpleProvenanceOriginator];
            v97[0] = _NSConcreteStackBlock;
            v97[1] = 3221225472;
            v97[2] = sub_10005DBEC;
            v97[3] = &unk_1000FBE78;
            v98 = *buf;
            v99 = v111;
            v58 = [v57 buildProvenance:v97];
            [v96 setProvenance:v58];
          }
        }

LABEL_83:
        if (*(a4 + 40) != 0.0 || *(a4 + 48) != 0.0)
        {
          if (v19)
          {
            v59 = *(v19 + 8);
            v60 = *(v19 + 32);
          }

          else
          {
            v59 = 0;
            v60 = 0;
          }

          v61 = *(a1 + 384);
          if (v61)
          {
            objc_initWeak(__src, *(a1 + 384));
            v62 = *(v61 + 8);
            *buf = _NSConcreteStackBlock;
            *&buf[8] = 3221225472;
            *&v111 = sub_1000928D8;
            *(&v111 + 1) = &unk_1000FCEA0;
            objc_copyWeak(&v112, __src);
            v113[0] = v59;
            v113[1] = v60;
            [v62 updateStatistics:buf];
            objc_destroyWeak(&v112);
            objc_destroyWeak(__src);
          }
        }

        v63 = v100;
        if ((v100 & 2) != 0)
        {
          if (v19)
          {
            v64 = *(v19 + 8);
            v65 = *(v19 + 32);
          }

          else
          {
            v64 = 0;
            v65 = 0;
          }

          v66 = *(a1 + 384);
          if (v66)
          {
            objc_initWeak(__src, *(a1 + 384));
            v67 = *(v66 + 8);
            *buf = _NSConcreteStackBlock;
            *&buf[8] = 3221225472;
            *&v111 = sub_10009294C;
            *(&v111 + 1) = &unk_1000FCEA0;
            objc_copyWeak(&v112, __src);
            v113[0] = v64;
            v113[1] = v65;
            [v67 updateStatistics:buf];
            objc_destroyWeak(&v112);
            objc_destroyWeak(__src);
            v63 = v100;
          }
        }

        if ((v63 & 4) != 0)
        {
          if (v19)
          {
            v68 = *(v19 + 8);
            v69 = *(v19 + 32);
          }

          else
          {
            v68 = 0;
            v69 = 0;
          }

          v70 = *(a1 + 384);
          if (v70)
          {
            objc_initWeak(__src, *(a1 + 384));
            v71 = *(v70 + 8);
            *buf = _NSConcreteStackBlock;
            *&buf[8] = 3221225472;
            *&v111 = sub_100092A34;
            *(&v111 + 1) = &unk_1000FCEA0;
            objc_copyWeak(&v112, __src);
            v113[0] = v68;
            v113[1] = v69;
            [v71 updateStatistics:buf];
            objc_destroyWeak(&v112);
            objc_destroyWeak(__src);
            v63 = v100;
          }
        }

        if ((v63 & 8) != 0)
        {
          if (v19)
          {
            v72 = *(v19 + 8);
            v73 = *(v19 + 32);
          }

          else
          {
            v72 = 0;
            v73 = 0;
          }

          v74 = *(a1 + 384);
          if (v74)
          {
            objc_initWeak(__src, *(a1 + 384));
            v75 = *(v74 + 8);
            *buf = _NSConcreteStackBlock;
            *&buf[8] = 3221225472;
            *&v111 = sub_100092B1C;
            *(&v111 + 1) = &unk_1000FCEA0;
            objc_copyWeak(&v112, __src);
            v113[0] = v72;
            v113[1] = v73;
            [v75 updateStatistics:buf];
            objc_destroyWeak(&v112);
            objc_destroyWeak(__src);
            v63 = v100;
          }
        }

        if ((v63 & 0x10) != 0)
        {
          if (v19)
          {
            v76 = *(v19 + 8);
            v77 = *(v19 + 32);
          }

          else
          {
            v76 = 0;
            v77 = 0;
          }

          v78 = *(a1 + 384);
          if (v78)
          {
            objc_initWeak(__src, *(a1 + 384));
            v79 = *(v78 + 8);
            *buf = _NSConcreteStackBlock;
            *&buf[8] = 3221225472;
            *&v111 = sub_100092AA8;
            *(&v111 + 1) = &unk_1000FCEA0;
            objc_copyWeak(&v112, __src);
            v113[0] = v76;
            v113[1] = v77;
            [v79 updateStatistics:buf];
            objc_destroyWeak(&v112);
            objc_destroyWeak(__src);
            v63 = v100;
          }
        }

        if ((v63 & 0x40) != 0)
        {
          if (v19)
          {
            v80 = *(v19 + 8);
            v81 = *(v19 + 32);
          }

          else
          {
            v80 = 0;
            v81 = 0;
          }

          v82 = *(a1 + 384);
          if (v82)
          {
            objc_initWeak(__src, *(a1 + 384));
            v83 = *(v82 + 8);
            *buf = _NSConcreteStackBlock;
            *&buf[8] = 3221225472;
            *&v111 = sub_1000929C0;
            *(&v111 + 1) = &unk_1000FCEA0;
            objc_copyWeak(&v112, __src);
            v113[0] = v80;
            v113[1] = v81;
            [v83 updateStatistics:buf];
            objc_destroyWeak(&v112);
            objc_destroyWeak(__src);
          }
        }

        sub_10002D500(a5, v20, v96, v19);
        CFRelease(v20);
LABEL_115:

        v18 = v18 + 1;
      }

      while (v95 != v18);
      v85 = [obj countByEnumeratingWithState:&v102 objects:v109 count:16];
      v95 = v85;
      if (!v85)
      {
LABEL_136:

        return;
      }
    }
  }
}

void sub_10005CED4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak(&STACK[0x350]);
  _Unwind_Resume(a1);
}

void sub_10005CF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    BKSHIDEventSetAttributes();
    v7 = BKLogMousePointer();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v11 = BKSHIDEventGetConciseDescription();
      v12 = v11;
      if (a4)
      {
        v13 = *(a4 + 8);
      }

      else
      {
        v13 = 0;
      }

      v14 = 138543618;
      v15 = v11;
      v16 = 1024;
      v17 = v13;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%{public}@ -> contextID:%X", &v14, 0x12u);
    }

    v8 = [*(a1 + 24) eventDispatcher];
    v9 = v8;
    if (a4)
    {
      v10 = *(a4 + 12);
    }

    else
    {
      v10 = 0;
    }

    [v8 sendEvent:a2 toClientTaskPort:v10];
  }
}

__IOHIDEvent *sub_10005D0A8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_assert_owner((a1 + 8));
  *(&v11 + 1) = [*(a1 + 240) lastRemoteEventTimestamp];
  v12 = [*(a1 + 240) eventSequenceStartTimestamp];
  v13 = CGPointZero;
  v14 = v13;
  v15 = [*(a1 + 240) mostRecentSender];
  v16 = +[BKTouchDeliveryPolicyServer sharedServer];
  v17 = 0;
  v8 = sub_10005D1B0(a1, 1, 2, a2, &v10, a4);

  return v8;
}

__IOHIDEvent *sub_10005D1B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  os_unfair_lock_assert_owner((a1 + 8));
  v12 = sub_10005D280(a1, *(a5 + 16), a4);
  if (*(a5 + 24))
  {
    BKSHIDEventSetRemoteTimestamp();
  }

  v13 = sub_10005D3B8(a1, a2, a3, a4, a5);
  v14 = v13;
  if (a2 == 2)
  {
    [v13 setPointerEdgeMask:*(a1 + 184)];
  }

  sub_10002D500(a6, v12, v14, a4);
  CFRelease(v12);

  return v12;
}

uint64_t sub_10005D280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_assert_owner((a1 + 8));
  if (a3)
  {
    v5 = *(a3 + 48);
    v7 = *(a3 + 80);
    v6 = *(a3 + 88);
    v8 = *(a3 + 8);
    v9 = *(a3 + 40);
  }

  else
  {
    v8 = 0;
    v5 = 0;
    v9 = 0;
    v6 = 0.0;
    v7 = 0.0;
  }

  v10 = v9;
  [*(a1 + 312) convertCAScreenLocation:v8 toContextID:v10 displayUUID:{v7, v6}];
  [v5 senderID];
  v11 = IOHIDEventCreate();
  IOHIDEventSetFloatValue();
  IOHIDEventSetFloatValue();
  IOHIDEventGetEventFlags();
  IOHIDEventSetEventFlags();
  IOHIDEventSetSenderID();

  return v11;
}

id sub_10005D3B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  os_unfair_lock_assert_owner((a1 + 8));
  if (a4)
  {
    v9 = *(a4 + 48);
    v10 = *(a4 + 8);
    v11 = *(a4 + 40);
  }

  else
  {
    v10 = 0;
    v9 = 0;
    v11 = 0;
  }

  v12 = v11;
  v51 = [v9 senderID];
  v14 = *(a5 + 40);
  v13 = *(a5 + 48);
  v16 = *(a5 + 56);
  v15 = *(a5 + 64);
  v53 = objc_alloc_init(BKSHIDEventPointerAttributes);
  v17 = v12;
  v50 = v17;
  if (v17 && (v18 = v17, v19 = [v17 isEqualToString:BKSDisplayUUIDMainKey], v18, !v19))
  {
    v21 = [BKSHIDEventDisplay displayWithHardwareIdentifier:v18];
    v20 = v53;
    [v53 setDisplay:v21];
  }

  else
  {
    v20 = v53;
    [v53 setDisplay:0];
  }

  v22 = [BKSHIDEventDeferringToken tokenForIdentifierOfCAContext:v10];
  [v20 setToken:v22];

  [v20 setSource:{objc_msgSend(v9, "eventSource")}];
  v23 = +[BKSHIDEventDeferringEnvironment keyboardFocusEnvironment];
  [v20 setEnvironment:v23];

  [v20 setContextType:a2];
  v24 = a3;
  [v20 setContextMove:a3];
  if (a4)
  {
    v25 = *(a4 + 16);
    [v20 setSceneTouchBehavior:{objc_msgSend(v25, "touchBehavior")}];

    v26 = *(a4 + 64);
  }

  else
  {
    [v20 setSceneTouchBehavior:{objc_msgSend(0, "touchBehavior")}];
    v26 = 0;
  }

  v27 = v26;
  [v20 setHitTestSecurityAnalysis:v27];

  v28 = v51;
  if (a2 == 2)
  {
    v49 = a5;
    v29 = +[NSMutableArray array];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v30 = *(a1 + 248);
    v31 = [v30 countByEnumeratingWithState:&v54 objects:v58 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v55;
      do
      {
        for (i = 0; i != v32; i = i + 1)
        {
          if (*v55 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v54 + 1) + 8 * i);
          if (v35 && (*(v35 + 12) - 1) <= 0xFFFFFFFD)
          {
            v36 = *(v35 + 8);
            v37 = sub_10001B448(v35, *(a1 + 464));
            v38 = objc_alloc_init(BKSHIDEventHitTestClientContext);
            [v38 setContextID:v36];
            [v38 setPid:v37];
            [v29 addObject:v38];
          }
        }

        v32 = [v30 countByEnumeratingWithState:&v54 objects:v58 count:16];
      }

      while (v32);
    }

    v20 = v53;
    if ([v29 count])
    {
      [v53 setHitTestContexts:v29];
    }

    a5 = v49;
    v28 = v51;
    v24 = a3;
  }

  v39 = *(a1 + 272);
  v40 = [NSNumber numberWithUnsignedLongLong:v28];
  v41 = [v39 objectForKey:v40];

  v42 = 64;
  if (!v41 || (!*(v41 + 8) ? (v42 = 64) : (v42 = 68), (*(v41 + 10) & 1) == 0))
  {
    if ([*(a1 + 240) shouldScrollNaturally])
    {
      v42 |= 0x20u;
    }
  }

  if (*(a5 + 89))
  {
    v42 |= 0x400u;
  }

  if (sub_10005D8EC(a1))
  {
    v42 |= 8u;
  }

  if ([*(a1 + 240) senderPostsAtHighFrequency:v28] && objc_msgSend(*(a1 + 24), "shouldUseHighFrequencyAttributeOption"))
  {
    v42 |= 0x10u;
  }

  if (v41)
  {
    v43 = *(v41 + 24);
    v44 = *(v41 + 32);
  }

  else
  {
    v44 = 0.0;
    v43 = 0.0;
  }

  [v20 setDigitizerSurfaceWidth:v43];
  [v20 setDigitizerSurfaceHeight:v44];
  v45 = [*(a1 + 240) touchingPathIndexes];
  v46 = v45;
  if (v24 == 2)
  {
    if ([v45 count])
    {
      v47 = v42 | 2;
    }

    else
    {
      v47 = v42;
    }
  }

  else
  {
    [v20 setAcceleratedRelativePositionX:v16];
    [v20 setAcceleratedRelativePositionY:v15];
    [v20 setUnacceleratedRelativePositionX:v14];
    [v20 setUnacceleratedRelativePositionY:v13];
    [v20 setActiveModifiers:*(a1 + 280)];
    if ([*(a1 + 240) touchingPathIndexesDidChange])
    {
      v47 = v42 | 2;
    }

    else
    {
      v47 = v42;
    }

    [v20 setFingerDownCount:{objc_msgSend(v46, "count")}];
  }

  if (*(a5 + 32))
  {
    BSMonotonicReferencedTimeFromMachTime();
    [v20 setInitialTouchTimestamp:?];
  }

  [v20 setOptions:v47];

  return v20;
}

uint64_t sub_10005D8EC(uint64_t a1)
{
  if (*(a1 + 441) & 1) != 0 || (*(a1 + 444))
  {
    return 0;
  }

  v2 = +[BKDisplayController sharedInstance];
  v1 = [v2 displayIsBlanked:0] ^ 1;

  return v1;
}

void sub_10005D948(uint64_t a1, uint64_t a2, const os_unfair_lock **a3, uint64_t a4, double a5, double a6)
{
  v7 = a6;
  v8 = a5;
  *a3 = *(a4 + 8);
  if (*(a4 + 88) == 1)
  {
    if (a2)
    {
      *(a2 + 80) = a5;
      *(a2 + 88) = a6;
    }
  }

  else
  {
    if (a2)
    {
      v11 = *(a2 + 40);
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    v13 = [v12 length];
    v14 = BKSDisplayUUIDMainKey;
    if (v13)
    {
      v14 = v12;
    }

    v27 = v14;

    v15 = [*(a1 + 144) displayUUID];
    v16 = BSEqualObjects();

    if (!v16)
    {
      v17 = [*(a1 + 136) regionForDisplayUUID:v27];
      if (v17)
      {
        v18 = sub_10005DD24(a1, v27);
        v19 = [v18 uniqueId];
        v20 = sub_10005DDD4(a1, v27);
        if (*(a1 + 144))
        {
          [*(a1 + 136) convertToGlobalPoint:*(a1 + 168) fromRegion:*(a1 + 176)];
        }

        else
        {
          x = CGPointZero.x;
          y = CGPointZero.y;
        }

        [*(a1 + 136) convertFromGlobalPoint:v17 toRegion:{x, y}];
        sub_10005DE60(v18, v20, *(a1 + 312));
        [*(a1 + 312) convertReferenceLocation:v19 toCAScreenLocationForDisplayUUID:?];
        v8 = v24;
        v7 = v25;
        *a3 = v20;
      }

      else
      {
        v23 = BKLogMousePointer();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v26 = *(a1 + 136);
          *buf = 138543618;
          v29 = v27;
          v30 = 2114;
          v31 = v26;
          _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "getUnconstrainedHitTestPoint: no displayUUID:%{public}@ in arrangement:%{public}@", buf, 0x16u);
        }

        *a3 = 1;
        v8 = 0.0;
        v7 = 0.0;
      }
    }

    if (a2)
    {
      *(a2 + 80) = v8;
      *(a2 + 88) = v7;
    }
  }
}

void sub_10005DC40(uint64_t a1, void *a2)
{
  [a2 setOriginIdentifier:0xC181BADB23D8497BLL];
  [a2 setEventType:17];
  sub_10000EBA0(a2, (a1 + 40));
  v4 = *(a1 + 32);
  if (v4)
  {
    v4 = v4[7];
  }

  v5 = v4;
  [a2 setHitTestInformationFromStartEvent:v5];

  v6 = sub_10000EBFC(a1 + 40);
  [a2 setHitTestInformationFromEndEvent:v6];
  [a2 setContext:*(a1 + 344)];
  [a2 setRegistrantEntitled:*(a1 + 384)];
  [a2 setVersionedPID:{BSVersionedPIDForAuditToken(), *(a1 + 352), *(a1 + 360), *(a1 + 368), *(a1 + 376)}];
}

id sub_10005DD24(uint64_t a1, void *a2)
{
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 8));
    v4 = a2;
    v5 = [v4 length];
    v6 = BKSDisplayUUIDMainKey;
    if (v5)
    {
      v6 = v4;
    }

    v7 = v6;

    v8 = [*(a1 + 112) objectForKey:v7];
    if (!v8)
    {
      v8 = [*(a1 + 120) objectForKey:v7];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

const os_unfair_lock *sub_10005DDD4(const os_unfair_lock *result, void *a2)
{
  if (result)
  {
    v3 = result;
    os_unfair_lock_assert_owner(result + 2);
    v4 = a2;
    v5 = [v4 length];
    v6 = BKSDisplayUUIDMainKey;
    if (v5)
    {
      v6 = v4;
    }

    v7 = v6;

    v8 = [v7 isEqual:*&v3[20]._os_unfair_lock_opaque];
    if (v8)
    {
      return *&v3[64]._os_unfair_lock_opaque;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

id sub_10005DE60(id result, uint64_t a2, void *a3)
{
  if (a3)
  {
    return [a3 transformLayerPropertiesForDisplay:result displayInterfaceOrientation:{a2, 0, 0, 0, 0}];
  }

  return result;
}

void sub_10005DF10(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  if (a2 && *(a2 + 8) == 1)
  {
    v10 = [*(a1 + 416) containsObject:*(a2 + 24)];
    if (!v10 || a4 != 0)
    {
      v12 = v10;
      v13 = *(a2 + 24);
      v14 = v13;
      if (v13)
      {
        v15 = v13[6];
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;

      if (v16)
      {
        if (v14)
        {
          v17 = v14[5];
        }

        else
        {
          v17 = 0;
        }

        v18 = v17;
        v19 = [v18 length];
        v20 = BKSDisplayUUIDMainKey;
        if (v19)
        {
          v20 = v18;
        }

        v21 = v20;

        v22 = sub_10005DDD4(a1, v21);
        *(a2 + 8) = 0;
        *(&v25 + 1) = [*(a1 + 240) lastRemoteEventTimestamp];
        v26 = [*(a1 + 240) eventSequenceStartTimestamp];
        v27 = 0u;
        v28 = 0u;
        v29 = [*(a1 + 240) mostRecentSender];
        v30 = +[BKTouchDeliveryPolicyServer sharedServer];
        v31 = 0;
        [*(a1 + 240) appendSubeventsForEventTypeMask:0x200000008F6 toTopLevelEvent:sub_10005D1B0(a1 interfaceOrientation:2 getEventSummary:{2, v14, &v24, a5), v22, 0}];
        sub_10001ADEC(v14, 0);
        if (v12)
        {
          [*(a1 + 416) removeObject:v14];
          v23 = BKLogMousePointer();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v33 = v14;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "unpinning global destination %{public}@", buf, 0xCu);
          }
        }
      }
    }
  }
}

void sub_10005E1A0(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5)
{
  [*(a1 + 240) appendSubeventsForEventTypeMask:0x200000008F6 toTopLevelEvent:sub_10005D1B0(a1 interfaceOrientation:2 getEventSummary:{a2, a3, a4, a5), *(a4 + 8), 0}];
  v7 = *(a1 + 384);
  if (a3)
  {
    v8 = a3[8];
    v9 = a3[2];
    if (!v7)
    {
      return;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
    if (!v7)
    {
      return;
    }
  }

  objc_initWeak(&location, v7);
  v10 = v7[1];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100092B90;
  v11[3] = &unk_1000FCEA0;
  objc_copyWeak(&v12, &location);
  v13 = v9;
  v14 = v8;
  [v10 updateStatistics:v11];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void sub_10005E2B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10005E2D4(uint64_t a1, int a2, uint64_t a3, double a4, double a5)
{
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 8));
    v37 = CGPointZero;
    v36 = 0;
    v10 = [*(a1 + 136) closestRegionForGlobalPoint:&v37 returningClosestContainingPoint:&v36 returningEdgeMask:{a4, a5}];
    if (*(a1 + 144) == v10 && (v30 = *(a1 + 168), v31 = *(a1 + 176), BSPointEqualToPoint()) && !a2)
    {
      v12 = BKLogMousePointer();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v40 = a3;
        _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, " -> ignoring model point update (%{public}@)", buf, 0xCu);
      }
    }

    else
    {
      v11 = BKLogMousePointer();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543874;
        v40 = a3;
        v41 = 2048;
        x = v37.x;
        v43 = 2048;
        y = v37.y;
        _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, " -> model point (%{public}@) %g,%g", buf, 0x20u);
      }

      v12 = [v10 displayUUID];
      if ((a2 & 1) != 0 || ([*(a1 + 432) objectForKeyedSubscript:v12], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isActive"), v13, (v14 & 1) == 0))
      {
        kdebug_trace();
        kdebug_trace();
        *(a1 + 168) = v37;
        *(a1 + 184) = v36;
        if (*(a1 + 144) != v10 || a2)
        {
          objc_storeStrong((a1 + 144), v10);
          sub_10005E670(a1, @"pointer region/display change");
        }
      }

      else
      {
        v15 = BKLogMousePointer();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "    suppressed", buf, 2u);
        }
      }

      if (v12)
      {
        v16 = sub_10005DD24(a1, v12);
        if (v16)
        {
          v17 = v16;
          v18 = sub_10005DDD4(a1, v12);
          v19 = *(a1 + 168);
          v20 = *(a1 + 176);
          sub_10005DE60(v17, v18, *(a1 + 312));
          v22 = v21;
          v24 = v23;
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v25 = *(a1 + 376);
          v26 = [v25 countByEnumeratingWithState:&v32 objects:v38 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = *v33;
            do
            {
              v29 = 0;
              do
              {
                if (*v33 != v28)
                {
                  objc_enumerationMutation(v25);
                }

                [*(*(&v32 + 1) + 8 * v29) observeMouseModelPointDidChange:v17 display:a3 reason:{v22, v24, v32}];
                v29 = v29 + 1;
              }

              while (v27 != v29);
              v27 = [v25 countByEnumeratingWithState:&v32 objects:v38 count:16];
            }

            while (v27);
          }
        }
      }
    }
  }
}

void sub_10005E670(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  os_unfair_lock_assert_owner((a1 + 8));
  v63 = [*(a1 + 144) displayUUID];
  v4 = [*(a1 + 48) count];
  v5 = sub_10005F0C4(a1);
  v6 = v5;
  v7 = *(a1 + 441);
  if (*(a1 + 144))
  {
    v8 = v4 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  v10 = v9 & ((v7 | v5) ^ 1);
  v11 = *(a1 + 208);
  v64 = *(a1 + 443);
  v12 = [v11 isPaused];
  v13 = BKLogMousePointer();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67110914;
    *v84 = v10;
    *&v84[6] = v4 != 0;
    *&v84[4] = 1024;
    v85 = 1024;
    v86 = v6 & 1;
    v87 = 1024;
    v88 = v64;
    v89 = 1024;
    v90 = (v7 & 1) == 0;
    v91 = 1024;
    v92 = v11 != 0;
    v93 = 1024;
    v94 = v12;
    v95 = 2114;
    v96 = a2;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "reevaluateDisplayLink: wants:%{BOOL}u devices:%{BOOL}u eventsDisabled:%{BOOL}u eventsPaused:%{BOOL}u allowed:%{BOOL}u has:%{BOOL}u paused:%{BOOL}u -- %{public}@", buf, 0x36u);
  }

  v14 = v11 == 0;
  v15 = v11 != 0;
  if (v11)
  {
    v16 = 0;
  }

  else
  {
    v16 = v10;
  }

  v17 = v14 | v10 ^ 1;
  if (v17)
  {
    v62 = 0;
    v18 = v64;
  }

  else
  {
    v18 = v64;
    v62 = v12 & (v64 ^ 1);
  }

  v65 = ((v17 | v12) ^ 1) & v18;
  v19 = [*(a1 + 208) displayUUID];
  if (v17)
  {
    v20 = v15 & (v10 ^ 1);
    v21 = v63;
    if (!v20)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v21 = v63;
    v24 = BSEqualObjects();
    v16 |= v24 ^ 1;
    if (v24 & v10)
    {
LABEL_18:
      v22 = 0;
      v61 = 0;
      v23 = 0;
      if ((v16 & 1) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_25;
    }
  }

  v25 = BKLogMousePointer();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *v84 = v19;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "reevaluateDisplayLink: destroy %{public}@", buf, 0xCu);
  }

  [*(a1 + 208) invalidate];
  v26 = *(a1 + 208);
  *(a1 + 208) = 0;

  v27 = v19;
  v61 = 1;
  if ((v16 & 1) == 0)
  {
    v23 = 0;
    v22 = v19;
    goto LABEL_44;
  }

  v22 = v19;
LABEL_25:
  v60 = v22;
  v28 = BKLogMousePointer();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *v84 = v21;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "reevaluateDisplayLink: create %{public}@", buf, 0xCu);
  }

  v29 = +[CADisplay mainDisplay];
  v30 = v21;
  if (v30)
  {
    v31 = v30;
    v32 = [(__CFString *)v30 isEqualToString:BKSDisplayUUIDMainKey];

    if ((v32 & 1) == 0)
    {
      v59 = v19;
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v33 = +[CADisplay displays];
      v34 = [v33 countByEnumeratingWithState:&v67 objects:buf count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v68;
        while (2)
        {
          for (i = 0; i != v35; i = i + 1)
          {
            if (*v68 != v36)
            {
              objc_enumerationMutation(v33);
            }

            v38 = *(*(&v67 + 1) + 8 * i);
            v39 = [v38 uniqueId];
            v40 = BSEqualObjects();

            if (v40)
            {
              v41 = v38;

              v29 = v41;
              goto LABEL_41;
            }
          }

          v35 = [v33 countByEnumeratingWithState:&v67 objects:buf count:16];
          if (v35)
          {
            continue;
          }

          break;
        }
      }

      v33 = BKLogMousePointer();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *v71 = 138543362;
        v72 = v31;
        _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "reevaluateDisplayLink: warning: missing CADisplay for %{public}@, using main display for displaylink", v71, 0xCu);
      }

LABEL_41:
      v21 = v63;
      v19 = v59;
      v18 = v64;
    }
  }

  if (*(a1 + 208))
  {
    v55 = [NSString stringWithFormat:@"we should not have a display link here. c:%d d:%d p:%d u:%d", 1, v61, v65 & 1, v62];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v56 = NSStringFromSelector("_locked_reevaluateDisplayLinkForReason:sendExitEventsToDisplayUUID:");
      v57 = objc_opt_class();
      v58 = NSStringFromClass(v57);
      *v71 = 138544642;
      v72 = v56;
      v73 = 2114;
      v74 = v58;
      v75 = 2048;
      v76 = a1;
      v77 = 2114;
      v78 = @"BKMousePointerController.m";
      v79 = 1024;
      v80 = 2011;
      v81 = 2114;
      v82 = v55;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v71, 0x3Au);
    }

    [v55 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x10005EDD8);
  }

  v42 = -[BKDisplayLink initWithDisplayLinkClass:display:target:action:]([BKDisplayLink alloc], "initWithDisplayLinkClass:display:target:action:", [*(a1 + 24) displayLinkClass], v29, a1, "_displayLinkFired:");
  v43 = *(a1 + 208);
  *(a1 + 208) = v42;

  *(a1 + 444) = 0;
  v23 = 1;
  v22 = v60;
LABEL_44:
  if (((v65 | v62) & 1) == 0)
  {
    goto LABEL_53;
  }

  v44 = v22;
  v45 = BKLogMousePointer();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    v46 = @"unpause";
    if (v65)
    {
      v46 = @"pause";
    }

    *v71 = 138543618;
    v72 = v46;
    v73 = 2114;
    v74 = v21;
    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "reevaluateDisplayLink: %{public}@ %{public}@", v71, 0x16u);
  }

  [*(a1 + 208) setPaused:v18];
  if (v65)
  {
    *(a1 + 444) = 1;
    *(a1 + 216) = mach_absolute_time();
  }

  v22 = v44;
  if (!v62)
  {
LABEL_53:
    if ((v61 | v23 | v65 | v62))
    {
      goto LABEL_61;
    }

    v47 = *(a1 + 208);
    v48 = BKLogMousePointer();
    v49 = os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT);
    if (v47)
    {
      if (v49)
      {
        v50 = *(a1 + 444);
        *v71 = 138543618;
        v72 = v21;
        v73 = 1024;
        LODWORD(v74) = v50;
        v51 = "reevaluateDisplayLink: no-op -- %{public}@ -- paused:%{BOOL}u";
        v52 = v48;
        v53 = 18;
LABEL_59:
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, v51, v71, v53);
      }
    }

    else if (v49)
    {
      *v71 = 0;
      v51 = "reevaluateDisplayLink: no-op -- no display link";
      v52 = v48;
      v53 = 2;
      goto LABEL_59;
    }

    goto LABEL_61;
  }

  *(a1 + 224) = mach_absolute_time();
LABEL_61:

  v54 = v22;
  if (v54)
  {
    v66 = v54;
    sub_10005EE18(a1, v54);
    v54 = v66;
  }
}

void sub_10005EE18(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 8));
    v3 = mach_absolute_time();
    sub_10005A750(a1, v3);
    [*(a1 + 240) frameWillBegin];
    v4 = objc_alloc_init(BKHIDEventCollector);
    v5 = [*(a1 + 248) mutableCopy];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = *(a1 + 248);
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      do
      {
        v10 = 0;
        do
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v19 + 1) + 8 * v10);
          if (([*(a1 + 416) containsObject:v11] & 1) == 0 && (objc_msgSend(*(a1 + 424), "containsObject:", v11) & 1) == 0)
          {
            [*(a1 + 240) appendSubeventsForEventTypeMask:0x200000000F6 toTopLevelEvent:sub_10005D0A8(a1 interfaceOrientation:v11 getEventSummary:{v3, v4), 1, 0}];
            v12 = BKLogMousePointer();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
            {
              if (v11)
              {
                v13 = v11[2];
              }

              else
              {
                v13 = 0;
              }

              *buf = 67109120;
              v24 = v13;
              _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "exit context:%X", buf, 8u);
            }

            [v5 removeObject:v11];
          }

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v14 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
        v8 = v14;
      }

      while (v14);
    }

    v15 = *(a1 + 248);
    *(a1 + 248) = v5;
    v16 = v5;

    sub_10005BD2C(a1, a2, 0, 0, v3, v4);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10005F0BC;
    v18[3] = &unk_1000FBD90;
    v18[4] = a1;
    sub_10002D658(v4, v18);
    [*(a1 + 240) frameDidEnd];
  }
}

const os_unfair_lock *sub_10005F0C4(const os_unfair_lock *result)
{
  if (result)
  {
    v1 = result;
    os_unfair_lock_assert_owner(result + 2);
    if (*&v1[20]._os_unfair_lock_opaque && ([*&v1[34]._os_unfair_lock_opaque coalitionIdentifier], v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "isEqual:", @"main"), v2, !v3))
    {
      return 0;
    }

    else
    {
      return ([*&v1[48]._os_unfair_lock_opaque count] != 0);
    }
  }

  return result;
}

double sub_10005F144(uint64_t a1, void *a2, void *a3)
{
  if (!a1)
  {
    return 0.0;
  }

  os_unfair_lock_assert_owner((a1 + 8));
  [a2 point];
  v7 = v6;
  v9 = v8;
  v10 = [a2 contextID];
  v11 = [a3 uniqueId];
  v12 = sub_100007D54(v11, "BKDisplayConvertContextLocationToCAScreen");
  [v12 convertPoint:v10 fromContextId:{v7, v9}];

  sub_100028ED0(v11);
  if (v11)
  {
    v13 = sub_10005DD24(a1, v11);
    v14 = sub_10005DDD4(a1, v11);
  }

  else
  {
    v13 = 0;
    v14 = *(a1 + 256);
  }

  sub_10005F494(v13, v14, *(a1 + 312));
  v16 = v15;

  return v16;
}

id sub_10005F268(uint64_t a1, double a2, double a3)
{
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 8));
    v6 = +[NSMutableSet set];
    v7 = [*(a1 + 144) displayUUID];
    v8 = sub_10005DD24(a1, v7);
    v9 = v8;
    if (v8)
    {
      v10 = [v8 uniqueId];
      v11 = sub_10005DDD4(a1, v10);
      [*(a1 + 136) convertFromGlobalPoint:*(a1 + 144) toRegion:{a2, a3}];
      sub_10005DE60(v9, v11, *(a1 + 312));
      v22 = v10;
      sub_100007C3C(v10);
      v14 = sub_10001AE04(v12, v13, BKMouseDestination, 0, v9, 0, *(a1 + 24), *(a1 + 248));
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v24;
        do
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v24 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v23 + 1) + 8 * i);
            if (v19 && (*(v19 + 12) - 1) <= 0xFFFFFFFD)
            {
              v20 = [NSNumber numberWithInt:sub_10001B448(v19, *(a1 + 464))];
              [v6 addObject:v20];
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v16);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_10005F494(id result, uint64_t a2, void *a3)
{
  if (a3)
  {
    return [a3 transformLayerPropertiesForDisplay:result displayInterfaceOrientation:{a2, 0, 0, 0, 0, 0, 0, 0, 0}];
  }

  return result;
}

uint64_t sub_10005F5B4(uint64_t result, void *a2, int a3)
{
  if (result)
  {
    v4 = result;
    if (a3)
    {
      [*(result + 240) addSyntheticTopLevelEventIfNeeded];
    }

    if (([*(v4 + 240) buttonMaskDidChange] & 1) != 0 || (result = sub_10005D8EC(v4), (result & 1) == 0))
    {

      return sub_10005A750(v4, a2);
    }
  }

  return result;
}

id sub_10005F6CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v11[0] = @"ScreenOn";
    v6 = [NSNumber numberWithBool:a2];
    v12[0] = v6;
    v11[1] = @"DigitizerSurfaceCovered";
    v7 = [NSNumber numberWithBool:a3];
    v12[1] = v7;
    v11[2] = @"DeviceOrientation";
    v8 = [NSNumber numberWithInteger:a4];
    v12[2] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:3];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void *sub_10005F7E8(void *result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    v3 = result[6];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10005F874;
    v4[3] = &unk_1000FBD68;
    v4[4] = v2;
    v4[5] = a2;
    [v3 enumerateKeysAndObjectsUsingBlock:v4];
    return [v2[7] evaluatePeriodicReportingTrigger];
  }

  return result;
}

void sub_10005F884(uint64_t a1, void *a2, void *a3)
{
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 8));
    v6 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [a2 senderID]);
    v7 = [*(a1 + 272) objectForKeyedSubscript:v6];

    if (v7 && *(v7 + 9) == 1)
    {
      v8 = *(v7 + 16);
      if (([v8 isEqual:a3] & 1) == 0)
      {
        v9 = BKLogMousePointer();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = 138543618;
          v11 = a3;
          v12 = 2114;
          v13 = a2;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "view state update:%{public}@ for service:%{public}@", &v10, 0x16u);
        }

        [a2 asyncSetProperty:a3 forKey:@"HostStateNotification"];
        objc_storeStrong((v7 + 16), a3);
      }
    }
  }
}

void sub_10005FA48(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = BKLogMousePointer();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = a2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "reevaluateDisplayArrangementForReason(%{public}@)", &buf, 0xCu);
    }

    os_unfair_lock_assert_owner((a1 + 8));
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    v5 = *(a1 + 48);
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v27 = sub_100060CD8;
    v28 = &unk_1000FBD18;
    v29 = &v22;
    v30 = &v18;
    [v5 enumerateKeysAndObjectsUsingBlock:{&buf, 0}];
    *(a1 + 445) = *(v23 + 24);
    *(a1 + 446) = *(v19 + 24);
    _Block_object_dispose(&v18, 8);
    _Block_object_dispose(&v22, 8);
    v6 = +[CADisplay mainDisplay];
    v7 = [v6 uniqueId];
    v8 = [v7 length];
    v9 = BKSDisplayUUIDMainKey;
    if (v8)
    {
      v9 = v7;
    }

    v10 = v9;

    v11 = *(a1 + 80);
    *(a1 + 80) = v10;

    v12 = *(a1 + 104);
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v27 = sub_10006094C;
    v28 = &unk_1000FBDB8;
    v29 = a1;
    v13 = [v12 bs_filter:&buf];
    v14 = *(a1 + 112);
    *(a1 + 112) = v13;

    sub_10005FD40(a1);
    sub_10005E670(a1, a2);
    sub_100060198(a1);
    if (*(a1 + 120))
    {
      v15 = BKLogMousePointer();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [BSDescriptionStream descriptionForRootObject:*(a1 + 120)];
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "dropping uninteresting displays %{public}@", &buf, 0xCu);
      }

      v17 = *(a1 + 120);
      *(a1 + 120) = 0;
    }
  }
}

void sub_10005FD14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  _Block_object_dispose(&a9, 8);
  _Block_object_dispose(&a13, 8);
  _Unwind_Resume(a1);
}

void sub_10005FD40(const os_unfair_lock *a1)
{
  if (a1)
  {
    os_unfair_lock_assert_owner(a1 + 2);
    v2 = a1;
    v3 = objc_alloc_init(NSMutableDictionary);
    v4 = objc_alloc_init(NSMutableDictionary);
    v5 = [(BKMousePointerRegionArrangement *)[BKMutableMousePointerRegionArrangement alloc] initWithCoalitionIdentifier:@"main"];
    v41[0] = 0;
    v41[1] = v41;
    v41[2] = 0x3032000000;
    v41[3] = sub_1000603C8;
    v41[4] = sub_1000603D8;
    v42 = 0;
    v6 = *&v2[28]._os_unfair_lock_opaque;
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1000603E0;
    v37[3] = &unk_1000FBE30;
    v24 = v3;
    v25 = v2;
    v37[4] = v2;
    v27 = v3;
    v38 = v27;
    v40 = v41;
    v26 = v5;
    v39 = v26;
    [v6 enumerateKeysAndObjectsUsingBlock:v37];
    v7 = [(BKMutableMousePointerRegionArrangement *)v26 copy];
    v8 = [(BKMousePointerRegionArrangement *)v26 coalitionIdentifier];
    [v27 setObject:v7 forKeyedSubscript:v8];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v9 = [v27 allValues];
    v10 = [v9 countByEnumeratingWithState:&v33 objects:v46 count:16];
    if (v10)
    {
      v11 = *v34;
      obj = v9;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v34 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v33 + 1) + 8 * i);
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v14 = [v13 regions];
          v15 = [v14 countByEnumeratingWithState:&v29 objects:v45 count:16];
          if (v15)
          {
            v16 = *v30;
            do
            {
              for (j = 0; j != v15; j = j + 1)
              {
                if (*v30 != v16)
                {
                  objc_enumerationMutation(v14);
                }

                v18 = [*(*(&v29 + 1) + 8 * j) displayUUID];
                [v4 setObject:v13 forKey:v18];
              }

              v15 = [v14 countByEnumeratingWithState:&v29 objects:v45 count:16];
            }

            while (v15);
          }
        }

        v9 = obj;
        v10 = [obj countByEnumeratingWithState:&v33 objects:v46 count:16];
      }

      while (v10);
    }

    objc_storeStrong((v25 + 88), v24);
    objc_storeStrong((v25 + 96), v4);
    v19 = BKLogMousePointer();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [BSDescriptionStream descriptionForRootObject:v27];
      *buf = 138543362;
      v44 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "new region arrangements:%{public}@", buf, 0xCu);
    }

    if ([v27 count] == 1)
    {
      sub_1000605D0(v25, v26);
    }

    else
    {
      v21 = *(v25 + 136);
      if (v21)
      {
        v22 = [v21 coalitionIdentifier];
        v23 = [v27 objectForKey:v22];

        if (v23)
        {
          sub_1000605D0(v25, v23);
        }

        else
        {
          sub_1000605D0(v25, v26);
        }
      }
    }

    _Block_object_dispose(v41, 8);
  }
}

id *sub_100060198(id *result)
{
  if (result)
  {
    v1 = result;
    result = [result[24] count];
    if (result)
    {
      v2 = 0;
    }

    else
    {
      result = [v1[14] count];
      v2 = result != 0;
    }

    if (*(v1 + 442) != v2)
    {
      *(v1 + 442) = v2;
      v3 = BKLogMousePointer();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v8 = v2;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "ready to receive events: %{BOOL}u", buf, 8u);
      }

      v4 = v1[6];
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_1000602D4;
      v5[3] = &unk_1000FBDE0;
      v5[4] = v1;
      v6 = v2;
      return [v4 enumerateKeysAndObjectsUsingBlock:v5];
    }
  }

  return result;
}

void sub_1000602D4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = BKLogMousePointer();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*(a1 + 32) + 442);
    v8[0] = 67109378;
    v8[1] = v6;
    v9 = 2114;
    v10 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "set _readyToReceiveEvents:%{BOOL}u on %{public}@", v8, 0x12u);
  }

  v7 = [NSNumber numberWithBool:*(a1 + 40)];
  [a3 asyncSetProperty:v7 forKey:@"BKReadyToReceivePointerEvents"];
}

uint64_t sub_1000603C8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000603E0(uint64_t a1, void *a2, void *a3)
{
  v6 = [a2 isEqual:*(*(a1 + 32) + 80)];
  v7 = *(a1 + 32);
  if (v6)
  {
    v8 = *(v7 + 32);
    v9 = v7[4];
  }

  else
  {
    v9 = 0.0;
    v8 = 1;
  }

  v10 = *(v7 + 39);
  if (v10)
  {
    [v10 transformLayerPropertiesForDisplay:a3 displayInterfaceOrientation:v8];
    v11 = *(*(a1 + 32) + 312);
  }

  else
  {
    v11 = 0;
  }

  [BKMousePointerDisplayRenderer rootLayerPropertiesForDisplay:a3 displayController:v11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
  v12 = [[BKMousePointerRegion alloc] initWithPointSize:a2 cornerRadius:0 scale:v9 displayUUID:0.0];
  if ([a3 isExternal] && sub_100060774(*(a1 + 32), a3))
  {
    v13 = [(BKMousePointerRegionArrangement *)[BKMutableMousePointerRegionArrangement alloc] initWithCoalitionIdentifier:a2];
    [(BKMutableMousePointerRegionArrangement *)v13 addPrimaryRegion:v12];
    v14 = [(BKMutableMousePointerRegionArrangement *)v13 copy];
    [*(a1 + 40) setObject:v14 forKeyedSubscript:a2];
  }

  else
  {
    if (*(*(*(a1 + 56) + 8) + 40))
    {
      v15 = [*(*(a1 + 32) + 456) pointerRegionArrangementEdge];
      [*(*(*(a1 + 56) + 8) + 40) pointSize];
      v17 = v16;
      v19 = v18;
      [(BKMousePointerRegion *)v12 pointSize];
      v21 = v19 - v20;
      v23 = v17 - v22;
      if ((v15 & 0xFFFFFFFD) == 0)
      {
        v23 = v21;
      }

      [*(a1 + 48) addRegion:v12 relativeToRegion:*(*(*(a1 + 56) + 8) + 40) alongEdge:v15 atPosition:v23 * 0.5];
    }

    else
    {
      [*(a1 + 48) addPrimaryRegion:v12];
    }

    v24 = *(*(a1 + 56) + 8);
    v25 = v12;
    v13 = *(v24 + 40);
    *(v24 + 40) = v25;
  }
}

void sub_1000605D0(uint64_t a1, void *a2)
{
  x = CGPointZero.x;
  y = CGPointZero.y;
  v6 = *(a1 + 136);
  if (v6 && *(a1 + 144))
  {
    [v6 convertToGlobalPoint:*(a1 + 168) fromRegion:*(a1 + 176)];
    x = v7;
    y = v8;
  }

  v9 = [*(a1 + 144) displayUUID];
  v10 = [a2 regionForDisplayUUID:v9];

  if (v10)
  {
    [a2 convertToGlobalPoint:v10 fromRegion:{*(a1 + 168), *(a1 + 176)}];
    x = v11;
    y = v12;
  }

  if (a2)
  {
    v13 = [a2 copy];
    v14 = *(a1 + 136);
    *(a1 + 136) = v13;

    v15 = BKLogMousePointer();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 136);
      v19 = 138543362;
      v20 = v16;
      v17 = "selected region arrangement:%{public}@";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v17, &v19, 0xCu);
    }
  }

  else
  {
    v15 = BKLogMousePointer();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 136);
      v19 = 138543362;
      v20 = v18;
      v17 = "no region arrangement found; preserving previous:%{public}@";
      goto LABEL_11;
    }
  }

  sub_10005E2D4(a1, 1, @"updateRegionArrangement", x, y);
}

uint64_t sub_100060774(uint64_t a1, void *a2)
{
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 8));
    v4 = [a2 uniqueId];
    v5 = [v4 length];
    v6 = BKSDisplayUUIDMainKey;
    if (v5)
    {
      v6 = v4;
    }

    v7 = v6;

    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v8 = *(a1 + 48);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000608AC;
    v12[3] = &unk_1000FBE08;
    v9 = v7;
    v13 = v9;
    v14 = &v15;
    [v8 enumerateKeysAndObjectsUsingBlock:v12];
    v10 = *(v16 + 24);

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

void sub_100060894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000608AC(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = [a3 displayUUID];
  v8 = [v7 length];
  v9 = BKSDisplayUUIDMainKey;
  if (v8)
  {
    v9 = v7;
  }

  v10 = v9;

  v11 = [v6 isEqual:v10];
  if (v11)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

uint64_t sub_10006094C(uint64_t a1, uint64_t a2, void *a3)
{
  v36 = a1;
  v5 = *(a1 + 32);
  v6 = *(v5 + 128);
  os_unfair_lock_assert_owner((v5 + 8));
  v7 = *(v5 + 80);
  v8 = sub_100060774(v5, a3);
  v9 = *(v5 + 445);
  v10 = [a3 uniqueId];
  v11 = [v10 length];
  v12 = BKSDisplayUUIDMainKey;
  if (v11)
  {
    v13 = v10;
  }

  else
  {
    v13 = BKSDisplayUUIDMainKey;
  }

  v14 = v13;

  v37 = a2;
  if (BSEqualObjects())
  {
    if (v9)
    {
      v15 = @"main display";
    }

    else
    {
      v15 = @"no standard coalition pointer device";
    }

    v16 = v9;
  }

  else if ([a3 isExternal] & v8)
  {
    v16 = 1;
    v15 = @"external display with associated pointer device";
  }

  else
  {
    v17 = [a3 isExternal];
    v16 = 0;
    if (v17)
    {
      v15 = @"no standard coalition pointer device";
    }

    else
    {
      v15 = @"non-external but non-main";
    }

    if (v17 && v9)
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v18 = v6;
      v19 = [v18 countByEnumeratingWithState:&v38 objects:buf count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v39;
        while (2)
        {
          for (i = 0; i != v20; i = i + 1)
          {
            if (*v39 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = [*(*(&v38 + 1) + 8 * i) displayUUID];
            if ([v23 length])
            {
              v24 = v23;
            }

            else
            {
              v24 = v12;
            }

            v25 = v24;

            v26 = [v14 isEqual:v25];
            if (v26)
            {

              v16 = 1;
              v15 = @"in current arragement";
              goto LABEL_29;
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v38 objects:buf count:16];
          if (v20)
          {
            continue;
          }

          break;
        }
      }

      v16 = 0;
      v15 = @"not in current arrangement";
    }
  }

LABEL_29:

  v27 = v15;
  v28 = [*(*(v36 + 32) + 112) objectForKey:v37];

  if (v16)
  {
    if (!v28)
    {
      v29 = BKLogMousePointer();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v43 = v37;
        v44 = 2114;
        v45 = v27;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "display %{public}@ became interesting because %{public}@", buf, 0x16u);
      }
    }
  }

  else if (v28)
  {
    v30 = BKLogMousePointer();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v43 = v37;
      v44 = 2114;
      v45 = v27;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "display %{public}@ became uninteresting because %{public}@", buf, 0x16u);
    }

    v31 = *(*(v36 + 32) + 120);
    if (!v31)
    {
      v32 = objc_alloc_init(NSMutableDictionary);
      v33 = *(v36 + 32);
      v34 = *(v33 + 120);
      *(v33 + 120) = v32;

      v31 = *(*(v36 + 32) + 120);
    }

    [v31 setObject:a3 forKey:{v37, v36}];
  }

  return v16;
}

void sub_100060CD8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 displayUUID];

  if (v5)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v6 = BKLogMousePointer();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [a3 senderID];
      v8 = [a3 displayUUID];
      v9 = 134218242;
      v10 = v7;
      v11 = 2114;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "have display-specific device (sender:%llX display:%{public}@)", &v9, 0x16u);
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    v6 = BKLogMousePointer();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      v10 = [a3 senderID];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "have normal device (sender:%llX)", &v9, 0xCu);
    }
  }
}

id sub_100061114(uint64_t a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    v4 = [a2 bs_compactMap:&stru_1000FBCC8];
    v5 = [v4 componentsJoinedByString:{@", "}];
    v6 = [NSString stringWithFormat:@"%@: %@", a3, v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_1000611BC(uint64_t a1)
{
  if (a1 && [*(a1 + 376) count])
  {
    v2 = [*(a1 + 48) count];
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = *(a1 + 376);
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v8 + 1) + 8 * v7) observeMouseAvailabilityDidChange:{v2 != 0, v8}];
          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

id sub_100061C90(const os_unfair_lock *a1)
{
  if (a1)
  {
    os_unfair_lock_assert_owner(a1 + 3);
    v1 = +[BKSDefaults localDefaults];
    v2 = [v1 globalMouseDevicePreferences];
    if (v2)
    {
      v8 = 0;
      v3 = [BSProtobufSerialization decodeObjectOfClass:objc_opt_class() fromData:v2 error:&v8];
      v4 = v8;
      v5 = v4;
      if (v3)
      {

LABEL_11:
        goto LABEL_12;
      }

      v6 = BKLogMousePointer();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v10 = v5;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "cannot decode global prefs: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v5 = BKLogMousePointer();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "returning default prefs", buf, 2u);
      }
    }

    v3 = [BKSMousePointerDevicePreferences defaultPreferencesForHardwareType:9];
    goto LABEL_11;
  }

  v3 = 0;
LABEL_12:

  return v3;
}

void sub_100061E40(const os_unfair_lock *a1, void *a2, void *a3)
{
  if (a1)
  {
    os_unfair_lock_assert_owner(a1 + 3);
    v5 = BKLogMousePointer();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v31 = a2;
      v32 = 2114;
      v33 = a3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "apply prefs:%{public}@ to service:%{public}@", buf, 0x16u);
    }

    [a2 pointerAccelerationFactor];
    v7 = vcvtd_n_u64_f64(v6, 0x10uLL);
    [a2 scrollAccelerationFactor];
    v9 = vcvtd_n_u64_f64(v8, 0x10uLL);
    v10 = objc_alloc_init(NSMutableDictionary);
    if ([a3 eventSource] != 12)
    {
      v17 = [a2 buttonConfigurationForHardwareButtonMice];
      if ([a3 claimsToConformToUsagePage:13 usage:12])
      {
        v17 = [a2 buttonConfigurationForVirtualButtonMice];
      }

      if (v17)
      {
        v28[0] = &off_100107AF0;
        v28[1] = &off_100107B08;
        v29[0] = @"OneButton";
        v29[1] = @"TwoButton";
        v28[2] = &off_100107B20;
        v29[2] = @"TwoButtonSwapped";
        v18 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:3];
        v19 = [NSNumber numberWithInteger:v17];
        v20 = [v18 objectForKeyedSubscript:v19];

        if (v20)
        {
          [v10 setObject:v20 forKey:@"MouseButtonMode"];
          v21 = BKLogMousePointer();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v31 = v20;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "set MouseButtonMode:%@", buf, 0xCu);
          }
        }
      }

      v22 = @"HIDMouseAcceleration";
      v23 = @"HIDMouseScrollAcceleration";
      goto LABEL_22;
    }

    v11 = [a2 enableTapToClick];
    v12 = [a2 enableTwoFingerSecondaryClick];
    v13 = [NSNumber numberWithBool:v11];
    [v10 setObject:v13 forKey:@"TapToClickEnabled"];

    v14 = [NSNumber numberWithBool:v12];
    [v10 setObject:v14 forKey:@"TwoFingersSecondaryClickEnabled"];

    v15 = [a2 clickHapticStrength];
    if (v15 == 1)
    {
      v16 = &__kCFBooleanTrue;
    }

    else
    {
      if (v15 != 2)
      {
LABEL_19:
        v24 = [a2 doubleTapDragMode];
        if (v24 <= 2)
        {
          v25 = *(&off_1000FBED8 + v24);
          [v10 setObject:*(&off_1000FBEC0 + v24) forKey:@"DoubleTapToDragEnabled"];
          [v10 setObject:v25 forKey:@"DragLockEnabled"];
        }

        v22 = @"HIDTrackpadAcceleration";
        v23 = @"HIDTrackpadScrollAcceleration";
LABEL_22:
        v26 = [NSNumber numberWithUnsignedInteger:v7];
        [v10 setObject:v26 forKey:v22];

        v27 = [NSNumber numberWithUnsignedInteger:v9];
        [v10 setObject:v27 forKey:v23];

        [a3 asyncSetProperties:v10];
        return;
      }

      v16 = &__kCFBooleanFalse;
    }

    [v10 setObject:v16 forKey:@"ActuationStrength"];
    goto LABEL_19;
  }
}

void sub_100062998(uint64_t a1)
{
  if (a1)
  {
    os_unfair_lock_assert_not_owner((a1 + 8));
    os_unfair_lock_lock((a1 + 8));
    [*(a1 + 232) invalidate];
    v2 = *(a1 + 232);
    *(a1 + 232) = 0;

    if (*(a1 + 443) == 1)
    {
      *(a1 + 443) = 0;
      sub_10005E670(a1, @"Events unpaused");
    }

    objc_initWeak(&location, a1);
    v3 = [[BSAbsoluteMachTimer alloc] initWithIdentifier:@"BKMousePointerController.displayLinkPauseTimer"];
    v4 = *(a1 + 232);
    *(a1 + 232) = v3;

    v5 = *(a1 + 232);
    v6 = &_dispatch_main_q;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100062E5C;
    v7[3] = &unk_1000FC2D8;
    objc_copyWeak(&v8, &location);
    [v5 scheduleWithFireInterval:&_dispatch_main_q leewayInterval:v7 queue:3.0 handler:0.5];

    os_unfair_lock_unlock((a1 + 8));
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void sub_100062ADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100062B00(uint64_t a1)
{
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 8));
    if ([*(a1 + 240) scrollPhaseDidChange])
    {
      v2 = [*(a1 + 240) scrollPhase];
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v3 = *(a1 + 376);
      v4 = [v3 countByEnumeratingWithState:&v41 objects:v48 count:16];
      if (v4)
      {
        v5 = v4;
        v6 = *v42;
        do
        {
          v7 = 0;
          do
          {
            if (*v42 != v6)
            {
              objc_enumerationMutation(v3);
            }

            [*(*(&v41 + 1) + 8 * v7) observeMouseScrollPhaseDidChange:v2];
            v7 = v7 + 1;
          }

          while (v5 != v7);
          v5 = [v3 countByEnumeratingWithState:&v41 objects:v48 count:16];
        }

        while (v5);
      }
    }

    if ([*(a1 + 240) buttonMaskDidChange])
    {
      v8 = [*(a1 + 240) buttonMask];
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v9 = *(a1 + 376);
      v10 = [v9 countByEnumeratingWithState:&v37 objects:v47 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v38;
        do
        {
          v13 = 0;
          do
          {
            if (*v38 != v12)
            {
              objc_enumerationMutation(v9);
            }

            [*(*(&v37 + 1) + 8 * v13) observeMouseButtonMaskDidChange:v8];
            v13 = v13 + 1;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v37 objects:v47 count:16];
        }

        while (v11);
      }
    }

    if ([*(a1 + 240) touchingPathIndexesDidChange])
    {
      v14 = [*(a1 + 240) touchingPathIndexes];
      v15 = [v14 count];

      kdebug_trace();
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v16 = *(a1 + 376);
      v17 = [v16 countByEnumeratingWithState:&v33 objects:v46 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v34;
        do
        {
          v20 = 0;
          do
          {
            if (*v34 != v19)
            {
              objc_enumerationMutation(v16);
            }

            [*(*(&v33 + 1) + 8 * v20) observeMouseTouchCountDidChange:v15];
            v20 = v20 + 1;
          }

          while (v18 != v20);
          v18 = [v16 countByEnumeratingWithState:&v33 objects:v46 count:16];
        }

        while (v18);
      }
    }

    if ([*(a1 + 240) forceDidChange])
    {
      [*(a1 + 240) force];
      v22 = v21;
      v23 = [*(a1 + 240) stage];
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v24 = *(a1 + 376);
      v25 = [v24 countByEnumeratingWithState:&v29 objects:v45 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v30;
        do
        {
          v28 = 0;
          do
          {
            if (*v30 != v27)
            {
              objc_enumerationMutation(v24);
            }

            [*(*(&v29 + 1) + 8 * v28) observeMouseForceDidChange:v23 stage:{v22, v29}];
            v28 = v28 + 1;
          }

          while (v26 != v28);
          v26 = [v24 countByEnumeratingWithState:&v29 objects:v45 count:16];
        }

        while (v26);
      }
    }
  }
}

void sub_100062E5C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    os_unfair_lock_assert_not_owner(WeakRetained + 2);
    os_unfair_lock_lock(v2 + 2);
    HIBYTE(v2[110]._os_unfair_lock_opaque) = 1;
    sub_10005E670(v2, @"Events paused");
    os_unfair_lock_unlock(v2 + 2);
    WeakRetained = v2;
  }
}

void sub_100063244(uint64_t a1)
{
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 8));
    objc_initWeak(&location, a1);
    [*(a1 + 240) invalidate];
    v2 = [BKMouseEventAccumulator alloc];
    v3 = *(a1 + 200);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100063598;
    v6[3] = &unk_1000FBD40;
    objc_copyWeak(&v7, &location);
    v6[4] = a1;
    v4 = [(BKMouseEventAccumulator *)v2 initWithInterpolatedEventTypeMask:v3 postEventsBlock:v6];
    v5 = *(a1 + 240);
    *(a1 + 240) = v4;

    sub_100063698(a1);
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void sub_100063330(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100063358(uint64_t a1)
{
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 8));
    v2 = mach_absolute_time();
    v3 = objc_alloc_init(BKHIDEventCollector);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = *(a1 + 248);
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v21 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      do
      {
        v8 = 0;
        do
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v15 + 1) + 8 * v8);
          sub_10005D0A8(a1, v9, v2, v3);
          v10 = BKLogMousePointer();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            if (v9)
            {
              v11 = v9[2];
            }

            else
            {
              v11 = 0;
            }

            *buf = 67109120;
            v20 = v11;
            _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "exit context:%X", buf, 8u);
          }

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v12 = [v4 countByEnumeratingWithState:&v15 objects:v21 count:16];
        v6 = v12;
      }

      while (v12);
    }

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100063590;
    v14[3] = &unk_1000FBD90;
    v14[4] = a1;
    sub_10002D658(v3, v14);
    v13 = *(a1 + 248);
    *(a1 + 248) = 0;
  }
}

id sub_100063564(id a1, NSNumber *a2)
{
  [(NSNumber *)a2 intValue];

  return BSProcessDescriptionForPID();
}

void sub_100063598(uint64_t a1, uint64_t a2, double a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (a3 == 0.0)
  {
    (*(a2 + 16))(a2);
    sub_100062B00(WeakRetained);
    v7 = mach_absolute_time();
    sub_10005F5B4(WeakRetained, v7, 0);
  }

  else
  {
    v8 = dispatch_time(0, (a3 * 1000000000.0));
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100063724;
    block[3] = &unk_1000FC468;
    v9 = *(a1 + 32);
    block[5] = WeakRetained;
    block[6] = a2;
    block[4] = v9;
    dispatch_after(v8, &_dispatch_main_q, block);
  }
}

void sub_100063698(uint64_t a1)
{
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 8));
    v2 = [a1 globalDevicePreferences];
    [*(a1 + 240) setShouldScrollNaturally:{objc_msgSend(v2, "enableNaturalScrolling")}];
    [*(a1 + 240) setShouldSwapPrimaryAndSecondaryButtons:{objc_msgSend(v2, "buttonConfigurationForHardwareButtonMice") == 3}];
  }
}

void sub_100063724(void *a1)
{
  os_unfair_lock_assert_not_owner((a1[4] + 8));
  os_unfair_lock_lock((a1[4] + 8));
  (*(a1[6] + 16))();
  sub_100062B00(a1[5]);
  v2 = a1[5];
  v3 = mach_absolute_time();
  sub_10005F5B4(v2, v3, 0);
  v4 = (a1[4] + 8);

  os_unfair_lock_unlock(v4);
}

void sub_1000639C0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 8));
    [*(a1 + 376) removeObject:a2];
    if (![*(a1 + 376) count])
    {
      v4 = *(a1 + 376);
      *(a1 + 376) = 0;
    }
  }
}

const os_unfair_lock *sub_100063A80(const os_unfair_lock *result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    os_unfair_lock_assert_owner(result + 2);
    v4 = *&v3[94]._os_unfair_lock_opaque;
    if (!v4)
    {
      v5 = objc_alloc_init(NSMutableArray);
      v6 = *&v3[94]._os_unfair_lock_opaque;
      *&v3[94]._os_unfair_lock_opaque = v5;

      v4 = *&v3[94]._os_unfair_lock_opaque;
    }

    return [v4 addObject:a2];
  }

  return result;
}

void sub_100063FF4(uint64_t a1, void *a2, int a3, void *a4)
{
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 8));
    v6 = BKLogMousePointer();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = BSProcessDescriptionForPID();
      *buf = 138543874;
      *&buf[4] = a4;
      *&buf[12] = 2114;
      *&buf[14] = v7;
      *&buf[22] = 2114;
      *&buf[24] = a2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "global route update: display:%{public}@ -> process %{public}@ %{public}@", buf, 0x20u);
    }

    v8 = *(a1 + 408);
    if (!v8)
    {
      v9 = objc_alloc_init(NSMutableDictionary);
      v10 = *(a1 + 408);
      *(a1 + 408) = v9;

      v8 = *(a1 + 408);
    }

    v56 = [v8 objectForKeyedSubscript:a4];
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v11 = [v56 copy];
    v12 = 0;
    v13 = [v11 countByEnumeratingWithState:&v66 objects:v77 count:16];
    if (v13)
    {
      v14 = *v67;
      do
      {
        v15 = 0;
        do
        {
          if (*v67 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v66 + 1) + 8 * v15);
          if (v16)
          {
            v17 = *(v16 + 24);
            v18 = v17;
            if (v17)
            {
              v19 = *(v17 + 8);
              goto LABEL_14;
            }
          }

          else
          {
            v18 = 0;
          }

          v19 = 0;
LABEL_14:
          if (v19 == a3)
          {
            if (!v12)
            {
              v12 = objc_alloc_init(NSMutableSet);
            }

            [v12 addObject:v16];
            [v56 removeObject:v16];
          }

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v20 = [v11 countByEnumeratingWithState:&v66 objects:v77 count:16];
        v13 = v20;
      }

      while (v20);
    }

    if (![v56 count])
    {
      [*(a1 + 408) removeObjectForKey:a4];
    }

    if ([a2 count])
    {
      if (!v56)
      {
        v56 = objc_alloc_init(NSMutableSet);
        [*(a1 + 408) setObject:v56 forKeyedSubscript:a4];
      }

      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      obja = a2;
      v21 = [obja countByEnumeratingWithState:&v62 objects:v76 count:16];
      if (!v21)
      {
        v52 = 0;
        goto LABEL_55;
      }

      v52 = 0;
      v23 = *v63;
      *&v22 = 67109376;
      v51 = v22;
      while (1)
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v63 != v23)
          {
            objc_enumerationMutation(obja);
          }

          v25 = *(*(&v62 + 1) + 8 * i);
          v26 = [v25 contextID];
          if ((v26 + 1) <= 1)
          {
            p_super = BKLogMousePointer();
            if (!os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_50;
            }

            *buf = 67109120;
            *&buf[4] = v26;
            v28 = p_super;
            v29 = "attempt to establish global route for contextID %X ignored";
            v30 = 8;
LABEL_45:
            _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, v29, buf, v30);
            goto LABEL_50;
          }

          v31 = [*(a1 + 312) taskPortForContextID:v26 displayUUID:a4];
          if ((v31 - 1) >= 0xFFFFFFFE)
          {
            p_super = BKLogMousePointer();
            if (!os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_50;
            }

            *buf = v51;
            *&buf[4] = v26;
            *&buf[8] = 1024;
            *&buf[10] = v31;
            v28 = p_super;
            v29 = "attempt to establish global route for contextID %X ignored due to invalid corresponding port %X";
            v30 = 14;
            goto LABEL_45;
          }

          v32 = [(BKCAContextDestination *)[BKMouseDestination alloc] initWithContextID:v26 clientPort:v31];
          p_super = &v32->super.super;
          if (v32)
          {
            v32->_cachedPID = a3;
            v32->super._contextID = v26;
          }

          sub_10001ADD4(v32, a4);
          sub_10001B418(p_super, *(a1 + 24));
          v33 = objc_alloc_init(_BKMouseEventGlobalRoute);
          destination = [v25 options];
          if (v33)
          {
            objc_storeStrong(&v33->_options, destination);

            v35 = p_super;
            destination = v33->_destination;
            v33->_destination = v35;
          }

          [v56 addObject:v33];
          if ([v12 containsObject:v33])
          {
            [v12 removeObject:v33];
          }

          else
          {
            v36 = v52;
            if (!v52)
            {
              v36 = objc_alloc_init(NSMutableSet);
            }

            v52 = v36;
            [v36 addObject:v33];
          }

LABEL_50:
        }

        v21 = [obja countByEnumeratingWithState:&v62 objects:v76 count:16];
        if (!v21)
        {
LABEL_55:

          goto LABEL_56;
        }
      }
    }

    v52 = 0;
LABEL_56:
    if ([v12 count] || objc_msgSend(v52, "count"))
    {
      v37 = mach_absolute_time();
      v38 = objc_alloc_init(BKHIDEventCollector);
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v39 = v12;
      v40 = [v39 countByEnumeratingWithState:&v58 objects:v75 count:16];
      if (v40)
      {
        v41 = *v59;
        do
        {
          for (j = 0; j != v40; j = j + 1)
          {
            if (*v59 != v41)
            {
              objc_enumerationMutation(v39);
            }

            sub_10005DF10(a1, *(*(&v58 + 1) + 8 * j), v37, 1, v38);
          }

          v40 = [v39 countByEnumeratingWithState:&v58 objects:v75 count:16];
        }

        while (v40);
      }

      if ([*(a1 + 240) buttonMask] && objc_msgSend(v52, "count"))
      {
        v79 = 0u;
        memset(buf, 0, sizeof(buf));
        *&buf[16] = v37;
        *&buf[24] = [*(a1 + 240) lastRemoteEventTimestamp];
        *&buf[32] = [*(a1 + 240) eventSequenceStartTimestamp];
        memset(&buf[40], 0, 32);
        *&buf[72] = [*(a1 + 240) mostRecentSender];
        *&v79 = +[BKTouchDeliveryPolicyServer sharedServer];
        WORD4(v79) = 0;
        v74 = 0uLL;
        v73 = 0;
        sub_10005B9D4(a1, &v74, &v73, &buf[8]);
        v43 = v73;
        if (v43)
        {
          if ([*(a1 + 240) buttonMask])
          {
            *buf = 2;
          }

          v44 = [v43 uniqueId];
          v45 = [v44 length];
          v46 = BKSDisplayUUIDMainKey;
          if (v45)
          {
            v46 = v44;
          }

          v47 = v46;

          v71[0] = _NSConcreteStackBlock;
          v71[1] = 3221225472;
          v71[2] = sub_10006486C;
          v71[3] = &unk_1000FBEA0;
          v48 = v47;
          v72 = v48;
          v49 = [v52 bs_filter:v71];
          if ([v49 count])
          {
            v50 = objc_alloc_init(BKHIDEventCollector);
            sub_10005BAF0(a1, v49, buf, v50, *v74.i64, *&v74.i64[1]);
            v70[0] = _NSConcreteStackBlock;
            v70[1] = 3221225472;
            v70[2] = sub_1000648E0;
            v70[3] = &unk_1000FBD90;
            v70[4] = a1;
            sub_10002D658(v50, v70);
          }
        }
      }

      v57[0] = _NSConcreteStackBlock;
      v57[1] = 3221225472;
      v57[2] = sub_100064864;
      v57[3] = &unk_1000FBD90;
      v57[4] = a1;
      sub_10002D658(v38, v57);
    }
  }
}

uint64_t sub_10006486C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v4 = 0;
    goto LABEL_6;
  }

  v3 = *(a2 + 24);
  v4 = v3;
  if (!v3)
  {
LABEL_6:
    v5 = 0;
    goto LABEL_4;
  }

  v5 = *(v3 + 5);
LABEL_4:
  v6 = v5;
  v7 = *(a1 + 32);
  v8 = BSEqualObjects();

  return v8;
}

void sub_100065380(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000653BC(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    os_unfair_lock_assert_not_owner(WeakRetained + 2);
    os_unfair_lock_lock(WeakRetained + 2);
    [*(WeakRetained + 50) removeObject:a2];
    if (![*(WeakRetained + 50) count])
    {
      v3 = *(WeakRetained + 50);
      *(WeakRetained + 50) = 0;
    }

    os_unfair_lock_unlock(WeakRetained + 2);
  }
}

BKMousePointerScrollAnimationDriver *sub_1000655EC(double *a1, double a2, double a3)
{
  v3 = [[BKMousePointerScrollAnimationDriver alloc] initWithRelativeTranslation:a2 initialVelocity:a3 decelerationRate:a1[4], a1[5], a1[6]];

  return v3;
}

void sub_10006564C(uint64_t a1, void *a2, int a3, double a4, double a5, uint64_t a6, void (**a7)(void, double, double))
{
  if (a1)
  {
    os_unfair_lock_assert_not_owner((a1 + 8));
    os_unfair_lock_lock((a1 + 8));
    if (*(a1 + 144))
    {
      [*(a1 + 136) convertToGlobalPoint:*(a1 + 168) fromRegion:*(a1 + 176)];
      x = v13;
      y = v15;
    }

    else
    {
      x = CGPointZero.x;
      y = CGPointZero.y;
    }

    v17 = *(a1 + 136);
    v18 = a2;
    v19 = [v18 length];
    v20 = BKSDisplayUUIDMainKey;
    if (v19)
    {
      v20 = v18;
    }

    v21 = v20;

    v22 = [v17 regionForDisplayUUID:v21];

    if (v22)
    {
      if ([*(a1 + 240) positionType] != 1)
      {
        kdebug_trace();
        if ([*(a1 + 152) count])
        {
          v24 = [*(a1 + 152) lastObject];
          [v24 destinationPoint];
          x = v25;
          y = v26;
        }

        [*(a1 + 136) convertToGlobalPoint:v22 fromRegion:{a4, a5}];
        v28 = v27;
        v30 = v29;
        v31 = v27 - x;
        v32 = v29 - y;
        v33 = *(a1 + 160);
        os_unfair_lock_unlock((a1 + 8));
        if (a3 < 1)
        {
          objc_initWeak(location, a1);
          v34 = BSProcessDescriptionForPID();
          v36 = [NSString stringWithFormat:@"setPosition %@", v34];
        }

        else
        {
          if (sqrt(v31 * v31 + v32 * v32) > 160.0)
          {
            v42 = BKLogMousePointer();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              v44 = BSStringFromCGPoint();
              v45 = *(a1 + 144);
              v46 = *(a1 + 168);
              v47 = *(a1 + 176);
              v48 = BSStringFromCGPoint();
              v49 = BSStringFromCGPoint();
              v50 = BSStringFromCGPoint();
              *location = 134219778;
              *&location[4] = 0x4064000000000000;
              v57 = 2114;
              v58 = v44;
              v59 = 1024;
              v60 = a3;
              v61 = 2114;
              v62 = v45;
              v63 = 2114;
              v64 = v48;
              v65 = 2114;
              v66 = v22;
              v67 = 2114;
              v68 = v49;
              v69 = 2114;
              v70 = v50;
              _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "Stopping pointer movement because request exceeds limit of %f pts. Pointer position:%{public}@, pid:%d, region:%{public}@, region point:%{public}@, target region:%{public}@, desired location %{public}@, current location:%{public}@", location, 0x4Eu);
            }

            goto LABEL_33;
          }

          objc_initWeak(location, a1);
          v34 = BSProcessDescriptionForPID();
          v35 = BSProcessDescriptionForPID();
          v36 = [NSString stringWithFormat:@"setPosition %@ restrict:%@", v34, v35];
        }

        v52[0] = _NSConcreteStackBlock;
        v52[1] = 3221225472;
        v52[2] = sub_100065C50;
        v52[3] = &unk_1000FBBD0;
        objc_copyWeak(v54, location);
        v54[1] = v33;
        v55 = a3;
        v37 = v36;
        v53 = v37;
        v38 = objc_retainBlock(v52);
        if (a7 && (a7[2](a7, v31, v32), (a7 = objc_claimAutoreleasedReturnValue()) != 0) && [*(a1 + 152) count] <= 0x63)
        {
          v39 = [BKMousePointerAnimation alloc];
          if (*(a1 + 441))
          {
            v40 = 120;
          }

          else
          {
            v40 = 0;
          }

          v51[0] = _NSConcreteStackBlock;
          v51[1] = 3221225472;
          v51[2] = sub_100066008;
          v51[3] = &unk_1000FBBF8;
          v51[4] = a1;
          v41 = [(BKMousePointerAnimation *)v39 initWithRelativeTranslation:a7 destinationPoint:v40 animationDriver:v38 updateRate:v51 applierBlock:v31 completionBlock:v32, v28, v30];
          os_unfair_lock_lock((a1 + 8));
          [*(a1 + 152) addObject:v41];
          [(BKMousePointerAnimation *)v41 start];
          os_unfair_lock_unlock((a1 + 8));
        }

        else
        {
          (v38[2])(v38, v31, v32);
        }

        objc_destroyWeak(v54);
        objc_destroyWeak(location);
LABEL_33:

        return;
      }

      v23 = BKLogMousePointer();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *location = 0;
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "_setPointerPosition: cannot reposition model point when the user is using a pointing device with absolute positioning", location, 2u);
      }
    }

    else
    {
      v23 = BKLogMousePointer();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v43 = *(a1 + 136);
        *location = 138543618;
        *&location[4] = v18;
        v57 = 2114;
        v58 = v43;
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "_setPointerPosition: no displayUUID:%{public}@ in arrangement:%{public}@", location, 0x16u);
      }
    }

    os_unfair_lock_unlock((a1 + 8));
    goto LABEL_33;
  }
}

void sub_100065C20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_100065C50(uint64_t a1, double a2, double a3)
{
  v6 = mach_absolute_time();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (!WeakRetained)
  {
LABEL_13:
    v18 = 1;
    goto LABEL_34;
  }

  os_unfair_lock_lock(WeakRetained + 2);
  v9 = [*(v8 + 248) anyObject];
  v10 = v9;
  if (v9)
  {
    v11 = *(v9 + 48);
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (!v12)
  {
    v13 = [*(v8 + 48) allValues];
    v12 = [v13 lastObject];

    if (!v12)
    {
      v17 = BKLogMousePointer();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "no device found during pointer animation -- is IOHIDService termination in progress?", buf, 2u);
      }

      os_unfair_lock_unlock((v8 + 8));
      goto LABEL_13;
    }
  }

  if (*(v8 + 160) != *(a1 + 48))
  {
    goto LABEL_17;
  }

  v14 = *(a1 + 56);
  if ((v14 & 0x80000000) != 0)
  {
    goto LABEL_16;
  }

  os_unfair_lock_assert_owner((v8 + 8));
  if (*(v8 + 144))
  {
    [*(v8 + 136) convertToGlobalPoint:*(v8 + 168) fromRegion:*(v8 + 176)];
  }

  else
  {
    x = CGPointZero.x;
    y = CGPointZero.y;
  }

  v19 = sub_10005F268(v8, a2 + x, a3 + y);
  v20 = [NSNumber numberWithInt:v14];
  v21 = [v19 containsObject:v20];

  if (v21)
  {
LABEL_16:
    sub_10005B7F4(v8, *(a1 + 32), a2, a3);
    v18 = 1;
    sub_10005F5B4(v8, v6, 1);
    os_unfair_lock_unlock((v8 + 8));
  }

  else
  {
LABEL_17:
    v22 = BKLogMousePointer();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Attempting to animate across process boundaries when that is not allowed. Terminating animation.", buf, 2u);
    }

    v23 = +[NSMutableArray array];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v24 = *(v8 + 152);
    v25 = [v24 countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v40;
      do
      {
        for (i = 0; i != v26; i = i + 1)
        {
          if (*v40 != v27)
          {
            objc_enumerationMutation(v24);
          }

          [v23 addObject:*(*(&v39 + 1) + 8 * i)];
        }

        v26 = [v24 countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v26);
    }

    os_unfair_lock_unlock((v8 + 8));
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v29 = v23;
    v30 = [v29 countByEnumeratingWithState:&v35 objects:v44 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v36;
      do
      {
        for (j = 0; j != v31; j = j + 1)
        {
          if (*v36 != v32)
          {
            objc_enumerationMutation(v29);
          }

          [*(*(&v35 + 1) + 8 * j) stop];
        }

        v31 = [v29 countByEnumeratingWithState:&v35 objects:v44 count:16];
      }

      while (v31);
    }

    v18 = 0;
  }

LABEL_34:

  return v18;
}

void sub_100066008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock((*(a1 + 32) + 8));
  [*(*(a1 + 32) + 152) removeObject:a3];
  v5 = (*(a1 + 32) + 8);

  os_unfair_lock_unlock(v5);
}

BKMousePointerCAAnimationDriver *sub_100066164(uint64_t a1, double a2, double a3)
{
  if (*(a1 + 32))
  {
    v4 = [[BKMousePointerCAAnimationDriver alloc] initWithRelativeTranslation:*(a1 + 32) animationSettings:a2, a3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

BKMousePointerCAAnimationDriver *sub_100066364(uint64_t a1, double a2, double a3)
{
  if (*(a1 + 32))
  {
    v4 = [[BKMousePointerCAAnimationDriver alloc] initWithRelativeTranslation:*(a1 + 32) animationSettings:a2, a3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_100066794(uint64_t a1, void *a2)
{
  v4 = BKLogMousePointer();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [a2 isActive];
    v6 = *(a1 + 32);
    v7[0] = 67109378;
    v7[1] = v5;
    v8 = 2114;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "pointer updates are suppressed: (%{BOOL}u): display:%{public}@", v7, 0x12u);
  }
}

void sub_10006712C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak((v27 + 40));
  objc_destroyWeak(&a25);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000671B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  sub_100067290(WeakRetained);
}

void sub_1000671F8(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 8));
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  sub_10005FD40(WeakRetained);

  v3 = (*(a1 + 32) + 8);

  os_unfair_lock_unlock(v3);
}

void sub_100067250(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  sub_100067290(WeakRetained);
}

void sub_100067290(uint64_t a1)
{
  if (a1)
  {
    os_unfair_lock_assert_not_owner((a1 + 8));
    os_unfair_lock_lock((a1 + 8));
    v2 = *(a1 + 440);
    v3 = [*(a1 + 456) visualizeMousePointer];
    *(a1 + 440) = v3;
    if (v2 != v3)
    {
      if (v3)
      {
        v4 = objc_alloc_init(BKMousePointerAnnotationController);
        v5 = *(a1 + 360);
        *(a1 + 360) = v4;

        sub_100063A80(a1, *(a1 + 360));
      }

      else
      {
        sub_1000639C0(a1, *(a1 + 360));
        [*(a1 + 360) invalidate];
        v6 = *(a1 + 360);
        *(a1 + 360) = 0;
      }
    }

    v7 = *(a1 + 200);
    *(a1 + 200) = 0;
    v8 = [*(a1 + 456) mouseInterpolation];
    v31[0] = BKMouseInterpolationPointer;
    v31[1] = BKMouseInterpolationScroll;
    v32[0] = &off_100107A78;
    v32[1] = &off_100107A90;
    v31[2] = BKMouseInterpolationScale;
    v31[3] = BKMouseInterpolationTranslation;
    v32[2] = &off_100107AA8;
    v32[3] = &off_100107AC0;
    v31[4] = BKMouseInterpolationRotation;
    v32[4] = &off_100107AD8;
    v9 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:5];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      do
      {
        v14 = 0;
        do
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [v9 objectForKeyedSubscript:{*(*(&v22 + 1) + 8 * v14), v22}];
          *(a1 + 200) |= [v15 unsignedLongLongValue];

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v12);
    }

    v16 = *(a1 + 200);
    if (v16 != v7)
    {
      v17 = BKLogMousePointer();
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      if (v16)
      {
        if (v18)
        {
          v19 = [v10 componentsJoinedByString:{@", "}];
          v20 = *(a1 + 200);
          *buf = 138543618;
          v27 = v19;
          v28 = 2048;
          v29 = v20;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "now interpolating [%{public}@] events: %llX", buf, 0x16u);
        }

        v21 = 0;
      }

      else
      {
        if (v18)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "interpolation disabled", buf, 2u);
        }

        v21 = 1;
      }

      *(a1 + 441) = v21;
      sub_100063244(a1);
      sub_10005FA48(a1, @"defaults changed");
    }

    os_unfair_lock_unlock((a1 + 8));
  }
}

void sub_100067CC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose((v34 - 112), 8);
  _Block_object_dispose(&a16, 8);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a34, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100067D28(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100067D40(uint64_t a1, void *a2)
{
  v3 = kCASecureModeViolationProcessId;
  v4 = a2;
  v18 = [v4 objectForKey:v3];
  v5 = [v4 objectForKey:kCASecureModeViolationContextId];
  v6 = [v4 objectForKey:kCASecureModeViolationLayerNames];

  v7 = [v18 intValue];
  if (v7 >= 1 && v7 != getpid())
  {
    v8 = *(*(*(a1 + 32) + 8) + 40);
    if (!v8)
    {
      v9 = objc_alloc_init(NSMutableDictionary);
      v10 = *(*(a1 + 32) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      v8 = *(*(*(a1 + 32) + 8) + 40);
    }

    v12 = [v8 objectForKey:v18];
    if (!v12)
    {
      v12 = objc_alloc_init(NSMutableArray);
    }

    [v12 addObject:v5];
    [*(*(*(a1 + 32) + 8) + 40) setObject:v12 forKey:v18];
    if ([v6 count])
    {
      v13 = *(*(*(a1 + 40) + 8) + 40);
      if (!v13)
      {
        v14 = objc_alloc_init(NSMutableDictionary);
        v15 = *(*(a1 + 40) + 8);
        v16 = *(v15 + 40);
        *(v15 + 40) = v14;

        v13 = *(*(*(a1 + 40) + 8) + 40);
      }

      v17 = [v13 objectForKeyedSubscript:v5];
      if (!v17)
      {
        v17 = objc_alloc_init(NSMutableSet);
        [*(*(*(a1 + 40) + 8) + 40) setObject:v17 forKeyedSubscript:v5];
      }

      [v17 addObjectsFromArray:v6];
    }
  }
}

void sub_100067F30(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[BKSSecureModeViolation alloc] initWithProcessId:v6 contextIds:v5];

  v8 = *(*(*(a1 + 32) + 8) + 40);
  if (v8)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10006832C;
    v10[3] = &unk_1000FBF68;
    v11 = v5;
    v9 = [v8 bs_filter:v10];
    if ([v9 count])
    {
      [v7 setLayerNamesByContext:v9];
    }
  }

  [*(*(*(a1 + 40) + 8) + 40) addObject:v7];
}

void sub_10006804C(uint64_t a1)
{
  sub_100068164();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("FBSSystemService");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100126000 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getFBSSystemServiceClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"BKSecureDrawingMonitor.m" lineNumber:26 description:{@"Unable to find class %s", "FBSSystemService"}];

    __break(1u);
  }
}

void *sub_100068114(uint64_t a1)
{
  v2 = sub_100068164();
  result = dlsym(v2, "FBSOpenApplicationOptionKeyActions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100126010 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100068164()
{
  v4[0] = 0;
  if (!qword_100126008)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_1000682B8;
    v4[4] = &unk_1000FC018;
    v4[5] = v4;
    v5 = off_1000FBFD8;
    v6 = 0;
    qword_100126008 = _sl_dlopen();
  }

  v0 = qword_100126008;
  if (!qword_100126008)
  {
    v0 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"void *FrontBoardServicesLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"BKSecureDrawingMonitor.m" lineNumber:25 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_1000682B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100126008 = result;
  return result;
}

id sub_10006832C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 count])
  {
    v6 = [*(a1 + 32) containsObject:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_1000684B0(id a1)
{
  v1 = objc_alloc_init(BKSecureDrawingMonitor);
  v2 = qword_100125FF0;
  qword_100125FF0 = v1;
}

void sub_10006863C(void *a1, void *a2)
{
  if (a1)
  {
    v4 = a2[1];
    if (sub_100068754(a1, v4))
    {
      v5 = BKLogTouchEvents();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v7[0] = 67109120;
        v7[1] = v4;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "addContact: replacing existing contact for pathIndex %d", v7, 8u);
      }

      v6 = a1[31];
    }

    else
    {
      v6 = a1[31];
      if (v6)
      {
        if (v4 < a1[32])
        {
          a1[32] = v4;
        }

        if (v4 <= a1[33])
        {
          goto LABEL_13;
        }
      }

      else
      {
        a1[32] = v4;
      }

      a1[33] = v4;
    }

LABEL_13:
    a1[31] = v6 + 1;
    objc_storeStrong(&a1[v4 + 1], a2);
  }
}

BOOL sub_100068754(uint64_t a1, uint64_t a2)
{
  if (a2 >= 30)
  {
    v6 = [NSString stringWithFormat:@"pathIndex out of bounds: %d", a2];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v7 = NSStringFromSelector("_coreRemoveContactAtIndex:");
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *buf = 138544642;
      v11 = v7;
      v12 = 2114;
      v13 = v9;
      v14 = 2048;
      v15 = a1;
      v16 = 2114;
      v17 = @"BKTouchContactSet.m";
      v18 = 1024;
      v19 = 180;
      v20 = 2114;
      v21 = v6;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v6 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1000688D8);
  }

  v3 = *(a1 + 8 + 8 * a2);
  if (v3)
  {
    *(a1 + 8 + 8 * a2) = 0;
    v4 = v3;

    --*(a1 + 248);
  }

  return v3 != 0;
}

BKTouchContactSet *sub_1000688E0(uint64_t a1, uint64_t a2)
{
  if (a1 && (v3 = *(a1 + 256), v3 <= *(a1 + 264)))
  {
    v4 = 0;
    v6 = v3 - 1;
    v7 = (a1 + 8 * v3 + 8);
    do
    {
      v8 = *v7;
      if (v8 && (*(a2 + 16))(a2, v8))
      {
        if (!v4)
        {
          v4 = objc_alloc_init(BKTouchContactSet);
        }

        sub_10006863C(v4, v8);
      }

      ++v6;
      ++v7;
    }

    while (v6 < *(a1 + 264));
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id *sub_1000689B8(id *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1;
    if (a2 >= 30)
    {
      v4 = [NSString stringWithFormat:@"pathIndex out of bounds: %d", a2];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v5 = NSStringFromSelector("contactForPathIndex:");
        v6 = objc_opt_class();
        v7 = NSStringFromClass(v6);
        *buf = 138544642;
        v9 = v5;
        v10 = 2114;
        v11 = v7;
        v12 = 2048;
        v13 = v2;
        v14 = 2114;
        v15 = @"BKTouchContactSet.m";
        v16 = 1024;
        v17 = 70;
        v18 = 2114;
        v19 = v4;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v4 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x100068B28);
    }

    a1 = a1[a2 + 1];
  }

  return a1;
}

void *sub_100068B30(void *a1, int a2)
{
  if (!a1)
  {
    goto LABEL_13;
  }

  if (!a2)
  {
    v7 = BKLogTouchEvents();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "ignoring zero touchID", v9, 2u);
    }

    goto LABEL_12;
  }

  v3 = a1[32];
  v2 = a1[33];
  if (v3 > v2)
  {
LABEL_12:
    a1 = 0;
    goto LABEL_13;
  }

  v4 = v2 - v3 + 1;
  v5 = &a1[v3 + 1];
  while (1)
  {
    v6 = *v5;
    if (*v5)
    {
      if (v6[4] == a2)
      {
        break;
      }
    }

    ++v5;
    if (!--v4)
    {
      goto LABEL_12;
    }
  }

  a1 = v6;
LABEL_13:

  return a1;
}

BKTouchContactSet *sub_100068C00(void *a1, int *a2, uint64_t a3)
{
  v3 = 0;
  if (a1)
  {
    v4 = a3;
    if (a3 >= 1)
    {
      v3 = 0;
      do
      {
        v7 = *a2++;
        v8 = sub_100068B30(a1, v7);
        if (v8)
        {
          if (!v3)
          {
            v3 = objc_alloc_init(BKTouchContactSet);
          }

          sub_10006863C(v3, v8);
        }

        --v4;
      }

      while (v4);
    }
  }

  return v3;
}

BOOL sub_100068CA4(_BOOL8 result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    v3 = *(a2 + 8);
    result = sub_100068754(result, v3);
    if (result)
    {
      if (v3 == v2[32])
      {
        v2[32] = 0;
        if (v3 <= 29 && v2[31] >= 1)
        {
          while (!v2[v3 + 1])
          {
            if (++v3 == 30)
            {
              goto LABEL_10;
            }
          }

          v2[32] = v3;
        }
      }

LABEL_10:
      if (v3 == v2[33])
      {
        v2[33] = 0;
        if ((v3 & 0x8000000000000000) == 0 && v2[31] >= 1)
        {
          while (!v2[v3 + 1])
          {
            if (v3-- <= 0)
            {
              return result;
            }
          }

          v2[33] = v3;
        }
      }
    }
  }

  return result;
}

void sub_1000691E0(uint64_t a1)
{
  v1 = objc_alloc(*(a1 + 32));
  v4 = objc_alloc_init(BKHIDHapticFeedbackInterface);
  v2 = [v1 initWithHIDHapticFeedbackInterface:v4];
  v3 = qword_100126020;
  qword_100126020 = v2;
}

id sub_10006AB80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    a3 = *(a3 + 24);
  }

  return [v4 _lock_evaluateDisplay:a3 reason:*(a1 + 40)];
}

int64_t sub_10006CC1C(id a1, BKNamespaceNode *a2)
{
  v2 = [(BKNamespaceNode *)a2 object];
  v3 = [v2 renderer];
  [v3 locationDidChange];

  return 0;
}

void sub_10006CE68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10006CE80(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10006CE98(uint64_t a1, void *a2)
{
  v7 = a2;
  v4 = [v7 object];
  v5 = [v4 renderer];
  v6 = [v5 shouldRenderWithSupernode];

  if ((v6 & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

int64_t sub_10006D628(id a1, BKNamespaceNode *a2)
{
  v2 = [(BKNamespaceNode *)a2 object];
  v3 = [v2 renderer];

  if ([v3 shouldRenderWithSupernode])
  {
    v4 = 0;
  }

  else
  {
    [v3 didAddAnnotation];
    v4 = 1;
  }

  return v4;
}

id sub_10006D91C(uint64_t a1)
{
  [CATransaction setDisableActions:1];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  v2 = +[BKDisplayController sharedInstance];
  v3 = *(*(a1 + 32) + 64);
  v4 = sub_100005110();
  v5 = sub_100005168(v4);
  if (v2)
  {
    [v2 transformLayerPropertiesForDisplay:v3 displayInterfaceOrientation:v5];
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v9 = 0u;
  }

  v6 = *(*(a1 + 32) + 88);
  v8[0] = v9;
  v8[1] = v10;
  v8[2] = v11;
  [v6 setAffineTransform:v8];
  [*(*(a1 + 32) + 88) setBounds:{v12, v13}];
  return [*(a1 + 32) _lock_locationDidChanges];
}

void sub_10006DB60(uint64_t a1)
{
  [CATransaction setDisableActions:1];
  v2 = +[NSMutableArray array];
  v3 = [*(*(a1 + 32) + 56) nodeAtKeyPath:*(a1 + 40)];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10006DE18;
  v24[3] = &unk_1000FC118;
  v4 = v2;
  v25 = v4;
  [v3 enumerateNodesWithOptions:3 usingBlock:v24];
  v5 = [*(a1 + 32) _lock_supernodeForRenderingAtKeyPath:*(a1 + 40)];
  [*(*(a1 + 32) + 56) removeNodeAtKeyPath:*(a1 + 40)];
  v6 = *(a1 + 56);
  if (v6 > 0.0 && *(a1 + 48))
  {
    v7 = dispatch_time(0, (v6 * 1000000000.0));
    v8 = *(a1 + 48);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10006DEF4;
    v18[3] = &unk_1000FD128;
    v18[4] = *(a1 + 32);
    v19 = v4;
    dispatch_after(v7, v8, v18);
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = v4;
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        v13 = 0;
        do
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(a1 + 32);
          v15 = [*(*(&v20 + 1) + 8 * v13) object];
          [v14 _lock_removeAnnotation:v15];

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v20 objects:v26 count:16];
      }

      while (v11);
    }
  }

  if (v5 != v3)
  {
    v16 = [v5 object];
    v17 = [v16 renderer];

    [v17 didRemoveSubannotations];
  }
}

uint64_t sub_10006DE18(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1000525A0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 name];
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "  remove %{public}@", &v7, 0xCu);
  }

  [*(a1 + 32) addObject:v3];
  return 0;
}

void sub_10006DEF4(uint64_t a1)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10006DF84;
  v5[3] = &unk_1000FD128;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  [v2 performSynchronizedWithCATransaction:v5];
}

void sub_10006DF84(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        v8 = [*(*(&v9 + 1) + 8 * v6) object];
        [v7 _lock_removeAnnotation:v8];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

void sub_10006E164(uint64_t a1)
{
  [CATransaction setDisableActions:1];
  [*(a1 + 32) setAnnotationController:*(a1 + 40)];
  v2 = [*(*(a1 + 40) + 56) objectAtKeyPath:*(a1 + 48)];
  v3 = v2;
  if (v2)
  {
    if ([v2 isEqual:*(a1 + 32)])
    {
      goto LABEL_9;
    }

    [*(a1 + 40) _lock_removeAnnotation:v3];
  }

  v4 = sub_1000525A0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 48);
    v6 = *(a1 + 32);
    v12 = 138543618;
    v13 = v5;
    v14 = 2114;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "set %{public}@ to %{public}@", &v12, 0x16u);
  }

  v7 = [*(*(a1 + 40) + 56) setObject:*(a1 + 32) atKeyPath:*(a1 + 48)];
  [*(a1 + 32) setNamespaceNode:v7];
  v8 = [*(a1 + 40) _lock_supernodeForRenderingAtKeyPath:*(a1 + 48)];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 object];
    v11 = [v10 renderer];

    [v11 didAddAnnotation];
  }

LABEL_9:
}

void sub_10006E3BC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) nodeAtKeyPath:*(a1 + 40)];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10006E464;
  v3[3] = &unk_1000FC118;
  v4 = *(a1 + 48);
  [v2 enumerateNodesWithOptions:3 usingBlock:v3];
}

uint64_t sub_10006E464(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 object];
  [v2 addObject:v3];

  return 0;
}

void sub_10006E5B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006E5D0(void *a1)
{
  v2 = [*(a1[4] + 56) objectAtKeyPath:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t sub_10006F69C(uint64_t a1, void *a2)
{
  v3 = [a2 object];
  v4 = [v3 renderer];
  v5 = [v4 shouldRenderWithSupernode];

  if (v5)
  {
    [*(a1 + 32) addObject:v3];
    v6 = 0;
  }

  else
  {
    v7 = [v3 renderer];
    [v7 regenerateLayerTree];

    v6 = 1;
  }

  return v6;
}

void sub_10006FD64(id a1)
{
  v1 = BSSystemRootDirectory();
  v2 = [v1 stringByAppendingPathComponent:@"System/Library/AccessibilityBundles/BackBoard.axbundle"];
  v3 = [NSBundle bundleWithPath:v2];

  if ([v3 load])
  {
    [objc_msgSend(v3 "principalClass")];
  }
}

id sub_10006FF94(uint64_t a1)
{
  v2 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 11) withName:@"isAlternateShell" ifEqualTo:1];
  v3 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 9) withName:@"checkedIn" ifEqualTo:1];
  v4 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 8) withName:@"pendingCheckIn" ifEqualTo:1];
  v5 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 10) withName:@"finishedStartup" ifEqualTo:1];
  if (![*(*(a1 + 40) + 16) watchdogType])
  {
    v6 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 12) withName:@"wasAlive"];
  }

  result = [*(a1 + 32) hasDebugStyle];
  if (result)
  {
    return [*(a1 + 32) appendObject:*(*(a1 + 40) + 24) withName:@"connection"];
  }

  return result;
}

id sub_100070110(id a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = +[BSDescriptionStyle succinctStyle];
    v1 = [BSDescriptionStream descriptionForRootObject:v1 withStyle:v2];
  }

  return v1;
}

void sub_100070188(uint64_t a1, int a2)
{
  if (a1 && [*(a1 + 16) watchdogType] == 1)
  {
    v5 = [*(a1 + 16) jobLabel];
    v4 = v5;
    sub_10002BCBC([v5 UTF8String], a2);
  }
}

void sub_100070E24(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(*(a1 + 32) + 32);
  v4 = __clz(__rbit64(v3));
  v5 = __clz(v3);
  v6 = 63 - v5;
  if (v4 <= (63 - v5))
  {
    v7 = 64 - v5;
    v8 = 63 - v5;
    do
    {
      if ((*(*(a1 + 32) + 32) >> v4))
      {
        if (v8 == v4)
        {
          [v9 appendFormat:@"%d", v6];
        }

        else
        {
          [v9 appendFormat:@"%d ", v4];
        }
      }

      ++v4;
    }

    while (v7 != v4);
  }
}

id sub_1000712BC(id a1, BKEventStatistic *a2)
{
  v2 = [(BKEventStatistic *)a2 copy];

  return v2;
}

void sub_100071440(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000714F4;
  v6[3] = &unk_1000FD128;
  v7 = v3;
  v8 = v4;
  v5 = v3;
  [v8 appendProem:0 block:v6];
}

void sub_1000714F4(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(a1 + 40) appendObject:*(*(&v8 + 1) + 8 * v6) withName:{0, v8}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

id sub_1000715F4(id a1, NSArray *a2)
{
  v2 = [(NSArray *)a2 bs_filter:&stru_1000FC198];
  if ([v2 count])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_100071784(uint64_t a1)
{
  if ((*(*(a1 + 32) + 66) & 1) == 0)
  {
    BSAbsoluteMachTimeNow();
    v3 = v2;
    (*(*(a1 + 40) + 16))();
    v4 = *(a1 + 32);
    if (*(v4 + 48))
    {
      [*(v4 + 48) invalidate];
      v5 = *(a1 + 32);
      v6 = *(v5 + 48);
      *(v5 + 48) = 0;

      v4 = *(a1 + 32);
    }

    if (*(v4 + 64) == 1)
    {
      *(v4 + 40) = v3;
      *(*(a1 + 32) + 64) = 0;
      v4 = *(a1 + 32);
    }

    if (v3 - *(v4 + 40) >= 32.0)
    {

      sub_100003C70(v4);
    }

    else
    {
      v7 = [[BSAbsoluteMachTimer alloc] initWithIdentifier:@"BKEventStatisticsLogging"];
      v8 = *(a1 + 32);
      v9 = *(v8 + 48);
      *(v8 + 48) = v7;

      objc_initWeak(&location, *(a1 + 32));
      v10 = *(a1 + 32);
      v11 = *(v10 + 48);
      v12 = *(v10 + 56);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100071934;
      v13[3] = &unk_1000FC2D8;
      objc_copyWeak(&v14, &location);
      [v11 scheduleWithFireInterval:v12 leewayInterval:v13 queue:8.0 handler:0.5];
      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }
  }
}

void sub_100071918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100071934(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    sub_100003C70(WeakRetained);
    WeakRetained = v2;
  }
}

void sub_100071AF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100071B18(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[7];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100071BDC;
    v7[3] = &unk_1000FD128;
    v8 = v3;
    v9 = v5;
    dispatch_async(v6, v7);
  }
}

void sub_100071BDC(uint64_t a1)
{
  if (([*(a1 + 32) isActive] & 1) == 0)
  {
    v2 = *(a1 + 40);

    sub_1000037C8(v2);
  }
}

void sub_100071C28(id a1)
{
  v1 = dispatch_queue_create("com.apple.backboard.BKEventStatistics", 0);
  v2 = qword_100126040;
  qword_100126040 = v1;
}

uint64_t sub_100072024(uint64_t a1)
{
  v2 = BKLogSystemShell();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Killing %{public}@.", &v5, 0xCu);
  }

  return kill([*(a1 + 32) pid], 9);
}

uint64_t sub_100072ADC(uint64_t a1)
{
  [*(a1 + 32) _lock_completeCheckInForShell:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void sub_100073058(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v9;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        v7 = BKLogSystemShell();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v13 = v6;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Killing %{public}@.", buf, 0xCu);
        }

        kill([v6 pid], 9);
      }

      v3 = [v1 countByEnumeratingWithState:&v8 objects:v14 count:16];
    }

    while (v3);
  }
}

BKSystemShellDescriptor *__cdecl sub_1000731C0(id a1, BKSystemShellClient *a2)
{
  if (a2)
  {
    return a2->_descriptor;
  }

  else
  {
    return 0;
  }
}

BKSystemShellDescriptor *__cdecl sub_1000731D4(id a1, BKSystemShellClient *a2)
{
  if (a2)
  {
    return a2->_descriptor;
  }

  else
  {
    return 0;
  }
}

id sub_100074414(id a1, BKSystemShellClient *a2)
{
  if (a2)
  {
    return a2->_descriptor;
  }

  else
  {
    return 0;
  }
}

id sub_100074428(id a1, BKSystemShellClient *a2)
{
  if (a2)
  {
    return a2->_descriptor;
  }

  else
  {
    return 0;
  }
}

id sub_100074498(id a1, BKSystemShellClient *a2)
{
  if (a2)
  {
    return a2->_descriptor;
  }

  else
  {
    return 0;
  }
}

id sub_100074520(id a1, BKSystemShellClient *a2)
{
  if (a2)
  {
    return a2->_descriptor;
  }

  else
  {
    return 0;
  }
}

void sub_1000747E0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) primarySystemShell];
  v4 = [v2 appendObject:v3 withName:@"systemApp"];

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) systemShells];
  [v5 appendArraySection:v6 withName:@"connectedSystemApps" skipIfEmpty:1];
}

void sub_100074A90(id a1)
{
  v1 = BSDispatchQueueCreateWithQualityOfService();
  v2 = qword_100126060;
  qword_100126060 = v1;
}

void sub_100074AD8(id a1)
{
  v1 = objc_alloc_init(BKSystemShellSentinel);
  v2 = qword_100126048;
  qword_100126048 = v1;
}

id sub_100074E6C(uint64_t a1)
{
  BSAbsoluteMachTimeNow();
  v3 = *(a1 + 32);
  v4 = v3[5];
  if (v4 <= 0.0 || v4 <= v2)
  {

    return [v3 _queue_invalidate];
  }

  else
  {

    return [v3 _queue_setTimerWithTimeIntervalSinceNow:?];
  }
}

void sub_1000751DC(id a1)
{
  Serial = BSDispatchQueueCreateSerial();
  v2 = qword_100126070;
  qword_100126070 = Serial;
}

void sub_100075268(id a1)
{
  v1 = qword_100126068;
  if (!qword_100126068)
  {
    v2 = [BKDisplayBrightnessUpdateTransaction alloc];
    v3 = +[BKDisplayBrightnessUpdateTransactionManager sharedInstance];
    v4 = [(BKDisplayBrightnessUpdateTransaction *)v2 initWithIdentifier:@"(implicit)" transactionManager:v3];
    v5 = qword_100126068;
    qword_100126068 = v4;

    v1 = qword_100126068;
  }

  [v1 _queue_updateExpirationTimeWithIntervalSinceNow:1.0];
}

void sub_100075A30(id a1)
{
  v1 = [BKDisplayBrightnessUpdateTransactionManager alloc];
  v4 = +[BKDisplayBrightnessController sharedInstance];
  v2 = [(BKDisplayBrightnessUpdateTransactionManager *)v1 _initWithBrightnessController:v4];
  v3 = qword_100126080;
  qword_100126080 = v2;
}

id sub_100075BEC(uint64_t a1)
{
  v2 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 14) withName:@"shouldActivateByGesture" ifEqualTo:1];
  v3 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 64) withName:@"transport" skipIfNil:1];
  v4 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 56) withName:@"keyboardLanguage" skipIfNil:1];
  v5 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 48) withName:@"keyboardLayout" skipIfNil:1];
  v6 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 72) withName:@"exclusivityIdentifier" skipIfNil:1];
  v7 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 80) withName:@"platformInputModeConfiguration" skipIfNil:1];
  v8 = [*(a1 + 32) appendInt:*(*(a1 + 40) + 12) withName:@"countryCode"];
  v9 = [*(a1 + 32) appendInt:*(*(a1 + 40) + 16) withName:@"keyboardType"];
  v10 = [*(a1 + 32) appendInteger:*(*(a1 + 40) + 40) withName:@"subinterfaceID"];
  v11 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 8) withName:@"capsLockOn" ifEqualTo:1];
  v12 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 9) withName:@"capsLockRomanSwitchMode" ifEqualTo:1];
  v13 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 10) withName:@"capsLockKeyHasLanguageSwitchLabel" ifEqualTo:1];
  v14 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 11) withName:@"globeKeyLabelHasGlobeSymbol" ifEqualTo:1];
  return [*(a1 + 32) appendPointer:*(*(a1 + 40) + 88) withName:@"gsKeyboard"];
}

id sub_100075E20(void *a1)
{
  v3 = a1[15];
  if (!v3)
  {
LABEL_4:

    return v3;
  }

  if (a1[16])
  {
    v4 = a1[17];
    v3 = BKSHIDServicesProductIdentifierFromServiceProperties();
    v1 = vars8;
    goto LABEL_4;
  }

  v3 = 0;

  return v3;
}

id sub_100075E78(void *a1)
{
  if (a1[15] && a1[16])
  {
    v1 = a1[17];
    v2 = a1[15];
    v3 = BKSHIDServicesProductIdentifierFromServiceProperties();
    v4 = +[BKSDefaults externalDefaults];
    v5 = [v4 keyboardDefaults];

    v6 = [v5 modifierKeyRemapping];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 objectForKey:v3];
      v9 = objc_opt_class();
      v10 = v8;
      if (v9)
      {
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }

      v13 = v11;

      if ([v13 count])
      {
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v12 = v13;
        v14 = [v12 countByEnumeratingWithState:&v32 objects:v38 count:16];
        if (v14)
        {
          v15 = v14;
          v29 = v13;
          v30 = v7;
          v31 = v5;
          v16 = *v33;
          while (2)
          {
            for (i = 0; i != v15; i = i + 1)
            {
              if (*v33 != v16)
              {
                objc_enumerationMutation(v12);
              }

              v18 = *(*(&v32 + 1) + 8 * i);
              v19 = objc_opt_class();
              v20 = v18;
              if (v19)
              {
                if (objc_opt_isKindOfClass())
                {
                  v21 = v20;
                }

                else
                {
                  v21 = 0;
                }
              }

              else
              {
                v21 = 0;
              }

              v22 = v21;

              v23 = [v22 allKeys];
              if ([v23 count] != 2)
              {
                goto LABEL_30;
              }

              v24 = [v22 objectForKey:@"HIDKeyboardModifierMappingSrc"];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {

LABEL_30:
LABEL_31:
                v27 = BKLogKeyboard();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  v37 = v22;
                  _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "invalid key remapping dictionary: %{public}@", buf, 0xCu);
                }

                v12 = 0;
                goto LABEL_34;
              }

              v25 = [v22 objectForKey:@"HIDKeyboardModifierMappingDst"];
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              if ((isKindOfClass & 1) == 0)
              {
                goto LABEL_31;
              }
            }

            v15 = [v12 countByEnumeratingWithState:&v32 objects:v38 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }

LABEL_34:
          v5 = v31;
          v13 = v29;
          v7 = v30;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t sub_1000761BC(void *a1)
{
  if (a1)
  {
    sub_100075E78(a1);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    obj = v18 = 0u;
    v1 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v1)
    {
      v2 = v1;
      v3 = 0;
      v4 = 0;
      v5 = *v16;
      do
      {
        for (i = 0; i != v2; i = i + 1)
        {
          if (*v16 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v15 + 1) + 8 * i);
          v8 = [v7 objectForKeyedSubscript:@"HIDKeyboardModifierMappingSrc"];
          v9 = [v8 unsignedLongLongValue];

          v10 = [v7 objectForKeyedSubscript:@"HIDKeyboardModifierMappingDst"];
          v11 = [v10 unsignedLongLongValue];

          v4 |= v9 == 0x700000039;
          v3 |= v11 == 0x700000039;
        }

        v2 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v2);
      v12 = v4 ^ 1 | v3;
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_100076354(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (*(a1 + 14) != 1)
  {
    return 1;
  }

  v1 = [*(a1 + 24) propertyForKey:@"KeyboardEnabled"];
  v2 = objc_opt_class();
  v3 = v1;
  if (v2)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = v4;

  if (v6)
  {
    v5 = [v6 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_100076410(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 && v3)
  {
    v11 = v3;
    v5 = [v3 copy];
    v6 = *(a1 + 48);
    *(a1 + 48) = v5;

    if (*(a1 + 88))
    {
      v7 = [v11 isEqualToString:GSKeyboardGetLayout()];
      v4 = v11;
      if (v7)
      {
        goto LABEL_10;
      }

      if (*(a1 + 88))
      {
        GSKeyboardRelease();
      }
    }

    v8 = *(a1 + 16);
    if (v8 <= 2)
    {
      v9 = dword_1000BFC00[v8];
    }

    v10 = *(a1 + 12);
    *(a1 + 88) = GSKeyboardCreateWithCountryCode();
    sub_1000764D8(a1);
    v4 = v11;
  }

LABEL_10:
}

void sub_1000764D8(uint64_t a1)
{
  if (*(a1 + 88))
  {
    GSKeyboardGetModifierState();
    v2 = *(a1 + 8);
    if ((BSEqualBools() & 1) == 0)
    {
      v12 = 0;
      v3 = *(a1 + 88);
      GSKeyboardTranslateKeyExtendedCommandWithUsagePage();
      v4 = *(a1 + 88);
      GSKeyboardTranslateKeyExtendedCommandWithUsagePage();
      v5 = *(a1 + 88);
      v6 = GSKeyboardGetModifierState() & 0x40000;
      if ((BSEqualBools() & 1) == 0)
      {
        v8 = [NSString stringWithFormat:@"BK capslock: %{BOOL}u != GS capslock: %{BOOL}u", v2, v6 >> 18, &v12, 0, &v12, 0, 7];
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v9 = NSStringFromSelector("_updateGSCapsLockState");
          v10 = objc_opt_class();
          v11 = NSStringFromClass(v10);
          *buf = 138544642;
          v14 = v9;
          v15 = 2114;
          v16 = v11;
          v17 = 2048;
          v18 = a1;
          v19 = 2114;
          v20 = @"BKKeyboardInfo.m";
          v21 = 1024;
          v22 = 356;
          v23 = 2114;
          v24 = v8;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        [v8 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x100076728);
      }

      v7 = BKLogKeyboard();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v14) = v6 >> 18;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "correcting GS capslock state to: %{BOOL}u", buf, 8u);
      }
    }
  }
}

void sub_100076730(uint64_t a1, int a2)
{
  if (a1 && *(a1 + 9) != a2)
  {
    *(a1 + 9) = a2;
    v5 = *(a1 + 24);
    [v5 setProperty:&__kCFBooleanFalse forKey:@"HIDCapsLockState"];
    if (a2)
    {
      v4 = &__kCFBooleanTrue;
    }

    else
    {
      v4 = &__kCFBooleanFalse;
    }

    [v5 setProperty:v4 forKey:@"HIDCapsLockLEDInhibit"];
    if (*(a1 + 8))
    {
      *(a1 + 8) = 0;
      [*(a1 + 24) setElementValue:0 forUsagePage:8 usage:2];
    }

    sub_1000764D8(a1);
  }
}

void sub_10007680C(uint64_t a1, double a2)
{
  if (a1)
  {
    v3 = *(a1 + 24);
    if (a2 != -1.0)
    {
      a2 = a2 * 1000.0;
    }

    if (a2 == -1.0 || a2 >= 0.0 && a2 <= 3000.0)
    {
      v4 = [NSNumber numberWithInt:a2];
      [v3 setProperty:v4 forKey:@"CapsLockDelayOverride"];
    }

    else
    {
      v4 = BKLogKeyboard();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v5[0] = 67109120;
        v5[1] = a2;
        _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "setCapsLockDelayOverride called with invalid interval %d", v5, 8u);
      }
    }
  }
}

void *sub_100076938(void *a1)
{
  if (a1)
  {
    a1 = sub_100075E20(a1);
    v1 = vars8;
  }

  return a1;
}

id sub_100076968(void *a1)
{
  if (a1)
  {
    var28[0] = _NSConcreteStackBlock;
    var28[1] = 3221225472;
    var28[2] = sub_1000769F8;
    var28[3] = &unk_1000FC518;
    var28[4] = a1;
    a1 = [BKSHIDKeyboardDeviceProperties build:var28];
    v1 = var28[6];
  }

  return a1;
}

void sub_1000769F8(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 24);
  v4 = a2;
  [v4 setSenderID:{objc_msgSend(v3, "senderID")}];
  [v4 setTransport:*(*(a1 + 32) + 64)];
  [v4 setLayout:*(*(a1 + 32) + 48)];
  [v4 setLanguage:*(*(a1 + 32) + 56)];
  [v4 setExclusivityIdentifier:*(*(a1 + 32) + 72)];
  [v4 setPlatformInputModeConfiguration:*(*(a1 + 32) + 80)];
  [v4 setCountryCode:*(*(a1 + 32) + 12)];
  [v4 setStandardType:*(*(a1 + 32) + 16)];
  [v4 setSubinterfaceID:*(*(a1 + 32) + 40)];
  [v4 setCapsLockKeyHasLanguageSwitchLabel:*(*(a1 + 32) + 10)];
  [v4 setGlobeKeyLabelHasGlobeSymbol:*(*(a1 + 32) + 11)];
}

void sub_100076C94(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setPid:{objc_msgSend(v2, "pid")}];
}

id sub_1000771E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = (*(*(*(a1 + 32) + 40) + 16))();
  if (v4)
  {
    v5 = BKLogUISensor();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543618;
      v8 = v4;
      v9 = 2114;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "instantiated %{public}@ for service:%{public}@", &v7, 0x16u);
    }

    [v3 addDisappearanceObserver:*(a1 + 32) queue:&_dispatch_main_q];
  }

  return v4;
}

void sub_100077A98(uint64_t a1)
{
  if (a1)
  {
    [NSArray arrayWithObject:a1];
  }

  else
  {
    [qword_100126090 allKeys];
  }
  v1 = ;
  [v1 enumerateObjectsUsingBlock:&stru_1000FC5A8];
}

void sub_100077B04(id a1, NSString *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  v5 = CFPreferencesCopyAppValue(v4, kCFPreferencesCurrentApplication);
  if (v5)
  {
    v6 = v5;
    v7 = [qword_100126090 objectForKey:v4];
    if (v7)
    {
      v8 = v7;
      v9 = +[BKDisplayBrightnessController sharedInstance];
      [v9 setProperty:v6 forKey:v8];

      if ([(__CFString *)v4 isEqualToString:BKDefaultKeyALSEnabled])
      {
        v10 = v6 == kCFBooleanFalse;
      }

      else
      {
        v10 = 0;
      }

      if (v10)
      {
        v11 = BKLogDetailed();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *v12 = 0;
          _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "resetting ALS curve", v12, 2u);
        }

        sub_100077C1C();
      }

      sub_100077C70();
    }

    CFRelease(v6);
  }
}

void sub_100077C1C()
{
  v0 = +[BKDisplayBrightnessController sharedInstance];
  [v0 setProperty:0 forKey:@"ALSResetCurve"];
}

void sub_100077C70()
{
  v0 = +[BKDisplayBrightnessController sharedInstance];
  v4 = [v0 propertyForKey:@"ALSUserPreference"];

  v1 = +[NSNull null];
  v2 = [v4 isEqual:v1];

  if (v2)
  {

    v4 = 0;
  }

  v3 = +[BKSDefaults localDefaults];
  [v3 setALSUserPreferences:v4];
}

BOOL sub_100077D2C()
{
  v0 = +[BKSDefaults localDefaults];
  v1 = [v0 ALSUserPreferences];

  if (v1)
  {
    v2 = +[BKDisplayBrightnessController sharedInstance];
    [v2 setProperty:v1 forKey:@"ALSUserPreference"];
  }

  return v1 != 0;
}

void sub_100077DB8(int a1, uint64_t a2, CFArrayRef theArray)
{
  if (a2 == 1)
  {
    goto LABEL_6;
  }

  if (a2 == 128 || a2 == 32)
  {
    Count = CFArrayGetCount(theArray);
    if (Count <= 0)
    {
      __assert_rtn("_wrapRunLoopWithAutoreleasePoolHandler", "BKAutoreleasePoolRunLoopSupport.m", 27, "count > 0");
    }

    v6 = Count - 1;
    CFArrayGetValueAtIndex(theArray, Count - 1);
    NSPopAutoreleasePool();
    CFArrayRemoveValueAtIndex(theArray, v6);
    if (a2 == 32)
    {
LABEL_6:
      v7 = NSPushAutoreleasePool();

      CFArrayAppendValue(theArray, v7);
    }
  }
}

id sub_100078790(id a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    a1 = sub_100078828(a1);
    if (a1)
    {
      v4 = [v3[1] copy];
      v5 = *(a1 + 1);
      *(a1 + 1) = v4;

      v6 = [v3[2] copy];
      v7 = *(a1 + 2);
      *(a1 + 2) = v6;

      v8 = [v3[3] copy];
      v9 = *(a1 + 3);
      *(a1 + 3) = v8;

      *(a1 + 8) = *(v3 + 8);
      *(a1 + 5) = v3[5];
      *(a1 + 6) = v3[6];
    }
  }

  return a1;
}

id sub_100078828(id result)
{
  if (result)
  {
    v1 = result;
    v2 = objc_opt_class();
    if (v2 != objc_opt_class())
    {
      v3 = objc_opt_class();
      if (v3 != objc_opt_class())
      {
        v4 = [NSString stringWithFormat:@"BKSystemShellDescriptor cannot be subclassed"];
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v5 = NSStringFromSelector("_init");
          v6 = objc_opt_class();
          v7 = NSStringFromClass(v6);
          *buf = 138544642;
          v10 = v5;
          v11 = 2114;
          v12 = v7;
          v13 = 2048;
          v14 = v1;
          v15 = 2114;
          v16 = @"BKSystemShellDescriptor.m";
          v17 = 1024;
          v18 = 44;
          v19 = 2114;
          v20 = v4;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        [v4 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x1000789C8);
      }
    }

    v8.receiver = v1;
    v8.super_class = BKSystemShellDescriptor;
    return objc_msgSendSuper2(&v8, "init");
  }

  return result;
}

void sub_1000791CC(void *a1, char a2)
{
  v3 = a1;
  [v3 appendString:@"{"];
  v4 = a2 & 1;
  if (a2)
  {
    [v3 appendString:@"open"];
    v5 = v3;
    v6 = v5;
    if ((a2 & 4) == 0)
    {

      v7 = v6;
      if ((a2 & 8) == 0)
      {
        goto LABEL_13;
      }

LABEL_10:
      [v3 appendString:{@", "}];
      goto LABEL_11;
    }

    [v5 appendString:{@", "}];
LABEL_9:
    [v3 appendString:@"flap1"];

    v11 = v3;
    if ((a2 & 8) == 0)
    {
LABEL_12:
      v4 = 1;
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  v8 = v3;
  if ((a2 & 4) != 0)
  {
    goto LABEL_9;
  }

  v9 = v8;

  v10 = v9;
  if ((a2 & 8) != 0)
  {
LABEL_11:
    [v3 appendString:@"flap2"];
    goto LABEL_12;
  }

LABEL_13:

  v12 = v3;
  if ((a2 & 0x10) != 0)
  {
    if (v4)
    {
      [v12 appendString:{@", "}];
    }

    [v12 appendString:@"flap3"];
  }

  [v12 appendString:@"}"];
}

id sub_100079A28(char a1)
{
  v2 = objc_alloc_init(NSMutableString);
  sub_1000791CC(v2, a1);

  return v2;
}

void sub_10007A410(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *sub_10007A434(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [BSDescriptionStream descriptionForRootObject:WeakRetained];
  }

  else
  {
    v2 = @"<nil>";
  }

  return v2;
}

uint64_t sub_10007A9D0(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  v8 = a3;
  v9 = v8;
  if (*a1)
  {
    v10 = [v8 senderID];
    if (v10 != [*a1 senderID])
    {
      v11 = BKLogMousePointer();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v15 = 138543362;
        Name = IOHIDEventTypeGetName();
        _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "ignoring %{public}@ event from a different sender during phased scroll", &v15, 0xCu);
      }

LABEL_15:

      v13 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    if ((a2 & 0x81) == 0)
    {
      v11 = BKLogMousePointer();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v15 = 138543362;
        Name = IOHIDEventTypeGetName();
        _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "ignoring %{public}@ non-begin-phase phased event; no established sender", &v15, 0xCu);
      }

      goto LABEL_15;
    }

    v12 = BKLogMousePointer();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v15 = 138543362;
      Name = IOHIDEventTypeGetName();
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%{public}@ sender locked", &v15, 0xCu);
    }

    objc_storeStrong(a1, a3);
  }

  *(a1 + 8) = a2;
  if (a2 == 1)
  {
    v13 = 1;
    *(a1 + 24) = 1;
    *(a1 + 16) = a4;
  }

  else
  {
    v13 = 1;
  }

LABEL_16:

  return v13;
}

uint64_t sub_10007AD00(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  v8 = a3;
  v9 = v8;
  if (*a1)
  {
    v10 = [v8 senderID];
    if (v10 != [*a1 senderID])
    {
      v11 = BKLogMousePointer();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v15 = 138543362;
        Name = IOHIDEventTypeGetName();
        _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "ignoring %{public}@ event from a different sender during phased scroll", &v15, 0xCu);
      }

LABEL_15:

      v13 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    if ((a2 & 0x81) == 0)
    {
      v11 = BKLogMousePointer();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v15 = 138543362;
        Name = IOHIDEventTypeGetName();
        _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "ignoring %{public}@ non-begin-phase phased event; no established sender", &v15, 0xCu);
      }

      goto LABEL_15;
    }

    v12 = BKLogMousePointer();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v15 = 138543362;
      Name = IOHIDEventTypeGetName();
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%{public}@ sender locked", &v15, 0xCu);
    }

    objc_storeStrong(a1, a3);
  }

  *(a1 + 8) = a2;
  if (a2 == 1)
  {
    v13 = 1;
    *(a1 + 24) = 1;
    *(a1 + 16) = a4;
  }

  else
  {
    v13 = 1;
  }

LABEL_16:

  return v13;
}

uint64_t sub_10007AF3C(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  v8 = a3;
  v9 = v8;
  if (*a1)
  {
    v10 = [v8 senderID];
    if (v10 != [*a1 senderID])
    {
      v11 = BKLogMousePointer();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v15 = 138543362;
        Name = IOHIDEventTypeGetName();
        _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "ignoring %{public}@ event from a different sender during phased scroll", &v15, 0xCu);
      }

LABEL_15:

      v13 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    if ((a2 & 0x81) == 0)
    {
      v11 = BKLogMousePointer();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v15 = 138543362;
        Name = IOHIDEventTypeGetName();
        _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "ignoring %{public}@ non-begin-phase phased event; no established sender", &v15, 0xCu);
      }

      goto LABEL_15;
    }

    v12 = BKLogMousePointer();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v15 = 138543362;
      Name = IOHIDEventTypeGetName();
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%{public}@ sender locked", &v15, 0xCu);
    }

    objc_storeStrong(a1, a3);
  }

  *(a1 + 8) = a2;
  if (a2 == 1)
  {
    v13 = 1;
    *(a1 + 24) = 1;
    *(a1 + 16) = a4;
  }

  else
  {
    v13 = 1;
  }

LABEL_16:

  return v13;
}

uint64_t sub_10007B178(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  v8 = a3;
  v9 = v8;
  if (*a1)
  {
    v10 = [v8 senderID];
    if (v10 != [*a1 senderID])
    {
      v11 = BKLogMousePointer();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v15 = 138543362;
        Name = IOHIDEventTypeGetName();
        _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "ignoring %{public}@ event from a different sender during phased scroll", &v15, 0xCu);
      }

LABEL_15:

      v13 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    if ((a2 & 0x81) == 0)
    {
      v11 = BKLogMousePointer();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v15 = 138543362;
        Name = IOHIDEventTypeGetName();
        _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "ignoring %{public}@ non-begin-phase phased event; no established sender", &v15, 0xCu);
      }

      goto LABEL_15;
    }

    v12 = BKLogMousePointer();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v15 = 138543362;
      Name = IOHIDEventTypeGetName();
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%{public}@ sender locked", &v15, 0xCu);
    }

    objc_storeStrong(a1, a3);
  }

  *(a1 + 8) = a2;
  if (a2 == 1)
  {
    v13 = 1;
    *(a1 + 24) = 1;
    *(a1 + 16) = a4;
  }

  else
  {
    v13 = 1;
  }

LABEL_16:

  return v13;
}

double sub_10007BB28(uint64_t a1)
{
  if (!a1)
  {
    return 0.0;
  }

  v2 = [*(a1 + 24) count];
  if (v2 <= 0)
  {
    [*(a1 + 24) lastObject];
  }

  else
  {
    [*(a1 + 24) objectAtIndex:v2 >> 1];
  }
  v3 = ;
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

uint64_t sub_10007BBBC(double *a1, uint64_t a2, double a3)
{
  *(a1 + 1) = mach_absolute_time();
  v6 = *a1;
  result = BSMonotonicReferencedTimeFromMachTime();
  a1[2] = v8;
  *a1 = a2;
  v9 = v8 <= a3 * 1.5;
  if (v8 > a3 * 1.5)
  {
    v8 = a3;
  }

  v10 = a3 * 0.5;
  if (!v9 || v8 < v10)
  {
    if (v8 < v10)
    {
      v8 = a3;
    }

    a1[2] = v8;
  }

  return result;
}

id sub_10007CE28(uint64_t a1)
{
  if (a1)
  {
    v2 = [*(a1 + 40) mutableCopy];
    v3 = [*(a1 + 64) mutableCopy];
    v4 = v3;
    if (*(a1 + 56))
    {
      [v3 removeIndexes:?];
    }

    [v2 removeIndexes:v4];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_10007CEC4(int a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a1)
  {
    if (!v5)
    {
      v6 = objc_alloc_init(NSMutableIndexSet);
    }

    [v6 addIndex:a2];
  }

  else
  {
    [v5 removeIndex:a2];
  }

  v7 = v6;

  return v6;
}

id sub_10007CF4C()
{
  v0 = objc_alloc_init(NSMutableArray);
  IntegerValue = IOHIDEventGetIntegerValue();
  if ((IntegerValue & 0x80) != 0)
  {
    [v0 addObject:@"cancel"];
  }

  if (IntegerValue)
  {
    if (IOHIDEventGetIntegerValue())
    {
      v2 = @"range in";
    }

    else
    {
      v2 = @"range out";
    }

    [v0 addObject:v2];
  }

  if ((IntegerValue & 2) != 0)
  {
    if (IOHIDEventGetIntegerValue())
    {
      v3 = @"touch down";
    }

    else
    {
      v3 = @"touch up";
    }

    [v0 addObject:v3];
  }

  if ((IntegerValue & 0x20000) != 0)
  {
    [v0 addObject:@"tap"];
  }

  if ((IntegerValue & 0x200) != 0)
  {
    [v0 addObject:@"resting"];
  }

  if ((IntegerValue & 4) != 0)
  {
    [v0 addObject:@"move"];
  }

  if ((IntegerValue & 0x20) != 0)
  {
    [v0 addObject:@"identity"];
  }

  if ((IntegerValue & 0x40) != 0)
  {
    [v0 addObject:@"attribute"];
  }

  v4 = [v0 componentsJoinedByString:{@", "}];

  return v4;
}

__CFString *sub_10007D0C4(void *a1)
{
  v1 = a1;
  if ([v1 count])
  {
    +[NSMutableString string];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10007D224;
    v2 = v6[3] = &unk_1000FC738;
    v7 = v2;
    [v1 enumerateIndexesUsingBlock:v6];
    v3 = +[NSCharacterSet whitespaceCharacterSet];
    v4 = [v2 stringByTrimmingCharactersInSet:v3];
  }

  else
  {
    v4 = &stru_1001013E0;
  }

  return v4;
}

id sub_10007D354(id a1, NSMutableIndexSet *a2, _BKMouseDeviceEventState *a3)
{
  v4 = a2;
  v5 = sub_10007CE28(a3);
  [(NSMutableIndexSet *)v4 addIndexes:v5];

  return v4;
}

id sub_10007D968(id a1, NSNumber *a2, _BKMouseDeviceEventState *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(NSNumber *)v4 unsignedIntValue];
  if (v5)
  {
    buttonMask = v5->_buttonMask;
  }

  else
  {
    buttonMask = 0;
  }

  v8 = [NSNumber numberWithInteger:buttonMask | v6];

  return v8;
}

double sub_10007E228(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = 0.0;
  if (v1)
  {
    *(a1 + 48) = v1 - 1;
    v4 = *(a1 + 8);
    BSMonotonicReferencedTimeFromMachTime();
    v6 = v5 / *(a1 + 16);
    if (v6 <= 1.0)
    {
      v7 = *(a1 + 24);
      v8 = (v7 + *(a1 + 32)) * 0.500378425 + ((*(a1 + 32) - v7) * 1.0062109 + ((v7 + *(a1 + 32)) * -0.00454110206 + (*(a1 + 32) - v7) * -1.57015627 * (v6 + -0.5)) * (v6 + -0.5)) * (v6 + -0.5);
      v2 = v8 - *(a1 + 40);
      *(a1 + 40) = v8;
    }
  }

  return v2;
}

void sub_10007E2E4(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = *(a1 + 8);
    BSMonotonicReferencedTimeFromMachTime();
    v4 = v3 / *(a1 + 16);
    if (v4 <= 1.0)
    {
      v6 = *(a1 + 24);
      v7 = (v6 + *(a1 + 32)) * 0.500378425 + ((*(a1 + 32) - v6) * 1.0062109 + ((v6 + *(a1 + 32)) * -0.00454110206 + (*(a1 + 32) - v6) * -1.57015627 * (v4 + -0.5)) * (v4 + -0.5)) * (v4 + -0.5);
      v8 = *(a1 + 48);
      v9 = v7 - *(a1 + 40);
      *(a1 + 40) = v7;
      v10 = (v8 + *(a1 + 56)) * 0.500378425 + ((*(a1 + 56) - v8) * 1.0062109 + ((v8 + *(a1 + 56)) * -0.00454110206 + (*(a1 + 56) - v8) * -1.57015627 * (v4 + -0.5)) * (v4 + -0.5)) * (v4 + -0.5);
      v11 = v10 - *(a1 + 64);
      *(a1 + 64) = v10;
    }

    else
    {
      v5 = BKLogMousePointer();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v12 = 134217984;
        v13 = v4;
        _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "skipping interpolation: %g", &v12, 0xCu);
      }
    }

    --*(a1 + 72);
  }
}

uint64_t sub_10007F430(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7)
{
  result = sub_10007BBBC(a1, a2, a7);
  v13 = *(a1 + 32);
  *(a1 + 24) = v13;
  *(a1 + 32) = a3 + v13;
  v14 = *(a1 + 56);
  *(a1 + 48) = v14;
  *(a1 + 56) = a4 + v14;
  *(a1 + 72) = 3;
  *(a1 + 80) = a5 / a3;
  *(a1 + 88) = a6 / a4;
  return result;
}

void sub_10007F4C4(uint64_t a1, double a2)
{
  if (a1)
  {
    if ([*(a1 + 16) count] >= *(a1 + 8))
    {
      v4 = [*(a1 + 16) firstObject];
      [*(a1 + 16) removeObjectAtIndex:0];
      v5 = [*(a1 + 24) indexOfObject:v4 inSortedRange:0 options:objc_msgSend(*(a1 + 24) usingComparator:{"count"), 256, &stru_1000FC648}];
      if (v5 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v6 = [NSString stringWithFormat:@"this should exist"];
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v7 = NSStringFromSelector("addValue:");
          v8 = objc_opt_class();
          v9 = NSStringFromClass(v8);
          *buf = 138544642;
          v13 = v7;
          v14 = 2114;
          v15 = v9;
          v16 = 2048;
          v17 = a1;
          v18 = 2114;
          v19 = @"BKMousePointerEventAccumulator.mm";
          v20 = 1024;
          v21 = 93;
          v22 = 2114;
          v23 = v6;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        v10 = v6;
        [v6 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x10007F71CLL);
      }

      [*(a1 + 24) removeObjectAtIndex:v5];
    }

    v11 = [NSNumber numberWithDouble:a2];
    [*(a1 + 24) insertObject:v11 atIndex:{objc_msgSend(*(a1 + 24), "indexOfObject:inSortedRange:options:usingComparator:", v11, 0, objc_msgSend(*(a1 + 24), "count"), 1024, &stru_1000FC668)}];
    [*(a1 + 16) addObject:v11];
  }
}

void *sub_10007FEC8(void *result)
{
  if (result[7] == *(result[4] + 368))
  {
    v7 = v1;
    v8 = v2;
    v3 = result;
    v4 = BKLogMousePointer();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *v6 = 0;
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, " -> discrete scroll -- end phase", v6, 2u);
    }

    v5 = v3[5];
    if (v5)
    {
      *(v5 + 18) = 4;
    }

    return [v3[4] _terminateScrollingForSender:v3[6]];
  }

  return result;
}

void sub_10008038C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, objc_super a11)
{
  a11.super_class = BKMouseEventAccumulator;
  [(_Unwind_Exception *)&a11 dealloc];
  _Unwind_Resume(a1);
}

void sub_1000803D4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_100051748(a1);
  }

  _Unwind_Resume(a1);
}

id sub_1000804F0(id result, unsigned int a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    v6 = BKLogTouchEvents();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = [*(v5 + 8) senderID];
      v8 = [*(v5 + 8) displayUUID];
      v9 = 134218498;
      v10 = v7;
      v11 = 2114;
      v12 = v8;
      v13 = 2114;
      v14 = a3;
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Cancel all touches %llX - display:%{public}@ causedByTouchStream:%{public}@", &v9, 0x20u);
    }

    sub_100080928(v5, *(v5 + 112), a2, a3);
    return sub_100080DA8(v5, a3);
  }

  return result;
}

void sub_100080620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v6 = (a1 + 80);
    v7 = *(a1 + 80);
    v8 = v7;
    if ((a2 & 1) != 0 || a3)
    {
      if (!v7)
      {
        v12 = sub_1000525A0();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [*(a1 + 8) displayUUID];
          *buf = 138543362;
          v27 = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "annotations enabled for %{public}@", buf, 0xCu);
        }

        v14 = [BKTouchAnnotationController alloc];
        v15 = [*(a1 + 8) displayUUID];
        v8 = [(BKTouchAnnotationController *)v14 initWithDisplayUUID:v15];

        [*(a1 + 72) addObject:v8];
        objc_storeStrong(v6, v8);
      }

      [(BKTouchAnnotationController *)v8 setShouldVisualizeTouches:a2];
      v16 = [(BKTouchAnnotationController *)v8 shouldVisualizeHitTestRegions];
      [(BKTouchAnnotationController *)v8 setShouldVisualizeHitTestRegions:a3];
      if ((v16 & 1) == 0)
      {
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v17 = *(a1 + 72);
        v18 = [v17 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v18)
        {
          v19 = *v22;
          do
          {
            v20 = 0;
            do
            {
              if (*v22 != v19)
              {
                objc_enumerationMutation(v17);
              }

              [*(*(&v21 + 1) + 8 * v20) hitTestRegionsDidChange:{*(a1 + 176), v21}];
              v20 = v20 + 1;
            }

            while (v18 != v20);
            v18 = [v17 countByEnumeratingWithState:&v21 objects:v25 count:16];
          }

          while (v18);
        }
      }
    }

    else if (v7)
    {
      v9 = sub_1000525A0();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [*(a1 + 8) displayUUID];
        *buf = 138543362;
        v27 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "annotations disabled for %{public}@", buf, 0xCu);
      }

      v11 = *(a1 + 80);
      *(a1 + 80) = 0;

      [*(a1 + 72) removeObject:v8];
      [(BKTouchAnnotationController *)v8 setShouldVisualizeTouches:0];
      [(BKTouchAnnotationController *)v8 setShouldVisualizeHitTestRegions:0];
    }
  }
}

void sub_100080928(uint64_t a1, void *a2, unsigned int a3, uint64_t a4)
{
  v7 = a2;
  if (a3 == 2)
  {
    v8 = v7;
    v9 = sub_1000688E0(v7, &stru_1000FC7A0);

    v7 = v9;
  }

  v10 = v7;
  v11 = v10;
  if (v10)
  {
    v12 = v10[31];

    if (v12)
    {
      v39 = v11;
      v13 = BKLogTouchEvents();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [BSDescriptionStream descriptionForRootObject:v39];
        v15 = *(&off_1000FCA50 + a3);
        *buf = 138543874;
        v59 = v14;
        v60 = 2114;
        v61 = v15;
        v62 = 2114;
        v63 = a4;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "canceling paths %{public}@ -- %{public}@ (ts:%{public}@)", buf, 0x20u);
      }

      sub_100081370(a1, v39, 1, 0);
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v16 = *(a1 + 40);
      if (v16)
      {
        v16 = v16[3];
      }

      v17 = v16;
      v18 = [v17 countByEnumeratingWithState:&v51 objects:v57 count:16];
      if (v18)
      {
        v19 = *v52;
        do
        {
          v20 = 0;
          do
          {
            if (*v52 != v19)
            {
              objc_enumerationMutation(v17);
            }

            v21 = *(*(&v51 + 1) + 8 * v20);
            if (a3 != 2)
            {
              if (v21)
              {
LABEL_22:
                v24 = *(v21 + 48);
              }

              else
              {
                v24 = 0;
              }

              v25 = v24;
              sub_100081680(a1, v25);

              goto LABEL_24;
            }

            v22 = [*(*(&v51 + 1) + 8 * v20) isEqual:a4];
            if (v21)
            {
              v23 = v22;
            }

            else
            {
              v23 = 1;
            }

            if (v23 & 1) == 0 && (*(v21 + 9))
            {
              goto LABEL_22;
            }

LABEL_24:
            v20 = v20 + 1;
          }

          while (v18 != v20);
          v26 = [v17 countByEnumeratingWithState:&v51 objects:v57 count:16];
          v18 = v26;
        }

        while (v26);
      }

      v11 = v39;
      if (a3 != 2)
      {
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        obj = v39;
        v27 = [obj countByEnumeratingWithState:&v47 objects:v56 count:16];
        if (v27)
        {
          v41 = *v48;
          do
          {
            v42 = v27;
            for (i = 0; i != v42; i = i + 1)
            {
              if (*v48 != v41)
              {
                objc_enumerationMutation(obj);
              }

              v29 = *(*(&v47 + 1) + 8 * i);
              v30 = *(v29 + 32);
              v31 = v30 != 1 && v30 == 2;
              v32 = v30 == 1 || v30 == 2;
              *(v29 + 32) = 0;
              v43 = 0u;
              v44 = 0u;
              v45 = 0u;
              v46 = 0u;
              v33 = *(a1 + 72);
              v34 = [v33 countByEnumeratingWithState:&v43 objects:v55 count:16];
              if (v34)
              {
                v35 = *v44;
                do
                {
                  for (j = 0; j != v34; j = j + 1)
                  {
                    if (*v44 != v35)
                    {
                      objc_enumerationMutation(v33);
                    }

                    v37 = *(*(&v43 + 1) + 8 * j);
                    v38 = v37;
                    if (v31)
                    {
                      [v37 touch:*(v29 + 16) pathIndex:*(v29 + 8) upAtPoint:*(v29 + 248) detached:{*(v29 + 176), *(v29 + 184)}];
                    }

                    if (v32)
                    {
                      [v38 touch:*(v29 + 16) pathIndex:*(v29 + 8) rangeOutAtPoint:{*(v29 + 176), *(v29 + 184)}];
                    }
                  }

                  v34 = [v33 countByEnumeratingWithState:&v43 objects:v55 count:16];
                }

                while (v34);
              }
            }

            v27 = [obj countByEnumeratingWithState:&v47 objects:v56 count:16];
          }

          while (v27);
        }

        sub_1000091B8(a1);
        v11 = v39;
      }
    }
  }
}

id sub_100080DA8(uint64_t a1, uint64_t a2)
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = *(a1 + 144);
  v4 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = *v21;
    do
    {
      v6 = 0;
      do
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(obj);
        }

        if (a2)
        {
          v7 = *(a2 + 8);
        }

        else
        {
          v7 = 0;
        }

        v8 = *(*(&v20 + 1) + 8 * v6);
        v9 = BKLogTouchEvents();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          if (v8)
          {
            v16 = *(v8 + 8);
          }

          else
          {
            v16 = 0;
          }

          *buf = 67109120;
          v26 = v16;
          _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "SGP: Sending cancel to latent client: %x", buf, 8u);
        }

        mach_absolute_time();
        v10 = a1;
        DigitizerEvent = IOHIDEventCreateDigitizerEvent();
        v12 = *(a1 + 8);
        [v12 senderID];
        IOHIDEventSetSenderID();

        v13 = *(a1 + 206);
        IOHIDEventSetIntegerValue();
        v14 = *(a1 + 207);
        IOHIDEventSetIntegerValue();

        v15 = objc_alloc_init(BKSHIDEventDigitizerAttributes);
        [v15 setTouchStreamIdentifier:v7];
        sub_100081054(v10, DigitizerEvent, v15, v8, *(a1 + 96));
        CFRelease(DigitizerEvent);

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v17 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      v4 = v17;
    }

    while (v17);
  }

  return [*(a1 + 144) removeAllObjects];
}

void sub_100081054(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, double a5)
{
  v10 = *(a1 + 40);
  if (v10)
  {
    v10 = v10[2];
  }

  v13 = v10;
  sub_10008118C(a1, a3, v13);

  if (a4)
  {
    v11 = *(a4 + 8);
  }

  else
  {
    v11 = 0;
  }

  v14 = [BKSHIDEventDeferringToken tokenForIdentifierOfCAContext:v11];
  [a3 setToken:?];

  [a3 setInitialTouchTimestamp:a5];
  [a3 setActiveModifiers:*(a1 + 104)];
  BKSHIDEventSetAttributes();
  v15 = sub_100003704(*(a1 + 184));
  sub_100081210(a1, v15);
  if (a4)
  {
    v12 = *(a4 + 12);
  }

  else
  {
    v12 = 0;
  }

  [*(a1 + 48) sendEvent:a2 toClientTaskPort:v12];
}

double *sub_10008118C(double *result, void *a2, void *a3)
{
  if (result)
  {
    v5 = result;
    if (a3 && ([a3 _isBuiltinDisplay] & 1) == 0)
    {
      [a2 setDisplay:a3];
    }

    v6 = 0.0;
    if ((*(v5 + 209) & 1) == 0)
    {
      v6 = v5[24];
    }

    [a2 setMaximumPositionZ:v6];
    LODWORD(v7) = *(v5 + 50);

    return [a2 setMaximumForce:v7];
  }

  return result;
}

void sub_100081210(uint64_t a1, uint64_t a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100081288;
  v2[3] = &unk_1000FC7F0;
  v2[4] = a1;
  sub_10002D814(a2, v2);
}

id sub_100081288(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a4)
  {
    v8 = *(a4 + 8);
  }

  else
  {
    v8 = 0;
  }

  v9 = [BKSHIDEventDeferringToken tokenForIdentifierOfCAContext:v8];
  [a3 setToken:v9];

  v10 = *(a1 + 32);
  v11 = *(v10 + 40);
  if (v11)
  {
    v11 = v11[2];
  }

  v12 = v11;
  sub_10008118C(v10, a3, v12);

  BKSHIDEventSetAttributes();
  v13 = *(*(a1 + 32) + 48);
  if (a4)
  {
    v14 = *(a4 + 12);
  }

  else
  {
    v14 = 0;
  }

  return [v13 sendEvent:a2 toClientTaskPort:v14];
}

void sub_100081370(id *a1, void *a2, uint64_t a3, char a4)
{
  v7 = mach_absolute_time();
  v8 = objc_alloc_init(BKHIDEventCollector);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = a2;
  v9 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v9)
  {
    v24 = *v37;
    do
    {
      v10 = 0;
      v26 = v9;
      do
      {
        if (*v37 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v36 + 1) + 8 * v10);
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v12 = *(v11 + 232);
        v13 = [v12 countByEnumeratingWithState:&v32 objects:v41 count:16];
        v27 = v10;
        if (v13)
        {
          v14 = *v33;
          do
          {
            v15 = 0;
            do
            {
              if (*v33 != v14)
              {
                objc_enumerationMutation(v12);
              }

              v16 = *(*(&v32 + 1) + 8 * v15);
              if (v16)
              {
                v17 = *(v16 + 32);
              }

              else
              {
                v17 = 0;
              }

              if ((a3 & ~v17) == 0)
              {
                sub_1000828C4(a1, v11, v16, v8, v7, 0);
              }

              v15 = v15 + 1;
            }

            while (v13 != v15);
            v18 = [v12 countByEnumeratingWithState:&v32 objects:v41 count:16];
            v13 = v18;
          }

          while (v18);
        }

        if ((a4 & 1) == 0)
        {
          *(v11 + 48) = 2;
        }

        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v19 = a1[9];
        v20 = [v19 countByEnumeratingWithState:&v28 objects:v40 count:16];
        if (v20)
        {
          v21 = *v29;
          do
          {
            v22 = 0;
            do
            {
              if (*v29 != v21)
              {
                objc_enumerationMutation(v19);
              }

              [*(*(&v28 + 1) + 8 * v22) touchDidSoftCancel:*(v11 + 16)];
              v22 = v22 + 1;
            }

            while (v20 != v22);
            v20 = [v19 countByEnumeratingWithState:&v28 objects:v40 count:16];
          }

          while (v20);
        }

        v10 = v27 + 1;
      }

      while ((v27 + 1) != v26);
      v9 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v9);
  }

  sub_100081704(a1, obj, a3);
  sub_100081F08(a1, v8);
}

void sub_100081680(id *a1, _DWORD *a2)
{
  v4 = objc_alloc_init(BKHIDEventCollector);
  sub_100081D8C(a1, a2, v4, 0);
  sub_100081F08(a1, v4);
}

void sub_100081704(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = [*(a1 + 120) copy];
  v21 = _NSConcreteStackBlock;
  v22 = 3221225472;
  v23 = sub_100081AE0;
  v24 = &unk_1000FC8B8;
  v26 = a2;
  v27 = a3;
  v25 = a1;
  BSIntegerMapEnumerateWithBlock();

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = a2;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v28 count:16];
  if (v8)
  {
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        v12 = *(v11 + 232);
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_100081D64;
        v16[3] = &unk_1000FC8D8;
        v16[4] = a3;
        v13 = [v12 bs_filter:v16];
        v14 = [v13 mutableCopy];
        v15 = *(v11 + 232);
        *(v11 + 232) = v14;

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v17 objects:v28 count:16];
    }

    while (v8);
  }
}

void sub_100081910(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      v4 = *(a2 + 8);
      if ([*(a2 + 24) count])
      {
        v5 = BKLogTouchEvents();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v10 = 138543362;
          v11 = a2;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "not removing destination (external): %{public}@", &v10, 0xCu);
        }

LABEL_6:

        return;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = [*(a1 + 128) objectForKey:v4];
    if (v6)
    {
      v7 = v6;
      v8 = v6[31];

      if (v8)
      {
        v5 = BKLogTouchEvents();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v10 = 138543362;
          v11 = a2;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "not removing destination (contacts exist): %{public}@", &v10, 0xCu);
        }

        goto LABEL_6;
      }
    }

    v9 = BKLogTouchEvents();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = 138543362;
      v11 = a2;
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "removing destination: %{public}@", &v10, 0xCu);
    }

    [*(a1 + 120) removeObjectForKey:v4];
    [*(a1 + 128) removeObjectForKey:v4];
  }
}

void sub_100081AE0(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  if (a3)
  {
    v5 = *(a3 + 32);
  }

  else
  {
    v5 = 0;
  }

  if ((a1[6] & ~v5) == 0)
  {
    v6 = a2;
    v21 = [*(a1[4] + 128) objectForKey:a2];
    if (!v21)
    {
      goto LABEL_27;
    }

    v7 = a1[5];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v9)
    {
      v10 = 0;
      v11 = *v23;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v10 |= sub_100068754(v21, *(*(*(&v22 + 1) + 8 * i) + 8));
        }

        v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v9);

      if (v10)
      {
        v13 = v21[32];
        v14 = v21[33];
        v21[32] = 0;
        v21[33] = 0;
        if (v13 <= v14)
        {
          v15 = 0;
          v16 = 0;
          v17 = v14 + 1;
          v18 = 1;
          do
          {
            if (v21[v13 + 1])
            {
              if (v18)
              {
                v21[32] = v13;
              }

              if (v13 > v15)
              {
                v21[33] = v13;
                v15 = v13;
              }

              if (++v16 == v21[31])
              {
                break;
              }

              v18 = 0;
            }
          }

          while (v17 != ++v13);
        }
      }
    }

    else
    {
    }

    v19 = v21;
    v20 = v19[31];

    if (!v20)
    {
LABEL_27:
      [*(a1[4] + 128) removeObjectForKey:v6];
    }

    sub_100081910(a1[4], a3);
  }
}

BOOL sub_100081D64(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 32);
  }

  else
  {
    v2 = 0;
  }

  return (*(a1 + 32) & ~v2) != 0;
}

void sub_100081D8C(id *a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v8 = mach_absolute_time();
    if (a2)
    {
      v9 = a2[2];
    }

    else
    {
      v9 = 0;
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v10 = [a1[16] objectForKey:{v9, 0}];
    v11 = [v10 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v11)
    {
      v12 = *v15;
      do
      {
        v13 = 0;
        do
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v10);
          }

          sub_1000828C4(a1, *(*(&v14 + 1) + 8 * v13), a2, a3, v8, a4);
          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v10 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }

    [a1[16] removeObjectForKey:v9];
    sub_100081910(a1, a2);
  }
}

void sub_100081F08(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = sub_100081F84;
    v2[3] = &unk_1000FC7F0;
    v2[4] = a1;
    sub_10002D658(a2, v2);
  }
}

void sub_100081F84(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v8 = *(v4 + 40);
    if (v8)
    {
      v8 = v8[2];
    }

    v55 = v8;
    sub_10008118C(v4, a3, v55);
    [a3 setActiveModifiers:*(v4 + 104)];
    BKSHIDEventSetAttributes();
    if (a4)
    {
      v9 = *(a4 + 12);
    }

    else
    {
      v9 = 0;
    }

    if ((~IOHIDEventGetIntegerValue() & 0x20002) == 0 && IOHIDEventGetIntegerValue() == 1)
    {
      v10 = BKHIDEventRoutingGetClientConnectionManager();
      v11 = [v10 clientForTaskPort:v9];

      if (v11)
      {
        v12 = BKLogTouchEvents();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [v11 bundleID];
          [v11 versionedPID];
          v14 = NSStringFromBSVersionedPID();
          *buf = 138543618;
          v69 = v13;
          v70 = 2114;
          v71 = v14;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "send tapToWake to %{public}@ pid:%{public}@", buf, 0x16u);
        }
      }
    }

    v56 = sub_100003704(*(v4 + 184));
    sub_100081210(v4, v56);
    v15 = BKLogTouchEvents();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v39 = BKSHIDEventGetConciseDescription();
      *buf = 138543362;
      v69 = v39;
      _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    [*(v4 + 48) sendEvent:a2 toClientTaskPort:v9];
    if (a4)
    {
      v16 = *(a4 + 8);
    }

    else
    {
      v16 = 0;
    }

    v17 = *(v4 + 184);
    if (v17)
    {
      if (IOHIDEventGetType() != 11)
      {
        v40 = [NSString stringWithFormat:@"must be a digitizer event"];
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v41 = NSStringFromSelector("_saveWillUpdateEvents:port:contextID:");
          v42 = objc_opt_class();
          v43 = NSStringFromClass(v42);
          *buf = 138544642;
          v69 = v41;
          v70 = 2114;
          v71 = v43;
          v72 = 2048;
          v73 = v17;
          v74 = 2114;
          v75 = @"BKDirectTouchUpdateEvents.mm";
          v76 = 1024;
          v77 = 271;
          v78 = 2114;
          v79 = v40;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        v44 = v40;
        [v40 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x100082588);
      }

      v18 = sub_1000093EC(a2);
      IntegerValue = IOHIDEventGetIntegerValue();
      if (v18)
      {
        if (IntegerValue)
        {
          p_isa = sub_10002BAAC(v17, v18);
          if (!p_isa)
          {
            v21 = objc_alloc_init(_BKEventUpdateGeneration);
            p_isa = &v21->super.isa;
            if (v21)
            {
              v21->_generationCount = v18;
            }

            v22 = *(v17 + 8);
            if (!v22)
            {
              v23 = objc_alloc_init(NSMutableArray);
              v24 = *(v17 + 8);
              *(v17 + 8) = v23;

              v22 = *(v17 + 8);
            }

            [v22 addObject:p_isa];
            if (!p_isa)
            {
              v45 = [NSString stringWithFormat:@"this is Unix, that can't happen"];
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                v46 = NSStringFromSelector("_saveWillUpdateEvents:port:contextID:");
                v47 = objc_opt_class();
                v48 = NSStringFromClass(v47);
                *buf = 138544642;
                v69 = v46;
                v70 = 2114;
                v71 = v48;
                v72 = 2048;
                v73 = v17;
                v74 = 2114;
                v75 = @"BKDirectTouchUpdateEvents.mm";
                v76 = 1024;
                v77 = 281;
                v78 = 2114;
                v79 = v45;
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
              }

              v49 = v45;
              [v45 UTF8String];
              _bs_set_crash_log_message();
              __break(0);
              JUMPOUT(0x100082684);
            }
          }

          v25 = p_isa[17];
          v61 = 0u;
          v62 = 0u;
          v63 = 0u;
          v64 = 0u;
          v26 = v25;
          v27 = [v26 countByEnumeratingWithState:&v61 objects:buf count:16];
          if (v27)
          {
            v28 = *v62;
            do
            {
              v29 = 0;
              do
              {
                if (*v62 != v28)
                {
                  objc_enumerationMutation(v26);
                }

                v30 = *(*(&v61 + 1) + 8 * v29);
                if (v30)
                {
                  if (v30[3] == v9 && v30[2] == v16)
                  {
                    v33 = v30;

                    goto LABEL_44;
                  }
                }

                else if (!(v9 | v16))
                {
                  goto LABEL_40;
                }

                v29 = v29 + 1;
              }

              while (v27 != v29);
              v31 = [v26 countByEnumeratingWithState:&v61 objects:buf count:16];
              v27 = v31;
            }

            while (v31);
          }

LABEL_40:

          v32 = objc_alloc_init(_BKUpdateEventClient);
          v33 = v32;
          if (v32)
          {
            v32->super._contextID = v16;
            v32->super._clientPort = v9;
          }

          [v26 addObject:v32];
LABEL_44:
          sub_100007B10(v65, a2);
          sub_100007418(v65);
          v34 = 0;
          v57 = *v65;
          v58 = *&v65[16];
          v59 = v66;
          v60 = v67[0];
          while (*(&v58 + 1))
          {
            v35 = v59;
            *(&v59 + 1) = *(&v58 + 1);
            v60 = v59;
            v36 = IOHIDEventGetIntegerValue();
            v37 = sub_10002B77C(p_isa, v35);
            if (v36)
            {
              sub_10002B914(p_isa, v37 | v36, v35);
              v34 |= 1 << v35;
            }

            sub_100007418(&v57);
          }

          if (v33)
          {
            v33->_pathIDMask = v34;
            if (!v33->_pathIDMask)
            {
              [v26 removeObjectIdenticalTo:v33];
              if (![v26 count])
              {
                v38 = sub_10002BBF8(v17, v18);
                if (v38 != p_isa)
                {
                  v50 = [NSString stringWithFormat:@"pending/removed items don't match: %@/%@", v38, p_isa];
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    v51 = NSStringFromSelector("_saveWillUpdateEvents:port:contextID:");
                    v52 = objc_opt_class();
                    v53 = NSStringFromClass(v52);
                    *v65 = 138544642;
                    *&v65[4] = v51;
                    *&v65[12] = 2114;
                    *&v65[14] = v53;
                    *&v65[22] = 2048;
                    *&v65[24] = v17;
                    LOWORD(v66) = 2114;
                    *(&v66 + 2) = @"BKDirectTouchUpdateEvents.mm";
                    WORD5(v66) = 1024;
                    HIDWORD(v66) = 322;
                    LOWORD(v67[0]) = 2114;
                    *(v67 + 2) = v50;
                    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v65, 0x3Au);
                  }

                  v54 = v50;
                  [v50 UTF8String];
                  _bs_set_crash_log_message();
                  __break(0);
                  JUMPOUT(0x100082784);
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1000828C4(void *a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    v36 = a3[2];
  }

  else
  {
    v36 = 0;
  }

  v11 = a3;
  v12 = v11;
  if (!a4)
  {

    v21 = 0;
LABEL_20:
    v23 = a1;
    DigitizerEvent = IOHIDEventCreateDigitizerEvent();
    v25 = v23[1];
    [v25 senderID];
    IOHIDEventSetSenderID();

    v26 = *(v23 + 206);
    IOHIDEventSetIntegerValue();
    v27 = *(v23 + 207);
    IOHIDEventSetIntegerValue();

    if (a6)
    {
      IOHIDEventSetIntegerValue();
    }

    v22 = objc_alloc_init(BKSHIDEventDigitizerAttributes);

    v28 = [BKSHIDEventDeferringToken tokenForIdentifierOfCAContext:v36];
    [v22 setToken:v28];

    [v22 setInitialTouchTimestamp:*(v23 + 12)];
    v29 = objc_alloc_init(NSMutableArray);
    [v22 setPathAttributes:v29];

    sub_10002D500(a4, DigitizerEvent, v22, v12);
    CFRelease(DigitizerEvent);
    goto LABEL_23;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v13 = *(a4 + 16);
  v14 = [v13 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v14)
  {
    v15 = *v38;
    do
    {
      v16 = 0;
      do
      {
        if (*v38 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v37 + 1) + 8 * v16);
        if (v17)
        {
          if (*(v17 + 24) == v12)
          {
            v20 = *(v17 + 8);
            v35 = *(v17 + 16);
            goto LABEL_18;
          }
        }

        else if (!a3)
        {
          v35 = 0;
LABEL_18:
          v14 = v35;
          v19 = 1;
          goto LABEL_19;
        }

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v18 = [v13 countByEnumeratingWithState:&v37 objects:v41 count:16];
      v14 = v18;
    }

    while (v18);
  }

  v19 = 0;
LABEL_19:

  v21 = v14;
  v22 = v21;
  if ((v19 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_23:
  v30 = *(a2 + 8);
  v31 = *(a2 + 64);
  v32 = IOHIDEventCreateDigitizerEvent();
  if (a6)
  {
    IOHIDEventSetIntegerValue();
  }

  v33 = objc_alloc_init(BKSHIDEventDigitizerPathAttributes);
  [v33 setPathIndex:{*(a2 + 8), 0x4400000000}];
  [v33 setTouchIdentifier:*(a2 + 16)];
  [v33 setUserIdentifier:*(a2 + 20)];
  [v33 setHitTestContextCategory:*(a2 + 56)];
  [v33 setLocus:*(a2 + 248)];
  IOHIDEventAppendEvent();
  v34 = [v22 pathAttributes];
  [v34 addObject:v33];

  CFRelease(v32);
}

void sub_100082DA0(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) primaryUsagePage];
  v3 = [*(*(a1 + 32) + 8) primaryUsage];
  v4 = *(a1 + 40);
  if (v2 == 13)
  {
    v5 = v3 - 1;
    if (v3 - 1) < 0x21 && ((0x180001FFFuLL >> v5))
    {
      v6 = *(&off_1000FC948 + v5);
    }

    else
    {
      v6 = [NSString stringWithFormat:@"(unknown digitizer usage: %X)", v3];
    }

    v18 = v6;
    [v4 appendString:v6 withName:0];
  }

  else
  {
    v18 = [NSString stringWithFormat:@"(0x%X / 0x%X)", v2, v3];
    [v4 appendString:? withName:?];
  }

  v19 = [*(*(a1 + 32) + 8) senderDescriptor];
  v7 = [v19 hardwareType];

  v8 = *(a1 + 40);
  v20 = NSStringFromBKSHIDEventHardwareType();
  [v8 appendString:? withName:?];

  v9 = *(a1 + 32);
  if (*(v9 + 205) == 1)
  {
    [*(a1 + 40) appendString:@"preciseLocations" withName:0];
    v9 = *(a1 + 32);
  }

  if (v7 == 2)
  {
    v10 = [*(a1 + 40) appendBool:objc_msgSend(*(v9 + 8) withName:{"isAuthenticated"), @"authenticated"}];
    v9 = *(a1 + 32);
  }

  v11 = *(a1 + 40);
  v21 = [*(v9 + 8) displayUUID];
  [v11 appendString:? withName:? skipIfEmpty:?];

  v12 = [*(a1 + 40) appendUInt64:objc_msgSend(*(*(a1 + 32) + 8) withName:"senderID") format:{@"senderID", 1}];
  v13 = [*(a1 + 40) appendObject:*(*(a1 + 32) + 112) withName:@"contacts"];
  v14 = *(a1 + 40);
  v22 = [*(*(a1 + 32) + 120) allValues];
  v15 = [v14 appendObject:? withName:?];

  v16 = [*(a1 + 40) appendObject:*(*(a1 + 32) + 144) withName:@"latentSystemGestureDestinations"];
  v23 = [*(*(a1 + 32) + 32) reasons];
  if ([v23 count])
  {
    v17 = [*(a1 + 40) appendObject:v23 withName:@"suppressTouchesAssertion"];
  }
}

uint64_t sub_100083260(uint64_t a1, void *a2)
{
  v4 = BKLogTouchEvents();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v33 = a2;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "synth and post:%{public}@", buf, 0xCu);
  }

  sub_100008070(buf, a1);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = a2;
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v6)
  {
    v7 = *v28;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(v5);
        }

        sub_100083608(*(*(&v27 + 1) + 8 * i), buf);
      }

      v6 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v6);
  }

  v9 = sub_10000839C(buf);
  v10 = sub_1000836E4(a1, v9, *(a1 + 112));
  v11 = sub_100095250(*(a1 + 24), v9, v10, *(a1 + 176), *(a1 + 120), *(a1 + 128));
  v12 = v11;
  if (!v11)
  {
    objc_storeStrong((a1 + 112), v10);
LABEL_14:
    v13 = objc_alloc_init(BKHIDEventCollector);
    *v25 = v13;
    v14 = a1;
    v26 = v14;
    v23 = 0;
    v15 = v14[5];
    if (v15)
    {
      v15 = v15[3];
    }

    v16 = v15;
    sub_10008C650(v16, &v23, &v24);

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000849F0;
    v19[3] = &unk_1000FC890;
    v19[4] = v14;
    v17 = v13;
    v20 = v17;
    v21 = v9;
    v22 = v23;
    sub_1000129FC(v12, v19);

    sub_100009074(v25);
    goto LABEL_19;
  }

  if (*(v11 + 8) == 1)
  {
    *(a1 + 96) = *(v11 + 16);
  }

  objc_storeStrong((a1 + 112), v10);
  if ([*(v12 + 24) count])
  {
    goto LABEL_14;
  }

  v17 = BKLogTouchEvents();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *v25 = 0;
    _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "no events for regular clients", v25, 2u);
  }

LABEL_19:

  if (v9)
  {
    CFRelease(v9);
  }

  return sub_10000968C(buf);
}

void sub_10008357C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  if (v43)
  {
    CFRelease(v43);
  }

  sub_10000968C(&a43);
  _Unwind_Resume(a1);
}

uint64_t sub_100083608(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 64);
  sub_1000081F0(a2);
  v6 = *(a1 + 88);
  IOHIDEventSetFloatValue();
  v7 = *(a1 + 96);
  IOHIDEventSetFloatValue();
  v8 = *(a1 + 104);
  result = IOHIDEventSetFloatValue();
  v10 = *(a1 + 32);
  if (v10 == 2)
  {
    result = IOHIDEventSetIntegerValue();
    v10 = *(a1 + 32);
  }

  if (v10 >= 1)
  {
    result = IOHIDEventSetIntegerValue();
  }

  if (*(a1 + 68))
  {

    return IOHIDEventSetPhase();
  }

  return result;
}

id *sub_1000836E4(uint64_t a1, uint64_t a2, void *a3)
{
  v139 = [a3 copy];
  [*(a1 + 136) removeAllObjects];
  v5 = sub_100007B10(v198, a2);
  sub_100007418(v5);
  v178 = *v198;
  v179 = v199;
  v180 = v200;
  v181 = v201;
  for (i = *(&v199 + 1); *(&v179 + 1); i = *(&v179 + 1))
  {
    *(&v180 + 1) = i;
    v181 = v180;
    v7 = sub_1000689B8(*(a1 + 112), v180);
    v8 = v7;
    if (v7)
    {
      v9 = *(v7 + 20);
      if (v9)
      {
        IOHIDEventGetFloatValue();
        v144 = v10;
        IOHIDEventGetFloatValue();
        v142 = v11;
        v12 = [*(a1 + 136) objectForKey:v9];
        if (v12 || (v12 = objc_alloc_init(BKTouchCentroidCalculator), [*(a1 + 136) setObject:v12 forKey:v9], v12))
        {
          v13.f64[0] = v144;
          v13.f64[1] = v142;
          v12->_location = vaddq_f64(v13, v12->_location);
          ++v12->_count;
        }
      }
    }

    sub_100007418(&v178);
  }

  HasHighFrequencyDigitizer = BKSHIDServicesDeviceHasHighFrequencyDigitizer();
  v14 = sub_100007B10(v198, a2);
  sub_100007418(v14);
  v178 = *v198;
  v179 = v199;
  v180 = v200;
  *(&v15 + 1) = *(&v200 + 1);
  v181 = v201;
  *&v15 = 138543874;
  v134 = v15;
  while (*(&v179 + 1))
  {
    v16 = v180;
    *(&v180 + 1) = *(&v179 + 1);
    v181 = v180;
    if (IOHIDEventGetIntegerValue())
    {
      v17 = BKLogTouchEvents();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_108;
      }

      *buf = 0;
      v18 = v17;
      v19 = "ignoring subevent with nonzero didUpdateMask (on parent event with zero didUpdateMask)";
      v20 = 2;
      goto LABEL_14;
    }

    IntegerValue = IOHIDEventGetIntegerValue();
    v21 = IOHIDEventGetIntegerValue();
    v140 = IntegerValue & 0x20000;
    if (v21)
    {
      v22 = (IntegerValue & 0x20000) == 0;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;
    v138 = IOHIDEventGetIntegerValue();
    v143 = (v138 != 0) & (IntegerValue >> 1);
    v136 = v23;
    v137 = IntegerValue & v23;
    if ((IntegerValue & v23 & 1) != 0 || (!v140 ? (v24 = v21 == 0) : (v24 = 1), v24 ? (v25 = 0) : (v25 = 1), v143 && (v25 & 1) == 0))
    {
      v26 = sub_1000689B8(v139, v16);
      v27 = v26;
      if (v26)
      {
        v28 = *(v26 + 32);
        if (v28 == 2 && v138)
        {
          v29 = BKLogTouchEvents();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            *&buf[4] = v27;
            _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "range-in for pathIndex with existing contact -- using existing: %{public}@", buf, 0xCu);
          }

          v17 = v27;
LABEL_59:

          v30 = IntegerValue;
          if (v143)
          {
LABEL_60:
            *(v17 + 250) = v140 >> 17;
            if (v140)
            {
              v44 = BKLogTouchEvents();
              if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "received tapToWake", buf, 2u);
              }
            }
          }

LABEL_65:
          if (*(v17 + 5))
          {
            v45 = [*(a1 + 136) objectForKey:?];
            v46 = v45;
            if (v45)
            {
              v47 = *(v45 + 8);
              if (v47 < 1)
              {
                v48 = CGPointZero;
              }

              else
              {
                v48 = vdivq_f64(*(v45 + 16), vdupq_lane_s64(COERCE__INT64(v47), 0));
              }

              v141 = v48;
              v54 = BKLogTouchEvents();
              y = v141.y;
              if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
              {
                v131 = BSStringFromCGPoint();
                *buf = 138543362;
                *&buf[4] = v131;
                _os_log_debug_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEBUG, "using centroid %{public}@", buf, 0xCu);
              }
            }

            else
            {
              IOHIDEventGetFloatValue();
              v141.x = v52;
              IOHIDEventGetFloatValue();
              y = v53;
            }
          }

          else
          {
            IOHIDEventGetFloatValue();
            v141.x = v49;
            IOHIDEventGetFloatValue();
            y = v50;
          }

          *(v17 + 34) = IOHIDEventGetPhase();
          sub_10008672C(buf, a1, v141.x, y, *(v17 + 14), *(v17 + 15));
          v55 = v194;
          *(v17 + 19) = *buf;
          *(v17 + 21) = v55;
          *(v17 + 23) = v195;
          v17[25] = v196;
          v17[11] = *&v141.x;
          *(v17 + 12) = y;
          IOHIDEventGetFloatValue();
          v17[13] = v56;
          v57 = v17[4];
          v17[5] = v57;
          if (v143)
          {
            if (v57 != 1)
            {
              v172 = 0u;
              v173 = 0u;
              v170 = 0u;
              v171 = 0u;
              v58 = *(a1 + 72);
              v59 = [v58 countByEnumeratingWithState:&v170 objects:v192 count:16];
              if (v59)
              {
                v60 = *v171;
                v61 = *(&v194 + 1);
                v62 = *&v195;
                v63 = v181;
                do
                {
                  for (j = 0; j != v59; j = j + 1)
                  {
                    if (*v171 != v60)
                    {
                      objc_enumerationMutation(v58);
                    }

                    v65 = 0.0;
                    if ((*(a1 + 209) & 1) == 0)
                    {
                      v65 = *(a1 + 192);
                    }

                    [*(*(&v170 + 1) + 8 * j) touch:*(v17 + 4) pathIndex:v63 rangeInAtPoint:v30 eventMask:*(v17 + 16) z:v61 maxZ:v62 transducerType:{*(v17 + 13), v65, v134}];
                  }

                  v59 = [v58 countByEnumeratingWithState:&v170 objects:v192 count:16];
                }

                while (v59);
              }
            }

            v17[4] = 2;
            v66 = v17[27];
            v17[27] = 0;

            v67 = v17[28];
            v17[28] = 0;

            *(v17 + 249) = 0;
            v166 = 0u;
            v167 = 0u;
            v168 = 0u;
            v169 = 0u;
            v68 = *(a1 + 72);
            v69 = [v68 countByEnumeratingWithState:&v166 objects:v191 count:16];
            if (v69)
            {
              v70 = *v167;
              v71 = *(&v194 + 1);
              v72 = *&v195;
              v73 = v181;
              do
              {
                for (k = 0; k != v69; k = k + 1)
                {
                  if (*v167 != v70)
                  {
                    objc_enumerationMutation(v68);
                  }

                  [*(*(&v166 + 1) + 8 * k) touch:*(v17 + 4) pathIndex:v73 downAtPoint:v30 eventMask:*(v17 + 16) transducerType:{v71, v72, v134}];
                }

                v69 = [v68 countByEnumeratingWithState:&v166 objects:v191 count:16];
              }

              while (v69);
            }

            goto LABEL_95;
          }

          if (v137)
          {
            if (!v57)
            {
              v17[4] = 1;
              v162 = 0u;
              v163 = 0u;
              v164 = 0u;
              v165 = 0u;
              v68 = *(a1 + 72);
              v90 = [v68 countByEnumeratingWithState:&v162 objects:v190 count:16];
              if (v90)
              {
                v91 = *v163;
                v92 = *(&v194 + 1);
                v93 = *&v195;
                v94 = v181;
                do
                {
                  for (m = 0; m != v90; m = m + 1)
                  {
                    if (*v163 != v91)
                    {
                      objc_enumerationMutation(v68);
                    }

                    v96 = 0.0;
                    if ((*(a1 + 209) & 1) == 0)
                    {
                      v96 = *(a1 + 192);
                    }

                    [*(*(&v162 + 1) + 8 * m) touch:*(v17 + 4) pathIndex:v94 rangeInAtPoint:v30 eventMask:*(v17 + 16) z:v92 maxZ:v93 transducerType:{*(v17 + 13), v96, v134}];
                  }

                  v90 = [v68 countByEnumeratingWithState:&v162 objects:v190 count:16];
                }

                while (v90);
              }

              goto LABEL_95;
            }

LABEL_101:
            if (HasHighFrequencyDigitizer)
            {
              IOHIDEventGetTimeStamp();
              BSMonotonicReferencedTimeFromMachTime();
              v81 = v80;
              IOHIDEventGetFloatValue();
              v83 = v82;
              v84 = *(v17 + 16);
              if (v84 != 0.0)
              {
                v85 = v81 - v84;
                if (v85 >= 0.1)
                {
                  v86 = v85;
                }

                else
                {
                  v86 = 1.0;
                }

                IOHIDEventGetFloatValue();
                v88 = v87;
                IOHIDEventGetFloatValue();
                *&v89 = (v83 - *(v17 + 17)) / v86 / sqrt(v88 * v89 * 0.0002);
                *(v17 + 18) = *&v89;
              }

              *(v17 + 16) = v81;
              *(v17 + 17) = v83;
            }

            goto LABEL_108;
          }

          if ((IntegerValue & 2) == 0 || v138)
          {
            if (((IntegerValue & 1) == 0) | v136 & 1)
            {
              if (!((v138 != 0) | v136 & 1))
              {
                goto LABEL_101;
              }

              v148 = 0u;
              v149 = 0u;
              v146 = 0u;
              v147 = 0u;
              v75 = *(a1 + 72);
              v107 = [v75 countByEnumeratingWithState:&v146 objects:v182 count:16];
              if (v107)
              {
                v108 = *v147;
                v109 = *(&v194 + 1);
                v110 = *&v195;
                do
                {
                  for (n = 0; n != v107; n = n + 1)
                  {
                    if (*v147 != v108)
                    {
                      objc_enumerationMutation(v75);
                    }

                    v112 = 0.0;
                    if ((*(a1 + 209) & 1) == 0)
                    {
                      v112 = *(a1 + 192);
                    }

                    [*(*(&v146 + 1) + 8 * n) touch:*(v17 + 4) didMoveToPoint:v30 eventMask:v109 z:v110 maxZ:{*(v17 + 13), v112, v134}];
                  }

                  v107 = [v75 countByEnumeratingWithState:&v146 objects:v182 count:16];
                }

                while (v107);
              }

              goto LABEL_100;
            }

            if (v57 != 1)
            {
              v75 = BKLogTouchEvents();
              if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
              {
                v128 = v17[4];
                v129 = @"<unknown>";
                if (v128 <= 2)
                {
                  v129 = *(&off_1000FCC90 + v128);
                }

                v130 = v129;
                *v183 = v134;
                *v184 = v130;
                *&v184[8] = 1024;
                *&v184[10] = v138 != 0;
                v185 = 1024;
                v186 = 0;
                _os_log_error_impl(&_mh_execute_header, v75, OS_LOG_TYPE_ERROR, "unexpected range-out (presence:%{public}@ event.touch:%{BOOL}u) event.range:%{BOOL}u", v183, 0x18u);
              }

              goto LABEL_100;
            }

            v17[4] = 0;
            v150 = 0u;
            v151 = 0u;
            v152 = 0u;
            v153 = 0u;
            v68 = *(a1 + 72);
            v113 = [v68 countByEnumeratingWithState:&v150 objects:v187 count:16];
            if (v113)
            {
              v114 = *v151;
              v115 = *(&v194 + 1);
              v116 = *&v195;
              v117 = v181;
              do
              {
                for (ii = 0; ii != v113; ii = ii + 1)
                {
                  if (*v151 != v114)
                  {
                    objc_enumerationMutation(v68);
                  }

                  v119 = *(*(&v150 + 1) + 8 * ii);
                  [v119 touch:*(v17 + 4) pathIndex:v117 rangeOutAtPoint:{v115, v116}];
                }

                v113 = [v68 countByEnumeratingWithState:&v150 objects:v187 count:16];
              }

              while (v113);
            }
          }

          else
          {
            if (v136)
            {
              v17[4] = 1;
              v154 = 0u;
              v155 = 0u;
              v156 = 0u;
              v157 = 0u;
              v97 = *(a1 + 72);
              v98 = [v97 countByEnumeratingWithState:&v154 objects:v188 count:16];
              if (v98)
              {
                v99 = *v155;
                v100 = *(&v194 + 1);
                v101 = *&v195;
                v102 = v181;
                do
                {
                  for (jj = 0; jj != v98; jj = jj + 1)
                  {
                    if (*v155 != v99)
                    {
                      objc_enumerationMutation(v97);
                    }

                    v104 = *(*(&v154 + 1) + 8 * jj);
                    [v104 touch:*(v17 + 4) pathIndex:v102 upAtPoint:*(v17 + 248) detached:{v100, v101}];
                  }

                  v98 = [v97 countByEnumeratingWithState:&v154 objects:v188 count:16];
                }

                while (v98);
              }

              v105 = v17[9];
              v17[9] = 0;

              v17[10] = 0;
              v106 = v17[6];
              if (v106 == 2)
              {
                v17[6] = 3;
              }

              else if (v106 == 4)
              {
                v17[6] = 0;
              }

LABEL_96:
              v75 = BKLogTouchEvents();
              if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
              {
                v76 = v17[4];
                v77 = @"<unknown>";
                if (v76 <= 2)
                {
                  v77 = *(&off_1000FCC90 + v76);
                }

                v78 = v181;
                v79 = v77;
                *v183 = 67109378;
                *v184 = v78;
                *&v184[4] = 2114;
                *&v184[6] = v79;
                _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "contact %d presence: %{public}@", v183, 0x12u);
              }

LABEL_100:

              goto LABEL_101;
            }

            v17[4] = 0;
            v158 = 0u;
            v159 = 0u;
            v160 = 0u;
            v161 = 0u;
            v68 = *(a1 + 72);
            v120 = [v68 countByEnumeratingWithState:&v158 objects:v189 count:16];
            if (v120)
            {
              v121 = *v159;
              v122 = *(&v194 + 1);
              v123 = *&v195;
              v124 = v181;
              do
              {
                for (kk = 0; kk != v120; kk = kk + 1)
                {
                  if (*v159 != v121)
                  {
                    objc_enumerationMutation(v68);
                  }

                  v126 = *(*(&v158 + 1) + 8 * kk);
                  v127 = v126;
                  if (v57 == 2)
                  {
                    [v126 touch:*(v17 + 4) pathIndex:v124 upAtPoint:*(v17 + 248) detached:{v122, v123}];
                  }

                  [v127 touch:*(v17 + 4) pathIndex:v124 rangeOutAtPoint:{v122, v123, v134}];
                }

                v120 = [v68 countByEnumeratingWithState:&v158 objects:v189 count:16];
              }

              while (v120);
            }
          }

LABEL_95:

          goto LABEL_96;
        }

        v32 = BKLogTouchEvents();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = v27;
          _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "range-in for pathIndex with existing contact -- replacing: %{public}@", buf, 0xCu);
        }

        sub_100068CA4(v139, v27);
        v33 = *(v27 + 8);
        v34 = BKLogTouchEvents();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109120;
          *&buf[4] = v33;
          _os_log_debug_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "stop tracking path:%d", buf, 8u);
        }

        sub_10008DF74(v27, 0);
        sub_100068CA4(*(a1 + 112), v27);
        v35 = [BKTouchContactSet alloc];
        if (v35)
        {
          *buf = v35;
          *&buf[8] = BKTouchContactSet;
          v36 = [(uint8_t *)buf init];
          v37 = v36;
          if (v36)
          {
            sub_10006863C(v36, v27);
          }
        }

        else
        {
          v37 = 0;
        }

        sub_100081704(a1, v37, 1);

        sub_10000985C(a1);
        v176 = 0u;
        v177 = 0u;
        v174 = 0u;
        v175 = 0u;
        v38 = *(a1 + 72);
        v39 = [v38 countByEnumeratingWithState:&v174 objects:v197 count:16];
        if (v39)
        {
          v40 = *v175;
          do
          {
            for (mm = 0; mm != v39; mm = mm + 1)
            {
              if (*v175 != v40)
              {
                objc_enumerationMutation(v38);
              }

              v42 = *(*(&v174 + 1) + 8 * mm);
              v43 = v42;
              if (v28 == 2)
              {
                [v42 touch:*(v27 + 16) pathIndex:v16 upAtPoint:*(v27 + 248) detached:{0.0, 0.0}];
              }

              [v43 touch:*(v27 + 16) pathIndex:v16 rangeOutAtPoint:{0.0, 0.0, v134}];
            }

            v39 = [v38 countByEnumeratingWithState:&v174 objects:v197 count:16];
          }

          while (v39);
        }
      }

      v17 = sub_100086600(v16);
      sub_10006863C(v139, v17);
      goto LABEL_59;
    }

    if (v143)
    {
      v17 = sub_1000689B8(v139, v16);
      v30 = IntegerValue;
      if (!v17)
      {
        v31 = BKLogTouchEvents();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = v16;
          _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "touch down without previous range event: %d", buf, 8u);
        }

        v30 = IntegerValue | 1;
        IOHIDEventSetIntegerValue();
        v17 = sub_100086600(v16);
        sub_10006863C(v139, v17);
      }

      goto LABEL_60;
    }

    v17 = sub_1000689B8(v139, v16);
    v30 = IntegerValue;
    if (v17)
    {
      goto LABEL_65;
    }

    v17 = BKLogTouchEvents();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v16;
      v18 = v17;
      v19 = "didn't see a previous touch down or range-in event for pathIndex:%d; skipping event";
      v20 = 8;
LABEL_14:
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, v19, buf, v20);
    }

LABEL_108:

    sub_100007418(&v178);
  }

  v132 = BKLogTouchEvents();
  if (os_log_type_enabled(v132, OS_LOG_TYPE_DEBUG))
  {
    *v198 = 138543362;
    *&v198[4] = v139;
    _os_log_debug_impl(&_mh_execute_header, v132, OS_LOG_TYPE_DEBUG, "contacts now %{public}@", v198, 0xCu);
  }

  return v139;
}