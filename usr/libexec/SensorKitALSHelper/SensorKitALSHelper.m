void sub_100001970(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100001990(id a1)
{
  v1 = qword_10002B230;
  if (os_log_type_enabled(qword_10002B230, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Connection to CH Service has been interrupted.", v2, 2u);
  }
}

_BYTE *sub_1000019F4(uint64_t a1)
{
  v2 = qword_10002B230;
  if (os_log_type_enabled(qword_10002B230, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Connection to CH Service has been invalidated.", v4, 2u);
  }

  result = objc_loadWeak((a1 + 32));
  if (result)
  {
    result[8] = 1;
  }

  return result;
}

uint64_t sub_100001A70(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 8))
    {

      v1[3] = [objc_opt_class() _connectionToService];
      [v1 _setupConnection];
    }

    return v1[3];
  }

  return result;
}

void sub_100001C68(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

id sub_100001C84(uint64_t a1, void *a2)
{
  if (*(a1 + 56) <= 1uLL && [a2 code] == 4097)
  {
    v4 = [objc_msgSend(a2 "domain")];
  }

  else
  {
    v4 = 0;
  }

  v5 = qword_10002B230;
  if (os_log_type_enabled(qword_10002B230, OS_LOG_TYPE_ERROR))
  {
    v7 = @"not";
    if (v4)
    {
      v7 = &stru_1000252F8;
    }

    v8 = 138543618;
    v9 = a2;
    v10 = 2112;
    v11 = v7;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Couldn't connect to CH service because %{public}@. Will %@ attempt to retry", &v8, 0x16u);
    if (v4)
    {
      return [objc_loadWeak((a1 + 48)) _fetchCustomCategoriesWithRetryAttempt:*(a1 + 56) + 1 bundleIdentifiers:*(a1 + 32) completion:*(a1 + 40)];
    }
  }

  else if (v4)
  {
    return [objc_loadWeak((a1 + 48)) _fetchCustomCategoriesWithRetryAttempt:*(a1 + 56) + 1 bundleIdentifiers:*(a1 + 32) completion:*(a1 + 40)];
  }

  return (*(*(a1 + 40) + 16))(*(a1 + 40), &__NSDictionary0__struct, [SRError errorWithCode:8194]);
}

uint64_t sub_100001E80(uint64_t a1, uint64_t a2)
{
  v4 = qword_10002B230;
  if (os_log_type_enabled(qword_10002B230, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = a2;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Couldn't connect to CH service because %{public}@", &v6, 0xCu);
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), &stru_1000252F8, [SRError errorWithCode:8194]);
}

uint64_t sub_100001FE4(uint64_t a1, uint64_t a2)
{
  v4 = qword_10002B230;
  if (os_log_type_enabled(qword_10002B230, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = a2;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Couldn't connect to CH service because %{public}@", &v6, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

id sub_1000020A8(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v4 = 0;
  v5 = &v4;
  v6 = 0x3052000000;
  v7 = sub_1000021B8;
  v8 = sub_1000021C8;
  v9 = &stru_1000252F8;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100002278;
  v3[3] = &unk_100024998;
  v3[4] = &v4;
  [objc_msgSend(sub_100001A70(a1) synchronousRemoteObjectProxyWithErrorHandler:{&stru_100024970), "fetchVersion:", v3}];
  v1 = v5[5];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_1000021A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000021D4(id a1, NSError *a2)
{
  v3 = qword_10002B230;
  if (os_log_type_enabled(qword_10002B230, OS_LOG_TYPE_ERROR))
  {
    v4 = 138543362;
    v5 = a2;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Couldn't connect to CH service because %{public}@", &v4, 0xCu);
  }
}

id sub_100002278(uint64_t a1, void *a2)
{
  result = [a2 copy];
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

id sub_1000022FC(id result, void *a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    v6 = [[SRSensorWriter alloc] initWithIdentifier:SRSensorVisits];
    v7 = sub_10000599C([RDLaunchEvents alloc], a2, 0, 0);
    v8 = objc_alloc_init(RTRoutineManager);

    return [v5 initWithLaunchEvents:v7 sensorWriter:v6 routineManager:v8 defaults:a3 q:a2];
  }

  return result;
}

uint64_t sub_1000024F4(uint64_t a1, void *a2, uint64_t a3)
{
  Weak = objc_loadWeak((a1 + 64));
  v6 = qword_10002B238;
  if (a3)
  {
    if (os_log_type_enabled(qword_10002B238, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v67 = a3;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Error fetching LOI: %@", buf, 0xCu);
    }

    return (*(*(a1 + 56) + 16))();
  }

  v7 = Weak;
  if (os_log_type_enabled(qword_10002B238, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    *buf = 138412802;
    v67 = v9;
    v68 = 2112;
    v69 = v10;
    v7 = v8;
    v70 = 2048;
    v71 = [a2 count];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "fetchLocationsOfInterestVisitedBetweenStartDate: %@ endDate: %@ => got %lu visits", buf, 0x20u);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v45 = [a2 countByEnumeratingWithState:&v52 objects:v61 count:16];
  if (v45)
  {
    v42 = *v53;
    v11 = &MGCopyAnswer_ptr;
    v12 = &MGCopyAnswer_ptr;
    v43 = a2;
    do
    {
      for (i = 0; i != v45; i = i + 1)
      {
        if (*v53 != v42)
        {
          objc_enumerationMutation(a2);
        }

        v13 = UsageReportGenerator;
        if (v7)
        {
          v14 = *(*(&v52 + 1) + 8 * i);
          v50 = *(a1 + 48);
          v47 = [objc_msgSend(v7 "defaults")];
          v57 = 0u;
          v58 = 0u;
          v59 = 0u;
          v60 = 0u;
          obj = [v14 visits];
          v51 = [obj countByEnumeratingWithState:&v57 objects:buf count:16];
          if (v51)
          {
            v49 = *v58;
            do
            {
              v15 = 0;
              do
              {
                if (*v58 != v49)
                {
                  objc_enumerationMutation(obj);
                }

                v16 = *(*(&v57 + 1) + 8 * v15);
                v17 = objc_alloc(v11[274]);
                [objc_msgSend(v14 "location")];
                v19 = v18;
                [objc_msgSend(v14 "location")];
                v21 = [v17 initWithLatitude:v19 longitude:v20];
                [v50 distanceFromLocation:v21];
                v23 = v22;
                if ([v16 entryDate])
                {
                  v24 = [objc_msgSend(v16 "entryDate")];
                  if (![v16 exitDate])
                  {
                    if (v24)
                    {
LABEL_32:
                      superclass = v13[14].superclass;
                      if (os_log_type_enabled(superclass, OS_LOG_TYPE_ERROR))
                      {
                        *v62 = 138543362;
                        v63 = v16;
                        v36 = superclass;
                        v37 = "Arrival date is invalid for %{public}@";
                        goto LABEL_42;
                      }
                    }

                    else
                    {
LABEL_34:
                      v38 = v13[14].superclass;
                      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                      {
                        *v62 = 138543362;
                        v63 = v16;
                        v36 = v38;
                        v37 = "Departure date is invalid for %{public}@";
LABEL_42:
                        _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, v37, v62, 0xCu);
                      }
                    }

                    goto LABEL_36;
                  }

                  v25 = v24 ^ 1;
                }

                else
                {
                  if (![v16 exitDate])
                  {
                    goto LABEL_32;
                  }

                  v25 = 0;
                }

                v26 = [objc_msgSend(v16 "exitDate")];
                if ((v25 & 1) == 0)
                {
                  goto LABEL_32;
                }

                if (v26)
                {
                  goto LABEL_34;
                }

                v27 = v7;
                v28 = sub_10000C9A8(900.0, 900.0, NSDateInterval, [v16 entryDate]);
                v29 = sub_10000C9A8(900.0, 900.0, NSDateInterval, [v16 exitDate]);
                v30 = [SRVisit alloc];
                v31 = [v14 type];
                if (v31 < 4)
                {
                  v32 = v31 + 1;
                }

                else
                {
                  v32 = 0;
                }

                v33 = [v30 initWithDistanceFromHome:v28 arrive:v29 depart:v32 category:objc_msgSend(v14 uuid:{"identifier"), v23}];
                v34 = v13[14].superclass;
                if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
                {
                  *v62 = 138543619;
                  v63 = v33;
                  v64 = 2113;
                  v65 = v16;
                  _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "visit collected: %{public}@ from CR visit: %{private}@", v62, 0x16u);
                }

                v56 = 0;
                v7 = v27;
                if ([v27[3] provideSample:v33 error:&v56])
                {
                  [objc_msgSend(v27 "defaults")];
                  v13 = UsageReportGenerator;
                  v12 = &MGCopyAnswer_ptr;
                }

                else
                {
                  v13 = UsageReportGenerator;
                  v39 = qword_10002B238;
                  v12 = &MGCopyAnswer_ptr;
                  if (os_log_type_enabled(qword_10002B238, OS_LOG_TYPE_ERROR))
                  {
                    *v62 = 138543362;
                    v63 = v56;
                    _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Failed to write visit data because %{public}@", v62, 0xCu);
                  }
                }

                v11 = &MGCopyAnswer_ptr;
LABEL_36:
                v15 = v15 + 1;
              }

              while (v51 != v15);
              v40 = [obj countByEnumeratingWithState:&v57 objects:buf count:16];
              v51 = v40;
            }

            while (v40);
          }
        }

        a2 = v43;
      }

      v45 = [v43 countByEnumeratingWithState:&v52 objects:v61 count:16];
    }

    while (v45);
  }

  return (*(*(a1 + 56) + 16))();
}

void sub_100002C08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100002C24(uint64_t a1, void *a2, uint64_t a3)
{
  Weak = objc_loadWeak((a1 + 40));
  if (a3)
  {
    v7 = qword_10002B238;
    if (os_log_type_enabled(qword_10002B238, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = a3;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Error fetching LOI for home: %@", buf, 0xCu);
    }

LABEL_4:
    (*(*(a1 + 32) + 16))();
    return;
  }

  if (!a2 || (v8 = Weak, ![a2 count]))
  {
    v24 = qword_10002B238;
    if (os_log_type_enabled(qword_10002B238, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "No LOIs found for home", buf, 2u);
    }

    goto LABEL_4;
  }

  v9 = [a2 firstObject];
  v10 = qword_10002B238;
  if (os_log_type_enabled(qword_10002B238, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    *&buf[4] = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Home LOI at %@", buf, 0xCu);
  }

  v11 = [CLLocation alloc];
  [objc_msgSend(v9 "location")];
  v13 = v12;
  [objc_msgSend(v9 "location")];
  v15 = [v11 initWithLatitude:v13 longitude:v14];
  if (v8)
  {
    v16 = *(a1 + 32);
    v17 = [objc_msgSend(v8 "defaults")];
    [objc_msgSend(v8 "defaults")];
    v19 = v18;
    v20 = [NSDate dateWithSRAbsoluteTime:fmax(SRAbsoluteTimeGetCurrent() - v18, 0.0)];
    [(NSDate *)v20 timeIntervalSinceDate:v17];
    if (v21 >= v19)
    {
      objc_initWeak(&location, v8);
      v25 = v8[5];
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_1000024F4;
      v28 = &unk_1000249C0;
      objc_copyWeak(&v32, &location);
      *&v29 = v17;
      *(&v29 + 1) = v20;
      v30 = v15;
      v31 = v16;
      [v25 fetchLocationsOfInterestVisitedBetweenStartDate:v17 endDate:v20 withHandler:buf];
      objc_destroyWeak(&v32);
      objc_destroyWeak(&location);
    }

    else
    {
      v22 = qword_10002B238;
      if (os_log_type_enabled(qword_10002B238, OS_LOG_TYPE_DEFAULT))
      {
        v23 = +[NSDate now];
        *buf = 138544130;
        *&buf[4] = v23;
        *&buf[12] = 2114;
        *&buf[14] = v17;
        *&buf[22] = 2114;
        v28 = v20;
        LOWORD(v29) = 2050;
        *(&v29 + 2) = v19;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Time before now (%{public}@). Time interval (%{public}@ - %{public}@) is less than interval required for correct LOIs fetching (%{public}f)", buf, 0x2Au);
      }

      (*(v16 + 16))(v16);
    }
  }
}

void sub_100002F84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_destroyWeak((v10 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100003394(void *a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v6.receiver = a1;
  v6.super_class = ALSRecorder;
  v3 = objc_msgSendSuper2(&v6, "init");
  if (v3)
  {
    *(v3 + 4) = a2;
    *(v3 + 2) = [[NSMutableArray alloc] initWithCapacity:1];
    *(v3 + 1) = [[SRSensorWriter alloc] initWithIdentifier:SRSensorAmbientLightSensor];
    v4 = sub_10000599C([RDLaunchEvents alloc], a2, 0, 0);
    *(v3 + 5) = v4;
    if (v4)
    {
      objc_storeWeak(v4 + 1, v3);
    }

    [*(v3 + 1) setDelegate:v3];
  }

  return v3;
}

void sub_10000361C(uint64_t a1, uint64_t a2, __IOHIDServiceClient *a3)
{
  if (a2)
  {
    if (a3)
    {
      if (IOHIDEventGetType() == 12)
      {
        v5 = *(a2 + 8);
        if (v5)
        {
          if ([v5 isMonitoring])
          {
            v6 = *(a2 + 16);
            if (v6)
            {
              v33 = 0;
              v34 = &v33;
              v35 = 0x4010000000;
              v36 = &unk_10001AB95;
              v37 = 0u;
              v38 = 0u;
              v29 = 0;
              v30 = &v29;
              v31 = 0x2020000000;
              v32 = 0;
              v28[0] = _NSConcreteStackBlock;
              v28[1] = 3221225472;
              v28[2] = sub_100003950;
              v28[3] = &unk_100024A38;
              v28[5] = &v33;
              v28[6] = a3;
              v28[4] = &v29;
              [v6 enumerateObjectsUsingBlock:v28];
              if ((v30[3] & 1) == 0)
              {
                v34[4] = 0;
                v7 = IOHIDServiceClientCopyProperty(a3, @"crgb");
                if (v7)
                {
                  TypeID = CFNumberGetTypeID();
                  if (TypeID == CFGetTypeID(v7))
                  {
                    LODWORD(valuePtr) = 0;
                    CFNumberGetValue(v7, kCFNumberIntType, &valuePtr);
                    if (valuePtr >= 1)
                    {
                      v34[4] = 1;
                    }
                  }

                  CFRelease(v7);
                }

                v34[5] = 0;
                v9 = IOHIDServiceClientCopyProperty(a3, @"Orientation");
                v10 = v9;
                if (v9)
                {
                  v11 = CFGetTypeID(v9);
                  if (v11 == CFNumberGetTypeID())
                  {
                    LODWORD(valuePtr) = 0;
                    CFNumberGetValue(v10, kCFNumberSInt32Type, &valuePtr);
                    v34[5] = valuePtr;
                  }

                  CFRelease(v10);
                }

                v12 = *(v34 + 2);
                v27 = *(v34 + 3);
                v26 = v12;
                valuePtr = a3;
                v13 = [[NSValue alloc] initWithBytes:&valuePtr objCType:"{?=^{__IOHIDServiceClient}{?=qqf{?=ff}}}"];
                if (v13)
                {
                  [*(a2 + 16) addObject:v13];
                }
              }

              IOHIDEventGetFloatValue();
              *&v14 = v14;
              *(v34 + 12) = LODWORD(v14);
              IOHIDEventGetDoubleValue();
              v24 = v15;
              IOHIDEventGetDoubleValue();
              v23 = v16;
              IOHIDEventGetDoubleValue();
              v17.f64[0] = v24;
              v19 = v24 + v23 + v18;
              if (v19 == 0.0)
              {
                v20 = 0;
              }

              else
              {
                v17.f64[1] = v23;
                v20 = vcvt_f32_f64(vdivq_f64(v17, vdupq_lane_s64(*&v19, 0)));
              }

              *(v34 + 52) = v20;
              v21 = [SRAmbientLightSample alloc];
              v22 = [v21 initWithSRALSSampleStruct:v34 + 4];
              if (v22)
              {
                [*(a2 + 8) provideSample:v22];
              }

              _Block_object_dispose(&v29, 8);
              _Block_object_dispose(&v33, 8);
            }
          }
        }
      }
    }
  }
}

void sub_10000390C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 112), 8);
  _Unwind_Resume(a1);
}

__n128 sub_100003950(void *a1, void *a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    memset(v6, 0, 40);
    [a2 getValue:v6];
    if (*&v6[0] == a1[6])
    {
      *(*(a1[4] + 8) + 24) = 1;
      v5 = *(a1[5] + 8);
      result = *(&v6[1] + 8);
      *(v5 + 32) = *(v6 + 8);
      *(v5 + 48) = result;
    }
  }

  return result;
}

id *sub_100003CAC(id *a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v4 = [SRSensorWriter alloc];
    v5 = [v4 initWithIdentifier:SRSensorAcousticSettings];
    v6 = sub_10000599C([RDLaunchEvents alloc], a2, 0, 0);
    v9.receiver = v2;
    v9.super_class = AcousticSettingsCollector;
    v2 = objc_msgSendSuper2(&v9, "init");
    if (v2)
    {
      v2[6] = v5;
      v2[4] = a2;
      v7 = v6;
      v2[5] = v7;
      if (v7)
      {
        objc_storeWeak(v7 + 1, v2);
      }

      [v2[6] setDelegate:v2];
      v2[1] = -1;
      *(v2 + 4) = -1;
    }
  }

  return v2;
}

void sub_100003E04(_DWORD *a1)
{
  if (a1)
  {
    v2 = a1[2];
    if (v2 != -1)
    {
      v3 = qword_10002B260;
      if (os_log_type_enabled(qword_10002B260, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v14) = 0;
        _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Unregistering for environmental sound measurement settings updates", &v14, 2u);
        v2 = a1[2];
      }

      if (notify_cancel(v2))
      {
        v4 = qword_10002B260;
        if (os_log_type_enabled(qword_10002B260, OS_LOG_TYPE_ERROR))
        {
          v11 = a1[2];
          v14 = 67109120;
          v15 = v11;
          _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to cancel notification, status: %d", &v14, 8u);
        }
      }

      a1[2] = -1;
    }

    v5 = a1[3];
    if (v5 != -1)
    {
      v6 = qword_10002B260;
      if (os_log_type_enabled(qword_10002B260, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v14) = 0;
        _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Unregistering for audio level settings updates", &v14, 2u);
        v5 = a1[3];
      }

      if (notify_cancel(v5))
      {
        v7 = qword_10002B260;
        if (os_log_type_enabled(qword_10002B260, OS_LOG_TYPE_ERROR))
        {
          v12 = a1[3];
          v14 = 67109120;
          v15 = v12;
          _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to cancel notification, status: %d", &v14, 8u);
        }
      }

      a1[3] = -1;
    }

    v8 = a1[4];
    if (v8 != -1)
    {
      v9 = qword_10002B260;
      if (os_log_type_enabled(qword_10002B260, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v14) = 0;
        _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Unregistering for audio sample lifetime settings updates", &v14, 2u);
        v8 = a1[4];
      }

      if (notify_cancel(v8))
      {
        v10 = qword_10002B260;
        if (os_log_type_enabled(qword_10002B260, OS_LOG_TYPE_ERROR))
        {
          v13 = a1[4];
          v14 = 67109120;
          v15 = v13;
          _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to cancel notification, status: %d", &v14, 8u);
        }
      }

      a1[4] = -1;
    }
  }
}

void sub_100004084(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));
  v2 = qword_10002B260;
  if (os_log_type_enabled(qword_10002B260, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Got notification on environmental sound measurement settings update", v3, 2u);
  }

  sub_100004104(Weak, 0);
}

void sub_100004104(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  [a1 readEnvironmentalSoundMeasurementSettings];
  [a1 readAudioLevelAndSamplesLifetimeSettings];
  [a1 readHeadphoneAccommodationsSettings];
  [a1 readBackgroundSoundsSettings];
  [a1 readLeftRightBalanceSettings];
  [a1 readMonoAudioSettings];
  [a1 readMusicEQSettings];
  [a1 readMusicSoundCheckSettings];
  v4 = [[SRAcousticSettingsMusicEQ alloc] initWithSoundCheckEnabled:*(a1 + 28) lateNightModeEnabled:*(a1 + 29)];
  if (!v4)
  {
    v20 = qword_10002B260;
    if (os_log_type_enabled(qword_10002B260, OS_LOG_TYPE_FAULT))
    {
      *v32 = 0;
      _os_log_fault_impl(&_mh_execute_header, v20, OS_LOG_TYPE_FAULT, "Failed to create Music EQ settings", v32, 2u);
    }

    goto LABEL_29;
  }

  v5 = v4;
  v6 = *(a1 + 88);
  if (qword_10002B250 != -1)
  {
    dispatch_once(&qword_10002B250, &stru_100024A68);
  }

  v7 = [objc_msgSend(qword_10002B258 objectForKeyedSubscript:{v6), "intValue"}];
  if (!v7)
  {
    v21 = qword_10002B260;
    if (!os_log_type_enabled(qword_10002B260, OS_LOG_TYPE_FAULT))
    {
LABEL_28:

      goto LABEL_29;
    }

    *v32 = 0;
    v22 = "Collector not able to determine the accessibility background sound setting. New background sounds may be available for user to select.";
LABEL_54:
    _os_log_fault_impl(&_mh_execute_header, v21, OS_LOG_TYPE_FAULT, v22, v32, 2u);
    goto LABEL_28;
  }

  v8 = [[SRAcousticSettingsAccessibilityBackgroundSounds alloc] initWithBackgroundSoundsEnabled:*(a1 + 24) soundName:v7 relativeVolume:*(a1 + 25) playWithMediaEnabled:*(a1 + 26) relativeVolumeWithMedia:*(a1 + 96) stopOnLockEnabled:*(a1 + 104)];
  if (!v8)
  {
    v21 = qword_10002B260;
    if (!os_log_type_enabled(qword_10002B260, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_28;
    }

    *v32 = 0;
    v22 = "Failed to create background sounds settings";
    goto LABEL_54;
  }

  v9 = v8;
  v10 = *(a1 + 72);
  v11 = *(a1 + 64) - 1;
  if (v11 >= 3)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(a1 + 64);
  }

  if ((v10 - 1) >= 3)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(a1 + 72);
  }

  v14 = *(a1 + 80);
  if (v14 > 6 || ((0x55u >> v14) & 1) == 0 || v11 > 2 || (v10 - 1) >= 3)
  {
    v23 = qword_10002B260;
    if (os_log_type_enabled(qword_10002B260, OS_LOG_TYPE_FAULT))
    {
      *v32 = 0;
      v27 = "Collector not able to determine accessibility headphone accommodation setting. New headphone accommodation settings may be available for user to select.";
      goto LABEL_52;
    }

LABEL_26:

    goto LABEL_29;
  }

  v15 = [[SRAcousticSettingsAccessibilityHeadphoneAccommodations alloc] initWithHeadphoneAccommodationsEnabled:*(a1 + 23) mediaEnhanceTuning:v12 mediaEnhanceBoosting:v13 mediaEnhanceApplication:qword_100019390[v14]];
  if (!v15)
  {
    v23 = qword_10002B260;
    if (os_log_type_enabled(qword_10002B260, OS_LOG_TYPE_FAULT))
    {
      *v32 = 0;
      v27 = "Failed to create headphone accommodations settings";
LABEL_52:
      _os_log_fault_impl(&_mh_execute_header, v23, OS_LOG_TYPE_FAULT, v27, v32, 2u);
      goto LABEL_26;
    }

    goto LABEL_26;
  }

  v16 = v15;
  v17 = [[SRAcousticSettingsAccessibility alloc] initWithLeftRightBalance:*(a1 + 27) monoAudioEnabled:v9 backgroundSounds:v15 headphoneAccommodations:*(a1 + 112)];
  if (v17)
  {
    v18 = v17;
    if (*(a1 + 21) == 1)
    {
      v19 = [NSNumber numberWithInteger:*(a1 + 56)];
    }

    else
    {
      v19 = 0;
    }

    v29 = [SRAcousticSettings alloc];
    if (*(a1 + 22))
    {
      v30 = 1;
    }

    else
    {
      v30 = 2;
    }

    v31 = [v29 initWithEnvironmentalSoundMeasurementsEnabled:*(a1 + 20) audioExposureSampleLifetime:v30 headphoneSafetyAudioLevel:v19 musicEQSettings:v5 accessibilitySettings:v18];

    v24 = v31;
    goto LABEL_30;
  }

  v28 = qword_10002B260;
  if (os_log_type_enabled(qword_10002B260, OS_LOG_TYPE_FAULT))
  {
    *v32 = 0;
    _os_log_fault_impl(&_mh_execute_header, v28, OS_LOG_TYPE_FAULT, "Failed to create accessibility settings", v32, 2u);
  }

LABEL_29:
  v24 = 0;
LABEL_30:
  v25 = qword_10002B260;
  if (os_log_type_enabled(qword_10002B260, OS_LOG_TYPE_DEBUG))
  {
    *v32 = 138412290;
    *&v32[4] = v24;
    _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "Acoustic settings sample: %@", v32, 0xCu);
    if (v24)
    {
LABEL_32:
      [*(a1 + 48) provideSample:{v24, *v32}];
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }
  }

  else if (v24)
  {
    goto LABEL_32;
  }

  v26 = qword_10002B260;
  if (!os_log_type_enabled(qword_10002B260, OS_LOG_TYPE_ERROR))
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  *v32 = 0;
  _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Failed to create acoustic settings sample", v32, 2u);
  if (a2)
  {
LABEL_37:
    (*(a2 + 16))(a2);
  }
}

void sub_1000045A0(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));
  v2 = qword_10002B260;
  if (os_log_type_enabled(qword_10002B260, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Got notification on audio level settings update", v3, 2u);
  }

  sub_100004104(Weak, 0);
}

