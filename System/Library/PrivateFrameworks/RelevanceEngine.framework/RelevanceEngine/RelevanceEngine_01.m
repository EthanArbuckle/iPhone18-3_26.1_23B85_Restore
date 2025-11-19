id soft__REEngineDefaults_0()
{
  if (RelevanceEngineLibraryCore_1())
  {
    v4 = 0;
    v5 = &v4;
    v6 = 0x2050000000;
    v0 = get_REEngineDefaultsClass_softClass_0;
    v7 = get_REEngineDefaultsClass_softClass_0;
    if (!get_REEngineDefaultsClass_softClass_0)
    {
      v3[0] = MEMORY[0x277D85DD0];
      v3[1] = 3221225472;
      v3[2] = __get_REEngineDefaultsClass_block_invoke_0;
      v3[3] = &unk_2785F9BC0;
      v3[4] = &v4;
      __get_REEngineDefaultsClass_block_invoke_0(v3);
      v0 = v5[3];
    }

    v1 = v0;
    _Block_object_dispose(&v4, 8);
  }

  else
  {
    v0 = 0;
  }

  return v0;
}

void sub_22863AE68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __RE_Cached_updateValue__DisplayDebugProbabilities()
{
  os_unfair_lock_lock(&__RE_Cached_lock__DisplayDebugProbabilities);
  __RE_Cached_hasValue__DisplayDebugProbabilities = 0;
  os_unfair_lock_unlock(&__RE_Cached_lock__DisplayDebugProbabilities);

  RERelevanceEngineDisplayDebugProbabilitiesDidUpdate();
}

uint64_t RelevanceEngineLibraryCore_1()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!RelevanceEngineLibraryCore_frameworkLibrary_1)
  {
    RelevanceEngineLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  result = RelevanceEngineLibraryCore_frameworkLibrary_1;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __RelevanceEngineLibraryCore_block_invoke_1(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  RelevanceEngineLibraryCore_frameworkLibrary_1 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

id REParametersForIntent(void *a1)
{
  v28[16] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 _parameterCombinations];
    v4 = [v3 count];

    if (v4)
    {
      v5 = [v2 _validParameterCombinations];
      v6 = [v5 allKeys];

      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __REParameterComplexitiyComparator_block_invoke;
      v28[3] = &__block_descriptor_40_e11_q24__0_8_16l;
      v28[4] = 1;
      v7 = MEMORY[0x22AABC5E0](v28);
      v8 = [v6 sortedArrayUsingComparator:v7];

      v9 = [v8 firstObject];

      v10 = v2;
      v11 = v9;
      v12 = v11;
      if (v11)
      {
        v13 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v11, "count")}];
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v14 = v12;
        v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v25;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v25 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v24 + 1) + 8 * i);
              v20 = [v10 valueForKey:{v19, v24}];
              [v13 setObject:v20 forKeyedSubscript:v19];
            }

            v16 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
          }

          while (v16);
        }

        v21 = [v13 copy];
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v21 = MEMORY[0x277CBEC10];
    }
  }

  else
  {
    v21 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

id RESimplifiedParametersForIntent(void *a1)
{
  v50[16] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v19 = 0;
    goto LABEL_34;
  }

  v3 = [v1 _parameterCombinations];
  v4 = [v3 count];

  if (!v4)
  {
    v19 = MEMORY[0x277CBEC10];
    goto LABEL_34;
  }

  v5 = v2;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__22;
  v47 = __Block_byref_object_dispose__22;
  v48 = 0;
  v6 = [v5 _parameterCombinations];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __REPrimaryParameterCombinationFromIntent_block_invoke;
  v42[3] = &unk_2785FCE70;
  v42[4] = &v43;
  [v6 enumerateKeysAndObjectsUsingBlock:v42];
  if (v44[5])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v44[5] mutableCopy];
      v8 = NSStringFromSelector(sel_resumePlayback);
      [v7 removeObject:v8];

      v9 = [v7 copy];
      v10 = v44[5];
      v44[5] = v9;
    }

    v11 = [MEMORY[0x277CBEB18] array];
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v12 = [v5 _validParameterCombinations];
    v13 = [v12 countByEnumeratingWithState:&v38 objects:v50 count:16];
    if (v13)
    {
      v14 = *v39;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v39 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v38 + 1) + 8 * i);
          if ([v16 isSubsetOfSet:v44[5]])
          {
            [v11 addObject:v16];
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v38 objects:v50 count:16];
      }

      while (v13);
    }

    if ([v11 count])
    {
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = __REParameterComplexitiyComparator_block_invoke;
      v49[3] = &__block_descriptor_40_e11_q24__0_8_16l;
      v49[4] = 1;
      v17 = MEMORY[0x22AABC5E0](v49);
      [v11 sortUsingComparator:v17];

      v18 = [v11 firstObject];
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  _Block_object_dispose(&v43, 8);
  if (v18)
  {
    v20 = v5;
    v21 = v18;
LABEL_25:
    v29 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v21, "count")}];
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v30 = v21;
    v31 = [v30 countByEnumeratingWithState:&v38 objects:v50 count:16];
    if (v31)
    {
      v32 = *v39;
      do
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v39 != v32)
          {
            objc_enumerationMutation(v30);
          }

          v34 = *(*(&v38 + 1) + 8 * j);
          v35 = [v5 valueForKey:v34];
          [v29 setObject:v35 forKeyedSubscript:v34];
        }

        v31 = [v30 countByEnumeratingWithState:&v38 objects:v50 count:16];
      }

      while (v31);
    }

    v19 = [v29 copy];
    goto LABEL_33;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v23 = [v5 _validParameterCombinations];
  v24 = [v23 allKeys];

  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __REParameterComplexitiyComparator_block_invoke;
  v50[3] = &__block_descriptor_40_e11_q24__0_8_16l;
  v50[4] = (isKindOfClass & 1) == 0;
  v25 = MEMORY[0x22AABC5E0](v50);
  v26 = [v24 sortedArrayUsingComparator:v25];

  v27 = [v26 firstObject];

  v28 = v5;
  v21 = v27;
  if (v21)
  {
    goto LABEL_25;
  }

  v19 = 0;
LABEL_33:

LABEL_34:
  v36 = *MEMORY[0x277D85DE8];

  return v19;
}

void sub_22863B8D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id REIntentBySimplifyingParametersForIntent(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = RESimplifiedParametersForIntent(v1);
    if (v3)
    {
      v4 = [v2 _keyImage];
      v5 = [v2 _emptyCopy];

      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __REIntentBySimplifyingParametersForIntent_block_invoke;
      v8[3] = &unk_2785F9940;
      v2 = v5;
      v9 = v2;
      [v3 enumerateKeysAndObjectsUsingBlock:v8];
      if (v4)
      {
        v6 = [v2 _keyImage];

        if (!v6)
        {
          [v2 _setDefaultImage:v4];
        }
      }
    }

    v2 = v2;
  }

  return v2;
}

id RERelevanceProviderForRelevanceProviders(void *a1, void *a2)
{
  v67 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v58 = a2;
  if ([v3 count])
  {
    v59 = [MEMORY[0x277CBEB18] array];
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v57 = v3;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v60 objects:v66 count:16];
    if (!v5)
    {
      goto LABEL_72;
    }

    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = 0x277CD3000uLL;
    v10 = *v61;
    while (1)
    {
      v11 = 0;
      do
      {
        if (*v61 != v10)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v60 + 1) + 8 * v11);
        v13 = *(v9 + 2952);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (v8)
          {
            v8 = 1;
            goto LABEL_44;
          }

          v14 = [v12 startDate];
          v15 = [v12 endDate];
          if (v15)
          {
            v16 = v15;
            v17 = REEndOfDayForDate(v15);
            v18 = [v16 earlierDate:v17];

            [(REDateRelevanceProvider *)v18 timeIntervalSinceDate:v14];
            if (v19 >= 0.0)
            {
              v20 = v19;
            }

            else
            {
              v20 = 0.0;
            }

            v21 = [REDateRelevanceProvider alloc];
            v22 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v14 duration:v20];
            if (v20 <= 900.0)
            {
              v47 = [(REDateRelevanceProvider *)v21 initWithInterval:v22];
              [v59 addObject:v47];
            }

            else
            {
              v23 = [(REDailyRoutineRelevanceProvider *)v14 dateByAddingTimeInterval:900.0];
              v24 = [(REDateRelevanceProvider *)v21 initWithInterval:v22 becomesIrrelevantDate:v23];
              [v59 addObject:v24];
            }

            v9 = 0x277CD3000;
          }

          else
          {
            v18 = [[REDateRelevanceProvider alloc] initWithEventDate:v14];
            [v59 addObject:v18];
          }

          goto LABEL_42;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (v7)
          {
            v7 = 1;
            goto LABEL_44;
          }

          v14 = [v12 region];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && (([(REDailyRoutineRelevanceProvider *)v14 notifyOnExit]& 1) != 0 || [(REDailyRoutineRelevanceProvider *)v14 notifyOnEntry]) && ([(REDailyRoutineRelevanceProvider *)v14 radius], v27 > 0.0))
          {
            if (v27 > 10000.0)
            {
              v28 = objc_alloc(MEMORY[0x277CBFBC8]);
              [(REDailyRoutineRelevanceProvider *)v14 center];
              v30 = v29;
              v32 = v31;
              v33 = [(REDailyRoutineRelevanceProvider *)v14 identifier];
              v34 = [v28 initWithCenter:v33 radius:v30 identifier:{v32, 10000.0}];

              v9 = 0x277CD3000;
              [(REDailyRoutineRelevanceProvider *)v34 setGeoReferenceFrame:[(REDailyRoutineRelevanceProvider *)v34 geoReferenceFrame]];
              v14 = v34;
            }

            if ([(REDailyRoutineRelevanceProvider *)v14 notifyOnEntry]&& [(REDailyRoutineRelevanceProvider *)v14 notifyOnExit])
            {
              v35 = objc_alloc(MEMORY[0x277CE41F8]);
              [(REDailyRoutineRelevanceProvider *)v14 center];
              v37 = v36;
              v39 = v38;
              v40 = [MEMORY[0x277CBEAA8] date];
              v41 = [v35 initWithCoordinate:v40 altitude:-[REDailyRoutineRelevanceProvider geoReferenceFrame](v14 horizontalAccuracy:"geoReferenceFrame") verticalAccuracy:v37 timestamp:v39 referenceFrame:{0.0, 0.0, -1.0}];

              v42 = [RELocationRelevanceProvider alloc];
              [(REDailyRoutineRelevanceProvider *)v14 radius];
              v43 = [(RELocationRelevanceProvider *)v42 initWithLocation:v41 radius:?];
              v44 = [(RELocationRelevanceProvider *)v43 providerWithBundleIdentifier:v58];

              [v59 addObject:v44];
              v9 = 0x277CD3000;
            }

            else
            {
              v41 = [[REGeofenceRelevanceProvider alloc] initWithRegion:v14 bundleIdentifier:v58];
              [v59 addObject:v41];
            }

            v7 = 1;
          }

          else
          {
            v7 = 0;
          }

          goto LABEL_43;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v14 = RELogForDomain(0);
          if (os_log_type_enabled(&v14->super.super, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v65 = v12;
            p_super = &v14->super.super;
            v46 = "Unknown relevance provider type: %@";
            goto LABEL_36;
          }

LABEL_43:

          goto LABEL_44;
        }

        v25 = [v12 situation];
        v26 = v25;
        if (v25 > 4)
        {
          if (v25 > 6)
          {
            switch(v25)
            {
              case 7:
                v50 = [REBluetoothDeviceRelevanceProvider alloc];
                v51 = 1;
LABEL_64:
                v48 = [(REBluetoothDeviceRelevanceProvider *)v50 initWithConnectionToCar:1 connectionToSpeaker:v51];
                break;
              case 8:
                v48 = [[REWorkoutRelevanceProvider alloc] initWithState:1];
                break;
              case 9:
                v48 = [[REActivityRelevanceProvider alloc] initWithActiveEnergyState:0 exerciseTimeState:0 standHourState:0];
                break;
              default:
                goto LABEL_69;
            }

            v14 = v48;
            goto LABEL_67;
          }

          if (v25 != 5)
          {
            v50 = [REBluetoothDeviceRelevanceProvider alloc];
            v51 = 0;
            goto LABEL_64;
          }

          v49 = 4;
          goto LABEL_61;
        }

        if (v25 > 2)
        {
          if (v25 == 3)
          {
            v49 = 2;
          }

          else
          {
            v49 = 3;
          }

LABEL_61:
          v52 = [[RELocationRelevanceProvider alloc] initWithLocationType:v49];
          v14 = v52;
          if ((v7 & 1) == 0)
          {
            v53 = [(RELocationRelevanceProvider *)v52 providerWithBundleIdentifier:v58];

            [v59 addObject:v53];
            v7 = 1;
            v14 = v53;
            goto LABEL_43;
          }

          goto LABEL_67;
        }

        if (v25 >= 2)
        {
          if (v25 != 2)
          {
LABEL_69:
            v14 = RELogForDomain(0);
            if (os_log_type_enabled(&v14->super.super, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              v65 = v26;
              p_super = &v14->super.super;
              v46 = "Unknown INDailyRoutineSituation: %ld";
LABEL_36:
              _os_log_impl(&dword_22859F000, p_super, OS_LOG_TYPE_DEFAULT, v46, buf, 0xCu);
            }

            goto LABEL_43;
          }

          v49 = 1;
          goto LABEL_61;
        }

        v14 = [[REDailyRoutineRelevanceProvider alloc] initWithDailyRoutineType:v25];
        if ((v8 & 1) == 0)
        {
          [v59 addObject:v14];
LABEL_42:
          v8 = 1;
          goto LABEL_43;
        }

LABEL_67:
        if (v14)
        {
          [v59 addObject:v14];
          goto LABEL_43;
        }

LABEL_44:
        ++v11;
      }

      while (v6 != v11);
      v54 = [v4 countByEnumeratingWithState:&v60 objects:v66 count:16];
      v6 = v54;
      if (!v54)
      {
LABEL_72:

        v3 = v57;
        goto LABEL_74;
      }
    }
  }

  v59 = MEMORY[0x277CBEBF8];
LABEL_74:

  v55 = *MEMORY[0x277D85DE8];

  return v59;
}

void *__REParameterComplexitiyComparator_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = v6;
  v9 = *(a1 + 32);
  v10 = v7;
  v11 = v8;
  if (!v9)
  {
    goto LABEL_4;
  }

  if (v9 == 1)
  {
    v10 = v8;
    v11 = v7;
LABEL_4:
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "count")}];
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v11, "count")}];
    v11 = [v12 compare:v13];
  }

  return v11;
}

uint64_t __Block_byref_object_copy__22(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __REPrimaryParameterCombinationFromIntent_block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  if ([a3 isPrimary])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

void _HTTPConnectionInvalidated(void *a1)
{
  v1 = [a1 weakObjectValue];
  [v1 invalidated];
}

void _HTTPConnectionRecievedError(void *a1, uint64_t a2)
{
  v3 = [a1 weakObjectValue];
  [v3 didRecieveError:a2];
}

void _HTTPConnectionDidReceiveRequest(void *a1, uint64_t a2)
{
  v3 = [a1 weakObjectValue];
  [v3 didRecieveRequest:a2];
}

void _HTTPConnectionDidSendResponse(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = [a1 weakObjectValue];
  [v4 didCompleteResponse:a3 error:0];
}

void _HTTPConnectionFailedToSendResponse(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 weakObjectValue];
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CBE648] code:100 userInfo:0];
  [v5 didCompleteResponse:a3 error:v4];
}

void sub_22863CCAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22863D0C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22863D594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__23(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22863D7AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22863D9BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_22863DC44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_22863DE8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_22863E13C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_22863E3EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_22863E6E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_0_8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(*result + 40);
  return result;
}

uint64_t REHashDataUInt8(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a2)
  {
    v3 = 8 * a2 - 8;
    do
    {
      v2 ^= HashingValuesTable[*(a1 - 1 + a2)] >> (v3 & 0x38);
      v3 -= 8;
      --a2;
    }

    while (a2);
  }

  return v2;
}

uint64_t REHashDataUInt16(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a2)
  {
    v3 = 16 * a2 - 16;
    do
    {
      v2 ^= HashingValuesTable[*(a1 - 1 + a2)] >> (v3 & 0x30);
      v3 -= 16;
      --a2;
    }

    while (a2);
  }

  return v2;
}

uint64_t REHashDataUInt32(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = 32 * a2 - 32;
  v4 = v2 - 1;
  do
  {
    result = result ^ (HashingValuesTable[*(v4 + a2)] >> (v3 & 0x20));
    v3 -= 32;
    --a2;
  }

  while (a2);
  return result;
}

uint64_t REHashDataUInt64(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  result = 0;
  v4 = a1 - 1;
  do
  {
    result ^= HashingValuesTable[*(v4 + a2--)];
  }

  while (a2);
  return result;
}

uint64_t REHashData(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  result = 0;
  v4 = a1 - 1;
  do
  {
    result ^= HashingValuesTable[*(v4 + a2--)];
  }

  while (a2);
  return result;
}

uint64_t REHashString(void *a1)
{
  v1 = a1;
  v2 = [v1 UTF8String];
  v3 = [v1 length];
  v4 = 0;
  if (v3)
  {
    v5 = 32 * v3 - 32;
    do
    {
      v4 = v4 ^ (HashingValuesTable[*(v2 - 1 + v3)] >> (v5 & 0x20));
      v5 -= 32;
      --v3;
    }

    while (v3);
  }

  return v4;
}

void sub_22863F454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose((v42 - 232), 8);
  _Unwind_Resume(a1);
}

void sub_22863F750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22863FA14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_22863FBF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22863FD1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22863FE3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22863FF5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22864007C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2286410A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

