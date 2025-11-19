void sub_1000849F0(uint64_t a1, _DWORD *a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v7 = a2[2];
  }

  else
  {
    v7 = 0;
  }

  if ([*(*(a1 + 32) + 56) shouldCancelTouchesDeliveredToContextId:v7 withInitialTouchTimestamp:*(*(a1 + 32) + 96)])
  {
    v8 = [*(*(a1 + 32) + 128) objectForKey:v7];
    v9 = v8;
    if (v8)
    {
      v10 = v8[31];

      if (v10)
      {
        v11 = BKLogTouchDeliveryPolicy();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v19 = 67109120;
          v20 = v7;
          _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "(Synth) TDPS said this context should cancel: %X", &v19, 8u);
        }

        v13 = *(a1 + 32);
        v12 = *(a1 + 40);
        v14 = *(a1 + 48);
        IntegerValue = IOHIDEventGetIntegerValue();
        sub_100081D8C(v13, a2, v12, IntegerValue);
      }
    }
  }

  else if (a2)
  {
    v16 = *(a1 + 56);
    sub_100084C1C(*(a1 + 32), *(a1 + 48), a2, *(a1 + 40), v16 == 1, a4, *(*(a1 + 32) + 96));
    if (v16 == 1)
    {
      v17 = *(a1 + 32);

      sub_100085CB0(v17, a2);
    }
  }

  else
  {
    v18 = BKLogTouchEvents();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = 67109120;
      v20 = v7;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "(Synth) Missing destination for hit tested context: %X", &v19, 8u);
    }
  }
}

void sub_100084C1C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void *a6, double a7)
{
  if (a1)
  {
    if (!a2)
    {
      __assert_rtn("[BKDirectTouchState _appendSubsetOfHIDCollection:forDestination:toEventPoster:systemGestureIsPossible:pathLocations:initialTouchTimestamp:]", "BKDirectTouchState.mm", 2163, "pathCollectionEvent");
    }

    if (a3)
    {
      v105 = *(a3 + 8);
      v103 = *(a3 + 12);
    }

    else
    {
      v105 = 0;
      v103 = 0;
    }

    v110 = objc_alloc_init(NSMutableArray);
    v108 = objc_alloc_init(BKTouchContactSet);
    v96 = a4;
    v113 = a1;
    IOHIDEventGetTimeStamp();
    LODWORD(v93) = 0;
    HIDWORD(v93) = IOHIDEventGetEventFlags() & 0x20 | 4;
    cf = IOHIDEventCreateDigitizerEvent();
    v11 = *(v113 + 1);
    [v11 senderID];
    IOHIDEventSetSenderID();

    IOHIDEventGetIntegerValue();
    IOHIDEventSetIntegerValue();
    IOHIDEventGetIntegerValue();
    IOHIDEventSetIntegerValue();
    IOHIDEventGetIntegerValue();
    IOHIDEventSetIntegerValue();
    IOHIDEventGetIntegerValue();
    IOHIDEventSetIntegerValue();
    IOHIDEventGetIntegerValue();
    IOHIDEventSetIntegerValue();

    Children = IOHIDEventGetChildren();
    v13 = Children;
    if (Children)
    {
      Count = CFArrayGetCount(Children);
      if (Count >= 1)
      {
        v115 = Count;
        theArray = v13;
        v106 = 0;
        v15 = 0;
        v95 = a6;
LABEL_8:
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v15);
        Type = IOHIDEventGetType();
        if (Type != 11)
        {
          if (Type != 1 || (IntegerValue = IOHIDEventGetIntegerValue(), v19 = IOHIDEventGetIntegerValue(), IntegerValue != 65280) || v19 != 38)
          {
            Copy = IOHIDEventCreateCopy();
            IOHIDEventAppendEvent();
            CFRelease(Copy);
          }

          goto LABEL_121;
        }

        v21 = IOHIDEventGetIntegerValue();
        if (v21 >= 30)
        {
          v22 = BKLogTouchEvents();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf) = 67109120;
            DWORD1(buf) = v21;
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "bad path count:%d", &buf, 8u);
          }

          goto LABEL_120;
        }

        v114 = sub_1000689B8(*(v113 + 14), v21);
        if (!v114)
        {
          v29 = BKLogTouchEvents();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf) = 67109120;
            DWORD1(buf) = v21;
            _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "no contact for pathIndex:%d", &buf, 8u);
          }

          goto LABEL_119;
        }

        v122 = 0u;
        v123 = 0u;
        v120 = 0u;
        v121 = 0u;
        v23 = a6;
        v24 = [v23 countByEnumeratingWithState:&v120 objects:v132 count:16];
        if (!v24)
        {
LABEL_29:

          v29 = BKLogTouchEvents();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(buf) = 67109376;
            DWORD1(buf) = v21;
            WORD4(buf) = 1024;
            *(&buf + 10) = v105;
            _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "Filtering pathIndex:%d from ctx:%X", &buf, 0xEu);
          }

          goto LABEL_119;
        }

        v25 = *v121;
LABEL_19:
        v26 = 0;
        while (1)
        {
          if (*v121 != v25)
          {
            objc_enumerationMutation(v23);
          }

          v27 = *(*(&v120 + 1) + 8 * v26);
          if (v27)
          {
            if (v27[1] == v21)
            {
              v111 = v27;

              v30 = *(v111 + 4);
              v31 = *(v111 + 5);
              v79 = *(v111 + 6);
              v80 = *(v111 + 7);
              v81 = *(v111 + 8);
              v82 = *(v111 + 9);
              v78 = v111[25];
              v102 = v111[26];
LABEL_32:
              v32 = IOHIDEventCreateCopy();
              IOHIDEventSetFloatValue();
              IOHIDEventSetFloatValue();
              v33 = IOHIDEventGetIntegerValue();
              v34 = IOHIDEventGetIntegerValue();
              v112 = v32;
              v35 = IOHIDEventGetIntegerValue();
              v36 = v35;
              v99 = v78;
              v100 = v35 != 0;
              v37 = v34 == 0;
              if (v34)
              {
                v38 = (v33 >> 1) & 1;
              }

              else
              {
                v38 = 0;
              }

              v104 = v38;
              if (v34)
              {
                v39 = 0;
              }

              else
              {
                v39 = (v33 >> 1) & 1;
              }

              v101 = v39;
              v107 = *(v114 + 248);
              if (v111)
              {
                v40 = v35 != 0;
                v41 = *(v111 + 2);
                v42 = v41 != 2;
                if (v41 == 3)
                {
                  v43 = *(v114 + 248);
                }

                else
                {
                  v43 = 1;
                }

                v44 = v41 != 0;
                if (v41)
                {
                  v45 = *(v114 + 248);
                }

                else
                {
                  v45 = 0;
                }

                if (v41 == 4)
                {
                  v44 = 0;
                }

                if ((v39 & v44) == 1)
                {
                  v94 = v45;
                  v46 = v34 == 0;
                  v47 = v34;
                  v48 = v43;
                  [*(v113 + 8) noteTouchUpOccurred:*(v114 + 16) detached:? context:? clientPort:?];
                  if (v41 == 3)
                  {
                    v49 = 3;
                  }

                  else
                  {
                    v49 = 1;
                  }

                  if (v41 == 2)
                  {
                    v49 = 2;
                  }

                  a6 = v95;
                  v43 = v48;
                  v34 = v47;
                  v37 = v46;
                  v40 = v36 != 0;
                  v45 = v94;
                }

                else
                {
                  if (v41 == 3)
                  {
                    v49 = 3;
                  }

                  else
                  {
                    v49 = 1;
                  }

                  if (v41 == 2)
                  {
                    v49 = 2;
                  }

                  if (v41 == 4)
                  {
                    v49 = 4;
                  }

                  a6 = v95;
                }

                v50 = v107 | v104 | v33 & v40 | v42;
                if (!v45)
                {
                  v49 = 0;
                }

                v98 = v49;
              }

              else
              {
                v98 = 0;
                v43 = 1;
                v50 = 1;
                a6 = v95;
              }

              if (v36)
              {
                v51 = 1;
              }

              else
              {
                v51 = v37;
              }

              v52 = v114;
              if ((v51 & 1) == 0)
              {
                v100 = 1;
                v53 = v43;
                IOHIDEventSetIntegerValue();
                v43 = v53;
              }

              if (v43)
              {
                if ((v50 & 1) == 0)
                {
                  v54 = BKLogTouchEvents();
                  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
                  {
                    LODWORD(buf) = 67109120;
                    DWORD1(buf) = v105;
                    _os_log_debug_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEBUG, "-------> synthetic touch down due to client change to contextID: 0x%x", &buf, 8u);
                  }

                  v52 = v114;
                }

                if ((v34 != 0 || v100) && (v33 & 0x80) == 0)
                {
                  sub_10006863C(v108, v52);
                }
              }

              else
              {
                if (v34)
                {
                  v55 = BKLogTouchEvents();
                  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
                  {
                    LODWORD(buf) = 67109120;
                    DWORD1(buf) = v105;
                    _os_log_debug_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEBUG, "-------> synthetic touch cancel due to client change to contextID: 0x%x", &buf, 8u);
                  }
                }

                else
                {
                  v55 = BKLogTouchEvents();
                  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
                  {
                    LODWORD(buf) = 67109120;
                    DWORD1(buf) = v105;
                    _os_log_debug_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEBUG, "-------> synthetic range out due to client change to contextID: 0x%x", &buf, 8u);
                  }
                }

                v52 = v114;
                IOHIDEventSetIntegerValue();
                IOHIDEventSetIntegerValue();
              }

              IOHIDEventSetIntegerValue();
              if (!((*(v52 + 16) != 0) | (v107 | v99 | v102) & 1) && *(v52 + 144) == 0.0)
              {
                goto LABEL_118;
              }

              v56 = objc_alloc_init(BKSHIDEventDigitizerPathAttributes);
              [v56 setPathIndex:v21];
              [v56 setTouchIdentifier:*(v114 + 16)];
              [v56 setUserIdentifier:*(v114 + 20)];
              [v56 setHitTestContextCategory:*(v114 + 56)];
              v57 = *(v114 + 144);
              *&v57 = v57;
              [v56 setZGradient:v57];
              [v56 setLocus:v98];
              [v56 setHitTestLocation:{v79, v80}];
              [v56 setPreciseLocation:{v81, v82}];
              if (*(v114 + 224))
              {
                v58 = [*(v114 + 240) firstObject];
                v59 = v58 ? v58[2] : 0;
                v60 = v59 == v105;

                if (v60)
                {
                  [v56 setSecurityAnalysis:*(v114 + 224)];
                }
              }

              if (!v101)
              {
                if (v104)
                {
                  goto LABEL_114;
                }

                goto LABEL_117;
              }

              v61 = v114;
              sub_100007B10(&buf, ValueAtIndex);
              v62 = *(&buf + 1);
              v63 = v129;
              if (*(&buf + 1) >= v129)
              {
LABEL_111:
                v71 = 0;
                goto LABEL_112;
              }

              v64 = buf;
              while (1)
              {
                if (v63)
                {
                  CFArrayGetValueAtIndex(v64, v62);
                }

                if (IOHIDEventGetType() == 1)
                {
                  v65 = IOHIDEventGetIntegerValue();
                  v66 = IOHIDEventGetIntegerValue();
                  if (v65 == 65280 && v66 == 34)
                  {
                    v67 = IOHIDEventGetIntegerValue();
                    v68 = v67;
                    if (v67 > 7)
                    {
                      DataValue = IOHIDEventGetDataValue();
                      if (*DataValue == 1)
                      {
                        v71 = DataValue[1];
LABEL_112:
                        v72 = sub_100085E60(v113, v61, v71, a3);
                        if (v72)
                        {
                          [v56 setAuthenticationMessage:v72];
                          goto LABEL_116;
                        }

LABEL_114:
                        v73 = BKHIDEventRoutingGetClientConnectionManager();
                        v72 = [v73 clientForTaskPort:v103];

                        if (v72)
                        {
                          v74 = +[BKHIDSystemInterface sharedInstance];
                          v75 = [v74 deliveryManager];

                          v76 = [v75 simpleProvenanceOriginator];
                          v118[0] = _NSConcreteStackBlock;
                          v118[1] = 3221225472;
                          v118[2] = sub_1000864B4;
                          v118[3] = &unk_1000FC928;
                          v119 = v72;
                          v77 = [v76 buildProvenance:v118];
                          [v56 setProvenance:v77];
                        }

LABEL_116:

LABEL_117:
                        [v110 addObject:v56];

LABEL_118:
                        IOHIDEventAppendEvent();
                        CFRelease(v112);
                        ++v106;
                        v29 = v111;
LABEL_119:

                        v22 = v114;
LABEL_120:

LABEL_121:
                        if (++v15 == v115)
                        {
                          if (v106 > 0)
                          {
                            v83 = objc_alloc_init(BKSHIDEventDigitizerAttributes);
                            v84 = [BKSHIDEventDeferringToken tokenForIdentifierOfCAContext:v105];
                            [v83 setToken:v84];

                            [v83 setInitialTouchTimestamp:a7];
                            [v83 setSystemGesturesPossible:a5 != 0];
                            [v83 setPathAttributes:v110];
                            if (a3)
                            {
                              v85 = *(a3 + 16);
                              v86 = v85;
                              if (v85)
                              {
                                [v83 setSceneTouchBehavior:{objc_msgSend(v85, "touchBehavior")}];
                              }
                            }

                            else
                            {
                              v86 = 0;
                            }

                            if (*(v113 + 10))
                            {
                              [v83 setOptions:256];
                            }

                            sub_100007B10(&buf, cf);
                            sub_100007418(&buf);
                            v87 = 0;
                            v88 = 0;
                            *v124 = buf;
                            v125 = v129;
                            v126 = v130;
                            v127 = v131;
                            while (*(&v125 + 1))
                            {
                              *(&v126 + 1) = *(&v125 + 1);
                              v127 = v126;
                              IOHIDEventGetIntegerValue();
                              IOHIDEventGetIntegerValue();
                              v89 = IOHIDEventGetIntegerValue();
                              v87 |= v89 & 0xF060807;
                              v88 |= (v89 >> 7) & 1;
                              sub_100007418(v124);
                            }

                            if (v88)
                            {
                              v90 = v108;
                              if (!v90 || (v91 = v90->_count == 0, v90, v91))
                              {
                                v92 = BKLogTouchEvents();
                                if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
                                {
                                  LODWORD(buf) = 67109120;
                                  DWORD1(buf) = v105;
                                  _os_log_debug_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEBUG, "full collection cancel contextID: 0x%X", &buf, 8u);
                                }
                              }
                            }

                            IOHIDEventSetIntegerValue();
                            IOHIDEventSetIntegerValue();
                            IOHIDEventSetIntegerValue();
                            [*(v113 + 16) setObject:v108 forKey:v105];
                            sub_10002D500(v96, cf, v83, a3);
                          }

                          goto LABEL_142;
                        }

                        goto LABEL_8;
                      }
                    }

                    else
                    {
                      v69 = BKLogTouchEvents();
                      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
                      {
                        *v124 = 67109120;
                        *&v124[4] = v68;
                        _os_log_error_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, "malformed AX subevent (length is %d), want at least 8 bytes", v124, 8u);
                      }

                      v61 = v114;
                    }
                  }
                }

                if (v63 == ++v62)
                {
                  goto LABEL_111;
                }
              }
            }
          }

          else if (!v21)
          {

            v111 = 0;
            v78 = 0;
            v102 = 0;
            v79 = 0.0;
            v80 = 0.0;
            v81 = 0.0;
            v82 = 0.0;
            goto LABEL_32;
          }

          if (v24 == ++v26)
          {
            v28 = [v23 countByEnumeratingWithState:&v120 objects:v132 count:16];
            v24 = v28;
            if (!v28)
            {
              goto LABEL_29;
            }

            goto LABEL_19;
          }
        }
      }
    }

LABEL_142:
    CFRelease(cf);
  }
}

void sub_100085CB0(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  if (a2)
  {
    v4 = *(a2 + 8);
  }

  else
  {
    v4 = 0;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [*(a1 + 128) objectForKey:{v4, 0}];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (!v6)
  {

LABEL_16:
    v10 = BKLogTouchEvents();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v16 = a2;
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "adding latent: %{public}@", buf, 0xCu);
    }

    [*(a1 + 144) addObject:a2];
    return;
  }

  v7 = 0;
  v8 = *v12;
  do
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v12 != v8)
      {
        objc_enumerationMutation(v5);
      }

      if (*(*(*(&v11 + 1) + 8 * i) + 32) > v7)
      {
        v7 = *(*(*(&v11 + 1) + 8 * i) + 32);
      }
    }

    v6 = [v5 countByEnumeratingWithState:&v11 objects:v17 count:16];
  }

  while (v6);

  if (v7 <= 1)
  {
    goto LABEL_16;
  }
}

id sub_100085E60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a4)
  {
    v8 = *(a4 + 8);
  }

  else
  {
    v8 = 0;
  }

  v9 = [*(a2 + 240) firstObject];
  if (v9)
  {
    v10 = v9[2];
  }

  else
  {
    v10 = 0;
  }

  if (v10 != v8 || !*(a2 + 216))
  {
    v34 = 0;
    goto LABEL_44;
  }

  v11 = [*(a1 + 16) _queue_slotRecordForSlotID:*(a2 + 24)];
  v12 = v11;
  if (!v11)
  {
    v35 = 0;
LABEL_42:
    v35 = v35;
    v34 = v35;
    goto LABEL_43;
  }

  v43 = *(v11 + 16);
  memset(__src, 0, sizeof(__src));
  v13 = *(a1 + 40);
  if (v13)
  {
    v13 = v13[1];
  }

  v14 = v13;
  v15 = [*(a1 + 8) displayUUID];
  [v14 convertReferenceLocation:v15 toCAScreenLocationForDisplayUUID:{*(a2 + 176), *(a2 + 184)}];
  v17 = v16;
  v19 = v18;
  v42 = [*(a2 + 208) contextIDsToExcludeFromHitTesting];
  v20 = sub_10000ED90(BKDisplayController, 0, 0, v43, v42);
  [v14 contextIDAtCAScreenLocation:v15 displayUUID:v20 options:0 securityAnalysis:__src results:{v17, v19}];
  if (__src[0] != v8)
  {
    v36 = BKLogTouchEvents();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      v52 = v8;
      v53 = 1024;
      v54 = __src[0];
      _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "auth spec context mismatch between down:%X up:%X", buf, 0xEu);
    }

    if (__src[1] == *(a2 + 24))
    {
      v35 = 0;
      v37 = 1;
      goto LABEL_40;
    }

    goto LABEL_28;
  }

  v21 = BKLogTouchEvents();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v52 = __src[0];
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "auth spec contextID down/up match:%X", buf, 8u);
  }

  if (__src[1] != *(a2 + 24))
  {
LABEL_28:
    v24 = BKLogTouchEvents();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v39 = *(a2 + 24);
      *buf = 67109376;
      v52 = v39;
      v53 = 1024;
      v54 = __src[1];
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "ignoring auth spec: slotID changed between down:%X and up:%X", buf, 0xEu);
    }

    v35 = 0;
    v37 = 1;
    goto LABEL_39;
  }

  if (a4)
  {
    v22 = *(a4 + 12);
  }

  else
  {
    v22 = 0;
  }

  v23 = BKHIDEventRoutingGetClientConnectionManager();
  v24 = [v23 clientForTaskPort:v22];

  if (v24)
  {
    v25 = *(a1 + 88);
    if (!v25)
    {
      v26 = +[BKHIDSystemInterface sharedInstance];
      v28 = *(a1 + 88);
      v27 = (a1 + 88);
      *v27 = v26;

      v25 = *v27;
    }

    v29 = [v25 deliveryManager];
    v30 = [v29 authenticationOriginator];
    v31 = [v43 secureName];
    if (a3)
    {
      v32 = v31;
      if (v31 == a3)
      {
        v33 = 2;
      }

      else
      {
        log = BKLogTouchEvents();
        if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109376;
          v52 = v32;
          v53 = 1024;
          v54 = a3;
          _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "auth secure name:%X does not match requested secure name:%X", buf, 0xEu);
        }

        v33 = 1;
      }
    }

    else
    {
      v33 = 0;
    }

    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_100086504;
    v44[3] = &unk_1000FC900;
    memcpy(v48, __src, sizeof(v48));
    v44[4] = a2;
    v49 = v33;
    v45 = v43;
    v46 = v24;
    v47 = v12;
    v35 = [v30 buildMessage:v44];
  }

  else
  {
    v29 = BKLogTouchEvents();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      if (a4)
      {
        v40 = *(a4 + 12);
      }

      else
      {
        v40 = 0;
      }

      *buf = 67109120;
      v52 = v40;
      _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "auth cannot get audit token for port:%X", buf, 8u);
    }

    v35 = 0;
  }

  v37 = 0;
LABEL_39:

LABEL_40:
  if ((v37 & 1) == 0)
  {
    goto LABEL_42;
  }

  v34 = 0;
LABEL_43:

LABEL_44:

  return v34;
}

id sub_1000864B4(uint64_t a1, void *a2)
{
  [a2 setEventType:17];
  v4 = [*(a1 + 32) versionedPID];

  return [a2 setVersionedPID:v4];
}

void sub_100086504(uint64_t a1, void *a2)
{
  [a2 setOriginIdentifier:0xC181BADB23D8497BLL];
  [a2 setEventType:11];
  sub_10000EBA0(a2, (a1 + 64));
  v5 = sub_10000EBFC(a1 + 64);
  [a2 setHitTestInformationFromStartEvent:*(*(a1 + 32) + 216)];
  [a2 setHitTestInformationFromEndEvent:v5];
  [a2 setSecureNameStatus:*(a1 + 368)];
  [a2 setContext:{objc_msgSend(*(a1 + 40), "authenticationMessageContext")}];
  [a2 setVersionedPID:{objc_msgSend(*(a1 + 48), "versionedPID")}];
  v4 = *(a1 + 56);
  if (v4)
  {
    LOBYTE(v4) = *(v4 + 8);
  }

  [a2 setRegistrantEntitled:v4 & 1];
}

BKTouchContact *sub_100086600(int64_t a1)
{
  v2 = objc_alloc_init(BKTouchContact);
  v3 = v2;
  if ((dword_1001260A8 + 1) > 1)
  {
    v4 = dword_1001260A8 + 1;
  }

  else
  {
    v4 = 1;
  }

  dword_1001260A8 = v4;
  v2->_pathIndex = a1;
  v2->_touchIdentifier = v4;
  v2->_transducerType = IOHIDEventGetIntegerValue();
  v5 = BKLogTouchEvents();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7[0] = 67109376;
    v7[1] = a1;
    v8 = 1024;
    v9 = dword_1001260A8;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "new contact for pathIndex: %d touchID: %X", v7, 0xEu);
  }

  return v3;
}

float64x2_t sub_10008672C(uint64_t a1, uint64_t a2, float64_t a3, float64_t a4, float64_t a5, float64_t a6)
{
  v34 = 0uLL;
  v33 = 1.0;
  v31 = 0uLL;
  __asm { FMOV            V0.2D, #1.0 }

  v26 = _Q0;
  v32 = _Q0;
  v13 = [*(a2 + 8) displayUUID];
  sub_100007090(v13, &v34, &v34.f64[1], &v33, 0, &v31);

  v14.f64[0] = a3;
  v14.f64[1] = a4;
  v15.f64[0] = a5;
  v15.f64[1] = a6;
  v16 = vdupq_lane_s64(*&v33, 0);
  v17 = vmlaq_f64(vmulq_n_f64(v15, v33), v34, vminnmq_f64(vmaxnmq_f64(vdivq_f64(vsubq_f64(v14, v31), v32), 0), v26));
  v18 = vdivq_f64(vrndaq_f64(v17), v16);
  v19 = 1.0 / v33 * 0.5;
  v20 = v19 + v18.f64[0];
  v21 = v18.f64[0] - v19;
  if (v18.f64[0] == v34.f64[0] / v33)
  {
    v22 = 1;
  }

  else
  {
    v21 = v18.f64[0];
    v22 = 0;
  }

  if (v18.f64[0] == 0.0)
  {
    v23 = 1;
  }

  else
  {
    v20 = v21;
    v23 = v22;
  }

  v24 = v18.f64[1];
  if (v18.f64[1] == 0.0)
  {
    v24 = v19 + v18.f64[1];
LABEL_11:
    v23 = 1;
    goto LABEL_12;
  }

  if (v18.f64[1] == v34.f64[1] / v33)
  {
    v24 = v18.f64[1] - v19;
    goto LABEL_11;
  }

LABEL_12:
  result = vdivq_f64(v17, v16);
  *a1 = 1;
  *(a1 + 1) = v23;
  *(a1 + 2) = *(a2 + 205);
  *(a1 + 8) = v18;
  *(a1 + 24) = v20;
  *(a1 + 32) = v24;
  *(a1 + 40) = result;
  return result;
}

void sub_100086894(uint64_t a1, uint64_t a2)
{
  if (a2 == 3)
  {
    sub_10006863C(*(a1 + 32), *(a1 + 40));
    if ([*(a1 + 48) shouldAvoidHitTesting])
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }
  }

  else if (a2 == 2 || a2 == 1)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    sub_10006863C(v3, v4);
  }
}

void sub_100086910(uint64_t a1, void *a2)
{
  if (a1 && *(a1 + 176) != a2)
  {
    v4 = [a2 copy];
    v5 = *(a1 + 176);
    *(a1 + 176) = v4;

    v6 = BKLogTouchEvents();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543618;
      v19 = a2;
      v20 = 2114;
      v21 = a1;
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Setting hittest regions to: %{public}@ for digitizer: %{public}@", buf, 0x16u);
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = *(a1 + 72);
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v13 + 1) + 8 * v10) hitTestRegionsDidChange:{a2, v13}];
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    v11 = *(a1 + 112);
    if (v11)
    {
      v12 = v11[31] == 0;

      if (!v12)
      {
        sub_100083260(a1, *(a1 + 112));
      }
    }
  }
}