void sub_100004620(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));
  v2 = qword_10002B260;
  if (os_log_type_enabled(qword_10002B260, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Got notification on samples lifetime settings update", v3, 2u);
  }

  sub_100004104(Weak, 0);
}

void sub_10000538C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *sub_10000599C(void *a1, void *a2, void *a3, void *a4)
{
  if (!a1)
  {
    return 0;
  }

  v10.receiver = a1;
  v10.super_class = RDLaunchEvents;
  v7 = objc_msgSendSuper2(&v10, "init");
  if (v7)
  {
    v7[4] = a3;
    v7[3] = a4;
    objc_setProperty_nonatomic(v7, v8, a2, 16);
  }

  return v7;
}

RDXPCActivity *sub_100005AA0(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  if ([a2 isEqualToString:@"com.apple.sensorkit.updateCompanionWithSamples"])
  {
    v4 = *(a1 + 24);

    return sub_100009B38(RDXPCActivity, v4);
  }

  if ([a2 isEqualToString:@"com.apple.sensorkit.removeOldData"])
  {

    return sub_100009DD0();
  }

  if ([a2 isEqualToString:@"com.apple.sensorkit.postMetric"])
  {

    return sub_100009F98();
  }

  if ([a2 isEqualToString:@"com.apple.sensorkit.launchAlsRecorder"])
  {

    return sub_10000A064();
  }

  if ([a2 isEqualToString:@"com.apple.sensorkit.launchUsageCollector"])
  {

    return sub_10000A144();
  }

  if ([a2 isEqualToString:@"com.apple.sensorkit.launchPhoneUsageCollector"])
  {

    return sub_10000A534();
  }

  if ([a2 isEqualToString:@"com.apple.sensorkit.launchMessagesUsageCollector"])
  {

    return sub_10000A5CC();
  }

  if ([a2 isEqualToString:@"com.apple.sensorkit.fetchStrideCalibration"])
  {

    return sub_10000A1F4();
  }

  if ([a2 isEqualToString:@"com.apple.sensorkit.fetchVisits"])
  {

    return sub_10000A2A4();
  }

  if ([a2 isEqualToString:@"com.apple.sensorkit.decryptArchives"])
  {

    return sub_10000A664();
  }

  if ([a2 isEqualToString:@"com.apple.sensorkit.syncCompanionStateToGizmo"])
  {
    v6 = *(a1 + 24);

    return sub_10000A72C(RDXPCActivity, v6);
  }

  if ([a2 isEqualToString:@"com.apple.sensorkit.syncCompanionStateToGizmoLocked"])
  {
    v7 = *(a1 + 24);

    return sub_10000A874(RDXPCActivity, v7);
  }

  if ([a2 isEqualToString:@"com.apple.sensorkit.prepareArchives"])
  {
    v8 = *(a1 + 24);

    return sub_100009C7C(RDXPCActivity, v8);
  }

  if ([a2 isEqualToString:@"com.apple.sensorkit.gcKeys"])
  {

    return sub_100009E9C();
  }

  if ([a2 isEqualToString:@"com.apple.sensorkit.launchMediaEventsRecorder"])
  {

    return sub_10000A36C();
  }

  if ([a2 isEqualToString:@"com.apple.sensorkit.launchAcousticSettingsCollector"])
  {

    return sub_10000A404();
  }

  if (![a2 isEqualToString:@"com.apple.sensorkit.launchSleepSessionsCollector"])
  {
    return 0;
  }

  return sub_10000A49C();
}

void sub_100005E94(uint64_t a1)
{
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 3221225472;
  v1[2] = sub_100005F18;
  v1[3] = &unk_100024AD8;
  v2 = *(a1 + 32);
  _os_activity_initiate(&_mh_execute_header, "Running XPC Activity", OS_ACTIVITY_FLAG_DEFAULT, v1);
}

void sub_1000061A8(uint64_t a1, _xpc_activity_s *a2)
{
  v4 = objc_autoreleasePoolPush();
  Weak = objc_loadWeak((a1 + 40));
  if (!Weak)
  {
    goto LABEL_31;
  }

  v6 = Weak;
  v7 = *(a1 + 32);
  state = xpc_activity_get_state(a2);
  v10 = sub_100005AA0(v6, v7);
  if (!v10)
  {
    v11 = qword_10002B280;
    if (os_log_type_enabled(qword_10002B280, OS_LOG_TYPE_FAULT))
    {
      *v27 = 138543362;
      *&v27[4] = v7;
      _os_log_fault_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "Failed to create and activity named %{public}@", v27, 0xCu);
    }
  }

  if (state == 2)
  {
    if (v10)
    {
      objc_setProperty_nonatomic(v10, v9, a2, 24);
    }

    v16 = objc_loadWeak((v6 + 8));
    if (v16)
    {
      v17 = v16;
      if (objc_opt_respondsToSelector())
      {
        sub_10000ABA4(v10, 4);
        v18 = *(v6 + 16);
        *v27 = _NSConcreteStackBlock;
        *&v27[8] = 3221225472;
        *&v27[16] = sub_100005E94;
        v28 = &unk_100024AD8;
        v29 = v17;
        v30 = v10;
        dispatch_async(v18, v27);
        goto LABEL_31;
      }

      v26 = qword_10002B280;
      if (!os_log_type_enabled(qword_10002B280, OS_LOG_TYPE_INFO))
      {
        goto LABEL_30;
      }

      *v27 = 0;
      v23 = "Delegate does not support receiving launch events based on XPC activities";
      v24 = v26;
      v25 = 2;
    }

    else
    {
      v21 = qword_10002B280;
      if (!os_log_type_enabled(qword_10002B280, OS_LOG_TYPE_INFO))
      {
LABEL_30:
        [(RDXPCActivity *)v10 markCompleted:*v27];
        goto LABEL_31;
      }

      if (v10)
      {
        name = v10->_name;
      }

      else
      {
        name = 0;
      }

      *v27 = 138543362;
      *&v27[4] = name;
      v23 = "No delegate available to run xpc activity %{public}@";
      v24 = v21;
      v25 = 12;
    }

    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, v23, v27, v25);
    goto LABEL_30;
  }

  if (state)
  {
    v19 = qword_10002B280;
    if (os_log_type_enabled(qword_10002B280, OS_LOG_TYPE_DEBUG))
    {
      if (v10)
      {
        v20 = v10->_name;
      }

      else
      {
        v20 = 0;
      }

      *v27 = 134349314;
      *&v27[4] = state;
      *&v27[12] = 2114;
      *&v27[14] = v20;
      _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Unexpected xpc activity state %{public}ld for activity %{public}@", v27, 0x16u);
    }
  }

  else
  {
    v12 = qword_10002B280;
    if (os_log_type_enabled(qword_10002B280, OS_LOG_TYPE_DEFAULT))
    {
      if (v10)
      {
        v13 = v10->_name;
      }

      else
      {
        v13 = 0;
      }

      *v27 = 138543362;
      *&v27[4] = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Checking in for %{public}@", v27, 0xCu);
    }

    sub_10000AA64(v10, a2);
    v14 = objc_loadWeak((v6 + 8));
    if (v10)
    {
      v15 = v14;
      if (objc_opt_respondsToSelector())
      {
        [v15 launchEventCheckInActivity:v10];
      }
    }
  }

LABEL_31:

  objc_autoreleasePoolPop(v4);
}

void sub_10000671C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100006740(uint64_t a1, uint64_t a2)
{
  Weak = objc_loadWeak((a1 + 32));
  if (Weak)
  {
    v4 = objc_loadWeak(Weak + 1);
  }

  else
  {
    v4 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100006800;
    v5[3] = &unk_100024AD8;
    v5[4] = v4;
    v5[5] = a2;
    _os_activity_initiate(&_mh_execute_header, "Running XPC Event Handler", OS_ACTIVITY_FLAG_DEFAULT, v5);
  }
}

void sub_100006800(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) launchEventXPCEventReceived:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

id sub_10000689C(void *a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v7.receiver = a1;
  v7.super_class = StrideCalibrationRecorder;
  v3 = objc_msgSendSuper2(&v7, "init");
  if (v3)
  {
    v4 = [SRSensorWriter alloc];
    *(v3 + 3) = [v4 initWithIdentifier:SRSensorStrideCalibration];
    *(v3 + 1) = a2;
    v5 = sub_10000599C([RDLaunchEvents alloc], a2, 0, 0);
    *(v3 + 2) = v5;
    if (v5)
    {
      objc_storeWeak(v5 + 1, v3);
    }

    [*(v3 + 3) setDelegate:v3];
  }

  return v3;
}

id sub_100007E08(uint64_t a1, void *a2)
{
  v4 = [0 componentsSeparatedByString:@"."];
  v5 = [v4 count];
  do
  {
    if (!v5)
    {
      break;
    }

    v6 = [objc_msgSend(v4 subarrayWithRange:{0, v5), "componentsJoinedByString:", @"."}];
    v7 = a2;
    if ([v6 length])
    {
      v7 = [v6 stringByAppendingFormat:@".%@", a2];
    }

    if ([*(a1 + 24) objectForKey:v7])
    {
      return v7;
    }

    --v5;
  }

  while (![objc_msgSend(v4 objectAtIndexedSubscript:{v5), "isEqualToString:", @"tombstones"}]);
  return a2;
}

