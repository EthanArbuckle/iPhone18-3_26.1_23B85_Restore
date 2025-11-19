@interface CRComputeDeviceUtilities
+ (id)allComputeDevices;
+ (id)computeDevices:(id)a3 ofTypes:(unint64_t)a4;
+ (int64_t)mlComputeUnitFromComputeDeviceType:(unint64_t)a3;
+ (unint64_t)computeDeviceTypeForOptions:(id)a3 mtlDevice:(id *)a4;
@end

@implementation CRComputeDeviceUtilities

+ (id)allComputeDevices
{
  if (qword_1ED9601F0 != -1)
  {
    dispatch_once(&qword_1ED9601F0, &__block_literal_global_24);
  }

  v3 = _MergedGlobals_29;

  return v3;
}

void __45__CRComputeDeviceUtilities_allComputeDevices__block_invoke()
{
  v0 = MLAllComputeDevices();
  v1 = _MergedGlobals_29;
  _MergedGlobals_29 = v0;
}

+ (id)computeDevices:(id)a3 ofTypes:(unint64_t)a4
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__CRComputeDeviceUtilities_computeDevices_ofTypes___block_invoke;
  v8[3] = &__block_descriptor_40_e42_B32__0___MLComputeDeviceProtocol__8Q16_B24l;
  v8[4] = a4;
  v4 = a3;
  v5 = [v4 indexesOfObjectsPassingTest:v8];
  v6 = [v4 objectsAtIndexes:v5];

  return v6;
}

+ (unint64_t)computeDeviceTypeForOptions:(id)a3 mtlDevice:(id *)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"CRImageReaderRestrictToCPUKey"];
  v7 = [v6 BOOLValue];

  v8 = [v5 objectForKeyedSubscript:@"CRImageReaderMTLDeviceKey"];

  if (v8)
  {
    v9 = [v5 objectForKeyedSubscript:@"CRImageReaderMTLDeviceKey"];
    v10 = 2;
  }

  else
  {
    v9 = 0;
    v10 = v7;
  }

  v11 = [v5 objectForKeyedSubscript:@"CRImageReaderComputeDeviceKey"];

  if (!v11)
  {
    v14 = v10;
    if (!a4)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  v12 = [v5 objectForKeyedSubscript:@"CRImageReaderComputeDeviceKey"];
  v13 = [v12 _crComputeDeviceType];
  v14 = v13;
  if (v10)
  {
    v15 = v10 == v13;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    v16 = CROSLogForCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      v22 = 134218496;
      v23 = v14;
      v24 = 2048;
      v25 = v10;
      v26 = 2048;
      v27 = v14;
      _os_log_impl(&dword_1B40D2000, v16, OS_LOG_TYPE_FAULT, "Conflicting request configuration. %lu vs. %lu. Selecting %lu", &v22, 0x20u);
    }
  }

  if (v14 == 2)
  {
    v17 = [v12 metalDevice];
    v18 = v17;
    if (v9 && v17 != v9)
    {
      v19 = CROSLogForCategory(0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        v22 = 138412802;
        v23 = v9;
        v24 = 2112;
        v25 = v18;
        v26 = 2112;
        v27 = v18;
        _os_log_impl(&dword_1B40D2000, v19, OS_LOG_TYPE_FAULT, "Conflicting requested configuration. Metal device passed (%@) does not match computeDevice's device (%@). Using %@", &v22, 0x20u);
      }
    }

    v9 = v18;
  }

  if (a4)
  {
LABEL_22:
    if (v9)
    {
      v20 = v9;
      *a4 = v9;
    }
  }

LABEL_24:

  return v14;
}

+ (int64_t)mlComputeUnitFromComputeDeviceType:(unint64_t)a3
{
  if (a3 - 1 >= 4)
  {
    return 2;
  }

  else
  {
    return a3 - 1;
  }
}

@end