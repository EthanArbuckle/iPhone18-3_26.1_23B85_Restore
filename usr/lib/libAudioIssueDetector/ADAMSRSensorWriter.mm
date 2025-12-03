@interface ADAMSRSensorWriter
- (ADAMSRSensorWriter)initWithSensorType:(int)type bundleIdentifier:(id)identifier;
- (BOOL)isMonitoring;
- (BOOL)provideSample:(id)sample continuousTimestamp:(unint64_t)timestamp error:(id *)error;
- (BOOL)provideSample:(id)sample error:(id *)error;
@end

@implementation ADAMSRSensorWriter

- (BOOL)isMonitoring
{
  writer = self->_writer;
  if (writer)
  {
    LOBYTE(writer) = [(SRSensorWriter *)writer isMonitoring];
  }

  return writer;
}

- (BOOL)provideSample:(id)sample continuousTimestamp:(unint64_t)timestamp error:(id *)error
{
  sampleCopy = sample;
  writer = self->_writer;
  if (writer)
  {
    v10 = [(SRSensorWriter *)writer provideSample:sampleCopy continuousTimestamp:timestamp error:error];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)provideSample:(id)sample error:(id *)error
{
  sampleCopy = sample;
  writer = self->_writer;
  if (writer)
  {
    v8 = [(SRSensorWriter *)writer provideSample:sampleCopy error:error];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (ADAMSRSensorWriter)initWithSensorType:(int)type bundleIdentifier:(id)identifier
{
  v31 = *MEMORY[0x29EDCA608];
  identifierCopy = identifier;
  v22.receiver = self;
  v22.super_class = ADAMSRSensorWriter;
  v8 = [(ADAMSRSensorWriter *)&v22 init];
  if (!v8)
  {
    goto LABEL_21;
  }

  if (type <= 5)
  {
    v4 = **(&unk_29EE526D0 + type);
  }

  v9 = [ADAMSensorKitWriterFactory GetSensorKitWriterWithIdentifier:v4];
  writer = v8->_writer;
  v8->_writer = v9;

  v11 = v8->_writer;
  v12 = v4;
  if (!v11)
  {
    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      v13 = *ADAM::ADAMLogScope(void)::scope;
      if (!v13)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v13 = MEMORY[0x29EDCA988];
      v14 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v24 = "ADAMSensorKitWriterFactory.mm";
      v25 = 1024;
      v26 = 22;
      v27 = 2112;
      *v28 = v12;
      _os_log_impl(&dword_296C34000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d failed to create SRWriter for %@", buf, 0x1Cu);
    }
  }

LABEL_14:

  if (type > 2)
  {
    v16 = v8->_writer;
    if (v16)
    {
      v19[0] = MEMORY[0x29EDCA5F8];
      v19[1] = 3221225472;
      v19[2] = __58__ADAMSRSensorWriter_initWithSensorType_bundleIdentifier___block_invoke;
      v19[3] = &unk_29EE526B0;
      v20 = v8;
      v21 = identifierCopy;
      [(SRSensorWriter *)v16 bundleEligibility:v21 completion:v19];
    }
  }

  else
  {
    v8->_isBundleIdentifierEligible = 1;
    {
      ADAM::get_log(void)::adam_os_log = os_log_create("com.apple.coreaudio", "adam");
    }

    v15 = ADAM::get_log(void)::adam_os_log;
    if (os_log_type_enabled(ADAM::get_log(void)::adam_os_log, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316162;
      v24 = "ADAMSRSensorWriter.mm";
      v25 = 1024;
      v26 = 64;
      v27 = 1040;
      *v28 = 18;
      *&v28[4] = 2080;
      *&v28[6] = "ADAMSRSensorWriter]";
      v29 = 2048;
      v30 = v8;
      _os_log_impl(&dword_296C34000, v15, OS_LOG_TYPE_DEBUG, "[%s:%-5d %.*s:%p] No bundle identifier check for Siri use case", buf, 0x2Cu);
    }
  }

LABEL_21:
  v17 = *MEMORY[0x29EDCA608];
  return v8;
}

void __58__ADAMSRSensorWriter_initWithSensorType_bundleIdentifier___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v30 = *MEMORY[0x29EDCA608];
  v5 = a3;
  v6 = v5;
  v7 = *(a1 + 32);
  if (a2 != 1 || v5)
  {
    *(v7 + 18) = 0;
    if (!a2)
    {
      {
        ADAM::get_log(void)::adam_os_log = os_log_create("com.apple.coreaudio", "adam");
      }

      v11 = ADAM::get_log(void)::adam_os_log;
      if (os_log_type_enabled(ADAM::get_log(void)::adam_os_log, OS_LOG_TYPE_INFO))
      {
        v12 = *(a1 + 32);
        v13 = *(a1 + 40);
        v18 = 136316418;
        v19 = "ADAMSRSensorWriter.mm";
        v20 = 1024;
        v21 = 81;
        v22 = 1040;
        v23 = 18;
        v24 = 2080;
        v25 = "ADAMSRSensorWriter]";
        v26 = 2048;
        v27 = v12;
        v28 = 2112;
        v29 = v13;
        _os_log_impl(&dword_296C34000, v11, OS_LOG_TYPE_INFO, "[%s:%-5d %.*s:%p] Bundle identifier %@ is not eligible", &v18, 0x36u);
      }
    }

    if (v6)
    {
      {
        ADAM::get_log(void)::adam_os_log = os_log_create("com.apple.coreaudio", "adam");
      }

      v14 = ADAM::get_log(void)::adam_os_log;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = *(a1 + 32);
        v16 = [v6 debugDescription];
        v18 = 136316418;
        v19 = "ADAMSRSensorWriter.mm";
        v20 = 1024;
        v21 = 86;
        v22 = 1040;
        v23 = 18;
        v24 = 2080;
        v25 = "ADAMSRSensorWriter]";
        v26 = 2048;
        v27 = v15;
        v28 = 2112;
        v29 = v16;
        _os_log_impl(&dword_296C34000, v14, OS_LOG_TYPE_INFO, "[%s:%-5d %.*s:%p] Error getting bundle identifier eligibility from SensorKit: %@", &v18, 0x36u);
      }
    }
  }

  else
  {
    *(v7 + 18) = 1;
    {
      ADAM::get_log(void)::adam_os_log = os_log_create("com.apple.coreaudio", "adam");
    }

    v8 = ADAM::get_log(void)::adam_os_log;
    if (os_log_type_enabled(ADAM::get_log(void)::adam_os_log, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v18 = 136316418;
      v19 = "ADAMSRSensorWriter.mm";
      v20 = 1024;
      v21 = 74;
      v22 = 1040;
      v23 = 18;
      v24 = 2080;
      v25 = "ADAMSRSensorWriter]";
      v26 = 2048;
      v27 = v9;
      v28 = 2112;
      v29 = v10;
      _os_log_impl(&dword_296C34000, v8, OS_LOG_TYPE_DEBUG, "[%s:%-5d %.*s:%p] Bundle identifier %@ is eligible", &v18, 0x36u);
    }
  }

  v17 = *MEMORY[0x29EDCA608];
}

@end