BOOL REConfigureTrainingSimulationExportedObjectClass(objc_class *a1)
{
  v2 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v2, sel__re_swizzled_relevanceEngine_createElementFromDescription_completion_);
  Implementation = method_getImplementation(InstanceMethod);
  MethodImplementation = class_getMethodImplementation(a1, sel_relevanceEngine_createElementFromDescription_completion_);
  TypeEncoding = method_getTypeEncoding(InstanceMethod);
  if (MethodImplementation)
  {
    class_replaceMethod(a1, sel_relevanceEngine_createElementFromDescription_completion_, Implementation, TypeEncoding);
  }

  else
  {
    class_addMethod(a1, sel_relevanceEngine_createElementFromDescription_completion_, Implementation, TypeEncoding);
  }

  v7 = objc_opt_class();
  v8 = class_getInstanceMethod(v7, sel__re_swizzled_relevanceEngine_performCommand_withOptions_completion_);
  v9 = method_getImplementation(v8);
  v10 = class_getMethodImplementation(a1, sel_relevanceEngine_performCommand_withOptions_completion_);
  v11 = method_getTypeEncoding(v8);
  if (v10)
  {
    class_replaceMethod(a1, sel_relevanceEngine_performCommand_withOptions_completion_, v9, v11);
  }

  else
  {
    class_addMethod(a1, sel_relevanceEngine_performCommand_withOptions_completion_, v9, v11);
  }

  v12 = objc_opt_class();
  v13 = class_getInstanceMethod(v12, sel__re_swizzled_availableRelevanceEngines_);
  v14 = method_getImplementation(v13);
  v15 = class_getMethodImplementation(a1, sel_availableRelevanceEngines_);
  v16 = method_getTypeEncoding(v13);
  if (v15)
  {
    class_replaceMethod(a1, sel_availableRelevanceEngines_, v14, v16);
  }

  else
  {
    class_addMethod(a1, sel_availableRelevanceEngines_, v14, v16);
  }

  v17 = objc_opt_class();
  v18 = class_getInstanceMethod(v17, sel__re_swizzled_fetchAllElementIdentifiersInRelevanceEngine_completion_);
  v19 = method_getImplementation(v18);
  v20 = class_getMethodImplementation(a1, sel_fetchAllElementIdentifiersInRelevanceEngine_completion_);
  v21 = method_getTypeEncoding(v18);
  if (v20)
  {
    class_replaceMethod(a1, sel_fetchAllElementIdentifiersInRelevanceEngine_completion_, v19, v21);
  }

  else
  {
    class_addMethod(a1, sel_fetchAllElementIdentifiersInRelevanceEngine_completion_, v19, v21);
  }

  v22 = objc_opt_class();
  v23 = class_getInstanceMethod(v22, sel__re_swizzled_fetchAllElementsInRelevanceEngine_completion_);
  v24 = method_getImplementation(v23);
  v25 = class_getMethodImplementation(a1, sel_fetchAllElementsInRelevanceEngine_completion_);
  v26 = method_getTypeEncoding(v23);
  if (v25)
  {
    class_replaceMethod(a1, sel_fetchAllElementsInRelevanceEngine_completion_, v24, v26);
  }

  else
  {
    class_addMethod(a1, sel_fetchAllElementsInRelevanceEngine_completion_, v24, v26);
  }

  v27 = objc_opt_class();
  v28 = class_getInstanceMethod(v27, sel__re_swizzled_gatherDiagnosticLogsForRelevanceEngine_completion_);
  v29 = method_getImplementation(v28);
  v30 = class_getMethodImplementation(a1, sel_gatherDiagnosticLogsForRelevanceEngine_completion_);
  v31 = method_getTypeEncoding(v28);
  if (v30)
  {
    class_replaceMethod(a1, sel_gatherDiagnosticLogsForRelevanceEngine_completion_, v29, v31);
  }

  else
  {
    class_addMethod(a1, sel_gatherDiagnosticLogsForRelevanceEngine_completion_, v29, v31);
  }

  v32 = objc_opt_class();
  v33 = class_getInstanceMethod(v32, sel__re_swizzled_relevanceEngine_runActionOfElementWithDescription1_completion_);
  v34 = method_getImplementation(v33);
  v35 = class_getMethodImplementation(a1, sel_relevanceEngine_runActionOfElementWithDescription1_completion_);
  v36 = method_getTypeEncoding(v33);
  if (v35)
  {
    class_replaceMethod(a1, sel_relevanceEngine_runActionOfElementWithDescription1_completion_, v34, v36);
  }

  else
  {
    class_addMethod(a1, sel_relevanceEngine_runActionOfElementWithDescription1_completion_, v34, v36);
  }

  v37 = objc_opt_class();
  v38 = class_getInstanceMethod(v37, sel__re_swizzled_relevanceEngine_encodedObjectAtPath_completion_);
  v39 = method_getImplementation(v38);
  v40 = class_getMethodImplementation(a1, sel_relevanceEngine_encodedObjectAtPath_completion_);
  v41 = method_getTypeEncoding(v38);
  if (v40)
  {
    class_replaceMethod(a1, sel_relevanceEngine_encodedObjectAtPath_completion_, v39, v41);
  }

  else
  {
    class_addMethod(a1, sel_relevanceEngine_encodedObjectAtPath_completion_, v39, v41);
  }

  v42 = objc_opt_class();
  v43 = class_getInstanceMethod(v42, sel__re_runAfterEngineIsLoaded_);
  v44 = method_getImplementation(v43);
  v45 = method_getTypeEncoding(v43);

  return class_addMethod(a1, sel__re_runAfterEngineIsLoaded_, v44, v45);
}

void REExportRelevanceEngineService(void *a1)
{
  v3 = a1;
  if (v3)
  {
    if (REExportRelevanceEngineService_onceToken != -1)
    {
      REExportRelevanceEngineService_cold_1();
    }

    os_unfair_lock_lock(&REExportRelevanceEngineService_SimulationProxiesLock);
    v1 = [SimulationProxies objectForKeyedSubscript:v3];

    if (!v1)
    {
      v2 = [[_RETrainingProxy alloc] initWithServiceName:v3];
      [SimulationProxies setObject:v2 forKeyedSubscript:v3];
    }

    os_unfair_lock_unlock(&REExportRelevanceEngineService_SimulationProxiesLock);
  }
}

uint64_t __REExportRelevanceEngineService_block_invoke()
{
  REExportRelevanceEngineService_SimulationProxiesLock = 0;
  v0 = [MEMORY[0x277CBEB38] dictionary];
  v1 = SimulationProxies;
  SimulationProxies = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_22864B8C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__25(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __REScriptProcessorCache_block_invoke()
{
  v0 = [MEMORY[0x277CBEB38] dictionary];
  v1 = REScriptProcessorCache_Cache;
  REScriptProcessorCache_Cache = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t RERemoteTrainingMachServiceForProcessName(__CFString *a1)
{
  v1 = &stru_283B97458;
  if (a1)
  {
    v1 = a1;
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@.RelevanceEngine.RemoteTraining", v1];
}

id RERemoteTrainingServerInterface()
{
  if (RERemoteTrainingServerInterface_onceToken != -1)
  {
    RERemoteTrainingServerInterface_cold_1();
  }

  v1 = RERemoteTrainingServerInterface_ServerInterface;

  return v1;
}

void __RERemoteTrainingServerInterface_block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283BC72C8];
  v1 = RERemoteTrainingServerInterface_ServerInterface;
  RERemoteTrainingServerInterface_ServerInterface = v0;

  v2 = RERemoteTrainingServerInterface_ServerInterface;
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_performTrainingWithElements_events_interactions_completion_ argumentIndex:0 ofReply:0];

  v6 = RERemoteTrainingServerInterface_ServerInterface;
  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  [v6 setClasses:v9 forSelector:sel_performTrainingWithElements_events_interactions_completion_ argumentIndex:1 ofReply:0];

  v10 = RERemoteTrainingServerInterface_ServerInterface;
  v11 = MEMORY[0x277CBEB98];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  [v10 setClasses:v13 forSelector:sel_performTrainingWithElements_events_interactions_completion_ argumentIndex:2 ofReply:0];

  v14 = RERemoteTrainingServerInterface_ServerInterface;
  v15 = MEMORY[0x277CBEB98];
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = [v15 setWithObjects:{v16, v17, v18, objc_opt_class(), 0}];
  [v14 setClasses:v19 forSelector:sel_updateRemoteAttribute_forKey_completion_ argumentIndex:0 ofReply:0];
}

id RERemoteTrainingClientInterface()
{
  if (RERemoteTrainingClientInterface_onceToken != -1)
  {
    RERemoteTrainingClientInterface_cold_1();
  }

  v1 = RERemoteTrainingClientInterface_ClientInterface;

  return v1;
}

uint64_t __RERemoteTrainingClientInterface_block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283BE3928];
  v1 = RERemoteTrainingClientInterface_ClientInterface;
  RERemoteTrainingClientInterface_ClientInterface = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_22864C384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22864CA44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22864CDE8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

id getBluetoothManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getBluetoothManagerClass_softClass;
  v7 = getBluetoothManagerClass_softClass;
  if (!getBluetoothManagerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getBluetoothManagerClass_block_invoke;
    v3[3] = &unk_2785F9BC0;
    v3[4] = &v4;
    __getBluetoothManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_22864D1B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t BluetoothManagerLibraryCore()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!BluetoothManagerLibraryCore_frameworkLibrary)
  {
    BluetoothManagerLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = BluetoothManagerLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __BluetoothManagerLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  BluetoothManagerLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getBluetoothManagerClass_block_invoke(uint64_t a1)
{
  BluetoothManagerLibrary();
  result = objc_getClass("BluetoothManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getBluetoothManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getBluetoothManagerClass_block_invoke_cold_1();
    return BluetoothManagerLibrary();
  }

  return result;
}

uint64_t BluetoothManagerLibrary()
{
  v0 = BluetoothManagerLibraryCore();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

void *__getBluetoothAvailabilityChangedNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = BluetoothManagerLibrary();
  result = dlsym(v2, "BluetoothAvailabilityChangedNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBluetoothAvailabilityChangedNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getBluetoothPowerChangedNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = BluetoothManagerLibrary();
  result = dlsym(v2, "BluetoothPowerChangedNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBluetoothPowerChangedNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getBluetoothDeviceRemovedNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = BluetoothManagerLibrary();
  result = dlsym(v2, "BluetoothDeviceRemovedNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBluetoothDeviceRemovedNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getBluetoothDeviceUnpairedNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = BluetoothManagerLibrary();
  result = dlsym(v2, "BluetoothDeviceUnpairedNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBluetoothDeviceUnpairedNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getBluetoothDeviceConnectSuccessNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = BluetoothManagerLibrary();
  result = dlsym(v2, "BluetoothDeviceConnectSuccessNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBluetoothDeviceConnectSuccessNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getBluetoothDeviceConnectFailedNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = BluetoothManagerLibrary();
  result = dlsym(v2, "BluetoothDeviceConnectFailedNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBluetoothDeviceConnectFailedNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getBluetoothDeviceDisconnectSuccessNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = BluetoothManagerLibrary();
  result = dlsym(v2, "BluetoothDeviceDisconnectSuccessNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBluetoothDeviceDisconnectSuccessNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getBluetoothDeviceDisconnectFailedNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = BluetoothManagerLibrary();
  result = dlsym(v2, "BluetoothDeviceDisconnectFailedNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBluetoothDeviceDisconnectFailedNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getBluetoothConnectionStatusChangedNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = BluetoothManagerLibrary();
  result = dlsym(v2, "BluetoothConnectionStatusChangedNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBluetoothConnectionStatusChangedNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getBluetoothPairedStatusChangedNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = BluetoothManagerLibrary();
  result = dlsym(v2, "BluetoothPairedStatusChangedNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBluetoothPairedStatusChangedNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id RECreateErrorWithCodeMessageAndUseInfo(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (REInitializeDefaultErrorCodeMessages_onceToken != -1)
  {
    RECreateErrorWithCodeMessageAndUseInfo_cold_1();
  }

  if (!v6)
  {
    v6 = MEMORY[0x277CBEC10];
  }

  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = REDefaultErrorCodeMessages;
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
    v7 = [v8 objectForKeyedSubscript:v9];

    if (!v7)
    {
      goto LABEL_10;
    }
  }

  v10 = *MEMORY[0x277CCA450];
  v11 = [v6 objectForKeyedSubscript:*MEMORY[0x277CCA450]];

  if (!v11)
  {
    v12 = [v6 mutableCopy];
    [v12 setObject:v7 forKeyedSubscript:v10];
    v13 = [v12 copy];

    v6 = v13;
  }

LABEL_10:
  v14 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.RelevanceEngine.error" code:a1 userInfo:v6];

  return v14;
}

void __REInitializeDefaultErrorCodeMessages_block_invoke()
{
  v4[18] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_283BBD680;
  v3[1] = &unk_283BBD698;
  v4[0] = @"No Relevance engine with provided name";
  v4[1] = @"Unable to create element from description";
  v3[2] = &unk_283BBD6B0;
  v3[3] = &unk_283BBD6C8;
  v4[2] = @"Unable to perform command";
  v4[3] = @"Unable to find current training context";
  v3[4] = &unk_283BBD6E0;
  v3[5] = &unk_283BBD6F8;
  v4[4] = @"Unable to run action";
  v4[5] = @"Unable to find element";
  v3[6] = &unk_283BBD710;
  v3[7] = &unk_283BBD728;
  v4[6] = @"Multiline comment is missing closing */";
  v4[7] = @"String is missing closing quotation mark";
  v3[8] = &unk_283BBD740;
  v3[9] = &unk_283BBD758;
  v4[8] = @"Invalid operator";
  v4[9] = @"Invalid token";
  v3[10] = &unk_283BBD770;
  v3[11] = &unk_283BBD788;
  v4[10] = @"Unexpected token";
  v4[11] = @"Token missing. EOF.";
  v3[12] = &unk_283BBD7A0;
  v3[13] = &unk_283BBD7B8;
  v4[12] = @"Symbol already defined.";
  v4[13] = @"Symbol not defined.";
  v3[14] = &unk_283BBD7D0;
  v3[15] = &unk_283BBD7E8;
  v4[14] = @"Symbol already has value.";
  v4[15] = @"Unepxcted expression.";
  v3[16] = &unk_283BBD800;
  v3[17] = &unk_283BBD818;
  v4[16] = @"Undefined value.";
  v4[17] = @"Argument to function is unexpected";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:18];
  v1 = REDefaultErrorCodeMessages;
  REDefaultErrorCodeMessages = v0;

  v2 = *MEMORY[0x277D85DE8];
}

void REEnsureCondition(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (!a1)
  {
    RERaiseInternalException(*MEMORY[0x277CBE660], @"Condition must be non-nil", a3, a4, a5, a6, a7, a8, a9);
  }
}

__CFString *REStringFromRankingOrder(uint64_t a1)
{
  if ((a1 + 1) > 2)
  {
    return 0;
  }

  else
  {
    return off_2785FD298[a1 + 1];
  }
}

void sub_22864F900(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void REHTMLElementAccessLock(void *a1)
{
  if (a1)
  {
    v1 = a1;
    os_unfair_lock_lock(&REHTMLElementLock);
    v1[2](v1);

    os_unfair_lock_unlock(&REHTMLElementLock);
  }
}

uint64_t __Block_byref_object_copy__26(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228652D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id get_DKEventQueryClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = get_DKEventQueryClass_softClass;
  v7 = get_DKEventQueryClass_softClass;
  if (!get_DKEventQueryClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __get_DKEventQueryClass_block_invoke;
    v3[3] = &unk_2785F9BC0;
    v3[4] = &v4;
    __get_DKEventQueryClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_228652E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id get_DKQueryClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = get_DKQueryClass_softClass;
  v7 = get_DKQueryClass_softClass;
  if (!get_DKQueryClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __get_DKQueryClass_block_invoke;
    v3[3] = &unk_2785F9BC0;
    v3[4] = &v4;
    __get_DKQueryClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_228652F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id get_DKPredictionQueryClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = get_DKPredictionQueryClass_softClass;
  v7 = get_DKPredictionQueryClass_softClass;
  if (!get_DKPredictionQueryClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __get_DKPredictionQueryClass_block_invoke;
    v3[3] = &unk_2785F9BC0;
    v3[4] = &v4;
    __get_DKPredictionQueryClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_22865301C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id get_DKSystemEventStreamsClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = get_DKSystemEventStreamsClass_softClass_0;
  v7 = get_DKSystemEventStreamsClass_softClass_0;
  if (!get_DKSystemEventStreamsClass_softClass_0)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __get_DKSystemEventStreamsClass_block_invoke_0;
    v3[3] = &unk_2785F9BC0;
    v3[4] = &v4;
    __get_DKSystemEventStreamsClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2286530FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22865322C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228653570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  _Block_object_dispose(&a29, 8);
  objc_destroyWeak(&a34);
  _Unwind_Resume(a1);
}

void sub_22865394C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2286542BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id get_DKTombstoneMetadataKeyClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = get_DKTombstoneMetadataKeyClass_softClass;
  v7 = get_DKTombstoneMetadataKeyClass_softClass;
  if (!get_DKTombstoneMetadataKeyClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __get_DKTombstoneMetadataKeyClass_block_invoke;
    v3[3] = &unk_2785F9BC0;
    v3[4] = &v4;
    __get_DKTombstoneMetadataKeyClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_228654CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2286551A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CoreDuetLibraryCore_0()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!CoreDuetLibraryCore_frameworkLibrary_0)
  {
    CoreDuetLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  result = CoreDuetLibraryCore_frameworkLibrary_0;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CoreDuetLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreDuetLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void CoreDuetLibrary_0()
{
  if (!CoreDuetLibraryCore_0())
  {
    v0 = abort_report_np();
    free(v0);
  }
}

uint64_t RETrainingSimulationMachServiceForProcessName(__CFString *a1)
{
  v1 = &stru_283B97458;
  if (a1)
  {
    v1 = a1;
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@.RelevanceEngine.TrainingSimulation", v1];
}

id RETrainingSimulationServerInterface()
{
  if (RETrainingSimulationServerInterface_onceToken != -1)
  {
    RETrainingSimulationServerInterface_cold_1();
  }

  v1 = RETrainingSimulationServerInterface_ServerInterface;

  return v1;
}

uint64_t __RETrainingSimulationServerInterface_block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283BC2518];
  v1 = RETrainingSimulationServerInterface_ServerInterface;
  RETrainingSimulationServerInterface_ServerInterface = v0;

  v2 = RETrainingSimulationServerInterface_ServerInterface;

  return REConfigureTrainingSimulationServerXPCInterface(v2);
}

id RETrainingSimulationClientInterface()
{
  if (RETrainingSimulationClientInterface_onceToken != -1)
  {
    RETrainingSimulationClientInterface_cold_1();
  }

  v1 = RETrainingSimulationClientInterface_ClientInterface;

  return v1;
}

uint64_t __RETrainingSimulationClientInterface_block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283BD2980];
  v1 = RETrainingSimulationClientInterface_ClientInterface;
  RETrainingSimulationClientInterface_ClientInterface = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

float REDeviceScreenScale()
{
  if (REDeviceScreenScale_onceToken != -1)
  {
    REDeviceScreenScale_cold_1();
  }

  return *&REDeviceScreenScale_ScreenScale;
}

void __REDeviceScreenScale_block_invoke()
{
  v1 = MGCopyAnswer();
  [v1 floatValue];
  REDeviceScreenScale_ScreenScale = v0;
}

void sub_228659E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_5(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void REContentFeatureExtractor::REContentFeatureExtractor(REContentFeatureExtractor *this)
{
  REFancyShrinkingDictionary::REFancyShrinkingDictionary(&this->m_trueTopTokens, 0x1F4uLL, 0x190uLL, 1, 1, 0);
  REFancyShrinkingDictionary::REFancyShrinkingDictionary(&this->m_falseTopTokens, 0x1F4uLL, 0x190uLL, 1, 1, 0);
  pthread_rwlock_init(&this->m_rwlock, 0);
}

void sub_22865AEB4(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<std::string,unsigned short>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned short>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned short>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned short>>>::~__hash_table(v1 + 264);
  std::__hash_table<std::__hash_value_type<std::string,unsigned short>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned short>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned short>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned short>>>::~__hash_table(v1 + 200);
  _Unwind_Resume(a1);
}

void REContentFeatureExtractor::~REContentFeatureExtractor(REContentFeatureExtractor *this)
{
  pthread_rwlock_destroy(&this->m_rwlock);
  std::__hash_table<std::__hash_value_type<std::string,unsigned short>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned short>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned short>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned short>>>::~__hash_table(&this->m_falseTopTokens);
  std::__hash_table<std::__hash_value_type<std::string,unsigned short>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned short>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned short>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned short>>>::~__hash_table(&this->m_trueTopTokens);
}

uint64_t REContentFeatureExtractor::pushToTFIDF(uint64_t a1, const void ***a2, int a3)
{
  v3 = 264;
  if (a3)
  {
    v3 = 200;
  }

  return REFancyShrinkingDictionary::pushToIDF(a1 + v3, a2);
}

uint64_t REContentFeatureExtractor::train(pthread_rwlock_t *a1, const void ***a2, int a3)
{
  pthread_rwlock_wrlock(a1);
  v6 = 264;
  if (a3)
  {
    v6 = 200;
  }

  REFancyShrinkingDictionary::pushToIDF(a1 + v6, a2);
  pthread_rwlock_unlock(a1);
  return 1;
}

uint64_t REContentFeatureExtractor::predict@<X0>(uint64_t a1@<X0>, const void ***a2@<X1>, uint64_t a3@<X8>)
{
  pthread_rwlock_rdlock(a1);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  v6 = *a2;
  v7 = a2[1];
  if (*a2 == v7)
  {
    v9 = 0.0;
    v10 = 0.0;
    v20 = *a2;
    v12 = 0.0;
    v11 = 0.0;
  }

  else
  {
    v8 = 0;
    v9 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
    v12 = 0.0;
    do
    {
      TokenCount = REFancyShrinkingDictionary::getTokenCount((a1 + 200), v6);
      v14 = REFancyShrinkingDictionary::getTokenCount((a1 + 264), v6);
      v15 = TokenCount + v14;
      v16 = TokenCount / v15;
      v17 = v14 / v15;
      if (!(TokenCount | v14))
      {
        v16 = 0.0;
        v17 = 0.0;
      }

      v10 = v16 + v10;
      v11 = v17 + v11;
      v18 = v12 + 1.0;
      if (!TokenCount)
      {
        v18 = v12;
      }

      v19 = v9 + 1.0;
      if (!v14)
      {
        v19 = v9;
      }

      if (TokenCount | v14)
      {
        v9 = v19;
        v12 = v18;
      }

      else
      {
        ++v8;
      }

      v6 += 3;
    }

    while (v6 != v7);
    *(a3 + 24) = v8;
    v6 = *a2;
    v20 = a2[1];
  }

  v21 = (0xAAAAAAAAAAAAAAABLL * (v20 - v6));
  *(a3 + 8) = v11 / v21;
  *(a3 + 16) = v10 / v21;
  *(a3 + 32) = v12 / v21;
  *(a3 + 40) = v9 / v21;
  *a3 = 1;
  return pthread_rwlock_unlock(a1);
}

void sub_22865B120(_Unwind_Exception *a1)
{
  *(v2 + 24) = v3;
  *(v2 + 8) = v7;
  *(v2 + 16) = v6;
  *(v2 + 32) = v5;
  *(v2 + 40) = v4;
  pthread_rwlock_unlock(v1);
  _Unwind_Resume(a1);
}

uint64_t __REGetShowAllElements_block_invoke_0()
{
  result = _REGetIsInternalBuild();
  _isInternalDevice_9 = result;
  return result;
}

id soft__REEngineDefaults_1()
{
  if (RelevanceEngineLibraryCore_2())
  {
    v4 = 0;
    v5 = &v4;
    v6 = 0x2050000000;
    v0 = get_REEngineDefaultsClass_softClass_1;
    v7 = get_REEngineDefaultsClass_softClass_1;
    if (!get_REEngineDefaultsClass_softClass_1)
    {
      v3[0] = MEMORY[0x277D85DD0];
      v3[1] = 3221225472;
      v3[2] = __get_REEngineDefaultsClass_block_invoke_1;
      v3[3] = &unk_2785F9BC0;
      v3[4] = &v4;
      __get_REEngineDefaultsClass_block_invoke_1(v3);
      v0 = v5[3];
    }

    v1 = v0;
    _Block_object_dispose(&v4, 8);
  }

  else
  {
    v0 = 0;
  }

  return v0;
}

void sub_22865CA84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __RE_Cached_updateValue__ShowAllElements_0()
{
  os_unfair_lock_lock(&__RE_Cached_lock__ShowAllElements_0);
  __RE_Cached_hasValue__ShowAllElements_0 = 0;
  os_unfair_lock_unlock(&__RE_Cached_lock__ShowAllElements_0);

  RERelevanceEngineDisplayDebugProbabilitiesDidUpdate();
}

uint64_t RelevanceEngineLibraryCore_2()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!RelevanceEngineLibraryCore_frameworkLibrary_2)
  {
    RelevanceEngineLibraryCore_frameworkLibrary_2 = _sl_dlopen();
  }

  result = RelevanceEngineLibraryCore_frameworkLibrary_2;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __RelevanceEngineLibraryCore_block_invoke_2(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  RelevanceEngineLibraryCore_frameworkLibrary_2 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t OUTLINED_FUNCTION_4_1(uint64_t result, float a2)
{
  *v3 = a2;
  *v2 = result;
  return result;
}

id REPipedLocationReceiverInterface()
{
  if (REPipedLocationReceiverInterface_onceToken != -1)
  {
    REPipedLocationReceiverInterface_cold_1();
  }

  v1 = REPipedLocationReceiverInterface_interface;

  return v1;
}

void __REPipedLocationReceiverInterface_block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283BD5E70];
  v1 = REPipedLocationReceiverInterface_interface;
  REPipedLocationReceiverInterface_interface = v0;

  v2 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [REPipedLocationReceiverInterface_interface setClasses:v2 forSelector:sel_updateLocation_ argumentIndex:0 ofReply:0];
}

id REPipedLocationDonorInterface()
{
  if (REPipedLocationDonorInterface_onceToken != -1)
  {
    REPipedLocationDonorInterface_cold_1();
  }

  v1 = REPipedLocationDonorInterface_interface;

  return v1;
}

uint64_t __REPipedLocationDonorInterface_block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283BCADC8];
  v1 = REPipedLocationDonorInterface_interface;
  REPipedLocationDonorInterface_interface = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

__CFString *REDiffOperationTypeDescription(unint64_t a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return off_2785FD638[a1];
  }
}

id REValidatedFeatureOptionsDictionary(void *a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = v3;
  v23 = [v5 countByEnumeratingWithState:&v25 objects:v35 count:16];
  if (!v23)
  {

LABEL_21:
    v18 = v4;
    v13 = 0;
    goto LABEL_22;
  }

  v22 = a2;
  v24 = *v26;
  v21 = @"REErrorTokenKey";
  while (2)
  {
    for (i = 0; i != v23; ++i)
    {
      if (*v26 != v24)
      {
        objc_enumerationMutation(v5);
      }

      v7 = *(*(&v25 + 1) + 8 * i);
      v8 = [v7 value];
      v9 = [&unk_283BBDB70 objectForKeyedSubscript:v8];
      if (!v9)
      {
        v29 = v21;
        v30 = v7;
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
        v13 = RECreateErrorWithCodeAndUseInfo(204, v10);
LABEL_17:

        goto LABEL_18;
      }

      v10 = v9;
      v11 = [v5 objectForKeyedSubscript:v7];
      if (([v7 isEqual:v11] & 1) == 0)
      {
        v33 = v21;
        v34 = v11;
        v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
        v15 = @"Unexpect value for specified feature type";
        v16 = 204;
LABEL_16:
        v13 = RECreateErrorWithCodeMessageAndUseInfo(v16, v15, v14);

        goto LABEL_17;
      }

      v12 = [v4 objectForKeyedSubscript:@"REScriptSymbolFeatureTypeKey"];

      if (v12)
      {
        v31 = v21;
        v32 = v7;
        v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
        v15 = @"Redefintion of feature type";
        v16 = 206;
        goto LABEL_16;
      }

      [v4 setObject:v10 forKeyedSubscript:@"REScriptSymbolFeatureTypeKey"];
    }

    v23 = [v5 countByEnumeratingWithState:&v25 objects:v35 count:16];
    if (v23)
    {
      continue;
    }

    break;
  }

  v13 = 0;
LABEL_18:

  if (!v13)
  {
    goto LABEL_21;
  }

  if (v22)
  {
    v17 = v13;
    v18 = 0;
    *v22 = v13;
  }

  else
  {
    v18 = 0;
  }

LABEL_22:

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

__CFString *REStringFromDonationType(unint64_t a1)
{
  if (a1 > 2)
  {
    return &stru_283B97458;
  }

  else
  {
    return *(&off_2785FD698 + a1);
  }
}

id RERelevanceProvidersForDonatedAction(void *a1, int a2)
{
  v29[5] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = +[REFeature isSiriActionFeature];
  v5 = [REFeatureValue featureValueWithBool:1];
  v6 = [RERelevanceProvider customRelevanceProviderForFeature:v4 withValue:v5];
  v7 = v6;
  if (a2)
  {
    v29[0] = v6;
    v24 = +[REFeature itemIdentifierFeature];
    v23 = +[REFeatureValue featureValueWithInt64:](REFeatureValue, "featureValueWithInt64:", [v3 trainingActionIdentifier]);
    v22 = [RERelevanceProvider customRelevanceProviderForFeature:v24 withValue:v23];
    v29[1] = v22;
    v21 = +[REFeature coreBehaviorShortcutTypeFeature];
    v20 = +[REFeatureValue featureValueWithInt64:](REFeatureValue, "featureValueWithInt64:", [v3 filteredShortcutType]);
    v19 = [RERelevanceProvider customRelevanceProviderForFeature:v21 withValue:v20];
    v29[2] = v19;
    v18 = +[REFeature coreBehaviorEventIdentifierHashFeature];
    v27 = v4;
    [v3 eventLevelIdentifier];
    v8 = v25 = v7;
    v9 = [REFeatureValue featureValueWithString:v8];
    [RERelevanceProvider customRelevanceProviderForFeature:v18 withValue:v9];
    v10 = v26 = v5;
    v29[3] = v10;
    v11 = +[REFeature coreBehaviorAppIdentifierHashFeature];
    v12 = [v3 appLevelIdentifier];
    v13 = [REFeatureValue featureValueWithString:v12];
    v14 = [RERelevanceProvider customRelevanceProviderForFeature:v11 withValue:v13];
    v29[4] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:5];

    v5 = v26;
    v4 = v27;

    v7 = v25;
  }

  else
  {
    v28 = v6;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

void REEnumerateTrainingStateForDate(void *a1, void *a2)
{
  v20 = a1;
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [MEMORY[0x277CBEA80] currentCalendar];
    v6 = [v5 components:124 fromDate:v20];
    v7 = [v5 rangeOfUnit:32 inUnit:16 forDate:v20];
    if (v7 != 0x7FFFFFFFFFFFFFFFLL && v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = v7;
      v11 = v8;
      v12 = [v6 day];
      v13 = objc_alloc(MEMORY[0x277CCA970]);
      v14 = REStartOfDayForDate(v20);
      v15 = REEndOfDayForDate(v20);
      v16 = [v13 initWithStartDate:v14 endDate:v15];

      for (i = v10 + arc4random_uniform(2u); i <= v11; i += 2)
      {
        if (v12 != i)
        {
          [v6 setHour:i];
          v18 = [v5 dateFromComponents:v6];
          if ([v16 containsDate:v18])
          {
            v3[2](v3, 0, v18);
          }
        }
      }

      v19 = 4;
      do
      {
        v3[2](v3, 1, v20);
        --v19;
      }

      while (v19);
    }

    objc_autoreleasePoolPop(v4);
  }
}

id get_DKSystemEventStreamsClass_1()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = get_DKSystemEventStreamsClass_softClass_1;
  v7 = get_DKSystemEventStreamsClass_softClass_1;
  if (!get_DKSystemEventStreamsClass_softClass_1)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __get_DKSystemEventStreamsClass_block_invoke_1;
    v3[3] = &unk_2785F9BC0;
    v3[4] = &v4;
    __get_DKSystemEventStreamsClass_block_invoke_1(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2286614DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2286619D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id get_DKApplicationActivityMetadataKeyClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = get_DKApplicationActivityMetadataKeyClass_softClass;
  v7 = get_DKApplicationActivityMetadataKeyClass_softClass;
  if (!get_DKApplicationActivityMetadataKeyClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __get_DKApplicationActivityMetadataKeyClass_block_invoke;
    v3[3] = &unk_2785F9BC0;
    v3[4] = &v4;
    __get_DKApplicationActivityMetadataKeyClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_228661DBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CoreDuetLibraryCore_1()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!CoreDuetLibraryCore_frameworkLibrary_1)
  {
    CoreDuetLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  result = CoreDuetLibraryCore_frameworkLibrary_1;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CoreDuetLibraryCore_block_invoke_1(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreDuetLibraryCore_frameworkLibrary_1 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void CoreDuetLibrary_1()
{
  if (!CoreDuetLibraryCore_1())
  {
    v0 = abort_report_np();
    free(v0);
  }
}

id REUpNextDemoDateFormatter()
{
  if (REUpNextDemoDateFormatter_onceToken != -1)
  {
    REUpNextDemoDateFormatter_cold_1();
  }

  v1 = REUpNextDemoDateFormatter_dateFormatter;

  return v1;
}

uint64_t __REUpNextDemoDateFormatter_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = REUpNextDemoDateFormatter_dateFormatter;
  REUpNextDemoDateFormatter_dateFormatter = v0;

  v2 = REUpNextDemoDateFormatter_dateFormatter;

  return [v2 setDateFormat:@"HH:mm"];
}

uint64_t REUpNextDemoAlwaysShowRoutines()
{
  if (_fetchedInternalBuildOnceToken_10 != -1)
  {
    REUpNextDemoAlwaysShowRoutines_cold_1();
  }

  if (_isInternalDevice_10 == 1)
  {
    if (REGetAlwaysShowRoutines_onceToken != -1)
    {
      REUpNextDemoAlwaysShowRoutines_cold_2();
    }

    v0 = REGetAlwaysShowRoutines__REValueAlwaysShowRoutines;
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t __REGetAlwaysShowRoutines_block_invoke()
{
  result = _REGetIsInternalBuild();
  _isInternalDevice_10 = result;
  return result;
}

void __REGetAlwaysShowRoutines_block_invoke_2()
{
  v19 = *MEMORY[0x277D85DE8];
  v10 = 0;
  if (RelevanceEngineLibraryCore_3())
  {
    if (RelevanceEngineLibraryCore_3())
    {
      v11 = 0;
      v12 = &v11;
      v13 = 0x2050000000;
      v0 = get_REEngineDefaultsClass_softClass_2;
      v14 = get_REEngineDefaultsClass_softClass_2;
      if (!get_REEngineDefaultsClass_softClass_2)
      {
        *&buf = MEMORY[0x277D85DD0];
        *(&buf + 1) = 3221225472;
        v16 = __get_REEngineDefaultsClass_block_invoke_2;
        v17 = &unk_2785F9BC0;
        v18 = &v11;
        __get_REEngineDefaultsClass_block_invoke_2(&buf);
        v0 = v12[3];
      }

      v1 = v0;
      _Block_object_dispose(&v11, 8);
      v2 = v0;
    }

    else
    {
      v0 = 0;
    }

    v3 = [v0 globalDefaults];
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 _BOOLValueForKey:@"AlwaysShowRoutines" set:&v10];
  v5 = v10;
  v6 = RELogForDomain(0);
  v7 = v5 & v4;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x277CCABB0] numberWithBool:v7 & 1];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v8;
    _os_log_impl(&dword_22859F000, v6, OS_LOG_TYPE_DEFAULT, "Prefs reading value for key AlwaysShowRoutines: %@", &buf, 0xCu);
  }

  REGetAlwaysShowRoutines__REValueAlwaysShowRoutines = v10 & v7;
  v9 = *MEMORY[0x277D85DE8];
}

void sub_228664AF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t RelevanceEngineLibraryCore_3()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!RelevanceEngineLibraryCore_frameworkLibrary_3)
  {
    RelevanceEngineLibraryCore_frameworkLibrary_3 = _sl_dlopen();
  }

  result = RelevanceEngineLibraryCore_frameworkLibrary_3;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __RelevanceEngineLibraryCore_block_invoke_3(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  RelevanceEngineLibraryCore_frameworkLibrary_3 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

id RESampleFeature()
{
  if (RESampleFeature_onceToken != -1)
  {
    RESampleFeature_cold_1();
  }

  v1 = RESampleFeature_Feature;

  return v1;
}

uint64_t __RESampleFeature_block_invoke()
{
  v0 = [REFeature featureWithName:@"SamplePosition" featureType:2];
  v1 = RESampleFeature_Feature;
  RESampleFeature_Feature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id RESampleRelevanceProviderForPosition(float a1)
{
  v2 = RESampleFeature();
  v3 = [REFeatureValue featureValueWithDouble:a1];
  v4 = [RERelevanceProvider customRelevanceProviderForFeature:v2 withValue:v3];

  return v4;
}

uint64_t REPriorityQueueCompare(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x22AABC5E0](a3);
  v6 = v5[2](v5, a1, a2);
  if (v6 == -1)
  {
    v7 = -1;
  }

  else
  {
    v7 = 0;
  }

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

void sub_2286650B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void REPriorityQueueApply(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x22AABC5E0](a2);
  if (v3)
  {
    v4 = v3;
    v3[2](v3, a1);
    v3 = v4;
  }
}

void sub_228665738(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id REPredictionServerInterface()
{
  if (REPredictionServerInterface_onceToken != -1)
  {
    REPredictionServerInterface_cold_1();
  }

  v1 = REPredictionServerInterface_interface;

  return v1;
}

void __REPredictionServerInterface_block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283BE3988];
  v1 = REPredictionServerInterface_interface;
  REPredictionServerInterface_interface = v0;

  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v11 = [v2 setWithObjects:{v3, v4, v5, v6, objc_opt_class(), 0}];
  [REPredictionServerInterface_interface setClasses:v11 forSelector:sel_requestPredictedActionsWithCompletion_ argumentIndex:0 ofReply:1];
  v7 = REPredictionServerInterface_interface;
  v8 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v7 setClasses:v8 forSelector:sel_fetchFirstPerformedActionDate_ argumentIndex:0 ofReply:1];

  v9 = REPredictionServerInterface_interface;
  v10 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v9 setClasses:v10 forSelector:sel_fetchPerformedTodayCountForActionWithBundleIdentifer_actionIdentifier_completion_ argumentIndex:0 ofReply:0];
}

id REPredictionClientInterface()
{
  if (REPredictionClientInterface_onceToken != -1)
  {
    REPredictionClientInterface_cold_1();
  }

  v1 = REPredictionClientInterface_interface;

  return v1;
}

uint64_t __REPredictionClientInterface_block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283BE39E8];
  v1 = REPredictionClientInterface_interface;
  REPredictionClientInterface_interface = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id REElementByRemovingNamespacedIdentifier(void *a1)
{
  v1 = a1;
  v2 = [v1 identifier];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v4 = [v1 shallowCopy];
    v5 = [v4 identifier];
    v6 = [v5 identifier];
    [v4 _updateIdentifier:v6];
  }

  else
  {
    v4 = v1;
  }

  return v4;
}

void sub_228666714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__28(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228666918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228666F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228669D54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __REElementComparatorInverter_block_invoke(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();
  if (v1 == 1)
  {
    return -1;
  }

  else
  {
    return v1 == -1;
  }
}

void dispatch_metrics(void *a1)
{
  v1 = dispatch_metrics(void({block_pointer})(void),BOOL)::onceToken;
  v2 = a1;
  v4 = v2;
  if (v1 == -1)
  {
    v3 = v2;
  }

  else
  {
    dispatch_metrics();
    v3 = v4;
  }

  dispatch_async(dispatch_metrics(void({block_pointer})(void),BOOL)::queue, v3);
}

uint64_t ___Z16dispatch_metricsU13block_pointerFvvEb_block_invoke()
{
  v0 = RECreateSharedQueueWithQOS(@"com.apple.RelevanceEngine.Metrics", QOS_CLASS_BACKGROUND);
  v1 = dispatch_metrics(void({block_pointer})(void),BOOL)::queue;
  dispatch_metrics(void({block_pointer})(void),BOOL)::queue = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void RESubmitRelevantShortcut(void *a1)
{
  v1 = a1;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __RESubmitRelevantShortcut_block_invoke;
  v3[3] = &unk_2785FD9A8;
  v4 = v1;
  v2 = v1;
  dispatch_metrics(v3);
}

void __RESubmitRelevantShortcut_block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) generateMetrics];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [*(a1 + 32) bundleIdentifier];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"unknown";
  }

  v7 = v6;

  [v3 setObject:v7 forKeyedSubscript:@"bundleID"];
  v8 = [*(a1 + 32) isLocalDonation];
  v9 = RELocal;
  if (!v8)
  {
    v9 = RERemote;
  }

  v23 = *v9;
  [v3 setObject:? forKeyedSubscript:?];
  v10 = [v2 objectForKeyedSubscript:@"shortcutType"];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = @"unknown";
  }

  v13 = v12;

  v24 = v13;
  [v3 setObject:v13 forKeyedSubscript:@"shortcutType"];
  v14 = [v2 objectForKeyedSubscript:@"intentType"];
  if (v14)
  {
    [v3 setObject:v14 forKeyedSubscript:@"intentType"];
  }

  v25 = [v2 objectForKeyedSubscript:@"imageSource"];
  [v3 setObject:? forKeyedSubscript:?];
  v26 = [v2 objectForKeyedSubscript:@"subtitleSource"];
  [v3 setObject:? forKeyedSubscript:?];
  [v2 objectForKeyedSubscript:@"relevanceProvider"];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v15 = v28 = 0u;
  v16 = [v15 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v16)
  {
    v17 = *v28;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v28 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v27 + 1) + 8 * i);
        v31 = @"relevanceProvider";
        v32 = v19;
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
        AnalyticsSendEvent();
      }

      v16 = [v15 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v16);
  }

  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v15, "count")}];
  [v3 setObject:v21 forKeyedSubscript:@"relevanceProviderCount"];
  AnalyticsSendEvent();

  v22 = *MEMORY[0x277D85DE8];
}

