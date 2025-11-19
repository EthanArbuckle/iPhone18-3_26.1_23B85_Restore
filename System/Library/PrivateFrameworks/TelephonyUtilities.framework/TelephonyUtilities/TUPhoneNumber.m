@interface TUPhoneNumber
+ (BOOL)areDigits:(id)a3 equalToDigits:(id)a4 usingCountryCode:(id)a5;
+ (TUPhoneNumber)phoneNumberWithCFPhoneNumberRef:(__CFPhoneNumber *)a3;
+ (TUPhoneNumber)phoneNumberWithDigits:(id)a3 countryCode:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)countryCode;
- (NSString)digits;
- (NSString)formattedInternationalRepresentation;
- (NSString)formattedRepresentation;
- (NSString)unformattedInternationalRepresentation;
- (TUPhoneNumber)initWithCFPhoneNumberRef:(__CFPhoneNumber *)a3;
- (TUPhoneNumber)initWithCoder:(id)a3;
- (TUPhoneNumber)initWithDigits:(id)a3 countryCode:(id)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUPhoneNumber

- (NSString)unformattedInternationalRepresentation
{
  v2 = *MEMORY[0x1E695E480];
  phoneNumberRef = self->_phoneNumberRef;
  String = CFPhoneNumberCreateString();

  return String;
}

- (void)dealloc
{
  phoneNumberRef = self->_phoneNumberRef;
  if (phoneNumberRef)
  {
    CFRelease(phoneNumberRef);
  }

  v4.receiver = self;
  v4.super_class = TUPhoneNumber;
  [(TUPhoneNumber *)&v4 dealloc];
}

- (TUPhoneNumber)initWithCFPhoneNumberRef:(__CFPhoneNumber *)a3
{
  v7.receiver = self;
  v7.super_class = TUPhoneNumber;
  v4 = [(TUPhoneNumber *)&v7 init];
  v5 = v4;
  if (v4)
  {
    if (a3)
    {
      CFRetain(a3);
      v5->_phoneNumberRef = a3;
    }

    else
    {

      return 0;
    }
  }

  return v5;
}

- (TUPhoneNumber)initWithDigits:(id)a3 countryCode:(id)a4
{
  v5 = CFPhoneNumberCreate();
  v6 = [(TUPhoneNumber *)self initWithCFPhoneNumberRef:v5];
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

+ (TUPhoneNumber)phoneNumberWithCFPhoneNumberRef:(__CFPhoneNumber *)a3
{
  v3 = [[TUPhoneNumber alloc] initWithCFPhoneNumberRef:a3];

  return v3;
}

+ (TUPhoneNumber)phoneNumberWithDigits:(id)a3 countryCode:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[TUPhoneNumber alloc] initWithDigits:v6 countryCode:v5];

  return v7;
}

- (TUPhoneNumber)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Digits"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CountryCode"];

  v7 = [(TUPhoneNumber *)self initWithDigits:v5 countryCode:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TUPhoneNumber *)self digits];
  [v4 encodeObject:v5 forKey:@"Digits"];

  v6 = [(TUPhoneNumber *)self countryCode];
  [v4 encodeObject:v6 forKey:@"CountryCode"];
}

- (NSString)digits
{
  v2 = *MEMORY[0x1E695E480];
  phoneNumberRef = self->_phoneNumberRef;
  String = CFPhoneNumberCreateString();

  return String;
}

- (NSString)countryCode
{
  v2 = *MEMORY[0x1E695E480];
  phoneNumberRef = self->_phoneNumberRef;
  v4 = CFPhoneNumberCopyISOCountryCode();

  return v4;
}

- (NSString)formattedRepresentation
{
  v2 = *MEMORY[0x1E695E480];
  phoneNumberRef = self->_phoneNumberRef;
  String = CFPhoneNumberCreateString();

  return String;
}

- (NSString)formattedInternationalRepresentation
{
  v2 = *MEMORY[0x1E695E480];
  phoneNumberRef = self->_phoneNumberRef;
  String = CFPhoneNumberCreateString();

  return String;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(TUPhoneNumber *)self phoneNumberRef];
    v6 = [v4 phoneNumberRef];
    v7 = 0;
    if (v5 && v6)
    {
      v7 = CFEqual(v5, v6) != 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)areDigits:(id)a3 equalToDigits:(id)a4 usingCountryCode:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a1 phoneNumberWithDigits:a3 countryCode:v8];
  v11 = [a1 phoneNumberWithDigits:v9 countryCode:v8];

  LOBYTE(v9) = [v10 isEqual:v11];
  return v9;
}

@end