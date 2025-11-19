uint64_t CAReportingClientCreateReporterID()
{
  if (_os_feature_enabled_impl())
  {

    return MEMORY[0x2A1C5F4F8]();
  }

  else
  {
    v0 = objc_autoreleasePoolPush();
    v1 = [[CAReporter alloc] initWithNewReporterID];
    v2 = v1;
    if (v1)
    {
      v3 = [(CAReporter *)v1 reporterID];
    }

    else
    {
      v3 = 0;
    }

    objc_autoreleasePoolPop(v0);
    return v3;
  }
}

void CAReportingClientSetConfiguration(uint64_t a1, void *a2)
{
  if (_os_feature_enabled_impl())
  {

    MEMORY[0x2A1C5F538](a1, a2);
  }

  else if (a1 && a2 && [a2 count])
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [MEMORY[0x29EDB8DC0] dictionaryWithDictionary:a2];
    v6 = +[CAReportingClient sharedInstance];
    [v6 setConfiguration:v5 reporterID:a1];

    objc_autoreleasePoolPop(v4);
  }
}

uint64_t CAReportingClientGetAudioServiceType(uint64_t a1)
{
  if (_os_feature_enabled_impl())
  {

    return MEMORY[0x2A1C5F510](a1);
  }

  else
  {
    if (!a1)
    {
      return 0xFFFFLL;
    }

    v2 = objc_autoreleasePoolPush();
    v3 = +[CAReportingClient sharedInstance];
    v4 = [v3 getServiceTypeForReporterID:a1];

    objc_autoreleasePoolPop(v2);
    return v4;
  }
}

void CAReportingClientSetAudioServiceType(uint64_t a1, uint64_t a2)
{
  if (_os_feature_enabled_impl())
  {

    JUMPOUT(0x29C261740);
  }

  if (a1)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = +[CAReportingClient sharedInstance];
    [v5 setServiceType:a2 reporterID:a1];

    objc_autoreleasePoolPop(v4);
  }
}

void CAReportingClientStartReporter(uint64_t a1)
{
  if (_os_feature_enabled_impl())
  {

    JUMPOUT(0x29C261760);
  }

  if (a1)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = +[CAReportingClient sharedInstance];
    [v3 startReporter:a1];

    objc_autoreleasePoolPop(v2);
  }
}

void CAReportingClientSendMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (_os_feature_enabled_impl())
  {

    MEMORY[0x2A1C5F520](a1, a2, a3, a4);
  }

  else if (a1)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = +[CAReportingClient sharedInstance];
    [v9 sendMessage:a2 category:a3 type:a4 reporter:a1];

    objc_autoreleasePoolPop(v8);
  }
}

void sub_296C8A988(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_296C8AC00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void CAReportingClientStopReporter(uint64_t a1)
{
  if (_os_feature_enabled_impl())
  {

    JUMPOUT(0x29C261770);
  }

  if (a1)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = +[CAReportingClient sharedInstance];
    [v3 stopReporter:a1];

    objc_autoreleasePoolPop(v2);
  }
}

void CAReportingClientSendSingleMessage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_os_feature_enabled_impl())
  {

    MEMORY[0x2A1C5F528](a1, a2, a3);
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    [CAReporter sendSingleMessage:a1 category:a2 type:a3];

    objc_autoreleasePoolPop(v6);
  }
}

uint64_t CAReportingClientCopyConfiguration(uint64_t a1)
{
  if (_os_feature_enabled_impl())
  {

    JUMPOUT(0x29C2616C0);
  }

  if (a1)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = +[CAReportingClient sharedInstance];
    a1 = [v3 getConfigurationForReporterID:a1];

    objc_autoreleasePoolPop(v2);
  }

  return a1;
}

