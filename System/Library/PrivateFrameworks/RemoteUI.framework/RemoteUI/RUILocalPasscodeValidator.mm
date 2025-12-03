@interface RUILocalPasscodeValidator
- (BOOL)isCorrectPasscode:(id)passcode error:(id *)error;
- (RUILocalPasscodeConfiguration)configuration;
- (id)_readConfiguration;
@end

@implementation RUILocalPasscodeValidator

- (RUILocalPasscodeConfiguration)configuration
{
  configuration = self->_configuration;
  if (configuration)
  {
    _readConfiguration = configuration;
  }

  else
  {
    _readConfiguration = [(RUILocalPasscodeValidator *)self _readConfiguration];
  }

  v5 = self->_configuration;
  self->_configuration = _readConfiguration;

  v6 = self->_configuration;

  return v6;
}

- (id)_readConfiguration
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = 0;
  sharedConnection = [getMCProfileConnectionClass() sharedConnection];
  v3 = [sharedConnection unlockScreenTypeWithOutSimplePasscodeType:&v10];

  if (v3)
  {
    if (v3 == 1 || v3 == 2)
    {
      v4 = +[RUILocalPasscodeConfiguration alphanumeric];
      goto LABEL_17;
    }

    if (!_isInternalInstall())
    {
      goto LABEL_15;
    }

    v5 = _RUILoggingFacility();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    *buf = 67109120;
    v12 = v3;
    v6 = "Error! Unexpected unlock type: %d";
    goto LABEL_13;
  }

  if (v10 == 1)
  {
    v7 = [RUILocalPasscodeConfiguration alloc];
    v8 = 6;
    goto LABEL_16;
  }

  if (v10 && _isInternalInstall())
  {
    v5 = _RUILoggingFacility();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
LABEL_14:

      goto LABEL_15;
    }

    *buf = 67109120;
    v12 = v10;
    v6 = "Error! Unlock type is MCUnlockScreenSimple, but value for MCSimplePasscodeType (%d) is invalid.";
LABEL_13:
    _os_log_impl(&dword_21B93D000, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 8u);
    goto LABEL_14;
  }

LABEL_15:
  v7 = [RUILocalPasscodeConfiguration alloc];
  v8 = 4;
LABEL_16:
  v4 = [(RUILocalPasscodeConfiguration *)v7 initWithNumberOfDigits:v8];
LABEL_17:

  return v4;
}

- (BOOL)isCorrectPasscode:(id)passcode error:(id *)error
{
  v15 = *MEMORY[0x277D85DE8];
  passcodeCopy = passcode;
  sharedConnection = [getMCProfileConnectionClass() sharedConnection];
  v12 = 0;
  v7 = [sharedConnection unlockDeviceWithPasscode:passcodeCopy outError:&v12];

  v8 = v12;
  if (v8 && _isInternalInstall())
  {
    v9 = _RUILoggingFacility();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v8;
      _os_log_impl(&dword_21B93D000, v9, OS_LOG_TYPE_DEFAULT, "Error! Entered passcode does not validate: %@", buf, 0xCu);
    }
  }

  if (error)
  {
    v10 = v8;
    *error = v8;
  }

  return v7;
}

@end