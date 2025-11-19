_OWORD *sub_264489518(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_264489528@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  *a2 = v4;
  a2[1] = v5;
  return sub_26448B42C(v4, v5);
}

void sub_264489694(uint64_t a1, const char *a2, double a3)
{
  v9 = objc_msgSend_subsystem(*(a1 + 32), a2, a3);
  v3 = v9;
  v6 = objc_msgSend_UTF8String(v9, v4, v5);
  v7 = os_log_create(v6, "pin_crypto");
  v8 = qword_27FF6E768;
  qword_27FF6E768 = v7;
}

void sub_26448979C(uint64_t a1, const char *a2, double a3)
{
  v9 = objc_msgSend_subsystem(*(a1 + 32), a2, a3);
  v3 = v9;
  v6 = objc_msgSend_UTF8String(v9, v4, v5);
  v7 = os_log_create(v6, "secure_element");
  v8 = qword_27FF6E778;
  qword_27FF6E778 = v7;
}

void sub_2644898A4(uint64_t a1, const char *a2, double a3)
{
  v9 = objc_msgSend_subsystem(*(a1 + 32), a2, a3);
  v3 = v9;
  v6 = objc_msgSend_UTF8String(v9, v4, v5);
  v7 = os_log_create(v6, "xpc_client");
  v8 = qword_27FF6E788;
  qword_27FF6E788 = v7;
}

void sub_2644899AC(uint64_t a1, const char *a2, double a3)
{
  v9 = objc_msgSend_subsystem(*(a1 + 32), a2, a3);
  v3 = v9;
  v6 = objc_msgSend_UTF8String(v9, v4, v5);
  v7 = os_log_create(v6, "inspector");
  v8 = qword_27FF6E798;
  qword_27FF6E798 = v7;
}

__CFString *sub_264489A14(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    return @"true";
  }

  else
  {
    return @"false";
  }
}

void sub_264489A9C(void *a1, uint64_t a2, __int128 *a3, void *a4)
{
  v5 = MEMORY[0x277CCA980];
  v12 = *a3;
  LODWORD(v13) = *(a3 + 4);
  v6 = a4;
  v9 = objc_msgSend_decimalNumberWithDecimal_(v5, v7, v8, &v12);
  objc_msgSend_encodeObject_forKey_(a1, v10, v11, v9, v6, v12, v13);
}

void sub_264489B18(void *a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v5 = a2;
  v6 = objc_opt_class();
  v12 = objc_msgSend_decodeObjectOfClass_forKey_(a1, v7, v8, v6, v5);

  v11 = v12;
  if (v12 || (objc_msgSend_notANumber(MEMORY[0x277CCA980], v9, v10), (v11 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v13 = v11;
    objc_msgSend_decimalValue(v11, v9, v10);
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }
}

void spr_releaseCFObject(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t sub_264489BEC(void *a1, const char *a2, double a3, uint64_t a4, _BYTE *a5)
{
  v6 = objc_msgSend_objectForKey_(a1, a2, a3);
  v9 = v6;
  if (v6)
  {
    objc_opt_class();
    LOBYTE(v6) = objc_opt_isKindOfClass();
  }

  if (a5)
  {
    *a5 = v6 & 1;
  }

  if (v6)
  {
    v10 = objc_msgSend_BOOLValue(v9, v7, v8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t sub_264489C60(void *a1, const char *a2, double a3, uint64_t a4, _BYTE *a5)
{
  v6 = objc_msgSend_objectForKey_(a1, a2, a3);
  v9 = v6;
  if (v6)
  {
    objc_opt_class();
    LOBYTE(v6) = objc_opt_isKindOfClass();
  }

  if (a5)
  {
    *a5 = v6 & 1;
  }

  if (v6)
  {
    v10 = objc_msgSend_integerValue(v9, v7, v8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void sub_264489CD4(void *a1@<X0>, const char *a2@<X1>, _BYTE *a3@<X3>, uint64_t a4@<X8>, double a5@<D0>)
{
  v7 = objc_msgSend_objectForKey_(a1, a2, a5);
  v11 = v7;
  if (v7)
  {
    objc_opt_class();
    LOBYTE(v7) = objc_opt_isKindOfClass();
  }

  if (a3)
  {
    *a3 = v7 & 1;
  }

  if ((v7 & 1) == 0)
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    goto LABEL_9;
  }

  v10 = v11;
  if (v11)
  {
    objc_msgSend_decimalValue(v11, v8, v9);
LABEL_9:
    v10 = v11;
    goto LABEL_10;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
LABEL_10:
}

double sub_264489D78(void *a1, const char *a2, double a3, uint64_t a4, _BYTE *a5)
{
  v6 = objc_msgSend_objectForKey_(a1, a2, a3);
  v9 = v6;
  if (v6)
  {
    objc_opt_class();
    LOBYTE(v6) = objc_opt_isKindOfClass();
  }

  if (a5)
  {
    *a5 = v6 & 1;
  }

  v10 = 0.0;
  if (v6)
  {
    objc_msgSend_doubleValue(v9, v7, v8);
    v10 = v11;
  }

  return v10;
}

id sub_264489DF0(void *a1, const char *a2, double a3)
{
  v4 = MEMORY[0x277CCAB68];
  v5 = objc_msgSend_length(a1, a2, a3);
  v8 = objc_msgSend_stringWithCapacity_(v4, v6, v7, 2 * v5);
  if (objc_msgSend_length(a1, v9, v10))
  {
    v11 = 0;
    do
    {
      v12 = a1;
      v15 = objc_msgSend_bytes(v12, v13, v14);
      objc_msgSend_appendFormat_(v8, v16, v17, @"%02X", *(v15 + v11++));
    }

    while (v11 < objc_msgSend_length(a1, v18, v19));
  }

  return v8;
}

id sub_264489EA0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = v3;
  v7 = objc_msgSend_UTF8String(v4, v5, v6);
  v10 = 0;
  if (v3)
  {
    v11 = v7;
    if (v7)
    {
      if ((objc_msgSend_length(v3, v8, v9) & 1) == 0)
      {
        if (objc_msgSend_length(v3, v12, v13))
        {
          v36 = 0;
          v16 = objc_msgSend_length(v3, v14, v15);
          v17 = malloc_type_malloc(v16 >> 1, 0x6AF5ECADuLL);
          v20 = objc_msgSend_length(v3, v18, v19);
          bzero(v17, v20 >> 1);
          if (objc_msgSend_length(v3, v21, v22))
          {
            v25 = 0;
            v26 = MEMORY[0x277D85DE0];
            while (1)
            {
              *__str = *(v11 + v25);
              if (__str[0] < 0 || (*(v26 + 4 * (__str[0] & 0x7F) + 60) & 0x10000) == 0 || *__str < 0 || (*(v26 + 4 * __str[1] + 60) & 0x10000) == 0)
              {
                break;
              }

              *(v17 + (v25 >> 1)) = strtoul(__str, 0, 16);
              v25 += 2;
              if (v25 >= objc_msgSend_length(v3, v27, v28))
              {
                goto LABEL_12;
              }
            }

            free(v17);
            goto LABEL_16;
          }

LABEL_12:
          v29 = MEMORY[0x277CBEA90];
          v30 = objc_msgSend_length(v3, v23, v24);
          v33 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(v29, v31, v32, v17, v30 >> 1, 1);
        }

        else
        {
          v33 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v14, v15, 0, 0);
        }

        v10 = v33;
        goto LABEL_17;
      }

LABEL_16:
      v10 = 0;
    }
  }

LABEL_17:

  return v10;
}

uint64_t sub_26448A028(void *a1, const char *a2, double a3)
{
  v3 = MEMORY[0x277CCACA8];
  objc_msgSend_BOOLValue(a1, a2, a3);

  return MEMORY[0x2821F9670](v3, sel_stringWithBool_, v4);
}

id sub_26448A068(void *a1, uint64_t a2, dispatch_time_t a3, void *a4)
{
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_26448A37C;
  v40 = sub_26448A38C;
  v41 = 0;
  v33 = 0;
  v34[0] = &v33;
  v34[1] = 0x3032000000;
  v34[2] = sub_26448A37C;
  v34[3] = sub_26448A38C;
  v35 = 0;
  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_26448A394;
  v29[3] = &unk_279B5F058;
  v31 = &v36;
  v32 = &v33;
  v8 = v7;
  v30 = v8;
  v11 = objc_msgSend_startSecureElementManagerSession_(a1, v9, v10, v29);
  if ((objc_msgSend_isFirstInQueue(v11, v12, v13) & 1) == 0)
  {
    v16 = objc_msgSend_secureElementObjC(SPRLogger, v14, v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v28 = 0;
      _os_log_impl(&dword_264488000, v16, OS_LOG_TYPE_DEFAULT, "Waiting for NFSecureElementManagerSession...", v28, 2u);
    }
  }

  if (dispatch_group_wait(v8, a3))
  {
    objc_msgSend_endSession(v11, v17, v18);
    v21 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v19, v20, @"nf.fwk", 5, 0);
    v22 = *(v34[0] + 40);
    *(v34[0] + 40) = v21;

    v25 = objc_msgSend_secureElementObjC(SPRLogger, v23, v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_2644AAF98();
    }
  }

  else if (v37[5])
  {
    v25 = objc_msgSend_secureElementObjC(SPRLogger, v17, v18);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *v28 = 0;
      _os_log_impl(&dword_264488000, v25, OS_LOG_TYPE_DEFAULT, "NFSecureElementManagerSession started", v28, 2u);
    }
  }

  else
  {
    v25 = objc_msgSend_secureElementObjC(SPRLogger, v17, v18);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_2644AAFD8(v34);
    }
  }

  if (a4)
  {
    *a4 = *(v34[0] + 40);
  }

  v26 = v37[5];

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v36, 8);

  return v26;
}

void sub_26448A348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_26448A37C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26448A394(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

uint64_t sub_26448A430(uint64_t a1, double a2)
{
  dispatch_time(0, (a2 * 1000000000.0));

  return MEMORY[0x2821F9670](a1, sel_startSecureElementManagerSessionWithDeadline_error_, v3);
}

id sub_26448A490(void *a1, uint64_t a2, dispatch_time_t a3, void *a4)
{
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_26448A37C;
  v40 = sub_26448A38C;
  v41 = 0;
  v33 = 0;
  v34[0] = &v33;
  v34[1] = 0x3032000000;
  v34[2] = sub_26448A37C;
  v34[3] = sub_26448A38C;
  v35 = 0;
  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_26448A7A4;
  v29[3] = &unk_279B5F080;
  v31 = &v36;
  v32 = &v33;
  v8 = v7;
  v30 = v8;
  v11 = objc_msgSend_startSecureElementReaderSession_(a1, v9, v10, v29);
  if ((objc_msgSend_isFirstInQueue(v11, v12, v13) & 1) == 0)
  {
    v16 = objc_msgSend_secureElementObjC(SPRLogger, v14, v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v28 = 0;
      _os_log_impl(&dword_264488000, v16, OS_LOG_TYPE_DEFAULT, "Waiting for NFSecureElementReaderSession...", v28, 2u);
    }
  }

  if (dispatch_group_wait(v8, a3))
  {
    objc_msgSend_endSession(v11, v17, v18);
    v21 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v19, v20, @"nf.fwk", 5, 0);
    v22 = *(v34[0] + 40);
    *(v34[0] + 40) = v21;

    v25 = objc_msgSend_secureElementObjC(SPRLogger, v23, v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_2644AB054();
    }
  }

  else if (v37[5])
  {
    v25 = objc_msgSend_secureElementObjC(SPRLogger, v17, v18);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *v28 = 0;
      _os_log_impl(&dword_264488000, v25, OS_LOG_TYPE_DEFAULT, "NFSecureElementReaderSession started", v28, 2u);
    }
  }

  else
  {
    v25 = objc_msgSend_secureElementObjC(SPRLogger, v17, v18);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_2644AB094(v34);
    }
  }

  if (a4)
  {
    *a4 = *(v34[0] + 40);
  }

  v26 = v37[5];

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v36, 8);

  return v26;
}

void sub_26448A770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_26448A7A4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

uint64_t sub_26448A840(uint64_t a1, double a2)
{
  dispatch_time(0, (a2 * 1000000000.0));

  return MEMORY[0x2821F9670](a1, sel_startSecureElementReaderSessionWithDeadline_error_, v3);
}

uint64_t URL.generateSHA256Digest()()
{
  v1 = sub_2644AB5C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2644AB5B0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2644AB380();
  if (!v0)
  {
    v20 = v10;
    v21 = v7;
    v13 = v2;
    v14 = v11;
    v15 = v12;
    sub_26448B4D4(&qword_27FF6E1D8, MEMORY[0x277CC5540]);
    sub_2644AB5A0();
    sub_26448B42C(v14, v15);
    v22 = v14;
    v27 = v15;
    sub_26448B24C(v14, v15);
    sub_26448B480(v14, v15);
    v16 = v20;
    sub_2644AB590();
    (*(v13 + 8))(v5, v1);
    v25 = v6;
    v26 = sub_26448B4D4(&qword_27FF6E1E0, MEMORY[0x277CC5290]);
    v17 = sub_26448B51C(v24);
    v18 = v21;
    (*(v21 + 16))(v17, v16, v6);
    sub_26448B580(v24, v25);
    sub_2644AB2B0();
    sub_26448B480(v22, v27);
    (*(v18 + 8))(v16, v6);
    v6 = v23;
    sub_26448B5C4(v24);
  }

  return v6;
}

uint64_t sub_26448ABBC()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_2644AB530();
}

uint64_t sub_26448AC08()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_2644AB520();
}

uint64_t sub_26448AC60()
{
  sub_2644ABD90();
  v1 = *v0;
  swift_getWitnessTable();
  sub_2644AB520();
  return sub_2644ABDB0();
}

