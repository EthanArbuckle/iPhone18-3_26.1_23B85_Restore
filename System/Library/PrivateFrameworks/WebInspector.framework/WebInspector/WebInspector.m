void traceMessagePayloadIfKeyExists(uint64_t a1, void *a2)
{
  v4 = RWIMessageTraceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = [a2 objectForKeyedSubscript:@"__argument"];
    if (v5)
    {
      v6 = v5;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [v6 objectForKeyedSubscript:a1];
        if (v7)
        {
          v8 = v7;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v8 encoding:4];
            v10 = RWIMessageTraceLog();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
            {
              traceMessagePayloadIfKeyExists_cold_1(v9, v10);
            }
          }
        }
      }
    }
  }
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_273C9F858(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = _RWITCPConnection;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_273CA0210(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CA0470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void *std::vector<unsigned char>::vector[abi:sn200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:sn200100](result, a2);
  }

  return result;
}

void std::vector<unsigned char>::__vallocate[abi:sn200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
}

uint64_t OUTLINED_FUNCTION_0_0(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a2 = a4;
  *(a2 + 4) = a3;
  *(a2 + 12) = 2082;
  *(a2 + 14) = result;
  return result;
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

BOOL auditTokenHasEntitlement(_OWORD *a1, void *a2)
{
  v3 = a2;
  v4 = *MEMORY[0x277CBECE8];
  v5 = a1[1];
  *token.val = *a1;
  *&token.val[4] = v5;
  v6 = SecTaskCreateWithAuditToken(v4, &token);
  v7 = v6;
  if (v6)
  {
    *token.val = 0;
    v8 = SecTaskCopyValueForEntitlement(v6, v3, &token);
    v9 = v8;
    if (*token.val)
    {
      NSLog(&cfstr_UnableToGetEnt.isa, v3, *token.val);
      CFRelease(*token.val);
      v10 = 0;
      if (!v9)
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (!v8)
      {
        v10 = 0;
LABEL_12:
        CFRelease(v7);
        goto LABEL_13;
      }

      v11 = CFGetTypeID(v8);
      v10 = v11 == CFBooleanGetTypeID() && CFBooleanGetValue(v9) != 0;
    }

    CFRelease(v9);
    goto LABEL_12;
  }

  NSLog(&cfstr_UnableToCreate.isa, v3);
  v10 = 0;
LABEL_13:

  return v10;
}

uint64_t RWIAutomationAvailabilityFromString(void *a1, uint64_t *a2)
{
  v3 = a1;
  if ([v3 isEqualToString:@"WIRAutomationAvailabilityNotAvailable"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"WIRAutomationAvailabilityAvailable"])
  {
    v4 = 1;
  }

  else
  {
    if (![v3 isEqualToString:@"WIRAutomationAvailabilityUnknown"])
    {
      v5 = 0;
      goto LABEL_8;
    }

    v4 = 2;
  }

  *a2 = v4;
  v5 = 1;
LABEL_8:

  return v5;
}

__CFString *RWINSStringFromAutomationAvailability(uint64_t a1)
{
  v1 = @"WIRAutomationAvailabilityNotAvailable";
  if (a1 == 1)
  {
    v1 = @"WIRAutomationAvailabilityAvailable";
  }

  if (a1 == 2)
  {
    return @"WIRAutomationAvailabilityUnknown";
  }

  else
  {
    return v1;
  }
}

__CFString *NSStringFromRWIDebuggerAvailability(uint64_t a1)
{
  v1 = @"Not Debuggable";
  if (a1 == 1)
  {
    v1 = @"Debuggable (Not Visible)";
  }

  if (a1 == 2)
  {
    return @"Debuggable (Visible)";
  }

  else
  {
    return v1;
  }
}

void sub_273CA2590(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

id RWIDefaultLog()
{
  if (RWIDefaultLog_onceToken != -1)
  {
    RWIDefaultLog_cold_1();
  }

  v1 = RWIDefaultLog_defaultLog;

  return v1;
}

void __RWIDefaultLog_block_invoke()
{
  v0 = os_log_create("com.apple.WebInspector", "default");
  v1 = RWIDefaultLog_defaultLog;
  RWIDefaultLog_defaultLog = v0;
}

id RWIMessageTraceLog()
{
  if (RWIMessageTraceLog_onceToken != -1)
  {
    RWIMessageTraceLog_cold_1();
  }

  v1 = RWIMessageTraceLog_messageTraceLog;

  return v1;
}

void __RWIMessageTraceLog_block_invoke()
{
  v0 = os_log_create("com.apple.WebInspector", "message-trace");
  v1 = RWIMessageTraceLog_messageTraceLog;
  RWIMessageTraceLog_messageTraceLog = v0;
}

id RWIMessageDumpStateLog()
{
  if (RWIMessageDumpStateLog_onceToken != -1)
  {
    RWIMessageDumpStateLog_cold_1();
  }

  v1 = RWIMessageDumpStateLog_dumpStateLog;

  return v1;
}

void __RWIMessageDumpStateLog_block_invoke()
{
  v0 = os_log_create("com.apple.WebInspector", "dump-state");
  v1 = RWIMessageDumpStateLog_dumpStateLog;
  RWIMessageDumpStateLog_dumpStateLog = v0;
}

uint64_t Inspector::toJSONObjectArray@<X0>(Inspector *this@<X0>, uint64_t *a2@<X8>)
{
  v24 = *MEMORY[0x277D85DE8];
  if (!this)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"array"}];
  }

  v5 = objc_opt_class();
  WTF::JSONImpl::Array::create(v5);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  result = [(Inspector *)this countByEnumeratingWithState:&v19 objects:v23 count:16];
  v7 = result;
  if (result)
  {
    v8 = *v20;
    v9 = *MEMORY[0x277CBE660];
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(this);
        }

        v11 = *(*(&v19 + 1) + 8 * v10);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [MEMORY[0x277CBEAD8] raise:v9 format:{@"array should contain objects of type '%@', found bad value: %@", NSStringFromClass(v5), v11}];
        }

        v12 = *a2;
        if (v11)
        {
          [v11 toJSONObject];
          v11 = v18;
        }

        v13 = *(v12 + 28);
        if (v13 == *(v12 + 24))
        {
          if (v13 + (v13 >> 1) <= v13 + 1)
          {
            v14 = v13 + 1;
          }

          else
          {
            v14 = v13 + (v13 >> 1);
          }

          if (v14 <= 0x10)
          {
            v15 = 16;
          }

          else
          {
            v15 = v14;
          }

          WTF::Vector<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(v12 + 16, v15);
          v13 = *(v12 + 28);
          v16 = (*(v12 + 16) + 8 * v13);
        }

        else
        {
          v16 = (*(v12 + 16) + 8 * v13);
        }

        *v16 = v11;
        *(v12 + 28) = v13 + 1;
        v18 = 0;
        ++v10;
      }

      while (v7 != v10);
      result = [(Inspector *)this countByEnumeratingWithState:&v19 objects:v23 count:16];
      v7 = result;
    }

    while (result);
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

_DWORD **WTF::Ref<WTF::JSONImpl::Array,WTF::RawPtrTraits<WTF::JSONImpl::Array>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Array>>::~Ref(_DWORD **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*v2 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v2;
    }
  }

  return a1;
}

uint64_t Inspector::toJSONStringArray@<X0>(Inspector *this@<X0>, uint64_t *a2@<X8>)
{
  v29 = *MEMORY[0x277D85DE8];
  if (!this)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"array"}];
  }

  v5 = objc_opt_class();
  WTF::JSONImpl::Array::create(v5);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  result = [(Inspector *)this countByEnumeratingWithState:&v23 objects:v28 count:16];
  v7 = result;
  if (result)
  {
    v8 = *v24;
    v9 = *MEMORY[0x277CBE660];
    do
    {
      v10 = 0;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(this);
        }

        v11 = *(*(&v23 + 1) + 8 * v10);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [MEMORY[0x277CBEAD8] raise:v9 format:{@"array should contain objects of type '%@', found bad value: %@", NSStringFromClass(v5), v11}];
        }

        v12 = *a2;
        MEMORY[0x2743DB520](&v22, v11);
        WTF::JSONImpl::Value::create(&v27, &v22, v13);
        v15 = *(v12 + 28);
        if (v15 == *(v12 + 24))
        {
          v16 = WTF::Vector<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v12 + 16, v15 + 1, &v27);
          v15 = *(v12 + 28);
          v17 = *(v12 + 16);
          v18 = *v16;
          *v16 = 0;
        }

        else
        {
          v17 = *(v12 + 16);
          v18 = v27;
          v27 = 0;
        }

        *(v17 + 8 * v15) = v18;
        *(v12 + 28) = v15 + 1;
        v19 = v27;
        v27 = 0;
        if (v19)
        {
          if (*v19 == 1)
          {
            WTF::JSONImpl::Value::operator delete();
          }

          else
          {
            --*v19;
          }
        }

        v20 = v22;
        v22 = 0;
        if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v20, v14);
        }

        ++v10;
      }

      while (v7 != v10);
      result = [(Inspector *)this countByEnumeratingWithState:&v23 objects:v28 count:16];
      v7 = result;
    }

    while (result);
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Inspector::toJSONIntegerArray@<X0>(Inspector *this@<X0>, uint64_t *a2@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  if (!this)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"array"}];
  }

  v5 = objc_opt_class();
  WTF::JSONImpl::Array::create(v5);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  result = [(Inspector *)this countByEnumeratingWithState:&v19 objects:v24 count:16];
  v7 = result;
  if (result)
  {
    v8 = *v20;
    v9 = *MEMORY[0x277CBE660];
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(this);
        }

        v11 = *(*(&v19 + 1) + 8 * v10);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [MEMORY[0x277CBEAD8] raise:v9 format:{@"array should contain objects of type '%@', found bad value: %@", NSStringFromClass(v5), v11}];
        }

        v12 = *a2;
        WTF::JSONImpl::Value::create([v11 intValue]);
        v13 = *(v12 + 28);
        if (v13 == *(v12 + 24))
        {
          v14 = WTF::Vector<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v12 + 16, v13 + 1, &v23);
          v13 = *(v12 + 28);
          v15 = *(v12 + 16);
          v16 = *v14;
          *v14 = 0;
        }

        else
        {
          v15 = *(v12 + 16);
          v16 = v23;
          v23 = 0;
        }

        *(v15 + 8 * v13) = v16;
        *(v12 + 28) = v13 + 1;
        v17 = v23;
        v23 = 0;
        if (v17)
        {
          if (*v17 == 1)
          {
            WTF::JSONImpl::Value::operator delete();
          }

          else
          {
            --*v17;
          }
        }

        ++v10;
      }

      while (v7 != v10);
      result = [(Inspector *)this countByEnumeratingWithState:&v19 objects:v24 count:16];
      v7 = result;
    }

    while (result);
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Inspector::toJSONDoubleArray@<X0>(Inspector *this@<X0>, uint64_t *a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (!this)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"array"}];
  }

  v5 = objc_opt_class();
  WTF::JSONImpl::Array::create(v5);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  result = [(Inspector *)this countByEnumeratingWithState:&v21 objects:v26 count:16];
  v7 = result;
  if (result)
  {
    v8 = *v22;
    v9 = *MEMORY[0x277CBE660];
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(this);
        }

        v11 = *(*(&v21 + 1) + 8 * v10);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [MEMORY[0x277CBEAD8] raise:v9 format:{@"array should contain objects of type '%@', found bad value: %@", NSStringFromClass(v5), v11}];
        }

        v12 = *a2;
        v13 = [v11 doubleValue];
        WTF::JSONImpl::Value::create(&v25, v13, v14);
        v15 = *(v12 + 28);
        if (v15 == *(v12 + 24))
        {
          v16 = WTF::Vector<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v12 + 16, v15 + 1, &v25);
          v15 = *(v12 + 28);
          v17 = *(v12 + 16);
          v18 = *v16;
          *v16 = 0;
        }

        else
        {
          v17 = *(v12 + 16);
          v18 = v25;
          v25 = 0;
        }

        *(v17 + 8 * v15) = v18;
        *(v12 + 28) = v15 + 1;
        v19 = v25;
        v25 = 0;
        if (v19)
        {
          if (*v19 == 1)
          {
            WTF::JSONImpl::Value::operator delete();
          }

          else
          {
            --*v19;
          }
        }

        ++v10;
      }

      while (v7 != v10);
      result = [(Inspector *)this countByEnumeratingWithState:&v21 objects:v26 count:16];
      v7 = result;
    }

    while (result);
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Inspector::toJSONStringArrayArray@<X0>(Inspector *this@<X0>, uint64_t *a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  if (!this)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"array"}];
  }

  v5 = objc_opt_class();
  WTF::JSONImpl::Array::create(v5);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  result = [(Inspector *)this countByEnumeratingWithState:&v21 objects:v25 count:16];
  v7 = result;
  if (result)
  {
    v8 = *v22;
    v9 = *MEMORY[0x277CBE660];
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(this);
        }

        v11 = *(*(&v21 + 1) + 8 * v10);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [MEMORY[0x277CBEAD8] raise:v9 format:{@"array should contain objects of type '%@', found bad value: %@", NSStringFromClass(v5), v11}];
        }

        v12 = *a2;
        Inspector::toJSONStringArray(v11, &v20);
        v13 = v20;
        v20 = 0;
        v14 = *(v12 + 28);
        if (v14 == *(v12 + 24))
        {
          if (v14 + (v14 >> 1) <= v14 + 1)
          {
            v15 = v14 + 1;
          }

          else
          {
            v15 = v14 + (v14 >> 1);
          }

          if (v15 <= 0x10)
          {
            v16 = 16;
          }

          else
          {
            v16 = v15;
          }

          WTF::Vector<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(v12 + 16, v16);
          v14 = *(v12 + 28);
          v17 = (*(v12 + 16) + 8 * v14);
        }

        else
        {
          v17 = (*(v12 + 16) + 8 * v14);
        }

        *v17 = v13;
        *(v12 + 28) = v14 + 1;
        v18 = v20;
        v20 = 0;
        if (v18)
        {
          if (*v18 == 1)
          {
            WTF::JSONImpl::Value::operator delete();
          }

          else
          {
            --*v18;
          }
        }

        ++v10;
      }

      while (v7 != v10);
      result = [(Inspector *)this countByEnumeratingWithState:&v21 objects:v25 count:16];
      v7 = result;
    }

    while (result);
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

void *Inspector::toObjCStringArray(WTF::JSONImpl::ArrayBase **a1)
{
  if (!*a1)
  {
    return 0;
  }

  v2 = *(*a1 + 7);
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:v2];
  if (v2)
  {
    v4 = 0;
    v5 = *MEMORY[0x277CBE660];
    do
    {
      WTF::JSONImpl::ArrayBase::get(*a1);
      WTF::JSONImpl::Value::asString(&v15, v14);
      v6 = v14;
      v14 = 0;
      if (v6)
      {
        if (*v6 == 1)
        {
          WTF::JSONImpl::Value::operator delete();
        }

        else
        {
          --*v6;
        }
      }

      v7 = v15;
      if (v15 || ([MEMORY[0x277CBEAD8] raise:v5 format:@"array should contain objects of type 'String'"], (v7 = v15) != 0))
      {
        atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
        MEMORY[0x2743DB4B0](&v14, v7);
        if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, v8);
        }
      }

      else
      {
        v14 = &stru_2882B1C88;
        v12 = &stru_2882B1C88;
      }

      [v3 addObject:{v14, v14}];
      v10 = v14;
      v14 = 0;
      if (v10)
      {
      }

      v11 = v15;
      v15 = 0;
      if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v9);
      }

      ++v4;
    }

    while (v2 != v4);
  }

  return v3;
}

void sub_273CA35A4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void *Inspector::toObjCIntegerArray(WTF::JSONImpl::ArrayBase **a1)
{
  if (!*a1)
  {
    return 0;
  }

  v2 = *(*a1 + 7);
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:v2];
  if (v2)
  {
    for (i = 0; v2 != i; ++i)
    {
      WTF::JSONImpl::ArrayBase::get(*a1);
      v5 = WTF::JSONImpl::Value::asInteger(v8);
      v6 = v8;
      v8 = 0;
      if (v6)
      {
        if (*v6 == 1)
        {
          WTF::JSONImpl::Value::operator delete();
          if ((v5 & 0x100000000) == 0)
          {
LABEL_11:
            Inspector::toObjCIntegerArray();
          }

          goto LABEL_8;
        }

        --*v6;
      }

      if ((v5 & 0x100000000) == 0)
      {
        goto LABEL_11;
      }

LABEL_8:
      [v3 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", v5)}];
    }
  }

  return v3;
}

void sub_273CA3700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) >= a2)
  {
    return 1;
  }

  v2 = a2;
  if (!(a2 >> 29))
  {
    v3 = result;
    v4 = *result;
    v5 = *(result + 12);
    v6 = WTF::fastMalloc((8 * a2));
    *(v3 + 8) = v2;
    *v3 = v6;
    memcpy(v6, v4, 8 * v5);
    if (v4)
    {
      if (*v3 == v4)
      {
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      WTF::fastFree(v4, v7);
    }

    return 1;
  }

  __break(0xC471u);
  return result;
}

