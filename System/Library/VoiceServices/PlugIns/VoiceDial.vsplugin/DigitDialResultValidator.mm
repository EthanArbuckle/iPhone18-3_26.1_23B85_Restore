@interface DigitDialResultValidator
- (BOOL)_hasMinimumNumberOfDigits:(id)digits countryCode:(id)code;
- (BOOL)_isValidExceptionForDevice:(id)device;
- (BOOL)_isValidExceptionForNetwork:(id)network;
- (NSString)deviceCountryCode;
- (NSString)networkCountryCode;
- (id)_copyExceptionsForCountryCode:(id)code;
- (id)validRecognitionResultFromRecognitionResult:(id)result;
- (unint64_t)indexOfValidPhoneNumber:(id)number;
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

- (id)_copyExceptionsForCountryCode:(id)code
{
  codeCopy = code;
  v4 = codeCopy;
  if (codeCopy)
  {
    codeCopy = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"Exceptions-%@", codeCopy];
    v6 = VoiceDialBundle();
    v7 = [v6 pathForResource:codeCopy ofType:@"plist" inDirectory:@"DigitDialExceptions"];

    if (v7)
    {
      codeCopy = [objc_alloc(MEMORY[0x29EDB8D80]) initWithContentsOfFile:v7];
    }

    else
    {
      codeCopy = 0;
    }
  }

  else
  {
    v7 = 0;
    codeCopy = 0;
  }

  v8 = codeCopy;

  return v8;
}

- (BOOL)_isValidExceptionForDevice:(id)device
{
  deviceCopy = device;
  deviceExceptions = self->_deviceExceptions;
  if (!deviceExceptions)
  {
    deviceCountryCode = [(DigitDialResultValidator *)self deviceCountryCode];
    v7 = [(DigitDialResultValidator *)self _copyExceptionsForCountryCode:deviceCountryCode];
    v8 = self->_deviceExceptions;
    self->_deviceExceptions = v7;

    deviceExceptions = self->_deviceExceptions;
  }

  v9 = [(NSArray *)deviceExceptions containsObject:deviceCopy];

  return v9;
}

- (BOOL)_isValidExceptionForNetwork:(id)network
{
  networkCopy = network;
  networkExceptions = self->_networkExceptions;
  if (!networkExceptions)
  {
    networkCountryCode = [(DigitDialResultValidator *)self networkCountryCode];
    v7 = [(DigitDialResultValidator *)self _copyExceptionsForCountryCode:networkCountryCode];
    v8 = self->_networkExceptions;
    self->_networkExceptions = v7;

    networkExceptions = self->_networkExceptions;
  }

  v9 = [(NSArray *)networkExceptions containsObject:networkCopy];

  return v9;
}

- (BOOL)_hasMinimumNumberOfDigits:(id)digits countryCode:(id)code
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

- (unint64_t)indexOfValidPhoneNumber:(id)number
{
  numberCopy = number;
  v5 = [numberCopy count];
  if (!v5)
  {
    v11 = 0;
    networkCountryCode = 0;
    v7 = 0;
LABEL_24:
    v12 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_25;
  }

  v6 = v5;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  networkCountryCode = 0;
  v11 = 0;
  do
  {
    v12 = v8;
    v13 = v7;
    v7 = [numberCopy objectAtIndex:v8];

    v14 = [v7 length];
    if (!v14)
    {
      goto LABEL_18;
    }

    deviceCountryCode = [(DigitDialResultValidator *)self deviceCountryCode];

    if (PNIsValidPhoneNumberForCountry() && [(DigitDialResultValidator *)self _hasMinimumNumberOfDigits:v7 countryCode:deviceCountryCode])
    {
      goto LABEL_22;
    }

    if (networkCountryCode)
    {
      if (v9)
      {
        goto LABEL_8;
      }
    }

    else
    {
      networkCountryCode = [(DigitDialResultValidator *)self networkCountryCode];
      if ((TUStringsAreEqualOrNil() & 1) == 0)
      {
LABEL_8:
        if (PNIsValidPhoneNumberForCountry() && [(DigitDialResultValidator *)self _hasMinimumNumberOfDigits:v7 countryCode:networkCountryCode])
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

    v11 = deviceCountryCode;
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

  deviceCountryCode = v11;
LABEL_22:
  v11 = deviceCountryCode;
LABEL_25:

  return v12;
}

- (id)validRecognitionResultFromRecognitionResult:(id)result
{
  v9 = 0;
  resultCopy = result;
  DigitDialPhoneNumberFromResult(resultCopy, &v9, 0);
  v5 = v9;
  if ([(DigitDialResultValidator *)self indexOfValidPhoneNumber:v5]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = resultCopy;
  }

  v7 = v6;

  return v6;
}

@end