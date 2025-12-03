@interface IOKRegistryEntry(daemon_iokit_get_property_proxy)
- (id)iodProperties;
- (id)iodPropertyForKey:()daemon_iokit_get_property_proxy;
- (void)iodProperties;
@end

@implementation IOKRegistryEntry(daemon_iokit_get_property_proxy)

- (id)iodProperties
{
  if (InitIORegistryPropertyProxy_onceToken != -1)
  {
    [IOKRegistryEntry(daemon_iokit_get_property_proxy) iodProperties];
  }

  if (gIORegistryProxyEnabled == 1)
  {
    v2 = gProxyDaemonServiceClient;
    if (v2)
    {
      properties = [v2 propertiesForRegistryEntryID:{objc_msgSend(self, "entryID")}];
    }

    else
    {
      [(IOKRegistryEntry(daemon_iokit_get_property_proxy) *)&v5 iodProperties];
      properties = v5;
    }
  }

  else
  {
    properties = [self properties];
  }

  return properties;
}

- (id)iodPropertyForKey:()daemon_iokit_get_property_proxy
{
  v4 = a3;
  if (InitIORegistryPropertyProxy_onceToken != -1)
  {
    [IOKRegistryEntry(daemon_iokit_get_property_proxy) iodProperties];
  }

  if (gIORegistryProxyEnabled == 1)
  {
    v5 = gProxyDaemonServiceClient;
    if (v5)
    {
      v6 = [v5 propertyForRegistryEntryID:objc_msgSend(self key:{"entryID"), v4}];
    }

    else
    {
      [IOKRegistryEntry(daemon_iokit_get_property_proxy) iodPropertyForKey:?];
      v6 = v8;
    }
  }

  else
  {
    v6 = [self propertyForKey:v4];
  }

  return v6;
}

- (void)iodProperties
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 136316418;
    OUTLINED_FUNCTION_0();
    v4 = "";
    OUTLINED_FUNCTION_1();
    v5 = 51;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, 0x3Au);
  }

  *self = 0;
  v2 = *MEMORY[0x277D85DE8];
}

- (void)iodPropertyForKey:()daemon_iokit_get_property_proxy .cold.2(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 136316418;
    OUTLINED_FUNCTION_0();
    v4 = "";
    OUTLINED_FUNCTION_1();
    v5 = 72;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, 0x3Au);
  }

  *a1 = 0;
  v2 = *MEMORY[0x277D85DE8];
}

@end