unint64_t WTF::Vector<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 8 * *(a1 + 12) <= a3)
  {
    v10 = *(a1 + 8);
    if (v10 + (v10 >> 1) <= v10 + 1)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = v10 + (v10 >> 1);
    }

    if (v11 <= a2)
    {
      v11 = a2;
    }

    if (v11 <= 0x10)
    {
      v12 = 16;
    }

    else
    {
      v12 = v11;
    }

    WTF::Vector<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
  }

  else
  {
    v6 = a3 - v5;
    v7 = *(a1 + 8);
    if (v7 + (v7 >> 1) <= v7 + 1)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = v7 + (v7 >> 1);
    }

    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v8 <= 0x10)
    {
      v9 = 16;
    }

    else
    {
      v9 = v8;
    }

    WTF::Vector<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t Inspector::ObjCInspectorCSSBackendDispatcher::enable(Inspector::ObjCInspectorCSSBackendDispatcher *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher6enableEl_block_invoke;
    v8[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v8[4] = this;
    v8[5] = a2;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher6enableEl_block_invoke_2;
    v7[3] = &__block_descriptor_48_e5_v8__0l;
    v7[4] = this;
    v7[5] = a2;
    return [*(this + 2) enableWithErrorCallback:v8 successCallback:v7];
  }

  else
  {
    v6 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v9);
  }
}

void sub_273CA3980(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher6enableEl_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CA3A0C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorCSSBackendDispatcher6enableEl_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

void sub_273CA3AA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorCSSBackendDispatcher::disable(Inspector::ObjCInspectorCSSBackendDispatcher *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher7disableEl_block_invoke;
    v8[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v8[4] = this;
    v8[5] = a2;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher7disableEl_block_invoke_2;
    v7[3] = &__block_descriptor_48_e5_v8__0l;
    v7[4] = this;
    v7[5] = a2;
    return [*(this + 2) disableWithErrorCallback:v8 successCallback:v7];
  }

  else
  {
    v6 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v9);
  }
}

void sub_273CA3BE0(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher7disableEl_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CA3C6C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorCSSBackendDispatcher7disableEl_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

void sub_273CA3D04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorCSSBackendDispatcher::getMatchedStylesForNode(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, char *a5)
{
  v10 = *(a1 + 16);
  if (objc_opt_respondsToSelector())
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getMatchedStylesForNodeEliONSt3__18optionalIbEES4__block_invoke;
    v18[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v18[4] = a1;
    v18[5] = a2;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getMatchedStylesForNodeEliONSt3__18optionalIbEES4__block_invoke_2;
    v17[3] = &__block_descriptor_48_e17_v32__0__8__16__24l;
    v17[4] = a1;
    v17[5] = a2;
    LOBYTE(v19) = 0;
    v11 = a4[1];
    if (v11 == 1)
    {
      LOBYTE(v19) = *a4;
    }

    v16 = 0;
    if (a5[1] == 1)
    {
      v16 = *a5;
      v12 = &v16;
    }

    else
    {
      v12 = 0;
    }

    if (v11)
    {
      v13 = &v19;
    }

    else
    {
      v13 = 0;
    }

    return [*(a1 + 16) getMatchedStylesForNodeWithErrorCallback:v18 successCallback:v17 nodeId:a3 includePseudo:v13 includeInherited:v12];
  }

  else
  {
    v15 = *(a1 + 8);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v19);
  }
}

void sub_273CA3EA0(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 56);
  *(v2 - 56) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getMatchedStylesForNodeEliONSt3__18optionalIbEES4__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CA3F2C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getMatchedStylesForNodeEliONSt3__18optionalIbEES4__block_invoke_2(WTF::JSONImpl::Object *a1, void **a2, Inspector **a3, Inspector **a4)
{
  v89 = *MEMORY[0x277D85DE8];
  v63 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v83, a1);
  v65 = a2;
  if (a2)
  {
    v5 = *a2;
    if (!*a2)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"optional parameter '%@' cannot be nil", @"matchedCSSRules"}];
      v5 = *a2;
    }

    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v79 objects:v88 count:16];
    if (v6)
    {
      v7 = *v80;
      v8 = *MEMORY[0x277CBE660];
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v80 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v79 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v11 = MEMORY[0x277CBEAD8];
            v12 = objc_opt_class();
            [v11 raise:v8 format:{@"array should contain objects of type '%@', found bad value: %@", NSStringFromClass(v12), v10}];
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v79 objects:v88 count:16];
      }

      while (v6);
    }
  }

  if (a3)
  {
    v13 = *a3;
    if (!*a3)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"optional parameter '%@' cannot be nil", @"pseudoElements"}];
      v13 = *a3;
    }

    v78 = 0u;
    v76 = 0u;
    v77 = 0u;
    v75 = 0u;
    v14 = [(Inspector *)v13 countByEnumeratingWithState:&v75 objects:v87 count:16];
    if (v14)
    {
      v15 = *v76;
      v16 = *MEMORY[0x277CBE660];
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v76 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v75 + 1) + 8 * j);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v19 = MEMORY[0x277CBEAD8];
            v20 = objc_opt_class();
            [v19 raise:v16 format:{@"array should contain objects of type '%@', found bad value: %@", NSStringFromClass(v20), v18}];
          }
        }

        v14 = [(Inspector *)v13 countByEnumeratingWithState:&v75 objects:v87 count:16];
      }

      while (v14);
    }
  }

  if (a4)
  {
    v21 = *a4;
    if (!*a4)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"optional parameter '%@' cannot be nil", @"inherited"}];
      v21 = *a4;
    }

    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v22 = [(Inspector *)v21 countByEnumeratingWithState:&v71 objects:v86 count:16];
    if (v22)
    {
      v23 = *v72;
      v24 = *MEMORY[0x277CBE660];
      do
      {
        for (k = 0; k != v22; ++k)
        {
          if (*v72 != v23)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v71 + 1) + 8 * k);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v27 = MEMORY[0x277CBEAD8];
            v28 = objc_opt_class();
            [v27 raise:v24 format:{@"array should contain objects of type '%@', found bad value: %@", NSStringFromClass(v28), v26}];
          }
        }

        v22 = [(Inspector *)v21 countByEnumeratingWithState:&v71 objects:v86 count:16];
      }

      while (v22);
    }
  }

  if (v65)
  {
    v29 = v83;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v70 = v84[0];
    Inspector::toJSONObjectArray(*v65, &v68);
    v30 = v68;
    v68 = 0;
    v69 = v30;
    WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ArrayBase,WTF::RawPtrTraits<WTF::JSONImpl::ArrayBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayBase>>>((v29 + 16), &v70, &v69, v84);
    if (v85 == 1)
    {
      v32 = *(v29 + 36);
      if (v32 == *(v29 + 32))
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v29 + 24, &v70);
      }

      else
      {
        v33 = *(v29 + 24);
        v34 = v70;
        if (v70)
        {
          atomic_fetch_add_explicit(v70, 2u, memory_order_relaxed);
        }

        v35 = *(v29 + 36);
        *(v33 + 8 * v32) = v34;
        *(v29 + 36) = v35 + 1;
      }
    }

    v36 = v69;
    v69 = 0;
    if (v36)
    {
      Inspector::toJSONObjectArray(v36);
    }

    v37 = v68;
    v68 = 0;
    if (v37)
    {
      if (*v37 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v37;
      }
    }

    v38 = v70;
    v70 = 0;
    if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v38, v31);
    }
  }

  if (a3)
  {
    v39 = v83;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v70 = v84[0];
    Inspector::toJSONObjectArray(*a3, &v68);
    v40 = v68;
    v68 = 0;
    v69 = v40;
    WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ArrayBase,WTF::RawPtrTraits<WTF::JSONImpl::ArrayBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayBase>>>((v39 + 16), &v70, &v69, v84);
    if (v85 == 1)
    {
      v42 = *(v39 + 36);
      if (v42 == *(v39 + 32))
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v39 + 24, &v70);
      }

      else
      {
        v43 = *(v39 + 24);
        v44 = v70;
        if (v70)
        {
          atomic_fetch_add_explicit(v70, 2u, memory_order_relaxed);
        }

        v45 = *(v39 + 36);
        *(v43 + 8 * v42) = v44;
        *(v39 + 36) = v45 + 1;
      }
    }

    v46 = v69;
    v69 = 0;
    if (v46)
    {
      Inspector::toJSONObjectArray(v46);
    }

    v47 = v68;
    v68 = 0;
    if (v47)
    {
      if (*v47 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v47;
      }
    }

    v48 = v70;
    v70 = 0;
    if (v48 && atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v48, v41);
    }
  }

  if (a4)
  {
    v49 = v83;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v70 = v84[0];
    Inspector::toJSONObjectArray(*a4, &v68);
    v50 = v68;
    v68 = 0;
    v69 = v50;
    WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ArrayBase,WTF::RawPtrTraits<WTF::JSONImpl::ArrayBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayBase>>>((v49 + 16), &v70, &v69, v84);
    if (v85 == 1)
    {
      v52 = *(v49 + 36);
      if (v52 == *(v49 + 32))
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v49 + 24, &v70);
      }

      else
      {
        v53 = *(v49 + 24);
        v54 = v70;
        if (v70)
        {
          atomic_fetch_add_explicit(v70, 2u, memory_order_relaxed);
        }

        v55 = *(v49 + 36);
        *(v53 + 8 * v52) = v54;
        *(v49 + 36) = v55 + 1;
      }
    }

    v56 = v69;
    v69 = 0;
    if (v56)
    {
      Inspector::toJSONObjectArray(v56);
    }

    v57 = v68;
    v68 = 0;
    if (v57)
    {
      if (*v57 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v57;
      }
    }

    v58 = v70;
    v70 = 0;
    if (v58 && atomic_fetch_add_explicit(v58, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v58, v51);
    }
  }

  v59 = *(v63 + 8);
  v60 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v83;
  v83 = 0;
  if (result)
  {
    if (*result == 1)
    {
      result = WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  v62 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_273CA466C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, WTF::StringImpl *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, _DWORD *a44)
{
  if (a18 && atomic_fetch_add_explicit(a18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a18, a2);
  }

  if (a44)
  {
    Inspector::toJSONObjectArray(a44);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorCSSBackendDispatcher::getInlineStylesForNode(Inspector::ObjCInspectorCSSBackendDispatcher *this, uint64_t a2, uint64_t a3)
{
  v6 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher22getInlineStylesForNodeEli_block_invoke;
    v10[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v10[4] = this;
    v10[5] = a2;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher22getInlineStylesForNodeEli_block_invoke_2;
    v9[3] = &__block_descriptor_48_e13_v24__0__8__16l;
    v9[4] = this;
    v9[5] = a2;
    return [*(this + 2) getInlineStylesForNodeWithErrorCallback:v10 successCallback:v9 nodeId:a3];
  }

  else
  {
    v8 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v11);
  }
}

void sub_273CA4884(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher22getInlineStylesForNodeEli_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CA4910(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorCSSBackendDispatcher22getInlineStylesForNodeEli_block_invoke_2(WTF::JSONImpl::Object *a1, id *a2, id *a3)
{
  v6 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v31, a1);
  if (a2 && !*a2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"optional parameter '%@' cannot be nil", @"inlineStyle"}];
  }

  if (a3 && !*a3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"optional parameter '%@' cannot be nil", @"attributesStyle"}];
  }

  if (a2)
  {
    v7 = v31;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v30 = v32[0];
    if (*a2)
    {
      [*a2 toJSONObject];
      v8 = v28;
    }

    else
    {
      v8 = 0;
    }

    v29 = v8;
    WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>((v7 + 16), &v30, &v29, v32);
    if (v33 == 1)
    {
      v10 = *(v7 + 36);
      if (v10 == *(v7 + 32))
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v7 + 24, &v30);
      }

      else
      {
        v11 = *(v7 + 24);
        v12 = v30;
        if (v30)
        {
          atomic_fetch_add_explicit(v30, 2u, memory_order_relaxed);
        }

        v13 = *(v7 + 36);
        *(v11 + 8 * v10) = v12;
        *(v7 + 36) = v13 + 1;
      }
    }

    v14 = v29;
    v29 = 0;
    if (v14)
    {
      Inspector::toJSONObjectArray(v14);
    }

    v28 = 0;
    v15 = v30;
    v30 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v9);
    }
  }

  if (a3)
  {
    v16 = v31;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v30 = v32[0];
    if (*a3)
    {
      [*a3 toJSONObject];
      v17 = v28;
    }

    else
    {
      v17 = 0;
    }

    v29 = v17;
    WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>((v16 + 16), &v30, &v29, v32);
    if (v33 == 1)
    {
      v19 = *(v16 + 36);
      if (v19 == *(v16 + 32))
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v16 + 24, &v30);
      }

      else
      {
        v20 = *(v16 + 24);
        v21 = v30;
        if (v30)
        {
          atomic_fetch_add_explicit(v30, 2u, memory_order_relaxed);
        }

        v22 = *(v16 + 36);
        *(v20 + 8 * v19) = v21;
        *(v16 + 36) = v22 + 1;
      }
    }

    v23 = v29;
    v29 = 0;
    if (v23)
    {
      Inspector::toJSONObjectArray(v23);
    }

    v24 = v30;
    v30 = 0;
    if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v24, v18);
    }
  }

  v25 = *(v6 + 8);
  v26 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v31;
  v31 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

void sub_273CA4C38(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12, _DWORD *a13)
{
  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a13)
  {
    Inspector::toJSONObjectArray(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorCSSBackendDispatcher::getComputedStyleForNode(Inspector::ObjCInspectorCSSBackendDispatcher *this, uint64_t a2, uint64_t a3)
{
  v6 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke;
    v10[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v10[4] = this;
    v10[5] = a2;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2;
    v9[3] = &__block_descriptor_48_e17_v16__0__NSArray_8l;
    v9[4] = this;
    v9[5] = a2;
    return [*(this + 2) getComputedStyleForNodeWithErrorCallback:v10 successCallback:v9 nodeId:a3];
  }

  else
  {
    v8 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v11);
  }
}

void sub_273CA4E04(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CA4E90(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2(WTF::JSONImpl::Object *a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v24 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v33, a1);
  if (!a2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"computedStyle"}];
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v3 = [a2 countByEnumeratingWithState:&v29 objects:v36 count:16];
  if (v3)
  {
    v4 = *v30;
    v5 = *MEMORY[0x277CBE660];
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v30 != v4)
        {
          objc_enumerationMutation(a2);
        }

        v7 = *(*(&v29 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v8 = MEMORY[0x277CBEAD8];
          v9 = objc_opt_class();
          [v8 raise:v5 format:{@"array should contain objects of type '%@', found bad value: %@", NSStringFromClass(v9), v7}];
        }
      }

      v3 = [a2 countByEnumeratingWithState:&v29 objects:v36 count:16];
    }

    while (v3);
  }

  v10 = v33;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v28 = v34;
  Inspector::toJSONObjectArray(a2, &v26);
  v11 = v26;
  v26 = 0;
  v27 = v11;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ArrayBase,WTF::RawPtrTraits<WTF::JSONImpl::ArrayBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayBase>>>(v10 + 2, &v28, &v27, &v34);
  if (v35 == 1)
  {
    v13 = *(v10 + 9);
    if (v13 == *(v10 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v10 + 3), &v28);
    }

    else
    {
      v14 = v10[3];
      v15 = v28;
      if (v28)
      {
        atomic_fetch_add_explicit(v28, 2u, memory_order_relaxed);
      }

      v16 = *(v10 + 9);
      *(v14 + 8 * v13) = v15;
      *(v10 + 9) = v16 + 1;
    }
  }

  v17 = v27;
  v27 = 0;
  if (v17)
  {
    Inspector::toJSONObjectArray(v17);
  }

  v18 = v26;
  v26 = 0;
  if (v18)
  {
    if (*v18 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v18;
    }
  }

  v19 = v28;
  v28 = 0;
  if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v19, v12);
  }

  v20 = *(v24 + 8);
  v21 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v33);
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_273CA5154(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, WTF::StringImpl *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, _DWORD *a25)
{
  if (a16 && atomic_fetch_add_explicit(a16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a16, a2);
  }

  if (a25)
  {
    Inspector::toJSONObjectArray(a25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorCSSBackendDispatcher::getFontDataForNode(Inspector::ObjCInspectorCSSBackendDispatcher *this, uint64_t a2, uint64_t a3)
{
  v6 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher18getFontDataForNodeEli_block_invoke;
    v10[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v10[4] = this;
    v10[5] = a2;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher18getFontDataForNodeEli_block_invoke_2;
    v9[3] = &__block_descriptor_48_e28_v16__0__RWIProtocolCSSFont_8l;
    v9[4] = this;
    v9[5] = a2;
    return [*(this + 2) getFontDataForNodeWithErrorCallback:v10 successCallback:v9 nodeId:a3];
  }

  else
  {
    v8 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v11);
  }
}

void sub_273CA5314(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher18getFontDataForNodeEli_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CA53A0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorCSSBackendDispatcher18getFontDataForNodeEli_block_invoke_2(WTF::JSONImpl::Object *a1, void *a2)
{
  v4 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v20, a1);
  if (!a2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"primaryFont"}];
  }

  v5 = v20;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v19 = v21;
  if (a2)
  {
    [a2 toJSONObject];
    v6 = v17;
  }

  else
  {
    v6 = 0;
  }

  v18 = v6;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v5 + 2, &v19, &v18, &v21);
  if (v22 == 1)
  {
    v8 = *(v5 + 9);
    if (v8 == *(v5 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v5 + 3), &v19);
    }

    else
    {
      v9 = v5[3];
      v10 = v19;
      if (v19)
      {
        atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
      }

      v11 = *(v5 + 9);
      *(v9 + 8 * v8) = v10;
      *(v5 + 9) = v11 + 1;
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    Inspector::toJSONObjectArray(v12);
  }

  v13 = v19;
  v19 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v7);
  }

  v14 = *(v4 + 8);
  v15 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v20);
}

