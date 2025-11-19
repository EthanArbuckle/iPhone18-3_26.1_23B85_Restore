@interface SEEndPointConfiguration
+ (id)configurationWithOpt1:(unsigned __int8)a3 opt2:(unsigned __int8)a4;
+ (id)homeDefaults;
+ (id)hydraDefaults;
+ (id)lyonHomeDefaults;
+ (id)lyonHydraDefaults;
- (SEEndPointConfiguration)init;
- (SEEndPointConfiguration)initWithCoder:(id)a3;
- (id)description;
- (unsigned)opt1;
- (unsigned)opt2;
- (unsigned)optA;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SEEndPointConfiguration

- (SEEndPointConfiguration)init
{
  v6.receiver = self;
  v6.super_class = SEEndPointConfiguration;
  v2 = [(SEEndPointConfiguration *)&v6 init];
  if (v2)
  {
    v3 = SESDefaultLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v5 = 0;
      _os_log_impl(&dword_1C7B9A000, v3, OS_LOG_TYPE_DEBUG, "Init SEEndPointConfiguration with default values", v5, 2u);
    }

    [(SEEndPointConfiguration *)v2 setEnabledOnWire:1];
    [(SEEndPointConfiguration *)v2 setEnabledOnContactless:1];
    [(SEEndPointConfiguration *)v2 setStandardFlowAllowedOnWire:0];
    [(SEEndPointConfiguration *)v2 setStandardFlowAllowedOnContactless:1];
    [(SEEndPointConfiguration *)v2 setFastFlowAllowedOnWire:0];
    [(SEEndPointConfiguration *)v2 setFastFlowAllowedOnContactless:0];
    [(SEEndPointConfiguration *)v2 setExchangeAllowedOnWire:1];
    [(SEEndPointConfiguration *)v2 setExchangeAllowedInFastFlow:0];
    [(SEEndPointConfiguration *)v2 setAuthorizeEndPointAllowed:0];
    [(SEEndPointConfiguration *)v2 setAuthorizeEndPointWithAuthorizeAllowed:0];
    [(SEEndPointConfiguration *)v2 setSignAllowed:0];
    [(SEEndPointConfiguration *)v2 setExportEraseConfidentialMailBox:0];
    [(SEEndPointConfiguration *)v2 setCompressedKeysAllowed:0];
    [(SEEndPointConfiguration *)v2 setConfidentialDataAllowed:0];
    [(SEEndPointConfiguration *)v2 setServerIssuedKey:0];
    [(SEEndPointConfiguration *)v2 setFleetVehicle:0];
    [(SEEndPointConfiguration *)v2 setNfcExpressOnlyInLPM:0];
    [(SEEndPointConfiguration *)v2 setTerminationNotPersisted:0];
    [(SEEndPointConfiguration *)v2 setLengthConfidentialMailBox:0];
    [(SEEndPointConfiguration *)v2 setOffsetConfidentialMailBox:0];
    [(SEEndPointConfiguration *)v2 setLengthPrivateMailBox:0];
    [(SEEndPointConfiguration *)v2 setOffsetPrivateMailBox:0];
    [(SEEndPointConfiguration *)v2 setAuth1SignallingBitmap:0];
  }

  return v2;
}

+ (id)configurationWithOpt1:(unsigned __int8)a3 opt2:(unsigned __int8)a4
{
  v4 = a4;
  v17 = *MEMORY[0x1E69E9840];
  if ((a4 & 0x30) != 0)
  {
    v5 = SESDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v13 = 67109120;
      v14 = v4;
      _os_log_impl(&dword_1C7B9A000, v5, OS_LOG_TYPE_ERROR, "Option group 2 value has some RFU bits set 0x%02X", &v13, 8u);
    }

    v6 = 0;
LABEL_5:

    goto LABEL_6;
  }

  v9 = a3;
  v6 = objc_opt_new();
  if (v6)
  {
    v10 = SESDefaultLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v13 = 67109376;
      v14 = v9;
      v15 = 1024;
      v16 = v4;
      _os_log_impl(&dword_1C7B9A000, v10, OS_LOG_TYPE_DEBUG, "Creating SEEndPointConfiguration with Opt1 %02X and Opt2 %02X", &v13, 0xEu);
    }

    [v6 setStandardFlowAllowedOnContactless:v9 & 1];
    [v6 setFastFlowAllowedOnContactless:(v9 >> 1) & 1];
    [v6 setStandardFlowAllowedOnWire:(v9 >> 2) & 1];
    [v6 setFastFlowAllowedOnWire:(v9 >> 3) & 1];
    [v6 setAuthorizeEndPointAllowed:(v9 >> 4) & 1];
    [v6 setAuthorizeEndPointWithAuthorizeAllowed:(v9 >> 5) & 1];
    [v6 setExchangeAllowedOnWire:(v9 >> 6) & 1];
    [v6 setExchangeAllowedInFastFlow:v9 >> 7];
    [v6 setSignAllowed:v4 & 1];
    [v6 setExportEraseConfidentialMailBox:(v4 >> 1) & 1];
    [v6 setServerIssuedKey:(v4 >> 2) & 1];
    [v6 setFleetVehicle:(v4 >> 3) & 1];
    [v6 setCompressedKeysAllowed:(v4 >> 6) & 1];
    [v6 setConfidentialDataAllowed:v4 >> 7];
    v5 = SESDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v11 = [v6 opt1];
      v12 = [v6 opt2];
      v13 = 67109376;
      v14 = v11;
      v15 = 1024;
      v16 = v12;
      _os_log_impl(&dword_1C7B9A000, v5, OS_LOG_TYPE_INFO, "SEEndPointConfiguration created with Opt1 %02X and Opt2 %02X", &v13, 0xEu);
    }

    goto LABEL_5;
  }