void sub_100086AE4(uint64_t a1, __IOHIDEvent *a2)
{
  if (!a1)
  {
    return;
  }

  if ((*(a1 + 204) & 1) == 0)
  {
    v3 = [*(a1 + 8) propertyForKey:@"AccurateMaxDigitizerPressureValue"];
    v4 = v3;
    if (v3)
    {
      [v3 floatValue];
    }

    else
    {
      v5 = 0;
    }

    *(a1 + 204) = 1;
    *(a1 + 200) = v5;
  }

  v204 = 0u;
  v205 = 0u;
  v202 = 0u;
  v203 = 0u;
  v188 = a1;
  v6 = *(a1 + 72);
  v7 = [v6 countByEnumeratingWithState:&v202 objects:v227 count:16];
  if (v7)
  {
    v8 = *v203;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v203 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v202 + 1) + 8 * i) touchWillStartProcessingTouchCollection];
      }

      v7 = [v6 countByEnumeratingWithState:&v202 objects:v227 count:16];
    }

    while (v7);
  }

  if (BKSHIDEventContainsUpdates())
  {
    location = *(v188 + 184);
    if (location)
    {
      v184 = sub_1000093EC(a2);
      v189 = sub_10002BAAC(location, v184);
      if (v189)
      {
        v240 = 0u;
        v239 = 0u;
        v238 = 0u;
        v237 = 0u;
        v236 = 0u;
        v235 = 0u;
        v234 = 0u;
        v233 = 0u;
        v232 = 0u;
        v230 = 0u;
        v231 = 0u;
        v229 = 0u;
        memset(v228, 0, sizeof(v228));
        sub_100007B10(v248, a2);
        sub_100007418(v248);
        v186 = 0;
        v10 = 0;
        *buf = *v248;
        v245 = v249;
        v246 = v250;
        *&v247 = v251;
        while (1)
        {
          super_class = v245.super_class;
          if (!v245.super_class)
          {
            break;
          }

          receiver = v246.receiver;
          v246.super_class = v245.super_class;
          *&v247 = v246.receiver;
          v13 = sub_10002B77C(v189, v246.receiver);
          IntegerValue = IOHIDEventGetIntegerValue();
          if (!v13)
          {
            v84 = IOHIDEventGetIntegerValue();
            v85 = v84;
            if (v84)
            {
              v86 = BKLogTouchEvents();
              if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
              {
                *v241 = 134218240;
                *&v241[4] = receiver;
                *&v241[12] = 2048;
                *&v241[14] = v85;
                _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "remainingUpdatesMask for path %ld is zero, but we got updates:%lX", v241, 0x16u);
              }
            }

            goto LABEL_113;
          }

          v15 = IntegerValue;
          *(&v228[0].receiver + receiver) = super_class;
          sub_10002B914(v189, IntegerValue, receiver);
          v10 |= 1 << receiver;
          v16 = v186;
          if (v15)
          {
            v16 = v186 + 1;
          }

          v186 = v16;
          sub_100007418(buf);
        }

        if (v10)
        {
          v247 = 0u;
          v246 = 0;
          v245 = 0;
          *buf = 0u;
          obj = v189[17];
          v39 = [obj countByEnumeratingWithState:buf objects:v248 count:16];
          v40 = 0;
          if (v39)
          {
            v194 = *v245.receiver;
            do
            {
              v41 = 0;
              do
              {
                if (*v245.receiver != v194)
                {
                  objc_enumerationMutation(obj);
                }

                v42 = *(*&buf[8] + 8 * v41);
                if (v42)
                {
                  v43 = v42[6];
                }

                else
                {
                  v43 = 0;
                }

                v44 = v43 & v10;
                if ((v43 & v10) != 0)
                {
                  v45 = location[3];
                  IOHIDEventGetTimeStamp();
                  LODWORD(v173) = 0;
                  HIDWORD(v173) = IOHIDEventGetEventFlags() & 0x20 | 4;
                  DigitizerEvent = IOHIDEventCreateDigitizerEvent();
                  v47 = v45;
                  v48 = v47;
                  if (v47)
                  {
                    v49 = *(v47 + 1);
                  }

                  else
                  {
                    v49 = 0;
                  }

                  v50 = v49;
                  [v50 senderID];
                  IOHIDEventSetSenderID();

                  IOHIDEventGetIntegerValue();
                  IOHIDEventSetIntegerValue();
                  IOHIDEventGetIntegerValue();
                  IOHIDEventSetIntegerValue();
                  IOHIDEventGetIntegerValue();
                  IOHIDEventSetIntegerValue();
                  IOHIDEventGetIntegerValue();
                  IOHIDEventSetIntegerValue();
                  IOHIDEventGetIntegerValue();
                  IOHIDEventSetIntegerValue();

                  for (j = 0; j != 30; ++j)
                  {
                    if ((v44 >> j))
                    {
                      v52 = *(&v228[0].receiver + j);
                      IOHIDEventAppendEvent();
                    }
                  }

                  v53 = objc_alloc_init(BKSHIDEventDigitizerAttributes);
                  if (!v40)
                  {
                    v40 = objc_alloc_init(BKHIDEventCollector);
                  }

                  v54 = sub_100003704(location);
                  v55 = v54;
                  if (v40 && v54 && [*(v54 + 2) count])
                  {
                    sub_100008008(v40);
                    [(NSMutableArray *)v40->_collectedEvents addObjectsFromArray:v55[2]];
                  }

                  sub_10002D500(v40, a2, v53, v42);
                  CFRelease(DigitizerEvent);
                }

                v41 = v41 + 1;
              }

              while (v41 != v39);
              v56 = [obj countByEnumeratingWithState:buf objects:v248 count:16];
              v39 = v56;
            }

            while (v56);
          }

          if (!v186)
          {
            v57 = sub_10002BBF8(location, v184);
            if (v57 != v189)
            {
              v168 = [NSString stringWithFormat:@"pending/removed items don't match: %@/%@", v57, v189];
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                v169 = NSStringFromSelector("_handleDidUpdateEvent:");
                v170 = objc_opt_class();
                v171 = NSStringFromClass(v170);
                *v241 = 138544642;
                *&v241[4] = v169;
                *&v241[12] = 2114;
                *&v241[14] = v171;
                *&v241[22] = 2048;
                *&v241[24] = location;
                LOWORD(v242.receiver) = 2114;
                *(&v242.receiver + 2) = @"BKDirectTouchUpdateEvents.mm";
                WORD1(v242.super_class) = 1024;
                HIDWORD(v242.super_class) = 260;
                LOWORD(v243[0]) = 2114;
                *(v243 + 2) = v168;
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v241, 0x3Au);
              }

              v172 = v168;
              [v168 UTF8String];
              _bs_set_crash_log_message();
              __break(0);
              JUMPOUT(0x100088570);
            }
          }
        }

        else
        {
          v40 = 0;
        }

        v87 = v40;
      }

      else
      {
        v37 = BKLogTouchEvents();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v38 = [BSDescriptionStream descriptionForRootObject:location[1]];
          LODWORD(v228[0].receiver) = 134218242;
          *(&v228[0].receiver + 4) = v184;
          WORD2(v228[0].super_class) = 2114;
          *(&v228[0].super_class + 6) = v38;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "BKDigitizer: got an event update with generation:%ld but I can't find any pending items waiting for an update: %{public}@", v228, 0x16u);
        }

LABEL_113:
        v87 = 0;
      }
    }

    else
    {
      v87 = 0;
    }

    sub_100081210(v188, v87);

    goto LABEL_257;
  }

  v179 = [*(v188 + 8) displayUUID];
  if (!*(v188 + 56))
  {
    v17 = +[BKTouchDeliveryPolicyServer sharedServer];
    objc_storeStrong((v188 + 56), v17);
    v18 = *(v188 + 24);
    if (v18)
    {
      objc_storeStrong((v18 + 8), v17);
    }
  }

  v19 = a2;
  v181 = objc_alloc_init(BKHIDEventCollector);
  v216 = v181;
  v217 = v188;
  v193 = v217;
  v20 = *(v217 + 14);
  locationa = (v217 + 112);
  if (v20)
  {
    v180 = objc_alloc_init(BKTouchContactSet);
    if (v20[31] >= 1)
    {
      v22 = v20[32];
      v21 = v20[33];
      if (v22 <= v21)
      {
        v23 = v22 + 1;
        do
        {
          v24 = v20[v23];
          if (v24)
          {
            v25 = v24;
            v26 = [BKTouchContact alloc];
            if (v26)
            {
              v228[0].receiver = v26;
              v228[0].super_class = BKTouchContact;
              v27 = [(objc_super *)v228 init];
              v28 = v27;
              if (v27)
              {
                v27[1] = *(v25 + 1);
                *(v27 + 4) = *(v25 + 4);
                *(v27 + 5) = *(v25 + 5);
                *(v27 + 6) = *(v25 + 6);
                v27[4] = *(v25 + 4);
                v27[6] = *(v25 + 6);
                v27[7] = *(v25 + 7);
                *(v27 + 16) = *(v25 + 16);
                *(v27 + 34) = *(v25 + 34);
                objc_storeStrong(v27 + 9, *(v25 + 9));
                v28[10] = *(v25 + 10);
                *(v28 + 11) = *(v25 + 88);
                v28[13] = *(v25 + 13);
                *(v28 + 7) = *(v25 + 7);
                v29 = *(v25 + 8);
                v28[18] = *(v25 + 18);
                *(v28 + 8) = v29;
                v30 = *(v25 + 152);
                v31 = *(v25 + 168);
                v32 = *(v25 + 184);
                v28[25] = *(v25 + 25);
                *(v28 + 23) = v32;
                *(v28 + 21) = v31;
                *(v28 + 19) = v30;
                objc_storeStrong(v28 + 26, *(v25 + 26));
                objc_storeStrong(v28 + 27, *(v25 + 27));
                objc_storeStrong(v28 + 28, *(v25 + 28));
                v33 = [*(v25 + 29) mutableCopy];
                v34 = v28[29];
                v28[29] = v33;

                objc_storeStrong(v28 + 30, *(v25 + 30));
                *(v28 + 248) = v25[248];
                *(v28 + 250) = v25[250];
              }
            }

            else
            {
              v28 = 0;
            }

            v35 = *(&v180->super.isa + v23);
            *(&v180->super.isa + v23) = v28;

            v21 = v20[33];
            v19 = a2;
          }

          v36 = v23++ - 1;
        }

        while (v36 < v21);
        v22 = v20[32];
      }

      v180->_lowIndex = v22;
      v180->_highIndex = v20[33];
      v180->_count = v20[31];
    }
  }

  else
  {
    v180 = 0;
  }

  v58 = IOHIDEventGetIntegerValue();
  if ((v58 & 0x80) != 0)
  {
    v65 = BKLogTouchEvents();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v228[0].receiver) = 0;
      _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "cancel received from HID", v228, 2u);
    }

    v66 = objc_alloc_init(BKTouchContactSet);
    sub_100007B10(buf, a2);
    sub_100007418(buf);
    *v241 = *buf;
    *&v241[16] = v245;
    v242 = v246;
    v243[0] = v247;
    while (*&v241[24])
    {
      v242.super_class = *&v241[24];
      v243[0] = v242.receiver;
      v67 = sub_1000689B8(*locationa, v242.receiver);
      v68 = v67;
      if (v67)
      {
        v69 = *(v67 + 16);
        if (v69)
        {
          v251 = 0u;
          v250 = 0;
          v249 = 0;
          *v248 = 0u;
          v70 = *(v188 + 72);
          v71 = [v70 countByEnumeratingWithState:v248 objects:v228 count:16];
          if (v71)
          {
            v72 = *v249.receiver;
            do
            {
              for (k = 0; k != v71; k = k + 1)
              {
                if (*v249.receiver != v72)
                {
                  objc_enumerationMutation(v70);
                }

                [*(*&v248[8] + 8 * k) touchDidHIDCancel:v69];
              }

              v71 = [v70 countByEnumeratingWithState:v248 objects:v228 count:16];
            }

            while (v71);
          }
        }

        sub_10006863C(v66, v68);
      }

      sub_100007418(v241);
    }

    v74 = v66;
    p_isa = &v74->super.isa;
    if (!v74 || (v76 = v74->_count == 0, v74, v77 = p_isa, v76))
    {
      v78 = BKLogTouchEvents();
      if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
      {
        SenderID = IOHIDEventGetSenderID();
        *buf = 134217984;
        *&buf[4] = SenderID;
        _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_INFO, "received cancel without child paths from senderID:0x%llX", buf, 0xCu);
      }

      v77 = *locationa;
    }

    v80 = v77;

    v81 = v193;
    sub_100080928(v193, v80, 0, 0);
    v82 = *locationa;
    if (!v82 || (v83 = v82[31] == 0, v82, v81 = v193, v83))
    {
      sub_100080DA8(v81, 0);
    }

    *(v81 + 208) = 0;

    goto LABEL_256;
  }

  sub_100007B10(v215, v19);
  sub_100007418(v215);
  if (v215[2])
  {
    _BKHIDNoteUserEventOccurredOnDisplay();
    if ((v58 & 0x20000) == 0)
    {
      v59 = [*(v193 + 32) isActive];
      v60 = *(v193 + 208);
      if ((v59 & 1) != 0 || *(v193 + 208))
      {
        sub_100007B10(v228, v19);
        sub_100007418(v228);
        v249 = v228[1];
        *v248 = v228[0];
        v250 = v228[2];
        *&v251 = v229;
        v61 = v228[1].super_class;
        if (v228[1].super_class)
        {
          v62 = 0;
          do
          {
            v250.super_class = v61;
            *&v251 = v250.receiver;
            v63 = IOHIDEventGetIntegerValue();
            sub_100007418(v248);
            if (v63)
            {
              ++v62;
            }

            v61 = v249.super_class;
          }

          while (v249.super_class);
          v64 = v62 != 0;
        }

        else
        {
          v64 = 0;
        }

        *(v193 + 208) = v64;
        v178 = BKLogTouchEvents();
        if (os_log_type_enabled(v178, OS_LOG_TYPE_DEFAULT))
        {
          v148 = [*(v188 + 8) senderID];
          v149 = [*(v193 + 32) reasons];
          v150 = [BSDescriptionStream descriptionForRootObject:v149];
          v151 = *(v193 + 208);
          LODWORD(v228[0].receiver) = 134218754;
          *(&v228[0].receiver + 4) = v148;
          WORD2(v228[0].super_class) = 2114;
          *(&v228[0].super_class + 6) = v150;
          HIWORD(v228[1].receiver) = 1024;
          LODWORD(v228[1].super_class) = v60;
          WORD2(v228[1].super_class) = 1024;
          *(&v228[1].super_class + 6) = v151;
          _os_log_impl(&_mh_execute_header, v178, OS_LOG_TYPE_DEFAULT, "%llX ignoring touch event (%{public}@) prevHadTouches:%{BOOL}u nowHasTouches:%{BOOL}u", v228, 0x22u);
        }

LABEL_255:

        goto LABEL_256;
      }
    }

    *(v193 + 206) = IOHIDEventGetIntegerValue() != 0;
    *(v193 + 207) = IOHIDEventGetIntegerValue() != 0;
    v178 = sub_1000836E4(v193, v19, v180);
    v88 = sub_100095250(*(v193 + 24), v19, v178, *(v193 + 176), *(v193 + 120), *(v193 + 128));
    if (v88 && *(v88 + 8) == 1)
    {
      *(v193 + 96) = *(v88 + 16);
    }

    v177 = v88;
    objc_storeStrong(locationa, v178);
    v89 = +[SLGLog sharedInstance];
    v90 = [v89 isEnabled];

    if (v90)
    {
      sub_10003BF28(v193, a2);
    }

    v213 = 0u;
    v214 = 0u;
    v211 = 0u;
    v212 = 0u;
    v91 = v180;
    v92 = [(BKTouchContactSet *)v91 countByEnumeratingWithState:&v211 objects:buf count:16];
    if (v92)
    {
      v93 = 0;
      v94 = *v212;
      do
      {
        for (m = 0; m != v92; m = m + 1)
        {
          if (*v212 != v94)
          {
            objc_enumerationMutation(v91);
          }

          v96 = *(*(&v211 + 1) + 8 * m);
          if (*(v96 + 32) == 2)
          {
            v93 |= *(v96 + 248) ^ 1;
          }
        }

        v92 = [(BKTouchContactSet *)v91 countByEnumeratingWithState:&v211 objects:buf count:16];
      }

      while (v92);
      v97 = v93 ^ 1;
    }

    else
    {
      v97 = 1;
    }

    v209 = 0u;
    v210 = 0u;
    v207 = 0u;
    v208 = 0u;
    v98 = *locationa;
    v99 = [v98 countByEnumeratingWithState:&v207 objects:v241 count:16];
    if (v99)
    {
      v190 = 0;
      v100 = *v208;
      do
      {
        for (n = 0; n != v99; n = n + 1)
        {
          if (*v208 != v100)
          {
            objc_enumerationMutation(v98);
          }

          v102 = *(*(&v207 + 1) + 8 * n);
          if (*(v102 + 32) == 2)
          {
            v190 |= *(v102 + 248) ^ 1;
          }
        }

        v99 = [v98 countByEnumeratingWithState:&v207 objects:v241 count:16];
      }

      while (v99);
    }

    else
    {
      v190 = 0;
    }

    v206 = 0;
    v185 = v190 & v97;
    if (v190 & v97 & 1) != 0 || ((v190 ^ 1))
    {
      v103 = BKLogTouchEvents();
      if (os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(v228[0].receiver) = 67109376;
        HIDWORD(v228[0].receiver) = v185 & 1;
        LOWORD(v228[0].super_class) = 1024;
        *(&v228[0].super_class + 2) = (v190 ^ 1) & 1;
        _os_log_debug_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEBUG, "touchstreams: start sending isFirstDown:%{BOOL}u lifted:%{BOOL}u", v228, 0xEu);
      }
    }

    v218 = 0;
    v104 = *(v193 + 40);
    if (v104)
    {
      v104 = v104[3];
    }

    v176 = v104;
    v105 = sub_10008C650(v176, &v206, &v218);
    v174 = v218 == 3;
    v175 = v105;
    if (v105)
    {
      v251 = 0u;
      v250 = 0;
      v249 = 0;
      *v248 = 0u;
      v182 = v176;
      v106 = [v182 countByEnumeratingWithState:v248 objects:v228 count:16];
      if (v106)
      {
        aSelector = *v249.receiver;
        do
        {
          v187 = v106;
          for (ii = 0; ii != v187; ii = ii + 1)
          {
            if (*v249.receiver != aSelector)
            {
              objc_enumerationMutation(v182);
            }

            v108 = *(*&v248[8] + 8 * ii);
            obja = v108;
            if (v108)
            {
              v109 = *(v108 + 10);
            }

            else
            {
              v109 = 0;
            }

            if (v185)
            {
              if (v109 != 1)
              {
                goto LABEL_165;
              }
            }

            else if (v190 & 1 | (v109 != 1))
            {
LABEL_165:
              v110 = v108;
              if (v108)
              {
                if (*(v108 + 9) == 1 && v109 == 1)
                {
                  goto LABEL_189;
                }
              }

              goto LABEL_170;
            }

            if (v108)
            {
              *(v108 + 10) = 2;
            }

LABEL_170:
            if (!a2)
            {
              __assert_rtn("[BKDirectTouchState _touchStreamClient:appendPathCollectionEvent:toEventPoster:initialTouchTimestamp:]", "BKDirectTouchState.mm", 2443, "pathCollectionEvent");
            }

            v112 = *(v193 + 168);
            v113 = objc_alloc_init(NSMutableArray);
            v114 = [*(v188 + 8) displayUUID];
            if (obja)
            {
              v115 = obja[6];
              v116 = v115;
              if (v115)
              {
                v117 = v115[2];
              }

              else
              {
                v117 = 0;
              }

              v118 = *(obja + 9);
            }

            else
            {
              v117 = 0;
              v116 = 0;
              v118 = 0;
            }

            *(&v222 + 1) = 0;
            *&v223 = 0;
            Children = IOHIDEventGetChildren();
            *&v222 = Children;
            if (Children)
            {
              *&v223 = CFArrayGetCount(Children);
            }

            sub_100007418(&v222);
            *v252 = v222;
            *&v252[16] = v223;
            v253 = v224;
            *&v254 = v225;
            while (*&v252[24])
            {
              v120 = v253;
              *(&v253 + 1) = *&v252[24];
              *&v254 = v253;
              v121 = sub_1000689B8(*locationa, v253);
              v122 = v121;
              if (v121 && ((v118 & 1) == 0 || (*(v121 + 248) & 1) == 0))
              {
                IOHIDEventGetFloatValue();
                v124 = v123;
                IOHIDEventGetFloatValue();
                sub_10008672C(v221, v193, v124, v125, CGPointZero.x, CGPointZero.y);
                sub_100088D78(v219, v193, v221, v117, v114);
                v126 = objc_alloc_init(BKHitTestResultPathLocation);
                v127 = v126;
                if (v126)
                {
                  v128 = v219[1];
                  *&v126->_pathLocation.locationsAreValid = v219[0];
                  *&v126->_pathLocation.location.y = v128;
                  *&v126->_pathLocation.hitTestLocation.y = v219[2];
                  v126->_pathLocation.preciseLocation.y = v220;
                  v126->_pathIndex = v120;
                  v126->_contextRelationship = 0;
                }

                [v113 addObject:v126];
                [v122[29] addObject:v116];
              }

              sub_100007418(v252);
            }

            if ([v113 count])
            {
              sub_100084C1C(v193, a2, v116, v181, 0, v113, v112);
            }

            v110 = obja;
LABEL_189:
          }

          v106 = [v182 countByEnumeratingWithState:v248 objects:v228 count:16];
        }

        while (v106);
      }

      if (v185)
      {
        IOHIDEventGetTimeStamp();
        BSMonotonicReferencedTimeFromMachTime();
        *(v193 + 168) = v129;
      }
    }

    v130 = a2;
    if (v177 && ![*(v177 + 24) count])
    {
      v147 = BKLogTouchEvents();
      if (os_log_type_enabled(v147, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v228[0].receiver) = 0;
        _os_log_debug_impl(&_mh_execute_header, v147, OS_LOG_TYPE_DEBUG, "no events for regular clients", v228, 2u);
      }

      sub_1000091B8(v193);
    }

    else
    {
      if ((v175 & v185) == 1)
      {
        v131 = [*(v188 + 8) displayUUID];
        v224 = 0u;
        v225 = 0u;
        v222 = 0u;
        v223 = 0u;
        v132 = sub_100002D14(*(v193 + 40));
        v133 = [v132 countByEnumeratingWithState:&v222 objects:v228 count:16];
        if (v133)
        {
          v134 = *v223;
LABEL_202:
          v135 = 0;
          while (1)
          {
            if (*v223 != v134)
            {
              objc_enumerationMutation(v132);
            }

            v136 = *(*(&v222 + 1) + 8 * v135);
            if (v136 != v193)
            {
              v137 = *(v136 + 112);
              if (v137)
              {
                v138 = v137[31] == 0;

                if (!v138)
                {
                  break;
                }
              }
            }

            if (v133 == ++v135)
            {
              v133 = [v132 countByEnumeratingWithState:&v222 objects:v228 count:16];
              if (v133)
              {
                goto LABEL_202;
              }

              goto LABEL_210;
            }
          }
        }

        else
        {
LABEL_210:

          v139 = *(v193 + 160);
          IOHIDEventGetTimeStamp();
          BSMonotonicReferencedTimeFromMachTime();
          if (v139 >= v140)
          {
            v132 = BKLogTouchEvents();
            if (os_log_type_enabled(v132, OS_LOG_TYPE_DEBUG))
            {
              *v248 = 138543362;
              *&v248[4] = v131;
              _os_log_debug_impl(&_mh_execute_header, v132, OS_LOG_TYPE_DEBUG, "Assuming system gestures are not possible (lost race with SpringBoard) (%{public}@)", v248, 0xCu);
            }
          }

          else
          {
            v141 = BKLogTouchEvents();
            if (os_log_type_enabled(v141, OS_LOG_TYPE_DEBUG))
            {
              *v248 = 138543362;
              *&v248[4] = v131;
              _os_log_debug_impl(&_mh_execute_header, v141, OS_LOG_TYPE_DEBUG, "Assuming system gestures are possible (%{public}@)", v248, 0xCu);
            }

            v206 = 1;
            v253 = 0u;
            v254 = 0u;
            memset(v252, 0, sizeof(v252));
            v142 = *(v193 + 40);
            if (v142)
            {
              v142 = v142[3];
            }

            v132 = v142;
            v143 = [v132 countByEnumeratingWithState:v252 objects:v248 count:16];
            if (v143)
            {
              v144 = **&v252[16];
              do
              {
                for (jj = 0; jj != v143; jj = jj + 1)
                {
                  if (**&v252[16] != v144)
                  {
                    objc_enumerationMutation(v132);
                  }

                  v146 = *(*&v252[8] + 8 * jj);
                  if (v146 && *(v146 + 9) == 1)
                  {
                    *(v146 + 11) = 1;
                  }
                }

                v143 = [v132 countByEnumeratingWithState:v252 objects:v248 count:16];
              }

              while (v143);
            }
          }
        }

        v130 = a2;
      }

      *&v222 = _NSConcreteStackBlock;
      *(&v222 + 1) = 3221225472;
      *&v223 = sub_1000888E4;
      *(&v223 + 1) = &unk_1000FC868;
      *&v224 = v193;
      *(&v224 + 1) = v181;
      *&v225 = v130;
      BYTE8(v225) = v206;
      BYTE9(v225) = v174;
      sub_1000129FC(v177, &v222);
      v251 = 0u;
      v250 = 0;
      v249 = 0;
      *v248 = 0u;
      v152 = *locationa;
      v153 = [v152 countByEnumeratingWithState:v248 objects:v228 count:16];
      if (v153)
      {
        v154 = *v249.receiver;
        do
        {
          for (kk = 0; kk != v153; kk = kk + 1)
          {
            if (*v249.receiver != v154)
            {
              objc_enumerationMutation(v152);
            }

            v156 = *(*&v248[8] + 8 * kk);
            if (*(v156 + 32) == 1 && *(v156 + 248) == 1)
            {
              *(v156 + 248) = 0;
              *(v156 + 112) = 0;
              *(v156 + 120) = 0;
              *(v156 + 20) = 0;
            }
          }

          v153 = [v152 countByEnumeratingWithState:v248 objects:v228 count:16];
        }

        while (v153);
      }

      sub_1000091B8(v193);
      v157 = BKLogTouchEvents();
      v158 = os_log_type_enabled(v157, OS_LOG_TYPE_DEBUG);

      if (v158)
      {
        if (v179)
        {
          v159 = BKLogTouchEvents();
          if (os_log_type_enabled(v159, OS_LOG_TYPE_DEBUG))
          {
            v160 = [*(v188 + 8) senderID];
            v161 = [BSDescriptionStream descriptionForRootObject:*locationa];
            *v252 = 134218498;
            *&v252[4] = v160;
            *&v252[12] = 2114;
            *&v252[14] = v179;
            *&v252[22] = 2114;
            *&v252[24] = v161;
            _os_log_debug_impl(&_mh_execute_header, v159, OS_LOG_TYPE_DEBUG, "digitizer:%llX - display:%{public}@ - %{public}@", v252, 0x20u);
          }
        }

        else
        {
          v159 = BKLogTouchEvents();
          if (os_log_type_enabled(v159, OS_LOG_TYPE_DEBUG))
          {
            v166 = [*(v188 + 8) senderID];
            v167 = [BSDescriptionStream descriptionForRootObject:*locationa];
            *v252 = 134218242;
            *&v252[4] = v166;
            *&v252[12] = 2114;
            *&v252[14] = v167;
            _os_log_debug_impl(&_mh_execute_header, v159, OS_LOG_TYPE_DEBUG, "contacts:%llX - %{public}@", v252, 0x16u);
          }
        }
      }
    }

    goto LABEL_255;
  }

LABEL_256:

  sub_100009074(&v216);
LABEL_257:
  v200 = 0u;
  v201 = 0u;
  v198 = 0u;
  v199 = 0u;
  v162 = *(v188 + 72);
  v163 = [v162 countByEnumeratingWithState:&v198 objects:v226 count:16];
  if (v163)
  {
    v164 = *v199;
    do
    {
      for (mm = 0; mm != v163; mm = mm + 1)
      {
        if (*v199 != v164)
        {
          objc_enumerationMutation(v162);
        }

        [*(*(&v198 + 1) + 8 * mm) touchDidFinishProcessingTouchCollection];
      }

      v163 = [v162 countByEnumeratingWithState:&v198 objects:v226 count:16];
    }

    while (v163);
  }
}

void sub_1000888E4(uint64_t a1, _DWORD *a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v7 = a2[2];
  }

  else
  {
    v7 = 0;
  }

  if ([*(*(a1 + 32) + 56) shouldCancelTouchesDeliveredToContextId:v7 withInitialTouchTimestamp:*(*(a1 + 32) + 96)])
  {
    v8 = [*(*(a1 + 32) + 128) objectForKey:v7];
    v9 = v8;
    if (v8)
    {
      v10 = v8[31];

      if (v10)
      {
        v11 = BKLogTouchDeliveryPolicy();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v20 = 67109120;
          v21 = v7;
          _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "TDPS said this context should cancel: %X", &v20, 8u);
        }

        v13 = *(a1 + 32);
        v12 = *(a1 + 40);
        v14 = *(a1 + 48);
        IntegerValue = IOHIDEventGetIntegerValue();
        sub_100081D8C(v13, a2, v12, IntegerValue);
      }
    }
  }

  else if (a2)
  {
    v16 = *(a1 + 56);
    sub_100084C1C(*(a1 + 32), *(a1 + 48), a2, *(a1 + 40), v16 == 1, a4, *(*(a1 + 32) + 96));
    if (v16 == 1 || (*(a1 + 57) & 1) != 0)
    {
      if (v16 == 1)
      {
        v19 = *(a1 + 32);

        sub_100085CB0(v19, a2);
      }
    }

    else if ([*(*(a1 + 32) + 144) containsObject:a2])
    {
      v17 = *(a1 + 32);

      sub_100088B84(v17, a2, 0);
    }
  }

  else
  {
    v18 = BKLogTouchEvents();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v20 = 67109120;
      v21 = v7;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Missing destination for hit tested context: %X -- ignoring event", &v20, 8u);
    }
  }
}

