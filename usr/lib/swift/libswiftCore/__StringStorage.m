@interface __StringStorage
- (_TtCs15__StringStorage)init;
- (const)cStringUsingEncoding:(unint64_t)a3;
- (unint64_t)fastestEncoding;
- (unint64_t)hash;
@end

@implementation __StringStorage

- (_TtCs15__StringStorage)init
{
  _swift_stdlib_reportUnimplementedInitializerInFile("Swift.__StringStorage", 21, "init()", 6, "Swift/StringStorage.swift", 25, 258, 22, 0);
  __break(1u);
  return result;
}

- (unint64_t)hash
{
  v2 = *self->_countAndFlags;
  if (v2 < 0)
  {
    return _swift_stdlib_CFStringHashCString(&self[1], v2 & 0xFFFFFFFFFFFFLL);
  }

  else
  {
    return _swift_stdlib_CFStringHashNSString();
  }
}

- (const)cStringUsingEncoding:(unint64_t)a3
{
  if ((*self->_countAndFlags & 0x8000000000000000) != 0)
  {
    if (a3 > 0x1E || ((1 << a3) & 0x40000012) == 0)
    {
      return _swift_stdlib_NSStringCStringUsingEncodingTrampoline(self, a3);
    }
  }

  else if (a3 != 4)
  {
    return _swift_stdlib_NSStringCStringUsingEncodingTrampoline(self, a3);
  }

  return &self[1];
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

@end