uint64_t sub_100007EF8(uint64_t result)
{
  if (result)
  {
    v1 = [*(result + 24) integerForKey:{sub_100007E08(result, @"UpdateCompanionIntervalSeconds"}];
    return v1 & ~(v1 >> 63);
  }

  return result;
}

uint64_t sub_100007F3C(uint64_t result)
{
  if (result)
  {
    v1 = [*(result + 24) integerForKey:{sub_100007E08(result, @"PrepareArchivesIntervalSeconds"}];
    return v1 & ~(v1 >> 63);
  }

  return result;
}

id *sub_100007F80(id *result)
{
  if (result)
  {
    return [result[3] BOOLForKey:@"PrepareArchivesDiskIntensive"];
  }

  return result;
}

id *sub_100007F98(id *result)
{
  if (result)
  {
    return [result[3] BOOLForKey:@"PrepareArchivesCPUIntensive"];
  }

  return result;
}

uint64_t sub_100007FB0(uint64_t result)
{
  if (result)
  {
    v1 = [*(result + 24) integerForKey:{sub_100007E08(result, @"SyncCompanionStateToGizmoInterval"}];
    return v1 & ~(v1 >> 63);
  }

  return result;
}

id *sub_100008290(id *a1, void *a2, void *a3)
{
  v3 = a1;
  if (a1)
  {
    v6 = [[SRSensorWriter alloc] initWithIdentifier:SRSensorMediaEvents];
    v7 = sub_10000599C([RDLaunchEvents alloc], a2, 0, 0);
    v12.receiver = v3;
    v12.super_class = MediaEventsRecorder;
    v8 = objc_msgSendSuper2(&v12, "init");
    v3 = v8;
    if (v8)
    {
      objc_setProperty_nonatomic(v8, v9, a3, 32);
      v3[3] = v6;
      v3[1] = a2;
      v10 = v7;
      v3[2] = v10;
      if (v10)
      {
        objc_storeWeak(v10 + 1, v3);
      }

      [v3[3] setDelegate:v3];
    }
  }

  return v3;
}

uint64_t sub_100008404(uint64_t a1, void *a2)
{
  Weak = objc_loadWeak((a1 + 48));
  v5 = [a2 state];
  v6 = qword_10002B298;
  if (v5 == 1)
  {
    if (os_log_type_enabled(qword_10002B298, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = [a2 error];
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Media events query failed because %{public}@", &v9, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(qword_10002B298, OS_LOG_TYPE_INFO))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Media events query is completed", &v9, 2u);
    }

    if (Weak)
    {
      v7 = Weak[4];
    }

    else
    {
      v7 = 0;
    }

    [v7 setLastMediaEventsQueryDate:*(a1 + 32)];
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_100008538(uint64_t a1, void *a2)
{
  [a2 eventBody];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    Weak = objc_loadWeak((a1 + 32));
    v5 = [a2 eventBody];
    v6 = qword_10002B298;
    if (os_log_type_enabled(qword_10002B298, OS_LOG_TYPE_INFO))
    {
      v17 = 138477827;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Got media rendered event %{private}@", &v17, 0xCu);
    }

    [objc_msgSend(v5 "absoluteTimestamp")];
    v8 = v7;
    v9 = [objc_msgSend(objc_msgSend(v5 "mediaAttributes")];
    if (v9)
    {
      v10 = v9;
      if ([v5 isOnScreen])
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      v12 = [[SRMediaEvent alloc] initWithMediaIdentifier:v10 eventType:v11];
      v13 = qword_10002B298;
      if (os_log_type_enabled(qword_10002B298, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138477827;
        v18 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "SRMediaEvent: %{private}@", &v17, 0xCu);
      }

      if (Weak)
      {
        v14 = Weak[3];
      }

      else
      {
        v14 = 0;
      }

      [v14 provideSample:v12 timestamp:v8];
    }

    else
    {
      v16 = qword_10002B298;
      if (os_log_type_enabled(qword_10002B298, OS_LOG_TYPE_ERROR))
      {
        v17 = 138477827;
        v18 = v5;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Media identifier is nil for:%{private}@", &v17, 0xCu);
      }
    }
  }

  else
  {
    v15 = qword_10002B298;
    if (os_log_type_enabled(qword_10002B298, OS_LOG_TYPE_FAULT))
    {
      v17 = 138477827;
      v18 = a2;
      _os_log_fault_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, "Unexpected object received during media events collection: %{private}@", &v17, 0xCu);
    }
  }
}

void sub_100008C54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100008E10(uint64_t a1, void *a2, void *a3)
{
  if (!a1)
  {
    return;
  }

  if (!a3)
  {
    v7 = 0.0;
    goto LABEL_6;
  }

  if ([objc_msgSend(a2 "uuid")])
  {
    [objc_msgSend(a3 "endTimestamp")];
    v7 = v6;
LABEL_6:
    v8 = [[SRSleepSession alloc] initWithStartDate:objc_msgSend(a2 identifier:"startTimestamp") duration:{objc_msgSend(a2, "uuid"), v7}];
    v9 = qword_10002B2A0;
    if (os_log_type_enabled(qword_10002B2A0, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "SRSleepSession: %@", &v11, 0xCu);
    }

    [*(a1 + 24) provideSample:v8];

    return;
  }

  v10 = qword_10002B2A0;
  if (os_log_type_enabled(qword_10002B2A0, OS_LOG_TYPE_ERROR))
  {
    v11 = 138412546;
    v12 = a2;
    v13 = 2112;
    v14 = a3;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Sleep session has been discarded because events have different UUIDs; start %@, end: %@", &v11, 0x16u);
  }
}

void sub_100009178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  objc_destroyWeak(va);
  objc_destroyWeak((v5 + 40));
  objc_destroyWeak((v6 - 56));
  _Unwind_Resume(a1);
}

BOOL sub_1000091A0(id a1, BMStoreEvent *a2)
{
  v2 = [(BMStoreEvent *)a2 eventBody];

  return [v2 starting];
}

uint64_t sub_1000091CC(uint64_t a1, void *a2, uint64_t a3)
{
  Weak = objc_loadWeak((a1 + 40));
  if ([a2 state] == 1)
  {
    v7 = qword_10002B2A0;
    if (os_log_type_enabled(qword_10002B2A0, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = [a2 error];
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Sleep sessions stream query failed because %@", &v11, 0xCu);
    }

    return (*(*(a1 + 32) + 16))(*(a1 + 32), [a2 error]);
  }

  else
  {
    if (Weak)
    {
      v9 = Weak[4];
    }

    else
    {
      v9 = 0;
    }

    [v9 setSleepSessionsBookmark:a3];
    v10 = qword_10002B2A0;
    if (os_log_type_enabled(qword_10002B2A0, OS_LOG_TYPE_INFO))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Sleep sessions stream query is completed", &v11, 2u);
    }

    return (*(*(a1 + 32) + 16))(*(a1 + 32), 0);
  }
}

void sub_100009330(uint64_t a1, NSString *a2)
{
  Weak = objc_loadWeak((a1 + 32));
  if (![-[NSString events](a2 "events")])
  {
    v17 = qword_10002B2A0;
    if (!os_log_type_enabled(qword_10002B2A0, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 138412290;
    v27 = a2;
    v18 = "Event session is empty, session %@";
    goto LABEL_18;
  }

  v21 = Weak;
  v4 = [(NSString *)a2 events];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = qword_10002B2A0;
        if (os_log_type_enabled(qword_10002B2A0, OS_LOG_TYPE_INFO))
        {
          v10 = [*(*(&v22 + 1) + 8 * i) eventBody];
          *buf = 138412546;
          v27 = v10;
          v28 = 2112;
          v29 = a2;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "###Event: %@, session: %@", buf, 0x16u);
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v6);
  }

  [objc_msgSend(v4 "firstObject")];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = qword_10002B2A0;
    if (!os_log_type_enabled(qword_10002B2A0, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    [objc_msgSend(v4 "firstObject")];
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    *buf = 138412290;
    v27 = v20;
    v18 = "Got unexpected data type:%@";
LABEL_18:
    _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, v18, buf, 0xCu);
    return;
  }

  v11 = [v4 count];
  v12 = [objc_msgSend(v4 "firstObject")];
  v13 = v12;
  if (v11 >= 2)
  {
    v14 = [objc_msgSend(v4 "lastObject")];
    v15 = v21;
    v16 = v13;
LABEL_21:
    sub_100008E10(v15, v16, v14);
    return;
  }

  if ([v12 starting])
  {
    v15 = v21;
    v16 = v13;
    v14 = 0;
    goto LABEL_21;
  }

  v17 = qword_10002B2A0;
  if (os_log_type_enabled(qword_10002B2A0, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v27 = v13;
    v18 = "Discard sleep session end event. Got sleep session end event without start event: %@";
    goto LABEL_18;
  }
}

uint64_t sub_100009614(uint64_t a1, uint64_t a2)
{
  Weak = objc_loadWeak((a1 + 48));
  if (a2)
  {
    v5 = qword_10002B2A0;
    if (os_log_type_enabled(qword_10002B2A0, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = a2;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Sleep sessions query has been completed with error: %@", &v7, 0xCu);
    }
  }

  else
  {
    if (Weak)
    {
      Weak = Weak[4];
    }

    [Weak setLastSleepSessionsQueryDate:*(a1 + 32)];
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_100009A74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

RDXPCActivity *sub_100009B38(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_COMMUNICATES_WITH_PAIRED_DEVICE, 1);
  xpc_dictionary_set_string(v3, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  v4 = sub_100007EF8(a2);
  xpc_dictionary_set_int64(v3, XPC_ACTIVITY_INTERVAL, v4);
  xpc_dictionary_set_string(v3, XPC_ACTIVITY_GROUP_NAME, "com.apple.sensorkitd.startup.group");
  xpc_dictionary_set_uint64(v3, XPC_ACTIVITY_GROUP_CONCURRENCY_LIMIT, 1uLL);
  v5 = sub_100009C2C(RDXPCActivity, @"com.apple.sensorkit.updateCompanionWithSamples", v3);
  xpc_release(v3);
  return v5;
}

RDXPCActivity *sub_100009C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  objc_opt_self();
  v5 = [[RDXPCActivity alloc] initWithName:a2 criteria:a3];

  return v5;
}

RDXPCActivity *sub_100009C7C(uint64_t a1, id *a2)
{
  objc_opt_self();
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  v4 = XPC_ACTIVITY_CPU_INTENSIVE;
  v5 = sub_100007F98(a2);
  xpc_dictionary_set_BOOL(v3, v4, v5);
  v6 = XPC_ACTIVITY_DISK_INTENSIVE;
  v7 = sub_100007F80(a2);
  xpc_dictionary_set_BOOL(v3, v6, v7);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REQUIRES_CLASS_A, 1);
  xpc_dictionary_set_string(v3, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  v8 = sub_100007F3C(a2);
  xpc_dictionary_set_int64(v3, XPC_ACTIVITY_INTERVAL, v8);
  xpc_dictionary_set_string(v3, XPC_ACTIVITY_GROUP_NAME, "com.apple.sensorkitd.startup.group");
  xpc_dictionary_set_uint64(v3, XPC_ACTIVITY_GROUP_CONCURRENCY_LIMIT, 1uLL);
  v9 = sub_100009C2C(RDXPCActivity, @"com.apple.sensorkit.prepareArchives", v3);
  xpc_release(v3);
  return v9;
}

RDXPCActivity *sub_100009DD0()
{
  objc_opt_self();
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v0, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  xpc_dictionary_set_int64(v0, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_1_DAY);
  xpc_dictionary_set_string(v0, XPC_ACTIVITY_GROUP_NAME, "com.apple.sensorkitd.startup.group");
  xpc_dictionary_set_uint64(v0, XPC_ACTIVITY_GROUP_CONCURRENCY_LIMIT, 1uLL);
  v1 = sub_100009C2C(RDXPCActivity, @"com.apple.sensorkit.removeOldData", v0);
  xpc_release(v0);
  return v1;
}

RDXPCActivity *sub_100009E9C()
{
  objc_opt_self();
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v0, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_BOOL(v0, XPC_ACTIVITY_REQUIRES_CLASS_A, 1);
  xpc_dictionary_set_string(v0, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  xpc_dictionary_set_int64(v0, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_1_DAY);
  xpc_dictionary_set_string(v0, XPC_ACTIVITY_GROUP_NAME, "com.apple.sensorkitd.startup.group");
  xpc_dictionary_set_uint64(v0, XPC_ACTIVITY_GROUP_CONCURRENCY_LIMIT, 1uLL);
  v1 = sub_100009C2C(RDXPCActivity, @"com.apple.sensorkit.gcKeys", v0);
  xpc_release(v0);
  return v1;
}

RDXPCActivity *sub_100009F98()
{
  objc_opt_self();
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v0, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  xpc_dictionary_set_int64(v0, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_1_DAY);
  xpc_dictionary_set_string(v0, XPC_ACTIVITY_GROUP_NAME, "com.apple.sensorkitd.startup.group");
  xpc_dictionary_set_uint64(v0, XPC_ACTIVITY_GROUP_CONCURRENCY_LIMIT, 1uLL);
  v1 = sub_100009C2C(RDXPCActivity, @"com.apple.sensorkit.postMetric", v0);
  xpc_release(v0);
  return v1;
}

RDXPCActivity *sub_10000A064()
{
  objc_opt_self();
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v0, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_string(v0, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  xpc_dictionary_set_int64(v0, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_15_MIN);
  xpc_dictionary_set_BOOL(v0, XPC_ACTIVITY_REQUIRES_CLASS_A, 1);
  xpc_dictionary_set_BOOL(v0, XPC_ACTIVITY_REPEATING, 1);
  v1 = sub_100009C2C(RDXPCActivity, @"com.apple.sensorkit.launchAlsRecorder", v0);
  xpc_release(v0);
  return v1;
}

RDXPCActivity *sub_10000A144()
{
  objc_opt_self();
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v0, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  xpc_dictionary_set_int64(v0, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_1_DAY);
  xpc_dictionary_set_BOOL(v0, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  v1 = sub_100009C2C(RDXPCActivity, @"com.apple.sensorkit.launchUsageCollector", v0);
  xpc_release(v0);
  return v1;
}

RDXPCActivity *sub_10000A1F4()
{
  objc_opt_self();
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v0, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_string(v0, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  xpc_dictionary_set_int64(v0, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_1_DAY);
  v1 = sub_100009C2C(RDXPCActivity, @"com.apple.sensorkit.fetchStrideCalibration", v0);
  xpc_release(v0);
  return v1;
}

RDXPCActivity *sub_10000A2A4()
{
  objc_opt_self();
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v0, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_string(v0, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  xpc_dictionary_set_int64(v0, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_1_DAY);
  xpc_dictionary_set_BOOL(v0, XPC_ACTIVITY_REQUIRES_CLASS_A, 1);
  v1 = sub_100009C2C(RDXPCActivity, @"com.apple.sensorkit.fetchVisits", v0);
  xpc_release(v0);
  return v1;
}

RDXPCActivity *sub_10000A36C()
{
  objc_opt_self();
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v0, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  xpc_dictionary_set_int64(v0, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_1_DAY);
  v1 = sub_100009C2C(RDXPCActivity, @"com.apple.sensorkit.launchMediaEventsRecorder", v0);
  xpc_release(v0);
  return v1;
}

RDXPCActivity *sub_10000A404()
{
  objc_opt_self();
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v0, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  xpc_dictionary_set_int64(v0, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_1_DAY);
  v1 = sub_100009C2C(RDXPCActivity, @"com.apple.sensorkit.launchAcousticSettingsCollector", v0);
  xpc_release(v0);
  return v1;
}

RDXPCActivity *sub_10000A49C()
{
  objc_opt_self();
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v0, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  xpc_dictionary_set_int64(v0, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_1_DAY);
  v1 = sub_100009C2C(RDXPCActivity, @"com.apple.sensorkit.launchSleepSessionsCollector", v0);
  xpc_release(v0);
  return v1;
}

RDXPCActivity *sub_10000A534()
{
  objc_opt_self();
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v0, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  xpc_dictionary_set_int64(v0, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_1_DAY);
  v1 = sub_100009C2C(RDXPCActivity, @"com.apple.sensorkit.launchPhoneUsageCollector", v0);
  xpc_release(v0);
  return v1;
}

RDXPCActivity *sub_10000A5CC()
{
  objc_opt_self();
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v0, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  xpc_dictionary_set_int64(v0, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_1_DAY);
  v1 = sub_100009C2C(RDXPCActivity, @"com.apple.sensorkit.launchMessagesUsageCollector", v0);
  xpc_release(v0);
  return v1;
}

RDXPCActivity *sub_10000A664()
{
  objc_opt_self();
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v0, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_string(v0, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  xpc_dictionary_set_int64(v0, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_8_HOURS);
  xpc_dictionary_set_BOOL(v0, XPC_ACTIVITY_REQUIRES_CLASS_A, 1);
  v1 = sub_100009C2C(RDXPCActivity, @"com.apple.sensorkit.decryptArchives", v0);
  xpc_release(v0);
  return v1;
}

RDXPCActivity *sub_10000A72C(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_string(v3, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REQUIRES_CLASS_A, 1);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_COMMUNICATES_WITH_PAIRED_DEVICE, 1);
  v4 = sub_100007FB0(a2);
  xpc_dictionary_set_int64(v3, XPC_ACTIVITY_INTERVAL, v4);
  v5 = sub_100007FB0(a2);
  xpc_dictionary_set_int64(v3, XPC_ACTIVITY_GRACE_PERIOD, 2 * v5);
  xpc_dictionary_set_string(v3, XPC_ACTIVITY_GROUP_NAME, "com.apple.sensorkitd.startup.group");
  xpc_dictionary_set_uint64(v3, XPC_ACTIVITY_GROUP_CONCURRENCY_LIMIT, 1uLL);
  v6 = sub_100009C2C(RDXPCActivity, @"com.apple.sensorkit.syncCompanionStateToGizmo", v3);
  xpc_release(v3);
  return v6;
}

RDXPCActivity *sub_10000A874(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_string(v3, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_COMMUNICATES_WITH_PAIRED_DEVICE, 1);
  v4 = sub_100007FB0(a2);
  xpc_dictionary_set_int64(v3, XPC_ACTIVITY_INTERVAL, 2 * v4);
  xpc_dictionary_set_string(v3, XPC_ACTIVITY_GROUP_NAME, "com.apple.sensorkitd.startup.group");
  xpc_dictionary_set_uint64(v3, XPC_ACTIVITY_GROUP_CONCURRENCY_LIMIT, 1uLL);
  v5 = sub_100009C2C(RDXPCActivity, @"com.apple.sensorkit.syncCompanionStateToGizmoLocked", v3);
  xpc_release(v3);
  return v5;
}

uint64_t sub_10000AA64(uint64_t result, xpc_activity_t activity)
{
  if (result)
  {
    v3 = result;
    v4 = xpc_activity_copy_criteria(activity);
    if (!v4 || !xpc_equal(v4, *(v3 + 16)))
    {
      xpc_activity_set_criteria(activity, *(v3 + 16));
    }

    return _objc_release_x2();
  }

  return result;
}

void sub_10000ABA4(uint64_t a1, xpc_activity_state_t a2)
{
  if (a1 && !xpc_activity_set_state(*(a1 + 24), a2))
  {
    v4 = qword_10002B2A8;
    if (os_log_type_enabled(qword_10002B2A8, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 8);
      v6 = 138543618;
      v7 = v5;
      v8 = 2050;
      v9 = a2;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to mark the activity %{public}@ as %{public}ld", &v6, 0x16u);
    }
  }
}

void sub_10000C438(id a1)
{
  v1 = MGCopyAnswer();
  if (v1)
  {
    v2 = v1;
    v3 = CFGetTypeID(v1);
    if (v3 == CFStringGetTypeID())
    {
      qword_10002B2D8 = [v2 copy];
    }

    CFRelease(v2);
  }
}

void start()
{
  if (_set_user_dir_suffix())
  {
    NSTemporaryDirectory();
  }

  inactive = dispatch_workloop_create_inactive("com.apple.SensorKitALSHelper.main");
  dispatch_set_qos_class_fallback();
  dispatch_activate(inactive);
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3052000000;
  v11[3] = sub_10000C7D8;
  v11[4] = sub_10000C7E8;
  v11[5] = 0;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3052000000;
  v10[3] = sub_10000C7D8;
  v10[4] = sub_10000C7E8;
  v10[5] = 0;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3052000000;
  v9[3] = sub_10000C7D8;
  v9[4] = sub_10000C7E8;
  v9[5] = 0;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3052000000;
  v8[3] = sub_10000C7D8;
  v8[4] = sub_10000C7E8;
  v8[5] = 0;
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x3052000000;
  v7[3] = sub_10000C7D8;
  v7[4] = sub_10000C7E8;
  v7[5] = 0;
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3052000000;
  v6[3] = sub_10000C7D8;
  v6[4] = sub_10000C7E8;
  v6[5] = 0;
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x3052000000;
  v5[3] = sub_10000C7D8;
  v5[4] = sub_10000C7E8;
  v5[5] = 0;
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x3052000000;
  v4[3] = sub_10000C7D8;
  v4[4] = sub_10000C7E8;
  v4[5] = 0;
  v3[0] = 0;
  v3[1] = v3;
  v3[2] = 0x3052000000;
  v3[3] = sub_10000C7D8;
  v3[4] = sub_10000C7E8;
  v3[5] = 0;
  v1 = objc_autoreleasePoolPush();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000C7F4;
  block[3] = &unk_100024D48;
  block[4] = inactive;
  block[5] = v11;
  block[6] = v10;
  block[7] = v9;
  block[8] = v8;
  block[9] = v7;
  block[10] = v6;
  block[11] = v4;
  block[12] = v3;
  block[13] = v5;
  dispatch_async_and_wait(inactive, block);
  objc_autoreleasePoolPop(v1);
  dispatch_main();
}

void sub_10000C760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose(&a48, 8);
  _Block_object_dispose(&a54, 8);
  _Block_object_dispose((v54 - 232), 8);
  _Block_object_dispose((v54 - 184), 8);
  _Block_object_dispose((v54 - 136), 8);
  _Unwind_Resume(a1);
}

id sub_10000C7F4(uint64_t a1)
{
  v2 = [SRCHClient alloc];
  if (v2)
  {
    v2 = -[SRCHClient initWithQueue:XPCConnection:](v2, "initWithQueue:XPCConnection:", *(a1 + 32), [objc_opt_class() _connectionToService]);
  }

  *(*(*(a1 + 40) + 8) + 40) = v2;
  *(*(*(a1 + 48) + 8) + 40) = sub_10000599C([RDLaunchEvents alloc], *(a1 + 32), 0, 0);
  *(*(*(a1 + 56) + 8) + 40) = sub_100003394([ALSRecorder alloc], *(a1 + 32));
  *(*(*(a1 + 64) + 8) + 40) = objc_alloc_init(SRDataCollectorsDefaults);
  *(*(*(a1 + 72) + 8) + 40) = sub_10000CC64([UsageReportGenerator alloc], *(a1 + 32), *(*(*(a1 + 40) + 8) + 40), *(*(*(a1 + 64) + 8) + 40));
  *(*(*(a1 + 80) + 8) + 40) = sub_10000689C([StrideCalibrationRecorder alloc], *(a1 + 32));
  *(*(*(a1 + 88) + 8) + 40) = sub_1000022FC([VisitCollector alloc], *(a1 + 32), *(*(*(a1 + 64) + 8) + 40));
  *(*(*(a1 + 96) + 8) + 40) = sub_100008290([MediaEventsRecorder alloc], *(a1 + 32), *(*(*(a1 + 64) + 8) + 40));
  *(*(*(a1 + 104) + 8) + 40) = sub_100003CAC([AcousticSettingsCollector alloc], *(a1 + 32));
  v3 = *(*(*(a1 + 48) + 8) + 40);

  return [v3 registerForXPCEvent:@"com.apple.notifyd.matching"];
}

id sub_10000C9A8(double a1, double a2, uint64_t a3, void *a4)
{
  objc_opt_self();
  [a4 timeIntervalSinceReferenceDate];
  v8 = [[NSDateInterval alloc] initWithStartDate:+[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate duration:{"dateWithTimeIntervalSinceReferenceDate:", floor(v7 / a1) * a1), a2}];

  return v8;
}

NSArray *sub_10000CAD8(void *a1, void *a2, void *a3, double a4)
{
  v7 = [a1 laterDate:{objc_msgSend(a3, "startDate")}];
  [objc_msgSend(a2 earlierDate:{objc_msgSend(a3, "endDate")), "timeIntervalSinceDate:", v7}];
  if (v8 < 0.0)
  {
    return &__NSArray0__struct;
  }

  v10 = v8;
  v11 = +[NSMutableArray array];
  do
  {
    [objc_msgSend(sub_10000C9A8(a4 a4];
    v13 = fmin(v12, v10);
    v14 = [[NSDateInterval alloc] initWithStartDate:v7 duration:v13];
    [v11 addObject:v14];

    v10 = v10 - v13;
    v7 = [v7 dateByAddingTimeInterval:v13];
  }

  while (v10 > 0.0);

  return [NSArray arrayWithArray:v11];
}

id sub_10000CC64(id result, void *a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v7 = result;
    v8 = sub_10000599C([RDLaunchEvents alloc], a2, 0, 0);
    v9 = [v7 initWithLaunchEvents:v8 usageReportWriter:objc_msgSend([SRSensorWriter alloc] messagesUsageReportWriter:"initWithIdentifier:" phoneUsageReportWriter:SRSensorDeviceUsageReport) chClient:objc_msgSend([SRSensorWriter alloc] queue:"initWithIdentifier:" defaults:{SRSensorMessagesUsageReport), objc_msgSend([SRSensorWriter alloc], "initWithIdentifier:", SRSensorPhoneUsageReport), a3, a2, a4}];

    return v9;
  }

  return result;
}

BOOL sub_10000D130(_BOOL8 result, uint64_t a2)
{
  if (result)
  {
    v5 = 0;
    v3 = [LSApplicationRecord sr_applicationRecordWithIdentifier:a2 error:&v5];
    if (!v3)
    {
      v4 = qword_10002B2E0;
      if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v7 = a2;
        v8 = 2114;
        v9 = v5;
        _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to find application record for %{public}@ because %{public}@", buf, 0x16u);
      }
    }

    return [v3 developerType] == 1;
  }

  return result;
}

void sub_10000D220(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v21 = [_DKQuery startDateSortDescriptorAscending:1];
  v8 = [NSArray arrayWithObjects:&v21 count:1];
  v20[0] = [NSPredicate predicateWithFormat:@"mechanism IN %@", a3];
  v20[1] = +[_DKQuery predicateForEventsWithStartOrEndInDateRangeWithFrom:to:](_DKQuery, "predicateForEventsWithStartOrEndInDateRangeWithFrom:to:", [a2 startDate], objc_msgSend(a2, "endDate"));
  v9 = [NSCompoundPredicate andPredicateWithSubpredicates:[NSArray arrayWithObjects:v20 count:2]];
  v10 = +[_CDInteractionRecorder interactionRecorder];
  v11 = qword_10002B2E0;
  if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v15 = a2;
    v16 = 2114;
    v17 = v9;
    v18 = 2114;
    v19 = a3;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Querying interval %{public}@ with predicate %{public}@ for mechanisms %{public}@", buf, 0x20u);
  }

  objc_initWeak(buf, a1);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000D458;
  v12[3] = &unk_100024D70;
  objc_copyWeak(&v13, buf);
  v12[4] = a2;
  v12[5] = a4;
  [v10 queryInteractionsUsingPredicate:v9 sortDescriptors:v8 limit:0 completionHandler:v12];
  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
}

void sub_10000D434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_10000D458(uint64_t a1, void *a2, uint64_t a3)
{
  Weak = objc_loadWeak((a1 + 48));
  if (!a2 || a3)
  {
    v70 = *(*(a1 + 40) + 16);

    return v70();
  }

  else
  {
    v6 = Weak;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v7 = [a2 countByEnumeratingWithState:&v82 objects:v94 count:16];
    if (v7)
    {
      v9 = v7;
      v10 = *v83;
      *&v8 = 138543874;
      v71 = v8;
      v72 = *v83;
      v73 = a2;
      do
      {
        v11 = 0;
        v75 = v9;
        do
        {
          if (*v83 != v10)
          {
            objc_enumerationMutation(a2);
          }

          v12 = *(*(&v82 + 1) + 8 * v11);
          v13 = objc_autoreleasePoolPush();
          if ([v12 bundleId] && sub_10000D130(v6, objc_msgSend(v12, "bundleId")))
          {
            if ([v12 startDate] && objc_msgSend(v12, "endDate"))
            {
              if ([objc_msgSend(v12 "startDate")] == 1)
              {
                v14 = qword_10002B2E0;
                if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_FAULT))
                {
                  v15 = v13;
                  v16 = [v12 startDate];
                  v17 = [v12 endDate];
                  *buf = 138543618;
                  v108 = v16;
                  v13 = v15;
                  v109 = 2114;
                  v110 = v17;
                  _os_log_fault_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "Start date after end date. start: %{public}@ end: %{public}@", buf, 0x16u);
                }
              }

              else
              {
                v76 = v13;
                v77 = v11;
                if (v6)
                {
                  v24 = *(a1 + 32);
                  [v6[27] phoneUsageReportInterval];
                  v26 = v25;
                  v27 = [v12 mechanism];
                  if (v27 <= 0x10)
                  {
                    if (((1 << v27) & 0x11C00) != 0)
                    {
                      v28 = [v12 sr_dateIntervalsInBucketsOf:v24 duringQueryInterval:v26];
                      v90 = 0u;
                      v91 = 0u;
                      v92 = 0u;
                      v93 = 0u;
                      obj = v28;
                      v80 = [v28 countByEnumeratingWithState:&v90 objects:buf count:16];
                      if (v80)
                      {
                        v79 = *v91;
                        v81 = v12;
                        do
                        {
                          for (i = 0; i != v80; i = i + 1)
                          {
                            if (*v91 != v79)
                            {
                              objc_enumerationMutation(obj);
                            }

                            v30 = *(*(&v90 + 1) + 8 * i);
                            v31 = qword_10002B2E0;
                            if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_DEFAULT))
                            {
                              v32 = [v12 startDate];
                              v33 = [v12 endDate];
                              v34 = [v30 startDate];
                              v35 = [v30 endDate];
                              *v99 = 138544130;
                              v100 = v32;
                              v101 = 2114;
                              v102 = v33;
                              v103 = 2114;
                              v104 = v34;
                              v12 = v81;
                              v105 = 2114;
                              v106 = v35;
                              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "CDInteraction with start date: %{public}@, end date: %{public}@; Using date interval: %{public}@, end date: %{public}@", v99, 0x2Au);
                              v31 = qword_10002B2E0;
                            }

                            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                            {
                              *v99 = 138477827;
                              v100 = v12;
                              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "CDInteraction: %{private}@", v99, 0xCu);
                            }

                            v36 = [v30 startDate];
                            [v6[27] phoneUsageReportInterval];
                            v38 = v37;
                            if ([v6[27] bypassQueryFromMidnightToMidnight])
                            {
                              v39 = sub_10000C9A8(v38, v38, NSDateInterval, v36);
                            }

                            else
                            {
                              v39 = [[NSDateInterval alloc] initWithStartDate:objc_msgSend(v36 duration:{"sr_localMidnightPriorToDate"), v38}];
                            }

                            v40 = v39;
                            v41 = [v6[5] objectForKeyedSubscript:v39];
                            if (!v41)
                            {
                              v41 = [SRPhoneUsageReport usageReportWithInterval:v40];
                              [v6[5] setObject:v41 forKeyedSubscript:v40];
                            }

                            v42 = v6;

                            v43 = [v12 direction];
                            if (v43 == 1)
                            {
                              [(SRPhoneUsageReport *)v41 setTotalOutgoingCalls:[(SRPhoneUsageReport *)v41 totalOutgoingCalls]+ 1];
                              v88 = 0u;
                              v89 = 0u;
                              v86 = 0u;
                              v87 = 0u;
                              v44 = [v12 recipients];
                              v45 = [v44 countByEnumeratingWithState:&v86 objects:&v95 count:16];
                              if (v45)
                              {
                                v46 = v45;
                                v47 = *v87;
                                do
                                {
                                  for (j = 0; j != v46; j = j + 1)
                                  {
                                    if (*v87 != v47)
                                    {
                                      objc_enumerationMutation(v44);
                                    }

                                    v49 = *(*(&v86 + 1) + 8 * j);
                                    if ([v49 identifier])
                                    {
                                      [-[SRPhoneUsageReport uniqueContacts](v41 "uniqueContacts")];
                                    }
                                  }

                                  v46 = [v44 countByEnumeratingWithState:&v86 objects:&v95 count:16];
                                }

                                while (v46);
                              }
                            }

                            else if (!v43)
                            {
                              [(SRPhoneUsageReport *)v41 setTotalIncomingCalls:[(SRPhoneUsageReport *)v41 totalIncomingCalls]+ 1];
                              if ([objc_msgSend(v81 "sender")])
                              {
                                [-[SRPhoneUsageReport uniqueContacts](v41 "uniqueContacts")];
                              }
                            }

                            [v30 duration];
                            v51 = v50;
                            [(SRPhoneUsageReport *)v41 totalPhoneCallDuration];
                            [(SRPhoneUsageReport *)v41 setTotalPhoneCallDuration:v51 + v52];
                            [(SRPhoneUsageReport *)v41 totalPhoneCallDuration];
                            if (v53 > v26)
                            {
                              v54 = qword_10002B2E0;
                              if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_FAULT))
                              {
                                *v99 = 0;
                                _os_log_fault_impl(&_mh_execute_header, v54, OS_LOG_TYPE_FAULT, "Phone usage duration too long", v99, 2u);
                              }
                            }

                            v12 = v81;
                            v6 = v42;
                          }

                          v80 = [obj countByEnumeratingWithState:&v90 objects:buf count:16];
                        }

                        while (v80);
                      }
                    }

                    else if (((1 << v27) & 0x1C) != 0)
                    {
                      v55 = [v12 sr_startDateWithQueryInterval:v24];
                      v56 = qword_10002B2E0;
                      if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_DEFAULT))
                      {
                        v57 = [v12 startDate];
                        v58 = [v12 endDate];
                        *buf = v71;
                        v108 = v57;
                        v109 = 2114;
                        v110 = v58;
                        v111 = 2114;
                        v112 = v55;
                        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "CDInteraction with start date: %{public}@, end date: %{public}@; Using start date: %{public}@", buf, 0x20u);
                        v56 = qword_10002B2E0;
                      }

                      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138477827;
                        v108 = v12;
                        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "CDInteraction: %{private}@", buf, 0xCu);
                      }

                      [v6[27] messagesUsageReportInterval];
                      v60 = sub_10000C9A8(v59, v59, NSDateInterval, v55);
                      v61 = [v6[4] objectForKeyedSubscript:v60];
                      if (!v61)
                      {
                        v61 = [SRMessagesUsageReport usageReportWithInterval:v60];
                        [v6[4] setObject:v61 forKeyedSubscript:v60];
                      }

                      v62 = [v12 direction];
                      if (v62 == 1)
                      {
                        [(SRMessagesUsageReport *)v61 setTotalOutgoingMessages:[(SRMessagesUsageReport *)v61 totalOutgoingMessages]+ 1];
                        v97 = 0u;
                        v98 = 0u;
                        v95 = 0u;
                        v96 = 0u;
                        v63 = [v12 recipients];
                        v64 = [v63 countByEnumeratingWithState:&v95 objects:buf count:16];
                        if (v64)
                        {
                          v65 = v64;
                          v66 = *v96;
                          do
                          {
                            for (k = 0; k != v65; k = k + 1)
                            {
                              if (*v96 != v66)
                              {
                                objc_enumerationMutation(v63);
                              }

                              v68 = *(*(&v95 + 1) + 8 * k);
                              if ([v68 identifier])
                              {
                                [-[SRMessagesUsageReport uniqueContacts](v61 "uniqueContacts")];
                              }
                            }

                            v65 = [v63 countByEnumeratingWithState:&v95 objects:buf count:16];
                          }

                          while (v65);
                        }
                      }

                      else if (!v62)
                      {
                        if ([objc_msgSend(v12 "sender")])
                        {
                          [-[SRMessagesUsageReport uniqueContacts](v61 "uniqueContacts")];
                        }

                        [(SRMessagesUsageReport *)v61 setTotalIncomingMessages:[(SRMessagesUsageReport *)v61 totalIncomingMessages]+ 1];
                      }
                    }
                  }
                }

                v10 = v72;
                a2 = v73;
                v9 = v75;
                v13 = v76;
                v11 = v77;
              }
            }

            else
            {
              v20 = qword_10002B2E0;
              if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_ERROR))
              {
                v21 = v13;
                v22 = [v12 startDate];
                v23 = [v12 endDate];
                *buf = 138543618;
                v108 = v22;
                v13 = v21;
                v109 = 2114;
                v110 = v23;
                _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Invalid dates. start: %{public}@ end: %{public}@", buf, 0x16u);
              }
            }
          }

          else
          {
            v18 = qword_10002B2E0;
            if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_DEFAULT))
            {
              v19 = [v12 bundleId];
              *buf = 138477827;
              v108 = v19;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Interaction is not an Apple bundle: %{private}@", buf, 0xCu);
            }
          }

          objc_autoreleasePoolPop(v13);
          v11 = v11 + 1;
        }

        while (v11 != v9);
        v9 = [a2 countByEnumeratingWithState:&v82 objects:v94 count:16];
      }

      while (v9);
    }

    return (*(*(a1 + 40) + 16))();
  }
}