void sub_273CA5554(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12, _DWORD *a13)
{
  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a13)
  {
    Inspector::toJSONObjectArray(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorCSSBackendDispatcher::getAllStyleSheets(Inspector::ObjCInspectorCSSBackendDispatcher *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getAllStyleSheetsEl_block_invoke;
    v8[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v8[4] = this;
    v8[5] = a2;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getAllStyleSheetsEl_block_invoke_2;
    v7[3] = &__block_descriptor_48_e17_v16__0__NSArray_8l;
    v7[4] = this;
    v7[5] = a2;
    return [*(this + 2) getAllStyleSheetsWithErrorCallback:v8 successCallback:v7];
  }

  else
  {
    v6 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v9);
  }
}

void sub_273CA56F8(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getAllStyleSheetsEl_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CA5784(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getAllStyleSheetsEl_block_invoke_2(WTF::JSONImpl::Object *a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v24 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v33, a1);
  if (!a2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"headers"}];
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v3 = [a2 countByEnumeratingWithState:&v29 objects:v36 count:16];
  if (v3)
  {
    v4 = *v30;
    v5 = *MEMORY[0x277CBE660];
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v30 != v4)
        {
          objc_enumerationMutation(a2);
        }

        v7 = *(*(&v29 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v8 = MEMORY[0x277CBEAD8];
          v9 = objc_opt_class();
          [v8 raise:v5 format:{@"array should contain objects of type '%@', found bad value: %@", NSStringFromClass(v9), v7}];
        }
      }

      v3 = [a2 countByEnumeratingWithState:&v29 objects:v36 count:16];
    }

    while (v3);
  }

  v10 = v33;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v28 = v34;
  Inspector::toJSONObjectArray(a2, &v26);
  v11 = v26;
  v26 = 0;
  v27 = v11;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ArrayBase,WTF::RawPtrTraits<WTF::JSONImpl::ArrayBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayBase>>>(v10 + 2, &v28, &v27, &v34);
  if (v35 == 1)
  {
    v13 = *(v10 + 9);
    if (v13 == *(v10 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v10 + 3), &v28);
    }

    else
    {
      v14 = v10[3];
      v15 = v28;
      if (v28)
      {
        atomic_fetch_add_explicit(v28, 2u, memory_order_relaxed);
      }

      v16 = *(v10 + 9);
      *(v14 + 8 * v13) = v15;
      *(v10 + 9) = v16 + 1;
    }
  }

  v17 = v27;
  v27 = 0;
  if (v17)
  {
    Inspector::toJSONObjectArray(v17);
  }

  v18 = v26;
  v26 = 0;
  if (v18)
  {
    if (*v18 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v18;
    }
  }

  v19 = v28;
  v28 = 0;
  if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v19, v12);
  }

  v20 = *(v24 + 8);
  v21 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v33);
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_273CA5A48(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, WTF::StringImpl *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, _DWORD *a25)
{
  if (a16 && atomic_fetch_add_explicit(a16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a16, a2);
  }

  if (a25)
  {
    Inspector::toJSONObjectArray(a25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorCSSBackendDispatcher::getStyleSheet(Inspector::ObjCInspectorCSSBackendDispatcher *this, uint64_t a2, atomic_uint **a3)
{
  v6 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher13getStyleSheetElRKN3WTF6StringE_block_invoke;
    v16[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v16[4] = this;
    v16[5] = a2;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher13getStyleSheetElRKN3WTF6StringE_block_invoke_2;
    v15[3] = &__block_descriptor_48_e38_v16__0__RWIProtocolCSSStyleSheetBody_8l;
    v15[4] = this;
    v15[5] = a2;
    v7 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v17, v7);
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v8);
      }
    }

    else
    {
      v17 = &stru_2882B1C88;
      v14 = &stru_2882B1C88;
    }

    v9 = v17;
    v17 = 0;
    if (v9)
    {
      v10 = v9;
      v11 = v17;
      v17 = 0;
      if (v11)
      {
      }
    }

    return [*(this + 2) getStyleSheetWithErrorCallback:v16 successCallback:v15 styleSheetId:v9];
  }

  else
  {
    v13 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v17);
  }
}

void sub_273CA5C74(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher13getStyleSheetElRKN3WTF6StringE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CA5D34(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorCSSBackendDispatcher13getStyleSheetElRKN3WTF6StringE_block_invoke_2(WTF::JSONImpl::Object *a1, void *a2)
{
  v4 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v20, a1);
  if (!a2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"styleSheet"}];
  }

  v5 = v20;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v19 = v21;
  if (a2)
  {
    [a2 toJSONObject];
    v6 = v17;
  }

  else
  {
    v6 = 0;
  }

  v18 = v6;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v5 + 2, &v19, &v18, &v21);
  if (v22 == 1)
  {
    v8 = *(v5 + 9);
    if (v8 == *(v5 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v5 + 3), &v19);
    }

    else
    {
      v9 = v5[3];
      v10 = v19;
      if (v19)
      {
        atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
      }

      v11 = *(v5 + 9);
      *(v9 + 8 * v8) = v10;
      *(v5 + 9) = v11 + 1;
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    Inspector::toJSONObjectArray(v12);
  }

  v13 = v19;
  v19 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v7);
  }

  v14 = *(v4 + 8);
  v15 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v20);
}

void sub_273CA5EE8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12, _DWORD *a13)
{
  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a13)
  {
    Inspector::toJSONObjectArray(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorCSSBackendDispatcher::getStyleSheetText(Inspector::ObjCInspectorCSSBackendDispatcher *this, uint64_t a2, atomic_uint **a3)
{
  v6 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke;
    v16[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v16[4] = this;
    v16[5] = a2;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2;
    v15[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v15[4] = this;
    v15[5] = a2;
    v7 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v17, v7);
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v8);
      }
    }

    else
    {
      v17 = &stru_2882B1C88;
      v14 = &stru_2882B1C88;
    }

    v9 = v17;
    v17 = 0;
    if (v9)
    {
      v10 = v9;
      v11 = v17;
      v17 = 0;
      if (v11)
      {
      }
    }

    return [*(this + 2) getStyleSheetTextWithErrorCallback:v16 successCallback:v15 styleSheetId:v9];
  }

  else
  {
    v13 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v17);
  }
}

void sub_273CA60F8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CA61B8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2(WTF::JSONImpl::Object *a1, uint64_t a2)
{
  v4 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v10, a1);
  if (!a2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"text"}];
  }

  v5 = v10;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v9 = v11;
  MEMORY[0x2743DB520](&v11, a2);
  WTF::JSONImpl::ObjectBase::setString(v5, &v9, &v11);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v11);
  v6 = *(v4 + 8);
  v7 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v10);
}

void sub_273CA62B8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, _DWORD *a11, WTF::StringImpl *a12)
{
  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  if (a11)
  {
    Inspector::toJSONObjectArray(a11);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *WTF::JSONImpl::ObjectBase::setString(WTF::JSONImpl::ObjectBase *this, const WTF::String *a2, const WTF::String *a3)
{
  WTF::JSONImpl::Value::create(&v10, a3, a2);
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(this + 2, a2, &v10, v11);
  if (v11[16] == 1)
  {
    v5 = *(this + 9);
    if (v5 == *(this + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(this + 24, a2);
    }

    else
    {
      v6 = *(this + 3);
      v7 = *a2;
      if (*a2)
      {
        atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
      }

      v8 = *(this + 9);
      *(v6 + 8 * v5) = v7;
      *(this + 9) = v8 + 1;
    }
  }

  result = v10;
  v10 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

void sub_273CA63EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _DWORD *a9)
{
  if (a9)
  {
    Inspector::toJSONObjectArray(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorCSSBackendDispatcher::setStyleSheetText(Inspector::ObjCInspectorCSSBackendDispatcher *this, uint64_t a2, atomic_uint **a3, atomic_uint **a4)
{
  v8 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17setStyleSheetTextElRKN3WTF6StringES4__block_invoke;
    v24[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v24[4] = this;
    v24[5] = a2;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17setStyleSheetTextElRKN3WTF6StringES4__block_invoke_2;
    v23[3] = &__block_descriptor_48_e5_v8__0l;
    v23[4] = this;
    v23[5] = a2;
    v9 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v25, v9);
      if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v10);
      }
    }

    else
    {
      v25 = &stru_2882B1C88;
      v21 = &stru_2882B1C88;
    }

    v11 = v25;
    v25 = 0;
    if (v11)
    {
      v12 = v11;
      v13 = v25;
      v25 = 0;
      if (v13)
      {
      }
    }

    v14 = *a4;
    if (v14)
    {
      atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v25, v14);
      if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v15);
      }
    }

    else
    {
      v25 = &stru_2882B1C88;
      v22 = &stru_2882B1C88;
    }

    v16 = v25;
    v25 = 0;
    if (v16)
    {
      v17 = v16;
      v18 = v25;
      v25 = 0;
      if (v18)
      {
      }
    }

    return [*(this + 2) setStyleSheetTextWithErrorCallback:v24 successCallback:v23 styleSheetId:v11 text:v16];
  }

  else
  {
    v20 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v25);
  }
}

void sub_273CA6610(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17setStyleSheetTextElRKN3WTF6StringES4__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CA66F0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17setStyleSheetTextElRKN3WTF6StringES4__block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

void sub_273CA6788(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorCSSBackendDispatcher::setStyleText(uint64_t a1, uint64_t a2, uint64_t a3, atomic_uint **a4)
{
  v8 = *(a1 + 16);
  if (objc_opt_respondsToSelector())
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher12setStyleTextElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEERKNS1_6StringE_block_invoke;
    v21[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v21[4] = a1;
    v21[5] = a2;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher12setStyleTextElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEERKNS1_6StringE_block_invoke_2;
    v20[3] = &__block_descriptor_48_e29_v16__0__RWIProtocolCSSStyle_8l;
    v20[4] = a1;
    v20[5] = a2;
    v9 = [(RWIProtocolJSONObject *)[RWIProtocolCSSStyleId alloc] initWithJSONObject:a3];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    v12 = *a4;
    if (v12)
    {
      atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v22, v12);
      if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v13);
      }
    }

    else
    {
      v22 = &stru_2882B1C88;
      v19 = &stru_2882B1C88;
    }

    v14 = v22;
    v22 = 0;
    if (v14)
    {
      v15 = v14;
      v16 = v22;
      v22 = 0;
      if (v16)
      {
      }
    }

    return [*(a1 + 16) setStyleTextWithErrorCallback:v21 successCallback:v20 styleId:v10 text:v14];
  }

  else
  {
    v18 = *(a1 + 8);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v22);
  }
}

void sub_273CA6964(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher12setStyleTextElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEERKNS1_6StringE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CA6A24(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorCSSBackendDispatcher12setStyleTextElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEERKNS1_6StringE_block_invoke_2(WTF::JSONImpl::Object *a1, void *a2)
{
  v4 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v20, a1);
  if (!a2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"style"}];
  }

  v5 = v20;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v19 = v21;
  if (a2)
  {
    [a2 toJSONObject];
    v6 = v17;
  }

  else
  {
    v6 = 0;
  }

  v18 = v6;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v5 + 2, &v19, &v18, &v21);
  if (v22 == 1)
  {
    v8 = *(v5 + 9);
    if (v8 == *(v5 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v5 + 3), &v19);
    }

    else
    {
      v9 = v5[3];
      v10 = v19;
      if (v19)
      {
        atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
      }

      v11 = *(v5 + 9);
      *(v9 + 8 * v8) = v10;
      *(v5 + 9) = v11 + 1;
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    Inspector::toJSONObjectArray(v12);
  }

  v13 = v19;
  v19 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v7);
  }

  v14 = *(v4 + 8);
  v15 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v20);
}

void sub_273CA6BD8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12, _DWORD *a13)
{
  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a13)
  {
    Inspector::toJSONObjectArray(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorCSSBackendDispatcher::setRuleSelector(uint64_t a1, uint64_t a2, uint64_t a3, atomic_uint **a4)
{
  v8 = *(a1 + 16);
  if (objc_opt_respondsToSelector())
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher15setRuleSelectorElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEERKNS1_6StringE_block_invoke;
    v21[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v21[4] = a1;
    v21[5] = a2;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher15setRuleSelectorElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEERKNS1_6StringE_block_invoke_2;
    v20[3] = &__block_descriptor_48_e28_v16__0__RWIProtocolCSSRule_8l;
    v20[4] = a1;
    v20[5] = a2;
    v9 = [(RWIProtocolJSONObject *)[RWIProtocolCSSRuleId alloc] initWithJSONObject:a3];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    v12 = *a4;
    if (v12)
    {
      atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v22, v12);
      if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v13);
      }
    }

    else
    {
      v22 = &stru_2882B1C88;
      v19 = &stru_2882B1C88;
    }

    v14 = v22;
    v22 = 0;
    if (v14)
    {
      v15 = v14;
      v16 = v22;
      v22 = 0;
      if (v16)
      {
      }
    }

    return [*(a1 + 16) setRuleSelectorWithErrorCallback:v21 successCallback:v20 ruleId:v10 selector:v14];
  }

  else
  {
    v18 = *(a1 + 8);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v22);
  }
}

void sub_273CA6E1C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher15setRuleSelectorElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEERKNS1_6StringE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CA6EDC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorCSSBackendDispatcher15setRuleSelectorElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEERKNS1_6StringE_block_invoke_2(WTF::JSONImpl::Object *a1, void *a2)
{
  v4 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v20, a1);
  if (!a2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"rule"}];
  }

  v5 = v20;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v19 = v21;
  if (a2)
  {
    [a2 toJSONObject];
    v6 = v17;
  }

  else
  {
    v6 = 0;
  }

  v18 = v6;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v5 + 2, &v19, &v18, &v21);
  if (v22 == 1)
  {
    v8 = *(v5 + 9);
    if (v8 == *(v5 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v5 + 3), &v19);
    }

    else
    {
      v9 = v5[3];
      v10 = v19;
      if (v19)
      {
        atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
      }

      v11 = *(v5 + 9);
      *(v9 + 8 * v8) = v10;
      *(v5 + 9) = v11 + 1;
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    Inspector::toJSONObjectArray(v12);
  }

  v13 = v19;
  v19 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v7);
  }

  v14 = *(v4 + 8);
  v15 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v20);
}

void sub_273CA7090(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12, _DWORD *a13)
{
  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a13)
  {
    Inspector::toJSONObjectArray(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorCSSBackendDispatcher::setGroupingHeaderText(uint64_t a1, uint64_t a2, uint64_t a3, atomic_uint **a4)
{
  v8 = *(a1 + 16);
  if (objc_opt_respondsToSelector())
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher21setGroupingHeaderTextElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEERKNS1_6StringE_block_invoke;
    v21[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v21[4] = a1;
    v21[5] = a2;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher21setGroupingHeaderTextElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEERKNS1_6StringE_block_invoke_2;
    v20[3] = &__block_descriptor_48_e32_v16__0__RWIProtocolCSSGrouping_8l;
    v20[4] = a1;
    v20[5] = a2;
    v9 = [(RWIProtocolJSONObject *)[RWIProtocolCSSRuleId alloc] initWithJSONObject:a3];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    v12 = *a4;
    if (v12)
    {
      atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v22, v12);
      if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v13);
      }
    }

    else
    {
      v22 = &stru_2882B1C88;
      v19 = &stru_2882B1C88;
    }

    v14 = v22;
    v22 = 0;
    if (v14)
    {
      v15 = v14;
      v16 = v22;
      v22 = 0;
      if (v16)
      {
      }
    }

    return [*(a1 + 16) setGroupingHeaderTextWithErrorCallback:v21 successCallback:v20 ruleId:v10 headerText:v14];
  }

  else
  {
    v18 = *(a1 + 8);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v22);
  }
}

