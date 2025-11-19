uint64_t __PSSGLogSharedInstance()
{
  if (__PSSGLogSharedInstance_onceToken != -1)
  {
    __PSSGLogSharedInstance_cold_1();
  }

  return __PSSGLogSharedInstance_sharedInstance;
}

uint64_t __PSSysHealthLogSharedInstance()
{
  if (__PSSysHealthLogSharedInstance_onceToken != -1)
  {
    __PSSysHealthLogSharedInstance_cold_1();
  }

  return sharedInstance;
}