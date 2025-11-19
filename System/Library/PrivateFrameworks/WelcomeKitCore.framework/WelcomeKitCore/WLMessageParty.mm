@interface WLMessageParty
+ (id)_guessIccForNumber:(id)a3;
+ (id)_normalize:(id)a3;
- (id)_initWithAddress:(id)a3 addCountryCode:(BOOL)a4 sqlController:(id)a5;
@end

@implementation WLMessageParty

- (id)_initWithAddress:(id)a3 addCountryCode:(BOOL)a4 sqlController:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v80.receiver = self;
  v80.super_class = WLMessageParty;
  v10 = [(WLMessageParty *)&v80 init];
  if (!v10)
  {
    goto LABEL_48;
  }

  if ([(__CFString *)v8 isEqualToString:@"insert-address-token"])
  {
    _WLLog();

    v8 = &stru_2882CBB40;
  }

  v11 = [(__CFString *)v8 length];
  v10->_isPhoneNumber = v11 != 0;
  if (v11 && [(__CFString *)v8 length])
  {
    v12 = 0;
    while (1)
    {
      v13 = [(__CFString *)v8 characterAtIndex:v12];
      if ((v13 - 97) < 0x1A || (v13 - 64) <= 0x1A)
      {
        break;
      }

      if (++v12 >= [(__CFString *)v8 length])
      {
        goto LABEL_13;
      }
    }

    v10->_isPhoneNumber = 0;
  }

LABEL_13:
  isPhoneNumber = v10->_isPhoneNumber;
  if (isPhoneNumber)
  {
    v16 = [MEMORY[0x277CBEAF8] currentLocale];
    v17 = [v16 countryCode];

    if (![(__CFString *)v17 length])
    {

      v17 = @"US";
    }

    v18 = PNCopyBestGuessNormalizedNumberForCountry();
    if (v18)
    {
      v19 = v18;
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:v18];
      address = v10->_address;
      v10->_address = v20;

      v71 = v10->_address;
      _WLLog();
      free(v19);
      v22 = [(NSString *)v10->_address length:v8];
      v10->_isPhoneNumber = v22 != 0;
      if (v22)
      {
        v78 = *(MEMORY[0x277D007E8] + 32);
        v79 = *(MEMORY[0x277D007E8] + 48);
        v76 = *MEMORY[0x277D007E8];
        v77 = *(MEMORY[0x277D007E8] + 16);
        [(NSString *)v10->_address UTF8String];
        v23 = PNDecomposeForCountry();
        v75 = v23;
        v74 = v10->_address;
        v24 = [MEMORY[0x277CCABB0] numberWithBool:v23];
        v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:DWORD2(v77)];
        v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:DWORD2(v78)];
        v73 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:DWORD2(v79)];
        v68 = v74;
        v72 = v24;
        _WLLog();

        if ((v75 & 1) == 0)
        {
          v10->_isPhoneNumber = 0;
          v69 = v10->_address;
          _WLLog();
          [WLMessageParty _normalize:v8, v69, v24, v76, v77, v25, v78, v26, v79, v73];
          v8 = v46 = v8;
LABEL_44:

          goto LABEL_45;
        }

        ccAcNumber = v10->_ccAcNumber;
        v10->_ccAcNumber = &stru_2882CBB40;

        if (*(&v76 + 1))
        {
          v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:{v74, v24, v76, v77, v25, v78, v26, v79, v73}];
          np = v10->_np;
          v10->_np = v28;
        }

        if (v77 && DWORD2(v77))
        {
          v30 = v10->_ccAcNumber;
          v31 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v77 length:DWORD2(v77) encoding:4];
          v32 = [(NSString *)v30 stringByAppendingString:v31];
          v33 = v10->_ccAcNumber;
          v10->_ccAcNumber = v32;
        }

        if (v78 && DWORD2(v78))
        {
          v34 = v10->_ccAcNumber;
          v35 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v78 length:DWORD2(v78) encoding:4];
          v36 = [(NSString *)v34 stringByAppendingString:v35];
          v37 = v10->_ccAcNumber;
          v10->_ccAcNumber = v36;
        }

        if (v79 && DWORD2(v79))
        {
          v38 = v10->_ccAcNumber;
          v39 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v79 length:DWORD2(v79) encoding:4];
          v40 = [(NSString *)v38 stringByAppendingString:v39];
          v41 = v10->_ccAcNumber;
          v10->_ccAcNumber = v40;
        }

        v42 = v10->_np;
        v43 = v10->_ccAcNumber;
        if (v42)
        {
          v44 = [(NSString *)v42 stringByAppendingString:v43];
        }

        else
        {
          v44 = v43;
        }

        v46 = v44;
        if ([(__CFString *)v44 length])
        {
          v47 = [(NSString *)v10->_address length];
          if (v47 >= [(__CFString *)v46 length])
          {
            v48 = [(NSString *)v10->_address length];
            v49 = [(__CFString *)v46 length];
            v50 = [(NSString *)v10->_address substringFromIndex:v48 - v49];
            if ([v50 isEqualToString:v46])
            {
              if (v48 == v49)
              {
                v51 = 0;
              }

              else
              {
                v51 = [(NSString *)v10->_address substringToIndex:v48 - v49];
              }

              icc = v10->_icc;
              v10->_icc = v51;

              v56 = v10->_icc;
              if (v56)
              {
                v57 = [(NSString *)v56 hasPrefix:@"+"];
                v58 = v10->_icc;
                if (!v57)
                {
                  v59 = [@"+" stringByAppendingString:v10->_icc];
                  v60 = v10->_icc;
                  v10->_icc = v59;

                  v58 = v10->_icc;
                }
              }

              else
              {
                v58 = 0;
              }

              if (!v58 && v6)
              {
                v61 = [v9 messagePhoneNumberIccForCcAcNumber:v10->_ccAcNumber];
                v62 = v10->_icc;
                v10->_icc = v61;

                v70 = v10->_icc;
                v72 = v10->_ccAcNumber;
                _WLLog();
                v58 = v10->_icc;
                if (v58)
                {
                  goto LABEL_59;
                }

                v63 = [WLMessageParty _guessIccForNumber:v46, v70, v72];
                v64 = v10->_icc;
                v10->_icc = v63;

                v70 = v10->_icc;
                v72 = v46;
                _WLLog();
                v58 = v10->_icc;
              }

              if (!v58)
              {
                v65 = v10->_ccAcNumber;
                goto LABEL_61;
              }

LABEL_59:
              v65 = [(NSString *)v58 stringByAppendingString:v10->_ccAcNumber, v70, v72];
LABEL_61:
              v66 = v10->_address;
              v10->_address = v65;

              goto LABEL_43;
            }
          }
        }

        _WLLog();
        v10->_isPhoneNumber = 0;
        [WLMessageParty _normalize:v8, v46, v8];
        v8 = v50 = v8;
