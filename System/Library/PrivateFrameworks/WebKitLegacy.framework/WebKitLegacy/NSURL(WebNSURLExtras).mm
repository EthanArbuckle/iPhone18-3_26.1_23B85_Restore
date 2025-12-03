@interface NSURL(WebNSURLExtras)
+ (uint64_t)_web_URLWithDataAsString:()WebNSURLExtras relativeToURL:;
- (BOOL)_web_isEmpty;
- (id)_webkit_canonicalize_with_wtf;
- (uint64_t)_web_URLCString;
- (uint64_t)_webkit_URLFromURLOrSchemelessFileURL;
- (uint64_t)_webkit_isFileURL;
- (uint64_t)_webkit_isJavaScriptURL;
- (uint64_t)_webkit_scriptIfJavaScriptURL;
- (uint64_t)_webkit_suggestedFilenameWithMIMEType:()WebNSURLExtras;
- (void)_web_hostData;
- (void)_web_hostString;
- (void)_web_originalDataAsString;
@end

@implementation NSURL(WebNSURLExtras)

+ (uint64_t)_web_URLWithDataAsString:()WebNSURLExtras relativeToURL:
{
  v5 = [objc_msgSend(a3 "_webkit_stringByTrimmingWhitespace")];

  return MEMORY[0x1EEDCA8D8](v5, a4);
}

- (void)_web_originalDataAsString
{
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  result = [v2 initWithData:WTF::originalURLData(self encoding:{v3), 5}];
  if (result)
  {
    v5 = result;
    v6 = result;
    return v5;
  }

  return result;
}

- (BOOL)_web_isEmpty
{
  if (CFURLGetBaseURL(self))
  {
    return [WTF::originalURLData(self v2)] == 0;
  }

  else
  {
    return CFURLGetBytes(self, 0, 0) == 0;
  }
}

- (uint64_t)_web_URLCString
{
  data = [MEMORY[0x1E695DF88] data];
  [data appendData:{WTF::originalURLData(self, v3)}];
  [data appendBytes:&unk_1C7B33990 length:1];

  return [data bytes];
}

- (id)_webkit_canonicalize_with_wtf
{
  MEMORY[0x1CCA63960](&v8, self);
  if (v9)
  {
    WTF::URL::createCFURL(&v7, &v8);
    v2 = v7;
    v7 = 0;
    if (v2)
    {
      v3 = v2;
      v4 = v7;
      v7 = 0;
      if (v4)
      {
      }
    }
  }

  else
  {
    v2 = 0;
  }

  v5 = v8;
  v8 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v1);
  }

  return v2;
}

- (uint64_t)_webkit_isJavaScriptURL
{
  _web_originalDataAsString = [self _web_originalDataAsString];

  return [_web_originalDataAsString _webkit_isJavaScriptURL];
}

- (uint64_t)_webkit_scriptIfJavaScriptURL
{
  absoluteString = [self absoluteString];

  return [absoluteString _webkit_scriptIfJavaScriptURL];
}

- (uint64_t)_webkit_isFileURL
{
  _web_originalDataAsString = [self _web_originalDataAsString];

  return [_web_originalDataAsString _webkit_isFileURL];
}

- (void)_web_hostData
{
  v4 = WTF::dataForURLComponentType(self, 8, a3);
  if ([v4 _web_isCaseInsensitiveEqualToCString:"localhost"] && (objc_msgSend(-[WTF _web_schemeData](self, "_web_schemeData"), "_web_isCaseInsensitiveEqualToCString:", "file") & 1) != 0)
  {
    return 0;
  }

  return v4;
}

- (void)_web_hostString
{
  result = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:objc_msgSend(self encoding:{"_web_hostData"), 4}];
  if (result)
  {
    v2 = result;
    v3 = result;
    return v2;
  }

  return result;
}

- (uint64_t)_webkit_suggestedFilenameWithMIMEType:()WebNSURLExtras
{
  MEMORY[0x1CCA63A40](&v8, a3);
  result = suggestedFilenameWithMIMEType(self, &v8);
  v6 = v8;
  v8 = 0;
  if (v6)
  {
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v7 = result;
      WTF::StringImpl::destroy(v6, v5);
      return v7;
    }
  }

  return result;
}

- (uint64_t)_webkit_URLFromURLOrSchemelessFileURL
{
  if ([self scheme])
  {
    return self;
  }

  v3 = MEMORY[0x1E695DFF8];
  v4 = [@"file:" stringByAppendingString:{objc_msgSend(self, "absoluteString")}];

  return [v3 URLWithString:v4];
}

@end