@interface TRMessageDecoder
+ (id)decodeMessage:(id)a3 error:(id *)a4;
@end

@implementation TRMessageDecoder

+ (id)decodeMessage:(id)a3 error:(id *)a4
{
  v31[2] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCAAC8];
  v6 = a3;
  v7 = [[v5 alloc] initForReadingFromData:v6 error:0];

  v8 = [v7 decodeTopLevelObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCA308] error:0];
  [v7 finishDecoding];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    if (a4)
    {
      v10 = *MEMORY[0x277CCA450];
      v31[0] = @"Message decoding failed.";
      v11 = *MEMORY[0x277CCA470];
      v30[0] = v10;
      v30[1] = v11;
      v12 = MEMORY[0x277CCACA8];
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = [v12 stringWithFormat:@"Decoded class is not a subclass of %@: %@.", v14, v16];
      v31[1] = v17;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];

      *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-9200 userInfo:v18];
    }

    else if (_TRLogEnabled == 1)
    {
      v19 = TRLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        *buf = 136315650;
        v25 = "+[TRMessageDecoder decodeMessage:error:]";
        v26 = 2112;
        v27 = v21;
        v28 = 2112;
        v29 = v8;
        _os_log_impl(&dword_26F2A2000, v19, OS_LOG_TYPE_DEFAULT, "%s Decoded something other than a subclass of %@: %@", buf, 0x20u);
      }
    }

    v9 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v9;
}

@end