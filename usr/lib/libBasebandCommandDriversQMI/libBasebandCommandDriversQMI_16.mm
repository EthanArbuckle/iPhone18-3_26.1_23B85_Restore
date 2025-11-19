void data::QMIDataCommandDriver::getDataAggregationMaxSize(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 1174405120;
  v6[2] = ___ZN4data20QMIDataCommandDriver25getDataAggregationMaxSizeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc6objectEEEE_block_invoke;
  v6[3] = &__block_descriptor_tmp_39_0;
  v6[4] = a1;
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 8);
  aBlock = v4;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  ctu::SharedSynchronizable<data::CommandDriver>::execute_wrapped((a1 + 8), v6);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void ___ZN4data20QMIDataCommandDriver25getDataAggregationMaxSizeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc6objectEEEE_block_invoke(void *a1)
{
  v2 = a1[4];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v18 = v3;
  v19 = v3;
  qmi::MutableMessageBase::MutableMessageBase(&v18);
  v4 = *(&v18 + 1);
  if (*(&v18 + 1) != v19)
  {
    while (*(*v4 + 8) != 16)
    {
      if (++v4 == v19)
      {
        goto LABEL_8;
      }
    }
  }

  if (v4 == v19)
  {
LABEL_8:
    v7 = qmi::MutableMessageBase::createTLV<wda::tlv::abm::PeripheralEndPointID>(&v18, 16);
  }

  else
  {
    v5 = ***v4;
    if (!v6)
    {
      __cxa_bad_cast();
    }

    v7 = v6 + 12;
  }

  *v7 = 0x400000003;
  v13 = v2 + 88;
  v14 = QMIServiceMsg::create();
  v15 = 25000;
  v16 = 0;
  v17 = 0;
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 1174405120;
  v10[2] = ___ZN4data20QMIDataCommandDriver25getDataAggregationMaxSizeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc6objectEEEE_block_invoke_3;
  v10[3] = &__block_descriptor_tmp_36_3;
  v10[4] = v2;
  v8 = a1[5];
  if (v8)
  {
    v8 = _Block_copy(v8);
  }

  v9 = a1[6];
  v11 = v8;
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN3wda3abm13GetDataFormat8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE60960;
  aBlock[4] = v10;
  v17 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v17)
  {
    _Block_release(v17);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v11)
  {
    _Block_release(v11);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v18);
}

void sub_296F97CA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,xpc::object)>::~callback(v8 + 40);
  qmi::Client::SendProxy::~SendProxy(va);
  qmi::MutableMessageBase::~MutableMessageBase(va1);
  _Unwind_Resume(a1);
}

