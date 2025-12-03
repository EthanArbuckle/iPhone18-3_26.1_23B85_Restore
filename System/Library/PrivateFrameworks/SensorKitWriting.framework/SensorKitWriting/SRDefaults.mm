@interface SRDefaults
- (void)dealloc;
- (void)initWithDictionary:(void *)dictionary;
@end

@implementation SRDefaults

- (void)initWithDictionary:(void *)dictionary
{
  if (!dictionary)
  {
    return 0;
  }

  v9.receiver = dictionary;
  v9.super_class = SRDefaults;
  v3 = objc_msgSendSuper2(&v9, sel_init);
  if (v3)
  {
    v3[1] = [objc_msgSend(a2 objectForKeyedSubscript:{0x2876FFE10), "unsignedIntegerValue"}];
    v3[2] = [objc_msgSend(a2 objectForKeyedSubscript:{0x2876FFE30), "unsignedLongValue"}];
    v3[3] = [objc_msgSend(a2 objectForKeyedSubscript:{0x2876FFEB0), "unsignedLongValue"}];
    v3[4] = [objc_msgSend(a2 objectForKeyedSubscript:{0x2876FFE50), "unsignedLongValue"}];
    [objc_msgSend(a2 objectForKeyedSubscript:{0x2876FFE70), "floatValue"}];
    *(v3 + 10) = v4;
    [objc_msgSend(a2 objectForKeyedSubscript:{0x2876FFE90), "floatValue"}];
    *(v3 + 11) = v5;
    [objc_msgSend(a2 objectForKeyedSubscript:{0x2876FFED0), "floatValue"}];
    *(v3 + 8) = v6;
    [objc_msgSend(a2 objectForKeyedSubscript:{0x2876FFEF0), "floatValue"}];
    *(v3 + 18) = v7;
  }

  return v3;
}

- (void)dealloc
{
  self->_className = 0;

  self->_exportingClassName = 0;
  v3.receiver = self;
  v3.super_class = SRDefaults;
  [(SRDefaults *)&v3 dealloc];
}

@end