LABEL_6:
  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)homeDefaults
{
  v2 = objc_opt_new();
  [v2 setEnabledOnWire:1];
  [v2 setEnabledOnContactless:1];
  [v2 setStandardFlowAllowedOnWire:1];
  [v2 setStandardFlowAllowedOnContactless:1];
  [v2 setFastFlowAllowedOnWire:1];
  [v2 setFastFlowAllowedOnContactless:1];
  [v2 setExchangeAllowedOnWire:1];
  [v2 setExchangeAllowedInFastFlow:1];
  [v2 setAuthorizeEndPointAllowed:0];
  [v2 setAuthorizeEndPointWithAuthorizeAllowed:0];
  [v2 setSignAllowed:1];
  [v2 setExportEraseConfidentialMailBox:0];
  [v2 setConfidentialDataAllowed:1];

  return v2;
}

+ (id)lyonHomeDefaults
{
  v2 = objc_opt_new();
  [v2 setNfcExpressOnlyInLPM:0];
  [v2 setTerminationNotPersisted:1];
  [v2 setAuth1SignallingBitmap:4];

  return v2;
}

+ (id)lyonHydraDefaults
{
  v2 = objc_opt_new();
  [v2 setNfcExpressOnlyInLPM:0];
  [v2 setTerminationNotPersisted:0];
  [v2 setAuth1SignallingBitmap:4];

  return v2;
}