void sub_296F97CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void sub_296F97CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void ___ZN4data20QMIDataCommandDriver25getDataAggregationMaxSizeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc6objectEEEE_block_invoke_3(uint64_t a1, const qmi::ResponseBase *a2)
{
  cf = 0xAAAAAAAAAAAAAAAALL;
  data::QMIDataCommandDriver::checkError(a2, &cf);
  v4 = xpc_null_create();
  v5 = cf;
  if (cf)
  {
    if (*(a1 + 40) && *(a1 + 48))
    {
      CFRetain(cf);
      v6 = xpc_null_create();
      v7 = *(a1 + 40);
      if (v7)
      {
        v8 = _Block_copy(v7);
      }

      else
      {
        v8 = 0;
      }

      v14 = *(a1 + 48);
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 1174405120;
      block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc6objectEEEclIJS5_NS6_4dictEEEEvDpT__block_invoke;
      block[3] = &__block_descriptor_tmp_160_0;
      if (v8)
      {
        v15 = _Block_copy(v8);
      }

      else
      {
        v15 = 0;
      }

      v24 = v15;
      v25 = v5;
      CFRetain(v5);
      v26 = v6;
      if (v6)
      {
        xpc_retain(v6);
      }

      else
      {
        v26 = xpc_null_create();
      }

      dispatch_async(v14, block);
      xpc_release(v26);
      v26 = 0;
      if (v25)
      {
        CFRelease(v25);
      }

      if (v24)
      {
        _Block_release(v24);
      }

      if (v8)
      {
        _Block_release(v8);
      }

      xpc_release(v6);
      CFRelease(v5);
    }
  }

  else
  {
    v16[0] = MEMORY[0x29EDCA5F8];
    v16[1] = 1174405120;
    v17 = ___ZN4data20QMIDataCommandDriver25getDataAggregationMaxSizeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc6objectEEEE_block_invoke_4;
    v18 = &__block_descriptor_tmp_33;
    v9 = *(a1 + 40);
    if (v9)
    {
      v9 = _Block_copy(v9);
    }

    v10 = *(a1 + 48);
    aBlock = v9;
    object = v10;
    if (v10)
    {
      dispatch_retain(v10);
    }

    v21 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    TlvValue = qmi::MessageBase::findTlvValue(a2);
    v13 = TlvValue;
    if (TlvValue)
    {
      tlv::throwIfNotEnoughBytes(TlvValue, TlvValue + v12, 4);
      LODWORD(block[0]) = *v13;
      v17(v16, block);
    }

    if (v21)
    {
      CFRelease(v21);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (aBlock)
    {
      _Block_release(aBlock);
    }
  }

  xpc_release(v4);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_296F97F74(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  (*MEMORY[0x29EDC91A8])(*v2, 22, v1, v3);
  JUMPOUT(0x296F97E2CLL);
}

void sub_296F97FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef((v10 + 48));
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,xpc::object)>::~callback(v11 + 32);
  xpc_release(v9);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZN4data20QMIDataCommandDriver25getDataAggregationMaxSizeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc6objectEEEE_block_invoke_4(void *a1, int *a2)
{
  v2 = *a2;
  v10 = -1431655935;
  v9 = &unk_2A1E18DF0;
  v11 = v2;
  if (!a1[4] || !a1[5])
  {
    return;
  }

  v4 = a1[6];
  object[1] = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  abm::data::DataAggregationMaxSize::toDict(&v9, object);
  v5 = a1[4];
  if (v5)
  {
    v6 = _Block_copy(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = a1[5];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc6objectEEEclIJS5_NS6_4dictEEEEvDpT__block_invoke;
  block[3] = &__block_descriptor_tmp_160_0;
  if (v6)
  {
    aBlock = _Block_copy(v6);
    cf = v4;
    if (!v4)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  aBlock = 0;
  cf = v4;
  if (v4)
  {
LABEL_12:
    CFRetain(v4);
  }

LABEL_13:
  v15 = object[0];
  if (object[0])
  {
    xpc_retain(object[0]);
  }

  else
  {
    v15 = xpc_null_create();
  }

  dispatch_async(v7, block);
  xpc_release(v15);
  v15 = 0;
  if (cf)
  {
    CFRelease(cf);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v6)
  {
    _Block_release(v6);
  }

  xpc_release(object[0]);
  object[0] = 0;
  if (v4)
  {
    CFRelease(v4);
  }
}

void sub_296F981BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void data::QMIDataCommandDriver::getDataFlowControl(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 1174405120;
  v6[2] = ___ZN4data20QMIDataCommandDriver18getDataFlowControlEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc6objectEEEE_block_invoke;
  v6[3] = &__block_descriptor_tmp_52_3;
  v6[4] = a1;
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 8);
  aBlock = v4;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  ctu::SharedSynchronizable<data::CommandDriver>::execute_wrapped((a1 + 8), v6);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void ___ZN4data20QMIDataCommandDriver18getDataFlowControlEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc6objectEEEE_block_invoke(void *a1)
{
  v2 = a1[4];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v18 = v3;
  v19 = v3;
  qmi::MutableMessageBase::MutableMessageBase(&v18);
  v4 = *(&v18 + 1);
  if (*(&v18 + 1) != v19)
  {
    while (*(*v4 + 8) != 16)
    {
      if (++v4 == v19)
      {
        goto LABEL_8;
      }
    }
  }

  if (v4 == v19)
  {
LABEL_8:
    v7 = qmi::MutableMessageBase::createTLV<wda::tlv::abm::PeripheralEndPointID>(&v18, 16);
  }

  else
  {
    v5 = ***v4;
    if (!v6)
    {
      __cxa_bad_cast();
    }

    v7 = v6 + 12;
  }

  *v7 = 0x400000003;
  v13 = v2 + 88;
  v14 = QMIServiceMsg::create();
  v15 = 25000;
  v16 = 0;
  v17 = 0;
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 1174405120;
  v10[2] = ___ZN4data20QMIDataCommandDriver18getDataFlowControlEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc6objectEEEE_block_invoke_3;
  v10[3] = &__block_descriptor_tmp_49_3;
  v10[4] = v2;
  v8 = a1[5];
  if (v8)
  {
    v8 = _Block_copy(v8);
  }

  v9 = a1[6];
  v11 = v8;
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN3wda3abm15GetQMAPSettings8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE60988;
  aBlock[4] = v10;
  v17 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v17)
  {
    _Block_release(v17);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v11)
  {
    _Block_release(v11);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v18);
}

void sub_296F9849C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,xpc::object)>::~callback(v8 + 40);
  qmi::Client::SendProxy::~SendProxy(va);
  qmi::MutableMessageBase::~MutableMessageBase(va1);
  _Unwind_Resume(a1);
}

void sub_296F984C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void sub_296F984D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void ___ZN4data20QMIDataCommandDriver18getDataFlowControlEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc6objectEEEE_block_invoke_3(uint64_t a1, const qmi::ResponseBase *a2)
{
  cf = 0xAAAAAAAAAAAAAAAALL;
  data::QMIDataCommandDriver::checkError(a2, &cf);
  v4 = cf;
  if (cf)
  {
    if (*(a1 + 40) && *(a1 + 48))
    {
      CFRetain(cf);
      v5 = xpc_null_create();
      v6 = *(a1 + 40);
      if (v6)
      {
        v7 = _Block_copy(v6);
      }

      else
      {
        v7 = 0;
      }

      v13 = *(a1 + 48);
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 1174405120;
      block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc6objectEEEclIJS5_NS6_4dictEEEEvDpT__block_invoke;
      block[3] = &__block_descriptor_tmp_160_0;
      if (v7)
      {
        v14 = _Block_copy(v7);
      }

      else
      {
        v14 = 0;
      }

      v23 = v14;
      v24 = v4;
      CFRetain(v4);
      v25 = v5;
      if (v5)
      {
        xpc_retain(v5);
      }

      else
      {
        v25 = xpc_null_create();
      }

      dispatch_async(v13, block);
      xpc_release(v25);
      v25 = 0;
      if (v24)
      {
        CFRelease(v24);
      }

      if (v23)
      {
        _Block_release(v23);
      }

      if (v7)
      {
        _Block_release(v7);
      }

      xpc_release(v5);
      CFRelease(v4);
    }
  }

  else
  {
    v15[0] = MEMORY[0x29EDCA5F8];
    v15[1] = 1174405120;
    v16 = ___ZN4data20QMIDataCommandDriver18getDataFlowControlEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc6objectEEEE_block_invoke_4;
    v17 = &__block_descriptor_tmp_46_1;
    v8 = *(a1 + 40);
    if (v8)
    {
      v8 = _Block_copy(v8);
    }

    v9 = *(a1 + 48);
    aBlock = v8;
    object = v9;
    if (v9)
    {
      dispatch_retain(v9);
    }

    v20 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    TlvValue = qmi::MessageBase::findTlvValue(a2);
    v12 = TlvValue;
    if (TlvValue)
    {
      tlv::throwIfNotEnoughBytes(TlvValue, TlvValue + v11, 1);
      LOBYTE(block[0]) = *v12 != 0;
      v16(v15, block);
    }

    if (v20)
    {
      CFRelease(v20);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (aBlock)
    {
      _Block_release(aBlock);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_296F98758(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  (*MEMORY[0x29EDC91A8])(*v2, 17, v1, v3);
  JUMPOUT(0x296F9861CLL);
}

void sub_296F987A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef((v9 + 48));
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,xpc::object)>::~callback(v10 + 32);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZN4data20QMIDataCommandDriver18getDataFlowControlEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc6objectEEEE_block_invoke_4(void *a1, char *a2)
{
  v2 = *a2;
  v10 = 0xAAAAAAAAAAAAAA01;
  v9 = &unk_2A1E18E38;
  BYTE1(v10) = v2;
  if (!a1[4] || !a1[5])
  {
    return;
  }

  v4 = a1[6];
  object[1] = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  abm::data::DataFlowControl::toDict(&v9, object);
  v5 = a1[4];
  if (v5)
  {
    v6 = _Block_copy(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = a1[5];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc6objectEEEclIJS5_NS6_4dictEEEEvDpT__block_invoke;
  block[3] = &__block_descriptor_tmp_160_0;
  if (v6)
  {
    aBlock = _Block_copy(v6);
    cf = v4;
    if (!v4)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  aBlock = 0;
  cf = v4;
  if (v4)
  {
LABEL_12:
    CFRetain(v4);
  }

LABEL_13:
  v14 = object[0];
  if (object[0])
  {
    xpc_retain(object[0]);
  }

  else
  {
    v14 = xpc_null_create();
  }

  dispatch_async(v7, block);
  xpc_release(v14);
  v14 = 0;
  if (cf)
  {
    CFRelease(cf);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v6)
  {
    _Block_release(v6);
  }

  xpc_release(object[0]);
  object[0] = 0;
  if (v4)
  {
    CFRelease(v4);
  }
}

void sub_296F9898C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void data::QMIDataCommandDriver::setQMAPSettings(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 1174405120;
  v7[2] = ___ZN4data20QMIDataCommandDriver15setQMAPSettingsEN3abm4data12QMAPSettingsEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke;
  v7[3] = &__block_descriptor_tmp_64_3;
  v8 = *(a2 + 8);
  v7[4] = a1;
  v7[5] = &unk_2A1E18E38;
  v5 = *a3;
  if (*a3)
  {
    v5 = _Block_copy(v5);
  }

  v6 = *(a3 + 8);
  aBlock = v5;
  object = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  ctu::SharedSynchronizable<data::CommandDriver>::execute_wrapped((a1 + 8), v7);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void ___ZN4data20QMIDataCommandDriver15setQMAPSettingsEN3abm4data12QMAPSettingsEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v53 = v3;
  v54 = v3;
  qmi::MutableMessageBase::MutableMessageBase(&v53);
  v48[0] = MEMORY[0x29EDCA5F8];
  v48[1] = 1174405120;
  v4 = ___ZN4data20QMIDataCommandDriver15setQMAPSettingsEN3abm4data12QMAPSettingsEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_2;
  v49 = ___ZN4data20QMIDataCommandDriver15setQMAPSettingsEN3abm4data12QMAPSettingsEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_2;
  v50 = &__block_descriptor_tmp_53_3;
  v52 = *(a1 + 48);
  v51 = &unk_2A1E18E38;
  v5 = *(&v53 + 1);
  v6 = v54;
  v7 = *(&v53 + 1);
  if (*(&v53 + 1) != v54)
  {
    v7 = *(&v53 + 1);
    while (*(*v7 + 8) != 18)
    {
      if (++v7 == v54)
      {
        goto LABEL_9;
      }
    }
  }

  if (v7 == v54)
  {
LABEL_9:
    v11 = operator new(0x10uLL);
    v12 = v11;
    v11[4] = 18;
    *v11 = &unk_2A1E1FD38;
    if (v6 >= *(&v54 + 1))
    {
      v14 = v6 - v5;
      v15 = (v6 - v5) >> 3;
      v16 = v15 + 1;
      if ((v15 + 1) >> 61)
      {
        goto LABEL_69;
      }

      v17 = *(&v54 + 1) - v5;
      if ((*(&v54 + 1) - v5) >> 2 > v16)
      {
        v16 = v17 >> 2;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFF8)
      {
        v18 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        if (v18 >> 61)
        {
          goto LABEL_70;
        }

        v19 = operator new(8 * v18);
      }

      else
      {
        v19 = 0;
      }

      v20 = &v19[8 * v15];
      *v20 = v12;
      v13 = v20 + 8;
      memcpy(v19, v5, v14);
      *(&v53 + 1) = v19;
      *&v54 = v13;
      *(&v54 + 1) = &v19[8 * v18];
      if (v5)
      {
        operator delete(v5);
      }
    }

    else
    {
      *v6 = v11;
      v13 = v6 + 8;
    }

    v10 = v12 + 9;
    *&v54 = v13;
    v4 = v49;
  }

  else
  {
    v8 = ***v7;
    if (!v9)
    {
      goto LABEL_68;
    }

    v10 = v9 + 9;
  }

  v4(v48, v10);
  v21 = *(&v53 + 1);
  v22 = v54;
  v23 = *(&v53 + 1);
  if (*(&v53 + 1) != v54)
  {
    v23 = *(&v53 + 1);
    while (*(*v23 + 8) != 16)
    {
      if (++v23 == v54)
      {
        goto LABEL_33;
      }
    }
  }

  if (v23 == v54)
  {
LABEL_33:
    v26 = operator new(0x10uLL);
    v27 = v26;
    v26[4] = 16;
    *v26 = &unk_2A1E1FD88;
    if (v22 < *(&v54 + 1))
    {
      *v22 = v26;
      v22 += 8;
      *&v54 = v22;
      *(v26 + 9) = 0;
      if (v21 != v22)
      {
        goto LABEL_50;
      }

      goto LABEL_53;
    }

    v28 = v22 - v21;
    v29 = (v22 - v21) >> 3;
    v30 = v29 + 1;
    if (!((v29 + 1) >> 61))
    {
      v31 = *(&v54 + 1) - v21;
      if ((*(&v54 + 1) - v21) >> 2 > v30)
      {
        v30 = v31 >> 2;
      }

      if (v31 >= 0x7FFFFFFFFFFFFFF8)
      {
        v32 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v32 = v30;
      }

      if (!v32)
      {
        v33 = 0;
LABEL_46:
        v34 = &v33[8 * v29];
        *v34 = v27;
        v22 = v34 + 8;
        memcpy(v33, v21, v28);
        *(&v53 + 1) = v33;
        *&v54 = v22;
        *(&v54 + 1) = &v33[8 * v32];
        if (v21)
        {
          operator delete(v21);
          v21 = *(&v53 + 1);
          *&v54 = v22;
          *(v27 + 9) = 0;
          if (v21 != v22)
          {
            goto LABEL_50;
          }
        }

        else
        {
          v21 = v33;
          *&v54 = v22;
          *(v27 + 9) = 0;
          if (v33 != v22)
          {
LABEL_50:
            while (*(*v21 + 8) != 17)
            {
              v21 += 8;
              if (v21 == v22)
              {
                goto LABEL_56;
              }
            }
          }
        }

        goto LABEL_53;
      }

      if (!(v32 >> 61))
      {
        v33 = operator new(8 * v32);
        goto LABEL_46;
      }

LABEL_70:
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

LABEL_69:
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v24 = ***v23;
  if (!v25)
  {
    goto LABEL_68;
  }

  v25[9] = 0;
  if (v21 != v22)
  {
    goto LABEL_50;
  }

LABEL_53:
  if (v21 != v22)
  {
    v35 = ***v21;
    if (v36)
    {
      v37 = v36 + 12;
      goto LABEL_57;
    }

LABEL_68:
    __cxa_bad_cast();
  }

LABEL_56:
  v37 = qmi::MutableMessageBase::createTLV<wda::tlv::abm::PeripheralEndPointID>(&v53, 17);
LABEL_57:
  *v37 = 0x400000003;
  v43 = v2 + 88;
  v44 = QMIServiceMsg::create();
  v45 = 25000;
  v46 = 0;
  v47 = 0;
  v40[0] = MEMORY[0x29EDCA5F8];
  v40[1] = 1174405120;
  v40[2] = ___ZN4data20QMIDataCommandDriver15setQMAPSettingsEN3abm4data12QMAPSettingsEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_3;
  v40[3] = &__block_descriptor_tmp_63_5;
  v40[4] = v2;
  v38 = *(a1 + 56);
  if (v38)
  {
    v38 = _Block_copy(v38);
  }

  v39 = *(a1 + 64);
  v41 = v38;
  object = v39;
  if (v39)
  {
    dispatch_retain(v39);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN3wda3abm15SetQMAPSettings8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE609B0;
  aBlock[4] = v40;
  v47 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v47)
  {
    _Block_release(v47);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v41)
  {
    _Block_release(v41);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v53);
}

void sub_296F9902C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(v27 + 40);
  qmi::Client::SendProxy::~SendProxy(&a16);
  qmi::MutableMessageBase::~MutableMessageBase(&a27);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c29_ZTSN3abm4data12QMAPSettingsE(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(result + 32) = &unk_2A1E18E38;
  return result;
}

void ___ZN4data20QMIDataCommandDriver15setQMAPSettingsEN3abm4data12QMAPSettingsEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_3(uint64_t a1, const qmi::ResponseBase *a2)
{
  cf = 0xAAAAAAAAAAAAAAAALL;
  data::QMIDataCommandDriver::checkError(a2, &cf);
  v3 = *(a1 + 40);
  if (!v3 || !*(a1 + 48))
  {
    goto LABEL_20;
  }

  v4 = cf;
  if (cf && (CFRetain(cf), (v3 = *(a1 + 40)) == 0))
  {
    v5 = 0;
  }

  else
  {
    v5 = _Block_copy(v3);
  }

  v6 = *(a1 + 48);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_2;
  block[3] = &__block_descriptor_tmp_163_2;
  if (v5)
  {
    aBlock = _Block_copy(v5);
    v10 = v4;
    if (!v4)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  aBlock = 0;
  v10 = v4;
  if (v4)
  {
LABEL_11:
    CFRetain(v4);
  }

LABEL_12:
  dispatch_async(v6, block);
  if (v10)
  {
    CFRelease(v10);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }

LABEL_20:
  if (cf)
  {
    CFRelease(cf);
  }
}

void __copy_helper_block_e8_40c29_ZTSN3abm4data12QMAPSettingsE56c79_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 40) = &unk_2A1E18E38;
  v4 = *(a2 + 56);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 64);
  *(a1 + 56) = v4;
  *(a1 + 64) = v5;
  if (v5)
  {

    dispatch_retain(v5);
  }
}

void __destroy_helper_block_e8_4056c79_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    _Block_release(v3);
  }
}

void data::QMIDataCommandDriver::setDataFormat(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 1174405120;
  v9[2] = ___ZN4data20QMIDataCommandDriver13setDataFormatEN3abm4data10DataFormatEjN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke;
  v9[3] = &__block_descriptor_tmp_92_3;
  v10 = *(a2 + 8);
  v9[4] = a1;
  v9[5] = &unk_2A1E18D60;
  v11 = *(a2 + 12);
  v13 = *(a2 + 24);
  v12 = &unk_2A1E18DA8;
  v14 = *(a2 + 28);
  v16 = *(a2 + 40);
  v15 = &unk_2A1E18DF0;
  v17 = *(a2 + 44);
  v7 = *a4;
  if (*a4)
  {
    v7 = _Block_copy(v7);
  }

  v8 = *(a4 + 8);
  aBlock = v7;
  object = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  v20 = a3;
  ctu::SharedSynchronizable<data::CommandDriver>::execute_wrapped((a1 + 8), v9);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void ___ZN4data20QMIDataCommandDriver13setDataFormatEN3abm4data10DataFormatEjN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke(uint64_t a1)
{
  v154 = *(a1 + 32);
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v187 = v2;
  v188 = v2;
  qmi::MutableMessageBase::MutableMessageBase(&v187);
  v3 = *(a1 + 52);
  v155 = a1;
  if (!v3)
  {
LABEL_24:
    v5 = 2048;
    v4 = 1;
    goto LABEL_25;
  }

  if (v3 == 2)
  {
    v4 = *(a1 + 68);
    v5 = *(a1 + 84);
    v6 = 9;
    goto LABEL_26;
  }

  if (v3 != 1)
  {
    v184 = operator new(0x20uLL);
    v185 = xmmword_296FC2D50;
    strcpy(v184, "Invalid DataAggregationProtocol");
    CreateError();
    v7 = *(a1 + 88);
    if (v7)
    {
      v8 = _Block_copy(v7);
    }

    else
    {
      v8 = 0;
    }

    v9 = *(a1 + 96);
    block = MEMORY[0x29EDCA5F8];
    v190 = 1174405120;
    v191 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_2;
    v192 = &__block_descriptor_tmp_163_2;
    if (v8)
    {
      v10 = _Block_copy(v8);
      v11 = v186;
      v193 = v10;
      v194 = v186;
      if (!v186)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v11 = v186;
      v193 = 0;
      v194 = v186;
      if (!v186)
      {
LABEL_14:
        dispatch_async(v9, &block);
        if (v194)
        {
          CFRelease(v194);
        }

        if (v193)
        {
          _Block_release(v193);
        }

        if (v8)
        {
          _Block_release(v8);
        }

        if (v186)
        {
          CFRelease(v186);
        }

        if (SHIBYTE(v185) < 0)
        {
          operator delete(v184);
        }

        goto LABEL_24;
      }
    }

    CFRetain(v11);
    goto LABEL_14;
  }

  v4 = *(a1 + 68);
  v5 = *(a1 + 84);
LABEL_25:
  v6 = 5;
LABEL_26:
  v180[0] = MEMORY[0x29EDCA5F8];
  v180[1] = 0x40000000;
  v12 = ___ZN4data20QMIDataCommandDriver13setDataFormatEN3abm4data10DataFormatEjN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_2;
  v181 = ___ZN4data20QMIDataCommandDriver13setDataFormatEN3abm4data10DataFormatEjN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_2;
  v182 = &__block_descriptor_tmp_67_0;
  v183 = v6;
  v13 = *(&v187 + 1);
  v14 = v188;
  v15 = *(&v187 + 1);
  if (*(&v187 + 1) != v188)
  {
    v15 = *(&v187 + 1);
    while (*(*v15 + 8) != 19)
    {
      if (++v15 == v188)
      {
        goto LABEL_34;
      }
    }
  }

  if (v15 == v188)
  {
LABEL_34:
    v19 = operator new(0x10uLL);
    v19[8] = 19;
    *v19 = &unk_2A1E1FE08;
    *(v19 + 3) = 0;
    v18 = v19 + 12;
    if (v14 >= *(&v188 + 1))
    {
      v21 = v14 - v13;
      v22 = (v14 - v13) >> 3;
      v23 = v22 + 1;
      if ((v22 + 1) >> 61)
      {
        goto LABEL_241;
      }

      v24 = *(&v188 + 1) - v13;
      if ((*(&v188 + 1) - v13) >> 2 > v23)
      {
        v23 = v24 >> 2;
      }

      if (v24 >= 0x7FFFFFFFFFFFFFF8)
      {
        v25 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v25 = v23;
      }

      v153 = v19 + 12;
      if (v25)
      {
        if (v25 >> 61)
        {
          goto LABEL_242;
        }

        v26 = v6;
        v27 = v5;
        v28 = v19;
        v29 = operator new(8 * v25);
        v19 = v28;
        v5 = v27;
        v6 = v26;
      }

      else
      {
        v29 = 0;
      }

      v30 = &v29[8 * v22];
      *v30 = v19;
      v20 = v30 + 8;
      memcpy(v29, v13, v21);
      *(&v187 + 1) = v29;
      *&v188 = v20;
      *(&v188 + 1) = &v29[8 * v25];
      if (v13)
      {
        operator delete(v13);
      }

      v18 = v153;
    }

    else
    {
      *v14 = v19;
      v20 = v14 + 8;
    }

    *&v188 = v20;
    v12 = v181;
  }

  else
  {
    v16 = ***v15;
    if (!v17)
    {
      goto LABEL_240;
    }

    v18 = v17 + 12;
  }

  v12(v180, v18);
  v176[0] = MEMORY[0x29EDCA5F8];
  v176[1] = 0x40000000;
  v31 = ___ZN4data20QMIDataCommandDriver13setDataFormatEN3abm4data10DataFormatEjN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_3;
  v177 = ___ZN4data20QMIDataCommandDriver13setDataFormatEN3abm4data10DataFormatEjN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_3;
  v178 = &__block_descriptor_tmp_68_2;
  v179 = v4;
  v32 = *(&v187 + 1);
  v33 = v188;
  v34 = *(&v187 + 1);
  if (*(&v187 + 1) != v188)
  {
    v34 = *(&v187 + 1);
    while (*(*v34 + 8) != 21)
    {
      if (++v34 == v188)
      {
        goto LABEL_58;
      }
    }
  }

  if (v34 == v188)
  {
LABEL_58:
    v38 = operator new(0x10uLL);
    v38[8] = 21;
    *v38 = &unk_2A1E1FE58;
    *(v38 + 3) = 0;
    v37 = v38 + 12;
    if (v33 >= *(&v188 + 1))
    {
      v40 = v33 - v32;
      v41 = (v33 - v32) >> 3;
      v42 = v41 + 1;
      if ((v41 + 1) >> 61)
      {
        goto LABEL_241;
      }

      v43 = *(&v188 + 1) - v32;
      if ((*(&v188 + 1) - v32) >> 2 > v42)
      {
        v42 = v43 >> 2;
      }

      if (v43 >= 0x7FFFFFFFFFFFFFF8)
      {
        v44 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v44 = v42;
      }

      if (v44)
      {
        if (v44 >> 61)
        {
          goto LABEL_242;
        }

        v45 = v6;
        v46 = v5;
        v47 = v38;
        v48 = v38 + 12;
        v49 = operator new(8 * v44);
        v38 = v47;
        v5 = v46;
        v6 = v45;
      }

      else
      {
        v48 = v38 + 12;
        v49 = 0;
      }

      v50 = &v49[8 * v41];
      *v50 = v38;
      v39 = v50 + 8;
      memcpy(v49, v32, v40);
      *(&v187 + 1) = v49;
      *&v188 = v39;
      *(&v188 + 1) = &v49[8 * v44];
      if (v32)
      {
        operator delete(v32);
      }

      v37 = v48;
    }

    else
    {
      *v33 = v38;
      v39 = v33 + 8;
    }

    *&v188 = v39;
    v31 = v177;
  }

  else
  {
    v35 = ***v34;
    if (!v36)
    {
      goto LABEL_240;
    }

    v37 = v36 + 12;
  }

  v31(v176, v37);
  v172[0] = MEMORY[0x29EDCA5F8];
  v172[1] = 0x40000000;
  v51 = ___ZN4data20QMIDataCommandDriver13setDataFormatEN3abm4data10DataFormatEjN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_4;
  v173 = ___ZN4data20QMIDataCommandDriver13setDataFormatEN3abm4data10DataFormatEjN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_4;
  v174 = &__block_descriptor_tmp_69_2;
  v175 = v5;
  v52 = *(&v187 + 1);
  v53 = v188;
  v54 = *(&v187 + 1);
  if (*(&v187 + 1) != v188)
  {
    v54 = *(&v187 + 1);
    while (*(*v54 + 8) != 22)
    {
      if (++v54 == v188)
      {
        goto LABEL_82;
      }
    }
  }

  if (v54 == v188)
  {
LABEL_82:
    v58 = operator new(0x10uLL);
    v58[8] = 22;
    *v58 = &unk_2A1E1FEA8;
    *(v58 + 3) = 0;
    v57 = v58 + 12;
    if (v53 >= *(&v188 + 1))
    {
      v60 = v53 - v52;
      v61 = (v53 - v52) >> 3;
      v62 = v61 + 1;
      if ((v61 + 1) >> 61)
      {
        goto LABEL_241;
      }

      v63 = *(&v188 + 1) - v52;
      if ((*(&v188 + 1) - v52) >> 2 > v62)
      {
        v62 = v63 >> 2;
      }

      if (v63 >= 0x7FFFFFFFFFFFFFF8)
      {
        v64 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v64 = v62;
      }

      if (v64)
      {
        if (v64 >> 61)
        {
          goto LABEL_242;
        }

        v65 = v58;
        v66 = v58 + 12;
        v67 = operator new(8 * v64);
        v58 = v65;
      }

      else
      {
        v66 = v58 + 12;
        v67 = 0;
      }

      v68 = &v67[8 * v61];
      *v68 = v58;
      v59 = v68 + 8;
      memcpy(v67, v52, v60);
      *(&v187 + 1) = v67;
      *&v188 = v59;
      *(&v188 + 1) = &v67[8 * v64];
      if (v52)
      {
        operator delete(v52);
      }

      v57 = v66;
    }

    else
    {
      *v53 = v58;
      v59 = v53 + 8;
    }

    *&v188 = v59;
    v51 = v173;
  }

  else
  {
    v55 = ***v54;
    if (!v56)
    {
      goto LABEL_240;
    }

    v57 = v56 + 12;
  }

  v51(v172, v57);
  v168[0] = MEMORY[0x29EDCA5F8];
  v168[1] = 0x40000000;
  v69 = ___ZN4data20QMIDataCommandDriver13setDataFormatEN3abm4data10DataFormatEjN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_5;
  v169 = ___ZN4data20QMIDataCommandDriver13setDataFormatEN3abm4data10DataFormatEjN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_5;
  v170 = &__block_descriptor_tmp_71_2;
  v171 = v6;
  v70 = *(&v187 + 1);
  v71 = v188;
  v72 = *(&v187 + 1);
  if (*(&v187 + 1) != v188)
  {
    v72 = *(&v187 + 1);
    while (*(*v72 + 8) != 18)
    {
      if (++v72 == v188)
      {
        goto LABEL_106;
      }
    }
  }

  if (v72 == v188)
  {
LABEL_106:
    v76 = operator new(0x10uLL);
    v76[8] = 18;
    *v76 = &unk_2A1E1FEF8;
    *(v76 + 3) = 0;
    v75 = v76 + 12;
    if (v71 >= *(&v188 + 1))
    {
      v78 = v71 - v70;
      v79 = (v71 - v70) >> 3;
      v80 = v79 + 1;
      if ((v79 + 1) >> 61)
      {
        goto LABEL_241;
      }

      v81 = *(&v188 + 1) - v70;
      if ((*(&v188 + 1) - v70) >> 2 > v80)
      {
        v80 = v81 >> 2;
      }

      if (v81 >= 0x7FFFFFFFFFFFFFF8)
      {
        v82 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v82 = v80;
      }

      if (v82)
      {
        if (v82 >> 61)
        {
          goto LABEL_242;
        }

        v83 = v76;
        v84 = v76 + 12;
        v85 = operator new(8 * v82);
        v76 = v83;
      }

      else
      {
        v84 = v76 + 12;
        v85 = 0;
      }

      v86 = &v85[8 * v79];
      *v86 = v76;
      v77 = v86 + 8;
      memcpy(v85, v70, v78);
      *(&v187 + 1) = v85;
      *&v188 = v77;
      *(&v188 + 1) = &v85[8 * v82];
      if (v70)
      {
        operator delete(v70);
      }

      v75 = v84;
    }

    else
    {
      *v71 = v76;
      v77 = v71 + 8;
    }

    *&v188 = v77;
    v69 = v169;
  }

  else
  {
    v73 = ***v72;
    if (!v74)
    {
      goto LABEL_240;
    }

    v75 = v74 + 12;
  }

  v69(v168, v75);
  v87 = *(&v187 + 1);
  v88 = v188;
  v89 = *(&v187 + 1);
  if (*(&v187 + 1) != v188)
  {
    v89 = *(&v187 + 1);
    while (*(*v89 + 8) != 27)
    {
      if (++v89 == v188)
      {
        goto LABEL_131;
      }
    }
  }

  if (v89 == v188)
  {
LABEL_131:
    v93 = operator new(0x10uLL);
    v93[8] = 27;
    *v93 = &unk_2A1E1FF48;
    *(v93 + 3) = 0;
    v94 = v93 + 12;
    if (v88 >= *(&v188 + 1))
    {
      v95 = v88 - v87;
      v96 = (v88 - v87) >> 3;
      v97 = v96 + 1;
      if ((v96 + 1) >> 61)
      {
        goto LABEL_241;
      }

      v98 = *(&v188 + 1) - v87;
      if ((*(&v188 + 1) - v87) >> 2 > v97)
      {
        v97 = v98 >> 2;
      }

      if (v98 >= 0x7FFFFFFFFFFFFFF8)
      {
        v99 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v99 = v97;
      }

      if (v99)
      {
        if (v99 >> 61)
        {
          goto LABEL_242;
        }

        v100 = v93;
        v101 = operator new(8 * v99);
        v93 = v100;
      }

      else
      {
        v101 = 0;
      }

      v102 = &v101[v96];
      *v102 = v93;
      v88 = v102 + 1;
      memcpy(v101, v87, v95);
      *(&v187 + 1) = v101;
      *&v188 = v88;
      *(&v188 + 1) = &v101[v99];
      if (v87)
      {
        operator delete(v87);
        v87 = *(&v187 + 1);
        *&v188 = v88;
        *v94 = 1;
        v92 = v87;
        if (v87 == v88)
        {
          goto LABEL_152;
        }
      }

      else
      {
        v87 = v101;
        *&v188 = v88;
        *v94 = 1;
        v92 = v101;
        if (v101 == v88)
        {
          goto LABEL_152;
        }
      }
    }

    else
    {
      *v88++ = v93;
      *&v188 = v88;
      *v94 = 1;
      v92 = v87;
      if (v87 == v88)
      {
        goto LABEL_152;
      }
    }

    goto LABEL_148;
  }

  v90 = ***v89;
  if (!v91)
  {
    goto LABEL_240;
  }

  v91[3] = 1;
  v92 = v87;
  if (v87 != v88)
  {
LABEL_148:
    v92 = v87;
    while (*(*v92 + 8) != 28)
    {
      if (++v92 == v88)
      {
        goto LABEL_156;
      }
    }
  }

LABEL_152:
  if (v92 == v88)
  {
LABEL_156:
    v106 = operator new(0x10uLL);
    v106[8] = 28;
    *v106 = &unk_2A1E1FF98;
    *(v106 + 3) = 0;
    v107 = v106 + 12;
    if (v88 >= *(&v188 + 1))
    {
      v108 = v88 - v87;
      v109 = (v88 - v87) >> 3;
      v110 = v109 + 1;
      if ((v109 + 1) >> 61)
      {
        goto LABEL_241;
      }

      v111 = *(&v188 + 1) - v87;
      if ((*(&v188 + 1) - v87) >> 2 > v110)
      {
        v110 = v111 >> 2;
      }

      if (v111 >= 0x7FFFFFFFFFFFFFF8)
      {
        v112 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v112 = v110;
      }

      if (v112)
      {
        if (v112 >> 61)
        {
          goto LABEL_242;
        }

        v113 = v106;
        v114 = operator new(8 * v112);
        v106 = v113;
      }

      else
      {
        v114 = 0;
      }

      v115 = &v114[v109];
      *v115 = v106;
      v88 = v115 + 1;
      memcpy(v114, v87, v108);
      *(&v187 + 1) = v114;
      *&v188 = v88;
      *(&v188 + 1) = &v114[v112];
      if (v87)
      {
        operator delete(v87);
        v87 = *(&v187 + 1);
        *&v188 = v88;
        *v107 = 2048;
        v105 = v87;
        if (v87 == v88)
        {
          goto LABEL_177;
        }
      }

      else
      {
        v87 = v114;
        *&v188 = v88;
        *v107 = 2048;
        v105 = v114;
        if (v114 == v88)
        {
          goto LABEL_177;
        }
      }
    }

    else
    {
      *v88++ = v106;
      *&v188 = v88;
      *v107 = 2048;
      v105 = v87;
      if (v87 == v88)
      {
        goto LABEL_177;
      }
    }

    goto LABEL_173;
  }

  v103 = ***v92;
  if (!v104)
  {
    goto LABEL_240;
  }

  v104[3] = 2048;
  v105 = v87;
  if (v87 != v88)
  {
LABEL_173:
    v105 = v87;
    while (*(*v105 + 8) != 17)
    {
      if (++v105 == v88)
      {
        goto LABEL_180;
      }
    }
  }

LABEL_177:
  if (v105 == v88)
  {
LABEL_180:
    v120 = operator new(0x10uLL);
    v120[8] = 17;
    *v120 = &unk_2A1E1FFE8;
    *(v120 + 3) = 0;
    v118 = v120 + 12;
    if (v88 >= *(&v188 + 1))
    {
      v121 = v88 - v87;
      v122 = (v88 - v87) >> 3;
      v123 = v122 + 1;
      if ((v122 + 1) >> 61)
      {
        goto LABEL_241;
      }

      v124 = *(&v188 + 1) - v87;
      if ((*(&v188 + 1) - v87) >> 2 > v123)
      {
        v123 = v124 >> 2;
      }

      if (v124 >= 0x7FFFFFFFFFFFFFF8)
      {
        v125 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v125 = v123;
      }

      if (v125)
      {
        if (v125 >> 61)
        {
          goto LABEL_242;
        }

        v126 = v120;
        v127 = operator new(8 * v125);
        v120 = v126;
      }

      else
      {
        v127 = 0;
      }

      v128 = &v127[8 * v122];
      *v128 = v120;
      v88 = (v128 + 8);
      memcpy(v127, v87, v121);
      *(&v187 + 1) = v127;
      *&v188 = v88;
      *(&v188 + 1) = &v127[8 * v125];
      if (v87)
      {
        operator delete(v87);
        v87 = *(&v187 + 1);
      }

      else
      {
        v87 = v127;
      }
    }

    else
    {
      *v88++ = v120;
    }

    v119 = v155;
    *&v188 = v88;
  }

  else
  {
    v116 = ***v105;
    if (!v117)
    {
      goto LABEL_240;
    }

    v118 = v117 + 12;
    v119 = v155;
  }

  *v118 = 2;
  v164[0] = MEMORY[0x29EDCA5F8];
  v164[1] = 0x40000000;
  v129 = ___ZN4data20QMIDataCommandDriver13setDataFormatEN3abm4data10DataFormatEjN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_9;
  v165 = ___ZN4data20QMIDataCommandDriver13setDataFormatEN3abm4data10DataFormatEjN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_9;
  v166 = &__block_descriptor_tmp_84_0;
  v167 = *(v119 + 104);
  if (v87 != v88)
  {
    while (*(*v87 + 8) != 23)
    {
      v87 += 8;
      if (v87 == v88)
      {
        goto LABEL_203;
      }
    }
  }

  if (v87 == v88)
  {
LABEL_203:
    v132 = qmi::MutableMessageBase::createTLV<wda::tlv::abm::PeripheralEndPointID>(&v187, 23);
    v129 = v165;
  }

  else
  {
    v130 = ***v87;
    if (!v131)
    {
      goto LABEL_240;
    }

    v132 = v131 + 12;
  }

  v133 = v129(v164, v132);
  v134 = v154;
  if (!capabilities::ipc::supportsCoalescing(v133))
  {
    goto LABEL_229;
  }

  v135 = *(&v187 + 1);
  v136 = v188;
  v137 = *(&v187 + 1);
  if (*(&v187 + 1) != v188)
  {
    v137 = *(&v187 + 1);
    while (*(*v137 + 8) != 29)
    {
      if (++v137 == v188)
      {
        goto LABEL_213;
      }
    }
  }

  if (v137 == v188)
  {
LABEL_213:
    v141 = operator new(0x10uLL);
    v142 = v141;
    v141[4] = 29;
    *v141 = &unk_2A1E20038;
    *(v141 + 10) = 0;
    if (v136 < *(&v188 + 1))
    {
      *v136 = v141;
      v143 = v136 + 8;
LABEL_227:
      v134 = v154;
      v140 = (v142 + 9);
      *&v188 = v143;
      goto LABEL_228;
    }

    v144 = v136 - v135;
    v145 = (v136 - v135) >> 3;
    v146 = v145 + 1;
    if (!((v145 + 1) >> 61))
    {
      v147 = *(&v188 + 1) - v135;
      if ((*(&v188 + 1) - v135) >> 2 > v146)
      {
        v146 = v147 >> 2;
      }

      if (v147 >= 0x7FFFFFFFFFFFFFF8)
      {
        v148 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v148 = v146;
      }

      if (!v148)
      {
        v149 = 0;
LABEL_225:
        v150 = &v149[8 * v145];
        *v150 = v142;
        v143 = v150 + 8;
        memcpy(v149, v135, v144);
        *(&v187 + 1) = v149;
        *&v188 = v143;
        *(&v188 + 1) = &v149[8 * v148];
        if (v135)
        {
          operator delete(v135);
        }

        goto LABEL_227;
      }

      if (!(v148 >> 61))
      {
        v149 = operator new(8 * v148);
        goto LABEL_225;
      }

LABEL_242:
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

LABEL_241:
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v138 = ***v137;
  if (!v139)
  {
LABEL_240:
    __cxa_bad_cast();
  }

  v140 = v139 + 9;
  v134 = v154;
LABEL_228:
  *v140 = 257;
LABEL_229:
  v159 = v134 + 88;
  v160 = QMIServiceMsg::create();
  v161 = 25000;
  v162 = 0;
  aBlock = 0;
  v156[0] = MEMORY[0x29EDCA5F8];
  v156[1] = 1174405120;
  v156[2] = ___ZN4data20QMIDataCommandDriver13setDataFormatEN3abm4data10DataFormatEjN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_11;
  v156[3] = &__block_descriptor_tmp_91_3;
  v156[4] = v134;
  v151 = *(v155 + 88);
  if (v151)
  {
    v151 = _Block_copy(v151);
  }

  v152 = *(v155 + 96);
  v157 = v151;
  object = v152;
  if (v152)
  {
    dispatch_retain(v152);
  }

  block = MEMORY[0x29EDCA5F8];
  v190 = 0x40000000;
  v191 = ___ZNO3qmi6Client9SendProxy8callbackIRKN3wda3abm13SetDataFormat8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  v192 = &unk_29EE609D8;
  v193 = v156;
  aBlock = _Block_copy(&block);
  qmi::Client::send();
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v157)
  {
    _Block_release(v157);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v187);
}

void sub_296F9A5C8(_Unwind_Exception *a1)
{
  if (*(v1 - 201) < 0)
  {
    operator delete(*(v1 - 224));
    qmi::MutableMessageBase::~MutableMessageBase((v1 - 192));
    _Unwind_Resume(a1);
  }

  qmi::MutableMessageBase::~MutableMessageBase((v1 - 192));
  _Unwind_Resume(a1);
}

uint64_t ___ZN4data20QMIDataCommandDriver13setDataFormatEN3abm4data10DataFormatEjN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_9(uint64_t result, _DWORD *a2)
{
  v2 = *(result + 32);
  *a2 = 3;
  a2[1] = v2;
  return result;
}

void ___ZN4data20QMIDataCommandDriver13setDataFormatEN3abm4data10DataFormatEjN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_11(uint64_t a1, const qmi::ResponseBase *a2)
{
  cf = 0xAAAAAAAAAAAAAAAALL;
  data::QMIDataCommandDriver::checkError(a2, &cf);
  v3 = *(a1 + 40);
  if (!v3 || !*(a1 + 48))
  {
    goto LABEL_20;
  }

  v4 = cf;
  if (cf && (CFRetain(cf), (v3 = *(a1 + 40)) == 0))
  {
    v5 = 0;
  }

  else
  {
    v5 = _Block_copy(v3);
  }

  v6 = *(a1 + 48);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_2;
  block[3] = &__block_descriptor_tmp_163_2;
  if (v5)
  {
    aBlock = _Block_copy(v5);
    v10 = v4;
    if (!v4)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  aBlock = 0;
  v10 = v4;
  if (v4)
  {
LABEL_11:
    CFRetain(v4);
  }

LABEL_12:
  dispatch_async(v6, block);
  if (v10)
  {
    CFRelease(v10);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }

LABEL_20:
  if (cf)
  {
    CFRelease(cf);
  }
}

void __copy_helper_block_e8_40c27_ZTSN3abm4data10DataFormatE88c79_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 40) = &unk_2A1E18D60;
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 56) = &unk_2A1E18DA8;
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 72) = &unk_2A1E18DF0;
  *(a1 + 84) = *(a2 + 84);
  v4 = *(a2 + 88);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 96);
  *(a1 + 88) = v4;
  *(a1 + 96) = v5;
  if (v5)
  {

    dispatch_retain(v5);
  }
}

void __destroy_helper_block_e8_4088c79_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    _Block_release(v3);
  }
}

void data::QMIDataCommandDriver::setDataPowerSaveConfig(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 1174405120;
  v7[2] = ___ZN4data20QMIDataCommandDriver22setDataPowerSaveConfigEN3abm4data13DataPowerSaveEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke;
  v7[3] = &__block_descriptor_tmp_104_1;
  v8 = *(a2 + 8);
  v7[4] = a1;
  v7[5] = &unk_2A1E18E80;
  v5 = *a3;
  if (*a3)
  {
    v5 = _Block_copy(v5);
  }

  v6 = *(a3 + 8);
  aBlock = v5;
  object = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  ctu::SharedSynchronizable<data::CommandDriver>::execute_wrapped((a1 + 8), v7);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void ___ZN4data20QMIDataCommandDriver22setDataPowerSaveConfigEN3abm4data13DataPowerSaveEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke(uint64_t a1)
{
  if (*(a1 + 49) == 1)
  {
    v2 = *(a1 + 32);
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v37 = v3;
    v38 = v3;
    qmi::MutableMessageBase::MutableMessageBase(&v37);
    v4 = *(&v37 + 1);
    v5 = v38;
    v6 = *(&v37 + 1);
    if (*(&v37 + 1) != v38)
    {
      v6 = *(&v37 + 1);
      while (*(*v6 + 8) != 16)
      {
        if (++v6 == v38)
        {
          goto LABEL_16;
        }
      }
    }

    if (v6 == v38)
    {
LABEL_16:
      v14 = operator new(0x10uLL);
      v14[8] = 16;
      *v14 = &unk_2A1E20088;
      *(v14 + 3) = 0;
      v15 = v14 + 12;
      if (v5 >= *(&v38 + 1))
      {
        v16 = v5 - v4;
        v17 = (v5 - v4) >> 3;
        v18 = v17 + 1;
        if ((v17 + 1) >> 61)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v19 = *(&v38 + 1) - v4;
        if ((*(&v38 + 1) - v4) >> 2 > v18)
        {
          v18 = v19 >> 2;
        }

        if (v19 >= 0x7FFFFFFFFFFFFFF8)
        {
          v20 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v18;
        }

        if (v20)
        {
          if (v20 >> 61)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v21 = v14;
          v22 = operator new(8 * v20);
          v14 = v21;
        }

        else
        {
          v22 = 0;
        }

        v23 = &v22[8 * v17];
        *v23 = v14;
        v5 = v23 + 8;
        memcpy(v22, v4, v16);
        *(&v37 + 1) = v22;
        *&v38 = v5;
        *(&v38 + 1) = &v22[8 * v20];
        if (v4)
        {
          operator delete(v4);
          v4 = *(&v37 + 1);
          *&v38 = v5;
          *v15 = 2;
          if (v4 != v5)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v4 = v22;
          *&v38 = v5;
          *v15 = 2;
          if (v22 != v5)
          {
LABEL_39:
            while (*(*v4 + 8) != 1)
            {
              v4 += 8;
              if (v4 == v5)
              {
                goto LABEL_45;
              }
            }
          }
        }
      }

      else
      {
        *v5 = v14;
        v5 += 8;
        *&v38 = v5;
        *v15 = 2;
        if (v4 != v5)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = ***v6;
      if (!v13)
      {
        goto LABEL_58;
      }

      v13[3] = 2;
      if (v4 != v5)
      {
        goto LABEL_39;
      }
    }

    if (v4 == v5)
    {
LABEL_45:
      v26 = qmi::MutableMessageBase::createTLV<wda::tlv::abm::PeripheralEndPointID>(&v37, 1);
      goto LABEL_46;
    }

    v24 = ***v4;
    if (v25)
    {
      v26 = v25 + 12;
LABEL_46:
      *v26 = 0x400000003;
      v32 = v2 + 88;
      v33 = QMIServiceMsg::create();
      v34 = 25000;
      v35 = 0;
      v36 = 0;
      v29[0] = MEMORY[0x29EDCA5F8];
      v29[1] = 1174405120;
      v29[2] = ___ZN4data20QMIDataCommandDriver22setDataPowerSaveConfigEN3abm4data13DataPowerSaveEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_4;
      v29[3] = &__block_descriptor_tmp_102_0;
      v29[4] = v2;
      v27 = *(a1 + 56);
      if (v27)
      {
        v27 = _Block_copy(v27);
      }

      v28 = *(a1 + 64);
      v30 = v27;
      object = v28;
      if (v28)
      {
        dispatch_retain(v28);
      }

      block = MEMORY[0x29EDCA5F8];
      v40 = 0x40000000;
      v41 = ___ZNO3qmi6Client9SendProxy8callbackIRKN3wda3abm18SetPowerSaveConfig8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
      v42 = &unk_29EE60A00;
      aBlock = v29;
      v36 = _Block_copy(&block);
      qmi::Client::send();
      if (v36)
      {
        _Block_release(v36);
      }

      if (object)
      {
        dispatch_release(object);
      }

      if (v30)
      {
        _Block_release(v30);
      }

      qmi::MutableMessageBase::~MutableMessageBase(&v37);
      return;
    }

LABEL_58:
    __cxa_bad_cast();
  }

  v7 = *(a1 + 56);
  if (!v7 || !*(a1 + 64))
  {
    return;
  }

  v8 = _Block_copy(v7);
  v9 = v8;
  v10 = *(a1 + 64);
  block = MEMORY[0x29EDCA5F8];
  v40 = 1174405120;
  v41 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_2;
  v42 = &__block_descriptor_tmp_163_2;
  if (v8)
  {
    aBlock = _Block_copy(v8);
    cf = 0;
    dispatch_async(v10, &block);
    v11 = cf;
    if (!cf)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  aBlock = 0;
  cf = 0;
  dispatch_async(v10, &block);
  v11 = cf;
  if (cf)
  {
LABEL_29:
    CFRelease(v11);
  }

LABEL_30:
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v9)
  {
    _Block_release(v9);
  }
}

void sub_296F9AEB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(v8 + 40);
  qmi::Client::SendProxy::~SendProxy(va);
  qmi::MutableMessageBase::~MutableMessageBase(va1);
  _Unwind_Resume(a1);
}

void sub_296F9AED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void sub_296F9AEEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void ___ZN4data20QMIDataCommandDriver22setDataPowerSaveConfigEN3abm4data13DataPowerSaveEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_4(uint64_t a1, const qmi::ResponseBase *a2)
{
  cf = 0xAAAAAAAAAAAAAAAALL;
  data::QMIDataCommandDriver::checkError(a2, &cf);
  v3 = *(a1 + 40);
  if (!v3 || !*(a1 + 48))
  {
    goto LABEL_20;
  }

  v4 = cf;
  if (cf && (CFRetain(cf), (v3 = *(a1 + 40)) == 0))
  {
    v5 = 0;
  }

  else
  {
    v5 = _Block_copy(v3);
  }

  v6 = *(a1 + 48);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_2;
  block[3] = &__block_descriptor_tmp_163_2;
  if (v5)
  {
    aBlock = _Block_copy(v5);
    v10 = v4;
    if (!v4)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  aBlock = 0;
  v10 = v4;
  if (v4)
  {
LABEL_11:
    CFRetain(v4);
  }

LABEL_12:
  dispatch_async(v6, block);
  if (v10)
  {
    CFRelease(v10);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }

LABEL_20:
  if (cf)
  {
    CFRelease(cf);
  }
}

void __copy_helper_block_e8_40c30_ZTSN3abm4data13DataPowerSaveE56c79_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 40) = &unk_2A1E18E80;
  v4 = *(a2 + 56);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 64);
  *(a1 + 56) = v4;
  *(a1 + 64) = v5;
  if (v5)
  {

    dispatch_retain(v5);
  }
}

