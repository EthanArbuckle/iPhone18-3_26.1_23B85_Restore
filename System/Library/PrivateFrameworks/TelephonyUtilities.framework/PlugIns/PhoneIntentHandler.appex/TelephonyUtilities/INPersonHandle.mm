@interface INPersonHandle
- (id)tu_initUnlabledPersonHandleWithTUHandle:(id)handle isoCountryCodes:(id)codes;
- (id)tu_normalizedHandleForISOCountryCode:(id)code;
@end

@implementation INPersonHandle

- (id)tu_initUnlabledPersonHandleWithTUHandle:(id)handle isoCountryCodes:(id)codes
{
  handleCopy = handle;
  codesCopy = codes;
  type = [handleCopy type];
  if (type == 1)
  {
    value = [handleCopy value];
    _appearsToBePhoneNumber = [value _appearsToBePhoneNumber];

    if ((_appearsToBePhoneNumber & 1) == 0)
    {
      value2 = [handleCopy value];
      LODWORD(v8) = [value2 _appearsToBeEmail];

      v8 = v8;
      goto LABEL_4;
    }
  }

  else if (type != 2)
  {
    v8 = type == 3;
LABEL_4:
    value3 = [handleCopy value];
    goto LABEL_7;
  }

  value4 = [handleCopy value];
  firstObject = [codesCopy firstObject];
  value3 = TUFormattedPhoneNumber();

  v8 = 2;
LABEL_7:
  v14 = [[INPersonHandle alloc] initWithValue:value3 type:v8 label:0];

  return v14;
}

- (id)tu_normalizedHandleForISOCountryCode:(id)code
{
  codeCopy = code;
  value = [(INPersonHandle *)self value];
  type = [(INPersonHandle *)self type];
  if (type == INPersonHandleTypePhoneNumber)
  {
    v7 = [TUHandle normalizedPhoneNumberHandleForValue:value isoCountryCode:codeCopy];
  }

  else
  {
    if (type == INPersonHandleTypeEmailAddress)
    {
      [TUHandle normalizedEmailAddressHandleForValue:value];
    }

    else
    {
      [TUHandle normalizedHandleWithDestinationID:value];
    }
    v7 = ;
  }

  v8 = v7;

  return v8;
}

@end