+ (id)hydraDefaults
{
  v2 = objc_opt_new();
  [v2 setEnabledOnWire:1];
  [v2 setEnabledOnContactless:1];
  [v2 setStandardFlowAllowedOnWire:1];
  [v2 setStandardFlowAllowedOnContactless:1];
  [v2 setFastFlowAllowedOnWire:1];
  [v2 setFastFlowAllowedOnContactless:1];
  [v2 setExchangeAllowedOnWire:1];
  [v2 setExchangeAllowedInFastFlow:1];
  [v2 setAuthorizeEndPointAllowed:0];
  [v2 setAuthorizeEndPointWithAuthorizeAllowed:0];
  [v2 setSignAllowed:1];
  [v2 setExportEraseConfidentialMailBox:0];
  [v2 setConfidentialDataAllowed:1];

  return v2;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{\n"];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\t\tenabledOnWire : %d\n", -[SEEndPointConfiguration enabledOnWire](self, "enabledOnWire")];
  v5 = [v3 stringByAppendingString:v4];

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\t\tenabledOnContactless : %d\n", -[SEEndPointConfiguration enabledOnContactless](self, "enabledOnContactless")];
  v7 = [v5 stringByAppendingString:v6];

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\t\tstandardFlowAllowedOnWire : %d\n", -[SEEndPointConfiguration standardFlowAllowedOnWire](self, "standardFlowAllowedOnWire")];
  v9 = [v7 stringByAppendingString:v8];

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\t\tstandardFlowAllowedOnContactless : %d\n", -[SEEndPointConfiguration standardFlowAllowedOnContactless](self, "standardFlowAllowedOnContactless")];
  v11 = [v9 stringByAppendingString:v10];

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\t\tfastFlowAllowedOnWire : %d\n", -[SEEndPointConfiguration fastFlowAllowedOnWire](self, "fastFlowAllowedOnWire")];
  v13 = [v11 stringByAppendingString:v12];

  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\t\tfastFlowAllowedOnContactless : %d\n", -[SEEndPointConfiguration fastFlowAllowedOnContactless](self, "fastFlowAllowedOnContactless")];
  v15 = [v13 stringByAppendingString:v14];

  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\t\texchangeAllowedOnWire : %d\n", -[SEEndPointConfiguration exchangeAllowedOnWire](self, "exchangeAllowedOnWire")];
  v17 = [v15 stringByAppendingString:v16];

  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\t\texchangeAllowedInFastFlow : %d\n", -[SEEndPointConfiguration exchangeAllowedInFastFlow](self, "exchangeAllowedInFastFlow")];
  v19 = [v17 stringByAppendingString:v18];

  v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\t\tauthorizeEndPointAllowed : %d\n", -[SEEndPointConfiguration authorizeEndPointAllowed](self, "authorizeEndPointAllowed")];
  v21 = [v19 stringByAppendingString:v20];

  v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\t\tauthorizeEndPointWithAuthorizeAllowed : %d\n", -[SEEndPointConfiguration authorizeEndPointWithAuthorizeAllowed](self, "authorizeEndPointWithAuthorizeAllowed")];
  v23 = [v21 stringByAppendingString:v22];

  v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\t\tsignAllowed : %d\n", -[SEEndPointConfiguration signAllowed](self, "signAllowed")];
  v25 = [v23 stringByAppendingString:v24];

  v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\t\texportEraseConfidentialMailBox : %d\n", -[SEEndPointConfiguration exportEraseConfidentialMailBox](self, "exportEraseConfidentialMailBox")];
  v27 = [v25 stringByAppendingString:v26];

  v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\t\tcompressedKeysAllowed : %d\n", -[SEEndPointConfiguration compressedKeysAllowed](self, "compressedKeysAllowed")];
  v29 = [v27 stringByAppendingString:v28];

  v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\t\tconfidentialDataAllowed : %d\n", -[SEEndPointConfiguration confidentialDataAllowed](self, "confidentialDataAllowed")];
  v31 = [v29 stringByAppendingString:v30];

  v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\t\tserverIssuedKey : %d\n", -[SEEndPointConfiguration serverIssuedKey](self, "serverIssuedKey")];
  v33 = [v31 stringByAppendingString:v32];

  v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\t\tfleetVehicle : %d\n", -[SEEndPointConfiguration fleetVehicle](self, "fleetVehicle")];
  v35 = [v33 stringByAppendingString:v34];

  v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\t\tnfcExpressOnlyInLPM : %d\n", -[SEEndPointConfiguration nfcExpressOnlyInLPM](self, "nfcExpressOnlyInLPM")];
  v37 = [v35 stringByAppendingString:v36];

  v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\t\tterminationNotPersisted : %d\n", -[SEEndPointConfiguration terminationNotPersisted](self, "terminationNotPersisted")];
  v39 = [v37 stringByAppendingString:v38];

  v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\t\tlengthConfidentialMailBox : %d\n", -[SEEndPointConfiguration lengthConfidentialMailBox](self, "lengthConfidentialMailBox")];
  v41 = [v39 stringByAppendingString:v40];

  v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\t\toffsetConfidentialMailBox : %d\n", -[SEEndPointConfiguration offsetConfidentialMailBox](self, "offsetConfidentialMailBox")];
  v43 = [v41 stringByAppendingString:v42];

  v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\t\tlengthPrivateMailBox : %d\n", -[SEEndPointConfiguration lengthPrivateMailBox](self, "lengthPrivateMailBox")];
  v45 = [v43 stringByAppendingString:v44];

  v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\t\toffsetPrivateMailBox : %d\n", -[SEEndPointConfiguration offsetPrivateMailBox](self, "offsetPrivateMailBox")];
  v47 = [v45 stringByAppendingString:v46];

  v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\t}"];
  v49 = [v47 stringByAppendingString:v48];

  return v49;
}