void data::QMIDataCommandDriver::setDefaultCapabilities(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 1174405120;
  v6[2] = ___ZN4data20QMIDataCommandDriver22setDefaultCapabilitiesEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke;
  v6[3] = &__block_descriptor_tmp_117_2;
  v6[4] = a1;
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 8);
  aBlock = v4;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  ctu::SharedSynchronizable<data::CommandDriver>::execute_wrapped((a1 + 8), v6);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void ___ZN4data20QMIDataCommandDriver22setDefaultCapabilitiesEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke(void *a1)
{
  v2 = a1[4];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v34 = v3;
  v35 = v3;
  qmi::MutableMessageBase::MutableMessageBase(&v34);
  v4 = *(&v34 + 1);
  v5 = v35;
  v6 = *(&v34 + 1);
  if (*(&v34 + 1) != v35)
  {
    v6 = *(&v34 + 1);
    while (*(*v6 + 8) != 1)
    {
      if (++v6 == v35)
      {
        goto LABEL_10;
      }
    }
  }

  if (v6 == v35)
  {
LABEL_10:
    v10 = qmi::MutableMessageBase::createTLV<wda::tlv::abm::PeripheralEndPointID>(&v34, 1);
    v4 = *(&v34 + 1);
    v5 = v35;
    *v10 = 0x400000003;
    v9 = v4;
    if (v4 == v5)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v7 = ***v6;
    if (!v8)
    {
      goto LABEL_44;
    }

    *(v8 + 12) = 0x400000003;
    v9 = v4;
    if (v4 == v5)
    {
      goto LABEL_15;
    }
  }

  v9 = v4;
  while (*(*v9 + 8) != 16)
  {
    if (++v9 == v5)
    {
      goto LABEL_18;
    }
  }

LABEL_15:
  if (v9 != v5)
  {
    v11 = ***v9;
    if (v12)
    {
      v13 = v12 + 12;
      goto LABEL_33;
    }

LABEL_44:
    __cxa_bad_cast();
  }

LABEL_18:
  v14 = operator new(0x10uLL);
  v14[8] = 16;
  *v14 = &unk_2A1E200D8;
  *(v14 + 3) = 0;
  v13 = v14 + 12;
  if (v5 >= *(&v35 + 1))
  {
    v16 = v5 - v4;
    v17 = v5 - v4;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v19 = *(&v35 + 1) - v4;
    if ((*(&v35 + 1) - v4) >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v21 = v14;
      v22 = operator new(8 * v20);
      v14 = v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = &v22[8 * v17];
    *v23 = v14;
    v15 = v23 + 8;
    memcpy(v22, v4, v16);
    *(&v34 + 1) = v22;
    *&v35 = v15;
    *(&v35 + 1) = &v22[8 * v20];
    if (v4)
    {
      operator delete(v4);
    }
  }

  else
  {
    *v5 = v14;
    v15 = v5 + 1;
  }

  *&v35 = v15;
LABEL_33:
  *v13 = 1;
  v29 = v2 + 88;
  v30 = QMIServiceMsg::create();
  v31 = 25000;
  v32 = 0;
  v33 = 0;
  v26[0] = MEMORY[0x29EDCA5F8];
  v26[1] = 1174405120;
  v26[2] = ___ZN4data20QMIDataCommandDriver22setDefaultCapabilitiesEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_4;
  v26[3] = &__block_descriptor_tmp_114_2;
  v26[4] = v2;
  v24 = a1[5];
  if (v24)
  {
    v24 = _Block_copy(v24);
  }

  v25 = a1[6];
  v27 = v24;
  object = v25;
  if (v25)
  {
    dispatch_retain(v25);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN3wda3abm13SetCapability8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE60A28;
  aBlock[4] = v26;
  v33 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v33)
  {
    _Block_release(v33);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v27)
  {
    _Block_release(v27);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v34);
}

void sub_296F9B55C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(v8 + 40);
  qmi::Client::SendProxy::~SendProxy(va);
  qmi::MutableMessageBase::~MutableMessageBase(va1);
  _Unwind_Resume(a1);
}

