@interface CHChannelEnum
- (id)enabledStateForStrings;
- (id)intValuesForStrings;
- (id)stringAtIndex:(unint64_t)a3;
- (id)stringValue;
- (id)stringValueAtTime:(id *)a3;
- (id)strings;
- (int)defaultIntValue;
- (int)intValue;
- (int)intValueAtTime:(id *)a3;
- (int)intValueForIndex:(int)a3;
- (unint64_t)stringCount;
- (void)ozChannel;
- (void)setCurveIntValue:(int)a3 atTime:(id *)a4 options:(unsigned int)a5;
- (void)setCurveStringValue:(id)a3 atTime:(id *)a4 options:(unsigned int)a5;
- (void)setDefaultIntValue:(int)a3;
- (void)setEnabledStateForStrings:(id)a3;
- (void)setIntValue:(int)a3;
- (void)setIntValuesForStrings:(id)a3;
- (void)setStringValue:(id)a3;
- (void)setStrings:(id)a3;
- (void)setStringsFromChannel:(id)a3;
- (void)setStringsWithArray:(id)a3;
@end

@implementation CHChannelEnum

- (void)ozChannel
{
  result = self->super.super._pOZChannel;
  if (result)
  {
  }

  return result;
}

- (int)intValueAtTime:(id *)a3
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v5 = 0;
  }

  (*(v5->var0 + 42))(&v7, v5, a3);
  return OZChannel::getValueAsInt(v5, &v7, 0.0);
}

- (int)intValue
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  return OZChannel::getInitialValue(pOZChannel);
}

- (int)intValueForIndex:(int)a3
{
  if (*(v4 + 22) == *(v4 + 21))
  {
    return a3;
  }

  return OZChannelEnum::getTag(v4, a3);
}

- (id)stringValueAtTime:(id *)a3
{
  v5 = [(CHChannelEnum *)self intValuesForStrings];
  v10 = *a3;
  v6 = [(CHChannelEnum *)self intValueAtTime:&v10];
  v7 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:v6];
  v8 = [v5 allKeysForObject:v7];

  return [v8 lastObject];
}

- (id)stringValue
{
  v3 = [(CHChannelEnum *)self intValuesForStrings];
  v4 = [(CHChannelEnum *)self intValue];
  v5 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:v4];
  v6 = [v3 allKeysForObject:v5];

  return [v6 lastObject];
}

- (void)setCurveIntValue:(int)a3 atTime:(id *)a4 options:(unsigned int)a5
{
  v5 = a5;
  Instance = OZCoreGlobals::getInstance(self);
  v10 = *(Instance + 8);
  *(OZCoreGlobals::getInstance(Instance) + 8) = v5 & 1;
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v12 = 0;
  }

  if ((~a4->var2 & 0x11) != 0)
  {
    (*(v12->var0 + 42))(v15, v12, a4);
    v14.n128_f64[0] = a3;
    v13 = (*(v12->var0 + 89))(v12, v15, 0, v14);
  }

  else
  {
    v13 = OZChannel::setInitialValue(v12, a3, 0);
  }

  *(OZCoreGlobals::getInstance(v13) + 8) = v10;
}

- (void)setIntValue:(int)a3
{
  v3 = *MEMORY[0x277CC0888];
  v4 = *(MEMORY[0x277CC0888] + 16);
  [(CHChannelEnum *)self setCurveIntValue:*&a3 atTime:&v3 options:0];
}

- (void)setCurveStringValue:(id)a3 atTime:(id *)a4 options:(unsigned int)a5
{
  v5 = *&a5;
  v8 = [-[CHChannelEnum intValuesForStrings](self "intValuesForStrings")];
  if (v8)
  {
    v9 = [v8 intValue];
    v10 = *&a4->var0;
    var3 = a4->var3;
    [(CHChannelEnum *)self setCurveIntValue:v9 atTime:&v10 options:v5];
  }
}

- (void)setStringValue:(id)a3
{
  v3 = *MEMORY[0x277CC0888];
  v4 = *(MEMORY[0x277CC0888] + 16);
  [(CHChannelEnum *)self setCurveStringValue:a3 atTime:&v3 options:0];
}

- (int)defaultIntValue
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  return OZChannel::getDefaultValue(pOZChannel);
}

