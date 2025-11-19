int main(int argc, const char **argv, const char **envp)
{
  qword_1000085A8 = [objc_allocWithZone(type metadata accessor for ServiceDelegate()) init];
  qword_1000085B0 = [objc_opt_self() serviceListener];
  [qword_1000085B0 setDelegate:qword_1000085A8];
  [qword_1000085B0 resume];
  return 0;
}

id sub_100000FB4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServiceDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100001028()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for iCloudQuotaNetworkingService();
  return objc_msgSendSuper2(&v2, "dealloc");
}