void sub_100088B84(id *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v6 = BKLogTouchEvents();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      if (a2)
      {
        v13 = *(a2 + 8);
      }

      else
      {
        v13 = 0;
      }

      *buf = 67109120;
      v15 = v13;
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "SGP: Sending no longer possible to latent client: %x", buf, 8u);
    }

    [a1[18] removeObject:a2];
    mach_absolute_time();
    v7 = a1;
    DigitizerEvent = IOHIDEventCreateDigitizerEvent();
    v9 = v7[1];
    [v9 senderID];
    IOHIDEventSetSenderID();

    v10 = *(v7 + 206);
    IOHIDEventSetIntegerValue();
    v11 = *(v7 + 207);
    IOHIDEventSetIntegerValue();

    v12 = objc_alloc_init(BKSHIDEventDigitizerAttributes);
    [v12 setSystemGestureStateChange:1];
    [v12 setTouchStreamIdentifier:a3];
    sub_100081054(v7, DigitizerEvent, v12, a2, *(v7 + 12));
    CFRelease(DigitizerEvent);
  }
}

double sub_100088D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    *(a1 + 48) = 0;
    *&v15 = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    return *&v15;
  }

  *(a1 + 24) = sub_100088E68(a2, a5, a4, *(a3 + 24), *(a3 + 32));
  v10 = (a1 + 8);
  *(a1 + 32) = v11;
  v12 = *(a3 + 1);
  *(a1 + 1) = v12;
  v13 = *(a3 + 2);
  *(a1 + 2) = v13;
  if ((v12 & 1) == 0)
  {
    *v10 = *(a1 + 24);
    if ((v13 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_6:
    *&v15 = sub_100088E68(a2, a5, a4, *(a3 + 40), *(a3 + 48));
    *(a1 + 40) = v15;
    *(a1 + 48) = v16;
    goto LABEL_7;
  }

  *(a1 + 8) = sub_100088E68(a2, a5, a4, *(a3 + 8), *(a3 + 16));
  *(a1 + 16) = v14;
  if (*(a3 + 2))
  {
    goto LABEL_6;
  }

LABEL_4:
  v15 = *v10;
  *(a1 + 40) = *v10;
LABEL_7:
  *a1 = 1;
  return *&v15;
}

double sub_100088E68(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v9 = *(a1 + 40);
  if (v9)
  {
    v9 = v9[1];
  }

  v10 = v9;
  [v10 convertReferenceLocation:a2 toCAScreenLocationForDisplayUUID:{a4, a5}];
  [v10 convertCAScreenLocation:a3 toContextID:a2 displayUUID:?];
  v12 = v11;

  return v12;
}

BKHitTestResultPathLocation *sub_100088EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5)
{
  sub_100088D78(v11, a1, a2 + 152, a3, a4);
  v7 = objc_alloc_init(BKHitTestResultPathLocation);
  if (v7)
  {
    v8 = *(a2 + 8);
    v9 = v11[1];
    *&v7->_pathLocation.locationsAreValid = v11[0];
    *&v7->_pathLocation.location.y = v9;
    *&v7->_pathLocation.hitTestLocation.y = v11[2];
    v7->_pathLocation.preciseLocation.y = v12;
    v7->_pathIndex = v8;
    v7->_contextRelationship = a5;
  }

  return v7;
}

uint64_t sub_100088F88(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 248) == 1)
  {
    v3 = BKLogTouchEvents();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a2 + 16);
      v13 = 67109120;
      v14 = v4;
      v5 = "transfer: touch %X detached";
LABEL_7:
      v7 = v3;
      v8 = 8;
LABEL_8:
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, v5, &v13, v8);
    }
  }

  else if (*(a2 + 249) == 1)
  {
    v3 = BKLogTouchEvents();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a2 + 16);
      v13 = 67109120;
      v14 = v6;
      v5 = "transfer: touch %X already transferred once";
      goto LABEL_7;
    }
  }

  else
  {
    if (!*(a1 + 32) || ![*(a2 + 232) containsObject:?])
    {
      return 1;
    }

    v3 = BKLogTouchEvents();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a2 + 16);
      v12 = *(a1 + 40);
      v13 = 67109376;
      v14 = v11;
      v15 = 1024;
      v16 = v12;
      v5 = "transfer: touch %X already in contextID:%X";
      v7 = v3;
      v8 = 14;
      goto LABEL_8;
    }
  }

  return 0;
}

id sub_100089118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v6 = a2;
    v7 = [*(a1 + 120) objectForKey:a2];
    if (!v7)
    {
      v7 = sub_100096E9C(BKTouchDestination, a2, a3);
      [*(a1 + 120) setObject:v7 forKey:v6];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_1000891D0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 succinctDescription];
  [v2 appendString:? withName:?];
}

void sub_100089A68(uint64_t a1)
{
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = *(a1 + 32);
  v46 = [obj countByEnumeratingWithState:&v51 objects:v69 count:16];
  if (v46)
  {
    v44 = *v52;
    v42 = BKSDisplayUUIDMainKey;
    v1 = CARSessionStatus_ptr;
    do
    {
      v2 = 0;
      do
      {
        if (*v52 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v51 + 1) + 8 * v2);
        v4 = *(a1 + 40);
        if (v3)
        {
          os_unfair_lock_lock((v3 + 68));
          v5 = [*(v3 + 72) copy];
          os_unfair_lock_unlock((v3 + 68));
          v50 = v5;
          v6 = [v3 _filterDisplay:v4 usingPredicate:v5];
          os_unfair_lock_lock((v3 + 24));
          v7 = v4;
          v8 = [v7 displayId];
          v9 = v8;
          v10 = *(v3 + 56);
          v11 = [v1[246] numberWithInteger:v8];
          v12 = [v10 objectForKey:v11];

          if (v6)
          {
            if (v12)
            {
              v13 = *(v3 + 16);
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109378;
                v72 = v8;
                v73 = 2114;
                v74 = v12;
                _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "modified display %d -- %{public}@", buf, 0x12u);
              }

              [*(v3 + 48) setObject:v7 forKey:v12];
              v65[0] = _NSConcreteStackBlock;
              v65[1] = 3221225472;
              v65[2] = sub_10008A12C;
              v65[3] = &unk_1000FCB20;
              v65[4] = v3;
              v14 = v7;
              v66 = v14;
              v15 = objc_retainBlock(v65);
              v16 = &v66;
            }

            else
            {
              v20 = [v7 uniqueId];
              v21 = [v20 length];
              v22 = v42;
              if (v21)
              {
                v22 = v20;
              }

              v12 = v22;

              v23 = *(v3 + 16);
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109378;
                v72 = v8;
                v73 = 2114;
                v74 = v12;
                _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "adding display %d -- %{public}@", buf, 0x12u);
              }

              v67[0] = _NSConcreteStackBlock;
              v67[1] = 3221225472;
              v67[2] = sub_10008A120;
              v67[3] = &unk_1000FCB20;
              v67[4] = v3;
              v14 = v7;
              v68 = v14;
              v15 = objc_retainBlock(v67);
              [*(v3 + 48) setObject:v14 forKey:v12];
              v24 = *(v3 + 56);
              v25 = [v1[246] numberWithInteger:v9];
              [v24 setObject:v12 forKey:v25];

              v16 = &v68;
            }

LABEL_21:
          }

          else
          {
            v17 = *(v3 + 16);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109378;
              v72 = v8;
              v73 = 2114;
              v74 = v12;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "removing display %d -- %{public}@", buf, 0x12u);
            }

            v14 = [*(v3 + 48) objectForKey:v12];

            if (v14)
            {
              v63[0] = _NSConcreteStackBlock;
              v63[1] = 3221225472;
              v63[2] = sub_10008A138;
              v63[3] = &unk_1000FCB20;
              v63[4] = v3;
              v64 = v7;
              v15 = objc_retainBlock(v63);
              [*(v3 + 48) removeObjectForKey:v12];
              v18 = *(v3 + 56);
              v19 = [v1[246] numberWithInteger:v9];
              [v18 removeObjectForKey:v19];

              v16 = &v64;
              goto LABEL_21;
            }

            v15 = 0;
          }

          v26 = [*(v3 + 40) context];
          v27 = [v26 copy];

          v28 = [*(v3 + 32) context];
          v29 = [v28 copy];

          v30 = [*(v3 + 48) copy];
          os_unfair_lock_unlock((v3 + 24));
          if (v15)
          {
            v47 = v14;
            v48 = v12;
            v49 = v4;
            if ([v29 count])
            {
              v61 = 0u;
              v62 = 0u;
              v59 = 0u;
              v60 = 0u;
              v31 = v29;
              v32 = [v31 countByEnumeratingWithState:&v59 objects:buf count:16];
              if (v32)
              {
                v33 = v32;
                v34 = *v60;
                do
                {
                  for (i = 0; i != v33; i = i + 1)
                  {
                    if (*v60 != v34)
                    {
                      objc_enumerationMutation(v31);
                    }

                    [*(*(&v59 + 1) + 8 * i) monitor:v3 activeDisplaysDidChange:v30];
                  }

                  v33 = [v31 countByEnumeratingWithState:&v59 objects:buf count:16];
                }

                while (v33);
              }
            }

            v57 = 0u;
            v58 = 0u;
            v55 = 0u;
            v56 = 0u;
            v36 = v27;
            v37 = [v36 countByEnumeratingWithState:&v55 objects:v70 count:16];
            if (v37)
            {
              v38 = v37;
              v39 = *v56;
              do
              {
                for (j = 0; j != v38; j = j + 1)
                {
                  if (*v56 != v39)
                  {
                    objc_enumerationMutation(v36);
                  }

                  (v15[2])(v15, *(*(&v55 + 1) + 8 * j));
                }

                v38 = [v36 countByEnumeratingWithState:&v55 objects:v70 count:16];
              }

              while (v38);
            }

            v1 = CARSessionStatus_ptr;
            v12 = v48;
            v4 = v49;
            v14 = v47;
          }
        }

        v2 = v2 + 1;
      }

      while (v2 != v46);
      v41 = [obj countByEnumeratingWithState:&v51 objects:v69 count:16];
      v46 = v41;
    }

    while (v41);
  }
}

void sub_10008A774(id a1)
{
  v1 = objc_alloc_init(BKSharedCADisplayProvider);
  v2 = qword_1001260B8;
  qword_1001260B8 = v1;
}

void sub_10008ADC0(uint64_t a1, void *a2, void *a3)
{
  v4 = *(*(a1 + 32) + 56);
  v5 = a2;
  v6 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [a3 displayId]);
  [v4 setObject:v5 forKey:v6];
}

id sub_10008B498(id a1, CADisplay *a2)
{
  v2 = [(CADisplay *)a2 immutableCopy];

  return v2;
}

void sub_10008B90C(uint64_t a1, void *a2, void *a3)
{
  v4 = *(*(a1 + 32) + 56);
  v5 = a2;
  v6 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [a3 displayId]);
  [v4 setObject:v5 forKey:v6];
}

void sub_10008C12C(id a1)
{
  if (!qword_1001260C0)
  {
    v1 = objc_alloc_init(BKWatchdogService);
    v2 = qword_1001260C0;
    qword_1001260C0 = v1;
  }
}

BOOL sub_10008C650(uint64_t a1, _BYTE *a2, unsigned __int8 *a3)
{
  if (!a1)
  {
    return 0;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = *(a1 + 16);
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  v7 = v6 != 0;
  if (v6)
  {
    v8 = v6;
    v9 = 0;
    v10 = 0;
    v11 = *v19;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v5);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        if (v13)
        {
          if (v13[9] == 1)
          {
            v14 = v13[11];
            v15 = (v10 | 2) == 2 ? v13[11] : v10;
            if (v14 != v10 && v14 != 0)
            {
              v10 = v15;
            }
          }

          LODWORD(v13) = v13[10];
        }

        if (v13 > v9)
        {
          v9 = v13;
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
    LOBYTE(v10) = 0;
  }

  *a2 = v10;
  *a3 = v9;
  return v7;
}

void sub_10008C98C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(a1 + 40);
    v3 = *(v2 + 32);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10008CA38;
    v4[3] = &unk_1000FD128;
    v4[4] = v2;
    v5 = v1;
    [v3 terminateAlternateSystemApp:v5 forReason:0 andReport:0 withDescription:0 completion:v4];
  }
}

void sub_10008CA38(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) remoteObjectProxy];
  [v2 alternateSystemAppWithBundleIDDidTerminate:*(a1 + 40)];

  v3 = BKLogAlternateSystemApp();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[Server] Sent notification that alternate system app %{public}@ did terminate", &v5, 0xCu);
  }
}

void sub_10008CC20(uint64_t a1)
{
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10008CDBC;
  v16[3] = &unk_1000FCBF8;
  v2 = *(a1 + 40);
  v16[4] = *(a1 + 32);
  v17 = v2;
  v3 = objc_retainBlock(v16);
  v4 = v3;
  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = *(*(a1 + 32) + 32);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10008CEC4;
    v13[3] = &unk_1000FCC20;
    v7 = v3;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v15 = v7;
    v13[4] = v8;
    v14 = v9;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10008CFD4;
    v11[3] = &unk_1000FCC48;
    v10 = *(a1 + 40);
    v11[4] = *(a1 + 32);
    v12 = v10;
    [v6 openAlternateSystemApp:v5 options:0 withResult:v13 andExitBlock:v11];
  }

  else
  {
    (v3[2])(v3, 2);
  }
}

void sub_10008CDBC(uint64_t a1, unsigned int a2)
{
  v3 = [NSError errorWithDomain:@"com.apple.backboardd.altsysapp" code:a2 userInfo:0];
  v4 = [*(*(a1 + 32) + 16) remoteObjectProxy];
  [v4 alternateSystemAppWithBundleID:*(a1 + 40) failedToOpenWithResult:v3];

  v5 = BKLogAlternateSystemApp();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[Server] Sent notification that alternate system app %{public}@ failed to open with error %{public}@", &v7, 0x16u);
  }
}

void sub_10008CEC4(void *a1, int a2)
{
  if (a2)
  {
    v3 = a1[6];
    v4 = *(a1[6] + 16);

    v4();
  }

  else
  {
    v5 = [*(a1[4] + 16) remoteObjectProxy];
    [v5 alternateSystemAppWithBundleIDDidOpen:a1[5]];

    v6 = BKLogAlternateSystemApp();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[5];
      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[Server] Sent notification that alternate system app %{public}@ did open", &v8, 0xCu);
    }
  }
}

void sub_10008CFD4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 16) remoteObjectProxy];
  [v4 alternateSystemAppWithBundleID:*(a1 + 40) didExitWithContext:v3];

  v5 = BKLogAlternateSystemApp();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[Server] Sent notification that alternate system app %{public}@ did exit with reason %{public}@", &v7, 0x16u);
  }
}

id sub_10008D180(uint64_t a1)
{
  [*(*(a1 + 32) + 32) terminateAnyAlternateSystemApp];
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10008D20C;
  v5[3] = &unk_1000FD150;
  v5[4] = v2;
  return [v3 unblockSystemAppForAlternateSystemAppWithCompletion:v5];
}

void sub_10008D20C(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 16) remoteObjectProxy];
  [v1 didUnblockSystemAppForAlternateSystemApp];

  v2 = BKLogAlternateSystemApp();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[Server] Sent notification that system app is no longer blocked for alternate system app", v3, 2u);
  }
}

id sub_10008D350(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10008D3C4;
  v4[3] = &unk_1000FD150;
  v4[4] = v1;
  return [v2 blockSystemAppForAlternateSystemAppWithCompletion:v4];
}

void sub_10008D3C4(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 16) remoteObjectProxy];
  [v1 didBlockSystemAppForAlternateSystemApp];

  v2 = BKLogAlternateSystemApp();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[Server] Sent notification that system app is blocked for alternate system app", v3, 2u);
  }
}

id sub_10008D5C8(uint64_t a1)
{
  result = [*(a1 + 32) _queue_listener:*(a1 + 40) shouldAcceptNewConnection:*(a1 + 48)];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

void sub_10008D918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10008D954(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleInterruptedOrInvalidatedConnection];
}

void sub_10008D994(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleInterruptedOrInvalidatedConnection];
}

id sub_10008DA48(uint64_t a1)
{
  [*(a1 + 32) setClientConnection:0];
  [*(*(a1 + 32) + 32) terminateAnyAlternateSystemApp];
  v2 = *(*(a1 + 32) + 32);

  return [v2 unblockSystemAppForAlternateSystemAppWithCompletion:0];
}

void sub_10008DC08(id a1)
{
  v1 = objc_alloc_init(BKAlternateSystemAppServer);
  v2 = qword_1001260D0;
  qword_1001260D0 = v1;
}

void sub_10008DF74(uint64_t a1, void *a2)
{
  if (a1)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = (a1 + 240);
    v4 = *(a1 + 240);
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          if (v9)
          {
            [*(v9 + 24) removeObject:{*v3, v10}];
          }

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }

    objc_storeStrong(v3, a2);
  }
}

void sub_10008E6D8(uint64_t a1)
{
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 8));
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = sub_10008E8E0;
    v16 = sub_10008E8F0;
    v17 = objc_opt_new();
    v2 = *(a1 + 120);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10008E8F8;
    v11[3] = &unk_1000FCD20;
    v11[4] = a1;
    v11[5] = &v12;
    [v2 enumerateWithBlock:v11];
    v3 = objc_opt_new();
    v4 = v13[5];
    if (v4)
    {
      v5 = [v4 disableFeatures];
    }

    else
    {
      v5 = 0;
    }

    v6 = [NSNumber numberWithInt:v5];
    [v3 setObject:v6 forKeyedSubscript:@"Status"];

    [v13[5] fixedBrightnessNitsWhileDisabled];
    if (v7 >= 0.0)
    {
      v8 = [NSNumber numberWithDouble:v7];
      [v3 setObject:v8 forKeyedSubscript:@"FixBrightnessNits"];
    }

    [v13[5] fixedBrightnessLevelWhileDisabled];
    if (v9 >= 0.0)
    {
      v10 = [NSNumber numberWithDouble:v9];
      [v3 setObject:v10 forKeyedSubscript:@"FixBrightness"];
    }

    sub_10008EAD4(a1, v3, @"CoreBrightnessFeaturesDisabled");

    _Block_object_dispose(&v12, 8);
  }
}

void sub_10008E8BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10008E8E0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10008E8F8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4 && (v6 = *(v4 + 62)) != 0)
  {
    v7 = v6;
    if ([v6 disableFeatures] && (objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "disableFeatures") & 1) == 0)
    {
      goto LABEL_24;
    }

    [*(*(*(a1 + 40) + 8) + 40) fixedBrightnessNitsWhileDisabled];
    v9 = v8;
    [*(*(*(a1 + 40) + 8) + 40) fixedBrightnessLevelWhileDisabled];
    v11 = v10;
    [v7 fixedBrightnessNitsWhileDisabled];
    v13 = v12;
    [v7 fixedBrightnessLevelWhileDisabled];
    if (v9 < 0.0 && v11 < 0.0 && (v13 >= 0.0 || v14 >= 0.0))
    {
      goto LABEL_24;
    }

    if ((v11 >= 0.0 || v14 < 0.0) && (v11 >= 0.0 ? (v15 = v14 <= v11) : (v15 = 1), v15 && (v9 >= 0.0 ? (v16 = v13 <= v9) : (v16 = 1), v16)))
    {
      v17 = BKLogBacklight();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(*(*(a1 + 40) + 8) + 40);
        v19 = *(*(a1 + 32) + 120);
        v24 = 138543618;
        v25 = v18;
        v26 = 2114;
        v27 = v19;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "effective backlight features:%{public}@ clients:(%{public}@)", &v24, 0x16u);
      }
    }

    else
    {
LABEL_24:
      v20 = *(*(a1 + 40) + 8);
      v21 = *(v20 + 40);
      *(v20 + 40) = v7;
      v7 = v7;
    }
  }

  else
  {
    v22 = *(*(a1 + 40) + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = 0;
  }
}

void sub_10008EAD4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = BKLogBacklight();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [BSDescriptionStream descriptionForRootObject:v5];
      v9 = 138543618;
      v10 = v6;
      v11 = 2114;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Set BrightnessSystem property:%{public}@ to:%{public}@", &v9, 0x16u);
    }

    [*(a1 + 128) setProperty:v5 forKey:v6];
  }
}

id sub_10008ED18(uint64_t a1)
{
  v2 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 112) withName:@"currentlyFrozen"];
  v3 = [*(a1 + 32) appendTimeInterval:@"lastFreezeTime" withName:0 decomposeUnits:*(*(a1 + 40) + 80)];
  [*(a1 + 32) appendString:*(*(a1 + 40) + 88) withName:@"lastFreezeReason"];
  v4 = [*(a1 + 32) appendTimeInterval:@"lastUnfreezeTime" withName:0 decomposeUnits:*(*(a1 + 40) + 96)];
  v5 = *(a1 + 32);
  v6 = *(*(a1 + 40) + 104);

  return [v5 appendString:v6 withName:@"lastUnfreezeReason"];
}

void sub_10008F20C(uint64_t a1, uint64_t a2, int a3)
{
  if (a1 && (*(a1 + 16) != a2 || (*(a1 + 113) & 1) == 0))
  {
    *(a1 + 16) = a2;
    *(a1 + 113) = 1;
    v5 = *(a1 + 128);
    v6 = [NSNumber numberWithUnsignedInt:a2];
    [v5 setProperty:v6 forKey:@"BrightnessCurveLevel"];

    if (a3)
    {
      v7 = +[BKSDefaults localDefaults];
      [v7 setBrightnessCurve:a2];
    }
  }
}

void sub_10008FC74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10008FCA4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = v5;
  if (WeakRetained)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10008FDDC;
    block[3] = &unk_1000FD128;
    v10 = v7;
    v11 = WeakRetained;
    dispatch_async(&_dispatch_main_q, block);
  }
}

id sub_10008FD90(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained description];

  return v2;
}

void sub_10008FDDC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [v6 objectForKey:@"Brightness"];
    v8 = objc_opt_class();
    v9 = v7;
    if (v8 && (objc_opt_isKindOfClass() & 1) != 0)
    {

      if (v9)
      {
        [v9 floatValue];
        [*(a1 + 40) setBrightnessLevel:@"BrightnessSystemDidChange" reason:4 options:?];

        goto LABEL_16;
      }
    }

    else
    {
    }
  }

  v10 = BKLogBacklight();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = 138543362;
    v12 = v6;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "property change handler arguments seem bogus: %{public}@", &v11, 0xCu);
  }

LABEL_16:
}

void sub_10008FF54(id a1)
{
  v1 = BKLogBacklight();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "instantiating BrightnessSystem", v8, 2u);
  }

  v2 = objc_alloc_init(BrightnessSystem);
  v3 = [BKDisplayBrightnessController alloc];
  v4 = +[BKSystemShellSentinel sharedInstance];
  v5 = sub_100005110();
  v6 = [(BKDisplayBrightnessController *)v3 _initWithBrightnessSystem:v2 systemShellSentinel:v4 orientationManager:v5];
  v7 = qword_1001260E0;
  qword_1001260E0 = v6;
}

void sub_100090148(uint64_t a1)
{
  v2 = dword_1001252C4;
  if (dword_1001252C4 != -1 || (notify_register_check("com.apple.backboardd.rawOrientation", &dword_1001252C4), v2 = dword_1001252C4, dword_1001252C4 != -1))
  {
    notify_set_state(v2, *(a1 + 40));
    notify_post("com.apple.backboardd.rawOrientation");
  }

  v3 = BKLogOrientationDevice();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(*(a1 + 32) + 72);
    v5 = BSDeviceOrientationDescription();
    v6 = 138543362;
    v7 = v5;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Current raw accelerometer device orientation changed to: %{public}@", &v6, 0xCu);
  }
}

void sub_1000905C8(uint64_t a1, double a2)
{
  if (a1 && *(a1 + 40) != a2)
  {
    *(a1 + 40) = a2;
    v4 = *(a1 + 128);
    v5 = BKLogOrientationDevice();
    v6 = v5;
    if (v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 134217984;
        v10 = a2;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "setUpdateInterval:%g", &v9, 0xCu);
      }

      v7 = *(a1 + 40) * 1000000.0;
      v8 = *(a1 + 128);
      v6 = [NSNumber numberWithDouble:v7];
      [v8 setProperty:v6 forKey:@"ReportInterval"];
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = 134217984;
      v10 = a2;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "missing accel HID service plugin (setUpdateInterval:%g)", &v9, 0xCu);
    }
  }
}

void sub_100090724(uint64_t a1, float a2)
{
  if (a1 && *(a1 + 48) != a2)
  {
    *(a1 + 48) = a2;
    v4 = *(a1 + 128);
    v5 = BKLogOrientationDevice();
    v6 = v5;
    if (v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v13 = a2;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "setInterruptEventThresholds:%g", buf, 0xCu);
      }

      LODWORD(v7) = *(a1 + 48);
      v6 = [NSNumber numberWithFloat:v7];
      v8 = [NSNumber numberWithInt:20000];
      v10[0] = @"ThresholdX";
      v10[1] = @"ThresholdY";
      v11[0] = v6;
      v11[1] = v6;
      v10[2] = @"ThresholdZ";
      v10[3] = @"ThresholdPeriod";
      v11[2] = v6;
      v11[3] = v8;
      v9 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:4];
      [*(a1 + 128) setProperty:v9 forKey:@"Shake"];
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v13 = a2;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "missing accel HID service plugin (setInterruptEventThresholds:%g)", buf, 0xCu);
    }
  }
}

void sub_1000908E4(void *a1)
{
  if (!a1[12])
  {
    v6 = v1;
    v7 = v2;
    v4 = BKLogOrientationDevice();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *v5 = 0;
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Resetting device orientation.", v5, 2u);
    }

    kdebug_trace();
    sub_1000909B0(a1, 0, 1);
    if (a1[7] != 1)
    {
      a1[7] = 1;
      sub_100090B1C(a1, 1);
    }
  }
}

void sub_1000909B0(void *a1, uint64_t a2, char a3)
{
  v4 = a2;
  if (a1[11] != a2)
  {
    a1[11] = a2;
    v6 = a1[18];
    *&v10 = _NSConcreteStackBlock;
    *(&v10 + 1) = 3221225472;
    v11 = sub_100090C98;
    v12 = &unk_1000FCF78;
    v13 = a1;
    v14 = a2;
    dispatch_async(v6, &v10);
    a2 = a1[11];
  }

  if (a2)
  {
    if (a1[7] != a2)
    {
      a1[7] = a2;
      sub_100090B1C(a1, a2);
    }

    if (((a3 & 1) != 0 || a1[10] == -1) && BSInterfaceOrientationIsValid())
    {
      a1[10] = v4;
      v7 = BKLogOrientationDevice();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = a1[10];
        v9 = BSInterfaceOrientationDescription();
        LODWORD(v10) = 138543362;
        *(&v10 + 4) = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Last effective interface orientation changed to: %{public}@", &v10, 0xCu);
      }
    }
  }
}

void sub_100090B1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 144);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100090B90;
  v3[3] = &unk_1000FCF78;
  v3[4] = a1;
  v3[5] = a2;
  dispatch_async(v2, v3);
}

void sub_100090B90(uint64_t a1)
{
  v2 = dword_1001252C8;
  if (dword_1001252C8 != -1 || (notify_register_check("com.apple.backboardd.unambiguousOrientation", &dword_1001252C8), v2 = dword_1001252C8, dword_1001252C8 != -1))
  {
    notify_set_state(v2, *(a1 + 40));
    notify_post("com.apple.backboardd.unambiguousOrientation");
  }

  v3 = BKLogOrientationDevice();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(*(a1 + 32) + 56);
    v5 = BSDeviceOrientationDescription();
    v6 = 138543362;
    v7 = v5;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Last unambiguous device orientation changed to: %{public}@", &v6, 0xCu);
  }
}

