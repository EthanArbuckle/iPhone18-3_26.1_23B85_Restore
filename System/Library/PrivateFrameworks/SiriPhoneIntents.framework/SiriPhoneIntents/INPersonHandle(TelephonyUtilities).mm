@interface INPersonHandle(TelephonyUtilities)
- (id)tu_initUnlabledPersonHandleWithTUHandle:()TelephonyUtilities isoCountryCodes:;
- (id)tu_normalizedHandleForISOCountryCode:()TelephonyUtilities;
@end

@implementation INPersonHandle(TelephonyUtilities)

- (id)tu_initUnlabledPersonHandleWithTUHandle:()TelephonyUtilities isoCountryCodes:
{
  v5 = a3;
  v6 = a4;
  type = [v5 type];
  if (type == 1)
  {
    value = [v5 value];
    _appearsToBePhoneNumber = [value _appearsToBePhoneNumber];

    if ((_appearsToBePhoneNumber & 1) == 0)
    {
      value2 = [v5 value];
      LODWORD(v8) = [value2 _appearsToBeEmail];

      v8 = v8;
      goto LABEL_4;
    }
  }

  else if (type != 2)
  {
    v8 = type == 3;
LABEL_4:
    value3 = [v5 value];
    goto LABEL_7;
  }

  value4 = [v5 value];
  firstObject = [v6 firstObject];
  value3 = TUFormattedPhoneNumber();

  v8 = 2;
LABEL_7:
  v14 = [objc_alloc(MEMORY[0x277CD3E98]) initWithValue:value3 type:v8 label:0];

  return v14;
}

- (id)tu_normalizedHandleForISOCountryCode:()TelephonyUtilities
{
  v4 = a3;
  value = [self value];
  type = [self type];
  if (type == 2)
  {
    v7 = [MEMORY[0x277D6EEE8] normalizedPhoneNumberHandleForValue:value isoCountryCode:v4];
  }

  else
  {
    if (type == 1)
    {
      [MEMORY[0x277D6EEE8] normalizedEmailAddressHandleForValue:value];
    }

    else
    {
      [MEMORY[0x277D6EEE8] normalizedHandleWithDestinationID:value];
    }
    v7 = ;
  }

  v8 = v7;

  return v8;
}

@end