void sub_10000DE50(uint64_t a1, uint64_t a2)
{
  Weak = objc_loadWeak((a1 + 56));
  v6 = Weak;
  if (Weak)
  {
    Weak = objc_getProperty(Weak, v5, 40, 1);
  }

  v7 = [objc_msgSend(Weak "allKeys")];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v21;
    do
    {
      v12 = 0;
      do
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v7);
        }

        if (v6)
        {
          v13 = [objc_getProperty(v6 v9];
          Property = objc_getProperty(v6, v14, 24, 1);
        }

        else
        {
          v13 = [0 objectForKeyedSubscript:*(*(&v20 + 1) + 8 * v12)];
          Property = 0;
        }

        [v13 startTime];
        [Property provideSample:v13 timestamp:?];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v16 = [v7 countByEnumeratingWithState:&v20 objects:v26 count:16];
      v10 = v16;
    }

    while (v16);
  }

  if (v6)
  {
    v17 = objc_getProperty(v6, v9, 40, 1);
  }

  else
  {
    v17 = 0;
  }

  [v17 removeAllObjects];
  [*(a1 + 32) markCompleted];

  if (a2)
  {
    v18 = qword_10002B2E0;
    if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v25 = a2;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Error fetching Interaction History for phone usage stream from CoreDuet. %{public}@", buf, 0xCu);
    }
  }

  else
  {
    if (v6)
    {
      v19 = v6[27];
    }

    else
    {
      v19 = 0;
    }

    [v19 setLastPhoneUsageQueryDate:*(a1 + 48)];
  }
}

void sub_10000E07C(uint64_t a1, uint64_t a2)
{
  Weak = objc_loadWeak((a1 + 56));
  v6 = Weak;
  if (Weak)
  {
    Weak = objc_getProperty(Weak, v5, 32, 1);
  }

  v7 = [objc_msgSend(Weak "allKeys")];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v21;
    do
    {
      v12 = 0;
      do
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v7);
        }

        if (v6)
        {
          v13 = [objc_getProperty(v6 v9];
          Property = objc_getProperty(v6, v14, 16, 1);
        }

        else
        {
          v13 = [0 objectForKeyedSubscript:*(*(&v20 + 1) + 8 * v12)];
          Property = 0;
        }

        [v13 startTime];
        [Property provideSample:v13 timestamp:?];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v16 = [v7 countByEnumeratingWithState:&v20 objects:v26 count:16];
      v10 = v16;
    }

    while (v16);
  }

  if (v6)
  {
    v17 = objc_getProperty(v6, v9, 32, 1);
  }

  else
  {
    v17 = 0;
  }

  [v17 removeAllObjects];
  [*(a1 + 32) markCompleted];

  if (a2)
  {
    v18 = qword_10002B2E0;
    if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v25 = a2;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Error fetching Interaction History for messages usage stream from CoreDuet. %{public}@", buf, 0xCu);
    }
  }

  else
  {
    if (v6)
    {
      v19 = v6[27];
    }

    else
    {
      v19 = 0;
    }

    [v19 setLastMessagesUsageQueryDate:*(a1 + 48)];
  }
}

void *sub_10000E2A8(uint64_t a1, void *a2, void *a3)
{
  v3 = 0;
  if (a3 && a2 && *(a1 + 192))
  {
    [a3 timeIntervalSinceReferenceDate];
    v8 = v7;
    [a2 timeIntervalSinceReferenceDate];
    if (v8 >= v9 && (v10 = [[NSDateInterval alloc] initWithStartDate:a2 endDate:a3], v17 = 0u, v18 = 0u, v19 = 0u, v20 = 0u, v11 = *(a1 + 192), (v12 = objc_msgSend(v11, "countByEnumeratingWithState:objects:count:", &v17, v21, 16)) != 0))
    {
      v13 = v12;
      v14 = *v18;
LABEL_7:
      v15 = 0;
      while (1)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v3 = *(*(&v17 + 1) + 8 * v15);
        if ([v3 intersectsDateInterval:v10])
        {
          break;
        }

        if (v13 == ++v15)
        {
          v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
          v3 = 0;
          if (v13)
          {
            goto LABEL_7;
          }

          return v3;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

SRDeviceUsageReport *sub_10000E414(uint64_t a1, void *a2)
{
  v3 = sub_10000C9A8(900.0, 900.0, NSDateInterval, a2);
  v4 = [*(a1 + 56) objectForKeyedSubscript:v3];
  if (!v4)
  {
    v4 = [SRDeviceUsageReport deviceUsageReportWithInterval:v3];
    [*(a1 + 56) setObject:v4 forKeyedSubscript:v3];
    block = _NSConcreteStackBlock;
    v7 = 3221225472;
    v8 = sub_10000E86C;
    v9 = &unk_100024A10;
    v10 = a1;
    if (qword_10002B2E8 != -1)
    {
      dispatch_once(&qword_10002B2E8, &block);
    }

    [(SRDeviceUsageReport *)v4 setVersion:[NSString stringWithFormat:@"SupplementalCategories=%@, DataSourceVersion=1.0", qword_10002B2F0, block, v7, v8, v9, v10]];
  }

  return v4;
}

id sub_10000E538(id result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v12 = 0;
    v4 = [LSApplicationRecord sr_applicationRecordWithIdentifier:a2 error:&v12];
    v5 = v12;
    if (v12)
    {
      v6 = qword_10002B2E0;
      if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v14 = v5;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to get application record because %{public}@", buf, 0xCu);
      }

      return 0;
    }

    v7 = v4;
    v8 = [v4 iTunesMetadata];
    result = sub_10000E6E0([v8 genre]);
    if (!result)
    {
      +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v8 genreIdentifier]);
      if (qword_10002B308 != -1)
      {
        dispatch_once(&qword_10002B308, &stru_100025298);
      }

      result = [qword_10002B310 objectForKeyedSubscript:?];
      if (!result)
      {
        if (!sub_10000D130(v3, a2))
        {
          return 0;
        }

        v9 = [v7 infoDictionary];
        v10 = objc_opt_class();
        v11 = [objc_msgSend(v9 objectForKey:@"SBMatchingApplicationGenres" ofClass:v10 valuesOfClass:{objc_opt_class()), "firstObject"}];
        return sub_10000E6E0(v11);
      }
    }
  }

  return result;
}

id sub_10000E6E0(uint64_t a1)
{
  if (qword_10002B2F8 != -1)
  {
    dispatch_once(&qword_10002B2F8, &stru_100025278);
  }

  v2 = qword_10002B300;

  return [v2 objectForKeyedSubscript:a1];
}

uint64_t sub_10000E744(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v9 = 0;
    v3 = [LSApplicationRecord sr_applicationRecordWithIdentifier:a2 error:&v9];
    if (v3)
    {
      v4 = v3;
      v5 = [objc_msgSend(v3 "appTags")];
      v6 = [objc_msgSend(v4 "appTags")];
      result = 0;
      if ((v5 & 1) == 0 && (v6 & 1) == 0)
      {
        return [v4 isLaunchProhibited] ^ 1;
      }
    }

    else
    {
      v7 = qword_10002B2E0;
      v8 = os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_DEFAULT);
      result = 0;
      if (v8)
      {
        *buf = 138543618;
        v11 = a2;
        v12 = 2114;
        v13 = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Unable to find an application record for %{public}@ because %{public}@", buf, 0x16u);
        return 0;
      }
    }
  }

  return result;
}

id sub_10000E86C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 80);
  }

  else
  {
    v2 = 0;
  }

  result = [sub_1000020A8(v2) copy];
  qword_10002B2F0 = result;
  return result;
}