void sub_296C8AFB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_296C8B6B0(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_296C8B834(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_296C8BB6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_296C8BD60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_296C8C258(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_296C8C484(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_296C8C630(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_296C8C798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = CAReporter;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_296C8D438(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_296C8D6DC(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

std::string *caulk::slog::detail::string_converter::string_converter<NSString * {__strong}>(std::string *a1, void *a2)
{
  v4 = a2;
  _ZZN5caulk4slog6detail16string_converterC1IU8__strongP8NSStringEERKT_PNSt3__19enable_ifIXsr14has_extract_opIS7_EE5valueEvE4typeEENKUlvE_clEv(&v4, __p);
  caulk::slog::detail::string_converter::string_converter(a1, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_296C8DE54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_296C8E1D8(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_296C8E450(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_296C8E980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  caulk::xpc::sync_message<objc_object  {objcproto14ServerProtocol}* {__strong},NSDictionary * {__strong}>::~sync_message(va);
  objc_sync_exit(v5);

  _Unwind_Resume(a1);
}

id GetLocalCAReporterObjectFromClient(CAReportingClient *a1, uint64_t a2)
{
  v3 = a1;
  v4 = objc_autoreleasePoolPush();
  v5 = [(CAReportingClient *)v3 clientReporters];
  v6 = [MEMORY[0x29EDBA070] numberWithLongLong:a2];
  v7 = [v5 objectForKey:v6];

  objc_autoreleasePoolPop(v4);

  return v7;
}

id caulk::xpc::message<objc_object  {objcproto14ServerProtocol}* {__strong},NSDictionary * {__strong}>::sync_proxy(void **a1)
{
  v9 = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::__value_func[abi:ne200100](v8, (a1 + 1));
  v2 = *a1;
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3321888768;
  v6[2] = ___ZN5caulk3xpc7messageIU8__strongPU25objcproto14ServerProtocol11objc_objectJU8__strongP12NSDictionaryEE10sync_proxyEv_block_invoke;
  v6[3] = &__block_descriptor_64_ea8_32c75_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJU8__strongP12NSDictionaryEEEEEE_e17_v16__0__NSError_8l;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::__value_func[abi:ne200100](v7, v8);
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v6];
  std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::~__value_func[abi:ne200100](v7);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::~__value_func[abi:ne200100](v8);
  v4 = *MEMORY[0x29EDCA608];

  return v3;
}

void sub_296C8EC44(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::~__value_func[abi:ne200100](v1 + 32);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::~__value_func[abi:ne200100](v2 - 56);
  _Unwind_Resume(a1);
}

id caulk::xpc::message<objc_object  {objcproto14ServerProtocol}* {__strong},NSDictionary * {__strong}>::reply(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::__value_func[abi:ne200100](v6, a1 + 8);
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3321888768;
  v4[2] = ___ZN5caulk3xpc7messageIU8__strongPU25objcproto14ServerProtocol11objc_objectJU8__strongP12NSDictionaryEE5replyEv_block_invoke;
  v4[3] = &__block_descriptor_64_ea8_32c75_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJU8__strongP12NSDictionaryEEEEEE_e34_v24__0__NSError_8__NSDictionary_16l;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::__value_func[abi:ne200100](v5, v6);
  v1 = MEMORY[0x29C261C60](v4);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::~__value_func[abi:ne200100](v5);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::~__value_func[abi:ne200100](v6);
  v2 = *MEMORY[0x29EDCA608];

  return v1;
}

id *caulk::xpc::sync_message<objc_object  {objcproto14ServerProtocol}* {__strong},NSDictionary * {__strong}>::~sync_message(id *a1)
{
  std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::~__value_func[abi:ne200100]((a1 + 1));

  return a1;
}

id caulk::xpc::message<objc_object  {objcproto26CAReportingServiceProtocol}* {__strong},NSDictionary * {__strong}>::sync_proxy(void **a1)
{
  v9 = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::__value_func[abi:ne200100](v8, (a1 + 1));
  v2 = *a1;
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3321888768;
  v6[2] = ___ZN5caulk3xpc7messageIU8__strongPU37objcproto26CAReportingServiceProtocol11objc_objectJU8__strongP12NSDictionaryEE10sync_proxyEv_block_invoke;
  v6[3] = &__block_descriptor_64_ea8_32c75_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJU8__strongP12NSDictionaryEEEEEE_e17_v16__0__NSError_8l;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::__value_func[abi:ne200100](v7, v8);
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v6];
  std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::~__value_func[abi:ne200100](v7);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::~__value_func[abi:ne200100](v8);
  v4 = *MEMORY[0x29EDCA608];

  return v3;
}

void sub_296C8EE9C(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::~__value_func[abi:ne200100](v1 + 32);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::~__value_func[abi:ne200100](v2 - 56);
  _Unwind_Resume(a1);
}

id caulk::xpc::message<objc_object  {objcproto26CAReportingServiceProtocol}* {__strong},NSDictionary * {__strong}>::reply(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::__value_func[abi:ne200100](v6, a1 + 8);
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3321888768;
  v4[2] = ___ZN5caulk3xpc7messageIU8__strongPU37objcproto26CAReportingServiceProtocol11objc_objectJU8__strongP12NSDictionaryEE5replyEv_block_invoke;
  v4[3] = &__block_descriptor_64_ea8_32c75_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJU8__strongP12NSDictionaryEEEEEE_e34_v24__0__NSError_8__NSDictionary_16l;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::__value_func[abi:ne200100](v5, v6);
  v1 = MEMORY[0x29C261C60](v4);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::~__value_func[abi:ne200100](v5);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::~__value_func[abi:ne200100](v6);
  v2 = *MEMORY[0x29EDCA608];

  return v1;
}

void sub_296C8F5E4(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

id caulk::xpc::message<objc_object  {objcproto14ServerProtocol}* {__strong},NSDictionary * {__strong}>::async_proxy(void **a1)
{
  v9 = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::__value_func[abi:ne200100](v8, (a1 + 1));
  v2 = *a1;
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3321888768;
  v6[2] = ___ZN5caulk3xpc7messageIU8__strongPU25objcproto14ServerProtocol11objc_objectJU8__strongP12NSDictionaryEE11async_proxyEv_block_invoke;
  v6[3] = &__block_descriptor_64_ea8_32c75_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJU8__strongP12NSDictionaryEEEEEE_e17_v16__0__NSError_8l;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::__value_func[abi:ne200100](v7, v8);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v6];
  std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::~__value_func[abi:ne200100](v7);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::~__value_func[abi:ne200100](v8);
  v4 = *MEMORY[0x29EDCA608];

  return v3;
}

void sub_296C8FD5C(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::~__value_func[abi:ne200100](v1 + 32);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::~__value_func[abi:ne200100](v2 - 56);
  _Unwind_Resume(a1);
}

id caulk::xpc::message<objc_object  {objcproto26CAReportingServiceProtocol}* {__strong},NSDictionary * {__strong}>::async_proxy(void **a1)
{
  v9 = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::__value_func[abi:ne200100](v8, (a1 + 1));
  v2 = *a1;
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3321888768;
  v6[2] = ___ZN5caulk3xpc7messageIU8__strongPU37objcproto26CAReportingServiceProtocol11objc_objectJU8__strongP12NSDictionaryEE11async_proxyEv_block_invoke;
  v6[3] = &__block_descriptor_64_ea8_32c75_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJU8__strongP12NSDictionaryEEEEEE_e17_v16__0__NSError_8l;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::__value_func[abi:ne200100](v7, v8);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v6];
  std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::~__value_func[abi:ne200100](v7);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::~__value_func[abi:ne200100](v8);
  v4 = *MEMORY[0x29EDCA608];

  return v3;
}

void sub_296C8FE74(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::~__value_func[abi:ne200100](v1 + 32);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::~__value_func[abi:ne200100](v2 - 56);
  _Unwind_Resume(a1);
}

void sub_296C8FF1C(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_296C90210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  v9 = v7;

  caulk::xpc::sync_message<objc_object  {objcproto14ServerProtocol}* {__strong},NSArray<NSNumber *> * {__strong}>::~sync_message(va);
  objc_sync_exit(v5);

  _Unwind_Resume(a1);
}

id caulk::xpc::message<objc_object  {objcproto26CAReportingServiceProtocol}* {__strong},NSArray<NSNumber *> * {__strong}>::sync_proxy(void **a1)
{
  v9 = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<NSNumber *> * {__strong}> &&)>::__value_func[abi:ne200100](v8, (a1 + 1));
  v2 = *a1;
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3321888768;
  v6[2] = ___ZN5caulk3xpc7messageIU8__strongPU37objcproto26CAReportingServiceProtocol11objc_objectJU8__strongP7NSArrayIP8NSNumberEEE10sync_proxyEv_block_invoke;
  v6[3] = &__block_descriptor_64_ea8_32c81_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJU8__strongP7NSArrayIP8NSNumberEEEEEEE_e17_v16__0__NSError_8l;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<NSNumber *> * {__strong}> &&)>::__value_func[abi:ne200100](v7, v8);
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v6];
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<NSNumber *> * {__strong}> &&)>::~__value_func[abi:ne200100](v7);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<NSNumber *> * {__strong}> &&)>::~__value_func[abi:ne200100](v8);
  v4 = *MEMORY[0x29EDCA608];

  return v3;
}

void sub_296C903B0(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<NSNumber *> * {__strong}> &&)>::~__value_func[abi:ne200100](v1 + 32);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<NSNumber *> * {__strong}> &&)>::~__value_func[abi:ne200100](v2 - 56);
  _Unwind_Resume(a1);
}

