void _PRHandleSelfCacheDidChange(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = [v2 hasVendedData];
    v5 = _PRGetLogSystem();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v6)
      {
        v8 = 136315394;
        v9 = "_PRHandleSelfCacheDidChange";
        v10 = 1024;
        v11 = 930;
        _os_log_impl(&dword_25E428000, v5, OS_LOG_TYPE_DEFAULT, "%s (%d) Rebroadcasting PRSelfLikenessesDidChangeNotification", &v8, 0x12u);
      }

      v5 = [MEMORY[0x277CCAB98] defaultCenter];
      [v5 postNotificationName:@"PRSelfLikenessesDidChangeNotification" object:v3];
    }

    else if (v6)
    {
      v8 = 136315650;
      v9 = "_PRHandleSelfCacheDidChange";
      v10 = 1024;
      v11 = 926;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_25E428000, v5, OS_LOG_TYPE_DEFAULT, "%s (%d) Store %@ has never vended data. Not broadcasting local change notifications.", &v8, 0x1Cu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void _PRHandleOtherCacheDidChange(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = [v2 hasVendedData];
    v5 = _PRGetLogSystem();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v6)
      {
        v8 = 136315394;
        v9 = "_PRHandleOtherCacheDidChange";
        v10 = 1024;
        v11 = 947;
        _os_log_impl(&dword_25E428000, v5, OS_LOG_TYPE_DEFAULT, "%s (%d) Rebroadcasting PROtherLikenessesDidChangeNotification", &v8, 0x12u);
      }

      v5 = [MEMORY[0x277CCAB98] defaultCenter];
      [v5 postNotificationName:@"PROtherLikenessesDidChangeNotification" object:v3];
    }

    else if (v6)
    {
      v8 = 136315650;
      v9 = "_PRHandleOtherCacheDidChange";
      v10 = 1024;
      v11 = 943;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_25E428000, v5, OS_LOG_TYPE_DEFAULT, "%s (%d) Store %@ has never vended data. Not broadcasting local change notifications.", &v8, 0x1Cu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

id _PRGetLogSystem()
{
  if (_PRGetLogSystem_onceToken != -1)
  {
    _PRGetLogSystem_cold_1();
  }

  v1 = _PRGetLogSystem_log;

  return v1;
}