void RESubmitShortcutExecution(void *a1)
{
  v1 = a1;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __RESubmitShortcutExecution_block_invoke;
  v3[3] = &unk_2785FD9A8;
  v4 = v1;
  v2 = v1;
  dispatch_metrics(v3);
}

void RESubmitError(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __RESubmitError_block_invoke;
    v6[3] = &unk_2785FD9D0;
    v7 = v4;
    v8 = v3;
    dispatch_metrics(v6);
  }
}

void __RESubmitError_block_invoke(uint64_t a1)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (!v2)
  {
    v2 = @"unknown";
  }

  v3 = v2;
  v4 = *(a1 + 40);
  v7[0] = @"error";
  v7[1] = v4;
  v8[0] = v4;
  v8[1] = v3;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  AnalyticsSendEvent();

  v6 = *MEMORY[0x277D85DE8];
}

void sub_22866B0A8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id REAnalyticsValue(double a1)
{
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:{a1, v1}];

  return v3;
}

void RESubmitBayesianModelTrained(BayesianModel *a1, void *a2, void *a3)
{
  v55[7] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v45 = v6;
    if (objc_opt_respondsToSelector())
    {
      v7 = [v5 ignoreValidMetricCheck];
      if (a1->m_dNormalizedLogScore >= -20.0)
      {
        if (v7)
        {
          v8 = RELogForDomain(18);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_22859F000, v8, OS_LOG_TYPE_DEFAULT, "Normally, we would ignore RESubmitBayesianModelTrained because metrics aren't valid; however, the client has indicated we should proceed.", buf, 2u);
          }

          goto LABEL_9;
        }

LABEL_10:
        v30 = RELogForDomain(18);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_22859F000, v30, OS_LOG_TYPE_DEFAULT, "Ignore RESubmitBayesianModelTrained because metrics aren't valid.", buf, 2u);
        }

        goto LABEL_12;
      }
    }

    else if (a1->m_dNormalizedLogScore >= -20.0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v54[0] = @"averagePrediction";
    AveragePrediction = BayesianModel::getAveragePrediction(a1);
    v10 = REAnalyticsValue(AveragePrediction);
    v55[0] = v10;
    v54[1] = @"averageActionProbability";
    AverageProbability = BayesianModel::getAverageProbability(a1);
    v12 = REAnalyticsValue(AverageProbability);
    v55[1] = v12;
    v54[2] = @"negativeEntropy";
    AverageNegativeEntropy = BayesianModel::getAverageNegativeEntropy(a1);
    v14 = REAnalyticsValue(AverageNegativeEntropy);
    v55[2] = v14;
    v54[3] = @"normalizedEntropy";
    BayesianModel::getAverageNormalizedEntropy(a1);
    v16 = REAnalyticsValue(v15);
    v55[3] = v16;
    v54[4] = @"trueEvents";
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1->m_nTotalTrue];
    v55[4] = v17;
    v54[5] = @"falseEvents";
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1->m_nTotalExamples - a1->m_nTotalTrue];
    v55[5] = v18;
    v54[6] = @"totalEvents";
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1->m_nTotalExamples];
    v55[6] = v19;
    v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:7];

    v52[0] = @"calibrationCurve1";
    v44 = [MEMORY[0x277CCABB0] numberWithDouble:{BayesianModel::getCalibration(a1, 0)}];
    v53[0] = v44;
    v52[1] = @"calibrationCurve2";
    v42 = [MEMORY[0x277CCABB0] numberWithDouble:{BayesianModel::getCalibration(a1, 1u)}];
    v53[1] = v42;
    v52[2] = @"calibrationCurve3";
    v41 = [MEMORY[0x277CCABB0] numberWithDouble:{BayesianModel::getCalibration(a1, 2u)}];
    v53[2] = v41;
    v52[3] = @"calibrationCurve4";
    v40 = [MEMORY[0x277CCABB0] numberWithDouble:{BayesianModel::getCalibration(a1, 3u)}];
    v53[3] = v40;
    v52[4] = @"calibrationCurve5";
    v39 = [MEMORY[0x277CCABB0] numberWithDouble:{BayesianModel::getCalibration(a1, 4u)}];
    v53[4] = v39;
    v52[5] = @"calibrationCurve6";
    v38 = [MEMORY[0x277CCABB0] numberWithDouble:{BayesianModel::getCalibration(a1, 5u)}];
    v53[5] = v38;
    v52[6] = @"calibrationCurve7";
    v37 = [MEMORY[0x277CCABB0] numberWithDouble:{BayesianModel::getCalibration(a1, 6u)}];
    v53[6] = v37;
    v52[7] = @"calibrationCurve8";
    v36 = [MEMORY[0x277CCABB0] numberWithDouble:{BayesianModel::getCalibration(a1, 7u)}];
    v53[7] = v36;
    v52[8] = @"calibrationCurve9";
    v35 = [MEMORY[0x277CCABB0] numberWithDouble:{BayesianModel::getCalibration(a1, 8u)}];
    v53[8] = v35;
    v52[9] = @"calibrationCurve10";
    v34 = [MEMORY[0x277CCABB0] numberWithDouble:{BayesianModel::getCalibration(a1, 9u)}];
    v53[9] = v34;
    v52[10] = @"calibrationCount1";
    v33 = [MEMORY[0x277CCABB0] numberWithDouble:{BayesianModel::getCalibrationCount(a1, 0)}];
    v53[10] = v33;
    v52[11] = @"calibrationCount2";
    v32 = [MEMORY[0x277CCABB0] numberWithDouble:{BayesianModel::getCalibrationCount(a1, 1u)}];
    v53[11] = v32;
    v52[12] = @"calibrationCount3";
    v20 = [MEMORY[0x277CCABB0] numberWithDouble:{BayesianModel::getCalibrationCount(a1, 2u)}];
    v53[12] = v20;
    v52[13] = @"calibrationCount4";
    v21 = [MEMORY[0x277CCABB0] numberWithDouble:{BayesianModel::getCalibrationCount(a1, 3u)}];
    v53[13] = v21;
    v52[14] = @"calibrationCount5";
    v22 = [MEMORY[0x277CCABB0] numberWithDouble:{BayesianModel::getCalibrationCount(a1, 4u)}];
    v53[14] = v22;
    v52[15] = @"calibrationCount6";
    v23 = [MEMORY[0x277CCABB0] numberWithDouble:{BayesianModel::getCalibrationCount(a1, 5u)}];
    v53[15] = v23;
    v52[16] = @"calibrationCount7";
    v24 = [MEMORY[0x277CCABB0] numberWithDouble:{BayesianModel::getCalibrationCount(a1, 6u)}];
    v53[16] = v24;
    v52[17] = @"calibrationCount8";
    v25 = [MEMORY[0x277CCABB0] numberWithDouble:{BayesianModel::getCalibrationCount(a1, 7u)}];
    v53[17] = v25;
    v52[18] = @"calibrationCount9";
    v26 = [MEMORY[0x277CCABB0] numberWithDouble:{BayesianModel::getCalibrationCount(a1, 8u)}];
    v53[18] = v26;
    v52[19] = @"calibrationCount10";
    v27 = [MEMORY[0x277CCABB0] numberWithDouble:{BayesianModel::getCalibrationCount(a1, 9u)}];
    v53[19] = v27;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:20];

    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = ___Z28RESubmitBayesianModelTrainedR13BayesianModelPU43objcproto32RERelevanceEngineMetricsRecorder11objc_objectP8NSString_block_invoke;
    v46[3] = &unk_2785FD9F8;
    v47 = v5;
    v48 = v43;
    v49 = v45;
    v50 = v28;
    v29 = v28;
    v30 = v43;
    dispatch_metrics(v46);

LABEL_12:
    v6 = v45;
  }

  v31 = *MEMORY[0x277D85DE8];
}

void ___Z28RESubmitBayesianModelTrainedR13BayesianModelPU43objcproto32RERelevanceEngineMetricsRecorder11objc_objectP8NSString_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) recordTrainingMetrics:*(a1 + 40) forInteraction:*(a1 + 48)];
  }

  v3 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) recordCallibrationCurveMetrics:*(a1 + 56) forInteraction:*(a1 + 48)];
  }

  v4 = RELogForDomain(18);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_22859F000, v4, OS_LOG_TYPE_DEFAULT, "submitted bayesian model training", v5, 2u);
  }
}

void RESubmitBayesianModelPredicted(uint64_t a1, void *a2, void *a3)
{
  v19[4] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v18[0] = @"probability";
    v7 = REAnalyticsValue(*(a1 + 16));
    v19[0] = v7;
    v18[1] = @"variance";
    v8 = REAnalyticsValue(*(a1 + 8));
    v19[1] = v8;
    v18[2] = @"pessimisticEstimate";
    v9 = REAnalyticsValue(*(a1 + 24));
    v19[2] = v9;
    v18[3] = @"success";
    v10 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 32)];
    v19[3] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = ___Z30RESubmitBayesianModelPredictedR10PredictionPU43objcproto32RERelevanceEngineMetricsRecorder11objc_objectP8NSString_block_invoke;
    v14[3] = &unk_2785FDA20;
    v15 = v5;
    v16 = v11;
    v17 = v6;
    v12 = v11;
    dispatch_metrics(v14);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void REClearMetrics(void)
{
  v0 = [REStoredMetrics objectForKeyedSubscript:@"tappedSources"];
  [v0 removeAllObjects];

  v1 = [REStoredMetrics objectForKeyedSubscript:@"addedSources"];
  [v1 removeAllObjects];

  v2 = [REStoredMetrics objectForKeyedSubscript:@"viewedSources"];
  [v2 removeAllObjects];

  REMaxElementCount = 0;
}

void __REBeginObservingMetrics_block_invoke()
{
  if ((REMetricsEnabled & 1) == 0)
  {
    v0 = RELogForDomain(18);
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      *v2 = 0;
      _os_log_impl(&dword_22859F000, v0, OS_LOG_TYPE_DEFAULT, "begin observing metrics", v2, 2u);
    }

    v1 = dispatch_get_global_queue(17, 0);
    notify_register_dispatch("com.apple.coreanalytics.dailylogging", &_RECoreAnalyticsNotifyToken, v1, &__block_literal_global_20_2);

    REMetricsEnabled = 1;
    REClearMetrics();
  }
}

void __REEndObservingMetrics_block_invoke()
{
  if (REMetricsEnabled == 1)
  {
    notify_cancel(_RECoreAnalyticsNotifyToken);
    REMetricsEnabled = 0;

    REClearMetrics();
  }
}

void REAddedElementFromDataSource(void *a1)
{
  v1 = a1;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __REAddedElementFromDataSource_block_invoke;
  v3[3] = &unk_2785FD9A8;
  v4 = v1;
  v2 = v1;
  dispatch_metrics(v3);
}

void __REAddedElementFromDataSource_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v7 = @"addedSources";
  v2 = v1;
  if (v2)
  {
    v3 = REStoredMetrics;
    if (!REStoredMetrics)
    {
      v4 = [MEMORY[0x277CBEB38] dictionary];
      v5 = REStoredMetrics;
      REStoredMetrics = v4;

      v3 = REStoredMetrics;
    }

    v6 = [v3 objectForKeyedSubscript:v7];
    if (!v6)
    {
      v6 = [MEMORY[0x277CBEB58] set];
      [REStoredMetrics setObject:? forKeyedSubscript:?];
    }

    [v6 addObject:v2];
  }
}

void REViewedElementFromDataSource(void *a1)
{
  v1 = a1;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __REViewedElementFromDataSource_block_invoke;
  v3[3] = &unk_2785FD9A8;
  v4 = v1;
  v2 = v1;
  dispatch_metrics(v3);
}

void __REViewedElementFromDataSource_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v7 = @"viewedSources";
  v2 = v1;
  if (v2)
  {
    v3 = REStoredMetrics;
    if (!REStoredMetrics)
    {
      v4 = [MEMORY[0x277CBEB38] dictionary];
      v5 = REStoredMetrics;
      REStoredMetrics = v4;

      v3 = REStoredMetrics;
    }

    v6 = [v3 objectForKeyedSubscript:v7];
    if (!v6)
    {
      v6 = [MEMORY[0x277CBEB58] set];
      [REStoredMetrics setObject:? forKeyedSubscript:?];
    }

    [v6 addObject:v2];
  }
}

void RETappedElementFromDataSource(void *a1)
{
  v1 = a1;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __RETappedElementFromDataSource_block_invoke;
  v3[3] = &unk_2785FD9A8;
  v4 = v1;
  v2 = v1;
  dispatch_metrics(v3);
}

void __RETappedElementFromDataSource_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v7 = @"tappedSources";
  v2 = v1;
  if (v2)
  {
    v3 = REStoredMetrics;
    if (!REStoredMetrics)
    {
      v4 = [MEMORY[0x277CBEB38] dictionary];
      v5 = REStoredMetrics;
      REStoredMetrics = v4;

      v3 = REStoredMetrics;
    }

    v6 = [v3 objectForKeyedSubscript:v7];
    if (!v6)
    {
      v6 = [MEMORY[0x277CBEB58] set];
      [REStoredMetrics setObject:? forKeyedSubscript:?];
    }

    [v6 addObject:v2];
  }
}

void RESetNumberOfElements(uint64_t a1)
{
  v1[0] = MEMORY[0x277D85DD0];
  v1[1] = 3221225472;
  v1[2] = __RESetNumberOfElements_block_invoke;
  v1[3] = &__block_descriptor_40_e5_v8__0l;
  v1[4] = a1;
  dispatch_metrics(v1);
}

uint64_t __RESetNumberOfElements_block_invoke(uint64_t result)
{
  v1 = REMaxElementCount;
  if (REMaxElementCount <= *(result + 32))
  {
    v1 = *(result + 32);
  }

  REMaxElementCount = v1;
  return result;
}

void ___ZL15RESubmitMetricsv_block_invoke()
{
  v11[1] = *MEMORY[0x277D85DE8];
  v0 = RELogForDomain(18);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_22859F000, v0, OS_LOG_TYPE_DEFAULT, "daily core analytics callback", v9, 2u);
  }

  if (REMetricsEnabled == 1)
  {
    ___ZL15RESubmitMetricsv_block_invoke_88(v1, @"com.apple.NanoTimeKit.UpNextTappedSources", @"tappedSources");
    ___ZL15RESubmitMetricsv_block_invoke_88(v2, @"com.apple.NanoTimeKit.UpNextAddedSources", @"addedSources");
    ___ZL15RESubmitMetricsv_block_invoke_88(v3, @"com.apple.NanoTimeKit.UpNextViewedSources", @"viewedSources");
    v10 = @"elementsCount";
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:REMaxElementCount];
    v11[0] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    AnalyticsSendEvent();

    REClearMetrics();
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 postNotificationName:@"REDidCollectMetrics" object:0];

    v7 = RELogForDomain(18);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_22859F000, v7, OS_LOG_TYPE_DEFAULT, "submitted daily core analytics metrics", v9, 2u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void ___ZL15RESubmitMetricsv_block_invoke_88(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = [REStoredMetrics objectForKeyedSubscript:v5];
  v7 = [v6 allObjects];
  v8 = v7;
  v9 = MEMORY[0x277CBEBF8];
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v12)
  {
    v13 = *v19;
    do
    {
      v14 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v18 + 1) + 8 * v14);
        v22 = v5;
        v23 = v15;
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:{1, v18}];
        AnalyticsSendEvent();

        ++v14;
      }

      while (v12 != v14);
      v12 = [v11 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v12);
  }

  v17 = *MEMORY[0x277D85DE8];
}

__CFString *REStringFromDeviceMotion(unint64_t a1)
{
  if (a1 > 8)
  {
    return 0;
  }

  else
  {
    return off_2785FDA88[a1];
  }
}

id getCMMotionActivityManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCMMotionActivityManagerClass_softClass;
  v7 = getCMMotionActivityManagerClass_softClass;
  if (!getCMMotionActivityManagerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getCMMotionActivityManagerClass_block_invoke;
    v3[3] = &unk_2785F9BC0;
    v3[4] = &v4;
    __getCMMotionActivityManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_22866D484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22866D804(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

uint64_t CoreMotionLibraryCore()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!CoreMotionLibraryCore_frameworkLibrary)
  {
    CoreMotionLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = CoreMotionLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CoreMotionLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreMotionLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

_REHasFeatureRuleCondition *__getCMMotionActivityManagerClass_block_invoke(uint64_t a1)
{
  if (!CoreMotionLibraryCore())
  {
    v3 = abort_report_np();
    free(v3);
  }

  result = objc_getClass("CMMotionActivityManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCMMotionActivityManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v4 = __getCMMotionActivityManagerClass_block_invoke_cold_1();
    return [(_REHasFeatureRuleCondition *)v4 initWithFeature:v5 contains:v6, v7];
  }

  return result;
}

void std::vector<unsigned long>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<unsigned long>::__append(a1, a2 - v2);
  }
}