id *sub_10000E8A4(id *result, const char *a2)
{
  if (result)
  {
    v2 = result;
    objc_setProperty_nonatomic(result, a2, 0, 208);
    objc_setProperty_nonatomic(v2, v3, 0, 200);
    [v2[7] removeAllObjects];
    [v2[9] removeAllObjects];
    [v2[12] removeAllObjects];
    [v2[13] removeAllObjects];
    [v2[14] removeAllObjects];
    [v2[15] removeAllObjects];
    [v2[17] removeAllObjects];
    [v2[16] removeAllObjects];
    [v2[18] removeAllObjects];
    [v2[19] removeAllObjects];
    [v2[20] removeAllObjects];
    [v2[21] removeAllObjects];
    [v2[22] removeAllObjects];
    [v2[23] removeAllObjects];
    v4 = v2[24];

    return [v4 removeAllObjects];
  }

  return result;
}

void sub_10000E96C(id *a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    v6 = os_transaction_create();
    objc_initWeak(&location, a1);
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_10000ECB4;
    v16 = &unk_100024E68;
    objc_copyWeak(&v21, &location);
    v17 = a3;
    v18 = v6;
    v19 = a2;
    v20 = a1;
    v7 = qword_10002B2E0;
    if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [a2 startDate];
      v9 = [a2 endDate];
      *buf = 138412546;
      *&buf[4] = v8;
      *&buf[12] = 2112;
      *&buf[14] = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Querying Biome streams for service data; interval with start date:%@, end date:%@", buf, 0x16u);
    }

    v10 = [[BMPublisherOptions alloc] initWithStartDate:objc_msgSend(a2 endDate:"startDate") maxEvents:objc_msgSend(a2 lastN:"endDate") reversed:{0, 0, 0}];
    v11 = +[BMEventSession sessionPublisherWithStreamPublisher:startingBlock:endingBlock:sessionKeyBlock:options:](BMEventSession, "sessionPublisherWithStreamPublisher:startingBlock:endingBlock:sessionKeyBlock:options:", [objc_msgSend(objc_msgSend(BiomeLibrary() "Device")], &stru_1000250A8, &stru_1000250C8, 0, 0);
    objc_initWeak(&from, a1);
    v12 = [a1[27] deviceUsageReportServiceDataSessionPublisherBookmark];
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10000FE54;
    v27 = &unk_1000250F0;
    objc_copyWeak(&v30, &from);
    v28 = a2;
    v29 = &v13;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10001006C;
    v23[3] = &unk_100024C08;
    objc_copyWeak(&v24, &from);
    [v11 sinkWithBookmark:v12 completion:buf receiveInput:v23];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&v30);
    objc_destroyWeak(&from);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }
}

void sub_10000EC48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak(&a23);
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak((v24 + 64));
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

void sub_10000ECB4(uint64_t a1, uint64_t a2)
{
  Weak = objc_loadWeak((a1 + 64));
  v5 = Weak;
  if (a2)
  {
    if (Weak)
    {
      v6 = Weak[11];
    }

    else
    {
      v6 = 0;
    }

    [v6 removeAllObjects];
    sub_10000E8A4(v5, v7);
    [*(a1 + 32) markCompleted];

    v8 = qword_10002B2E0;
    if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *&buf[4] = a2;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Error fetching service data from Biome. %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v9 = *(a1 + 48);
    v50 = *(a1 + 32);
    v51 = v9;
    v49[2] = sub_10000F798;
    v49[3] = &unk_100024E40;
    v49[4] = Weak;
    v48 = v9;
    if (Weak)
    {
      v10 = qword_10002B2E0;
      if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        *&buf[4] = [v48 startDate];
        *&buf[12] = 2114;
        *&buf[14] = [v48 endDate];
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Start Biome streams querying for interval with start date:%{public}@, end date:%{public}@", buf, 0x16u);
      }

      v64[0] = 0;
      v64[1] = v64;
      v64[2] = 0x3052000000;
      v64[3] = sub_100010334;
      v64[4] = sub_100010344;
      v64[5] = 0;
      v63[0] = 0;
      v63[1] = v63;
      v63[2] = 0x3052000000;
      v63[3] = sub_100010334;
      v63[4] = sub_100010344;
      v63[5] = 0;
      v11 = dispatch_group_create();
      objc_initWeak(&location, v5);
      dispatch_group_enter(v11);
      v57[0] = _NSConcreteStackBlock;
      v57[1] = 3221225472;
      v58 = sub_100010350;
      v59 = &unk_100025118;
      v60 = v11;
      v61 = v63;
      v12 = qword_10002B2E0;
      if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v48 startDate];
        v14 = [v48 endDate];
        *buf = 138412546;
        *&buf[4] = v13;
        *&buf[12] = 2112;
        *&buf[14] = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Querying single event streams for interval with start date:%@, end date:%@", buf, 0x16u);
      }

      v15 = v48;
      v16 = [[BMPublisherOptions alloc] initWithStartDate:objc_msgSend(v48 endDate:"startDate") maxEvents:objc_msgSend(v48 lastN:"endDate") reversed:{0, 0, 0}];
      v17 = [objc_msgSend(objc_msgSend(BiomeLibrary() "Notification")];
      v18 = [objc_msgSend(objc_msgSend(BiomeLibrary() "Motion")];
      v19 = [objc_msgSend(objc_msgSend(BiomeLibrary() "Activity")];
      v20 = [objc_msgSend(objc_msgSend(BiomeLibrary() "Text")];
      *buf = v17;
      *&buf[8] = v18;
      *&buf[16] = v19;
      v73 = v20;
      v21 = [[BPSOrderedMerge alloc] initWithPublishers:+[NSArray arrayWithObjects:count:](NSArray comparator:{"arrayWithObjects:count:", buf, 4), &stru_100024EA8}];

      v22 = v21;
      if (v22)
      {
        v23 = [v5[27] lastDeviceUsageActivityLevelEvent];
        objc_setProperty_nonatomic(v5, v24, v23, 208);
        v25 = [v5[27] lastDeviceUsageMotionActivityEvent];
        objc_setProperty_nonatomic(v5, v26, v25, 200);
        objc_initWeak(from, v5);
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_10001170C;
        v73 = &unk_100025190;
        objc_copyWeak(&v75, from);
        p_isa = v57;
        v65 = _NSConcreteStackBlock;
        v66 = 3221225472;
        v67 = sub_10001187C;
        v68 = &unk_1000251B8;
        objc_copyWeak(&v70, from);
        v69 = v48;
        [v22 sinkWithCompletion:buf receiveInput:&v65];
        objc_destroyWeak(&v70);
        objc_destroyWeak(&v75);
        objc_destroyWeak(from);
      }

      else
      {
        v27 = qword_10002B2E0;
        if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_FAULT))
        {
          v44 = [v48 startDate];
          v45 = [v48 endDate];
          *buf = 138412546;
          *&buf[4] = v44;
          *&buf[12] = 2112;
          *&buf[14] = v45;
          _os_log_fault_impl(&_mh_execute_header, v27, OS_LOG_TYPE_FAULT, "Failed to create aggrerated publisher for query interval: start:%@ end: %@", buf, 0x16u);
        }

        v58(v57, [SRError errorWithCode:8194, v48]);
      }

      dispatch_group_enter(v11);
      from[0] = _NSConcreteStackBlock;
      from[1] = 3221225472;
      v53 = sub_100010418;
      v54 = &unk_100025118;
      v55 = v11;
      v56 = v64;
      v28 = qword_10002B2E0;
      if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_INFO))
      {
        v29 = [v15 startDate];
        v30 = [v15 endDate];
        *buf = 138543618;
        *&buf[4] = v29;
        *&buf[12] = 2114;
        *&buf[14] = v30;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Start querying streams with paired events for interval with start date:%{public}@, end date:%{public}@", buf, 0x16u);
      }

      v31 = [[BMPublisherOptions alloc] initWithStartDate:objc_msgSend(v15 endDate:"startDate") maxEvents:objc_msgSend(v15 lastN:"endDate") reversed:{0, 0, 0}];
      v32 = +[BMEventSession sessionPublisherWithStreamPublisher:startingBlock:endingBlock:sessionKeyBlock:options:](BMEventSession, "sessionPublisherWithStreamPublisher:startingBlock:endingBlock:sessionKeyBlock:options:", [objc_msgSend(objc_msgSend(BiomeLibrary() "App")], &stru_100024EC8, &stru_100024EE8, &stru_100024F28, 0);
      v33 = +[BMEventSession sessionPublisherWithStreamPublisher:startingBlock:endingBlock:sessionKeyBlock:options:](BMEventSession, "sessionPublisherWithStreamPublisher:startingBlock:endingBlock:sessionKeyBlock:options:", [objc_msgSend(objc_msgSend(BiomeLibrary() "App")], &stru_100024F48, &stru_100024F68, &stru_100024F88, 0);
      v34 = +[BMEventSession sessionPublisherWithStreamPublisher:startingBlock:endingBlock:sessionKeyBlock:options:](BMEventSession, "sessionPublisherWithStreamPublisher:startingBlock:endingBlock:sessionKeyBlock:options:", [objc_msgSend(objc_msgSend(objc_msgSend(BiomeLibrary() "Device")], &stru_100024FA8, &stru_100024FC8, 0, 2);
      v35 = +[BMEventSession sessionPublisherWithStreamPublisher:startingBlock:endingBlock:sessionKeyBlock:options:](BMEventSession, "sessionPublisherWithStreamPublisher:startingBlock:endingBlock:sessionKeyBlock:options:", [objc_msgSend(objc_msgSend(objc_msgSend(BiomeLibrary() "Device")], &stru_100024FE8, &stru_100025008, 0, 2);
      v36 = +[BMEventSession sessionPublisherWithStreamPublisher:startingBlock:endingBlock:sessionKeyBlock:options:](BMEventSession, "sessionPublisherWithStreamPublisher:startingBlock:endingBlock:sessionKeyBlock:options:", [objc_msgSend(objc_msgSend(BiomeLibrary() "Device")], &stru_100025028, &stru_100025048, 0, 2);
      *buf = v32;
      *&buf[8] = v33;
      *&buf[16] = v34;
      v73 = v35;
      p_isa = v36;
      v37 = [[BPSOrderedMerge alloc] initWithPublishers:+[NSArray arrayWithObjects:count:](NSArray comparator:{"arrayWithObjects:count:", buf, 5), &stru_100025088}];

      v38 = v37;
      if (v38)
      {
        objc_initWeak(&v71, v5);
        v39 = [v5[27] deviceUsageReportSessionPublisherBookmark];
        v65 = _NSConcreteStackBlock;
        v66 = 3221225472;
        v67 = sub_100011F9C;
        v68 = &unk_100024BE0;
        objc_copyWeak(&v70, &v71);
        v69 = from;
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_10001230C;
        v73 = &unk_1000251E0;
        objc_copyWeak(v76, &v71);
        p_isa = v5;
        v75 = v15;
        [v38 sinkWithBookmark:v39 completion:&v65 receiveInput:buf];
        objc_destroyWeak(v76);
        objc_destroyWeak(&v70);
        objc_destroyWeak(&v71);
      }

      else
      {
        v41 = qword_10002B2E0;
        if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_FAULT))
        {
          v46 = [v15 startDate];
          v47 = [v15 endDate];
          *buf = 138412546;
          *&buf[4] = v46;
          *&buf[12] = 2112;
          *&buf[14] = v47;
          _os_log_fault_impl(&_mh_execute_header, v41, OS_LOG_TYPE_FAULT, "Failed to create aggrerated session publisher for query interval: start:%@ end: %@", buf, 0x16u);
        }

        v42 = [SRError errorWithCode:8194, v48];
        v53(from, v42);
      }

      Property = objc_getProperty(v5, v40, 48, 1);
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_1000104E0;
      v73 = &unk_100025168;
      v76[1] = v64;
      v76[2] = v63;
      p_isa = &v11->isa;
      v76[0] = v49;
      objc_copyWeak(v77, &location);
      v75 = v15;
      dispatch_group_notify(v11, Property, buf);
      objc_destroyWeak(v77);
      objc_destroyWeak(&location);
      _Block_object_dispose(v63, 8);
      _Block_object_dispose(v64, 8);
    }
  }
}

void sub_10000F71C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id location, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  objc_destroyWeak((v41 + 48));
  objc_destroyWeak((v40 + 40));
  objc_destroyWeak((v42 - 216));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a40, 8);
  _Unwind_Resume(a1);
}

void sub_10000F798(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = v4;
  v6 = *(a1 + 32);
  if (a2)
  {
    if (v6)
    {
      v7 = *(v6 + 88);
    }

    else
    {
      v7 = 0;
    }

    [v7 removeAllObjects];
    sub_10000E8A4(*(a1 + 32), v8);
    [*(a1 + 40) markCompleted];

    v9 = qword_10002B2E0;
    if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v51 = a2;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Error fetching stream data from Biome. %{public}@", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    context = v4;
    if (v6)
    {
      v10 = *(v6 + 56);
    }

    else
    {
      v10 = 0;
    }

    v11 = [objc_msgSend(v10 "allKeys")];
    v49 = 0;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v45 objects:v54 count:16];
    if (v12)
    {
      v14 = v12;
      v15 = *v46;
      do
      {
        v16 = 0;
        do
        {
          if (*v46 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v45 + 1) + 8 * v16);
          v18 = objc_autoreleasePoolPush();
          v19 = *(a1 + 32);
          if (v19)
          {
            v20 = *(v19 + 56);
          }

          else
          {
            v20 = 0;
          }

          v21 = [v20 objectForKeyedSubscript:v17];
          v22 = v21;
          v23 = *(a1 + 32);
          if (v23)
          {
            v24 = *(v23 + 64);
          }

          else
          {
            v24 = 0;
          }

          [v21 startTime];
          [v24 provideSample:v22 timestamp:&v49 error:?];
          v25 = v49;
          if (v49)
          {
            v26 = qword_10002B2E0;
            if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v51 = v25;
              _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Failed to write device usage sample because %@", buf, 0xCu);
            }

            v49 = 0;
          }

          objc_autoreleasePoolPop(v18);
          v16 = v16 + 1;
        }

        while (v14 != v16);
        v27 = [v11 countByEnumeratingWithState:&v45 objects:v54 count:16];
        v14 = v27;
      }

      while (v27);
    }

    sub_10000E8A4(*(a1 + 32), v13);
    v28 = [*(a1 + 56) endDate];
    v29 = *(a1 + 32);
    if (v29)
    {
      v30 = *(v29 + 216);
    }

    else
    {
      v30 = 0;
    }

    [v30 setLastDeviceUsageQueryDate:v28];

    v31 = qword_10002B2E0;
    if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [*(a1 + 56) startDate];
      v33 = [*(a1 + 56) endDate];
      *buf = 138543618;
      v51 = v32;
      v52 = 2114;
      v53 = v33;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Querying device usage for interval:%{public}@ - %{public}@ is completed", buf, 0x16u);
    }

    objc_autoreleasePoolPop(context);
    v34 = *(a1 + 64);
    if (v34)
    {
      v35 = *(v34 + 88);
    }

    else
    {
      v35 = 0;
    }

    [v35 removeLastObject];
    v36 = *(a1 + 64);
    if (v36)
    {
      v37 = *(v36 + 88);
    }

    else
    {
      v37 = 0;
    }

    if ([v37 count])
    {
      v38 = qword_10002B2E0;
      if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_DEFAULT))
      {
        v39 = *(a1 + 64);
        if (v39)
        {
          v40 = *(v39 + 88);
        }

        else
        {
          v40 = 0;
        }

        v41 = [v40 lastObject];
        *buf = 138412290;
        v51 = v41;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Getting next interval %@ for data collection", buf, 0xCu);
      }

      v42 = *(a1 + 64);
      if (v42)
      {
        v43 = *(v42 + 88);
      }

      else
      {
        v43 = 0;
      }

      sub_10000E96C(v42, [v43 lastObject], *(a1 + 40));
    }

    else
    {
      [*(a1 + 40) markCompleted];
    }
  }
}

int64_t sub_10000FB8C(id a1, BMStoreEvent *a2, BMStoreEvent *a3)
{
  [(BMStoreEvent *)a2 sr_eventTimestamp];
  v5 = v4;
  [(BMStoreEvent *)a3 sr_eventTimestamp];
  if (v5 > v6)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

BOOL sub_10000FBD4(id a1, BMStoreEvent *a2)
{
  v2 = [(BMStoreEvent *)a2 eventBody];

  return [v2 starting];
}

NSCopying *__cdecl sub_10000FC24(id a1, BMStoreEvent *a2)
{
  v2 = [(BMStoreEvent *)a2 eventBody];

  return [v2 bundleID];
}

NSCopying *__cdecl sub_10000FCA0(id a1, BMStoreEvent *a2)
{
  v2 = [(BMStoreEvent *)a2 eventBody];

  return [v2 uniqueID];
}

BOOL sub_10000FCCC(id a1, BMStoreEvent *a2)
{
  v2 = [(BMStoreEvent *)a2 eventBody];

  return [v2 starting];
}

BOOL sub_10000FD90(id a1, BMStoreEvent *a2)
{
  v2 = [(BMStoreEvent *)a2 eventBody];

  return [v2 starting];
}

int64_t sub_10000FDBC(id a1, BMEventSession *a2, BMEventSession *a3)
{
  [(BMEventSession *)a2 sr_eventTimestamp];
  v5 = v4;
  [(BMEventSession *)a3 sr_eventTimestamp];
  if (v5 > v6)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

BOOL sub_10000FE28(id a1, BMStoreEvent *a2)
{
  v2 = [(BMStoreEvent *)a2 eventBody];

  return [v2 starting];
}

uint64_t sub_10000FE54(uint64_t a1, void *a2, uint64_t a3)
{
  Weak = objc_loadWeak((a1 + 48));
  v7 = [a2 state];
  v8 = qword_10002B2E0;
  if (v7 == 1)
  {
    if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_ERROR))
    {
      v15 = 138543362;
      v16 = [a2 error];
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to query streams for service data because %{public}@", &v15, 0xCu);
    }

    return (*(*(a1 + 40) + 16))(*(a1 + 40), [a2 error]);
  }

  else
  {
    if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_INFO))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Query of streams for service data is completed", &v15, 2u);
    }

    v10 = [BMEventSession openSessionsFromBookmark:a3];
    if ([v10 count])
    {
      v11 = [objc_msgSend(objc_msgSend(v10 objectAtIndexedSubscript:{0), "events"), "firstObject"}];
      [v11 eventBody];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [NSDateInterval alloc];
        [v11 sr_eventTimestamp];
        v13 = [v12 initWithStartDate:+[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate endDate:{"dateWithTimeIntervalSinceReferenceDate:"), objc_msgSend(*(a1 + 32), "endDate")}];
        if (Weak)
        {
          v14 = *(Weak + 24);
        }

        else
        {
          v14 = 0;
        }

        [v14 addObject:v13];
      }
    }

    if (Weak)
    {
      [*(Weak + 27) setDeviceUsageReportServiceDataSessionPublisherBookmark:a3];
    }

    return (*(*(a1 + 40) + 16))(*(a1 + 40), 0);
  }
}

void sub_10001006C(uint64_t a1, void *a2)
{
  Weak = objc_loadWeak((a1 + 32));
  v4 = [objc_msgSend(a2 "events")];
  v5 = qword_10002B2E0;
  if (v4 > 1)
  {
    v19 = Weak;
    if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v26 = [a2 events];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Session events: %@", buf, 0xCu);
    }

    v6 = [a2 events];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = qword_10002B2E0;
          if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_INFO))
          {
            v12 = [*(*(&v20 + 1) + 8 * i) eventBody];
            *buf = 138412290;
            v26 = v12;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "###Event: %@", buf, 0xCu);
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v8);
    }

    v13 = [v6 firstObject];
    v14 = [v6 lastObject];
    [a2 sr_data];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [NSDateInterval alloc];
      [v13 sr_eventTimestamp];
      v16 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      [v14 sr_eventTimestamp];
      v17 = [v15 initWithStartDate:v16 endDate:{+[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate, "dateWithTimeIntervalSinceReferenceDate:")}];
      if (v19)
      {
        v18 = v19[24];
      }

      else
      {
        v18 = 0;
      }

      [v18 addObject:v17];
    }
  }

  else if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v26 = a2;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Invalid number of events in event sessions: %@", buf, 0xCu);
  }
}