id caulk::xpc::message<objc_object  {objcproto26CAReportingServiceProtocol}* {__strong},NSArray<NSNumber *> * {__strong}>::reply(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<NSNumber *> * {__strong}> &&)>::__value_func[abi:ne200100](v6, a1 + 8);
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3321888768;
  v4[2] = ___ZN5caulk3xpc7messageIU8__strongPU37objcproto26CAReportingServiceProtocol11objc_objectJU8__strongP7NSArrayIP8NSNumberEEE5replyEv_block_invoke;
  v4[3] = &__block_descriptor_64_ea8_32c81_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJU8__strongP7NSArrayIP8NSNumberEEEEEEE_e29_v24__0__NSError_8__NSArray_16l;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<NSNumber *> * {__strong}> &&)>::__value_func[abi:ne200100](v5, v6);
  v1 = MEMORY[0x29C261C60](v4);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<NSNumber *> * {__strong}> &&)>::~__value_func[abi:ne200100](v5);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<NSNumber *> * {__strong}> &&)>::~__value_func[abi:ne200100](v6);
  v2 = *MEMORY[0x29EDCA608];

  return v1;
}

void sub_296C909AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  caulk::xpc::sync_message<objc_object  {objcproto14ServerProtocol}* {__strong},BOOL>::~sync_message(&a9);

  objc_sync_exit(v9);
  _Unwind_Resume(a1);
}

id caulk::xpc::message<objc_object  {objcproto14ServerProtocol}* {__strong},BOOL>::sync_proxy(void **a1)
{
  v9 = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL> &&)>::__value_func[abi:ne200100](v8, (a1 + 1));
  v2 = *a1;
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3321888768;
  v6[2] = ___ZN5caulk3xpc7messageIU8__strongPU25objcproto14ServerProtocol11objc_objectJbEE10sync_proxyEv_block_invoke;
  v6[3] = &__block_descriptor_64_ea8_32c51_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJbEEEEEE_e17_v16__0__NSError_8l;
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL> &&)>::__value_func[abi:ne200100](v7, v8);
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v6];
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL> &&)>::~__value_func[abi:ne200100](v7);
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL> &&)>::~__value_func[abi:ne200100](v8);
  v4 = *MEMORY[0x29EDCA608];

  return v3;
}

void sub_296C90B98(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL> &&)>::~__value_func[abi:ne200100](v1 + 32);
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL> &&)>::~__value_func[abi:ne200100](v2 - 56);
  _Unwind_Resume(a1);
}

id caulk::xpc::message<objc_object  {objcproto26CAReportingServiceProtocol}* {__strong},BOOL>::sync_proxy(void **a1)
{
  v9 = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL> &&)>::__value_func[abi:ne200100](v8, (a1 + 1));
  v2 = *a1;
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3321888768;
  v6[2] = ___ZN5caulk3xpc7messageIU8__strongPU37objcproto26CAReportingServiceProtocol11objc_objectJbEE10sync_proxyEv_block_invoke;
  v6[3] = &__block_descriptor_64_ea8_32c51_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJbEEEEEE_e17_v16__0__NSError_8l;
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL> &&)>::__value_func[abi:ne200100](v7, v8);
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v6];
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL> &&)>::~__value_func[abi:ne200100](v7);
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL> &&)>::~__value_func[abi:ne200100](v8);
  v4 = *MEMORY[0x29EDCA608];

  return v3;
}

void sub_296C90CB0(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL> &&)>::~__value_func[abi:ne200100](v1 + 32);
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL> &&)>::~__value_func[abi:ne200100](v2 - 56);
  _Unwind_Resume(a1);
}

id caulk::xpc::message<objc_object  {objcproto26CAReportingServiceProtocol}* {__strong},BOOL>::reply(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL> &&)>::__value_func[abi:ne200100](v6, a1 + 8);
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3321888768;
  v4[2] = ___ZN5caulk3xpc7messageIU8__strongPU37objcproto26CAReportingServiceProtocol11objc_objectJbEE5replyEv_block_invoke;
  v4[3] = &__block_descriptor_64_ea8_32c51_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJbEEEEEE_e20_v20__0__NSError_8B16l;
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL> &&)>::__value_func[abi:ne200100](v5, v6);
  v1 = MEMORY[0x29C261C60](v4);
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL> &&)>::~__value_func[abi:ne200100](v5);
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL> &&)>::~__value_func[abi:ne200100](v6);
  v2 = *MEMORY[0x29EDCA608];

  return v1;
}