void sub_100090C98(uint64_t a1)
{
  v2 = dword_1001252C0;
  if (dword_1001252C0 != -1 || (notify_register_check("com.apple.backboardd.orientation", &dword_1001252C0), v2 = dword_1001252C0, dword_1001252C0 != -1))
  {
    notify_set_state(v2, *(a1 + 40));
    notify_post("com.apple.backboardd.orientation");
  }

  v3 = BKLogOrientationDevice();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(a1 + 32) + 88);
    v5 = BSDeviceOrientationDescription();
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Effective device orientation changed to: %{public}@", &v6, 0xCu);
  }
}

__CFString *sub_100090DE4(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = +[NSMutableArray array];
    v3 = v2;
    if (v1)
    {
      [v2 addObject:@"user"];
      v1 &= ~1uLL;
      if ((v1 & 2) == 0)
      {
LABEL_4:
        if ((v1 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_14;
      }
    }

    else if ((v1 & 2) == 0)
    {
      goto LABEL_4;
    }

    [v3 addObject:@"system"];
    v1 &= ~2uLL;
    if ((v1 & 4) == 0)
    {
LABEL_5:
      if (!v1)
      {
LABEL_7:
        v5 = [v3 componentsJoinedByString:{@", "}];
        v6 = [NSString stringWithFormat:@"(%@)", v5];

        goto LABEL_9;
      }

LABEL_6:
      v4 = [NSNumber numberWithUnsignedInteger:v1];
      [v3 addObject:v4];

      goto LABEL_7;
    }

LABEL_14:
    [v3 addObject:@"overlay"];
    v1 &= ~4uLL;
    if (!v1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v6 = @"none";
LABEL_9:

  return v6;
}

void sub_100090F14(id a1)
{
  v1 = objc_alloc_init(BKOrientationManager);
  v2 = qword_1001260F0;
  qword_1001260F0 = v1;
}

void sub_100090F84(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(a1 + 40);
    if (*(v1 + 52) != v2)
    {
      *(v1 + 52) = v2;
      v3 = BKLogOrientationDevice();
      v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
      if (v2)
      {
        if (v4)
        {
          LOWORD(v7[0]) = 0;
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Turning on orientation events.", v7, 2u);
        }

        kdebug_trace();
        v6 = *(v1 + 112);
        v5 = *(v1 + 120);
        v7[0] = _NSConcreteStackBlock;
        v7[1] = 3221225472;
        v7[2] = sub_1000910F0;
        v7[3] = &unk_1000FCE08;
        v7[4] = v1;
        [v5 startDeviceOrientationUpdatesToQueue:v6 withHandler:v7];
        sub_100091150(v1);
      }

      else
      {
        if (v4)
        {
          LOWORD(v7[0]) = 0;
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Turning off orientation events.", v7, 2u);
        }

        kdebug_trace();
        [*(v1 + 120) stopDeviceOrientationUpdates];
        sub_1000908E4(v1);
      }
    }
  }
}

void sub_1000910F0(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = a2;
  BSDispatchQueueAssert();
  sub_100091214(*(a1 + 32), v4);
}

void sub_100091150(uint64_t a1)
{
  if (*(a1 + 52) == 1)
  {
    v3 = [*(a1 + 120) deviceOrientationBlocking];
    sub_100091214(a1, v3);
  }

  else
  {
    v2 = BKLogOrientationDevice();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "WARNING: Attempting synchronous device orientation update while events disabled!", buf, 2u);
    }

    sub_100091310(a1);
  }
}

void sub_100091214(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = [a2 orientation];
    v4 = BKLogOrientationDevice();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = BSDeviceOrientationDescription();
      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Updating device orientation from CoreMotion to: %{public}@", &v6, 0xCu);
    }

    kdebug_trace();
    sub_100091430(a1, v3, 1);
  }
}

void sub_100091310(uint64_t a1)
{
  if (a1)
  {
    v2 = objc_alloc_init(CMDeviceOrientationManager);
    [v2 startDeviceOrientationUpdatesToQueue:*(a1 + 112) withHandler:0];
    v3 = [v2 deviceOrientationBlocking];
    [v2 stopDeviceOrientationUpdates];
    v4 = BKLogOrientationDevice();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [v3 orientation];
      v5 = BSDeviceOrientationDescription();
      v6 = 138543362;
      v7 = v5;
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Fetching effective device orientation with temporary manager: %{public}@", &v6, 0xCu);
    }

    sub_100091214(a1, v3);
  }
}

void sub_100091430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && (*(a1 + 104) & 1) == 0)
  {
    if (*(a1 + 72) != a2)
    {
      *(a1 + 72) = a2;
      [a1 _queue_postUpdatedRawAccelerometerDeviceOrientation:a2];
    }

    if (!*(a1 + 96))
    {
      sub_1000909B0(a1, a2, 1);
    }

    sub_1000914CC(a1, a2, a3);
  }
}

void sub_1000914CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 96) != 0;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [*(a1 + 24) orderedContext];
  v8 = [v7 array];

  obj = v8;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v18 + 1) + 8 * v12);
        v14 = *(a1 + 16);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100091660;
        block[3] = &unk_1000FCE30;
        block[4] = v13;
        block[5] = a1;
        block[6] = a2;
        block[7] = a3;
        v17 = v6;
        dispatch_async(v14, block);
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }
}

uint64_t sub_100091660(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v8 = *(a1 + 64);

    return [v4 orientationManager:v5 deviceOrientationMayHaveChanged:v6 changeSource:v7 isDeviceOrientationLocked:v8];
  }

  return result;
}

uint64_t sub_1000916BC(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = *(a1 + 8);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100091774;
  v4[3] = &unk_1000FD178;
  v4[4] = a1;
  v4[5] = &v5;
  dispatch_sync(v1, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_100091788(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(a1 + 40);
    v3 = *(v1 + 64);
    if (v3 != v2)
    {
      v4 = BKLogOrientationDevice();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v17 = *(v1 + 64);
        v18 = BSInterfaceOrientationDescription();
        v19 = BSInterfaceOrientationDescription();
        *buf = 138543618;
        v28 = v18;
        v29 = 2114;
        v30 = v19;
        _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Current user interface orientation is changing from %{public}@ to %{public}@", buf, 0x16u);
      }
    }

    v5 = +[BKHIDEventProcessorRegistry sharedInstance];
    v6 = [v5 eventProcessorOfClass:objc_opt_class()];

    [v6 setBuiltInDisplayInterfaceOrientation:v2];
    kdebug_trace();
    *(v1 + 64) = v2;
    if (v3 != v2)
    {
      v20 = v6;
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.backboardd.deviceinterfaceorientation", 0, 0, 1u);
      v8 = *(v1 + 96) != 0;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v9 = [*(v1 + 24) orderedContext];
      v10 = [v9 array];

      v11 = [v10 countByEnumeratingWithState:&v23 objects:buf count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v24;
        do
        {
          v14 = 0;
          do
          {
            if (*v24 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v23 + 1) + 8 * v14);
            v16 = *(v1 + 16);
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_100091A40;
            block[3] = &unk_1000FCE58;
            block[4] = v15;
            block[5] = v1;
            block[6] = v2;
            v22 = v8;
            dispatch_async(v16, block);
            v14 = v14 + 1;
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v23 objects:buf count:16];
        }

        while (v12);
      }

      v6 = v20;
    }
  }
}

uint64_t sub_100091A40(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);

    return [v4 orientationManager:v5 userInterfaceOrientationMayHaveChanged:v6 isDeviceOrientationLocked:v7];
  }

  return result;
}

uint64_t sub_100091A9C(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = *(a1 + 8);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100091B54;
  v4[3] = &unk_1000FD178;
  v4[4] = a1;
  v4[5] = &v5;
  dispatch_sync(v1, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t sub_100091B68(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = *(a1 + 8);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100091C20;
  v4[3] = &unk_1000FD178;
  v4[4] = a1;
  v4[5] = &v5;
  dispatch_sync(v1, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t sub_100091C34(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    LOBYTE(v1) = *(v1 + 96) != 0;
  }

  *(*(*(result + 40) + 8) + 24) = v1;
  return result;
}

uint64_t sub_100091C58(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2020000000;
    v9 = 0;
    v2 = *(a1 + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100091D14;
    block[3] = &unk_1000FCDB8;
    block[4] = a1;
    block[5] = &v6;
    block[6] = a2;
    dispatch_sync(v2, block);
    v3 = *(v7 + 24);
    _Block_object_dispose(&v6, 8);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void *sub_100091D14(void *result)
{
  v1 = result[4];
  if (v1)
  {
    v2 = *(v1 + 96) != 0;
  }

  else
  {
    v2 = 0;
  }

  v3 = result[6];
  *(*(result[5] + 8) + 24) = v2;
  if (v3)
  {
    v4 = *(result[4] + 88);
    if (v4 == -1)
    {
      v4 = 0;
    }

    *v3 = v4;
  }

  return result;
}

void sub_100091D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v4 = *(a1 + 8);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100091DD8;
    v5[3] = &unk_1000FCDE0;
    v5[4] = a1;
    v5[5] = a2;
    v5[6] = a3;
    v5[7] = a4;
    dispatch_sync(v4, v5);
  }
}

void sub_100091DD8(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  if (v2)
  {
    v3 = v1 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v4 = a1[6];
    if (v1 == 2)
    {
      v5 = a1[7];
      v6 = [NSNumber numberWithInt:v5];
      v7 = [*(v2 + 32) objectForKey:v6];

      if (!v7)
      {
        v8 = [BSProcessDeathWatcher alloc];
        v9 = *(v2 + 8);
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_1000920F8;
        v20[3] = &unk_1000FCF78;
        v20[4] = v2;
        v20[5] = v5;
        v10 = [v8 initWithPID:v5 queue:v9 deathHandler:v20];
        [*(v2 + 32) setObject:v10 forKey:v6];
      }
    }

    if ((*(v2 + 96) & v1) == 0)
    {
      v11 = BKLogOrientationDevice();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = sub_100090DE4(v1);
        v13 = BSDeviceOrientationDescription();
        *buf = 138543618;
        *&buf[4] = v12;
        *&buf[12] = 2114;
        *&buf[14] = v13;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Locking device orientation for lock type: %{public}@ to: %{public}@", buf, 0x16u);
      }

      kdebug_trace();
      v14 = *(v2 + 96);
      if (v14)
      {
        *(v2 + 96) = v14 | v1;
        v15 = 1;
      }

      else
      {
        sub_1000909B0(v2, v4, v1 != 2);
        sub_1000914CC(v2, v4, 3);
        *(v2 + 96) |= v1;
        sub_1000914CC(v2, v4, 3);
        v15 = *(v2 + 96) != 0;
      }

      v16 = *(v2 + 144);
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_100092184;
      v22 = &unk_1000FCE78;
      v23 = v15;
      dispatch_async(v16, buf);
      v17 = BKLogOrientationDevice();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v18 = sub_100090DE4(v1);
        v19 = BSDeviceOrientationDescription();
        *buf = 138543618;
        *&buf[4] = v18;
        *&buf[12] = 2114;
        *&buf[14] = v19;
        _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Locked device orientation for lock type: %{public}@ to: %{public}@", buf, 0x16u);
      }
    }
  }
}

void sub_1000920F8(uint64_t a1)
{
  if ([*(*(a1 + 32) + 32) count] == 1)
  {
    v2 = BKLogOrientationDevice();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Last system shell with an orientation lock exited -- unlocking system device orientation", v3, 2u);
    }

    sub_100092204(*(a1 + 32), 2, *(a1 + 40));
  }
}

uint64_t sub_100092184(uint64_t result)
{
  v1 = result;
  LODWORD(result) = dword_1001252CC;
  if (dword_1001252CC != -1 || (notify_register_check("com.apple.backboardd.orientationlock", &dword_1001252CC), result = dword_1001252CC, dword_1001252CC != -1))
  {
    notify_set_state(result, *(v1 + 32));

    return notify_post("com.apple.backboardd.orientationlock");
  }

  return result;
}

void sub_100092204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && (*(a1 + 96) & a2) != 0)
  {
    v6 = BKLogOrientationDevice();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = sub_100090DE4(a2);
      LODWORD(v12) = 138543362;
      *(&v12 + 4) = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Unlocking device orientation for lock type: %{public}@", &v12, 0xCu);
    }

    kdebug_trace();
    *(a1 + 96) &= ~a2;
    if ((a2 & 2) != 0)
    {
      v8 = [NSNumber numberWithInt:a3];
      v9 = [*(a1 + 32) objectForKey:v8];
      [*(a1 + 32) removeObjectForKey:v8];
      [v9 invalidate];
    }

    sub_100091150(a1);
    v10 = *(a1 + 96) != 0;
    v11 = *(a1 + 144);
    *&v12 = _NSConcreteStackBlock;
    *(&v12 + 1) = 3221225472;
    v13 = sub_100092184;
    v14 = &unk_1000FCE78;
    v15 = v10;
    dispatch_async(v11, &v12);
  }
}

void sub_1000923C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = *(a1 + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100092440;
    block[3] = &unk_1000FCFA0;
    block[4] = a1;
    block[5] = a2;
    block[6] = a3;
    dispatch_sync(v3, block);
  }
}

void sub_100092450(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000924D4;
    block[3] = &unk_1000FCFA0;
    block[4] = a1;
    block[5] = a2;
    block[6] = 2;
    dispatch_sync(v2, block);
  }
}

id *sub_1000924EC(id *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    a1 = [a1[3] acquireForReason:@"observing" withContext:v3];
  }

  return a1;
}

void sub_1000928D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[2] increment];
    [v3[8] setValue:*(a1 + 40)];
    [v3[9] setValue:*(a1 + 44)];
    WeakRetained = v3;
  }
}

void sub_10009294C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[3] increment];
    [v3[8] setValue:*(a1 + 40)];
    [v3[9] setValue:*(a1 + 44)];
    WeakRetained = v3;
  }
}

void sub_1000929C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[7] increment];
    [v3[8] setValue:*(a1 + 40)];
    [v3[9] setValue:*(a1 + 44)];
    WeakRetained = v3;
  }
}

void sub_100092A34(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[4] increment];
    [v3[8] setValue:*(a1 + 40)];
    [v3[9] setValue:*(a1 + 44)];
    WeakRetained = v3;
  }
}

void sub_100092AA8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[6] increment];
    [v3[8] setValue:*(a1 + 40)];
    [v3[9] setValue:*(a1 + 44)];
    WeakRetained = v3;
  }
}

void sub_100092B1C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[5] increment];
    [v3[8] setValue:*(a1 + 40)];
    [v3[9] setValue:*(a1 + 44)];
    WeakRetained = v3;
  }
}

void sub_100092B90(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[11] setValue:*(a1 + 40)];
    [v3[12] setValue:*(a1 + 44)];
    v4 = v3[10];
    v5 = v3[12];
    v7[0] = v3[11];
    v7[1] = v5;
    v6 = [NSArray arrayWithObjects:v7 count:2];
    [v4 pushStatistics:v6];
  }
}

id sub_100092D20(uint64_t a1)
{
  v2 = [*(a1 + 32) appendVersionedPID:*(*(a1 + 40) + 40) withName:@"pid"];
  [*(a1 + 32) appendString:*(*(a1 + 40) + 64) withName:0 skipIfEmpty:1];
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 8);
  v5 = NSStringFromBKSTouchStreamIdentifier();
  [v3 appendString:v5 withName:0];

  v6 = [*(a1 + 32) appendDouble:@"creationTime" withName:4 decimalPrecision:*(*(a1 + 40) + 24)];
  v7 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 48) withName:@"touchDestination"];
  v8 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 12) withName:@"valid"];
  v9 = *(*(a1 + 40) + 10);
  if (v9 > 3)
  {
    v10 = @"<unknown>";
  }

  else
  {
    v10 = off_1000FCEC0[v9];
  }

  v11 = [*(a1 + 32) appendObject:v10 withName:@"dispatchMode"];
  v12 = *(*(a1 + 40) + 11);
  if (v12 > 2)
  {
    v13 = @"<unknown>";
  }

  else
  {
    v13 = off_1000FCEE0[v12];
  }

  return [*(a1 + 32) appendObject:v13 withName:@"ambiguityRecommendation"];
}

id *sub_100093058(id *result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 12))
    {
      *(result + 12) = 0;
      [result[7] invalidate];
      v2 = v1[7];
      v1[7] = 0;

      WeakRetained = objc_loadWeakRetained(v1 + 4);
      v4 = WeakRetained;
      if (WeakRetained)
      {
        [WeakRetained[2] removeObject:v1];
      }

      return objc_storeWeak(v1 + 4, 0);
    }
  }

  return result;
}

void sub_100093A20(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100093AB8;
  v2[3] = &unk_1000FCF50;
  v3 = *(a1 + 40);
  [v1 enumerateKeysAndObjectsUsingBlock:v2];
}

void sub_100093AB8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v5 processDescription];
  if (v6)
  {
    v8 = v6[2];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v7 stringByAppendingFormat:@" contextID %X", v8];

  v10 = *(a1 + 32);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100093BDC;
  v12[3] = &unk_1000FD128;
  v13 = v10;
  v14 = v5;
  v11 = v5;
  [v13 appendBodySectionWithName:v9 openDelimiter:@"{" closeDelimiter:@"}" block:v12];
}

void sub_100093BDC(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100093C6C;
  v2[3] = &unk_1000FCF28;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 appendCustomFormatWithName:@"touchIDs" block:v2];
}

void sub_100093C6C(uint64_t a1, void *a2)
{
  v3 = a2;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v10 = 0;
  v4 = [*(a1 + 32) touchIdentifiers];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100093D60;
  v6[3] = &unk_1000FCF00;
  v8 = v9;
  v5 = v3;
  v7 = v5;
  [v4 enumerateRangesUsingBlock:v6];

  _Block_object_dispose(v9, 8);
}

void sub_100093D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100093D60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    [*(a1 + 32) appendString:@" "];
  }

  v6 = *(a1 + 32);
  if (a3 == 1)
  {
    result = [v6 appendFormat:@"%X", a2, v8];
  }

  else
  {
    result = [v6 appendFormat:@"%X-%X", a2, a3 + a2 - 1];
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

id sub_1000941D4(uint64_t a1)
{
  [*(*(a1 + 32) + 16) increment];
  [*(*(a1 + 32) + 104) includeBitNumber:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 112);

  return [v3 excludeBitNumber:v2];
}

id sub_10009429C(uint64_t a1)
{
  [*(*(a1 + 32) + 24) increment];
  [*(*(a1 + 32) + 104) includeBitNumber:*(a1 + 40)];
  result = [*(*(a1 + 32) + 112) includeBitNumber:*(a1 + 40)];
  if (!*(a1 + 48))
  {
    result = [*(*(a1 + 32) + 72) increment];
  }

  v3 = *(a1 + 52);
  if ((v3 & 0x20000) != 0)
  {
    result = [*(*(a1 + 32) + 64) increment];
    v3 = *(a1 + 52);
  }

  if ((v3 & 0x42800) != 0)
  {
    v4 = *(*(a1 + 32) + 96);

    return [v4 increment];
  }

  return result;
}

id sub_1000943B4(uint64_t a1)
{
  [*(*(a1 + 32) + 40) increment];
  [*(*(a1 + 32) + 104) includeBitNumber:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 120);

  return [v3 excludeBitNumber:v2];
}

id sub_100094478(uint64_t a1)
{
  [*(*(a1 + 32) + 32) increment];
  [*(*(a1 + 32) + 104) includeBitNumber:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 120);

  return [v3 includeBitNumber:v2];
}

void sub_100094574(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  if (*(v3 + 176) != v4)
  {
    v12 = v1;
    v13 = v2;
    *(v3 + 176) = v4;
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = *(v7 + 8);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10009462C;
    v9[3] = &unk_1000FD1A0;
    v9[4] = v7;
    v10 = v6;
    v11 = *(a1 + 48);
    [v8 updateStatistics:v9];
  }
}

void sub_1000949D4(void *a1, void *a2, CGFloat *a3, int64_t a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a5;
  sub_100012884(v11, v9, *(v10 + 5), *(v10 + 1), a3, a4);
  if (v9)
  {
    v12 = v9[2];
    v13 = v9[3];
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  v14 = BKLogTouchEvents();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = *(v10 + 1);
    v16[0] = 67109632;
    v16[1] = v12;
    v17 = 1024;
    v18 = v13;
    v19 = 1024;
    v20 = v15;
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Adding hit test result: %X %X %d", v16, 0x14u);
  }

  [*(v10 + 29) addObject:v9];
}

id sub_100094B58(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = sub_100089118(*(a1 + 16), a2, a3);
  v9 = v8;
  if (v8)
  {
    [*(v8 + 24) addObject:v7];
  }

  [v7 addObject:v9];

  return v9;
}

void sub_100094C00(uint64_t a1, void *a2, unsigned int *a3, uint64_t a4)
{
  v18 = a2;
  v7 = *a3;
  v8 = a3[2];
  v9 = objc_alloc_init(NSMutableArray);
  v10 = sub_100094B58(a1, v7, v8, v9);
  v11 = [*a4 hostContextIDForEmbeddedContextID:v7 displayUUID:*(a4 + 8)];
  *&v12 = 67109376;
  v17 = v12;
  while (v11)
  {
    v13 = [*a4 taskPortForContextID:v11 displayUUID:*(a4 + 8)];
    if ((v13 - 1) > 0xFFFFFFFD)
    {
      v15 = BKLogTouchEvents();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = v17;
        v20 = v13;
        v21 = 1024;
        v22 = v11;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "invalid port (%X) for contextID:%X", buf, 0xEu);
      }
    }

    else
    {
      if ([v9 count] >= 0x40)
      {
        v16 = BKLogTouchEvents();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          *buf = 67109120;
          v20 = v11;
          _os_log_fault_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "reached maximum supported embedded context depth at contextID:%X", buf, 8u);
        }

        break;
      }

      v14 = sub_100094B58(a1, v11, v13, v9);
    }

    v11 = [*a4 hostContextIDForEmbeddedContextID:v11 displayUUID:{*(a4 + 8), v17}];
  }

  sub_10008DF74(v18, v9);
  [*a4 applySceneHostSettingsToHostingChain:v18[30]];
  v18[7] = [*a4 hitTestCategoryForContextID:*a3];
}

void sub_100094E7C(void *a1, void *a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v11 = a1;
  v12 = a2;
  v13 = *(a4 + 89);
  v14 = v12[2];
  v15 = sub_10000ED90(BKDisplayController, v13, 0, v14, *(a4 + 16));

  memset(v20, 0, sizeof(v20));
  [*a4 contextIDAtCAScreenLocation:*(a4 + 8) displayUUID:v15 options:0 securityAnalysis:v20 results:{a5, a6}];
  if (DWORD1(v20[0]) == *(a3 + 4))
  {
    v16 = BKLogTouchEvents();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v22 = DWORD1(v20[0]);
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "auth: recording hit test info for slotID:%X", buf, 8u);
    }

    *(v11 + 6) = DWORD1(v20[0]);
    v17 = sub_10000EBFC(v20);
    v18 = *(v11 + 27);
    *(v11 + 27) = v17;
  }

  else
  {
    v18 = BKLogTouchEvents();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = *(a3 + 4);
      *buf = 67109376;
      v22 = v19;
      v23 = 1024;
      v24 = DWORD1(v20[0]);
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "auth: slotID mismatch between down hit tests: %X vs %X", buf, 0xEu);
    }
  }
}

double sub_1000950C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*a3 convertReferenceLocation:*(a3 + 8) toCAScreenLocationForDisplayUUID:{*(a3 + 56), *(a3 + 64)}];
  v7 = v6;
  v9 = v8;
  v10 = sub_10000ED90(BKDisplayController, *(a3 + 89), a2 != 0, 0, *(a3 + 16));
  [*a3 contextIDAtCAScreenLocation:*(a3 + 8) displayUUID:v10 options:a2 securityAnalysis:a1 results:{v7, v9}];

  return v7;
}

void sub_100095170(void *a1)
{
  v1 = a1;
  if (v1[6])
  {
    v2 = BKLogTouchEvents();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v1[6];
      v5[0] = 67109120;
      v5[1] = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "auth: exited slotID %X", v5, 8u);
    }

    v1[6] = 0;
    v4 = *(v1 + 27);
    *(v1 + 27) = 0;
  }
}

