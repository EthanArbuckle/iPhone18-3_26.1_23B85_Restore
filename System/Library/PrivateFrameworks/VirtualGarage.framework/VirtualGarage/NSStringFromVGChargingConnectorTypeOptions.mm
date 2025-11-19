@interface NSStringFromVGChargingConnectorTypeOptions
@end

@implementation NSStringFromVGChargingConnectorTypeOptions

__CFString *__NSStringFromVGChargingConnectorTypeOptions_block_invoke(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a2 <= 15)
  {
    if (a2 > 3)
    {
      if (a2 == 4)
      {
        result = @"CCS2";
        goto LABEL_31;
      }

      if (a2 == 8)
      {
        result = @"CHAdeMO";
        goto LABEL_31;
      }
    }

    else
    {
      if (a2 == 1)
      {
        result = @"J1772";
        goto LABEL_31;
      }

      if (a2 == 2)
      {
        result = @"CCS1";
        goto LABEL_31;
      }
    }
  }

  else if (a2 <= 63)
  {
    if (a2 == 16)
    {
      result = @"GBT_AC";
      goto LABEL_31;
    }

    if (a2 == 32)
    {
      result = @"GBT_DC";
      goto LABEL_31;
    }
  }

  else
  {
    switch(a2)
    {
      case 64:
        result = @"Tesla (NACS_DC)";
        goto LABEL_31;
      case 128:
        result = @"Mennekes";
        goto LABEL_31;
      case 256:
        result = @"NACS_AC";
        goto LABEL_31;
    }
  }

  v4 = VGGetAssertLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v10 = 136315650;
    v11 = "NSString * _Nonnull NSStringFromVGChargingConnectorTypeOptions(VGChargingConnectorTypeOptions)_block_invoke";
    v12 = 2080;
    v13 = "VGVehicleState.m";
    v14 = 1024;
    v15 = 88;
    _os_log_impl(&dword_270EC1000, v4, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v10, 0x1Cu);
  }

  if (_vg_isInternalInstall())
  {
    v5 = VGGetAssertLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [MEMORY[0x277CCACC8] callStackSymbols];
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_ERROR, "%@", &v10, 0xCu);
    }
  }

  v7 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    v8 = *(a1 + 32);
    v10 = 134217984;
    v11 = v8;
    _os_log_impl(&dword_270EC1000, v7, OS_LOG_TYPE_FAULT, "Tried to get a string version of a multiple option bitmask: %lu. This is not supported.", &v10, 0xCu);
  }

  result = @"Unknown";
LABEL_31:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

@end