void sub_296C912D4(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_296C917BC(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_296C91E28(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_296C923A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  caulk::xpc::sync_message<objc_object  {objcproto14ServerProtocol}* {__strong},NSDictionary * {__strong}>::~sync_message(va);
  objc_sync_exit(v7);

  _Unwind_Resume(a1);
}

void sub_296C9260C(_Unwind_Exception *a1)
{
  objc_sync_exit(v3);

  _Unwind_Resume(a1);
}

void sub_296C927A8(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_296C92B60(_Unwind_Exception *a1)
{
  v4 = v3;

  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

id *caulk::xpc::sync_message<objc_object  {objcproto14ServerProtocol}* {__strong},NSArray<NSNumber *> * {__strong}>::~sync_message(id *a1)
{
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<NSNumber *> * {__strong}> &&)>::~__value_func[abi:ne200100]((a1 + 1));

  return a1;
}

uint64_t std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<NSNumber *> * {__strong}> &&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

id *caulk::xpc::sync_message<objc_object  {objcproto14ServerProtocol}* {__strong},BOOL>::~sync_message(id *a1)
{
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL> &&)>::~__value_func[abi:ne200100]((a1 + 1));

  return a1;
}

uint64_t std::__function::__value_func<void ()(NSError *,std::tuple<BOOL> &&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t _ZZN5caulk4slog6detail16string_converterC1IU8__strongP8NSStringEERKT_PNSt3__19enable_ifIXsr14has_extract_opIS7_EE5valueEvE4typeEENKUlvE_clEv@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
  MEMORY[0x29C261870](&v8, **a1 != 0);
  if ((v15 & 0x10) != 0)
  {
    v5 = v14;
    if (v14 < v11)
    {
      v14 = v11;
      v5 = v11;
    }

    locale = v10[4].__locale_;
  }

  else
  {
    if ((v15 & 8) == 0)
    {
      v4 = 0;
      a2[23] = 0;
      goto LABEL_14;
    }

    locale = v10[1].__locale_;
    v5 = v10[3].__locale_;
  }

  v4 = v5 - locale;
  if ((v5 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v4 >= 0x17)
  {
    operator new();
  }

  a2[23] = v4;
  if (v4)
  {
    memmove(a2, locale, v4);
  }

LABEL_14:
  a2[v4] = 0;
  v8 = *MEMORY[0x29EDC9538];
  *(&v8 + *(v8 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  v9 = MEMORY[0x29EDC9570] + 16;
  if (v13 < 0)
  {
    operator delete(__p);
  }

  v9 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v10);
  std::ostream::~ostream();
  return MEMORY[0x29C2618D0](&v16);
}

void sub_296C930B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va, MEMORY[0x29EDC9538]);
  MEMORY[0x29C2618D0](v2 + 112);
  _Unwind_Resume(a1);
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x29EDC95A8] + 64;
  a1[14] = MEMORY[0x29EDC95A8] + 64;
  v3 = *(MEMORY[0x29EDC9538] + 16);
  v4 = *(MEMORY[0x29EDC9538] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x29EDC95A8] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_296C9321C(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x29C2618D0](v1);
  _Unwind_Resume(a1);
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x29EDC9568] + 16;
  MEMORY[0x29C261880](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x29EDC9570] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_296C932D8(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EE531B8, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

std::string *caulk::slog::detail::string_converter::string_converter(std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v3;
  }

  this[1].__r_.__value_.__s.__data_[0] = 1;
  v4 = this;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    v4 = this->__r_.__value_.__r.__words[0];
  }

  this[1].__r_.__value_.__l.__size_ = v4;
  return this;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void *caulk::xpc::sync_message<objc_object  {objcproto14ServerProtocol}* {__strong},NSDictionary * {__strong}>::sync_message(void *a1, void *a2)
{
  v5[4] = *MEMORY[0x29EDCA608];
  v5[0] = &unk_2A1DF11F8;
  v5[1] = a1;
  v5[3] = v5;
  caulk::xpc::message<objc_object  {objcproto14ServerProtocol}* {__strong},NSDictionary * {__strong}>::message(a1, a2, v5);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::~__value_func[abi:ne200100](v5);
  a1[5] = 0;
  a1[6] = 0;
  v3 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_296C9376C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *caulk::xpc::message<objc_object  {objcproto14ServerProtocol}* {__strong},NSDictionary * {__strong}>::message(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  *a1 = v5;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::__value_func[abi:ne200100]((a1 + 1), a3);

  return a1;
}

uint64_t std::__function::__func<caulk::xpc::sync_message<objc_object  {objcproto14ServerProtocol}* {__strong},NSDictionary * {__strong}>::sync_message(NSXPCConnection *)::{lambda(NSError *,std::tuple<NSDictionary *> &&)#1},std::allocator<std::tuple<NSDictionary *> &>,void ()(NSError,std::tuple<NSDictionary *>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1DF11F8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<caulk::xpc::sync_message<objc_object  {objcproto14ServerProtocol}* {__strong},NSDictionary * {__strong}>::sync_message(NSXPCConnection *)::{lambda(NSError *,std::tuple<NSDictionary *> &&)#1},std::allocator<std::tuple<NSDictionary *> &>,void ()(NSError,std::tuple<NSDictionary *>)>::operator()(uint64_t a1, id *a2, id *a3)
{
  v5 = *a2;
  v6 = *(a1 + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  objc_storeStrong((v6 + 48), *a3);
}

uint64_t std::__function::__func<caulk::xpc::sync_message<objc_object  {objcproto14ServerProtocol}* {__strong},NSDictionary * {__strong}>::sync_message(NSXPCConnection *)::{lambda(NSError *,std::tuple<NSDictionary *> &&)#1},std::allocator<std::tuple<NSDictionary *> &>,void ()(NSError,std::tuple<NSDictionary *>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
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

uint64_t std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void ___ZN5caulk3xpc7messageIU8__strongPU25objcproto14ServerProtocol11objc_objectJU8__strongP12NSDictionaryEE10sync_proxyEv_block_invoke(uint64_t a1, void *a2)
{
  v2 = 0;
  std::function<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::operator()(a1 + 32, a2, &v2);
}

void std::function<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::operator()(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = *(a1 + 24);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v5 + 48))(v5, &v6, a3);
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC9588] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9450], MEMORY[0x29EDC93B0]);
}

void ___ZN5caulk3xpc7messageIU8__strongPU25objcproto14ServerProtocol11objc_objectJU8__strongP12NSDictionaryEE5replyEv_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  std::function<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::operator()(a1 + 32, a2, &v5);
}

