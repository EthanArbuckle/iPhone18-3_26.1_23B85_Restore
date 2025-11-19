_SFSHA256DigestOperation *_defaultDigestOperation()
{
  v0 = objc_alloc_init(_SFSHA256DigestOperation);

  return v0;
}

SFMaskGenerationFunction1 *_defaultMaskGenerationFunction()
{
  v0 = objc_alloc_init(SFMaskGenerationFunction1);

  return v0;
}

SFHMACPseudoRandomFunction *_defaultPseudoRandomFunction()
{
  v0 = objc_alloc_init(SFHMACPseudoRandomFunction);

  return v0;
}

uint64_t SFAccessibilityMakeWithMode@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = result;
  return result;
}

_SFECKeySpecifier *ECKeySpecifierForSecKey(__SecKey *a1)
{
  v1 = SecKeyCopyAttributes(a1);
  v2 = [(__CFDictionary *)v1 objectForKeyedSubscript:*MEMORY[0x277CDC018]];
  v3 = [v2 integerValue];
  if (v3 > 383)
  {
    if (v3 == 384)
    {
      v4 = 4;
    }

    else
    {
      if (v3 != 521)
      {
        goto LABEL_13;
      }

      v4 = 6;
    }
  }

  else
  {
    if (v3 != 224)
    {
      if (v3 == 256)
      {
        v4 = 2;
        goto LABEL_10;
      }

LABEL_13:
      v7 = MEMORY[0x277CBEAD8];
      v8 = *MEMORY[0x277CBE658];
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"unanticipated bitsize for EC key: %d", v3];
      v10 = [v7 exceptionWithName:v8 reason:v9 userInfo:0];
      v11 = v10;

      objc_exception_throw(v10);
    }

    v4 = 0;
  }

LABEL_10:
  v5 = [[_SFECKeySpecifier alloc] initWithCurve:v4];

  return v5;
}

uint64_t ECKeyBitSize(uint64_t a1)
{
  if (a1 > 3)
  {
    if (a1 > 5)
    {
      if (a1 != 6)
      {
        if (a1 != 7)
        {
          goto LABEL_15;
        }

        goto LABEL_18;
      }

      return 521;
    }

    else
    {
      if (a1 != 4)
      {
        goto LABEL_18;
      }

      return 384;
    }
  }

  else
  {
    if (a1 <= 1)
    {
      if (!a1)
      {
        return 224;
      }

      if (a1 != 1)
      {
LABEL_15:
        v2 = MEMORY[0x277CBEAD8];
        v3 = *MEMORY[0x277CBE658];
        v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"unknown SFEllipticCurve value: %d", a1];
        v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
        v6 = v5;

        objc_exception_throw(v5);
      }

LABEL_18:
      v7 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"compressed elliptic curves are not presently supported" userInfo:0];
      objc_exception_throw(v7);
    }

    if (a1 != 2)
    {
      goto LABEL_18;
    }

    return 256;
  }
}

uint64_t CCCurveParameters(uint64_t a1)
{
  if (a1 <= 3)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {

        JUMPOUT(0x2318E8730);
      }
    }

    else
    {
      if (!a1)
      {

        JUMPOUT(0x2318E8720);
      }

      if (a1 != 1)
      {
LABEL_23:
        v1 = MEMORY[0x277CBEAD8];
        v2 = *MEMORY[0x277CBE658];
        v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"unknown SFEllipticCurve value: %d", a1];
        v4 = [v1 exceptionWithName:v2 reason:v3 userInfo:0];
        v5 = v4;

        objc_exception_throw(v4);
      }
    }

LABEL_26:
    v6 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"compressed elliptic curves are not presently supported" userInfo:0];
    objc_exception_throw(v6);
  }

  if (a1 <= 5)
  {
    if (a1 == 4)
    {

      JUMPOUT(0x2318E8740);
    }

    goto LABEL_26;
  }

  if (a1 != 6)
  {
    if (a1 != 7)
    {
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  return MEMORY[0x282201600]();
}

void sub_22E52E438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22E52F3BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22E533D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22E534264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}