void sub_22866F350(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = RETransformerInvocation;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void std::vector<unsigned long>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void REFancyShrinkingDictionary::REFancyShrinkingDictionary(REFancyShrinkingDictionary *this, unint64_t a2, unint64_t a3, int a4, BOOL a5, BOOL a6)
{
  this->m_mapDocumentFrequency.__table_.__bucket_list_ = 0u;
  *&this->m_mapDocumentFrequency.__table_.__first_node_.__next_ = 0u;
  this->m_mapDocumentFrequency.__table_.__max_load_factor_ = 1.0;
  this->m_maxSize = a2;
  this->m_shrinkSize = a3;
  this->m_nVersion = a4;
  this->m_trimTop = a5;
  this->m_shinksOnTotalCount = a6;
}

{
  this->m_mapDocumentFrequency.__table_.__bucket_list_ = 0u;
  *&this->m_mapDocumentFrequency.__table_.__first_node_.__next_ = 0u;
  this->m_mapDocumentFrequency.__table_.__max_load_factor_ = 1.0;
  this->m_maxSize = a2;
  this->m_shrinkSize = a3;
  this->m_nVersion = a4;
  this->m_trimTop = a5;
  this->m_shinksOnTotalCount = a6;
}

uint64_t REFancyShrinkingDictionary::pushToIDF(uint64_t a1, const void ***a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    do
    {
      v36 = v3;
      v5 = std::__hash_table<std::__hash_value_type<std::string,unsigned short>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned short>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned short>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned short>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, v3);
      ++*(v5 + 20);
      v3 += 3;
    }

    while (v3 != v4);
  }

  if ((*(a1 + 61) & 1) == 0)
  {
    if (*(a1 + 24) > *(a1 + 40))
    {
      v36 = 0;
      v37 = 0;
      v38 = 0;
      __src = 0;
      v34 = 0;
      v35 = 0;
      for (i = *(a1 + 16); i; i = *i)
      {
        std::vector<std::string>::push_back[abi:ne200100](&v36, i + 1);
        v13 = v34;
        if (v34 >= v35)
        {
          v15 = __src;
          v16 = v34 - __src;
          v17 = (v34 - __src) >> 1;
          if (v17 <= -2)
          {
            std::vector<std::string>::__throw_length_error[abi:ne200100]();
          }

          if (v35 - __src <= v17 + 1)
          {
            v18 = v17 + 1;
          }

          else
          {
            v18 = v35 - __src;
          }

          if (v35 - __src >= 0x7FFFFFFFFFFFFFFELL)
          {
            v19 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v19 = v18;
          }

          if (v19)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(&__src, v19);
          }

          v20 = (2 * v17);
          v21 = &v20[-((v34 - __src) >> 1)];
          *v20 = *(i + 20);
          v14 = (v20 + 1);
          memcpy(v21, v15, v16);
          v22 = __src;
          __src = v21;
          v34 = v14;
          v35 = 0;
          if (v22)
          {
            operator delete(v22);
          }
        }

        else
        {
          *v34 = *(i + 20);
          v14 = v13 + 2;
        }

        v34 = v14;
      }

      std::__sort<std::__less<unsigned short,unsigned short> &,unsigned short *>();
      v24 = __src;
      v25 = v36;
      v26 = v37;
      if (v36 == v37)
      {
        goto LABEL_47;
      }

      v27 = *(a1 + 40);
      v28 = *(__src + v27 - *(a1 + 48));
      v29 = *(__src + (v27 * 0.9));
      do
      {
        v39 = v25;
        v30 = *(std::__hash_table<std::__hash_value_type<std::string,unsigned short>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned short>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned short>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned short>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, v25) + 20);
        if (v30 > v28 && (v30 < v29 || (*(a1 + 60) == 1 ? (v31 = v29 == v28) : (v31 = 1), v31)))
        {
          v39 = v25;
          v32 = std::__hash_table<std::__hash_value_type<std::string,unsigned short>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned short>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned short>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned short>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, v25);
          *(v32 + 20) >>= 1;
        }

        else
        {
          std::__hash_table<std::__hash_value_type<std::string,unsigned short>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned short>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned short>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned short>>>::__erase_unique<std::string>(a1, v25);
        }

        v25 += 3;
      }

      while (v25 != v26);
      v24 = __src;
      if (__src)
      {
LABEL_47:
        v34 = v24;
        operator delete(v24);
      }

      goto LABEL_48;
    }

    return 0;
  }

  v6 = *(a1 + 16);
  if (!v6)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(a1 + 16);
  do
  {
    v7 += *(v8 + 20);
    v8 = *v8;
  }

  while (v8);
  if (v7 <= *(a1 + 40))
  {
    return 0;
  }

  v36 = 0;
  v37 = 0;
  v38 = 0;
  do
  {
    std::vector<std::string>::push_back[abi:ne200100](&v36, v6 + 1);
    v6 = *v6;
  }

  while (v6);
  v9 = v36;
  for (j = v37; v9 != j; v9 += 3)
  {
    v39 = v9;
    v11 = *(std::__hash_table<std::__hash_value_type<std::string,unsigned short>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned short>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned short>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned short>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, v9) + 20);
    if (v11 > 1)
    {
      v39 = v9;
      *(std::__hash_table<std::__hash_value_type<std::string,unsigned short>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned short>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned short>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned short>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, v9) + 20) = v11 >> 1;
    }

    else
    {
      std::__hash_table<std::__hash_value_type<std::string,unsigned short>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned short>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned short>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned short>>>::__erase_unique<std::string>(a1, v9);
    }
  }

LABEL_48:
  __src = &v36;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__src);
  return 1;
}

void sub_22866F8EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, char *a10, uint64_t a11, char a12)
{
  if (__p)
  {
    a10 = __p;
    operator delete(__p);
  }

  __p = &a12;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t REFancyShrinkingDictionary::totalTermCount(REFancyShrinkingDictionary *this)
{
  next = this->m_mapDocumentFrequency.__table_.__first_node_.__next_;
  if (!next)
  {
    return 0;
  }

  result = 0;
  do
  {
    result += *(next + 20);
    next = *next;
  }

  while (next);
  return result;
}

const void **REFancyShrinkingDictionary::getTokenCount(void *a1, const void **a2)
{
  result = std::__hash_table<std::__hash_value_type<std::string,unsigned short>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned short>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned short>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned short>>>::find<std::string>(a1, a2);
  if (result)
  {
    return *(result + 20);
  }

  return result;
}

void *REFancyShrinkingDictionary::SaveModel(uint64_t a1, void *a2)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "FancyShrinkingDictionary\n", 25);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "ModelVersion\t", 13);
  v5 = MEMORY[0x22AABBCA0](v4, *(a1 + 56));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "\n", 1);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "TokensCount\t", 12);
  v7 = MEMORY[0x22AABBCB0](v6, *(a1 + 24));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "\n", 1);
  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "Tokens\n", 7);
  for (i = *(a1 + 16); i; i = *i)
  {
    v10 = *(i + 39);
    if (v10 >= 0)
    {
      v11 = (i + 2);
    }

    else
    {
      v11 = i[2];
    }

    if (v10 >= 0)
    {
      v12 = *(i + 39);
    }

    else
    {
      v12 = i[3];
    }

    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v11, v12);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "\t", 1);
    v15 = MEMORY[0x22AABBCC0](v14, *(i + 20));
    result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "\n", 1);
  }

  return result;
}

uint64_t REFancyShrinkingDictionary::getKeyValueInt(uint64_t a1, void *a2, std::string *a3, int *a4)
{
  memset(&__str, 0, sizeof(__str));
  v7 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, &__str, 9u);
  if ((*(v7 + *(*v7 - 24) + 32) & 5) != 0 || (std::string::operator=(a3, &__str), v8 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, &__str, 0xAu), (*(v8 + *(*v8 - 24) + 32) & 5) != 0))
  {
    v9 = 0;
  }

  else
  {
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_str = &__str;
    }

    else
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    *a4 = atoi(p_str);
    v9 = 1;
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_22866FB7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL REFancyShrinkingDictionary::LoadModel(uint64_t a1, const std::string *a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v37, a2, 24);
  __p = 0;
  v35 = 0;
  v36 = 0;
  v33 = 0;
  v30 = 0u;
  v31 = 0u;
  v32 = 1065353216;
  std::ios_base::getloc((v37 + *(v37[0] - 24)));
  v3 = std::locale::use_facet(&v29, MEMORY[0x277D82680]);
  v4 = (v3->__vftable[2].~facet_0)(v3, 10);
  std::locale::~locale(&v29);
  v5 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v37, &__p, v4);
  if ((*(v5 + *(*v5 - 24) + 32) & 5) == 0)
  {
    v8 = 0;
    if ((SHIBYTE(v36) & 0x80000000) == 0 || v35 != 24)
    {
      goto LABEL_37;
    }

    if (*__p != 0x72685379636E6146 || *(__p + 1) != 0x6944676E696B6E69 || *(__p + 2) != 0x7972616E6F697463)
    {
      v8 = 0;
      goto LABEL_37;
    }
  }

  memset(&v29, 0, sizeof(v29));
  KeyValueInt = REFancyShrinkingDictionary::getKeyValueInt(v5, v37, &v29, &v33);
  if (!KeyValueInt)
  {
    goto LABEL_34;
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v29.__r_.__value_.__l.__size_ != 12)
    {
      goto LABEL_34;
    }

    v7 = v29.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) != 12)
    {
      goto LABEL_34;
    }

    v7 = &v29;
  }

  v11 = v7->__r_.__value_.__r.__words[0];
  v12 = v7->__r_.__value_.__r.__words[1];
  if (v11 != 0x7265566C65646F4DLL || v12 != 1852795251)
  {
    goto LABEL_34;
  }

  if (v33 != *(a1 + 56))
  {
    goto LABEL_34;
  }

  v28 = 0;
  if ((REFancyShrinkingDictionary::getKeyValueInt(KeyValueInt, v37, &v29, &v28) & 1) == 0)
  {
    goto LABEL_34;
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v29.__r_.__value_.__l.__size_ != 11)
    {
      goto LABEL_34;
    }

    v14 = v29.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) != 11)
    {
      goto LABEL_34;
    }

    v14 = &v29;
  }

  v15 = v14->__r_.__value_.__r.__words[0];
  v16 = *(v14->__r_.__value_.__r.__words + 3);
  if (v15 == 0x6F43736E656B6F54 && v16 == 0x746E756F43736E65)
  {
    std::ios_base::getloc((v37 + *(v37[0] - 24)));
    v20 = std::locale::use_facet(&v42, MEMORY[0x277D82680]);
    v21 = (v20->__vftable[2].~facet_0)(v20, 10);
    std::locale::~locale(&v42);
    v22 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v37, &__p, v21);
    if ((*(v22 + *(*v22 - 24) + 32) & 5) != 0 || (v22 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "Tokens"), v22))
    {
      v27 = 0;
      v23 = v28;
      if (v28)
      {
        v8 = 0;
        v24 = 1;
        v25 = v28;
        while ((REFancyShrinkingDictionary::getKeyValueInt(v22, v37, &v29, &v27) & 1) != 0)
        {
          v26 = v27;
          v42.__locale_ = &v29;
          v22 = std::__hash_table<std::__hash_value_type<std::string,unsigned short>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned short>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned short>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned short>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v30, &v29.__r_.__value_.__l.__data_);
          *(v22 + 40) = v26;
          v8 = v24++ >= v23;
          if (!--v25)
          {
            goto LABEL_48;
          }
        }
      }

      else
      {
LABEL_48:
        if (&v30 != a1)
        {
          *(a1 + 32) = v32;
          std::__hash_table<std::__hash_value_type<std::string,unsigned short>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned short>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned short>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned short>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,unsigned short>,void *> *>>(a1, v31, 0);
        }

        v8 = 1;
      }

      goto LABEL_35;
    }
  }

LABEL_34:
  v8 = 0;
LABEL_35:
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

LABEL_37:
  std::__hash_table<std::__hash_value_type<std::string,unsigned short>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned short>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned short>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned short>>>::~__hash_table(&v30);
  if (SHIBYTE(v36) < 0)
  {
    operator delete(__p);
  }

  v37[0] = *MEMORY[0x277D82818];
  v18 = *(MEMORY[0x277D82818] + 72);
  *(v37 + *(v37[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v37[2] = v18;
  v38 = MEMORY[0x277D82878] + 16;
  if (v40 < 0)
  {
    operator delete(v39[7].__locale_);
  }

  v38 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v39);
  std::iostream::~basic_iostream();
  MEMORY[0x22AABBD50](&v41);
  return v8;
}

void sub_2286700AC(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  if (a8 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,unsigned short>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned short>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned short>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned short>>>::~__hash_table(&a9);
  if (a20 < 0)
  {
    operator delete(a15);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a21, MEMORY[0x277D82818]);
  MEMORY[0x22AABBD50](va);
  _Unwind_Resume(a1);
}

BOOL std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, char *__s)
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
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

const void **std::__hash_table<std::__hash_value_type<std::string,unsigned short>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned short>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned short>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned short>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,unsigned short>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned short>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned short>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned short>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_228670408(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,unsigned short>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2286704D0(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,unsigned short>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v5, a2, v3);
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](a2, a3);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,unsigned short>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t *std::__hash_table<std::__hash_value_type<std::string,unsigned short>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned short>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned short>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned short>>>::__erase_unique<std::string>(void *a1, const void **a2)
{
  result = std::__hash_table<std::__hash_value_type<std::string,unsigned short>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned short>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned short>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned short>>>::find<std::string>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<std::string,unsigned short>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned short>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned short>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned short>>>::erase(a1, result);
    return 1;
  }

  return result;
}

const void **std::__hash_table<std::__hash_value_type<std::string,unsigned short>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned short>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned short>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned short>>>::find<std::string>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v6 == v12)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,unsigned short>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned short>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned short>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned short>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<unsigned long long,Gaussian>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::allocator<std::__hash_value_type<unsigned long long,Gaussian>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,unsigned short>,void *>>>::operator()[abi:ne200100](&v6, v3);
  }

  return v2;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__hash_table<std::__hash_value_type<std::string,unsigned short>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned short>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned short>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned short>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,unsigned short>,void *> *>>(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        std::string::operator=((v8 + 16), (v4 + 2));
        *(v8 + 40) = *(v4 + 20);
        v10 = *v8;
        std::__hash_table<std::__hash_value_type<std::string,unsigned short>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned short>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned short>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned short>>>::__node_insert_multi(a1, v8);
        v4 = *v4;
        if (v10)
        {
          v11 = v4 == a3;
        }

        else
        {
          v11 = 1;
        }

        v8 = v10;
      }

      while (!v11);
    }

    std::__hash_table<std::__hash_value_type<std::string,unsigned short>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned short>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned short>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned short>>>::__deallocate_node(a1, v10);
  }

  if (v4 != a3)
  {
    std::__hash_table<std::__hash_value_type<std::string,unsigned short>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned short>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned short>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned short>>>::__emplace_multi<std::pair<std::string const,unsigned short> const&>();
  }
}

void sub_228670E20(void *a1)
{
  __cxa_begin_catch(a1);
  std::__hash_table<std::__hash_value_type<std::string,unsigned short>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned short>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned short>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned short>>>::__deallocate_node(v1, v2);
  __cxa_rethrow();
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,unsigned short>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned short>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned short>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned short>>>::__node_insert_multi(void *a1, uint64_t a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2 + 16);
  *(a2 + 8) = v4;
  inserted = std::__hash_table<std::__hash_value_type<std::string,unsigned short>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned short>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned short>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned short>>>::__node_insert_multi_prepare(a1, v4, (a2 + 16));
  std::__hash_table<std::__hash_value_type<unsigned long long,Gaussian>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::allocator<std::__hash_value_type<unsigned long long,Gaussian>>>::__node_insert_multi_perform(a1, a2, inserted);
  return a2;
}

const void **std::__hash_table<std::__hash_value_type<std::string,unsigned short>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned short>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned short>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned short>>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, const void **a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    std::__hash_table<std::__hash_value_type<std::string,unsigned short>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned short>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned short>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned short>>>::__rehash<false>(a1, v12);
    v6 = *(a1 + 8);
  }

  v13 = vcnt_s8(v6);
  v13.i16[0] = vaddlv_u8(v13);
  v14 = v13.u32[0];
  if (v13.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (v16)
  {
    v17 = *v16;
    if (*v16)
    {
      v18 = 0;
      do
      {
        v19 = v17[1];
        if (v14 > 1)
        {
          v20 = v17[1];
          if (v19 >= v6)
          {
            v20 = v19 % v6;
          }
        }

        else
        {
          v20 = v19 & (v6 - 1);
        }

        if (v20 != v15)
        {
          break;
        }

        v21 = v19 == a2 && std::equal_to<std::string>::operator()[abi:ne200100](a1, v17 + 2, a3);
        if ((v18 & (v21 != (v18 & 1))) != 0)
        {
          break;
        }

        v18 |= v21 != (v18 & 1);
        v16 = *v16;
        v17 = *v16;
      }

      while (*v16);
    }
  }

  return v16;
}

void std::__hash_table<std::__hash_value_type<std::string,unsigned short>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned short>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned short>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned short>>>::__rehash<false>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<std::string,unsigned short>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned short>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned short>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned short>>>::__do_rehash<false>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<std::string,unsigned short>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned short>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned short>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned short>>>::__do_rehash<false>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_22867130C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,unsigned short>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2286713E0(_Unwind_Exception *a1)
{
  *v2 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,unsigned short>,void *>>>::operator()[abi:ne200100](v3, v1);
  _Unwind_Resume(a1);
}

__CFString *REValueDescriptionStringFromFeatureValue(void *a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v4 = @"(Null)";
    goto LABEL_25;
  }

  v3 = [v1 type];
  v4 = 0;
  if (v3 <= 1)
  {
    if (!v3)
    {
      v17 = [v2 BOOLValue];
      v18 = @"NO";
      if (v17)
      {
        v18 = @"YES";
      }

      v16 = v18;
      goto LABEL_24;
    }

    if (v3 != 1)
    {
      goto LABEL_25;
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", objc_msgSend(v2, "int64Value")];
    goto LABEL_19;
  }

  switch(v3)
  {
    case 2:
      v14 = MEMORY[0x277CCACA8];
      [v2 doubleValue];
      [v14 stringWithFormat:@"%f", v15];
      v16 = LABEL_19:;
LABEL_24:
      v4 = v16;
      break;
    case 3:
      v16 = [v2 stringValue];
      goto LABEL_24;
    case 4:
      v5 = [MEMORY[0x277CBEB18] array];
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v6 = [v2 setValue];
      v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v22;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v22 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = REValueDescriptionStringFromFeatureValue(*(*(&v21 + 1) + 8 * i));
            [v5 addObject:v11];
          }

          v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v8);
      }

      v12 = MEMORY[0x277CCACA8];
      v13 = [v5 componentsJoinedByString:{@", "}];
      v4 = [v12 stringWithFormat:@"{%@}", v13];

      break;
  }

LABEL_25:

  v19 = *MEMORY[0x277D85DE8];

  return v4;
}

uint64_t REValidFeatureValueTypeForFeatureType(unint64_t a1, uint64_t a2)
{
  if (a1 >= 5)
  {
    LOBYTE(v2) = 1;
  }

  else
  {
    v2 = 6u >> a1;
  }

  v3 = a1 - 5 < 0xFFFFFFFFFFFFFFFDLL;
  if (a2)
  {
    v3 = v2;
  }

  if (a2 == 1)
  {
    v3 = a1 != 2;
  }

  if (a2 != 2)
  {
    LOBYTE(v2) = v3;
  }

  return v2 & 1;
}