void sub_273CA72D4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher21setGroupingHeaderTextElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEERKNS1_6StringE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CA7394(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorCSSBackendDispatcher21setGroupingHeaderTextElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEERKNS1_6StringE_block_invoke_2(WTF::JSONImpl::Object *a1, void *a2)
{
  v4 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v20, a1);
  if (!a2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"grouping"}];
  }

  v5 = v20;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v19 = v21;
  if (a2)
  {
    [a2 toJSONObject];
    v6 = v17;
  }

  else
  {
    v6 = 0;
  }

  v18 = v6;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v5 + 2, &v19, &v18, &v21);
  if (v22 == 1)
  {
    v8 = *(v5 + 9);
    if (v8 == *(v5 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v5 + 3), &v19);
    }

    else
    {
      v9 = v5[3];
      v10 = v19;
      if (v19)
      {
        atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
      }

      v11 = *(v5 + 9);
      *(v9 + 8 * v8) = v10;
      *(v5 + 9) = v11 + 1;
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    Inspector::toJSONObjectArray(v12);
  }

  v13 = v19;
  v19 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v7);
  }

  v14 = *(v4 + 8);
  v15 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v20);
}

void sub_273CA7548(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12, _DWORD *a13)
{
  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a13)
  {
    Inspector::toJSONObjectArray(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorCSSBackendDispatcher::createStyleSheet(Inspector::ObjCInspectorCSSBackendDispatcher *this, uint64_t a2, atomic_uint **a3)
{
  v6 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher16createStyleSheetElRKN3WTF6StringE_block_invoke;
    v16[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v16[4] = this;
    v16[5] = a2;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher16createStyleSheetElRKN3WTF6StringE_block_invoke_2;
    v15[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v15[4] = this;
    v15[5] = a2;
    v7 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v17, v7);
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v8);
      }
    }

    else
    {
      v17 = &stru_2882B1C88;
      v14 = &stru_2882B1C88;
    }

    v9 = v17;
    v17 = 0;
    if (v9)
    {
      v10 = v9;
      v11 = v17;
      v17 = 0;
      if (v11)
      {
      }
    }

    return [*(this + 2) createStyleSheetWithErrorCallback:v16 successCallback:v15 frameId:v9];
  }

  else
  {
    v13 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v17);
  }
}

void sub_273CA7758(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher16createStyleSheetElRKN3WTF6StringE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CA7818(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorCSSBackendDispatcher16createStyleSheetElRKN3WTF6StringE_block_invoke_2(WTF::JSONImpl::Object *a1, uint64_t a2)
{
  v4 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v10, a1);
  if (!a2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"styleSheetId"}];
  }

  v5 = v10;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v9 = v11;
  MEMORY[0x2743DB520](&v11, a2);
  WTF::JSONImpl::ObjectBase::setString(v5, &v9, &v11);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v11);
  v6 = *(v4 + 8);
  v7 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v10);
}

void sub_273CA7918(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, _DWORD *a11, WTF::StringImpl *a12)
{
  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  if (a11)
  {
    Inspector::toJSONObjectArray(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorCSSBackendDispatcher::addRule(Inspector::ObjCInspectorCSSBackendDispatcher *this, uint64_t a2, atomic_uint **a3, atomic_uint **a4)
{
  v8 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher7addRuleElRKN3WTF6StringES4__block_invoke;
    v24[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v24[4] = this;
    v24[5] = a2;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher7addRuleElRKN3WTF6StringES4__block_invoke_2;
    v23[3] = &__block_descriptor_48_e28_v16__0__RWIProtocolCSSRule_8l;
    v23[4] = this;
    v23[5] = a2;
    v9 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v25, v9);
      if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v10);
      }
    }

    else
    {
      v25 = &stru_2882B1C88;
      v21 = &stru_2882B1C88;
    }

    v11 = v25;
    v25 = 0;
    if (v11)
    {
      v12 = v11;
      v13 = v25;
      v25 = 0;
      if (v13)
      {
      }
    }

    v14 = *a4;
    if (v14)
    {
      atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v25, v14);
      if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v15);
      }
    }

    else
    {
      v25 = &stru_2882B1C88;
      v22 = &stru_2882B1C88;
    }

    v16 = v25;
    v25 = 0;
    if (v16)
    {
      v17 = v16;
      v18 = v25;
      v25 = 0;
      if (v18)
      {
      }
    }

    return [*(this + 2) addRuleWithErrorCallback:v24 successCallback:v23 styleSheetId:v11 selector:v16];
  }

  else
  {
    v20 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v25);
  }
}

void sub_273CA7B90(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher7addRuleElRKN3WTF6StringES4__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CA7C70(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorCSSBackendDispatcher7addRuleElRKN3WTF6StringES4__block_invoke_2(WTF::JSONImpl::Object *a1, void *a2)
{
  v4 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v20, a1);
  if (!a2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"rule"}];
  }

  v5 = v20;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v19 = v21;
  if (a2)
  {
    [a2 toJSONObject];
    v6 = v17;
  }

  else
  {
    v6 = 0;
  }

  v18 = v6;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v5 + 2, &v19, &v18, &v21);
  if (v22 == 1)
  {
    v8 = *(v5 + 9);
    if (v8 == *(v5 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v5 + 3), &v19);
    }

    else
    {
      v9 = v5[3];
      v10 = v19;
      if (v19)
      {
        atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
      }

      v11 = *(v5 + 9);
      *(v9 + 8 * v8) = v10;
      *(v5 + 9) = v11 + 1;
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    Inspector::toJSONObjectArray(v12);
  }

  v13 = v19;
  v19 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v7);
  }

  v14 = *(v4 + 8);
  v15 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v20);
}

void sub_273CA7E24(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12, _DWORD *a13)
{
  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a13)
  {
    Inspector::toJSONObjectArray(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorCSSBackendDispatcher::getSupportedCSSProperties(Inspector::ObjCInspectorCSSBackendDispatcher *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher25getSupportedCSSPropertiesEl_block_invoke;
    v8[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v8[4] = this;
    v8[5] = a2;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher25getSupportedCSSPropertiesEl_block_invoke_2;
    v7[3] = &__block_descriptor_48_e17_v16__0__NSArray_8l;
    v7[4] = this;
    v7[5] = a2;
    return [*(this + 2) getSupportedCSSPropertiesWithErrorCallback:v8 successCallback:v7];
  }

  else
  {
    v6 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v9);
  }
}

void sub_273CA7FC8(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher25getSupportedCSSPropertiesEl_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CA8054(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorCSSBackendDispatcher25getSupportedCSSPropertiesEl_block_invoke_2(WTF::JSONImpl::Object *a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v24 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v33, a1);
  if (!a2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"cssProperties"}];
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v3 = [a2 countByEnumeratingWithState:&v29 objects:v36 count:16];
  if (v3)
  {
    v4 = *v30;
    v5 = *MEMORY[0x277CBE660];
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v30 != v4)
        {
          objc_enumerationMutation(a2);
        }

        v7 = *(*(&v29 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v8 = MEMORY[0x277CBEAD8];
          v9 = objc_opt_class();
          [v8 raise:v5 format:{@"array should contain objects of type '%@', found bad value: %@", NSStringFromClass(v9), v7}];
        }
      }

      v3 = [a2 countByEnumeratingWithState:&v29 objects:v36 count:16];
    }

    while (v3);
  }

  v10 = v33;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v28 = v34;
  Inspector::toJSONObjectArray(a2, &v26);
  v11 = v26;
  v26 = 0;
  v27 = v11;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ArrayBase,WTF::RawPtrTraits<WTF::JSONImpl::ArrayBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayBase>>>(v10 + 2, &v28, &v27, &v34);
  if (v35 == 1)
  {
    v13 = *(v10 + 9);
    if (v13 == *(v10 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v10 + 3), &v28);
    }

    else
    {
      v14 = v10[3];
      v15 = v28;
      if (v28)
      {
        atomic_fetch_add_explicit(v28, 2u, memory_order_relaxed);
      }

      v16 = *(v10 + 9);
      *(v14 + 8 * v13) = v15;
      *(v10 + 9) = v16 + 1;
    }
  }

  v17 = v27;
  v27 = 0;
  if (v17)
  {
    Inspector::toJSONObjectArray(v17);
  }

  v18 = v26;
  v26 = 0;
  if (v18)
  {
    if (*v18 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v18;
    }
  }

  v19 = v28;
  v28 = 0;
  if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v19, v12);
  }

  v20 = *(v24 + 8);
  v21 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v33);
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_273CA8318(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, WTF::StringImpl *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, _DWORD *a25)
{
  if (a16 && atomic_fetch_add_explicit(a16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a16, a2);
  }

  if (a25)
  {
    Inspector::toJSONObjectArray(a25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorCSSBackendDispatcher::getSupportedSystemFontFamilyNames(Inspector::ObjCInspectorCSSBackendDispatcher *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher33getSupportedSystemFontFamilyNamesEl_block_invoke;
    v8[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v8[4] = this;
    v8[5] = a2;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher33getSupportedSystemFontFamilyNamesEl_block_invoke_2;
    v7[3] = &__block_descriptor_48_e17_v16__0__NSArray_8l;
    v7[4] = this;
    v7[5] = a2;
    return [*(this + 2) getSupportedSystemFontFamilyNamesWithErrorCallback:v8 successCallback:v7];
  }

  else
  {
    v6 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v9);
  }
}

void sub_273CA84D0(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher33getSupportedSystemFontFamilyNamesEl_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CA855C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorCSSBackendDispatcher33getSupportedSystemFontFamilyNamesEl_block_invoke_2(WTF::JSONImpl::Object *a1, Inspector *a2)
{
  v4 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v21, a1);
  if (!a2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"fontFamilyNames"}];
  }

  v5 = v21;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v20 = v22;
  Inspector::toJSONStringArray(a2, &v18);
  v6 = v18;
  v18 = 0;
  v19 = v6;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ArrayBase,WTF::RawPtrTraits<WTF::JSONImpl::ArrayBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayBase>>>(v5 + 2, &v20, &v19, &v22);
  if (v23 == 1)
  {
    v8 = *(v5 + 9);
    if (v8 == *(v5 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v5 + 3), &v20);
    }

    else
    {
      v9 = v5[3];
      v10 = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
      }

      v11 = *(v5 + 9);
      *(v9 + 8 * v8) = v10;
      *(v5 + 9) = v11 + 1;
    }
  }

  v12 = v19;
  v19 = 0;
  if (v12)
  {
    Inspector::toJSONObjectArray(v12);
  }

  v13 = v18;
  v18 = 0;
  if (v13)
  {
    if (*v13 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v13;
    }
  }

  v14 = v20;
  v20 = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v7);
  }

  v15 = *(v4 + 8);
  v16 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v21);
}

void sub_273CA8704(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12, _DWORD *a13)
{
  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a13)
  {
    Inspector::toJSONObjectArray(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorCSSBackendDispatcher::forcePseudoState(uint64_t a1, uint64_t a2, uint64_t a3, WTF::JSONImpl::ArrayBase **a4)
{
  v8 = *(a1 + 16);
  if (objc_opt_respondsToSelector())
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher16forcePseudoStateEliON3WTF3RefINS1_8JSONImpl5ArrayENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEE_block_invoke;
    v15[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v15[4] = a1;
    v15[5] = a2;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher16forcePseudoStateEliON3WTF3RefINS1_8JSONImpl5ArrayENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEE_block_invoke_2;
    v14[3] = &__block_descriptor_48_e5_v8__0l;
    v14[4] = a1;
    v14[5] = a2;
    v9 = *a4;
    *a4 = 0;
    v16 = v9;
    v10 = Inspector::toObjCStringArray(&v16);
    v11 = v16;
    v16 = 0;
    if (v11)
    {
      if (*v11 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v11;
      }
    }

    return [*(a1 + 16) forcePseudoStateWithErrorCallback:v15 successCallback:v14 nodeId:a3 forcedPseudoClasses:v10];
  }

  else
  {
    v13 = *(a1 + 8);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v16);
  }
}

void sub_273CA88F4(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher16forcePseudoStateEliON3WTF3RefINS1_8JSONImpl5ArrayENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CA8998(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorCSSBackendDispatcher16forcePseudoStateEliON3WTF3RefINS1_8JSONImpl5ArrayENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEE_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

void sub_273CA8A30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint *Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(Inspector::ObjCInspectorCSSBackendDispatcher *this, uint64_t a2, const WTF::String *a3)
{
  v6 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher31setLayoutContextTypeChangedModeElRKN3WTF6StringE_block_invoke;
    v16[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v16[4] = this;
    v16[5] = a2;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher31setLayoutContextTypeChangedModeElRKN3WTF6StringE_block_invoke_2;
    v15[3] = &__block_descriptor_48_e5_v8__0l;
    v15[4] = this;
    v15[5] = a2;
    v7 = *a3;
    if (*a3)
    {
      v8 = *(v7 + 8);
      v9 = *(v7 + 4) | (((*(v7 + 16) >> 2) & 1) << 32);
    }

    else
    {
      v8 = 0;
      v9 = 0x100000000;
    }

    v10 = &qword_279EAA820;
    v11 = 48;
    while ((WTF::operator==(v8, v9, *(v10 - 2), *(v10 - 1)) & 1) == 0)
    {
      v10 += 3;
      v11 -= 24;
      if (!v11)
      {
        v12 = *(this + 1);
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        Inspector::BackendDispatcher::reportProtocolError();
        return Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v17);
      }
    }

    return [*(this + 2) setLayoutContextTypeChangedModeWithErrorCallback:v16 successCallback:v15 mode:*v10];
  }

  else
  {
    v14 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v17);
  }
}

void sub_273CA8C0C(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 56);
  *(v2 - 56) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher31setLayoutContextTypeChangedModeElRKN3WTF6StringE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CA8C9C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorCSSBackendDispatcher31setLayoutContextTypeChangedModeElRKN3WTF6StringE_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

void sub_273CA8D34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::getDocument(Inspector::ObjCInspectorDOMBackendDispatcher *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher11getDocumentEl_block_invoke;
    v8[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v8[4] = this;
    v8[5] = a2;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher11getDocumentEl_block_invoke_2;
    v7[3] = &__block_descriptor_48_e28_v16__0__RWIProtocolDOMNode_8l;
    v7[4] = this;
    v7[5] = a2;
    return [*(this + 2) getDocumentWithErrorCallback:v8 successCallback:v7];
  }

  else
  {
    v6 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v9);
  }
}

void sub_273CA8E70(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher11getDocumentEl_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CA8EFC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher11getDocumentEl_block_invoke_2(WTF::JSONImpl::Object *a1, void *a2)
{
  v4 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v20, a1);
  if (!a2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"root"}];
  }

  v5 = v20;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v19 = v21;
  if (a2)
  {
    [a2 toJSONObject];
    v6 = v17;
  }

  else
  {
    v6 = 0;
  }

  v18 = v6;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v5 + 2, &v19, &v18, &v21);
  if (v22 == 1)
  {
    v8 = *(v5 + 9);
    if (v8 == *(v5 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v5 + 3), &v19);
    }

    else
    {
      v9 = v5[3];
      v10 = v19;
      if (v19)
      {
        atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
      }

      v11 = *(v5 + 9);
      *(v9 + 8 * v8) = v10;
      *(v5 + 9) = v11 + 1;
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    Inspector::toJSONObjectArray(v12);
  }

  v13 = v19;
  v19 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v7);
  }

  v14 = *(v4 + 8);
  v15 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v20);
}

void sub_273CA90B0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12, _DWORD *a13)
{
  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a13)
  {
    Inspector::toJSONObjectArray(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::requestChildNodes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 16);
  if (objc_opt_respondsToSelector())
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher17requestChildNodesEliONSt3__18optionalIiEE_block_invoke;
    v13[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v13[4] = a1;
    v13[5] = a2;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher17requestChildNodesEliONSt3__18optionalIiEE_block_invoke_2;
    v12[3] = &__block_descriptor_48_e5_v8__0l;
    v12[4] = a1;
    v12[5] = a2;
    LODWORD(v14) = 0;
    if (*(a4 + 4) == 1)
    {
      LODWORD(v14) = *a4;
      v9 = &v14;
    }

    else
    {
      v9 = 0;
    }

    return [*(a1 + 16) requestChildNodesWithErrorCallback:v13 successCallback:v12 nodeId:a3 depth:v9];
  }

  else
  {
    v11 = *(a1 + 8);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v14);
  }
}