void *caulk::xpc::sync_message<objc_object  {objcproto26CAReportingServiceProtocol}* {__strong},NSDictionary * {__strong}>::sync_message(void *a1, void *a2)
{
  v5[4] = *MEMORY[0x29EDCA608];
  v5[0] = &unk_2A1DF10F0;
  v5[1] = a1;
  v5[3] = v5;
  caulk::xpc::message<objc_object  {objcproto26CAReportingServiceProtocol}* {__strong},NSDictionary * {__strong}>::message(a1, a2, v5);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::~__value_func[abi:ne200100](v5);
  a1[5] = 0;
  a1[6] = 0;
  v3 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_296C93CDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *caulk::xpc::message<objc_object  {objcproto26CAReportingServiceProtocol}* {__strong},NSDictionary * {__strong}>::message(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  *a1 = v5;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::__value_func[abi:ne200100]((a1 + 1), a3);

  return a1;
}

uint64_t std::__function::__func<caulk::xpc::sync_message<objc_object  {objcproto26CAReportingServiceProtocol}* {__strong},NSDictionary * {__strong}>::sync_message(NSXPCConnection *)::{lambda(NSError *,std::tuple<NSDictionary *> &&)#1},std::allocator<std::tuple<NSDictionary *> &>,void ()(NSError,std::tuple<NSDictionary *>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1DF10F0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<caulk::xpc::sync_message<objc_object  {objcproto26CAReportingServiceProtocol}* {__strong},NSDictionary * {__strong}>::sync_message(NSXPCConnection *)::{lambda(NSError *,std::tuple<NSDictionary *> &&)#1},std::allocator<std::tuple<NSDictionary *> &>,void ()(NSError,std::tuple<NSDictionary *>)>::operator()(uint64_t a1, id *a2, id *a3)
{
  v5 = *a2;
  v6 = *(a1 + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  objc_storeStrong((v6 + 48), *a3);
}

uint64_t std::__function::__func<caulk::xpc::sync_message<objc_object  {objcproto26CAReportingServiceProtocol}* {__strong},NSDictionary * {__strong}>::sync_message(NSXPCConnection *)::{lambda(NSError *,std::tuple<NSDictionary *> &&)#1},std::allocator<std::tuple<NSDictionary *> &>,void ()(NSError,std::tuple<NSDictionary *>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void ___ZN5caulk3xpc7messageIU8__strongPU37objcproto26CAReportingServiceProtocol11objc_objectJU8__strongP12NSDictionaryEE10sync_proxyEv_block_invoke(uint64_t a1, void *a2)
{
  v2 = 0;
  std::function<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::operator()(a1 + 32, a2, &v2);
}

void ___ZN5caulk3xpc7messageIU8__strongPU37objcproto26CAReportingServiceProtocol11objc_objectJU8__strongP12NSDictionaryEE5replyEv_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  std::function<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::operator()(a1 + 32, a2, &v5);
}

void ___ZN5caulk3xpc7messageIU8__strongPU25objcproto14ServerProtocol11objc_objectJU8__strongP12NSDictionaryEE11async_proxyEv_block_invoke(uint64_t a1, void *a2)
{
  v2 = 0;
  std::function<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::operator()(a1 + 32, a2, &v2);
}

void ___ZN5caulk3xpc7messageIU8__strongPU37objcproto26CAReportingServiceProtocol11objc_objectJU8__strongP12NSDictionaryEE11async_proxyEv_block_invoke(uint64_t a1, void *a2)
{
  v2 = 0;
  std::function<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::operator()(a1 + 32, a2, &v2);
}

void *caulk::xpc::sync_message<objc_object  {objcproto14ServerProtocol}* {__strong},NSArray<NSNumber *> * {__strong}>::sync_message(void *a1, void *a2)
{
  v5[4] = *MEMORY[0x29EDCA608];
  v5[0] = &unk_2A1DF11A0;
  v5[1] = a1;
  v5[3] = v5;
  caulk::xpc::message<objc_object  {objcproto14ServerProtocol}* {__strong},NSArray<NSNumber *> * {__strong}>::message(a1, a2, v5);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<NSNumber *> * {__strong}> &&)>::~__value_func[abi:ne200100](v5);
  a1[5] = 0;
  a1[6] = 0;
  v3 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_296C944FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<NSNumber *> * {__strong}> &&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *caulk::xpc::message<objc_object  {objcproto14ServerProtocol}* {__strong},NSArray<NSNumber *> * {__strong}>::message(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  *a1 = v5;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<NSNumber *> * {__strong}> &&)>::__value_func[abi:ne200100]((a1 + 1), a3);

  return a1;
}

uint64_t std::__function::__func<caulk::xpc::sync_message<objc_object  {objcproto14ServerProtocol}* {__strong},NSArray<NSNumber *> * {__strong}>::sync_message(NSXPCConnection *)::{lambda(NSError *,std::tuple<NSArray<NSNumber *> *> &&)#1},std::allocator<std::tuple<NSArray<NSNumber *> *> &>,void ()(NSError,std::tuple<NSArray<NSNumber *> *>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1DF11A0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<caulk::xpc::sync_message<objc_object  {objcproto14ServerProtocol}* {__strong},NSArray<NSNumber *> * {__strong}>::sync_message(NSXPCConnection *)::{lambda(NSError *,std::tuple<NSArray<NSNumber *> *> &&)#1},std::allocator<std::tuple<NSArray<NSNumber *> *> &>,void ()(NSError,std::tuple<NSArray<NSNumber *> *>)>::operator()(uint64_t a1, id *a2, id *a3)
{
  v5 = *a2;
  v6 = *(a1 + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  objc_storeStrong((v6 + 48), *a3);
}

uint64_t std::__function::__func<caulk::xpc::sync_message<objc_object  {objcproto14ServerProtocol}* {__strong},NSArray<NSNumber *> * {__strong}>::sync_message(NSXPCConnection *)::{lambda(NSError *,std::tuple<NSArray<NSNumber *> *> &&)#1},std::allocator<std::tuple<NSArray<NSNumber *> *> &>,void ()(NSError,std::tuple<NSArray<NSNumber *> *>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<NSNumber *> * {__strong}> &&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *caulk::xpc::sync_message<objc_object  {objcproto26CAReportingServiceProtocol}* {__strong},NSArray<NSNumber *> * {__strong}>::sync_message(void *a1, void *a2)
{
  v5[4] = *MEMORY[0x29EDCA608];
  v5[0] = &unk_2A1DF1098;
  v5[1] = a1;
  v5[3] = v5;
  caulk::xpc::message<objc_object  {objcproto26CAReportingServiceProtocol}* {__strong},NSArray<NSNumber *> * {__strong}>::message(a1, a2, v5);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<NSNumber *> * {__strong}> &&)>::~__value_func[abi:ne200100](v5);
  a1[5] = 0;
  a1[6] = 0;
  v3 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_296C947FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<NSNumber *> * {__strong}> &&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *caulk::xpc::message<objc_object  {objcproto26CAReportingServiceProtocol}* {__strong},NSArray<NSNumber *> * {__strong}>::message(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  *a1 = v5;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<NSNumber *> * {__strong}> &&)>::__value_func[abi:ne200100]((a1 + 1), a3);

  return a1;
}

uint64_t std::__function::__func<caulk::xpc::sync_message<objc_object  {objcproto26CAReportingServiceProtocol}* {__strong},NSArray<NSNumber *> * {__strong}>::sync_message(NSXPCConnection *)::{lambda(NSError *,std::tuple<NSArray<NSNumber *> *> &&)#1},std::allocator<std::tuple<NSArray<NSNumber *> *> &>,void ()(NSError,std::tuple<NSArray<NSNumber *> *>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1DF1098;
  a2[1] = v2;
  return result;
}

void std::__function::__func<caulk::xpc::sync_message<objc_object  {objcproto26CAReportingServiceProtocol}* {__strong},NSArray<NSNumber *> * {__strong}>::sync_message(NSXPCConnection *)::{lambda(NSError *,std::tuple<NSArray<NSNumber *> *> &&)#1},std::allocator<std::tuple<NSArray<NSNumber *> *> &>,void ()(NSError,std::tuple<NSArray<NSNumber *> *>)>::operator()(uint64_t a1, id *a2, id *a3)
{
  v5 = *a2;
  v6 = *(a1 + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  objc_storeStrong((v6 + 48), *a3);
}

uint64_t std::__function::__func<caulk::xpc::sync_message<objc_object  {objcproto26CAReportingServiceProtocol}* {__strong},NSArray<NSNumber *> * {__strong}>::sync_message(NSXPCConnection *)::{lambda(NSError *,std::tuple<NSArray<NSNumber *> *> &&)#1},std::allocator<std::tuple<NSArray<NSNumber *> *> &>,void ()(NSError,std::tuple<NSArray<NSNumber *> *>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void ___ZN5caulk3xpc7messageIU8__strongPU37objcproto26CAReportingServiceProtocol11objc_objectJU8__strongP7NSArrayIP8NSNumberEEE10sync_proxyEv_block_invoke(uint64_t a1, void *a2)
{
  v2 = 0;
  std::function<void ()(NSError *,std::tuple<NSArray<NSNumber *> * {__strong}> &&)>::operator()(a1 + 32, a2, &v2);
}

void std::function<void ()(NSError *,std::tuple<NSArray<NSNumber *> * {__strong}> &&)>::operator()(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = *(a1 + 24);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v5 + 48))(v5, &v6, a3);
}

void ___ZN5caulk3xpc7messageIU8__strongPU37objcproto26CAReportingServiceProtocol11objc_objectJU8__strongP7NSArrayIP8NSNumberEEE5replyEv_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  std::function<void ()(NSError *,std::tuple<NSArray<NSNumber *> * {__strong}> &&)>::operator()(a1 + 32, a2, &v5);
}

uint64_t caulk::xpc::sync_message<objc_object  {objcproto14ServerProtocol}* {__strong},BOOL>::sync_message(uint64_t a1, void *a2)
{
  v5[4] = *MEMORY[0x29EDCA608];
  v5[0] = &unk_2A1DF1148;
  v5[1] = a1;
  v5[3] = v5;
  caulk::xpc::message<objc_object  {objcproto14ServerProtocol}* {__strong},BOOL>::message(a1, a2, v5);
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL> &&)>::~__value_func[abi:ne200100](v5);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v3 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_296C94BB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL> &&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *caulk::xpc::message<objc_object  {objcproto14ServerProtocol}* {__strong},BOOL>::message(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  *a1 = v5;
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL> &&)>::__value_func[abi:ne200100]((a1 + 1), a3);

  return a1;
}

uint64_t std::__function::__func<caulk::xpc::sync_message<objc_object  {objcproto14ServerProtocol}* {__strong},BOOL>::sync_message(NSXPCConnection *)::{lambda(NSError *,std::tuple<BOOL> &&)#1},std::allocator<std::tuple<BOOL> &>,void ()(NSError,std::tuple<BOOL>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1DF1148;
  a2[1] = v2;
  return result;
}

void std::__function::__func<caulk::xpc::sync_message<objc_object  {objcproto14ServerProtocol}* {__strong},BOOL>::sync_message(NSXPCConnection *)::{lambda(NSError *,std::tuple<BOOL> &&)#1},std::allocator<std::tuple<BOOL> &>,void ()(NSError,std::tuple<BOOL>)>::operator()(uint64_t a1, id *a2, _BYTE *a3)
{
  v5 = *a2;
  v6 = *(a1 + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  *(v6 + 48) = *a3;
}

uint64_t std::__function::__func<caulk::xpc::sync_message<objc_object  {objcproto14ServerProtocol}* {__strong},BOOL>::sync_message(NSXPCConnection *)::{lambda(NSError *,std::tuple<BOOL> &&)#1},std::allocator<std::tuple<BOOL> &>,void ()(NSError,std::tuple<BOOL>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(NSError *,std::tuple<BOOL> &&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void std::function<void ()(NSError *,std::tuple<BOOL> &&)>::operator()(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = *(a1 + 24);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v5 + 48))(v5, &v6, a3);
}

uint64_t caulk::xpc::sync_message<objc_object  {objcproto26CAReportingServiceProtocol}* {__strong},BOOL>::sync_message(uint64_t a1, void *a2)
{
  v5[4] = *MEMORY[0x29EDCA608];
  v5[0] = &unk_2A1DF1040;
  v5[1] = a1;
  v5[3] = v5;
  caulk::xpc::message<objc_object  {objcproto26CAReportingServiceProtocol}* {__strong},BOOL>::message(a1, a2, v5);
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL> &&)>::~__value_func[abi:ne200100](v5);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v3 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_296C94F84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL> &&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *caulk::xpc::message<objc_object  {objcproto26CAReportingServiceProtocol}* {__strong},BOOL>::message(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  *a1 = v5;
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL> &&)>::__value_func[abi:ne200100]((a1 + 1), a3);

  return a1;
}

uint64_t std::__function::__func<caulk::xpc::sync_message<objc_object  {objcproto26CAReportingServiceProtocol}* {__strong},BOOL>::sync_message(NSXPCConnection *)::{lambda(NSError *,std::tuple<BOOL> &&)#1},std::allocator<std::tuple<BOOL> &>,void ()(NSError,std::tuple<BOOL>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1DF1040;
  a2[1] = v2;
  return result;
}

void std::__function::__func<caulk::xpc::sync_message<objc_object  {objcproto26CAReportingServiceProtocol}* {__strong},BOOL>::sync_message(NSXPCConnection *)::{lambda(NSError *,std::tuple<BOOL> &&)#1},std::allocator<std::tuple<BOOL> &>,void ()(NSError,std::tuple<BOOL>)>::operator()(uint64_t a1, id *a2, _BYTE *a3)
{
  v5 = *a2;
  v6 = *(a1 + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  *(v6 + 48) = *a3;
}

uint64_t std::__function::__func<caulk::xpc::sync_message<objc_object  {objcproto26CAReportingServiceProtocol}* {__strong},BOOL>::sync_message(NSXPCConnection *)::{lambda(NSError *,std::tuple<BOOL> &&)#1},std::allocator<std::tuple<BOOL> &>,void ()(NSError,std::tuple<BOOL>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void CreateSharedCAReportingClient()
{
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v0 = objc_autoreleasePoolPush();
    v1 = +[CAReportingClient sharedInstance];

    objc_autoreleasePoolPop(v0);
  }
}

uint64_t CAReportingClientCreateReporterIDFromSessionID(uint64_t a1)
{
  if (_os_feature_enabled_impl())
  {

    return MEMORY[0x2A1C5F500](a1);
  }

  else
  {
    v2 = objc_autoreleasePoolPush();
    v3 = [[CAReporter alloc] initWithSessionID:a1 serviceType:0xFFFFLL];
    v4 = v3;
    if (v3)
    {
      v5 = [(CAReporter *)v3 reporterID];
    }

    else
    {
      v5 = 0;
    }

    objc_autoreleasePoolPop(v2);
    return v5;
  }
}

uint64_t CAReportingClientCreateTestReporterID()
{
  v14 = *MEMORY[0x29EDCA608];
  v0 = *AA_ClientCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "CAReportingClientWrap.mm";
    v10 = 1024;
    v11 = 67;
    _os_log_impl(&dword_296C89000, v0, OS_LOG_TYPE_DEFAULT, "%25s:%-5d CAReportingClientCreateTestReporterID called", &v8, 0x12u);
  }

  v1 = objc_autoreleasePoolPush();
  v2 = [[CATestReporter alloc] initWithNewReporterID];
  v3 = *AA_ClientCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(CAReporter *)v2 reporterID];
    v8 = 136315650;
    v9 = "CAReportingClientWrap.mm";
    v10 = 1024;
    v11 = 71;
    v12 = 2048;
    v13 = v4;
    _os_log_impl(&dword_296C89000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d CAReportingClientCreateTestReporterID { careporter_id=%lli }", &v8, 0x1Cu);
  }

  if (v2)
  {
    v5 = [(CAReporter *)v2 reporterID];
  }

  else
  {
    v5 = 0;
  }

  objc_autoreleasePoolPop(v1);
  v6 = *MEMORY[0x29EDCA608];
  return v5;
}

void CAReportingClientDestroyReporterID(uint64_t a1)
{
  if (_os_feature_enabled_impl())
  {

    JUMPOUT(0x29C2616F0);
  }

  if (a1)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = +[CAReportingClient sharedInstance];
    [v3 destroyReporterWithID:a1];

    objc_autoreleasePoolPop(v2);
  }
}

void CAReportingClientRequestMessage(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = a4;
  if (_os_feature_enabled_impl())
  {
    AudioAnalyticsRequestMessage();
  }

  else if (a1)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = +[CAReportingClient sharedInstance];
    [v8 requestMessageWithID:a1 category:a2 type:a3 callback:v9];

    objc_autoreleasePoolPop(v7);
  }
}

void *AA_ClientCategory(void)
{
  {
    caulk::log_category::log_category(&AA_ClientCategory(void)::category, "com.apple.coreaudio", "carc");
  }

  return &AA_ClientCategory(void)::category;
}

caulk::log_category *caulk::log_category::log_category(caulk::log_category *this, const char *subsystem, const char *category)
{
  *this = 0;
  *(this + 1) = 0;
  v4 = os_log_create(subsystem, category);
  v5 = *this;
  *this = v4;

  return this;
}

void *AA_PerformanceUtilityCategory(void)
{
  {
    caulk::log_category::log_category(&AA_PerformanceUtilityCategory(void)::category, "com.apple.coreaudio", "capu");
  }

  return &AA_PerformanceUtilityCategory(void)::category;
}

std::string *caulk::slog::detail::string_converter::string_converter<char *>(std::string *a1, const char **a2)
{
  v4 = a2;
  _ZZN5caulk4slog6detail16string_converterC1IPcEERKT_PNSt3__19enable_ifIXsr14has_extract_opIS5_EE5valueEvE4typeEENKUlvE_clEv(&v4, __p);
  caulk::slog::detail::string_converter::string_converter(a1, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_296C96584(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<pc_session *>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<pc_session *>>(result, a2);
    }

    std::vector<pc_session *>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_296C96CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_296C96FD4(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<pc_session *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x29EDC9488], MEMORY[0x29EDC9370]);
}

void *std::vector<pc_session *>::__assign_with_size[abi:ne200100]<pc_session **,pc_session **>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<pc_session *>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<pc_session *>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void std::vector<pc_session *>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<pc_session *>>(a1, a2);
  }

  std::vector<pc_session *>::__throw_length_error[abi:ne200100]();
}