- (SEEndPointConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SEEndPointConfiguration;
  v5 = [(SEEndPointConfiguration *)&v7 init];
  if (v5)
  {
    v5->_enabledOnWire = [v4 decodeIntForKey:@"enabledOnWire"] != 0;
    v5->_enabledOnContactless = [v4 decodeIntForKey:@"enabledOnContactless"] != 0;
    v5->_standardFlowAllowedOnWire = [v4 decodeIntForKey:@"standardFlowAllowedOnWire"] != 0;
    v5->_standardFlowAllowedOnContactless = [v4 decodeIntForKey:@"standardFlowAllowedOnContactless"] != 0;
    v5->_fastFlowAllowedOnWire = [v4 decodeIntForKey:@"fastFlowAllowedOnWire"] != 0;
    v5->_fastFlowAllowedOnContactless = [v4 decodeIntForKey:@"fastFlowAllowedOnContactless"] != 0;
    v5->_exchangeAllowedOnWire = [v4 decodeIntForKey:@"exchangeAllowedOnWire"] != 0;
    v5->_exchangeAllowedInFastFlow = [v4 decodeIntForKey:@"exchangeAllowedInFastFlow"] != 0;
    v5->_authorizeEndPointAllowed = [v4 decodeIntForKey:@"authorizeEndPointAllowed"] != 0;
    v5->_authorizeEndPointWithAuthorizeAllowed = [v4 decodeIntForKey:@"authorizeEndPointWithAuthorizeAllowed"] != 0;
    v5->_signAllowed = [v4 decodeIntForKey:@"signAllowed"] != 0;
    v5->_exportEraseConfidentialMailBox = [v4 decodeIntForKey:@"exportEraseConfidentialMailBox"] != 0;
    v5->_compressedKeysAllowed = [v4 decodeIntForKey:@"compressedKeysAllowed"] != 0;
    v5->_confidentialDataAllowed = [v4 decodeIntForKey:@"confidentialDataAllowed"] != 0;
    v5->_serverIssuedKey = [v4 decodeIntForKey:@"serverIssuedKey"] != 0;
    v5->_fleetVehicle = [v4 decodeIntForKey:@"fleetVehicle"] != 0;
    v5->_nfcExpressOnlyInLPM = [v4 decodeIntForKey:@"nfcExpressOnlyInLPM"] != 0;
    v5->_terminationNotPersisted = [v4 decodeIntForKey:@"terminationNotPersisted"] != 0;
    v5->_lengthConfidentialMailBox = [v4 decodeIntForKey:@"lengthConfidentialMailBox"];
    v5->_offsetConfidentialMailBox = [v4 decodeIntForKey:@"offsetConfidentialMailBox"];
    v5->_lengthPrivateMailBox = [v4 decodeIntForKey:@"lengthPrivateMailBox"];
    v5->_offsetPrivateMailBox = [v4 decodeIntForKey:@"offsetPrivateMailBox"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[SEEndPointConfiguration enabledOnWire](self forKey:{"enabledOnWire"), @"enabledOnWire"}];
  [v4 encodeInteger:-[SEEndPointConfiguration enabledOnContactless](self forKey:{"enabledOnContactless"), @"enabledOnContactless"}];
  [v4 encodeInteger:-[SEEndPointConfiguration standardFlowAllowedOnWire](self forKey:{"standardFlowAllowedOnWire"), @"standardFlowAllowedOnWire"}];
  [v4 encodeInteger:-[SEEndPointConfiguration standardFlowAllowedOnContactless](self forKey:{"standardFlowAllowedOnContactless"), @"standardFlowAllowedOnContactless"}];
  [v4 encodeInteger:-[SEEndPointConfiguration fastFlowAllowedOnWire](self forKey:{"fastFlowAllowedOnWire"), @"fastFlowAllowedOnWire"}];
  [v4 encodeInteger:-[SEEndPointConfiguration fastFlowAllowedOnContactless](self forKey:{"fastFlowAllowedOnContactless"), @"fastFlowAllowedOnContactless"}];
  [v4 encodeInteger:-[SEEndPointConfiguration exchangeAllowedOnWire](self forKey:{"exchangeAllowedOnWire"), @"exchangeAllowedOnWire"}];
  [v4 encodeInteger:-[SEEndPointConfiguration exchangeAllowedInFastFlow](self forKey:{"exchangeAllowedInFastFlow"), @"exchangeAllowedInFastFlow"}];
  [v4 encodeInteger:-[SEEndPointConfiguration authorizeEndPointAllowed](self forKey:{"authorizeEndPointAllowed"), @"authorizeEndPointAllowed"}];
  [v4 encodeInteger:-[SEEndPointConfiguration authorizeEndPointWithAuthorizeAllowed](self forKey:{"authorizeEndPointWithAuthorizeAllowed"), @"authorizeEndPointWithAuthorizeAllowed"}];
  [v4 encodeInteger:-[SEEndPointConfiguration signAllowed](self forKey:{"signAllowed"), @"signAllowed"}];
  [v4 encodeInteger:-[SEEndPointConfiguration exportEraseConfidentialMailBox](self forKey:{"exportEraseConfidentialMailBox"), @"exportEraseConfidentialMailBox"}];
  [v4 encodeInteger:-[SEEndPointConfiguration compressedKeysAllowed](self forKey:{"compressedKeysAllowed"), @"compressedKeysAllowed"}];
  [v4 encodeInteger:-[SEEndPointConfiguration confidentialDataAllowed](self forKey:{"confidentialDataAllowed"), @"confidentialDataAllowed"}];
  [v4 encodeInteger:-[SEEndPointConfiguration serverIssuedKey](self forKey:{"serverIssuedKey"), @"serverIssuedKey"}];
  [v4 encodeInteger:-[SEEndPointConfiguration fleetVehicle](self forKey:{"fleetVehicle"), @"fleetVehicle"}];
  [v4 encodeInteger:-[SEEndPointConfiguration nfcExpressOnlyInLPM](self forKey:{"nfcExpressOnlyInLPM"), @"nfcExpressOnlyInLPM"}];
  [v4 encodeInteger:-[SEEndPointConfiguration terminationNotPersisted](self forKey:{"terminationNotPersisted"), @"terminationNotPersisted"}];
  [v4 encodeInteger:-[SEEndPointConfiguration lengthConfidentialMailBox](self forKey:{"lengthConfidentialMailBox"), @"lengthConfidentialMailBox"}];
  [v4 encodeInteger:-[SEEndPointConfiguration offsetConfidentialMailBox](self forKey:{"offsetConfidentialMailBox"), @"offsetConfidentialMailBox"}];
  [v4 encodeInteger:-[SEEndPointConfiguration lengthPrivateMailBox](self forKey:{"lengthPrivateMailBox"), @"lengthPrivateMailBox"}];
  [v4 encodeInteger:-[SEEndPointConfiguration offsetPrivateMailBox](self forKey:{"offsetPrivateMailBox"), @"offsetPrivateMailBox"}];
}

- (unsigned)opt1
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [(SEEndPointConfiguration *)self standardFlowAllowedOnContactless];
  if ([(SEEndPointConfiguration *)self fastFlowAllowedOnContactless])
  {
    v3 |= 2u;
  }

  if ([(SEEndPointConfiguration *)self standardFlowAllowedOnWire])
  {
    v3 |= 4u;
  }

  if ([(SEEndPointConfiguration *)self fastFlowAllowedOnWire])
  {
    v3 |= 8u;
  }

  if ([(SEEndPointConfiguration *)self authorizeEndPointAllowed])
  {
    v3 |= 0x10u;
  }

  if ([(SEEndPointConfiguration *)self authorizeEndPointWithAuthorizeAllowed])
  {
    v3 |= 0x20u;
  }

  if ([(SEEndPointConfiguration *)self exchangeAllowedOnWire])
  {
    v3 |= 0x40u;
  }

  if ([(SEEndPointConfiguration *)self exchangeAllowedInFastFlow])
  {
    v3 |= 0x80u;
  }

  v4 = SESDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7[0] = 67109120;
    v7[1] = v3;
    _os_log_impl(&dword_1C7B9A000, v4, OS_LOG_TYPE_INFO, "Returning SEEndPointConfiguration Opt1 %02X", v7, 8u);
  }

  v5 = *MEMORY[0x1E69E9840];
  return v3;
}