uint64_t RECreateFeatureValueTaggedPointer(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v5 = 0;
    goto LABEL_27;
  }

  v3 = [v1 type];
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      [v2 doubleValue];
      if (((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE && vabdd_f64(COERCE_DOUBLE(*&v13 & 0xFFFFFFFFFFFFFFF8), v13) < *&REFloatingPointTaggedPointerPrecision)
      {
        v5 = *&v13 & 0xFFFFFFFFFFFFFFF8 | 5;
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (v3 != 3)
    {
      goto LABEL_26;
    }

    v6 = [v2 stringValue];
    if (!_RECanEncodeStringValue(v6))
    {

      goto LABEL_26;
    }

    v7 = v6;
    v8 = [v7 length];
    v9 = 0;
    if (!v8)
    {
      goto LABEL_15;
    }

      ;
    }

    if (v8 < 7)
    {
LABEL_15:
      v11 = v8 - 7;
      do
      {
        v9 <<= 8;
      }

      while (!__CFADD__(v11++, 1));
    }

    v5 = (8 * v9) | 7;
  }

  else
  {
    if (v3)
    {
      if (v3 == 1)
      {
        v4 = [v2 int64Value];
        if (!(v4 >> 61))
        {
          v5 = (8 * v4) | 3;
          goto LABEL_27;
        }
      }

LABEL_26:
      v5 = v2;
      goto LABEL_27;
    }

    if ([v2 BOOLValue])
    {
      v5 = 9;
    }

    else
    {
      v5 = 1;
    }
  }

LABEL_27:

  return v5;
}

id REFeatureValueForTaggedPointer(unint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if ((a1 & 1) == 0)
    {
      v1 = a1;
LABEL_4:
      v2 = v1;
      goto LABEL_6;
    }

    v5 = (a1 >> 1) & 3;
    if (v5 <= 1)
    {
      if (v5)
      {
        [REFeatureValue featureValueWithInt64:a1 >> 3];
      }

      else
      {
        [REFeatureValue featureValueWithBool:a1 > 7];
      }
      v1 = ;
      goto LABEL_4;
    }

    if (v5 == 2)
    {
      v1 = [REFeatureValue featureValueWithDouble:COERCE_DOUBLE(a1 & 0xFFFFFFFFFFFFFFF8)];
      goto LABEL_4;
    }

    v6 = a1 >> 3;
    v9 = 0;
    for (i = 6; i != -1; --i)
    {
      *(&v9 + i) = v6;
      v6 >>= 8;
    }

    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:&v9];
    v2 = [REFeatureValue featureValueWithString:v8, v9, v10];
  }

  else
  {
    v2 = 0;
  }

LABEL_6:
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

BOOL _RECanEncodeStringValue(void *a1)
{
  v1 = a1;
  if ([v1 canBeConvertedToEncoding:1] && (v2 = objc_msgSend(v1, "length"), v2 <= 7))
  {
    if (v2)
    {
      v3 = 0;
      v4 = v2 - 1;
      do
      {
        v5 = [v1 characterAtIndex:v3];
        v6 = v5 < 0x80;
        if (v5 > 0x7F)
        {
          break;
        }
      }

      while (v4 != v3++);
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t REFeatureValueTypeForTaggedPointer(unint64_t a1)
{
  if (a1)
  {
    return (a1 >> 1) & 3;
  }

  else
  {
    return [a1 type];
  }
}

uint64_t REBooleanValueForTaggedPointer(unint64_t a1)
{
  if ((a1 & 1) == 0)
  {
    return [a1 BOOLValue];
  }

  return (a1 & 6) == 0 && a1 > 7;
}

uint64_t REIntegerValueForTaggedPointer(unint64_t a1)
{
  if ((a1 & 1) == 0)
  {
    return [a1 int64Value];
  }

  if ((a1 & 6) == 2)
  {
    return a1 >> 3;
  }

  return 0;
}

double REDoubleValueForTaggedPointer(void *a1, const char *a2)
{
  if (a1)
  {
    result = 0.0;
    if ((a1 & 6) == 4)
    {
      *&result = a1 & 0xFFFFFFFFFFFFFFF8;
    }
  }

  else
  {
    [a1 doubleValue];
  }

  return result;
}

__CFString *REStringValueForTaggedPointer(unint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if ((~a1 & 6) != 0)
    {
      v1 = &stru_283B97458;
    }

    else
    {
      v2 = a1 >> 3;
      v6[0] = 0;
      for (i = 6; i != -1; --i)
      {
        *(v6 + i) = v2;
        v2 >>= 8;
      }

      v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
    }
  }

  else
  {
    v1 = [a1 stringValue];
  }

  v4 = *MEMORY[0x277D85DE8];

  return v1;
}

id RESetValueForTaggedPointer(void *a1)
{
  if (a1)
  {
    [MEMORY[0x277CBEB98] set];
  }

  else
  {
    [a1 setValue];
  }
  v1 = ;

  return v1;
}

id REDescriptionForTaggedPointer(unint64_t a1)
{
  v1 = REFeatureValueForTaggedPointer(a1);
  v2 = REValueDescriptionStringFromFeatureValue(v1);

  return v2;
}

void sub_2286755B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22867712C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *REExtractUserActivity(void *a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 activityType];
    v4 = v3;
    v5 = &stru_283B97458;
    if (v3)
    {
      v5 = v3;
    }

    v6 = v5;

    v7 = [v2 userInfo];
    if (v7)
    {
      v8 = [v2 requiredUserInfoKeys];
      v9 = [v8 allObjects];
      v10 = v9;
      if (v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = [v7 allKeys];
      }

      v12 = v11;

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v13 = v12;
      v14 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = 0;
        v17 = *v28;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v28 != v17)
            {
              objc_enumerationMutation(v13);
            }

            v19 = *(*(&v27 + 1) + 8 * i);
            v20 = [v19 re_actionIdentifierHashValue];
            v21 = [v7 objectForKeyedSubscript:v19];
            v22 = [v21 re_actionIdentifierHashValue] + v20;

            v16 ^= v22;
          }

          v15 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v15);
      }

      else
      {
        v16 = 0;
      }

      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v16];
      v24 = [(__CFString *)v6 stringByAppendingFormat:@"&userInfoHash=%@", v23];

      v6 = v24;
    }
  }

  else
  {
    v6 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v6;
}

void _HTTPServerInvalidated(void *a1)
{
  v1 = [a1 weakObjectValue];
  [v1 invalidated];
}

void _HTTPServerRecievedError(void *a1, uint64_t a2)
{
  v3 = [a1 weakObjectValue];
  [v3 didRecievedError:a2];
}

void _HTTPServerDidOpenConnection(void *a1, uint64_t a2)
{
  v3 = [a1 weakObjectValue];
  [v3 didOpenConnection:a2];
}

void _HTTPServerDidCloseConnection(void *a1, uint64_t a2)
{
  v3 = [a1 weakObjectValue];
  [v3 didCloseConnection:a2];
}

void sub_228678350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t RELocationPredictorUserLocationFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"RELocationOfInterestHome"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"RELocationOfInterestWork"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"RELocationOfInterestGym"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"RELocationOfInterestSchool"])
  {
    v2 = 2;
  }

  else
  {
    v2 = -1;
  }

  return v2;
}

uint64_t __Block_byref_object_copy__29(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t CoreRoutineLibraryCore()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!CoreRoutineLibraryCore_frameworkLibrary)
  {
    CoreRoutineLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = CoreRoutineLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CoreRoutineLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreRoutineLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getRTRoutineManagerClass_block_invoke(uint64_t a1)
{
  if (!CoreRoutineLibraryCore())
  {
    v3 = abort_report_np();
    free(v3);
  }

  result = objc_getClass("RTRoutineManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRTRoutineManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getRTRoutineManagerClass_block_invoke_cold_1();
    return REDescriptionForExportedObject(v4);
  }

  return result;
}

id REDescriptionForExportedObject(void *a1)
{
  v1 = a1;
  v2 = +[(RESingleton *)REInterfaceCache];
  v3 = [v2 exportedInterfaceClass:objc_opt_class()];

  if (v3)
  {
    v4 = [(REExportedValueEncoder *)[RELogExportedValueEncoder alloc] initWithOptions:2];
    v5 = [REExportedValue exportedValueForObject:v1];
    v6 = [(REExportedValueEncoder *)v4 dataFromExportedValue:v5];

    if (v6)
    {
      v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v6 encoding:4];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = &stru_283B97458;
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@: %p> %@", objc_opt_class(), v1, v8];

  return v9;
}

id REVerboseDescriptionForExportedObject(void *a1)
{
  v1 = a1;
  v2 = +[(RESingleton *)REInterfaceCache];
  v3 = [v2 exportedInterfaceClass:objc_opt_class()];

  if (v3)
  {
    v4 = [(REExportedValueEncoder *)[RELogExportedValueEncoder alloc] initWithOptions:5];
    v5 = [REExportedValue exportedValueForObject:v1];
    v6 = [(REExportedValueEncoder *)v4 dataFromExportedValue:v5];

    if (v6)
    {
      v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v6 encoding:4];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = &stru_283B97458;
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@: %p> %@", objc_opt_class(), v1, v8];

  return v9;
}

id RELogHeader(void *a1)
{
  v1 = a1;
  v2 = [v1 length];
  v3 = v2 + 4;
  v4 = [MEMORY[0x277CCAB68] stringWithCapacity:3 * v2 + 21];
  [v4 appendString:@"*"];
  if (v3)
  {
    v5 = v3;
    do
    {
      [v4 appendString:@"-"];
      --v5;
    }

    while (v5);
    [v4 appendString:@"*\n"];
    [v4 appendString:@"|  "];
    [v4 appendString:v1];
    [v4 appendString:@"  |\n"];
    [v4 appendString:@"*"];
    do
    {
      [v4 appendString:@"-"];
      --v3;
    }

    while (v3);
  }

  else
  {
    [v4 appendString:@"*\n"];
    [v4 appendString:@"|  "];
    [v4 appendString:v1];
    [v4 appendString:@"  |\n"];
    [v4 appendString:@"*"];
  }

  [v4 appendString:@"*\n\n"];
  v6 = [v4 copy];

  return v6;
}

uint64_t __Block_byref_object_copy__30(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x22AABC5E0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

__CFString *REStringForLocationType(unint64_t a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return off_2785FDDB0[a1];
  }
}

uint64_t REMLExplanationsEnabled()
{
  if (_fetchedInternalBuildOnceToken_11 != -1)
  {
    REMLExplanationsEnabled_cold_1();
  }

  if (_isInternalDevice_11 != 1)
  {
    return 0;
  }

  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"REUserDefaultMLExplanationsEnabled"];

  return v1;
}

uint64_t __REMLExplanationsEnabled_block_invoke()
{
  result = _REGetIsInternalBuild();
  _isInternalDevice_11 = result;
  return result;
}

void sub_228680958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228680B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose((v10 - 80), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228680DA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PersonalizationPortraitLibraryCore()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!PersonalizationPortraitLibraryCore_frameworkLibrary)
  {
    PersonalizationPortraitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = PersonalizationPortraitLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __PersonalizationPortraitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PersonalizationPortraitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void __getPPNamedEntityStoreClass_block_invoke(uint64_t a1)
{
  PersonalizationPortraitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PPNamedEntityStore");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPPNamedEntityStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getPPNamedEntityStoreClass_block_invoke_cold_1();
    PersonalizationPortraitLibrary();
  }
}

void PersonalizationPortraitLibrary()
{
  if (!PersonalizationPortraitLibraryCore())
  {
    v0 = abort_report_np();
    free(v0);
  }
}

Class __getPPNamedEntityQueryClass_block_invoke(uint64_t a1)
{
  PersonalizationPortraitLibrary();
  result = objc_getClass("PPNamedEntityQuery");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPPNamedEntityQueryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getPPNamedEntityQueryClass_block_invoke_cold_1();
    return [(REScriptASTDeclarationNode *)v3 parseBuffer:v4 error:v5, v6];
  }

  return result;
}

BOOL REExpectTokenType(void *a1, unint64_t a2, void *a3)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [v5 type];
  v7 = v6;
  if (a3 && v6 != a2)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [v5 value];
    v10 = REDescriptionForTokenType(a2);
    v11 = [v8 stringWithFormat:@"Unexpected token %@ found. Expecting '%@' token.", v9, v10];

    v15 = @"REErrorTokenKey";
    v16[0] = v5;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    *a3 = RECreateErrorWithCodeMessageAndUseInfo(204, v11, v12);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v7 == a2;
}

BOOL REExpectTokenTypeInBuffer(void *a1, unint64_t a2, void *a3)
{
  v5 = a1;
  if ([v5 isEmpty])
  {
    if (!a3)
    {
      v9 = 0;
      goto LABEL_6;
    }

    v6 = MEMORY[0x277CCACA8];
    v7 = REDescriptionForTokenType(a2);
    v8 = [v6 stringWithFormat:@"Expecting '%@' token but reached end of file", v7];

    RECreateErrorWithCodeAndMessage(205, v8);
    *a3 = v9 = 0;
  }

  else
  {
    v8 = [v5 currentToken];
    v9 = REExpectTokenType(v8, a2, a3);
  }

LABEL_6:
  return v9;
}

void StdNormal_Cdf(double a1)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v1 = fabs(a1);
    if (v1 > 0.662912607)
    {
      exp(-(v1 * v1) * 0.5);
    }
  }
}

void StdNormal_Inv(double a1)
{
  if (a1 <= 1.0 && a1 >= 0.0 && a1 != 0.0 && a1 != 1.0)
  {
    if (1.0 - a1 >= a1)
    {
      v1 = a1;
    }

    else
    {
      v1 = 1.0 - a1;
    }

    if (v1 <= 0.02425)
    {
      v4 = sqrt(log(v1) * -2.0);
      v5 = &unk_2286B3568;
      v6 = vld1q_dup_f64(v5);
      v6.f64[0] = v4 * -0.007784894 + -0.322396458;
      v7 = vmlaq_n_f64(xmmword_2286B3600, vmlaq_n_f64(xmmword_2286B35F0, vmlaq_n_f64(xmmword_2286B35E0, vmlaq_n_f64(xmmword_2286B35D0, v6, v4), v4), v4), v4);
      *&v3 = *&vdivq_f64(v7, vdupq_laneq_s64(v7, 1));
    }

    else
    {
      v2 = v1 + -0.5;
      v3 = v2 * (((((v2 * v2 * -39.6968303 + 220.946098) * (v2 * v2) + -275.92851) * (v2 * v2) + 138.357752) * (v2 * v2) + -30.6647981) * (v2 * v2) + 2.50662828) / (((((v2 * v2 * -54.4760988 + 161.585837) * (v2 * v2) + -155.69898) * (v2 * v2) + 66.8013119) * (v2 * v2) + -13.2806816) * (v2 * v2) + 1.0);
    }

    v8 = v3;
    StdNormal_Cdf(v3);
    exp(v8 * v8 * 0.5);
  }
}

id REStringArrayFromVector(uint64_t **a1)
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1)];
  for (i = *a1; i != a1[1]; i += 3)
  {
    v4 = i;
    if (*(i + 23) < 0)
    {
      v4 = *i;
    }

    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:v4];
    [v2 addObject:v5];
  }

  v6 = [v2 copy];

  return v6;
}

void sub_22868271C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_228682B80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  v42 = v39;

  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (a27)
  {
    operator delete(a27);
  }

  if (a30)
  {
    operator delete(a30);
  }

  v44 = *(v41 - 120);
  if (v44)
  {
    *(v41 - 112) = v44;
    operator delete(v44);
  }

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_40c39_ZTSNSt3__16vectorIyNS_9allocatorIyEEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v2 = a1 + 40;
  *(v2 + 16) = 0;
  return std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(v2, *(a2 + 40), *(a2 + 48), (*(a2 + 48) - *(a2 + 40)) >> 3);
}

void __destroy_helper_block_ea8_40c39_ZTSNSt3__16vectorIyNS_9allocatorIyEEEE(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

uint64_t BayesianModel::AccessGaussiansAndBias(pthread_rwlock_t *a1, uint64_t *a2, const void **a3, const void **a4)
{
  pthread_rwlock_rdlock(a1);
  BayesianModel::GetGaussiansAndBias2(a1, a2, a3, a4);
  return pthread_rwlock_unlock(a1);
}

uint64_t __copy_helper_block_ea8_48c39_ZTSNSt3__16vectorIdNS_9allocatorIdEEEE72c39_ZTSNSt3__16vectorIdNS_9allocatorIdEEEE(void *a1, uint64_t *a2)
{
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>((a1 + 6), a2[6], a2[7], (a2[7] - a2[6]) >> 3);
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  return std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>((a1 + 9), a2[9], a2[10], (a2[10] - a2[9]) >> 3);
}

void sub_228683050(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 56) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_ea8_48c39_ZTSNSt3__16vectorIdNS_9allocatorIdEEEE72c39_ZTSNSt3__16vectorIdNS_9allocatorIdEEEE(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;

    operator delete(v3);
  }
}

void sub_228683648(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

unint64_t BayesianModel::getNumberOfCoordinates(BayesianModel *this)
{
  pthread_rwlock_rdlock(&this->m_rwlock);
  size = this->m_features.__table_.__size_;
  pthread_rwlock_unlock(&this->m_rwlock);
  return size;
}

void sub_228683988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  v14 = v13;

  a12 = &a9;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void *std::vector<unsigned long long>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned long long>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_228683A6C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned long long>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a1, a2);
  }

  std::vector<std::string>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_228683B24(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_228683BA0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 3;
        v6 = v4;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

uint64_t __REGetDisableAllModelPredictions_block_invoke()
{
  result = _REGetIsInternalBuild();
  _isInternalDevice_12 = result;
  return result;
}

void __REGetDisableAllModelPredictions_block_invoke_2()
{
  v9 = *MEMORY[0x277D85DE8];
  v6 = 0;
  if (RelevanceEngineLibraryCore_4())
  {
    v0 = [soft__REEngineDefaults_2() globalDefaults];
  }

  else
  {
    v0 = 0;
  }

  v1 = [v0 _BOOLValueForKey:@"DisableAllModelPredictions" set:&v6];
  v2 = v6 & v1;
  v3 = RELogForDomain(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:v2 & 1];
    *buf = 138412290;
    v8 = v4;
    _os_log_impl(&dword_22859F000, v3, OS_LOG_TYPE_DEFAULT, "Prefs reading value for key DisableAllModelPredictions: %@", buf, 0xCu);
  }

  REGetDisableAllModelPredictions__REValueDisableAllModelPredictions = v6 & v2;
  v5 = *MEMORY[0x277D85DE8];
}

id soft__REEngineDefaults_2()
{
  if (RelevanceEngineLibraryCore_4())
  {
    v4 = 0;
    v5 = &v4;
    v6 = 0x2050000000;
    v0 = get_REEngineDefaultsClass_softClass_3;
    v7 = get_REEngineDefaultsClass_softClass_3;
    if (!get_REEngineDefaultsClass_softClass_3)
    {
      v3[0] = MEMORY[0x277D85DD0];
      v3[1] = 3221225472;
      v3[2] = __get_REEngineDefaultsClass_block_invoke_3;
      v3[3] = &unk_2785F9BC0;
      v3[4] = &v4;
      __get_REEngineDefaultsClass_block_invoke_3(v3);
      v0 = v5[3];
    }

    v1 = v0;
    _Block_object_dispose(&v4, 8);
  }

  else
  {
    v0 = 0;
  }

  return v0;
}