void sub_100010350(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = qword_10002B2E0;
    if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_ERROR))
    {
      v5 = 138543362;
      v6 = a2;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to query single event streams because %{public}@", &v5, 0xCu);
    }

    *(*(*(a1 + 40) + 8) + 40) = a2;
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100010418(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = qword_10002B2E0;
    if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_ERROR))
    {
      v5 = 138543362;
      v6 = a2;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to query streams with paired events because %{public}@", &v5, 0xCu);
    }

    *(*(*(a1 + 40) + 8) + 40) = a2;
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_1000104E0(uint64_t a1)
{
  dispatch_release(*(a1 + 32));
  if (*(*(*(a1 + 56) + 8) + 40) || *(*(*(a1 + 64) + 8) + 40))
  {
    v2 = qword_10002B2E0;
    if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Failed to query Biome streams", buf, 2u);
    }

    (*(*(a1 + 48) + 16))(*(a1 + 48), [SRError errorWithCode:8194]);
  }

  else
  {
    v3 = qword_10002B2E0;
    if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Data fetching is completed", buf, 2u);
    }

    Weak = objc_loadWeak((a1 + 72));
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v19 = sub_100010A98;
    v20 = &unk_100025140;
    v21 = Weak;
    v22 = *(a1 + 40);
    if (Weak)
    {
      v5 = Weak;
      if ([Weak[16] count] || objc_msgSend(v5[17], "count") || objc_msgSend(v5[18], "count") || objc_msgSend(v5[19], "count"))
      {
        v42[0] = 0;
        v42[1] = v42;
        v42[2] = 0x3052000000;
        v42[3] = sub_100010334;
        v42[4] = sub_100010344;
        v42[5] = 0;
        v41[0] = 0;
        v41[1] = v41;
        v41[2] = 0x3052000000;
        v41[3] = sub_100010334;
        v41[4] = sub_100010344;
        v41[5] = 0;
        v40[0] = 0;
        v40[1] = v40;
        v40[2] = 0x3052000000;
        v40[3] = sub_100010334;
        v40[4] = sub_100010344;
        v40[5] = 0;
        objc_initWeak(&location, v5);
        v6 = qword_10002B2E0;
        if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Fetch data to categorize postponed events", buf, 2u);
        }

        v7 = dispatch_group_create();
        if ([v5[16] count] || objc_msgSend(v5[18], "count"))
        {
          dispatch_group_enter(v7);
          v8 = [NSMutableSet setWithSet:v5[16]];
          [(NSMutableSet *)v8 unionSet:v5[18]];
          v9 = +[CTCategories sharedCategories];
          v10 = [(NSMutableSet *)v8 allObjects];
          v37[0] = _NSConcreteStackBlock;
          v37[1] = 3221225472;
          v37[2] = sub_100013DC4;
          v37[3] = &unk_100025208;
          v37[4] = v7;
          v37[5] = v42;
          objc_copyWeak(&v38, &location);
          [v9 categoriesForBundleIDs:v10 completionHandler:v37];
          objc_destroyWeak(&v38);
        }

        if ([v5[19] count])
        {
          dispatch_group_enter(v7);
          v11 = +[CTCategories sharedCategories];
          v12 = [v5[19] allObjects];
          v35[0] = _NSConcreteStackBlock;
          v35[1] = 3221225472;
          v35[2] = sub_100013EE8;
          v35[3] = &unk_100025208;
          v35[4] = v7;
          v35[5] = v41;
          objc_copyWeak(&v36, &location);
          [v11 categoriesForDomainNames:v12 completionHandler:v35];
          objc_destroyWeak(&v36);
        }

        if ([v5[17] count])
        {
          dispatch_group_enter(v7);
          v14 = v5[10];
          v15 = v5[17];
          v33[0] = _NSConcreteStackBlock;
          v33[1] = 3221225472;
          v33[2] = sub_10001400C;
          v33[3] = &unk_100025208;
          v33[4] = v7;
          v33[5] = v40;
          objc_copyWeak(&v34, &location);
          [v14 fetchCustomCategoriesForBundleIdentifiers:v15 completion:v33];
          objc_destroyWeak(&v34);
        }

        Property = objc_getProperty(v5, v13, 48, 1);
        *buf = _NSConcreteStackBlock;
        v24 = 3221225472;
        v25 = sub_100014168;
        v26 = &unk_100025230;
        v27 = v7;
        v28 = v5;
        v31 = v41;
        v32 = v40;
        v29 = v18;
        v30 = v42;
        dispatch_group_notify(v7, Property, buf);
        objc_destroyWeak(&location);
        _Block_object_dispose(v40, 8);
        _Block_object_dispose(v41, 8);
        _Block_object_dispose(v42, 8);
      }

      else
      {
        v17 = qword_10002B2E0;
        if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Nothing to categorize", buf, 2u);
        }

        v19(v18, 0);
      }
    }
  }
}

void sub_100010A3C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 232));
  _Block_object_dispose((v2 - 224), 8);
  _Block_object_dispose((v2 - 176), 8);
  _Block_object_dispose((v2 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100010A98(void *a1, uint64_t a2)
{
  v2 = a1;
  if (a2)
  {
    v3 = a1[6];
    v4 = *(v2[6] + 16);
  }

  else
  {
    v5 = a1[4];
    if (v5)
    {
      v102 = a1[5];
      v6 = qword_10002B2E0;
      if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Start processing of pending events", buf, 2u);
      }

      if ([*(v5 + 96) count])
      {
        v115 = 0u;
        v116 = 0u;
        v113 = 0u;
        v114 = 0u;
        obj = *(v5 + 96);
        v7 = [obj countByEnumeratingWithState:&v113 objects:buf count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v114;
          do
          {
            v10 = 0;
            do
            {
              if (*v114 != v9)
              {
                objc_enumerationMutation(obj);
              }

              v11 = *(*(&v113 + 1) + 8 * v10);
              v12 = objc_autoreleasePoolPush();
              v13 = [v11 eventBody];
              v14 = [v13 bundleID];
              v15 = [v13 notificationID];
              v16 = *(v5 + 72);
              if (v14)
              {
                [v16 setObject:v14 forKeyedSubscript:v15];
              }

              else
              {
                v14 = [v16 objectForKeyedSubscript:v15];
              }

              v17 = sub_100012F94([*(v5 + 168) objectForKeyedSubscript:v14]);
              if (v17 || (v17 = sub_100012FF4(v14)) != 0)
              {
                v18 = v17;
                if (v14 && !sub_10000D130(v5, v14))
                {
                  v14 = 0;
                }

                v19 = [v13 usageType] - 1;
                if (v19 > 0xF)
                {
                  v20 = 0;
                }

                else
                {
                  v20 = qword_100019430[v19];
                }

                v21 = [SRNotificationUsage notificationUsageWithBundleIdentifier:v14 eventType:v20];
                [v11 timestamp];
                v22 = sub_10000E414(v5, [NSDate dateWithTimeIntervalSinceReferenceDate:?]);
                v23 = [-[SRDeviceUsageReport mutableNotificationUsageByCategory](v22 "mutableNotificationUsageByCategory")];
                if (!v23)
                {
                  v23 = +[NSMutableArray array];
                  [-[SRDeviceUsageReport mutableNotificationUsageByCategory](v22 "mutableNotificationUsageByCategory")];
                }

                [v23 addObject:v21];
              }

              else
              {
                v24 = qword_10002B2E0;
                if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_ERROR))
                {
                  *v121 = 138543362;
                  v122 = v14;
                  _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "No category found for %{public}@", v121, 0xCu);
                }
              }

              objc_autoreleasePoolPop(v12);
              v10 = v10 + 1;
            }

            while (v8 != v10);
            v25 = [obj countByEnumeratingWithState:&v113 objects:buf count:16];
            v8 = v25;
          }

          while (v25);
        }
      }

      if ([*(v5 + 104) count])
      {
        v111 = 0u;
        v112 = 0u;
        v109 = 0u;
        v110 = 0u;
        v26 = *(v5 + 104);
        v27 = [v26 countByEnumeratingWithState:&v109 objects:v121 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v110;
          do
          {
            for (i = 0; i != v28; i = i + 1)
            {
              if (*v110 != v29)
              {
                objc_enumerationMutation(v26);
              }

              v31 = *(*(&v109 + 1) + 8 * i);
              v32 = objc_autoreleasePoolPush();
              v33 = [v31 events];
              if ([objc_msgSend(v31 "events")] > 1)
              {
                sub_1000130E4(v5, [v33 firstObject], objc_msgSend(objc_msgSend(objc_msgSend(v33, "lastObject"), "eventBody"), "absoluteTimestamp"), v102);
              }

              else
              {
                v34 = qword_10002B2E0;
                if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_ERROR))
                {
                  *v119 = 138412290;
                  v120 = v31;
                  _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Invalid number of events in event sessions (App.InFocus): %@", v119, 0xCu);
                }
              }

              objc_autoreleasePoolPop(v32);
            }

            v28 = [v26 countByEnumeratingWithState:&v109 objects:v121 count:16];
          }

          while (v28);
        }
      }

      if ([*(v5 + 112) count])
      {
        v107 = 0u;
        v108 = 0u;
        v105 = 0u;
        v106 = 0u;
        v35 = *(v5 + 112);
        v36 = [v35 countByEnumeratingWithState:&v105 objects:v119 count:16];
        if (v36)
        {
          v37 = v36;
          v38 = *v106;
          do
          {
            for (j = 0; j != v37; j = j + 1)
            {
              if (*v106 != v38)
              {
                objc_enumerationMutation(v35);
              }

              v40 = *(*(&v105 + 1) + 8 * j);
              v41 = objc_autoreleasePoolPush();
              v42 = [v40 events];
              if ([objc_msgSend(v40 "events")] > 1)
              {
                sub_100013A54(v5, [v42 firstObject], objc_msgSend(objc_msgSend(objc_msgSend(v42, "lastObject"), "eventBody"), "absoluteTimestamp"), v102);
              }

              else
              {
                v43 = qword_10002B2E0;
                if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_ERROR))
                {
                  *v117 = 138412290;
                  v118 = v40;
                  _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Invalid number of events in event sessions (App.WebUsage): %@", v117, 0xCu);
                }
              }

              objc_autoreleasePoolPop(v41);
            }

            v37 = [v35 countByEnumeratingWithState:&v105 objects:v119 count:16];
          }

          while (v37);
        }
      }

      v44 = qword_10002B2E0;
      v2 = a1;
      if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_INFO))
      {
        *v117 = 0;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "Processing of pending events is completed", v117, 2u);
      }
    }

    v45 = v2[4];
    if (v45)
    {
      v46 = v2[5];
      v47 = qword_10002B2E0;
      if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "Start processing of in-progress events", buf, 2u);
      }

      v48 = *(v45 + 200);
      if (v48)
      {
        v103 = [v48 eventBody];
        v49 = [v103 startDate];
        v50 = [v46 endDate];
        v51 = sub_10000E2A8(v45, v49, v50);
        if (v51)
        {
          v50 = [v51 startDate];
        }

        v52 = sub_10000CAD8(v49, v50, v46, 900.0);
        v113 = 0u;
        v114 = 0u;
        v115 = 0u;
        v116 = 0u;
        v53 = [(NSArray *)v52 countByEnumeratingWithState:&v113 objects:buf count:16];
        if (v53)
        {
          v54 = v53;
          v55 = *v114;
          do
          {
            for (k = 0; k != v54; k = k + 1)
            {
              if (*v114 != v55)
              {
                objc_enumerationMutation(v52);
              }

              v57 = *(*(&v113 + 1) + 8 * k);
              [v57 duration];
              if (v58 != 0.0)
              {
                v59 = sub_10000E414(v45, [v57 startDate]);
                v60 = sub_100013058(v103);
                [v57 duration];
                v62 = v61;
                v63 = [*(v45 + 216) isRoundingEnabled];
                v64 = round(v62);
                if (!v63)
                {
                  v64 = v62;
                }

                v65 = [_SRDeviceUsageMotionActivity motionActivityWithActivityType:v60 duration:v64];
                v66 = [(SRDeviceUsageReport *)v59 _mutableMotionActivities];
                if (!v66)
                {
                  v66 = +[NSMutableArray array];
                  [(SRDeviceUsageReport *)v59 set_mutableMotionActivities:v66];
                }

                [v66 addObject:v65];
              }
            }

            v54 = [(NSArray *)v52 countByEnumeratingWithState:&v113 objects:buf count:16];
          }

          while (v54);
        }
      }

      v67 = *(v45 + 208);
      if (v67)
      {
        v104 = [v67 eventBody];
        [*(v45 + 208) timestamp];
        v68 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
        v69 = [v46 endDate];
        v70 = sub_10000E2A8(v45, v68, v69);
        if (v70)
        {
          v69 = [v70 startDate];
        }

        v71 = sub_10000CAD8(v68, v69, v46, 900.0);
        v109 = 0u;
        v110 = 0u;
        v111 = 0u;
        v112 = 0u;
        v72 = [(NSArray *)v71 countByEnumeratingWithState:&v109 objects:v121 count:16];
        if (v72)
        {
          v73 = v72;
          v74 = *v110;
          do
          {
            for (m = 0; m != v73; m = m + 1)
            {
              if (*v110 != v74)
              {
                objc_enumerationMutation(v71);
              }

              v76 = *(*(&v109 + 1) + 8 * m);
              [v76 duration];
              if (v77 != 0.0)
              {
                v78 = sub_10000E414(v45, [v76 startDate]);
                v79 = [v104 inUseStatus];
                [v76 duration];
                v81 = v80;
                v82 = [*(v45 + 216) isRoundingEnabled];
                v83 = round(v81);
                if (!v82)
                {
                  v83 = v81;
                }

                v84 = [_SRDeviceUsageActivityLevel activityLevelWithLevel:v79 duration:v83];
                v85 = [(SRDeviceUsageReport *)v78 _mutableActivityLevels];
                if (!v85)
                {
                  v85 = +[NSMutableArray array];
                  [(SRDeviceUsageReport *)v78 set_mutableActivityLevels:v85];
                }

                [v85 addObject:v84];
              }
            }

            v73 = [(NSArray *)v71 countByEnumeratingWithState:&v109 objects:v121 count:16];
          }

          while (v73);
        }
      }

      v107 = 0u;
      v108 = 0u;
      v105 = 0u;
      v106 = 0u;
      v86 = *(v45 + 120);
      v87 = [v86 countByEnumeratingWithState:&v105 objects:v119 count:16];
      if (v87)
      {
        v88 = v87;
        v89 = *v106;
        do
        {
          for (n = 0; n != v88; n = n + 1)
          {
            if (*v106 != v89)
            {
              objc_enumerationMutation(v86);
            }

            v91 = *(*(&v105 + 1) + 8 * n);
            v92 = objc_autoreleasePoolPush();
            v93 = qword_10002B2E0;
            if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_INFO))
            {
              v94 = [v91 eventBody];
              *v117 = 138412290;
              v118 = v94;
              _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_INFO, "First event: %@", v117, 0xCu);
            }

            [v91 eventBody];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              sub_1000130E4(v45, v91, [v46 endDate], v46);
            }

            else
            {
              [v91 eventBody];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                sub_100013A54(v45, v91, [v46 endDate], v46);
              }

              else
              {
                [v91 eventBody];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  sub_100012840(v45, v91, [v46 endDate], v46);
                }

                else
                {
                  [v91 eventBody];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    sub_100012A9C(v45, v91, [v46 endDate], v46);
                  }

                  else
                  {
                    [v91 eventBody];
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      sub_100012D18(v45, v91, [v46 endDate], v46);
                    }

                    else
                    {
                      v95 = qword_10002B2E0;
                      if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_ERROR))
                      {
                        [v91 eventBody];
                        v96 = objc_opt_class();
                        v97 = NSStringFromClass(v96);
                        *v117 = 138412290;
                        v118 = v97;
                        _os_log_error_impl(&_mh_execute_header, v95, OS_LOG_TYPE_ERROR, "Got unexpected data type in event session:%@", v117, 0xCu);
                      }
                    }
                  }
                }
              }
            }

            objc_autoreleasePoolPop(v92);
          }

          v88 = [v86 countByEnumeratingWithState:&v105 objects:v119 count:16];
        }

        while (v88);
      }

      v98 = qword_10002B2E0;
      v2 = a1;
      if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_INFO))
      {
        *v117 = 0;
        _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_INFO, "Processing of in-progress events is completed", v117, 2u);
      }
    }

    v4 = *(v2[6] + 16);
  }

  return v4();
}

uint64_t sub_10001170C(uint64_t a1, void *a2)
{
  Weak = objc_loadWeak((a1 + 40));
  v5 = [a2 state];
  v6 = qword_10002B2E0;
  if (v5 == 1)
  {
    if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_ERROR))
    {
      v10 = 138543362;
      v11 = [a2 error];
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Single event streams query failed because %{public}@", &v10, 0xCu);
    }

    return (*(*(a1 + 32) + 16))(*(a1 + 32), [a2 error]);
  }

  else
  {
    if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_INFO))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Single event streams query is completed", &v10, 2u);
    }

    if (Weak)
    {
      [Weak[27] setLastDeviceUsageActivityLevelEvent:Weak[26]];
      v8 = Weak[25];
      v9 = Weak[27];
    }

    else
    {
      [0 setLastDeviceUsageActivityLevelEvent:0];
      v8 = 0;
      v9 = 0;
    }

    [v9 setLastDeviceUsageMotionActivityEvent:v8];
    return (*(*(a1 + 32) + 16))(*(a1 + 32), 0);
  }
}

