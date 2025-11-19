@interface DigitDialResultValidator
- (BOOL)_hasMinimumNumberOfDigits:(id)a3 countryCode:(id)a4;
- (BOOL)_isValidExceptionForDevice:(id)a3;
- (BOOL)_isValidExceptionForNetwork:(id)a3;
- (NSString)deviceCountryCode;
- (NSString)networkCountryCode;
- (id)_copyExceptionsForCountryCode:(id)a3;
- (id)validRecognitionResultFromRecognitionResult:(id)a3;
- (unint64_t)indexOfValidPhoneNumber:(id)a3;
@end

@implementation DigitDialResultValidator

- (NSString)deviceCountryCode
{
  deviceCountryCode = self->_deviceCountryCode;
  if (!deviceCountryCode)
  {
    v4 = TUHomeCountryCode();
    v5 = self->_deviceCountryCode;
    self->_deviceCountryCode = v4;

    deviceCountryCode = self->_deviceCountryCode;
  }

  return deviceCountryCode;
}

- (NSString)networkCountryCode
{
  networkCountryCode = self->_networkCountryCode;
  if (!networkCountryCode)
  {
    v4 = TUNetworkCountryCode();
    v5 = self->_networkCountryCode;
    self->_networkCountryCode = v4;

    networkCountryCode = self->_networkCountryCode;
  }

  return networkCountryCode;
}

- (id)_copyExceptionsForCountryCode:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"Exceptions-%@", v3];
    v6 = VoiceDialBundle();
    v7 = [v6 pathForResource:v5 ofType:@"plist" inDirectory:@"DigitDialExceptions"];

    if (v7)
    {
      v3 = [objc_alloc(MEMORY[0x29EDB8D80]) initWithContentsOfFile:v7];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v7 = 0;
    v5 = 0;
  }

  v8 = v3;

  return v8;
}

- (BOOL)_isValidExceptionForDevice:(id)a3
{
  v4 = a3;
  deviceExceptions = self->_deviceExceptions;
  if (!deviceExceptions)
  {
    v6 = [(DigitDialResultValidator *)self deviceCountryCode];
    v7 = [(DigitDialResultValidator *)self _copyExceptionsForCountryCode:v6];
    v8 = self->_deviceExceptions;
    self->_deviceExceptions = v7;

    deviceExceptions = self->_deviceExceptions;
  }

  v9 = [(NSArray *)deviceExceptions containsObject:v4];

  return v9;
}

- (BOOL)_isValidExceptionForNetwork:(id)a3
{
  v4 = a3;
  networkExceptions = self->_networkExceptions;
  if (!networkExceptions)
  {
    v6 = [(DigitDialResultValidator *)self networkCountryCode];
    v7 = [(DigitDialResultValidator *)self _copyExceptionsForCountryCode:v6];
    v8 = self->_networkExceptions;
    self->_networkExceptions = v7;

    networkExceptions = self->_networkExceptions;
  }

  v9 = [(NSArray *)networkExceptions containsObject:v4];

  return v9;
}

- (BOOL)_hasMinimumNumberOfDigits:(id)a3 countryCode:(id)a4
{
  v4 = CFPhoneNumberCreate();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = CFPhoneNumberCopyUnformattedRepresentation();
  v7 = v6;
  if (v6)
  {
    v8 = [v6 length] > 3;
  }

  else
  {
    v8 = 0;
  }

  CFRelease(v5);

  return v8;
}

- (unint64_t)indexOfValidPhoneNumber:(id)a3
{
  v4 = a3;
  v5 = [v4 count];
  if (!v5)
  {
    v11 = 0;
    v10 = 0;
    v7 = 0;
LABEL_24:
    v12 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_25;
  }

  v6 = v5;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  do
  {
    v12 = v8;
    v13 = v7;
    v7 = [v4 objectAtIndex:v8];

    v14 = [v7 length];
    if (!v14)
    {
      goto LABEL_18;
    }

    v15 = [(DigitDialResultValidator *)self deviceCountryCode];

    if (PNIsValidPhoneNumberForCountry() && [(DigitDialResultValidator *)self _hasMinimumNumberOfDigits:v7 countryCode:v15])
    {
      goto LABEL_22;
    }

    if (v10)
    {
      if (v9)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v10 = [(DigitDialResultValidator *)self networkCountryCode];
      if ((TUStringsAreEqualOrNil() & 1) == 0)
      {
LABEL_8:
        if (PNIsValidPhoneNumberForCountry() && [(DigitDialResultValidator *)self _hasMinimumNumberOfDigits:v7 countryCode:v10])
        {
          goto LABEL_22;
        }

        v16 = 1;
        goto LABEL_13;
      }
    }

    v16 = 0;
LABEL_13:
    if ([(DigitDialResultValidator *)self _isValidExceptionForDevice:v7])
    {
      goto LABEL_22;
    }

    if (v16)
    {
      LOBYTE(v14) = [(DigitDialResultValidator *)self _isValidExceptionForNetwork:v7];
      v9 = 1;
    }

    else
    {
      LOBYTE(v14) = 0;
      v9 = 0;
    }

    v11 = v15;
LABEL_18:
    if (v14)
    {
      break;
    }

    v8 = v12 + ((v14 & 1) == 0);
  }

  while (v8 < v6);
  if ((v14 & 1) == 0)
  {
    goto LABEL_24;
  }

  v15 = v11;
LABEL_22:
  v11 = v15;
LABEL_25:

  return v12;
}

- (id)validRecognitionResultFromRecognitionResult:(id)a3
{
  v9 = 0;
  v4 = a3;
  DigitDialPhoneNumberFromResult(v4, &v9, 0);
  v5 = v9;
  if ([(DigitDialResultValidator *)self indexOfValidPhoneNumber:v5]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;

  return v6;
}

@end