BKTouchHitTestContextMap *sub_100095250(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v166 = a3;
  v173 = a4;
  v167 = a5;
  v168 = a6;
  if (a1)
  {
    v174 = objc_alloc_init(BKTouchHitTestContextMap);
    v10 = *(a1 + 16);
    if (v10)
    {
      v10 = v10[1];
    }

    v11 = v10;
    v12 = [v11 displayUUID];

    v13 = *(a1 + 32);
    if (v13)
    {
      v13 = v13[1];
    }

    v165 = v13;
    v196 = v165;
    v198 = 0;
    *v199 = 0;
    v164 = v12;
    v197 = v164;
    *&v199[7] = 0;
    *&v199[16] = vdupq_n_s64(0xC197D783FC000000);
    *&v199[32] = *&v199[16];
    *&v199[48] = *&v199[16];
    v200 = 0;
    v192 = 0u;
    v193 = 0u;
    v194 = 0u;
    v195 = 0u;
    obj = v166;
    v172 = [obj countByEnumeratingWithState:&v192 objects:v201 count:16];
    if (v172)
    {
      v171 = *v193;
      *&v14 = 138543618;
      v160 = v14;
      do
      {
        v175 = 0;
        do
        {
          if (*v193 != v171)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v192 + 1) + 8 * v175);
          v16 = *(v15 + 8);
          v17 = *(v15 + 168);
          *&v199[8] = *(v15 + 152);
          *&v199[24] = v17;
          *&v199[40] = *(v15 + 184);
          *&v199[56] = *(v15 + 200);
          *v199 = v16;
          v181 = v15;
          v18 = v15;
          v19 = v174;
          v189 = v18;
          v20 = v18[26];
          v21 = v20;
          if (v20)
          {
            v22 = [v20 contextIDsToAlwaysSendTouches];
            v23 = v22;
            if (v22)
            {
              v185 = v22;
              v24 = [v22 count];
              v23 = v185;
              if (v24)
              {
                v223 = 0u;
                v224 = 0u;
                *v221 = 0u;
                v222 = 0u;
                v25 = v185;
                v26 = [v25 countByEnumeratingWithState:v221 objects:idx count:16];
                if (v26)
                {
                  v27 = *v222;
                  do
                  {
                    for (i = 0; i != v26; i = i + 1)
                    {
                      if (*v222 != v27)
                      {
                        objc_enumerationMutation(v25);
                      }

                      v29 = [*(*&v221[8] + 8 * i) unsignedIntValue];
                      v30 = [v196 taskPortForContextID:v29 displayUUID:v197];
                      if (v29)
                      {
                        v31 = (v30 - 1) > 0xFFFFFFFD;
                      }

                      else
                      {
                        v31 = 1;
                      }

                      if (!v31)
                      {
                        sub_100088D78(v231, *(a1 + 16), &v199[8], v29, v197);
                        v32 = BKLogTouchEvents();
                        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
                        {
                          *buf = 67109632;
                          *&buf[4] = v29;
                          *&buf[8] = 1024;
                          *&buf[10] = v30;
                          *&buf[14] = 1024;
                          LODWORD(v226) = *v199;
                          _os_log_debug_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "Always send: adding %X %X %d", buf, 0x14u);
                        }

                        v33 = sub_100089118(*(a1 + 16), v29, v30);
                        [v189[29] addObject:v33];
                        sub_100012884(v19, v33, *(v189 + 5), *v199, v231, 4);
                      }
                    }

                    v26 = [v25 countByEnumeratingWithState:v221 objects:idx count:16];
                  }

                  while (v26);
                }

                v23 = v185;
              }
            }
          }

          v34 = v189;
          v35 = v19;
          if (v34[6] == 1)
          {
            v34[6] = 2;
            v36 = [v34[29] copy];
            v223 = 0u;
            v224 = 0u;
            *v221 = 0u;
            v222 = 0u;
            v37 = v36;
            v38 = [v37 countByEnumeratingWithState:v221 objects:idx count:16];
            if (v38)
            {
              v39 = *v222;
              do
              {
                v40 = 0;
                do
                {
                  if (*v222 != v39)
                  {
                    objc_enumerationMutation(v37);
                  }

                  v41 = *(*&v221[8] + 8 * v40);
                  if (v41)
                  {
                    v42 = v41[2];
                  }

                  else
                  {
                    v42 = 0;
                  }

                  v43 = BKLogTouchEvents();
                  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
                  {
                    *v231 = 67109376;
                    *&v231[4] = v42;
                    *&v231[8] = 1024;
                    *&v231[10] = *v199;
                    _os_log_debug_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEBUG, "Start avoiding: adding %X %d", v231, 0xEu);
                  }

                  sub_100088D78(v231, *(a1 + 16), &v199[8], v42, v197);
                  sub_1000949D4(v41, v34, v231, 3, v35);
                  v40 = v40 + 1;
                }

                while (v38 != v40);
                v44 = [v37 countByEnumeratingWithState:v221 objects:idx count:16];
                v38 = v44;
              }

              while (v44);
            }

            v45 = [v37 bs_filter:&stru_1000FD010];
            v46 = [v45 mutableCopy];
            v47 = v34[29];
            v34[29] = v46;
          }

          v48 = v34;
          v49 = v173;
          v50 = v49;
          v51 = v34[6];
          v178 = v48;
          if (v51 == 2)
          {
            goto LABEL_48;
          }

          if (v51 == 3)
          {
            v34[6] = 0;
LABEL_48:

            goto LABEL_182;
          }

          v52 = v48[4];
          v53 = v52 == 2;
          if (v51 == 4 || v52 != 1)
          {
            v55 = v51 != 4 && v52 != 0;
            if (v52 == 2 && v55)
            {
              if ([v49 count])
              {
                v176 = a1;
                v56 = *&v199[32];
                v57 = *&v199[40];
                v58 = v178;
                v59 = v50;
                v60 = v58 + 9;
                v182 = v58;
                v187 = v58[9];
                v162 = v58[10];
                v161 = *(v58 + 248);
                *v221 = 0u;
                v222 = 0u;
                v223 = 0u;
                v224 = 0u;
                v61 = v59;
                v62 = [v61 countByEnumeratingWithState:v221 objects:idx count:16];
                if (v62)
                {
                  v63 = *v222;
LABEL_63:
                  v64 = 0;
                  while (1)
                  {
                    if (*v222 != v63)
                    {
                      objc_enumerationMutation(v61);
                    }

                    v65 = *(*&v221[8] + 8 * v64);
                    v66 = [v65 hitTestRegionLocationForPoint:{v56, v57, v160}];
                    if (v66 >= 1)
                    {
                      break;
                    }

                    if (v62 == ++v64)
                    {
                      v62 = [v61 countByEnumeratingWithState:v221 objects:idx count:16];
                      if (v62)
                      {
                        goto LABEL_63;
                      }

                      goto LABEL_69;
                    }
                  }

                  v163 = v65;

                  a1 = v176;
                  v67 = v182;
                  v70 = [v187 isEqual:v163];
                  v71 = v70;
                  if (v162 == v66)
                  {
                    v72 = v70;
                  }

                  else
                  {
                    v72 = 0;
                  }

                  if (v72)
                  {
                    v68 = v163;
                    goto LABEL_81;
                  }

                  objc_storeStrong(v60, v65);
                  v182[10] = v66;
                  if (v71)
                  {
                    if ((v161 & 1) == 0)
                    {
                      v105 = BKLogTouchEvents();
                      if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
                      {
                        v106 = NSStringFromBKSHitTestRegionLocation();
                        v107 = NSStringFromBKSHitTestRegionLocation();
                        *v231 = 138543874;
                        *&v231[4] = v106;
                        *&v231[12] = 2114;
                        *&v231[14] = v107;
                        *&v231[22] = 2114;
                        *&v231[24] = v163;
                        _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEFAULT, "Touch moved (%{public}@ -> %{public}@) within %{public}@", v231, 0x20u);
                      }

                      goto LABEL_190;
                    }
                  }

                  else
                  {
                    if (v187)
                    {
                      v105 = BKLogTouchEvents();
                      if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
                      {
                        v144 = NSStringFromBKSHitTestRegionLocation();
                        v145 = NSStringFromBKSHitTestRegionLocation();
                        *v231 = 138544130;
                        *&v231[4] = v144;
                        *&v231[12] = 2114;
                        *&v231[14] = v145;
                        *&v231[22] = 2114;
                        *&v231[24] = v187;
                        LOWORD(v232) = 2114;
                        *(&v232 + 2) = v163;
                        _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEFAULT, "Touch moved (%{public}@ -> %{public}@) from:%{public}@ to:%{public}@", v231, 0x2Au);
                      }
                    }

                    else
                    {
                      v105 = BKLogTouchEvents();
                      if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
                      {
                        v146 = NSStringFromBKSHitTestRegionLocation();
                        *v231 = v160;
                        *&v231[4] = v146;
                        *&v231[12] = 2114;
                        *&v231[14] = v163;
                        _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEFAULT, "Touch entered (%{public}@) %{public}@", v231, 0x16u);
                      }
                    }

LABEL_190:
                  }

                  if (v66 == 2)
                  {
                    v147 = v161;
                  }

                  else
                  {
                    v147 = 1;
                  }

                  if ((v147 & 1) == 0)
                  {
                    goto LABEL_83;
                  }
                }

                else
                {
LABEL_69:

                  a1 = v176;
                  v67 = v182;
                  v68 = 0;
LABEL_81:
                }
              }

              else if ((v178[31] & 1) == 0)
              {
LABEL_83:
                v34[6] = 4;
              }

              v53 = 1;
              v186 = 1;
LABEL_85:
              v69 = v189;
              goto LABEL_86;
            }

            v186 = v55;
          }

          else
          {
            v186 = v178[5] != 2;
          }

          if (v186)
          {
            goto LABEL_85;
          }

          if (v52 != 2)
          {
            goto LABEL_132;
          }

          if (v34[6] != 4)
          {
            goto LABEL_132;
          }

          v69 = v189;
          if (![*(a1 + 24) _queue_hasTouchEnterSlots])
          {
            goto LABEL_132;
          }

LABEL_86:
          v73 = v178;
          SenderID = IOHIDEventGetSenderID();
          v75 = [v69[26] contextIDsToExcludeFromHitTesting];
          v76 = [*(a1 + 24) touchEventServer];
          v77 = sub_10003F6B8(v76, SenderID, 0);

          if ([v77 count])
          {
            v78 = v75;
            v79 = v77;
            v80 = v79;
            v81 = v79;
            if (v78 && (v81 = v78, v79))
            {
              v82 = [v78 arrayByAddingObjectsFromArray:v79];
            }

            else
            {
              v82 = v81;
            }

            v75 = v82;
          }

          v83 = v198;
          v198 = v75;
          v84 = v75;

          if ((v200 & 1) == 0)
          {
            if (IOHIDEventConformsTo() && (sub_100007B10(idx, a2), v85 = idx[1], v86 = v203, idx[1] < v203))
            {
              v87 = idx[0];
              while (1)
              {
                if (v86)
                {
                  CFArrayGetValueAtIndex(v87, v85);
                }

                if (IOHIDEventGetType() == 1 && IOHIDEventGetIntegerValue() == 65376 && IOHIDEventGetIntegerValue() == 11)
                {
                  break;
                }

                if (v86 == ++v85)
                {
                  goto LABEL_102;
                }
              }

              v88 = 1;
            }

            else
            {
LABEL_102:
              v88 = 0;
            }

            HIBYTE(v200) = v88;
            LOBYTE(v200) = 1;
          }

          if (!v186)
          {
            v98 = v73;
            v219 = 0u;
            v220 = 0u;
            v217 = 0u;
            v218 = 0u;
            v215 = 0u;
            v216 = 0u;
            v213 = 0u;
            v214 = 0u;
            v211 = 0u;
            v212 = 0u;
            v209 = 0u;
            v210 = 0u;
            v207 = 0u;
            v208 = 0u;
            v205 = 0u;
            v206 = 0u;
            v203 = 0u;
            v204 = 0u;
            *idx = 0u;
            v99 = sub_1000950C4(idx, 0, &v196);
            if (LODWORD(idx[0]) && HIDWORD(idx[0]))
            {
              v101 = v99;
              v102 = v100;
              v103 = [*(a1 + 24) _queue_slotRecordForSlotID:?];
              v104 = v103;
              if (v103)
              {
                if (v103[3] == 2)
                {
                  sub_100094E7C(v98, v103, idx, &v196, v101, v102);
                  sub_100094C00(a1, v98, idx, &v196);
                }
              }

              else
              {
                sub_100095170(v98);
              }
            }

            else
            {
              sub_100095170(v98);
            }

            goto LABEL_132;
          }

          v89 = v73;
          v219 = 0u;
          v220 = 0u;
          v217 = 0u;
          v218 = 0u;
          v215 = 0u;
          v216 = 0u;
          v213 = 0u;
          v214 = 0u;
          v211 = 0u;
          v212 = 0u;
          v209 = 0u;
          v210 = 0u;
          v207 = 0u;
          v208 = 0u;
          v205 = 0u;
          v206 = 0u;
          v203 = 0u;
          v204 = 0u;
          *idx = 0u;
          if (v53)
          {
            v90 = v221;
          }

          else
          {
            v90 = 0;
          }

          *v221 = 0;
          v91 = sub_1000950C4(idx, v90, &v196);
          if (v53)
          {
            v93 = v91;
            v94 = v92;
            v95 = *v221;
            v96 = *v221;
            if (LODWORD(idx[0]))
            {
              objc_storeStrong(v89 + 28, v95);
              if (HIDWORD(idx[0]))
              {
                v97 = [*(a1 + 24) _queue_slotRecordForSlotID:?];
                if (v97)
                {
                  sub_100094E7C(v89, v97, idx, &v196, v93, v94);
                }
              }

              else
              {
                sub_100095170(v89);
              }

LABEL_130:
              sub_100094C00(a1, v89, idx, &v196);
              goto LABEL_131;
            }
          }

          else
          {
            v96 = 0;
            if (LODWORD(idx[0]))
            {
              goto LABEL_130;
            }
          }

          sub_10008DF74(v89, 0);
          sub_100095170(v89);
LABEL_131:

LABEL_132:
          v108 = v178;
          v190 = v35;
          v179 = [*(a1 + 8) filterDestinations:v108[30]];
          v109 = BKLogTouchDeliveryPolicy();
          if (os_log_type_enabled(v109, OS_LOG_TYPE_DEBUG))
          {
            v143 = [*(a1 + 8) valueForKey:@"_policy"];
            LODWORD(idx[0]) = 138543362;
            *(idx + 4) = v143;
            _os_log_debug_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEBUG, "policies: %{public}@", idx, 0xCu);
          }

          v183 = objc_alloc_init(NSMutableSet);
          v232 = 0u;
          v233 = 0u;
          memset(v231, 0, sizeof(v231));
          v180 = v179;
          v110 = [v180 countByEnumeratingWithState:v231 objects:idx count:16];
          if (v110)
          {
            v111 = 0;
            v112 = **&v231[16];
            do
            {
              v113 = 0;
              v177 = v110;
              do
              {
                if (**&v231[16] != v112)
                {
                  objc_enumerationMutation(v180);
                }

                v114 = *(*&v231[8] + 8 * v113);
                v115 = BKLogTouchDeliveryPolicy();
                if (os_log_type_enabled(v115, OS_LOG_TYPE_DEBUG))
                {
                  v124 = [v114 succinctDescription];
                  *v229 = 138543362;
                  v230 = v124;
                  _os_log_debug_impl(&_mh_execute_header, v115, OS_LOG_TYPE_DEBUG, "TDPS allow send to %{public}@", v229, 0xCu);
                }

                if (v114)
                {
                  v116 = v114[2];
                }

                else
                {
                  v116 = 0;
                }

                if ([v108[29] containsObject:{v114, sub_100088D78(v229, *(a1 + 16), &v199[8], v116, v197)}])
                {
                  v117 = 1;
                }

                else
                {
                  v117 = 2;
                }

                sub_1000949D4(v114, v108, v229, v117, v190);
                [v183 addObject:v114];
                if (v186)
                {
                  v228 = 0u;
                  v227 = 0u;
                  *buf = 0u;
                  v226 = 0u;
                  v118 = *(a1 + 16);
                  if (v118)
                  {
                    v118 = v118[9];
                  }

                  v119 = v118;
                  v120 = [v119 countByEnumeratingWithState:buf objects:v221 count:16];
                  v121 = a1;
                  if (v120)
                  {
                    v122 = *v226;
                    do
                    {
                      for (j = 0; j != v120; j = j + 1)
                      {
                        if (*v226 != v122)
                        {
                          objc_enumerationMutation(v119);
                        }

                        [*(*&buf[8] + 8 * j) touch:*(v108 + 4) didHitTestToDestination:v114 hostingChainIndex:{v111, v160}];
                      }

                      v120 = [v119 countByEnumeratingWithState:buf objects:v221 count:16];
                    }

                    while (v120);
                  }

                  v110 = v177;
                  a1 = v121;
                  ++v111;
                }

                v113 = v113 + 1;
              }

              while (v113 != v110);
              v125 = [v180 countByEnumeratingWithState:v231 objects:idx count:16];
              v110 = v125;
            }

            while (v125);
          }

          v126 = v108;
          v127 = v183;
          v188 = v190;
          v184 = v167;
          v128 = v168;
          v178 = v127;
          v129 = [NSMutableSet setWithSet:*(v126 + 29)];
          [v129 minusSet:v127];
          v223 = 0u;
          v224 = 0u;
          *v221 = 0u;
          v222 = 0u;
          v191 = v129;
          v130 = [v191 countByEnumeratingWithState:v221 objects:idx count:16];
          if (v130)
          {
            v131 = *v222;
            do
            {
              for (k = 0; k != v130; k = k + 1)
              {
                if (*v222 != v131)
                {
                  objc_enumerationMutation(v191);
                }

                v133 = *(*&v221[8] + 8 * k);
                if (v133 && (*(v133 + 32) & 1) != 0)
                {
                  sub_100088D78(v231, *(a1 + 16), &v199[8], *(v133 + 8), v197);
                  v134 = *(v133 + 8);
                  v135 = BKLogTouchEvents();
                  if (os_log_type_enabled(v135, OS_LOG_TYPE_DEBUG))
                  {
                    v142 = *(v181 + 8);
                    *buf = 67109376;
                    *&buf[4] = v134;
                    *&buf[8] = 1024;
                    *&buf[10] = v142;
                    _os_log_debug_impl(&_mh_execute_header, v135, OS_LOG_TYPE_DEBUG, "Adding hit test exit result: %X %d", buf, 0xEu);
                  }

                  sub_100012884(v188, v133, v126[5], *(v181 + 8), v231, 3);
                  v136 = [v128 objectForKey:v134];
                  sub_100068CA4(v136, v126);
                  v137 = v136;
                  v138 = v137;
                  if (!v137 || (v139 = v137[31] == 0, v137, v139))
                  {
                    [v128 removeObjectForKey:{v134, v160}];
                  }

                  v140 = [v184 objectForKey:{v134, v160}];
                  if (v140)
                  {
                    [*(v126 + 29) removeObject:v133];
                  }

                  else
                  {
                    v141 = BKLogTouchEvents();
                    if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 67109120;
                      *&buf[4] = v134;
                      _os_log_error_impl(&_mh_execute_header, v141, OS_LOG_TYPE_ERROR, "_removeContact: missing destination for context %X", buf, 8u);
                    }
                  }
                }
              }

              v130 = [v191 countByEnumeratingWithState:v221 objects:idx count:16];
            }

            while (v130);
          }

LABEL_182:
          v175 = v175 + 1;
        }

        while (v175 != v172);
        v148 = [obj countByEnumeratingWithState:&v192 objects:v201 count:16];
        v172 = v148;
      }

      while (v148);
    }

    v149 = obj;
    if (v149)
    {
      v150 = v149[31] == 0;

      if (!v150)
      {
        if (BKSHIDDigitizerEventIsFirstTouchDown())
        {
          if (v174)
          {
            v174->_initialTouchDown = 1;
          }

          IOHIDEventGetTimeStamp();
          BSMonotonicReferencedTimeFromMachTime();
          if (v174)
          {
            v174->_initialTouchTimestamp = v151;
          }
        }
      }
    }

    v152 = *(a1 + 16);
    if (v152)
    {
      v153 = BKLogTouchEvents();
      v154 = os_log_type_enabled(v153, OS_LOG_TYPE_DEBUG);

      if (v154)
      {
        v155 = objc_alloc_init(BSDescriptionStream);
        v156 = *(v152 + 120);
        idx[0] = _NSConcreteStackBlock;
        idx[1] = 3221225472;
        *&v203 = sub_1000891D0;
        *(&v203 + 1) = &unk_1000FC840;
        v157 = v155;
        *&v204 = v157;
        [v157 appendIntegerMap:v156 withName:0 keyFormat:1 valueBlock:idx];
        v158 = BKLogTouchEvents();
        if (os_log_type_enabled(v158, OS_LOG_TYPE_DEBUG))
        {
          *v221 = 138543362;
          *&v221[4] = v157;
          _os_log_debug_impl(&_mh_execute_header, v158, OS_LOG_TYPE_DEBUG, "destinations are now %{public}@", v221, 0xCu);
        }
      }
    }

    sub_100007FA8(&v196);
  }

  else
  {
    v174 = 0;
  }

  return v174;
}

void sub_1000966FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, id a53)
{
  sub_100007FA8(&a53);

  _Unwind_Resume(a1);
}

id sub_100096BEC(uint64_t a1)
{
  [*(a1 + 32) appendSuccinctDescriptionToFormatter:*(a1 + 40)];
  result = [*(*(a1 + 32) + 24) count];
  if (result)
  {
    return [*(a1 + 40) appendInteger:objc_msgSend(*(*(a1 + 32) + 24) withName:{"count"), @"externalReferences"}];
  }

  return result;
}

void *sub_100096E00(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  v8.receiver = a1;
  v8.super_class = BKTouchDestination;
  v3 = objc_msgSendSuper2(&v8, "initWithContextID:clientPort:", a2, a3);
  v4 = v3;
  if (v3)
  {
    v3[4] = 1;
    v5 = [[NSHashTable alloc] initWithOptions:517 capacity:8];
    v6 = v4[3];
    v4[3] = v5;
  }

  return v4;
}

void *sub_100096E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  objc_opt_self();
  v5 = sub_100096E00([BKTouchDestination alloc], a2, a3);

  return v5;
}

void sub_1000972B0(id a1)
{
  v1 = objc_alloc_init(BKDisplayAnnotationLocation);
  v2 = qword_100126100;
  qword_100126100 = v1;
}

void sub_100097D28(id a1)
{
  v1 = objc_alloc_init(BKDisplayRenderOverlayPersistenceCoordinator);
  v2 = qword_100126110;
  qword_100126110 = v1;
}

void sub_100098EDC(id a1)
{
  v1 = [BKBootUIOverlayVendor alloc];
  v4 = +[BKFirstBootDetector sharedInstance];
  v2 = [(BKBootUIOverlayVendor *)v1 initWithFirstBootDetector:v4];
  v3 = qword_100126120;
  qword_100126120 = v2;
}

void sub_10009A698(id a1)
{
  if (!sub_1000030E8())
  {
    v1 = [BKDisplayRenderOverlayManager alloc];
    v7 = +[BKDisplayRenderOverlayPersistenceCoordinator sharedInstance];
    v2 = sub_100005110();
    v3 = +[BKDisplayBrightnessController sharedInstance];
    v4 = +[CAWindowServer serverIfRunning];
    v5 = [(BKDisplayRenderOverlayManager *)v1 _initWithPersistenceCoordinator:v7 orientationManager:v2 backlightManager:v3 windowServer:v4];
    v6 = qword_100126130;
    qword_100126130 = v5;
  }
}

id sub_10009A840(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = [*(a1 + 40) appendPointer:v3 withName:@"relativeRegion"];
    v2 = *(a1 + 32);
  }

  return [*(a1 + 40) appendFloat:@"edgePosition" withName:*(v2 + 24)];
}

id sub_10009AEA8(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 8) withName:0];
  v3 = [*(a1 + 32) appendPoint:@"baseTranslation" withName:{*(*(a1 + 40) + 16), *(*(a1 + 40) + 24)}];
  return [*(a1 + 32) appendRect:@"globalBounds" withName:{*(*(a1 + 40) + 32), *(*(a1 + 40) + 40), *(*(a1 + 40) + 48), *(*(a1 + 40) + 56)}];
}

void sub_10009AF20(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 72);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10009B028;
  v8[3] = &unk_1000FD0E0;
  v9 = v2;
  [v9 appendDictionary:v3 withName:@"regionToLayoutDescriptor" itemBlock:v8];
  v4 = *(a1 + 32);
  v5 = *(*(a1 + 40) + 64);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10009B0A8;
  v6[3] = &unk_1000FD0E0;
  v7 = v4;
  [v7 appendDictionary:v5 withName:@"regionToComputedFrame" itemBlock:v6];
}

void sub_10009B028(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = [*(a1 + 32) appendObject:a2 withName:0];
  [*(a1 + 32) appendRightArrow];
  v6 = [*(a1 + 32) appendObject:v7 withName:0];
}

id sub_10009B0A8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 appendObject:a2 withName:0];
  BSRectFromValue();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [*(a1 + 32) appendRightArrow];
  return [*(a1 + 32) appendRect:0 withName:{v9, v11, v13, v15}];
}

void sub_10009C804(void *a1, void *a2)
{
  v3 = a2;
  v5 = a1[4];
  v4 = a1[5];
  v6 = *(v5 + 8);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10009C8C0;
  v10[3] = &unk_1000FD238;
  v11 = v3;
  v12 = v5;
  v7 = v4;
  v8 = a1[6];
  v13 = v7;
  v14 = v8;
  v9 = v3;
  dispatch_async(v6, v10);
}

id sub_10009C8C0(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3 == v2[9])
  {
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);

    return [v2 _queue_continueAddingOverlayForReason:v6 generation:v7];
  }

  else
  {
    v4 = sub_1000524BC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 48);
      v8 = *(a1 + 56);
      v10[0] = 67109378;
      v10[1] = v8;
      v11 = 2114;
      v12 = v9;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "addOverlay(%d-%{public}@): this overlay was removed or canceled; not continuing", v10, 0x12u);
    }

    return [*(a1 + 32) invalidate];
  }
}

void sub_10009CC78(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  BSContinuousMachTimeNow();
  v6 = v5;
  v7 = sub_1000524BC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 56);
    v9 = *(a1 + 32);
    v10 = v6 - *(a1 + 64);
    v15 = 67109634;
    v16 = v8;
    v17 = 2114;
    v18 = v9;
    v19 = 2048;
    v20 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "addOverlay(%d-%{public}@): acquire returned in %gs", &v15, 0x1Cu);
  }

  if (v4)
  {
    v11 = sub_1000524BC();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 56);
      v14 = *(a1 + 32);
      v15 = 67109634;
      v16 = v13;
      v17 = 2114;
      v18 = v14;
      v19 = 2114;
      v20 = *&v4;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "addOverlay(%d-%{public}@): could not acquire activity assertion (but we shall continue anyway): %{public}@", &v15, 0x1Cu);
    }
  }

  v12 = *(a1 + 40);
  (*(*(a1 + 48) + 16))();
}

void sub_10009D86C(uint64_t a1)
{
  v2 = sub_1000524BC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "systemShellChangedWithPrimary: %{public}@", buf, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = [NSString stringWithFormat:@"shell changed (%@)", *(a1 + 32)];
  [v4 _queue_updateOverlayForReason:v5];
}

void sub_10009D9E0(uint64_t a1)
{
  v2 = sub_1000524BC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "systemShellDidFinishLaunching: - %{public}@", buf, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = [NSString stringWithFormat:@"shell launched (%@)", *(a1 + 32)];
  [v4 _queue_updateOverlayForReason:v5];
}

id sub_10009DB54(uint64_t a1)
{
  v2 = sub_1000524BC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Re-evalutate - firstBootDetectorDidFinishFirstBoot - %{public}@", &v7, 0xCu);
  }

  v4 = *(a1 + 40);
  if (v4[7])
  {
    v5 = BKLogDetailed();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Toggling underlay.", &v7, 2u);
    }

    [*(a1 + 40) _queue_removeUnderlay];
    [*(a1 + 40) _queue_addUnderlay];
    v4 = *(a1 + 40);
  }

  return [v4 _queue_updateOverlayForReason:@"didFinishFirstBoot"];
}

void sub_10009DD04(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 104);
  v3 = sub_1000524BC();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      v5 = *(a1 + 40);
      v8 = 138543362;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Unsustaining the boot overlay: %{public}@", &v8, 0xCu);
    }

    *(*(a1 + 32) + 104) = 0;
    v6 = *(a1 + 32);
    if (v6[105] == 1)
    {
      [v6 _queue_removeOverlayWithAnimationSettings:0];
      *(*(a1 + 32) + 105) = 0;
    }
  }

  else
  {
    if (v4)
    {
      v7 = *(a1 + 40);
      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Can't unsustain nonexistent boot overlay: %{public}@", &v8, 0xCu);
    }
  }
}

void sub_10009DEFC(void *a1)
{
  v2 = *(a1[4] + 72);
  v3 = sub_1000524BC();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = a1[5];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Sustaining the boot overlay: %{public}@", &v7, 0xCu);
    }

    *(a1[4] + 104) = 1;
    *(a1[4] + 105) = 0;
    *(*(a1[6] + 8) + 24) = 1;
  }

  else
  {
    if (v4)
    {
      v6 = a1[5];
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Can't persist a boot overlay that isn't there: %{public}@", &v7, 0xCu);
    }
  }
}

void sub_10009E0C4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 72);
  v3 = sub_1000524BC();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = *(a1 + 48);
      v7 = 67109120;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Dismissing boot logo (pid:%d)", &v7, 8u);
    }

    *(*(a1 + 32) + 104) = 0;
    *(*(a1 + 32) + 105) = 0;
    [*(a1 + 32) _queue_setScreenOwnerPID:*(a1 + 48)];
    [*(a1 + 32) _queue_removeOverlayWithAnimationSettings:*(a1 + 40)];
  }

  else
  {
    if (v4)
    {
      v6 = *(a1 + 48);
      v7 = 67109120;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Cannot dismiss nonexistent boot logo (pid:%d)", &v7, 8u);
    }
  }
}

id sub_10009E960(uint64_t a1)
{
  v2 = [*(a1 + 32) hideAppleLogoOnLaunch];
  v3 = *(a1 + 40);
  if (v2)
  {
    [v3 _queue_removeUnderlay];
  }

  else
  {
    [v3 _queue_addUnderlay];
  }

  v4 = *(a1 + 40);

  return [v4 _queue_updateOverlayForReason:@"init"];
}

id sub_10009E9BC(uint64_t a1)
{
  [*(a1 + 32) _queue_addUnderlay];
  v2 = *(a1 + 32);

  return [v2 _queue_updateOverlayForReason:@"init 2"];
}

void sub_10009EA54(id a1)
{
  if (sub_1000030E8())
  {
    v1 = qword_100126140;
    qword_100126140 = 0;
  }

  else
  {
    v2 = [BKBootUIPresenter alloc];
    v9 = +[BKSystemShellSentinel sharedInstance];
    v3 = +[BKAlternateSystemAppManager sharedInstance];
    v4 = +[BKFirstBootDetector sharedInstance];
    v5 = +[BKBootUIOverlayVendor sharedInstance];
    v6 = +[BKDisplayRenderOverlayManager sharedInstance];
    v7 = [(BKBootUIPresenter *)v2 initWithSystemAppSentinel:v9 alternateSystemAppManager:v3 firstBootDetector:v4 bootUIOverlayVendor:v5 renderOverlayManager:v6];
    v8 = qword_100126140;
    qword_100126140 = v7;

    v1 = v9;
  }
}

