@interface VSJavaScriptDataValueTransformer
- (id)reverseTransformedValue:(id)value;
- (id)transformedValue:(id)value;
@end

@implementation VSJavaScriptDataValueTransformer

- (id)transformedValue:(id)value
{
  valueCopy = value;
  if ([valueCopy isString])
  {
    toString = [valueCopy toString];
    if (!toString || (v5 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:toString options:0]) == 0)
    {
      v5 = [toString dataUsingEncoding:4];
    }
  }

  else
  {
    context = [valueCopy context];
    jSGlobalContextRef = [context JSGlobalContextRef];

    jSValueRef = [valueCopy JSValueRef];
    if (JSValueGetTypedArrayType(jSGlobalContextRef, jSValueRef, 0) == kJSTypedArrayTypeArrayBuffer && JSValueIsObject(jSGlobalContextRef, jSValueRef))
    {
      ArrayBufferByteLength = JSObjectGetArrayBufferByteLength(jSGlobalContextRef, jSValueRef, 0);
      v5 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:JSObjectGetArrayBufferBytesPtr(jSGlobalContextRef length:{jSValueRef, 0), ArrayBufferByteLength}];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)reverseTransformedValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    object = [valueCopy object];

    valueCopy = object;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    currentContext = [MEMORY[0x277CD4640] currentContext];
    v6 = [valueCopy base64EncodedStringWithOptions:0];
    v7 = [MEMORY[0x277CD4658] valueWithObject:v6 inContext:currentContext];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end