uint64_t _ZZN5caulk4slog6detail16string_converterC1IPcEERKT_PNSt3__19enable_ifIXsr14has_extract_opIS5_EE5valueEvE4typeEENKUlvE_clEv@<X0>(const char ***a1@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
  v4 = **a1;
  v5 = strlen(v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, v4, v5);
  if ((v17 & 0x10) != 0)
  {
    v7 = v16;
    if (v16 < v13)
    {
      v16 = v13;
      v7 = v13;
    }

    locale = v12[4].__locale_;
  }

  else
  {
    if ((v17 & 8) == 0)
    {
      v6 = 0;
      a2[23] = 0;
      goto LABEL_14;
    }

    locale = v12[1].__locale_;
    v7 = v12[3].__locale_;
  }

  v6 = v7 - locale;
  if ((v7 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v6 >= 0x17)
  {
    operator new();
  }

  a2[23] = v6;
  if (v6)
  {
    memmove(a2, locale, v6);
  }

LABEL_14:
  a2[v6] = 0;
  v10 = *MEMORY[0x29EDC9538];
  *(&v10 + *(v10 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  v11 = MEMORY[0x29EDC9570] + 16;
  if (v15 < 0)
  {
    operator delete(__p);
  }

  v11 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v12);
  std::ostream::~ostream();
  return MEMORY[0x29C2618D0](&v18);
}

void sub_296C97900(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va, MEMORY[0x29EDC9538]);
  MEMORY[0x29C2618D0](v2 + 112);
  _Unwind_Resume(a1);
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x29C261840](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x29EDC93D0]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x29C261850](v13);
  return a1;
}