void sub_10009EDD0(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = [BSObjCProtocol protocolForProtocol:&OBJC_PROTOCOL___BKSSystemShellControlClientInterface];
  v4 = [BSObjCProtocol protocolForProtocol:&OBJC_PROTOCOL___BKSSystemShellControlServerInterface];
  v5 = [BSMutableServiceInterface interfaceWithIdentifier:BKSSystemShellControllerServiceName];
  [v5 setServer:v4];
  [v5 setClient:v7];
  v6 = +[BSServiceQuality userInitiated];
  [v3 setServiceQuality:v6];

  [v3 setInterface:v5];
  [v3 setInterfaceTarget:*(*(a1 + 32) + 16)];
  [v3 setTargetQueue:*(*(a1 + 32) + 24)];
  [v3 setInvalidationHandler:&stru_1000FD2C8];
  [v3 setInterruptionHandler:&stru_1000FD2E8];
}

void sub_10009F060(uint64_t a1, void *a2)
{
  v3 = BKSSystemShellServiceDomainName;
  v4 = a2;
  [v4 setDomain:v3];
  [v4 setService:BKSSystemShellControllerServiceName];
  [v4 setDelegate:*(a1 + 32)];
}

BKNamespaceNode *__cdecl sub_10009F878(id a1, NSString *a2, BKNamespaceNode *a3, BOOL a4)
{
  v4 = a2;
  v5 = objc_alloc_init(BKNamespaceNode);
  [(BKNamespaceNode *)v5 setName:v4];

  return v5;
}

void sub_10009FA4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10009FA64(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000A081C(id a1)
{
  v1 = objc_alloc_init(BKHIDSystemInterface);
  v2 = qword_100126150;
  qword_100126150 = v1;
}

id sub_1000A0974(uint64_t a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000A0A14;
  v4[3] = &unk_1000FD608;
  v5 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v2 = [a2 matchSharingTouchesPolicy:&stru_1000FD5E8 orCancelTouchesPolicy:v4 orCombinedPolicy:&stru_1000FD628];

  return v2;
}

id sub_1000A0D90(uint64_t a1, void *a2)
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000A0E50;
  v8[3] = &unk_1000FD520;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = v4;
  v10 = v5;
  v6 = [a2 matchSharingTouchesPolicy:v8 orCancelTouchesPolicy:&stru_1000FD560 orCombinedPolicy:&stru_1000FD580];

  return v6;
}

NSNumber *sub_1000A0E50(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    LODWORD(v3) = *(v3 + 8);
  }

  if (v3 == a2)
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      LODWORD(v4) = *(v4 + 8);
    }

    v5 = v4 == a3;
  }

  else
  {
    v5 = 0;
  }

  return [NSNumber numberWithInt:v5];
}

uint64_t sub_1000A1008(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 assertionEndpoint];
  v5 = [v3 assertionEndpoint];

  if (v5)
  {
    v6 = xpc_connection_create_from_endpoint(v4);
    xpc_connection_set_target_queue(v6, *(*(a1 + 32) + 8));
    objc_initWeak(&location, *(a1 + 32));
    objc_initWeak(&from, v6);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000A11B0;
    handler[3] = &unk_1000FD4F8;
    objc_copyWeak(&v11, &location);
    v10 = v3;
    objc_copyWeak(&v12, &from);
    xpc_connection_set_event_handler(v6, handler);
    [*(*(a1 + 32) + 24) addObject:v6];
    xpc_connection_resume(v6);
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_connection_send_message(v6, v7);

    objc_destroyWeak(&v12);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  return 0;
}

void sub_1000A1180(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak((v18 - 56));
  _Unwind_Resume(a1);
}

void sub_1000A11B0(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (a2 == &_xpc_error_connection_invalid || a2 == &_xpc_error_connection_interrupted)
  {
    v6 = BKLogTouchDeliveryPolicy();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v16 = 138543362;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "TDPS server received policy invalidation %{public}@", &v16, 0xCu);
    }

    v8 = WeakRetained[3];
    v9 = objc_loadWeakRetained((a1 + 48));
    [v8 removeObject:v9];

    v10 = BKLogTouchDeliveryPolicy();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v14 = [WeakRetained _policy];
      v16 = 138543362;
      v17 = v14;
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Policy was %{public}@", &v16, 0xCu);
    }

    v11 = [WeakRetained _policy];
    v12 = [v11 policyExcludingPolicyIdenticalTo:*(a1 + 32)];
    [WeakRetained _queue_setPolicy:v12];

    v13 = BKLogTouchDeliveryPolicy();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v15 = [WeakRetained _policy];
      v16 = 138543362;
      v17 = v15;
      _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Policy is %{public}@", &v16, 0xCu);
    }
  }
}

id sub_1000A1558(uint64_t a1, void *a2)
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000A1668;
  v8[3] = &unk_1000FD440;
  v9 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000A16F4;
  v6[3] = &unk_1000FD468;
  v7 = *(a1 + 32);
  v4 = [a2 matchSharingTouchesPolicy:v8 orCancelTouchesPolicy:v6 orCombinedPolicy:&stru_1000FD4A8];

  return v4;
}

id sub_1000A1668(uint64_t a1)
{
  v1 = BKHostRequiresTouchesFromHostedContentEntitlement;
  v2 = [*(a1 + 32) _xpcConnection];
  v3 = [NSNumber numberWithBool:[BKSecurityManager hasEntitlement:v1 forConnection:v2]];

  return v3;
}

id sub_1000A16F4(uint64_t a1)
{
  v1 = BKCancelsTouchesInHostedContentEntitlement;
  v2 = [*(a1 + 32) _xpcConnection];
  v3 = [NSNumber numberWithBool:[BKSecurityManager hasEntitlement:v1 forConnection:v2]];

  return v3;
}

id sub_1000A1780(id a1, NSArray *a2)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = a2;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (![*(*(&v10 + 1) + 8 * i) BOOLValue])
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  v8 = [NSNumber numberWithBool:v7];

  return v8;
}

void sub_1000A1B10(id a1)
{
  v1 = objc_alloc_init(BKTouchDeliveryPolicyServer);
  v2 = qword_100126168;
  qword_100126168 = v1;
}

uint64_t sub_1000A1B4C(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 40)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 40) || *(result + 44) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v4 = *(result + 32);
  v5 = *(result + 76);
  v7[0] = *(result + 60);
  v7[1] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v9 = sub_10001EE34;
  v10 = &unk_1000FAAD8;
  v11 = v7[0];
  v12 = v5;
  v13 = vrev64_s32(v4);
  result = sub_1000025C8("_BKHIDXXTouchSensitiveButtonSetScanMode", BKBackBoardClientEntitlement, v7);
  if (result)
  {
    result = (v9)(v8);
    v6 = 0;
  }

  else
  {
    v6 = 5;
  }

  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_1000A1C68(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 24)
  {
    v4 = -304;
  }

  else
  {
    v3 = *(result + 24);
    result += 24;
    if (v3 || *(result + 4) <= 0x1Fu)
    {
      v4 = -309;
    }

    else
    {
      *(a2 + 52) = 0;
      *(a2 + 36) = 16777472;
      v5 = *(result + 36);
      v6[0] = *(result + 20);
      v6[1] = v5;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v8 = sub_10001ECDC;
      v9 = &unk_1000FAA58;
      v10 = a2 + 28;
      v11 = a2 + 52;
      result = sub_1000025C8("_BKHIDXXGetUISensorCharacteristics", BKBackBoardClientEntitlement, v6);
      if (result)
      {
        result = (v8)(v7);
        *(a2 + 40) = *(a2 + 52);
        *(a2 + 44) = NDR_record;
        *a2 |= 0x80000000;
        *(a2 + 4) = 56;
        *(a2 + 24) = 1;
        return result;
      }

      v4 = 5;
    }
  }

  *(a2 + 32) = v4;
  *(a2 + 24) = NDR_record;
  return result;
}

void sub_1000A1DA8(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0 || *(a1 + 24) != 1 || *(a1 + 4) != 60)
  {
    v5 = -304;
    goto LABEL_10;
  }

  if (*(a1 + 39) != 1 || (v4 = *(a1 + 40), v4 != *(a1 + 52)))
  {
    v5 = -300;
    goto LABEL_10;
  }

  if (*(a1 + 60) || *(a1 + 64) <= 0x1Fu)
  {
    v5 = -309;
LABEL_10:
    *(a2 + 32) = v5;
    *(a2 + 24) = NDR_record;
    return;
  }

  sub_10001F1AC(*(a1 + 28), v4, *(a1 + 56), (a2 + 36));
  *(a2 + 32) = 0;
  mig_deallocate(*(a1 + 28), *(a1 + 40));
  *(a1 + 28) = 0;
  *(a1 + 40) = 0;
  v6 = *(a2 + 32);
  *(a2 + 24) = NDR_record;
  if (!v6)
  {
    *(a2 + 4) = 40;
  }
}

void sub_1000A1E90(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 56)
  {
    if (*(a1 + 39) == 1 && (v4 = *(a1 + 40), v4 == *(a1 + 52)))
    {
      if (!*(a1 + 56) && *(a1 + 60) > 0x1Fu)
      {
        v6 = *(a1 + 28);
        v7 = *(a1 + 92);
        v8[0] = *(a1 + 76);
        v8[1] = v7;
        sub_10001E8C4(v6, v4, v8);
        *(a2 + 32) = 0;
        mig_deallocate(*(a1 + 28), *(a1 + 40));
        *(a1 + 28) = 0;
        *(a1 + 40) = 0;
        return;
      }

      v5 = -309;
    }

    else
    {
      v5 = -300;
    }
  }

  else
  {
    v5 = -304;
  }

  *(a2 + 32) = v5;
  *(a2 + 24) = NDR_record;
}

void sub_1000A1F6C(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0 || *(a1 + 24) != 1 || *(a1 + 4) != 56)
  {
    v5 = -304;
    goto LABEL_10;
  }

  if (*(a1 + 39) != 1 || (v4 = *(a1 + 40), v4 != *(a1 + 52)))
  {
    v5 = -300;
    goto LABEL_10;
  }

  if (*(a1 + 56) || *(a1 + 60) <= 0x1Fu)
  {
    v5 = -309;
LABEL_10:
    *(a2 + 32) = v5;
    *(a2 + 24) = NDR_record;
    return;
  }

  v6 = *(a1 + 28);
  v7 = *(a1 + 92);
  v9[0] = *(a1 + 76);
  v9[1] = v7;
  sub_10001EEF0(v6, v4, (a2 + 36), v9);
  *(a2 + 32) = 0;
  mig_deallocate(*(a1 + 28), *(a1 + 40));
  *(a1 + 28) = 0;
  *(a1 + 40) = 0;
  v8 = *(a2 + 32);
  *(a2 + 24) = NDR_record;
  if (!v8)
  {
    *(a2 + 4) = 40;
  }
}

void sub_1000A206C(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0 || *(a1 + 24) != 2 || *(a1 + 4) != 76)
  {
    v4 = -304;
    goto LABEL_12;
  }

  if (*(a1 + 39) != 1 || *(a1 + 55) != 1 || *(a1 + 40) != *(a1 + 68) || *(a1 + 56) != *(a1 + 72))
  {
    v4 = -300;
    goto LABEL_12;
  }

  if (*(a1 + 76) || *(a1 + 80) <= 0x1Fu)
  {
    v4 = -309;
LABEL_12:
    *(a2 + 32) = v4;
    goto LABEL_13;
  }

  *(a2 + 52) = 0;
  v5 = (a2 + 52);
  v6 = (a2 + 28);
  *(a2 + 36) = 16777472;
  v7 = *(a1 + 28);
  v8 = *(a1 + 40);
  v9 = *(a1 + 44);
  v10 = *(a1 + 56);
  v11 = *(a1 + 112);
  v13[0] = *(a1 + 96);
  v13[1] = v11;
  v12 = sub_10001E4D8(v7, v8, v9, v10, v6, v5, v13);
  mig_deallocate(*(a1 + 44), *(a1 + 56));
  *(a1 + 44) = 0;
  *(a1 + 56) = 0;
  mig_deallocate(*(a1 + 28), *(a1 + 40));
  *(a1 + 28) = 0;
  *(a1 + 40) = 0;
  if (!v12)
  {
    *(a2 + 40) = *(a2 + 52);
    *(a2 + 44) = NDR_record;
    *a2 |= 0x80000000;
    *(a2 + 4) = 56;
    *(a2 + 24) = 1;
    return;
  }

  *(a2 + 32) = v12;
LABEL_13:
  *(a2 + 24) = NDR_record;
}

void sub_1000A21DC(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 2 && *(a1 + 4) == 76)
  {
    if (*(a1 + 39) == 1 && *(a1 + 55) == 1 && (v4 = *(a1 + 40), v4 == *(a1 + 68)) && (v5 = *(a1 + 56), v5 == *(a1 + 72)))
    {
      if (!*(a1 + 76) && *(a1 + 80) > 0x1Fu)
      {
        v7 = *(a1 + 28);
        v8 = *(a1 + 44);
        v9 = *(a1 + 112);
        v10[0] = *(a1 + 96);
        v10[1] = v9;
        *(a2 + 32) = sub_10001DBD4(v7, v4, v8, v5, v10);
        mig_deallocate(*(a1 + 44), *(a1 + 56));
        *(a1 + 44) = 0;
        *(a1 + 56) = 0;
        mig_deallocate(*(a1 + 28), *(a1 + 40));
        *(a1 + 28) = 0;
        *(a1 + 40) = 0;
        return;
      }

      v6 = -309;
    }

    else
    {
      v6 = -300;
    }
  }

  else
  {
    v6 = -304;
  }

  *(a2 + 32) = v6;
  *(a2 + 24) = NDR_record;
}

void sub_1000A22EC(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 56)
  {
    if (*(a1 + 39) == 1 && (v4 = *(a1 + 40), v4 == *(a1 + 52)))
    {
      if (!*(a1 + 56) && *(a1 + 60) > 0x1Fu)
      {
        v6 = *(a1 + 28);
        v7 = *(a1 + 92);
        v8[0] = *(a1 + 76);
        v8[1] = v7;
        *(a2 + 32) = sub_10001C850(v6, v4, v8);
        mig_deallocate(*(a1 + 28), *(a1 + 40));
        *(a1 + 28) = 0;
        *(a1 + 40) = 0;
        return;
      }

      v5 = -309;
    }

    else
    {
      v5 = -300;
    }
  }

  else
  {
    v5 = -304;
  }

  *(a2 + 32) = v5;
  *(a2 + 24) = NDR_record;
}

void sub_1000A23C8(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0 && (v4 = *(a1 + 4), (v4 - 1073) >= 0xFFFFFBFF) && ((v5 = *(a1 + 44), v5 <= 0x400) ? (v6 = v4 - 48 >= v5) : (v6 = 0), (v7 = ((v5 + 3) & 0xFFC) + 48, v6) ? (v8 = v4 == v7) : (v8 = 0), v8 && memchr((a1 + 48), 0, v4 - 48)))
  {
    if (*(a1 + 48))
    {
      v9 = *(a1 + 32);
      v10 = [NSString stringWithUTF8String:a1 + 48];
      if ([v10 length])
      {
        v11 = +[BKHIDEventProcessorRegistry sharedInstance];
        v12 = [v11 eventProcessorOfClass:objc_opt_class()];

        if (v9)
        {
          [v12 setKeyboardLayout:v10 forSenderID:v9];
        }

        else
        {
          [v12 setKeyboardLayout:v10];
        }
      }
    }

    else
    {
      v10 = 0;
    }

    *(a2 + 32) = 0;
  }

  else
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }
}

void sub_1000A24FC(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 40)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = +[BKHIDEventProcessorRegistry sharedInstance];
    v5 = [v4 eventProcessorOfClass:objc_opt_class()];

    *(a2 + 36) = [v5 keyboardWantsStandardTypeOverrideForSenderID:v3];
    *(a2 + 32) = 0;
    *(a2 + 24) = NDR_record;
    *(a2 + 4) = 40;
  }
}

void sub_1000A25C0(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 44)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = +[BKHIDEventProcessorRegistry sharedInstance];
    v6 = [v5 eventProcessorOfClass:objc_opt_class()];

    [v6 setCapsLockActive:v4 != 0 onSenderID:v3];
    *(a2 + 32) = 0;
  }
}

void sub_1000A267C(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 44)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = +[BKHIDEventProcessorRegistry sharedInstance];
    v6 = [v5 eventProcessorOfClass:objc_opt_class()];

    [v6 setStandardType:v4 forSenderID:v3];
    *(a2 + 32) = 0;
  }
}

void sub_1000A2734(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 48)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = +[BKHIDEventProcessorRegistry sharedInstance];
    v6 = [v5 eventProcessorOfClass:objc_opt_class()];

    if (v3)
    {
      [v6 setCapsLockDelayOverride:v3 forSenderID:v4];
    }

    else
    {
      [v6 setCapsLockDelayOverride:v4];
    }

    *(a2 + 32) = 0;
  }
}

void sub_1000A27F8(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 44)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = +[BKHIDEventProcessorRegistry sharedInstance];
    v6 = [v5 eventProcessorOfClass:objc_opt_class()];

    v7 = v4 != 0;
    if (v3)
    {
      [v6 setRomanCapsLockSwitchModeActive:v7 forSenderID:v3];
    }

    else
    {
      [v6 setRomanCapsLockSwitchModeActive:v7];
    }

    *(a2 + 32) = 0;
  }
}

void sub_1000A28C0(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 40)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = +[BKHIDEventProcessorRegistry sharedInstance];
    v5 = [v4 eventProcessorOfClass:objc_opt_class()];

    if (v3)
    {
      v6 = [v5 isCapsLockLightOnForSenderID:v3];
    }

    else
    {
      v6 = [v5 isCapsLockLightOn];
    }

    *(a2 + 36) = v6;

    *(a2 + 32) = 0;
    *(a2 + 24) = NDR_record;
    *(a2 + 4) = 40;
  }
}

uint64_t sub_1000A2990(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 36)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 36) || *(result + 40) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v4 = *(result + 32);
  v5 = *(result + 72);
  v7[0] = *(result + 56);
  v7[1] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v9 = sub_10001DB74;
  v10 = &unk_1000FCE78;
  v11 = v4;
  result = sub_1000027D4(BKDisplayBrightnessEntitlement, v7);
  if (result)
  {
    result = (v9)(v8);
    v6 = 0;
  }

  else
  {
    v6 = 5;
  }

  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_1000A2A94(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 36)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 36) || *(result + 40) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v4 = *(result + 32);
  v5 = *(result + 72);
  v7[0] = *(result + 56);
  v7[1] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v9 = sub_10001DB1C;
  v10 = &unk_1000FCE78;
  v11 = v4;
  result = sub_1000027D4(BKDisplayBrightnessEntitlement, v7);
  if (result)
  {
    result = (v9)(v8);
    v6 = 0;
  }

  else
  {
    v6 = 5;
  }

  *(a2 + 32) = v6;
  return result;
}

void sub_1000A2B98(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = +[BKDisplayBrightnessController sharedInstance];
    *(a2 + 36) = [v3 displayBrightnessCurve];

    *(a2 + 32) = 0;
    *(a2 + 24) = NDR_record;
    *(a2 + 4) = 40;
  }
}

void sub_1000A2C24(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 24)
  {
    v5 = -304;
    goto LABEL_7;
  }

  v4 = a1[6];
  v3 = a1 + 6;
  if (v4 || v3[1] <= 0x1Fu)
  {
    v5 = -309;
LABEL_7:
    *(a2 + 32) = v5;
    *(a2 + 24) = NDR_record;
    return;
  }

  v6 = *(v3 + 9);
  v9[0] = *(v3 + 5);
  v9[1] = v6;
  if (sub_1000027D4(BKDisplayBrightnessEntitlement, v9))
  {
    v7 = +[BKDisplayBrightnessUpdateTransactionManager sharedInstance];
    [v7 restoreSystemDisplayBrightness];

    v8 = 0;
  }

  else
  {
    v8 = 5;
  }

  *(a2 + 32) = v8;
}

_DWORD *sub_1000A2CE8(_DWORD *result, uint64_t a2)
{
  v2 = -304;
  if ((*result & 0x80000000) == 0)
  {
    if (result[1] == 24)
    {
      v2 = 0;
    }

    else
    {
      v2 = -304;
    }
  }

  *(a2 + 32) = v2;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_1000A2D18(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 40)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 40) || *(result + 44) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v4 = *(result + 32);
  v5 = *(result + 36);
  v6 = *(result + 76);
  v8[0] = *(result + 60);
  v8[1] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v10 = sub_10001DAB8;
  v11 = &unk_1000FA440;
  v12 = v4;
  v13 = v5;
  result = sub_1000027D4(BKDisplayBrightnessEntitlement, v8);
  if (result)
  {
    result = (v10)(v9);
    v7 = 0;
  }

  else
  {
    v7 = 5;
  }

  *(a2 + 32) = v7;
  return result;
}

void sub_1000A2E24(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 36)
  {
    v3 = -304;
  }

  else if (*(a1 + 36) || *(a1 + 40) < 0x20u)
  {
    v3 = -309;
  }

  else
  {
    v4 = *(a1 + 32);
    v9 = *(a1 + 72);
    *buf = *(a1 + 56);
    v11 = v9;
    v5 = [BSAuditToken tokenFromAuditToken:buf, *buf, *&buf[8], v9];
    v6 = [BSProcessHandle processHandleForAuditToken:v5];

    if ([v6 isValid])
    {
      +[BKDisplayBrightnessUpdateTransaction beginImplicitTransaction];
      v7 = +[BKDisplayBrightnessUpdateTransactionManager sharedInstance];
      LODWORD(v8) = v4;
      [v7 setDisplayBrightness:0 permanently:v8];
      v3 = 0;
    }

    else
    {
      v7 = BKLogBacklight();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v6;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Ignoring implicit brightness transaction request because sender is invalid: %{public}@", buf, 0xCu);
      }

      v3 = 5;
    }
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = NDR_record;
}

uint64_t sub_1000A2FC0(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 40)
  {
    if (*(a1 + 38) << 16 == 1114112)
    {
      v3 = a1 + 40;
      if (*(a1 + 40) || *(a1 + 44) < 0x20u)
      {
        result = 4294966987;
      }

      else
      {
        v5 = *(a1 + 28);
        v6 = *(v3 + 36);
        v7[0] = *(v3 + 20);
        v7[1] = v6;
        result = sub_10001D828(v5, v7);
      }
    }

    else
    {
      result = 4294966996;
    }
  }

  else
  {
    result = 4294966992;
  }

  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_1000A3074(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 24)
  {
    v4 = -304;
  }

  else
  {
    v3 = *(result + 24);
    result += 24;
    if (v3 || *(result + 4) <= 0x1Fu)
    {
      v4 = -309;
    }

    else
    {
      v5 = *(result + 36);
      v6[0] = *(result + 20);
      v6[1] = v5;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v8 = sub_10001D7C8;
      v9 = &unk_1000FAA58;
      v10 = a2 + 36;
      v11 = a2 + 40;
      result = sub_1000025C8("_BKHIDXXIsOrientationLockedWithOrientation", BKBackBoardClientEntitlement, v6);
      if (result)
      {
        result = (v8)(v7);
        *(a2 + 32) = 0;
        *(a2 + 24) = NDR_record;
        *(a2 + 4) = 44;
        return result;
      }

      v4 = 5;
    }
  }

  *(a2 + 32) = v4;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_1000A3194(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 24)
  {
    v4 = -304;
    goto LABEL_7;
  }

  v3 = *(result + 24);
  result += 24;
  if (v3 || *(result + 4) <= 0x1Fu)
  {
    v4 = -309;
LABEL_7:
    *(a2 + 32) = v4;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v5 = *(result + 36);
  v7[0] = *(result + 20);
  v7[1] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v9 = sub_10001D768;
  v10 = &unk_1000FA420;
  v11 = v7[0];
  v12 = v5;
  result = sub_1000025C8("_BKHIDXXUnlockOrientation", BKBackBoardClientEntitlement, v7);
  if (result)
  {
    result = (v9)(v8);
    v6 = 0;
  }

  else
  {
    v6 = 5;
  }

  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_1000A3298(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 40)
  {
    v3 = -304;
  }

  else if (*(result + 40) || *(result + 44) < 0x20u)
  {
    v3 = -309;
  }

  else
  {
    v4 = *(result + 32);
    v5 = *(result + 36);
    v6 = *(result + 76);
    v7[0] = *(result + 60);
    v7[1] = v6;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v9 = sub_10001D6E4;
    v10 = &unk_1000FA400;
    v14 = v5;
    v11 = v4;
    v12 = v7[0];
    v13 = v6;
    result = sub_1000025C8("_BKHIDXXLockOrientation", BKBackBoardClientEntitlement, v7);
    if (result)
    {
      result = (v9)(v8);
      v3 = 0;
    }

    else
    {
      v3 = 5;
    }
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = NDR_record;
  return result;
}

_DWORD *sub_1000A33B0(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 && (v3 = result, v4 = result[1], v4 - 1069 >= 0xFFFFFBFF) && (v5 = result[9], v5 <= 0x400) && ((v6 = (v5 + 3) & 0xFFFFFFFC, v4 - 44 >= v5) ? (v7 = v4 == v6 + 44) : (v7 = 0), v7 && (v4 >= 0x428 ? (v8 = 1064) : (v8 = v4), (result = memchr(result + 10, 0, v8 - 40)) != 0)))
  {
    v9 = v3 + ((v4 + 3) & 0xFFC);
    if (!*v9 && *(v9 + 1) > 0x1Fu)
    {
      v11 = *(v3 + v6 + 40);
      v12 = *(v9 + 36);
      v13[0] = *(v9 + 20);
      v13[1] = v12;
      result = sub_10001D59C((v3 + 10), v11, v13);
      *(a2 + 32) = result;
      return result;
    }

    v10 = -309;
  }

  else
  {
    v10 = -304;
  }

  *(a2 + 32) = v10;
  *(a2 + 24) = NDR_record;
  return result;
}

void sub_1000A34B0(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = sub_100005110();
    *(a2 + 36) = sub_100091B68(v3);

    *(a2 + 32) = 0;
    *(a2 + 24) = NDR_record;
    *(a2 + 4) = 40;
  }
}

void sub_1000A353C(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = +[BKUserEventTimer sharedInstance];
    *(a2 + 36) = [v3 isSafeToResetIdleTimer];

    *(a2 + 32) = 0;
    *(a2 + 24) = NDR_record;
    *(a2 + 4) = 40;
  }
}

void sub_1000A35C8(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 24)
  {
    v5 = -304;
    goto LABEL_7;
  }

  v4 = a1[6];
  v3 = a1 + 6;
  if (v4 || v3[1] <= 0x1Fu)
  {
    v5 = -309;
LABEL_7:
    *(a2 + 32) = v5;
    *(a2 + 24) = NDR_record;
    return;
  }

  v6 = *(v3 + 9);
  v9[0] = *(v3 + 5);
  v9[1] = v6;
  if (sub_1000025C8("_BKHIDXXNotifyOnNextUserEvent", BKBackBoardClientEntitlement, v9))
  {
    v7 = +[BKUserEventTimer sharedInstance];
    [v7 notifyOnNextUserEvent];

    v8 = 0;
  }

  else
  {
    v8 = 5;
  }

  *(a2 + 32) = v8;
}