LABEL_43:

        goto LABEL_44;
      }
    }

    else
    {
      v67 = v8;
      _WLLog();
      v10->_isPhoneNumber = 0;
    }

    v45 = [WLMessageParty _normalize:v8, v67];

    v8 = v45;
LABEL_45:

    isPhoneNumber = v10->_isPhoneNumber;
  }

  if (!isPhoneNumber)
  {
    objc_storeStrong(&v10->_address, v8);
    v52 = v10->_icc;
    v10->_icc = 0;

    v53 = v10->_np;
    v10->_np = 0;

    objc_storeStrong(&v10->_ccAcNumber, v8);
  }

LABEL_48:

  return v10;
}

+ (id)_guessIccForNumber:(id)a3
{
  v3 = a3;
  if (_guessIccForNumber__onceToken != -1)
  {
    +[WLMessageParty _guessIccForNumber:];
  }

  if (_guessIccForNumber__icc)
  {
    v4 = [_guessIccForNumber__icc stringByAppendingString:v3];
    v12 = *MEMORY[0x277D007E8];
    v13 = *(MEMORY[0x277D007E8] + 16);
    v14 = *(MEMORY[0x277D007E8] + 32);
    v15 = *(MEMORY[0x277D007E8] + 48);
    [v4 UTF8String];
    v5 = PNDecomposeForCountry();
    v6 = [MEMORY[0x277CCABB0] numberWithBool:v5];
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:DWORD2(v13)];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:DWORD2(v14)];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:DWORD2(v15)];
    _WLLog();

    if (v5)
    {
      v9 = _guessIccForNumber__icc;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __37__WLMessageParty__guessIccForNumber___block_invoke()
{
  v0 = [MEMORY[0x277CBEAF8] currentLocale];
  v1 = [v0 countryCode];
  v2 = _guessIccForNumber__countryCode;
  _guessIccForNumber__countryCode = v1;

  if (![_guessIccForNumber__countryCode length])
  {
    v3 = _guessIccForNumber__countryCode;
    _guessIccForNumber__countryCode = @"US";
  }

  v4 = _PNCopyInternationalCodeForCountry();
  v5 = _guessIccForNumber__icc;
  _guessIccForNumber__icc = v4;

  v6 = [_guessIccForNumber__icc length];
  v7 = _guessIccForNumber__icc;
  if (v6)
  {
    v6 = [@"+" stringByAppendingString:_guessIccForNumber__icc];
    v7 = _guessIccForNumber__icc;
  }

  _guessIccForNumber__icc = v6;

  return _WLLog();
}

+ (id)_normalize:(id)a3
{
  v3 = _normalize__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[WLMessageParty _normalize:];
  }

  v5 = [v4 hasPrefix:@"+"];
  v6 = [v4 stringByReplacingOccurrencesOfString:@"[^0-9]" withString:&stru_2882CBB40 options:1024 range:{0, objc_msgSend(v4, "length")}];

  if (v5)
  {
    v7 = [@"+" stringByAppendingString:v6];
  }

  else
  {
    if ([v6 hasPrefix:@"0"])
    {
      v8 = [v6 substringFromIndex:1];

      v6 = v8;
    }

    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"+%@%@", _normalize__internationalCallingCode, v6];
  }

  v9 = v7;

  return v9;
}

void __29__WLMessageParty__normalize___block_invoke()
{
  v0 = [MEMORY[0x277CBEAF8] currentLocale];
  v5 = [v0 countryCode];

  if ([(__CFString *)v5 length])
  {
    v1 = v5;
  }

  else
  {

    v1 = @"US";
  }

  v6 = v1;
  v2 = _PNCopyInternationalCodeForCountry();
  v3 = _normalize__internationalCallingCode;
  _normalize__internationalCallingCode = v2;

  if (![_normalize__internationalCallingCode length])
  {
    v4 = _normalize__internationalCallingCode;
    _normalize__internationalCallingCode = @"1";
  }

  _WLLog();
}

@end