void sub_296C97A64(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x29C261850](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x296C97A44);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_296C97C98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CAReportingUtilityIsInternalBuild()
{
  v0 = objc_autoreleasePoolPush();
  if (CAReportingUtilityIsInternalBuild::once != -1)
  {
    CAReportingUtilityIsInternalBuild_cold_1();
  }

  v1 = CAReportingUtilityIsInternalBuild::gCAReportingUtilityIsInternal;
  objc_autoreleasePoolPop(v0);
  return v1;
}

void __CAReportingUtilityIsInternalBuild_block_invoke()
{
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v0 = MGCopyAnswer();
    if (v0)
    {
      v1 = v0;
      CAReportingUtilityIsInternalBuild::gCAReportingUtilityIsInternal = CFBooleanGetValue(v0) != 0;

      CFRelease(v1);
    }
  }
}

__CFString *CAReportingUtilityGenerateServiceNameFromServiceType(__int16 a1)
{
  if ((a1 + 1) > 0x10u)
  {
    return @"unknown";
  }

  else
  {
    return off_29EE533E8[(a1 + 1)];
  }
}

uint64_t CAReportingUtilityGenerateServiceTypeFromServiceName(void *a1)
{
  v1 = a1;
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x29EDB8DC0] dictionaryWithObjectsAndKeys:{&unk_2A1DF2CD8, @"generic", &unk_2A1DF2CF0, @"siri", &unk_2A1DF2D08, @"telephony", &unk_2A1DF2D20, @"haptics", &unk_2A1DF2D38, @"alarms", &unk_2A1DF2D50, @"standalone", &unk_2A1DF2D68, @"soundautoconfig", &unk_2A1DF2D80, @"longformaudio", &unk_2A1DF2D98, @"nonlongformaudio", &unk_2A1DF2DB0, @"audiodeviceusage", &unk_2A1DF2DC8, @"alerts", &unk_2A1DF2DE0, @"test", &unk_2A1DF2DF8, @"apiusage", &unk_2A1DF2E10, @"systemsounds", &unk_2A1DF2E28, @"secure", &unk_2A1DF2E40, @"soundanalysis", &unk_2A1DF2E58, @"unknown", 0}];
  v4 = [v3 objectForKey:v1];

  if (v4)
  {
    [v3 objectForKey:v1];
  }

  else
  {
    [v3 objectForKey:@"unknown"];
  }
  v5 = ;
  v6 = [v5 intValue];

  objc_autoreleasePoolPop(v2);
  return v6;
}

