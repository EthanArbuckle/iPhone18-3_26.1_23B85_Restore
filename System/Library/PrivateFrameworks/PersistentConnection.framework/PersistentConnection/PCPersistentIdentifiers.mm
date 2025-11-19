@interface PCPersistentIdentifiers
+ (id)_processNamePrefix;
+ (id)processNamePidAndStringIdentifier:(id)a3;
+ (int)pidFromMatchingIdentifer:(id)a3;
+ (unint64_t)hostUniqueIdentifier;
@end

@implementation PCPersistentIdentifiers

+ (id)_processNamePrefix
{
  if (_processNamePrefix_pred != -1)
  {
    +[PCPersistentIdentifiers _processNamePrefix];
  }

  v3 = _processNamePrefix_prefix;

  return v3;
}

+ (unint64_t)hostUniqueIdentifier
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47__PCPersistentIdentifiers_hostUniqueIdentifier__block_invoke;
  v3[3] = &__block_descriptor_48_e5_v8__0l;
  v3[4] = a2;
  v3[5] = a1;
  if (hostUniqueIdentifier_pred != -1)
  {
    dispatch_once(&hostUniqueIdentifier_pred, v3);
  }

  return hostUniqueIdentifier_hostIdentifier;
}

unsigned __int8 *__47__PCPersistentIdentifiers_hostUniqueIdentifier__block_invoke(uint64_t a1)
{
  data[2] = *MEMORY[0x277D85DE8];
  data[0] = 0;
  data[1] = 0;
  v4 = 16;
  if (sysctlbyname("kern.boottime", data, &v4, 0, 0))
  {
    __47__PCPersistentIdentifiers_hostUniqueIdentifier__block_invoke_cold_1(a1);
  }

  result = CC_SHA1(data, 0x10u, md);
  hostUniqueIdentifier_hostIdentifier = bswap64(*md);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void __45__PCPersistentIdentifiers__processNamePrefix__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [MEMORY[0x277CCAC38] processInfo];
  v1 = [v4 processName];
  v2 = [v0 initWithFormat:@"com.apple.persistentconnection[%@, ", v1];
  v3 = _processNamePrefix_prefix;
  _processNamePrefix_prefix = v2;
}

+ (id)processNamePidAndStringIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    if (([v4 canBeConvertedToEncoding:30] & 1) == 0)
    {
      v6 = [v5 dataUsingEncoding:30 allowLossyConversion:1];
      v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v6 encoding:30];

      v5 = v7;
    }

    if ([v5 length] >= 0x65)
    {
      v8 = [v5 substringToIndex:100];
      v9 = [v8 stringByAppendingString:@"..."];

      v5 = v9;
    }

    v10 = [a1 _processNamePrefix];
    v11 = [v10 stringByAppendingFormat:@"%i, %@]", getpid(), v5];
  }

  else
  {
    v5 = [a1 _processNamePrefix];
    v11 = [v5 stringByAppendingFormat:@"%i]", getpid()];
  }

  return v11;
}

+ (int)pidFromMatchingIdentifer:(id)a3
{
  v4 = a3;
  v5 = [a1 _processNamePrefix];
  v6 = [v4 rangeOfString:v5 options:8];
  v8 = v7;

  v9 = -1;
  if (!v6 && v8)
  {
    v10 = [v4 substringFromIndex:v8];
    v9 = [v10 intValue];
  }

  return v9;
}

void __47__PCPersistentIdentifiers_hostUniqueIdentifier__block_invoke_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = __error();
  [v2 handleFailureInMethod:v4 object:v3 file:@"PCPersistentIdentifiers.m" lineNumber:29 description:{@"sysctlbyname() for kern.boottime failed: %s", strerror(*v5)}];
}

@end