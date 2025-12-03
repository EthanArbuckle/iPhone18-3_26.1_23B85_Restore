@interface CHChannelEnum
- (id)enabledStateForStrings;
- (id)intValuesForStrings;
- (id)stringAtIndex:(unint64_t)index;
- (id)stringValue;
- (id)stringValueAtTime:(id *)time;
- (id)strings;
- (int)defaultIntValue;
- (int)intValue;
- (int)intValueAtTime:(id *)time;
- (int)intValueForIndex:(int)index;
- (unint64_t)stringCount;
- (void)ozChannel;
- (void)setCurveIntValue:(int)value atTime:(id *)time options:(unsigned int)options;
- (void)setCurveStringValue:(id)value atTime:(id *)time options:(unsigned int)options;
- (void)setDefaultIntValue:(int)value;
- (void)setEnabledStateForStrings:(id)strings;
- (void)setIntValue:(int)value;
- (void)setIntValuesForStrings:(id)strings;
- (void)setStringValue:(id)value;
- (void)setStrings:(id)strings;
- (void)setStringsFromChannel:(id)channel;
- (void)setStringsWithArray:(id)array;
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

- (int)intValueAtTime:(id *)time
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v5 = 0;
  }

  (*(v5->var0 + 42))(&v7, v5, time);
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

- (int)intValueForIndex:(int)index
{
  if (*(v4 + 22) == *(v4 + 21))
  {
    return index;
  }

  return OZChannelEnum::getTag(v4, index);
}

- (id)stringValueAtTime:(id *)time
{
  intValuesForStrings = [(CHChannelEnum *)self intValuesForStrings];
  v10 = *time;
  v6 = [(CHChannelEnum *)self intValueAtTime:&v10];
  v7 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:v6];
  v8 = [intValuesForStrings allKeysForObject:v7];

  return [v8 lastObject];
}

- (id)stringValue
{
  intValuesForStrings = [(CHChannelEnum *)self intValuesForStrings];
  intValue = [(CHChannelEnum *)self intValue];
  v5 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:intValue];
  v6 = [intValuesForStrings allKeysForObject:v5];

  return [v6 lastObject];
}

- (void)setCurveIntValue:(int)value atTime:(id *)time options:(unsigned int)options
{
  optionsCopy = options;
  Instance = OZCoreGlobals::getInstance(self);
  v10 = *(Instance + 8);
  *(OZCoreGlobals::getInstance(Instance) + 8) = optionsCopy & 1;
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v12 = 0;
  }

  if ((~time->var2 & 0x11) != 0)
  {
    (*(v12->var0 + 42))(v15, v12, time);
    v14.n128_f64[0] = value;
    v13 = (*(v12->var0 + 89))(v12, v15, 0, v14);
  }

  else
  {
    v13 = OZChannel::setInitialValue(v12, value, 0);
  }

  *(OZCoreGlobals::getInstance(v13) + 8) = v10;
}

- (void)setIntValue:(int)value
{
  v3 = *MEMORY[0x277CC0888];
  v4 = *(MEMORY[0x277CC0888] + 16);
  [(CHChannelEnum *)self setCurveIntValue:*&value atTime:&v3 options:0];
}

- (void)setCurveStringValue:(id)value atTime:(id *)time options:(unsigned int)options
{
  v5 = *&options;
  v8 = [-[CHChannelEnum intValuesForStrings](self "intValuesForStrings")];
  if (v8)
  {
    intValue = [v8 intValue];
    v10 = *&time->var0;
    var3 = time->var3;
    [(CHChannelEnum *)self setCurveIntValue:intValue atTime:&v10 options:v5];
  }
}

- (void)setStringValue:(id)value
{
  v3 = *MEMORY[0x277CC0888];
  v4 = *(MEMORY[0x277CC0888] + 16);
  [(CHChannelEnum *)self setCurveStringValue:value atTime:&v3 options:0];
}

- (int)defaultIntValue
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  return OZChannel::getDefaultValue(pOZChannel);
}

- (void)setDefaultIntValue:(int)value
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v5 = 0;
  }

  OZChannel::setDefaultValue(v5, value);
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

- (id)stringAtIndex:(unint64_t)index
{
  indexCopy = index;
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  String = OZChannelEnum::getString(pOZChannel, indexCopy);

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

- (void)setStringsWithArray:(id)array
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
  v6 = [array countByEnumeratingWithState:&v11 objects:v16 count:16];
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
          objc_enumerationMutation(array);
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
      v6 = [array countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v6);
  }

  (*(*v5 + 848))(v5, &v15, 1);
  PCString::~PCString(&v15);
}

- (void)setStrings:(id)strings
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
  PCString::set(&v6, strings);
  (*(*v5 + 848))(v5, &v6, 1);
  PCString::~PCString(&v6);
}

- (void)setStringsFromChannel:(id)channel
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v5 = 0;
  }

  ozChannel = [channel ozChannel];
  v7 = *(*v5 + 856);

  v7(v5, ozChannel);
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

  stringCount = [(CHChannelEnum *)self stringCount];
  v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:stringCount];
  if (stringCount)
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

    while (stringCount > v7);
  }

  return v6;
}

- (void)setIntValuesForStrings:(id)strings
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

  stringCount = [(CHChannelEnum *)self stringCount];
  v8 = v10 - ((4 * stringCount + 15) & 0xFFFFFFFFFFFFFFF0);
  if (stringCount)
  {
    for (i = 0; i != stringCount; ++i)
    {
      *&v8[4 * i] = [objc_msgSend(strings objectForKey:{-[CHChannelEnum stringAtIndex:](self, "stringAtIndex:", i)), "intValue"}];
    }
  }

  OZChannelEnum::setTags(v6, v8, stringCount);
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

  stringCount = [(CHChannelEnum *)self stringCount];
  v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:stringCount];
  if (stringCount)
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

    while (stringCount > v9++);
  }

  return v6;
}

- (void)setEnabledStateForStrings:(id)strings
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

  stringCount = [(CHChannelEnum *)self stringCount];
  v8 = v10 - ((stringCount + 15) & 0xFFFFFFFFFFFFFFF0);
  if (stringCount)
  {
    for (i = 0; i != stringCount; ++i)
    {
      v8[i] = [objc_msgSend(strings objectForKey:{-[CHChannelEnum stringAtIndex:](self, "stringAtIndex:", i)), "BOOLValue"}];
    }
  }

  OZChannelEnum::setEnabledStates(v6, v8, stringCount);
}

@end