void sub_273CA9284(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher17requestChildNodesEliONSt3__18optionalIiEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CA9310(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher17requestChildNodesEliONSt3__18optionalIiEE_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

void sub_273CA93A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::requestAssignedSlot(Inspector::ObjCInspectorDOMBackendDispatcher *this, uint64_t a2, uint64_t a3)
{
  v6 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher19requestAssignedSlotEli_block_invoke;
    v10[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v10[4] = this;
    v10[5] = a2;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher19requestAssignedSlotEli_block_invoke_2;
    v9[3] = &__block_descriptor_48_e9_v16__0_i8l;
    v9[4] = this;
    v9[5] = a2;
    return [*(this + 2) requestAssignedSlotWithErrorCallback:v10 successCallback:v9 nodeId:a3];
  }

  else
  {
    v8 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v11);
  }
}

void sub_273CA94EC(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher19requestAssignedSlotEli_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CA9578(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher19requestAssignedSlotEli_block_invoke_2(WTF::JSONImpl::Object *a1, unsigned int *a2)
{
  v4 = *(a1 + 4);
  WTF::JSONImpl::Object::create(v10, a1);
  if (a2)
  {
    v8 = v10[0];
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v9 = v10[1];
    WTF::JSONImpl::ObjectBase::setInteger(v8, &v9, *a2);
    Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v9);
  }

  v5 = *(v4 + 8);
  v6 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v10[0];
  v10[0] = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

void sub_273CA965C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, _DWORD *a11)
{
  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  if (a11)
  {
    Inspector::toJSONObjectArray(a11);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *WTF::JSONImpl::ObjectBase::setInteger(WTF::JSONImpl::ObjectBase *this, WTF::StringImpl **a2, WTF::JSONImpl::Value *a3)
{
  WTF::JSONImpl::Value::create(a3);
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(this + 2, a2, &v10, v11);
  if (v11[16] == 1)
  {
    v5 = *(this + 9);
    if (v5 == *(this + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(this + 24, a2);
    }

    else
    {
      v6 = *(this + 3);
      v7 = *a2;
      if (*a2)
      {
        atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
      }

      v8 = *(this + 9);
      *(v6 + 8 * v5) = v7;
      *(this + 9) = v8 + 1;
    }
  }

  result = v10;
  v10 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

void sub_273CA9768(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _DWORD *a9)
{
  if (a9)
  {
    Inspector::toJSONObjectArray(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::requestAssignedNodes(Inspector::ObjCInspectorDOMBackendDispatcher *this, uint64_t a2, uint64_t a3)
{
  v6 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher20requestAssignedNodesEli_block_invoke;
    v10[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v10[4] = this;
    v10[5] = a2;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher20requestAssignedNodesEli_block_invoke_2;
    v9[3] = &__block_descriptor_48_e17_v16__0__NSArray_8l;
    v9[4] = this;
    v9[5] = a2;
    return [*(this + 2) requestAssignedNodesWithErrorCallback:v10 successCallback:v9 slotElementId:a3];
  }

  else
  {
    v8 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v11);
  }
}

void sub_273CA98AC(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher20requestAssignedNodesEli_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CA9938(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher20requestAssignedNodesEli_block_invoke_2(WTF::JSONImpl::Object *a1, Inspector *a2)
{
  v4 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v21, a1);
  if (!a2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"assignedNodeIds"}];
  }

  v5 = v21;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v20 = v22;
  Inspector::toJSONIntegerArray(a2, &v18);
  v6 = v18;
  v18 = 0;
  v19 = v6;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ArrayBase,WTF::RawPtrTraits<WTF::JSONImpl::ArrayBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayBase>>>(v5 + 2, &v20, &v19, &v22);
  if (v23 == 1)
  {
    v8 = *(v5 + 9);
    if (v8 == *(v5 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v5 + 3), &v20);
    }

    else
    {
      v9 = v5[3];
      v10 = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
      }

      v11 = *(v5 + 9);
      *(v9 + 8 * v8) = v10;
      *(v5 + 9) = v11 + 1;
    }
  }

  v12 = v19;
  v19 = 0;
  if (v12)
  {
    Inspector::toJSONObjectArray(v12);
  }

  v13 = v18;
  v18 = 0;
  if (v13)
  {
    if (*v13 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v13;
    }
  }

  v14 = v20;
  v20 = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v7);
  }

  v15 = *(v4 + 8);
  v16 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v21);
}

void sub_273CA9AE0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12, _DWORD *a13)
{
  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a13)
  {
    Inspector::toJSONObjectArray(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::querySelector(Inspector::ObjCInspectorDOMBackendDispatcher *this, uint64_t a2, uint64_t a3, atomic_uint **a4)
{
  v8 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13querySelectorEliRKN3WTF6StringE_block_invoke;
    v18[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v18[4] = this;
    v18[5] = a2;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13querySelectorEliRKN3WTF6StringE_block_invoke_2;
    v17[3] = &__block_descriptor_48_e9_v16__0_i8l;
    v17[4] = this;
    v17[5] = a2;
    v9 = *a4;
    if (*a4)
    {
      atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v19, v9);
      if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v10);
      }
    }

    else
    {
      v19 = &stru_2882B1C88;
      v16 = &stru_2882B1C88;
    }

    v11 = v19;
    v19 = 0;
    if (v11)
    {
      v12 = v11;
      v13 = v19;
      v19 = 0;
      if (v13)
      {
      }
    }

    return [*(this + 2) querySelectorWithErrorCallback:v18 successCallback:v17 nodeId:a3 selector:v11];
  }

  else
  {
    v15 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v19);
  }
}

void sub_273CA9D00(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13querySelectorEliRKN3WTF6StringE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CA9DC0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13querySelectorEliRKN3WTF6StringE_block_invoke_2(WTF::JSONImpl::Object *a1, unsigned int *a2)
{
  v4 = *(a1 + 4);
  WTF::JSONImpl::Object::create(v10, a1);
  if (a2)
  {
    v8 = v10[0];
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v9 = v10[1];
    WTF::JSONImpl::ObjectBase::setInteger(v8, &v9, *a2);
    Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v9);
  }

  v5 = *(v4 + 8);
  v6 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v10[0];
  v10[0] = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

void sub_273CA9EA4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, _DWORD *a11)
{
  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  if (a11)
  {
    Inspector::toJSONObjectArray(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::querySelectorAll(Inspector::ObjCInspectorDOMBackendDispatcher *this, uint64_t a2, uint64_t a3, atomic_uint **a4)
{
  v8 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher16querySelectorAllEliRKN3WTF6StringE_block_invoke;
    v18[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v18[4] = this;
    v18[5] = a2;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher16querySelectorAllEliRKN3WTF6StringE_block_invoke_2;
    v17[3] = &__block_descriptor_48_e17_v16__0__NSArray_8l;
    v17[4] = this;
    v17[5] = a2;
    v9 = *a4;
    if (*a4)
    {
      atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v19, v9);
      if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v10);
      }
    }

    else
    {
      v19 = &stru_2882B1C88;
      v16 = &stru_2882B1C88;
    }

    v11 = v19;
    v19 = 0;
    if (v11)
    {
      v12 = v11;
      v13 = v19;
      v19 = 0;
      if (v13)
      {
      }
    }

    return [*(this + 2) querySelectorAllWithErrorCallback:v18 successCallback:v17 nodeId:a3 selector:v11];
  }

  else
  {
    v15 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v19);
  }
}

void sub_273CAA088(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher16querySelectorAllEliRKN3WTF6StringE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CAA148(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher16querySelectorAllEliRKN3WTF6StringE_block_invoke_2(WTF::JSONImpl::Object *a1, Inspector *a2)
{
  v4 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v21, a1);
  if (!a2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"nodeIds"}];
  }

  v5 = v21;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v20 = v22;
  Inspector::toJSONIntegerArray(a2, &v18);
  v6 = v18;
  v18 = 0;
  v19 = v6;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ArrayBase,WTF::RawPtrTraits<WTF::JSONImpl::ArrayBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayBase>>>(v5 + 2, &v20, &v19, &v22);
  if (v23 == 1)
  {
    v8 = *(v5 + 9);
    if (v8 == *(v5 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v5 + 3), &v20);
    }

    else
    {
      v9 = v5[3];
      v10 = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
      }

      v11 = *(v5 + 9);
      *(v9 + 8 * v8) = v10;
      *(v5 + 9) = v11 + 1;
    }
  }

  v12 = v19;
  v19 = 0;
  if (v12)
  {
    Inspector::toJSONObjectArray(v12);
  }

  v13 = v18;
  v18 = 0;
  if (v13)
  {
    if (*v13 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v13;
    }
  }

  v14 = v20;
  v20 = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v7);
  }

  v15 = *(v4 + 8);
  v16 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v21);
}

void sub_273CAA2F0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12, _DWORD *a13)
{
  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a13)
  {
    Inspector::toJSONObjectArray(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::setNodeName(Inspector::ObjCInspectorDOMBackendDispatcher *this, uint64_t a2, uint64_t a3, atomic_uint **a4)
{
  v8 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher11setNodeNameEliRKN3WTF6StringE_block_invoke;
    v18[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v18[4] = this;
    v18[5] = a2;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher11setNodeNameEliRKN3WTF6StringE_block_invoke_2;
    v17[3] = &__block_descriptor_48_e8_v12__0i8l;
    v17[4] = this;
    v17[5] = a2;
    v9 = *a4;
    if (*a4)
    {
      atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v19, v9);
      if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v10);
      }
    }

    else
    {
      v19 = &stru_2882B1C88;
      v16 = &stru_2882B1C88;
    }

    v11 = v19;
    v19 = 0;
    if (v11)
    {
      v12 = v11;
      v13 = v19;
      v19 = 0;
      if (v13)
      {
      }
    }

    return [*(this + 2) setNodeNameWithErrorCallback:v18 successCallback:v17 nodeId:a3 name:v11];
  }

  else
  {
    v15 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v19);
  }
}

void sub_273CAA510(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher11setNodeNameEliRKN3WTF6StringE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CAA5D0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher11setNodeNameEliRKN3WTF6StringE_block_invoke_2(WTF::JSONImpl::Object *a1, WTF::JSONImpl::Value *a2)
{
  v4 = *(a1 + 4);
  WTF::JSONImpl::Object::create(v10, a1);
  v5 = v10[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v9 = v10[1];
  WTF::JSONImpl::ObjectBase::setInteger(v5, &v9, a2);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v9);
  v6 = *(v4 + 8);
  v7 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(v10);
}

void sub_273CAA690(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, _DWORD *a11)
{
  if (a11)
  {
    Inspector::toJSONObjectArray(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::setNodeValue(Inspector::ObjCInspectorDOMBackendDispatcher *this, uint64_t a2, uint64_t a3, atomic_uint **a4)
{
  v8 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher12setNodeValueEliRKN3WTF6StringE_block_invoke;
    v18[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v18[4] = this;
    v18[5] = a2;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher12setNodeValueEliRKN3WTF6StringE_block_invoke_2;
    v17[3] = &__block_descriptor_48_e5_v8__0l;
    v17[4] = this;
    v17[5] = a2;
    v9 = *a4;
    if (*a4)
    {
      atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v19, v9);
      if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v10);
      }
    }

    else
    {
      v19 = &stru_2882B1C88;
      v16 = &stru_2882B1C88;
    }

    v11 = v19;
    v19 = 0;
    if (v11)
    {
      v12 = v11;
      v13 = v19;
      v19 = 0;
      if (v13)
      {
      }
    }

    return [*(this + 2) setNodeValueWithErrorCallback:v18 successCallback:v17 nodeId:a3 value:v11];
  }

  else
  {
    v15 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v19);
  }
}

void sub_273CAA874(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher12setNodeValueEliRKN3WTF6StringE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CAA934(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher12setNodeValueEliRKN3WTF6StringE_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

void sub_273CAA9CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::removeNode(Inspector::ObjCInspectorDOMBackendDispatcher *this, uint64_t a2, uint64_t a3)
{
  v6 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher10removeNodeEli_block_invoke;
    v10[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v10[4] = this;
    v10[5] = a2;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher10removeNodeEli_block_invoke_2;
    v9[3] = &__block_descriptor_48_e5_v8__0l;
    v9[4] = this;
    v9[5] = a2;
    return [*(this + 2) removeNodeWithErrorCallback:v10 successCallback:v9 nodeId:a3];
  }

  else
  {
    v8 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v11);
  }
}

void sub_273CAAB10(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher10removeNodeEli_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CAAB9C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher10removeNodeEli_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

void sub_273CAAC34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::setAttributeValue(Inspector::ObjCInspectorDOMBackendDispatcher *this, uint64_t a2, uint64_t a3, atomic_uint **a4, atomic_uint **a5)
{
  v10 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher17setAttributeValueEliRKN3WTF6StringES4__block_invoke;
    v26[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v26[4] = this;
    v26[5] = a2;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher17setAttributeValueEliRKN3WTF6StringES4__block_invoke_2;
    v25[3] = &__block_descriptor_48_e5_v8__0l;
    v25[4] = this;
    v25[5] = a2;
    v11 = *a4;
    if (*a4)
    {
      atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v27, v11);
      if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v12);
      }
    }

    else
    {
      v27 = &stru_2882B1C88;
      v23 = &stru_2882B1C88;
    }

    v13 = v27;
    v27 = 0;
    if (v13)
    {
      v14 = v13;
      v15 = v27;
      v27 = 0;
      if (v15)
      {
      }
    }

    v16 = *a5;
    if (v16)
    {
      atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v27, v16);
      if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16, v17);
      }
    }

    else
    {
      v27 = &stru_2882B1C88;
      v24 = &stru_2882B1C88;
    }

    v18 = v27;
    v27 = 0;
    if (v18)
    {
      v19 = v18;
      v20 = v27;
      v27 = 0;
      if (v20)
      {
      }
    }

    return [*(this + 2) setAttributeValueWithErrorCallback:v26 successCallback:v25 nodeId:a3 name:v13 value:v18];
  }

  else
  {
    v22 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v27);
  }
}

void sub_273CAAE68(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 56);
  *(v1 - 56) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher17setAttributeValueEliRKN3WTF6StringES4__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CAAF48(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher17setAttributeValueEliRKN3WTF6StringES4__block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

void sub_273CAAFE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::setAttributesAsText(Inspector::ObjCInspectorDOMBackendDispatcher *this, uint64_t a2, uint64_t a3, atomic_uint **a4, atomic_uint **a5)
{
  v10 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher19setAttributesAsTextEliRKN3WTF6StringES4__block_invoke;
    v27[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v27[4] = this;
    v27[5] = a2;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher19setAttributesAsTextEliRKN3WTF6StringES4__block_invoke_2;
    v26[3] = &__block_descriptor_48_e5_v8__0l;
    v26[4] = this;
    v26[5] = a2;
    v11 = *a4;
    if (*a4)
    {
      atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v28, v11);
      if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v12);
      }
    }

    else
    {
      v28 = &stru_2882B1C88;
      v24 = &stru_2882B1C88;
    }

    v13 = v28;
    v28 = 0;
    if (v13)
    {
      v14 = v13;
      v15 = v28;
      v28 = 0;
      if (v15)
      {
      }
    }

    v28 = 0;
    v16 = *a5;
    if (*a5)
    {
      atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v25, v16);
      if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16, v17);
      }

      v18 = v25;
      v25 = 0;
      if (v18)
      {
        v19 = v18;
        v20 = v25;
        v28 = v18;
        v25 = 0;
        if (v20)
        {
        }
      }

      else
      {
        v28 = 0;
      }

      if (*a5)
      {
        v21 = &v28;
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

    return [*(this + 2) setAttributesAsTextWithErrorCallback:v27 successCallback:v26 nodeId:a3 text:v13 name:{v21, v25}];
  }

  else
  {
    v23 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v28);
  }
}

void sub_273CAB224(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9)
{
  if (a9)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher19setAttributesAsTextEliRKN3WTF6StringES4__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CAB314(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher19setAttributesAsTextEliRKN3WTF6StringES4__block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

void sub_273CAB3AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::removeAttribute(Inspector::ObjCInspectorDOMBackendDispatcher *this, uint64_t a2, uint64_t a3, atomic_uint **a4)
{
  v8 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher15removeAttributeEliRKN3WTF6StringE_block_invoke;
    v18[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v18[4] = this;
    v18[5] = a2;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher15removeAttributeEliRKN3WTF6StringE_block_invoke_2;
    v17[3] = &__block_descriptor_48_e5_v8__0l;
    v17[4] = this;
    v17[5] = a2;
    v9 = *a4;
    if (*a4)
    {
      atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v19, v9);
      if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v10);
      }
    }

    else
    {
      v19 = &stru_2882B1C88;
      v16 = &stru_2882B1C88;
    }

    v11 = v19;
    v19 = 0;
    if (v11)
    {
      v12 = v11;
      v13 = v19;
      v19 = 0;
      if (v13)
      {
      }
    }

    return [*(this + 2) removeAttributeWithErrorCallback:v18 successCallback:v17 nodeId:a3 name:v11];
  }

  else
  {
    v15 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v19);
  }
}

