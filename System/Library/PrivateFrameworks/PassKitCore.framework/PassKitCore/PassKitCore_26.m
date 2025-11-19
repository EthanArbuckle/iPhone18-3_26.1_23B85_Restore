Class initHMMutableHomeManagerConfiguration()
{
  if (qword_1EB5B7E10 != -1)
  {
    dispatch_once(&qword_1EB5B7E10, &__block_literal_global_155_0);
  }

  result = objc_getClass("HMMutableHomeManagerConfiguration");
  qword_1EB5B7E00 = result;
  _MergedGlobals_177 = HMMutableHomeManagerConfigurationFunction;
  return result;
}

void *__LoadHomeKit_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/HomeKit.framework/HomeKit", 2);
  qword_1EB5B7E08 = result;
  return result;
}

Class initHMHomeManager()
{
  if (qword_1EB5B7E10 != -1)
  {
    dispatch_once(&qword_1EB5B7E10, &__block_literal_global_155_0);
  }

  result = objc_getClass("HMHomeManager");
  qword_1EB5B7E18 = result;
  off_1ED6D1120 = HMHomeManagerFunction;
  return result;
}

id initHMServiceTypeLockMechanism()
{
  if (qword_1EB5B7E10 != -1)
  {
    dispatch_once(&qword_1EB5B7E10, &__block_literal_global_155_0);
  }

  v0 = dlsym(qword_1EB5B7E08, "HMServiceTypeLockMechanism");
  objc_storeStrong(&qword_1EB5B7DF0, *v0);
  off_1ED6D1128 = HMServiceTypeLockMechanismFunction;
  v1 = qword_1EB5B7DF0;

  return v1;
}

id initHMCharacteristicTypeTargetLockMechanismState()
{
  if (qword_1EB5B7E10 != -1)
  {
    dispatch_once(&qword_1EB5B7E10, &__block_literal_global_155_0);
  }

  v0 = dlsym(qword_1EB5B7E08, "HMCharacteristicTypeTargetLockMechanismState");
  objc_storeStrong(&qword_1EB5B7DF8, *v0);
  off_1ED6D1130 = HMCharacteristicTypeTargetLockMechanismStateFunction;
  v1 = qword_1EB5B7DF8;

  return v1;
}

void sub_1AD946BE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AD947DFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id location)
{
  _Block_object_dispose(&a33, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initFUFlightFactory()
{
  if (qword_1EB5A0068 != -1)
  {
    dispatch_once(&qword_1EB5A0068, &__block_literal_global_174);
  }

  result = objc_getClass("FUFlightFactory");
  qword_1EB5A0058 = result;
  _MergedGlobals_178 = FUFlightFactoryFunction;
  return result;
}

void *__LoadFlightUtilitiesCore_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/FlightUtilitiesCore.framework/FlightUtilitiesCore", 2);
  qword_1EB5A0060 = result;
  return result;
}

id initFUFactoryProvider_Default()
{
  if (qword_1EB5A0068 != -1)
  {
    dispatch_once(&qword_1EB5A0068, &__block_literal_global_174);
  }

  v0 = dlsym(qword_1EB5A0060, "FUFactoryProvider_Default");
  objc_storeStrong(&_MergedGlobals_1_6, *v0);
  off_1ED6D1140 = FUFactoryProvider_DefaultFunction;
  v1 = _MergedGlobals_1_6;

  return v1;
}

void sub_1AD94A454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1AD94A80C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PKProtobufFlightShareMessageReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v18 = 0;
          v19 = 0;
          v20 = 0;
          while (1)
          {
            v27 = 0;
            v21 = [a2 position] + 1;
            if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
            {
              v23 = [a2 data];
              [v23 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v20 |= (v27 & 0x7F) << v18;
            if ((v27 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v11 = v19++ >= 9;
            if (v11)
            {
              v24 = 0;
              goto LABEL_44;
            }
          }

          if ([a2 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v20;
          }

LABEL_44:
          *(a1 + 40) = v24;
          goto LABEL_28;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 16;
          goto LABEL_27;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = PBReaderReadData();
            v15 = 32;
            goto LABEL_27;
          case 4:
            v14 = PBReaderReadString();
            v15 = 24;
            goto LABEL_27;
          case 5:
            v14 = PBReaderReadString();
            v15 = 8;
LABEL_27:
            v16 = *(a1 + v15);
            *(a1 + v15) = v14;

            goto LABEL_28;
        }
      }

      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

LABEL_28:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id PKConvertErrorToAddSecureElementPassProvisioningErrorDomain(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    goto LABEL_11;
  }

  v3 = [v1 domain];
  v4 = [v3 isEqualToString:@"PKSubcredentialProvisioningErrorDomain"];

  if (!v4)
  {
    v6 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 138412290;
      *&v12[4] = v2;
      v7 = "Unexpected error domain while converting error to access pass domain: %@";
      goto LABEL_9;
    }

LABEL_10:

LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  v5 = [v2 code];
  if (v5 > 0x1B)
  {
    goto LABEL_19;
  }

  if (((1 << v5) & 0xE0FF7E0) != 0)
  {
    v6 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 138412290;
      *&v12[4] = v2;
      v7 = "Converting unexpected error to public error domain! %@";
LABEL_9:
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, v7, v12, 0xCu);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  if (((1 << v5) & 0x1300000) != 0)
  {
    v8 = 4;
    goto LABEL_12;
  }

  if (v5 == 22)
  {
    v8 = 1;
  }

  else
  {
LABEL_19:
    v11 = 3;
    if (v5 != 3)
    {
      v11 = 0;
    }

    if (v5 == 4)
    {
      v8 = 5;
    }

    else
    {
      v8 = v11;
    }
  }

LABEL_12:
  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKAddSecureElementPassErrorDomain" code:v8 userInfo:{0, *v12}];

  return v9;
}

id PKConvertDAErrorToSubcredentialProvisioningErrorDomain(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = v5;
  if (v3)
  {
    [v5 setObject:v3 forKey:*MEMORY[0x1E696AA08]];
  }

  if (v4)
  {
    [v6 setObject:v4 forKey:*MEMORY[0x1E696A278]];
  }

  if (!v3)
  {
    goto LABEL_16;
  }

  v7 = [v3 domain];
  v8 = [v7 isEqualToString:*MEMORY[0x1E699A0F8]];

  if ((v8 & 1) == 0)
  {
    v10 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v3;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Unexpected error domain while converting error to credential provisioning domain: %@", &v14, 0xCu);
    }

LABEL_16:
    v11 = 0;
    goto LABEL_17;
  }

  v9 = [v3 code];
  if (v9 > 102)
  {
    if (v9 <= 109)
    {
      if ((v9 - 106) >= 2)
      {
        if (v9 == 103)
        {
          v11 = 16;
          goto LABEL_17;
        }

        if (v9 == 109)
        {
          v11 = 12;
          goto LABEL_17;
        }

        goto LABEL_42;
      }

      goto LABEL_35;
    }

    if (v9 > 217)
    {
      if (v9 != 218)
      {
        if (v9 == 219)
        {
          v11 = 26;
          goto LABEL_17;
        }

        goto LABEL_42;
      }

      v11 = 27;
    }

    else
    {
      if (v9 != 110)
      {
        if (v9 == 215)
        {
          v11 = 21;
          goto LABEL_17;
        }

        goto LABEL_42;
      }

      v11 = 17;
    }
  }

  else
  {
    if (v9 <= 9)
    {
      if (v9 < 2)
      {
        v11 = 22;
        goto LABEL_17;
      }

      if (v9 != 2)
      {
        if (v9 != 7)
        {
          goto LABEL_42;
        }

LABEL_28:
        v11 = 4;
        goto LABEL_17;
      }

LABEL_39:
      v11 = 3;
      goto LABEL_17;
    }

    if (v9 <= 13)
    {
      if (v9 == 10)
      {
        goto LABEL_39;
      }

      if (v9 == 13)
      {
        goto LABEL_28;
      }

LABEL_42:
      v11 = 1;
      goto LABEL_17;
    }

    if (v9 != 14)
    {
      if (v9 != 101)
      {
        goto LABEL_42;
      }

LABEL_35:
      v11 = 14;
      goto LABEL_17;
    }

    v11 = 18;
  }

LABEL_17:
  v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKSubcredentialProvisioningErrorDomain" code:v11 userInfo:v6];

  return v12;
}

id PKSubcredentialProvisioningDisplayableDAError(void *a1)
{
  v1 = a1;
  v2 = [v1 userInfo];
  v3 = *MEMORY[0x1E696AA08];
  v4 = [v2 objectForKey:*MEMORY[0x1E696AA08]];
  v5 = v4;
  v6 = 0;
  if (v1 && v4)
  {
    v7 = [v2 mutableCopy];
    [v7 removeObjectForKey:v3];
    v8 = MEMORY[0x1E696ABC0];
    v9 = [v1 domain];
    v10 = [v8 errorWithDomain:v9 code:objc_msgSend(v1 userInfo:{"code"), v7}];

    v11 = [v10 description];
    v12 = PKConvertDAErrorToSubcredentialProvisioningErrorDomain(v5, v11);

    v13 = [v12 code];
    if (v13 > 0x1B || ((1 << v13) & 0xC200000) == 0)
    {
      v6 = 0;
    }

    else
    {
      v6 = v12;
    }
  }

  return v6;
}

id PKSubcredentialProvisioningError(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1E696AEC0];
  v10 = a1;
  v11 = [[v9 alloc] initWithFormat:v10 arguments:&a9];

  v12 = objc_alloc(MEMORY[0x1E696ABC0]);
  v16 = *MEMORY[0x1E696A578];
  v17[0] = v11;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v14 = [v12 initWithDomain:@"PKSubcredentialProvisioningErrorDomain" code:0 userInfo:v13];

  return v14;
}

void sub_1AD94E550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD94E6FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AD94E898(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1AD950100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD9538C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AD954A04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD954BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PKProtobufAppletSubcredentialSharingInvitationReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v44 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v44 & 0x7F) << v5;
        if ((v44 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      switch((v12 >> 3))
      {
        case 1u:
          v13 = 0;
          v14 = 0;
          v15 = 0;
          while (1)
          {
            v47 = 0;
            v16 = [a2 position] + 1;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
            {
              v18 = [a2 data];
              [v18 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v47 & 0x7F) << v13;
            if ((v47 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v11 = v14++ >= 9;
            if (v11)
            {
              v19 = 0;
LABEL_77:
              v42 = 92;
              goto LABEL_82;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v15;
          }

          goto LABEL_77;
        case 2u:
          v26 = PBReaderReadData();
          v27 = 40;
          goto LABEL_56;
        case 3u:
          v26 = PBReaderReadString();
          v27 = 32;
          goto LABEL_56;
        case 4u:
          v26 = PBReaderReadString();
          v27 = 64;
          goto LABEL_56;
        case 5u:
          v26 = PBReaderReadString();
          v27 = 56;
          goto LABEL_56;
        case 6u:
          v26 = PBReaderReadString();
          v27 = 72;
          goto LABEL_56;
        case 7u:
          v26 = PBReaderReadData();
          v27 = 80;
          goto LABEL_56;
        case 8u:
          v28 = 0;
          v29 = 0;
          v30 = 0;
          *(a1 + 96) |= 2u;
          while (1)
          {
            v46 = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v30 |= (v46 & 0x7F) << v28;
            if ((v46 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v11 = v29++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_73;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v30;
          }

LABEL_73:
          v42 = 28;
          goto LABEL_82;
        case 9u:
          v36 = 0;
          v37 = 0;
          v38 = 0;
          *(a1 + 96) |= 1u;
          while (1)
          {
            v48 = 0;
            v39 = [a2 position] + 1;
            if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
            {
              v41 = [a2 data];
              [v41 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v38 |= (v48 & 0x7F) << v36;
            if ((v48 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v11 = v37++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_81;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v38;
          }

LABEL_81:
          v42 = 24;
          goto LABEL_82;
        case 0xAu:
          v26 = PBReaderReadString();
          v27 = 48;
          goto LABEL_56;
        case 0xBu:
          v26 = PBReaderReadString();
          v27 = 16;
          goto LABEL_56;
        case 0xCu:
          v20 = 0;
          v21 = 0;
          v22 = 0;
          *(a1 + 96) |= 4u;
          break;
        case 0xDu:
          v26 = PBReaderReadString();
          v27 = 8;
LABEL_56:
          v35 = *(a1 + v27);
          *(a1 + v27) = v26;

          goto LABEL_83;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_83;
      }

      while (1)
      {
        v45 = 0;
        v23 = [a2 position] + 1;
        if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
        {
          v25 = [a2 data];
          [v25 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v22 |= (v45 & 0x7F) << v20;
        if ((v45 & 0x80) == 0)
        {
          break;
        }

        v20 += 7;
        v11 = v21++ >= 9;
        if (v11)
        {
          v19 = 0;
          goto LABEL_69;
        }
      }

      v19 = [a2 hasError] ? 0 : v22;
LABEL_69:
      v42 = 88;
LABEL_82:
      *(a1 + v42) = v19;
LABEL_83:
      v43 = [a2 position];
    }

    while (v43 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PKInstallmentPlanStateFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"initiated")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_14:
    v4 = 0;
    goto LABEL_15;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"initiated"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"active" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"active"], v6, (v7 & 1) != 0))
    {
      v4 = 2;
      goto LABEL_15;
    }

    v8 = v6;
    if (v8 == @"canceled" || (v9 = v8, v10 = [(__CFString *)v8 isEqualToString:@"canceled"], v9, (v10 & 1) != 0))
    {
      v4 = 3;
      goto LABEL_15;
    }

    v11 = v9;
    if (v11 == @"closed" || (v12 = v11, v13 = [(__CFString *)v11 isEqualToString:@"closed"], v12, v13))
    {
      v4 = 4;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_4:
  v4 = 1;
LABEL_15:

  return v4;
}

uint64_t PKPaymentTransactionQuestionTypeFromString(void *a1)
{
  v1 = [a1 lowercaseString];
  if ([v1 isEqualToString:@"origin"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"travel"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PKPaymentTransactionQuestionTypeToString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79DE140[a1];
  }
}

uint64_t PKProtobufPaymentClientUpdateReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v34) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v34 & 0x7F) << v5;
        if ((v34 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 6)
      {
        if (v13 <= 2)
        {
          if (v13 == 1)
          {
            v15 = PBReaderReadString();
            v16 = 56;
            goto LABEL_48;
          }

          if (v13 == 2)
          {
            v17 = 0;
            v18 = 0;
            v19 = 0;
            *(a1 + 92) |= 2u;
            while (1)
            {
              LOBYTE(v34) = 0;
              v20 = [a2 position] + 1;
              if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
              {
                v22 = [a2 data];
                [v22 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v19 |= (v34 & 0x7F) << v17;
              if ((v34 & 0x80) == 0)
              {
                break;
              }

              v17 += 7;
              v11 = v18++ >= 9;
              if (v11)
              {
                v23 = 0;
                goto LABEL_78;
              }
            }

            if ([a2 hasError])
            {
              v23 = 0;
            }

            else
            {
              v23 = v19;
            }

LABEL_78:
            v31 = 88;
            goto LABEL_83;
          }
        }

        else
        {
          switch(v13)
          {
            case 3:
              v14 = objc_alloc_init(PKProtobufPaymentSummaryItem);
              [a1 addPaymentSummaryItems:v14];
              v34 = 0;
              v35 = 0;
              if (!PBReaderPlaceMark() || !PKProtobufPaymentSummaryItemReadFrom(v14, a2))
              {
LABEL_86:

                return 0;
              }

              goto LABEL_72;
            case 4:
              v14 = objc_alloc_init(PKProtobufShippingMethod);
              [a1 addShippingMethods:v14];
              v34 = 0;
              v35 = 0;
              if (!PBReaderPlaceMark() || !PKProtobufShippingMethodReadFrom(v14, a2))
              {
                goto LABEL_86;
              }

              goto LABEL_72;
            case 5:
              v15 = PBReaderReadString();
              v16 = 64;
LABEL_48:
              v24 = *(a1 + v16);
              *(a1 + v16) = v15;

              goto LABEL_84;
          }
        }
      }

      else if (v13 > 9)
      {
        switch(v13)
        {
          case 0xA:
            v14 = objc_alloc_init(PKProtobufRecurringPaymentRequest);
            objc_storeStrong((a1 + 48), v14);
            v34 = 0;
            v35 = 0;
            if (!PBReaderPlaceMark() || !PKProtobufRecurringPaymentRequestReadFrom(v14, a2))
            {
              goto LABEL_86;
            }

            goto LABEL_72;
          case 0xB:
            v14 = objc_alloc_init(PKProtobufAutomaticReloadPaymentRequest);
            objc_storeStrong((a1 + 8), v14);
            v34 = 0;
            v35 = 0;
            if (!PBReaderPlaceMark() || !PKProtobufAutomaticReloadPaymentRequestReadFrom(v14, a2))
            {
              goto LABEL_86;
            }

            goto LABEL_72;
          case 0xC:
            v14 = objc_alloc_init(PKProtobufDeferredPaymentRequest);
            objc_storeStrong((a1 + 24), v14);
            v34 = 0;
            v35 = 0;
            if (!PBReaderPlaceMark() || !PKProtobufDeferredPaymentRequestReadFrom(v14, a2))
            {
              goto LABEL_86;
            }

            goto LABEL_72;
        }
      }

      else
      {
        switch(v13)
        {
          case 7:
            v14 = objc_alloc_init(PKProtobufShippingMethods);
            objc_storeStrong((a1 + 16), v14);
            v34 = 0;
            v35 = 0;
            if (!PBReaderPlaceMark() || !PKProtobufShippingMethodsReadFrom(&v14->super.super.isa, a2))
            {
              goto LABEL_86;
            }

            goto LABEL_72;
          case 8:
            v25 = 0;
            v26 = 0;
            v27 = 0;
            *(a1 + 92) |= 1u;
            while (1)
            {
              LOBYTE(v34) = 0;
              v28 = [a2 position] + 1;
              if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
              {
                v30 = [a2 data];
                [v30 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v27 |= (v34 & 0x7F) << v25;
              if ((v34 & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              v11 = v26++ >= 9;
              if (v11)
              {
                v23 = 0;
                goto LABEL_82;
              }
            }

            if ([a2 hasError])
            {
              v23 = 0;
            }

            else
            {
              v23 = v27;
            }

LABEL_82:
            v31 = 72;
LABEL_83:
            *(a1 + v31) = v23;
            goto LABEL_84;
          case 9:
            v14 = objc_alloc_init(PKProtobufPaymentTokenContext);
            [a1 addMultiTokenContexts:v14];
            v34 = 0;
            v35 = 0;
            if (!PBReaderPlaceMark() || !PKProtobufPaymentTokenContextReadFrom(v14, a2))
            {
              goto LABEL_86;
            }

LABEL_72:
            PBReaderRecallMark();

            goto LABEL_84;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_84:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PKProtobufPaymentInstrumentThumbnailResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v14 = PBReaderReadString();
        v15 = 8;
      }

      else
      {
        if (v13 == 2)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 32) |= 1u;
          while (1)
          {
            v27 = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v27 & 0x7F) << v16;
            if ((v27 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_37;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v18;
          }

LABEL_37:
          *(a1 + 16) = v22;
          goto LABEL_38;
        }

        if (v13 != 1)
        {
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_38;
        }

        v14 = PBReaderReadData();
        v15 = 24;
      }

      v23 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_38:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id PDCloudStoreServiceInterface()
{
  if (qword_1ED6D1FB8 != -1)
  {
    dispatch_once(&qword_1ED6D1FB8, &__block_literal_global_180);
  }

  v1 = _MergedGlobals_257;

  return v1;
}

void __PDCloudStoreServiceInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F247CC68];
  v1 = _MergedGlobals_257;
  _MergedGlobals_257 = v0;

  v2 = _MergedGlobals_257;
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v3 setWithObjects:{v4, v5, v6, v7, v8, v9, v10, objc_opt_class(), 0}];
  [v2 setClasses:v11 forSelector:sel_updateCloudStoreWithLocalItemsWithConfigurations_completion_ argumentIndex:0 ofReply:0];

  v12 = _MergedGlobals_257;
  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = [v13 setWithObjects:{v14, v15, v16, objc_opt_class(), 0}];
  [v12 setClasses:v17 forSelector:sel_updateCloudStoreWithLocalItemsWithConfigurations_completion_ argumentIndex:0 ofReply:1];

  v175 = MEMORY[0x1E695DFD8];
  v181 = _MergedGlobals_257;
  v170 = objc_opt_class();
  v165 = objc_opt_class();
  v161 = objc_opt_class();
  v158 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v22 = objc_opt_class();
  v23 = objc_opt_class();
  v24 = objc_opt_class();
  v25 = objc_opt_class();
  v26 = objc_opt_class();
  v27 = objc_opt_class();
  v28 = [v175 setWithObjects:{v170, v165, v161, v158, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, objc_opt_class(), 0}];
  [v181 setClasses:v28 forSelector:sel_allItemsOfItemType_storeLocally_completion_ argumentIndex:0 ofReply:1];

  v176 = MEMORY[0x1E695DFD8];
  v182 = _MergedGlobals_257;
  v171 = objc_opt_class();
  v166 = objc_opt_class();
  v162 = objc_opt_class();
  v159 = objc_opt_class();
  v29 = objc_opt_class();
  v30 = objc_opt_class();
  v31 = objc_opt_class();
  v32 = objc_opt_class();
  v33 = objc_opt_class();
  v34 = objc_opt_class();
  v35 = objc_opt_class();
  v36 = objc_opt_class();
  v37 = objc_opt_class();
  v38 = objc_opt_class();
  v39 = [v176 setWithObjects:{v171, v166, v162, v159, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, objc_opt_class(), 0}];
  [v182 setClasses:v39 forSelector:sel_applePayContainerItemsFromDate_toDate_completion_ argumentIndex:0 ofReply:1];

  v177 = MEMORY[0x1E695DFD8];
  v183 = _MergedGlobals_257;
  v172 = objc_opt_class();
  v167 = objc_opt_class();
  v40 = objc_opt_class();
  v41 = objc_opt_class();
  v42 = objc_opt_class();
  v43 = objc_opt_class();
  v44 = objc_opt_class();
  v45 = objc_opt_class();
  v46 = objc_opt_class();
  v47 = objc_opt_class();
  v48 = objc_opt_class();
  v49 = objc_opt_class();
  v50 = [v177 setWithObjects:{v172, v167, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, objc_opt_class(), 0}];
  [v183 setClasses:v50 forSelector:sel_itemOfItemType_recordName_qualityOfService_completion_ argumentIndex:0 ofReply:1];

  v178 = MEMORY[0x1E695DFD8];
  v184 = _MergedGlobals_257;
  v173 = objc_opt_class();
  v168 = objc_opt_class();
  v163 = objc_opt_class();
  v160 = objc_opt_class();
  v51 = objc_opt_class();
  v52 = objc_opt_class();
  v53 = objc_opt_class();
  v54 = objc_opt_class();
  v55 = objc_opt_class();
  v56 = objc_opt_class();
  v57 = objc_opt_class();
  v58 = objc_opt_class();
  v59 = objc_opt_class();
  v60 = objc_opt_class();
  v61 = [v178 setWithObjects:{v173, v168, v163, v160, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, objc_opt_class(), 0}];
  [v184 setClasses:v61 forSelector:sel_itemOfItemTypeFromAllZones_recordName_qualityOfService_completion_ argumentIndex:0 ofReply:1];

  v179 = MEMORY[0x1E695DFD8];
  v185 = _MergedGlobals_257;
  v174 = objc_opt_class();
  v169 = objc_opt_class();
  v164 = objc_opt_class();
  v62 = objc_opt_class();
  v63 = objc_opt_class();
  v64 = objc_opt_class();
  v65 = objc_opt_class();
  v66 = objc_opt_class();
  v67 = objc_opt_class();
  v68 = objc_opt_class();
  v69 = objc_opt_class();
  v70 = objc_opt_class();
  v71 = objc_opt_class();
  v72 = [v179 setWithObjects:{v174, v169, v164, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, objc_opt_class(), 0}];
  [v185 setClasses:v72 forSelector:sel_cloudStoreRecordArrayWithConfiguration_completion_ argumentIndex:0 ofReply:1];

  v73 = _MergedGlobals_257;
  v74 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v73 setClasses:v74 forSelector:sel_cloudStoreRecordArrayWithConfiguration_completion_ argumentIndex:0 ofReply:0];

  v180 = MEMORY[0x1E695DFD8];
  v186 = _MergedGlobals_257;
  v75 = objc_opt_class();
  v76 = objc_opt_class();
  v77 = objc_opt_class();
  v78 = objc_opt_class();
  v79 = objc_opt_class();
  v80 = objc_opt_class();
  v81 = objc_opt_class();
  v82 = objc_opt_class();
  v83 = objc_opt_class();
  v84 = objc_opt_class();
  v85 = [v180 setWithObjects:{v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, objc_opt_class(), 0}];
  [v186 setClasses:v85 forSelector:sel_simulateCloudStorePushForContainerIdentifier_completion_ argumentIndex:0 ofReply:1];

  v86 = _MergedGlobals_257;
  v87 = MEMORY[0x1E695DFD8];
  v88 = objc_opt_class();
  v89 = [v87 setWithObjects:{v88, objc_opt_class(), 0}];
  [v86 setClasses:v89 forSelector:sel_simulateCloudStorePushForContainerIdentifier_completion_ argumentIndex:1 ofReply:1];

  v90 = _MergedGlobals_257;
  v91 = MEMORY[0x1E695DFD8];
  v92 = objc_opt_class();
  v93 = [v91 setWithObjects:{v92, objc_opt_class(), 0}];
  [v90 setClasses:v93 forSelector:sel_removeAllItems_inZoneName_containerName_storeLocally_completion_ argumentIndex:0 ofReply:1];

  v94 = _MergedGlobals_257;
  v95 = MEMORY[0x1E695DFD8];
  v96 = objc_opt_class();
  v97 = objc_opt_class();
  v98 = objc_opt_class();
  v99 = objc_opt_class();
  v100 = [v95 setWithObjects:{v96, v97, v98, v99, objc_opt_class(), 0}];
  [v94 setClasses:v100 forSelector:sel_generateRandomTransactionForTransactionSourceIdentifier_completion_ argumentIndex:0 ofReply:1];

  v101 = _MergedGlobals_257;
  v102 = MEMORY[0x1E695DFD8];
  v103 = objc_opt_class();
  v104 = objc_opt_class();
  v105 = objc_opt_class();
  v106 = objc_opt_class();
  v107 = objc_opt_class();
  v108 = [v102 setWithObjects:{v103, v104, v105, v106, v107, objc_opt_class(), 0}];
  [v101 setClasses:v108 forSelector:sel_performBackgroundTransactionSyncFromDate_completion_ argumentIndex:0 ofReply:1];

  v109 = _MergedGlobals_257;
  v110 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v109 setClasses:v110 forSelector:sel_uploadTransaction_forTransactionSourceIdentifier_includeServerData_completion_ argumentIndex:0 ofReply:0];

  v111 = _MergedGlobals_257;
  v112 = MEMORY[0x1E695DFD8];
  v113 = objc_opt_class();
  v114 = objc_opt_class();
  v115 = objc_opt_class();
  v116 = objc_opt_class();
  v117 = [v112 setWithObjects:{v113, v114, v115, v116, objc_opt_class(), 0}];
  [v111 setClasses:v117 forSelector:sel_uploadTransaction_forTransactionSourceIdentifier_includeServerData_completion_ argumentIndex:0 ofReply:1];

  v118 = _MergedGlobals_257;
  v119 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v118 setClasses:v119 forSelector:sel_cloudStoreStatusForContainer_completion_ argumentIndex:0 ofReply:1];

  v120 = _MergedGlobals_257;
  v121 = MEMORY[0x1E695DFD8];
  v122 = objc_opt_class();
  v123 = objc_opt_class();
  v124 = objc_opt_class();
  v125 = objc_opt_class();
  v126 = objc_opt_class();
  v127 = objc_opt_class();
  v128 = objc_opt_class();
  v129 = objc_opt_class();
  v130 = [v121 setWithObjects:{v122, v123, v124, v125, v126, v127, v128, v129, objc_opt_class(), 0}];
  [v120 setClasses:v130 forSelector:sel_shareForZoneName_containerName_qualityOfService_completion_ argumentIndex:0 ofReply:1];

  v131 = _MergedGlobals_257;
  v132 = MEMORY[0x1E695DFD8];
  v133 = objc_opt_class();
  v134 = objc_opt_class();
  v135 = objc_opt_class();
  v136 = objc_opt_class();
  v137 = [v132 setWithObjects:{v133, v134, v135, v136, objc_opt_class(), 0}];
  [v131 setClasses:v137 forSelector:sel_populateEvents_forAccountIdentifier_completion_ argumentIndex:0 ofReply:0];

  v138 = _MergedGlobals_257;
  v139 = MEMORY[0x1E695DFD8];
  v140 = objc_opt_class();
  v141 = objc_opt_class();
  v142 = objc_opt_class();
  v143 = objc_opt_class();
  v144 = [v139 setWithObjects:{v140, v141, v142, v143, objc_opt_class(), 0}];
  [v138 setClasses:v144 forSelector:sel_populateEvents_forAccountIdentifier_completion_ argumentIndex:0 ofReply:1];

  v145 = _MergedGlobals_257;
  v146 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v145 setClasses:v146 forSelector:sel_diagnosticInfoForContainerWithName_completion_ argumentIndex:0 ofReply:1];

  v147 = _MergedGlobals_257;
  v148 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v147 setClasses:v148 forSelector:sel_diagnosticSnapshotForContainerWithName_completion_ argumentIndex:0 ofReply:1];

  v149 = _MergedGlobals_257;
  v150 = MEMORY[0x1E695DFD8];
  v151 = objc_opt_class();
  v152 = [v150 setWithObjects:{v151, objc_opt_class(), 0}];
  [v149 setClasses:v152 forSelector:sel_changeHistoryForContainerIdentifier_completion_ argumentIndex:0 ofReply:1];

  v153 = _MergedGlobals_257;
  v154 = MEMORY[0x1E695DFD8];
  v155 = objc_opt_class();
  v156 = objc_opt_class();
  v157 = objc_opt_class();
  v187 = [v154 setWithObjects:{v155, v156, v157, objc_opt_class(), 0}];
  [v153 setClasses:v187 forSelector:sel_uploadIssuerMessagingFlag_completion_ argumentIndex:0 ofReply:0];
}

id PKCloudStoreServiceInterface()
{
  if (qword_1ED6D1FC8 != -1)
  {
    dispatch_once(&qword_1ED6D1FC8, &__block_literal_global_173_1);
  }

  v1 = qword_1ED6D1FC0;

  return v1;
}

void __PKCloudStoreServiceInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F247CCC8];
  v1 = qword_1ED6D1FC0;
  qword_1ED6D1FC0 = v0;
}

uint64_t PKProtobufPaymentMerchantSessionReadFrom(_BYTE *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v33 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      switch((v12 >> 3))
      {
        case 1u:
          v13 = PBReaderReadString();
          v14 = 64;
          goto LABEL_41;
        case 2u:
          v13 = PBReaderReadString();
          v14 = 96;
          goto LABEL_41;
        case 3u:
          v13 = PBReaderReadString();
          v14 = 72;
          goto LABEL_41;
        case 4u:
          v16 = 0;
          v17 = 0;
          v18 = 0;
          a1[120] |= 1u;
          while (1)
          {
            v35 = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v35 & 0x7F) << v16;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_58;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v18;
          }

LABEL_58:
          v32 = 8;
          goto LABEL_63;
        case 5u:
          v13 = PBReaderReadString();
          v14 = 40;
          goto LABEL_41;
        case 6u:
          v13 = PBReaderReadString();
          v14 = 32;
          goto LABEL_41;
        case 7u:
          v13 = PBReaderReadData();
          v14 = 104;
          goto LABEL_41;
        case 8u:
          v13 = PBReaderReadString();
          v14 = 88;
          goto LABEL_41;
        case 9u:
          v25 = 0;
          v26 = 0;
          v27 = 0;
          a1[120] |= 2u;
          break;
        case 0xAu:
          v13 = PBReaderReadString();
          v14 = 56;
          goto LABEL_41;
        case 0xBu:
          v13 = PBReaderReadString();
          v14 = 48;
          goto LABEL_41;
        case 0xCu:
          v15 = PBReaderReadString();
          if (v15)
          {
            [a1 addSignedFields:v15];
          }

          goto LABEL_42;
        case 0xDu:
          v13 = PBReaderReadData();
          v14 = 24;
          goto LABEL_41;
        case 0xEu:
          v13 = PBReaderReadString();
          v14 = 80;
LABEL_41:
          v23 = *&a1[v14];
          *&a1[v14] = v13;

          goto LABEL_42;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_42;
      }

      while (1)
      {
        v34 = 0;
        v28 = [a2 position] + 1;
        if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
        {
          v30 = [a2 data];
          [v30 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v27 |= (v34 & 0x7F) << v25;
        if ((v34 & 0x80) == 0)
        {
          break;
        }

        v25 += 7;
        v11 = v26++ >= 9;
        if (v11)
        {
          v22 = 0;
          goto LABEL_62;
        }
      }

      v22 = [a2 hasError] ? 0 : v27;
LABEL_62:
      v32 = 16;
LABEL_63:
      *&a1[v32] = v22;
LABEL_42:
      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id PKFieldDetectorPersistentFieldDetectionReasonToString(char a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v3 = v2;
  if (a1)
  {
    [v2 appendString:@"ContactlessPassesAvailable"];
  }

  if ((a1 & 2) != 0)
  {
    if ([v3 length])
    {
      [v3 appendString:@"|"];
    }

    [v3 appendString:@"CarKeyPairing"];
  }

  v4 = [v3 copy];

  return v4;
}

void sub_1AD963C94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t PKPendingProvisioningReceiptTypeFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"provisioned")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"provisioned"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"failed" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"failed"], v6, v7))
    {
      v4 = 2;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_4:
  v4 = 1;
LABEL_9:

  return v4;
}

__CFString *PKPendingProvisioningReceiptTypeToString(uint64_t a1)
{
  v1 = &stru_1F227FD28;
  if (a1 == 2)
  {
    v1 = @"failed";
  }

  if (a1 == 1)
  {
    return @"provisioned";
  }

  else
  {
    return v1;
  }
}

id PKCreateSimulatedPaymentTransaction(uint64_t a1)
{
  v1 = [PKPaymentTransaction paymentTransactionWithSource:a1];
  v2 = [MEMORY[0x1E695DF00] date];
  [v1 setTransactionDate:v2];

  v3 = [v1 setCurrencyCode:@"USD"];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"0000000000000000%016d", arc4random_uniform(v3)];
  [v1 setPaymentHash:v4];

  v5 = [MEMORY[0x1E696AB90] decimalNumberWithMantissa:arc4random_uniform(0x2710u) exponent:4294967294 isNegative:0];
  [v1 setAmount:v5];

  [v1 setTransactionType:0];
  [v1 setTechnologyType:2];
  [v1 setOriginatedByDevice:1];

  return v1;
}

void PKInsertDemoMerchantTransaction(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v32 = a4;
  v34 = a1;
  v9 = arc4random_uniform(0x1Eu);
  if (v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:v9 * -86400.0];
  }

  v11 = v10;
  v12 = +[PKDemoTransactionGenerator randomDemoMerchant];
  v13 = [PKDemoTransactionGenerator demoMerchantForType:v12];
  v35 = v7;
  v33 = v8;
  if (v8)
  {
    v14 = v8;
  }

  else
  {
    v14 = [PKDemoTransactionGenerator randomAmountForMerchant:v12];
  }

  v15 = v14;
  v16 = [v13 mapsMerchant];
  v31 = [v16 location];

  v17 = [v13 city];
  v18 = [v13 state];
  v19 = objc_alloc_init(PKPaymentTransaction);
  v20 = [MEMORY[0x1E696AFB0] UUID];
  v21 = [v20 UUIDString];

  [(PKPaymentTransaction *)v19 setOriginatedByDevice:1];
  [(PKPaymentTransaction *)v19 setTransactionStatus:1];
  [(PKPaymentTransaction *)v19 setAmount:v15];
  [(PKPaymentTransaction *)v19 setCurrencyCode:@"USD"];
  [(PKPaymentTransaction *)v19 setTransactionDate:v11];
  [(PKPaymentTransaction *)v19 setTransactionSource:1];
  [(PKPaymentTransaction *)v19 setLocality:v17];
  [(PKPaymentTransaction *)v19 setAdministrativeArea:v18];
  [(PKPaymentTransaction *)v19 setLocation:v31];
  [(PKPaymentTransaction *)v19 setLocationHorizontalAccuracy:100.0];
  v22 = [MEMORY[0x1E695DF00] date];
  [(PKPaymentTransaction *)v19 setLocationDate:v22];

  [(PKPaymentTransaction *)v19 setPaymentHash:v21];
  v23 = [MEMORY[0x1E696AFB0] UUID];
  v24 = [v23 UUIDString];
  [(PKPaymentTransaction *)v19 setServiceIdentifier:v24];

  [(PKPaymentTransaction *)v19 setMerchant:v13];
  [(PKPaymentTransaction *)v19 setHasNotificationServiceData:1];
  [(PKPaymentTransaction *)v19 setProcessedForLocation:1];
  [(PKPaymentTransaction *)v19 setProcessedForMerchantCleanup:0];
  v25 = +[PKPaymentService paymentService];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __PKInsertDemoMerchantTransaction_block_invoke;
  v36[3] = &unk_1E79DE280;
  v37 = v13;
  v38 = v15;
  v40 = v19;
  v41 = v32;
  v39 = v11;
  v26 = v19;
  v27 = v32;
  v28 = v11;
  v29 = v15;
  v30 = v13;
  [v25 insertOrUpdatePaymentTransaction:v26 forTransactionSourceIdentifier:v34 completion:v36];
}

uint64_t __PKInsertDemoMerchantTransaction_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) name];
  v3 = [v2 UTF8String];
  v4 = [*(a1 + 40) stringValue];
  v5 = [v4 UTF8String];
  v6 = PKLongDateString(*(a1 + 48));
  printf("Inserted transaction: %s - %s - %s\n", v3, v5, [v6 UTF8String]);

  result = *(a1 + 64);
  if (result)
  {
    v8 = *(result + 16);

    return v8();
  }

  return result;
}

