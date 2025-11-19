@interface INPersonHandle
- (id)tu_initUnlabledPersonHandleWithTUHandle:(id)a3 isoCountryCodes:(id)a4;
- (id)tu_normalizedHandleForISOCountryCode:(id)a3;
@end

@implementation INPersonHandle

- (id)tu_initUnlabledPersonHandleWithTUHandle:(id)a3 isoCountryCodes:(id)a4
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
  v14 = [[INPersonHandle alloc] initWithValue:v9 type:v8 label:0];

  return v14;
}

- (id)tu_normalizedHandleForISOCountryCode:(id)a3
{
  v4 = a3;
  v5 = [(INPersonHandle *)self value];
  v6 = [(INPersonHandle *)self type];
  if (v6 == INPersonHandleTypePhoneNumber)
  {
    v7 = [TUHandle normalizedPhoneNumberHandleForValue:v5 isoCountryCode:v4];
  }

  else
  {
    if (v6 == INPersonHandleTypeEmailAddress)
    {
      [TUHandle normalizedEmailAddressHandleForValue:v5];
    }

    else
    {
      [TUHandle normalizedHandleWithDestinationID:v5];
    }
    v7 = ;
  }

  v8 = v7;

  return v8;
}

@end