void sub_296F9B580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void sub_296F9B598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void ___ZN4data20QMIDataCommandDriver22setDefaultCapabilitiesEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_4(uint64_t a1, const qmi::ResponseBase *a2)
{
  cf = 0xAAAAAAAAAAAAAAAALL;
  data::QMIDataCommandDriver::checkError(a2, &cf);
  v3 = *(a1 + 40);
  if (!v3 || !*(a1 + 48))
  {
    goto LABEL_20;
  }

  v4 = cf;
  if (cf && (CFRetain(cf), (v3 = *(a1 + 40)) == 0))
  {
    v5 = 0;
  }

  else
  {
    v5 = _Block_copy(v3);
  }

  v6 = *(a1 + 48);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_2;
  block[3] = &__block_descriptor_tmp_163_2;
  if (v5)
  {
    aBlock = _Block_copy(v5);
    v10 = v4;
    if (!v4)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  aBlock = 0;
  v10 = v4;
  if (v4)
  {
LABEL_11:
    CFRetain(v4);
  }

LABEL_12:
  dispatch_async(v6, block);
  if (v10)
  {
    CFRelease(v10);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }

LABEL_20:
  if (cf)
  {
    CFRelease(cf);
  }
}

void data::QMIDataCommandDriver::setLowLatencyCapability(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 1174405120;
  v6[2] = ___ZN4data20QMIDataCommandDriver23setLowLatencyCapabilityEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke;
  v6[3] = &__block_descriptor_tmp_130_0;
  v6[4] = a1;
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 8);
  aBlock = v4;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  ctu::SharedSynchronizable<data::CommandDriver>::execute_wrapped((a1 + 8), v6);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void ___ZN4data20QMIDataCommandDriver23setLowLatencyCapabilityEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke(void *a1)
{
  v2 = a1[4];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v34 = v3;
  v35 = v3;
  qmi::MutableMessageBase::MutableMessageBase(&v34);
  v4 = *(&v34 + 1);
  v5 = v35;
  v6 = *(&v34 + 1);
  if (*(&v34 + 1) != v35)
  {
    v6 = *(&v34 + 1);
    while (*(*v6 + 8) != 1)
    {
      if (++v6 == v35)
      {
        goto LABEL_10;
      }
    }
  }

  if (v6 == v35)
  {
LABEL_10:
    v10 = qmi::MutableMessageBase::createTLV<wda::tlv::abm::PeripheralEndPointID>(&v34, 1);
    v4 = *(&v34 + 1);
    v5 = v35;
    *v10 = 0x700000003;
    v9 = v4;
    if (v4 == v5)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v7 = ***v6;
    if (!v8)
    {
      goto LABEL_44;
    }

    *(v8 + 12) = 0x700000003;
    v9 = v4;
    if (v4 == v5)
    {
      goto LABEL_15;
    }
  }

  v9 = v4;
  while (*(*v9 + 8) != 17)
  {
    if (++v9 == v5)
    {
      goto LABEL_18;
    }
  }

LABEL_15:
  if (v9 != v5)
  {
    v11 = ***v9;
    if (v12)
    {
      v13 = v12 + 9;
      goto LABEL_33;
    }

LABEL_44:
    __cxa_bad_cast();
  }

LABEL_18:
  v14 = operator new(0x10uLL);
  v15 = v14;
  v14[4] = 17;
  *v14 = &unk_2A1E20128;
  if (v5 >= *(&v35 + 1))
  {
    v17 = v5 - v4;
    v18 = v5 - v4;
    v19 = v18 + 1;
    if ((v18 + 1) >> 61)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v20 = *(&v35 + 1) - v4;
    if ((*(&v35 + 1) - v4) >> 2 > v19)
    {
      v19 = v20 >> 2;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      v21 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v21 = v19;
    }

    if (v21)
    {
      if (v21 >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v22 = operator new(8 * v21);
    }

    else
    {
      v22 = 0;
    }

    v23 = &v22[8 * v18];
    *v23 = v15;
    v16 = v23 + 8;
    memcpy(v22, v4, v17);
    *(&v34 + 1) = v22;
    *&v35 = v16;
    *(&v35 + 1) = &v22[8 * v21];
    if (v4)
    {
      operator delete(v4);
    }
  }

  else
  {
    *v5 = v14;
    v16 = v5 + 1;
  }

  v13 = v15 + 9;
  *&v35 = v16;
LABEL_33:
  *v13 = 1;
  v29 = v2 + 88;
  v30 = QMIServiceMsg::create();
  v31 = 25000;
  v32 = 0;
  v33 = 0;
  v26[0] = MEMORY[0x29EDCA5F8];
  v26[1] = 1174405120;
  v26[2] = ___ZN4data20QMIDataCommandDriver23setLowLatencyCapabilityEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_4;
  v26[3] = &__block_descriptor_tmp_127_1;
  v26[4] = v2;
  v24 = a1[5];
  if (v24)
  {
    v24 = _Block_copy(v24);
  }

  v25 = a1[6];
  v27 = v24;
  object = v25;
  if (v25)
  {
    dispatch_retain(v25);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN3wda3abm13SetCapability8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE60A28;
  aBlock[4] = v26;
  v33 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v33)
  {
    _Block_release(v33);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v27)
  {
    _Block_release(v27);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v34);
}

void sub_296F9BB78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(v8 + 40);
  qmi::Client::SendProxy::~SendProxy(va);
  qmi::MutableMessageBase::~MutableMessageBase(va1);
  _Unwind_Resume(a1);
}

void sub_296F9BB9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void sub_296F9BBB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void ___ZN4data20QMIDataCommandDriver23setLowLatencyCapabilityEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_4(uint64_t a1, const qmi::ResponseBase *a2)
{
  cf = 0xAAAAAAAAAAAAAAAALL;
  data::QMIDataCommandDriver::checkError(a2, &cf);
  v3 = *(a1 + 40);
  if (!v3 || !*(a1 + 48))
  {
    goto LABEL_20;
  }

  v4 = cf;
  if (cf && (CFRetain(cf), (v3 = *(a1 + 40)) == 0))
  {
    v5 = 0;
  }

  else
  {
    v5 = _Block_copy(v3);
  }

  v6 = *(a1 + 48);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_2;
  block[3] = &__block_descriptor_tmp_163_2;
  if (v5)
  {
    aBlock = _Block_copy(v5);
    v10 = v4;
    if (!v4)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  aBlock = 0;
  v10 = v4;
  if (v4)
  {
LABEL_11:
    CFRetain(v4);
  }

LABEL_12:
  dispatch_async(v6, block);
  if (v10)
  {
    CFRelease(v10);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }

LABEL_20:
  if (cf)
  {
    CFRelease(cf);
  }
}

void std::__shared_ptr_pointer<data::QMIDataCommandDriver *,std::shared_ptr<data::QMIDataCommandDriver> ctu::SharedSynchronizable<data::CommandDriver>::make_shared_ptr<data::QMIDataCommandDriver>(data::QMIDataCommandDriver*)::{lambda(data::QMIDataCommandDriver *)#1},std::allocator<data::QMIDataCommandDriver>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<data::QMIDataCommandDriver *,std::shared_ptr<data::QMIDataCommandDriver> ctu::SharedSynchronizable<data::CommandDriver>::make_shared_ptr<data::QMIDataCommandDriver>(data::QMIDataCommandDriver*)::{lambda(data::QMIDataCommandDriver *)#1},std::allocator<data::QMIDataCommandDriver>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableIN4data13CommandDriverEE15make_shared_ptrINS1_20QMIDataCommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableIN4data13CommandDriverEE15make_shared_ptrINS1_20QMIDataCommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableIN4data13CommandDriverEE15make_shared_ptrINS1_20QMIDataCommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableIN4data13CommandDriverEE15make_shared_ptrINS1_20QMIDataCommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<data::QMIDataCommandDriver> ctu::SharedSynchronizable<data::CommandDriver>::make_shared_ptr<data::QMIDataCommandDriver>(data::QMIDataCommandDriver*)::{lambda(data::QMIDataCommandDriver*)#1}::operator() const(data::QMIDataCommandDriver*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void ctu::SharedSynchronizable<data::CommandDriver>::execute_wrapped(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (!v3 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = a1[2];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN4data13CommandDriverEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E1FC60;
  block[5] = v5;
  v12 = v7;
  p_shared_owners = &v7->__shared_owners_;
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = a2;
  dispatch_async(v8, block);
  v10 = v12;
  if (!v12 || atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }

LABEL_8:
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    return;
  }

  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_8;
  }
}

uint64_t __copy_helper_block_e8_40c49_ZTSNSt3__110shared_ptrIKN4data13CommandDriverEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c49_ZTSNSt3__110shared_ptrIKN4data13CommandDriverEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

