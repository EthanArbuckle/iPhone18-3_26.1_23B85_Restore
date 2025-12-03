@interface __SharedStringStorage
- (_TtCs21__SharedStringStorage)init;
- (const)_fastCStringContents:(char)contents;
- (const)cStringUsingEncoding:(unint64_t)encoding;
- (unint64_t)fastestEncoding;
- (unint64_t)hash;
@end

@implementation __SharedStringStorage

- (_TtCs21__SharedStringStorage)init
{
  _swift_stdlib_reportUnimplementedInitializerInFile("Swift.__SharedStringStorage", 27, "init()", 6, "Swift/StringStorage.swift", 25, 672, 22, 0);
  __break(1u);
  return result;
}

- (unint64_t)hash
{
  v2 = *self->_countAndFlags;
  if (v2 < 0)
  {
    return _swift_stdlib_CFStringHashCString(*self->start, v2 & 0xFFFFFFFFFFFFLL);
  }

  else
  {
    return _swift_stdlib_CFStringHashNSString();
  }
}

- (unint64_t)fastestEncoding
{
  if (*self->_countAndFlags < 0)
  {
    return 1;
  }

  else
  {
    return 4;
  }
}

- (const)_fastCStringContents:(char)contents
{
  if ((*self->_countAndFlags & 0x8000000000000000) != 0)
  {
    return *self->start;
  }

  else
  {
    return 0;
  }
}

- (const)cStringUsingEncoding:(unint64_t)encoding
{
  if ((*self->_countAndFlags & 0x8000000000000000) != 0)
  {
    if (encoding > 0x1E || ((1 << encoding) & 0x40000012) == 0)
    {
      return _swift_stdlib_NSStringCStringUsingEncodingTrampoline(self, encoding);
    }
  }

  else if (encoding != 4)
  {
    return _swift_stdlib_NSStringCStringUsingEncodingTrampoline(self, encoding);
  }

  return *self->start;
}

@end