id PKCreateSimulatedPaymentTransactionWithRewards(uint64_t a1, uint64_t a2)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v3 = PKCreateSimulatedPaymentTransaction(a1);
  v4 = objc_alloc_init(PKPaymentTransactionRewardsItem);
  [(PKPaymentTransactionRewardsItem *)v4 setType:2];
  [(PKPaymentTransactionRewardsItem *)v4 setEligibleValueUnit:1];
  v5 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"2"];
  [(PKPaymentTransactionRewardsItem *)v4 setEligibleValue:v5];

  switch(a2)
  {
    case 1:
      v6 = v3;
      v7 = 0;
      break;
    case 3:
      v8 = [v3 amount];
      v9 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"-1"];
      v10 = [v8 decimalNumberByMultiplyingBy:v9];
      [v3 setAmount:v10];

      [v3 setTransactionStatus:1];
      [v3 setTransactionType:1];
      goto LABEL_8;
    case 2:
      v6 = v3;
      v7 = 1;
      break;
    default:
      goto LABEL_8;
  }

  [v6 setTransactionStatus:v7];
LABEL_8:
  v11 = [v3 amount];
  v12 = [(PKPaymentTransactionRewardsItem *)v4 eligibleValue];
  v13 = [v11 decimalNumberByMultiplyingBy:v12];
  v14 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"100"];
  v15 = [v13 decimalNumberByDividingBy:v14];
  v16 = PKCurrencyAmountCreate(v15, &cfstr_Usd.isa, 0);

  [(PKPaymentTransactionRewardsItem *)v4 setCurrencyAmount:v16];
  [(PKPaymentTransactionRewardsItem *)v4 setState:a2];
  if (a2 != 1)
  {
    v17 = [v16 amount];
    [v3 setRewardsTotalAmount:v17];

    [v3 setRewardsTotalCurrencyCode:@"USD"];
  }

  v18 = [PKPaymentTransactionRewards alloc];
  v22[0] = v4;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  v20 = [(PKPaymentTransactionRewards *)v18 initWithRewardsItems:v19];
  [v3 setRewards:v20];

  return v3;
}

id PKCreateSimulatedPaymentTransactionWithReceipt(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = a2;
  v13 = PKCreateSimulatedPaymentTransaction(a1);
  [v13 setReceiptIdentifier:v12];

  [v13 setReceiptProviderIdentifier:v11];
  [v13 setCardNumberSuffix:v10];

  [v13 setReceiptProviderURL:v9];

  return v13;
}

PKPaymentTransaction *PKCreateSimulatedBarcodePaymentTransaction(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v42[1] = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = objc_alloc_init(PKPaymentTransaction);
  [(PKPaymentTransaction *)v8 setBarcodeIdentifier:v7];
  v40 = v7;
  v9 = PKTransactionPaymentHashForBarcodeIdentifier(v7);
  [(PKPaymentTransaction *)v8 setPaymentHash:v9];
  v39 = v9;
  [(PKPaymentTransaction *)v8 setServiceIdentifier:v9];
  v10 = [MEMORY[0x1E695DF00] date];
  [(PKPaymentTransaction *)v8 setTransactionDate:v10];

  v11 = objc_alloc_init(PKMerchant);
  [(PKMerchant *)v11 setName:@"Luckin Coffee"];
  v38 = v11;
  [(PKPaymentTransaction *)v8 setMerchant:v11];
  v12 = [objc_alloc(MEMORY[0x1E696AB90]) initWithString:@"34.99"];
  [(PKPaymentTransaction *)v8 setAmount:v12];

  [(PKPaymentTransaction *)v8 setCurrencyCode:@"CNY"];
  [(PKPaymentTransaction *)v8 setTransactionStatus:a2];
  [(PKPaymentTransaction *)v8 setHasNotificationServiceData:1];
  v13 = objc_alloc_init(PKPaymentTransactionAmountModifier);
  [(PKPaymentTransactionAmountModifier *)v13 setType:1];
  [(PKPaymentTransactionAmountModifier *)v13 setOrder:0];
  v14 = [PKTransactionAmount alloc];
  v15 = [objc_alloc(MEMORY[0x1E696AB90]) initWithString:@"-1.00"];
  v16 = PKCurrencyAmountCreate(v15, &cfstr_Cny.isa, 0);
  v17 = [(PKTransactionAmount *)v14 initWithCurrencyAmount:v16 label:@"Huabei"];
  [(PKPaymentTransactionAmountModifier *)v13 setAmount:v17];

  [(PKPaymentTransactionAmountModifier *)v13 setModifierDescription:@"Huabei"];
  v42[0] = v13;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:1];
  [(PKPaymentTransaction *)v8 setAmountModifiers:v18];

  v19 = [objc_alloc(MEMORY[0x1E696AB90]) initWithString:@"35.99"];
  [(PKPaymentTransaction *)v8 setNominalAmount:v19];

  if (!a2)
  {
    v20 = objc_alloc_init(PKTransactionAuthenticationContext);
    [(PKTransactionAuthenticationContext *)v20 setRequestedAuthenticationMechanisms:a3];
    v21 = [@"nonce" dataUsingEncoding:4];
    [(PKTransactionAuthenticationContext *)v20 setNonce:v21];

    v22 = [@"partialSignature" dataUsingEncoding:4];
    [(PKTransactionAuthenticationContext *)v20 setPartialSignature:v22];

    v23 = [@"signingKeyMaterial" dataUsingEncoding:4];
    [(PKTransactionAuthenticationContext *)v20 setSigningKeyMaterial:v23];

    [(PKTransactionAuthenticationContext *)v20 setPaymentPINFormat:2];
    [(PKPaymentTransaction *)v8 setAuthenticationContext:v20];
  }

  v41 = v8;
  if (a4 >= 5)
  {
    v24 = 5;
  }

  else
  {
    v24 = a4;
  }

  v25 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v24];
  v26 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"5.80"];
  v27 = v26;
  if (a4)
  {
    v28 = 0;
    do
    {
      v29 = objc_alloc_init(PKPaymentTransactionAward);
      [(PKPaymentTransactionAward *)v29 setType:1];
      [(PKPaymentTransactionAward *)v29 setRelevantAccountName:@"Balance"];
      if (v28)
      {
        v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Apple Offer %ld", v28];
      }

      else
      {
        v30 = @"Apple Offer";
      }

      [(PKPaymentTransactionAward *)v29 setAwardDescription:v30];
      v31 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"2.20"];
      v32 = [v27 decimalNumberByAdding:v31];

      v33 = [PKTransactionAmount alloc];
      v34 = [[PKCurrencyAmount alloc] initWithAmount:v32 currency:@"CNY" exponent:0];
      v35 = [(PKTransactionAmount *)v33 initWithCurrencyAmount:v34];

      [(PKPaymentTransactionAward *)v29 setAmount:v35];
      [v25 addObject:v29];

      ++v28;
      v27 = v32;
    }

    while (v24 != v28);
  }

  else
  {
    v32 = v26;
  }

  v36 = [v25 copy];
  [(PKPaymentTransaction *)v41 setAwards:v36];

  return v41;
}

void PKSimulatePaymentTransaction(void *a1, void *a2, char a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a4;
  v10 = dispatch_get_global_queue(0, 0);
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v22 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __PKSimulatePaymentTransaction_block_invoke;
  block[3] = &unk_1E79CB7F0;
  v16 = v8;
  v17 = v7;
  v19 = v9;
  v20 = v21;
  v18 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v7;
  v14 = v8;
  dispatch_async(v11, block);

  _Block_object_dispose(v21, 8);
}

void __PKSimulatePaymentTransaction_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[PKPaymentService paymentService];
  v4 = [*(a1 + 40) transactionSource];
  v5 = [*(a1 + 40) merchant];
  if (v2)
  {
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = +[PKPassLibrary sharedInstance];
    v8 = [v3 defaultPaymentPassUniqueIdentifier];
    v9 = [v7 passWithUniqueID:v8];
    v2 = [v9 paymentPass];

    if (v4)
    {
LABEL_3:
      v6 = [v2 devicePrimaryPaymentApplication];
      if (!v5)
      {
        goto LABEL_10;
      }

LABEL_8:
      v13 = 0;
      goto LABEL_14;
    }
  }

  *(*(*(a1 + 64) + 8) + 24) = 0;
  [*(a1 + 40) setHasNotificationServiceData:1];
  [*(a1 + 40) addUpdateReasons:64];
  [*(a1 + 40) setTransactionStatus:1];
  if ([*(a1 + 40) transactionType])
  {
    v10 = *(a1 + 40);
    v11 = [MEMORY[0x1E696AFB0] UUID];
    v12 = [v11 UUIDString];
    [v10 setServiceIdentifier:v12];

    v6 = [v2 devicePrimaryPaymentApplication];
    [*(a1 + 40) setOriginatedByDevice:0];
    if (v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = 0;
    if (v5)
    {
      goto LABEL_8;
    }
  }

LABEL_10:
  v5 = objc_alloc_init(PKMerchant);
  v14 = _SimulatedPaymentTransactionMerchantName(v4, (*(*(*(a1 + 64) + 8) + 24) & 1) == 0);
  if (v4)
  {
    v13 = *(*(*(a1 + 64) + 8) + 24);
  }

  else
  {
    v13 = 0;
  }

  [(PKMerchant *)v5 setName:v14];
  [(PKMerchant *)v5 setRawName:v14];
  [*(a1 + 40) setMerchant:v5];

LABEL_14:
  if (v4 <= 4 && ((1 << v4) & 0x13) != 0)
  {
    [*(a1 + 40) setMerchant:0];
  }

  v15 = [*(a1 + 40) transactionDate];

  if (!v15)
  {
    v16 = *(a1 + 40);
    v17 = [MEMORY[0x1E695DF00] date];
    [v16 setTransactionDate:v17];
  }

  v18 = *(a1 + 40);
  v19 = [v2 uniqueID];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __PKSimulatePaymentTransaction_block_invoke_2;
  v33[3] = &unk_1E79DE2A8;
  v23 = *(a1 + 56);
  v20 = v23;
  v34 = v23;
  [v3 insertOrUpdatePaymentTransaction:v18 forPassUniqueIdentifier:v19 paymentApplication:v6 completion:v33];

  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v21 = dispatch_time(0, 2000000000);
    v22 = *(a1 + 48);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __PKSimulatePaymentTransaction_block_invoke_3;
    block[3] = &unk_1E79DE2F8;
    v32 = v13;
    v31 = v4;
    v25 = v5;
    v26 = *(a1 + 40);
    v27 = v3;
    v28 = v2;
    v29 = v6;
    v30 = *(a1 + 56);
    dispatch_after(v21, v22, block);
  }
}

__CFString *_SimulatedPaymentTransactionMerchantName(uint64_t a1, int a2)
{
  if ((a1 - 1) > 3)
  {
    if (a2)
    {
      v4 = @"Simulated Notification Service";
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = off_1E79DE318[a1 - 1];
    if (a2)
    {
      v4 = [(__CFString *)v4 stringByAppendingString:@"(NS)", v2];
    }
  }

  return v4;
}

void __PKSimulatePaymentTransaction_block_invoke_2(uint64_t a1, uint64_t a2)
{
  NSLog(&cfstr_SimulatedTrans.isa, a2);
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(v3 + 16);

      v4();
    }
  }
}

void __PKSimulatePaymentTransaction_block_invoke_3(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    v2 = _SimulatedPaymentTransactionMerchantName(*(a1 + 80), 1);
    [*(a1 + 32) setName:v2];
    [*(a1 + 32) setRawName:v2];
  }

  [*(a1 + 40) setMerchant:*(a1 + 32)];
  v3 = [*(a1 + 40) identifier];

  if (!v3)
  {
    v4 = *(a1 + 40);
    v5 = [MEMORY[0x1E696AFB0] UUID];
    v6 = [v5 UUIDString];
    [v4 setIdentifier:v6];
  }

  v7 = *(a1 + 40);
  v8 = [MEMORY[0x1E696AFB0] UUID];
  v9 = [v8 UUIDString];
  [v7 setServiceIdentifier:v9];

  [*(a1 + 40) setTransactionStatus:1];
  [*(a1 + 40) setTransactionSource:0];
  [*(a1 + 40) setHasNotificationServiceData:1];
  [*(a1 + 40) addUpdateReasons:64];
  v11 = *(a1 + 40);
  v10 = *(a1 + 48);
  v12 = [*(a1 + 56) uniqueID];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __PKSimulatePaymentTransaction_block_invoke_4;
  v14[3] = &unk_1E79DE2D0;
  v13 = *(a1 + 64);
  v15 = *(a1 + 72);
  [v10 insertOrUpdatePaymentTransaction:v11 forPassUniqueIdentifier:v12 paymentApplication:v13 completion:v14];
}

uint64_t __PKSimulatePaymentTransaction_block_invoke_4(uint64_t a1, uint64_t a2)
{
  NSLog(&cfstr_SimulatedTrans_0.isa, a2);
  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void PKSimulateValueAddedServiceTransactionWithCompletion(void *a1)
{
  v1 = a1;
  v10 = +[PKPaymentService paymentService];
  v2 = +[PKPassLibrary sharedInstance];
  v3 = [v2 passesOfType:0];
  v4 = [v3 firstObject];

  v5 = objc_alloc_init(PKValueAddedServiceTransaction);
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"lockscreen%i", (rand() % 100)];
  v7 = objc_alloc_init(PKValueAddedMerchant);
  v8 = [v6 dataUsingEncoding:1];
  [(PKValueAddedMerchant *)v7 setIdentifier:v8];

  [(PKValueAddedServiceTransaction *)v5 setMerchant:v7];
  [(PKValueAddedServiceTransaction *)v5 setMerchantURL:@"http://passbot0:8000/panera.json"];
  v9 = [v4 uniqueID];
  [v10 insertOrUpdateValueAddedServiceTransaction:v5 forPassUniqueIdentifier:v9 paymentTransaction:0 completion:v1];
}

id PKIssuerProvisioningExtensionProviderContextExportedInterface()
{
  os_unfair_lock_lock(&_MergedGlobals_258);
  WeakRetained = objc_loadWeakRetained(&qword_1ED6D1FD8);
  if (!WeakRetained)
  {
    v1 = objc_autoreleasePoolPush();
    WeakRetained = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F23FFC68];
    objc_storeWeak(&qword_1ED6D1FD8, WeakRetained);
    v2 = objc_alloc(MEMORY[0x1E695DFD8]);
    v3 = objc_opt_class();
    v4 = [v2 initWithObjects:{v3, objc_opt_class(), 0}];
    v5 = objc_loadWeakRetained(&qword_1ED6D1FD8);
    [v5 setClasses:v4 forSelector:sel_passEntriesWithCompletion_ argumentIndex:0 ofReply:1];

    v6 = objc_loadWeakRetained(&qword_1ED6D1FD8);
    [v6 setClasses:v4 forSelector:sel_remotePassEntriesWithCompletion_ argumentIndex:0 ofReply:1];

    v7 = objc_loadWeakRetained(&qword_1ED6D1FD8);
    v8 = objc_alloc(MEMORY[0x1E695DFD8]);
    v9 = objc_opt_class();
    v10 = [v8 initWithObjects:{v9, objc_opt_class(), 0}];
    [v7 setClasses:v10 forSelector:sel_generateRequestWithEntryIdentifier_configuration_certificateChain_nonce_nonceSignature_completionHandler_ argumentIndex:2 ofReply:0];

    objc_autoreleasePoolPop(v1);
  }

  os_unfair_lock_unlock(&_MergedGlobals_258);

  return WeakRetained;
}

