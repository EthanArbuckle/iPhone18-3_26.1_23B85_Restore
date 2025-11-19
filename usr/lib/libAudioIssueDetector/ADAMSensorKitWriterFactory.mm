@interface ADAMSensorKitWriterFactory
+ (BOOL)IsMonitoringSiri;
+ (BOOL)IsMonitoringTelephony;
+ (id)GetSensorKitWriterWithIdentifier:(id)a3;
@end

@implementation ADAMSensorKitWriterFactory

+ (BOOL)IsMonitoringSiri
{
  if (!objc_opt_class())
  {
    return 0;
  }

  v2 = [ADAMSensorKitWriterFactory GetSensorKitWriterWithIdentifier:*MEMORY[0x29EDBBD18]];
  v3 = [ADAMSensorKitWriterFactory GetSensorKitWriterWithIdentifier:*MEMORY[0x29EDBBD10]];
  v4 = [ADAMSensorKitWriterFactory GetSensorKitWriterWithIdentifier:*MEMORY[0x29EDBBD08]];
  if ([v2 isMonitoring] & 1) != 0 || (objc_msgSend(v3, "isMonitoring"))
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isMonitoring];
  }

  return v5;
}

+ (BOOL)IsMonitoringTelephony
{
  if (!objc_opt_class())
  {
    return 0;
  }

  v2 = [ADAMSensorKitWriterFactory GetSensorKitWriterWithIdentifier:*MEMORY[0x29EDBBD30]];
  v3 = [ADAMSensorKitWriterFactory GetSensorKitWriterWithIdentifier:*MEMORY[0x29EDBBD28]];
  v4 = [ADAMSensorKitWriterFactory GetSensorKitWriterWithIdentifier:*MEMORY[0x29EDBBD20]];
  if ([v2 isMonitoring] & 1) != 0 || (objc_msgSend(v3, "isMonitoring"))
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isMonitoring];
  }

  return v5;
}

+ (id)GetSensorKitWriterWithIdentifier:(id)a3
{
  v24 = *MEMORY[0x29EDCA608];
  v3 = a3;
  if (!objc_opt_class())
  {
    goto LABEL_12;
  }

  if (+[ADAMSensorKitWriterFactory GetSensorKitWriterWithIdentifier:]::once != -1)
  {
    dispatch_once(&+[ADAMSensorKitWriterFactory GetSensorKitWriterWithIdentifier:]::once, &__block_literal_global_435);
  }

  if (!+[ADAMSensorKitWriterFactory GetSensorKitWriterWithIdentifier:]::dict)
  {
LABEL_12:
    v4 = 0;
    goto LABEL_18;
  }

  v4 = [+[ADAMSensorKitWriterFactory GetSensorKitWriterWithIdentifier:]::dict objectForKey:v3];

  if (!v4)
  {
    goto LABEL_18;
  }

  v5 = [+[ADAMSensorKitWriterFactory GetSensorKitWriterWithIdentifier:]::dict objectForKey:v3];
  v6 = [MEMORY[0x29EDB8E28] null];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    v8 = +[ADAMSensorKitWriterFactory GetSensorKitWriterWithIdentifier:]::dict;
    v9 = [objc_alloc(MEMORY[0x29EDBBCF0]) initWithIdentifier:v3];
    [v8 setObject:v9 forKey:v3];

    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      v10 = *ADAM::ADAMLogScope(void)::scope;
      if (!v10)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v10 = MEMORY[0x29EDCA988];
      v11 = MEMORY[0x29EDCA988];
    }

    v12 = v10;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [+[ADAMSensorKitWriterFactory GetSensorKitWriterWithIdentifier:]::dict objectForKey:v3];
      v16 = 136315906;
      v17 = "ADAMSensorKitWriterFactory.mm";
      v18 = 1024;
      v19 = 60;
      v20 = 2112;
      v21 = v13;
      v22 = 2112;
      v23 = v3;
      _os_log_impl(&dword_296C34000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Created SRSensorWriter: [%@] for identifier: [%@]", &v16, 0x26u);
    }
  }

LABEL_17:
  v4 = [+[ADAMSensorKitWriterFactory GetSensorKitWriterWithIdentifier:]::dict objectForKey:v3];
LABEL_18:

  v14 = *MEMORY[0x29EDCA608];

  return v4;
}

void __63__ADAMSensorKitWriterFactory_GetSensorKitWriterWithIdentifier___block_invoke()
{
  v0 = MEMORY[0x29EDB8E00];
  v8 = [MEMORY[0x29EDB8E28] null];
  v1 = [MEMORY[0x29EDB8E28] null];
  v2 = [MEMORY[0x29EDB8E28] null];
  v3 = [MEMORY[0x29EDB8E28] null];
  v4 = [MEMORY[0x29EDB8E28] null];
  v5 = [MEMORY[0x29EDB8E28] null];
  v6 = [v0 dictionaryWithObjectsAndKeys:{v8, *MEMORY[0x29EDBBD30], v1, *MEMORY[0x29EDBBD28], v2, *MEMORY[0x29EDBBD20], v3, *MEMORY[0x29EDBBD18], v4, *MEMORY[0x29EDBBD10], v5, *MEMORY[0x29EDBBD08], 0}];
  v7 = +[ADAMSensorKitWriterFactory GetSensorKitWriterWithIdentifier:]::dict;
  +[ADAMSensorKitWriterFactory GetSensorKitWriterWithIdentifier:]::dict = v6;
}

@end