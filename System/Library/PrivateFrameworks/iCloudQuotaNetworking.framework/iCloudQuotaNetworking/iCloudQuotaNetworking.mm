id iCloudQuotaNetworkingService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id iCloudQuotaNetworkingService.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for iCloudQuotaNetworkingService();
  return objc_msgSendSuper2(&v2, sel_init);
}

id iCloudQuotaNetworkingService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for iCloudQuotaNetworkingService();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}