char *qmi::MutableMessageBase::createTLV<wda::tlv::abm::PeripheralEndPointID>(void *a1, char a2)
{
  v4 = operator new(0x18uLL);
  v4[8] = a2;
  *v4 = &unk_2A1E1FCB8;
  *(v4 + 3) = 0;
  v5 = v4 + 12;
  *(v4 + 4) = 0;
  v7 = a1[2];
  v6 = a1[3];
  if (v7 >= v6)
  {
    v9 = a1[1];
    v10 = v7 - v9;
    v11 = (v7 - v9) >> 3;
    v12 = v11 + 1;
    if ((v11 + 1) >> 61)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v13 = v6 - v9;
    if (v13 >> 2 > v12)
    {
      v12 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (v14 >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v15 = v4;
      v16 = operator new(8 * v14);
      v4 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = &v16[8 * v11];
    *v17 = v4;
    v8 = v17 + 8;
    memcpy(v16, v9, v10);
    a1[1] = v16;
    a1[2] = v8;
    a1[3] = &v16[8 * v14];
    if (v9)
    {
      operator delete(v9);
    }
  }

  else
  {
    *v7 = v4;
    v8 = v7 + 8;
  }

  a1[2] = v8;
  return v5;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<wda::tlv::abm::PeripheralEndPointID>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *(v3 + 7) = *(result + 16);
  *a2 = v3 + 11;
  *v3 = v2;
  *(v3 + 1) = 8;
  return result;
}

char *qmi::MutableMessageBase::TlvWrapper<wda::tlv::abm::PeripheralEndPointID>::clone(uint64_t a1)
{
  result = operator new(0x18uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1FCB8;
  *(result + 12) = *(a1 + 12);
  return result;
}

void ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc6objectEEEclIJS5_NS6_4dictEEEEvDpT__block_invoke(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  cf = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  v4 = a1[6];
  object = v4;
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(v3 + 16))(v3, &cf, &object);
  xpc_release(object);
  object = 0;
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_296F9C24C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, const void *a10)
{
  xpc_release(object);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a10);
  _Unwind_Resume(a1);
}

xpc_object_t __copy_helper_block_e8_32c89_ZTSN8dispatch5blockIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc6objectEEEE40c38_ZTSN3ctu2cf11CFSharedRefI9__CFErrorEE48c15_ZTSN3xpc4dictE(void *a1, void *a2)
{
  v4 = a2[4];
  if (!v4)
  {
    v6 = a2[5];
    a1[4] = 0;
    a1[5] = v6;
    if (!v6)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v5 = _Block_copy(v4);
  v6 = a2[5];
  a1[4] = v5;
  a1[5] = v6;
  if (v6)
  {
LABEL_5:
    CFRetain(v6);
  }

LABEL_6:
  v7 = a2[6];
  a1[6] = v7;
  if (v7)
  {
    return xpc_retain(v7);
  }

  result = xpc_null_create();
  a1[6] = result;
  return result;
}

void __destroy_helper_block_e8_32c89_ZTSN8dispatch5blockIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc6objectEEEE40c38_ZTSN3ctu2cf11CFSharedRefI9__CFErrorEE48c15_ZTSN3xpc4dictE(uint64_t a1)
{
  xpc_release(*(a1 + 48));
  *(a1 + 48) = 0;
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    _Block_release(v3);
  }
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3wda3abm13GetDataFormat8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F9C414(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3wda3abm15GetQMAPSettings8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F9C530(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t qmi::MutableMessageBase::TlvWrapper<wda::tlv::abm::DataFlowControl>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

_WORD *qmi::MutableMessageBase::TlvWrapper<wda::tlv::abm::DataFlowControl>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[4] = *(a1 + 8);
  *result = &unk_2A1E1FD38;
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<wda::tlv::abm::InBandFlowControl>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

_WORD *qmi::MutableMessageBase::TlvWrapper<wda::tlv::abm::InBandFlowControl>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[4] = *(a1 + 8);
  *result = &unk_2A1E1FD88;
  return result;
}

void ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  cf = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  (*(v2 + 16))(v2, &cf);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_296F9C6E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3wda3abm15SetQMAPSettings8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F9C7C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t qmi::MutableMessageBase::TlvWrapper<wda::tlv::abm::DownLinkDataAggregationProtocol>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<wda::tlv::abm::DownLinkDataAggregationProtocol>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1FE08;
  *(result + 3) = *(a1 + 12);
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<wda::tlv::abm::DownLinkDataAggregationMaxDatagrams>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<wda::tlv::abm::DownLinkDataAggregationMaxDatagrams>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1FE58;
  *(result + 3) = *(a1 + 12);
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<wda::tlv::abm::DownLinkDataAggregationMaxSize>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<wda::tlv::abm::DownLinkDataAggregationMaxSize>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1FEA8;
  *(result + 3) = *(a1 + 12);
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<wda::tlv::abm::UpLinkDataAggregationProtocol>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<wda::tlv::abm::UpLinkDataAggregationProtocol>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1FEF8;
  *(result + 3) = *(a1 + 12);
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<wda::tlv::abm::UpLinkDataAggregationMaxDatagrams>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<wda::tlv::abm::UpLinkDataAggregationMaxDatagrams>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1FF48;
  *(result + 3) = *(a1 + 12);
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<wda::tlv::abm::UpLinkDataAggregationMaxSize>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<wda::tlv::abm::UpLinkDataAggregationMaxSize>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1FF98;
  *(result + 3) = *(a1 + 12);
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<wda::tlv::abm::LinkLayerProtocol>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<wda::tlv::abm::LinkLayerProtocol>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1FFE8;
  *(result + 3) = *(a1 + 12);
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<wda::tlv::abm::CoalescingInformation>::write(_BYTE *result, uint64_t *a2)
{
  v2 = result[8];
  v3 = *a2;
  *(v3 + 3) = result[9];
  *(v3 + 4) = result[10];
  *a2 = v3 + 5;
  *v3 = v2;
  *(v3 + 1) = 2;
  return result;
}

char *qmi::MutableMessageBase::TlvWrapper<wda::tlv::abm::CoalescingInformation>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E20038;
  *(result + 9) = *(a1 + 9);
  return result;
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3wda3abm13SetDataFormat8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F9CD48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t qmi::MutableMessageBase::TlvWrapper<wda::tlv::abm::DataPowerSaveConfig>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<wda::tlv::abm::DataPowerSaveConfig>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E20088;
  *(result + 3) = *(a1 + 12);
  return result;
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3wda3abm18SetPowerSaveConfig8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F9CEF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t qmi::MutableMessageBase::TlvWrapper<wda::tlv::abm::DefaultFlowRebindVersion>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<wda::tlv::abm::DefaultFlowRebindVersion>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E200D8;
  *(result + 3) = *(a1 + 12);
  return result;
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3wda3abm13SetCapability8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F9D098(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t qmi::MutableMessageBase::TlvWrapper<wda::tlv::abm::LowLatencyConfig>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

_WORD *qmi::MutableMessageBase::TlvWrapper<wda::tlv::abm::LowLatencyConfig>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[4] = *(a1 + 8);
  *result = &unk_2A1E20128;
  return result;
}

uint64_t abm::debug::registerLogHandlers(abm::debug *this)
{
  if (!_MergedGlobals_4)
  {
    this = os_log_create("com.apple.telephony.abm", "libtu");
    _MergedGlobals_4 = this;
  }

  capabilities::abs::TUDebugFlags(this);
  TelephonyUtilDebugSetFlags();
  v1 = TelephonyUtilDebugRegisterDelegate();
  v2 = capabilities::radio::ice(v1);
  if ((v2 & 1) == 0)
  {
    v3 = capabilities::radio::initium(v2);
    if ((v3 & 1) == 0)
    {
      if (capabilities::radio::maverick(v3))
      {
        if (!qword_2A18A59C8)
        {
          qword_2A18A59C8 = os_log_create("com.apple.telephony.abm", "libetl");
        }

        ETLDebugRegisterDelegate();
      }
    }
  }

  if (!qword_2A18A59D0)
  {
    qword_2A18A59D0 = os_log_create("com.apple.telephony.abm", "bbu");
  }

  return MEMORY[0x2A1C6CFB8](0, abm::debug::handleDebugPrintBBU);
}

void abm::debug::handleDebugPrintBinaryTelephonyUtil(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = "misc";
  if (!a2)
  {
    v4 = "send";
  }

  if (a2 == 1)
  {
    v5 = "recv";
  }

  else
  {
    v5 = v4;
  }

  abm::debug::handleDebugPrintBinary(0, v5, a3, a4);
}

void abm::debug::handleDebugPrintBinaryETL(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = "misc";
  if (!a2)
  {
    v4 = "send";
  }

  if (a2 == 1)
  {
    v5 = "recv";
  }

  else
  {
    v5 = v4;
  }

  abm::debug::handleDebugPrintBinary(1, v5, a3, a4);
}

uint64_t abm::debug::handleDebugPrintBBU(abm::debug *this, void *a2, const char *a3, const char *a4)
{
  v30 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v29[7] = v6;
  v29[8] = v6;
  v29[5] = v6;
  v29[6] = v6;
  v29[3] = v6;
  v29[4] = v6;
  v29[1] = v6;
  v29[2] = v6;
  v29[0] = v6;
  v27 = v6;
  v28 = v6;
  v25 = v6;
  *__p = v6;
  v23 = v6;
  v24 = v6;
  v22 = v6;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v22);
  v7 = MEMORY[0x29C268D10](&v22, a2);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ":", 1);
  v9 = strlen(a3);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, a3, v9);
  memset(__dst, 170, sizeof(__dst));
  if ((BYTE8(v28) & 0x10) != 0)
  {
    v16 = v28;
    if (v28 < *(&v25 + 1))
    {
      *&v28 = *(&v25 + 1);
      v16 = *(&v25 + 1);
    }

    v17 = v25;
    v14 = v16 - v25;
    if ((v16 - v25) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if ((BYTE8(v28) & 8) == 0)
    {
      v14 = 0;
      HIBYTE(__dst[2]) = 0;
      v15 = __dst;
      goto LABEL_15;
    }

    v17 = *(&v23 + 1);
    v14 = *(&v24 + 1) - *(&v23 + 1);
    if (*(&v24 + 1) - *(&v23 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_23:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v14 >= 0x17)
  {
    if ((v14 | 7) == 0x17)
    {
      v18 = 25;
    }

    else
    {
      v18 = (v14 | 7) + 1;
    }

    v15 = operator new(v18);
    __dst[1] = v14;
    __dst[2] = (v18 | 0x8000000000000000);
    __dst[0] = v15;
    goto LABEL_14;
  }

  HIBYTE(__dst[2]) = v14;
  v15 = __dst;
  if (v14)
  {
LABEL_14:
    v10 = memmove(v15, v17, v14);
  }

LABEL_15:
  *(v15 + v14) = 0;
  v19 = __dst;
  if (SHIBYTE(__dst[2]) < 0)
  {
    v19 = __dst[0];
  }

  abm::debug::handleDebugPrintBBUHelper(v10, v11, v12, v13, v19);
  if (SHIBYTE(__dst[2]) < 0)
  {
    operator delete(__dst[0]);
  }

  *&v22 = *MEMORY[0x29EDC9538];
  *(&v22 + *(v22 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *(&v22 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v22 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v23);
  std::ostream::~ostream();
  return MEMORY[0x29C268E60](v29);
}

void sub_296F9D584(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  if (a8 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a9, MEMORY[0x29EDC9538]);
  MEMORY[0x29C268E60](va);
  _Unwind_Resume(a1);
}

uint64_t abm::debug::handleDebugPrint(int a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v48 = *MEMORY[0x29EDCA608];
  v45 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v44[1] = v8;
  v44[2] = v8;
  v44[0] = v8;
  ctu::LogMessageBuffer::LogMessageBuffer(v44);
  if (a2 && *a2)
  {
    v9 = MEMORY[0x29C268560](v44, a2);
    MEMORY[0x29C268560](v9, ": ");
  }

  MEMORY[0x29C268380](&v42, a3, a4);
  ctu::operator<<();
  v10 = MEMORY[0x29C2683A0](&v42);
  ctu::Clock::now_in_nanoseconds(v10);
  v11 = operator new(0x60uLL);
  v12 = abm::debug::kLogDomainMap[a1];
  v13 = strlen(v12);
  if (v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v14 = v13;
  if (v13 >= 0x17)
  {
    if ((v13 | 7) == 0x17)
    {
      v16 = 25;
    }

    else
    {
      v16 = (v13 | 7) + 1;
    }

    v15 = operator new(v16);
    __p[1] = v14;
    v41 = v16 | 0x8000000000000000;
    __p[0] = v15;
    goto LABEL_12;
  }

  HIBYTE(v41) = v13;
  v15 = __p;
  if (v13)
  {
LABEL_12:
    memmove(v15, v12, v14);
  }

  *(v14 + v15) = 0;
  MEMORY[0x29C268360](v44);
  ctu::LogMessageBuffer::takeMetadata(v44);
  ctu::LogMessage::LogMessage();
  v42 = v11;
  v17 = operator new(0x20uLL);
  v17->__vftable = &unk_2A1E20180;
  v17->__shared_owners_ = 0;
  v17->__shared_weak_owners_ = 0;
  v17[1].__vftable = v11;
  v43 = v17;
  if (SHIBYTE(v41) < 0)
  {
    operator delete(__p[0]);
    v18 = v11 + 2;
    v19 = SHIBYTE(v11[2].__r_.__value_.__r.__words[2]);
    if ((v19 & 0x8000000000000000) == 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v18 = v11 + 2;
    v19 = SHIBYTE(v11[2].__r_.__value_.__r.__words[2]);
    if ((v19 & 0x8000000000000000) == 0)
    {
LABEL_15:
      data = v18;
      size = v19;
      goto LABEL_18;
    }
  }

  data = v11[2].__r_.__value_.__l.__data_;
  size = v11[2].__r_.__value_.__l.__size_;
LABEL_18:
  v22 = data + size;
  v23 = memchr(data, 10, size);
  if (v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = v22;
  }

  if (v24 == v22 || (v25 = v24 + 1, v24 + 1 == v22))
  {
    if ((v19 & 0x80) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    do
    {
      v28 = *v25;
      if (v28 != 10)
      {
        *v24++ = v28;
      }

      ++v25;
    }

    while (v25 != v22);
    LOBYTE(v19) = *(&v11[2].__r_.__value_.__s + 23);
    if ((v19 & 0x80) == 0)
    {
LABEL_24:
      v26 = v18 + v19;
      v27 = v24 - v18;
      if (v19 >= (v24 - v18))
      {
        goto LABEL_25;
      }

LABEL_32:
      std::string::__throw_out_of_range[abi:ne200100]();
    }
  }

  v30 = v11[2].__r_.__value_.__l.__data_;
  v29 = v11[2].__r_.__value_.__l.__size_;
  v26 = &v30[v29];
  v27 = v24 - v30;
  if (v29 < v24 - v30)
  {
    goto LABEL_32;
  }

LABEL_25:
  if (v26 - v24 != -1)
  {
    std::string::__erase_external_with_move(v18, v27, v26 - v24);
    goto LABEL_35;
  }

  if ((v19 & 0x80) == 0)
  {
    *(&v11[2].__r_.__value_.__s + 23) = v27 & 0x7F;
    v18->__r_.__value_.__s.__data_[v27] = 0;
LABEL_35:
    if (a1 <= 1)
    {
      goto LABEL_36;
    }

    goto LABEL_48;
  }

  v35 = v11[2].__r_.__value_.__l.__data_;
  v11[2].__r_.__value_.__l.__size_ = v27;
  v35[v27] = 0;
  if (a1 <= 1)
  {
LABEL_36:
    if (a1)
    {
      v33 = qword_2A18A59C8;
      if (qword_2A18A59C8 && os_log_type_enabled(qword_2A18A59C8, OS_LOG_TYPE_DEBUG))
      {
        v34 = &v42[2];
        if (SHIBYTE(v42[2].__r_.__value_.__r.__words[2]) < 0)
        {
          v34 = v34->__words[0];
        }

        *buf = 136315138;
        v47 = v34;
        _os_log_debug_impl(&dword_296ECF000, v33, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
      }
    }

    else
    {
      v31 = _MergedGlobals_4;
      if (_MergedGlobals_4 && os_log_type_enabled(_MergedGlobals_4, OS_LOG_TYPE_DEFAULT))
      {
        v32 = &v42[2];
        if (SHIBYTE(v42[2].__r_.__value_.__r.__words[2]) < 0)
        {
          v32 = v32->__words[0];
        }

        *buf = 136315138;
        v47 = v32;
LABEL_54:
        _os_log_impl(&dword_296ECF000, v31, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
        goto LABEL_55;
      }
    }

    goto LABEL_55;
  }

LABEL_48:
  if (a1 != 2)
  {
    v31 = qword_2A18A59D0;
    if (qword_2A18A59D0)
    {
      if (os_log_type_enabled(qword_2A18A59D0, OS_LOG_TYPE_DEFAULT))
      {
        v36 = &v42[2];
        if (SHIBYTE(v42[2].__r_.__value_.__r.__words[2]) < 0)
        {
          v36 = v36->__words[0];
        }

        *buf = 136315138;
        v47 = v36;
        goto LABEL_54;
      }
    }
  }

LABEL_55:
  v37 = v43;
  if (v43 && !atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v37->__on_zero_shared)(v37);
    std::__shared_weak_count::__release_weak(v37);
  }

  result = MEMORY[0x29C2683A0](v44);
  v39 = *MEMORY[0x29EDCA608];
  return result;
}

void std::__shared_ptr_pointer<ctu::LogMessage *,std::shared_ptr<ctu::LogMessage>::__shared_ptr_default_delete<ctu::LogMessage,ctu::LogMessage>,std::allocator<ctu::LogMessage>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<ctu::LogMessage *,std::shared_ptr<ctu::LogMessage>::__shared_ptr_default_delete<ctu::LogMessage,ctu::LogMessage>,std::allocator<ctu::LogMessage>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ctu::LogMessage *,std::shared_ptr<ctu::LogMessage>::__shared_ptr_default_delete<ctu::LogMessage,ctu::LogMessage>,std::allocator<ctu::LogMessage>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x8000000296FC34AFLL)
  {
    if (((v2 & 0x8000000296FC34AFLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000296FC34AFLL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000296FC34AFLL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void abm::debug::handleDebugPrintBinary(int a1, uint64_t a2, uint64_t a3, int a4)
{
  v18 = *MEMORY[0x29EDCA608];
  __p[1] = 0xAAAAAAAAAAAAAAAALL;
  v11 = 0xAAAAAAAAAAAAAALL;
  __p[0] = 0xAAAAAAAAAAAAAA00;
  ctu::assign();
  if (a1)
  {
    v7 = qword_2A18A59C8;
    if (qword_2A18A59C8 && os_log_type_enabled(qword_2A18A59C8, OS_LOG_TYPE_DEBUG))
    {
      v8 = __p;
      if (v11 < 0)
      {
        v8 = __p[0];
      }

      goto LABEL_14;
    }
  }

  else
  {
    v7 = _MergedGlobals_4;
    if (_MergedGlobals_4 && os_log_type_enabled(_MergedGlobals_4, OS_LOG_TYPE_DEBUG))
    {
      v8 = __p;
      if (v11 < 0)
      {
        v8 = __p[0];
      }

LABEL_14:
      *buf = 67109634;
      v13 = a4;
      v14 = 2080;
      v15 = a2;
      v16 = 2080;
      v17 = v8;
      _os_log_debug_impl(&dword_296ECF000, v7, OS_LOG_TYPE_DEBUG, "(%d) %s: %s", buf, 0x1Cu);
      if ((SHIBYTE(v11) & 0x80000000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  if (SHIBYTE(v11) < 0)
  {
LABEL_10:
    operator delete(__p[0]);
  }

LABEL_11:
  v9 = *MEMORY[0x29EDCA608];
}

void sub_296F9DD54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *GetOsLogContext(void)
{
  if ((atomic_load_explicit(&qword_2A18A59E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18A59E0))
  {
    qword_2A18A59E8 = 0;
    unk_2A18A59F0 = 0;
    __cxa_guard_release(&qword_2A18A59E0);
  }

  if (_MergedGlobals_5 != -1)
  {
    dispatch_once(&_MergedGlobals_5, &__block_literal_global_3);
  }

  return &qword_2A18A59E8;
}

void ___Z15GetOsLogContextv_block_invoke()
{
  ctu::OsLogContext::OsLogContext(v0, "com.apple.telephony.abm", "global");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v0);
}

char *apps::tlv::abm::parseField(tlv *a1, const unsigned __int8 *a2, _DWORD *a3)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  return a1 + 4;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  return a1 + 4;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  return a1 + 4;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  return a1 + 4;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  return a1 + 4;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  return a1 + 4;
}

_BYTE *apps::tlv::abm::writeField(_BYTE *a1, _DWORD *a2)
{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

uint64_t apps::tlv::abm::getFieldSize()
{
  return 1;
}

{
  return 1;
}

{
  return 4;
}

{
  return 1;
}

{
  return 4;
}

{
  return 4;
}

{
  return 4;
}

{
  return 4;
}

{
  return 4;
}

uint64_t tlv::parseV<apps::tlv::abm::WakeReason>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296F9DF14(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<apps::tlv::abm::WakeReason>(_BYTE **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<apps::tlv::abm::ChannelID>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296F9DFD4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<apps::tlv::abm::ChannelID>(_BYTE **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

_DWORD *apps::tlv::abm::writeField(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

uint64_t tlv::parseV<apps::tlv::abm::WakeBufferLength>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

uint64_t sub_296F9E094(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<apps::tlv::abm::WakeBufferLength>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

char *apps::tlv::abm::parseField(char *__src, char *a2, void *a3)
{
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a3, __src, a2, a2 - __src);
  return a2;
}

{
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a3, __src, a2, a2 - __src);
  return a2;
}

char *apps::tlv::abm::writeField(char *a1, uint64_t a2)
{
  memcpy(a1, *a2, *(a2 + 8) - *a2);
  return &a1[*(a2 + 8) - *a2];
}

{
  memcpy(a1, *a2, *(a2 + 8) - *a2);
  return &a1[*(a2 + 8) - *a2];
}

uint64_t apps::tlv::abm::getFieldSize(void *a1)
{
  return a1[1] - *a1;
}

{
  return a1[1] - *a1;
}

void *tlv::parseV<apps::tlv::abm::WakeBuffer>@<X0>(char **a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = &(*a1)[a2];
  result = std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a3, *a1, v4, a2);
  *a1 = v4;
  return result;
}

void sub_296F9E1A4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296F9E194);
}

void sub_296F9E1B4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *tlv::writeV<apps::tlv::abm::WakeBuffer>(void **a1, uint64_t a2)
{
  v4 = *a1;
  result = memcpy(*a1, *a2, *(a2 + 8) - *a2);
  *a1 = &v4[*(a2 + 8) - *a2];
  return result;
}

char *apps::tlv::abm::parseField(tlv *a1, const unsigned __int8 *a2, _BYTE *a3)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

uint64_t tlv::parseV<apps::tlv::abm::Level>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296F9E2BC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<apps::tlv::abm::Level>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t apps::tlv::abm::parseField(apps::tlv::abm *this, const unsigned __int8 *a2, unsigned __int8 *a3, Size *a4)
{
  tlv::throwIfNotEnoughBytes(this, a2, 2);
  *a3 = *this;
  return this + 2;
}

uint64_t tlv::parseV<apps::tlv::abm::Size>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2);
  result = *v3;
  *a1 = (v3 + 2);
  return result;
}

uint64_t sub_296F9E37C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_WORD **tlv::writeV<apps::tlv::abm::Size>(_WORD **result, _WORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

void *tlv::parseV<apps::tlv::abm::LogData>@<X0>(char **a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = &(*a1)[a2];
  result = std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a3, *a1, v4, a2);
  *a1 = v4;
  return result;
}

void sub_296F9E48C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296F9E47CLL);
}

void sub_296F9E49C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *tlv::writeV<apps::tlv::abm::LogData>(void **a1, uint64_t a2)
{
  v4 = *a1;
  result = memcpy(*a1, *a2, *(a2 + 8) - *a2);
  *a1 = &v4[*(a2 + 8) - *a2];
  return result;
}

uint64_t tlv::parseV<apps::tlv::abm::length>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

uint64_t sub_296F9E5A4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<apps::tlv::abm::length>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<apps::tlv::abm::blockSize>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

uint64_t sub_296F9E664(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<apps::tlv::abm::blockSize>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<apps::tlv::abm::MHIBufferSize>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

uint64_t sub_296F9E724(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<apps::tlv::abm::MHIBufferSize>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<apps::tlv::abm::PCIeBufferSize>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

uint64_t sub_296F9E7E4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<apps::tlv::abm::PCIeBufferSize>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<apps::tlv::abm::IPABufferSize>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

uint64_t sub_296F9E8A4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<apps::tlv::abm::IPABufferSize>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

char *mfse::parseField(tlv *a1, const unsigned __int8 *a2, _DWORD *a3)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  return a1 + 4;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  return a1 + 4;
}

_DWORD *mfse::writeField(_DWORD *a1, int a2)
{
  *a1 = a2;
  return a1 + 1;
}

{
  *a1 = a2;
  return a1 + 1;
}

uint64_t mfse::getFieldSize()
{
  return 4;
}

{
  return 4;
}

char *mfse::tlv::abm::parseField(tlv *a1, const unsigned __int8 *a2, _DWORD *a3)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  return a1 + 4;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  return a1 + 4;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  return a1 + 4;
}

_DWORD *mfse::tlv::abm::writeField(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

uint64_t mfse::tlv::abm::getFieldSize()
{
  return 4;
}

{
  return 4;
}

{
  return 4;
}

{
  return 1;
}

uint64_t tlv::parseV<mfse::tlv::abm::FileSystem>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

uint64_t sub_296F9E9F4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<mfse::tlv::abm::FileSystem>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<mfse::tlv::abm::Token>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

uint64_t sub_296F9EAB4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<mfse::tlv::abm::Token>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<mfse::tlv::abm::ErrorNumber>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

uint64_t sub_296F9EB74(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<mfse::tlv::abm::ErrorNumber>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

char *mfse::tlv::abm::parseField(tlv *a1, const unsigned __int8 *a2, BOOL *a3)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1 != 0;
  return a1 + 1;
}

BOOL tlv::parseV<mfse::tlv::abm::ResetAfterSync>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3 != 0;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296F9EC44(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<mfse::tlv::abm::ResetAfterSync>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

char *bsp::tlv::abm::parseField(tlv *a1, const unsigned __int8 *a2, _BYTE *a3)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

_BYTE *bsp::tlv::abm::writeField(_BYTE *a1, _BYTE *a2)
{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  a1[5] = a2[5];
  a1[6] = a2[6];
  a1[7] = a2[7];
  a1[8] = a2[8];
  a1[9] = a2[9];
  a1[10] = a2[10];
  a1[11] = a2[11];
  return a1 + 12;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  a1[1] = a2[1];
  return a1 + 2;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

uint64_t bsp::tlv::abm::getFieldSize()
{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 13;
}

{
  return 4;
}

{
  return 8;
}

{
  return 16;
}

{
  return 2;
}

{
  return 8;
}

{
  return 12;
}

{
  return 4;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 4;
}

{
  return 8;
}

{
  return 8;
}

{
  return 8;
}

{
  return 16;
}

{
  return 1;
}

{
  return 13;
}

{
  return 1;
}

{
  return 1;
}

{
  return 8;
}

{
  return 2;
}

{
  return 2;
}

{
  return 8;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 4;
}

{
  return 4;
}

{
  return 1;
}

{
  return 2;
}

{
  return 4;
}

{
  return 1;
}

{
  return 1;
}

{
  return 4;
}

{
  return 20;
}

{
  return 2;
}

{
  return 10;
}

{
  return 14;
}

{
  return 22;
}

{
  return 6;
}

{
  return 1;
}

{
  return 1;
}

{
  return 4;
}

{
  return 1;
}

{
  return 1;
}

{
  return 6;
}

{
  return 10;
}

{
  return 2;
}

{
  return 2;
}

{
  return 6;
}

{
  return 6;
}

{
  return 14;
}

{
  return 22;
}

{
  return 2;
}

{
  return 28;
}

{
  return 46;
}

{
  return 12;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 2;
}

{
  return 2;
}

{
  return 4;
}

{
  return 1;
}

{
  return 1;
}

{
  return 4;
}

{
  return 1;
}

{
  return 2;
}

{
  return 2;
}

{
  return 2;
}

{
  return 2;
}

{
  return 4;
}

{
  return 2;
}

{
  return 4;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 2;
}

{
  return 2;
}

{
  return 2;
}

{
  return 2;
}

{
  return 2;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 4;
}

{
  return 1;
}

{
  return 4;
}

{
  return 1;
}

{
  return 1;
}

{
  return 2;
}

{
  return 2;
}

{
  return 2;
}

{
  return 2;
}

{
  return 2;
}

{
  return 2;
}

{
  return 2;
}

{
  return 2;
}

{
  return 4;
}

{
  return 4;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 2;
}

{
  return 2;
}

{
  return 5;
}

{
  return 5;
}

{
  return 5;
}

{
  return 2;
}

{
  return 1;
}

{
  return 4;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

uint64_t tlv::parseV<bsp::tlv::abm::LogCollectionType>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296F9ED04(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<bsp::tlv::abm::LogCollectionType>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

char *bsp::tlv::abm::parseField(tlv *a1, const unsigned __int8 *a2, BOOL *a3)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1 != 0;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1 != 0;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1 != 0;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1 != 0;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1 != 0;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1 != 0;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1 != 0;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1 != 0;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1 != 0;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1 != 0;
  return a1 + 1;
}

BOOL tlv::parseV<bsp::tlv::abm::LogCollectionState>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3 != 0;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296F9EDD4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<bsp::tlv::abm::LogCollectionState>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

char *bsp::tlv::abm::parseField(char *__src, char *a2, void *a3)
{
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a3, __src, a2, a2 - __src);
  return a2;
}

{
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a3, __src, a2, a2 - __src);
  return a2;
}

{
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a3, __src, a2, a2 - __src);
  return a2;
}

{
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a3, __src, a2, a2 - __src);
  return a2;
}

{
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a3, __src, a2, a2 - __src);
  return a2;
}

{
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a3, __src, a2, a2 - __src);
  return a2;
}

{
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a3, __src, a2, a2 - __src);
  return a2;
}

{
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a3, __src, a2, a2 - __src);
  return a2;
}

{
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a3, __src, a2, a2 - __src);
  return a2;
}

{
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a3, __src, a2, a2 - __src);
  return a2;
}

{
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a3, __src, a2, a2 - __src);
  return a2;
}

{
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a3, __src, a2, a2 - __src);
  return a2;
}

{
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a3, __src, a2, a2 - __src);
  return a2;
}

char *bsp::tlv::abm::writeField(char *a1, uint64_t a2)
{
  memcpy(a1, *a2, *(a2 + 8) - *a2);
  return &a1[*(a2 + 8) - *a2];
}

{
  memcpy(a1, *a2, *(a2 + 8) - *a2);
  return &a1[*(a2 + 8) - *a2];
}

{
  memcpy(a1, *a2, *(a2 + 8) - *a2);
  return &a1[*(a2 + 8) - *a2];
}

{
  memcpy(a1, *a2, *(a2 + 8) - *a2);
  return &a1[*(a2 + 8) - *a2];
}

{
  memcpy(a1, *a2, *(a2 + 8) - *a2);
  return &a1[*(a2 + 8) - *a2];
}

{
  memcpy(a1, *a2, *(a2 + 8) - *a2);
  return &a1[*(a2 + 8) - *a2];
}

{
  memcpy(a1, *a2, *(a2 + 8) - *a2);
  return &a1[*(a2 + 8) - *a2];
}

{
  memcpy(a1, *a2, *(a2 + 8) - *a2);
  return &a1[*(a2 + 8) - *a2];
}

{
  memcpy(a1, *a2, *(a2 + 8) - *a2);
  return &a1[*(a2 + 8) - *a2];
}

{
  memcpy(a1, *a2, *(a2 + 8) - *a2);
  return &a1[*(a2 + 8) - *a2];
}

{
  memcpy(a1, *a2, *(a2 + 8) - *a2);
  return &a1[*(a2 + 8) - *a2];
}

{
  memcpy(a1, *a2, *(a2 + 8) - *a2);
  return &a1[*(a2 + 8) - *a2];
}

{
  memcpy(a1, *a2, *(a2 + 8) - *a2);
  return &a1[*(a2 + 8) - *a2];
}

uint64_t bsp::tlv::abm::getFieldSize(void *a1)
{
  return a1[1] - *a1;
}

{
  return a1[1] - *a1;
}

{
  return a1[1] - *a1;
}

{
  return a1[1] - *a1;
}

{
  return a1[1] - *a1;
}

{
  return a1[1] - *a1;
}

{
  return a1[1] - *a1 + 2;
}

{
  return a1[1] - *a1 + 2;
}

{
  return a1[1] - *a1;
}

{
  return a1[1] - *a1;
}

{
  return a1[1] - *a1;
}

{
  return a1[1] - *a1;
}

{
  return a1[1] - *a1;
}

{
  return a1[1] - *a1;
}

{
  v1 = a1[1];
  if (v1 == *a1)
  {
    return 0;
  }

  else
  {
    return v1 - *a1;
  }
}

{
  return a1[1] - *a1;
}

{
  v1 = a1[1];
  if (v1 == *a1)
  {
    return 1;
  }

  else
  {
    return (v1 - *a1) | 1;
  }
}

void *tlv::parseV<bsp::tlv::abm::LogDataBuff>@<X0>(char **a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = &(*a1)[a2];
  result = std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a3, *a1, v4, a2);
  *a1 = v4;
  return result;
}

void sub_296F9EEE4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296F9EED4);
}