id PKIssuerProvisioningExtensionConsumerContextExportedInterface()
{
  os_unfair_lock_lock(&_MergedGlobals_258);
  WeakRetained = objc_loadWeakRetained(&qword_1ED6D1FE0);
  if (!WeakRetained)
  {
    v1 = objc_autoreleasePoolPush();
    WeakRetained = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2426C00];
    objc_storeWeak(&qword_1ED6D1FE0, WeakRetained);
    objc_autoreleasePoolPop(v1);
  }

  os_unfair_lock_unlock(&_MergedGlobals_258);

  return WeakRetained;
}

void sub_1AD968B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD969018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD96A038(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1AD96A950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *DateIsWithinThresholdForCooldownLevel(void *result, uint64_t a2, void *a3)
{
  if (result)
  {
    v5 = result;
    [a3 cooldownPeriodForLevel:a2];
    v7 = v6;
    v8 = [MEMORY[0x1E695DF00] now];
    [v8 timeIntervalSinceDate:v5];
    v10 = v9;

    return (v10 <= v7);
  }

  return result;
}

id PKISO_ViewableElements()
{
  v6 = objc_alloc(MEMORY[0x1E695DF20]);
  v0 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"portrait", @"given_name", @"family_name", @"birth_date", @"sex", @"eye_colour", @"hair_colour", @"height", @"document_number", @"issue_date", @"expiry_date", @"issuing_authority", @"driving_privileges", @"resident_address", @"resident_city", @"resident_state", @"resident_postal_code", @"resident_country", @"age_in_years", 0}];
  v1 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"DHS_compliance", @"domestic_driving_privileges", @"sex", @"organ_donor", @"veteran", 0}];
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"portrait", @"family_name", @"given_name", @"birth_date", @"sex", @"document_number", @"issue_date", @"expiry_date", @"issuing_authority", @"resident_address", @"resident_city", @"resident_state", @"resident_postal_code", @"resident_country", @"age_in_years", @"family_name_unicode", @"given_name_unicode", @"given_name_latin1", @"family_name_latin1", @"birth_date", @"issue_date", @"expiry_date", @"issuing_country", @"issuing_authority_unicode", @"issuing_subdivision", @"document_number", @"sex", @"nationality", @"portrait", @"resident_address_unicode", @"resident_city_unicode", @"resident_city_latin1", @"resident_postal_code", @"resident_country", @"age_in_years", @"age_over_NN", @"age_birth_year", @"portrait_capture_date", @"birthplace", @"name_at_birth", 0}];
  v3 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"full_name_unicode", @"resident_address_unicode", @"sex_unicode", @"local_gov_code_unicode", @"individual_number_unicode", @"portrait", @"birth_date_unicode", 0}];
  v4 = [v6 initWithObjectsAndKeys:{v0, @"org.iso.18013.5.1", v1, @"org.iso.18013.5.1.aamva", v2, @"org.iso.23220.1", v3, @"org.iso.23220.1.jp", 0}];

  return v4;
}

