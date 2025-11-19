@interface IRDataConversion
+ (id)convertIRDataToNSDictionary:(id)a3;
@end

@implementation IRDataConversion

+ (id)convertIRDataToNSDictionary:(id)a3
{
  v3 = a3;
  if ([(applesauce::CF::DataRef *)v3 length])
  {
    applesauce::CF::DataRef::from_ns_noexcept(v3, &v23);
    v4 = CFURLCreateWithBytes(0, "temp", 4, 0, 0);
    v5 = v4;
    v22 = v4;
    if (!v4)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25F8D0](exception, "Could not construct");
    }

    CFRetain(v4);
    cf = v5;
    IR::IRDataAttributes::IRDataAttributes(v17, &cf, 0, 0, 2, 0, 0.0);
    if (cf)
    {
      CFRelease(cf);
    }

    v18 = 2;
    v6 = v23;
    if (v23)
    {
      CFRetain(v23);
    }

    v13 = 0;
    v14 = v6;
    __p = 0;
    v12 = 0;
    IR::IRData::IRData(&v15, v17, &v14, &__p);
    if (__p)
    {
      v12 = __p;
      operator delete(__p);
    }

    if (v14)
    {
      CFRelease(v14);
    }

    DictionaryIRData = IR::IRData::createDictionaryIRData(&v15, 1, v7);
    IR::IRData::~IRData(&v15);
    if (v21)
    {
      CFRelease(v21);
    }

    if (v20)
    {
      CFRelease(v20);
    }

    if (v19)
    {
      CFRelease(v19);
    }

    if (v17[0])
    {
      CFRelease(v17[0]);
    }

    if (v22)
    {
      CFRelease(v22);
    }

    if (v23)
    {
      CFRelease(v23);
    }
  }

  else
  {
    DictionaryIRData = 0;
  }

  return DictionaryIRData;
}

@end