void sub_296F9EEF4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *tlv::writeV<bsp::tlv::abm::LogDataBuff>(void **a1, uint64_t a2)
{
  v4 = *a1;
  result = memcpy(*a1, *a2, *(a2 + 8) - *a2);
  *a1 = &v4[*(a2 + 8) - *a2];
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::EndOfLog>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296F9EFFC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<bsp::tlv::abm::EndOfLog>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

char *ssctl::tlv::abm::parseField(tlv *a1, const unsigned __int8 *a2, void **a3)
{
  v5 = a1;
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  v6 = *v5;
  v5 = (v5 + 1);
  tlv::throwIfNotEnoughBytes(v5, a2, v6);
  std::string::__assign_trivial[abi:ne200100]<unsigned char const*,unsigned char const*>(a3, v5, v5 + v6, v6);
  return v5 + v6;
}

{
  v5 = a1;
  tlv::throwIfNotEnoughBytes(a1, a2, 2);
  v6 = *v5;
  v5 = (v5 + 2);
  tlv::throwIfNotEnoughBytes(v5, a2, v6);
  std::string::__assign_trivial[abi:ne200100]<unsigned char const*,unsigned char const*>(a3, v5, v5 + v6, v6);
  return v5 + v6;
}

_BYTE *ssctl::tlv::abm::writeField(_BYTE *a1, _BYTE *a2)
{
  v2 = a2;
  LOBYTE(v3) = a2[23];
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 1);
  }

  *a1 = v3;
  v4 = a1 + 1;
  v5 = *(a2 + 1);
  if (a2[23] >= 0)
  {
    v6 = a2[23];
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  memcpy(a1 + 1, a2, v6);
  v7 = v2[23];
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(v2 + 1);
  }

  return &v4[v7];
}

uint64_t ssctl::tlv::abm::getFieldSize(uint64_t a1)
{
  v1 = *(a1 + 23);
  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 8);
  }

  return v1 + 1;
}

{
  v1 = *(a1 + 23);
  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 8);
  }

  return v1 + 2;
}

void tlv::parseV<ssctl::tlv::abm::ErrorMessage>(tlv **a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v5 = *a1;
  v6 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v6, 1);
  v7 = *v5;
  v5 = (v5 + 1);
  tlv::throwIfNotEnoughBytes(v5, v6, v7);
  std::string::__assign_trivial[abi:ne200100]<unsigned char const*,unsigned char const*>(a3, v5, v5 + v7, v7);
  *a1 = (v5 + v7);
}

void sub_296F9F1AC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296F9F198);
}

void sub_296F9F1BC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t tlv::size<ssctl::tlv::abm::ErrorMessage>(uint64_t a1)
{
  v1 = *(a1 + 23);
  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 8);
  }

  return v1 + 4;
}

void *tlv::writeV<ssctl::tlv::abm::ErrorMessage>(_BYTE **a1, _BYTE *a2)
{
  v2 = a2;
  v4 = *a1;
  LOBYTE(v5) = a2[23];
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 1);
  }

  *v4 = v5;
  v6 = v4 + 1;
  v7 = *(a2 + 1);
  if (a2[23] >= 0)
  {
    v8 = a2[23];
  }

  else
  {
    a2 = *a2;
    v8 = v7;
  }

  result = memcpy(v6, a2, v8);
  v10 = v2[23];
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(v2 + 1);
  }

  *a1 = &v6[v10];
  return result;
}

char *ssctl::tlv::abm::writeField(_WORD *a1, void *a2)
{
  v2 = a2;
  LOWORD(v3) = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  *a1 = v3;
  v4 = a1 + 1;
  v5 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  memcpy(a1 + 1, a2, v6);
  v7 = *(v2 + 23);
  if ((v7 & 0x80u) != 0)
  {
    v7 = v2[1];
  }

  return v4 + v7;
}

void tlv::parseV<ssctl::tlv::abm::ExtendedErrorMessage>(tlv **a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v5 = *a1;
  v6 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v6, 2);
  v7 = *v5;
  v5 = (v5 + 2);
  tlv::throwIfNotEnoughBytes(v5, v6, v7);
  std::string::__assign_trivial[abi:ne200100]<unsigned char const*,unsigned char const*>(a3, v5, v5 + v7, v7);
  *a1 = (v5 + v7);
}

void sub_296F9F3F0(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296F9F3DCLL);
}

void sub_296F9F400(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t tlv::size<ssctl::tlv::abm::ExtendedErrorMessage>(uint64_t a1)
{
  v1 = *(a1 + 23);
  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 8);
  }

  return v1 + 5;
}

void *tlv::writeV<ssctl::tlv::abm::ExtendedErrorMessage>(_WORD **a1, void *a2)
{
  v2 = a2;
  v4 = *a1;
  LOWORD(v5) = *(a2 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = a2[1];
  }

  *v4 = v5;
  v6 = (v4 + 1);
  v7 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v8 = v7;
  }

  result = memcpy(v6, a2, v8);
  v10 = *(v2 + 23);
  if ((v10 & 0x80u) != 0)
  {
    v10 = v2[1];
  }

  *a1 = &v6[v10];
  return result;
}

tlv *ssctl::tlv::abm::parseField(tlv *a1, const unsigned __int8 *a2, uint64_t a3)
{
  v3 = a1;
  if (a1 >= a2)
  {
    return a1;
  }

  do
  {
    v11 = *(a3 + 8);
    if (v11 >= *(a3 + 16))
    {
      v6 = std::vector<ssctl::tlv::abm::ErrorMessage>::__emplace_back_slow_path<>(a3);
    }

    else
    {
      *v11 = 0;
      v11[1] = 0;
      v6 = (v11 + 3);
      v11[2] = 0;
    }

    *(a3 + 8) = v6;
    v7 = v6 - 3;
    tlv::throwIfNotEnoughBytes(v3, a2, 1);
    v9 = *v3;
    v8 = (v3 + 1);
    tlv::throwIfNotEnoughBytes(v8, a2, v9);
    std::string::__assign_trivial[abi:ne200100]<unsigned char const*,unsigned char const*>(v7, v8, v8 + v9, v9);
    v3 = (v8 + v9);
    v10 = v3;
  }

  while (v3 < a2);
  return v10;
}

{
  v3 = a1;
  if (a1 >= a2)
  {
    return a1;
  }

  do
  {
    v11 = *(a3 + 8);
    if (v11 >= *(a3 + 16))
    {
      v6 = std::vector<ssctl::tlv::abm::ErrorMessage>::__emplace_back_slow_path<>(a3);
    }

    else
    {
      *v11 = 0;
      v11[1] = 0;
      v6 = (v11 + 3);
      v11[2] = 0;
    }

    *(a3 + 8) = v6;
    v7 = v6 - 3;
    tlv::throwIfNotEnoughBytes(v3, a2, 2);
    v9 = *v3;
    v8 = (v3 + 2);
    tlv::throwIfNotEnoughBytes(v8, a2, v9);
    std::string::__assign_trivial[abi:ne200100]<unsigned char const*,unsigned char const*>(v7, v8, v8 + v9, v9);
    v3 = (v8 + v9);
    v10 = v3;
  }

  while (v3 < a2);
  return v10;
}

char *ssctl::tlv::abm::writeField(char *a1, const void ***a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    do
    {
      LOBYTE(v5) = *(v3 + 23);
      if (v5 < 0)
      {
        v5 = v3[1];
      }

      *a1 = v5;
      v6 = a1 + 1;
      v7 = *(v3 + 23);
      if (v7 >= 0)
      {
        v8 = v3;
      }

      else
      {
        v8 = *v3;
      }

      if (v7 >= 0)
      {
        v9 = *(v3 + 23);
      }

      else
      {
        v9 = v3[1];
      }

      memcpy(v6, v8, v9);
      v10 = *(v3 + 23);
      if (v10 < 0)
      {
        v10 = v3[1];
      }

      a1 = &v10[v6];
      v3 += 3;
    }

    while (v3 != v4);
  }

  return a1;
}

{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    do
    {
      LOWORD(v5) = *(v3 + 23);
      if (v5 < 0)
      {
        v5 = v3[1];
      }

      *a1 = v5;
      v6 = a1 + 2;
      v7 = *(v3 + 23);
      if (v7 >= 0)
      {
        v8 = v3;
      }

      else
      {
        v8 = *v3;
      }

      if (v7 >= 0)
      {
        v9 = *(v3 + 23);
      }

      else
      {
        v9 = v3[1];
      }

      memcpy(v6, v8, v9);
      v10 = *(v3 + 23);
      if (v10 < 0)
      {
        v10 = v3[1];
      }

      a1 = &v10[v6];
      v3 += 3;
    }

    while (v3 != v4);
  }

  return a1;
}

uint64_t ssctl::tlv::abm::getFieldSize(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 0;
  }

  v3 = v1 - v2 - 24;
  if (v3 < 0x60)
  {
    result = 0;
    v5 = v2;
    goto LABEL_18;
  }

  v6 = v3 / 0x18;
  v7 = v3 / 0x18 + 1;
  if (v3 < 0x180)
  {
    result = 0;
    v8 = 0;
LABEL_13:
    v68 = v7 & 3;
    if ((v7 & 3) == 0)
    {
      v68 = 4;
    }

    v5 = v2 + 24 * (v7 - v68);
    v69 = 0uLL;
    v70 = result;
    v71 = ~v6 + v8 + v68;
    v72 = (v2 + 24 * v8 + 47);
    v73.i64[0] = 255;
    v73.i64[1] = 255;
    do
    {
      v74.i16[0] = *(v72 - 24);
      v74.i16[1] = *v72;
      v74.i16[2] = v72[24];
      v74.i16[3] = v72[48];
      v75 = (v72 - 39);
      v76 = (v72 + 9);
      v77 = vld3q_f64(v75);
      v78 = vld3q_f64(v76);
      v79 = vmovl_u16(vcltz_s16(vshr_n_s16(vshl_n_s16(v74, 8uLL), 8uLL)));
      v80.i64[0] = v79.u32[0];
      v80.i64[1] = v79.u32[1];
      v81 = vshrq_n_s64(vshlq_n_s64(v80, 0x38uLL), 0x38uLL);
      v80.i64[0] = v79.u32[2];
      v80.i64[1] = v79.u32[3];
      v82 = vshrq_n_s64(vshlq_n_s64(v80, 0x38uLL), 0x38uLL);
      v80.i64[0] = v72[24];
      v80.i64[1] = v72[48];
      v83 = vbicq_s8(v80, v82);
      v80.i64[0] = *(v72 - 24);
      v80.i64[1] = *v72;
      v69 = vsubq_s64(vorrq_s8(vandq_s8(v78, v82), vandq_s8(v83, v73)), vmvnq_s8(v69));
      v70 = vsubq_s64(vorrq_s8(vandq_s8(v77, v81), vandq_s8(vbicq_s8(v80, v81), v73)), vmvnq_s8(v70));
      v72 += 96;
      v71 += 4;
    }

    while (v71);
    result = vaddvq_s64(vaddq_s64(v70, v69));
    goto LABEL_18;
  }

  v9 = 16;
  v10 = 0uLL;
  v11 = 0uLL;
  if ((v7 & 0xF) != 0)
  {
    v9 = v7 & 0xF;
  }

  v8 = v7 - v9;
  v12 = (v2 + 191);
  v13 = v7 - v9;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  v18 = 0uLL;
  v19 = 0uLL;
  do
  {
    v85 = v15;
    v86 = v17;
    v20.i8[0] = *(v12 - 168);
    v21.i8[0] = v20.i8[0];
    v21.i8[1] = *(v12 - 144);
    v21.i8[2] = *(v12 - 120);
    v21.i8[3] = *(v12 - 96);
    v21.i8[4] = *(v12 - 72);
    v21.i8[5] = *(v12 - 48);
    v21.i8[6] = *(v12 - 24);
    v21.i8[7] = *v12;
    v21.i8[8] = v12[24];
    v21.i8[9] = v12[48];
    v22 = (v12 - 183);
    v23 = (v12 - 135);
    v24 = (v12 - 87);
    v25 = (v12 + 9);
    v26 = vld3q_f64(v22);
    v27 = vld3q_f64(v23);
    v28 = vld3q_f64(v24);
    v29 = vld3q_f64(v25);
    v21.i8[10] = v12[72];
    v21.i8[11] = v12[96];
    v21.i8[12] = v12[120];
    v30.i32[0] = v21.i32[2];
    v21.i8[13] = v12[144];
    v21.i8[14] = v12[168];
    v30.i16[2] = v21.i16[6];
    v21.i8[15] = v12[192];
    v30.i16[3] = v21.i16[7];
    v31 = vcltzq_s8(v21);
    v32 = vmovl_high_s8(v31);
    v20.i8[1] = *(v12 - 144);
    v20.i8[2] = *(v12 - 120);
    v33 = vmovl_s8(*v31.i8);
    v34 = vmovl_s16(*v32.i8);
    v20.i8[3] = *(v12 - 96);
    v20.i8[4] = *(v12 - 72);
    v35 = vmovl_s16(*v33.i8);
    v36 = vmovl_u8(v30);
    v20.i8[5] = *(v12 - 48);
    v20.i8[6] = *(v12 - 24);
    v37.i64[0] = v34.i32[0];
    v37.i64[1] = v34.i32[1];
    v38 = v37;
    v20.i8[7] = *v12;
    v39 = vmovl_u8(v20);
    v40 = vmovl_u16(*v39.i8);
    v37.i64[0] = v40.u32[0];
    v37.i64[1] = v40.u32[1];
    v41 = v37;
    v37.i64[0] = v35.i32[0];
    v37.i64[1] = v35.i32[1];
    v42 = vbslq_s8(v37, v26, v41);
    v43 = vmovl_u16(*v36.i8);
    v37.i64[0] = v43.u32[0];
    v37.i64[1] = v43.u32[1];
    v44 = (v12 + 57);
    v45 = (v12 + 105);
    v46 = vbslq_s8(v38, v29, v37);
    v47 = vld3q_f64(v44);
    v48 = vld3q_f64(v45);
    v37.i64[0] = v35.i32[2];
    v37.i64[1] = v35.i32[3];
    v49 = v37;
    v37.i64[0] = v40.u32[2];
    v37.i64[1] = v40.u32[3];
    v50 = vbslq_s8(v49, v27, v37);
    v51 = vmovl_high_s16(v33);
    v52 = vmovl_high_u16(v39);
    v37.i64[0] = v51.i32[0];
    v37.i64[1] = v51.i32[1];
    v53 = v37;
    v37.i64[0] = v52.u32[0];
    v37.i64[1] = v52.u32[1];
    v54 = vbslq_s8(v53, v28, v37);
    v55 = vmovl_high_s16(v32);
    v37.i64[0] = v34.i32[2];
    v37.i64[1] = v34.i32[3];
    v56 = v37;
    v37.i64[0] = v43.u32[2];
    v37.i64[1] = v43.u32[3];
    v57 = vbslq_s8(v56, v47, v37);
    v37.i64[0] = v55.i32[0];
    v37.i64[1] = v55.i32[1];
    v58 = v37;
    v59 = (v12 - 39);
    v60 = (v12 + 153);
    v61 = vmovl_high_u16(v36);
    v37.i64[0] = v61.u32[0];
    v37.i64[1] = v61.u32[1];
    v62 = vbslq_s8(v58, v48, v37);
    v63 = vld3q_f64(v59);
    v64 = vld3q_f64(v60);
    v37.i64[0] = v51.i32[2];
    v37.i64[1] = v51.i32[3];
    v65 = v37;
    v37.i64[0] = v52.u32[2];
    v37.i64[1] = v52.u32[3];
    v66 = vbslq_s8(v65, v63, v37);
    v37.i64[0] = v55.i32[2];
    v37.i64[1] = v55.i32[3];
    v67 = v37;
    v37.i64[0] = v61.u32[2];
    v37.i64[1] = v61.u32[3];
    v19 = vsubq_s64(vbslq_s8(v67, v64, v37), vmvnq_s8(v19));
    v15 = vsubq_s64(v66, vmvnq_s8(v85));
    v18 = vsubq_s64(v62, vmvnq_s8(v18));
    v17 = vsubq_s64(v57, vmvnq_s8(v86));
    v14 = vsubq_s64(v54, vmvnq_s8(v14));
    v11 = vsubq_s64(v50, vmvnq_s8(v11));
    v16 = vsubq_s64(v46, vmvnq_s8(v16));
    v10 = vsubq_s64(v42, vmvnq_s8(v10));
    v12 += 384;
    v13 -= 16;
  }

  while (v13);
  result = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v10, v16), vaddq_s64(v14, v18)), vaddq_s64(vaddq_s64(v11, v17), vaddq_s64(v15, v19))));
  if (v9 >= 5)
  {
    goto LABEL_13;
  }

  v5 = v2 + 24 * v8;
  do
  {
LABEL_18:
    v84 = *(v5 + 23);
    if ((v84 & 0x80u) != 0)
    {
      v84 = *(v5 + 8);
    }

    result += v84 + 1;
    v5 += 24;
  }

  while (v5 != v1);
  return result;
}