uint64_t PKISO_CategoryFromField(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v3;
  v6 = v5;
  if (v5 == @"org.iso.18013.5.1")
  {
    goto LABEL_4;
  }

  if (!v5)
  {
    goto LABEL_127;
  }

  v7 = [(__CFString *)v5 isEqualToString:@"org.iso.18013.5.1"];

  if (v7)
  {
LABEL_4:
    v8 = v4;
    if (v8 == @"given_name")
    {
      goto LABEL_124;
    }

    v9 = v8;
    if (v8)
    {
      v10 = [(__CFString *)v8 isEqualToString:@"given_name"];

      if ((v10 & 1) == 0)
      {
        v11 = v9;
        if (v11 != @"family_name")
        {
          v12 = v11;
          v13 = [(__CFString *)v11 isEqualToString:@"family_name"];

          if ((v13 & 1) == 0)
          {
            v14 = v12;
            if (v14 != @"resident_address")
            {
              v15 = v14;
              v16 = [(__CFString *)v14 isEqualToString:@"resident_address"];

              if ((v16 & 1) == 0)
              {
                v17 = v15;
                if (v17 != @"resident_city")
                {
                  v18 = v17;
                  v19 = [(__CFString *)v17 isEqualToString:@"resident_city"];

                  if ((v19 & 1) == 0)
                  {
                    v20 = v18;
                    if (v20 != @"resident_state")
                    {
                      v21 = v20;
                      v22 = [(__CFString *)v20 isEqualToString:@"resident_state"];

                      if ((v22 & 1) == 0)
                      {
                        v23 = v21;
                        if (v23 != @"resident_postal_code")
                        {
                          v24 = v23;
                          v25 = [(__CFString *)v23 isEqualToString:@"resident_postal_code"];

                          if ((v25 & 1) == 0)
                          {
                            v26 = v24;
                            if (v26 != @"resident_country")
                            {
                              v27 = v26;
                              v28 = [(__CFString *)v26 isEqualToString:@"resident_country"];

                              if ((v28 & 1) == 0)
                              {
                                v29 = v27;
                                if (v29 != @"birth_date")
                                {
                                  v30 = v29;
                                  v31 = [(__CFString *)v29 isEqualToString:@"birth_date"];

                                  if ((v31 & 1) == 0)
                                  {
                                    v32 = v30;
                                    if (v32 != @"portrait")
                                    {
                                      v33 = v32;
                                      v34 = [(__CFString *)v32 isEqualToString:@"portrait"];

                                      if ((v34 & 1) == 0)
                                      {
                                        v35 = v33;
                                        if (v35 != @"eye_colour")
                                        {
                                          v36 = v35;
                                          v37 = [(__CFString *)v35 isEqualToString:@"eye_colour"];

                                          if ((v37 & 1) == 0)
                                          {
                                            v38 = v36;
                                            if (v38 != @"hair_colour")
                                            {
                                              v39 = v38;
                                              v40 = [(__CFString *)v38 isEqualToString:@"hair_colour"];

                                              if ((v40 & 1) == 0)
                                              {
                                                v41 = v39;
                                                if (v41 != @"sex")
                                                {
                                                  v42 = v41;
                                                  v43 = [(__CFString *)v41 isEqualToString:@"sex"];

                                                  if ((v43 & 1) == 0)
                                                  {
                                                    v44 = v42;
                                                    if (v44 != @"height")
                                                    {
                                                      v45 = v44;
                                                      v46 = [(__CFString *)v44 isEqualToString:@"height"];

                                                      if ((v46 & 1) == 0)
                                                      {
                                                        v47 = v45;
                                                        if (v47 != @"document_number")
                                                        {
                                                          v48 = v47;
                                                          v49 = [(__CFString *)v47 isEqualToString:@"document_number"];

                                                          if ((v49 & 1) == 0)
                                                          {
                                                            v50 = v48;
                                                            if (v50 != @"expiry_date")
                                                            {
                                                              v51 = v50;
                                                              v52 = [(__CFString *)v50 isEqualToString:@"expiry_date"];

                                                              if ((v52 & 1) == 0)
                                                              {
                                                                v53 = v51;
                                                                if (v53 != @"issue_date")
                                                                {
                                                                  v54 = v53;
                                                                  v55 = [(__CFString *)v53 isEqualToString:@"issue_date"];

                                                                  if ((v55 & 1) == 0)
                                                                  {
                                                                    v56 = v54;
                                                                    if (v56 != @"issuing_authority")
                                                                    {
                                                                      v57 = v56;
                                                                      v58 = @"issuing_authority";
                                                                      goto LABEL_39;
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }

                                                        goto LABEL_47;
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
              }
            }
          }
        }
      }

      goto LABEL_124;
    }
  }

  else
  {
    v63 = v6;
    if (v63 != @"org.iso.18013.5.1.aamva")
    {
      v64 = v63;
      v65 = [(__CFString *)v63 isEqualToString:@"org.iso.18013.5.1.aamva"];

      if (!v65)
      {
        v68 = v64;
        if (v68 == @"org.iso.23220.1" || (v69 = v68, v70 = [(__CFString *)v68 isEqualToString:@"org.iso.23220.1"], v69, v70))
        {
          v71 = v4;
          if (v71 != @"family_name")
          {
            v9 = v71;
            if (!v71)
            {
              goto LABEL_128;
            }

            v72 = [(__CFString *)v71 isEqualToString:@"family_name"];

            if ((v72 & 1) == 0)
            {
              v73 = v9;
              if (v73 != @"family_name_latin_character")
              {
                v74 = v73;
                v75 = [(__CFString *)v73 isEqualToString:@"family_name_latin_character"];

                if ((v75 & 1) == 0)
                {
                  v76 = v74;
                  if (v76 != @"given_name")
                  {
                    v77 = v76;
                    v78 = [(__CFString *)v76 isEqualToString:@"given_name"];

                    if ((v78 & 1) == 0)
                    {
                      v79 = v77;
                      if (v79 != @"given_name_latin_character")
                      {
                        v80 = v79;
                        v81 = [(__CFString *)v79 isEqualToString:@"given_name_latin_character"];

                        if ((v81 & 1) == 0)
                        {
                          v82 = v80;
                          if (v82 != @"birth_date")
                          {
                            v83 = v82;
                            v84 = [(__CFString *)v82 isEqualToString:@"birth_date"];

                            if ((v84 & 1) == 0)
                            {
                              v85 = v83;
                              if (v85 != @"resident_postal_code")
                              {
                                v86 = v85;
                                v87 = [(__CFString *)v85 isEqualToString:@"resident_postal_code"];

                                if ((v87 & 1) == 0)
                                {
                                  v88 = v86;
                                  if (v88 != @"document_number")
                                  {
                                    v89 = v88;
                                    v90 = [(__CFString *)v88 isEqualToString:@"document_number"];

                                    if ((v90 & 1) == 0)
                                    {
                                      v91 = v89;
                                      if (v91 != @"sex")
                                      {
                                        v92 = v91;
                                        v93 = [(__CFString *)v91 isEqualToString:@"sex"];

                                        if ((v93 & 1) == 0)
                                        {
                                          v94 = v92;
                                          if (v94 != @"nationality")
                                          {
                                            v95 = v94;
                                            v96 = [(__CFString *)v94 isEqualToString:@"nationality"];

                                            if ((v96 & 1) == 0)
                                            {
                                              v97 = v95;
                                              if (v97 != @"portrait")
                                              {
                                                v98 = v97;
                                                v99 = [(__CFString *)v97 isEqualToString:@"portrait"];

                                                if ((v99 & 1) == 0)
                                                {
                                                  v100 = v98;
                                                  if (v100 != @"resident_address")
                                                  {
                                                    v101 = v100;
                                                    v102 = [(__CFString *)v100 isEqualToString:@"resident_address"];

                                                    if ((v102 & 1) == 0)
                                                    {
                                                      v103 = v101;
                                                      if (v103 != @"resident_address_latin_character")
                                                      {
                                                        v104 = v103;
                                                        v105 = [(__CFString *)v103 isEqualToString:@"resident_address_latin_character"];

                                                        if ((v105 & 1) == 0)
                                                        {
                                                          v106 = v104;
                                                          if (v106 != @"resident_city")
                                                          {
                                                            v107 = v106;
                                                            v108 = [(__CFString *)v106 isEqualToString:@"resident_city"];

                                                            if ((v108 & 1) == 0)
                                                            {
                                                              v109 = v107;
                                                              if (v109 != @"resident_city_latin_character")
                                                              {
                                                                v110 = v109;
                                                                v111 = [(__CFString *)v109 isEqualToString:@"resident_city_latin_character"];

                                                                if ((v111 & 1) == 0 && ([(__CFString *)v110 isEqualToString:@"resident_postal_code"]& 1) == 0)
                                                                {
                                                                  v112 = v110;
                                                                  if (v112 != @"resident_postal_code_latin_character")
                                                                  {
                                                                    v113 = v112;
                                                                    v114 = [(__CFString *)v112 isEqualToString:@"resident_postal_code_latin_character"];

                                                                    if ((v114 & 1) == 0)
                                                                    {
                                                                      v115 = v113;
                                                                      if (v115 != @"resident_state")
                                                                      {
                                                                        v116 = v115;
                                                                        v117 = [(__CFString *)v115 isEqualToString:@"resident_state"];

                                                                        if ((v117 & 1) == 0)
                                                                        {
                                                                          v118 = v116;
                                                                          if (v118 != @"resident_state_latin_character")
                                                                          {
                                                                            v119 = v118;
                                                                            v120 = [(__CFString *)v118 isEqualToString:@"resident_state_latin_character"];

                                                                            if ((v120 & 1) == 0)
                                                                            {
                                                                              v121 = v119;
                                                                              if (v121 != @"resident_country")
                                                                              {
                                                                                v122 = v121;
                                                                                v123 = [(__CFString *)v121 isEqualToString:@"resident_country"];

                                                                                if ((v123 & 1) == 0)
                                                                                {
                                                                                  if (([(__CFString *)v122 isEqualToString:@"document_number"]& 1) == 0)
                                                                                  {
                                                                                    v124 = v122;
                                                                                    if (v124 != @"expiry_date")
                                                                                    {
                                                                                      v125 = v124;
                                                                                      v126 = [(__CFString *)v124 isEqualToString:@"expiry_date"];

                                                                                      if ((v126 & 1) == 0)
                                                                                      {
                                                                                        v127 = v125;
                                                                                        if (v127 != @"issue_date")
                                                                                        {
                                                                                          v128 = v127;
                                                                                          v129 = [(__CFString *)v127 isEqualToString:@"issue_date"];

                                                                                          if ((v129 & 1) == 0)
                                                                                          {
                                                                                            v130 = v128;
                                                                                            if (v130 != @"issuing_country")
                                                                                            {
                                                                                              v131 = v130;
                                                                                              v132 = [(__CFString *)v130 isEqualToString:@"issuing_country"];

                                                                                              if ((v132 & 1) == 0)
                                                                                              {
                                                                                                v133 = v131;
                                                                                                if (v133 != @"issuing_authority")
                                                                                                {
                                                                                                  v134 = v133;
                                                                                                  v135 = [(__CFString *)v133 isEqualToString:@"issuing_authority"];

                                                                                                  if ((v135 & 1) == 0)
                                                                                                  {
                                                                                                    v136 = v134;
                                                                                                    if (v136 != @"issuing_authority_latin_character")
                                                                                                    {
                                                                                                      v137 = v136;
                                                                                                      v138 = [(__CFString *)v136 isEqualToString:@"issuing_authority_latin_character"];

                                                                                                      if ((v138 & 1) == 0)
                                                                                                      {
                                                                                                        v139 = v137;
                                                                                                        if (v139 != @"issuing_subdivision")
                                                                                                        {
                                                                                                          v57 = v139;
                                                                                                          v58 = @"issuing_subdivision";
LABEL_39:
                                                                                                          v59 = [(__CFString *)v57 isEqualToString:v58];

                                                                                                          if ((v59 & 1) == 0)
                                                                                                          {
                                                                                                            v60 = v57;
                                                                                                            if (v60 != @"driving_privileges")
                                                                                                            {
                                                                                                              v61 = v60;
                                                                                                              v62 = @"driving_privileges";
                                                                                                              goto LABEL_109;
                                                                                                            }

                                                                                                            goto LABEL_110;
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
                                                                                      }
                                                                                    }
                                                                                  }

LABEL_47:
                                                                                  v9 = 2;
                                                                                  goto LABEL_128;
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
                    }
                  }
                }
              }
            }
          }
        }

        else
        {
          v151 = v69;
          if (v151 != @"org.iso.23220.1.jp")
          {
            v152 = v151;
            v153 = [(__CFString *)v151 isEqualToString:@"org.iso.23220.1.jp"];

            if (!v153)
            {
              goto LABEL_127;
            }
          }

          v154 = v4;
          if (v154 != @"full_name_unicode")
          {
            v9 = v154;
            if (!v154)
            {
              goto LABEL_128;
            }

            v155 = [(__CFString *)v154 isEqualToString:@"full_name_unicode"];

            if ((v155 & 1) == 0)
            {
              v156 = v9;
              if (v156 != @"resident_address_unicode")
              {
                v157 = v156;
                v158 = [(__CFString *)v156 isEqualToString:@"resident_address_unicode"];

                if ((v158 & 1) == 0)
                {
                  v159 = v157;
                  if (v159 != @"sex_unicode")
                  {
                    v160 = v159;
                    v161 = [(__CFString *)v159 isEqualToString:@"sex_unicode"];

                    if ((v161 & 1) == 0)
                    {
                      v162 = v160;
                      if (v162 != @"local_gov_code_unicode")
                      {
                        v163 = v162;
                        v164 = [(__CFString *)v162 isEqualToString:@"local_gov_code_unicode"];

                        if ((v164 & 1) == 0)
                        {
                          v165 = v163;
                          if (v165 != @"portrait")
                          {
                            v166 = v165;
                            v167 = [(__CFString *)v165 isEqualToString:@"portrait"];

                            if ((v167 & 1) == 0)
                            {
                              v168 = v166;
                              if (v168 != @"individual_number_unicode")
                              {
                                v169 = v168;
                                v170 = [(__CFString *)v168 isEqualToString:@"individual_number_unicode"];

                                if (!v170)
                                {
                                  goto LABEL_127;
                                }
                              }

                              goto LABEL_47;
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
        }

LABEL_124:
        v9 = 1;
        goto LABEL_128;
      }
    }

    v66 = v4;
    if (v66 == @"DHS_compliance")
    {
      goto LABEL_47;
    }

    v9 = v66;
    if (v66)
    {
      v67 = [(__CFString *)v66 isEqualToString:@"DHS_compliance"];

      if (v67)
      {
        goto LABEL_47;
      }

      v140 = v9;
      if (v140 != @"sex")
      {
        v141 = v140;
        v142 = [(__CFString *)v140 isEqualToString:@"sex"];

        if ((v142 & 1) == 0)
        {
          v143 = v141;
          if (v143 != @"organ_donor")
          {
            v144 = v143;
            v145 = [(__CFString *)v143 isEqualToString:@"organ_donor"];

            if ((v145 & 1) == 0)
            {
              v146 = v144;
              if (v146 != @"veteran")
              {
                v147 = v146;
                v148 = [(__CFString *)v146 isEqualToString:@"veteran"];

                if ((v148 & 1) == 0)
                {
                  v149 = v147;
                  if (v149 != @"domestic_driving_privileges")
                  {
                    v61 = v149;
                    v62 = @"domestic_driving_privileges";
LABEL_109:
                    v150 = [(__CFString *)v61 isEqualToString:v62];

                    if (v150)
                    {
                      goto LABEL_110;
                    }

LABEL_127:
                    v9 = 0;
                    goto LABEL_128;
                  }

LABEL_110:
                  v9 = 3;
                  goto LABEL_128;
                }
              }
            }
          }
        }
      }

      goto LABEL_124;
    }
  }

LABEL_128:

  return v9;
}

BOOL PKPaymentTransactionAmountModifierTypeFromString(void *a1)
{
  v1 = [a1 lowercaseString];
  v2 = v1;
  v4 = 1;
  if (v1 != @"discount")
  {
    if (!v1 || (v3 = [@"discount" isEqualToString:v1], v2, !v3))
    {
      v4 = 0;
    }
  }

  return v4;
}

__CFString *PKPaymentTransactionAmountModifierTypeToString(uint64_t a1)
{
  if (a1 == 1)
  {
    return @"discount";
  }

  else
  {
    return @"unknown";
  }
}

id PKApplicationAuthorizationServiceInterface_Client()
{
  if (qword_1ED6D1FF0 != -1)
  {
    dispatch_once(&qword_1ED6D1FF0, &__block_literal_global_182);
  }

  v1 = _MergedGlobals_259;

  return v1;
}

id PKApplicationAuthorizationServiceInterface_Server()
{
  if (qword_1ED6D2000 != -1)
  {
    dispatch_once(&qword_1ED6D2000, &__block_literal_global_6);
  }

  v1 = qword_1ED6D1FF8;

  return v1;
}

id PKApplicationAuthorizationViewServiceInterface_Service()
{
  if (qword_1ED6D2010 != -1)
  {
    dispatch_once(&qword_1ED6D2010, &__block_literal_global_12);
  }

  v1 = qword_1ED6D2008;

  return v1;
}

id PKApplicationAuthorizationViewServiceInterface_Remote()
{
  if (qword_1ED6D2020 != -1)
  {
    dispatch_once(&qword_1ED6D2020, &__block_literal_global_15_2);
  }

  v1 = qword_1ED6D2018;

  return v1;
}

uint64_t PKPeerPaymentRecipientStatusFromString(void *a1)
{
  v1 = [a1 lowercaseString];
  if ([@"valid" isEqualToString:v1])
  {
    v2 = 1;
  }

  else if ([@"invalid" isEqualToString:v1])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PKPeerPaymentRecipientStatusToString(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 2)
  {
    v1 = @"invalid";
  }

  if (a1 == 1)
  {
    return @"valid";
  }

  else
  {
    return v1;
  }
}

uint64_t PKPeerPaymentRecipientStatusReasonFromString(void *a1)
{
  v1 = [a1 lowercaseString];
  if ([@"none" isEqualToString:v1])
  {
    v2 = 0;
  }

  else if ([@"notinfamily" isEqualToString:v1])
  {
    v2 = 2;
  }

  else
  {
    v2 = [@"accountclosed" isEqualToString:v1];
  }

  return v2;
}

__CFString *PKPeerPaymentRecipientStatusReasonToString(uint64_t a1)
{
  v1 = @"none";
  if (a1 == 2)
  {
    v1 = @"notInFamily";
  }

  if (a1 == 1)
  {
    return @"accountClosed";
  }

  else
  {
    return v1;
  }
}

__CFString *PKPeerPaymentRecipientReceiveMethodToString(uint64_t a1)
{
  if (a1 == 1)
  {
    return @"iMessage";
  }

  else
  {
    return @"unknown";
  }
}

unint64_t PKWalletTransactionTypeForPKFieldTerminalType(unint64_t result)
{
  if (result < 6)
  {
    return dword_1ADB9AD88[result];
  }

  __break(1u);
  return result;
}

unint64_t PKWalletTransactionTypeForSTSTerminalType(unint64_t result)
{
  if (result < 0xB)
  {
    return dword_1ADB9ADA0[result];
  }

  __break(1u);
  return result;
}

uint64_t PKWalletTransactionTypeForNFFieldNotificationType(uint64_t result)
{
  if ((result - 1) < 3)
  {
    return dword_1ADB9ADCC[result - 1];
  }

  __break(1u);
  return result;
}

__CFString *PKPassEntitlementDisplayStyleToString(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 1)
  {
    v1 = @"toggle";
  }

  if (a1 == 2)
  {
    return @"checkmark";
  }

  else
  {
    return v1;
  }
}

uint64_t PKPassEntitlementDisplayStyleFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"toggle")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"toggle"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"checkmark" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"checkmark"], v6, v7))
    {
      v4 = 2;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_4:
  v4 = 1;
LABEL_9:

  return v4;
}

uint64_t PKAccountPaymentStateFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"posted"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"scheduled"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"cancelled"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"failed"])
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PKAccountPaymentStateStringForState(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79DEA10[a1 - 1];
  }
}

uint64_t PKAccountPaymentFundingSourceTypeFromString(void *a1)
{
  v1 = [a1 lowercaseString];
  v2 = [@"ACH" lowercaseString];
  v3 = [v1 isEqualToString:v2];

  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [@"APC" lowercaseString];
    v6 = [v1 isEqualToString:v5];

    if (v6)
    {
      v4 = 2;
    }

    else
    {
      v7 = [@"offline" lowercaseString];
      v8 = [v1 isEqualToString:v7];

      if (v8)
      {
        v4 = 3;
      }

      else
      {
        v9 = [@"savings" lowercaseString];
        v10 = [v1 isEqualToString:v9];

        if (v10)
        {
          v4 = 4;
        }

        else
        {
          v11 = [@"RDFI" lowercaseString];
          v12 = [v1 isEqualToString:v11];

          if (v12)
          {
            v4 = 5;
          }

          else
          {
            v4 = 0;
          }
        }
      }
    }
  }

  return v4;
}

__CFString *PKAccountPaymentFundingSourceTypeToString(uint64_t a1)
{
  v2 = a1 - 1;
  if (a1 - 1) <= 4 && ((0x17u >> v2))
  {
    v3 = *off_1E79DEA30[v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t PKAccountPaymentFrequencyFromString(void *a1)
{
  v1 = [a1 lowercaseString];
  if ([v1 isEqualToString:@"now"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"once"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"daily"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"weekly"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"biweekly"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"monthly"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"paymentduedate"])
  {
    v2 = 7;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PKAccountPaymentFrequencyToString(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    v2 = 0;
  }

  else
  {
    v2 = *off_1E79DEA58[a1 - 1];
  }

  return v2;
}

uint64_t PKAccountPaymentPresetFromString(void *a1)
{
  v1 = [a1 lowercaseString];
  if ([v1 isEqualToString:@"fixedamount"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"minimumdue"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"statementbalance"])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PKAccountPaymentPresetToString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = *off_1E79DEA90[a1 - 1];
  }

  return v2;
}

uint64_t PKAccountPaymentFundingSourceStatusFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"available"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"unavailable"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PKAccountPaymentFundingSourceStatusToString(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E79DEAA8[a1];
  }
}

__CFString *PKPaymentOfferInstallmentAssessmentEligibilityToString(uint64_t a1)
{
  if ((a1 - 1) > 9)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79DEB08[a1 - 1];
  }
}

void sub_1AD97B048(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x268], 8);
  _Block_object_dispose(&STACK[0x298], 8);
  _Block_object_dispose(&STACK[0x2C8], 8);
  _Block_object_dispose(&STACK[0x2F8], 8);
  _Block_object_dispose((v1 - 248), 8);
  _Block_object_dispose((v1 - 200), 8);
  _Block_object_dispose((v1 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1AD97DE28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose(&a61, 8);
  _Unwind_Resume(a1);
}

void sub_1AD97F190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v10 - 152), 8);
  _Block_object_dispose((v10 - 120), 8);
  _Unwind_Resume(a1);
}

id PKLocalizedBillPaymentStringFromMerchantCategory(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a1 - 1) > 6)
  {
    v10 = @"ACCOUNT_SERVICE_BILL_PAYMENT_MERCHANT_CATEGORY_OTHER";
  }

  else
  {
    v10 = off_1E79DEC68[a1 - 1];
  }

  v11 = PKLocalizedFeatureString(v10, 2, 0, a4, a5, a6, a7, a8, v8);

  return v11;
}

Class initFHPaymentRingSuggestionController()
{
  if (qword_1EB5B7E50 != -1)
  {
    dispatch_once(&qword_1EB5B7E50, &__block_literal_global_595);
  }

  result = objc_getClass("FHPaymentRingSuggestionController");
  qword_1EB5B7E48 = result;
  getFHPaymentRingSuggestionControllerClass[0] = FHPaymentRingSuggestionControllerFunction;
  return result;
}

void *__LoadFinHealth_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/FinHealth.framework/FinHealth", 2);
  LoadFinHealth_frameworkLibrary = result;
  return result;
}

id initFHPaymentRingInstrumentationRecordKeyLastPaymentCategory()
{
  if (qword_1EB5B7E60 != -1)
  {
    dispatch_once(&qword_1EB5B7E60, &__block_literal_global_599);
  }

  v0 = dlsym(qword_1EB5B7E58, "FHPaymentRingInstrumentationRecordKeyLastPaymentCategory");
  objc_storeStrong(&qword_1EB5B7E38, *v0);
  _MergedGlobals_179 = FHPaymentRingInstrumentationRecordKeyLastPaymentCategoryFunction;
  v1 = qword_1EB5B7E38;

  return v1;
}

void *__LoadFinHealthCore_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/FinHealthCore.framework/FinHealthCore", 2);
  qword_1EB5B7E58 = result;
  return result;
}

id initFHPaymentRingInstrumentationRecordKeyPaymentAction()
{
  if (qword_1EB5B7E60 != -1)
  {
    dispatch_once(&qword_1EB5B7E60, &__block_literal_global_599);
  }

  v0 = dlsym(qword_1EB5B7E58, "FHPaymentRingInstrumentationRecordKeyPaymentAction");
  objc_storeStrong(&qword_1EB5B7E40, *v0);
  off_1ED6D1150 = FHPaymentRingInstrumentationRecordKeyPaymentActionFunction;
  v1 = qword_1EB5B7E40;

  return v1;
}

id initFHPaymentRingInstrumentationRecordKeyAccountState()
{
  if (qword_1EB5B7E60 != -1)
  {
    dispatch_once(&qword_1EB5B7E60, &__block_literal_global_599);
  }

  v0 = dlsym(qword_1EB5B7E58, "FHPaymentRingInstrumentationRecordKeyAccountState");
  objc_storeStrong(&_MergedGlobals_9_0, *v0);
  off_1ED6D1158 = FHPaymentRingInstrumentationRecordKeyAccountStateFunction;
  v1 = _MergedGlobals_9_0;

  return v1;
}

id initFHPaymentRingInstrumentationRecordKeyPaidUsingRing()
{
  if (qword_1EB5B7E60 != -1)
  {
    dispatch_once(&qword_1EB5B7E60, &__block_literal_global_599);
  }

  v0 = dlsym(qword_1EB5B7E58, "FHPaymentRingInstrumentationRecordKeyPaidUsingRing");
  objc_storeStrong(&qword_1EB5B7E30, *v0);
  off_1ED6D1160 = FHPaymentRingInstrumentationRecordKeyPaidUsingRingFunction;
  v1 = qword_1EB5B7E30;

  return v1;
}

__CFString *PKPaymentOfferDynamicContentPageTypeToString(uint64_t a1)
{
  if ((a1 - 1) > 0x12)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79DED28[a1 - 1];
  }
}

__CFString *PKPaymentOfferDynamicContentCustomLayoutItemTextDetailsFontToString(uint64_t a1)
{
  if ((a1 - 1) > 9)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79DEDD8[a1 - 1];
  }
}

uint64_t PKProtobufPromptDetailsForVirtualCardReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v25 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v25 & 0x7F) << v15;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            LOBYTE(v21) = 0;
            goto LABEL_32;
          }
        }

        v21 = (v17 != 0) & ~[a2 hasError];
LABEL_32:
        *(a1 + 16) = v21;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1AD989900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t PKPaymentTransactionFeeItemTypeFromString(void *a1)
{
  v1 = a1;
  if ([@"creditCard" isEqualToString:v1])
  {
    v2 = 1;
  }

  else if ([@"foreignTransaction" isEqualToString:v1])
  {
    v2 = 2;
  }

  else if ([@"serviceCharge" isEqualToString:v1])
  {
    v2 = 3;
  }

  else if ([@"instantWithdrawal" isEqualToString:v1])
  {
    v2 = 4;
  }

  else if ([@"other" isEqualToString:v1])
  {
    v2 = 100;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1AD98CEFC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1AD98D330(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

Class initIMOneTimeCodeAccelerator()
{
  if (qword_1EB5A00A0 != -1)
  {
    dispatch_once(&qword_1EB5A00A0, &__block_literal_global_187);
  }

  result = objc_getClass("IMOneTimeCodeAccelerator");
  qword_1EB5A0090 = result;
  getIMOneTimeCodeAcceleratorClass[0] = IMOneTimeCodeAcceleratorFunction;
  return result;
}

void *__LoadIMCore_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/IMCore.framework/IMCore", 2);
  qword_1EB5A0098 = result;
  return result;
}

id initIMOneTimeCodeMachineReadableCodeKey()
{
  if (qword_1EB5A00A0 != -1)
  {
    dispatch_once(&qword_1EB5A00A0, &__block_literal_global_187);
  }

  v0 = dlsym(qword_1EB5A0098, "IMOneTimeCodeMachineReadableCodeKey");
  objc_storeStrong(&_MergedGlobals_1_7, *v0);
  _MergedGlobals_180 = IMOneTimeCodeMachineReadableCodeKeyFunction;
  v1 = _MergedGlobals_1_7;

  return v1;
}

id initIMOneTimeCodeKey()
{
  if (qword_1EB5A00A0 != -1)
  {
    dispatch_once(&qword_1EB5A00A0, &__block_literal_global_187);
  }

  v0 = dlsym(qword_1EB5A0098, "IMOneTimeCodeKey");
  objc_storeStrong(&qword_1EB5A0078, *v0);
  off_1ED6D1170 = IMOneTimeCodeKeyFunction;
  v1 = qword_1EB5A0078;

  return v1;
}

id initIMOneTimeCodeHandleKey()
{
  if (qword_1EB5A00A0 != -1)
  {
    dispatch_once(&qword_1EB5A00A0, &__block_literal_global_187);
  }

  v0 = dlsym(qword_1EB5A0098, "IMOneTimeCodeHandleKey");
  objc_storeStrong(&qword_1EB5A0080, *v0);
  off_1ED6D1178 = IMOneTimeCodeHandleKeyFunction;
  v1 = qword_1EB5A0080;

  return v1;
}

id initIMOneTimeCodeGuidKey()
{
  if (qword_1EB5A00A0 != -1)
  {
    dispatch_once(&qword_1EB5A00A0, &__block_literal_global_187);
  }

  v0 = dlsym(qword_1EB5A0098, "IMOneTimeCodeGuidKey");
  objc_storeStrong(&qword_1EB5A0088, *v0);
  off_1ED6D1180 = IMOneTimeCodeGuidKeyFunction;
  v1 = qword_1EB5A0088;

  return v1;
}

uint64_t PKAccountPromotionStateFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"upcoming")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_14:
    v4 = 0;
    goto LABEL_15;
  }

  v3 = [@"upcoming" isEqualToString:v1];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"inProgress" || (v6 = v5, v7 = [@"inProgress" isEqualToString:v5], v6, (v7 & 1) != 0))
    {
      v4 = 2;
      goto LABEL_15;
    }

    v8 = v6;
    if (v8 == @"redeemed" || (v9 = v8, v10 = [@"redeemed" isEqualToString:v8], v9, (v10 & 1) != 0))
    {
      v4 = 3;
      goto LABEL_15;
    }

    v11 = v9;
    if (v11 == @"expired" || (v12 = v11, v13 = [@"expired" isEqualToString:v11], v12, v13))
    {
      v4 = 4;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_4:
  v4 = 1;
LABEL_15:

  return v4;
}

__CFString *PKAccountPromotionStateToString(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79DF058[a1];
  }
}

uint64_t PKAccountPromotionTypeFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"spendGet")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_17:
    v4 = 0;
    goto LABEL_18;
  }

  v3 = [@"spendGet" isEqualToString:v1];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"acceleratedDailyCash" || (v6 = v5, v7 = [@"acceleratedDailyCash" isEqualToString:v5], v6, (v7 & 1) != 0))
    {
      v4 = 2;
      goto LABEL_18;
    }

    v8 = v6;
    if (v8 == @"frequencyBased" || (v9 = v8, v10 = [@"frequencyBased" isEqualToString:v8], v9, (v10 & 1) != 0))
    {
      v4 = 3;
      goto LABEL_18;
    }

    v11 = v9;
    if (v11 == @"genericOneTime" || (v12 = v11, v13 = [@"genericOneTime" isEqualToString:v11], v12, (v13 & 1) != 0))
    {
      v4 = 4;
      goto LABEL_18;
    }

    v14 = v12;
    if (v14 == @"genericIncremental" || (v15 = v14, v16 = [@"genericIncremental" isEqualToString:v14], v15, v16))
    {
      v4 = 5;
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_4:
  v4 = 1;
LABEL_18:

  return v4;
}

__CFString *PKAccountPromotionTypeToString(unint64_t a1)
{
  if (a1 > 5)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79DF080[a1];
  }
}

double PKPaymentPassPANSuffixFontSize()
{
  v0 = PKScreenSize();
  v1 = PKGetMaxPassWidthForScreenSize(v0);
  return round(v1 / 375.0 * 17.0 + v1 / 375.0 * 17.0) * 0.5;
}

double PKPaymentPassContentInsetsForScreenSize(double a1)
{
  v1 = PKGetMaxPassWidthForScreenSize(a1);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __PKPaymentPassContentInsetsForScreenSize_block_invoke;
  aBlock[3] = &__block_descriptor_40_e8_d16__0d8l;
  *&aBlock[4] = v1 / 375.0;
  v2 = _Block_copy(aBlock);
  v3 = v2[2](14.0);
  (v2[2])(v2, 20.0);
  (v2[2])(v2, 14.0);
  (v2[2])(v2, 20.0);

  return v3;
}

double PKPaymentPassContentInsets()
{
  v0 = PKScreenSize();

  return PKPaymentPassContentInsetsForScreenSize(v0);
}

double PKPassMaxFrontSizeForScreenSize(double a1)
{
  v1 = PKGetMaxPassWidthForScreenSize(a1);
  PKGetMaxPassHeightForScreenSize();
  return v1;
}

double PKPassMaxFrontSize()
{
  v0 = PKScreenSize();
  v1 = PKGetMaxPassWidthForScreenSize(v0);
  PKGetMaxPassHeightForScreenSize();
  return v1;
}

double PKPassViewFrontSize(uint64_t a1)
{
  v2 = PKScreenSize();

  return PKPassFrontFaceContentSizeForScreenSize(a1, v2);
}

double PKPassHeightAdjustmentForStyleForScreenSize(unint64_t a1, double a2, double a3)
{
  result = 0.0;
  if (a1 > 9 || ((1 << a1) & 0x2C0) == 0)
  {
    if (a2 <= 320.0)
    {
      if (a3 > 480.0)
      {
        return 118.0;
      }
    }

    else if (a2 >= 414.0)
    {
      result = 188.0;
      if (a3 > 736.0)
      {
        return 108.0;
      }
    }

    else
    {
      return dbl_1ADB9AED0[a3 > 667.0];
    }
  }

  return result;
}

double PKPassFacePartialBlurRect(unint64_t a1)
{
  v2 = PKScreenSize();

  return _FrontFacePartialBlurRect(a1, v2, v3, v4, v5, v6, v7);
}

double _FrontFacePartialBlurRect(unint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  if (a1 < 9 || a1 == 13 || a1 == 10)
  {
    return *MEMORY[0x1E695F058];
  }

  if (a1 == 9)
  {
    PKGetMaxPassWidthForScreenSize(a2);
    return 0.0;
  }

  return a7;
}

id PKPassFrontFaceShadowImage(void *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v1 = a1;
  [v1 scale];
  v3 = v2 * 0.25;
  [v1 size];
  v5 = v4;
  v7 = v6;
  v8 = v6 + 30.0;
  v9 = v3 * (v6 + 30.0);
  DeviceGray = CGColorSpaceCreateDeviceGray();
  AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
  v12 = CGBitmapContextCreate(0, vcvtpd_u64_f64(v3 * (v5 + 30.0)), vcvtpd_u64_f64(v9), 8uLL, AlignedBytesPerRow, DeviceGray, 7u);
  CGContextScaleCTM(v12, v3, v3);
  *components = __const_PKPassFrontFaceShadowImage_components;
  v13 = CGColorCreate(DeviceGray, components);
  v29.width = -((v5 + 15.0) * v3);
  v29.height = -((v7 + 15.0) * v3);
  CGContextSetShadowWithColor(v12, v29, v3 * 20.0, v13);
  v14 = [v1 imageRef];
  v30.origin.x = v5 + 30.0;
  v30.origin.y = v8;
  v30.size.width = v5;
  v30.size.height = v7;
  CGContextDrawImage(v12, v30, v14);
  v15 = PKGetImageFromBitmapContext(v12, v3);
  CGColorSpaceRelease(DeviceGray);
  CGContextRelease(v12);
  CGColorRelease(v13);
  [v1 capInsets];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = [v15 resizableImageByTilingWithCapInsets:{ceil(v17 + 15.0), v19, ceil(v21 + 15.0), v23}];

  return v24;
}

id PKPassFrontFaceImageForScreenSize(void *a1, void *a2, CGFloat *a3, double *a4, double *a5, uint64_t a6, void *a7, double a8, double a9, double a10)
{
  v18 = a1;
  v19 = a2;
  v20 = a7;
  if (a10 == 0.0)
  {
    a10 = PKScreenScale();
  }

  v21 = [v18 passStyle];
  v22 = v21 == 5;
  v237 = 0;
  v238 = &v237;
  v150 = v21;
  v239 = 0x3032000000;
  if (v21 == 7)
  {
    v22 = 2;
  }

  v146 = v22;
  v240 = __Block_byref_object_copy__67;
  v241 = __Block_byref_object_dispose__67;
  v242 = 0;
  v235[0] = 0;
  v235[1] = v235;
  v235[2] = 0x2020000000;
  v236 = 0;
  v234[0] = 0;
  v234[1] = v234;
  v234[2] = 0x2020000000;
  v234[3] = 0;
  v23 = v18;
  v24 = v19;
  v25 = v20;
  v26 = v23;
  v27 = [v23 passStyle];
  v143 = a3;
  v144 = a4;
  v145 = a5;
  v261 = 0;
  v262 = &v261;
  v263 = 0x3032000000;
  v264 = __Block_byref_object_copy__67;
  v265 = __Block_byref_object_dispose__67;
  v266 = 0;
  v257 = 0;
  v258 = &v257;
  v259 = 0x2020000000;
  v260 = 0;
  v253 = 0;
  v254 = &v253;
  v255 = 0x2020000000;
  v256 = 0;
  aBlock = MEMORY[0x1E69E9820];
  p_aBlock = 3221225472;
  v245 = ___ExtractBackgroundFromBundle_block_invoke;
  v246 = &unk_1E79DF2D0;
  v249 = &v253;
  v28 = v24;
  v247 = v28;
  v250 = &v257;
  v251 = &v261;
  v252 = a10;
  v29 = v25;
  v248 = v29;
  v30 = _Block_copy(&aBlock);
  v31 = 0;
  v32 = objc_autoreleasePoolPush();
  if (v27 <= 0xD && ((0x3DBBu >> v27) & 1) == 0)
  {
    if (v27 == 9)
    {
      if ((v254[3] & 1) == 0)
      {
        v30[2](v30, @"artwork", 0);
      }
    }

    else if (v27 == 6 && ((v30[2])(v30, @"cardBackgroundCombined", 1) & 1) == 0)
    {
      v31 = (v30[2])(v30, @"cardBackground", 1);
      goto LABEL_14;
    }

    v31 = 0;
LABEL_14:
    if ((v254[3] & 1) == 0)
    {
      v30[2](v30, @"background", 1);
    }
  }

  v33 = *(v254 + 24);
  v34 = v27 == 6;
  v35 = v258[3];
  v36 = v262[5];
  objc_autoreleasePoolPop(v32);

  _Block_object_dispose(&v253, 8);
  _Block_object_dispose(&v257, 8);
  _Block_object_dispose(&v261, 8);

  v157 = v28;
  document = v35;
  v37 = v29;
  v155 = (v35 | v36) != 0;
  v154 = PKColorSpaceStandardRGB();
  v38 = *MEMORY[0x1E695F050];
  v39 = *(MEMORY[0x1E695F050] + 8);
  v40 = *(MEMORY[0x1E695F050] + 16);
  v41 = *(MEMORY[0x1E695F050] + 24);
  context = objc_autoreleasePoolPush();
  rect_8 = v39;
  rect_16 = v38;
  rect_24 = v41;
  v170 = v40;
  if (v150 == 6)
  {
    v142 = 0;
    v159 = v41;
    v160 = v40;
LABEL_26:
    v158 = v39;
    rect = v38;
    goto LABEL_27;
  }

  v268.origin.x = _LogoRect(v150, a10);
  rect = v268.origin.x;
  y = v268.origin.y;
  height = v268.size.height;
  if (CGRectIsNull(v268) || (v150 - 9 >= 2 ? (v44 = PKPassBundleLogoImageName) : (v44 = PKPassBundlePrimaryLogoImageName), [PKImage imageNamed:*v44 inBundle:v157 screenScale:v29 suffix:a10], (v45 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v142 = 0;
    v159 = rect_24;
    v160 = v170;
    goto LABEL_26;
  }

  if (v150 == 9)
  {
    v46 = 30.0;
    v47 = 126.0;
  }

  else
  {
    _LogoRect(v150, a10);
    v47 = v78;
    v46 = v79;
  }

  v80 = [PKImageResizingConstraints constraintsWithMaxSize:v47, v46];
  [v45 scale];
  [v80 setOutputScale:?];
  v81 = [v45 resizedImageWithConstraints:v80];

  [v81 size];
  v160 = v82;
  v142 = v81;
  v159 = v83;
  *&v82 = y + (height - v83) * 0.5;
  v158 = roundf(*&v82);

LABEL_27:
  v48 = *MEMORY[0x1E695F060];
  v151 = *(MEMORY[0x1E695F060] + 8);
  v163 = *MEMORY[0x1E695F058];
  v164 = *(MEMORY[0x1E695F058] + 8);
  v161 = *(MEMORY[0x1E695F058] + 24);
  v162 = *(MEMORY[0x1E695F058] + 16);
  v49 = (v34 & ~v33 | v31) & 1;
  if (((v150 != 7) & (v155 | v49)) != 0)
  {
    v50 = 0;
  }

  else
  {
    v51 = a8;
    v52 = a9;
    v269.origin.x = PKPassFaceStripImageFrameForScreenSize(v26, a8, a9);
    x = v269.origin.x;
    v54 = v269.origin.y;
    width = v269.size.width;
    v56 = v269.size.height;
    IsNull = CGRectIsNull(v269);
    if (IsNull)
    {
      v58 = 0;
    }

    else
    {
      v58 = [PKImage imageNamed:@"strip" inBundle:v157 screenScale:v29 suffix:a10];
    }

    objc_storeStrong(v238 + 5, v58);
    if (!IsNull)
    {
    }

    if (v238[5])
    {
      v50 = 1;
      if (v150 != 7)
      {
        v59 = 0;
        v60 = 0;
        rect_8 = v54;
        rect_16 = x;
        rect_24 = v56;
        v170 = width;
        v156 = v48;
        a9 = v52;
        a8 = v51;
        v61 = v151;
        goto LABEL_76;
      }

      rect_8 = v54;
      rect_16 = x;
      rect_24 = v56;
      v170 = width;
    }

    else
    {
      v50 = 0;
    }

    a9 = v52;
    a8 = v51;
  }

  v62 = [PKImage imageNamed:@"thumbnail" inBundle:v157 screenScale:v29 suffix:a10];
  if (!v62)
  {
    v59 = 0;
    v61 = v151;
LABEL_54:

    v59 = 0;
    v60 = 0;
    v156 = v48;
    goto LABEL_76;
  }

  v63 = [v26 passStyle];
  if (v63 == 2)
  {
    v64 = 1.0;
    v65 = 90.0;
  }

  else
  {
    if (v63 != 5)
    {
      goto LABEL_48;
    }

    v64 = 1.5;
    v65 = 80.0;
  }

  v66 = [PKImageResizingConstraints constraintsWithMaxSize:80.0 minAspectRatio:v65 maxAspectRatio:0.766666667, v64];
  if (v66)
  {
    [v62 scale];
    [v66 setOutputScale:?];
    v59 = [v62 resizedImageWithConstraints:v66];

    [v59 size];
    v156 = v67;
    v61 = v68;

    goto LABEL_51;
  }

LABEL_48:
  if (v150 == 7)
  {
    [v62 size];
    v156 = v69;
    v61 = v70;
    v59 = v62;
  }

  else
  {
    v59 = v62;
    v61 = v151;
    v156 = v48;
  }

LABEL_51:
  if (v156 == v48 && v61 == v151)
  {
    v48 = v156;
    goto LABEL_54;
  }

  if (!v59)
  {
    v60 = 0;
    goto LABEL_76;
  }

  v71 = v26;
  v72 = [v71 passStyle];
  v73 = PKPassFrontFaceContentSizeForScreenSize(v72, a8);
  if (v72 == 2)
  {
    v74 = 15.0;
    v164 = 68.0;
LABEL_69:
    v85 = 0.0;
    v84 = 0.0;
    goto LABEL_70;
  }

  if (v72 != 5)
  {
    v74 = 0.0;
    v164 = 0.0;
    if (v72 == 7)
    {
      v75 = [v71 layoutModeForScreenSize:{a8, a9}];
      if (v75)
      {
        v76 = 80.0;
      }

      else
      {
        v76 = 105.0;
      }

      v270.origin.x = rect_16;
      v270.origin.y = rect_8;
      v270.size.height = rect_24;
      v270.size.width = v170;
      if (CGRectIsNull(v270))
      {
        v77 = dbl_1ADB9AEF0[v75 == 0];
      }

      else if (v75)
      {
        v77 = 98.0;
      }

      else
      {
        v271.origin.x = rect_16;
        v271.origin.y = rect_8;
        v271.size.height = rect_24;
        v271.size.width = v170;
        v77 = CGRectGetMaxY(v271) + -52.5;
      }

      v163 = PKRectRoundToPixelWithScale((v73 - v76) * 0.5, v77, v76, v76, a10);
      v164 = v86;
      v161 = v88;
      v162 = v87;
      goto LABEL_75;
    }

    goto LABEL_69;
  }

  v84 = 5.0;
  v85 = 6.0;
  v74 = 15.0;
  v164 = 72.0;
LABEL_70:
  v162 = v84 + v156 + v84;
  v163 = v73 - v74 - v84 - v84 - v156;
  v161 = v85 + v61 + v84;
LABEL_75:

  v60 = 1;
LABEL_76:
  objc_autoreleasePoolPop(context);
  v89 = [v26 passStyle];
  v90 = v89;
  if ((v155 | v49))
  {
    v92 = PKPassFrontFaceContentSizeForScreenSize(v89, a8);
  }

  else
  {
    v93 = PKPassFrontFaceEdgeStyle(v89);
    v94 = _ConstructionInsetsForEdgeStyle(v93);
    v96 = v95;
    v92 = PKPassFrontFaceContentSizeForScreenSize(v90, a8);
    v272.origin.x = rect;
    v272.origin.y = v158;
    v272.size.height = v159;
    v272.size.width = v160;
    if (!CGRectIsNull(v272))
    {
      v273.origin.x = rect;
      v273.origin.y = v158;
      v273.size.height = v159;
      v273.size.width = v160;
      v94 = fmax(CGRectGetMaxY(v273), v94);
    }

    v274.origin.y = rect_8;
    v274.origin.x = rect_16;
    v274.size.height = rect_24;
    v274.size.width = v170;
    if (!CGRectIsNull(v274))
    {
      v275.origin.y = rect_8;
      v275.origin.x = rect_16;
      v275.size.height = rect_24;
      v275.size.width = v170;
      v94 = fmax(CGRectGetMaxY(v275), v94);
    }

    v276.origin.x = v163;
    v276.origin.y = v164;
    v276.size.height = v161;
    v276.size.width = v162;
    if (!CGRectIsEmpty(v276))
    {
      v277.origin.x = v163;
      v277.origin.y = v164;
      v277.size.height = v161;
      v277.size.width = v162;
      v94 = fmax(CGRectGetMaxY(v277), v94);
    }

    v91 = v96 + v94;
  }

  v97 = PKSizeRoundToPixelWithScale(v92, v91, 0.0);
  v99 = v98;
  v139 = v61;
  v141 = a8;
  contexta = a9;
  v152 = PKPassFrontFaceEdgeStyle(v150);
  v100 = *MEMORY[0x1E695EFF8];
  v101 = *(MEMORY[0x1E695EFF8] + 8);
  v102 = v97 + 24.0;
  v103 = v99 + 8.0;
  v104 = a10 != 1.0 && a10 > 0.0;
  v153 = a10;
  v140 = v50;
  v138 = v60;
  v105 = v49;
  if (v104)
  {
    v132 = a10 * v100;
    v133 = a10 * v101;
    v106 = a10 * v102;
    v107 = a10 * v103;
    v108 = a10 * 12.0;
    v109 = a10 * 4.0;
    v134 = a10 * v99;
    v135 = a10 * v97;
    v110 = a10 * v103;
    v111 = a10 * v102;
    v136 = v108;
    v137 = v109;
  }

  else
  {
    v106 = a10 * v102;
    v107 = a10 * v103;
    v109 = a10 * 4.0;
    v110 = v99 + 8.0;
    v112 = a10;
    v111 = v97 + 24.0;
    v136 = 12.0;
    v137 = 4.0;
    v108 = v112 * 12.0;
    v132 = *MEMORY[0x1E695EFF8];
    v133 = *(MEMORY[0x1E695EFF8] + 8);
    v134 = v99;
    v135 = v97;
  }

  v113 = ceil(v106);
  if (!v104)
  {
    v113 = v97 + 24.0;
  }

  v114 = ceil(v107);
  if (!v104)
  {
    v114 = v99 + 8.0;
  }

  v115 = vcvtpd_u64_f64(v109);
  if (v104)
  {
    v116 = v115;
  }

  else
  {
    v116 = 4;
  }

  v117 = vcvtpd_u64_f64(v108);
  if (v104)
  {
    v118 = v117;
  }

  else
  {
    v118 = 12;
  }

  result = [PKBitmapContext create16FloatWithSize:v113 configuration:v114, 65538];
  v120 = result;
  if (result)
  {
    v172[0] = MEMORY[0x1E69E9820];
    v172[1] = 3221225472;
    v172[2] = __PKPassFrontFaceImageForScreenSize_block_invoke;
    v172[3] = &unk_1E79DF260;
    v229 = v104;
    v183 = v153;
    v131 = v26;
    v173 = v131;
    v184 = v100;
    v185 = v101;
    v186 = v97 + 24.0;
    v187 = v99 + 8.0;
    v230 = v155;
    v121 = v36;
    v174 = v121;
    v188 = xmmword_1ADB9AF00;
    v189 = v97;
    v190 = v99;
    v191 = v150;
    v192 = document;
    v122 = v120;
    v193 = v132;
    v194 = v133;
    v195 = v111;
    v196 = v110;
    v175 = v122;
    v180 = v235;
    v181 = v234;
    v197 = xmmword_1ADB9AF10;
    v198 = xmmword_1ADB9AF10;
    v199 = v97;
    v200 = v99;
    v201 = v141;
    v202 = contexta;
    v123 = v157;
    v176 = v123;
    v231 = v105;
    v124 = v37;
    v177 = v124;
    v125 = v142;
    v203 = rect;
    v204 = v158;
    v205 = v160;
    v206 = v159;
    v232 = v140;
    v178 = v125;
    v182 = &v237;
    v207 = rect_16;
    v208 = rect_8;
    v209 = v170;
    v210 = rect_24;
    v233 = v138;
    v211 = v156;
    v212 = v139;
    v213 = v146;
    v214 = v163;
    v215 = v164;
    v216 = v162;
    v217 = v161;
    v126 = v59;
    v179 = v126;
    v218 = v136;
    v219 = v137;
    v220 = v135;
    v221 = v134;
    v222 = v116;
    v223 = v118;
    v224 = v116;
    v225 = v118;
    v226 = v154;
    v227 = v152;
    v228 = a6;
    [v122 accessContext:v172];
    if (document)
    {
      CGPDFDocumentRelease(document);
    }

    if (v143)
    {
      *v143 = rect;
      v143[1] = v158;
      v143[2] = v160;
      v143[3] = v159;
    }

    if (v144)
    {
      *v144 = v163;
      v144[1] = v164;
      v144[2] = v162;
      v144[3] = v161;
    }

    if (v145)
    {
      *v145 = rect_16;
      v145[1] = rect_8;
      v145[2] = v170;
      v145[3] = rect_24;
    }

    v127 = [PKBitmapConversionDescriptor create8Uint:rect_16];
    [v127 setColorSpace:v154 withPolicy:&__block_literal_global_102];
    v128 = [v127 convertFromContext:v122];
    aBlock = 0;
    p_aBlock = &aBlock;
    v245 = 0x3032000000;
    v246 = __Block_byref_object_copy__67;
    v247 = __Block_byref_object_dispose__67;
    v248 = 0;
    v171[0] = MEMORY[0x1E69E9820];
    v171[1] = 3221225472;
    v171[2] = __PKPassFrontFaceImageForScreenSize_block_invoke_8_103;
    v171[3] = &unk_1E79DF2A8;
    v171[4] = &aBlock;
    *&v171[5] = v153;
    [v128 accessContext:v171];
    _ConstructionInsetsForEdgeStyle(v152);
    v130 = [*(p_aBlock + 40) resizableImageByTilingWithCapInsets:{v103 - v129, 0.0, v129, 0.0}];
    _Block_object_dispose(&aBlock, 8);

    _Block_object_dispose(v234, 8);
    _Block_object_dispose(v235, 8);

    _Block_object_dispose(&v237, 8);

    return v130;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1AD991FE4(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x388], 8);
  _Block_object_dispose(&STACK[0x3A8], 8);
  _Block_object_dispose(&STACK[0x3C8], 8);
  _Unwind_Resume(a1);
}

void __PKPassFrontFaceImageForScreenSize_block_invoke(uint64_t a1, CGContextRef c)
{
  v491 = *MEMORY[0x1E69E9840];
  if (*(a1 + 504) == 1)
  {
    CGContextScaleCTM(c, *(a1 + 112), *(a1 + 112));
    CGContextGetCTM(&v484, c);
    CGContextSetBaseCTM();
  }

  v4 = objc_autoreleasePoolPush();
  v5 = [*(a1 + 32) backgroundColor];
  v6 = [*(a1 + 32) secondaryBackgroundColor];
  if (v5)
  {
    v7 = v5;
    CopyWithAlpha = CGColorCreateCopyWithAlpha([v5 CGColor], 1.0);
  }

  else
  {
    v9 = [PKColor colorWithR:0.0 G:0.0 B:0.0 A:1.0];
    v10 = v9;
    CopyWithAlpha = CGColorRetain([v9 CGColor]);
  }

  CGContextSaveGState(c);
  CGContextSetBlendMode(c, kCGBlendModeCopy);
  CGContextSetFillColorWithColor(c, CopyWithAlpha);
  CGContextFillRect(c, *(a1 + 120));
  CGContextRestoreGState(c);
  CGColorRelease(CopyWithAlpha);
  if (*(a1 + 505) == 1)
  {
    v11 = *(a1 + 40);
    if (v11)
    {
      [v11 size];
      v13 = v12;
      v15 = v14;
      v16 = *(a1 + 168);
      v17 = *(a1 + 176);
      v18 = v16 / v13;
      if (v13 == 0.0)
      {
        v18 = 1.0;
      }

      v19 = v17 / v15;
      if (v15 == 0.0)
      {
        v19 = 1.0;
      }

      if (fmax(v18, v19) == 1.0)
      {
        v17 = v15;
        v16 = v13;
      }

      else if (v18 <= v19)
      {
        v16 = v17 * (v13 / v15);
      }

      else
      {
        v17 = v16 * (v15 / v13);
      }

      v36 = PKSizeCeilToPixelWithScale(v16, v17, *(a1 + 112));
      if (*(a1 + 184) == 9)
      {
        v38 = 1;
      }

      else
      {
        v38 = 0x100000001;
      }

      v27 = PKSizeAlignedInRectWithScale(v38, v36, v37, *(a1 + 152), *(a1 + 160), *(a1 + 168), *(a1 + 176), *(a1 + 112));
      v28 = v39;
      v29 = v40;
      v30 = v41;
      [*(a1 + 40) drawInRect:c inContext:?];
    }

    else
    {
      v27 = *MEMORY[0x1E695F050];
      v28 = *(MEMORY[0x1E695F050] + 8);
      v29 = *(MEMORY[0x1E695F050] + 16);
      v30 = *(MEMORY[0x1E695F050] + 24);
      v31 = *(a1 + 192);
      if (v31)
      {
        if (CGPDFDocumentGetNumberOfPages(v31))
        {
          Page = CGPDFDocumentGetPage(*(a1 + 192), 1uLL);
          if (Page)
          {
            v27 = *(a1 + 152);
            v28 = *(a1 + 160);
            v29 = *(a1 + 168);
            v30 = *(a1 + 176);
            _DrawPDFPageInRect(c, Page, v27, v28, v29, v30);
          }
        }
      }
    }

    v500.origin.x = v27;
    v500.origin.y = v28;
    v500.size.width = v29;
    v500.size.height = v30;
    if (!CGRectIsEmpty(v500))
    {
      v42 = *(a1 + 184);
      if (v42 != 6 && v42 != 9)
      {
        v501.origin.x = v27;
        v501.origin.y = v28;
        v501.size.width = v29;
        v501.size.height = v30;
        v502 = CGRectIntersection(v501, *(a1 + 120));
        if (*(a1 + 504) == 1)
        {
          v43 = *(a1 + 112);
          v502.origin.x = v502.origin.x * v43;
          v502.origin.y = v502.origin.y * v43;
          v502.size.width = v502.size.width * v43;
          v502.size.height = v502.size.height * v43;
        }

        v503 = CGRectIntegral(v502);
        v44 = vcvtpd_s64_f64(*(a1 + 112) * 7.0);
        v45 = *(a1 + 48);
        v474[0] = MEMORY[0x1E69E9820];
        v474[1] = 3221225472;
        v474[2] = __PKPassFrontFaceImageForScreenSize_block_invoke_2;
        v474[3] = &__block_descriptor_100_e79_v24__0r__vImage_CGImageFormat_II__CGColorSpace_II_di_8r__vImage_Buffer__vQQQ_16l;
        v475 = v503;
        *&v503.origin.y = *(a1 + 216);
        v476 = *(a1 + 200);
        v477 = *&v503.origin.y;
        v478 = v44;
        [v45 accessData:v474];
      }
    }
  }

  else
  {
    v20 = v5;
    v21 = [v5 CGColor];
    v22 = v6;
    _DrawColorInRect(c, v21, [v6 CGColor], *(a1 + 152), *(a1 + 160), *(a1 + 168), *(a1 + 176));
    *(*(*(a1 + 88) + 8) + 24) = 1;
    v23 = v5;
    v24 = [v5 CGColor];
    if (v24)
    {
      v25 = PKColorGetRelativeLuminance(v24) / 100.0;
      if (v25 <= 0.00885645168)
      {
        v26 = v25 * 7.78703704 + 0.137931034;
      }

      else
      {
        v26 = pow(v25, 0.333333333);
      }

      v33 = (v26 * 116.0 + -16.0) / 100.0;
    }

    else
    {
      v33 = 0.0;
    }

    *(*(*(a1 + 96) + 8) + 24) = v33;
    v34 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = *(*(*(a1 + 96) + 8) + 24);
      LODWORD(v484.a) = 134217984;
      *(&v484.a + 4) = v35;
      _os_log_impl(&dword_1AD337000, v34, OS_LOG_TYPE_DEFAULT, "Color sampled for lightness: %f.", &v484, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v4);
  CGContextSaveGState(c);
  CGContextTranslateCTM(c, *(a1 + 240), *(a1 + 232));
  v46 = *(a1 + 264);
  rect = *(a1 + 272);
  v51 = _FrontFacePartialBlurRect(*(a1 + 184), *(a1 + 280), *(a1 + 288), v47, v48, v49, v50);
  v336 = v52;
  v338 = v51;
  v332 = v54;
  v334 = v53;
  v55 = [*(a1 + 32) suppressesHeaderDarkening];
  v57 = *MEMORY[0x1E695EFF8];
  v56 = *(MEMORY[0x1E695EFF8] + 8);
  if (v55 || *(a1 + 184) != 9)
  {
    v342 = *(MEMORY[0x1E695F050] + 8);
    v343 = *(MEMORY[0x1E695F050] + 16);
    v340 = *MEMORY[0x1E695F050];
    v341 = *(MEMORY[0x1E695F050] + 24);
  }

  else
  {
    v58 = *(a1 + 112);
    v59 = PKGetMaxPassWidthForScreenSize(*(a1 + 280));
    v60 = v58;
    if (v58 == 0.0)
    {
      v60 = PKScreenScale();
    }

    _ZF = v60 == 0.0;
    v61 = round(v59);
    v62 = round(v59 * v60) / v60;
    if (_ZF)
    {
      v62 = v61;
    }

    v343 = v62;
    if (v58 == 0.0)
    {
      v58 = PKScreenScale();
    }

    v63 = round(v59 / 358.0 * 448.0) / 3.0;
    if (v58 == 0.0)
    {
      v341 = round(v63);
      v342 = v56;
      v340 = v57;
    }

    else
    {
      v340 = v57;
      v341 = round(v63 * v58) / v58;
      v342 = v56;
    }
  }

  v64 = objc_alloc_init(MEMORY[0x1E695DF70]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __PKPassFrontFaceImageForScreenSize_block_invoke_42;
  aBlock[3] = &unk_1E79DF0F8;
  v466 = v338;
  v467 = v336;
  v468 = v334;
  v469 = v332;
  v470 = v340;
  v471 = v342;
  v472 = v343;
  v473 = v341;
  v330 = v64;
  v465 = v330;
  v331 = _Block_copy(aBlock);
  if (*(a1 + 184) == 6)
  {
    v65 = _PKPassDictionaryFromBundle(*(a1 + 56));
    v66 = [*(a1 + 56) bundleURL];
    constraints_8 = PKPrivateObjectDictionaryWithError(v66, 0);

    v67 = *(a1 + 264);
    v68 = PKPaymentPassContentInsetsForScreenSize(*(a1 + 280));
    v70 = v69;
    v72 = v71;
    v74 = v73;
    v463[0] = MEMORY[0x1E69E9820];
    v463[1] = 3221225472;
    v463[2] = __PKPassFrontFaceImageForScreenSize_block_invoke_2_44;
    v463[3] = &__block_descriptor_40_e8_d16__0d8l;
    attrString = v67 / 375.0;
    *&v463[4] = v67 / 375.0;
    v75 = _Block_copy(v463);
    v76 = v75;
    v77 = v57 + v70;
    v78 = v56 + v68;
    v79 = v70 + v74;
    constraints = v46 - v79;
    recta = rect - (v68 + v72);
    if (*(a1 + 506) != 1)
    {
      goto LABEL_63;
    }

    v80 = *(a1 + 264);
    v81 = v75 + 2;
    v82 = v75[2](v75, 69.0);
    v83 = (*v81)(v76, 112.0);
    v84 = (*v81)(v76, 69.0);
    v484.a = v77;
    v484.b = v78;
    v85 = constraints;
    v484.c = constraints;
    v86 = recta;
    v484.d = recta;
    v87 = *(MEMORY[0x1E695F058] + 16);
    slice.origin = *MEMORY[0x1E695F058];
    slice.size = v87;
    memset(&remainder, 0, sizeof(remainder));
    v88 = v77;
    v87.width = v78;
    CGRectDivide(*(&v85 - 2), &slice, &v484, v82, CGRectMinYEdge);
    v89 = PKSizeAlignedInRectWithScale(0x100000001uLL, v80 - v79, v82, slice.origin.x, slice.origin.y, slice.size.width, slice.size.height, *(a1 + 112));
    v91 = v90;
    v93 = v92;
    v95 = v94;
    v96 = _FetchImageNamed(@"cobrandLogo", *(a1 + 56), *(a1 + 64), *(a1 + 112));
    v97 = v96;
    if (v96)
    {
      v454[0] = MEMORY[0x1E69E9820];
      v454[1] = 3221225472;
      v454[2] = __PKPassFrontFaceImageForScreenSize_block_invoke_3;
      v454[3] = &unk_1E79DF120;
      v456 = c;
      v455 = v96;
      v457 = v89;
      v458 = v91;
      v459 = v93;
      v460 = v95;
      v461 = *(a1 + 112);
      v331[2](v331, v454, v89, v91, v93, v95);

      v98 = 1;
    }

    else
    {
      v98 = 0;
    }

    v99 = _FetchImageNamed(@"bankLogo", *(a1 + 56), *(a1 + 64), *(a1 + 112));

    if (v99)
    {
      v446[0] = MEMORY[0x1E69E9820];
      v446[1] = 3221225472;
      v446[2] = __PKPassFrontFaceImageForScreenSize_block_invoke_4;
      v446[3] = &unk_1E79DF120;
      v448 = c;
      v447 = v99;
      v449 = v89;
      v450 = v91;
      v451 = v93;
      v452 = v95;
      v453 = *(a1 + 112);
      v331[2](v331, v446, v89, v91, v93, v95);

      v98 = 1;
    }

    v504.origin.x = v484.a;
    v504.origin.y = v484.b;
    v504.size.width = v484.c;
    v504.size.height = v484.d;
    CGRectDivide(v504, &slice, &v484, v84, CGRectMaxYEdge);
    CGRectDivide(slice, &slice, &remainder, v83, CGRectMaxXEdge);
    v100 = PKSizeAlignedInRectWithScale(0x100000001uLL, v83, v84, slice.origin.x, slice.origin.y, slice.size.width, slice.size.height, *(a1 + 112));
    v102 = v101;
    v104 = v103;
    v106 = v105;
    v107 = _FetchImageNamed(@"networkLogo", *(a1 + 56), *(a1 + 64), *(a1 + 112));

    if (v107)
    {
      v438[0] = MEMORY[0x1E69E9820];
      v438[1] = 3221225472;
      v438[2] = __PKPassFrontFaceImageForScreenSize_block_invoke_5;
      v438[3] = &unk_1E79DF120;
      v440 = c;
      v108 = v107;
      v439 = v108;
      v441 = v100;
      v442 = v102;
      v443 = v104;
      v444 = v106;
      v445 = *(a1 + 112);
      v331[2](v331, v438, v100, v102, v104, v106);
      v109 = v439;
LABEL_61:

      goto LABEL_63;
    }

    if (v98)
    {
LABEL_63:
      v110 = [v65 objectForKeyedSubscript:{@"paymentApplications", v301}];
      v488 = 0u;
      v489 = 0u;
      memset(&slice, 0, sizeof(slice));
      v111 = v110;
      v112 = [v111 countByEnumeratingWithState:&slice objects:&v484 count:16];
      if (v112)
      {
        v113 = **&slice.size.width;
LABEL_65:
        v114 = 0;
        while (1)
        {
          if (**&slice.size.width != v113)
          {
            objc_enumerationMutation(v111);
          }

          v115 = [*(*&slice.origin.y + 8 * v114) objectForKeyedSubscript:@"paymentType"];
          v116 = v115;
          if (v115)
          {
            break;
          }

          if (v112 == ++v114)
          {
            v112 = [v111 countByEnumeratingWithState:&slice objects:&v484 count:16];
            if (v112)
            {
              goto LABEL_65;
            }

            goto LABEL_71;
          }
        }

        v117 = PKPaymentMethodTypeForString(v115);

        _ZF = (v117 - 1001) > 3 || v117 == 1002;
        if (_ZF)
        {
          goto LABEL_77;
        }

LABEL_105:

        if (*(a1 + 184) == 6)
        {
          goto LABEL_115;
        }

        goto LABEL_106;
      }

LABEL_71:

LABEL_77:
      v119 = [v65 objectForKeyedSubscript:@"cardType"];
      v120 = PKPaymentCardTypeFromString(v119);

      if (v120 == 3)
      {
        goto LABEL_105;
      }

      v121 = [*(a1 + 32) foregroundColor];
      v122 = PKGetMaxPassWidthForScreenSize(*(a1 + 280));
      v123 = [v65 objectForKeyedSubscript:@"sanitizedPrimaryAccountName"];

      v124 = round(v122 / 375.0 * 17.0 + v122 / 375.0 * 17.0) * 0.5;
      if (v123)
      {
        context = objc_autoreleasePoolPush();
        v125 = v121;
        v126 = [v121 CGColor];
        v127 = [v65 objectForKeyedSubscript:@"sanitizedPrimaryAccountName"];
        if (v127)
        {
          v128 = objc_alloc(MEMORY[0x1E696AAB0]);
          v129 = _PANStringAttributes(v126, 0, v124);
          v130 = [v128 initWithString:v127 attributes:v129];
        }

        else
        {
          v130 = 0;
        }

        v178 = CTFramesetterCreateWithAttributedString(v130);
        v494.length = [(__CFAttributedString *)v130 length];
        v494.location = 0;
        v497.width = constraints;
        v497.height = recta;
        v179 = CTFramesetterSuggestFrameSizeWithConstraints(v178, v494, 0, v497, 0);
        v180 = PKSizeCeilToPixelWithScale(v179.width, v179.height, 0.0);
        v182 = v181;
        v506.origin.x = v77;
        v506.origin.y = v78;
        v506.size.width = constraints;
        v506.size.height = recta;
        v183 = CGRectGetMaxY(v506) - v182;
        v415[0] = MEMORY[0x1E69E9820];
        v415[1] = 3221225472;
        v415[2] = __PKPassFrontFaceImageForScreenSize_block_invoke_8;
        v415[3] = &unk_1E79DF120;
        v417 = c;
        v157 = v130;
        v416 = v157;
        v418 = v77;
        v419 = v183;
        v420 = v180;
        v421 = v182;
        v422 = v178;
        v331[2](v331, v415, v77, v183, v180, v182);
        CFRelease(v178);
        v158 = v416;
      }

      else
      {
        v131 = [v65 objectForKeyedSubscript:@"primaryAccountSuffix"];
        if (!v131)
        {
          goto LABEL_104;
        }

        v132 = [v65 objectForKeyedSubscript:@"dynamicLayerConfiguration"];
        v133 = v132 == 0;

        if (!v133)
        {
          goto LABEL_104;
        }

        context = objc_autoreleasePoolPush();
        v134 = v121;
        v135 = [v121 CGColor];
        v136 = objc_alloc(MEMORY[0x1E696AAB0]);
        v137 = PKPANMask();
        v138 = _PANStringAttributes(v135, 1, v124);
        attrStringa = [v136 initWithString:v137 attributes:v138];

        v139 = v121;
        v140 = [v121 CGColor];
        v141 = v65;
        v142 = [v141 objectForKeyedSubscript:@"primaryAccountSuffix"];
        v311 = objc_alloc(MEMORY[0x1E696AAB0]);
        v143 = v142;
        if (!v142)
        {
          v143 = _PKPaymentPassDefaultSuffixFromDictionary(v141);
        }

        v144 = _PANStringAttributes(v140, v142 == 0, v124);
        v312 = [(__CFAttributedString *)v311 initWithString:v143 attributes:v144];

        if (!v142)
        {
        }

        framesettera = CTFramesetterCreateWithAttributedString(attrStringa);
        v305 = CTFramesetterCreateWithAttributedString(v312);
        v492.length = [(__CFAttributedString *)attrStringa length];
        v492.location = 0;
        v495.width = constraints;
        v495.height = recta;
        v145 = CTFramesetterSuggestFrameSizeWithConstraints(framesettera, v492, 0, v495, 0);
        v146 = PKSizeCeilToPixelWithScale(v145.width, v145.height, 0.0);
        v148 = v147;
        v493.length = [(__CFAttributedString *)v312 length];
        v149 = v146 + 6.0;
        v496.width = constraints - (v146 + 6.0);
        v493.location = 0;
        v496.height = recta;
        v150 = CTFramesetterSuggestFrameSizeWithConstraints(v305, v493, 0, v496, 0);
        v151 = PKSizeCeilToPixelWithScale(v150.width, v150.height, 0.0);
        v153 = v152;
        v505.origin.x = v77;
        v505.origin.y = v78;
        v505.size.width = constraints;
        v505.size.height = recta;
        v154 = v149 + v151;
        v155 = fmax(v148, v153);
        v156 = CGRectGetMaxY(v505) - v155;
        v407[0] = MEMORY[0x1E69E9820];
        v407[1] = 3221225472;
        v407[2] = __PKPassFrontFaceImageForScreenSize_block_invoke_9;
        v407[3] = &unk_1E79DF120;
        v409 = c;
        v157 = attrStringa;
        v408 = v157;
        v410 = v77;
        v411 = v156;
        v412 = v154;
        v413 = v155;
        v414 = framesettera;
        v331[2](v331, v407, v77, v156, v154, v155);
        v399[0] = MEMORY[0x1E69E9820];
        v399[1] = 3221225472;
        v399[2] = __PKPassFrontFaceImageForScreenSize_block_invoke_10;
        v399[3] = &unk_1E79DF120;
        v401 = c;
        v158 = v312;
        v400 = v158;
        v402 = v77 + v149;
        v403 = v156;
        v404 = v154 - v149;
        v405 = v155;
        v406 = v305;
        v331[2](v331, v399, v77 + v149, v156, v154 - v149, v155);
        CFRelease(framesettera);
        CFRelease(v305);
      }

      objc_autoreleasePoolPop(context);
LABEL_104:

      goto LABEL_105;
    }

    v159 = [*(a1 + 32) foregroundColor];
    v160 = v159;
    v304 = [v159 CGColor];
    v161 = v159;
    v162 = v65;
    v163 = constraints_8;
    v313 = v162;
    v164 = v162;
    v165 = v161;
    framesetter = [(__CFAttributedString *)v164 objectForKey:@"paymentCard"];
    v306 = [v163 objectForKey:@"paymentCard"];

    v166 = [(__CTFramesetter *)framesetter objectForKey:@"auxiliaryFields"];
    if (![v166 count])
    {
      v167 = [(__CTFramesetter *)v306 objectForKey:@"auxiliaryFields"];

      v166 = v167;
    }

    v168 = [(__CTFramesetter *)framesetter objectForKey:@"headerFields"];
    if (![v168 count])
    {
      v169 = [(__CTFramesetter *)v306 objectForKey:@"headerFields"];

      v168 = v169;
    }

    v170 = [(__CFAttributedString *)v313 objectForKeyedSubscript:@"topLeftBackgroundTitle"];
    v171 = [(__CFAttributedString *)v313 objectForKeyedSubscript:@"topRightBackgroundTitle"];
    if ([v166 count])
    {
      goto LABEL_93;
    }

    v108 = 0;
    if ([v168 count] || v170 || v171)
    {
      goto LABEL_94;
    }

    v303 = [(__CFAttributedString *)v313 objectForKeyedSubscript:@"description"];
    if (v303 || ([(__CFAttributedString *)v313 objectForKeyedSubscript:@"organizationName"], (v303 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v301 = objc_alloc(MEMORY[0x1E696AAB0]);
      v479 = 4;
      settings.spec = kCTParagraphStyleSpecifierLineBreakMode;
      settings.valueSize = 1;
      settings.value = &v479;
      cf = CTParagraphStyleCreate(&settings, 1uLL);
      UIFontForLanguage = CTFontCreateUIFontForLanguage(kCTFontUIFontEmphasizedSystem, round(attrString * 18.0 + attrString * 18.0) * 0.5, 0);
      v296 = *MEMORY[0x1E69659D8];
      v481[0] = *MEMORY[0x1E6965A30];
      v481[1] = v296;
      v482[0] = cf;
      v482[1] = v304;
      v481[2] = *MEMORY[0x1E6965658];
      v482[2] = UIFontForLanguage;
      attrStringc = [MEMORY[0x1E695DF20] dictionaryWithObjects:v482 forKeys:v481 count:3];
      CFRelease(UIFontForLanguage);
      CFRelease(cf);
      v108 = [v301 initWithString:v303 attributes:attrStringc];
    }

    else
    {
LABEL_93:
      v108 = 0;
    }

LABEL_94:

    if (v108)
    {
      v431[0] = MEMORY[0x1E69E9820];
      v431[1] = 3221225472;
      v431[2] = __PKPassFrontFaceImageForScreenSize_block_invoke_6;
      v431[3] = &unk_1E79DF148;
      v433 = c;
      v432 = v108;
      v434 = v77;
      v435 = v78;
      v436 = constraints;
      v437 = recta;
      (v331[2])(v331, v431, v77, v78);
    }

    v172 = _PKPaymentPassNetworkIdentifierFromDictionary(v313);
    v109 = v172;
    if (v172)
    {
      v173 = [v172 integerValue] - 1;
      if (v173 <= 0x12 && ((0x5DD0Fu >> v173) & 1) != 0)
      {
        v174 = off_1E79DF438[v173];
        v175 = PKPassKitCoreBundle();
        v176 = _FetchImageNamed(v174, v175, *(a1 + 64), *(a1 + 112));

        if (v176)
        {
          v423[0] = MEMORY[0x1E69E9820];
          v423[1] = 3221225472;
          v423[2] = __PKPassFrontFaceImageForScreenSize_block_invoke_7;
          v423[3] = &unk_1E79DF120;
          v425 = c;
          v177 = v176;
          v424 = v177;
          v426 = v100;
          v427 = v102;
          v428 = v104;
          v429 = v106;
          v430 = *(a1 + 112);
          v331[2](v331, v423, v100, v102, v104, v106);
        }
      }
    }

    goto LABEL_61;
  }

LABEL_106:
  v184 = objc_autoreleasePoolPush();
  if (*(a1 + 72) && !CGRectIsNull(*(a1 + 296)))
  {
    v394[0] = MEMORY[0x1E69E9820];
    v394[1] = 3221225472;
    v394[2] = __PKPassFrontFaceImageForScreenSize_block_invoke_11;
    v394[3] = &unk_1E79DF148;
    v185 = *(a1 + 72);
    v186 = *(a1 + 312);
    v396 = *(a1 + 296);
    v397 = v186;
    v395 = v185;
    v398 = c;
    v331[2](v331, v394, *(a1 + 296), *(a1 + 304), *(a1 + 312), *(a1 + 320));
  }

  objc_autoreleasePoolPop(v184);
  v187 = objc_autoreleasePoolPush();
  if (*(a1 + 507) == 1)
  {
    v188 = *(*(*(a1 + 104) + 8) + 40);
    v189 = [PKImageResizingConstraints constraintsWithAspectFillToSize:*(a1 + 344), *(a1 + 352)];
    v190 = [v188 resizedImageWithConstraints:v189];
    v191 = *(*(a1 + 104) + 8);
    v192 = *(v191 + 40);
    *(v191 + 40) = v190;

    v390[0] = MEMORY[0x1E69E9820];
    v390[1] = 3221225472;
    v390[2] = __PKPassFrontFaceImageForScreenSize_block_invoke_12;
    v390[3] = &unk_1E79DF170;
    v193 = *(a1 + 104);
    v194 = *(a1 + 344);
    v391 = *(a1 + 328);
    v392 = v194;
    v390[4] = v193;
    v393 = c;
    v331[2](v331, v390, *(a1 + 328), *(a1 + 336), *(a1 + 344), *(a1 + 352));
  }

  objc_autoreleasePoolPop(v187);
  v195 = objc_autoreleasePoolPush();
  if (*(a1 + 508) == 1)
  {
    v196 = *(a1 + 360);
    v197 = *(a1 + 368);
    if (v196 != *MEMORY[0x1E695F060] || v197 != *(MEMORY[0x1E695F060] + 8))
    {
      v206 = *(a1 + 376);
      if (v206)
      {
        if (v206 == 1)
        {
          v258 = *(a1 + 384);
          v259 = *(a1 + 392);
          v260 = *(a1 + 400);
          v261 = *(a1 + 408);
          v262 = [PKImage passesImageNamed:@"Generic_ThumbnailFrame"];
          v263 = [v262 resizableImageByTilingCenterPixel];

          v370[0] = MEMORY[0x1E69E9820];
          v370[1] = 3221225472;
          v370[2] = __PKPassFrontFaceImageForScreenSize_block_invoke_3_93;
          v370[3] = &unk_1E79DF1E8;
          __asm { FMOV            V0.2D, #5.0 }

          rectc = vaddq_f64(*(a1 + 384), _Q0);
          __asm { FMOV            V0.2D, #-5.0 }

          constraints_8b = vaddq_f64(vaddq_f64(*(a1 + 400), _Q0), xmmword_1ADB9AF20);
          v269 = v263;
          v371 = v269;
          v373 = v258;
          v374 = v259;
          v375 = v260;
          v376 = v261;
          v377 = c;
          v372 = *(a1 + 80);
          v378 = rectc;
          v379 = constraints_8b;
          v331[2](v331, v370, v258, v259, v260, v261);
        }

        else if (v206 == 2)
        {
          v207 = *(a1 + 400);
          v208 = *(a1 + 408);
          v209 = v207 / v196;
          if (v196 == 0.0)
          {
            v209 = 1.0;
          }

          v210 = v208 / v197;
          if (v197 == 0.0)
          {
            v210 = 1.0;
          }

          if (fmax(v209, v210) == 1.0)
          {
            v208 = *(a1 + 368);
            v207 = *(a1 + 360);
          }

          else if (v209 <= v210)
          {
            v207 = v196 / v197 * v208;
          }

          else
          {
            v208 = v197 / v196 * v207;
          }

          v272 = PKSizeCeilToPixelWithScale(v207, v208, *(a1 + 112));
          v274 = v273;
          b = COERCE_DOUBLE(&v484);
          v484.a = 0.0;
          *&v484.b = &v484;
          *&v484.c = 0x4010000000;
          *&v484.d = &unk_1ADC7D092;
          v276 = *(MEMORY[0x1E695F050] + 16);
          *&v484.tx = *MEMORY[0x1E695F050];
          v485 = v276;
          if (*(a1 + 360) != *(a1 + 368))
          {
            v277 = objc_autoreleasePoolPush();
            v278 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.PassKitCoreXPCService"];
            v279 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F247CE48];
            [v278 setRemoteObjectInterface:v279];

            [v278 resume];
            v280 = [v278 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_188];
            v281 = [*(a1 + 80) imageData];
            v389[0] = MEMORY[0x1E69E9820];
            v389[1] = 3221225472;
            v389[2] = __PKPassFrontFaceImageForScreenSize_block_invoke_87;
            v389[3] = &unk_1E79DF198;
            v389[4] = &v484;
            [v280 faceBoundingBoxForImageData:v281 withReply:v389];

            [v278 invalidate];
            objc_autoreleasePoolPop(v277);
            IsNull = CGRectIsNull(*(*&v484.b + 32));
            b = v484.b;
            if (!IsNull)
            {
              *(*&v484.b + 40) = 1.0 - *(*&v484.b + 40) - *(*&v484.b + 56);
            }
          }

          if (CGRectIsNull(*(*&b + 32)))
          {
            v283 = PKSizeAlignedInRectWithScale(0x100000001uLL, v272, v274, *(a1 + 384), *(a1 + 392), *(a1 + 400), *(a1 + 408), *(a1 + 112));
            v285 = v284;
            v272 = v286;
            v274 = v287;
          }

          else
          {
            v524 = *(a1 + 384);
            v288 = v274 * *(*&v484.b + 56) / v524.size.height;
            MidX = CGRectGetMidX(v524);
            v290 = CGRectGetMidX(*(*&v484.b + 32));
            if (v288 <= 0.6)
            {
              MidY = CGRectGetMidY(*(a1 + 384));
              MaxY = CGRectGetMidY(*(*&v484.b + 32));
            }

            else
            {
              v291 = *(a1 + 392);
              v292 = *(a1 + 408);
              MaxY = CGRectGetMaxY(*(*&v484.b + 32));
              MidY = v291 + (1.0 - fmin((1.0 - v288) * 0.5, 0.1)) * v292;
            }

            v297 = MidX - v290 * v272;
            v285 = MidY - MaxY * v274;
            if (v297 <= *(a1 + 384))
            {
              v283 = v297;
            }

            else
            {
              v283 = *(a1 + 384);
            }

            v525.origin.x = v283;
            v525.origin.y = v285;
            v525.size.width = v272;
            v525.size.height = v274;
            MaxX = CGRectGetMaxX(v525);
            if (MaxX < CGRectGetMaxX(*(a1 + 384)))
            {
              v283 = CGRectGetMaxX(*(a1 + 384)) - v272;
            }

            if (v285 > *(a1 + 392))
            {
              v285 = *(a1 + 392);
            }

            v526.origin.x = v283;
            v526.origin.y = v285;
            v526.size.width = v272;
            v526.size.height = v274;
            v299 = CGRectGetMaxY(v526);
            if (v299 < CGRectGetMaxY(*(a1 + 384)))
            {
              v285 = CGRectGetMaxY(*(a1 + 384)) - v274;
            }
          }

          v380[0] = MEMORY[0x1E69E9820];
          v380[1] = 3221225472;
          v380[2] = __PKPassFrontFaceImageForScreenSize_block_invoke_2_89;
          v380[3] = &unk_1E79DF1C0;
          v382 = c;
          v300 = *(a1 + 400);
          v383 = *(a1 + 384);
          v384 = v300;
          v381 = *(a1 + 80);
          v385 = v283;
          v386 = v285;
          v387 = v272;
          v388 = v274;
          v331[2](v331, v380, *(a1 + 384), *(a1 + 392), *(a1 + 400), *(a1 + 408));

          _Block_object_dispose(&v484, 8);
        }
      }

      else
      {
        v365[0] = MEMORY[0x1E69E9820];
        v365[1] = 3221225472;
        v365[2] = __PKPassFrontFaceImageForScreenSize_block_invoke_4_94;
        v365[3] = &unk_1E79DF148;
        v270 = *(a1 + 80);
        v271 = *(a1 + 400);
        v367 = *(a1 + 384);
        v368 = v271;
        v366 = v270;
        v369 = c;
        v331[2](v331, v365, *(a1 + 384), *(a1 + 392), *(a1 + 400), *(a1 + 408));
      }
    }
  }

  objc_autoreleasePoolPop(v195);
LABEL_115:
  CGContextRestoreGState(c);
  v507.origin.y = v336;
  v507.origin.x = v338;
  v507.size.height = v332;
  v507.size.width = v334;
  if (!CGRectIsEmpty(v507))
  {
    v508.origin.y = v336;
    v508.origin.x = v338;
    v508.size.height = v332;
    v508.size.width = v334;
    v509 = CGRectOffset(v508, *(a1 + 240), *(a1 + 232));
    v510 = CGRectIntersection(v509, *(a1 + 120));
    rectb = v510.origin.x;
    y = v510.origin.y;
    width = v510.size.width;
    height = v510.size.height;
    if (*(a1 + 504) == 1)
    {
      v198 = *(a1 + 112);
      v510.origin.x = v510.origin.x * v198;
      v510.origin.y = v510.origin.y * v198;
      v510.size.width = v510.size.width * v198;
      v510.size.height = height * v198;
    }

    v511 = CGRectIntegral(v510);
    x = v511.origin.x;
    v200 = v511.origin.y;
    v201 = v511.size.width;
    v202 = v511.size.height;
    v203 = [*(a1 + 32) footerBackgroundColor];
    v339 = v203;
    if (v203)
    {
      v204 = v203;
      v205 = CGColorCreateCopyWithAlpha([v339 CGColor], 1.0);
      CGContextSaveGState(c);
      CGContextSetBlendMode(c, kCGBlendModeCopy);
      CGContextSetFillColorWithColor(c, v205);
      v512.origin.x = rectb;
      v512.origin.y = y;
      v512.size.width = width;
      v512.size.height = height;
      CGContextFillRect(c, v512);
      CGContextRestoreGState(c);
      CGColorRelease(v205);
    }

    else
    {
      constraints_8a = CGRectGetMinX(*(a1 + 416));
      constraintsa = CGRectGetMinY(*(a1 + 416));
      contexta = CGRectGetHeight(*(a1 + 200));
      attrStringb = CGRectGetHeight(*(a1 + 416));
      v314 = CGRectGetWidth(*(a1 + 200));
      framesetterb = CGRectGetWidth(*(a1 + 416));
      v513.origin.x = x;
      v513.origin.y = v200;
      v513.size.width = v201;
      v513.size.height = v202;
      MinX = CGRectGetMinX(v513);
      v514.origin.x = x;
      v514.origin.y = v200;
      v514.size.width = v201;
      v514.size.height = v202;
      MinY = CGRectGetMinY(v514);
      v212 = CGRectGetHeight(*(a1 + 200));
      v515.origin.x = x;
      v515.origin.y = v200;
      v515.size.width = v201;
      v515.size.height = v202;
      v213 = CGRectGetHeight(v515);
      v214 = CGRectGetWidth(*(a1 + 200));
      v516.origin.x = x;
      v516.origin.y = v200;
      v516.size.width = v201;
      v516.size.height = v202;
      v215 = (v214 - CGRectGetWidth(v516));
      remainder.origin.x = 0.0;
      *&remainder.origin.y = &remainder;
      *&remainder.size.width = 0x2020000000;
      remainder.size.height = 0.0;
      v216 = *(a1 + 48);
      v353[0] = MEMORY[0x1E69E9820];
      v353[1] = 3221225472;
      v353[2] = __PKPassFrontFaceImageForScreenSize_block_invoke_5_95;
      v353[3] = &unk_1E79DF210;
      v217 = *(a1 + 464);
      v354 = *(a1 + 448);
      v355 = v217;
      v353[4] = &remainder;
      v356 = *(a1 + 112);
      v357 = constraintsa;
      v358 = constraints_8a;
      v359 = (contexta - attrStringb);
      v360 = (v314 - framesetterb);
      v361 = MinX;
      v362 = MinY;
      v363 = (v212 - v213);
      v364 = v215;
      [v216 accessData:v353];
      v218 = *(a1 + 48);
      if (!v218 || !v215 || !(v212 - v213) || (v219 = v218, v220 = PKColorSpaceStandardLinearRGB(), v221 = +[PKBitmapConversionDescriptor create32Float](PKBitmapConversionDescriptor, "create32Float"), [v221 setColorSpace:v220 withPolicy:&__block_literal_global_193_1], v222 = objc_msgSend(v221, "convertFromContext:", v219), (v223 = v222) == 0) || (*&v484.a = MEMORY[0x1E69E9820], *&v484.b = 3221225472, *&v484.c = __vImageSaturate_ARGB16F_block_invoke_2, *&v484.d = &__block_descriptor_72_e79_v24__0r__vImage_CGImageFormat_II__CGColorSpace_II_di_8r__vImage_Buffer__vQQQ_16l, v484.tx = 1.5, *&v484.ty = MinX, *&v485 = MinY, *(&v485 + 1) = (v212 - v213), v486 = v215, objc_msgSend(v222, "accessData:", &v484), v224 = +[PKBitmapConversionDescriptor create16Float](PKBitmapConversionDescriptor, "create16Float"), v221, objc_msgSend(v224, "setColorSpace:withPolicy:", v220, &__block_literal_global_196), (objc_msgSend(v224, "convertContext:", v223) & 1) == 0))
      {
        __break(1u);
      }

      *&slice.origin.x = MEMORY[0x1E69E9820];
      *&slice.origin.y = 3221225472;
      *&slice.size.width = __vImageSaturate_ARGB16F_block_invoke_4;
      *&slice.size.height = &unk_1E79DF418;
      *&v488 = v219;
      *(&v488 + 1) = MinX;
      *&v489 = MinY;
      *(&v489 + 1) = (v212 - v213);
      v490 = v215;
      v225 = v219;
      [v223 accessData:&slice];

      v226 = *(*&remainder.origin.y + 24);
      *&v484.a = xmmword_1ADB9AF70;
      *&v484.c = unk_1ADB9AF80;
      slice = *ymmword_1ADB9AF90;
      if (v226 <= 0.85)
      {
        p_slice = &slice;
      }

      else
      {
        p_slice = &v484;
      }

      v228 = CGColorCreate(*(a1 + 480), p_slice);
      CGContextSaveGState(c);
      if (v226 <= 0.85)
      {
        v229 = kCGBlendModeDarken;
      }

      else
      {
        v229 = kCGBlendModePlusLighter;
      }

      CGContextSetBlendMode(c, v229);
      CGContextSetFillColorWithColor(c, v228);
      v517.origin.x = rectb;
      v517.origin.y = y;
      v517.size.width = width;
      v517.size.height = height;
      CGContextFillRect(c, v517);
      CGContextRestoreGState(c);
      CGColorRelease(v228);
      _Block_object_dispose(&remainder, 8);
    }
  }

  CGContextSaveGState(c);
  CGContextTranslateCTM(c, *(a1 + 240), *(a1 + 232));
  v518.origin.x = v340;
  v518.size.height = v341;
  v518.origin.y = v342;
  v518.size.width = v343;
  if (!CGRectIsEmpty(v518))
  {
    GenericGray = CGColorCreateGenericGray(0.0, 0.55);
    v231 = CGColorCreateGenericGray(0.0, 0.4);
    v232 = CGColorCreateGenericGray(0.0, 0.0);
    *&v484.a = GenericGray;
    *&v484.b = v231;
    *&v484.c = v232;
    slice.origin = xmmword_1ADB9AFB0;
    slice.size.width = 1.0;
    v233 = CFArrayCreate(*MEMORY[0x1E695E480], &v484, 3, 0);
    v234 = CGGradientCreateWithColors(*(a1 + 480), v233, &slice.origin.x);
    CGContextSaveGState(c);
    v519.origin.x = v340;
    v519.size.height = v341;
    v519.origin.y = v342;
    v519.size.width = v343;
    v235 = CGRectGetMidX(v519);
    v520.origin.x = v340;
    v520.size.height = v341;
    v520.origin.y = v342;
    v520.size.width = v343;
    v236 = CGRectGetMinY(v520);
    v521.origin.x = v340;
    v521.size.height = v341;
    v521.origin.y = v342;
    v521.size.width = v343;
    v237 = CGRectGetMidX(v521);
    v522.origin.x = v340;
    v522.size.height = v341;
    v522.origin.y = v342;
    v522.size.width = v343;
    v238 = CGRectGetMaxY(v522);
    v523.origin.x = v340;
    v523.size.height = v341;
    v523.origin.y = v342;
    v523.size.width = v343;
    CGContextAddRect(c, v523);
    CGContextClip(c);
    v498.x = v235;
    v498.y = v236;
    v499.x = v237;
    v499.y = v238;
    CGContextDrawLinearGradient(c, v234, v498, v499, 0);
    CGContextRestoreGState(c);
    CGGradientRelease(v234);
    CFRelease(v233);
    CGColorRelease(GenericGray);
    CGColorRelease(v231);
    CGColorRelease(v232);
  }

  v351 = 0u;
  v352 = 0u;
  v349 = 0u;
  v350 = 0u;
  v239 = v330;
  v240 = [v239 countByEnumeratingWithState:&v349 objects:v480 count:16];
  if (v240)
  {
    v241 = *v350;
    do
    {
      for (i = 0; i != v240; ++i)
      {
        if (*v350 != v241)
        {
          objc_enumerationMutation(v239);
        }

        (*(*(*(&v349 + 1) + 8 * i) + 16))();
      }

      v240 = [v239 countByEnumeratingWithState:&v349 objects:v480 count:16];
    }

    while (v240);
  }

  CGContextRestoreGState(c);
  v243 = _MaskImageForEdgeStyle(*(a1 + 488), *(a1 + 280), *(a1 + 288));
  [v243 drawInRect:c inContext:22 withBlendMode:*(a1 + 120) alpha:{*(a1 + 128), *(a1 + 136), *(a1 + 144), 1.0}];
  v484.a = 0.0;
  *&v484.b = &v484;
  *&v484.c = 0x2020000000;
  v484.d = 0.0;
  slice.origin.x = 0.0;
  *&slice.origin.y = &slice;
  *&slice.size.width = 0x2020000000;
  slice.size.height = 0.0;
  v244 = *(a1 + 48);
  v344[0] = MEMORY[0x1E69E9820];
  v344[1] = 3221225472;
  v344[2] = __PKPassFrontFaceImageForScreenSize_block_invoke_6_96;
  v344[3] = &unk_1E79DF238;
  v245 = *(a1 + 464);
  v345 = *(a1 + 448);
  v346 = v245;
  v347 = *(a1 + 112);
  v348 = *(a1 + 480);
  v344[4] = &slice;
  v344[5] = &v484;
  [v244 accessData:v344];
  v246 = *(*&v484.b + 24);
  if (v246)
  {
    v247 = *(*(a1 + 88) + 8);
    if ((*(v247 + 24) & 1) == 0)
    {
      *(v247 + 24) = 1;
      v248 = PKColorGetRelativeLuminance(v246) / 100.0;
      if (v248 <= 0.00885645168)
      {
        v249 = v248 * 7.78703704 + 0.137931034;
      }

      else
      {
        v249 = pow(v248, 0.333333333);
      }

      *(*(*(a1 + 96) + 8) + 24) = (v249 * 116.0 + -16.0) / 100.0;
      v246 = *(*&v484.b + 24);
    }

    CFRelease(v246);
    *(*&v484.b + 24) = 0;
  }

  if (*(*(*(a1 + 88) + 8) + 24) == 1)
  {
    v250 = *(*(*(a1 + 96) + 8) + 24);
    if (v250 <= 0.9)
    {
      v251 = v250 < 0.1;
    }

    else
    {
      v251 = 2;
    }
  }

  else
  {
    v251 = 0;
  }

  _PKDrawGlossInRect(c, *(a1 + 488), v251, *(a1 + 120), *(a1 + 128), *(a1 + 136), *(a1 + 144), *(a1 + 280), *(a1 + 288));
  v252 = *(*&slice.origin.y + 24);
  v253 = *(a1 + 496);
  if (v252)
  {
    if (v253)
    {
      v254 = [PKColor matchingColorFromColor:?];
      v255 = *(a1 + 496);
      v256 = *v255;
      *v255 = v254;

      v252 = *(*&slice.origin.y + 24);
    }

    CFRelease(v252);
    *(*&slice.origin.y + 24) = 0;
  }

  else if (v253)
  {
    v257 = *v253;
    *v253 = 0;
  }

  _Block_object_dispose(&slice, 8);
  _Block_object_dispose(&v484, 8);
}

void _DrawPDFPageInRect(CGContext *a1, CGPDFPage *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  if (a1)
  {
    CGContextSaveGState(a1);
    v18.origin.x = a3;
    v18.origin.y = a4;
    v18.size.width = a5;
    v18.size.height = a6;
    CGContextClipToRect(a1, v18);
    v19.origin.x = a3;
    v19.origin.y = a4;
    v19.size.width = a5;
    v19.size.height = a6;
    MaxY = CGRectGetMaxY(v19);
    CGContextTranslateCTM(a1, a3, MaxY);
    CGContextScaleCTM(a1, 1.0, -1.0);
    BoxRect = CGPDFPageGetBoxRect(a2, kCGPDFMediaBox);
    width = BoxRect.size.width;
    height = BoxRect.size.height;
    v15 = a5 / BoxRect.size.width;
    if (width == 0.0)
    {
      v15 = 1.0;
    }

    v16 = a6 / BoxRect.size.height;
    if (height == 0.0)
    {
      v16 = 1.0;
    }

    if (fmax(v15, v16) != 1.0)
    {
      if (v15 <= v16)
      {
        width = a6 * (width / height);
        height = a6;
      }

      else
      {
        height = a5 * (height / width);
        width = a5;
      }
    }

    v21.origin.x = PKSizeAlignedInRectWithScale(0x100000001uLL, width, height, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), a5, a6, 0.0);
    CGPDFPageGetDrawingTransform(&v17, a2, kCGPDFMediaBox, v21, 0, 1);
    CGContextConcatCTM(a1, &v17);
    CGContextDrawPDFPage(a1, a2);
    CGContextRestoreGState(a1);
  }
}

void __PKPassFrontFaceImageForScreenSize_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  MinX = CGRectGetMinX(*(a1 + 32));
  MinY = CGRectGetMinY(*(a1 + 32));
  Height = CGRectGetHeight(*(a1 + 64));
  v9 = (Height - CGRectGetHeight(*(a1 + 32)));
  Width = CGRectGetWidth(*(a1 + 64));
  v11 = CGRectGetWidth(*(a1 + 32));
  v13 = a3[2];
  v12 = a3[3];
  v14 = a3[1] - v9;
  v15[0] = *a3 + v12 * MinY + ((*(a2 + 4) + 7) >> 3) * MinX;
  v15[1] = v14;
  v15[2] = v13 - (Width - v11);
  v15[3] = v12;
  vImageGaussianBlur_ARGB16F(a2, v15, v15, 0, 0, *(a1 + 96), 0.5);
}

void vImageGaussianBlur_ARGB16F(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, double a6, double a7)
{
  if (!a1)
  {
    goto LABEL_42;
  }

  if (!a2)
  {
    goto LABEL_42;
  }

  if (!a3)
  {
    goto LABEL_42;
  }

  v10 = *(a2 + 8);
  v11 = *(a2 + 8);
  if (!v11)
  {
    goto LABEL_42;
  }

  if (!v10.i64[1])
  {
    goto LABEL_42;
  }

  v12 = *(a3 + 8);
  if (v12 > v11)
  {
    goto LABEL_42;
  }

  v13 = *(a3 + 16);
  if (v13 > v10.i64[1])
  {
    goto LABEL_42;
  }

  if (v12 && v13)
  {
    if (v13 + a4 <= v10.i64[1] && v12 + a5 <= v11)
    {
      v16 = fabs(a7);
      v17 = fabs(a6);
      v18 = v17 * v16;
      if (a7 >= 0.0 && v16 == 1.0)
      {
        v19 = [PKBitmapContext createWithSize:"createWithSize:origin:format:" origin:? format:?];
        if (v19)
        {
          v20 = v19;
          v60[0] = MEMORY[0x1E69E9820];
          v60[1] = 3221225472;
          v60[2] = __vImageGaussianBlur_ARGB16F_block_invoke;
          v60[3] = &__block_descriptor_92_e79_v24__0r__vImage_CGImageFormat_II__CGColorSpace_II_di_8r__vImage_Buffer__vQQQ_16l;
          *&v60[4] = v17;
          v61 = v18;
          v60[5] = a2;
          v60[6] = a3;
          v60[7] = a4;
          v60[8] = a5;
          v60[9] = v12;
          v60[10] = v13;
          [v19 accessData:v60];
LABEL_40:

          return;
        }
      }

      else
      {
        v44 = a7 < 0.0;
        v45 = v16 != 1.0;
        v46 = v16;
        __asm { FMOV            V1.2D, #1.0 }

        v26 = vcvtq_u64_f64(vmaxnmq_f64(vrndaq_f64(vmulq_n_f64(vcvtq_f64_u64(v10), v16)), _Q1));
        v27 = v26.u64[1];
        v28 = v26.i64[0];
        v29 = [PKBitmapContext createWithSize:v26.i64[1] origin:v26.i64[0] format:2, a1];
        if (v29)
        {
          v20 = v29;
          v30 = round(v46 * v13);
          if (v27 <= 1)
          {
            v31 = 1;
          }

          else
          {
            v31 = v27;
          }

          v32 = 1.0;
          if (v30 <= 1.0)
          {
            v33 = 1.0;
          }

          else
          {
            v33 = v30;
          }

          if (v30 < v27)
          {
            v34 = v33;
          }

          else
          {
            v34 = v31;
          }

          if (v28 <= 1)
          {
            v35 = 1;
          }

          else
          {
            v35 = v28;
          }

          v36 = round(v46 * v12);
          if (v36 > 1.0)
          {
            v32 = v36;
          }

          v37 = v36 < v28 ? v32 : v35;
          v38 = [PKBitmapContext createWithSize:v27 origin:v28 format:2, a1];
          if (v38)
          {
            v39 = v34;
            v40 = vcvtad_u64_f64(v46 * a5);
            v41 = vcvtad_u64_f64(v46 * a4);
            v47[0] = MEMORY[0x1E69E9820];
            if (v28 - v37 < v40)
            {
              v40 = v28 - v37;
            }

            v42 = v27 - v39;
            v47[1] = 3221225472;
            v47[2] = __vImageGaussianBlur_ARGB16F_block_invoke_2;
            v47[3] = &unk_1E79DF3B0;
            if (v27 - v39 >= v41)
            {
              v42 = v41;
            }

            v57 = v45;
            v48 = v38;
            v49 = a2;
            v58 = v44;
            v59 = v18 > 0.0;
            v56 = v18;
            v50 = a1;
            v51 = v34;
            v52 = v37;
            v53 = v42;
            v54 = v40;
            v55 = a3;
            v43 = v38;
            [v20 accessData:v47];

            goto LABEL_40;
          }
        }
      }
    }

LABEL_42:
    __break(1u);
  }
}

void __PKPassFrontFaceImageForScreenSize_block_invoke_42(uint64_t a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  aBlock = a2;
  v15.origin.x = a3;
  v15.origin.y = a4;
  v15.size.width = a5;
  v15.size.height = a6;
  if (CGRectIntersectsRect(*(a1 + 40), v15) || (v16.origin.x = a3, v16.origin.y = a4, v16.size.width = a5, v16.size.height = a6, CGRectIntersectsRect(*(a1 + 72), v16)))
  {
    v11 = *(a1 + 32);
    v12 = _Block_copy(aBlock);
    [v11 addObject:v12];
  }

  else
  {
    aBlock[2]();
  }
}

id _PKPassDictionaryFromBundle(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 URLForResource:@"pass" withExtension:@"json"];
    if (v3 && ([MEMORY[0x1E695DEF0] dataWithContentsOfURL:v3], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v5 = v4;
      v6 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v4 options:0 error:0];

      if (v6)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v7 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x1E696AAE8] mainBundle];
    v9 = [v8 bundleIdentifier];
    v11 = 138412546;
    v12 = v9;
    v13 = 2112;
    v14 = v2;
    _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Invalid pass bundle for process(%@): %@", &v11, 0x16u);
  }

  v6 = 0;
LABEL_10:

  return v6;
}

id _FetchImageNamed(void *a1, void *a2, void *a3, double a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = objc_autoreleasePoolPush();
  v11 = [v8 URLForResource:v7 withExtension:@"pdf"];
  v12 = v11;
  if (!v11)
  {
    v14 = 0;
    goto LABEL_7;
  }

  v13 = CGPDFDocumentCreateWithURL(v11);
  v14 = v13;
  if (!v13 || !CGPDFDocumentGetNumberOfPages(v13) || (Page = CGPDFDocumentGetPage(v14, 1uLL)) == 0)
  {
LABEL_7:
    v17 = [PKImage imageNamed:v7 inBundle:v8 screenScale:v9 suffix:a4];
    if (v17)
    {
      v16 = [_PKPassImageConstruction_ImageRepresentation representationFromImage:v17];
    }

    else
    {
      v16 = 0;
    }

    goto LABEL_11;
  }

  v16 = [_PKPassImageConstruction_ImageRepresentation representationFromDocument:v14 page:Page];
LABEL_11:
  CGPDFDocumentRelease(v14);

  objc_autoreleasePoolPop(v10);

  return v16;
}

void _DrawImageInRect(CGContext *a1, void *a2, unint64_t a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, double a8)
{
  v15 = a2;
  if (a1 && v15)
  {
    v36 = v15;
    v16 = [v36 pageRef];
    if (v16)
    {
      v17 = v16;
      BoxRect = CGPDFPageGetBoxRect(v16, kCGPDFMediaBox);
      width = BoxRect.size.width;
      height = BoxRect.size.height;
      v20 = a6 / BoxRect.size.width;
      if (width == 0.0)
      {
        v20 = 1.0;
      }

      v21 = a7 / BoxRect.size.height;
      if (height == 0.0)
      {
        v21 = 1.0;
      }

      if (fmin(v20, v21) != 1.0)
      {
        if (v20 >= v21)
        {
          width = a7 * (width / height);
          height = a7;
        }

        else
        {
          height = a6 * (height / width);
          width = a6;
        }
      }

      v30 = PKSizeRoundToPixelWithScale(width, height, a8);
      v32 = PKSizeAlignedInRectWithScale(a3, v30, v31, a4, a5, a6, a7, a8);
      _DrawPDFPageInRect(a1, v17, v32, v33, v34, v35);
    }

    else
    {
      v22 = [v36 image];
      v23 = v22;
      if (v22)
      {
        [v22 downscaleSizeMatchingScale:a8];
        v26 = PKSizeAspectFit(v24, v25, a6, a7);
        v28 = PKSizeRoundToPixelWithScale(v26, v27, a8);
        [v23 drawInRect:a1 inContext:{PKSizeAlignedInRectWithScale(a3, v28, v29, a4, a5, a6, a7, a8)}];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void __PKPassFrontFaceImageForScreenSize_block_invoke_6(double *a1)
{
  v1 = *(a1 + 4);
  if (v1)
  {
    v2 = a1[6];
    v3 = a1[7];
    v4 = a1[8];
    v5 = a1[9];
    v6 = *(a1 + 5);
    v7 = v1;
    v8 = CTFramesetterCreateWithAttributedString(v7);
    _DrawTextInRectWithFramesetter(v6, v7, 0, v8, v2, v3, v4, v5);

    CFRelease(v8);
  }
}

id _PKPaymentPassNetworkIdentifierFromDictionary(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  [a1 objectForKeyedSubscript:@"paymentApplications"];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = v12 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [*(*(&v9 + 1) + 8 * i) objectForKeyedSubscript:{@"paymentNetworkIdentifier", v9}];
        if (v6)
        {
          v7 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v7 = 0;
LABEL_11:

  return v7;
}

void _DrawTextInRectWithFramesetter(CGContext *a1, void *a2, unint64_t a3, const __CTFramesetter *a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  if (a2)
  {
    v15 = a2;
    v31.length = [v15 length];
    v31.location = 0;
    v33.width = a7;
    v33.height = a8;
    v16 = CTFramesetterSuggestFrameSizeWithConstraints(a4, v31, 0, v33, 0);
    v17 = PKSizeCeilToPixelWithScale(v16.width, v16.height, 0.0);
    v19 = PKSizeAlignedInRectWithScale(a3, v17, v18, a5, a6, a7, a8, 0.0);
    v21 = v20;
    v23 = v22;
    v25 = v24;
    CGContextSaveGState(a1);
    v34.origin.x = v19;
    v34.origin.y = v21;
    v34.size.width = v23;
    v34.size.height = v25;
    MaxY = CGRectGetMaxY(v34);
    CGContextTranslateCTM(a1, v19, MaxY);
    CGContextScaleCTM(a1, 1.0, -1.0);
    v35.origin.x = *MEMORY[0x1E695EFF8];
    v35.origin.y = *(MEMORY[0x1E695EFF8] + 8);
    v35.size.width = v23;
    v35.size.height = v25;
    v27 = CGPathCreateWithRect(v35, 0);
    v28 = [v15 length];

    v32.location = 0;
    v32.length = v28;
    Frame = CTFramesetterCreateFrame(a4, v32, v27, 0);
    CTFrameDraw(Frame, a1);
    CGContextRestoreGState(a1);
    CFRelease(Frame);

    CFRelease(v27);
  }
}

void __PKPassFrontFaceImageForScreenSize_block_invoke_13(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = a2;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Failed to connect to PassKitCoreXPCService: %@.", &v4, 0xCu);
  }
}

uint64_t __PKPassFrontFaceImageForScreenSize_block_invoke_87(uint64_t result, double a2, double a3, double a4, double a5)
{
  v5 = *(*(result + 32) + 8);
  v5[4] = a2;
  v5[5] = a3;
  v5[6] = a4;
  v5[7] = a5;
  return result;
}

void __PKPassFrontFaceImageForScreenSize_block_invoke_2_89(uint64_t a1)
{
  CGContextSaveGState(*(a1 + 40));
  v2 = CGPathCreateWithEllipseInRect(*(a1 + 48), 0);
  CGContextBeginPath(*(a1 + 40));
  CGContextAddPath(*(a1 + 40), v2);
  CGContextClosePath(*(a1 + 40));
  CGContextClip(*(a1 + 40));
  CGPathRelease(v2);
  CGContextSetGrayFillColor(*(a1 + 40), 0.0, 1.0);
  CGContextFillRect(*(a1 + 40), *(a1 + 48));
  [*(a1 + 32) drawInRect:*(a1 + 40) inContext:{*(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104)}];
  v3 = *(a1 + 40);

  CGContextRestoreGState(v3);
}

uint64_t __PKPassFrontFaceImageForScreenSize_block_invoke_3_93(uint64_t a1)
{
  [*(a1 + 32) drawInRect:*(a1 + 80) inContext:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  v2 = *(a1 + 40);
  v3 = *(a1 + 80);
  v4 = *(a1 + 88);
  v5 = *(a1 + 96);
  v6 = *(a1 + 104);
  v7 = *(a1 + 112);

  return [v2 drawInRect:v3 inContext:{v4, v5, v6, v7}];
}

void __PKPassFrontFaceImageForScreenSize_block_invoke_5_95(uint64_t a1, size_t a2, uint64_t *a3)
{
  if (!a2)
  {
    goto LABEL_26;
  }

  if (!a3)
  {
    goto LABEL_26;
  }

  v5 = *(a2 + 4);
  if ((v5 & 7) != 0)
  {
    goto LABEL_26;
  }

  if (v5 >= 0x7F9)
  {
    goto LABEL_26;
  }

  v6 = v5 >> 3;
  v7 = a3[2];
  if (!is_mul_ok(v6, v7))
  {
    goto LABEL_26;
  }

  v8 = a3[3];
  if (v6 * v7 > v8)
  {
    goto LABEL_26;
  }

  v11 = *(a1 + 40);
  v10 = *(a1 + 48);
  v13 = *(a1 + 56);
  v12 = *(a1 + 64);
  v14 = *(a3 + 1);
  *v36 = *a3;
  *&v36[16] = v14;
  v15 = __CFADD__(v11, v13);
  v16 = v11 + v13;
  if (v15)
  {
    goto LABEL_26;
  }

  v15 = __CFADD__(v10, v12);
  v17 = v10 + v12;
  if (v15)
  {
    goto LABEL_26;
  }

  if (v16 >= a3[1] || v17 >= v7)
  {
    memset(v36, 0, 24);
    goto LABEL_19;
  }

  v18 = *v36;
  if (v11)
  {
    if (!is_mul_ok(v11, v8))
    {
      goto LABEL_26;
    }

    v18 = *v36 + v11 * v8;
  }

  *&v36[8] -= v16;
  if (v10)
  {
    if (is_mul_ok(v10, v6))
    {
      v18 += v10 * v6;
      goto LABEL_17;
    }

LABEL_26:
    __break(1u);
    return;
  }

LABEL_17:
  *&v36[16] -= v17;
  *v36 = v18;
LABEL_19:
  v19 = pk_vImageCopyAverageColor_ARGB16F(a2, v36, 0, 0);
  if (v19)
  {
    v20 = v19;
    v21 = PKColorGetRelativeLuminance(v19) / 100.0;
    if (v21 <= 0.00885645168)
    {
      v22 = v21 * 7.78703704 + 0.137931034;
    }

    else
    {
      v22 = pow(v21, 0.333333333);
    }

    *(*(*(a1 + 32) + 8) + 24) = (v22 * 116.0 + -16.0) / 100.0;
    CFRelease(v20);
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  v23 = vcvtpd_s64_f64(*(a1 + 72) * 66.0);
  v24 = (*(a2 + 4) + 7) >> 3;
  v25 = a3[3];
  v26 = *(a1 + 80);
  v27 = *(a1 + 88);
  v28 = *a3;
  v29 = *a3 + v26 * v25 + v27 * v24;
  v35 = v25;
  *v36 = v29;
  v30 = *(a3 + 1);
  *&v36[8] = vsubq_s64(v30, *(a1 + 96));
  *&v36[24] = v25;
  v31 = *(a1 + 112);
  v32 = *(a1 + 120);
  v33 = v28 + v32 * v25 + v31 * v24;
  v34 = vsubq_s64(v30, *(a1 + 128));
  vImageGaussianBlur_ARGB16F(a2, v36, &v33, v31 - v27, v32 - v26, v23, 0.125);
}

size_t pk_vImageCopyAverageColor_ARGB16F(size_t result, __int16 **a2, unint64_t a3, CFTypeRef *a4)
{
  if (!a2)
  {
    goto LABEL_93;
  }

  v4 = result;
  if (*result != 16 || (v5 = *(result + 16), (v5 & 0x100) == 0))
  {
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v9 = a2[3];
  result = *(result + 8);
  v10 = v5 & 0x1F;
  if (v10 == 7 || result == 0)
  {
    v12 = v10 != 0;
  }

  else
  {
    result = CGColorSpaceGetNumberOfComponents(result);
    if (result >= 0x100)
    {
      goto LABEL_100;
    }

    v12 = result;
    if (v10)
    {
      if (result == 255)
      {
LABEL_103:
        __break(1u);
        return result;
      }

      v12 = result + 1;
    }
  }

  v13 = *(v4 + 1);
  if (v12 * *v4 > v13)
  {
    goto LABEL_94;
  }

  if ((v13 & 7) != 0)
  {
    goto LABEL_94;
  }

  if (v13 >= 0x7F9)
  {
    goto LABEL_94;
  }

  v14 = v13 >> 3;
  v15 = a2[2];
  if (!is_mul_ok(v13 >> 3, v15) || v14 * v15 > a2[3])
  {
    goto LABEL_94;
  }

  if ((v4[2] & 0x1F) == 2)
  {
    v58 = 0;
    v59 = 1;
  }

  else
  {
    if ((v4[2] & 0x1F) != 1)
    {
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    v58 = v12 - 1;
    v59 = 0;
  }

  v16 = *a2;
  v17 = a2[1];
  size = 8 * v12;
  result = malloc_type_aligned_alloc(8uLL, 8 * v12, 0x100004000313F17uLL);
  if (!result)
  {
    goto LABEL_95;
  }

  v18 = result;
  v57 = a3;
  v60 = a4;
  if (a3)
  {
    v19 = a4 == 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = v19;
  if (v19)
  {
    v21 = 0;
  }

  else
  {
    result = malloc_type_aligned_alloc(8uLL, size, 0x100004000313F17uLL);
    v21 = result;
    if (!result)
    {
      goto LABEL_102;
    }
  }

  if (v12)
  {
    v22 = v18;
    v23 = v21;
    v24 = v12;
    do
    {
      *v22 = 0;
      if ((v20 & 1) == 0)
      {
        *v23 = 0;
      }

      ++v23;
      ++v22;
      --v24;
    }

    while (v24);
  }

  if (v17)
  {
    if (!is_mul_ok(v9, v17 - 1))
    {
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    v25 = v9 * (v17 - 1);
    if (v15)
    {
      goto LABEL_42;
    }

LABEL_45:
    v26 = 0;
    goto LABEL_46;
  }

  v25 = 0;
  if (!v15)
  {
    goto LABEL_45;
  }

LABEL_42:
  if (!is_mul_ok(v14, v15 - 1))
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v26 = v14 * (v15 - 1);
LABEL_46:
  if (__CFADD__(v25, v26))
  {
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v27 = v17;
  v28 = v17;
  v29 = v15;
  v30 = v15;
  if ((v20 & 1) == 0)
  {
    v30 = v57;
    v29 = v15 - v57;
    if (v15 < v57)
    {
      v29 = 0;
    }

    v27 = v17 - v57;
    if (v17 < v57)
    {
      v27 = 0;
    }

    v28 = v57;
  }

  if (v17)
  {
    for (i = 0; i != v17; ++i)
    {
      if (v15)
      {
        v32 = 0;
        v33 = v16;
        do
        {
          if (v12)
          {
            if (v32 < v30 || i < v28 || v32 >= v29 || i >= v27)
            {
              v37 = v20;
            }

            else
            {
              v37 = 1;
            }

            v38 = v33;
            v39 = v18;
            v40 = v21;
            v41 = v12;
            do
            {
              _H0 = *v38;
              __asm { FCVT            D0, H0 }

              *v39 = *v39 + _D0;
              if ((v37 & 1) == 0)
              {
                *v40 = *v40 + _D0;
              }

              ++v40;
              ++v39;
              ++v38;
              --v41;
            }

            while (v41);
          }

          ++v32;
          v33 = (v33 + v14);
        }

        while (v32 != v15);
      }

      v16 = (v16 + v9);
    }
  }

  result = malloc_type_aligned_alloc(8uLL, size, 0x100004000313F17uLL);
  if (!result)
  {
    goto LABEL_97;
  }

  v46 = result;
  *(result + 8 * (v12 - 1)) = 0x3FF0000000000000;
  if ((v20 & 1) == 0)
  {
    if (v12 != 1)
    {
      v47 = *&v21[v58];
      v48 = v12 - 2;
      v49 = result;
      for (j = &v21[v59]; ; ++j)
      {
        *v49 = *j / v47;
        if (!v48)
        {
          break;
        }

        --v48;
        ++v49;
      }
    }

    v51 = CGColorCreate(v4[1], result);
    if (*v60)
    {
      CFRelease(*v60);
    }

    *v60 = v51;
  }

  if (v12 != 1)
  {
    v52 = *&v18[v58];
    v53 = v12 - 2;
    v54 = v46;
    for (k = &v18[v59]; ; ++k)
    {
      *v54 = *k / v52;
      if (!v53)
      {
        break;
      }

      --v53;
      ++v54;
    }
  }

  v56 = CGColorCreate(v4[1], v46);
  free(v46);
  free(v18);
  if ((v20 & 1) == 0)
  {
    free(v21);
  }

  return v56;
}

void __PKPassFrontFaceImageForScreenSize_block_invoke_6_96(uint64_t a1, size_t a2, __int128 *a3)
{
  if (!a2)
  {
    goto LABEL_22;
  }

  if (!a3)
  {
    goto LABEL_22;
  }

  v3 = *(a2 + 4);
  if ((v3 & 7) != 0)
  {
    goto LABEL_22;
  }

  if (v3 >= 0x7F9)
  {
    goto LABEL_22;
  }

  v4 = v3 >> 3;
  v5 = *(a3 + 2);
  if (!is_mul_ok(v4, v5))
  {
    goto LABEL_22;
  }

  v6 = *(a3 + 3);
  if (v4 * v5 > v6)
  {
    goto LABEL_22;
  }

  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  v11 = *(a1 + 64);
  v10 = *(a1 + 72);
  v12 = a3[1];
  v20 = *a3;
  v21 = v12;
  v13 = __CFADD__(v9, v11);
  v14 = v9 + v11;
  if (v13)
  {
    goto LABEL_22;
  }

  v13 = __CFADD__(v8, v10);
  v15 = v8 + v10;
  if (v13)
  {
    goto LABEL_22;
  }

  if (v14 >= *(a3 + 1) || v15 >= v5)
  {
    v20 = 0uLL;
    *&v21 = 0;
    goto LABEL_19;
  }

  v16 = v20;
  if (v9)
  {
    if (!is_mul_ok(v9, v6))
    {
      goto LABEL_22;
    }

    v16 = v20 + v9 * v6;
  }

  *(&v20 + 1) -= v14;
  if (v8)
  {
    if (is_mul_ok(v8, v4))
    {
      v16 += v8 * v4;
      goto LABEL_17;
    }

LABEL_22:
    __break(1u);
    return;
  }

LABEL_17:
  *&v21 = v21 - v15;
  *&v20 = v16;
LABEL_19:
  v19 = 0;
  v17 = pk_vImageCopyAverageColor_ARGB16F(a2, &v20, *(a1 + 80), &v19);
  if (v17)
  {
    v18 = v17;
    *(*(*(a1 + 32) + 8) + 24) = CGColorCreateCopyByMatchingToColorSpace(*(a1 + 88), kCGRenderingIntentAbsoluteColorimetric, v17, 0);
    CFRelease(v18);
  }

  *(*(*(a1 + 40) + 8) + 24) = v19;
}

void __PKPassFrontFaceImageForScreenSize_block_invoke_8_103(uint64_t a1, CGContext *a2)
{
  v3 = PKGetImageFromBitmapContext(a2, *(a1 + 40));
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

id PKPassFrontFaceImage(void *a1, void *a2, CGFloat *a3, double *a4, double *a5, uint64_t a6, void *a7, double a8)
{
  v15 = a7;
  v16 = a2;
  v17 = a1;
  v18 = PKScreenSize();
  v20 = PKPassFrontFaceImageForScreenSize(v17, v16, a3, a4, a5, a6, v15, v18, v19, a8);

  return v20;
}

id PKPassFrontFaceDynamicLayerImage(void *a1, void *a2, void *a3, int a4, void *a5, double a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a5;
  if (a6 == 0.0)
  {
    a6 = PKScreenScale();
  }

  v15 = [v11 passStyle];
  v16 = _PKPassDictionaryFromBundle(v13);
  v17 = [v13 URLForResource:v12 withExtension:@"pdf"];
  v18 = v17;
  if (v17)
  {
    v19 = CGPDFDocumentCreateWithURL(v17);
    v20 = 0;
  }

  else
  {
    v20 = [PKImage imageNamed:v12 inBundle:v13 screenScale:v14 suffix:a6];
    v19 = 0;
  }

  if (v19 | v20)
  {
    v21 = PKScreenSize();
    v22 = PKPassFrontFaceContentSizeForScreenSize(v15, v21);
    v24 = v23;
    v25 = [v16 PKDictionaryForKey:@"dynamicLayerConfiguration"];
    v26 = v25;
    if (a4 && [v25 PKBoolForKey:@"parallaxEnabled"])
    {
      [v20 scale];
      v22 = PKSizeRoundToPixelWithScale(v22 * 1.1, v24 * 1.1, v27);
      v24 = v28;
    }

    BitmapContext = _CreateBitmapContext(0, 1, 0, v22, v24, a6);
    v31 = *MEMORY[0x1E695EFF8];
    v30 = *(MEMORY[0x1E695EFF8] + 8);
    if (v20)
    {
      [v20 size];
      v34 = v22 / v32;
      if (v32 == 0.0)
      {
        v34 = 1.0;
      }

      v35 = v24 / v33;
      if (v33 == 0.0)
      {
        v35 = 1.0;
      }

      if (fmax(v34, v35) != 1.0)
      {
        if (v34 <= v35)
        {
          v32 = v24 * (v32 / v33);
          v33 = v24;
        }

        else
        {
          v33 = v22 * (v33 / v32);
          v32 = v22;
        }
      }

      v38 = PKSizeCeilToPixelWithScale(v32, v33, a6);
      [v20 drawInRect:BitmapContext inContext:{PKSizeAlignedInRectWithScale(0x100000001uLL, v38, v39, v31, v30, v22, v24, a6)}];
    }

    else if (v19)
    {
      if (CGPDFDocumentGetNumberOfPages(v19))
      {
        Page = CGPDFDocumentGetPage(v19, 1uLL);
        if (Page)
        {
          _DrawPDFPageInRect(BitmapContext, Page, v31, v30, v22, v24);
        }
      }

      CGPDFDocumentRelease(v19);
    }

    v36 = PKGetImageFromBitmapContext(BitmapContext, a6);
    CGContextRelease(BitmapContext);
  }

  else
  {
    v36 = 0;
  }

  return v36;
}

id PKPassFrontFaceDynamicLayerEmitterImage(void *a1, void *a2, void *a3, void *a4, double a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  if (a5 == 0.0)
  {
    a5 = PKScreenScale();
  }

  v13 = [v9 passStyle];
  v14 = [v11 URLForResource:v10 withExtension:@"pdf"];
  v15 = v14;
  if (v14)
  {
    v16 = CGPDFDocumentCreateWithURL(v14);
    v17 = 0;
  }

  else
  {
    v17 = [PKImage imageNamed:v10 inBundle:v11 screenScale:v12 suffix:a5];
    v16 = 0;
  }

  if (v16 | v17)
  {
    if (v13 == 6)
    {
      v18 = 85.0;
    }

    else
    {
      v18 = *(MEMORY[0x1E695F060] + 8);
    }

    if (v13 == 6)
    {
      v19 = 85.0;
    }

    else
    {
      v19 = *MEMORY[0x1E695F060];
    }

    v21 = *MEMORY[0x1E695EFF8];
    v20 = *(MEMORY[0x1E695EFF8] + 8);
    BitmapContext = _CreateBitmapContext(0, 1, 0, v19, v18, a5);
    if (v17)
    {
      [v17 size];
      v25 = v19 / v23;
      if (v23 == 0.0)
      {
        v25 = 1.0;
      }

      v26 = v18 / v24;
      if (v24 == 0.0)
      {
        v26 = 1.0;
      }

      if (fmin(v25, v26) != 1.0)
      {
        if (v25 >= v26)
        {
          v23 = v18 * (v23 / v24);
          v24 = v18;
        }

        else
        {
          v24 = v19 * (v24 / v23);
          v23 = v19;
        }
      }

      v34 = PKSizeCeilToPixelWithScale(v23, v24, a5);
      [v17 drawInRect:BitmapContext inContext:{PKSizeAlignedInRectWithScale(0x100000001uLL, v34, v35, v21, v20, v19, v18, a5)}];
    }

    else if (v16)
    {
      if (CGPDFDocumentGetNumberOfPages(v16))
      {
        Page = CGPDFDocumentGetPage(v16, 1uLL);
        if (Page)
        {
          v29 = Page;
          BoxRect = CGPDFPageGetBoxRect(Page, kCGPDFMediaBox);
          width = BoxRect.size.width;
          height = BoxRect.size.height;
          v32 = v19 / BoxRect.size.width;
          if (width == 0.0)
          {
            v32 = 1.0;
          }

          v33 = v18 / BoxRect.size.height;
          if (height == 0.0)
          {
            v33 = 1.0;
          }

          if (fmin(v32, v33) != 1.0)
          {
            if (v32 >= v33)
            {
              width = v18 * (width / height);
              height = v18;
            }

            else
            {
              height = v19 * (height / width);
              width = v19;
            }
          }

          v36 = PKSizeCeilToPixelWithScale(width, height, a5);
          v38 = PKSizeAlignedInRectWithScale(0x100000001uLL, v36, v37, v21, v20, v19, v18, a5);
          _DrawPDFPageInRect(BitmapContext, v29, v38, v39, v40, v41);
        }
      }

      CGPDFDocumentRelease(v16);
    }

    v27 = PKGetImageFromBitmapContext(BitmapContext, a5);
    CGContextRelease(BitmapContext);
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

PKImage *PKPassPartialFrontFaceImage(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  [v4 passStyle];
  [v3 size];
  v6 = v5;
  v8 = v7;
  [v3 scale];
  v10 = v9;
  v11 = objc_autoreleasePoolPush();
  v12 = [v3 imageRef];
  v29.origin.x = v10 * 0.0;
  v29.size.width = v6 * v10;
  v29.size.height = v10 * 84.0;
  v29.origin.y = v10 * 0.0;
  v13 = CGImageCreateWithImageInRect(v12, v29);
  if (v13)
  {
    v14 = v13;
    v15 = -[PKImage initWithCGImage:scale:orientation:]([PKImage alloc], "initWithCGImage:scale:orientation:", v13, [v3 orientation], v10);
    [v3 capInsets];
    v19 = v16;
    v21 = v20;
    v22 = v17;
    v23 = v18;
    if (v20 != 0.0 || v16 != 0.0 || v18 != 0.0 || v17 != 0.0)
    {
      v30.origin.x = 0.0;
      v30.origin.y = 0.0;
      v30.size.width = v6;
      v30.size.height = 84.0;
      v24 = v8 - CGRectGetMaxY(v30);
      if (v24 >= v22)
      {
        v25 = 0.0;
      }

      else
      {
        v25 = v22 - v24;
      }

      v26 = [(PKImage *)v15 resizableImageByTilingWithCapInsets:v19, v21, v25, v23];

      v15 = v26;
    }

    CFRelease(v14);
  }

  else
  {
    v15 = 0;
  }

  objc_autoreleasePoolPop(v11);

  return v15;
}

double PKPaymentStyleScaledCornerRadius(double a1)
{
  v2 = PKScreenSize();
  v3 = PKGetMaxPassWidthForScreenSize(v2);
  if (v3 <= 0.0)
  {
    v3 = a1;
  }

  return a1 / v3 * 12.0;
}

id _PANStringAttributes(uint64_t a1, int a2, CGFloat a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 4;
  settings.spec = kCTParagraphStyleSpecifierLineBreakMode;
  settings.valueSize = 1;
  settings.value = &v10;
  v6 = CTParagraphStyleCreate(&settings, 1uLL);
  UIFontForLanguage = CTFontCreateUIFontForLanguage(kCTFontUIFontSystem, a3, 0);
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v8 setObject:v6 forKeyedSubscript:*MEMORY[0x1E6965A30]];
  [v8 setObject:a1 forKeyedSubscript:*MEMORY[0x1E69659D8]];
  [v8 setObject:UIFontForLanguage forKeyedSubscript:*MEMORY[0x1E6965658]];
  if (a2)
  {
    [v8 setObject:&unk_1F23B54F8 forKeyedSubscript:*MEMORY[0x1E6965A18]];
  }

  CFRelease(UIFontForLanguage);
  CFRelease(v6);

  return v8;
}

__CFString *_PKPaymentPassDefaultSuffixFromDictionary(void *a1)
{
  v1 = _PKPaymentPassNetworkIdentifierFromDictionary(a1);
  v2 = v1;
  v3 = @"●●●●";
  if (v1 && [v1 integerValue] == 1)
  {
    v3 = @"●●●●●";
  }

  v4 = v3;

  return v3;
}

void CGContextDrawSubimage(CGContext *a1, CGImageRef image, int a3, int a4, int a5, int a6, int a7, int a8, double a9, double a10, double a11, double a12, CGFloat a13, CGFloat a14, CGFloat a15, CGFloat a16, uint64_t a17)
{
  v35.origin.x = a9 * *&a17;
  v35.origin.y = a10 * *&a17;
  v35.size.width = a11 * *&a17;
  v35.size.height = a12 * *&a17;
  v25 = CGImageCreateWithImageInRect(image, v35);
  if (v25)
  {
    v26 = v25;
    CGContextSaveGState(a1);
    v36.origin.x = a13;
    v36.origin.y = a14;
    v36.size.width = a15;
    v36.size.height = a16;
    CGContextClipToRect(a1, v36);
    v37.origin.x = a13;
    v37.origin.y = a14;
    v37.size.width = a15;
    v37.size.height = a16;
    MaxY = CGRectGetMaxY(v37);
    CGContextTranslateCTM(a1, 0.0, MaxY);
    CGContextScaleCTM(a1, 1.0, -1.0);
    v28 = 0;
    v29 = a13;
    if (a3)
    {
      v30 = a11;
      v31 = a12;
      CGContextDrawTiledImage(a1, *&v29, v26);
    }

    else
    {
      v32 = a15;
      v33 = a16;
      CGContextDrawImage(a1, *&v29, v26);
    }

    CGContextRestoreGState(a1);

    CGImageRelease(v26);
  }
}

void make1DGaussianKernel(unint64_t a1, float *a2, float a3, double a4)
{
  v4 = a1;
  if (a1)
  {
    v5 = a2;
    if (a1 == 1)
    {
      *a2 = 1.0;
    }

    else
    {
      *&a4 = (a1 >> 1);
      v6 = vdupq_n_s64(a1 - 1);
      v27 = vdupq_lane_s64(COERCE__INT64(((a3 * a3) + (a3 * a3))), 0);
      v28 = vdupq_lane_s32(*&a4, 0);
      v7 = (a1 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v8 = xmmword_1ADB9AF30;
      v9 = xmmword_1ADB78CF0;
      v10 = a2 + 2;
      v11 = 0.0;
      v25 = vdupq_n_s64(4uLL);
      v26 = vnegq_f64(0);
      v29 = v6;
      do
      {
        v34 = vcgeq_u64(v6, v9);
        v12 = vmovn_s64(v34);
        v35 = v9;
        v36 = v8;
        v13 = vsubq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vcvtq_f64_u64(v9)), vcvtq_f64_u64(v8)), v28);
        v14 = vmulq_f32(v13, vnegq_f32(v13));
        v37 = vdivq_f64(vcvtq_f64_f32(*v14.f32), v27);
        __xa = vdivq_f64(vcvt_hight_f64_f32(v14), v27);
        v31 = exp(__xa.f64[1]);
        __x = exp(__xa.f64[0]);
        v30 = exp(v37.f64[1]);
        *v15.i64 = exp(v37.f64[0]);
        *&v15.i64[1] = v30;
        if (vuzp1_s16(v12, *v34.i8).u8[0])
        {
          v16 = *v15.i64;
          *(v10 - 2) = v16;
        }

        if (vuzp1_s16(v12, *&v15).i8[2])
        {
          v17 = v30;
          *(v10 - 1) = v17;
        }

        *v18.i64 = __x;
        *&v18.i64[1] = v31;
        v6 = v29;
        v19 = vcgeq_u64(v29, v36);
        if (vuzp1_s16(*&v15, vmovn_s64(v19)).i32[1])
        {
          v20 = __x;
          *v10 = v20;
          v21 = v31;
          v10[1] = v21;
        }

        v22 = vbslq_s8(v19, v18, v26);
        v23 = vbslq_s8(v34, v15, v26);
        v11 = v11 + *v23.i64 + *&v23.i64[1] + *v22.i64 + *&v22.i64[1];
        v8 = vaddq_s64(v36, v25);
        v9 = vaddq_s64(v35, v25);
        v10 += 4;
        v7 -= 4;
      }

      while (v7);
      do
      {
        v24 = *v5 / v11;
        *v5++ = v24;
        --v4;
      }

      while (v4);
    }
  }

  else
  {
    __break(1u);
  }
}

__CFString *PKFamilyMemberTypeToString(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E79DF5A8[a1];
  }
}

uint64_t PKFamilyMemberTypeFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"adult")
  {
    v3 = 0;
    goto LABEL_12;
  }

  if (!v1)
  {
    goto LABEL_8;
  }

  v3 = [(__CFString *)v1 caseInsensitiveCompare:@"adult"];

  if (v3)
  {
    v4 = v2;
    if (v4 == @"teen" || (v5 = v4, v6 = [(__CFString *)v4 caseInsensitiveCompare:@"teen"], v5, !v6))
    {
      v3 = 1;
      goto LABEL_12;
    }

    v7 = v5;
    if (v7 == @"child" || (v8 = v7, v9 = [(__CFString *)v7 caseInsensitiveCompare:@"child"], v8, !v9))
    {
      v3 = 2;
      goto LABEL_12;
    }

LABEL_8:
    v3 = -1;
  }

LABEL_12:

  return v3;
}

unint64_t PKFamilyMemberTypeFromFAMemberType(unint64_t result)
{
  if (result >= 3)
  {
    return -1;
  }

  return result;
}

void sub_1AD99DE94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

PKCatalog *_CatalogFromDictionaries(void *a1, void *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc_init(PKCatalog);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v3 PKDictionaryForKey:@"v1"];
    v7 = [v4 PKDictionaryForKey:@"v1"];
    if (v6 | v7)
    {
      v28 = v5;
      v29 = v6;
      v8 = [(PKCatalog *)v5 groups];
      [v7 PKArrayContaining:objc_opt_class() forKey:@"groups"];
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v9 = v39 = 0u;
      v10 = [v9 countByEnumeratingWithState:&v36 objects:v41 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v37;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v37 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = _GroupFromDictionary(*(*(&v36 + 1) + 8 * i));
            v15 = v14;
            if (!v14)
            {
              v17 = v9;
              v5 = v28;
              v6 = v29;
              goto LABEL_32;
            }

            [(PKCatalog *)v14 setIsUbiquitous:0];
            [v8 addObject:v15];
          }

          v11 = [v9 countByEnumeratingWithState:&v36 objects:v41 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      v6 = v29;
      v16 = [v29 PKArrayContaining:objc_opt_class() forKey:@"groups"];
      if (v16)
      {
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v17 = v16;
        v18 = [v17 countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v33;
          while (2)
          {
            for (j = 0; j != v19; ++j)
            {
              if (*v33 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = _GroupFromDictionary(*(*(&v32 + 1) + 8 * j));
              if (!v22)
              {
                v15 = 0;
                v25 = v17;
                v5 = v28;
                v6 = v29;
                goto LABEL_31;
              }

              v23 = v22;
              [v22 setIsUbiquitous:1];
              v30[0] = MEMORY[0x1E69E9820];
              v30[1] = 3221225472;
              v30[2] = ___CatalogFromDictionaries_block_invoke;
              v30[3] = &unk_1E79DF5F0;
              v24 = v23;
              v31 = v24;
              if ([v8 indexOfObjectPassingTest:v30] == 0x7FFFFFFFFFFFFFFFLL)
              {
                [v8 addObject:v24];
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v32 objects:v40 count:16];
            if (v19)
            {
              continue;
            }

            break;
          }
        }

        v6 = v29;
        v25 = [v29 PKDateForKey:@"timestamp"];
        if (v25)
        {
          v5 = v28;
          [(PKCatalog *)v28 setTimestamp:v25];
        }

        else
        {
          v26 = [MEMORY[0x1E695DF00] distantPast];
          v5 = v28;
          [(PKCatalog *)v28 setTimestamp:v26];
        }

        v15 = v5;
LABEL_31:
      }

      else
      {
        v17 = 0;
        v15 = 0;
        v5 = v28;
      }

LABEL_32:
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id _DictionaryFromCatalogForUbiquity(void *a1, int a2)
{
  v33[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = objc_alloc(MEMORY[0x1E695DF70]);
  v5 = [v3 groups];
  v6 = [v4 initWithCapacity:{objc_msgSend(v5, "count")}];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v22 = v3;
  v7 = [v3 groups];
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        if ([v12 isUbiquitous] == a2)
        {
          v32 = @"uniqueIDs";
          v13 = [v12 uniqueIDs];
          v33[0] = v13;
          v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];

          [v6 addObject:v14];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v9);
  }

  v15 = [v22 timestamp];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = [MEMORY[0x1E695DF00] distantPast];
  }

  v18 = v17;

  v28[1] = v18;
  v29 = @"v1";
  v27[0] = @"groups";
  v27[1] = @"timestamp";
  v28[0] = v6;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];
  v30 = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];

  return v20;
}

PKCatalogGroup *_GroupFromDictionary(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_alloc_init(PKCatalogGroup);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v1 PKArrayContaining:objc_opt_class() forKey:@"uniqueIDs"];
    v4 = v3;
    if (v3)
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v14;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v14 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = *(*(&v13 + 1) + 8 * i);
            v10 = [(PKCatalogGroup *)v2 uniqueIDs];
            [v10 addObject:v9];
          }

          v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v6);
      }

      v11 = v2;
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

  return v11;
}

uint64_t PKIssuerMessagingFlagContextTypeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"account"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"application"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PKIssuerMessagingFlagContextTypeToString(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 2)
  {
    v1 = @"application";
  }

  if (a1 == 1)
  {
    return @"account";
  }

  else
  {
    return v1;
  }
}

uint64_t PKAggregateSharingStatusForShareableCredentials(void *a1)
{
  v31[5] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_alloc(MEMORY[0x1E695DF90]);
  v30[0] = &unk_1F23B5558;
  v30[1] = &unk_1F23B5588;
  v31[0] = &unk_1F23B5570;
  v31[1] = &unk_1F23B5570;
  v30[2] = &unk_1F23B55A0;
  v30[3] = &unk_1F23B55B8;
  v31[2] = &unk_1F23B5570;
  v31[3] = &unk_1F23B5570;
  v30[4] = &unk_1F23B55D0;
  v31[4] = &unk_1F23B5570;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:5];
  v4 = [v2 initWithDictionary:v3];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = v1;
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v10, "status", v25)}];
        v12 = [v4 objectForKey:v11];

        v13 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v12, "integerValue") + 1}];
        v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v10, "status")}];
        [v4 setObject:v13 forKey:v14];
      }

      v7 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v7);
  }

  v15 = [v4 objectForKey:&unk_1F23B5588];
  v16 = [v15 integerValue];

  if (v16 <= 0)
  {
    v18 = [v4 objectForKey:&unk_1F23B55B8];
    v19 = [v18 integerValue];

    if (v19 <= 0)
    {
      v20 = [v4 objectForKey:&unk_1F23B55D0];
      v21 = [v20 integerValue];

      if (v21 <= 0)
      {
        v22 = [v4 objectForKey:&unk_1F23B55A0];
        v23 = [v22 integerValue] > 0;

        v17 = 4 * v23;
      }

      else
      {
        v17 = 3;
      }
    }

    else
    {
      v17 = 2;
    }
  }

  else
  {
    v17 = 1;
  }

  return v17;
}

Class initMCCSecretAgentController()
{
  if (qword_1ED6D2098 != -1)
  {
    dispatch_once(&qword_1ED6D2098, &__block_literal_global_191);
  }

  result = objc_getClass("MCCSecretAgentController");
  _MergedGlobals_265 = result;
  getMCCSecretAgentControllerClass[0] = MCCSecretAgentControllerFunction;
  return result;
}

void *__LoadicloudMCCKit_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/icloudMCCKit.framework/icloudMCCKit", 2);
  LoadicloudMCCKit_frameworkLibrary = result;
  return result;
}

__CFString *PKCloudStoreContainerChangeEventTypeToString(uint64_t a1)
{
  if ((a1 - 1) > 0x38)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79DF610[a1 - 1];
  }
}

__CFString *PKConsistencyCheckCleanupActionsToString(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3 = v2;
    if (v1)
    {
      [v2 addObject:@"Sync With TSM"];
      if ((v1 & 2) == 0)
      {
LABEL_4:
        if ((v1 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_18;
      }
    }

    else if ((v1 & 2) == 0)
    {
      goto LABEL_4;
    }

    [v3 addObject:@"Sync With Broker"];
    if ((v1 & 4) == 0)
    {
LABEL_5:
      if ((v1 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_19;
    }

LABEL_18:
    [v3 addObject:@"Register Credential"];
    if ((v1 & 8) == 0)
    {
LABEL_6:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_20;
    }

LABEL_19:
    [v3 addObject:@"Delete"];
    if ((v1 & 0x10) == 0)
    {
LABEL_7:
      if ((v1 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_21;
    }

LABEL_20:
    [v3 addObject:@"activate"];
    if ((v1 & 0x20) == 0)
    {
LABEL_8:
      if ((v1 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_22;
    }

LABEL_21:
    [v3 addObject:@"suspend"];
    if ((v1 & 0x40) == 0)
    {
LABEL_9:
      if ((v1 & 0x80) == 0)
      {
LABEL_11:
        v4 = [v3 componentsJoinedByString:{@", "}];

        goto LABEL_13;
      }

LABEL_10:
      [v3 addObject:@"progenitor key designation"];
      goto LABEL_11;
    }

LABEL_22:
    [v3 addObject:@"upload key material"];
    if ((v1 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v4 = @"No Actions Needed";
LABEL_13:

  return v4;
}

void EndTrackingConsistencyCheck(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    goto LABEL_12;
  }

  os_unfair_lock_lock(&_MergedGlobals_267);
  v2 = [qword_1ED6D20B8 objectForKeyedSubscript:v1];
  v3 = [v2 unsignedIntegerValue];

  if (!v3)
  {
    v5 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AD337000, v5, OS_LOG_TYPE_ERROR, "PKSecureElementConsistencyChecker: Consistency Check Count Unbalanced", buf, 2u);
    }

    goto LABEL_8;
  }

  if (v3 == 1)
  {
LABEL_8:
    [qword_1ED6D20B8 setObject:0 forKeyedSubscript:v1];
    goto LABEL_9;
  }

  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v3 - 1];
  [qword_1ED6D20B8 setObject:v4 forKeyedSubscript:v1];

LABEL_9:
  v6 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "PKSecureElementConsistencyChecker: Ending consistency check...", v7, 2u);
  }

  os_unfair_lock_unlock(&_MergedGlobals_267);
LABEL_12:
}

PKSecureElementConsistencyCheckResult *CheckConsistencyWithDeviceState(void *a1, void *a2)
{
  v98 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v58 = a2;
  v4 = [v3 deviceCredentials];
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [v4 pk_groupDictionaryByApplyingBlock:&__block_literal_global_271_1];
  *v95 = MEMORY[0x1E69E9820];
  *&v95[8] = 3221225472;
  *&v95[16] = __CreateDeviceCredentialMap_block_invoke_2;
  v96 = &unk_1E79DFA60;
  v7 = v5;
  v97 = v7;
  [v6 enumerateKeysAndObjectsUsingBlock:v95];

  v8 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v92 = [v4 count];
    v93 = 2112;
    v94 = v7;
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "PKSecureElementConsistencyChecker: created mapping of %lu device credentials.\n %@", buf, 0x16u);
  }

  v9 = objc_alloc_init(PKSEConsistencyCheckResultCollector);
  oslog = v8;
  v71[0] = MEMORY[0x1E69E9820];
  v71[1] = 3221225472;
  v72 = __CheckConsistencyWithDeviceState_block_invoke;
  v73 = &unk_1E79DF9A8;
  v59 = v7;
  v74 = v59;
  v56 = v9;
  v75 = v56;
  v10 = v3;
  v11 = v8;
  v68 = v71;
  v12 = [v10 devicePaymentApplications];
  v13 = [v10 passCredentials];
  v66 = [v10 passIsoBlobHashForCredentialIdentifier];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v12 count];
    v15 = [v13 count];
    *v95 = 134218240;
    *&v95[4] = v14;
    *&v95[12] = 2048;
    *&v95[14] = v15;
    _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "PKSecureElementConsistencyChecker: Evaluating %lu local payment applications and %lu subcredentials against the device credentials.", v95, 0x16u);
  }

  v55 = v13;
  v57 = v10;

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  obj = v12;
  v63 = [obj countByEnumeratingWithState:&v84 objects:v95 count:16];
  if (v63)
  {
    v62 = *v85;
    do
    {
      v16 = 0;
      do
      {
        if (*v85 != v62)
        {
          objc_enumerationMutation(obj);
        }

        v64 = v16;
        v17 = *(*(&v84 + 1) + 8 * v16);
        v18 = [PKSECredentialAddress alloc];
        v19 = [v17 applicationIdentifier];
        v20 = [(PKSECredentialAddress *)v18 initWithType:0 identifier:v19];

        v21 = [v17 paymentNetworkIdentifier];
        v22 = [v17 paymentType];
        v67 = v20;
        v23 = [[PKSEConsistencyCheckPassCredential alloc] initWithPassCredential:v17 address:v20 paymentMethod:v22];
        v72(v68, v23, 1);
        v24 = [v17 subcredentials];
        v80 = 0u;
        v81 = 0u;
        v82 = 0u;
        v83 = 0u;
        v65 = v24;
        v25 = [v24 countByEnumeratingWithState:&v80 objects:buf count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v81;
          do
          {
            v28 = 0;
            v29 = v23;
            do
            {
              if (*v81 != v27)
              {
                objc_enumerationMutation(v65);
              }

              v30 = *(*(&v80 + 1) + 8 * v28);
              v31 = [v30 isManagedByTSM];
              [v30 setCredentialType:v21];
              v32 = [v30 identifier];
              v33 = [v67 addressByAppendingType:1 identifier:v32];

              v23 = [[PKSEConsistencyCheckPassCredential alloc] initWithPassCredential:v30 address:v33 paymentMethod:v22];
              v34 = [v30 identifier];
              v35 = [v66 objectForKeyedSubscript:v34];

              if (v35)
              {
                v89 = &unk_1F23B5618;
                v90 = v35;
                v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v90 forKeys:&v89 count:1];
                [(PKSEConsistencyCheckPassCredential *)v23 setKeyMaterialHashForDeviceCredentialType:v36];
              }

              v72(v68, v23, v31);

              ++v28;
              v29 = v23;
            }

            while (v26 != v28);
            v26 = [v65 countByEnumeratingWithState:&v80 objects:buf count:16];
          }

          while (v26);
        }

        v16 = v64 + 1;
      }

      while (v64 + 1 != v63);
      v63 = [obj countByEnumeratingWithState:&v84 objects:v95 count:16];
    }

    while (v63);
  }

  v79 = 0u;
  v77 = 0u;
  v78 = 0u;
  v76 = 0u;
  v37 = v55;
  v38 = [v37 countByEnumeratingWithState:&v76 objects:v88 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v77;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v77 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v42 = *(*(&v76 + 1) + 8 * i);
        v43 = [PKSECredentialAddress alloc];
        v44 = [v42 identifier];
        v45 = [(PKSECredentialAddress *)v43 initWithType:1 identifier:v44];

        v46 = [[PKSEConsistencyCheckPassCredential alloc] initWithPassCredential:v42 address:v45 paymentMethod:0];
        v72(v68, v46, 0);
      }

      v39 = [v37 countByEnumeratingWithState:&v76 objects:v88 count:16];
    }

    while (v39);
  }

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *v95 = 138412290;
    *&v95[4] = v59;
    _os_log_impl(&dword_1AD337000, oslog, OS_LOG_TYPE_DEFAULT, "PKSecureElementConsistencyChecker: evaluating orphaned device credentials.\n %@", v95, 0xCu);
  }

  v47 = [v59 allValues];
  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v69[2] = __CheckConsistencyWithDeviceState_block_invoke_265;
  v69[3] = &unk_1E79DF9F8;
  v48 = v56;
  v70 = v48;
  [v47 enumerateObjectsUsingBlock:v69];

  v49 = [PKSecureElementConsistencyCheckResult alloc];
  v50 = [(PKSEConsistencyCheckResultCollector *)v48 cleanupActions];
  v51 = [(PKSEConsistencyCheckResultCollector *)v48 resultsSummary];
  v52 = [(PKSEConsistencyCheckResultCollector *)v48 requestedActions];
  v53 = [(PKSecureElementConsistencyCheckResult *)v49 initWithCleanupActions:v50 resultsSummary:v51 requestedActions:v52 registeredRegions:v58];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *v95 = 138412290;
    *&v95[4] = v53;
    _os_log_impl(&dword_1AD337000, oslog, OS_LOG_TYPE_DEFAULT, "PKSecureElementConsistencyChecker: returning result: %@", v95, 0xCu);
  }

  return v53;
}

void __CheckConsistencyWithDeviceState_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v59 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = [v5 paymentMethod];
  v9 = [v5 type];
  v10 = v9;
  if (v9)
  {
    v11 = v8 == 1002;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (v9)
  {
    v13 = [v5 keyMaterialHashForDeviceCredentialType];
    v14 = [v13 objectForKey:&unk_1F23B5618];
    if (v14)
    {
      v16 = v8 == 1004 || (v8 & 0xFFFFFFFFFFFFFFFELL) == 1002;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = [v5 address];
  v18 = [v17 mostSpecificIdentifier];

  *aBlock = MEMORY[0x1E69E9820];
  *&aBlock[8] = 3221225472;
  *&aBlock[16] = __GetExpectedDeviceCredentialsForPassCredential_block_invoke;
  v55 = &unk_1E79DFA88;
  v56 = v6;
  v57 = v18;
  v58 = v7;
  v19 = v7;
  v20 = v18;
  v21 = v6;
  v22 = _Block_copy(aBlock);
  v23 = v22;
  if (v10)
  {
    if (!v12)
    {
      goto LABEL_20;
    }

LABEL_45:
    v23[2](v23, 1);
    if (!v16)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  (*(v22 + 2))(v22, 0);
  if (v12)
  {
    goto LABEL_45;
  }

LABEL_20:
  if (v16)
  {
LABEL_21:
    v23[2](v23, 2);
  }

LABEL_22:
  v24 = [v19 copy];

  v25 = [v24 objectForKey:&unk_1F23B5600];
  v48 = v25;
  if (!v25 || (v26 = v25, [MEMORY[0x1E695DFB0] null], v27 = objc_claimAutoreleasedReturnValue(), v27, v26 == v27))
  {
    v29 = @"pass";
    v28 = a3;
  }

  else
  {
    v28 = [v26 isManagedByTSM];
    v29 = @"device";
  }

  v30 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = @"NO";
    if (v28)
    {
      v32 = @"YES";
    }

    else
    {
      v32 = @"NO";
    }

    *aBlock = 138412802;
    *&aBlock[4] = v32;
    *&aBlock[12] = 2112;
    *&aBlock[14] = v29;
    if (v28 != a3)
    {
      v31 = @"YES";
    }

    *&aBlock[22] = 2112;
    v55 = v31;
    _os_log_impl(&dword_1AD337000, v30, OS_LOG_TYPE_DEFAULT, "PKSecureElementConsistencyChecker: should add pass credential to results summary evaluated to %@, source: %@ isMismatched: %@", aBlock, 0x20u);
  }

  [*(a1 + 40) setAddCleanupActionsToResultsSummary:v28];
  v33 = *(a1 + 40);
  v34 = v5;
  v35 = v24;
  v36 = v33;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v37 = [v35 countByEnumeratingWithState:&v50 objects:aBlock count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v51;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v51 != v39)
        {
          objc_enumerationMutation(v35);
        }

        v41 = *(*(&v50 + 1) + 8 * i);
        v42 = [v41 integerValue];
        v43 = [v35 objectForKey:v41];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v44 = v43;
        }

        else
        {
          v44 = 0;
        }

        v49 = 0;
        v45 = v44;
        v46 = CleanupActionsForCredentialPair(v34, v45, v42, &v49);
        v47 = v49;
        [v36 addCleanupActions:v46 cleanupReason:v47 forDeviceCredential:v45 passCredential:v34];
      }

      v38 = [v35 countByEnumeratingWithState:&v50 objects:aBlock count:16];
    }

    while (v38);
  }
}

void __CheckConsistencyWithDeviceState_block_invoke_265(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __CheckConsistencyWithDeviceState_block_invoke_2;
  v3[3] = &unk_1E79DF9D0;
  v4 = *(a1 + 32);
  [a2 enumerateKeysAndObjectsUsingBlock:v3];
}