void sub_273CAB564(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher15removeAttributeEliRKN3WTF6StringE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CAB624(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher15removeAttributeEliRKN3WTF6StringE_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

void sub_273CAB6BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::getSupportedEventNames(Inspector::ObjCInspectorDOMBackendDispatcher *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher22getSupportedEventNamesEl_block_invoke;
    v8[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v8[4] = this;
    v8[5] = a2;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher22getSupportedEventNamesEl_block_invoke_2;
    v7[3] = &__block_descriptor_48_e17_v16__0__NSArray_8l;
    v7[4] = this;
    v7[5] = a2;
    return [*(this + 2) getSupportedEventNamesWithErrorCallback:v8 successCallback:v7];
  }

  else
  {
    v6 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v9);
  }
}

void sub_273CAB7F8(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher22getSupportedEventNamesEl_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CAB884(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher22getSupportedEventNamesEl_block_invoke_2(WTF::JSONImpl::Object *a1, Inspector *a2)
{
  v4 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v21, a1);
  if (!a2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"eventNames"}];
  }

  v5 = v21;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v20 = v22;
  Inspector::toJSONStringArray(a2, &v18);
  v6 = v18;
  v18 = 0;
  v19 = v6;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ArrayBase,WTF::RawPtrTraits<WTF::JSONImpl::ArrayBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayBase>>>(v5 + 2, &v20, &v19, &v22);
  if (v23 == 1)
  {
    v8 = *(v5 + 9);
    if (v8 == *(v5 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v5 + 3), &v20);
    }

    else
    {
      v9 = v5[3];
      v10 = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
      }

      v11 = *(v5 + 9);
      *(v9 + 8 * v8) = v10;
      *(v5 + 9) = v11 + 1;
    }
  }

  v12 = v19;
  v19 = 0;
  if (v12)
  {
    Inspector::toJSONObjectArray(v12);
  }

  v13 = v18;
  v18 = 0;
  if (v13)
  {
    if (*v13 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v13;
    }
  }

  v14 = v20;
  v20 = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v7);
  }

  v15 = *(v4 + 8);
  v16 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v21);
}

void sub_273CABA2C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12, _DWORD *a13)
{
  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a13)
  {
    Inspector::toJSONObjectArray(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::getDataBindingsForNode(Inspector::ObjCInspectorDOMBackendDispatcher *this, uint64_t a2, uint64_t a3)
{
  v6 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher22getDataBindingsForNodeEli_block_invoke;
    v10[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v10[4] = this;
    v10[5] = a2;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher22getDataBindingsForNodeEli_block_invoke_2;
    v9[3] = &__block_descriptor_48_e17_v16__0__NSArray_8l;
    v9[4] = this;
    v9[5] = a2;
    return [*(this + 2) getDataBindingsForNodeWithErrorCallback:v10 successCallback:v9 nodeId:a3];
  }

  else
  {
    v8 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v11);
  }
}

void sub_273CABBD8(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher22getDataBindingsForNodeEli_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CABC64(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher22getDataBindingsForNodeEli_block_invoke_2(WTF::JSONImpl::Object *a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v24 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v33, a1);
  if (!a2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"dataBindings"}];
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v3 = [a2 countByEnumeratingWithState:&v29 objects:v36 count:16];
  if (v3)
  {
    v4 = *v30;
    v5 = *MEMORY[0x277CBE660];
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v30 != v4)
        {
          objc_enumerationMutation(a2);
        }

        v7 = *(*(&v29 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v8 = MEMORY[0x277CBEAD8];
          v9 = objc_opt_class();
          [v8 raise:v5 format:{@"array should contain objects of type '%@', found bad value: %@", NSStringFromClass(v9), v7}];
        }
      }

      v3 = [a2 countByEnumeratingWithState:&v29 objects:v36 count:16];
    }

    while (v3);
  }

  v10 = v33;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v28 = v34;
  Inspector::toJSONObjectArray(a2, &v26);
  v11 = v26;
  v26 = 0;
  v27 = v11;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ArrayBase,WTF::RawPtrTraits<WTF::JSONImpl::ArrayBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayBase>>>(v10 + 2, &v28, &v27, &v34);
  if (v35 == 1)
  {
    v13 = *(v10 + 9);
    if (v13 == *(v10 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v10 + 3), &v28);
    }

    else
    {
      v14 = v10[3];
      v15 = v28;
      if (v28)
      {
        atomic_fetch_add_explicit(v28, 2u, memory_order_relaxed);
      }

      v16 = *(v10 + 9);
      *(v14 + 8 * v13) = v15;
      *(v10 + 9) = v16 + 1;
    }
  }

  v17 = v27;
  v27 = 0;
  if (v17)
  {
    Inspector::toJSONObjectArray(v17);
  }

  v18 = v26;
  v26 = 0;
  if (v18)
  {
    if (*v18 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v18;
    }
  }

  v19 = v28;
  v28 = 0;
  if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v19, v12);
  }

  v20 = *(v24 + 8);
  v21 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v33);
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_273CABF28(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, WTF::StringImpl *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, _DWORD *a25)
{
  if (a16 && atomic_fetch_add_explicit(a16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a16, a2);
  }

  if (a25)
  {
    Inspector::toJSONObjectArray(a25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::getAssociatedDataForNode(Inspector::ObjCInspectorDOMBackendDispatcher *this, uint64_t a2, uint64_t a3)
{
  v6 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher24getAssociatedDataForNodeEli_block_invoke;
    v10[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v10[4] = this;
    v10[5] = a2;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher24getAssociatedDataForNodeEli_block_invoke_2;
    v9[3] = &__block_descriptor_48_e9_v16__0__8l;
    v9[4] = this;
    v9[5] = a2;
    return [*(this + 2) getAssociatedDataForNodeWithErrorCallback:v10 successCallback:v9 nodeId:a3];
  }

  else
  {
    v8 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v11);
  }
}

void sub_273CAC0E8(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher24getAssociatedDataForNodeEli_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CAC174(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

WTF::JSONImpl::ObjectBase *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher24getAssociatedDataForNodeEli_block_invoke_2(WTF::JSONImpl::Object *a1, void *a2)
{
  v4 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v10, a1);
  if (a2)
  {
    if (!*a2)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"optional parameter '%@' cannot be nil", @"associatedData"}];
    }

    v8 = v10;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v9 = v11;
    MEMORY[0x2743DB520](&v11, *a2);
    WTF::JSONImpl::ObjectBase::setString(v8, &v9, &v11);
    ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v11);
  }

  v5 = *(v4 + 8);
  v6 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v10;
  v10 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

void sub_273CAC29C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, _DWORD *a11, WTF::StringImpl *a12)
{
  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  if (a11)
  {
    Inspector::toJSONObjectArray(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::getEventListenersForNode(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v8 = *(a1 + 16);
  if (objc_opt_respondsToSelector())
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher24getEventListenersForNodeEliONSt3__18optionalIbEE_block_invoke;
    v13[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v13[4] = a1;
    v13[5] = a2;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher24getEventListenersForNodeEliONSt3__18optionalIbEE_block_invoke_2;
    v12[3] = &__block_descriptor_48_e17_v16__0__NSArray_8l;
    v12[4] = a1;
    v12[5] = a2;
    LOBYTE(v14) = 0;
    if (a4[1] == 1)
    {
      LOBYTE(v14) = *a4;
      v9 = &v14;
    }

    else
    {
      v9 = 0;
    }

    return [*(a1 + 16) getEventListenersForNodeWithErrorCallback:v13 successCallback:v12 nodeId:a3 includeAncestors:v9];
  }

  else
  {
    v11 = *(a1 + 8);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v14);
  }
}

void sub_273CAC45C(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher24getEventListenersForNodeEliONSt3__18optionalIbEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CAC4E8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher24getEventListenersForNodeEliONSt3__18optionalIbEE_block_invoke_2(WTF::JSONImpl::Object *a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v24 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v33, a1);
  if (!a2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"listeners"}];
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v3 = [a2 countByEnumeratingWithState:&v29 objects:v36 count:16];
  if (v3)
  {
    v4 = *v30;
    v5 = *MEMORY[0x277CBE660];
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v30 != v4)
        {
          objc_enumerationMutation(a2);
        }

        v7 = *(*(&v29 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v8 = MEMORY[0x277CBEAD8];
          v9 = objc_opt_class();
          [v8 raise:v5 format:{@"array should contain objects of type '%@', found bad value: %@", NSStringFromClass(v9), v7}];
        }
      }

      v3 = [a2 countByEnumeratingWithState:&v29 objects:v36 count:16];
    }

    while (v3);
  }

  v10 = v33;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v28 = v34;
  Inspector::toJSONObjectArray(a2, &v26);
  v11 = v26;
  v26 = 0;
  v27 = v11;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ArrayBase,WTF::RawPtrTraits<WTF::JSONImpl::ArrayBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayBase>>>(v10 + 2, &v28, &v27, &v34);
  if (v35 == 1)
  {
    v13 = *(v10 + 9);
    if (v13 == *(v10 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v10 + 3), &v28);
    }

    else
    {
      v14 = v10[3];
      v15 = v28;
      if (v28)
      {
        atomic_fetch_add_explicit(v28, 2u, memory_order_relaxed);
      }

      v16 = *(v10 + 9);
      *(v14 + 8 * v13) = v15;
      *(v10 + 9) = v16 + 1;
    }
  }

  v17 = v27;
  v27 = 0;
  if (v17)
  {
    Inspector::toJSONObjectArray(v17);
  }

  v18 = v26;
  v26 = 0;
  if (v18)
  {
    if (*v18 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v18;
    }
  }

  v19 = v28;
  v28 = 0;
  if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v19, v12);
  }

  v20 = *(v24 + 8);
  v21 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v33);
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_273CAC7AC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, WTF::StringImpl *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, _DWORD *a25)
{
  if (a16 && atomic_fetch_add_explicit(a16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a16, a2);
  }

  if (a25)
  {
    Inspector::toJSONObjectArray(a25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::setEventListenerDisabled(Inspector::ObjCInspectorDOMBackendDispatcher *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher24setEventListenerDisabledElib_block_invoke;
    v12[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v12[4] = this;
    v12[5] = a2;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher24setEventListenerDisabledElib_block_invoke_2;
    v11[3] = &__block_descriptor_48_e5_v8__0l;
    v11[4] = this;
    v11[5] = a2;
    return [*(this + 2) setEventListenerDisabledWithErrorCallback:v12 successCallback:v11 eventListenerId:a3 disabled:a4];
  }

  else
  {
    v10 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v13);
  }
}

void sub_273CAC974(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher24setEventListenerDisabledElib_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CACA00(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher24setEventListenerDisabledElib_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

void sub_273CACA98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::setBreakpointForEventListener(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *(a1 + 16);
  if (objc_opt_respondsToSelector())
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher29setBreakpointForEventListenerEliON3WTF6RefPtrINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEE_block_invoke;
    v19[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v19[4] = a1;
    v19[5] = a2;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher29setBreakpointForEventListenerEliON3WTF6RefPtrINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEE_block_invoke_2;
    v18[3] = &__block_descriptor_48_e5_v8__0l;
    v18[4] = a1;
    v18[5] = a2;
    v20 = 0;
    if (*a4)
    {
      v9 = [RWIProtocolDebuggerBreakpointOptions alloc];
      v17 = *a4;
      *a4 = 0;
      v10 = [(RWIProtocolJSONObject *)v9 initWithJSONObject:&v17];
      v11 = v10;
      if (v10)
      {
        v12 = v10;
      }

      v20 = v11;
      v13 = v17;
      v17 = 0;
      if (v13)
      {
        if (*v13 == 1)
        {
          WTF::JSONImpl::Value::operator delete();
        }

        else
        {
          --*v13;
        }
      }

      if (*a4)
      {
        v14 = &v20;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }

    return [*(a1 + 16) setBreakpointForEventListenerWithErrorCallback:v19 successCallback:v18 eventListenerId:a3 options:{v14, v17}];
  }

  else
  {
    v16 = *(a1 + 8);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v20);
  }
}

void sub_273CACC5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _DWORD *a9)
{
  if (a9)
  {
    Inspector::toJSONObjectArray(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher29setBreakpointForEventListenerEliON3WTF6RefPtrINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CACD04(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher29setBreakpointForEventListenerEliON3WTF6RefPtrINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEE_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

void sub_273CACD9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::removeBreakpointForEventListener(Inspector::ObjCInspectorDOMBackendDispatcher *this, uint64_t a2, uint64_t a3)
{
  v6 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher32removeBreakpointForEventListenerEli_block_invoke;
    v10[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v10[4] = this;
    v10[5] = a2;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher32removeBreakpointForEventListenerEli_block_invoke_2;
    v9[3] = &__block_descriptor_48_e5_v8__0l;
    v9[4] = this;
    v9[5] = a2;
    return [*(this + 2) removeBreakpointForEventListenerWithErrorCallback:v10 successCallback:v9 eventListenerId:a3];
  }

  else
  {
    v8 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v11);
  }
}

void sub_273CACEE0(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher32removeBreakpointForEventListenerEli_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CACF6C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher32removeBreakpointForEventListenerEli_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

void sub_273CAD004(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::getAccessibilityPropertiesForNode(Inspector::ObjCInspectorDOMBackendDispatcher *this, uint64_t a2, uint64_t a3)
{
  v6 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher33getAccessibilityPropertiesForNodeEli_block_invoke;
    v10[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v10[4] = this;
    v10[5] = a2;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher33getAccessibilityPropertiesForNodeEli_block_invoke_2;
    v9[3] = &__block_descriptor_48_e47_v16__0__RWIProtocolDOMAccessibilityProperties_8l;
    v9[4] = this;
    v9[5] = a2;
    return [*(this + 2) getAccessibilityPropertiesForNodeWithErrorCallback:v10 successCallback:v9 nodeId:a3];
  }

  else
  {
    v8 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v11);
  }
}

void sub_273CAD148(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher33getAccessibilityPropertiesForNodeEli_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CAD1D4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher33getAccessibilityPropertiesForNodeEli_block_invoke_2(WTF::JSONImpl::Object *a1, void *a2)
{
  v4 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v20, a1);
  if (!a2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"properties"}];
  }

  v5 = v20;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v19 = v21;
  if (a2)
  {
    [a2 toJSONObject];
    v6 = v17;
  }

  else
  {
    v6 = 0;
  }

  v18 = v6;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v5 + 2, &v19, &v18, &v21);
  if (v22 == 1)
  {
    v8 = *(v5 + 9);
    if (v8 == *(v5 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v5 + 3), &v19);
    }

    else
    {
      v9 = v5[3];
      v10 = v19;
      if (v19)
      {
        atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
      }

      v11 = *(v5 + 9);
      *(v9 + 8 * v8) = v10;
      *(v5 + 9) = v11 + 1;
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    Inspector::toJSONObjectArray(v12);
  }

  v13 = v19;
  v19 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v7);
  }

  v14 = *(v4 + 8);
  v15 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v20);
}

void sub_273CAD388(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12, _DWORD *a13)
{
  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a13)
  {
    Inspector::toJSONObjectArray(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::getOuterHTML(Inspector::ObjCInspectorDOMBackendDispatcher *this, uint64_t a2, uint64_t a3)
{
  v6 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher12getOuterHTMLEli_block_invoke;
    v10[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v10[4] = this;
    v10[5] = a2;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher12getOuterHTMLEli_block_invoke_2;
    v9[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v9[4] = this;
    v9[5] = a2;
    return [*(this + 2) getOuterHTMLWithErrorCallback:v10 successCallback:v9 nodeId:a3];
  }

  else
  {
    v8 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v11);
  }
}

void sub_273CAD52C(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher12getOuterHTMLEli_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CAD5B8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher12getOuterHTMLEli_block_invoke_2(WTF::JSONImpl::Object *a1, uint64_t a2)
{
  v4 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v10, a1);
  if (!a2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"outerHTML"}];
  }

  v5 = v10;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v9 = v11;
  MEMORY[0x2743DB520](&v11, a2);
  WTF::JSONImpl::ObjectBase::setString(v5, &v9, &v11);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v11);
  v6 = *(v4 + 8);
  v7 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v10);
}

void sub_273CAD6B8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, _DWORD *a11, WTF::StringImpl *a12)
{
  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  if (a11)
  {
    Inspector::toJSONObjectArray(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::setOuterHTML(Inspector::ObjCInspectorDOMBackendDispatcher *this, uint64_t a2, uint64_t a3, atomic_uint **a4)
{
  v8 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher12setOuterHTMLEliRKN3WTF6StringE_block_invoke;
    v18[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v18[4] = this;
    v18[5] = a2;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher12setOuterHTMLEliRKN3WTF6StringE_block_invoke_2;
    v17[3] = &__block_descriptor_48_e5_v8__0l;
    v17[4] = this;
    v17[5] = a2;
    v9 = *a4;
    if (*a4)
    {
      atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v19, v9);
      if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v10);
      }
    }

    else
    {
      v19 = &stru_2882B1C88;
      v16 = &stru_2882B1C88;
    }

    v11 = v19;
    v19 = 0;
    if (v11)
    {
      v12 = v11;
      v13 = v19;
      v19 = 0;
      if (v13)
      {
      }
    }

    return [*(this + 2) setOuterHTMLWithErrorCallback:v18 successCallback:v17 nodeId:a3 outerHTML:v11];
  }

  else
  {
    v15 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v19);
  }
}