- (void)setDefaultIntValue:(int)a3
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v5 = 0;
  }

  OZChannel::setDefaultValue(v5, a3);
  v6 = (*(v5->var0 + 64))(v5);
  var0 = v5->var0;
  if (v6)
  {
    if ((var0[104])(v5))
    {
      return;
    }
  }

  else if ((var0[62])(v5, 1))
  {
    return;
  }

  v8 = *(v5->var0 + 36);

  v8(v5, 0);
}

- (unint64_t)stringCount
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  return OZChannelEnum::getNumberOfStrings(pOZChannel);
}

- (id)stringAtIndex:(unint64_t)a3
{
  v3 = a3;
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  String = OZChannelEnum::getString(pOZChannel, v3);

  return PCString::ns_str(String);
}

- (id)strings
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v3 = 0;
  }

  NumberOfStrings = OZChannelEnum::getNumberOfStrings(v3);
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:NumberOfStrings];
  if (NumberOfStrings)
  {
    for (i = 0; i != NumberOfStrings; ++i)
    {
      String = OZChannelEnum::getString(v3, i);
      [v5 addObject:PCString::ns_str(String)];
    }
  }

  return v5;
}

- (void)setStringsWithArray:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v5 = 0;
  }

  PCSharedCount::PCSharedCount(&v15);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if (!PCString::empty(&v15))
        {
          PCString::append(&v15, ";");
        }

        v10.var0 = 0;
        PCString::set(&v10, v9);
        PCString::append(&v15, &v10);
        PCString::~PCString(&v10);
        ++v8;
      }

      while (v6 != v8);
      v6 = [a3 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v6);
  }

  (*(*v5 + 848))(v5, &v15, 1);
  PCString::~PCString(&v15);
}

- (void)setStrings:(id)a3
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v5 = 0;
  }

  v6.var0 = 0;
  PCString::set(&v6, a3);
  (*(*v5 + 848))(v5, &v6, 1);
  PCString::~PCString(&v6);
}

- (void)setStringsFromChannel:(id)a3
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v5 = 0;
  }

  v6 = [a3 ozChannel];
  v7 = *(*v5 + 856);

  v7(v5, v6);
}

- (id)intValuesForStrings
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v4 = 0;
  }

  v5 = [(CHChannelEnum *)self stringCount];
  v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v5];
  if (v5)
  {
    v7 = 0;
    v8 = 0;
    v10 = *(v4 + 21);
    v9 = *(v4 + 22);
    do
    {
      v11 = [(CHChannelEnum *)self stringAtIndex:v7];
      Tag = v8;
      if (v9 != v10)
      {
        Tag = OZChannelEnum::getTag(v4, v8);
      }

      v13 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:Tag];
      [v6 setObject:v13 forKey:v11];

      v7 = (v8 + 1);
      v8 = v7;
    }

    while (v5 > v7);
  }

  return v6;
}

- (void)setIntValuesForStrings:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v6 = 0;
  }

  v7 = [(CHChannelEnum *)self stringCount];
  v8 = v10 - ((4 * v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      *&v8[4 * i] = [objc_msgSend(a3 objectForKey:{-[CHChannelEnum stringAtIndex:](self, "stringAtIndex:", i)), "intValue"}];
    }
  }

  OZChannelEnum::setTags(v6, v8, v7);
}

- (id)enabledStateForStrings
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v4 = 0;
  }

  v5 = [(CHChannelEnum *)self stringCount];
  v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v5];
  if (v5)
  {
    v7 = 0;
    v8 = *(v4 + 25);
    v9 = 1;
    do
    {
      v10 = [(CHChannelEnum *)self stringAtIndex:v7];
      if (v8)
      {
        EnabledState = OZChannelEnum::getEnabledState(v4, v7);
      }

      else
      {
        EnabledState = 1;
      }

      v12 = [objc_alloc(MEMORY[0x277CCABB0]) initWithBool:EnabledState];
      [v6 setObject:v12 forKey:v10];

      v7 = v9;
    }

    while (v5 > v9++);
  }

  return v6;
}

- (void)setEnabledStateForStrings:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v6 = 0;
  }

  v7 = [(CHChannelEnum *)self stringCount];
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      v8[i] = [objc_msgSend(a3 objectForKey:{-[CHChannelEnum stringAtIndex:](self, "stringAtIndex:", i)), "BOOLValue"}];
    }
  }

  OZChannelEnum::setEnabledStates(v6, v8, v7);
}

@end