void sub_228684E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t RelevanceEngineLibraryCore_4()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!RelevanceEngineLibraryCore_frameworkLibrary_4)
  {
    RelevanceEngineLibraryCore_frameworkLibrary_4 = _sl_dlopen();
  }

  result = RelevanceEngineLibraryCore_frameworkLibrary_4;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __RelevanceEngineLibraryCore_block_invoke_4(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  RelevanceEngineLibraryCore_frameworkLibrary_4 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __REGetDisableMLModel_block_invoke()
{
  result = _REGetIsInternalBuild();
  _isInternalDevice_12 = result;
  return result;
}

void __REGetDisableMLModel_block_invoke_2()
{
  v9 = *MEMORY[0x277D85DE8];
  v6 = 0;
  if (RelevanceEngineLibraryCore_4())
  {
    v0 = [soft__REEngineDefaults_2() globalDefaults];
  }

  else
  {
    v0 = 0;
  }

  v1 = [v0 _BOOLValueForKey:@"DisableMLModel" set:&v6];
  v2 = v6 & v1;
  v3 = RELogForDomain(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:v2 & 1];
    *buf = 138412290;
    v8 = v4;
    _os_log_impl(&dword_22859F000, v3, OS_LOG_TYPE_DEFAULT, "Prefs reading value for key DisableMLModel: %@", buf, 0xCu);
  }

  REGetDisableMLModel__REValueDisableMLModel = v6 & v2;
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2286857DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id get_DKApplicationActivityMetadataKeyClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = get_DKApplicationActivityMetadataKeyClass_softClass_0;
  v7 = get_DKApplicationActivityMetadataKeyClass_softClass_0;
  if (!get_DKApplicationActivityMetadataKeyClass_softClass_0)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __get_DKApplicationActivityMetadataKeyClass_block_invoke_0;
    v3[3] = &unk_2785F9BC0;
    v3[4] = &v4;
    __get_DKApplicationActivityMetadataKeyClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_228685B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228685F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CoreDuetLibraryCore_2()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!CoreDuetLibraryCore_frameworkLibrary_2)
  {
    CoreDuetLibraryCore_frameworkLibrary_2 = _sl_dlopen();
  }

  result = CoreDuetLibraryCore_frameworkLibrary_2;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CoreDuetLibraryCore_block_invoke_2(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreDuetLibraryCore_frameworkLibrary_2 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void CoreDuetLibrary_2()
{
  if (!CoreDuetLibraryCore_2())
  {
    v0 = abort_report_np();
    free(v0);
  }
}

void OUTLINED_FUNCTION_1_6(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_6_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

uint64_t RECompareFeatureValues(void *a1, void *a2)
{
  v5 = REFeatureValueTypeForTaggedPointer(a1);
  v7 = REFeatureValueTypeForTaggedPointer(a2);
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      if (v5 != 3)
      {
        if (v5 == 4)
        {
LABEL_5:
          v8 = RESetValueForTaggedPointer(a1);
          v9 = [v8 anyObject];
          v10 = RECreateFeatureValueTaggedPointer(v9);

          v11 = RECompareFeatureValues(a2, v10);
          REReleaseFeatureValueTaggedPointer(v10);

          return v11;
        }

        return v2;
      }

      goto LABEL_21;
    }

    goto LABEL_42;
  }

  if (!v5)
  {
    v15 = REBooleanValueForTaggedPointer(a1);
    v16 = v15;
    if (v7 <= 1)
    {
      if (v7)
      {
        if (v7 == 1)
        {
          v28 = REIntegerValueForTaggedPointer(a2);
          if (v28 <= v16)
          {
            v29 = 0;
          }

          else
          {
            v29 = -1;
          }

          if (v28 >= v16)
          {
            return v29;
          }

          else
          {
            return 1;
          }
        }

LABEL_42:
        v31 = REDoubleValueForTaggedPointer(a1, v6);
        if (v7 > 1)
        {
          switch(v7)
          {
            case 2:
              v36 = REDoubleValueForTaggedPointer(a2, v30);
              break;
            case 3:
              v50 = REStringValueForTaggedPointer(a2);
              [v50 doubleValue];
              v36 = v51;

              break;
            case 4:
              goto LABEL_46;
            default:
              goto LABEL_8;
          }

LABEL_76:
          if (v31 > v36)
          {
            return 1;
          }

          if (v31 >= v36)
          {
            return 0;
          }

          return -1;
        }

        if (!v7)
        {
          v36 = REBooleanValueForTaggedPointer(a2);
          goto LABEL_76;
        }

        if (v7 == 1)
        {
          v36 = REIntegerValueForTaggedPointer(a2);
          goto LABEL_76;
        }

LABEL_8:
        v13 = REIntegerValueForTaggedPointer(a1);
        v14 = v13;
        if (v7 <= 1)
        {
          if (!v7)
          {
            v48 = REBooleanValueForTaggedPointer(a2);
            if (v14 >= v48)
            {
              v49 = 0;
            }

            else
            {
              v49 = -1;
            }

            if (v14 <= v48)
            {
              return v49;
            }

            else
            {
              return 1;
            }
          }

          if (v7 != 1)
          {
LABEL_21:
            v20 = REStringValueForTaggedPointer(a1);
            v21 = v20;
            if (v7 <= 1)
            {
              if (v7)
              {
                if (v7 == 1)
                {
                  v25 = [v20 longLongValue];
                  v26 = REIntegerValueForTaggedPointer(a2);
                  if (v25 >= v26)
                  {
                    v27 = 0;
                  }

                  else
                  {
                    v27 = -1;
                  }

                  if (v25 <= v26)
                  {
                    v2 = v27;
                  }

                  else
                  {
                    v2 = 1;
                  }

                  goto LABEL_90;
                }

                goto LABEL_58;
              }

              v42 = [v20 BOOLValue];
              v43 = REBooleanValueForTaggedPointer(a2);
              if (!v42 || v43)
              {
                v2 = ((v43 & ~v42) << 63) >> 63;
                goto LABEL_90;
              }
            }

            else
            {
              if (v7 != 2)
              {
                if (v7 == 3)
                {
                  v41 = REStringValueForTaggedPointer(a2);
                  v2 = [v21 localizedCompare:v41];

                  goto LABEL_90;
                }

                if (v7 == 4)
                {
                  v22 = RESetValueForTaggedPointer(a2);
                  v23 = [v22 anyObject];
                  v24 = RECreateFeatureValueTaggedPointer(v23);

                  v2 = RECompareFeatureValues(a1, v24);
                  REReleaseFeatureValueTaggedPointer(v24);

LABEL_90:
                  return v2;
                }

LABEL_58:

                goto LABEL_5;
              }

              [v20 doubleValue];
              v38 = v37;
              v40 = REDoubleValueForTaggedPointer(a2, v39);
              if (v38 <= v40)
              {
                if (v38 < v40)
                {
                  v2 = -1;
                }

                else
                {
                  v2 = 0;
                }

                goto LABEL_90;
              }
            }

            v2 = 1;
            goto LABEL_90;
          }

          v17 = REIntegerValueForTaggedPointer(a2);
          v18 = v14 >= v17;
          v19 = v14 > v17;
          goto LABEL_61;
        }

        if (v7 != 2)
        {
          if (v7 != 3)
          {
            if (v7 != 4)
            {
              goto LABEL_21;
            }

LABEL_46:
            v32 = RESetValueForTaggedPointer(a2);
            v33 = [v32 anyObject];
            v34 = RECreateFeatureValueTaggedPointer(v33);

            v35 = RECompareFeatureValues(a1, v34);
            REReleaseFeatureValueTaggedPointer(v34);

            return v35;
          }

          v45 = REStringValueForTaggedPointer(a2);
          v46 = [v45 longLongValue];

          v18 = v14 >= v46;
          v19 = v14 > v46;
LABEL_61:
          if (v18)
          {
            v47 = 0;
          }

          else
          {
            v47 = -1;
          }

          if (v19)
          {
            return 1;
          }

          else
          {
            return v47;
          }
        }

        v44 = v13;
LABEL_80:
        v52 = REDoubleValueForTaggedPointer(a2, v6);
        if (v52 < v44)
        {
          return 1;
        }

        if (v52 <= v44)
        {
          return 0;
        }

        return -1;
      }

      v57 = REBooleanValueForTaggedPointer(a2);
      v55 = v16 & (v57 ^ 1);
      v56 = v57 & ~v16;
    }

    else
    {
      if (v7 == 2)
      {
        v44 = v15;
        goto LABEL_80;
      }

      if (v7 != 3)
      {
        if (v7 == 4)
        {
          goto LABEL_46;
        }

        goto LABEL_42;
      }

      v53 = REStringValueForTaggedPointer(a2);
      v54 = [v53 BOOLValue];

      v55 = v16 & (v54 ^ 1);
      v56 = v54 & ~v16;
    }

    v58 = v56 << 63 >> 63;
    if (v55)
    {
      return 1;
    }

    else
    {
      return v58;
    }
  }

  if (v5 == 1)
  {
    goto LABEL_8;
  }

  return v2;
}

void REEnsureFeature(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (!a1)
  {
    RERaiseInternalException(*MEMORY[0x277CBE660], @"Feature must be non-nil", a3, a4, a5, a6, a7, a8, a9);
  }
}

uint64_t sub_228687494@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2286874E0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 104);

  return v4(v2, v3);
}

uint64_t sub_228687548()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_228687594(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_228687638@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 32);
}

uint64_t sub_228687684(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = v2;
}

void *sub_228687724()
{
  v0 = sub_228689488();
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v7[0] = *v0;
  v7[1] = v1;
  v7[2] = v2;
  v7[3] = v3;
  v7[4] = v4;
  type metadata accessor for RankingBehavior();
  v5 = swift_allocObject();
  sub_228687E50();
  result = RankingBehavior.init(properties:)(v7);
  qword_27D850948 = v5;
  return result;
}

uint64_t RankingBehavior.__allocating_init(properties:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  RankingBehavior.init(properties:)(a1);
  return v2;
}

uint64_t *sub_2286877F4()
{
  if (qword_27D84FAB8 != -1)
  {
    swift_once();
  }

  return &qword_27D850948;
}

void *RankingBehavior.init(properties:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v11 = *a1;
  v12 = v3;
  v13 = v5;
  v14 = v4;
  v15 = v6;
  v1[2] = sub_228688D30();
  v1[3] = v7;
  if (v5 < 0)
  {
    type metadata accessor for NormalRankingFunction();
    v11 = v2;
    v12 = v3;
    LOWORD(v13) = v5;
    BYTE2(v13) = BYTE2(v5);
    v14 = v4;
    v15 = v6;
    NormalRankingFunction.__allocating_init(properties:)(&v11);
    v8 = v9 | 0x8000000000000000;
  }

  else
  {
    type metadata accessor for LinearRankingFunction();
    v11 = v2;
    v12 = v3;
    LOWORD(v13) = v5;
    v14 = v4;
    LinearRankingFunction.__allocating_init(properties:)(&v11);
  }

  v1[4] = v8;
  return v1;
}

float sub_22868791C(uint64_t a1)
{
  v3 = sub_2286A089C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2286A088C();
  v8 = (*(*v1 + 160))(a1, v7);
  (*(v4 + 8))(v7, v3);
  return v8;
}

float sub_228687A24(uint64_t a1, uint64_t a2)
{
  (*(*v2 + 120))(&v8);
  if (v8 < 0)
  {
    v5 = (*(*(v8 & 0x7FFFFFFFFFFFFFFFLL) + 128))(a1, a2);
  }

  else
  {
    (*(*v8 + 128))(a1, a2);
  }

  v6 = v5;

  return v6;
}

uint64_t sub_228687B00()
{
  v6 = 0;
  v7 = 0xE000000000000000;
  sub_2286A0AFC();
  v1 = MEMORY[0x22AABB1B0](0xD000000000000010, 0x80000002286BB640);
  v2 = (*(*v0 + 96))(v1);
  MEMORY[0x22AABB1B0](v2);

  v3 = MEMORY[0x22AABB1B0](0xD000000000000014, 0x80000002286BB660);
  (*(*v0 + 120))(&v5, v3);
  sub_2286A0B8C();

  return v6;
}

uint64_t RankingBehavior.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t RankingBehavior.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t LinearRankingProperties.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  v5 = v0[3];
  sub_2286A0AFC();
  MEMORY[0x22AABB1B0](0x4E65727574616566, 0xED0000203A656D61);
  MEMORY[0x22AABB1B0](v1, v2);
  MEMORY[0x22AABB1B0](0xD000000000000013, 0x80000002286BB6D0);
  sub_2286A0B8C();
  MEMORY[0x22AABB1B0](0xD000000000000011, 0x80000002286BB6F0);
  sub_2286A0B8C();
  MEMORY[0x22AABB1B0](0x697461727564202CLL, 0xEC000000203A6E6FLL);
  sub_2286A0A4C();
  return 0;
}