{
  v2 = *a1;
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 0;
  }

  v3 = v1 - v2 - 24;
  if (v3 < 0x60)
  {
    result = 0;
    v5 = v2;
    goto LABEL_18;
  }

  v6 = v3 / 0x18;
  v7 = v3 / 0x18 + 1;
  if (v3 < 0x180)
  {
    result = 0;
    v8 = 0;
LABEL_13:
    v70 = v7 & 3;
    if ((v7 & 3) == 0)
    {
      v70 = 4;
    }

    v5 = v2 + 24 * (v7 - v70);
    v71 = 0uLL;
    v72 = result;
    v73 = ~v6 + v8 + v70;
    v74 = (v2 + 24 * v8 + 47);
    v75.i64[0] = 255;
    v75.i64[1] = 255;
    v76 = vdupq_n_s64(2uLL);
    do
    {
      v77.i16[0] = *(v74 - 24);
      v77.i16[1] = *v74;
      v77.i16[2] = v74[24];
      v77.i16[3] = v74[48];
      v78 = (v74 - 39);
      v79 = (v74 + 9);
      v80 = vld3q_f64(v78);
      v81 = vld3q_f64(v79);
      v82 = vmovl_u16(vcltz_s16(vshr_n_s16(vshl_n_s16(v77, 8uLL), 8uLL)));
      v83.i64[0] = v82.u32[2];
      v83.i64[1] = v82.u32[3];
      v84 = vshrq_n_s64(vshlq_n_s64(v83, 0x38uLL), 0x38uLL);
      v83.i64[0] = v82.u32[0];
      v83.i64[1] = v82.u32[1];
      v85 = vshlq_n_s64(v83, 0x38uLL);
      v83.i64[0] = *(v74 - 24);
      v83.i64[1] = *v74;
      v86 = vshrq_n_s64(v85, 0x38uLL);
      v87 = vbicq_s8(v83, v86);
      v83.i64[0] = v74[24];
      v83.i64[1] = v74[48];
      v71 = vaddq_s64(vaddq_s64(v71, v76), vorrq_s8(vandq_s8(v81, v84), vandq_s8(vbicq_s8(v83, v84), v75)));
      v72 = vaddq_s64(vaddq_s64(v72, v76), vorrq_s8(vandq_s8(v80, v86), vandq_s8(v87, v75)));
      v74 += 96;
      v73 += 4;
    }

    while (v73);
    result = vaddvq_s64(vaddq_s64(v72, v71));
    goto LABEL_18;
  }

  v9 = 16;
  v10 = vdupq_n_s64(2uLL);
  v11 = 0uLL;
  v12 = 0uLL;
  if ((v7 & 0xF) != 0)
  {
    v9 = v7 & 0xF;
  }

  v8 = v7 - v9;
  v13 = (v2 + 191);
  v14 = v7 - v9;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  v18 = 0uLL;
  v19 = 0uLL;
  v20 = 0uLL;
  do
  {
    v89 = v12;
    v21.i8[0] = *(v13 - 168);
    v22.i8[0] = v21.i8[0];
    v22.i8[1] = *(v13 - 144);
    v22.i8[2] = *(v13 - 120);
    v22.i8[3] = *(v13 - 96);
    v22.i8[4] = *(v13 - 72);
    v22.i8[5] = *(v13 - 48);
    v22.i8[6] = *(v13 - 24);
    v22.i8[7] = *v13;
    v22.i8[8] = v13[24];
    v23 = (v13 - 135);
    v24 = (v13 - 87);
    v25 = (v13 - 39);
    v26 = (v13 + 153);
    v27 = vld3q_f64(v23);
    v28 = vld3q_f64(v24);
    v29 = vld3q_f64(v25);
    v30 = vld3q_f64(v26);
    v22.i8[9] = v13[48];
    v22.i8[10] = v13[72];
    v22.i8[11] = v13[96];
    v22.i8[12] = v13[120];
    v21.i8[1] = v22.i8[1];
    v22.i8[13] = v13[144];
    v21.i16[1] = v22.i16[1];
    v22.i8[14] = v13[168];
    v21.i16[2] = v22.i16[2];
    v22.i8[15] = v13[192];
    v31 = vcltzq_s8(v22);
    v21.i8[6] = v22.i8[6];
    v21.i8[7] = *v13;
    v32 = vmovl_s8(*v31.i8);
    v33.i8[0] = v13[24];
    v33.i8[1] = v13[48];
    v33.i8[2] = v13[72];
    v34 = vmovl_high_s8(v31);
    v35 = vmovl_high_s16(v32);
    v33.i8[3] = v13[96];
    v33.i8[4] = v13[120];
    v36 = vmovl_high_s16(v34);
    v37 = vmovl_u8(v21);
    v33.i8[5] = v13[144];
    v33.i8[6] = v13[168];
    v38.i64[0] = v35.i32[2];
    v38.i64[1] = v35.i32[3];
    v39 = v38;
    v33.i8[7] = v13[192];
    v40 = vmovl_u8(v33);
    v41 = vmovl_high_u16(v40);
    v38.i64[0] = v41.u32[2];
    v38.i64[1] = v41.u32[3];
    v42 = v38;
    v38.i64[0] = v36.i32[2];
    v38.i64[1] = v36.i32[3];
    v43 = vbslq_s8(v38, v30, v42);
    v44 = vmovl_high_u16(v37);
    v38.i64[0] = v44.u32[2];
    v38.i64[1] = v44.u32[3];
    v45 = (v13 + 57);
    v46 = (v13 + 105);
    v47 = vbslq_s8(v39, v29, v38);
    v48 = vld3q_f64(v45);
    v49 = v11;
    v50 = vld3q_f64(v46);
    v38.i64[0] = v36.i32[0];
    v38.i64[1] = v36.i32[1];
    v51 = v38;
    v38.i64[0] = v41.u32[0];
    v38.i64[1] = v41.u32[1];
    v52 = vbslq_s8(v51, v50, v38);
    v53 = vmovl_s16(*v34.i8);
    v54 = vmovl_u16(*v40.i8);
    v38.i64[0] = v53.i32[2];
    v38.i64[1] = v53.i32[3];
    v55 = v38;
    v38.i64[0] = v54.u32[2];
    v38.i64[1] = v54.u32[3];
    v56 = vbslq_s8(v55, v48, v38);
    v57 = vmovl_s16(*v32.i8);
    v38.i64[0] = v35.i32[0];
    v38.i64[1] = v35.i32[1];
    v58 = v38;
    v38.i64[0] = v44.u32[0];
    v38.i64[1] = v44.u32[1];
    v59 = vbslq_s8(v58, v28, v38);
    v38.i64[0] = v57.i32[2];
    v38.i64[1] = v57.i32[3];
    v60 = v38;
    v61 = (v13 - 183);
    v62 = (v13 + 9);
    v63 = vmovl_u16(*v37.i8);
    v38.i64[0] = v63.u32[2];
    v38.i64[1] = v63.u32[3];
    v64 = vbslq_s8(v60, v27, v38);
    v65 = vld3q_f64(v61);
    v66 = vld3q_f64(v62);
    v38.i64[0] = v53.i32[0];
    v38.i64[1] = v53.i32[1];
    v67 = v38;
    v38.i64[0] = v54.u32[0];
    v38.i64[1] = v54.u32[1];
    v68 = vbslq_s8(v67, v66, v38);
    v38.i64[0] = v57.i32[0];
    v38.i64[1] = v57.i32[1];
    v69 = v38;
    v38.i64[0] = v63.u32[0];
    v38.i64[1] = v63.u32[1];
    v20 = vaddq_s64(vaddq_s64(v20, v10), v43);
    v16 = vaddq_s64(vaddq_s64(v16, v10), v47);
    v19 = vaddq_s64(vaddq_s64(v19, v10), v52);
    v18 = vaddq_s64(vaddq_s64(v18, v10), v56);
    v15 = vaddq_s64(vaddq_s64(v15, v10), v59);
    v12 = vaddq_s64(vaddq_s64(v89, v10), v64);
    v17 = vaddq_s64(vaddq_s64(v17, v10), v68);
    v11 = vaddq_s64(vaddq_s64(v49, v10), vbslq_s8(v69, v65, v38));
    v13 += 384;
    v14 -= 16;
  }

  while (v14);
  result = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v11, v17), vaddq_s64(v15, v19)), vaddq_s64(vaddq_s64(v12, v18), vaddq_s64(v16, v20))));
  if (v9 >= 5)
  {
    goto LABEL_13;
  }

  v5 = v2 + 24 * v8;
  do
  {
LABEL_18:
    v88 = *(v5 + 23);
    if ((v88 & 0x80u) != 0)
    {
      v88 = *(v5 + 8);
    }

    result += v88 + 2;
    v5 += 24;
  }

  while (v5 != v1);
  return result;
}

void tlv::parseV<ssctl::tlv::abm::ErrorMessages>(tlv **a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v4 = *a1;
  if (a2 < 1)
  {
    *a1 = v4;
  }

  else
  {
    v6 = v4 + a2;
    do
    {
      v7 = *(a3 + 8);
      if (v7 >= *(a3 + 16))
      {
        v8 = std::vector<ssctl::tlv::abm::ErrorMessage>::__emplace_back_slow_path<>(a3);
      }

      else
      {
        *v7 = 0;
        v7[1] = 0;
        v8 = (v7 + 3);
        v7[2] = 0;
      }

      *(a3 + 8) = v8;
      tlv::throwIfNotEnoughBytes(v4, v6, 1);
      v10 = *v4;
      v9 = (v4 + 1);
      tlv::throwIfNotEnoughBytes(v9, v6, v10);
      std::string::__assign_trivial[abi:ne200100]<unsigned char const*,unsigned char const*>(v8 - 3, v9, v9 + v10, v10);
      v4 = (v9 + v10);
    }

    while (v4 < v6);
    *a1 = v4;
  }
}

void sub_296F9FB08(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296F9FADCLL);
}

uint64_t tlv::size<ssctl::tlv::abm::ErrorMessages>(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 3;
  }

  v3 = v1 - v2 - 24;
  if (v3 >= 0x60)
  {
    v7 = v3 / 0x18;
    v8 = v3 / 0x18 + 1;
    if (v3 >= 0x180)
    {
      v10 = 16;
      v11 = 0uLL;
      v12 = 0uLL;
      if ((v8 & 0xF) != 0)
      {
        v10 = v8 & 0xF;
      }

      v9 = v8 - v10;
      v13 = (v2 + 191);
      v14 = v8 - v10;
      v15 = 0uLL;
      v16 = 0uLL;
      v17 = 0uLL;
      v18 = 0uLL;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        v86 = v16;
        v87 = v18;
        v21.i8[0] = *(v13 - 168);
        v22.i8[0] = v21.i8[0];
        v22.i8[1] = *(v13 - 144);
        v22.i8[2] = *(v13 - 120);
        v22.i8[3] = *(v13 - 96);
        v22.i8[4] = *(v13 - 72);
        v22.i8[5] = *(v13 - 48);
        v22.i8[6] = *(v13 - 24);
        v22.i8[7] = *v13;
        v22.i8[8] = v13[24];
        v22.i8[9] = v13[48];
        v23 = (v13 - 183);
        v24 = (v13 - 135);
        v25 = (v13 - 87);
        v26 = (v13 + 9);
        v27 = vld3q_f64(v23);
        v28 = vld3q_f64(v24);
        v29 = vld3q_f64(v25);
        v30 = vld3q_f64(v26);
        v22.i8[10] = v13[72];
        v22.i8[11] = v13[96];
        v22.i8[12] = v13[120];
        v31.i32[0] = v22.i32[2];
        v22.i8[13] = v13[144];
        v22.i8[14] = v13[168];
        v31.i16[2] = v22.i16[6];
        v22.i8[15] = v13[192];
        v31.i16[3] = v22.i16[7];
        v32 = vcltzq_s8(v22);
        v33 = vmovl_high_s8(v32);
        v21.i8[1] = *(v13 - 144);
        v21.i8[2] = *(v13 - 120);
        v34 = vmovl_s8(*v32.i8);
        v35 = vmovl_s16(*v33.i8);
        v21.i8[3] = *(v13 - 96);
        v21.i8[4] = *(v13 - 72);
        v36 = vmovl_s16(*v34.i8);
        v37 = vmovl_u8(v31);
        v21.i8[5] = *(v13 - 48);
        v21.i8[6] = *(v13 - 24);
        v38.i64[0] = v35.i32[0];
        v38.i64[1] = v35.i32[1];
        v39 = v38;
        v21.i8[7] = *v13;
        v40 = vmovl_u8(v21);
        v41 = vmovl_u16(*v40.i8);
        v38.i64[0] = v41.u32[0];
        v38.i64[1] = v41.u32[1];
        v42 = v38;
        v38.i64[0] = v36.i32[0];
        v38.i64[1] = v36.i32[1];
        v43 = vbslq_s8(v38, v27, v42);
        v44 = vmovl_u16(*v37.i8);
        v38.i64[0] = v44.u32[0];
        v38.i64[1] = v44.u32[1];
        v45 = (v13 + 57);
        v46 = (v13 + 105);
        v47 = vbslq_s8(v39, v30, v38);
        v48 = vld3q_f64(v45);
        v49 = vld3q_f64(v46);
        v38.i64[0] = v36.i32[2];
        v38.i64[1] = v36.i32[3];
        v50 = v38;
        v38.i64[0] = v41.u32[2];
        v38.i64[1] = v41.u32[3];
        v51 = vbslq_s8(v50, v28, v38);
        v52 = vmovl_high_s16(v34);
        v53 = vmovl_high_u16(v40);
        v38.i64[0] = v52.i32[0];
        v38.i64[1] = v52.i32[1];
        v54 = v38;
        v38.i64[0] = v53.u32[0];
        v38.i64[1] = v53.u32[1];
        v55 = vbslq_s8(v54, v29, v38);
        v56 = vmovl_high_s16(v33);
        v38.i64[0] = v35.i32[2];
        v38.i64[1] = v35.i32[3];
        v57 = v38;
        v38.i64[0] = v44.u32[2];
        v38.i64[1] = v44.u32[3];
        v58 = vbslq_s8(v57, v48, v38);
        v38.i64[0] = v56.i32[0];
        v38.i64[1] = v56.i32[1];
        v59 = v38;
        v60 = (v13 - 39);
        v61 = (v13 + 153);
        v62 = vmovl_high_u16(v37);
        v38.i64[0] = v62.u32[0];
        v38.i64[1] = v62.u32[1];
        v63 = vbslq_s8(v59, v49, v38);
        v64 = vld3q_f64(v60);
        v65 = vld3q_f64(v61);
        v38.i64[0] = v52.i32[2];
        v38.i64[1] = v52.i32[3];
        v66 = v38;
        v38.i64[0] = v53.u32[2];
        v38.i64[1] = v53.u32[3];
        v67 = vbslq_s8(v66, v64, v38);
        v38.i64[0] = v56.i32[2];
        v38.i64[1] = v56.i32[3];
        v68 = v38;
        v38.i64[0] = v62.u32[2];
        v38.i64[1] = v62.u32[3];
        v20 = vsubq_s64(vbslq_s8(v68, v65, v38), vmvnq_s8(v20));
        v16 = vsubq_s64(v67, vmvnq_s8(v86));
        v19 = vsubq_s64(v63, vmvnq_s8(v19));
        v18 = vsubq_s64(v58, vmvnq_s8(v87));
        v15 = vsubq_s64(v55, vmvnq_s8(v15));
        v12 = vsubq_s64(v51, vmvnq_s8(v12));
        v17 = vsubq_s64(v47, vmvnq_s8(v17));
        v11 = vsubq_s64(v43, vmvnq_s8(v11));
        v13 += 384;
        v14 -= 16;
      }

      while (v14);
      v4 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v11, v17), vaddq_s64(v15, v19)), vaddq_s64(vaddq_s64(v12, v18), vaddq_s64(v16, v20))));
      if (v10 < 5)
      {
        v5 = v2 + 24 * v9;
        goto LABEL_18;
      }
    }

    else
    {
      v4 = 0;
      v9 = 0;
    }

    v69 = v8 & 3;
    if ((v8 & 3) == 0)
    {
      v69 = 4;
    }

    v5 = v2 + 24 * (v8 - v69);
    v70 = 0uLL;
    v71 = v4;
    v72 = ~v7 + v9 + v69;
    v73 = (v2 + 24 * v9 + 47);
    v74.i64[0] = 255;
    v74.i64[1] = 255;
    do
    {
      v75.i16[0] = *(v73 - 24);
      v75.i16[1] = *v73;
      v75.i16[2] = v73[24];
      v75.i16[3] = v73[48];
      v76 = (v73 - 39);
      v77 = (v73 + 9);
      v78 = vld3q_f64(v76);
      v79 = vld3q_f64(v77);
      v80 = vmovl_u16(vcltz_s16(vshr_n_s16(vshl_n_s16(v75, 8uLL), 8uLL)));
      v81.i64[0] = v80.u32[0];
      v81.i64[1] = v80.u32[1];
      v82 = vshrq_n_s64(vshlq_n_s64(v81, 0x38uLL), 0x38uLL);
      v81.i64[0] = v80.u32[2];
      v81.i64[1] = v80.u32[3];
      v83 = vshrq_n_s64(vshlq_n_s64(v81, 0x38uLL), 0x38uLL);
      v81.i64[0] = v73[24];
      v81.i64[1] = v73[48];
      v84 = vbicq_s8(v81, v83);
      v81.i64[0] = *(v73 - 24);
      v81.i64[1] = *v73;
      v70 = vsubq_s64(vorrq_s8(vandq_s8(v79, v83), vandq_s8(v84, v74)), vmvnq_s8(v70));
      v71 = vsubq_s64(vorrq_s8(vandq_s8(v78, v82), vandq_s8(vbicq_s8(v81, v82), v74)), vmvnq_s8(v71));
      v73 += 96;
      v72 += 4;
    }

    while (v72);
    v4 = vaddvq_s64(vaddq_s64(v71, v70));
    goto LABEL_18;
  }

  v4 = 0;
  v5 = *a1;
  do
  {
LABEL_18:
    v85 = *(v5 + 23);
    if ((v85 & 0x80u) != 0)
    {
      v85 = *(v5 + 8);
    }

    v4 += v85 + 1;
    v5 += 24;
  }

  while (v5 != v1);
  return v4 + 3;
}

char **tlv::writeV<ssctl::tlv::abm::ErrorMessages>(char **result, const void ***a2)
{
  v2 = result;
  v3 = *result;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    do
    {
      LOBYTE(v6) = *(v4 + 23);
      if (v6 < 0)
      {
        v6 = v4[1];
      }

      *v3 = v6;
      v7 = v3 + 1;
      v8 = *(v4 + 23);
      if (v8 >= 0)
      {
        v9 = v4;
      }

      else
      {
        v9 = *v4;
      }

      if (v8 >= 0)
      {
        v10 = *(v4 + 23);
      }

      else
      {
        v10 = v4[1];
      }

      result = memcpy(v7, v9, v10);
      v11 = *(v4 + 23);
      if (v11 < 0)
      {
        v11 = v4[1];
      }

      v3 = &v11[v7];
      v4 += 3;
    }

    while (v4 != v5);
  }

  *v2 = v3;
  return result;
}

void tlv::parseV<ssctl::tlv::abm::ExtendedErrorMessages>(tlv **a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v4 = *a1;
  if (a2 < 1)
  {
    *a1 = v4;
  }

  else
  {
    v6 = v4 + a2;
    do
    {
      v7 = *(a3 + 8);
      if (v7 >= *(a3 + 16))
      {
        v8 = std::vector<ssctl::tlv::abm::ErrorMessage>::__emplace_back_slow_path<>(a3);
      }

      else
      {
        *v7 = 0;
        v7[1] = 0;
        v8 = (v7 + 3);
        v7[2] = 0;
      }

      *(a3 + 8) = v8;
      tlv::throwIfNotEnoughBytes(v4, v6, 2);
      v10 = *v4;
      v9 = (v4 + 2);
      tlv::throwIfNotEnoughBytes(v9, v6, v10);
      std::string::__assign_trivial[abi:ne200100]<unsigned char const*,unsigned char const*>(v8 - 3, v9, v9 + v10, v10);
      v4 = (v9 + v10);
    }

    while (v4 < v6);
    *a1 = v4;
  }
}

void sub_296FA064C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FA0620);
}