uint64_t sub_1000A3694(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 44)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 44) || *(result + 48) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v4 = *(result + 32);
  v5 = *(result + 40);
  v6 = *(result + 80);
  v8[0] = *(result + 64);
  v8[1] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v10 = sub_10001D438;
  v11 = &unk_1000FAAF8;
  v12 = v4;
  v13 = v5;
  result = sub_1000025C8("_BKHIDXXResetUserEventTimer", BKBackBoardClientEntitlement, v8);
  if (result)
  {
    result = (v10)(v9);
    v7 = 0;
  }

  else
  {
    v7 = 5;
  }

  *(a2 + 32) = v7;
  return result;
}

void sub_1000A37A8(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 60)
  {
    if (*(a1 + 39) == 1 && (v4 = *(a1 + 40), v4 == *(a1 + 56)))
    {
      if (!*(a1 + 60) && *(a1 + 64) > 0x1Fu)
      {
        v6 = *(a1 + 52);
        v7 = *(a1 + 28);
        v8 = *(a1 + 96);
        v9[0] = *(a1 + 80);
        v9[1] = v8;
        *(a2 + 32) = sub_10001D168(v6, v7, v4, v9);
        mig_deallocate(*(a1 + 28), *(a1 + 40));
        *(a1 + 28) = 0;
        *(a1 + 40) = 0;
        return;
      }

      v5 = -309;
    }

    else
    {
      v5 = -300;
    }
  }

  else
  {
    v5 = -304;
  }

  *(a2 + 32) = v5;
  *(a2 + 24) = NDR_record;
}

uint64_t sub_1000A3888(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 44)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 44) || *(result + 48) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v4 = *(result + 32);
  v5 = *(result + 36);
  v6 = *(result + 80);
  v8[0] = *(result + 64);
  v8[1] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v10 = sub_10001D0DC;
  v11 = &unk_1000FAAF8;
  v12 = v5;
  v13 = v4;
  result = sub_100006994("_BKHIDXXDigitizerTouchSetOffset", BKDetachTouchesEntitlement, BKBackBoardClientEntitlement, v8);
  if (result)
  {
    result = (v10)(v9);
    v7 = 0;
  }

  else
  {
    v7 = 5;
  }

  *(a2 + 32) = v7;
  return result;
}

void sub_1000A39AC(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0)
  {
    goto LABEL_2;
  }

  v3 = -304;
  if (*(a1 + 24) != 1)
  {
    goto LABEL_3;
  }

  v5 = *(a1 + 4);
  if ((v5 - 201) < 0xFFFFFF7F)
  {
    goto LABEL_3;
  }

  if (*(a1 + 39) != 1)
  {
    goto LABEL_15;
  }

  v6 = *(a1 + 52);
  if (v6 > 0x20)
  {
LABEL_2:
    v3 = -304;
LABEL_3:
    *(a2 + 32) = v3;
    *(a2 + 24) = NDR_record;
    return;
  }

  v3 = -304;
  if (v6 > (v5 - 72) >> 2 || v5 != 4 * v6 + 72)
  {
    goto LABEL_3;
  }

  v7 = a1 + 4 * v6;
  v8 = *(a1 + 40);
  if (v8 != *(v7 + 68))
  {
LABEL_15:
    v3 = -300;
    goto LABEL_3;
  }

  v9 = ((v5 + 3) & 0x1FC) + a1;
  if (*v9 || *(v9 + 4) <= 0x1Fu)
  {
    v3 = -309;
    goto LABEL_3;
  }

  v10 = (v7 - 128);
  v11 = *(v10 + 46);
  v12 = v10[47];
  v13 = v10[48];
  v14 = *(a1 + 28);
  v15 = *(v9 + 36);
  v17[0] = *(v9 + 20);
  v17[1] = v15;
  *(a2 + 32) = sub_10001CE30(a1 + 56, v6, v11, v14, v8, a2 + 36, v17, v12, v13);
  mig_deallocate(*(a1 + 28), *(a1 + 40));
  *(a1 + 28) = 0;
  *(a1 + 40) = 0;
  v16 = *(a2 + 32);
  *(a2 + 24) = NDR_record;
  if (!v16)
  {
    *(a2 + 4) = 40;
  }
}

void sub_1000A3AFC(_DWORD *a1, uint64_t a2)
{
  v3 = -304;
  if ((*a1 & 0x80000000) == 0)
  {
    v5 = a1[1];
    if ((v5 - 169) >= 0xFFFFFF7F)
    {
      v6 = a1[8];
      if (v6 > 0x20 || (v6 <= (v5 - 40) >> 2 ? (v7 = v5 == 4 * v6 + 40) : (v7 = 0), !v7))
      {
        v3 = -304;
        goto LABEL_12;
      }

      v8 = a1 + ((v5 + 3) & 0x1FC);
      if (*v8 || *(v8 + 1) < 0x20u)
      {
        v3 = -309;
        goto LABEL_12;
      }

      v9 = *(a1 + (4 * v6) + 36);
      v10 = *(v8 + 36);
      v19 = *(v8 + 20);
      v20 = v10;
      v11 = BSPIDForAuditToken();
      if (sub_100002858(BKTransferTouchesEntitlement, &v19))
      {
        v12 = BKHIDEventRoutingGetClientConnectionManager();
        v13 = [v12 bundleIDForPID:{v11, v19, v20}];

        if ([v13 isEqual:@"com.apple.springboard"])
        {
          if (v6)
          {
            v14 = +[BKHIDEventProcessorRegistry sharedInstance];
            v15 = [v14 eventProcessorOfClass:objc_opt_class()];

            [v15 transferTouchIdentifiers:a1 + 9 count:v6 toContextID:v9];
            v3 = 0;
LABEL_24:

            goto LABEL_12;
          }

          v16 = BKLogTouchEvents();
          if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_22;
          }

          v17 = BSProcessDescriptionForPID();
          *buf = 138543362;
          v22 = v17;
          v18 = "TouchTransfer: %{public}@ requested transfer of no touches";
          goto LABEL_26;
        }

        v16 = BKLogTouchEvents();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = BSProcessDescriptionForPID();
          *buf = 138543362;
          v22 = v17;
          v18 = "TouchTransfer: %{public}@ is not an authorized client";
LABEL_26:
          _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, v18, buf, 0xCu);
        }
      }

      else
      {
        v13 = BKLogTouchEvents();
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
LABEL_23:
          v3 = 5;
          goto LABEL_24;
        }

        v16 = BSProcessDescriptionForPID();
        *buf = 138543362;
        v22 = v16;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "TouchTransfer: %{public}@ is not an authorized client", buf, 0xCu);
      }

LABEL_22:

      goto LABEL_23;
    }
  }

LABEL_12:
  *(a2 + 32) = v3;
  *(a2 + 24) = NDR_record;
}

uint64_t sub_1000A3DD8(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 36)
  {
    v3 = -304;
  }

  else if (*(result + 36) || *(result + 40) < 0x20u)
  {
    v3 = -309;
  }

  else
  {
    v4 = *(result + 32);
    v5 = *(result + 72);
    v6[0] = *(result + 56);
    v6[1] = v5;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v8 = sub_10001CDB0;
    v9 = &unk_1000FCB40;
    v10 = v4;
    result = sub_100006994("_BKHIDXXTouchStreamInvalidate", BKTouchStreamsEntitlement, BKBackBoardClientEntitlement, v6);
    if (result)
    {
      result = (v8)(v7);
      v3 = 0;
    }

    else
    {
      v3 = 5;
    }
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = NDR_record;
  return result;
}

_DWORD *sub_1000A3EEC(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || (v3 = result, v4 = result[1], v4 - 1077 < 0xFFFFFBFF) || (v5 = result[10], v5 > 0x400) || ((v6 = (v5 + 3) & 0xFFFFFFFC, v4 - 52 >= v5) ? (v7 = v4 == v6 + 52) : (v7 = 0), !v7 || (v4 >= 0x42C ? (v8 = 1068) : (v8 = v4), (result = memchr(result + 11, 0, v8 - 44)) == 0)))
  {
    v10 = -304;
    goto LABEL_17;
  }

  v9 = v3 + ((v4 + 3) & 0xFFC);
  if (*v9 || *(v9 + 1) <= 0x1Fu)
  {
    v10 = -309;
LABEL_17:
    *(a2 + 32) = v10;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v11 = v3[8];
  v12 = *(v3 + v6 + 44);
  v13 = *(v3 + v6 + 48);
  v14 = *(v9 + 36);
  v15[0] = *(v9 + 20);
  v15[1] = v14;
  result = sub_10001CC04(v11, (v3 + 11), v12, v13, a2 + 36, v15);
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

void sub_1000A4014(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 56)
  {
    if (*(a1 + 39) == 1 && (v4 = *(a1 + 40), v4 == *(a1 + 52)))
    {
      if (!*(a1 + 56) && *(a1 + 60) > 0x1Fu)
      {
        v6 = *(a1 + 28);
        v7 = *(a1 + 92);
        v8[0] = *(a1 + 76);
        v8[1] = v7;
        sub_1000067F4(v6, v4, v8);
        *(a2 + 32) = 0;
        mig_deallocate(*(a1 + 28), *(a1 + 40));
        *(a1 + 28) = 0;
        *(a1 + 40) = 0;
        return;
      }

      v5 = -309;
    }

    else
    {
      v5 = -300;
    }
  }

  else
  {
    v5 = -304;
  }

  *(a2 + 32) = v5;
  *(a2 + 24) = NDR_record;
}

uint64_t sub_1000A40F0(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 40)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 40) || *(result + 44) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v4 = *(result + 32);
  v5 = *(result + 76);
  v7[0] = *(result + 60);
  v7[1] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v9 = sub_10001C99C;
  v10 = &unk_1000FC018;
  v11 = v4;
  result = sub_100006994("_BKHIDXXPlayHaptic", BKFastHapticPlayEntitlement, BKBackBoardClientEntitlement, v7);
  if (result)
  {
    result = (v9)(v8);
    v6 = 0;
  }

  else
  {
    v6 = 5;
  }

  *(a2 + 32) = v6;
  return result;
}

void sub_1000A420C(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 56)
  {
    if (*(a1 + 39) == 1 && (v4 = *(a1 + 40), v4 == *(a1 + 52)))
    {
      if (!*(a1 + 56) && *(a1 + 60) > 0x1Fu)
      {
        v6 = *(a1 + 76);
        v7 = *(a1 + 92);
        sub_10001C9F4(*(a1 + 28), v4);
        *(a2 + 32) = 0;
        mig_deallocate(*(a1 + 28), *(a1 + 40));
        *(a1 + 28) = 0;
        *(a1 + 40) = 0;
        return;
      }

      v5 = -309;
    }

    else
    {
      v5 = -300;
    }
  }

  else
  {
    v5 = -304;
  }

  *(a2 + 32) = v5;
  *(a2 + 24) = NDR_record;
}

void sub_1000A42E8(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 56)
  {
    if (*(a1 + 39) == 1 && (v4 = *(a1 + 40), v4 == *(a1 + 52)))
    {
      if (!*(a1 + 56) && *(a1 + 60) > 0x1Fu)
      {
        v6 = *(a1 + 28);
        v7 = *(a1 + 92);
        v8[0] = *(a1 + 76);
        v8[1] = v7;
        *(a2 + 32) = sub_10001C8F4(v6, v4, v8);
        mig_deallocate(*(a1 + 28), *(a1 + 40));
        *(a1 + 28) = 0;
        *(a1 + 40) = 0;
        return;
      }

      v5 = -309;
    }

    else
    {
      v5 = -300;
    }
  }

  else
  {
    v5 = -304;
  }

  *(a2 + 32) = v5;
  *(a2 + 24) = NDR_record;
}

void sub_1000A43C4(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 56)
  {
    if (*(a1 + 39) == 1 && (v4 = *(a1 + 40), v4 == *(a1 + 52)))
    {
      if (!*(a1 + 56) && *(a1 + 60) > 0x1Fu)
      {
        v6 = *(a1 + 28);
        v7 = *(a1 + 92);
        v8[0] = *(a1 + 76);
        v8[1] = v7;
        *(a2 + 32) = sub_100006C2C(v6, v4, v8);
        mig_deallocate(*(a1 + 28), *(a1 + 40));
        *(a1 + 28) = 0;
        *(a1 + 40) = 0;
        return;
      }

      v5 = -309;
    }

    else
    {
      v5 = -300;
    }
  }

  else
  {
    v5 = -304;
  }

  *(a2 + 32) = v5;
  *(a2 + 24) = NDR_record;
}

void sub_1000A44A0(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 24)
  {
    v5 = -304;
    goto LABEL_7;
  }

  v4 = a1[6];
  v3 = a1 + 6;
  if (v4 || v3[1] <= 0x1Fu)
  {
    v5 = -309;
LABEL_7:
    *(a2 + 32) = v5;
    *(a2 + 24) = NDR_record;
    return;
  }

  v6 = *(v3 + 9);
  v10[0] = *(v3 + 5);
  v10[1] = v6;
  if (sub_1000027D4(BKBackBoardClientEntitlement, v10))
  {
    v7 = +[BKHIDEventProcessorRegistry sharedInstance];
    v8 = [v7 eventProcessorOfClass:objc_opt_class()];

    [v8 cancelTouchesOnAllDisplays];
    v9 = 0;
  }

  else
  {
    v9 = 5;
  }

  *(a2 + 32) = v9;
}

_DWORD *sub_1000A4594(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 && (v3 = result, v4 = result[1], v4 - 1069 >= 0xFFFFFBFF) && (v5 = result[9], v5 <= 0x400) && ((v6 = (v5 + 3) & 0xFFFFFFFC, v4 - 44 >= v5) ? (v7 = v4 == v6 + 44) : (v7 = 0), v7 && (v4 >= 0x428 ? (v8 = 1064) : (v8 = v4), (result = memchr(result + 10, 0, v8 - 40)) != 0)))
  {
    v9 = v3 + ((v4 + 3) & 0xFFC);
    if (!*v9 && *(v9 + 1) > 0x1Fu)
    {
      v11 = *(v9 + 20);
      v12 = *(v9 + 36);
      result = sub_10001C634(v3 + 40, *(v3 + v6 + 40));
      *(a2 + 32) = result;
      return result;
    }

    v10 = -309;
  }

  else
  {
    v10 = -304;
  }

  *(a2 + 32) = v10;
  *(a2 + 24) = NDR_record;
  return result;
}

void sub_1000A4694(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 48)
  {
    v8 = -304;
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 44);
    v6 = +[BKHIDEventProcessorRegistry sharedInstance];
    v7 = [v6 eventProcessorOfClass:objc_opt_class()];
    [v7 cancelButtonForSenderID:v3 uagePage:v4 usage:v5];

    v8 = 0;
  }

  *(a2 + 32) = v8;
  *(a2 + 24) = NDR_record;
}

void sub_1000A4750(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = +[BKHIDEventProcessorRegistry sharedInstance];
    v4 = [v3 eventProcessorOfClass:objc_opt_class()];
    *(a2 + 36) = [v4 ringerState];

    *(a2 + 32) = 0;
    *(a2 + 24) = NDR_record;
    *(a2 + 4) = 40;
  }
}

uint64_t sub_1000A4808(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 36)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 36) || *(result + 40) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v4 = *(result + 32);
  v5 = *(result + 72);
  v7[0] = *(result + 56);
  v7[1] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v9 = sub_10000628C;
  v10 = &unk_1000FCE78;
  v11 = v4;
  result = sub_1000025C8("_BKHIDXXSetObjectInProximityIgnoresTouches", BKBackBoardClientEntitlement, v7);
  if (result)
  {
    result = (v9)(v8);
    v6 = 0;
  }

  else
  {
    v6 = 5;
  }

  *(a2 + 32) = v6;
  return result;
}

void sub_1000A4914(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = +[BKHIDEventProcessorRegistry sharedInstance];
    v4 = [v3 eventProcessorOfClass:objc_opt_class()];

    *(a2 + 36) = [v4 shouldIgnoreTouchesWhileObjectInProximity];
    *(a2 + 32) = 0;
    *(a2 + 24) = NDR_record;
    *(a2 + 4) = 40;
  }
}

void sub_1000A49D0(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 24)
  {
    v5 = -304;
    goto LABEL_7;
  }

  v4 = a1[6];
  v3 = a1 + 6;
  if (v4 || v3[1] <= 0x1Fu)
  {
    v5 = -309;
LABEL_7:
    *(a2 + 32) = v5;
    *(a2 + 24) = NDR_record;
    return;
  }

  v6 = *(v3 + 9);
  v9[0] = *(v3 + 5);
  v9[1] = v6;
  if (sub_1000025C8("_BKHIDXXProximityDidUnoccludeAfterScreenWake", BKBackBoardClientEntitlement, v9))
  {
    v7 = +[BKHIDUISensorController sharedInstance];
    [v7 proximityDidUnoccludeAfterScreenWake];

    v8 = 0;
  }

  else
  {
    v8 = 5;
  }

  *(a2 + 32) = v8;
}

void sub_1000A4A9C(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 24)
  {
    v5 = -304;
    goto LABEL_7;
  }

  v4 = a1[6];
  v3 = a1 + 6;
  if (v4 || v3[1] <= 0x1Fu)
  {
    v5 = -309;
LABEL_7:
    *(a2 + 32) = v5;
    *(a2 + 24) = NDR_record;
    return;
  }

  v6 = *(v3 + 9);
  v9[0] = *(v3 + 5);
  v9[1] = v6;
  if (sub_1000025C8("_BKHIDXXResetProximityCalibration", BKBackBoardClientEntitlement, v9))
  {
    v7 = +[BKHIDUISensorController sharedInstance];
    [v7 resetCalibration];

    v8 = 0;
  }

  else
  {
    v8 = 5;
  }

  *(a2 + 32) = v8;
}

_DWORD *sub_1000A4B68(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 && (v3 = result, v4 = result[1], (v4 - 1065) >= 0xFFFFFBFF) && ((v5 = result[9], v5 <= 0x400) ? (v6 = v4 - 40 >= v5) : (v6 = 0), (v7 = ((v5 + 3) & 0xFFC) + 40, v6) ? (v8 = v4 == v7) : (v8 = 0), v8 && (result = memchr(result + 10, 0, v4 - 40)) != 0))
  {
    v10 = v3 + ((v4 + 3) & 0xFFC);
    if (!*v10 && *(v10 + 1) > 0x1Fu)
    {
      v11 = *(v10 + 36);
      v12[0] = *(v10 + 20);
      v12[1] = v11;
      result = sub_100006AF8(v3 + 40, v12);
      *(a2 + 32) = result;
      return result;
    }

    v9 = -309;
  }

  else
  {
    v9 = -304;
  }

  *(a2 + 32) = v9;
  *(a2 + 24) = NDR_record;
  return result;
}

void sub_1000A4C4C(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 36)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(a1 + 36) || *(a1 + 40) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = NDR_record;
    return;
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 72);
  v7 = *(a1 + 56);
  v8 = v5;
  if ((sub_100006994("_BKHIDXXRequestEstimatedProximityEvents", BKEstimatedProximityDetectionEntitlement, BKBackBoardClientEntitlement, &v7) & 1) == 0)
  {
    v3 = 5;
    goto LABEL_7;
  }

  v6 = +[BKHIDUISensorController sharedInstance];
  v9 = v7;
  v10 = v8;
  *(a2 + 36) = [v6 requestEstimatedProximityEventsWithTimeout:BSVersionedPIDForAuditToken() versionedPID:v4];

  *(a2 + 32) = 0;
  *(a2 + 24) = NDR_record;
  *(a2 + 4) = 40;
}

uint64_t sub_1000A4D6C(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 36)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 36) || *(result + 40) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v4 = *(result + 32);
  v5 = *(result + 72);
  v7[0] = *(result + 56);
  v7[1] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v9 = sub_10001D544;
  v10 = &unk_1000FCE78;
  v11 = v4;
  result = sub_1000027D4(BKBackBoardSetDeviceOrientationEntitlement, v7);
  if (result)
  {
    result = (v9)(v8);
    v6 = 0;
  }

  else
  {
    v6 = 5;
  }

  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_1000A4E70(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 36)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 36) || *(result + 40) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v4 = *(result + 32);
  v5 = *(result + 72);
  v7[0] = *(result + 56);
  v7[1] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v9 = sub_10001D494;
  v10 = &unk_1000FCE78;
  v11 = v4;
  result = sub_1000025C8("_BKHIDXXSetDeviceInterfaceOrientation", BKBackBoardClientEntitlement, v7);
  if (result)
  {
    result = (v9)(v8);
    v6 = 0;
  }

  else
  {
    v6 = 5;
  }

  *(a2 + 32) = v6;
  return result;
}

void sub_1000A4F7C(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 24)
  {
    v5 = -304;
    goto LABEL_7;
  }

  v4 = a1[6];
  v3 = a1 + 6;
  if (v4 || v3[1] <= 0x1Fu)
  {
    v5 = -309;
LABEL_7:
    *(a2 + 32) = v5;
    *(a2 + 24) = NDR_record;
    return;
  }

  v6 = *(v3 + 9);
  v11[0] = *(v3 + 5);
  v11[1] = v6;
  if (sub_1000025C8("_BKHIDXXAmbientLightSensorDisableAutoBrightness", BKBackBoardClientEntitlement, v11))
  {
    v7 = BKLogBacklight();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "BKAmbientLightSensorDisableAutoBrightness", buf, 2u);
    }

    v8 = +[BKDisplayBrightnessController sharedInstance];
    v12 = @"DisplayAutoBrightnessActive";
    *buf = &__kCFBooleanFalse;
    v9 = [NSDictionary dictionaryWithObjects:buf forKeys:&v12 count:1];
    [v8 setProperty:v9 forKey:@"DisplayAutoBrightnessStatus"];

    v10 = 0;
  }

  else
  {
    v10 = 5;
  }

  *(a2 + 32) = v10;
}

uint64_t sub_1000A510C(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 24)
  {
    v4 = -304;
  }

  else
  {
    v3 = *(result + 24);
    result += 24;
    if (v3 || *(result + 4) <= 0x1Fu)
    {
      v4 = -309;
    }

    else
    {
      v5 = *(result + 36);
      v6[0] = *(result + 20);
      v6[1] = v5;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v8 = sub_10001C5D8;
      v9 = &unk_1000FC018;
      v10 = a2 + 36;
      result = sub_1000025C8("_BKHIDXXAmbientLightSensorExists", BKBackBoardClientEntitlement, v6);
      if (result)
      {
        result = (v8)(v7);
        *(a2 + 32) = 0;
        *(a2 + 24) = NDR_record;
        *(a2 + 4) = 40;
        return result;
      }

      v4 = 5;
    }
  }

  *(a2 + 32) = v4;
  *(a2 + 24) = NDR_record;
  return result;
}

void sub_1000A5228(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 56)
  {
    if (*(a1 + 39) == 1 && (v4 = *(a1 + 40), v4 == *(a1 + 52)))
    {
      if (!*(a1 + 56) && *(a1 + 60) > 0x1Fu)
      {
        v6 = *(a1 + 28);
        v7 = *(a1 + 92);
        v8[0] = *(a1 + 76);
        v8[1] = v7;
        *(a2 + 32) = sub_10001C46C(v6, v4, v8);
        mig_deallocate(*(a1 + 28), *(a1 + 40));
        *(a1 + 28) = 0;
        *(a1 + 40) = 0;
        return;
      }

      v5 = -309;
    }

    else
    {
      v5 = -300;
    }
  }

  else
  {
    v5 = -304;
  }

  *(a2 + 32) = v5;
  *(a2 + 24) = NDR_record;
}

uint64_t sub_1000A5304(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 24)
  {
    v4 = -304;
  }

  else
  {
    v3 = *(result + 24);
    result += 24;
    if (v3 || *(result + 4) <= 0x1Fu)
    {
      v4 = -309;
    }

    else
    {
      v5 = *(result + 36);
      v6[0] = *(result + 20);
      v6[1] = v5;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v8 = sub_10001C57C;
      v9 = &unk_1000FC018;
      v10 = a2 + 36;
      result = sub_1000027D4(BKDisplayBrightnessEntitlement, v6);
      if (result)
      {
        result = (v8)(v7);
        *(a2 + 32) = 0;
        *(a2 + 24) = NDR_record;
        *(a2 + 4) = 40;
        return result;
      }

      v4 = 5;
    }
  }

  *(a2 + 32) = v4;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_1000A5418(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 24)
  {
    v4 = -304;
  }

  else
  {
    v3 = *(result + 24);
    result += 24;
    if (v3 || *(result + 4) <= 0x1Fu)
    {
      v4 = -309;
    }

    else
    {
      v5 = *(result + 36);
      v6[0] = *(result + 20);
      v6[1] = v5;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v8 = sub_10001C520;
      v9 = &unk_1000FC018;
      v10 = a2 + 36;
      result = sub_1000027D4(BKDisplayBrightnessEntitlement, v6);
      if (result)
      {
        result = (v8)(v7);
        *(a2 + 32) = 0;
        *(a2 + 24) = NDR_record;
        *(a2 + 4) = 40;
        return result;
      }

      v4 = 5;
    }
  }

  *(a2 + 32) = v4;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_1000A552C(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 52)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 52) || *(result + 56) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v4 = *(result + 40);
  v5 = *(result + 44);
  v6 = *(result + 48);
  v7 = *(result + 32);
  v8 = *(result + 88);
  v10[0] = *(result + 72);
  v10[1] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v12 = sub_100006314;
  v13 = &unk_1000FA338;
  v14 = v7;
  v15 = v4;
  v16 = v5;
  v17 = v6;
  result = sub_1000025C8("_BKHIDXXNotifySetBacklightFactorWithFadeDurationAsync", BKBackBoardClientEntitlement, v10);
  if (result)
  {
    result = (v12)(v11);
    v9 = 0;
  }

  else
  {
    v9 = 5;
  }

  *(a2 + 32) = v9;
  return result;
}

uint64_t sub_1000A5654(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 48)
  {
    v3 = -304;
  }

  else if (*(result + 48) || *(result + 52) < 0x20u)
  {
    v3 = -309;
  }

  else
  {
    v4 = *(result + 40);
    v5 = *(result + 44);
    v6 = *(result + 32);
    v7 = *(result + 84);
    v8[0] = *(result + 68);
    v8[1] = v7;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v10 = sub_10001C448;
    v11 = &unk_1000FAA18;
    v12 = v6;
    v13 = v4;
    v14 = v5;
    result = sub_1000025C8("_BKHIDXXSetBacklightFactorWithFadeDuration", BKBackBoardClientEntitlement, v8);
    if (result)
    {
      result = (v10)(v9);
      v3 = 0;
    }

    else
    {
      v3 = 5;
    }
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_1000A5770(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 36)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 36) || *(result + 40) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v4 = *(result + 32);
  v5 = *(result + 72);
  v7[0] = *(result + 56);
  v7[1] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v9 = sub_100006CE4;
  v10 = &unk_1000FCB40;
  v11 = v4;
  result = sub_1000025C8("_BKHIDXXSetBacklightFactorPending", BKBackBoardClientEntitlement, v7);
  if (result)
  {
    result = (v9)(v8);
    v6 = 0;
  }

  else
  {
    v6 = 5;
  }

  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_1000A587C(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 24)
  {
    v4 = -304;
  }

  else
  {
    v3 = *(result + 24);
    result += 24;
    if (v3 || *(result + 4) <= 0x1Fu)
    {
      v4 = -309;
    }

    else
    {
      v5 = *(result + 36);
      v6[0] = *(result + 20);
      v6[1] = v5;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v8 = sub_10001C3EC;
      v9 = &unk_1000FC018;
      v10 = a2 + 36;
      result = sub_1000025C8("_BKHIDXXGetBacklightFactor", BKBackBoardClientEntitlement, v6);
      if (result)
      {
        result = (v8)(v7);
        *(a2 + 32) = 0;
        *(a2 + 24) = NDR_record;
        *(a2 + 4) = 40;
        return result;
      }

      v4 = 5;
    }
  }

  *(a2 + 32) = v4;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_1000A5998(uint64_t a1)
{
  v1 = *(a1 + 20);
  if ((v1 - 6000078) >= 0xFFFFFFB2)
  {
    return *(&off_1000FD668 + 5 * (v1 - 6000000) + 5);
  }

  else
  {
    return 0;
  }
}