void sub_273CAD8C4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher12setOuterHTMLEliRKN3WTF6StringE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CAD984(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher12setOuterHTMLEliRKN3WTF6StringE_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

void sub_273CADA1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::insertAdjacentHTML(Inspector::ObjCInspectorDOMBackendDispatcher *this, uint64_t a2, uint64_t a3, atomic_uint **a4, atomic_uint **a5)
{
  v10 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher18insertAdjacentHTMLEliRKN3WTF6StringES4__block_invoke;
    v26[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v26[4] = this;
    v26[5] = a2;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher18insertAdjacentHTMLEliRKN3WTF6StringES4__block_invoke_2;
    v25[3] = &__block_descriptor_48_e5_v8__0l;
    v25[4] = this;
    v25[5] = a2;
    v11 = *a4;
    if (*a4)
    {
      atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v27, v11);
      if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v12);
      }
    }

    else
    {
      v27 = &stru_2882B1C88;
      v23 = &stru_2882B1C88;
    }

    v13 = v27;
    v27 = 0;
    if (v13)
    {
      v14 = v13;
      v15 = v27;
      v27 = 0;
      if (v15)
      {
      }
    }

    v16 = *a5;
    if (v16)
    {
      atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v27, v16);
      if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16, v17);
      }
    }

    else
    {
      v27 = &stru_2882B1C88;
      v24 = &stru_2882B1C88;
    }

    v18 = v27;
    v27 = 0;
    if (v18)
    {
      v19 = v18;
      v20 = v27;
      v27 = 0;
      if (v20)
      {
      }
    }

    return [*(this + 2) insertAdjacentHTMLWithErrorCallback:v26 successCallback:v25 nodeId:a3 position:v13 html:v18];
  }

  else
  {
    v22 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v27);
  }
}

void sub_273CADC50(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 56);
  *(v1 - 56) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher18insertAdjacentHTMLEliRKN3WTF6StringES4__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CADD30(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher18insertAdjacentHTMLEliRKN3WTF6StringES4__block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

void sub_273CADDC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::performSearch(uint64_t a1, uint64_t a2, atomic_uint **a3, WTF::JSONImpl::ArrayBase **a4, _BYTE *a5)
{
  v10 = *(a1 + 16);
  if (objc_opt_respondsToSelector())
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13performSearchElRKN3WTF6StringEONS1_6RefPtrINS1_8JSONImpl5ArrayENS1_12RawPtrTraitsIS7_EENS1_21DefaultRefDerefTraitsIS7_EEEEONSt3__18optionalIbEE_block_invoke;
    v25[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v25[4] = a1;
    v25[5] = a2;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13performSearchElRKN3WTF6StringEONS1_6RefPtrINS1_8JSONImpl5ArrayENS1_12RawPtrTraitsIS7_EENS1_21DefaultRefDerefTraitsIS7_EEEEONSt3__18optionalIbEE_block_invoke_2;
    v24[3] = &__block_descriptor_48_e21_v20__0__NSString_8i16l;
    v24[4] = a1;
    v24[5] = a2;
    v11 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v26, v11);
      if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v12);
      }
    }

    else
    {
      v26 = &stru_2882B1C88;
      v22 = &stru_2882B1C88;
    }

    v13 = v26;
    v26 = 0;
    if (v13)
    {
      v14 = v13;
      v15 = v26;
      v26 = 0;
      if (v15)
      {
      }
    }

    v26 = 0;
    v16 = *a4;
    if (*a4)
    {
      *a4 = 0;
      v23 = v16;
      v26 = Inspector::toObjCIntegerArray(&v23);
      v17 = v23;
      v23 = 0;
      if (v17)
      {
        Inspector::toJSONObjectArray(v17);
      }
    }

    LOBYTE(v23) = 0;
    if (a5[1] == 1)
    {
      LOBYTE(v23) = *a5;
      v18 = &v23;
    }

    else
    {
      v18 = 0;
    }

    if (*a4)
    {
      v19 = &v26;
    }

    else
    {
      v19 = 0;
    }

    return [*(a1 + 16) performSearchWithErrorCallback:v25 successCallback:v24 query:v13 nodeIds:v19 caseSensitive:{v18, v23}];
  }

  else
  {
    v21 = *(a1 + 8);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v26);
  }
}

void sub_273CADFEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _DWORD *a9)
{
  if (a9)
  {
    Inspector::toJSONObjectArray(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13performSearchElRKN3WTF6StringEONS1_6RefPtrINS1_8JSONImpl5ArrayENS1_12RawPtrTraitsIS7_EENS1_21DefaultRefDerefTraitsIS7_EEEEONSt3__18optionalIbEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CAE0C4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13performSearchElRKN3WTF6StringEONS1_6RefPtrINS1_8JSONImpl5ArrayENS1_12RawPtrTraitsIS7_EENS1_21DefaultRefDerefTraitsIS7_EEEEONSt3__18optionalIbEE_block_invoke_2(WTF::JSONImpl::Object *a1, uint64_t a2, WTF::JSONImpl::Value *a3)
{
  v6 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v14, a1);
  if (!a2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"searchId"}];
  }

  v7 = v14;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v13 = v15;
  MEMORY[0x2743DB520](&v12, a2);
  WTF::JSONImpl::ObjectBase::setString(v7, &v13, &v12);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v12);
  v8 = v14;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v13 = v15;
  WTF::JSONImpl::ObjectBase::setInteger(v8, &v13, a3);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v13);
  v9 = *(v6 + 8);
  v10 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v14);
}

void sub_273CAE208(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, WTF::StringImpl *a12, _DWORD *a13)
{
  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a13)
  {
    Inspector::toJSONObjectArray(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::getSearchResults(Inspector::ObjCInspectorDOMBackendDispatcher *this, uint64_t a2, atomic_uint **a3, uint64_t a4, uint64_t a5)
{
  v10 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher16getSearchResultsElRKN3WTF6StringEii_block_invoke;
    v20[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v20[4] = this;
    v20[5] = a2;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher16getSearchResultsElRKN3WTF6StringEii_block_invoke_2;
    v19[3] = &__block_descriptor_48_e17_v16__0__NSArray_8l;
    v19[4] = this;
    v19[5] = a2;
    v11 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v21, v11);
      if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v12);
      }
    }

    else
    {
      v21 = &stru_2882B1C88;
      v18 = &stru_2882B1C88;
    }

    v13 = v21;
    v21 = 0;
    if (v13)
    {
      v14 = v13;
      v15 = v21;
      v21 = 0;
      if (v15)
      {
      }
    }

    return [*(this + 2) getSearchResultsWithErrorCallback:v20 successCallback:v19 searchId:v13 fromIndex:a4 toIndex:a5];
  }

  else
  {
    v17 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v21);
  }
}

void sub_273CAE42C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 56);
  *(v1 - 56) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher16getSearchResultsElRKN3WTF6StringEii_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CAE4EC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher16getSearchResultsElRKN3WTF6StringEii_block_invoke_2(WTF::JSONImpl::Object *a1, Inspector *a2)
{
  v4 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v21, a1);
  if (!a2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"nodeIds"}];
  }

  v5 = v21;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v20 = v22;
  Inspector::toJSONIntegerArray(a2, &v18);
  v6 = v18;
  v18 = 0;
  v19 = v6;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ArrayBase,WTF::RawPtrTraits<WTF::JSONImpl::ArrayBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayBase>>>(v5 + 2, &v20, &v19, &v22);
  if (v23 == 1)
  {
    v8 = *(v5 + 9);
    if (v8 == *(v5 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v5 + 3), &v20);
    }

    else
    {
      v9 = v5[3];
      v10 = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
      }

      v11 = *(v5 + 9);
      *(v9 + 8 * v8) = v10;
      *(v5 + 9) = v11 + 1;
    }
  }

  v12 = v19;
  v19 = 0;
  if (v12)
  {
    Inspector::toJSONObjectArray(v12);
  }

  v13 = v18;
  v18 = 0;
  if (v13)
  {
    if (*v13 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v13;
    }
  }

  v14 = v20;
  v20 = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v7);
  }

  v15 = *(v4 + 8);
  v16 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v21);
}

void sub_273CAE694(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12, _DWORD *a13)
{
  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a13)
  {
    Inspector::toJSONObjectArray(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::discardSearchResults(Inspector::ObjCInspectorDOMBackendDispatcher *this, uint64_t a2, atomic_uint **a3)
{
  v6 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher20discardSearchResultsElRKN3WTF6StringE_block_invoke;
    v16[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v16[4] = this;
    v16[5] = a2;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher20discardSearchResultsElRKN3WTF6StringE_block_invoke_2;
    v15[3] = &__block_descriptor_48_e5_v8__0l;
    v15[4] = this;
    v15[5] = a2;
    v7 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v17, v7);
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v8);
      }
    }

    else
    {
      v17 = &stru_2882B1C88;
      v14 = &stru_2882B1C88;
    }

    v9 = v17;
    v17 = 0;
    if (v9)
    {
      v10 = v9;
      v11 = v17;
      v17 = 0;
      if (v11)
      {
      }
    }

    return [*(this + 2) discardSearchResultsWithErrorCallback:v16 successCallback:v15 searchId:v9];
  }

  else
  {
    v13 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v17);
  }
}

void sub_273CAE8AC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher20discardSearchResultsElRKN3WTF6StringE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CAE96C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher20discardSearchResultsElRKN3WTF6StringE_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

void sub_273CAEA04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::requestNode(Inspector::ObjCInspectorDOMBackendDispatcher *this, uint64_t a2, atomic_uint **a3)
{
  v6 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher11requestNodeElRKN3WTF6StringE_block_invoke;
    v16[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v16[4] = this;
    v16[5] = a2;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher11requestNodeElRKN3WTF6StringE_block_invoke_2;
    v15[3] = &__block_descriptor_48_e8_v12__0i8l;
    v15[4] = this;
    v15[5] = a2;
    v7 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v17, v7);
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v8);
      }
    }

    else
    {
      v17 = &stru_2882B1C88;
      v14 = &stru_2882B1C88;
    }

    v9 = v17;
    v17 = 0;
    if (v9)
    {
      v10 = v9;
      v11 = v17;
      v17 = 0;
      if (v11)
      {
      }
    }

    return [*(this + 2) requestNodeWithErrorCallback:v16 successCallback:v15 objectId:v9];
  }

  else
  {
    v13 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v17);
  }
}