uint64_t tlv::size<ssctl::tlv::abm::ExtendedErrorMessages>(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 3;
  }

  v3 = v1 - v2 - 24;
  if (v3 >= 0x60)
  {
    v7 = v3 / 0x18;
    v8 = v3 / 0x18 + 1;
    if (v3 >= 0x180)
    {
      v10 = 16;
      v11 = vdupq_n_s64(2uLL);
      v12 = 0uLL;
      v13 = 0uLL;
      if ((v8 & 0xF) != 0)
      {
        v10 = v8 & 0xF;
      }

      v9 = v8 - v10;
      v14 = (v2 + 191);
      v15 = v8 - v10;
      v16 = 0uLL;
      v17 = 0uLL;
      v18 = 0uLL;
      v19 = 0uLL;
      v20 = 0uLL;
      v21 = 0uLL;
      do
      {
        v90 = v13;
        v22.i8[0] = *(v14 - 168);
        v23.i8[0] = v22.i8[0];
        v23.i8[1] = *(v14 - 144);
        v23.i8[2] = *(v14 - 120);
        v23.i8[3] = *(v14 - 96);
        v23.i8[4] = *(v14 - 72);
        v23.i8[5] = *(v14 - 48);
        v23.i8[6] = *(v14 - 24);
        v23.i8[7] = *v14;
        v23.i8[8] = v14[24];
        v24 = (v14 - 135);
        v25 = (v14 - 87);
        v26 = (v14 - 39);
        v27 = (v14 + 153);
        v28 = vld3q_f64(v24);
        v29 = vld3q_f64(v25);
        v30 = vld3q_f64(v26);
        v31 = vld3q_f64(v27);
        v23.i8[9] = v14[48];
        v23.i8[10] = v14[72];
        v23.i8[11] = v14[96];
        v23.i8[12] = v14[120];
        v22.i8[1] = v23.i8[1];
        v23.i8[13] = v14[144];
        v22.i16[1] = v23.i16[1];
        v23.i8[14] = v14[168];
        v22.i16[2] = v23.i16[2];
        v23.i8[15] = v14[192];
        v32 = vcltzq_s8(v23);
        v22.i8[6] = v23.i8[6];
        v22.i8[7] = *v14;
        v33 = vmovl_s8(*v32.i8);
        v34.i8[0] = v14[24];
        v34.i8[1] = v14[48];
        v34.i8[2] = v14[72];
        v35 = vmovl_high_s8(v32);
        v36 = vmovl_high_s16(v33);
        v34.i8[3] = v14[96];
        v34.i8[4] = v14[120];
        v37 = vmovl_high_s16(v35);
        v38 = vmovl_u8(v22);
        v34.i8[5] = v14[144];
        v34.i8[6] = v14[168];
        v39.i64[0] = v36.i32[2];
        v39.i64[1] = v36.i32[3];
        v40 = v39;
        v34.i8[7] = v14[192];
        v41 = vmovl_u8(v34);
        v42 = vmovl_high_u16(v41);
        v39.i64[0] = v42.u32[2];
        v39.i64[1] = v42.u32[3];
        v43 = v39;
        v39.i64[0] = v37.i32[2];
        v39.i64[1] = v37.i32[3];
        v44 = vbslq_s8(v39, v31, v43);
        v45 = vmovl_high_u16(v38);
        v39.i64[0] = v45.u32[2];
        v39.i64[1] = v45.u32[3];
        v46 = (v14 + 57);
        v47 = (v14 + 105);
        v48 = vbslq_s8(v40, v30, v39);
        v49 = vld3q_f64(v46);
        v50 = v12;
        v51 = vld3q_f64(v47);
        v39.i64[0] = v37.i32[0];
        v39.i64[1] = v37.i32[1];
        v52 = v39;
        v39.i64[0] = v42.u32[0];
        v39.i64[1] = v42.u32[1];
        v53 = vbslq_s8(v52, v51, v39);
        v54 = vmovl_s16(*v35.i8);
        v55 = vmovl_u16(*v41.i8);
        v39.i64[0] = v54.i32[2];
        v39.i64[1] = v54.i32[3];
        v56 = v39;
        v39.i64[0] = v55.u32[2];
        v39.i64[1] = v55.u32[3];
        v57 = vbslq_s8(v56, v49, v39);
        v58 = vmovl_s16(*v33.i8);
        v39.i64[0] = v36.i32[0];
        v39.i64[1] = v36.i32[1];
        v59 = v39;
        v39.i64[0] = v45.u32[0];
        v39.i64[1] = v45.u32[1];
        v60 = vbslq_s8(v59, v29, v39);
        v39.i64[0] = v58.i32[2];
        v39.i64[1] = v58.i32[3];
        v61 = v39;
        v62 = (v14 - 183);
        v63 = (v14 + 9);
        v64 = vmovl_u16(*v38.i8);
        v39.i64[0] = v64.u32[2];
        v39.i64[1] = v64.u32[3];
        v65 = vbslq_s8(v61, v28, v39);
        v66 = vld3q_f64(v62);
        v67 = vld3q_f64(v63);
        v39.i64[0] = v54.i32[0];
        v39.i64[1] = v54.i32[1];
        v68 = v39;
        v39.i64[0] = v55.u32[0];
        v39.i64[1] = v55.u32[1];
        v69 = vbslq_s8(v68, v67, v39);
        v39.i64[0] = v58.i32[0];
        v39.i64[1] = v58.i32[1];
        v70 = v39;
        v39.i64[0] = v64.u32[0];
        v39.i64[1] = v64.u32[1];
        v21 = vaddq_s64(vaddq_s64(v21, v11), v44);
        v17 = vaddq_s64(vaddq_s64(v17, v11), v48);
        v20 = vaddq_s64(vaddq_s64(v20, v11), v53);
        v19 = vaddq_s64(vaddq_s64(v19, v11), v57);
        v16 = vaddq_s64(vaddq_s64(v16, v11), v60);
        v13 = vaddq_s64(vaddq_s64(v90, v11), v65);
        v18 = vaddq_s64(vaddq_s64(v18, v11), v69);
        v12 = vaddq_s64(vaddq_s64(v50, v11), vbslq_s8(v70, v66, v39));
        v14 += 384;
        v15 -= 16;
      }

      while (v15);
      v4 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v12, v18), vaddq_s64(v16, v20)), vaddq_s64(vaddq_s64(v13, v19), vaddq_s64(v17, v21))));
      if (v10 < 5)
      {
        v5 = v2 + 24 * v9;
        goto LABEL_18;
      }
    }

    else
    {
      v4 = 0;
      v9 = 0;
    }

    v71 = v8 & 3;
    if ((v8 & 3) == 0)
    {
      v71 = 4;
    }

    v5 = v2 + 24 * (v8 - v71);
    v72 = 0uLL;
    v73 = v4;
    v74 = ~v7 + v9 + v71;
    v75 = (v2 + 24 * v9 + 47);
    v76.i64[0] = 255;
    v76.i64[1] = 255;
    v77 = vdupq_n_s64(2uLL);
    do
    {
      v78.i16[0] = *(v75 - 24);
      v78.i16[1] = *v75;
      v78.i16[2] = v75[24];
      v78.i16[3] = v75[48];
      v79 = (v75 - 39);
      v80 = (v75 + 9);
      v81 = vld3q_f64(v79);
      v82 = vld3q_f64(v80);
      v83 = vmovl_u16(vcltz_s16(vshr_n_s16(vshl_n_s16(v78, 8uLL), 8uLL)));
      v84.i64[0] = v83.u32[2];
      v84.i64[1] = v83.u32[3];
      v85 = vshrq_n_s64(vshlq_n_s64(v84, 0x38uLL), 0x38uLL);
      v84.i64[0] = v83.u32[0];
      v84.i64[1] = v83.u32[1];
      v86 = vshlq_n_s64(v84, 0x38uLL);
      v84.i64[0] = *(v75 - 24);
      v84.i64[1] = *v75;
      v87 = vshrq_n_s64(v86, 0x38uLL);
      v88 = vbicq_s8(v84, v87);
      v84.i64[0] = v75[24];
      v84.i64[1] = v75[48];
      v72 = vaddq_s64(vaddq_s64(v72, v77), vorrq_s8(vandq_s8(v82, v85), vandq_s8(vbicq_s8(v84, v85), v76)));
      v73 = vaddq_s64(vaddq_s64(v73, v77), vorrq_s8(vandq_s8(v81, v87), vandq_s8(v88, v76)));
      v75 += 96;
      v74 += 4;
    }

    while (v74);
    v4 = vaddvq_s64(vaddq_s64(v73, v72));
    goto LABEL_18;
  }

  v4 = 0;
  v5 = *a1;
  do
  {
LABEL_18:
    v89 = *(v5 + 23);
    if ((v89 & 0x80u) != 0)
    {
      v89 = *(v5 + 8);
    }

    v4 += v89 + 2;
    v5 += 24;
  }

  while (v5 != v1);
  return v4 + 3;
}

char **tlv::writeV<ssctl::tlv::abm::ExtendedErrorMessages>(char **result, const void ***a2)
{
  v2 = result;
  v3 = *result;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    do
    {
      LOWORD(v6) = *(v4 + 23);
      if (v6 < 0)
      {
        v6 = v4[1];
      }

      *v3 = v6;
      v7 = v3 + 2;
      v8 = *(v4 + 23);
      if (v8 >= 0)
      {
        v9 = v4;
      }

      else
      {
        v9 = *v4;
      }

      if (v8 >= 0)
      {
        v10 = *(v4 + 23);
      }

      else
      {
        v10 = v4[1];
      }

      result = memcpy(v7, v9, v10);
      v11 = *(v4 + 23);
      if (v11 < 0)
      {
        v11 = v4[1];
      }

      v3 = &v11[v7];
      v4 += 3;
    }

    while (v4 != v5);
  }

  *v2 = v3;
  return result;
}

void std::string::__assign_trivial[abi:ne200100]<unsigned char const*,unsigned char const*>(void **a1, uint64_t a2, char *a3, unint64_t a4)
{
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    v8 = a1;
    if (a4 < 0x17)
    {
      goto LABEL_23;
    }

    if (a4 - 0x7FFFFFFFFFFFFFF8 >= 0x800000000000001ELL)
    {
      v9 = 22;
      v10 = a1;
      goto LABEL_8;
    }

    goto LABEL_36;
  }

  v11 = a1[2];
  v9 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (a4 > v9)
  {
    if (0x7FFFFFFFFFFFFFF8 - (v11 & 0x7FFFFFFFFFFFFFFFLL) >= a4 - v9)
    {
      v10 = *a1;
      if (v9 >= 0x3FFFFFFFFFFFFFF3)
      {
        v14 = 0x7FFFFFFFFFFFFFF7;
        v8 = operator new(0x7FFFFFFFFFFFFFF7uLL);
LABEL_21:
        operator delete(v10);
LABEL_22:
        a1[1] = 0;
        a1[2] = (v14 | 0x8000000000000000);
        *a1 = v8;
        goto LABEL_23;
      }

LABEL_8:
      v12 = 2 * v9;
      if (a4 > 2 * v9)
      {
        v12 = a4;
      }

      if ((v12 | 7) == 0x17)
      {
        v13 = 25;
      }

      else
      {
        v13 = (v12 | 7) + 1;
      }

      if (v12 >= 0x17)
      {
        v14 = v13;
      }

      else
      {
        v14 = 23;
      }

      v8 = operator new(v14);
      if (v9 == 22)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

LABEL_36:
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = a1;
  if ((v11 & 0x8000000000000000) != 0)
  {
    v8 = *a1;
  }

LABEL_23:
  if (a2 == a3)
  {
    v16 = v8;
  }

  else
  {
    v15 = &a3[-a2];
    if (&a3[-a2] < 0x20 || &v8[-a2] < 0x20)
    {
      v16 = v8;
      v17 = a2;
    }

    else
    {
      v16 = &v8[v15 & 0xFFFFFFFFFFFFFFE0];
      v17 = (a2 + (v15 & 0xFFFFFFFFFFFFFFE0));
      v18 = (a2 + 16);
      v19 = v8 + 16;
      v20 = v15 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v21 = *v18;
        *(v19 - 1) = *(v18 - 1);
        *v19 = v21;
        v18 += 2;
        v19 += 2;
        v20 -= 32;
      }

      while (v20);
      if (v15 == (v15 & 0xFFFFFFFFFFFFFFE0))
      {
        goto LABEL_33;
      }
    }

    do
    {
      v22 = *v17++;
      *v16++ = v22;
    }

    while (v17 != a3);
  }

LABEL_33:
  *v16 = 0;
  if (*(a1 + 23) < 0)
  {
    a1[1] = a4;
  }

  else
  {
    *(a1 + 23) = a4 & 0x7F;
  }
}

__int128 *std::vector<ssctl::tlv::abm::ErrorMessage>::__emplace_back_slow_path<>(__int128 **a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = v2 - *a1;
  v4 = 0xAAAAAAAAAAAAAAABLL * (v3 >> 3) + 1;
  if (v4 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<ssctl::tlv::abm::ErrorMessage>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - v1) >> 3) > v4)
  {
    v4 = 0x5555555555555556 * ((a1[2] - v1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - v1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v7 = operator new(24 * v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[8 * (v3 >> 3)];
  v9 = &v7[24 * v6];
  *v8 = 0;
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  v10 = (v8 + 24);
  v11 = &v8[-v3];
  if (v1 != v2)
  {
    v12 = v1;
    v13 = v11;
    do
    {
      v14 = *v12;
      *(v13 + 2) = *(v12 + 2);
      *v13 = v14;
      v13 += 24;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v12 = (v12 + 24);
    }

    while (v12 != v2);
    do
    {
      if (*(v1 + 23) < 0)
      {
        operator delete(*v1);
      }

      v1 = (v1 + 24);
    }

    while (v1 != v2);
    v1 = *a1;
  }

  *a1 = v11;
  a1[1] = v10;
  a1[2] = v9;
  if (v1)
  {
    operator delete(v1);
  }

  return v10;
}

char *dms::tlv::abm::parseField(tlv *a1, const unsigned __int8 *a2, _BYTE *a3)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

_BYTE *dms::tlv::abm::writeField(_BYTE *a1, _BYTE *a2)
{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

uint64_t dms::tlv::abm::getFieldSize()
{
  return 1;
}

{
  return 1;
}

{
  return 2;
}

{
  return 1;
}

{
  return 8;
}

uint64_t tlv::parseV<dms::tlv::abm::OperatingMode>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FA0F04(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<dms::tlv::abm::OperatingMode>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<dms::tlv::abm::OperatingModeLegacy>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FA0FC4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<dms::tlv::abm::OperatingModeLegacy>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

char *dms::tlv::abm::parseField(tlv *a1, const unsigned __int8 *a2, _WORD *a3)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 2);
  *a3 = *a1;
  return a1 + 2;
}

uint64_t tlv::parseV<dms::tlv::abm::ProtocolNVConfig>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2);
  result = *v3;
  *a1 = (v3 + 2);
  return result;
}

uint64_t sub_296FA1084(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_WORD **tlv::writeV<dms::tlv::abm::ProtocolNVConfig>(_WORD **result, _WORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<dms::tlv::abm::OperatingModeReporting>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296FA1144(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<dms::tlv::abm::OperatingModeReporting>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

char *dms::tlv::abm::writeField(char *a1, void *a2)
{
  v2 = a2;
  v4 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  memcpy(a1, a2, v5);
  v6 = *(v2 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = v2[1];
  }

  return &a1[v6];
}

uint64_t dms::tlv::abm::getFieldSize(uint64_t a1)
{
  if (*(a1 + 23) >= 0)
  {
    return *(a1 + 23);
  }

  else
  {
    return *(a1 + 8);
  }
}

void tlv::parseV<dms::tlv::abm::BasebandFWVersion>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v4 = (*a1 + a2);
  std::string::__assign_trivial[abi:ne200100]<unsigned char const*,unsigned char const*>(a3, *a1, v4, a2);
  *a1 = v4;
}

void sub_296FA1278(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FA1268);
}

void sub_296FA1288(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t tlv::size<dms::tlv::abm::BasebandFWVersion>(uint64_t a1)
{
  v1 = *(a1 + 23);
  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 8);
  }

  return v1 + 3;
}

void *tlv::writeV<dms::tlv::abm::BasebandFWVersion>(void **a1, void *a2)
{
  v2 = a2;
  v4 = *a1;
  v5 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  result = memcpy(*a1, a2, v6);
  v8 = *(v2 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = v2[1];
  }

  *a1 = &v4[v8];
  return result;
}

char *dms::tlv::abm::parseField(tlv *a1, const unsigned __int8 *a2, void *a3)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 8);
  *a3 = *a1;
  return a1 + 8;
}

uint64_t tlv::parseV<dms::tlv::abm::BasebandTime>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 8);
  result = *v3;
  *a1 = (v3 + 8);
  return result;
}

uint64_t sub_296FA13B4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

void **tlv::writeV<dms::tlv::abm::BasebandTime>(void **result, void *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

char *coex::parseField(tlv *a1, const unsigned __int8 *a2, _DWORD *a3)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  return a1 + 4;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  return a1 + 4;
}

_DWORD *coex::writeField(_DWORD *a1, int a2)
{
  *a1 = a2;
  return a1 + 1;
}

{
  *a1 = a2;
  return a1 + 1;
}

uint64_t coex::getFieldSize()
{
  return 4;
}

{
  return 4;
}

{
  return 8;
}

uint64_t coex::tlv::abm::parseField(uint64_t a1, const unsigned __int8 *a2, _DWORD *a3)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4);
  a3[1] = *(a1 + 4);
  return a1 + 8;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4);
  a3[1] = *(a1 + 4);
  tlv::throwIfNotEnoughBytes((a1 + 8), a2, 4);
  a3[2] = *(a1 + 8);
  tlv::throwIfNotEnoughBytes((a1 + 12), a2, 4);
  a3[3] = *(a1 + 12);
  return a1 + 16;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4);
  a3[1] = *(a1 + 4);
  tlv::throwIfNotEnoughBytes((a1 + 8), a2, 4);
  a3[2] = *(a1 + 8);
  tlv::throwIfNotEnoughBytes((a1 + 12), a2, 4);
  a3[3] = *(a1 + 12);
  return a1 + 16;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4);
  a3[1] = *(a1 + 4);
  tlv::throwIfNotEnoughBytes((a1 + 8), a2, 4);
  a3[2] = *(a1 + 8);
  tlv::throwIfNotEnoughBytes((a1 + 12), a2, 4);
  a3[3] = *(a1 + 12);
  tlv::throwIfNotEnoughBytes((a1 + 16), a2, 4);
  a3[4] = *(a1 + 16);
  return a1 + 20;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4);
  a3[1] = *(a1 + 4);
  tlv::throwIfNotEnoughBytes((a1 + 8), a2, 4);
  a3[2] = *(a1 + 8);
  tlv::throwIfNotEnoughBytes((a1 + 12), a2, 4);
  a3[3] = *(a1 + 12);
  tlv::throwIfNotEnoughBytes((a1 + 16), a2, 4);
  a3[4] = *(a1 + 16);
  return a1 + 20;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4);
  a3[1] = *(a1 + 4);
  tlv::throwIfNotEnoughBytes((a1 + 8), a2, 4);
  a3[2] = *(a1 + 8);
  tlv::throwIfNotEnoughBytes((a1 + 12), a2, 4);
  a3[3] = *(a1 + 12);
  return a1 + 16;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4);
  a3[1] = *(a1 + 4);
  return a1 + 8;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4);
  a3[1] = *(a1 + 4);
  return a1 + 8;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4);
  a3[1] = *(a1 + 4);
  return a1 + 8;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4);
  a3[1] = *(a1 + 4);
  return a1 + 8;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4);
  a3[1] = *(a1 + 4);
  return a1 + 8;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4);
  a3[1] = *(a1 + 4);
  return a1 + 8;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4);
  a3[1] = *(a1 + 4);
  return a1 + 8;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4);
  a3[1] = *(a1 + 4);
  return a1 + 8;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4);
  a3[1] = *(a1 + 4);
  return a1 + 8;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4);
  a3[1] = *(a1 + 4);
  return a1 + 8;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4);
  a3[1] = *(a1 + 4);
  return a1 + 8;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4);
  a3[1] = *(a1 + 4);
  return a1 + 8;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4);
  a3[1] = *(a1 + 4);
  return a1 + 8;
}

_DWORD *coex::tlv::abm::writeField(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  return a1 + 2;
}

{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  return a1 + 4;
}

{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  return a1 + 4;
}

{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  return a1 + 5;
}

{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  return a1 + 5;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  return a1 + 4;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  a1[1] = a2[1];
  return a1 + 2;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  a1[1] = a2[1];
  return a1 + 2;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  a1[1] = a2[1];
  return a1 + 2;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  a1[1] = a2[1];
  return a1 + 2;
}

{
  *a1 = *a2;
  a1[1] = a2[1];
  return a1 + 2;
}

{
  *a1 = *a2;
  a1[1] = a2[1];
  return a1 + 2;
}

{
  *a1 = *a2;
  a1[1] = a2[1];
  return a1 + 2;
}

{
  *a1 = *a2;
  a1[1] = a2[1];
  return a1 + 2;
}

{
  *a1 = *a2;
  a1[1] = a2[1];
  return a1 + 2;
}

{
  *a1 = *a2;
  a1[1] = a2[1];
  return a1 + 2;
}

{
  *a1 = *a2;
  a1[1] = a2[1];
  return a1 + 2;
}

{
  *a1 = *a2;
  a1[1] = a2[1];
  return a1 + 2;
}

{
  *a1 = *a2;
  a1[1] = a2[1];
  return a1 + 2;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

uint64_t coex::tlv::abm::getFieldSize()
{
  return 8;
}

{
  return 16;
}

{
  return 16;
}

{
  return 20;
}

{
  return 20;
}

{
  return 33;
}

{
  return 26;
}

{
  return 4;
}

{
  return 4;
}

{
  return 16;
}

{
  return 16;
}

{
  return 8;
}

{
  return 1;
}

{
  return 4;
}

{
  return 4;
}

{
  return 8;
}

{
  return 4;
}

{
  return 8;
}

{
  return 4;
}

{
  return 4;
}

{
  return 4;
}

{
  return 4;
}

{
  return 4;
}

{
  return 4;
}

{
  return 2;
}

{
  return 2;
}

{
  return 2;
}

{
  return 1;
}

{
  return 4;
}

{
  return 24;
}

{
  return 8;
}

{
  return 4;
}

{
  return 4;
}

{
  return 4;
}

{
  return 4;
}

{
  return 4;
}

{
  return 4;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 4;
}

{
  return 4;
}

{
  return 4;
}

{
  return 4;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 4;
}

{
  return 4;
}

{
  return 4;
}

{
  return 4;
}

{
  return 4;
}

{
  return 4;
}

{
  return 8;
}

{
  return 8;
}

{
  return 8;
}

{
  return 8;
}

{
  return 8;
}

{
  return 8;
}

{
  return 8;
}

{
  return 8;
}

{
  return 8;
}

{
  return 8;
}

{
  return 8;
}

{
  return 8;
}

{
  return 8;
}

{
  return 8;
}

{
  return 8;
}

{
  return 2;
}

{
  return 2;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 4;
}

{
  return 4;
}

{
  return 4;
}

{
  return 4;
}