uint64_t sub_228688030()
{
  v1 = 0x4E65727574616566;
  v2 = 0x6972506C616E6966;
  if (*v0 != 2)
  {
    v2 = 0x6E6F697461727564;
  }

  if (*v0)
  {
    v1 = 0x506C616974696E69;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2286880CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_228689F98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22868810C(uint64_t a1)
{
  v2 = sub_228688494();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_228688148(uint64_t a1)
{
  v2 = sub_228688494();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LinearRankingProperties.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D84EE90, &qword_2286B36C0);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_228688494();
  sub_2286A0D3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = 0;
  v11 = sub_2286A0C4C();
  v13 = v12;
  v21 = v11;
  v25 = 1;
  sub_228688534();
  sub_2286A0C6C();
  v20 = v26;
  v23 = 2;
  sub_2286A0C6C();
  v14 = v20;
  v19 = v24;
  v22 = 3;
  sub_2286A0C5C();
  v17 = v16;
  (*(v6 + 8))(v9, v5);
  *a2 = v21;
  *(a2 + 8) = v13;
  *(a2 + 16) = v14;
  *(a2 + 17) = v19;
  *(a2 + 24) = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_228688494()
{
  result = qword_27D84FAF8;
  if (!qword_27D84FAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D84FAF8);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_228688534()
{
  result = qword_27D84EE98;
  if (!qword_27D84EE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D84EE98);
  }

  return result;
}

uint64_t NormalRankingProperties.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  v5 = *(v0 + 18);
  v7 = v0[3];
  v6 = v0[4];
  sub_2286A0AFC();
  MEMORY[0x22AABB1B0](0x4E65727574616566, 0xED0000203A656D61);
  MEMORY[0x22AABB1B0](v1, v2);
  MEMORY[0x22AABB1B0](0xD000000000000013, 0x80000002286BB6D0);
  sub_2286A0B8C();
  MEMORY[0x22AABB1B0](0xD000000000000010, 0x80000002286BB710);
  sub_2286A0B8C();
  MEMORY[0x22AABB1B0](0xD000000000000011, 0x80000002286BB6F0);
  sub_2286A0B8C();
  MEMORY[0x22AABB1B0](0xD000000000000012, 0x80000002286BB730);
  sub_2286A0A4C();
  MEMORY[0x22AABB1B0](0xD000000000000014, 0x80000002286BB750);
  sub_2286A0A4C();
  return 0;
}

uint64_t sub_2286887A4()
{
  v1 = *v0;
  sub_2286A0CEC();
  MEMORY[0x22AABB500](v1);
  return sub_2286A0D1C();
}

uint64_t sub_2286887EC()
{
  v1 = *v0;
  sub_2286A0CEC();
  MEMORY[0x22AABB500](v1);
  return sub_2286A0D1C();
}

uint64_t sub_228688830()
{
  v1 = *v0;
  v2 = 0x4E65727574616566;
  v3 = 0x6972506C616E6966;
  v4 = 0x75447055706D6172;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x506C616974696E69;
  if (v1 != 1)
  {
    v5 = 0x6F6972506B616570;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_228688924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22868A110(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_228688958(uint64_t a1)
{
  v2 = sub_228688CC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_228688994(uint64_t a1)
{
  v2 = sub_228688CC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NormalRankingProperties.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D84EEA0, &qword_2286B36C8);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_228688CC0();
  sub_2286A0D3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v33 = 0;
  v11 = sub_2286A0C4C();
  v13 = v12;
  v24 = v11;
  v31 = 1;
  sub_228688534();
  sub_2286A0C6C();
  v23 = v32;
  v29 = 2;
  sub_2286A0C6C();
  v22 = v30;
  v27 = 3;
  sub_2286A0C6C();
  v14 = v28;
  v26 = 4;
  sub_2286A0C5C();
  HIDWORD(v21) = v14;
  v16 = v15;
  v25 = 5;
  sub_2286A0C5C();
  v19 = v18;
  (*(v6 + 8))(v9, v5);
  *a2 = v24;
  *(a2 + 8) = v13;
  v20 = v22;
  *(a2 + 16) = v23;
  *(a2 + 17) = v20;
  *(a2 + 18) = BYTE4(v21);
  *(a2 + 24) = v16;
  *(a2 + 32) = v19;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_228688CC0()
{
  result = qword_27D84FB00;
  if (!qword_27D84FB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D84FB00);
  }

  return result;
}

uint64_t sub_228688D30()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_228687E50();
  return v1;
}

uint64_t sub_228688D7C()
{
  sub_2286A0CEC();
  sub_2286A099C();
  return sub_2286A0D1C();
}

uint64_t sub_228688DF8()
{
  sub_2286A0CEC();
  sub_2286A099C();
  return sub_2286A0D1C();
}

uint64_t sub_228688E50@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2286A0C3C();

  *a2 = v5 != 0;
  return result;
}

void sub_228688EA4(uint64_t a1@<X8>)
{
  strcpy(a1, "functionType");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t sub_228688EE8@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_2286A0C3C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_228688F4C(uint64_t a1)
{
  v2 = sub_228689368();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_228688F88(uint64_t a1)
{
  v2 = sub_228689368();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RankingFunctionProperties.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D84EEA8, &qword_2286B36D0);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v25 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_228689368();
  sub_2286A0D3C();
  if (!v2)
  {
    v11 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2286A0D2C();
    v13 = sub_2286A0C4C();
    v14 = v12;
    v15 = v13 == 0x7261656E696CLL && v12 == 0xE600000000000000;
    if (v15 || (sub_2286A0CAC() & 1) != 0)
    {

      __swift_project_boxed_opaque_existential_1(v31, v32);
      sub_228689410();
      sub_2286A0CCC();
      (*(v6 + 8))(v9, v5);
      v16 = v29;
      v17 = v25;
      v18 = v26;
      v19 = 0.0;
      v20 = v27;
LABEL_17:
      v24 = v16 * 60.0;
      __swift_destroy_boxed_opaque_existential_1(v31);
      *a2 = v17;
      *(a2 + 8) = v18;
      *(a2 + 16) = v20;
      *(a2 + 24) = v24;
      *(a2 + 32) = v19;
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    if (v13 != 0x6C616D726F6ELL || v14 != 0xE600000000000000)
    {
      v22 = sub_2286A0CAC();

      if (v22)
      {
LABEL_15:
        __swift_project_boxed_opaque_existential_1(v31, v32);
        sub_2286893BC();
        sub_2286A0CCC();
        (*(v6 + 8))(v9, v5);
        v16 = v29;
        v19 = v30 * 60.0;
        v17 = v25;
        v18 = v26;
        v20 = v27 | (v28 << 16) | 0x8000000000000000;
        goto LABEL_17;
      }

      sub_2286A0BDC();
      __break(1u);
    }

    goto LABEL_15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_228689368()
{
  result = qword_27D84FB08[0];
  if (!qword_27D84FB08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D84FB08);
  }

  return result;
}

unint64_t sub_2286893BC()
{
  result = qword_27D84EEB0;
  if (!qword_27D84EEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D84EEB0);
  }

  return result;
}

unint64_t sub_228689410()
{
  result = qword_27D84EEB8;
  if (!qword_27D84EEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D84EEB8);
  }

  return result;
}

double sub_228689464()
{
  result = 1.81776662e-306;
  xmmword_27D84FAD0 = xmmword_2286B36B0;
  qword_27D84FAE8 = 0;
  qword_27D84FAF0 = 0;
  qword_27D84FAE0 = 771;
  return result;
}

__int128 *sub_228689488()
{
  if (qword_27D84FAC0 != -1)
  {
    swift_once();
  }

  return &xmmword_27D84FAD0;
}

uint64_t static RankingFunctionProperties.defaultProperties.getter@<X0>(void *a1@<X8>)
{
  if (qword_27D84FAC0 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v2 = *(&xmmword_27D84FAD0 + 1);
  v3 = qword_27D84FAE0;
  v4 = qword_27D84FAE8;
  v5 = qword_27D84FAF0;
  *a1 = xmmword_27D84FAD0;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;

  return sub_228687E50();
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_228689580(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2286895C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22868962C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_228689674(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2286896D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 16) >> 6) & 0x3E0 | (*(a1 + 16) >> 3) | (*(a1 + 16) >> 9) & 0xFFFFFC00;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_22868973C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = 0;
      *(result + 8) = 0;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 16) = (-a2 << 6) & 0xF800 | (8 * (-a2 & 0x1FLL)) & 0xFFFFFE000007FFFFLL | ((-a2 >> 10) << 19);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2286897F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_228689850(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RankingFunctionProperties.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for RankingFunctionProperties.CodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RankingPriority(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RankingPriority(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LinearRankingProperties.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LinearRankingProperties.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_228689C84()
{
  result = qword_27D84FE90[0];
  if (!qword_27D84FE90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D84FE90);
  }

  return result;
}

unint64_t sub_228689CDC()
{
  result = qword_27D8500A0[0];
  if (!qword_27D8500A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D8500A0);
  }

  return result;
}

unint64_t sub_228689D34()
{
  result = qword_27D850330[0];
  if (!qword_27D850330[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D850330);
  }

  return result;
}

unint64_t sub_228689D8C()
{
  result = qword_27D850440;
  if (!qword_27D850440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850440);
  }

  return result;
}

unint64_t sub_228689DE4()
{
  result = qword_27D850448[0];
  if (!qword_27D850448[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D850448);
  }

  return result;
}

unint64_t sub_228689E3C()
{
  result = qword_27D8504D0;
  if (!qword_27D8504D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8504D0);
  }

  return result;
}

unint64_t sub_228689E94()
{
  result = qword_27D8504D8[0];
  if (!qword_27D8504D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D8504D8);
  }

  return result;
}

unint64_t sub_228689EEC()
{
  result = qword_27D850560;
  if (!qword_27D850560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850560);
  }

  return result;
}

unint64_t sub_228689F44()
{
  result = qword_27D850568[0];
  if (!qword_27D850568[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D850568);
  }

  return result;
}

uint64_t sub_228689F98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E65727574616566 && a2 == 0xEB00000000656D61;
  if (v4 || (sub_2286A0CAC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x506C616974696E69 && a2 == 0xEF797469726F6972 || (sub_2286A0CAC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6972506C616E6966 && a2 == 0xED0000797469726FLL || (sub_2286A0CAC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_2286A0CAC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_22868A110(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E65727574616566 && a2 == 0xEB00000000656D61;
  if (v4 || (sub_2286A0CAC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x506C616974696E69 && a2 == 0xEF797469726F6972 || (sub_2286A0CAC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F6972506B616570 && a2 == 0xEC00000079746972 || (sub_2286A0CAC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6972506C616E6966 && a2 == 0xED0000797469726FLL || (sub_2286A0CAC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x75447055706D6172 && a2 == 0xEE006E6F69746172 || (sub_2286A0CAC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002286BB7D0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_2286A0CAC();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_22868A3E8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_2286A092C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_2286A091C();
}

uint64_t sub_22868A484(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_2286A092C();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_22868A4FC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_2286A092C();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t RankingPriority.init(from:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2286A0D2C();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    v6 = sub_2286A0CBC();
    v8 = v6;
    v9 = v7;
    v10 = v6 == 1869768058 && v7 == 0xE400000000000000;
    if (v10 || (sub_2286A0CAC() & 1) != 0)
    {

      v11 = 0;
LABEL_10:
      __swift_destroy_boxed_opaque_existential_1(v13);
      *a2 = v11;
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    if (v8 == 7827308 && v9 == 0xE300000000000000 || (sub_2286A0CAC() & 1) != 0)
    {

      v11 = 1;
      goto LABEL_10;
    }

    if (v8 == 0x756964654D776F6CLL && v9 == 0xE90000000000006DLL || (sub_2286A0CAC() & 1) != 0)
    {

      v11 = 2;
      goto LABEL_10;
    }

    if (v8 == 0x6D756964656DLL && v9 == 0xE600000000000000 || (sub_2286A0CAC() & 1) != 0)
    {

      v11 = 3;
      goto LABEL_10;
    }

    if (v8 == 0x69486D756964656DLL && v9 == 0xEA00000000006867 || (sub_2286A0CAC() & 1) != 0)
    {

      v11 = 4;
      goto LABEL_10;
    }

    if (v8 == 1751607656 && v9 == 0xE400000000000000 || (sub_2286A0CAC() & 1) != 0)
    {

      v11 = 5;
      goto LABEL_10;
    }

    sub_2286A0AFC();

    MEMORY[0x22AABB1B0](v8, v9);

    sub_2286A0B2C();
    swift_allocError();
    sub_2286A0B1C();

    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::Void __swiftcall RankingPriority.decrease()()
{
  if (*v0)
  {
    v1 = sub_22868A9A4(*v0, byte_283B96AA8);
    if ((v2 & 1) == 0)
    {
      v3 = v1 - 1;
      if (__OFSUB__(v1, 1))
      {
        __break(1u);
      }

      else if (v3 <= 5)
      {
        *v0 = byte_283B96AA8[v3 + 32];
        return;
      }

      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_22868A9A4(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    for (result = 0; v2 != result; ++result)
    {
      v5 = *(a2 + 32 + result);
      if (a1 > 2u)
      {
        if (a1 == 3)
        {
          if (v5 == 3)
          {
            return result;
          }
        }

        else if (a1 == 4)
        {
          if (v5 == 4)
          {
            return result;
          }
        }

        else if (v5 == 5)
        {
          return result;
        }
      }

      else if (a1)
      {
        if (a1 == 1)
        {
          if (v5 == 1)
          {
            return result;
          }
        }

        else if (v5 == 2)
        {
          return result;
        }
      }

      else if (!*(a2 + 32 + result))
      {
        return result;
      }
    }
  }

  return 0;
}

Swift::Void __swiftcall RankingPriority.increase()()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    v2 = sub_22868A9A4(v1, byte_283B96AF8);
    if ((v3 & 1) == 0)
    {
      v4 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        __break(1u);
      }

      else if (v4 <= 5)
      {
        *v0 = byte_283B96AF8[v4 + 32];
        return;
      }

      __break(1u);
    }

    __break(1u);
  }
}

RelevanceEngine::RankingPriority_optional __swiftcall RankingPriority.init(rawValue:)(Swift::Float rawValue)
{
  if (rawValue == 0.0)
  {
    *v1 = 0;
  }

  else if (rawValue == 0.2)
  {
    *v1 = 1;
  }

  else if (rawValue == 0.4)
  {
    *v1 = 2;
  }

  else if (rawValue == 0.6)
  {
    *v1 = 3;
  }

  else
  {
    if (rawValue == 1.0)
    {
      v2 = 5;
    }

    else
    {
      v2 = 6;
    }

    if (rawValue == 0.8)
    {
      v3 = 4;
    }

    else
    {
      v3 = v2;
    }

    *v1 = v3;
  }

  return result;
}

uint64_t sub_22868ABC8(uint64_t a1, char a2)
{
  sub_2286A0CEC();
  LODWORD(flt_2286B3E10[a2]);
  sub_2286A0D0C();
  return sub_2286A0D1C();
}

float sub_22868AC28@<S0>(float *a1@<X8>)
{
  result = flt_2286B3E10[*v1];
  *a1 = result;
  return result;
}

unint64_t sub_22868AC44()
{
  result = qword_27D84EEC0;
  if (!qword_27D84EEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D84EEC0);
  }

  return result;
}

unint64_t sub_22868AD04()
{
  result = qword_27D84EEC8;
  if (!qword_27D84EEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D84EED0, &qword_2286B3DA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D84EEC8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_22868ADD0()
{
  result = qword_27D84EED8;
  if (!qword_27D84EED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D84EED8);
  }

  return result;
}

double sub_22868AE28@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 88))(v7);
  v3 = v7[1];
  v4 = v8;
  v5 = v9;
  *a2 = v7[0];
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 18) = v5;
  result = *&v10;
  *(a2 + 24) = v10;
  return result;
}

uint64_t sub_22868AE9C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 18);
  v5 = *a2;
  v8[0] = *a1;
  v8[1] = v2;
  v9 = v3;
  v10 = v4;
  v11 = *(a1 + 24);
  v6 = *(*v5 + 96);

  return v6(v8);
}

uint64_t sub_22868AF1C@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 34);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 18) = v5;
  *(a1 + 24) = *(v1 + 40);
}

uint64_t sub_22868AF7C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 8);
  v5 = *(a1 + 18);
  v6 = a1[3];
  v7 = a1[4];
  swift_beginAccess();
  v8 = *(v1 + 24);
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 34) = v5;
  *(v1 + 40) = v6;
  *(v1 + 48) = v7;
}

__n128 NormalRankingFunction.__allocating_init(properties:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 18);
  *(v2 + 16) = *a1;
  *(v2 + 24) = v3;
  *(v2 + 32) = v4;
  *(v2 + 34) = v5;
  result = *(a1 + 24);
  *(v2 + 40) = result;
  return result;
}

uint64_t NormalRankingFunction.init(properties:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 18);
  *(v1 + 16) = *a1;
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  *(v1 + 34) = v4;
  *(v1 + 40) = *(a1 + 24);
  return v1;
}

float sub_22868B0BC(uint64_t a1)
{
  v3 = sub_2286A089C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2286A088C();
  v8 = (*(*v1 + 128))(a1, v7);
  (*(v4 + 8))(v7, v3);
  return v8;
}

float sub_22868B1C4(uint64_t a1, uint64_t a2)
{
  v77 = a2;
  v4 = sub_2286A089C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_2286A06EC();
  v9 = *(v78 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2286A080C();
  v15 = v14;
  v16 = *(*v2 + 88);
  v17 = *v2 + 88;
  v16(&v80, v13);
  v18 = v84;

  v16(&v80, v19);
  v20 = v84;

  v16(&v80, v21);
  v22 = v85;

  v23 = (*(v5 + 16))(v8, a1, v4);
  v16(&v80, v23);

  v75[0] = v2;
  v75[1] = v17;
  v76 = v16;
  v16(&v79, v24);

  sub_2286A06BC();
  sub_2286A06CC();
  v25 = sub_2286A085C();
  v26 = *(v5 + 8);
  v26(v8, v4);
  if ((v25 & 1) == 0)
  {
    v27 = sub_2286A06DC();
    if (v28 == 0.0)
    {
      v76(&v80, v27);
      v29 = v82;

      LOBYTE(v79) = v29;
      goto LABEL_5;
    }

    sub_2286A06CC();
    v32 = sub_2286A086C();
    v33 = (v26)(v8, v4);
    if (v32)
    {
      v34 = v76;
      v76(&v80, v33);
      v35 = v84;

      v37 = (v9 + 8);
      if (v35 != 0.0)
      {
        v34(&v80, v36);
        v38 = v81;
LABEL_13:

        LOBYTE(v79) = v38;
        v30 = RankingPriority.value()();
        v42 = *v37;
LABEL_14:
        v42(v12, v78);
        return v30;
      }

LABEL_12:
      v34(&v80, v36);
      v38 = v82;
      goto LABEL_13;
    }

    sub_2286A06AC();
    v39 = sub_2286A086C();
    v40 = (v26)(v8, v4);
    if (v39)
    {
      v34 = v76;
      v76(&v80, v40);
      v41 = v85;

      v37 = (v9 + 8);
      if (v41 != 0.0)
      {
        v34(&v80, v36);
        v38 = v83;
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    sub_2286A06AC();
    v43 = sub_2286A084C();
    v44 = (v26)(v8, v4);
    if (v43)
    {
      v76(&v80, v44);
      v45 = v83;

      LOBYTE(v79) = v45;
      v30 = RankingPriority.value()();
      v42 = *(v9 + 8);
      goto LABEL_14;
    }

    v46 = v15 + v18;
    v47 = sub_2286A080C();
    v48 = v78;
    if (v49 >= v46)
    {
      v53 = sub_2286A080C();
      if (v46 >= v54)
      {
        v76(&v80, v53);
        v52 = v82;
        goto LABEL_26;
      }

      v55 = v22;
      v56 = v55 * 0.33;
      if ((v55 * 0.33) == 0.0)
      {
        v76(&v80, v53);
        v52 = v83;
        goto LABEL_26;
      }

      v67 = sub_2286A080C();
      *&v68 = v68;
      v69 = v46;
      v60 = (*(*v75[0] + 136))(v67, *&v68, v69, v56);
      v70 = v76;
      (v76)(&v80);
      v71 = v82;

      LOBYTE(v79) = v71;
      v72 = RankingPriority.value()();
      v70(&v80);
      v73 = v83;

      LOBYTE(v79) = v73;
      v65 = v72 - RankingPriority.value()();
      v70(&v80);
      v66 = v83;
    }

    else
    {
      v50 = v20;
      v51 = v50 * 0.33;
      if ((v50 * 0.33) == 0.0)
      {
        v76(&v80, v47);
        v52 = v81;
LABEL_26:

        LOBYTE(v79) = v52;
        v30 = RankingPriority.value()();
        (*(v9 + 8))(v12, v48);
        return v30;
      }

      v57 = sub_2286A080C();
      *&v58 = v58;
      v59 = v46;
      v60 = (*(*v75[0] + 136))(v57, *&v58, v59, v51);
      v61 = v76;
      (v76)(&v80);
      v62 = v82;

      LOBYTE(v79) = v62;
      v63 = RankingPriority.value()();
      v61(&v80);
      v64 = v81;

      LOBYTE(v79) = v64;
      v65 = v63 - RankingPriority.value()();
      v61(&v80);
      v66 = v81;
    }

    LOBYTE(v79) = v66;
    v74 = RankingPriority.value()();
    (*(v9 + 8))(v12, v48);
    return (v60 * v65) + v74;
  }

  LOBYTE(v80) = 0;
LABEL_5:
  v30 = RankingPriority.value()();
  (*(v9 + 8))(v12, v78);
  return v30;
}

uint64_t NormalRankingFunction.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t NormalRankingFunction.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_22868BA80@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
}

uint64_t sub_22868BAD8(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 8);
  v5 = a1[3];
  swift_beginAccess();
  v6 = *(v1 + 24);
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
}

double LinearRankingFunction.__allocating_init(properties:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  result = *(a1 + 24);
  *(v2 + 16) = *a1;
  *(v2 + 24) = v3;
  *(v2 + 32) = v4;
  *(v2 + 40) = result;
  return result;
}

uint64_t LinearRankingFunction.init(properties:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  *(v1 + 16) = *a1;
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  return v1;
}

float sub_22868BBA8(uint64_t a1)
{
  v3 = sub_2286A089C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2286A088C();
  v8 = (*(*v1 + 128))(a1, v7);
  (*(v4 + 8))(v7, v3);
  return v8;
}

void sub_22868BCB0()
{
  v1 = sub_2286A089C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20]();
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*v0 + 88);
  v7(&v28, v4);

  v8 = sub_2286A082C();
  v7(&v28, v8);
  v9 = v31;

  if (v9 == 0.0)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0.0;
  }

  else
  {
    sub_2286A080C();
    v14 = v13;
    if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (v13 <= -9.22337204e18)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    if (v13 >= 9.22337204e18)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v15 = sub_2286A080C();
    if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (v16 <= -9.22337204e18)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (v16 >= 9.22337204e18)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v11 = v14;
    v10 = v16;
    v7(&v28, v15);
    v17 = v30;

    v27 = v17;
    v18 = RankingPriority.value()();
    (v7)(&v28);
    v19 = v29;

    v27 = v19;
    v20 = RankingPriority.value()();
    if (__OFSUB__(v10, v11))
    {
LABEL_34:
      __break(1u);
      return;
    }

    v12 = (v18 - v20) / (v10 - v11);
  }

  v21 = sub_2286A080C();
  if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (v22 <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v22 >= 9.22337204e18)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v23 = v22;
  if (v11 <= v22 && v10 >= v23)
  {
    if (!__OFSUB__(v23, v11))
    {
      v7(&v28, v21);
      v24 = v29;

      v27 = v24;
      RankingPriority.value()();
      (*(v2 + 8))(v6, v1);
      return;
    }

    goto LABEL_27;
  }

  if (v10 >= v23)
  {
    LOBYTE(v28) = 0;
    RankingPriority.value()();
    (*(v2 + 8))(v6, v1);
  }

  else
  {
    if (v12 == 0.0)
    {
      (v7)(v21);
      v25 = v29;
    }

    else
    {
      v7(&v28, v21);
      v25 = v30;
    }

    v27 = v25;
    RankingPriority.value()();
    (*(v2 + 8))(v6, v1);
  }
}

uint64_t LinearRankingFunction.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t LinearRankingFunction.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

id RankingManager.init(relevanceEngine:propertiesPath:)(void *a1, uint64_t a2)
{
  v4 = sub_2286A07EC();
  v5 = *(v4 - 8);
  v6 = 0;
  if ((*(v5 + 48))(a2, 1, v4) != 1)
  {
    v6 = sub_2286A07CC();
    (*(v5 + 8))(a2, v4);
  }

  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRelevanceEngine:a1 propertiesPath:v6];

  return v7;
}

uint64_t RankingManager.init(relevanceEngine:propertiesPath:)(void (*a1)(void, void, void), uint64_t a2)
{
  v3 = sub_228693A70(a1, a2);

  return v3;
}

uint64_t sub_22868C414(uint64_t a1, unint64_t a2)
{
  v5 = sub_2286A092C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v30[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v30[-1] - v11;
  v13 = OBJC_IVAR___RankingManager_featureNameToBehavior;
  swift_beginAccess();
  v14 = *(v2 + v13);
  if (*(v14 + 16) && (v15 = sub_228690418(a1, a2), (v16 & 1) != 0))
  {
    v17 = *(*(v14 + 56) + 8 * v15);
    swift_endAccess();

    v18 = sub_22868A460();
    (*(v6 + 16))(v12, v18, v5);

    v19 = sub_2286A090C();
    v20 = sub_2286A0A6C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v30[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_22868FE70(a1, a2, v30);
      _os_log_impl(&dword_22859F000, v19, v20, "Found ranking behavior for feature name %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x22AABCAC0](v22, -1, -1);
      MEMORY[0x22AABCAC0](v21, -1, -1);
    }

    (*(v6 + 8))(v12, v5);
  }

  else
  {
    swift_endAccess();
    v23 = sub_22868A460();
    (*(v6 + 16))(v10, v23, v5);

    v24 = sub_2286A090C();
    v25 = sub_2286A0A7C();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v30[0] = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_22868FE70(a1, a2, v30);
      _os_log_impl(&dword_22859F000, v24, v25, "Failed to find ranking behavior for feature name %s; using default", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x22AABCAC0](v27, -1, -1);
      MEMORY[0x22AABCAC0](v26, -1, -1);
    }

    (*(v6 + 8))(v10, v5);
    v17 = *sub_2286877F4();
  }

  return v17;
}