void sub_273CAEBB4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher11requestNodeElRKN3WTF6StringE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CAEC74(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher11requestNodeElRKN3WTF6StringE_block_invoke_2(WTF::JSONImpl::Object *a1, WTF::JSONImpl::Value *a2)
{
  v4 = *(a1 + 4);
  WTF::JSONImpl::Object::create(v10, a1);
  v5 = v10[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v9 = v10[1];
  WTF::JSONImpl::ObjectBase::setInteger(v5, &v9, a2);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v9);
  v6 = *(v4 + 8);
  v7 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(v10);
}

void sub_273CAED34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, _DWORD *a11)
{
  if (a11)
  {
    Inspector::toJSONObjectArray(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::setInspectModeEnabled(uint64_t a1, uint64_t a2, uint64_t a3, RWIProtocolDOMGridOverlayConfig **a4, RWIProtocolDOMFlexOverlayConfig **a5, void *a6)
{
  v12 = *(a1 + 16);
  if (objc_opt_respondsToSelector())
  {
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher21setInspectModeEnabledElbON3WTF6RefPtrINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEESA_SA__block_invoke;
    v37[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v37[4] = a1;
    v37[5] = a2;
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher21setInspectModeEnabledElbON3WTF6RefPtrINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEESA_SA__block_invoke_2;
    v36[3] = &__block_descriptor_48_e5_v8__0l;
    v36[4] = a1;
    v36[5] = a2;
    v38 = 0;
    if (*a4)
    {
      v13 = [RWIProtocolDOMHighlightConfig alloc];
      v35 = *a4;
      *a4 = 0;
      v14 = [(RWIProtocolJSONObject *)v13 initWithJSONObject:&v35];
      v15 = v14;
      if (v14)
      {
        v16 = v14;
      }

      v38 = v15;
      v17 = v35;
      v35 = 0;
      if (v17)
      {
        if (LODWORD(v17->super.super.isa) == 1)
        {
          WTF::JSONImpl::Value::operator delete();
        }

        else
        {
          --LODWORD(v17->super.super.isa);
        }
      }
    }

    v35 = 0;
    if (*a5)
    {
      v18 = [RWIProtocolDOMGridOverlayConfig alloc];
      v34 = *a5;
      *a5 = 0;
      v19 = [(RWIProtocolJSONObject *)v18 initWithJSONObject:&v34];
      v20 = v19;
      if (v19)
      {
        v21 = v19;
      }

      v22 = v34;
      v34 = 0;
      v35 = v20;
      if (v22)
      {
        if (LODWORD(v22->super.super.isa) == 1)
        {
          WTF::JSONImpl::Value::operator delete();
        }

        else
        {
          --LODWORD(v22->super.super.isa);
        }
      }
    }

    v34 = 0;
    if (*a6)
    {
      v23 = [RWIProtocolDOMFlexOverlayConfig alloc];
      v33 = *a6;
      *a6 = 0;
      v24 = [(RWIProtocolJSONObject *)v23 initWithJSONObject:&v33];
      v25 = v24;
      if (v24)
      {
        v26 = v24;
      }

      v27 = v33;
      v33 = 0;
      v34 = v25;
      if (v27)
      {
        if (*v27 == 1)
        {
          WTF::JSONImpl::Value::operator delete();
        }

        else
        {
          --*v27;
        }
      }

      if (*a6)
      {
        v28 = &v34;
      }

      else
      {
        v28 = 0;
      }
    }

    else
    {
      v28 = 0;
    }

    if (*a4)
    {
      v29 = &v38;
    }

    else
    {
      v29 = 0;
    }

    if (*a5)
    {
      v30 = &v35;
    }

    else
    {
      v30 = 0;
    }

    return [*(a1 + 16) setInspectModeEnabledWithErrorCallback:v37 successCallback:v36 enabled:a3 highlightConfig:v29 gridOverlayConfig:v30 flexOverlayConfig:{v28, v33, v34, v35}];
  }

  else
  {
    v32 = *(a1 + 8);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v38);
  }
}

void sub_273CAF014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _DWORD *a9, uint64_t a10, uint64_t a11)
{
  if (a9)
  {
    Inspector::toJSONObjectArray(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher21setInspectModeEnabledElbON3WTF6RefPtrINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEESA_SA__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CAF0F4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher21setInspectModeEnabledElbON3WTF6RefPtrINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEESA_SA__block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

void sub_273CAF18C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::highlightRect(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, RWIProtocolDOMRGBAColor **a7, void *a8, _BYTE *a9)
{
  v17 = *(a1 + 16);
  if (objc_opt_respondsToSelector())
  {
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13highlightRectEliiiiON3WTF6RefPtrINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEESA_ONSt3__18optionalIbEE_block_invoke;
    v36[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v36[4] = a1;
    v36[5] = a2;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13highlightRectEliiiiON3WTF6RefPtrINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEESA_ONSt3__18optionalIbEE_block_invoke_2;
    v35[3] = &__block_descriptor_48_e5_v8__0l;
    v35[4] = a1;
    v35[5] = a2;
    v37 = 0;
    if (*a7)
    {
      v18 = [RWIProtocolDOMRGBAColor alloc];
      v34 = *a7;
      *a7 = 0;
      v19 = [(RWIProtocolJSONObject *)v18 initWithJSONObject:&v34];
      v20 = v19;
      if (v19)
      {
        v21 = v19;
      }

      v37 = v20;
      v22 = v34;
      v34 = 0;
      if (v22)
      {
        if (LODWORD(v22->super.super.isa) == 1)
        {
          WTF::JSONImpl::Value::operator delete();
        }

        else
        {
          --LODWORD(v22->super.super.isa);
        }
      }
    }

    v34 = 0;
    if (*a8)
    {
      v23 = [RWIProtocolDOMRGBAColor alloc];
      v33 = *a8;
      *a8 = 0;
      v24 = [(RWIProtocolJSONObject *)v23 initWithJSONObject:&v33];
      v25 = v24;
      if (v24)
      {
        v26 = v24;
      }

      v27 = v33;
      v33 = 0;
      v34 = v25;
      if (v27)
      {
        if (*v27 == 1)
        {
          WTF::JSONImpl::Value::operator delete();
        }

        else
        {
          --*v27;
        }
      }
    }

    LOBYTE(v33) = 0;
    if (a9[1] == 1)
    {
      LOBYTE(v33) = *a9;
      v28 = &v33;
    }

    else
    {
      v28 = 0;
    }

    v29 = &v37;
    if (!*a7)
    {
      v29 = 0;
    }

    v30 = &v34;
    if (!*a8)
    {
      v30 = 0;
    }

    return [*(a1 + 16) highlightRectWithErrorCallback:v36 successCallback:v35 x:a3 y:a4 width:a5 height:a6 color:v29 outlineColor:v30 usePageCoordinates:{v28, v33, v34}];
  }

  else
  {
    v32 = *(a1 + 8);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v37);
  }
}

void sub_273CAF418(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12, uint64_t a13)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13highlightRectEliiiiON3WTF6RefPtrINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEESA_ONSt3__18optionalIbEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CAF4DC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13highlightRectEliiiiON3WTF6RefPtrINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEESA_ONSt3__18optionalIbEE_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

void sub_273CAF574(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::highlightQuad(uint64_t a1, uint64_t a2, WTF::JSONImpl::ArrayBase **a3, RWIProtocolDOMRGBAColor **a4, void *a5, _BYTE *a6)
{
  v12 = *(a1 + 16);
  if (objc_opt_respondsToSelector())
  {
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13highlightQuadElON3WTF3RefINS1_8JSONImpl5ArrayENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEEONS1_6RefPtrINS3_6ObjectENS5_ISC_EENS7_ISC_EEEESG_ONSt3__18optionalIbEE_block_invoke;
    v34[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v34[4] = a1;
    v34[5] = a2;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13highlightQuadElON3WTF3RefINS1_8JSONImpl5ArrayENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEEONS1_6RefPtrINS3_6ObjectENS5_ISC_EENS7_ISC_EEEESG_ONSt3__18optionalIbEE_block_invoke_2;
    v33[3] = &__block_descriptor_48_e5_v8__0l;
    v33[4] = a1;
    v33[5] = a2;
    v13 = *a3;
    *a3 = 0;
    v35 = v13;
    v14 = Inspector::toObjCIntegerArray(&v35);
    v15 = v35;
    v35 = 0;
    if (v15)
    {
      if (*v15 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v15;
      }
    }

    v35 = 0;
    if (*a4)
    {
      v16 = [RWIProtocolDOMRGBAColor alloc];
      v32 = *a4;
      *a4 = 0;
      v17 = [(RWIProtocolJSONObject *)v16 initWithJSONObject:&v32];
      v18 = v17;
      if (v17)
      {
        v19 = v17;
      }

      v35 = v18;
      v20 = v32;
      v32 = 0;
      if (v20)
      {
        if (LODWORD(v20->super.super.isa) == 1)
        {
          WTF::JSONImpl::Value::operator delete();
        }

        else
        {
          --LODWORD(v20->super.super.isa);
        }
      }
    }

    v32 = 0;
    if (*a5)
    {
      v21 = [RWIProtocolDOMRGBAColor alloc];
      v31 = *a5;
      *a5 = 0;
      v22 = [(RWIProtocolJSONObject *)v21 initWithJSONObject:&v31];
      v23 = v22;
      if (v22)
      {
        v24 = v22;
      }

      v25 = v31;
      v31 = 0;
      v32 = v23;
      if (v25)
      {
        if (*v25 == 1)
        {
          WTF::JSONImpl::Value::operator delete();
        }

        else
        {
          --*v25;
        }
      }
    }

    LOBYTE(v31) = 0;
    if (a6[1] == 1)
    {
      LOBYTE(v31) = *a6;
      v26 = &v31;
    }

    else
    {
      v26 = 0;
    }

    if (*a4)
    {
      v27 = &v35;
    }

    else
    {
      v27 = 0;
    }

    if (*a5)
    {
      v28 = &v32;
    }

    else
    {
      v28 = 0;
    }

    return [*(a1 + 16) highlightQuadWithErrorCallback:v34 successCallback:v33 quad:v14 color:v27 outlineColor:v28 usePageCoordinates:v26];
  }

  else
  {
    v30 = *(a1 + 8);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v35);
  }
}

void sub_273CAF814(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10, uint64_t a11)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13highlightQuadElON3WTF3RefINS1_8JSONImpl5ArrayENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEEONS1_6RefPtrINS3_6ObjectENS5_ISC_EENS7_ISC_EEEESG_ONSt3__18optionalIbEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CAF8F0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13highlightQuadElON3WTF3RefINS1_8JSONImpl5ArrayENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEEONS1_6RefPtrINS3_6ObjectENS5_ISC_EENS7_ISC_EEEESG_ONSt3__18optionalIbEE_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

void sub_273CAF988(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::highlightSelector(uint64_t a1, uint64_t a2, atomic_uint **a3, atomic_uint **a4, uint64_t a5, RWIProtocolDOMFlexOverlayConfig **a6, RWIProtocolDOMFlexOverlayConfig ***a7)
{
  v14 = *(a1 + 16);
  if (objc_opt_respondsToSelector())
  {
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher17highlightSelectorElRKN3WTF6StringES4_ONS1_3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS7_EENS1_21DefaultRefDerefTraitsIS7_EEEEONS1_6RefPtrIS7_S9_SB_EESG__block_invoke;
    v48[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v48[4] = a1;
    v48[5] = a2;
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher17highlightSelectorElRKN3WTF6StringES4_ONS1_3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS7_EENS1_21DefaultRefDerefTraitsIS7_EEEEONS1_6RefPtrIS7_S9_SB_EESG__block_invoke_2;
    v47[3] = &__block_descriptor_48_e5_v8__0l;
    v47[4] = a1;
    v47[5] = a2;
    v15 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v49, v15);
      if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, v16);
      }
    }

    else
    {
      v49 = &stru_2882B1C88;
      v43 = &stru_2882B1C88;
    }

    v17 = v49;
    v49 = 0;
    if (v17)
    {
      v18 = v17;
      v19 = v49;
      v49 = 0;
      if (v19)
      {
      }
    }

    v49 = 0;
    v20 = *a4;
    if (*a4)
    {
      atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v46, v20);
      if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, v21);
      }

      v22 = v46;
      v46 = 0;
      if (v22)
      {
        v23 = v22;
        v24 = v46;
        v49 = v22;
        v46 = 0;
        if (v24)
        {
        }
      }

      else
      {
        v49 = 0;
      }
    }

    v25 = [(RWIProtocolJSONObject *)[RWIProtocolDOMHighlightConfig alloc] initWithJSONObject:a5];
    v26 = v25;
    if (v25)
    {
      v27 = v25;
    }

    v46 = 0;
    if (*a6)
    {
      v28 = [RWIProtocolDOMGridOverlayConfig alloc];
      v45 = *a6;
      *a6 = 0;
      v29 = [(RWIProtocolJSONObject *)v28 initWithJSONObject:&v45];
      v30 = v29;
      if (v29)
      {
        v31 = v29;
      }

      v32 = v45;
      v45 = 0;
      v46 = v30;
      if (v32)
      {
        if (LODWORD(v32->super.super.isa) == 1)
        {
          WTF::JSONImpl::Value::operator delete();
        }

        else
        {
          --LODWORD(v32->super.super.isa);
        }
      }
    }

    v45 = 0;
    v33 = *a7;
    if (*a7)
    {
      v34 = [RWIProtocolDOMFlexOverlayConfig alloc];
      v44 = *a7;
      *a7 = 0;
      v35 = [(RWIProtocolJSONObject *)v34 initWithJSONObject:&v44];
      v36 = v35;
      if (v35)
      {
        v37 = v35;
      }

      v38 = v44;
      v44 = 0;
      v45 = v36;
      if (v38)
      {
        if (*v38 == 1)
        {
          WTF::JSONImpl::Value::operator delete();
        }

        else
        {
          --*v38;
        }
      }

      v33 = &v45;
      if (!*a7)
      {
        v33 = 0;
      }
    }

    if (*a4)
    {
      v39 = &v49;
    }

    else
    {
      v39 = 0;
    }

    if (*a6)
    {
      v40 = &v46;
    }

    else
    {
      v40 = 0;
    }

    return [*(a1 + 16) highlightSelectorWithErrorCallback:v48 successCallback:v47 selectorString:v17 frameId:v39 highlightConfig:v26 gridOverlayConfig:v40 flexOverlayConfig:v33];
  }

  else
  {
    v42 = *(a1 + 8);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v49);
  }
}

void sub_273CAFCDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, _DWORD *a11, uint64_t a12, uint64_t a13)
{
  if (a11)
  {
    Inspector::toJSONObjectArray(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher17highlightSelectorElRKN3WTF6StringES4_ONS1_3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS7_EENS1_21DefaultRefDerefTraitsIS7_EEEEONS1_6RefPtrIS7_S9_SB_EESG__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CAFE0C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher17highlightSelectorElRKN3WTF6StringES4_ONS1_3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS7_EENS1_21DefaultRefDerefTraitsIS7_EEEEONS1_6RefPtrIS7_S9_SB_EESG__block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

void sub_273CAFEA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::highlightNode(uint64_t a1, uint64_t a2, int *a3, atomic_uint **a4, uint64_t a5, RWIProtocolDOMFlexOverlayConfig **a6, RWIProtocolDOMFlexOverlayConfig ***a7)
{
  v14 = *(a1 + 16);
  if (objc_opt_respondsToSelector())
  {
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13highlightNodeElONSt3__18optionalIiEERKN3WTF6StringEONS5_3RefINS5_8JSONImpl6ObjectENS5_12RawPtrTraitsISB_EENS5_21DefaultRefDerefTraitsISB_EEEEONS5_6RefPtrISB_SD_SF_EESK__block_invoke;
    v44[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v44[4] = a1;
    v44[5] = a2;
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13highlightNodeElONSt3__18optionalIiEERKN3WTF6StringEONS5_3RefINS5_8JSONImpl6ObjectENS5_12RawPtrTraitsISB_EENS5_21DefaultRefDerefTraitsISB_EEEEONS5_6RefPtrISB_SD_SF_EESK__block_invoke_2;
    v43[3] = &__block_descriptor_48_e5_v8__0l;
    v43[4] = a1;
    v43[5] = a2;
    v42 = 0;
    if (*(a3 + 4) == 1)
    {
      v42 = *a3;
    }

    v45 = 0;
    v15 = *a4;
    if (*a4)
    {
      atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v41, v15);
      if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, v16);
      }

      v17 = v41;
      v41 = 0;
      if (v17)
      {
        v18 = v17;
        v19 = v41;
        v45 = v17;
        v41 = 0;
        if (v19)
        {
        }
      }

      else
      {
        v45 = 0;
      }
    }

    v20 = [(RWIProtocolJSONObject *)[RWIProtocolDOMHighlightConfig alloc] initWithJSONObject:a5];
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    v41 = 0;
    if (*a6)
    {
      v23 = [RWIProtocolDOMGridOverlayConfig alloc];
      v40 = *a6;
      *a6 = 0;
      v24 = [(RWIProtocolJSONObject *)v23 initWithJSONObject:&v40];
      v25 = v24;
      if (v24)
      {
        v26 = v24;
      }

      v27 = v40;
      v40 = 0;
      v41 = v25;
      if (v27)
      {
        if (LODWORD(v27->super.super.isa) == 1)
        {
          WTF::JSONImpl::Value::operator delete();
        }

        else
        {
          --LODWORD(v27->super.super.isa);
        }
      }
    }

    v40 = 0;
    v28 = *a7;
    if (*a7)
    {
      v29 = [RWIProtocolDOMFlexOverlayConfig alloc];
      v39 = *a7;
      *a7 = 0;
      v30 = [(RWIProtocolJSONObject *)v29 initWithJSONObject:&v39];
      v31 = v30;
      if (v30)
      {
        v32 = v30;
      }

      v33 = v39;
      v39 = 0;
      v40 = v31;
      if (v33)
      {
        if (*v33 == 1)
        {
          WTF::JSONImpl::Value::operator delete();
        }

        else
        {
          --*v33;
        }
      }

      v28 = &v40;
      if (!*a7)
      {
        v28 = 0;
      }
    }

    if (*(a3 + 4))
    {
      v34 = &v42;
    }

    else
    {
      v34 = 0;
    }

    if (*a4)
    {
      v35 = &v45;
    }

    else
    {
      v35 = 0;
    }

    if (*a6)
    {
      v36 = &v41;
    }

    else
    {
      v36 = 0;
    }

    return [*(a1 + 16) highlightNodeWithErrorCallback:v44 successCallback:v43 nodeId:v34 objectId:v35 highlightConfig:v21 gridOverlayConfig:v36 flexOverlayConfig:{v28, v39, v40, v41}];
  }

  else
  {
    v38 = *(a1 + 8);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v45);
  }
}

void sub_273CB01B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10, uint64_t a11, uint64_t a12)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13highlightNodeElONSt3__18optionalIiEERKN3WTF6StringEONS5_3RefINS5_8JSONImpl6ObjectENS5_12RawPtrTraitsISB_EENS5_21DefaultRefDerefTraitsISB_EEEEONS5_6RefPtrISB_SD_SF_EESK__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CB02B0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13highlightNodeElONSt3__18optionalIiEERKN3WTF6StringEONS5_3RefINS5_8JSONImpl6ObjectENS5_12RawPtrTraitsISB_EENS5_21DefaultRefDerefTraitsISB_EEEEONS5_6RefPtrISB_SD_SF_EESK__block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

void sub_273CB0348(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::highlightNodeList(uint64_t a1, uint64_t a2, WTF::JSONImpl::ArrayBase **a3, uint64_t a4, RWIProtocolDOMFlexOverlayConfig **a5, void *a6)
{
  v12 = *(a1 + 16);
  if (objc_opt_respondsToSelector())
  {
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher17highlightNodeListElON3WTF3RefINS1_8JSONImpl5ArrayENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEEONS2_INS3_6ObjectENS5_ISB_EENS7_ISB_EEEEONS1_6RefPtrISB_SC_SD_EESI__block_invoke;
    v36[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v36[4] = a1;
    v36[5] = a2;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher17highlightNodeListElON3WTF3RefINS1_8JSONImpl5ArrayENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEEONS2_INS3_6ObjectENS5_ISB_EENS7_ISB_EEEEONS1_6RefPtrISB_SC_SD_EESI__block_invoke_2;
    v35[3] = &__block_descriptor_48_e5_v8__0l;
    v35[4] = a1;
    v35[5] = a2;
    v13 = *a3;
    *a3 = 0;
    v37 = v13;
    v14 = Inspector::toObjCIntegerArray(&v37);
    v15 = v37;
    v37 = 0;
    if (v15)
    {
      if (*v15 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v15;
      }
    }

    v16 = [(RWIProtocolJSONObject *)[RWIProtocolDOMHighlightConfig alloc] initWithJSONObject:a4];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    v37 = 0;
    if (*a5)
    {
      v19 = [RWIProtocolDOMGridOverlayConfig alloc];
      v34 = *a5;
      *a5 = 0;
      v20 = [(RWIProtocolJSONObject *)v19 initWithJSONObject:&v34];
      v21 = v20;
      if (v20)
      {
        v22 = v20;
      }

      v37 = v21;
      v23 = v34;
      v34 = 0;
      if (v23)
      {
        if (LODWORD(v23->super.super.isa) == 1)
        {
          WTF::JSONImpl::Value::operator delete();
        }

        else
        {
          --LODWORD(v23->super.super.isa);
        }
      }
    }

    v34 = 0;
    if (*a6)
    {
      v24 = [RWIProtocolDOMFlexOverlayConfig alloc];
      v33 = *a6;
      *a6 = 0;
      v25 = [(RWIProtocolJSONObject *)v24 initWithJSONObject:&v33];
      v26 = v25;
      if (v25)
      {
        v27 = v25;
      }

      v28 = v33;
      v33 = 0;
      v34 = v26;
      if (v28)
      {
        if (*v28 == 1)
        {
          WTF::JSONImpl::Value::operator delete();
        }

        else
        {
          --*v28;
        }
      }

      if (*a6)
      {
        v29 = &v34;
      }

      else
      {
        v29 = 0;
      }
    }

    else
    {
      v29 = 0;
    }

    if (*a5)
    {
      v30 = &v37;
    }

    else
    {
      v30 = 0;
    }

    return [*(a1 + 16) highlightNodeListWithErrorCallback:v36 successCallback:v35 nodeIds:v14 highlightConfig:v17 gridOverlayConfig:v30 flexOverlayConfig:v29];
  }

  else
  {
    v32 = *(a1 + 8);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v37);
  }
}

void sub_273CB05F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10, uint64_t a11)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher17highlightNodeListElON3WTF3RefINS1_8JSONImpl5ArrayENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEEONS2_INS3_6ObjectENS5_ISB_EENS7_ISB_EEEEONS1_6RefPtrISB_SC_SD_EESI__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CB06CC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher17highlightNodeListElON3WTF3RefINS1_8JSONImpl5ArrayENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEEONS2_INS3_6ObjectENS5_ISB_EENS7_ISB_EEEEONS1_6RefPtrISB_SC_SD_EESI__block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

void sub_273CB0764(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::hideHighlight(Inspector::ObjCInspectorDOMBackendDispatcher *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13hideHighlightEl_block_invoke;
    v8[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v8[4] = this;
    v8[5] = a2;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13hideHighlightEl_block_invoke_2;
    v7[3] = &__block_descriptor_48_e5_v8__0l;
    v7[4] = this;
    v7[5] = a2;
    return [*(this + 2) hideHighlightWithErrorCallback:v8 successCallback:v7];
  }

  else
  {
    v6 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v9);
  }
}