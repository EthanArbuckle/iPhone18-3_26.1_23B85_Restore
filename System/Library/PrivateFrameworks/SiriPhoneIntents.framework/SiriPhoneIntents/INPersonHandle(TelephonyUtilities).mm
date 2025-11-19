@interface INPersonHandle(TelephonyUtilities)
- (id)tu_initUnlabledPersonHandleWithTUHandle:()TelephonyUtilities isoCountryCodes:;
- (id)tu_normalizedHandleForISOCountryCode:()TelephonyUtilities;
@end

@implementation INPersonHandle(TelephonyUtilities)

- (id)tu_initUnlabledPersonHandleWithTUHandle:()TelephonyUtilities isoCountryCodes:
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 type];
  if (v7 == 1)
  {
    v10 = [v5 value];
    v11 = [v10 _appearsToBePhoneNumber];

    if ((v11 & 1) == 0)
    {
      v16 = [v5 value];
      LODWORD(v8) = [v16 _appearsToBeEmail];

      v8 = v8;
      goto LABEL_4;
    }
  }

  else if (v7 != 2)
  {
    v8 = v7 == 3;
LABEL_4:
    v9 = [v5 value];
    goto LABEL_7;
  }

  v12 = [v5 value];
  v13 = [v6 firstObject];
  v9 = TUFormattedPhoneNumber();

  v8 = 2;
LABEL_7:
  v14 = [objc_alloc(MEMORY[0x277CD3E98]) initWithValue:v9 type:v8 label:0];

  return v14;
}

- (id)tu_normalizedHandleForISOCountryCode:()TelephonyUtilities
{
  v4 = a3;
  v5 = [a1 value];
  v6 = [a1 type];
  if (v6 == 2)
  {
    v7 = [MEMORY[0x277D6EEE8] normalizedPhoneNumberHandleForValue:v5 isoCountryCode:v4];
  }

  else
  {
    if (v6 == 1)
    {
      [MEMORY[0x277D6EEE8] normalizedEmailAddressHandleForValue:v5];
    }

    else
    {
      [MEMORY[0x277D6EEE8] normalizedHandleWithDestinationID:v5];
    }
    v7 = ;
  }

  v8 = v7;

  return v8;
}

@end