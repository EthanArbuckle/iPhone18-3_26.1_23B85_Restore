@interface VSJavaScriptDataValueTransformer
- (id)reverseTransformedValue:(id)a3;
- (id)transformedValue:(id)a3;
@end

@implementation VSJavaScriptDataValueTransformer

- (id)transformedValue:(id)a3
{
  v3 = a3;
  if ([v3 isString])
  {
    v4 = [v3 toString];
    if (!v4 || (v5 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v4 options:0]) == 0)
    {
      v5 = [v4 dataUsingEncoding:4];
    }
  }

  else
  {
    v6 = [v3 context];
    v7 = [v6 JSGlobalContextRef];

    v8 = [v3 JSValueRef];
    if (JSValueGetTypedArrayType(v7, v8, 0) == kJSTypedArrayTypeArrayBuffer && JSValueIsObject(v7, v8))
    {
      ArrayBufferByteLength = JSObjectGetArrayBufferByteLength(v7, v8, 0);
      v5 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:JSObjectGetArrayBufferBytesPtr(v7 length:{v8, 0), ArrayBufferByteLength}];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)reverseTransformedValue:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 object];

    v3 = v4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [MEMORY[0x277CD4640] currentContext];
    v6 = [v3 base64EncodedStringWithOptions:0];
    v7 = [MEMORY[0x277CD4658] valueWithObject:v6 inContext:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end