@interface SRSourceDevice
- (void)setActiveHRMDevice:(id)a3;
- (void)setHijackedByPhoneCall:(BOOL)a3;
- (void)setIncomingCallRingtone:(BOOL)a3;
- (void)setIsSystemEligibleForSiriHijack:(BOOL)a3;
- (void)setShouldStayOnVirtual:(BOOL)a3;
- (void)updateHijackBlockingClientWithBundleID:(id)a3 mode:(BOOL)a4;
@end

@implementation SRSourceDevice

- (void)setActiveHRMDevice:(id)a3
{
  v13 = a3;
  activeHRMDevice = self->_activeHRMDevice;
  p_activeHRMDevice = &self->_activeHRMDevice;
  v6 = [(SRDiscoveredDevice *)activeHRMDevice btAddress];
  v7 = [v13 btAddress];
  v8 = v6;
  v9 = v7;
  v10 = v9;
  if (v8 == v9)
  {

LABEL_11:
    goto LABEL_12;
  }

  if ((v8 != 0) == (v9 == 0))
  {

LABEL_7:
    if (dword_1002F6270 <= 30 && (dword_1002F6270 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D4BA0(p_activeHRMDevice, v13);
    }

    v12 = v13;
    v8 = *p_activeHRMDevice;
    *p_activeHRMDevice = v12;
    goto LABEL_11;
  }

  v11 = [(SRDiscoveredDevice *)v8 isEqual:v9];

  if ((v11 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_12:
}

- (void)setHijackedByPhoneCall:(BOOL)a3
{
  if (self->_hijackedByPhoneCall != a3)
  {
    if (dword_1002F6270 <= 30)
    {
      if (dword_1002F6270 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        hijackedByPhoneCall = self->_hijackedByPhoneCall;
      }

      LogPrintF();
    }

LABEL_6:
    self->_hijackedByPhoneCall = a3;
  }
}

- (void)setIncomingCallRingtone:(BOOL)a3
{
  if (self->_incomingCallRingtone != a3)
  {
    if (dword_1002F6270 <= 30)
    {
      if (dword_1002F6270 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        incomingCallRingtone = self->_incomingCallRingtone;
      }

      LogPrintF();
    }

LABEL_6:
    self->_incomingCallRingtone = a3;
  }
}

- (void)setIsSystemEligibleForSiriHijack:(BOOL)a3
{
  if (self->_isSystemEligibleForSiriHijack != a3)
  {
    if (dword_1002F6270 <= 30)
    {
      if (dword_1002F6270 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        isSystemEligibleForSiriHijack = self->_isSystemEligibleForSiriHijack;
      }

      LogPrintF();
    }

LABEL_6:
    self->_isSystemEligibleForSiriHijack = a3;
  }
}

- (void)setShouldStayOnVirtual:(BOOL)a3
{
  if (self->_shouldStayOnVirtual != a3)
  {
    if (dword_1002F6270 <= 30)
    {
      if (dword_1002F6270 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        shouldStayOnVirtual = self->_shouldStayOnVirtual;
      }

      LogPrintF();
    }

LABEL_6:
    self->_shouldStayOnVirtual = a3;
  }
}

- (void)updateHijackBlockingClientWithBundleID:(id)a3 mode:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  hijackBlockingClientSet = self->_hijackBlockingClientSet;
  v12 = v6;
  if (v4)
  {
    if (!hijackBlockingClientSet)
    {
      v8 = objc_alloc_init(NSMutableSet);
      v9 = self->_hijackBlockingClientSet;
      self->_hijackBlockingClientSet = v8;

      v6 = v12;
      hijackBlockingClientSet = self->_hijackBlockingClientSet;
    }

    [(NSMutableSet *)hijackBlockingClientSet addObject:v6];
  }

  else
  {
    [(NSMutableSet *)hijackBlockingClientSet removeObject:v6];
    if (![(NSMutableSet *)self->_hijackBlockingClientSet count])
    {
      v10 = self->_hijackBlockingClientSet;
      self->_hijackBlockingClientSet = 0;
    }
  }

  if (dword_1002F6270 <= 30 && (dword_1002F6270 != -1 || _LogCategory_Initialize()))
  {
    v11 = self->_hijackBlockingClientSet;
    LogPrintF();
  }
}

@end