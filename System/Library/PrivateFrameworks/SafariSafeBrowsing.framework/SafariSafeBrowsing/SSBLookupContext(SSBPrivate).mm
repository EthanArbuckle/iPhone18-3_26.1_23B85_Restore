@interface SSBLookupContext(SSBPrivate)
- (uint64_t)_deleteAllDatabasesWithCompletionHandler:()SSBPrivate;
- (uint64_t)_fetchCellularDataPlanWithCompletionHandler:()SSBPrivate;
- (uint64_t)_forceDatabaseUpdateWithCompletionHandler:()SSBPrivate;
- (uint64_t)_forceDeviceIdentificationTokenUpdateWithCompletionHandler:()SSBPrivate;
- (uint64_t)_forceLoadRemoteConfigurationFromDiskWithCompletionHandler:()SSBPrivate;
- (uint64_t)_forceUpdateRemoteConfigurationFromServerWithCompletionHandler:()SSBPrivate;
- (uint64_t)_getDatabaseStatusWithCompletionHandler:()SSBPrivate;
- (uint64_t)_getLastDatabaseUpdateTimeWithCompletionHandler:()SSBPrivate;
- (uint64_t)_getSafeBrowsingEnabledState:()SSBPrivate;
- (uint64_t)_getServiceStatusWithCompletionHandler:()SSBPrivate;
- (void)_deleteAllDatabasesWithCompletionHandler:()SSBPrivate;
- (void)_fetchCellularDataPlanWithCompletionHandler:()SSBPrivate;
- (void)_forceDatabaseUpdateWithCompletionHandler:()SSBPrivate;
- (void)_forceDeviceIdentificationTokenUpdateWithCompletionHandler:()SSBPrivate;
- (void)_forceLoadRemoteConfigurationFromDiskWithCompletionHandler:()SSBPrivate;
- (void)_forceUpdateRemoteConfigurationFromServerWithCompletionHandler:()SSBPrivate;
- (void)_getDatabaseStatusWithCompletionHandler:()SSBPrivate;
- (void)_getLastDatabaseUpdateTimeWithCompletionHandler:()SSBPrivate;
- (void)_getSafeBrowsingEnabledState:()SSBPrivate;
- (void)_getServiceStatusWithCompletionHandler:()SSBPrivate;
@end

@implementation SSBLookupContext(SSBPrivate)

- (void)_forceDatabaseUpdateWithCompletionHandler:()SSBPrivate
{
  v1 = *&self.__val_;
  *&self.__val_ = self.__cat_->__vftable;
  v2 = *(v1 + 8);
  v3 = self.__cat_->__vftable;
  if (self.__cat_->__vftable)
  {
    self.__cat_ = self.__cat_[1].__vftable;
    v4 = nsErrorFromReplyErrorCode(self);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  (*(v2 + 16))(v2);
  if (v3)
  {
  }
}

- (uint64_t)_forceDatabaseUpdateWithCompletionHandler:()SSBPrivate
{
  *a2 = &unk_2838CF4A0;
  result = MEMORY[0x22AA67A70](*(self + 8));
  a2[1] = result;
  return result;
}

- (void)_forceDeviceIdentificationTokenUpdateWithCompletionHandler:()SSBPrivate
{
  v4 = *a2;
  if (*&a3->__val_)
  {
    v5 = nsErrorFromReplyErrorCode(*a3);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(*(self + 8) + 16))();
}

- (uint64_t)_forceDeviceIdentificationTokenUpdateWithCompletionHandler:()SSBPrivate
{
  *a2 = &unk_2838CF4E8;
  result = MEMORY[0x22AA67A70](*(self + 8));
  a2[1] = result;
  return result;
}

- (void)_getDatabaseStatusWithCompletionHandler:()SSBPrivate
{
  v6 = *a2;
  v7 = *(a2 + 2);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  if (*&a3->__val_)
  {
    v4 = *(self + 8);
    v5 = nsErrorFromReplyErrorCode(*a3);
    (*(v4 + 16))(v4, 0, v5);
  }

  else
  {
    v8 = v6;
    v9 = v7;
    v5 = [[_SSBDatabaseStatus alloc] initWithDatabaseStatus:&v8, 0, 0, 0];
    v10 = &v8;
    std::vector<SafeBrowsing::DatabaseStatus::Database>::__destroy_vector::operator()[abi:sn200100](&v10);
    (*(*(self + 8) + 16))();
  }

  *&v8 = &v6;
  std::vector<SafeBrowsing::DatabaseStatus::Database>::__destroy_vector::operator()[abi:sn200100](&v8);
}

- (uint64_t)_getDatabaseStatusWithCompletionHandler:()SSBPrivate
{
  *a2 = &unk_2838CF530;
  result = MEMORY[0x22AA67A70](*(self + 8));
  a2[1] = result;
  return result;
}

- (void)_getServiceStatusWithCompletionHandler:()SSBPrivate
{
  *v6 = *a2;
  v7 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v11 = *(a2 + 56);
  v12 = *(a2 + 72);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *v13 = *(a2 + 80);
  v14 = *(a2 + 96);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  if (*&a3->__val_)
  {
    v4 = *(self + 8);
    v5 = nsErrorFromReplyErrorCode(*a3);
    (*(v4 + 16))(v4, 0, v5);
  }

  else
  {
    *v15 = *v6;
    v16 = v7;
    HIBYTE(v7) = 0;
    v6[0] = 0;
    v17 = v8;
    v18 = v9;
    v19 = v10;
    v10 = 0;
    v9 = 0uLL;
    v20 = v11;
    v21 = v12;
    v11 = 0uLL;
    v12 = 0;
    *__p = *v13;
    v23 = v14;
    v13[0] = 0;
    v13[1] = 0;
    v14 = 0;
    v5 = [[_SSBServiceStatus alloc] initWithServiceStatus:v15];
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v24 = &v20;
    std::vector<SafeBrowsing::ServiceStatus::Connection>::__destroy_vector::operator()[abi:sn200100](&v24);
    v24 = &v18;
    std::vector<std::string>::__destroy_vector::operator()[abi:sn200100](&v24);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(v15[0]);
    }

    (*(*(self + 8) + 16))();
  }

  if (v13[0])
  {
    v13[1] = v13[0];
    operator delete(v13[0]);
  }

  v15[0] = &v11;
  std::vector<SafeBrowsing::ServiceStatus::Connection>::__destroy_vector::operator()[abi:sn200100](v15);
  v15[0] = &v9;
  std::vector<std::string>::__destroy_vector::operator()[abi:sn200100](v15);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(v6[0]);
  }
}