uint64_t sub_26448ACC8(uint64_t a1)
{
  v2 = sub_26448B4D4(&qword_27FF6E220, type metadata accessor for NFFrameworkError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_26448AD34(uint64_t a1)
{
  v2 = sub_26448B4D4(&qword_27FF6E220, type metadata accessor for NFFrameworkError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_26448ADA4(uint64_t a1)
{
  v2 = sub_26448B4D4(&qword_27FF6E258, type metadata accessor for NFFrameworkError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_26448AE20(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_2644AB510();
}

uint64_t sub_26448AE9C(uint64_t a1)
{
  v2 = sub_26448B4D4(&qword_27FF6E258, type metadata accessor for NFFrameworkError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_26448AF08(uint64_t a1)
{
  v2 = sub_26448B4D4(&qword_27FF6E258, type metadata accessor for NFFrameworkError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_26448AF74(void *a1, uint64_t a2)
{
  v4 = sub_26448B4D4(&qword_27FF6E258, type metadata accessor for NFFrameworkError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_26448B028(uint64_t a1, uint64_t a2)
{
  v4 = sub_26448B4D4(&qword_27FF6E258, type metadata accessor for NFFrameworkError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_26448B0A4()
{
  v2 = *v0;
  sub_2644ABD90();
  sub_2644AB610();
  return sub_2644ABDB0();
}

void *sub_26448B104@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_26448B134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26448B4D4(&qword_27FF6E258, type metadata accessor for NFFrameworkError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

_BYTE *sub_26448B1B8@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_26448EAC0(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_26448EB78(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_26448EBF4(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_26448B24C(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      sub_2644AB5C0();
      sub_26448B4D4(&qword_27FF6E1D8, MEMORY[0x277CC5540]);
      result = sub_2644AB580();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_26448B988(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26448B42C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_26448B480(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_26448B4D4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *sub_26448B51C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void *sub_26448B580(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_26448B5C4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_26448B85C()
{
  result = qword_27FF6E248;
  if (!qword_27FF6E248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6E248);
  }

  return result;
}

uint64_t sub_26448B988(uint64_t a1, uint64_t a2)
{
  result = sub_2644AB250();
  if (!result || (result = sub_2644AB280(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_2644AB270();
      sub_2644AB5C0();
      sub_26448B4D4(&qword_27FF6E1D8, MEMORY[0x277CC5540]);
      return sub_2644AB580();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26448BA78(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26448BA98(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void sub_26448BAD4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void sub_26448BB24()
{
  type metadata accessor for FeedbackFrameworkString();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_2644AB2C0();
  v4 = v3;

  qword_27FF6E270 = v2;
  *algn_27FF6E278 = v4;
}

void sub_26448BC00()
{
  type metadata accessor for FeedbackFrameworkString();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_2644AB2C0();
  v4 = v3;

  qword_27FF6E280 = v2;
  *algn_27FF6E288 = v4;
}

uint64_t sub_26448BCDC(void *a1, void *a2, void *a3)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a3;
    swift_once();
    a2 = v6;
    a3 = v7;
  }

  v3 = *a2;
  v4 = *a3;

  return v3;
}

uint64_t sub_26448BD8C(__int128 *a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v2 = sub_26448DE0C(&qword_27FF6E2D8, &qword_2644ACCF0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v31 - v4;
  v6 = sub_26448DE0C(&qword_27FF6E2E0, &qword_2644ACCF8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = a1[1];
  v42 = a1[2];
  v11 = *a1;
  v41[1] = v10;
  v41[0] = v11;
  v36 = v11;
  v37 = v10;
  v38 = v42;
  v39 = *(&v42 + 1);
  sub_26448B42C(v11, *(&v11 + 1));

  sub_26448DE0C(&qword_27FF6E2E8, &qword_2644ACD00);
  sub_26448DE0C(&qword_27FF6E2A0, &qword_2644ACCC0);
  if (swift_dynamicCast())
  {
    sub_26448EF14(v34, v40);
    sub_26448B580(v40, v40[3]);
    sub_2644AB2B0();
    v36 = v34[0];
    sub_26448B5C4(v40);
    goto LABEL_36;
  }

  v35 = 0;
  memset(v34, 0, sizeof(v34));
  v12 = sub_26448F2A8(v34, &qword_27FF6E2A8, &qword_2644ACCC8);
  v36 = xmmword_2644ACBC0;
  MEMORY[0x28223BE20](v12);
  *(&v31 - 2) = v41;
  sub_26448D1B8(sub_26448F19C);
  v13 = *&v5[*(v2 + 48)];
  sub_26448F240(v5, v9, &qword_27FF6E2E0, &qword_2644ACCF8);
  v14 = *(&v36 + 1) >> 62;
  if ((*(&v36 + 1) >> 62) <= 1)
  {
    if (v14)
    {
      if (__OFSUB__(DWORD1(v36), v36))
      {
        goto LABEL_40;
      }

      if (v13 == DWORD1(v36) - v36)
      {
        goto LABEL_18;
      }
    }

    else if (v13 == BYTE14(v36))
    {
LABEL_18:
      memset(v40, 0, 15);
      v20 = *&v9[*(v6 + 36)];
      if (!v20)
      {
        goto LABEL_35;
      }

      v32 = *(v6 + 36);
      v21 = &v9[*(sub_26448DE0C(&qword_27FF6E2F0, &qword_2644ACD08) + 44)];
      v23 = *v21;
      v22 = *(v21 + 1);
      sub_2644AB4B0();
      sub_26448F124();
      LOBYTE(v24) = 0;
      for (i = v20 - 1; ; --i)
      {
        sub_2644ABA90();
        if (BYTE1(v34[0]))
        {
          v26 = v9[*(sub_26448DE0C(&qword_27FF6E2F8, &qword_2644ACD10) + 36)];
        }

        else
        {
          BYTE1(v33) = v34[0];
          v23(&v33, &v33 + 1);
          v26 = v33;
        }

        *(v40 + v24) = v26;
        v24 = v24 + 1;
        if ((v24 & 0x100) != 0)
        {
          break;
        }

        if (v24 == 14)
        {
          *&v34[0] = v40[0];
          *(v34 + 6) = *(v40 + 6);
          sub_2644AB3F0();
          if (!i)
          {
            *&v9[v32] = 0;
            goto LABEL_35;
          }

          LOBYTE(v24) = 0;
        }

        else if (!i)
        {
          *&v9[v32] = 0;
          *&v34[0] = v40[0];
          *(v34 + 6) = *(v40 + 6);
          sub_2644AB3F0();
          goto LABEL_35;
        }
      }

      __break(1u);
      goto LABEL_38;
    }

    goto LABEL_13;
  }

  if (v14 == 2)
  {
    v16 = *(v36 + 16);
    v15 = *(v36 + 24);
    v17 = __OFSUB__(v15, v16);
    v18 = v15 - v16;
    if (v17)
    {
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    if (v13 == v18)
    {
      goto LABEL_18;
    }

LABEL_13:
    if (v14 == 2)
    {
      v19 = *(v36 + 24);
    }

    else if (v14 == 1)
    {
      v19 = v36 >> 32;
    }

    else
    {
      v19 = BYTE14(v36);
    }

    goto LABEL_33;
  }

  if (!v13)
  {
    goto LABEL_18;
  }

  v19 = 0;
LABEL_33:
  if (v19 < v13)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  sub_2644AB3E0();
LABEL_35:
  sub_26448F2A8(v9, &qword_27FF6E2E0, &qword_2644ACCF8);
LABEL_36:
  v27 = v36;
  v28 = v41[0];
  sub_26448B42C(v36, *(&v36 + 1));
  sub_26448B480(v28, *(&v28 + 1));

  sub_26448B480(v27, *(&v27 + 1));
  v29 = *MEMORY[0x277D85DE8];
  return v27;
}

uint64_t sub_26448C2DC(__int128 *a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = sub_26448DE0C(&qword_27FF6E2B0, &qword_2644ACCD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v34 - v4;
  v6 = sub_26448DE0C(&qword_27FF6E2B8, &qword_2644ACCD8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - v8;
  v10 = a1[1];
  v44[1] = a1[2];
  v11 = *a1;
  v44[0] = v10;
  v43 = v11;
  v38 = v11;
  v39 = v10;
  v34 = *(v44 + 8);
  v40 = *(v44 + 8);
  v41 = *(&v44[1] + 1);
  sub_26448B42C(v11, *(&v11 + 1));

  sub_26448DE0C(&qword_27FF6E2C0, &qword_2644ACCE0);
  sub_26448DE0C(&qword_27FF6E2A0, &qword_2644ACCC0);
  if (!swift_dynamicCast())
  {
    v37 = 0;
    memset(v36, 0, sizeof(v36));
    v12 = sub_26448F2A8(v36, &qword_27FF6E2A8, &qword_2644ACCC8);
    v38 = xmmword_2644ACBC0;
    MEMORY[0x28223BE20](v12);
    *(&v34 - 2) = &v43;
    sub_26448D1B8(sub_26448F108);
    v13 = *&v5[*(v2 + 48)];
    sub_26448F240(v5, v9, &qword_27FF6E2B8, &qword_2644ACCD8);
    v14 = *(&v38 + 1) >> 62;
    if ((*(&v38 + 1) >> 62) > 1)
    {
      if (v14 != 2)
      {
        if (!v13)
        {
          goto LABEL_18;
        }

        v19 = 0;
LABEL_23:
        if (v19 < v13)
        {
          goto LABEL_37;
        }

        sub_2644AB3E0();
LABEL_34:
        sub_26448F2A8(v9, &qword_27FF6E2B8, &qword_2644ACCD8);
        goto LABEL_35;
      }

      v16 = *(v38 + 16);
      v15 = *(v38 + 24);
      v17 = __OFSUB__(v15, v16);
      v18 = v15 - v16;
      if (v17)
      {
        goto LABEL_38;
      }

      if (v13 != v18)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (!v14)
      {
        if (v13 == BYTE14(v38))
        {
          goto LABEL_18;
        }

        goto LABEL_13;
      }

      if (__OFSUB__(DWORD1(v38), v38))
      {
        goto LABEL_39;
      }

      if (v13 != DWORD1(v38) - v38)
      {
LABEL_13:
        if (v14 == 2)
        {
          v19 = *(v38 + 24);
        }

        else if (v14 == 1)
        {
          v19 = v38 >> 32;
        }

        else
        {
          v19 = BYTE14(v38);
        }

        goto LABEL_23;
      }
    }

LABEL_18:
    memset(v42, 0, 15);
    if ((*v9 & 1) == 0)
    {
      sub_2644AB4B0();
      sub_26448F124();
      v20 = sub_26448DE0C(&qword_27FF6E2C8, &qword_2644ACCE8);
      v21 = &v9[*(v20 + 36)];
      sub_2644ABA90();
      if (BYTE1(v36[0]))
      {
        LOBYTE(v22) = 0;
      }

      else
      {
        LOBYTE(v22) = 0;
        while (1)
        {
          v24 = v36[0];
          LOBYTE(v35) = v36[0];
          v25 = &v9[*(v20 + 40)];
          v26 = *(v25 + 1);
          if (((*v25)(&v35) & 1) == 0)
          {
            break;
          }

          v27 = &v9[*(v6 + 44)];
          v28 = *v27;
          v29 = *(v27 + 1);
          LOBYTE(v36[0]) = v24;
          v28(&v35, v36);
          *(v42 + v22) = v35;
          v22 = v22 + 1;
          if ((v22 >> 8))
          {
            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
LABEL_39:
            __break(1u);
          }

          if (v22 == 14)
          {
            *&v36[0] = v42[0];
            *(v36 + 6) = *(v42 + 6);
            sub_2644AB3F0();
            LOBYTE(v22) = 0;
          }

          v20 = sub_26448DE0C(&qword_27FF6E2C8, &qword_2644ACCE8);
          v23 = &v9[*(v20 + 36)];
          sub_2644ABA90();
          if (BYTE1(v36[0]))
          {
            goto LABEL_32;
          }
        }

        *v9 = 1;
      }

LABEL_32:
      if (v22)
      {
        *&v36[0] = v42[0];
        *(v36 + 6) = *(v42 + 6);
        sub_2644AB3F0();
      }
    }

    goto LABEL_34;
  }

  sub_26448EF14(v36, v42);
  sub_26448B580(v42, v42[3]);
  sub_2644AB2B0();
  v38 = v36[0];
  sub_26448B5C4(v42);
LABEL_35:
  v30 = v38;
  v31 = v43;
  sub_26448B42C(v38, *(&v38 + 1));
  sub_26448B480(v31, *(&v31 + 1));

  sub_26448B480(v30, *(&v30 + 1));
  v32 = *MEMORY[0x277D85DE8];
  return v30;
}

uint64_t sub_26448C87C(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x277D838B0];
  v8[4] = MEMORY[0x277CC9C18];
  v8[0] = a1;
  v8[1] = a2;
  v2 = sub_26448B580(v8, MEMORY[0x277D838B0]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_26448EAC0(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_26448EB78(v3, v4);
    }

    else
    {
      v6 = sub_26448EBF4(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  sub_26448B5C4(v8);
  return v6;
}

uint64_t sub_26448C938(uint64_t a1)
{
  v21[5] = *MEMORY[0x277D85DE8];
  *&v18 = a1;

  sub_26448DE0C(&qword_27FF6E298, &qword_2644ACCB8);
  sub_26448DE0C(&qword_27FF6E2A0, &qword_2644ACCC0);
  if (!swift_dynamicCast())
  {
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    sub_26448F2A8(v19, &qword_27FF6E2A8, &qword_2644ACCC8);
    *&v19[0] = sub_26448EE0C(*(a1 + 16));
    *(&v19[0] + 1) = v2;
    MEMORY[0x28223BE20](*&v19[0]);
    v5 = sub_26448D468(sub_26448EEAC);
    v6 = v3;
    v7 = *(&v19[0] + 1) >> 62;
    if ((*(&v19[0] + 1) >> 62) > 1)
    {
      if (v7 != 2)
      {
        if (!v4)
        {
          goto LABEL_18;
        }

        v12 = 0;
LABEL_31:
        if (v12 < v4)
        {
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        sub_2644AB3E0();
LABEL_33:

        goto LABEL_34;
      }

      v9 = *(*&v19[0] + 16);
      v8 = *(*&v19[0] + 24);
      v10 = __OFSUB__(v8, v9);
      v11 = v8 - v9;
      if (v10)
      {
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
      }

      if (v4 != v11)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (!v7)
      {
        if (v4 == BYTE14(v19[0]))
        {
          goto LABEL_18;
        }

        goto LABEL_13;
      }

      if (__OFSUB__(DWORD1(v19[0]), v19[0]))
      {
        goto LABEL_42;
      }

      if (v4 != DWORD1(v19[0]) - LODWORD(v19[0]))
      {
LABEL_13:
        if (v7 == 2)
        {
          v12 = *(*&v19[0] + 24);
        }

        else if (v7 == 1)
        {
          v12 = *&v19[0] >> 32;
        }

        else
        {
          v12 = BYTE14(v19[0]);
        }

        goto LABEL_31;
      }
    }

LABEL_18:
    memset(v21, 0, 15);
    if (v3)
    {
      if (!__OFSUB__(v3, 1))
      {
        if (v3 - 1 < 0)
        {
LABEL_35:
          __break(1u);
        }

        else
        {
          LOBYTE(v13) = 0;
          while (1)
          {
            v14 = v6 - 1;
            if ((v6 - 1) >= v5[2])
            {
              break;
            }

            *(v21 + v13) = *(v5 + v6 + 31);
            v13 = v13 + 1;
            if ((v13 & 0x100) != 0)
            {
              goto LABEL_37;
            }

            if (v13 == 14)
            {
              sub_2644AB3F0();
              if (v6 == 1)
              {
                goto LABEL_33;
              }

              LOBYTE(v13) = 0;
            }

            else if (v6 == 1)
            {
              goto LABEL_38;
            }

            --v6;
            if (v14 < 1)
            {
              goto LABEL_35;
            }
          }
        }

        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        sub_2644AB3F0();
        goto LABEL_33;
      }

      __break(1u);
      goto LABEL_40;
    }

    goto LABEL_33;
  }

  sub_26448EF14(v19, v21);
  sub_26448B580(v21, v21[3]);
  sub_2644AB2B0();
  v19[0] = v18;
  sub_26448B5C4(v21);
LABEL_34:
  v15 = v19[0];
  sub_26448B42C(*&v19[0], *(&v19[0] + 1));

  sub_26448B480(v15, *(&v15 + 1));
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t BitString.data.getter()
{
  v1 = *v0;
  sub_26448B42C(*v0, *(v0 + 8));
  return v1;
}

uint64_t BitString.init(data:unusedBits:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t BitString.init(derRepresentation:)@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_19;
    }

    v5 = *(result + 16);
    v6 = *(result + 24);
    goto LABEL_8;
  }

  if (v4)
  {
    v5 = result;
    v6 = result >> 32;
LABEL_8:
    if (v5 != v6)
    {
      goto LABEL_9;
    }

LABEL_19:
    sub_26448B480(result, a2);
    result = 0;
    v9 = 0;
    a2 = 0xF000000000000000;
    goto LABEL_20;
  }

  if ((a2 & 0xFF000000000000) == 0)
  {
    goto LABEL_19;
  }

LABEL_9:
  v7 = result;
  v8 = a2;
  v9 = sub_2644AB410();
  sub_26448CEE8(1, v7, v8, &v13);
  result = v13;
  a2 = v14;
  if (v9 > 7u)
  {
    goto LABEL_19;
  }

  v10 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_18;
    }

    v11 = *(v13 + 16);
    v12 = *(v13 + 24);
LABEL_17:
    if (v11 != v12)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (v10)
  {
    v11 = v13;
    v12 = v13 >> 32;
    goto LABEL_17;
  }

  if ((v14 & 0xFF000000000000) != 0)
  {
    goto LABEL_20;
  }

LABEL_18:
  if (v9)
  {
    goto LABEL_19;
  }

LABEL_20:
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = v9;
  return result;
}

uint64_t sub_26448CE00(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 == 2 && *(a1 + 16) != *(a1 + 24))
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if (!v2)
  {
    if ((a2 & 0xFF000000000000) != 0)
    {
      goto LABEL_7;
    }

LABEL_9:
    v3 = 0;
    v4 = 1;
    return v3 | (v4 << 8);
  }

  if (a1 == a1 >> 32)
  {
    goto LABEL_9;
  }

LABEL_7:
  v3 = sub_2644AB410();
  v4 = 0;
  return v3 | (v4 << 8);
}

unint64_t sub_26448CE88(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_15;
  }

  v5 = a3 - a2;
  if (a2)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_16;
  }

  if (result)
  {
    if (v6 < result)
    {
      result = v5;
      if (a2)
      {
        return result;
      }

      return 0;
    }

    if (!a2)
    {
LABEL_17:
      __break(1u);
      return result;
    }
  }

  else if (!a2)
  {
    return 0;
  }

  if (v5 < result)
  {
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_26448CEE8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    v8 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v8 == 2)
      {
        v10 = *(a2 + 16);
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }
    }

    else
    {
      if (v8)
      {
        v9 = a2 >> 32;
      }

      else
      {
        v9 = BYTE6(a3);
      }

      if (v8)
      {
        v10 = a2;
      }

      else
      {
        v10 = 0;
      }
    }

    v11 = sub_26448E57C(v10, v9, a2, a3);
    if (v6 && v11 < v6)
    {
      if (v8 == 2)
      {
        v14 = *(a2 + 24);
      }
    }

    else
    {
      v12 = sub_26448E518(v10, v6, a2, a3);
      if (v8 > 1)
      {
        if (v8 == 2)
        {
          v13 = *(a2 + 24);
        }

        else
        {
          v13 = 0;
        }
      }

      else if (v8)
      {
        v13 = a2 >> 32;
      }

      else
      {
        v13 = BYTE6(a3);
      }

      if (v13 < v12)
      {
        __break(1u);
      }
    }

    v15 = sub_2644AB400();
    v17 = v16;
    result = sub_26448B480(a2, a3);
    *a4 = v15;
    a4[1] = v17;
  }

  return result;
}

uint64_t BitString.derRepresentation.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_26448DE0C(&qword_27FF6E290, &qword_2644ACBE0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2644ACBD0;
  *(v4 + 32) = v3;
  v5 = sub_26448EC78(v4);
  v7 = v6;

  v13 = v5;
  v14 = v7;
  v12[3] = MEMORY[0x277CC9318];
  v12[4] = MEMORY[0x277CC9300];
  v12[0] = v1;
  v12[1] = v2;
  v8 = sub_26448B580(v12, MEMORY[0x277CC9318]);
  v9 = *v8;
  v10 = v8[1];
  sub_26448B42C(v5, v7);
  sub_26448B42C(v1, v2);
  sub_26448DE54(v9, v10);
  sub_26448B480(v5, v7);
  sub_26448B5C4(v12);
  return v13;
}

uint64_t static BitString.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  return sub_26448E938(*a1, *(a1 + 8), *a2, *(a2 + 8)) & (v2 == v3);
}

uint64_t sub_26448D170(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  return sub_26448E938(*a1, *(a1 + 8), *a2, *(a2 + 8)) & (v2 == v3);
}

uint64_t sub_26448D1B8(void (*a1)(uint64_t, uint64_t))
{
  v2 = v1;
  v23 = *MEMORY[0x277D85DE8];
  v5 = *v1;
  v4 = v1[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_26448B480(v5, v4);
      *&v22 = v5;
      *(&v22 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *v2 = xmmword_2644ACBC0;
      sub_26448B480(0, 0xC000000000000000);
      result = sub_26448D8BC(a1);
      v8 = v22;
      v9 = *(&v22 + 1) | 0x4000000000000000;
    }

    else
    {
      sub_26448B480(v5, v4);
      *&v22 = v5;
      WORD4(v22) = v4;
      BYTE10(v22) = BYTE2(v4);
      BYTE11(v22) = BYTE3(v4);
      BYTE12(v22) = BYTE4(v4);
      BYTE13(v22) = BYTE5(v4);
      BYTE14(v22) = BYTE6(v4);
      result = (a1)(&v22, &v22 + BYTE6(v4));
      v8 = v22;
      v9 = DWORD2(v22) | ((WORD6(v22) | (BYTE14(v22) << 16)) << 32);
    }

    *v2 = v8;
    v2[1] = v9;
    goto LABEL_15;
  }

  if (v6 != 2)
  {
    *(&v22 + 7) = 0;
    *&v22 = 0;
    result = (a1)(&v22, &v22);
LABEL_15:
    v20 = *MEMORY[0x277D85DE8];
    return result;
  }

  sub_26448B480(v5, v4);
  *&v22 = v5;
  *(&v22 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *v2 = xmmword_2644ACBC0;
  sub_26448B480(0, 0xC000000000000000);
  sub_2644AB370();
  v10 = *(&v22 + 1);
  v11 = *(v22 + 16);
  v12 = *(v22 + 24);
  result = sub_2644AB250();
  if (result)
  {
    v13 = result;
    v14 = sub_2644AB280();
    v15 = v11 - v14;
    if (__OFSUB__(v11, v14))
    {
      __break(1u);
    }

    else
    {
      v16 = __OFSUB__(v12, v11);
      v17 = v12 - v11;
      if (!v16)
      {
        v18 = sub_2644AB270();
        if (v18 >= v17)
        {
          v19 = v17;
        }

        else
        {
          v19 = v18;
        }

        result = (a1)(v13 + v15, v13 + v15 + v19);
        *v2 = v22;
        v2[1] = v10 | 0x8000000000000000;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_26448D468(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_26448B480(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_26448B480(v6, v5);
    *v3 = xmmword_2644ACBC0;
    sub_26448B480(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_2644AB250() && __OFSUB__(v6, sub_2644AB280()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_2644AB2A0();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_2644AB230();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_26448D998(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_26448B480(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_2644ACBC0;
    sub_26448B480(0, 0xC000000000000000);
    sub_2644AB370();
    result = sub_26448D998(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26448D800(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(a3, a4 - a3);
    if (!v4)
    {
      return result;
    }

LABEL_5:
    __break(1u);
    return result;
  }

  result = a1(0, 0);
  if (v4)
  {
    goto LABEL_5;
  }

  return result;
}

void *sub_26448D854(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26448D8BC(void (*a1)(uint64_t, uint64_t))
{
  result = sub_2644AB390();
  v4 = *v1;
  v5 = v1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v12 = a1;
  v6 = *(v1 + 1);

  result = sub_2644AB250();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = result;
  result = sub_2644AB280();
  v8 = v4 - result;
  if (__OFSUB__(v4, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v5 - v4;
  v10 = sub_2644AB270();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12(v7 + v8, v7 + v8 + v11);
}

char *sub_26448D998(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_2644AB250();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_2644AB280();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_2644AB270();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_26448DA4C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_2644AB250();
    if (v10)
    {
      v11 = sub_2644AB280();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_2644AB270();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_2644AB250();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_2644AB280();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_2644AB270();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_26448DC7C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_26448E880(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_26448B480(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_26448DA4C(v14, a3, a4, &v13);
  v10 = v4;
  sub_26448B480(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t sub_26448DE0C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_26448DE54(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      result = sub_2644AB3F0();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_26448DF8C(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26448DF8C(uint64_t a1, uint64_t a2)
{
  result = sub_2644AB250();
  if (!result || (result = sub_2644AB280(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_2644AB270();
      return sub_2644AB3F0();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_26448E020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a1;
  v32 = sub_26448DE0C(&qword_27FF6E2F0, &qword_2644ACD08);
  v6 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v8 = &v29 - v7;
  v9 = sub_26448DE0C(&qword_27FF6E2E0, &qword_2644ACCF8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - v11;
  v13 = *v3;
  v14 = *(v3 + 8);
  v15 = *(v3 + 16);
  v33 = *(v3 + 32);
  v29 = a3;
  v31 = v15;
  if (v14 >> 62 == 2)
  {
    v16 = *(v13 + 16);
  }

  sub_26448F1D8(v3, v34 + 2, &qword_27FF6E2E8, &qword_2644ACD00);
  sub_2644AB4C0();
  v17 = v32;
  *&v8[*(v32 + 44)] = v31;
  v18 = sub_26448DE0C(&qword_27FF6E2F8, &qword_2644ACD10);
  v12[*(v18 + 36)] = v33;
  sub_26448F240(v8, v12, &qword_27FF6E2F0, &qword_2644ACD08);
  result = sub_26448F2A8(v3, &qword_27FF6E2E8, &qword_2644ACD00);
  v20 = *(v3 + 40);
  v21 = *(v9 + 36);
  *&v12[v21] = v20;
  if (!a2)
  {
LABEL_15:
    v22 = 0;
    goto LABEL_18;
  }

  v22 = v29;
  if (!v29)
  {
LABEL_18:
    sub_26448F240(v12, v30, &qword_27FF6E2E0, &qword_2644ACCF8);
    return v22;
  }

  if ((v29 & 0x8000000000000000) == 0)
  {
    if (v20)
    {
      *&v31 = v21;
      v23 = &v12[*(v17 + 44)];
      v24 = v29;
      v25 = *v23;
      v26 = *(v23 + 1);
      sub_2644AB4B0();
      sub_26448F124();
      v22 = 0;
      v27 = v20 - 1;
      while (1)
      {
        result = sub_2644ABA90();
        if ((v34[0] & 0x1000000) != 0)
        {
          v28 = v33;
        }

        else
        {
          BYTE1(v34[0]) = BYTE2(v34[0]);
          result = v25(v34, v34 + 1);
          v28 = v34[0];
        }

        *(a2 + v22) = v28;
        if (v24 - 1 == v22)
        {
          v22 = v29;
          goto LABEL_17;
        }

        if (__OFADD__(v22 + 1, 1))
        {
          break;
        }

        ++v22;
        if (--v27 == -1)
        {
          v27 = 0;
LABEL_17:
          *&v12[v31] = v27;
          goto LABEL_18;
        }
      }

      __break(1u);
      goto LABEL_20;
    }

    goto LABEL_15;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_26448E2F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v27 = a2;
  v5 = sub_26448DE0C(&qword_27FF6E2B8, &qword_2644ACCD8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  v9 = *v3;
  v10 = v3[1];
  v11 = v3[2];
  v28 = v3[3];
  v29 = v11;
  v26 = a1;
  if (v10 >> 62 == 2)
  {
    v12 = *(v9 + 16);
  }

  v13 = v3[4];
  v14 = v3[5];
  v15 = sub_26448DE0C(&qword_27FF6E2C8, &qword_2644ACCE8);
  v16 = *(v15 + 36);
  result = sub_2644AB4C0();
  *v8 = 0;
  v18 = &v8[*(v15 + 40)];
  v19 = v28;
  *v18 = v29;
  v18[1] = v19;
  v20 = &v8[*(v5 + 44)];
  *v20 = v13;
  v20[1] = v14;
  if (!v27)
  {
LABEL_13:
    v22 = 0;
LABEL_17:
    sub_26448F240(v8, v26, &qword_27FF6E2B8, &qword_2644ACCD8);
    return v22;
  }

  v21 = v25;
  if (!v25)
  {
    v22 = 0;
    goto LABEL_17;
  }

  if ((v25 & 0x8000000000000000) == 0)
  {
    sub_2644AB4B0();
    sub_26448F124();
    v22 = 0;
    v23 = v21 - 1;
    while (1)
    {
      sub_2644ABA90();
      if ((v30 & 0x1000000) != 0)
      {
        goto LABEL_17;
      }

      v24 = BYTE2(v30);
      BYTE4(v30) = BYTE2(v30);
      if ((v29(&v30 + 4) & 1) == 0)
      {
        *v8 = 1;
        goto LABEL_17;
      }

      BYTE1(v30) = v24;
      v13(&v30, &v30 + 1);
      *(v27 + v22) = v30;
      if (v23 == v22)
      {
        v22 = v25;
        goto LABEL_17;
      }

      if (__OFADD__(++v22, 1))
      {
        __break(1u);
        goto LABEL_13;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26448E518(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_26448E57C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t sub_26448E630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 32);
  v4 = *(a3 + 40);
  v5 = *(a3 + 16);
  v8[0] = *a3;
  v8[1] = v5;
  v9 = v3;
  v10 = v4;
  v7[2] = v8;
  return sub_26448D800(sub_26448F1B8, v7, a1, a2);
}

void *sub_26448E698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a3[1];
  v11[0] = *a3;
  v11[1] = v7;
  v11[2] = a3[2];
  v8 = *(sub_26448DE0C(&qword_27FF6E2D8, &qword_2644ACCF0) + 48);
  sub_26448F1D8(v11, &v10, &qword_27FF6E2E8, &qword_2644ACD00);
  result = sub_26448E020(a4, a1, a2);
  *(a4 + v8) = result;
  return result;
}

uint64_t sub_26448E73C(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v3 = a3[1];
  v6[0] = *a3;
  v6[1] = v3;
  v6[2] = a3[2];
  v5[2] = v6;
  return sub_26448D800(sub_26448F17C, v5, a1, a2);
}

uint64_t sub_26448E79C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a3[1];
  v11[0] = *a3;
  v11[1] = v7;
  v11[2] = a3[2];
  v8 = *(sub_26448DE0C(&qword_27FF6E2B0, &qword_2644ACCD0) + 48);
  sub_26448F1D8(v11, &v10, &qword_27FF6E2C0, &qword_2644ACCE0);
  result = sub_26448E2F8(a4, a1, a2);
  *(a4 + v8) = result;
  return result;
}

int8x16_t *sub_26448E840@<X0>(int8x16_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, int8x16_t **a4@<X8>)
{
  result = sub_26448EFFC(a1, a2, *a3);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_26448E880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_2644AB250();
  v11 = result;
  if (result)
  {
    result = sub_2644AB280();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_2644AB270();
  sub_26448DA4C(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_26448E938(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_26448B42C(a3, a4);
          return sub_26448DC7C(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_26448EAA0(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_26448EAC0(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26448EB78(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_2644AB2A0();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_2644AB240();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2644AB3C0();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_26448EBF4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_2644AB2A0();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_2644AB240();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_26448EC78(uint64_t a1)
{
  v9 = sub_26448DE0C(&qword_27FF6E300, &qword_2644ACD18);
  v10 = sub_26448F308();
  v8[0] = a1;
  v2 = sub_26448B580(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_26448B1B8(v3, &v3[v4], &v7);
  v5 = v7;
  sub_26448B5C4(v8);
  return v5;
}

uint64_t sub_26448ED28(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 sub_26448ED44(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_26448ED58(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 17))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_26448EDAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_26448EE0C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_2644AB2A0();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_2644AB260();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_2644AB3C0();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *sub_26448EEAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v9 = **(v3 + 16);
  v8[2] = &v9;
  result = sub_26448D854(sub_26448EF2C, v8, a1, a2);
  *a3 = result;
  a3[1] = v6;
  a3[2] = v7;
  return result;
}

uint64_t sub_26448EF14(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_26448EF4C(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_2644AB780();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_2644AB830();
}

int8x16_t *sub_26448EFFC(int8x16_t *result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!result || !a2)
  {
    return a3;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    if (v4)
    {
      v5 = v4 - 1;
      if (v4 - 1 >= (a2 - 1))
      {
        v6 = a2 - 1;
      }

      else
      {
        v6 = v4 - 1;
      }

      v7 = v6 + 1;
      if (v7 <= 0x10)
      {
        goto LABEL_22;
      }

      if (v5 >= a2 - 1)
      {
        v5 = a2 - 1;
      }

      if (a3 + v4 + 32 > result && v4 - v5 + a3 + 31 < result->u64 + v5 + 1)
      {
LABEL_22:
        v10 = 1;
        v11 = result;
        v12 = *(a3 + 16);
      }

      else
      {
        v8 = v7 & 0xF;
        if ((v7 & 0xF) == 0)
        {
          v8 = 16;
        }

        v9 = v7 - v8;
        v10 = v7 - v8 + 1;
        v11 = (result + v7 - v8);
        v12 = v4 - v9;
        v13 = (v4 + a3 + 16);
        do
        {
          v14 = *v13--;
          v15 = vrev64q_s8(v14);
          *result++ = vextq_s8(v15, v15, 8uLL);
          v9 -= 16;
        }

        while (v9);
      }

      v16 = a2 - v10;
      do
      {
        v17 = v12 - 1;
        v11->i8[0] = *(a3 + 31 + v12);
        if (!v16)
        {
          break;
        }

        v11 = (v11 + 1);
        --v16;
        --v12;
      }

      while (v17);
    }

    return a3;
  }

  __break(1u);
  return result;
}

unint64_t sub_26448F124()
{
  result = qword_27FF6E2D0;
  if (!qword_27FF6E2D0)
  {
    sub_2644AB4B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6E2D0);
  }

  return result;
}

uint64_t sub_26448F1D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_26448DE0C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_26448F240(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_26448DE0C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_26448F2A8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_26448DE0C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_26448F308()
{
  result = qword_27FF6E308;
  if (!qword_27FF6E308)
  {
    sub_26448F36C(&qword_27FF6E300, &qword_2644ACD18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6E308);
  }

  return result;
}

uint64_t sub_26448F36C(uint64_t *a1, uint64_t *a2)
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

void static JSONEncoder.encodeClean<A>(_:outputFormatting:)(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x266738F10]();
  sub_26448F44C(a2, &v4, &v5);
  objc_autoreleasePoolPop(v3);
}

uint64_t sub_26448F44C@<X0>(uint64_t a1@<X0>, void *a2@<X4>, uint64_t *a3@<X8>)
{
  v20 = a2;
  v19 = a3;
  v5 = sub_2644AB190();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2644AB1D0();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_2644AB1C0();
  (*(v6 + 16))(v9, a1, v5);
  sub_2644AB1A0();
  v13 = sub_2644AB1B0();
  v15 = v14;

  if (v3)
  {
    *v20 = v3;
  }

  else
  {
    v17 = v19;
    *v19 = v13;
    v17[1] = v15;
  }

  return result;
}

void static JSONDecoder.decodeClean<A>(_:from:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = MEMORY[0x266738F10]();
  sub_26448F658(a4, a1, a2, a3, a5, a6, &v13);
  objc_autoreleasePoolPop(v12);
}

uint64_t sub_26448F658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = sub_2644AB180();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_2644AB170();
  sub_26448F724(a1);
  sub_2644AB160();
  sub_2644AB150();

  if (v7)
  {
    *a7 = v7;
  }

  return result;
}

uint64_t sub_26448F724(uint64_t a1)
{
  v62 = sub_26448DE0C(&qword_27FF6E310, &qword_2644ACD20);
  v2 = (*(*(v62 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v61 = &v50 - v3;
  v60 = sub_26448DE0C(&qword_27FF6E318, &qword_2644ACD28);
  v4 = (*(*(v60 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v59 = &v50 - v5;
  v6 = sub_2644ABBD0();
  v63 = *(v6 - 8);
  v7 = *(v63 + 64);
  (MEMORY[0x28223BE20])();
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_26448DE0C(&qword_27FF6E320, &qword_2644ACD30);
  v10 = *(*(v57 - 8) + 64);
  v11 = (MEMORY[0x28223BE20])();
  v56 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v55 = &v50 - v13;
  v64 = a1;
  if (*(a1 + 16))
  {
    sub_26448DE0C(&qword_27FF6E328, &qword_2644ACD38);
    v14 = sub_2644ABC40();
  }

  else
  {
    v14 = MEMORY[0x277D84F98];
  }

  v15 = v64 + 64;
  v16 = 1 << *(v64 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(v64 + 64);
  v19 = (v16 + 63) >> 6;
  v53 = v63 + 16;
  v66 = v63 + 32;
  v20 = v14 + 64;

  v22 = 0;
  v51 = v15;
  v52 = v19;
  v58 = v9;
  v54 = v14;
  while (v18)
  {
LABEL_15:
    v25 = __clz(__rbit64(v18)) | (v22 << 6);
    v26 = v63;
    v27 = v64;
    v28 = *(v64 + 48);
    v65 = *(v63 + 72);
    v29 = v55;
    (*(v63 + 16))(v55, v28 + v65 * v25, v6);
    v30 = *(v27 + 56) + 32 * v25;
    v31 = v57;
    sub_26448FC50(v30, v29 + *(v57 + 48));
    v32 = v56;
    sub_26448FCAC(v29, v56);
    v33 = *(v31 + 48);
    v34 = *(v62 + 48);
    v35 = *(v26 + 32);
    v36 = v6;
    v37 = v61;
    v35(v61, v32, v36);
    sub_264489518((v32 + v33), v67);
    sub_26448DE0C(&qword_27FF6E330, &qword_2644ACD40);
    swift_dynamicCast();
    v38 = v59;
    v39 = *(v60 + 48);
    v35(v59, v37, v36);
    v40 = &v37[v34];
    v6 = v36;
    sub_264489518(v40, &v38[v39]);
    v41 = v58;
    v35(v58, v38, v36);
    sub_264489518(&v38[v39], v67);
    v14 = v54;
    v42 = *(v54 + 40);
    result = sub_2644AB600();
    v43 = -1 << *(v14 + 32);
    v44 = result & ~v43;
    v45 = v44 >> 6;
    if (((-1 << v44) & ~*(v20 + 8 * (v44 >> 6))) == 0)
    {
      v46 = 0;
      v47 = (63 - v43) >> 6;
      v19 = v52;
      while (++v45 != v47 || (v46 & 1) == 0)
      {
        v48 = v45 == v47;
        if (v45 == v47)
        {
          v45 = 0;
        }

        v46 |= v48;
        v49 = *(v20 + 8 * v45);
        if (v49 != -1)
        {
          v23 = __clz(__rbit64(~v49)) + (v45 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v23 = __clz(__rbit64((-1 << v44) & ~*(v20 + 8 * (v44 >> 6)))) | v44 & 0x7FFFFFFFFFFFFFC0;
    v19 = v52;
LABEL_9:
    v18 &= v18 - 1;
    *(v20 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v35((*(v14 + 48) + v23 * v65), v41, v6);
    result = sub_264489518(v67, (*(v14 + 56) + 32 * v23));
    ++*(v14 + 16);
    v15 = v51;
  }

  while (1)
  {
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v24 >= v19)
    {

      return v14;
    }

    v18 = *(v15 + 8 * v24);
    ++v22;
    if (v18)
    {
      v22 = v24;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_26448FC50(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26448FCAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26448DE0C(&qword_27FF6E320, &qword_2644ACD30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26448FD20()
{
  result = sub_264492FF0(&unk_2875F3990);
  qword_27FF6E338 = result;
  return result;
}

unint64_t sub_26448FD6C()
{
  result = sub_264492FF0(&unk_2875F39B8);
  qword_27FF6E340 = result;
  return result;
}

uint64_t sub_26448FE0C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = sub_2644930D0(a2);
  sub_26448DE0C(&qword_27FF6E378, &qword_2644ACD58);
  result = swift_arrayDestroy();
  *a4 = v5;
  return result;
}

uint64_t sub_26448FE90(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }
}

uint64_t Data.init(base64urlEncoded:options:)(uint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      v3 = BYTE6(a2);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v2 != 2)
  {
    v3 = 0;
    goto LABEL_11;
  }

  v5 = *(result + 16);
  v4 = *(result + 24);
  v6 = __OFSUB__(v4, v5);
  v3 = v4 - v5;
  if (v6)
  {
    __break(1u);
LABEL_8:
    LODWORD(v3) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_18:
      __break(1u);
      return result;
    }

    v3 = v3;
  }

LABEL_11:
  v6 = __OFADD__(v3, 3);
  v7 = v3 + 3;
  if (v6)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v7 < 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  *&v17 = result;
  *(&v17 + 1) = a2;
  v18 = sub_26449002C;
  v19 = 0;
  v20 = 61;
  v21 = v7 & 0x7FFFFFFFFFFFFFFCLL;
  v8 = result;
  sub_26448B42C(result, a2);
  sub_264490050(&v17, &v16);
  v10 = sub_26448BD8C(&v17);
  v12 = v11;
  v13 = sub_2644AB3A0();
  v15 = v14;
  sub_2644900C0(v13, v14);
  sub_2644900D4(&v17);
  sub_26448B480(v8, a2);
  sub_26448B480(v10, v12);
  if (v15 >> 60 != 15)
  {
    sub_26449013C(v13, v15);
  }

  return v13;
}

uint64_t sub_264490050(uint64_t a1, uint64_t a2)
{
  v4 = sub_26448DE0C(&qword_27FF6E2E8, &qword_2644ACD00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2644900C0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26448B42C(a1, a2);
  }

  return a1;
}

uint64_t sub_2644900D4(uint64_t a1)
{
  v2 = sub_26448DE0C(&qword_27FF6E2E8, &qword_2644ACD00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26449013C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26448B480(a1, a2);
  }

  return a1;
}

uint64_t Data.init(base64urlEncoded:options:)()
{
  result = sub_2644AB760();
  if (__OFADD__(result, 3))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (result + 3 < 0)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_26448DE0C(&qword_27FF6E358, &qword_2644ACD48);
  sub_264490564(&qword_27FF6E360, &qword_27FF6E358, &qword_2644ACD48);
  sub_2644AB810();
  sub_2644AB820();
  v1 = sub_2644AB3B0();
  v3 = v2;
  sub_2644900C0(v1, v2);

  if (v3 >> 60 != 15)
  {
    sub_26449013C(v1, v3);
  }

  return v1;
}

uint64_t Data.base64urlEncodedData(options:)()
{
  *&v2 = sub_2644AB360();
  *(&v2 + 1) = v0;
  v3 = sub_264490300;
  v4 = 0;
  v5 = sub_264490310;
  v6 = 0;
  return sub_26448C2DC(&v2);
}

unsigned __int8 *sub_264490334@<X0>(unsigned __int8 *result@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, unsigned __int8 *a4@<X8>)
{
  v5 = *result;
  if (*a2 != -1)
  {
    v8 = a3;
    result = swift_once();
    a3 = v8;
  }

  v6 = *a3;
  if (*(*a3 + 16))
  {
    result = sub_264492C48(v5);
    if (v7)
    {
      v5 = result[*(v6 + 56)];
    }
  }

  *a4 = v5;
  return result;
}

Swift::String __swiftcall Data.base64urlEncodedString(options:)(NSDataBase64EncodingOptions options)
{
  sub_2644AB440();
  sub_26448DE0C(&qword_27FF6E368, &qword_2644ACD50);
  sub_264490564(&qword_27FF6E370, &qword_27FF6E368, &qword_2644ACD50);
  v1 = sub_2644AB810();
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t sub_26449045C(void *a1)
{
  if (*a1 == 61 && a1[1] == 0xE100000000000000)
  {
    return 0;
  }

  else
  {
    return (sub_2644ABC90() ^ 1) & 1;
  }
}

uint64_t sub_2644904D4@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a2 != -1)
  {
    v12 = a3;
    swift_once();
    a3 = v12;
  }

  v7 = *a3;
  if (*(*a3 + 16))
  {
    v8 = sub_264492C90(v5, v6);
    if (v9)
    {
      v10 = (*(v7 + 56) + 16 * v8);
      v5 = *v10;
      v6 = v10[1];
    }
  }

  *a4 = v5;
  a4[1] = v6;
}

uint64_t sub_264490564(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_26448F36C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Data.toBCD()(uint64_t a1, unint64_t a2)
{
  v62 = *MEMORY[0x277D85DE8];
  v61 = xmmword_2644ACBC0;
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = HIWORD(a2);
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    goto LABEL_55;
  }

  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = __OFSUB__(v5, v6);
  LOBYTE(v5) = v5 - v6;
  if (v7)
  {
    __break(1u);
LABEL_8:
    LOBYTE(v5) = BYTE4(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }
  }

LABEL_9:
  if (v5)
  {
    goto LABEL_55;
  }

  v8 = HIDWORD(a1);
  if (v4 == 2)
  {
    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (__OFSUB__(v11, v12))
    {
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
    }

    if (v10 < 1)
    {
      goto LABEL_55;
    }
  }

  else
  {
    if (v4 == 1)
    {
      v9 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      v10 = v9;
      if (v9 < 1)
      {
        goto LABEL_55;
      }

      goto LABEL_17;
    }

    v10 = BYTE6(a2);
    if (!BYTE6(a2))
    {
LABEL_55:
      result = 0;
      goto LABEL_56;
    }
  }

LABEL_17:
  v13 = 0;
  v49 = a1 >> 32;
  v50 = a1;
  v46 = BYTE6(a2);
  v48 = HIDWORD(a1);
  do
  {
    if (__OFADD__(v13, 2))
    {
      v16 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = v13 + 2;
    }

    sub_26448DE0C(&qword_27FF6E290, &qword_2644ACBE0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_2644ACBD0;
    if (v4 == 2)
    {
      if (v13 < *(a1 + 16))
      {
        goto LABEL_58;
      }

      if (v13 >= *(a1 + 24))
      {
        goto LABEL_61;
      }

      v27 = sub_2644AB250();
      if (!v27)
      {
        goto LABEL_73;
      }

      v28 = v27;
      v29 = sub_2644AB280();
      if (__OFSUB__(v13, v29))
      {
        goto LABEL_63;
      }

      v30 = v13 + 1;
      if (v13 + 1 < *(a1 + 16))
      {
        goto LABEL_65;
      }

      if (v30 >= *(a1 + 24))
      {
        goto LABEL_67;
      }

      v22 = *(v28 + v13 - v29);
      v31 = sub_2644AB250();
      if (!v31)
      {
        goto LABEL_75;
      }

      v24 = v31;
      v32 = sub_2644AB280();
      v26 = v30 - v32;
      if (__OFSUB__(v30, v32))
      {
        goto LABEL_68;
      }

      goto LABEL_43;
    }

    if (v4 == 1)
    {
      if (v13 < v50 || v13 >= v49)
      {
        goto LABEL_59;
      }

      v18 = sub_2644AB250();
      if (!v18)
      {
        goto LABEL_72;
      }

      v19 = v18;
      v20 = sub_2644AB280();
      if (__OFSUB__(v13, v20))
      {
        goto LABEL_62;
      }

      v21 = v13 + 1;
      if (v13 + 1 < v50 || v21 >= v49)
      {
        goto LABEL_64;
      }

      v22 = *(v19 + v13 - v20);
      v23 = sub_2644AB250();
      if (!v23)
      {
        goto LABEL_74;
      }

      v24 = v23;
      v25 = sub_2644AB280();
      v26 = v21 - v25;
      if (__OFSUB__(v21, v25))
      {
        goto LABEL_66;
      }

LABEL_43:
      v33 = *(v24 + v26);
      LOBYTE(v8) = v48;
      goto LABEL_47;
    }

    if (v13 >= v46)
    {
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    LOWORD(v53) = a1;
    BYTE2(v53) = BYTE2(a1);
    BYTE3(v53) = BYTE3(a1);
    BYTE4(v53) = v8;
    BYTE5(v53) = BYTE5(a1);
    BYTE6(v53) = BYTE6(a1);
    HIBYTE(v53) = HIBYTE(a1);
    v54 = a2;
    v55 = BYTE2(a2);
    v56 = BYTE3(a2);
    v57 = BYTE4(a2);
    v34 = v13 + 1;
    v58 = BYTE5(a2);
    if (v13 + 1 >= v46)
    {
      goto LABEL_60;
    }

    v22 = *(&v53 + v13);
    LOWORD(v53) = a1;
    BYTE2(v53) = BYTE2(a1);
    BYTE3(v53) = BYTE3(a1);
    BYTE4(v53) = v8;
    BYTE5(v53) = BYTE5(a1);
    BYTE6(v53) = BYTE6(a1);
    HIBYTE(v53) = HIBYTE(a1);
    v54 = a2;
    v55 = BYTE2(a2);
    v56 = BYTE3(a2);
    v57 = BYTE4(a2);
    v58 = BYTE5(a2);
    v33 = *(&v53 + v34);
LABEL_47:
    *(v17 + 32) = v33 | (16 * v22);
    v35 = sub_26448DE0C(&qword_27FF6E300, &qword_2644ACD18);
    v59 = v35;
    v60 = sub_26448F308();
    v53 = v17;
    v36 = sub_26448B580(&v53, v35);
    v37 = *v36;
    v38 = *(*v36 + 16);
    if (v38)
    {
      if (v38 <= 0xE)
      {
        memset(__dst, 0, sizeof(__dst));
        v52 = v38;
        memcpy(__dst, (v37 + 32), v38);
        v14 = *__dst;
        v15 = v47 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v52 << 16)) << 32);
        v47 = v15;
      }

      else
      {
        v39 = sub_2644AB2A0();
        v40 = *(v39 + 48);
        v41 = *(v39 + 52);
        swift_allocObject();
        v42 = sub_2644AB240();
        v43 = v42;
        if (v38 >= 0x7FFFFFFF)
        {
          sub_2644AB3C0();
          v14 = swift_allocObject();
          *(v14 + 16) = 0;
          *(v14 + 24) = v38;
          v15 = v43 | 0x8000000000000000;
        }

        else
        {
          v14 = v38 << 32;
          v15 = v42 | 0x4000000000000000;
        }
      }
    }

    else
    {
      v14 = 0;
      v15 = 0xC000000000000000;
    }

    sub_26448B5C4(&v53);
    sub_2644AB480();
    sub_26448B480(v14, v15);
    v13 = v16;
  }

  while (v16 < v10);
  result = v61;
LABEL_56:
  v45 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Data.xor(with:)(uint64_t result, unint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = result;
  v75 = *MEMORY[0x277D85DE8];
  v6 = *v2;
  v7 = v2[1];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_114;
    }

    v10 = *(v6 + 16);
    v9 = *(v6 + 24);
    v11 = __OFSUB__(v9, v10);
    v12 = v9 - v10;
    if (v11)
    {
LABEL_137:
      __break(1u);
      goto LABEL_138;
    }

    if (!v12)
    {
      goto LABEL_114;
    }
  }

  else if (v8)
  {
    if (__OFSUB__(HIDWORD(v6), v6))
    {
LABEL_138:
      __break(1u);
      goto LABEL_139;
    }

    if (HIDWORD(v6) == v6)
    {
      goto LABEL_114;
    }
  }

  else if (!BYTE6(v7))
  {
    goto LABEL_114;
  }

  v13 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v13 != 2)
    {
      goto LABEL_114;
    }

    v15 = *(result + 16);
    v14 = *(result + 24);
    v11 = __OFSUB__(v14, v15);
    v16 = v14 - v15;
    if (v11)
    {
LABEL_140:
      __break(1u);
      goto LABEL_141;
    }

    if (!v16)
    {
      goto LABEL_114;
    }
  }

  else if (v13)
  {
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_141:
      __break(1u);
      goto LABEL_142;
    }

    if (HIDWORD(result) == result)
    {
      goto LABEL_114;
    }
  }

  else if (!BYTE6(a2))
  {
    goto LABEL_114;
  }

  if (v8 == 2)
  {
    v19 = *(v6 + 16);
    v18 = *(v6 + 24);
    v11 = __OFSUB__(v18, v19);
    v17 = v18 - v19;
    if (!v11)
    {
      goto LABEL_29;
    }

    __break(1u);
LABEL_28:
    v17 = BYTE6(v7);
    goto LABEL_29;
  }

  if (v8 != 1)
  {
    goto LABEL_28;
  }

  LODWORD(v17) = HIDWORD(v6) - v6;
  if (__OFSUB__(HIDWORD(v6), v6))
  {
LABEL_142:
    __break(1u);
    goto LABEL_143;
  }

  v17 = v17;
LABEL_29:
  v66 = HIDWORD(result);
  if (v13 == 2)
  {
    v21 = *(result + 16);
    v20 = *(result + 24);
    v11 = __OFSUB__(v20, v21);
    v22 = v20 - v21;
    if (v11)
    {
LABEL_144:
      __break(1u);
      goto LABEL_145;
    }

    if (v17 != v22)
    {
      goto LABEL_114;
    }
  }

  else if (v13 == 1)
  {
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_143:
      __break(1u);
      goto LABEL_144;
    }

    if (v17 != HIDWORD(result) - result)
    {
      goto LABEL_114;
    }
  }

  else if (v17 != BYTE6(a2))
  {
    goto LABEL_114;
  }

  if (v8 == 2)
  {
    v27 = v6 + 16;
    v25 = *(v6 + 16);
    v26 = *(v27 + 8);
    v11 = __OFSUB__(v26, v25);
    v24 = v26 - v25;
    if (v11)
    {
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
    }

LABEL_43:
    if ((v24 & 0x8000000000000000) != 0)
    {
LABEL_139:
      __break(1u);
      goto LABEL_140;
    }

    if (!v24)
    {
      goto LABEL_114;
    }

    goto LABEL_47;
  }

  if (v8 == 1)
  {
    v11 = __OFSUB__(HIDWORD(v6), v6);
    v23 = HIDWORD(v6) - v6;
    if (v11)
    {
LABEL_145:
      __break(1u);
      goto LABEL_146;
    }

    v24 = v23;
    goto LABEL_43;
  }

  v24 = BYTE6(v7);
  if (!v24)
  {
LABEL_114:
    v61 = *MEMORY[0x277D85DE8];
    return result;
  }

LABEL_47:
  v28 = 0;
  v63 = result >> 32;
  v64 = BYTE6(a2);
  v65 = result;
  v69 = a2 >> 62;
  v70 = result;
  v68 = v24;
  while (1)
  {
    if (v28 >= v24)
    {
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
      goto LABEL_137;
    }

    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      goto LABEL_116;
    }

    if (v13 == 2)
    {
      if (v28 < *(v5 + 16))
      {
        goto LABEL_123;
      }

      if (v28 >= *(v5 + 24))
      {
        goto LABEL_125;
      }

      result = sub_2644AB250();
      if (!result)
      {
        goto LABEL_153;
      }

      v30 = result;
      result = sub_2644AB280();
      v31 = v28 - result;
      if (__OFSUB__(v28, result))
      {
        goto LABEL_129;
      }

      goto LABEL_62;
    }

    if (v13 == 1)
    {
      if (v28 < v65 || v28 >= v63)
      {
        goto LABEL_124;
      }

      result = sub_2644AB250();
      if (!result)
      {
        goto LABEL_151;
      }

      v30 = result;
      result = sub_2644AB280();
      v31 = v28 - result;
      if (__OFSUB__(v28, result))
      {
        goto LABEL_126;
      }

LABEL_62:
      v32 = *(v30 + v31);
      goto LABEL_65;
    }

    if (v28 >= v64)
    {
      goto LABEL_122;
    }

    LOWORD(v71) = v5;
    BYTE2(v71) = BYTE2(v5);
    BYTE3(v71) = BYTE3(v5);
    BYTE4(v71) = v66;
    BYTE5(v71) = BYTE5(v5);
    BYTE6(v71) = BYTE6(v5);
    HIBYTE(v71) = HIBYTE(v5);
    LOWORD(v72) = v4;
    BYTE2(v72) = BYTE2(v4);
    HIBYTE(v72) = BYTE3(v4);
    LOBYTE(v73) = BYTE4(v4);
    HIBYTE(v73) = BYTE5(v4);
    v32 = *(&v71 + v28);
LABEL_65:
    v33 = *v3;
    v34 = v3[1];
    v35 = v34 >> 62;
    if ((v34 >> 62) > 1)
    {
      if (v35 != 2)
      {
        goto LABEL_152;
      }

      if (v28 < *(v33 + 16))
      {
        goto LABEL_128;
      }

      if (v28 >= *(v33 + 24))
      {
        goto LABEL_131;
      }

      result = sub_2644AB250();
      if (!result)
      {
        goto LABEL_155;
      }

      v37 = result;
      result = sub_2644AB280();
      v38 = v28 - result;
      if (__OFSUB__(v28, result))
      {
        goto LABEL_133;
      }

      goto LABEL_80;
    }

    if (v35)
    {
      if (v28 >= v33 >> 32 || v28 < v33)
      {
        goto LABEL_130;
      }

      result = sub_2644AB250();
      if (!result)
      {
        goto LABEL_154;
      }

      v37 = result;
      result = sub_2644AB280();
      v38 = v28 - result;
      if (__OFSUB__(v28, result))
      {
        goto LABEL_132;
      }

LABEL_80:
      v36 = *(v37 + v38);
      goto LABEL_81;
    }

    if (v28 >= BYTE6(v34))
    {
      goto LABEL_127;
    }

    v71 = *v3;
    LOWORD(v72) = v34;
    BYTE2(v72) = BYTE2(v34);
    HIBYTE(v72) = BYTE3(v34);
    LOBYTE(v73) = BYTE4(v34);
    HIBYTE(v73) = BYTE5(v34);
    v36 = *(&v71 + v28);
LABEL_81:
    v39 = v36 ^ v32;
    v41 = *v3;
    v40 = v3[1];
    if ((v40 >> 62) > 1)
    {
      break;
    }

    if (v40 >> 62 == 1)
    {
      v42 = v40 & 0x3FFFFFFFFFFFFFFFLL;

      sub_26448B480(v41, v40);
      *v3 = xmmword_2644ACBC0;
      sub_26448B480(0, 0xC000000000000000);
      if (v28 >= v41 >> 32 || v28 < v41)
      {
        goto LABEL_118;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {

        if (sub_2644AB250() && __OFSUB__(v41, sub_2644AB280()))
        {
          goto LABEL_135;
        }

        v46 = sub_2644AB2A0();
        v47 = *(v46 + 48);
        v48 = *(v46 + 52);
        swift_allocObject();
        v49 = sub_2644AB230();

        v42 = v49;
        v4 = a2;
      }

      sub_2644AB220();
      result = sub_2644AB250();
      if (!result)
      {
        goto LABEL_149;
      }

      v50 = result;
      result = sub_2644AB280();
      v51 = v28 - result;
      v5 = v70;
      if (__OFSUB__(v28, result))
      {
        goto LABEL_120;
      }

      v52 = 0x4000000000000000;
LABEL_110:
      *(v50 + v51) = v39;
      *v3 = v41;
      v3[1] = v52 | v42;
      ++v28;
      v24 = v68;
      LODWORD(v13) = v69;
      if (v29 == v68)
      {
        goto LABEL_114;
      }
    }

    else
    {
      result = sub_26448B480(v41, v40);
      v71 = v41;
      LOWORD(v72) = v40;
      BYTE2(v72) = BYTE2(v40);
      HIBYTE(v72) = BYTE3(v40);
      LOBYTE(v73) = BYTE4(v40);
      HIBYTE(v73) = BYTE5(v40);
      v74 = BYTE6(v40);
      if (v28 >= BYTE6(v40))
      {
        goto LABEL_147;
      }

      *(&v71 + v28) = v39;
      v60 = v62 & 0xF00000000000000 | v72 | ((v73 | (v74 << 16)) << 32);
      *v3 = v71;
      v3[1] = v60;
      v62 = v60;
      ++v28;
      v24 = v68;
      v4 = a2;
      v5 = v70;
      LODWORD(v13) = v69;
      if (v29 == v68)
      {
        goto LABEL_114;
      }
    }
  }

  if (v40 >> 62 == 2)
  {
    v42 = v40 & 0x3FFFFFFFFFFFFFFFLL;
    v43 = *v3;

    sub_26448B480(v41, v40);
    *v3 = xmmword_2644ACBC0;
    sub_26448B480(0, 0xC000000000000000);
    if (v28 < *(v41 + 16))
    {
      goto LABEL_117;
    }

    if (v28 >= *(v41 + 24))
    {
      goto LABEL_119;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v45 = *(v41 + 16);
      v44 = *(v41 + 24);
      if (sub_2644AB250())
      {
        if (__OFSUB__(v45, sub_2644AB280()))
        {
          goto LABEL_136;
        }

        if (__OFSUB__(v44, v45))
        {
          goto LABEL_134;
        }
      }

      else if (__OFSUB__(v44, v45))
      {
        goto LABEL_134;
      }

      v53 = sub_2644AB2A0();
      v54 = *(v53 + 48);
      v55 = *(v53 + 52);
      swift_allocObject();
      v56 = sub_2644AB230();

      v42 = v56;
      v4 = a2;
      v5 = v70;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v57 = *(v41 + 16);
      v58 = *(v41 + 24);
      sub_2644AB3C0();
      v59 = swift_allocObject();
      *(v59 + 16) = v57;
      *(v59 + 24) = v58;
      v5 = v70;

      v41 = v59;
    }

    sub_2644AB220();
    result = sub_2644AB250();
    if (!result)
    {
      goto LABEL_150;
    }

    v50 = result;
    result = sub_2644AB280();
    v51 = v28 - result;
    if (__OFSUB__(v28, result))
    {
      goto LABEL_121;
    }

    v52 = 0x8000000000000000;
    goto LABEL_110;
  }

  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
  return result;
}

uint64_t static Data.randomBytes(count:)(size_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v1 = a1;
  if (a1)
  {
    v2 = sub_2644AB8E0();
    *(v2 + 16) = v1;
    bzero((v2 + 32), v1);
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
    v1 = *(MEMORY[0x277D84F90] + 16);
  }

  if (SecRandomCopyBytes(*MEMORY[0x277CDC540], v1, (v2 + 32)))
  {

    return 0;
  }

  else
  {
    v4 = sub_26448EC78(v2);

    return v4;
  }
}

uint64_t Data.sha256Digest.getter(uint64_t a1, unint64_t a2)
{
  v4 = sub_2644AB5C0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2644AB5B0();
  v18 = *(v9 - 8);
  v10 = *(v18 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264491AD0(&qword_27FF6E1D8, MEMORY[0x277CC5540]);
  sub_2644AB5A0();
  sub_26448B42C(a1, a2);
  sub_26448B24C(a1, a2);
  sub_26448B480(a1, a2);
  sub_2644AB590();
  (*(v5 + 8))(v8, v4);
  v21 = v9;
  v22 = sub_264491AD0(&qword_27FF6E1E0, MEMORY[0x277CC5290]);
  v13 = sub_26448B51C(v20);
  v14 = v18;
  (*(v18 + 16))(v13, v12, v9);
  sub_26448B580(v20, v21);
  sub_2644AB2B0();
  (*(v14 + 8))(v12, v9);
  v15 = v19;
  sub_26448B5C4(v20);
  return v15;
}

char *sub_26449168C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_26448DE0C(&qword_27FF6E290, &qword_2644ACBE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_2644917A8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_26448DE0C(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_2644918A4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_26448DE0C(&qword_27FF6E388, &qword_2644ACD70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2644919B0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_26448DE0C(&qword_27FF6E380, &qword_2644ACD68);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_264491AD0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_264491B1C()
{
  v0 = sub_2644AB560();
  sub_264493400(v0, qword_27FF6E3A0);
  v1 = sub_264493318(v0, qword_27FF6E3A0);
  if (qword_27FF6E190 != -1)
  {
    swift_once();
  }

  v2 = sub_264493318(v0, qword_27FF6E648);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void static SecKeyRef.createRandomEC(sizeInBits:)(uint64_t a1)
{
  error[20] = *MEMORY[0x277D85DE8];
  sub_26448DE0C(&qword_27FF6E3B8, &qword_2644ACDB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2644ACD90;
  v3 = *MEMORY[0x277CDC028];
  *(inited + 32) = *MEMORY[0x277CDC028];
  v4 = *MEMORY[0x277CDC040];
  type metadata accessor for CFString(0);
  *(inited + 40) = v4;
  v5 = *MEMORY[0x277CDBFE0];
  v6 = MEMORY[0x277CDBFF0];
  *(inited + 64) = v7;
  *(inited + 72) = v5;
  v8 = *v6;
  *(inited + 80) = *v6;
  v9 = *MEMORY[0x277CDC018];
  *(inited + 104) = v7;
  *(inited + 112) = v9;
  *(inited + 144) = MEMORY[0x277D83B88];
  *(inited + 120) = a1;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  v13 = v8;
  v14 = v9;
  sub_264493210(inited);
  swift_setDeallocating();
  sub_26448DE0C(&qword_27FF6E3C0, &qword_2644ACDB8);
  swift_arrayDestroy();
  error[0] = 0;
  sub_2644933B8(&qword_27FF6E208, type metadata accessor for CFString);
  v15 = sub_2644AB5E0();
  RandomKey = SecKeyCreateRandomKey(v15, error);

  if (RandomKey)
  {

LABEL_9:
    v27 = *MEMORY[0x277D85DE8];
    return;
  }

  v17 = error[0];
  if (error[0])
  {

    if (qword_27FF6E160 != -1)
    {
      swift_once();
    }

    v18 = sub_2644AB560();
    sub_264493318(v18, qword_27FF6E3A0);
    v19 = v17;
    v20 = sub_2644AB540();
    v21 = sub_2644ABA00();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      type metadata accessor for CFError(0);
      sub_2644933B8(&qword_27FF6E3C8, type metadata accessor for CFError);
      swift_allocError();
      *v24 = v19;
      v25 = v19;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v26;
      *v23 = v26;
      _os_log_impl(&dword_264488000, v20, v21, "SecKeyCreateRandomKey failed: %@", v22, 0xCu);
      sub_264493350(v23);
      MEMORY[0x266739510](v23, -1, -1);
      MEMORY[0x266739510](v22, -1, -1);
    }

    else
    {
    }

    goto LABEL_9;
  }

  __break(1u);
}

void static SecKeyRef.createPublicEC(data:)(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CDC000];

  sub_264492008(a1, a2, v3);
}

void static SecKeyRef.createPrivateEC(data:)(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CDBFF0];

  sub_264492008(a1, a2, v3);
}

void sub_264492008(uint64_t a1, uint64_t a2, void **a3)
{
  v28[15] = *MEMORY[0x277D85DE8];
  sub_26448DE0C(&qword_27FF6E3B8, &qword_2644ACDB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2644ACDA0;
  v5 = *MEMORY[0x277CDC028];
  *(inited + 32) = *MEMORY[0x277CDC028];
  v6 = *MEMORY[0x277CDC040];
  type metadata accessor for CFString(0);
  *(inited + 40) = v6;
  v7 = *MEMORY[0x277CDBFE0];
  *(inited + 64) = v8;
  *(inited + 72) = v7;
  v9 = *a3;
  *(inited + 104) = v8;
  *(inited + 80) = v9;
  v10 = v5;
  v11 = v6;
  v12 = v7;
  v13 = v9;
  sub_264493210(inited);
  swift_setDeallocating();
  sub_26448DE0C(&qword_27FF6E3C0, &qword_2644ACDB8);
  swift_arrayDestroy();
  v28[0] = 0;
  v14 = sub_2644AB430();
  sub_2644933B8(&qword_27FF6E208, type metadata accessor for CFString);
  v15 = sub_2644AB5E0();
  v16 = SecKeyCreateWithData(v14, v15, v28);

  if (v16)
  {

LABEL_9:
    v27 = *MEMORY[0x277D85DE8];
    return;
  }

  v17 = v28[0];
  if (v28[0])
  {

    if (qword_27FF6E160 != -1)
    {
      swift_once();
    }

    v18 = sub_2644AB560();
    sub_264493318(v18, qword_27FF6E3A0);
    v19 = v17;
    v20 = sub_2644AB540();
    v21 = sub_2644ABA00();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      type metadata accessor for CFError(0);
      sub_2644933B8(&qword_27FF6E3C8, type metadata accessor for CFError);
      swift_allocError();
      *v24 = v19;
      v25 = v19;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v26;
      *v23 = v26;
      _os_log_impl(&dword_264488000, v20, v21, "SecKeyCreateWithData failed: %@", v22, 0xCu);
      sub_264493350(v23);
      MEMORY[0x266739510](v23, -1, -1);
      MEMORY[0x266739510](v22, -1, -1);
    }

    else
    {
    }

    goto LABEL_9;
  }

  __break(1u);
}

uint64_t static SecKeyRef.create(subjectPublicKeyInfo:)()
{
  v0 = *MEMORY[0x277CBECE8];
  v1 = sub_2644AB430();
  v2 = SecKeyCreateFromSubjectPublicKeyInfoData();

  return v2;
}

uint64_t SecKeyRef.keySizeInBits.getter()
{
  v1 = SecKeyCopyAttributes(v0);
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      type metadata accessor for CFString(0);
      sub_2644933B8(&qword_27FF6E208, type metadata accessor for CFString);
      sub_2644AB5F0();
    }
  }

  return 0;
}

CFDataRef SecKeyRef.externalRepresentation.getter()
{
  v15[1] = *MEMORY[0x277D85DE8];
  v15[0] = 0;
  result = SecKeyCopyExternalRepresentation(v0, v15);
  if (result)
  {
    v2 = result;
    v3 = sub_2644AB450();

LABEL_10:
    v14 = *MEMORY[0x277D85DE8];
    return v3;
  }

  v4 = v15[0];
  if (v15[0])
  {
    if (qword_27FF6E160 != -1)
    {
      swift_once();
    }

    v5 = sub_2644AB560();
    sub_264493318(v5, qword_27FF6E3A0);
    v6 = v4;
    v7 = sub_2644AB540();
    v8 = sub_2644ABA00();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      type metadata accessor for CFError(0);
      sub_2644933B8(&qword_27FF6E3C8, type metadata accessor for CFError);
      swift_allocError();
      *v11 = v6;
      v12 = v6;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v13;
      *v10 = v13;
      _os_log_impl(&dword_264488000, v7, v8, "SecKeyCopyExternalRepresentation failed: %@", v9, 0xCu);
      sub_264493350(v10);
      MEMORY[0x266739510](v10, -1, -1);
      MEMORY[0x266739510](v9, -1, -1);
    }

    else
    {
    }

    v3 = 0;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t SecKeyRef.subjectPublicKeyInfo.getter()
{
  v0 = SecKeyCopySubjectPublicKeyInfo();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = sub_2644AB450();

  return v2;
}

void SecKeyRef.createSignature(algorithm:data:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *MEMORY[0x277D85DE8];
  sub_264492AA4(a1, a2, a3, MEMORY[0x277CDBE38]);
  v3 = *MEMORY[0x277D85DE8];
}

void SecKeyRef.verifySignature(algorithm:data:signature:)(const __CFString *a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v17[0] = 0;
  v3 = sub_2644AB430();
  v4 = sub_2644AB430();
  v5 = SecKeyVerifySignature(v1, a1, v3, v4, v17);

  if (v5)
  {
LABEL_8:
    v16 = *MEMORY[0x277D85DE8];
    return;
  }

  v6 = v17[0];
  if (v17[0])
  {
    if (qword_27FF6E160 != -1)
    {
      swift_once();
    }

    v7 = sub_2644AB560();
    sub_264493318(v7, qword_27FF6E3A0);
    v8 = v6;
    v9 = sub_2644AB540();
    v10 = sub_2644ABA00();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      type metadata accessor for CFError(0);
      sub_2644933B8(&qword_27FF6E3C8, type metadata accessor for CFError);
      swift_allocError();
      *v13 = v8;
      v14 = v8;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v15;
      *v12 = v15;
      _os_log_impl(&dword_264488000, v9, v10, "SecKeyVerifySignature failed: %@", v11, 0xCu);
      sub_264493350(v12);
      MEMORY[0x266739510](v12, -1, -1);
      MEMORY[0x266739510](v11, -1, -1);
      v8 = v9;
      v9 = v14;
    }

    goto LABEL_8;
  }

  __break(1u);
}

void SecKeyRef.createEncryptedData(algorithm:data:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *MEMORY[0x277D85DE8];
  sub_264492AA4(a1, a2, a3, MEMORY[0x277CDBE20]);
  v3 = *MEMORY[0x277D85DE8];
}

void sub_264492AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, void *, void *))
{
  v13[1] = *MEMORY[0x277D85DE8];
  v13[0] = 0;
  v7 = sub_2644AB430();
  v8 = a4(v4, a1, v7, v13);

  if (v8)
  {
    v9 = v8;
    sub_2644AB450();

LABEL_5:
    v12 = *MEMORY[0x277D85DE8];
    return;
  }

  v10 = v13[0];
  if (v13[0])
  {
    type metadata accessor for CFError(0);
    sub_2644933B8(&qword_27FF6E3C8, type metadata accessor for CFError);
    swift_allocError();
    *v11 = v10;
    swift_willThrow();
    goto LABEL_5;
  }

  __break(1u);
}

void SecKeyRef.createDecryptedData(algorithm:data:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *MEMORY[0x277D85DE8];
  sub_264492AA4(a1, a2, a3, MEMORY[0x277CDBE18]);
  v3 = *MEMORY[0x277D85DE8];
}

unint64_t sub_264492C48(unsigned __int8 a1)
{
  v3 = MEMORY[0x266738D60](*(v1 + 40), a1, 1);

  return sub_264492DBC(a1, v3);
}

unint64_t sub_264492C90(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2644ABD90();
  sub_2644AB630();
  v6 = sub_2644ABDB0();

  return sub_264492E2C(a1, a2, v6);
}

unint64_t sub_264492D08(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_2644ABD90();
  type metadata accessor for CFString(0);
  sub_2644933B8(&qword_27FF6E3D8, type metadata accessor for CFString);
  sub_2644AB520();
  v4 = sub_2644ABDB0();

  return sub_264492EE4(a1, v4);
}

unint64_t sub_264492DBC(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_264492E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2644ABC90())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_264492EE4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_2644933B8(&qword_27FF6E3D8, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2644AB510();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_264492FF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_26448DE0C(&qword_27FF6E3F0, &qword_2644ACDE0);
    v3 = sub_2644ABC40();
    for (i = (a1 + 33); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_264492C48(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_2644930D0(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  sub_26448DE0C(&qword_27FF6E3E8, &qword_2644ACDD8);
  v3 = sub_2644ABC40();
  v4 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v6 = a1[7];
  v8 = sub_264492C90(v4, v5);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v10 = v8;
  result = v5;
  v12 = a1 + 11;
  while (1)
  {
    *(v3 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    v13 = 16 * v10;
    v14 = (v3[6] + v13);
    *v14 = v4;
    v14[1] = result;
    v15 = (v3[7] + v13);
    *v15 = v7;
    v15[1] = v6;
    v16 = v3[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      break;
    }

    v3[2] = v18;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v19 = v12 + 4;
    v4 = *(v12 - 3);
    v20 = *(v12 - 2);
    v7 = *(v12 - 1);
    v21 = *v12;

    v10 = sub_264492C90(v4, v20);
    v12 = v19;
    v6 = v21;
    result = v20;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_264493210(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_26448DE0C(&qword_27FF6E3E0, &qword_2644ACDD0);
    v3 = sub_2644ABC40();
    v4 = a1 + 32;

    while (1)
    {
      sub_264493464(v4, &v11);
      v5 = v11;
      result = sub_264492D08(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_26448FD1C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_264493318(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_264493350(uint64_t a1)
{
  v2 = sub_26448DE0C(&qword_27FF6E3D0, &qword_2644ACDC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2644933B8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *sub_264493400(uint64_t a1, uint64_t *a2)
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

uint64_t sub_264493464(uint64_t a1, uint64_t a2)
{
  v4 = sub_26448DE0C(&qword_27FF6E3C0, &qword_2644ACDB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::UInt8 __swiftcall Data.toUInt8()()
{
  v2 = v1 >> 62;
  if ((v1 >> 62) > 1)
  {
    if (v2 == 2 && *(v0 + 16) != *(v0 + 24))
    {
      return sub_2644AB410();
    }
  }

  else if (v2)
  {
    if (v0 != v0 >> 32)
    {
      return sub_2644AB410();
    }
  }

  else if ((v1 & 0xFF000000000000) != 0)
  {
    return sub_2644AB410();
  }

  return 0;
}

uint64_t Data.toUInt16(endianness:)(_BYTE *a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v60 = *MEMORY[0x277D85DE8];
  if (*a1 != 1)
  {
    v58 = MEMORY[0x277CC9318];
    v59 = MEMORY[0x277CC9300];
    *&v57 = a2;
    *(&v57 + 1) = a3;
    v11 = sub_26448B580(&v57, MEMORY[0x277CC9318]);
    v12 = *v11;
    v7 = v11[1];
    v13 = v7 >> 62;
    if ((v7 >> 62) <= 1)
    {
      if (!v13)
      {
        v54[0] = *v11;
        LOWORD(v54[1]) = v7;
        BYTE2(v54[1]) = BYTE2(v7);
        BYTE3(v54[1]) = BYTE3(v7);
        BYTE4(v54[1]) = BYTE4(v7);
        BYTE5(v54[1]) = BYTE5(v7);
        sub_26448B42C(v4, v3);
        v14 = v54;
        v15 = v54 + BYTE6(v7);
        goto LABEL_54;
      }

      v31 = v12;
      v32 = v12 >> 32;
      v24 = v32 - v31;
      if (v32 < v31)
      {
        goto LABEL_79;
      }

      sub_26448B42C(v4, v3);
      v3 = sub_2644AB250();
      if (v3)
      {
        v33 = sub_2644AB280();
        if (__OFSUB__(v31, v33))
        {
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
        }

        v3 += v31 - v33;
      }

      goto LABEL_37;
    }

LABEL_15:
    if (v13 != 2)
    {
LABEL_53:
      memset(v54, 0, 14);
      sub_26448B42C(v4, v3);
      v14 = v54;
      v15 = v54;
      goto LABEL_54;
    }

    v21 = *(v12 + 16);
    v22 = *(v12 + 24);
    sub_26448B42C(v4, v3);
    v4 = v7 & 0x3FFFFFFFFFFFFFFFLL;
    v3 = sub_2644AB250();
    if (v3)
    {
      v4 = v7 & 0x3FFFFFFFFFFFFFFFLL;
      v23 = sub_2644AB280();
      v6 = v21 - v23;
      if (__OFSUB__(v21, v23))
      {
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      v3 += v6;
    }

    v19 = __OFSUB__(v22, v21);
    v24 = v22 - v21;
    if (v19)
    {
      __break(1u);
LABEL_22:
      v25 = v6;
      v26 = v6 >> 32;
      v20 = v26 - v25;
      if (v26 >= v25)
      {
        sub_26448B42C(v4, v3);
        v3 = sub_2644AB250();
        if (v3)
        {
          v27 = sub_2644AB280();
          if (__OFSUB__(v25, v27))
          {
LABEL_84:
            __break(1u);
            goto LABEL_85;
          }

          v3 += v25 - v27;
        }

        goto LABEL_26;
      }

      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

LABEL_37:
    v34 = sub_2644AB270();
    if (v34 >= v24)
    {
      v35 = v24;
    }

    else
    {
      v35 = v34;
    }

    v36 = (v35 + v3);
    if (v3)
    {
      v15 = v36;
    }

    else
    {
      v15 = 0;
    }

    v14 = v3;
LABEL_54:
    sub_26448B1B8(v14, v15, &v55);
    v37 = v55;
    v3 = v56;
    sub_26448B5C4(&v57);
    v43 = v3 >> 62;
    if ((v3 >> 62) > 1)
    {
      if (v43 != 2)
      {
        *(&v57 + 6) = 0;
        *&v57 = 0;
        goto LABEL_76;
      }

      v44 = *(v37 + 16);
      v45 = sub_2644AB250();
      if (v45)
      {
        v46 = sub_2644AB280();
        v47 = v44 - v46;
        if (__OFSUB__(v44, v46))
        {
          __break(1u);
LABEL_62:
          if (v37 <= v37 >> 32)
          {
            v40 = sub_2644AB250();
            if (!v40)
            {
LABEL_66:
              sub_2644AB270();
              v49 = sub_264494AB0(v40);
LABEL_74:
              v52 = v49;
              sub_26448B480(v37, v3);
              result = v52;
              goto LABEL_77;
            }

            v48 = sub_2644AB280();
            v42 = v37 - v48;
            if (!__OFSUB__(v37, v48))
            {
LABEL_65:
              v40 = (v40 + v42);
              goto LABEL_66;
            }

            goto LABEL_86;
          }

          goto LABEL_80;
        }

        goto LABEL_72;
      }
    }

    else
    {
      if (!v43)
      {
        *&v57 = v37;
        WORD4(v57) = v3;
        BYTE10(v57) = BYTE2(v3);
        BYTE11(v57) = BYTE3(v3);
        BYTE12(v57) = BYTE4(v3);
        BYTE13(v57) = BYTE5(v3);
LABEL_76:
        result = sub_264494AA8(&v57);
        goto LABEL_77;
      }

      if (v37 > v37 >> 32)
      {
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

      v45 = sub_2644AB250();
      if (v45)
      {
        v51 = sub_2644AB280();
        v47 = v37 - v51;
        if (__OFSUB__(v37, v51))
        {
          goto LABEL_87;
        }

LABEL_72:
        v45 = (v45 + v47);
      }
    }

    sub_2644AB270();
    v49 = sub_264494AA8(v45);
    goto LABEL_74;
  }

  v58 = MEMORY[0x277CC9318];
  v59 = MEMORY[0x277CC9300];
  *&v57 = a2;
  *(&v57 + 1) = a3;
  v5 = sub_26448B580(&v57, MEMORY[0x277CC9318]);
  v6 = *v5;
  v7 = v5[1];
  v8 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (!v8)
    {
      v54[0] = *v5;
      LOWORD(v54[1]) = v7;
      BYTE2(v54[1]) = BYTE2(v7);
      BYTE3(v54[1]) = BYTE3(v7);
      BYTE4(v54[1]) = BYTE4(v7);
      BYTE5(v54[1]) = BYTE5(v7);
      sub_26448B42C(v4, v3);
      v9 = v54;
      v10 = v54 + BYTE6(v7);
      goto LABEL_45;
    }

    goto LABEL_22;
  }

  if (v8 != 2)
  {
    memset(v54, 0, 14);
    sub_26448B42C(v4, v3);
    v9 = v54;
    v10 = v54;
    goto LABEL_45;
  }

  v16 = *(v6 + 16);
  v17 = *(v6 + 24);
  sub_26448B42C(v4, v3);
  v4 = v7 & 0x3FFFFFFFFFFFFFFFLL;
  v3 = sub_2644AB250();
  if (v3)
  {
    v4 = v7 & 0x3FFFFFFFFFFFFFFFLL;
    v18 = sub_2644AB280();
    v12 = v16 - v18;
    if (__OFSUB__(v16, v18))
    {
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    v3 += v12;
  }

  v19 = __OFSUB__(v17, v16);
  v20 = v17 - v16;
  if (v19)
  {
    __break(1u);
    goto LABEL_15;
  }

LABEL_26:
  v28 = sub_2644AB270();
  if (v28 >= v20)
  {
    v29 = v20;
  }

  else
  {
    v29 = v28;
  }

  v30 = (v29 + v3);
  if (v3)
  {
    v10 = v30;
  }

  else
  {
    v10 = 0;
  }

  v9 = v3;
LABEL_45:
  sub_26448B1B8(v9, v10, &v55);
  v37 = v55;
  v3 = v56;
  sub_26448B5C4(&v57);
  v38 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v38 != 2)
    {
      *(&v57 + 6) = 0;
      *&v57 = 0;
      goto LABEL_68;
    }

    v39 = *(v37 + 16);
    v40 = sub_2644AB250();
    if (!v40)
    {
      goto LABEL_66;
    }

    v4 = v3 & 0x3FFFFFFFFFFFFFFFLL;
    v41 = sub_2644AB280();
    v42 = v39 - v41;
    if (!__OFSUB__(v39, v41))
    {
      goto LABEL_65;
    }

    __break(1u);
    goto LABEL_53;
  }

  if (v38)
  {
    goto LABEL_62;
  }

  *&v57 = v37;
  WORD4(v57) = v3;
  BYTE10(v57) = BYTE2(v3);
  BYTE11(v57) = BYTE3(v3);
  BYTE12(v57) = BYTE4(v3);
  BYTE13(v57) = BYTE5(v3);
LABEL_68:
  result = sub_264494AB0(&v57);
LABEL_77:
  v53 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Data.toUInt32(endianness:)(_BYTE *a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v60 = *MEMORY[0x277D85DE8];
  if (*a1 != 1)
  {
    v58 = MEMORY[0x277CC9318];
    v59 = MEMORY[0x277CC9300];
    *&v57 = a2;
    *(&v57 + 1) = a3;
    v11 = sub_26448B580(&v57, MEMORY[0x277CC9318]);
    v12 = *v11;
    v7 = v11[1];
    v13 = v7 >> 62;
    if ((v7 >> 62) <= 1)
    {
      if (!v13)
      {
        v54[0] = *v11;
        LOWORD(v54[1]) = v7;
        BYTE2(v54[1]) = BYTE2(v7);
        BYTE3(v54[1]) = BYTE3(v7);
        BYTE4(v54[1]) = BYTE4(v7);
        BYTE5(v54[1]) = BYTE5(v7);
        sub_26448B42C(v4, v3);
        v14 = v54;
        v15 = v54 + BYTE6(v7);
        goto LABEL_54;
      }

      v31 = v12;
      v32 = v12 >> 32;
      v24 = v32 - v31;
      if (v32 < v31)
      {
        goto LABEL_79;
      }

      sub_26448B42C(v4, v3);
      v3 = sub_2644AB250();
      if (v3)
      {
        v33 = sub_2644AB280();
        if (__OFSUB__(v31, v33))
        {
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
        }

        v3 += v31 - v33;
      }

      goto LABEL_37;
    }

LABEL_15:
    if (v13 != 2)
    {
LABEL_53:
      memset(v54, 0, 14);
      sub_26448B42C(v4, v3);
      v14 = v54;
      v15 = v54;
      goto LABEL_54;
    }

    v21 = *(v12 + 16);
    v22 = *(v12 + 24);
    sub_26448B42C(v4, v3);
    v4 = v7 & 0x3FFFFFFFFFFFFFFFLL;
    v3 = sub_2644AB250();
    if (v3)
    {
      v4 = v7 & 0x3FFFFFFFFFFFFFFFLL;
      v23 = sub_2644AB280();
      v6 = v21 - v23;
      if (__OFSUB__(v21, v23))
      {
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      v3 += v6;
    }

    v19 = __OFSUB__(v22, v21);
    v24 = v22 - v21;
    if (v19)
    {
      __break(1u);
LABEL_22:
      v25 = v6;
      v26 = v6 >> 32;
      v20 = v26 - v25;
      if (v26 >= v25)
      {
        sub_26448B42C(v4, v3);
        v3 = sub_2644AB250();
        if (v3)
        {
          v27 = sub_2644AB280();
          if (__OFSUB__(v25, v27))
          {
LABEL_84:
            __break(1u);
            goto LABEL_85;
          }

          v3 += v25 - v27;
        }

        goto LABEL_26;
      }

      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

LABEL_37:
    v34 = sub_2644AB270();
    if (v34 >= v24)
    {
      v35 = v24;
    }

    else
    {
      v35 = v34;
    }

    v36 = (v35 + v3);
    if (v3)
    {
      v15 = v36;
    }

    else
    {
      v15 = 0;
    }

    v14 = v3;
LABEL_54:
    sub_26448B1B8(v14, v15, &v55);
    v37 = v55;
    v3 = v56;
    sub_26448B5C4(&v57);
    v43 = v3 >> 62;
    if ((v3 >> 62) > 1)
    {
      if (v43 != 2)
      {
        *(&v57 + 6) = 0;
        *&v57 = 0;
        goto LABEL_76;
      }

      v44 = *(v37 + 16);
      v45 = sub_2644AB250();
      if (v45)
      {
        v46 = sub_2644AB280();
        v47 = v44 - v46;
        if (__OFSUB__(v44, v46))
        {
          __break(1u);
LABEL_62:
          if (v37 <= v37 >> 32)
          {
            v40 = sub_2644AB250();
            if (!v40)
            {
LABEL_66:
              sub_2644AB270();
              v49 = sub_264494AC8(v40);
LABEL_74:
              v52 = v49;
              sub_26448B480(v37, v3);
              result = v52;
              goto LABEL_77;
            }

            v48 = sub_2644AB280();
            v42 = v37 - v48;
            if (!__OFSUB__(v37, v48))
            {
LABEL_65:
              v40 = (v40 + v42);
              goto LABEL_66;
            }

            goto LABEL_86;
          }

          goto LABEL_80;
        }

        goto LABEL_72;
      }
    }

    else
    {
      if (!v43)
      {
        *&v57 = v37;
        WORD4(v57) = v3;
        BYTE10(v57) = BYTE2(v3);
        BYTE11(v57) = BYTE3(v3);
        BYTE12(v57) = BYTE4(v3);
        BYTE13(v57) = BYTE5(v3);
LABEL_76:
        result = sub_264494AC0(&v57);
        goto LABEL_77;
      }

      if (v37 > v37 >> 32)
      {
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

      v45 = sub_2644AB250();
      if (v45)
      {
        v51 = sub_2644AB280();
        v47 = v37 - v51;
        if (__OFSUB__(v37, v51))
        {
          goto LABEL_87;
        }

LABEL_72:
        v45 = (v45 + v47);
      }
    }

    sub_2644AB270();
    v49 = sub_264494AC0(v45);
    goto LABEL_74;
  }

  v58 = MEMORY[0x277CC9318];
  v59 = MEMORY[0x277CC9300];
  *&v57 = a2;
  *(&v57 + 1) = a3;
  v5 = sub_26448B580(&v57, MEMORY[0x277CC9318]);
  v6 = *v5;
  v7 = v5[1];
  v8 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (!v8)
    {
      v54[0] = *v5;
      LOWORD(v54[1]) = v7;
      BYTE2(v54[1]) = BYTE2(v7);
      BYTE3(v54[1]) = BYTE3(v7);
      BYTE4(v54[1]) = BYTE4(v7);
      BYTE5(v54[1]) = BYTE5(v7);
      sub_26448B42C(v4, v3);
      v9 = v54;
      v10 = v54 + BYTE6(v7);
      goto LABEL_45;
    }

    goto LABEL_22;
  }

  if (v8 != 2)
  {
    memset(v54, 0, 14);
    sub_26448B42C(v4, v3);
    v9 = v54;
    v10 = v54;
    goto LABEL_45;
  }

  v16 = *(v6 + 16);
  v17 = *(v6 + 24);
  sub_26448B42C(v4, v3);
  v4 = v7 & 0x3FFFFFFFFFFFFFFFLL;
  v3 = sub_2644AB250();
  if (v3)
  {
    v4 = v7 & 0x3FFFFFFFFFFFFFFFLL;
    v18 = sub_2644AB280();
    v12 = v16 - v18;
    if (__OFSUB__(v16, v18))
    {
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    v3 += v12;
  }

  v19 = __OFSUB__(v17, v16);
  v20 = v17 - v16;
  if (v19)
  {
    __break(1u);
    goto LABEL_15;
  }

LABEL_26:
  v28 = sub_2644AB270();
  if (v28 >= v20)
  {
    v29 = v20;
  }

  else
  {
    v29 = v28;
  }

  v30 = (v29 + v3);
  if (v3)
  {
    v10 = v30;
  }

  else
  {
    v10 = 0;
  }

  v9 = v3;
LABEL_45:
  sub_26448B1B8(v9, v10, &v55);
  v37 = v55;
  v3 = v56;
  sub_26448B5C4(&v57);
  v38 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v38 != 2)
    {
      *(&v57 + 6) = 0;
      *&v57 = 0;
      goto LABEL_68;
    }

    v39 = *(v37 + 16);
    v40 = sub_2644AB250();
    if (!v40)
    {
      goto LABEL_66;
    }

    v4 = v3 & 0x3FFFFFFFFFFFFFFFLL;
    v41 = sub_2644AB280();
    v42 = v39 - v41;
    if (!__OFSUB__(v39, v41))
    {
      goto LABEL_65;
    }

    __break(1u);
    goto LABEL_53;
  }

  if (v38)
  {
    goto LABEL_62;
  }

  *&v57 = v37;
  WORD4(v57) = v3;
  BYTE10(v57) = BYTE2(v3);
  BYTE11(v57) = BYTE3(v3);
  BYTE12(v57) = BYTE4(v3);
  BYTE13(v57) = BYTE5(v3);
LABEL_68:
  result = sub_264494AC8(&v57);
LABEL_77:
  v53 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t Data.toUInt64(endianness:)(_BYTE *a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v60 = *MEMORY[0x277D85DE8];
  if (*a1 != 1)
  {
    v58 = MEMORY[0x277CC9318];
    v59 = MEMORY[0x277CC9300];
    *&v57 = a2;
    *(&v57 + 1) = a3;
    v11 = sub_26448B580(&v57, MEMORY[0x277CC9318]);
    v12 = *v11;
    v7 = v11[1];
    v13 = v7 >> 62;
    if ((v7 >> 62) <= 1)
    {
      if (!v13)
      {
        v54[0] = *v11;
        LOWORD(v54[1]) = v7;
        BYTE2(v54[1]) = BYTE2(v7);
        BYTE3(v54[1]) = BYTE3(v7);
        BYTE4(v54[1]) = BYTE4(v7);
        BYTE5(v54[1]) = BYTE5(v7);
        sub_26448B42C(v4, v3);
        v14 = v54;
        v15 = v54 + BYTE6(v7);
        goto LABEL_54;
      }

      v31 = v12;
      v32 = v12 >> 32;
      v24 = v32 - v31;
      if (v32 < v31)
      {
        goto LABEL_79;
      }

      sub_26448B42C(v4, v3);
      v3 = sub_2644AB250();
      if (v3)
      {
        v33 = sub_2644AB280();
        if (__OFSUB__(v31, v33))
        {
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
        }

        v3 += v31 - v33;
      }

      goto LABEL_37;
    }

LABEL_15:
    if (v13 != 2)
    {
LABEL_53:
      memset(v54, 0, 14);
      sub_26448B42C(v4, v3);
      v14 = v54;
      v15 = v54;
      goto LABEL_54;
    }

    v21 = *(v12 + 16);
    v22 = *(v12 + 24);
    sub_26448B42C(v4, v3);
    v4 = v7 & 0x3FFFFFFFFFFFFFFFLL;
    v3 = sub_2644AB250();
    if (v3)
    {
      v4 = v7 & 0x3FFFFFFFFFFFFFFFLL;
      v23 = sub_2644AB280();
      v6 = v21 - v23;
      if (__OFSUB__(v21, v23))
      {
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      v3 += v6;
    }

    v19 = __OFSUB__(v22, v21);
    v24 = v22 - v21;
    if (v19)
    {
      __break(1u);
LABEL_22:
      v25 = v6;
      v26 = v6 >> 32;
      v20 = v26 - v25;
      if (v26 >= v25)
      {
        sub_26448B42C(v4, v3);
        v3 = sub_2644AB250();
        if (v3)
        {
          v27 = sub_2644AB280();
          if (__OFSUB__(v25, v27))
          {
LABEL_84:
            __break(1u);
            goto LABEL_85;
          }

          v3 += v25 - v27;
        }

        goto LABEL_26;
      }

      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

LABEL_37:
    v34 = sub_2644AB270();
    if (v34 >= v24)
    {
      v35 = v24;
    }

    else
    {
      v35 = v34;
    }

    v36 = (v35 + v3);
    if (v3)
    {
      v15 = v36;
    }

    else
    {
      v15 = 0;
    }

    v14 = v3;
LABEL_54:
    sub_26448B1B8(v14, v15, &v55);
    v37 = v55;
    v3 = v56;
    sub_26448B5C4(&v57);
    v43 = v3 >> 62;
    if ((v3 >> 62) > 1)
    {
      if (v43 != 2)
      {
        *(&v57 + 6) = 0;
        *&v57 = 0;
        goto LABEL_76;
      }

      v44 = *(v37 + 16);
      v45 = sub_2644AB250();
      if (v45)
      {
        v46 = sub_2644AB280();
        v47 = v44 - v46;
        if (__OFSUB__(v44, v46))
        {
          __break(1u);
LABEL_62:
          if (v37 <= v37 >> 32)
          {
            v40 = sub_2644AB250();
            if (!v40)
            {
LABEL_66:
              sub_2644AB270();
              v49 = sub_264494ADC(v40);
LABEL_74:
              v52 = v49;
              sub_26448B480(v37, v3);
              result = v52;
              goto LABEL_77;
            }

            v48 = sub_2644AB280();
            v42 = v37 - v48;
            if (!__OFSUB__(v37, v48))
            {
LABEL_65:
              v40 = (v40 + v42);
              goto LABEL_66;
            }

            goto LABEL_86;
          }

          goto LABEL_80;
        }

        goto LABEL_72;
      }
    }

    else
    {
      if (!v43)
      {
        *&v57 = v37;
        WORD4(v57) = v3;
        BYTE10(v57) = BYTE2(v3);
        BYTE11(v57) = BYTE3(v3);
        BYTE12(v57) = BYTE4(v3);
        BYTE13(v57) = BYTE5(v3);
LABEL_76:
        result = sub_264494AD4(&v57);
        goto LABEL_77;
      }

      if (v37 > v37 >> 32)
      {
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

      v45 = sub_2644AB250();
      if (v45)
      {
        v51 = sub_2644AB280();
        v47 = v37 - v51;
        if (__OFSUB__(v37, v51))
        {
          goto LABEL_87;
        }

LABEL_72:
        v45 += v47;
      }
    }

    sub_2644AB270();
    v49 = sub_264494AD4(v45);
    goto LABEL_74;
  }

  v58 = MEMORY[0x277CC9318];
  v59 = MEMORY[0x277CC9300];
  *&v57 = a2;
  *(&v57 + 1) = a3;
  v5 = sub_26448B580(&v57, MEMORY[0x277CC9318]);
  v6 = *v5;
  v7 = v5[1];
  v8 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (!v8)
    {
      v54[0] = *v5;
      LOWORD(v54[1]) = v7;
      BYTE2(v54[1]) = BYTE2(v7);
      BYTE3(v54[1]) = BYTE3(v7);
      BYTE4(v54[1]) = BYTE4(v7);
      BYTE5(v54[1]) = BYTE5(v7);
      sub_26448B42C(v4, v3);
      v9 = v54;
      v10 = v54 + BYTE6(v7);
      goto LABEL_45;
    }

    goto LABEL_22;
  }

  if (v8 != 2)
  {
    memset(v54, 0, 14);
    sub_26448B42C(v4, v3);
    v9 = v54;
    v10 = v54;
    goto LABEL_45;
  }

  v16 = *(v6 + 16);
  v17 = *(v6 + 24);
  sub_26448B42C(v4, v3);
  v4 = v7 & 0x3FFFFFFFFFFFFFFFLL;
  v3 = sub_2644AB250();
  if (v3)
  {
    v4 = v7 & 0x3FFFFFFFFFFFFFFFLL;
    v18 = sub_2644AB280();
    v12 = v16 - v18;
    if (__OFSUB__(v16, v18))
    {
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    v3 += v12;
  }

  v19 = __OFSUB__(v17, v16);
  v20 = v17 - v16;
  if (v19)
  {
    __break(1u);
    goto LABEL_15;
  }

LABEL_26:
  v28 = sub_2644AB270();
  if (v28 >= v20)
  {
    v29 = v20;
  }

  else
  {
    v29 = v28;
  }

  v30 = (v29 + v3);
  if (v3)
  {
    v10 = v30;
  }

  else
  {
    v10 = 0;
  }

  v9 = v3;
LABEL_45:
  sub_26448B1B8(v9, v10, &v55);
  v37 = v55;
  v3 = v56;
  sub_26448B5C4(&v57);
  v38 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v38 != 2)
    {
      *(&v57 + 6) = 0;
      *&v57 = 0;
      goto LABEL_68;
    }

    v39 = *(v37 + 16);
    v40 = sub_2644AB250();
    if (!v40)
    {
      goto LABEL_66;
    }

    v4 = v3 & 0x3FFFFFFFFFFFFFFFLL;
    v41 = sub_2644AB280();
    v42 = v39 - v41;
    if (!__OFSUB__(v39, v41))
    {
      goto LABEL_65;
    }

    __break(1u);
    goto LABEL_53;
  }

  if (v38)
  {
    goto LABEL_62;
  }

  *&v57 = v37;
  WORD4(v57) = v3;
  BYTE10(v57) = BYTE2(v3);
  BYTE11(v57) = BYTE3(v3);
  BYTE12(v57) = BYTE4(v3);
  BYTE13(v57) = BYTE5(v3);
LABEL_68:
  result = sub_264494ADC(&v57);
LABEL_77:
  v53 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Data.Endianness.hashValue.getter()
{
  v1 = *v0;
  sub_2644ABD90();
  MEMORY[0x266738D80](v1);
  return sub_2644ABDB0();
}

uint64_t sub_2644947AC()
{
  v1 = *v0;
  sub_2644ABD90();
  MEMORY[0x266738D80](v1);
  return sub_2644ABDB0();
}

uint64_t sub_264494820()
{
  v1 = *v0;
  sub_2644ABD90();
  MEMORY[0x266738D80](v1);
  return sub_2644ABDB0();
}

uint64_t Data.at(index:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    return 0;
  }

  v3 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v3 != 2)
    {
      return 0;
    }

    v5 = *(a2 + 16);
    v4 = *(a2 + 24);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (!v6)
    {
      if (v7 > result)
      {
        return sub_2644AB490();
      }

      return 0;
    }

    __break(1u);
  }

  else
  {
    if (!v3)
    {
      if (BYTE6(a3) <= result)
      {
        return 0;
      }

      return sub_2644AB490();
    }

    if (!__OFSUB__(HIDWORD(a2), a2))
    {
      if (HIDWORD(a2) - a2 > result)
      {
        return sub_2644AB490();
      }

      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t Data.replaceAt(index:value:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) == 0)
  {
    v4 = *v3;
    v5 = v3[1];
    v6 = v5 >> 62;
    if ((v5 >> 62) > 1)
    {
      if (v6 != 2)
      {
        return result;
      }

      v8 = *(v4 + 16);
      v7 = *(v4 + 24);
      v9 = __OFSUB__(v7, v8);
      v10 = v7 - v8;
      if (v9)
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      if (v10 <= result)
      {
        return result;
      }
    }

    else if (v6)
    {
      if (__OFSUB__(HIDWORD(v4), v4))
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      if (HIDWORD(v4) - v4 <= result)
      {
        return result;
      }
    }

    else if (BYTE6(v5) <= result)
    {
      return result;
    }

    v11 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v11 != 2)
      {
        v12 = 0;
        if (v6 == 2)
        {
          goto LABEL_28;
        }

        goto LABEL_23;
      }

      v14 = *(a2 + 16);
      v13 = *(a2 + 24);
      v9 = __OFSUB__(v13, v14);
      v12 = v13 - v14;
      if (!v9)
      {
LABEL_22:
        if (v6 == 2)
        {
          goto LABEL_28;
        }

        goto LABEL_23;
      }

      __break(1u);
    }

    else if (!v11)
    {
      v12 = BYTE6(a3);
      if (v6 == 2)
      {
LABEL_28:
        v17 = v4 + 16;
        v15 = *(v4 + 16);
        v16 = *(v17 + 8);
        v9 = __OFSUB__(v16, v15);
        v4 = v16 - v15;
        if (v9)
        {
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

LABEL_29:
        v9 = __OFSUB__(v4, result);
        v18 = v4 - result;
        if (!v9)
        {
          if (v18 < v12)
          {
            return result;
          }

          if (v11 > 1)
          {
            if (v11 != 2)
            {
              v19 = 0;
              goto LABEL_41;
            }

            v21 = *(a2 + 16);
            v20 = *(a2 + 24);
            v9 = __OFSUB__(v20, v21);
            v19 = v20 - v21;
            if (!v9)
            {
LABEL_41:
              if (!__OFADD__(result, v19))
              {
                if (result + v19 >= result)
                {
                  return sub_264494AE8(a2, a3);
                }

                goto LABEL_49;
              }

LABEL_48:
              __break(1u);
LABEL_49:
              __break(1u);
              goto LABEL_50;
            }

            __break(1u);
          }

          else if (!v11)
          {
            v19 = BYTE6(a3);
            goto LABEL_41;
          }

          LODWORD(v19) = HIDWORD(a2) - a2;
          if (__OFSUB__(HIDWORD(a2), a2))
          {
LABEL_53:
            __break(1u);
            return result;
          }

          v19 = v19;
          goto LABEL_41;
        }

        __break(1u);
        goto LABEL_46;
      }

LABEL_23:
      if (v6 == 1)
      {
        v9 = __OFSUB__(HIDWORD(v4), v4);
        LODWORD(v4) = HIDWORD(v4) - v4;
        if (v9)
        {
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        v4 = v4;
      }

      else
      {
        v4 = BYTE6(v5);
      }

      goto LABEL_29;
    }

    LODWORD(v12) = HIDWORD(a2) - a2;
    if (__OFSUB__(HIDWORD(a2), a2))
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v12 = v12;
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_264494AE8(uint64_t a1, unint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if (v2 == 2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
    a1 = sub_2644AB250();
    if (a1)
    {
      a1 = sub_2644AB280();
      if (__OFSUB__(v3, a1))
      {
        goto LABEL_16;
      }
    }

    if (!__OFSUB__(v4, v3))
    {
LABEL_13:
      sub_2644AB270();
      goto LABEL_14;
    }

    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!sub_2644AB250() || !__OFSUB__(v5, sub_2644AB280()))
      {
        goto LABEL_13;
      }

LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_14:
  result = sub_2644AB3E0();
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_264494CC4()
{
  result = qword_27FF6E3F8;
  if (!qword_27FF6E3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6E3F8);
  }

  return result;
}

uint64_t _s10EndiannessOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s10EndiannessOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

Swift::String __swiftcall Data.hexString()()
{
  v2 = v1 >> 62;
  if ((v1 >> 62) <= 1)
  {
    if (!v2)
    {
      v3 = BYTE6(v1);
      goto LABEL_10;
    }

LABEL_8:
    LODWORD(v3) = HIDWORD(v0) - v0;
    if (__OFSUB__(HIDWORD(v0), v0))
    {
      goto LABEL_13;
    }

    v3 = v3;
LABEL_10:
    if (v3 + 0x4000000000000000 >= 0)
    {
      goto LABEL_11;
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v2 == 2)
  {
    v5 = *(v0 + 16);
    v4 = *(v0 + 24);
    v6 = __OFSUB__(v4, v5);
    v3 = v4 - v5;
    if (!v6)
    {
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_8;
  }

LABEL_11:
  (MEMORY[0x28223BE20])();
  v0 = sub_2644AB740();
LABEL_14:
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t sub_264494F54(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = sub_2644AB4B0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4 >> 62 == 2)
  {
    v12 = *(a3 + 16);
  }

  sub_26448B42C(a3, a4);
  sub_2644AB4C0();
  v13 = 0;
  while (1)
  {
    v14 = sub_2644AB4A0();
    if ((v14 & 0x100) != 0)
    {
      break;
    }

    v15 = (a1 + v13);
    *v15 = byte_2875F3AC0[v14 >> 4];
    v15[1] = byte_2875F3AC0[v14 & 0xF];
    v16 = __OFADD__(v13, 2);
    v13 += 2;
    if (v16)
    {
      __break(1u);
      break;
    }
  }

  (*(v8 + 8))(v11, v7);
  return v13;
}

char *Data.hexDigits.getter(uint64_t a1, unint64_t a2)
{
  v4 = sub_2644AB4B0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2 >> 62 == 2)
  {
    v9 = *(a1 + 16);
  }

  sub_26448B42C(a1, a2);
  sub_2644AB4C0();
  sub_26448F124();
  sub_2644ABA90();
  if (v19)
  {
    v10 = MEMORY[0x277D84F90];
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
    do
    {
      v12 = v18[14];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_26449168C(0, *(v10 + 2) + 1, 1, v10);
      }

      v14 = *(v10 + 2);
      v13 = *(v10 + 3);
      v15 = v13 >> 1;
      v16 = v14 + 1;
      if (v13 >> 1 <= v14)
      {
        v10 = sub_26449168C((v13 > 1), v14 + 1, 1, v10);
        v13 = *(v10 + 3);
        v15 = v13 >> 1;
      }

      *(v10 + 2) = v16;
      v10[v14 + 32] = v12 >> 4;
      v17 = v14 + 2;
      if (v15 < v17)
      {
        v10 = sub_26449168C((v13 > 1), v17, 1, v10);
      }

      *(v10 + 2) = v17;
      v10[v16 + 32] = v12 & 0xF;
      sub_2644ABA90();
    }

    while (v19 != 1);
  }

  (*(v5 + 8))(v8, v4);
  return v10;
}

uint64_t Data.init(hexDigits:)(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v17 = sub_26449546C(*(a1 + 16) >> 1);
  v18 = v2;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 33);
    while (1)
    {
      v10 = *(a1 + 16);
      if (v4 >= v10)
      {
        break;
      }

      v11 = v4 + 1;
      if (v4 + 1 == v3)
      {
        goto LABEL_9;
      }

      if (v11 >= v10)
      {
        goto LABEL_11;
      }

      if (v18 >> 62 == 2)
      {
        v12 = *(v17 + 24);
      }

      v6 = *(v5 - 1);
      v7 = *v5;
      v5 += 2;
      v8 = v7 | (16 * v6);
      v9 = sub_26448DE0C(&qword_27FF6E400, &qword_2644ACE68);
      v16[3] = v9;
      v16[4] = sub_264495804();
      LOBYTE(v16[0]) = v8;
      v15 = *sub_26448B580(v16, v9);
      sub_2644AB3E0();
      sub_26448B5C4(v16);
      v4 = v11 + 1;
      if (v11 + 1 == v3)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

LABEL_9:

  result = v17;
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26449546C(uint64_t result)
{
  if (result)
  {
    if (result < 15)
    {
      return 0;
    }

    else
    {
      v1 = result;
      v2 = sub_2644AB2A0();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_2644AB290();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_2644AB3C0();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = 0;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t _s10Foundation4DataV7SPRCoreE9hexStringACSgSS_tcfC_0(uint64_t a1, unint64_t a2)
{
  v31 = *MEMORY[0x277D85DE8];
  if (sub_2644AB760() < 1 || (sub_2644AB760() & 1) != 0)
  {
    goto LABEL_13;
  }

  v4 = HIBYTE(a2) & 0xF;
  v26[0] = a1;
  v26[1] = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v26[2] = 0;
  v27 = v4;

  v5 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_2644AB7A0();
    if (!v6)
    {
      break;
    }

    v7 = sub_2644AB620();
    v9 = v8;

    if ((v9 & 1) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_264491780(0, *(v5 + 2) + 1, 1, v5);
      }

      v11 = *(v5 + 2);
      v10 = *(v5 + 3);
      if (v11 >= v10 >> 1)
      {
        v5 = sub_264491780((v10 > 1), v11 + 1, 1, v5);
      }

      *(v5 + 2) = v11 + 1;
      *&v5[8 * v11 + 32] = v7;
    }
  }

  v14 = *(v5 + 2);
  v15 = sub_2644AB760();

  if (v14 != v15)
  {
LABEL_13:

    result = 0;
  }

  else
  {
    v16 = sub_26449546C(v14 >> 1);
    v29 = v16;
    v30 = v17;
    if (v14)
    {
      v18 = 0;
      do
      {
        if (__OFADD__(v18, 2))
        {
          v20 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v18 + 2;
        }

        if ((v18 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
        }

        v21 = *(v5 + 2);
        if (v18 >= v21)
        {
          goto LABEL_33;
        }

        if (v18 + 1 >= v21)
        {
          goto LABEL_34;
        }

        v22 = *&v5[8 * v18 + 40] | (16 * *&v5[8 * v18 + 32]);
        if ((v22 & 0x8000000000000000) != 0)
        {
          goto LABEL_35;
        }

        if (v22 > 0xFF)
        {
          goto LABEL_36;
        }

        if (v30 >> 62 == 2)
        {
          v23 = *(v29 + 24);
        }

        v19 = sub_26448DE0C(&qword_27FF6E400, &qword_2644ACE68);
        v27 = v19;
        v28 = sub_264495804();
        LOBYTE(v26[0]) = v22;
        v25 = *sub_26448B580(v26, v19);
        sub_2644AB3E0();
        sub_26448B5C4(v26);
        v18 = v20;
      }

      while (v20 < v14);

      result = v29;
    }

    else
    {
      v24 = v16;

      result = v24;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_264495804()
{
  result = qword_27FF6E408;
  if (!qword_27FF6E408)
  {
    sub_26448F36C(&qword_27FF6E400, &qword_2644ACE68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6E408);
  }

  return result;
}

void *DERReader.readDERTag()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 + 8);
  v8 = sub_2644959C8();
  v9 = sub_264495A1C();
  result = v7((&v16 + 2), MEMORY[0x277D84B78], MEMORY[0x277D84B78], v8, v9, a1, a2);
  if (!v3)
  {
    if ((v16 & 0x1000000) != 0)
    {
      *a3 = 0;
      *(a3 + 8) = 1;
    }

    else
    {
      v15 = a3;
      v11 = BYTE2(v16);
      if ((~BYTE2(v16) & 0x1F) != 0)
      {
        v13 = BYTE2(v16);
LABEL_11:
        *v15 = v13;
        *(v15 + 8) = 0;
      }

      else
      {
        v12 = MEMORY[0x277D84B78];
        while (1)
        {
          result = v7(&v16, v12, v12, v8, v9, a1, a2);
          if ((v16 & 0x100) != 0)
          {
            break;
          }

          v13 = v16 | (v11 << 8);
          v11 = v13;
          if ((v16 & 0x80000000) == 0)
          {
            goto LABEL_11;
          }
        }

        sub_264495A70();
        swift_allocError();
        *v14 = 0;
        return swift_willThrow();
      }
    }
  }

  return result;
}

unint64_t sub_2644959C8()
{
  result = qword_27FF6E410;
  if (!qword_27FF6E410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6E410);
  }

  return result;
}

unint64_t sub_264495A1C()
{
  result = qword_27FF6E418;
  if (!qword_27FF6E418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6E418);
  }

  return result;
}

unint64_t sub_264495A70()
{
  result = qword_27FF6E420;
  if (!qword_27FF6E420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6E420);
  }

  return result;
}

Swift::Int_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DERReader.readDERLength()()
{
  v4 = v1;
  v5 = v0;
  v6 = *(v1 + 8);
  v7 = sub_2644959C8();
  v8 = sub_264495A1C();
  v9 = v6((&v18 + 2), MEMORY[0x277D84B78], MEMORY[0x277D84B78], v7, v8, v5, v4);
  if (v2)
  {
    goto LABEL_7;
  }

  v17 = BYTE3(v18);
  if ((v18 & 0x1000000) != 0)
  {
    v3 = 0;
LABEL_6:
    v10 = v17;
LABEL_7:
    v9 = v3;
    goto LABEL_18;
  }

  v11 = BYTE2(v18);
  if ((v18 & 0x800000) == 0)
  {
    v3 = BYTE2(v18);
    goto LABEL_6;
  }

  if (BYTE2(v18) == 128)
  {
    sub_264495A70();
    swift_allocError();
    *v12 = 2;
LABEL_16:
    swift_willThrow();
    goto LABEL_7;
  }

  v16 = v5;
  v3 = 0;
  v13 = 128;
  while (v13 < v11)
  {
    v14 = v11;
    v9 = v6(&v18, MEMORY[0x277D84B78], MEMORY[0x277D84B78], v7, v8, v16, v4);
    if ((v18 & 0x100) != 0)
    {
      sub_264495A70();
      swift_allocError();
      *v15 = 0;
      goto LABEL_16;
    }

    ++v13;
    v3 = v18 | (v3 << 8);
    v11 = v14;
    if (v13 == v14)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_18:
  result.value = v9;
  result.is_nil = v10;
  return result;
}

uint64_t NSInputStream.availableByteCount.getter()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = 0;
  v4[0] = 0;
  if ([v0 getBuffer:v4 length:&v3])
  {
    result = v3;
  }

  else
  {
    result = 1000000;
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

id NSInputStream.read<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v17 = a3;
  v21 = *MEMORY[0x277D85DE8];
  v5 = *(*(*(a2 + 8) + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 64);
  v8 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = *(a1 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  swift_getAssociatedConformanceWitness();
  sub_2644ABCD0();
  sub_2644ABC80();
  v20 = v3;
  sub_2644960BC(&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), sub_264496070, v19, a1, MEMORY[0x277D84A98], MEMORY[0x277D83B88], MEMORY[0x277D84AC0], v11);
  if (v18 != -1)
  {
    if (v10 == v18)
    {
      v12 = v17;
      (*(v9 + 32))(v17, &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
      v13 = 0;
    }

    else
    {
      (*(v9 + 8))(&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
      v13 = 1;
      v12 = v17;
    }

    result = (*(v9 + 56))(v12, v13, 1, a1);
    goto LABEL_8;
  }

  result = [v3 streamError];
  if (result)
  {
    swift_willThrow();
    result = (*(v9 + 8))(&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
LABEL_8:
    v15 = *MEMORY[0x277D85DE8];
    return result;
  }

  __break(1u);
  return result;
}

id sub_264496070@<X0>(id result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (result)
  {
    result = [*(v3 + 16) read:result maxLength:a2 - result];
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2644960BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20]();
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v17(v13, v13 + *(*(v16 - 8) + 64), v15);
  if (v8)
  {
    return (*(v11 + 32))(a8, v15, a5);
  }

  return result;
}

id NSInputStream.read(exactly:)(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a1 < 1)
  {
    result = 0;
    goto LABEL_12;
  }

  v11[0] = 0;
  *&v10 = 0;
  v3 = [v1 getBuffer:v11 length:&v10];
  v4 = v10;
  if (!v3)
  {
    v4 = 1000000;
  }

  if (v4 < a1)
  {
    goto LABEL_8;
  }

  *&v10 = sub_264496A2C(a1);
  *(&v10 + 1) = v5;
  sub_26449671C(&v10, 0);
  *v11 = v10;
  v6 = v1;
  v7 = sub_264496ACC(v11, v6);

  if (v7 != -1)
  {
    result = v11[0];
    if (v7 == a1)
    {
LABEL_12:
      v9 = *MEMORY[0x277D85DE8];
      return result;
    }

    sub_26448B480(v11[0], v11[1]);
LABEL_8:
    result = 0;
    goto LABEL_12;
  }

  result = [v6 streamError];
  if (result)
  {
    swift_willThrow();
    result = sub_26448B480(v11[0], v11[1]);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t NSFileHandle.read<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  result = sub_2644AB9E0();
  if (!v2)
  {
    if (v8 >> 60 == 15)
    {
      return (*(v5 + 56))(a2, 1, 1, a1);
    }

    v9 = v8 >> 62;
    if ((v8 >> 62) <= 1)
    {
      if (!v9)
      {
        if (BYTE6(v8) != v6)
        {
          goto LABEL_15;
        }

LABEL_10:
        v14 = MEMORY[0x28223BE20](result);
        v16 = v15;
        sub_2644AB420();
        sub_26449013C(v14, v16);
        return (*(v5 + 56))(a2, 0, 1, a1);
      }

      if (!__OFSUB__(HIDWORD(result), result))
      {
        if (HIDWORD(result) - result != v6)
        {
          goto LABEL_15;
        }

        goto LABEL_10;
      }

LABEL_19:
      __break(1u);
      return result;
    }

    if (v9 == 2)
    {
      v11 = *(result + 16);
      v10 = *(result + 24);
      v12 = __OFSUB__(v10, v11);
      v13 = v10 - v11;
      if (v12)
      {
        __break(1u);
        goto LABEL_19;
      }

      if (v13 == v6)
      {
        goto LABEL_10;
      }
    }

    else if (!v6)
    {
      goto LABEL_10;
    }

LABEL_15:
    sub_26449013C(result, v8);
    return (*(v5 + 56))(a2, 1, 1, a1);
  }

  return result;
}

uint64_t sub_264496528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2644AB8B0();
  sub_2644ABBE0();
  return (*(v4 + 8))(v7, a3);
}

uint64_t NSFileHandle.read(exactly:)(uint64_t a1)
{
  result = sub_2644AB9E0();
  if (!v1)
  {
    if (v4 >> 60 == 15)
    {
      return 0;
    }

    v5 = v4 >> 62;
    if ((v4 >> 62) > 1)
    {
      if (v5 != 2)
      {
        if (!a1)
        {
          return result;
        }

        goto LABEL_15;
      }

      v7 = *(result + 16);
      v6 = *(result + 24);
      v8 = __OFSUB__(v6, v7);
      v9 = v6 - v7;
      if (!v8)
      {
        if (v9 == a1)
        {
          return result;
        }

        goto LABEL_15;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (BYTE6(v4) == a1)
        {
          return result;
        }

LABEL_15:
        sub_26449013C(result, v4);
        return 0;
      }

      if (!__OFSUB__(HIDWORD(result), result))
      {
        if (HIDWORD(result) - result == a1)
        {
          return result;
        }

        goto LABEL_15;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t *sub_26449671C(uint64_t *result, int a2)
{
  v3 = result;
  v24 = *MEMORY[0x277D85DE8];
  v5 = *result;
  v4 = result[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_26448B480(v5, v4);
      __b = v5;
      v23 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *v3 = xmmword_2644ACBC0;
      sub_26448B480(0, 0xC000000000000000);
      result = sub_264496984(&__b, a2);
      v7 = __b;
      v8 = v23 | 0x4000000000000000;
    }

    else
    {
      sub_26448B480(v5, v4);
      __b = v5;
      LOWORD(v23) = v4;
      BYTE2(v23) = BYTE2(v4);
      BYTE3(v23) = BYTE3(v4);
      BYTE4(v23) = BYTE4(v4);
      BYTE5(v23) = BYTE5(v4);
      BYTE6(v23) = BYTE6(v4);
      result = memset(&__b, a2, BYTE6(v4));
      v7 = __b;
      v8 = v23 | ((WORD2(v23) | (BYTE6(v23) << 16)) << 32);
    }

    *v3 = v7;
    v3[1] = v8;
    goto LABEL_14;
  }

  if (v6 != 2)
  {
LABEL_14:
    v20 = *MEMORY[0x277D85DE8];
    return result;
  }

  v9 = *result;

  sub_26448B480(v5, v4);
  __b = v5;
  v23 = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *v3 = xmmword_2644ACBC0;
  sub_26448B480(0, 0xC000000000000000);
  sub_2644AB370();
  v10 = v23;
  v11 = *(__b + 16);
  v12 = *(__b + 24);
  result = sub_2644AB250();
  if (result)
  {
    v13 = result;
    v14 = sub_2644AB280();
    v15 = v11 - v14;
    if (__OFSUB__(v11, v14))
    {
      __break(1u);
    }

    else
    {
      v16 = __OFSUB__(v12, v11);
      v17 = v12 - v11;
      if (!v16)
      {
        v18 = sub_2644AB270();
        if (v18 >= v17)
        {
          v19 = v17;
        }

        else
        {
          v19 = v18;
        }

        result = memset(v13 + v15, a2, v19);
        *v3 = __b;
        v3[1] = v10 | 0x8000000000000000;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_264496984(int *a1, int a2)
{
  result = sub_2644AB390();
  v5 = *a1;
  v6 = a1[1];
  if (v6 < v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = *(a1 + 1);

  result = sub_2644AB250();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v8 = result;
  result = sub_2644AB280();
  v9 = v5 - result;
  if (__OFSUB__(v5, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v6 - v5;
  v11 = sub_2644AB270();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  memset((v8 + v9), a2, v12);
}

uint64_t sub_264496A2C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_26448EAA0(result);
    }

    else
    {
      v2 = sub_2644AB2A0();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_2644AB260();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_2644AB3C0();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

char *sub_264496ACC(uint64_t *a1, id a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v3 = a1[1];
  v5 = v3 >> 62;
  if ((v3 >> 62) <= 1)
  {
    if (!v5)
    {
      v6 = a2;
      sub_26448B480(v4, v3);
      *&v42 = v4;
      WORD4(v42) = v3;
      BYTE10(v42) = BYTE2(v3);
      BYTE11(v42) = BYTE3(v3);
      BYTE12(v42) = BYTE4(v3);
      BYTE13(v42) = BYTE5(v3);
      BYTE14(v42) = BYTE6(v3);
      v7 = [v6 read:&v42 maxLength:BYTE6(v3)];
      v8 = v42;
      v9 = DWORD2(v42) | ((WORD6(v42) | (BYTE14(v42) << 16)) << 32);

      result = v7;
      *a1 = v8;
      a1[1] = v9;
LABEL_18:
      v28 = *MEMORY[0x277D85DE8];
      return result;
    }

    v25 = v3 & 0x3FFFFFFFFFFFFFFFLL;
    v26 = a2;
    sub_26448B42C(v4, v3);
    sub_26448B480(v4, v3);
    *a1 = xmmword_2644ACBC0;
    sub_26448B480(0, 0xC000000000000000);
    v27 = v4 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v27 < v4)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      if (sub_2644AB250() && __OFSUB__(v4, sub_2644AB280()))
      {
LABEL_32:
        __break(1u);
      }

      v29 = sub_2644AB2A0();
      v30 = *(v29 + 48);
      v31 = *(v29 + 52);
      swift_allocObject();
      v32 = sub_2644AB230();

      v25 = v32;
    }

    v33 = v27 - v4;
    if (v27 >= v4)
    {
      v34 = v26;

      result = sub_2644AB250();
      if (result)
      {
        v35 = result;
        v36 = sub_2644AB280();
        v37 = v4 - v36;
        if (!__OFSUB__(v4, v36))
        {
          v38 = sub_2644AB270();
          if (v38 >= v33)
          {
            v39 = v33;
          }

          else
          {
            v39 = v38;
          }

          v40 = [v34 read:&v35[v37] maxLength:v39];

          *a1 = v4;
          a1[1] = v25 | 0x4000000000000000;
          v41 = *MEMORY[0x277D85DE8];
          return v40;
        }

        goto LABEL_30;
      }

LABEL_34:
      __break(1u);
      return result;
    }

    goto LABEL_28;
  }

  if (v5 != 2)
  {
    *(&v42 + 7) = 0;
    *&v42 = 0;
    result = [a2 read:&v42 maxLength:0];
    goto LABEL_18;
  }

  v11 = a2;
  sub_26448B42C(v4, v3);
  sub_26448B480(v4, v3);
  *&v42 = v4;
  *(&v42 + 1) = v3 & 0x3FFFFFFFFFFFFFFFLL;
  *a1 = xmmword_2644ACBC0;
  sub_26448B480(0, 0xC000000000000000);
  sub_2644AB370();
  v12 = *(&v42 + 1);
  v13 = *(v42 + 16);
  v14 = *(v42 + 24);
  v15 = v11;
  result = sub_2644AB250();
  if (!result)
  {
    __break(1u);
    goto LABEL_34;
  }

  v16 = result;
  v17 = sub_2644AB280();
  v18 = v13 - v17;
  if (__OFSUB__(v13, v17))
  {
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v19 = __OFSUB__(v14, v13);
  v20 = v14 - v13;
  if (v19)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v21 = sub_2644AB270();
  if (v21 >= v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = v21;
  }

  v23 = [v15 read:&v16[v18] maxLength:v22];

  *a1 = v42;
  a1[1] = v12 | 0x8000000000000000;
  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

uint64_t sub_264496F04(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  v4 = v2[4];
  return sub_264496528(a1, a2, v2[2]);
}

uint64_t DERWriter.writeDER(tag:)(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  if (*a1)
  {
    v13 = bswap64(v6);
    result = sub_2644972B8(&v13, &v14, v3, __clz(v6) >> 3, a2, a3, &v12);
  }

  else
  {
    LOBYTE(v13) = 0;
    v8 = *(a3 + 8);
    v9 = sub_2644959C8();
    v10 = sub_264495A1C();
    result = v8(&v13, MEMORY[0x277D84B78], v9, v10, a2, a3);
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_264497068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20]();
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v17(v13, v13 + *(*(v16 - 8) + 64), v15);
  if (v8)
  {
    return (*(v11 + 32))(a8, v15, a5);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DERWriter.writeDER(length:)(Swift::Int length)
{
  v5 = v2;
  v6 = v1;
  v18 = *MEMORY[0x277D85DE8];
  if (length > 127)
  {
    v11 = __clz(length) >> 3;
    LOBYTE(v17) = -120 - v11;
    v12 = *(v2 + 8);
    v13 = sub_2644959C8();
    v14 = sub_264495A1C();
    v12(&v17, MEMORY[0x277D84B78], v13, v14, v6, v5);
    if (!v4)
    {
      v17 = bswap64(length);
      sub_2644972B8(&v17, &v18, v3, v11, v6, v5, &v16);
    }
  }

  else
  {
    if (length < 0)
    {
      __break(1u);
    }

    LOBYTE(v17) = length;
    v7 = *(v2 + 8);
    v8 = sub_2644959C8();
    v9 = sub_264495A1C();
    v7(&v17, MEMORY[0x277D84B78], v8, v9, v6, v5);
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2644972B8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v18[0] = sub_26448CE88(a4, a1, a2);
  v18[1] = v11;
  v18[2] = v12;
  v18[3] = v13;
  v14 = *(a6 + 16);
  v15 = sub_26448DE0C(&qword_27FF6E458, &unk_2644ACF60);
  v16 = sub_2644989B0();
  result = v14(v18, v15, v16, a5, a6);
  if (v7)
  {
    *a7 = v7;
  }

  return result;
}

void DERWriter.writeDER(tlv:)(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v21 = *a1;
  DERWriter.writeDER(tag:)(&v21, a2, a3);
  if (!v3)
  {
    v21 = v6;
    v22 = v7;
    v23 = v8;
    TLV.length.getter();
    DERWriter.writeDER(length:)(v9);
    if (!v10)
    {
      v24 = a2;
      if ((v8 & 0x2000000000000000) != 0)
      {
        v13 = *(v7 + 16);
        v19 = v8;
        sub_264497534(v7, v8);
        v20 = v13;
        if (v13)
        {
          v14 = 0;
          v15 = (v7 + 48);
          while (v14 < *(v7 + 16))
          {
            v16 = v7;
            v18 = *(v15 - 1);
            v17 = *v15;
            v21 = *(v15 - 2);
            v22 = v18;
            v23 = v17;
            sub_264497534(v18, v17);
            DERWriter.writeDER(tlv:)(&v21, v24, a3);
            ++v14;
            sub_264497540(v18, v17);
            v15 += 3;
            v7 = v16;
            if (v20 == v14)
            {
              goto LABEL_9;
            }
          }

          __break(1u);
        }

        else
        {
LABEL_9:
          sub_264497540(v7, v19);
        }
      }

      else
      {
        v21 = v7;
        v22 = v8;
        v11 = *(a3 + 16);
        sub_264497534(v7, v8);
        v12 = sub_26449754C();
        v11(&v21, MEMORY[0x277CC9318], v12, v24, a3);
        sub_264497540(v7, v8);
      }
    }
  }
}

uint64_t sub_264497534(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
  }

  else
  {
    return sub_26448B42C(a1, a2);
  }
}

uint64_t sub_264497540(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
  }

  else
  {
    return sub_26448B480(a1, a2);
  }
}

unint64_t sub_26449754C()
{
  result = qword_27FF6E428;
  if (!qword_27FF6E428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6E428);
  }

  return result;
}

id NSOutputStream.write<A>(_:)(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = sub_2644AB130();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v17 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2644AB140();
  v18 = *(v7 - 8);
  v8 = *(v18 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  sub_2644ABBE0();
  v21 = v2;
  sub_264497068(&v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), sub_26449786C, v20, a2, MEMORY[0x277D84A98], MEMORY[0x277D83B88], MEMORY[0x277D84AC0], v14);
  result = (*(v12 + 8))(&v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  if ((v19 & 0x8000000000000000) == 0)
  {
    if (v19 == v13)
    {
LABEL_6:
      v16 = *MEMORY[0x277D85DE8];
      return result;
    }

    sub_2644AB120();
    sub_264498610(MEMORY[0x277D84F90]);
    sub_264498720();
    sub_2644AB340();
    sub_2644AB110();
    (*(v18 + 8))(v11, v7);
LABEL_5:
    result = swift_willThrow();
    goto LABEL_6;
  }

  result = [v2 streamError];
  if (result)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_26449786C@<X0>(id result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (result)
  {
    result = [*(v3 + 16) write:result maxLength:a2 - result];
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *NSOutputStream.write<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a1;
  v5 = sub_2644AB130();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v38[1] = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2644AB140();
  v39 = *(v8 - 8);
  v40 = v8;
  v9 = *(v39 + 64);
  MEMORY[0x28223BE20](v8);
  v38[0] = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a3;
  v49 = a2;
  swift_getAssociatedTypeWitness();
  v11 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v13 = *(v42 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = v38 - v14;
  v16 = sub_2644ABA50();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = v38 - v18;
  v20 = swift_checkMetadataState();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v22 = swift_getAssociatedTypeWitness();
  v41 = *(v22 - 8);
  v23 = *(v41 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = v38 - v24;
  sub_2644AB210();
  v46 = v25;
  sub_2644AB840();
  v47 = v22;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v26 = 0;
  v27 = (v42 + 48);
  v28 = (v42 + 32);
  v29 = (v42 + 8);
  while (1)
  {
    sub_2644ABA90();
    if ((*v27)(v19, 1, AssociatedTypeWitness) == 1)
    {
      goto LABEL_7;
    }

    v30 = (*v28)(v15, v19, AssociatedTypeWitness);
    MEMORY[0x28223BE20](v30);
    v38[-2] = v44;
    swift_getAssociatedConformanceWitness();
    v31 = v50;
    sub_2644AB2B0();
    v50 = v31;
    v32 = v51;
    if (v51 < 0)
    {
      break;
    }

    (*v29)(v15, AssociatedTypeWitness);
    v33 = __OFADD__(v26, v32);
    v26 += v32;
    if (v33)
    {
      __break(1u);
LABEL_7:
      (*(v41 + 8))(v46, v47);
      v34 = *(*(*(v48 + 8) + 8) + 8);
      result = sub_2644AB9B0();
      if (v26 != result)
      {
        sub_2644AB120();
        sub_264498610(MEMORY[0x277D84F90]);
        sub_264498720();
        v36 = v38[0];
        v37 = v40;
        sub_2644AB340();
        sub_2644AB110();
        (*(v39 + 8))(v36, v37);
        return swift_willThrow();
      }

      return result;
    }
  }

  result = [v44 streamError];
  if (result)
  {
    swift_willThrow();
    (*v29)(v15, AssociatedTypeWitness);
    return (*(v41 + 8))(v46, v47);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_264497E70(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  sub_26448B42C(v2, v3);
  return sub_26448B480(v5, v6);
}

uint64_t sub_264497EE0()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_26448B42C(v1, *(v0 + 24));
  return v1;
}

uint64_t DERMemoryWriter.__allocating_init(capacity:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = v2;
  if (a1)
  {
    if (a1 <= 14)
    {
      v9 = 0;
      v10 = 0;
    }

    else
    {
      v4 = v2;
      v5 = sub_2644AB2A0();
      v6 = *(v5 + 48);
      v7 = *(v5 + 52);
      swift_allocObject();
      v8 = sub_2644AB290();
      if (a1 > 0x7FFFFFFE)
      {
        sub_2644AB3C0();
        v9 = swift_allocObject();
        v10 = v8 | 0x8000000000000000;
        *(v9 + 16) = 0;
        *(v9 + 24) = 0;
      }

      else
      {
        v9 = 0;
        v10 = v8 | 0x4000000000000000;
      }

      v3 = v4;
    }
  }

  else
  {
    v9 = 0;
    v10 = 0xC000000000000000;
  }

  *(v3 + 16) = v9;
  *(v3 + 24) = v10;
  return v3;
}

uint64_t DERMemoryWriter.init(capacity:)(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    if (a1 <= 14)
    {
      a1 = 0;
      v8 = 0;
    }

    else
    {
      v3 = a1;
      v4 = sub_2644AB2A0();
      v5 = *(v4 + 48);
      v6 = *(v4 + 52);
      swift_allocObject();
      v7 = sub_2644AB290();
      if (v3 > 0x7FFFFFFE)
      {
        sub_2644AB3C0();
        a1 = swift_allocObject();
        v8 = v7 | 0x8000000000000000;
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
      }

      else
      {
        a1 = 0;
        v8 = v7 | 0x4000000000000000;
      }
    }
  }

  else
  {
    v8 = 0xC000000000000000;
  }

  *(v2 + 16) = a1;
  *(v2 + 24) = v8;
  return v2;
}

uint64_t sub_2644980A4(uint64_t a1, uint64_t a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2644ABBE0();
  sub_264497068(v7, sub_264498778, v2, a2, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84AC0], v8);
  result = (*(v4 + 8))(v7, a2);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2644981F4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v8[3] = MEMORY[0x277D838B0];
  v8[4] = MEMORY[0x277CC9C18];
  v8[0] = a1;
  v8[1] = a2;
  v4 = sub_26448B580(v8, MEMORY[0x277D838B0]);
  v6 = *v4;
  v5 = v4[1];
  sub_2644AB3F0();
  sub_26448B5C4(v8);
  return swift_endAccess();
}

uint64_t sub_264498288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v4 = *(*(*(*(a3 + 8) + 8) + 8) + 8);
  sub_2644AB470();
  return swift_endAccess();
}

uint64_t DERMemoryWriter.__deallocating_deinit()
{
  sub_26448B480(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t NSFileHandle.write<A>(_:)(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2644ABBE0();
  v14 = v2;
  v8 = sub_26448DE0C(&qword_27FF6E438, &unk_2644AD480);
  sub_264497068(v7, sub_264498798, v13, a2, v8, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84950], &v12);
  result = (*(v4 + 8))(v7, a2);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}