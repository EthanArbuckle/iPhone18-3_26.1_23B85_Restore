@interface SKStepWiFiPreflight
- (BOOL)checkWiFiAndReturnError:(id *)error;
- (SKSetupBase)skSetupObject;
- (SKStepWiFiPreflight)init;
- (void)activate;
- (void)dealloc;
- (void)setLabel:(id)label;
@end

@implementation SKStepWiFiPreflight

- (SKSetupBase)skSetupObject
{
  WeakRetained = objc_loadWeakRetained(&self->_skSetupObject);

  return WeakRetained;
}

- (BOOL)checkWiFiAndReturnError:(id *)error
{
  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 != -1)
    {
LABEL_3:
      LogPrintF();
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  v6 = [(CUEnvironment *)self->_environment objectForKeyedSubscript:@"_wifiInfo"];
  CFDictionaryGetTypeID();
  v7 = CFGetTypedObject();

  if (!v7)
  {
    v7 = WiFiCopyCurrentNetworkInfoEx();
  }

  CFStringGetTypeID();
  v8 = CFDictionaryGetTypedValue();
  if (!v8)
  {
    if (!error)
    {
      goto LABEL_30;
    }

    v14 = *MEMORY[0x277CCA590];
LABEL_29:
    NSErrorF_safe();
    *error = v12 = 0;
    goto LABEL_19;
  }

  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (CFDictionaryGetInt64())
  {
    if (Int64Ranged != 1)
    {
      v10 = NSPrintF();
      if (v10)
      {
        v15 = v10;
        if (error)
        {
          v16 = *MEMORY[0x277CCA590];
          *error = NSErrorF_safe();
        }

        goto LABEL_30;
      }
    }
  }

  if (Int64Ranged >= 2)
  {
    if (!error)
    {
      goto LABEL_30;
    }

    v17 = *MEMORY[0x277CCA590];
    goto LABEL_29;
  }

  if (self->_preventAppleWiFi && [v8 isEqual:@"AppleWiFi"])
  {
    if (error)
    {
      v18 = *MEMORY[0x277CCA590];
      goto LABEL_29;
    }

LABEL_30:
    v12 = 0;
    goto LABEL_19;
  }

  v11 = self->_ucat->var0;
  if (v11 <= 30)
  {
    if (v11 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_18;
      }

      v20 = self->_ucat;
    }

    LogPrintF();
  }

LABEL_18:
  v12 = 1;
LABEL_19:

  return v12;
}

- (void)activate
{
  v3 = MEMORY[0x26676A4C0](self->_skCompletionHandler, a2);
  if (v3)
  {
    v4 = v3;
    v12 = 0;
    [(SKStepWiFiPreflight *)self checkWiFiAndReturnError:&v12];
    v5 = v12;
    v6 = MEMORY[0x26676A4C0](self->_skCompletionHandler);
    v7 = v6;
    if (v6)
    {
      (*(v6 + 16))(v6, v5);
    }
  }

  else
  {
    ucat = self->_ucat;
    v9 = CUFatalErrorF();
    [(SKStepWiFiPreflight *)v9 setLabel:v10, v11];
  }
}

- (void)setLabel:(id)label
{
  objc_storeStrong(&self->_label, label);
  labelCopy = label;
  [labelCopy UTF8String];

  LogCategoryReplaceF();
}

- (void)dealloc
{
  ucat = self->_ucat;
  if (ucat && (ucat->var3 & 0x40000) != 0)
  {
    LogCategory_Remove();
    self->_ucat = 0;
  }

  v4.receiver = self;
  v4.super_class = SKStepWiFiPreflight;
  [(SKStepWiFiPreflight *)&v4 dealloc];
}

- (SKStepWiFiPreflight)init
{
  v6.receiver = self;
  v6.super_class = SKStepWiFiPreflight;
  v2 = [(SKStepWiFiPreflight *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
    v3->_preventAppleWiFi = 1;
    v3->_ucat = &gLogCategory_SKStepWiFiPreflight;
    v4 = v3;
  }

  return v3;
}

@end