- (uint64_t)_getServiceStatusWithCompletionHandler:()SSBPrivate
{
  *a2 = &unk_2838CF578;
  result = MEMORY[0x22AA67A70](*(self + 8));
  a2[1] = result;
  return result;
}

- (void)_forceLoadRemoteConfigurationFromDiskWithCompletionHandler:()SSBPrivate
{
  v4 = *a2;
  if (*&a3->__val_)
  {
    v5 = nsErrorFromReplyErrorCode(*a3);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(*(self + 8) + 16))();
}

- (uint64_t)_forceLoadRemoteConfigurationFromDiskWithCompletionHandler:()SSBPrivate
{
  *a2 = &unk_2838CF5C0;
  result = MEMORY[0x22AA67A70](*(self + 8));
  a2[1] = result;
  return result;
}

- (void)_forceUpdateRemoteConfigurationFromServerWithCompletionHandler:()SSBPrivate
{
  v4 = *a2;
  if (*&a3->__val_)
  {
    v5 = nsErrorFromReplyErrorCode(*a3);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(*(self + 8) + 16))();
}

- (uint64_t)_forceUpdateRemoteConfigurationFromServerWithCompletionHandler:()SSBPrivate
{
  *a2 = &unk_2838CF608;
  result = MEMORY[0x22AA67A70](*(self + 8));
  a2[1] = result;
  return result;
}

- (void)_deleteAllDatabasesWithCompletionHandler:()SSBPrivate
{
  v4 = *a2;
  if (*&a3->__val_)
  {
    v5 = nsErrorFromReplyErrorCode(*a3);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(*(self + 8) + 16))();
}

- (uint64_t)_deleteAllDatabasesWithCompletionHandler:()SSBPrivate
{
  *a2 = &unk_2838CF650;
  result = MEMORY[0x22AA67A70](*(self + 8));
  a2[1] = result;
  return result;
}

- (void)_fetchCellularDataPlanWithCompletionHandler:()SSBPrivate
{
  v4 = *a2;
  if (*&a3->__val_)
  {
    v5 = nsErrorFromReplyErrorCode(*a3);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v4)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:v4];
  }

  (*(*(self + 8) + 16))();
}

- (uint64_t)_fetchCellularDataPlanWithCompletionHandler:()SSBPrivate
{
  *a2 = &unk_2838CF698;
  result = MEMORY[0x22AA67A70](*(self + 8));
  a2[1] = result;
  return result;
}

- (void)_getLastDatabaseUpdateTimeWithCompletionHandler:()SSBPrivate
{
  v4 = *a2;
  if (*&a3->__val_)
  {
    v5 = nsErrorFromReplyErrorCode(*a3);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v4)
  {
    v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:(v4 / 1000000)];
  }

  (*(*(self + 8) + 16))();
}

- (uint64_t)_getLastDatabaseUpdateTimeWithCompletionHandler:()SSBPrivate
{
  *a2 = &unk_2838CF6E0;
  result = MEMORY[0x22AA67A70](*(self + 8));
  a2[1] = result;
  return result;
}

- (void)_getSafeBrowsingEnabledState:()SSBPrivate
{
  v4 = *a2;
  if (*&a3->__val_)
  {
    v5 = nsErrorFromReplyErrorCode(*a3);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(*(self + 8) + 16))();
}

- (uint64_t)_getSafeBrowsingEnabledState:()SSBPrivate
{
  *a2 = &unk_2838CF728;
  result = MEMORY[0x22AA67A70](*(self + 8));
  a2[1] = result;
  return result;
}

@end