void sub_1000A59D8(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 56)
  {
    if (*(a1 + 39) == 1 && (v4 = *(a1 + 40), v4 == *(a1 + 52)))
    {
      if (!*(a1 + 56) && *(a1 + 60) > 0x1Fu)
      {
        v6 = *(a1 + 28);
        v7 = *(a1 + 92);
        v8[0] = *(a1 + 76);
        v8[1] = v7;
        *(a2 + 32) = sub_10002F5B8(v6, v4, v8);
        mig_deallocate(*(a1 + 28), *(a1 + 40));
        *(a1 + 28) = 0;
        *(a1 + 40) = 0;
        return;
      }

      v5 = -309;
    }

    else
    {
      v5 = -300;
    }
  }

  else
  {
    v5 = -304;
  }

  *(a2 + 32) = v5;
  *(a2 + 24) = NDR_record;
}

void sub_1000A5AB4(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 24)
  {
    v5 = -304;
    goto LABEL_7;
  }

  v4 = a1[6];
  v3 = a1 + 6;
  if (v4 || v3[1] <= 0x1Fu)
  {
    v5 = -309;
LABEL_7:
    *(a2 + 32) = v5;
    *(a2 + 24) = NDR_record;
    return;
  }

  *(a2 + 36) = 16777472;
  *(a2 + 52) = 0;
  v27 = *(v3 + 5);
  v28 = *(v3 + 9);
  v6 = +[BKBootUIPresenter sharedInstance];
  v7 = +[BKDisplayRenderOverlayManager sharedInstance];
  v8 = BSPIDForAuditToken();
  v9 = 0;
  if (([v7 isShowingNonBootUIOverlays] & 1) == 0)
  {
    v10 = [NSString stringWithFormat:@"pid %d", v8];
    v9 = [v6 sustainOverlayForReason:v10];
  }

  v11 = +[NSMutableSet set];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v12 = [v7 activeOverlays];
  v13 = [v12 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v30;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v29 + 1) + 8 * i);
        [v17 level];
        if (v18 > 0.0)
        {
          v19 = [v17 descriptor];
          [v11 addObject:v19];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v14);
  }

  v20 = [v11 count];
  v21 = sub_1000524BC();
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
  if (!v20)
  {
    if (v22)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "GetRenderOverlayDismissActions: no active overlays", buf, 2u);
    }

    if (!v9)
    {
      goto LABEL_28;
    }

LABEL_27:
    [v6 unsustainOverlayForReason:@"failed to encode dismiss actions"];
LABEL_28:

    v5 = 5;
    goto LABEL_7;
  }

  if (v22)
  {
    v23 = [BSDescriptionStream descriptionForRootObject:v11];
    *buf = 138543362;
    v34 = v23;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "GetRenderOverlayDismissActions: returning %{public}@", buf, 0xCu);
  }

  v24 = [v11 bs_secureEncoded];
  if (!v24)
  {
    v26 = sub_1000524BC();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "GetRenderOverlayDismissActions failed to encode actions", buf, 2u);
    }

    if ((v9 & 1) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v25 = v24;
  *(a2 + 28) = [v24 bs_bytesForMIG];
  *(a2 + 52) = [v25 bs_lengthForMIG];

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = NDR_record;
  *a2 |= 0x80000000;
  *(a2 + 4) = 56;
  *(a2 + 24) = 1;
}

void sub_1000A5E60(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 56)
  {
    if (*(a1 + 39) == 1 && (v4 = *(a1 + 40), v4 == *(a1 + 52)))
    {
      if (!*(a1 + 56) && *(a1 + 60) > 0x1Fu)
      {
        v6 = *(a1 + 28);
        v7 = *(a1 + 92);
        v8[0] = *(a1 + 76);
        v8[1] = v7;
        *(a2 + 32) = sub_10002FF8C(v6, v4, v8);
        mig_deallocate(*(a1 + 28), *(a1 + 40));
        *(a1 + 28) = 0;
        *(a1 + 40) = 0;
        goto LABEL_11;
      }

      v5 = -309;
    }

    else
    {
      v5 = -300;
    }
  }

  else
  {
    v5 = -304;
  }

  *(a2 + 32) = v5;
LABEL_11:
  *(a2 + 24) = NDR_record;
}

void sub_1000A5F3C(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 56)
  {
    if (*(a1 + 39) == 1 && (v4 = *(a1 + 40), v4 == *(a1 + 52)))
    {
      if (!*(a1 + 56) && *(a1 + 60) > 0x1Fu)
      {
        v6 = *(a1 + 28);
        v7 = *(a1 + 92);
        v8[0] = *(a1 + 76);
        v8[1] = v7;
        *(a2 + 32) = sub_10002FDB4(v6, v4, v8);
        mig_deallocate(*(a1 + 28), *(a1 + 40));
        *(a1 + 28) = 0;
        *(a1 + 40) = 0;
        goto LABEL_11;
      }

      v5 = -309;
    }

    else
    {
      v5 = -300;
    }
  }

  else
  {
    v5 = -304;
  }

  *(a2 + 32) = v5;
LABEL_11:
  *(a2 + 24) = NDR_record;
}

void sub_1000A6018(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 2 && *(a1 + 4) == 76)
  {
    if (*(a1 + 39) == 1 && *(a1 + 55) == 1 && (v4 = *(a1 + 40), v4 == *(a1 + 68)) && (v5 = *(a1 + 56), v5 == *(a1 + 72)))
    {
      if (!*(a1 + 76) && *(a1 + 80) > 0x1Fu)
      {
        v7 = *(a1 + 28);
        v8 = *(a1 + 44);
        v9 = *(a1 + 112);
        v10[0] = *(a1 + 96);
        v10[1] = v9;
        *(a2 + 32) = sub_10002FCC0(v7, v4, v8, v5, v10);
        mig_deallocate(*(a1 + 44), *(a1 + 56));
        *(a1 + 44) = 0;
        *(a1 + 56) = 0;
        mig_deallocate(*(a1 + 28), *(a1 + 40));
        *(a1 + 28) = 0;
        *(a1 + 40) = 0;
        goto LABEL_13;
      }

      v6 = -309;
    }

    else
    {
      v6 = -300;
    }
  }

  else
  {
    v6 = -304;
  }

  *(a2 + 32) = v6;
LABEL_13:
  *(a2 + 24) = NDR_record;
}

void sub_1000A6128(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 2 && *(a1 + 4) == 76)
  {
    if (*(a1 + 39) == 1 && *(a1 + 55) == 1 && (v4 = *(a1 + 40), v4 == *(a1 + 68)) && (v5 = *(a1 + 56), v5 == *(a1 + 72)))
    {
      if (!*(a1 + 76) && *(a1 + 80) > 0x1Fu)
      {
        v7 = *(a1 + 28);
        v8 = *(a1 + 44);
        v9 = *(a1 + 112);
        v10[0] = *(a1 + 96);
        v10[1] = v9;
        *(a2 + 32) = sub_10002F844(v7, v4, v8, v5, v10);
        mig_deallocate(*(a1 + 44), *(a1 + 56));
        *(a1 + 44) = 0;
        *(a1 + 56) = 0;
        mig_deallocate(*(a1 + 28), *(a1 + 40));
        *(a1 + 28) = 0;
        *(a1 + 40) = 0;
        goto LABEL_13;
      }

      v6 = -309;
    }

    else
    {
      v6 = -300;
    }
  }

  else
  {
    v6 = -304;
  }

  *(a2 + 32) = v6;
LABEL_13:
  *(a2 + 24) = NDR_record;
}

_DWORD *sub_1000A6238(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || (v3 = result, v4 = result[1], (v4 - 1065) < 0xFFFFFBFF) || ((v5 = result[9], v5 <= 0x400) ? (v6 = v4 - 40 >= v5) : (v6 = 0), (v7 = ((v5 + 3) & 0xFFC) + 40, v6) ? (v8 = v4 == v7) : (v8 = 0), !v8 || (result = memchr(result + 10, 0, v4 - 40)) == 0))
  {
    v9 = -304;
LABEL_11:
    *(a2 + 32) = v9;
    goto LABEL_12;
  }

  v10 = v3 + ((v4 + 3) & 0xFFC);
  if (*v10 || *(v10 + 1) <= 0x1Fu)
  {
    v9 = -309;
    goto LABEL_11;
  }

  *(a2 + 52) = 0;
  *(a2 + 36) = 16777472;
  v11 = *(v10 + 36);
  v12[0] = *(v10 + 20);
  v12[1] = v11;
  result = sub_10002FE78(v3 + 40, (a2 + 28), (a2 + 52), v12);
  if (!result)
  {
    *(a2 + 40) = *(a2 + 52);
    *(a2 + 44) = NDR_record;
    *a2 |= 0x80000000;
    *(a2 + 4) = 56;
    *(a2 + 24) = 1;
    return result;
  }

  *(a2 + 32) = result;
LABEL_12:
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_1000A6368(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 36)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 36) || *(result + 40) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v4 = *(result + 32);
  v5 = *(result + 72);
  v7[0] = *(result + 56);
  v7[1] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v9 = sub_10002F1F8;
  v10 = &unk_1000FCE78;
  v11 = v4;
  result = sub_1000025C8("_BKDisplayXXUpdateMirroredDisplayOrientationWithInterfaceOrientation", BKBackBoardClientEntitlement, v7);
  if (result)
  {
    result = (v9)(v8);
    v6 = 0;
  }

  else
  {
    v6 = 5;
  }

  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_1000A6474(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 36)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 36) || *(result + 40) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v4 = *(result + 32);
  v5 = *(result + 72);
  v7[0] = *(result + 56);
  v7[1] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v9 = sub_10002F194;
  v10 = &unk_1000FCE78;
  v11 = v4;
  result = sub_1000025C8("_BKDisplayXXUpdateTetheredDisplayOrientationIfNecessaryWithInterfaceOrientation", BKBackBoardClientEntitlement, v7);
  if (result)
  {
    result = (v9)(v8);
    v6 = 0;
  }

  else
  {
    v6 = 5;
  }

  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_1000A6580(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 36)
  {
    v3 = -304;
  }

  else if (*(result + 36) || *(result + 40) < 0x20u)
  {
    v3 = -309;
  }

  else
  {
    v4 = *(result + 32);
    v5 = *(result + 72);
    v6[0] = *(result + 56);
    v6[1] = v5;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v8 = sub_10002F134;
    v9 = &unk_1000FCE78;
    v10 = v4;
    result = sub_1000025C8("_BKDisplayXXSetTetheredOrientationNotificationsDisabled", BKBackBoardClientEntitlement, v6);
    if (result)
    {
      result = (v8)(v7);
      v3 = 0;
    }

    else
    {
      v3 = 5;
    }
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_1000A6688(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 24)
  {
    v4 = -304;
  }

  else
  {
    v3 = *(result + 24);
    result += 24;
    if (v3 || *(result + 4) <= 0x1Fu)
    {
      v4 = -309;
    }

    else
    {
      v5 = *(result + 36);
      v6[0] = *(result + 20);
      v6[1] = v5;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v8 = sub_10002F0A8;
      v9 = &unk_1000FC018;
      v10 = a2 + 36;
      result = sub_1000025C8("_BKDisplayXXTetherPrefsNeedImmediateUpdate", BKBackBoardClientEntitlement, v6);
      if (result)
      {
        result = (v8)(v7);
        *(a2 + 32) = 0;
        *(a2 + 24) = NDR_record;
        *(a2 + 4) = 40;
        return result;
      }

      v4 = 5;
    }
  }

  *(a2 + 32) = v4;
  *(a2 + 24) = NDR_record;
  return result;
}

_DWORD *sub_1000A67A4(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 && (v3 = result, v4 = result[1], (v4 - 1065) >= 0xFFFFFBFF) && ((v5 = result[9], v5 <= 0x400) ? (v6 = v4 - 40 >= v5) : (v6 = 0), (v7 = ((v5 + 3) & 0xFFC) + 40, v6) ? (v8 = v4 == v7) : (v8 = 0), v8 && (result = memchr(result + 10, 0, v4 - 40)) != 0))
  {
    v10 = v3 + ((v4 + 3) & 0xFFC);
    if (!*v10 && *(v10 + 1) > 0x1Fu)
    {
      v11 = *(v10 + 36);
      v12[0] = *(v10 + 20);
      v12[1] = v11;
      result = sub_10002EE94((v3 + 10), v12);
      *(a2 + 32) = result;
      return result;
    }

    v9 = -309;
  }

  else
  {
    v9 = -304;
  }

  *(a2 + 32) = v9;
  *(a2 + 24) = NDR_record;
  return result;
}

_DWORD *sub_1000A6888(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 && (v3 = result, v4 = result[1], v4 - 1069 >= 0xFFFFFBFF) && (v5 = result[9], v5 <= 0x400) && ((v6 = (v5 + 3) & 0xFFFFFFFC, v4 - 44 >= v5) ? (v7 = v4 == v6 + 44) : (v7 = 0), v7 && (v4 >= 0x428 ? (v8 = 1064) : (v8 = v4), (result = memchr(result + 10, 0, v8 - 40)) != 0)))
  {
    v9 = v3 + ((v4 + 3) & 0xFFC);
    if (!*v9 && *(v9 + 1) > 0x1Fu)
    {
      v11 = *(v3 + v6 + 40);
      v12 = *(v9 + 36);
      v13[0] = *(v9 + 20);
      v13[1] = v12;
      result = sub_10002EBD4((v3 + 10), v11, v13);
      *(a2 + 32) = result;
      return result;
    }

    v10 = -309;
  }

  else
  {
    v10 = -304;
  }

  *(a2 + 32) = v10;
  *(a2 + 24) = NDR_record;
  return result;
}

void sub_1000A6988(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 36)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = sub_1000597A4();
    v5 = v4;
    if (v4)
    {
      v6 = *(v4 + 8);
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_1000598A4;
      v7[3] = &unk_1000FCD90;
      v7[4] = v5;
      v8 = v3 != 0;
      dispatch_async(v6, v7);
    }

    *(a2 + 32) = 0;
  }
}

uint64_t sub_1000A6A6C(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  result = 4294966992;
  if ((v4 & 0x80000000) == 0)
  {
    v6 = a1[1];
    if (v6 - 1069 >= 0xFFFFFBFF)
    {
      v7 = a1[9];
      if (v7 <= 0x400)
      {
        v8 = (v7 + 3) & 0xFFFFFFFC;
        if (v6 - 44 >= v7 && v6 == v8 + 44)
        {
          if (v6 >= 0x428)
          {
            v10 = 1064;
          }

          else
          {
            v10 = v6;
          }

          if (memchr(a1 + 10, 0, v10 - 40))
          {
            v11 = a1 + ((v6 + 3) & 0xFFC);
            if (*v11 || *(v11 + 1) < 0x20u)
            {
              result = 4294966987;
            }

            else
            {
              v12 = *(a1 + v8 + 40);
              v13 = *(v11 + 36);
              v14[0] = *(v11 + 20);
              v14[1] = v13;
              result = sub_10002E5D4((a1 + 10), v12, v14);
            }
          }

          else
          {
            result = 4294966992;
          }
        }
      }
    }
  }

  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  return result;
}

_DWORD *sub_1000A6B6C(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || (v3 = result, v4 = result[1], (v4 - 1065) < 0xFFFFFBFF) || ((v5 = result[9], v5 <= 0x400) ? (v6 = v4 - 40 >= v5) : (v6 = 0), (v7 = ((v5 + 3) & 0xFFC) + 40, v6) ? (v8 = v4 == v7) : (v8 = 0), !v8 || (result = memchr(result + 10, 0, v4 - 40)) == 0))
  {
    v9 = -304;
LABEL_11:
    *(a2 + 32) = v9;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v10 = v3 + ((v4 + 3) & 0xFFC);
  if (*v10 || *(v10 + 1) <= 0x1Fu)
  {
    v9 = -309;
    goto LABEL_11;
  }

  v11 = *(v10 + 36);
  v12[0] = *(v10 + 20);
  v12[1] = v11;
  result = sub_10002E47C((v3 + 10), a2 + 36, v12);
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t sub_1000A6C70(int *a1, uint64_t a2)
{
  v4 = *a1;
  result = 4294966992;
  if ((v4 & 0x80000000) == 0)
  {
    v6 = a1[1];
    if (v6 - 1077 >= 0xFFFFFBFF)
    {
      v7 = a1[9];
      if (v7 <= 0x400)
      {
        v8 = (v7 + 3) & 0xFFFFFFFC;
        if (v6 - 52 >= v7 && v6 == v8 + 52)
        {
          if (v6 >= 0x428)
          {
            v10 = 1064;
          }

          else
          {
            v10 = v6;
          }

          if (memchr(a1 + 10, 0, v10 - 40))
          {
            v11 = a1 + ((v6 + 3) & 0xFFC);
            if (*v11 || *(v11 + 1) < 0x20u)
            {
              result = 4294966987;
            }

            else
            {
              v12 = *(a1 + v8 + 40);
              v13 = *(a1 + v8 + 44);
              v14 = *(a1 + v8 + 48);
              v15 = *(v11 + 36);
              v16[0] = *(v11 + 20);
              v16[1] = v15;
              result = sub_10002E368((a1 + 10), v12, v13, v14, v16);
            }
          }

          else
          {
            result = 4294966992;
          }
        }
      }
    }
  }

  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_1000A6D78(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  result = 4294966992;
  if ((v4 & 0x80000000) == 0)
  {
    v6 = a1[1];
    if (v6 - 1069 >= 0xFFFFFBFF)
    {
      v7 = a1[9];
      if (v7 <= 0x400)
      {
        v8 = (v7 + 3) & 0xFFFFFFFC;
        if (v6 - 44 >= v7 && v6 == v8 + 44)
        {
          if (v6 >= 0x428)
          {
            v10 = 1064;
          }

          else
          {
            v10 = v6;
          }

          if (memchr(a1 + 10, 0, v10 - 40))
          {
            v11 = a1 + ((v6 + 3) & 0xFFC);
            if (*v11 || *(v11 + 1) < 0x20u)
            {
              result = 4294966987;
            }

            else
            {
              v12 = *(a1 + v8 + 40);
              v13 = *(v11 + 36);
              v14[0] = *(v11 + 20);
              v14[1] = v13;
              result = sub_10002E190((a1 + 10), v12, v14);
            }
          }

          else
          {
            result = 4294966992;
          }
        }
      }
    }
  }

  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  return result;
}

_DWORD *sub_1000A6E78(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || (v3 = result, v4 = result[1], (v4 - 1065) < 0xFFFFFBFF) || ((v5 = result[9], v5 <= 0x400) ? (v6 = v4 - 40 >= v5) : (v6 = 0), (v7 = ((v5 + 3) & 0xFFC) + 40, v6) ? (v8 = v4 == v7) : (v8 = 0), !v8 || (result = memchr(result + 10, 0, v4 - 40)) == 0))
  {
    v9 = -304;
LABEL_11:
    *(a2 + 32) = v9;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v10 = v3 + ((v4 + 3) & 0xFFC);
  if (*v10 || *(v10 + 1) <= 0x1Fu)
  {
    v9 = -309;
    goto LABEL_11;
  }

  v11 = *(v10 + 36);
  v12[0] = *(v10 + 20);
  v12[1] = v11;
  result = sub_10002E038((v3 + 10), a2 + 36, v12);
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

void sub_1000A6F7C(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0)
  {
    goto LABEL_2;
  }

  v3 = -304;
  if (*(a1 + 24) != 1)
  {
    goto LABEL_3;
  }

  v5 = *(a1 + 4);
  if (v5 - 1089 < 0xFFFFFBFF)
  {
    goto LABEL_3;
  }

  if (*(a1 + 39) != 1)
  {
    goto LABEL_19;
  }

  v6 = *(a1 + 56);
  if (v6 > 0x400)
  {
LABEL_2:
    v3 = -304;
    goto LABEL_3;
  }

  v3 = -304;
  if (v5 - 64 < v6)
  {
    goto LABEL_3;
  }

  v7 = (v6 + 3) & 0xFFFFFFFC;
  if (v5 != v7 + 64)
  {
    goto LABEL_3;
  }

  v8 = *(a1 + 40);
  if (v8 != *(a1 + v7 + 60))
  {
LABEL_19:
    v3 = -300;
    goto LABEL_3;
  }

  if (v5 >= 0x43C)
  {
    v9 = 1084;
  }

  else
  {
    v9 = v5;
  }

  if (!memchr((a1 + 60), 0, v9 - 60))
  {
    goto LABEL_2;
  }

  v10 = ((v5 + 3) & 0xFFC) + a1;
  if (!*v10 && *(v10 + 4) > 0x1Fu)
  {
    v11 = *(a1 + 28);
    v12 = *(v10 + 36);
    v13[0] = *(v10 + 20);
    v13[1] = v12;
    *(a2 + 32) = sub_10002DCB4(a1 + 60, v11, v8, v13);
    mig_deallocate(*(a1 + 28), *(a1 + 40));
    *(a1 + 28) = 0;
    *(a1 + 40) = 0;
    return;
  }

  v3 = -309;
LABEL_3:
  *(a2 + 32) = v3;
  *(a2 + 24) = NDR_record;
}

_DWORD *sub_1000A70CC(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || (v3 = result, v4 = result[1], (v4 - 1065) < 0xFFFFFBFF) || ((v5 = result[9], v5 <= 0x400) ? (v6 = v4 - 40 >= v5) : (v6 = 0), (v7 = ((v5 + 3) & 0xFFC) + 40, v6) ? (v8 = v4 == v7) : (v8 = 0), !v8 || (result = memchr(result + 10, 0, v4 - 40)) == 0))
  {
    v9 = -304;
LABEL_11:
    *(a2 + 32) = v9;
    goto LABEL_12;
  }

  v10 = v3 + ((v4 + 3) & 0xFFC);
  if (*v10 || *(v10 + 1) <= 0x1Fu)
  {
    v9 = -309;
    goto LABEL_11;
  }

  *(a2 + 52) = 0;
  *(a2 + 36) = 16777472;
  v11 = *(v10 + 36);
  v12[0] = *(v10 + 20);
  v12[1] = v11;
  result = sub_10002DB28(v3 + 40, (a2 + 28), (a2 + 52), v12);
  if (!result)
  {
    *(a2 + 40) = *(a2 + 52);
    *(a2 + 44) = NDR_record;
    *a2 |= 0x80000000;
    *(a2 + 4) = 56;
    *(a2 + 24) = 1;
    return result;
  }

  *(a2 + 32) = result;
LABEL_12:
  *(a2 + 24) = NDR_record;
  return result;
}

_DWORD *sub_1000A71FC(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 && (v3 = result, v4 = result[1], (v4 - 1065) >= 0xFFFFFBFF) && ((v5 = result[9], v5 <= 0x400) ? (v6 = v4 - 40 >= v5) : (v6 = 0), (v7 = ((v5 + 3) & 0xFFC) + 40, v6) ? (v8 = v4 == v7) : (v8 = 0), v8 && (result = memchr(result + 10, 0, v4 - 40)) != 0))
  {
    v10 = v3 + ((v4 + 3) & 0xFFC);
    if (!*v10 && *(v10 + 1) > 0x1Fu)
    {
      v11 = *(v10 + 36);
      v12[0] = *(v10 + 20);
      v12[1] = v11;
      result = sub_10002D964((v3 + 10), v12);
      *(a2 + 32) = result;
      return result;
    }

    v9 = -309;
  }

  else
  {
    v9 = -304;
  }

  *(a2 + 32) = v9;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_1000A72E0(int *a1, uint64_t a2)
{
  v4 = *a1;
  result = 4294966992;
  if ((v4 & 0x80000000) == 0)
  {
    v6 = a1[1];
    if (v6 - 1081 >= 0xFFFFFBFF)
    {
      v7 = a1[9];
      if (v7 <= 0x400)
      {
        v8 = (v7 + 3) & 0xFFFFFFFC;
        if (v6 - 56 >= v7 && v6 == v8 + 56)
        {
          if (v6 >= 0x428)
          {
            v10 = 1064;
          }

          else
          {
            v10 = v6;
          }

          if (memchr(a1 + 10, 0, v10 - 40))
          {
            v11 = a1 + ((v6 + 3) & 0xFFC);
            if (*v11 || *(v11 + 4) < 0x20u)
            {
              result = 4294966987;
            }

            else
            {
              v12 = *(a1 + v8 + 40);
              v13 = *(a1 + v8 + 44);
              v14 = *(a1 + v8 + 48);
              v15 = *(a1 + v8 + 52);
              v16 = *(v11 + 36);
              v17[0] = *(v11 + 20);
              v17[1] = v16;
              result = sub_10002EB04(a1 + 40, v17, v12, v13, v14, v15);
            }
          }

          else
          {
            result = 4294966992;
          }
        }
      }
    }
  }

  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  return result;
}

_DWORD *sub_1000A73EC(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || (v3 = result, v4 = result[1], v4 - 1069 < 0xFFFFFBFF) || (v5 = result[9], v5 > 0x400) || ((v6 = (v5 + 3) & 0xFFFFFFFC, v4 - 44 >= v5) ? (v7 = v4 == v6 + 44) : (v7 = 0), !v7 || (v4 >= 0x428 ? (v8 = 1064) : (v8 = v4), (result = memchr(result + 10, 0, v8 - 40)) == 0)))
  {
    v10 = -304;
    goto LABEL_17;
  }

  v9 = v3 + ((v4 + 3) & 0xFFC);
  if (*v9 || *(v9 + 1) <= 0x1Fu)
  {
    v10 = -309;
LABEL_17:
    *(a2 + 32) = v10;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v11 = *(v3 + v6 + 40);
  v12 = *(v9 + 36);
  v13[0] = *(v9 + 20);
  v13[1] = v12;
  result = sub_10002E904((v3 + 10), v11, a2 + 36, v13);
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

_DWORD *sub_1000A750C(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || (v3 = result, v4 = result[1], (v4 - 1065) < 0xFFFFFBFF) || ((v5 = result[9], v5 <= 0x400) ? (v6 = v4 - 40 >= v5) : (v6 = 0), (v7 = ((v5 + 3) & 0xFFC) + 40, v6) ? (v8 = v4 == v7) : (v8 = 0), !v8 || (result = memchr(result + 10, 0, v4 - 40)) == 0))
  {
    v9 = -304;
LABEL_11:
    *(a2 + 32) = v9;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v10 = v3 + ((v4 + 3) & 0xFFC);
  if (*v10 || *(v10 + 1) <= 0x1Fu)
  {
    v9 = -309;
    goto LABEL_11;
  }

  v11 = *(v10 + 36);
  v12[0] = *(v10 + 20);
  v12[1] = v11;
  result = sub_10002E7AC((v3 + 10), a2 + 36, v12);
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t sub_1000A7610(uint64_t a1)
{
  v1 = *(a1 + 20);
  if ((v1 - 6001029) >= 0xFFFFFFE3)
  {
    return *(&off_1000FE2B8 + 5 * (v1 - 6001000) + 5);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000A7650(_DWORD *a1, uint64_t a2)
{
  v3 = a1[2];
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v4 = a1[5] + 100;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;
  *(a2 + 20) = v4;
  if (a1[5] == 6002000)
  {
    if ((*a1 & 0x80000000) != 0 || a1[1] != 24)
    {
      *(a2 + 32) = -304;
      *(a2 + 24) = NDR_record;
      return 1;
    }

    else
    {
      if (qword_1001260C8 != -1)
      {
        dispatch_once(&qword_1001260C8, &stru_1000FCB60);
      }

      v5 = [qword_1001260C0 isAlive];
      result = 1;
      *(a2 + 36) = 1;
      if (v5)
      {
        v7 = 0;
      }

      else
      {
        v7 = 5;
      }

      *(a2 + 32) = v7;
      *(a2 + 24) = NDR_record;
      if (v5)
      {
        *(a2 + 4) = 40;
      }
    }
  }

  else
  {
    result = 0;
    *(a2 + 24) = NDR_record;
    *(a2 + 32) = -303;
  }

  return result;
}