- (unsigned)opt2
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [(SEEndPointConfiguration *)self signAllowed];
  if ([(SEEndPointConfiguration *)self exportEraseConfidentialMailBox])
  {
    v3 |= 2u;
  }

  if ([(SEEndPointConfiguration *)self serverIssuedKey])
  {
    v3 |= 4u;
  }

  if ([(SEEndPointConfiguration *)self fleetVehicle])
  {
    v3 |= 8u;
  }

  if ([(SEEndPointConfiguration *)self compressedKeysAllowed])
  {
    v3 |= 0x40u;
  }

  if ([(SEEndPointConfiguration *)self confidentialDataAllowed])
  {
    v3 |= 0x80u;
  }

  v4 = SESDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7[0] = 67109120;
    v7[1] = v3;
    _os_log_impl(&dword_1C7B9A000, v4, OS_LOG_TYPE_INFO, "Returning SEEndPointConfiguration Opt2 %02X", v7, 8u);
  }

  v5 = *MEMORY[0x1E69E9840];
  return v3;
}

- (unsigned)optA
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = [(SEEndPointConfiguration *)self nfcExpressOnlyInLPM];
  if ([(SEEndPointConfiguration *)self terminationNotPersisted])
  {
    v4 = v3 | 2;
  }

  else
  {
    v4 = v3;
  }

  v5 = SESDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8[0] = 67109120;
    v8[1] = v4;
    _os_log_impl(&dword_1C7B9A000, v5, OS_LOG_TYPE_INFO, "Returning SEEndPointConfiguration OptA %02X", v8, 8u);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v4;
}

@end