id CAReportingUtilityCategoryString(int a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x29EDBA050] string];
  v4 = v3;
  if ((a1 - 0x10000) > 0xFFFEFFFE)
  {
    goto LABEL_17;
  }

  v5 = a1 & 0xFFFF0000;
  if ((a1 & 0xFFFF0000) > 0xFFFFFFF)
  {
    switch(v5)
    {
      case 0x10000000u:
        v6 = @"DSP";
        goto LABEL_15;
      case 0x20000000u:
        v6 = @"HAL";
        goto LABEL_15;
      case 0x40000000u:
        v6 = @"Routing";
        goto LABEL_15;
    }
  }

  else
  {
    switch(v5)
    {
      case 0x80000000:
        v6 = @"Toolbox";
        goto LABEL_15;
      case 0x4000000u:
        v6 = @"MIDI";
        goto LABEL_15;
      case 0x8000000u:
        v6 = @"Session";
LABEL_15:
        [v3 appendString:v6];
        break;
    }
  }

  [v4 appendString:@"_"];
LABEL_17:
  if ((a1 - 1) > 0x18u)
  {
    v7 = @"Undefined";
  }

  else
  {
    v7 = off_29EE53470[(a1 - 1)];
  }

  [v4 appendString:v7];
  objc_autoreleasePoolPop(v2);

  return v4;
}

__CFString *CAReportingUtilityTypeString(__int16 a1)
{
  v2 = objc_autoreleasePoolPush();
  if ((a1 + 1) > 0x18u)
  {
    v3 = @"Generic";
  }

  else
  {
    v3 = off_29EE53538[(a1 + 1)];
  }

  objc_autoreleasePoolPop(v2);
  return v3;
}

__CFString *CAReportingUtilityRetrieveAppName(NSDictionary *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [(NSDictionary *)a1 objectForKeyedSubscript:@"HostApplicationDisplayID"];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"Unknown";
  }

  objc_autoreleasePoolPop(v2);

  return v4;
}

id CAReportingUtilityAddDates(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x29EDB8E00] dictionaryWithDictionary:a1];
  v4 = MEMORY[0x29EDBA070];
  v5 = [MEMORY[0x29EDB8DB0] date];
  [v5 timeIntervalSince1970];
  v6 = [v4 numberWithDouble:?];
  [v3 setObject:v6 forKeyedSubscript:@"careporting_timestamp"];

  v7 = MEMORY[0x29EDBA070];
  v8 = [MEMORY[0x29EDBA0B0] processInfo];
  [v8 systemUptime];
  LODWORD(v10) = llround(v9);
  v11 = [v7 numberWithInt:v10];
  [v3 setObject:v11 forKeyedSubscript:@"systemuptime_sec"];

  v12 = MEMORY[0x29EDBA070];
  LODWORD(v13) = llroundf((clock() / 1000000.0) * 1000.0);
  v14 = [v12 numberWithInt:v13];
  [v3 setObject:v14 forKeyedSubscript:@"processuptime_ms"];

  objc_autoreleasePoolPop(v2);

  return v3;
}

id CAReportingUtilityGetReportingServerQueue()
{
  if (CAReportingUtilityGetReportingServerQueue::onceToken != -1)
  {
    CAReportingUtilityGetReportingServerQueue_cold_1();
  }

  v1 = CAReportingUtilityGetReportingServerQueue::gReportingServerQueue;

  return v1;
}

void __CAReportingUtilityGetReportingServerQueue_block_invoke()
{
  v0 = [@"com.apple.coreaudio.reporting.server" UTF8String];
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_USER_INTERACTIVE, 0);
  v2 = dispatch_queue_create(v0, v1);
  v3 = CAReportingUtilityGetReportingServerQueue::gReportingServerQueue;
  CAReportingUtilityGetReportingServerQueue::gReportingServerQueue = v2;
}

BOOL CAReportingUtilityReadBooleanPref(NSString *a1, NSString *a2)
{
  v3 = a1;
  v4 = a2;
  CFPreferencesAppSynchronize(v4);
  v5 = CFPreferencesCopyValue(v3, v4, @"mobile", *MEMORY[0x29EDB8F90]);
  v6 = v5;
  if (v5)
  {
    v7 = CFBooleanGetValue(v5) != 0;
    CFRelease(v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
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

void operator new()
{
    ;
  }
}