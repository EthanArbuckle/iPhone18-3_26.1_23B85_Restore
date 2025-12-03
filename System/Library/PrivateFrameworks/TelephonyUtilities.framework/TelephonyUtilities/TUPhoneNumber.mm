@interface TUPhoneNumber
+ (BOOL)areDigits:(id)digits equalToDigits:(id)toDigits usingCountryCode:(id)code;
+ (TUPhoneNumber)phoneNumberWithCFPhoneNumberRef:(__CFPhoneNumber *)ref;
+ (TUPhoneNumber)phoneNumberWithDigits:(id)digits countryCode:(id)code;
- (BOOL)isEqual:(id)equal;
- (NSString)countryCode;
- (NSString)digits;
- (NSString)formattedInternationalRepresentation;
- (NSString)formattedRepresentation;
- (NSString)unformattedInternationalRepresentation;
- (TUPhoneNumber)initWithCFPhoneNumberRef:(__CFPhoneNumber *)ref;
- (TUPhoneNumber)initWithCoder:(id)coder;
- (TUPhoneNumber)initWithDigits:(id)digits countryCode:(id)code;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
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

- (TUPhoneNumber)initWithCFPhoneNumberRef:(__CFPhoneNumber *)ref
{
  v7.receiver = self;
  v7.super_class = TUPhoneNumber;
  v4 = [(TUPhoneNumber *)&v7 init];
  v5 = v4;
  if (v4)
  {
    if (ref)
    {
      CFRetain(ref);
      v5->_phoneNumberRef = ref;
    }

    else
    {

      return 0;
    }
  }

  return v5;
}

- (TUPhoneNumber)initWithDigits:(id)digits countryCode:(id)code
{
  v5 = CFPhoneNumberCreate();
  v6 = [(TUPhoneNumber *)self initWithCFPhoneNumberRef:v5];
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

+ (TUPhoneNumber)phoneNumberWithCFPhoneNumberRef:(__CFPhoneNumber *)ref
{
  v3 = [[TUPhoneNumber alloc] initWithCFPhoneNumberRef:ref];

  return v3;
}

+ (TUPhoneNumber)phoneNumberWithDigits:(id)digits countryCode:(id)code
{
  codeCopy = code;
  digitsCopy = digits;
  v7 = [[TUPhoneNumber alloc] initWithDigits:digitsCopy countryCode:codeCopy];

  return v7;
}

- (TUPhoneNumber)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Digits"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CountryCode"];

  v7 = [(TUPhoneNumber *)self initWithDigits:v5 countryCode:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  digits = [(TUPhoneNumber *)self digits];
  [coderCopy encodeObject:digits forKey:@"Digits"];

  countryCode = [(TUPhoneNumber *)self countryCode];
  [coderCopy encodeObject:countryCode forKey:@"CountryCode"];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    phoneNumberRef = [(TUPhoneNumber *)self phoneNumberRef];
    phoneNumberRef2 = [equalCopy phoneNumberRef];
    v7 = 0;
    if (phoneNumberRef && phoneNumberRef2)
    {
      v7 = CFEqual(phoneNumberRef, phoneNumberRef2) != 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)areDigits:(id)digits equalToDigits:(id)toDigits usingCountryCode:(id)code
{
  codeCopy = code;
  toDigitsCopy = toDigits;
  v10 = [self phoneNumberWithDigits:digits countryCode:codeCopy];
  v11 = [self phoneNumberWithDigits:toDigitsCopy countryCode:codeCopy];

  LOBYTE(toDigitsCopy) = [v10 isEqual:v11];
  return toDigitsCopy;
}

@end