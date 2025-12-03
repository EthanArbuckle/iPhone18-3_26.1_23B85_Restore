@interface SRSourceDevice
- (void)setActiveHRMDevice:(id)device;
- (void)setHijackedByPhoneCall:(BOOL)call;
- (void)setIncomingCallRingtone:(BOOL)ringtone;
- (void)setIsSystemEligibleForSiriHijack:(BOOL)hijack;
- (void)setShouldStayOnVirtual:(BOOL)virtual;
- (void)updateHijackBlockingClientWithBundleID:(id)d mode:(BOOL)mode;
@end

@implementation SRSourceDevice

- (void)setActiveHRMDevice:(id)device
{
  deviceCopy = device;
  activeHRMDevice = self->_activeHRMDevice;
  p_activeHRMDevice = &self->_activeHRMDevice;
  btAddress = [(SRDiscoveredDevice *)activeHRMDevice btAddress];
  btAddress2 = [deviceCopy btAddress];
  v8 = btAddress;
  v9 = btAddress2;
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
      sub_1001D4BA0(p_activeHRMDevice, deviceCopy);
    }

    v12 = deviceCopy;
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

- (void)setHijackedByPhoneCall:(BOOL)call
{
  if (self->_hijackedByPhoneCall != call)
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
    self->_hijackedByPhoneCall = call;
  }
}

- (void)setIncomingCallRingtone:(BOOL)ringtone
{
  if (self->_incomingCallRingtone != ringtone)
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
    self->_incomingCallRingtone = ringtone;
  }
}

- (void)setIsSystemEligibleForSiriHijack:(BOOL)hijack
{
  if (self->_isSystemEligibleForSiriHijack != hijack)
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
    self->_isSystemEligibleForSiriHijack = hijack;
  }
}

- (void)setShouldStayOnVirtual:(BOOL)virtual
{
  if (self->_shouldStayOnVirtual != virtual)
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
    self->_shouldStayOnVirtual = virtual;
  }
}

- (void)updateHijackBlockingClientWithBundleID:(id)d mode:(BOOL)mode
{
  modeCopy = mode;
  dCopy = d;
  hijackBlockingClientSet = self->_hijackBlockingClientSet;
  v12 = dCopy;
  if (modeCopy)
  {
    if (!hijackBlockingClientSet)
    {
      v8 = objc_alloc_init(NSMutableSet);
      v9 = self->_hijackBlockingClientSet;
      self->_hijackBlockingClientSet = v8;

      dCopy = v12;
      hijackBlockingClientSet = self->_hijackBlockingClientSet;
    }

    [(NSMutableSet *)hijackBlockingClientSet addObject:dCopy];
  }

  else
  {
    [(NSMutableSet *)hijackBlockingClientSet removeObject:dCopy];
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