void sub_10001187C(uint64_t a1, void *a2)
{
  Weak = objc_loadWeak((a1 + 40));
  v5 = qword_10002B2E0;
  if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_INFO))
  {
    v6 = [a2 eventBody];
    [a2 sr_eventTimestamp];
    v8 = v7;
    [a2 sr_eventTimestamp];
    *buf = 138412802;
    v86 = v6;
    v87 = 2048;
    v88 = v8;
    v89 = 2112;
    v90 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Event:%@, timestamp:%f, date:%@", buf, 0x20u);
  }

  v9 = objc_autoreleasePoolPush();
  [a2 eventBody];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v11 = [a2 eventBody];
  v12 = v11;
  if ((isKindOfClass & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (Weak)
      {
        v15 = *(Weak + 20);
      }

      else
      {
        v15 = 0;
      }

      v14 = a2;
      goto LABEL_12;
    }

    [a2 eventBody];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v71 = v9;
      newValue = a2;
      if (!Weak)
      {
LABEL_61:
        v9 = v71;
        goto LABEL_62;
      }

      v17 = *(Weak + 25);
      if (v17)
      {
        v18 = *(a1 + 32);
        v19 = [v17 eventBody];
        v20 = [a2 eventBody];
        v21 = [v19 startDate];
        v22 = [v20 startDate];
        v23 = sub_10000E2A8(Weak, v21, v22);
        if (v23)
        {
          v22 = [v23 startDate];
        }

        v24 = sub_10000CAD8(v21, v22, v18, 900.0);
        v75 = 0u;
        v76 = 0u;
        v77 = 0u;
        v78 = 0u;
        v25 = [(NSArray *)v24 countByEnumeratingWithState:&v75 objects:buf count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v76;
          do
          {
            for (i = 0; i != v26; i = i + 1)
            {
              if (*v76 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = *(*(&v75 + 1) + 8 * i);
              [v29 duration];
              if (v30 != 0.0)
              {
                v31 = sub_10000E414(Weak, [v29 startDate]);
                v32 = sub_100013058(v19);
                [v29 duration];
                v34 = v33;
                v35 = [*(Weak + 27) isRoundingEnabled];
                v36 = round(v34);
                if (!v35)
                {
                  v36 = v34;
                }

                v37 = [_SRDeviceUsageMotionActivity motionActivityWithActivityType:v32 duration:v36];
                v38 = [(SRDeviceUsageReport *)v31 _mutableMotionActivities];
                if (!v38)
                {
                  v38 = +[NSMutableArray array];
                  [(SRDeviceUsageReport *)v31 set_mutableMotionActivities:v38];
                }

                [v38 addObject:v37];
              }
            }

            v26 = [(NSArray *)v24 countByEnumeratingWithState:&v75 objects:buf count:16];
          }

          while (v26);
        }
      }

      v39 = Weak;
      v40 = newValue;
      v41 = 200;
    }

    else
    {
      [a2 eventBody];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v66 = qword_10002B2E0;
        if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_ERROR))
        {
          [a2 eventBody];
          v67 = objc_opt_class();
          v68 = NSStringFromClass(v67);
          *buf = 138412290;
          v86 = v68;
          _os_log_error_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "Got unexpected data type:%@", buf, 0xCu);
        }

        goto LABEL_62;
      }

      if (!Weak)
      {
        goto LABEL_62;
      }

      v42 = *(Weak + 26);
      v71 = v9;
      newValuea = a2;
      if (v42)
      {
        v43 = *(a1 + 32);
        v44 = [v42 eventBody];
        v45 = qword_10002B2E0;
        if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_INFO))
        {
          [*(Weak + 26) timestamp];
          *buf = 138478083;
          v86 = v44;
          v87 = 2049;
          v88 = v46;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "Using %{private}@ (timestamp: %{private}f) as last activity level", buf, 0x16u);
        }

        v74 = v44;
        v47 = [(NSString *)v44 inUseStatus];
        [*(Weak + 26) timestamp];
        v48 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
        [a2 timestamp];
        v49 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
        v50 = sub_10000E2A8(Weak, v48, v49);
        if (v50)
        {
          v49 = [v50 startDate];
        }

        v51 = sub_10000CAD8(v48, v49, v43, 900.0);
        v75 = 0u;
        v76 = 0u;
        v77 = 0u;
        v78 = 0u;
        v52 = [(NSArray *)v51 countByEnumeratingWithState:&v75 objects:buf count:16];
        if (v52)
        {
          v53 = v52;
          v54 = *v76;
          do
          {
            for (j = 0; j != v53; j = j + 1)
            {
              if (*v76 != v54)
              {
                objc_enumerationMutation(v51);
              }

              v56 = *(*(&v75 + 1) + 8 * j);
              [v56 duration];
              if (v57 != 0.0)
              {
                v58 = sub_10000E414(Weak, [v56 startDate]);
                [v56 duration];
                v60 = v59;
                v61 = [*(Weak + 27) isRoundingEnabled];
                v62 = round(v60);
                if (!v61)
                {
                  v62 = v60;
                }

                v63 = [_SRDeviceUsageActivityLevel activityLevelWithLevel:v47 duration:v62];
                v64 = [(SRDeviceUsageReport *)v58 _mutableActivityLevels];
                if (!v64)
                {
                  v64 = +[NSMutableArray array];
                  [(SRDeviceUsageReport *)v58 set_mutableActivityLevels:v64];
                }

                v65 = qword_10002B2E0;
                if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_INFO))
                {
                  *v79 = 138478339;
                  v80 = v63;
                  v81 = 2113;
                  v82 = v74;
                  v83 = 2113;
                  v84 = v56;
                  _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_INFO, "Recording SensorKit activity level %{private}@ from %{private}@ for date interval: %{private}@", v79, 0x20u);
                }

                [v64 addObject:v63];
              }
            }

            v53 = [(NSArray *)v51 countByEnumeratingWithState:&v75 objects:buf count:16];
          }

          while (v53);
        }
      }

      else
      {
        v69 = qword_10002B2E0;
        if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_INFO))
        {
          v70 = [a2 eventBody];
          *buf = 138477827;
          v86 = v70;
          _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_INFO, "No previous activity level event, saving %{private}@ until the next event", buf, 0xCu);
        }
      }

      v39 = Weak;
      v40 = newValuea;
      v41 = 208;
    }

    objc_setProperty_nonatomic(v39, v16, v40, v41);
    goto LABEL_61;
  }

  if ([v11 bundleID])
  {
    if (Weak)
    {
      [*(Weak + 12) addObject:a2];
      v13 = *(Weak + 18);
    }

    else
    {
      [0 addObject:a2];
      v13 = 0;
    }

    v14 = [v12 bundleID];
    v15 = v13;
LABEL_12:
    [v15 addObject:v14];
  }

LABEL_62:
  objc_autoreleasePoolPop(v9);
}

uint64_t sub_100011F9C(uint64_t a1, void *a2, void *a3)
{
  Weak = objc_loadWeak((a1 + 40));
  v7 = [a2 state];
  v8 = qword_10002B2E0;
  if (v7 == 1)
  {
    if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v40 = [a2 error];
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to query streams with paired events because %{public}@", buf, 0xCu);
    }

    return (*(*(a1 + 32) + 16))(*(a1 + 32), [a2 error]);
  }

  if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Query of streams with paired events is completed", buf, 2u);
  }

  v10 = objc_autoreleasePoolPush();
  if (!Weak)
  {
    goto LABEL_31;
  }

  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = [a3 upstreams];
  v28 = [obj countByEnumeratingWithState:&v34 objects:buf count:16];
  if (!v28)
  {
    goto LABEL_30;
  }

  v24 = v10;
  v25 = a3;
  v27 = *v35;
  do
  {
    v11 = 0;
    do
    {
      if (*v35 != v27)
      {
        objc_enumerationMutation(obj);
      }

      v29 = v11;
      v12 = [BMEventSession openSessionsFromBookmark:*(*(&v34 + 1) + 8 * v11)];
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v13 = [v12 countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v31;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v31 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = [objc_msgSend(*(*(&v30 + 1) + 8 * i) "events")];
            [Weak[15] addObject:v17];
            [v17 eventBody];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
            v19 = [v17 eventBody];
            v20 = v19;
            if (isKindOfClass)
            {
              if (!sub_10000E538(Weak, [v19 bundleID]))
              {
                [Weak[16] addObject:{objc_msgSend(v20, "bundleID")}];
              }

              v21 = Weak[17];
              v22 = [v20 bundleID];
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                continue;
              }

              v23 = [v17 eventBody];
              v21 = Weak[19];
              v22 = [v23 webDomain];
            }

            [v21 addObject:v22];
          }

          v14 = [v12 countByEnumeratingWithState:&v30 objects:v38 count:16];
        }

        while (v14);
      }

      v11 = v29 + 1;
    }

    while ((v29 + 1) != v28);
    v28 = [obj countByEnumeratingWithState:&v34 objects:buf count:16];
  }

  while (v28);
  a3 = v25;
  v10 = v24;
LABEL_30:
  [Weak[27] setDeviceUsageReportSessionPublisherBookmark:a3];
LABEL_31:
  objc_autoreleasePoolPop(v10);
  return (*(*(a1 + 32) + 16))(*(a1 + 32), 0);
}

void sub_10001230C(uint64_t a1, void *a2)
{
  Weak = objc_loadWeak((a1 + 48));
  v5 = objc_autoreleasePoolPush();
  v6 = [objc_msgSend(a2 "events")];
  v7 = qword_10002B2E0;
  if (v6 > 1)
  {
    v27 = a1;
    v28 = Weak;
    v29 = v5;
    if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v36 = [a2 events];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Session events: %@", buf, 0xCu);
    }

    v10 = [a2 events];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v31;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v31 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = qword_10002B2E0;
          if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_INFO))
          {
            v16 = [*(*(&v30 + 1) + 8 * i) eventBody];
            *buf = 138412290;
            v36 = v16;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "###Event: %@", buf, 0xCu);
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v12);
    }

    v17 = [v10 firstObject];
    v18 = [v10 lastObject];
    [a2 sr_data];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [v17 eventBody];
      v20 = [v19 bundleID];
      if (v20)
      {
        v21 = v20;
        if ((sub_10000E744(*(v27 + 32), v20) & 1) == 0)
        {
          v25 = qword_10002B2E0;
          v5 = v29;
          if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v36 = v21;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Skipping bundle id %{public}@ because of its application type", buf, 0xCu);
          }

          goto LABEL_39;
        }
      }

      v5 = v29;
      if (!sub_10000E538(v28, [v19 bundleID]))
      {
        if (v28)
        {
          v22 = *(v28 + 16);
        }

        else
        {
          v22 = 0;
        }

        [v22 addObject:{objc_msgSend(v19, "bundleID")}];
      }

      if (v28)
      {
        [*(v28 + 17) addObject:{objc_msgSend(v19, "bundleID")}];
        v23 = *(v28 + 13);
      }

      else
      {
        [0 addObject:{objc_msgSend(v19, "bundleID")}];
        v23 = 0;
      }
    }

    else
    {
      [a2 sr_data];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [a2 sr_data];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v18 sr_eventTimestamp];
          sub_100012840(v28, v17, [NSDate dateWithTimeIntervalSinceReferenceDate:?], *(v27 + 40));
        }

        else
        {
          [a2 sr_data];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v18 sr_eventTimestamp];
            sub_100012A9C(v28, v17, [NSDate dateWithTimeIntervalSinceReferenceDate:?], *(v27 + 40));
          }

          else
          {
            [a2 sr_data];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v26 = qword_10002B2E0;
              v5 = v29;
              if (!os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_39;
              }

              *buf = 138412290;
              v36 = a2;
              v8 = "Got unexpected data type in event session:%@";
              v9 = v26;
              goto LABEL_4;
            }

            [v18 sr_eventTimestamp];
            sub_100012D18(v28, v17, [NSDate dateWithTimeIntervalSinceReferenceDate:?], *(v27 + 40));
          }
        }

        v5 = v29;
        goto LABEL_39;
      }

      v24 = [v17 eventBody];
      if (v28)
      {
        [*(v28 + 19) addObject:{objc_msgSend(v24, "webDomain")}];
        v23 = *(v28 + 14);
      }

      else
      {
        [0 addObject:{objc_msgSend(v24, "webDomain")}];
        v23 = 0;
      }

      v5 = v29;
    }

    [v23 addObject:a2];
    goto LABEL_39;
  }

  if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v36 = a2;
    v8 = "Invalid number of events in event sessions: %@";
    v9 = v7;
LABEL_4:
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v8, buf, 0xCu);
  }

LABEL_39:
  objc_autoreleasePoolPop(v5);
}

id sub_100012840(id result, void *a2, id a3, void *a4)
{
  if (result)
  {
    v6 = result;
    [a2 sr_eventTimestamp];
    v7 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    v8 = qword_10002B2E0;
    if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v29 = v7;
      v30 = 2112;
      v31 = a3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Start date:%@, end date:%@", buf, 0x16u);
    }

    v9 = sub_10000E2A8(v6, v7, a3);
    if (v9)
    {
      a3 = [v9 startDate];
    }

    v10 = sub_10000CAD8(v7, a3, a4, 900.0);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    result = [(NSArray *)v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (result)
    {
      v11 = result;
      v12 = *v24;
      do
      {
        v13 = 0;
        do
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v23 + 1) + 8 * v13);
          v15 = sub_10000E414(v6, [v14 startDate]);
          [v14 duration];
          v17 = v16;
          v18 = [*(v6 + 216) isRoundingEnabled];
          v19 = round(v17);
          if (v18)
          {
            v17 = v19;
          }

          [(SRDeviceUsageReport *)v15 _totalChargingDuration];
          [(SRDeviceUsageReport *)v15 set_totalChargingDuration:v20 + v17];
          [(SRDeviceUsageReport *)v15 _totalChargingDuration];
          if (v21 > 900.0)
          {
            v22 = qword_10002B2E0;
            if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_fault_impl(&_mh_execute_header, v22, OS_LOG_TYPE_FAULT, "Charging duration too long", buf, 2u);
            }
          }

          v13 = v13 + 1;
        }

        while (v11 != v13);
        result = [(NSArray *)v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
        v11 = result;
      }

      while (result);
    }
  }

  return result;
}

id sub_100012A9C(id result, void *a2, id a3, void *a4)
{
  if (result)
  {
    v6 = result;
    [a2 sr_eventTimestamp];
    v7 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    v8 = qword_10002B2E0;
    if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v29 = v7;
      v30 = 2112;
      v31 = a3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Start date:%@, end date:%@", buf, 0x16u);
    }

    v9 = sub_10000E2A8(v6, v7, a3);
    if (v9)
    {
      a3 = [v9 startDate];
    }

    v10 = sub_10000CAD8(v7, a3, a4, 900.0);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    result = [(NSArray *)v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (result)
    {
      v11 = result;
      v12 = *v24;
      do
      {
        v13 = 0;
        do
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v23 + 1) + 8 * v13);
          v15 = sub_10000E414(v6, [v14 startDate]);
          if ([v14 containsDate:v7])
          {
            [(SRDeviceUsageReport *)v15 setTotalScreenWakes:[(SRDeviceUsageReport *)v15 totalScreenWakes]+ 1];
          }

          [v14 duration];
          v17 = v16;
          v18 = [*(v6 + 216) isRoundingEnabled];
          v19 = round(v17);
          if (v18)
          {
            v17 = v19;
          }

          [(SRDeviceUsageReport *)v15 totalScreenWakeDuration];
          [(SRDeviceUsageReport *)v15 setTotalScreenWakeDuration:v20 + v17];
          [(SRDeviceUsageReport *)v15 totalScreenWakeDuration];
          if (v21 > 900.0)
          {
            v22 = qword_10002B2E0;
            if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_fault_impl(&_mh_execute_header, v22, OS_LOG_TYPE_FAULT, "Wake duration too long", buf, 2u);
            }
          }

          v13 = v13 + 1;
        }

        while (v11 != v13);
        result = [(NSArray *)v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
        v11 = result;
      }

      while (result);
    }
  }

  return result;
}

id sub_100012D18(id result, void *a2, id a3, void *a4)
{
  if (result)
  {
    v6 = result;
    [a2 sr_eventTimestamp];
    v7 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    v8 = qword_10002B2E0;
    if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v29 = v7;
      v30 = 2112;
      v31 = a3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Start date:%@, end date:%@", buf, 0x16u);
    }

    v9 = sub_10000E2A8(v6, v7, a3);
    if (v9)
    {
      a3 = [v9 startDate];
    }

    v10 = sub_10000CAD8(v7, a3, a4, 900.0);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    result = [(NSArray *)v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (result)
    {
      v11 = result;
      v12 = *v24;
      do
      {
        v13 = 0;
        do
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v23 + 1) + 8 * v13);
          v15 = sub_10000E414(v6, [v14 startDate]);
          if ([v14 containsDate:v7])
          {
            [(SRDeviceUsageReport *)v15 setTotalUnlocks:[(SRDeviceUsageReport *)v15 totalUnlocks]+ 1];
          }

          [v14 duration];
          v17 = v16;
          v18 = [*(v6 + 216) isRoundingEnabled];
          v19 = round(v17);
          if (v18)
          {
            v17 = v19;
          }

          [(SRDeviceUsageReport *)v15 totalUnlockDuration];
          [(SRDeviceUsageReport *)v15 setTotalUnlockDuration:v20 + v17];
          [(SRDeviceUsageReport *)v15 totalUnlockDuration];
          if (v21 > 900.0)
          {
            v22 = qword_10002B2E0;
            if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_fault_impl(&_mh_execute_header, v22, OS_LOG_TYPE_FAULT, "Unlock duration too long", buf, 2u);
            }
          }

          v13 = v13 + 1;
        }

        while (v11 != v13);
        result = [(NSArray *)v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
        v11 = result;
      }

      while (result);
    }
  }

  return result;
}

id sub_100012F94(void *a1)
{
  v1 = [objc_msgSend(+[CTCategory _DHToAppStoreCategoriesMap](CTCategory "_DHToAppStoreCategoriesMap")];

  return sub_10000E6E0(v1);
}

id sub_100012FF4(uint64_t a1)
{
  if (qword_10002B318 != -1)
  {
    dispatch_once(&qword_10002B318, &stru_1000252B8);
  }

  v2 = qword_10002B320;

  return [v2 objectForKeyedSubscript:a1];
}

uint64_t sub_100013058(void *a1)
{
  v2 = [a1 unknown];
  if ([a1 stationary])
  {
    v2 |= 2uLL;
  }

  if ([a1 walking])
  {
    v2 |= 4uLL;
  }

  if ([a1 running])
  {
    v2 |= 8uLL;
  }

  if ([a1 cycling])
  {
    v2 |= 0x10uLL;
  }

  if ([a1 automotive])
  {
    return v2 | 0x20;
  }

  else
  {
    return v2;
  }
}

void sub_1000130E4(uint64_t a1, void *a2, id a3, void *a4)
{
  v6 = [a2 eventBody];
  v7 = [v6 absoluteTimestamp];
  v8 = sub_10000E2A8(a1, [v6 absoluteTimestamp], a3);
  if (v8)
  {
    a3 = [v8 startDate];
  }

  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  obj = sub_10000CAD8(v7, a3, a4, 900.0);
  v90 = [(NSArray *)obj countByEnumeratingWithState:&v104 objects:v113 count:16];
  if (v90)
  {
    v91 = *v105;
    *&v9 = 138412546;
    v86 = v9;
    v10 = &MGCopyAnswer_ptr;
    v11 = &MGCopyAnswer_ptr;
    v92 = a1;
    v89 = v6;
LABEL_5:
    v12 = 0;
    while (1)
    {
      if (*v105 != v91)
      {
        objc_enumerationMutation(obj);
      }

      v99 = *(*(&v104 + 1) + 8 * v12);
      [v99 duration];
      if (v13 > 900.0)
      {
        v80 = qword_10002B2E0;
        if (!os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_FAULT))
        {
          return;
        }

        *buf = 138543618;
        v123 = a4;
        v124 = 2114;
        v125 = v6;
        v81 = "Interval too long (%{public}@) for event: %{public}@";
        v82 = v80;
        v83 = 22;
LABEL_79:
        _os_log_fault_impl(&_mh_execute_header, v82, OS_LOG_TYPE_FAULT, v81, buf, v83);
        return;
      }

      v14 = [v6 bundleID];
      if (!v14)
      {
        v84 = qword_10002B2E0;
        if (!os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_FAULT))
        {
          return;
        }

        *buf = 138477827;
        v123 = v6;
        v81 = "Bundle id is nil for app usage event: %{private}@";
        v82 = v84;
        v83 = 12;
        goto LABEL_79;
      }

      v15 = v14;
      if ((sub_10000E744(a1, v14) & 1) == 0)
      {
        break;
      }

      v16 = sub_10000E538(a1, v15);
      v95 = v12;
      if (v16)
      {
        goto LABEL_16;
      }

      v17 = qword_10002B2E0;
      if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v123 = v15;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Couldn't find a category for %{public}@, checking with the Categories framework", buf, 0xCu);
      }

      v16 = sub_100012F94([*(a1 + 168) objectForKeyedSubscript:v15]);
      if (v16 || (v16 = sub_100012FF4(v15)) != 0)
      {
LABEL_16:
        v94 = v16;
        v98 = v15;
        v18 = +[NSMutableArray arrayWithArray:](NSMutableArray, "arrayWithArray:", [*(a1 + 184) objectForKeyedSubscript:v15]);
        v19 = +[NSMutableArray array];
        v100 = 0u;
        v101 = 0u;
        v102 = 0u;
        v103 = 0u;
        v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v100 objects:v112 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v101;
          do
          {
            for (i = 0; i != v21; i = i + 1)
            {
              if (*v101 != v22)
              {
                objc_enumerationMutation(v18);
              }

              v24 = [objc_alloc(v11[153]) initWithIdentifier:*(*(&v100 + 1) + 8 * i)];
              [v19 addObject:v24];
            }

            v21 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v100 objects:v112 count:16];
          }

          while (v21);
        }

        v25 = sub_10000E414(a1, [v99 startDate]);
        v26 = [-[SRDeviceUsageReport _reportApplicationIdentifierByBundleIdentifier](v25 "_reportApplicationIdentifierByBundleIdentifier")];
        if (!v26)
        {
          v26 = [+[NSUUID UUID](NSUUID UUIDString];
          [-[SRDeviceUsageReport _reportApplicationIdentifierByBundleIdentifier](v25 "_reportApplicationIdentifierByBundleIdentifier")];
        }

        v93 = v26;
        [objc_msgSend(v6 "absoluteTimestamp")];
        v28 = v27;
        [(SRDeviceUsageReport *)v25 startTime];
        v30 = fmax(v29, v28);
        [(SRDeviceUsageReport *)v25 _firstAppLaunchTimeRelativeToInterval];
        v32 = fmin(v31, v30);
        [(SRDeviceUsageReport *)v25 _firstAppLaunchTimeRelativeToInterval];
        v97 = v25;
        if (v32 < v33)
        {
          [(SRDeviceUsageReport *)v25 _firstAppLaunchTimeRelativeToInterval];
          v35 = v34;
          *v118 = 0u;
          v119 = 0u;
          v120 = 0u;
          v121 = 0u;
          v36 = [(SRDeviceUsageReport *)v25 mutableApplicationUsageByCategory];
          v37 = [v36 countByEnumeratingWithState:v118 objects:buf count:16];
          if (v37)
          {
            v38 = v37;
            v39 = v35 - v32;
            v40 = *v119;
            do
            {
              for (j = 0; j != v38; j = j + 1)
              {
                if (*v119 != v40)
                {
                  objc_enumerationMutation(v36);
                }

                v42 = [-[SRDeviceUsageReport mutableApplicationUsageByCategory](v25 "mutableApplicationUsageByCategory")];
                v108 = 0u;
                v109 = 0u;
                v110 = 0u;
                v111 = 0u;
                v43 = [v42 countByEnumeratingWithState:&v108 objects:&v114 count:16];
                if (v43)
                {
                  v44 = v43;
                  v45 = *v109;
                  do
                  {
                    for (k = 0; k != v44; k = k + 1)
                    {
                      if (*v109 != v45)
                      {
                        objc_enumerationMutation(v42);
                      }

                      v47 = *(*(&v108 + 1) + 8 * k);
                      [v47 relativeStartTime];
                      [v47 setRelativeStartTime:v39 + v48];
                    }

                    v44 = [v42 countByEnumeratingWithState:&v108 objects:&v114 count:16];
                  }

                  while (v44);
                }

                v25 = v97;
              }

              v38 = [v36 countByEnumeratingWithState:v118 objects:buf count:16];
            }

            while (v38);
          }

          [(SRDeviceUsageReport *)v25 set_firstAppLaunchTimeRelativeToInterval:v32];
          a1 = v92;
          v10 = &MGCopyAnswer_ptr;
        }

        v96 = +[NSMutableArray array];
        v114 = 0u;
        v115 = 0u;
        v116 = 0u;
        v117 = 0u;
        v49 = *(a1 + 160);
        v50 = [v49 countByEnumeratingWithState:&v114 objects:buf count:16];
        if (v50)
        {
          v51 = v50;
          v52 = *v115;
          do
          {
            for (m = 0; m != v51; m = m + 1)
            {
              if (*v115 != v52)
              {
                objc_enumerationMutation(v49);
              }

              v54 = *(*(&v114 + 1) + 8 * m);
              v55 = objc_autoreleasePoolPush();
              v56 = [v54 eventBody];
              v57 = objc_alloc(v10[226]);
              v58 = [v56 timestamp];
              [v56 duration];
              v59 = [v57 initWithStartDate:v58 duration:?];
              if ([v59 intersectsDateInterval:v99] && objc_msgSend(objc_msgSend(v56, "bundleID"), "isEqual:", v98))
              {
                v60 = [v56 sessionInput];
                if (v60 - 1 >= 4)
                {
                  v63 = qword_10002B2E0;
                  if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_ERROR))
                  {
                    v64 = [v56 sessionInput];
                    *v118 = 134217984;
                    *&v118[4] = v64;
                    _os_log_error_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "Unsupported BMTextInputSessionInput %lu", v118, 0xCu);
                  }
                }

                else
                {
                  v61 = v60;
                  [v56 duration];
                  v10 = &MGCopyAnswer_ptr;
                  [v96 addObject:{+[SRTextInputSession textInputSessionWithDuration:sessionType:sessionIdentifier:](SRTextInputSession, "textInputSessionWithDuration:sessionType:sessionIdentifier:", v61, objc_msgSend(v56, "sessionID"), v62)}];
                }
              }

              objc_autoreleasePoolPop(v55);
            }

            v51 = [v49 countByEnumeratingWithState:&v114 objects:buf count:16];
          }

          while (v51);
        }

        if (v96)
        {
          v65 = [NSArray arrayWithArray:?];
        }

        else
        {
          v65 = &__NSArray0__struct;
        }

        v6 = v89;
        a1 = v92;
        v11 = &MGCopyAnswer_ptr;
        v12 = v95;
        v66 = v98;
        v67 = v30 - v32;
        if (!sub_10000D130(v92, v98))
        {
          v66 = 0;
        }

        [v99 duration];
        v69 = v68;
        v70 = [*(v92 + 216) isRoundingEnabled];
        v71 = round(v69);
        if (v70)
        {
          v69 = v71;
        }

        v72 = [*(v92 + 216) isRoundingEnabled];
        v73 = round(v67);
        if (v72)
        {
          v74 = v73;
        }

        else
        {
          v74 = v67;
        }

        v75 = [SRApplicationUsage applicationUsageWithBundleIdentifier:v66 reportApplicationIdentifier:v93 totalUsageTime:v65 relativeStartTime:v19 textInputSessions:v69 supplementalCategories:v74];
        v76 = qword_10002B2E0;
        if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_DEBUG))
        {
          *buf = v86;
          v123 = v75;
          v124 = 2112;
          v125 = v94;
          _os_log_debug_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEBUG, "Application usage:%@, category:%@", buf, 0x16u);
        }

        v77 = [-[SRDeviceUsageReport mutableApplicationUsageByCategory](v97 "mutableApplicationUsageByCategory")];
        if (!v77)
        {
          v77 = +[NSMutableArray array];
          [-[SRDeviceUsageReport mutableApplicationUsageByCategory](v97 "mutableApplicationUsageByCategory")];
        }

        [v77 addObject:v75];
      }

      else
      {
        v78 = qword_10002B2E0;
        if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v123 = v15;
          _os_log_error_impl(&_mh_execute_header, v78, OS_LOG_TYPE_ERROR, "No category found for %{public}@", buf, 0xCu);
        }
      }

      if (++v12 == v90)
      {
        v79 = [(NSArray *)obj countByEnumeratingWithState:&v104 objects:v113 count:16];
        v90 = v79;
        if (!v79)
        {
          return;
        }

        goto LABEL_5;
      }
    }

    v85 = qword_10002B2E0;
    if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v123 = v15;
      _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "Skipping bundle id %{public}@ because of its application type", buf, 0xCu);
    }
  }
}

id sub_100013A54(uint64_t a1, void *a2, id a3, void *a4)
{
  v7 = [a2 eventBody];
  v8 = [v7 absoluteTimestamp];
  v9 = sub_10000E2A8(a1, [v7 absoluteTimestamp], a3);
  if (v9)
  {
    a3 = [v9 startDate];
  }

  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = sub_10000CAD8(v8, a3, a4, 900.0);
  result = [(NSArray *)obj countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (result)
  {
    v12 = result;
    v13 = *v40;
    v14 = UsageReportGenerator;
    *&v11 = 138543362;
    v36 = v11;
    do
    {
      v15 = 0;
      v37 = v12;
      do
      {
        if (*v40 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v39 + 1) + 8 * v15);
        [(SRWebUsage *)v16 duration];
        if (v17 <= 900.0)
        {
          v19 = v17;
          v20 = sub_100012F94([*(a1 + 176) objectForKeyedSubscript:{objc_msgSend(v7, "webDomain")}]);
          if (v20)
          {
            v21 = v20;
            v22 = v13;
            v23 = v7;
            v24 = v14;
            v25 = objc_autoreleasePoolPush();
            v26 = [*(a1 + 216) isRoundingEnabled];
            v27 = round(v19);
            if (!v26)
            {
              v27 = v19;
            }

            v28 = a1;
            v29 = [SRWebUsage webUsageWithTotalUsageTime:v27];
            v30 = v28;
            v31 = sub_10000E414(v28, [(SRWebUsage *)v16 startDate]);
            v32 = [-[SRDeviceUsageReport mutableWebUsageByCategory](v31 "mutableWebUsageByCategory")];
            if (!v32)
            {
              v32 = +[NSMutableArray array];
              [-[SRDeviceUsageReport mutableWebUsageByCategory](v31 "mutableWebUsageByCategory")];
            }

            v14 = v24;
            cache = v24[18].cache;
            v7 = v23;
            if (os_log_type_enabled(cache, OS_LOG_TYPE_INFO))
            {
              *buf = 138478083;
              v44 = v29;
              v45 = 2113;
              v46 = v23;
              _os_log_impl(&_mh_execute_header, cache, OS_LOG_TYPE_INFO, "Adding web usage event %{private}@ from %{private}@", buf, 0x16u);
            }

            [v32 addObject:v29];
            objc_autoreleasePoolPop(v25);
            a1 = v30;
            v13 = v22;
            v12 = v37;
          }

          else
          {
            v34 = v14[18].cache;
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              v35 = [v7 webDomain];
              *buf = v36;
              v44 = v35;
              _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "No category found for %{public}@", buf, 0xCu);
            }
          }
        }

        else
        {
          v18 = v14[18].cache;
          if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
          {
            *buf = 138543618;
            v44 = v16;
            v45 = 2114;
            v46 = v7;
            _os_log_fault_impl(&_mh_execute_header, v18, OS_LOG_TYPE_FAULT, "Duration too long for web usage. %{public}@, %{public}@", buf, 0x16u);
          }
        }

        v15 = v15 + 1;
      }

      while (v12 != v15);
      result = [(NSArray *)obj countByEnumeratingWithState:&v39 objects:v47 count:16];
      v12 = result;
    }

    while (result);
  }

  return result;
}

void sub_100013DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = qword_10002B2E0;
    if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = a3;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error fetching categories for bundle IDs. %{public}@", &v9, 0xCu);
    }

    *(*(*(a1 + 40) + 8) + 40) = a3;
    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    Weak = objc_loadWeak((a1 + 48));
    if (Weak)
    {
      Weak = Weak[21];
    }

    [Weak setDictionary:a2];
    v8 = *(a1 + 32);

    dispatch_group_leave(v8);
  }
}

void sub_100013EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = qword_10002B2E0;
    if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = a3;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error fetching categories for web domains. %{public}@", &v9, 0xCu);
    }

    *(*(*(a1 + 40) + 8) + 40) = a3;
    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    Weak = objc_loadWeak((a1 + 48));
    if (Weak)
    {
      Weak = Weak[22];
    }

    [Weak setDictionary:a2];
    v8 = *(a1 + 32);

    dispatch_group_leave(v8);
  }
}

void sub_10001400C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = qword_10002B2E0;
    if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_ERROR))
    {
      v12 = 138543362;
      v13 = a3;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error fetching custom categories. %{public}@", &v12, 0xCu);
    }

    *(*(*(a1 + 40) + 8) + 40) = a3;
  }

  else
  {
    Weak = objc_loadWeak((a1 + 48));
    v8 = Weak;
    if (Weak)
    {
      Weak = Weak[23];
    }

    [Weak setDictionary:a2];
    v9 = qword_10002B2E0;
    if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_INFO))
    {
      if (v8)
      {
        v10 = v8[23];
        v11 = v8[17];
      }

      else
      {
        v10 = 0;
        v11 = 0;
      }

      v12 = 138478083;
      v13 = v10;
      v14 = 2113;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Got supplemental categories: %{private}@ for bundleIDs %{private}@", &v12, 0x16u);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

uint64_t sub_100014168(uint64_t a1)
{
  dispatch_release(*(a1 + 32));
  v2 = qword_10002B2E0;
  if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      v3 = *(v3 + 168);
    }

    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Bundle categories: %@", &v9, 0xCu);
    v2 = qword_10002B2E0;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      v4 = *(v4 + 184);
    }

    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Bundle supplemental categories: %@", &v9, 0xCu);
    v2 = qword_10002B2E0;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      v5 = *(v5 + 176);
    }

    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "WebDomain categories: %@", &v9, 0xCu);
  }

  if (*(*(*(a1 + 56) + 8) + 40) || *(*(*(a1 + 64) + 8) + 40) || *(*(*(a1 + 72) + 8) + 40))
  {
    v6 = qword_10002B2E0;
    if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v9) = 0;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Error fetching categories", &v9, 2u);
    }

    return (*(*(a1 + 48) + 16))(*(a1 + 48), [SRError errorWithCode:8194]);
  }

  else
  {
    v8 = qword_10002B2E0;
    if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_INFO))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Categories fetching is completed", &v9, 2u);
    }

    return (*(*(a1 + 48) + 16))(*(a1 + 48), 0);
  }
}

void sub_100014B20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_destroyWeak((v10 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100014D40(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = qword_10002B2E0;
    if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v9 = a2;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to kick of database download because %{public}@", buf, 0xCu);
    }
  }

  v5 = *(*(a1 + 32) + 8);
  v7 = @"com.apple.sensorkit.launchUsageCollector";
  return [v5 registerForXPCActivities:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v7, 1)}];
}

void sub_100014EFC(id a1)
{
  v2[0] = @"Book";
  v2[1] = @"Books";
  v3[0] = SRDeviceUsageCategoryBooks;
  v3[1] = SRDeviceUsageCategoryBooks;
  v2[2] = @"Business";
  v2[3] = @"Catalogs";
  v3[2] = SRDeviceUsageCategoryBusiness;
  v3[3] = SRDeviceUsageCategoryCatalogs;
  v2[4] = @"Developer Tools";
  v2[5] = @"Education";
  v3[4] = SRDeviceUsageCategoryDeveloperTools;
  v3[5] = SRDeviceUsageCategoryEducation;
  v2[6] = @"Entertainment";
  v2[7] = @"Finance";
  v3[6] = SRDeviceUsageCategoryEntertainment;
  v3[7] = SRDeviceUsageCategoryFinance;
  v2[8] = @"Food & Drink";
  v2[9] = @"Food &amp; Drink";
  v3[8] = SRDeviceUsageCategoryFoodAndDrink;
  v3[9] = SRDeviceUsageCategoryFoodAndDrink;
  v2[10] = @"Games";
  v2[11] = @"Graphics & Design";
  v3[10] = SRDeviceUsageCategoryGames;
  v3[11] = SRDeviceUsageCategoryGraphicsAndDesign;
  v2[12] = @"Graphics &amp; Design";
  v2[13] = @"Health & Fitness";
  v3[12] = SRDeviceUsageCategoryGraphicsAndDesign;
  v3[13] = SRDeviceUsageCategoryHealthAndFitness;
  v2[14] = @"Health &amp; Fitness";
  v2[15] = @"Kids";
  v3[14] = SRDeviceUsageCategoryHealthAndFitness;
  v3[15] = SRDeviceUsageCategoryKids;
  v2[16] = @"Lifestyle";
  v2[17] = @"Magazines & Newspapers";
  v3[16] = SRDeviceUsageCategoryLifestyle;
  v3[17] = SRDeviceUsageCategoryNewsstand;
  v2[18] = @"Medical";
  v2[19] = @"Miscellaneous";
  v3[18] = SRDeviceUsageCategoryMedical;
  v3[19] = SRDeviceUsageCategoryMiscellaneous;
  v2[20] = @"Music";
  v2[21] = @"Navigation";
  v3[20] = SRDeviceUsageCategoryMusic;
  v3[21] = SRDeviceUsageCategoryNavigation;
  v2[22] = @"News";
  v2[23] = @"Newsstand";
  v3[22] = SRDeviceUsageCategoryNews;
  v3[23] = SRDeviceUsageCategoryNewsstand;
  v2[24] = @"Photo & Video";
  v2[25] = @"Photo &amp; Video";
  v3[24] = SRDeviceUsageCategoryPhotoAndVideo;
  v3[25] = SRDeviceUsageCategoryPhotoAndVideo;
  v2[26] = @"Photography";
  v2[27] = @"Productivity";
  v3[26] = SRDeviceUsageCategoryPhotoAndVideo;
  v3[27] = SRDeviceUsageCategoryProductivity;
  v2[28] = @"Reference";
  v2[29] = @"Shopping";
  v3[28] = SRDeviceUsageCategoryReference;
  v3[29] = SRDeviceUsageCategoryShopping;
  v2[30] = @"Social Networking";
  v2[31] = @"Sports";
  v3[30] = SRDeviceUsageCategorySocialNetworking;
  v3[31] = SRDeviceUsageCategorySports;
  v2[32] = @"Stickers";
  v2[33] = @"Travel";
  v3[32] = SRDeviceUsageCategoryStickers;
  v3[33] = SRDeviceUsageCategoryTravel;
  v2[34] = @"Utilities";
  v2[35] = @"Weather";
  v3[34] = SRDeviceUsageCategoryUtilities;
  v3[35] = SRDeviceUsageCategoryWeather;
  qword_10002B300 = [NSDictionary dictionaryWithObjects:v3 forKeys:v2 count:36];
  v1 = qword_10002B300;
}

void sub_10001528C(id a1)
{
  v2[0] = &off_100026D20;
  v2[1] = &off_100026D38;
  v3[0] = SRDeviceUsageCategoryBusiness;
  v3[1] = SRDeviceUsageCategoryWeather;
  v2[2] = &off_100026D50;
  v2[3] = &off_100026D68;
  v3[2] = SRDeviceUsageCategoryUtilities;
  v3[3] = SRDeviceUsageCategoryTravel;
  v2[4] = &off_100026D80;
  v2[5] = &off_100026D98;
  v3[4] = SRDeviceUsageCategorySports;
  v3[5] = SRDeviceUsageCategorySocialNetworking;
  v2[6] = &off_100026DB0;
  v2[7] = &off_100026DC8;
  v3[6] = SRDeviceUsageCategoryReference;
  v3[7] = SRDeviceUsageCategoryProductivity;
  v2[8] = &off_100026DE0;
  v2[9] = &off_100026DF8;
  v3[8] = SRDeviceUsageCategoryPhotoAndVideo;
  v3[9] = SRDeviceUsageCategoryNews;
  v2[10] = &off_100026E10;
  v2[11] = &off_100026E28;
  v3[10] = SRDeviceUsageCategoryNavigation;
  v3[11] = SRDeviceUsageCategoryMusic;
  v2[12] = &off_100026E40;
  v2[13] = &off_100026E58;
  v3[12] = SRDeviceUsageCategoryLifestyle;
  v3[13] = SRDeviceUsageCategoryHealthAndFitness;
  v2[14] = &off_100026E70;
  v2[15] = &off_100026E88;
  v3[14] = SRDeviceUsageCategoryGames;
  v3[15] = SRDeviceUsageCategoryFinance;
  v2[16] = &off_100026EA0;
  v2[17] = &off_100026EB8;
  v3[16] = SRDeviceUsageCategoryEntertainment;
  v3[17] = SRDeviceUsageCategoryEducation;
  v2[18] = &off_100026ED0;
  v2[19] = &off_100026EE8;
  v3[18] = SRDeviceUsageCategoryBooks;
  v3[19] = SRDeviceUsageCategoryMedical;
  v2[20] = &off_100026F00;
  v2[21] = &off_100026F18;
  v3[20] = SRDeviceUsageCategoryNewsstand;
  v3[21] = SRDeviceUsageCategoryCatalogs;
  qword_10002B310 = [NSDictionary dictionaryWithObjects:v3 forKeys:v2 count:22];
  v1 = qword_10002B310;
}

void sub_100015510(id a1)
{
  v2[0] = @"com.apple.Health";
  v2[1] = @"com.apple.Fitness";
  v3[0] = SRDeviceUsageCategoryHealthAndFitness;
  v3[1] = SRDeviceUsageCategoryHealthAndFitness;
  qword_10002B320 = [NSDictionary dictionaryWithObjects:v3 forKeys:v2 count:2];
  v1 = qword_10002B320;
}