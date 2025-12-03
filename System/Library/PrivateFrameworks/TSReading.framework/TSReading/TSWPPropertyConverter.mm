@interface TSWPPropertyConverter
+ (id)mapCharacterPropertiesFromNS:(id)s;
+ (id)propertyMapToDictionary:(id)dictionary;
+ (void)initialize;
+ (void)mapCharacterPropertiesFromNS:(id)s toWP:(id)p;
+ (void)mapCharacterPropertiesFromStyle:(id)style secondaryStyle:(id)secondaryStyle toNS:(id)s stickyFont:(id *)font scale:(double)scale;
+ (void)mapCharacterPropertiesFromStyles:(id *)styles styleCount:(unsigned int)count toNS:(id)s stickyFont:(id *)font scale:(double)scale;
@end

@implementation TSWPPropertyConverter

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = malloc_type_calloc(3uLL, 0x10uLL, 0x10800409227ACB4uLL);
    sMappedProperties = v2;
    *v2 = *MEMORY[0x277D74078];
    v2[2] = 33;
    *(v2 + 2) = *MEMORY[0x277D74160];
    v2[6] = 31;
    *(v2 + 4) = *MEMORY[0x277D740D8];
    v2[10] = 41;
    v3 = malloc_type_calloc(5uLL, 0x10uLL, 0x10800409227ACB4uLL);
    sMappedColorProperties = v3;
    *v3 = *MEMORY[0x277D741E8];
    v3[2] = 24;
    *(v3 + 2) = *MEMORY[0x277D74148];
    v3[6] = 28;
    *(v3 + 4) = *MEMORY[0x277D740C0];
    v3[10] = 18;
    *(v3 + 6) = *MEMORY[0x277D74158];
    v3[14] = 32;
    *(v3 + 8) = *MEMORY[0x277D74068];
    v3[18] = 37;
  }
}

+ (void)mapCharacterPropertiesFromNS:(id)s toWP:(id)p
{
  keyEnumerator = [s keyEnumerator];
  nextObject = [keyEnumerator nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
    v9 = *MEMORY[0x277D741F0];
    v10 = *MEMORY[0x277D74150];
    v11 = *MEMORY[0x277D740A8];
    v28 = *MEMORY[0x277D740D0];
    v12 = 12.0;
    while ([v9 compare:nextObject2] && !objc_msgSend(nextObject2, "isEqualToString:", v10))
    {
      if ([v11 compare:nextObject2])
      {
        if ([v28 compare:nextObject2])
        {
          v19 = v11;
          for (i = 0; i != 80; i += 16)
          {
            if (![*(sMappedColorProperties + i) compare:nextObject2])
            {
              objc_opt_class();
              [s objectForKeyedSubscript:nextObject2];
              v25 = TSUDynamicCast();
              if (v25)
              {
                v26 = [MEMORY[0x277D6C2A8] colorWithUIColor:v25];
                [p setObject:v26 forProperty:*(sMappedColorProperties + i + 8)];
              }

              goto LABEL_41;
            }
          }

          v21 = 0;
          while ([*(sMappedProperties + v21) compare:nextObject2])
          {
            v21 += 16;
            if (v21 == 48)
            {
              goto LABEL_41;
            }
          }

          v27 = [s objectForKeyedSubscript:nextObject2];
          [p setBoxedObject:v27 forProperty:*(sMappedProperties + v21 + 8)];
LABEL_41:
          v11 = v19;
        }

        else
        {
          [objc_msgSend(s objectForKeyedSubscript:{nextObject2), "tsu_CGFloatValue"}];
          [p setCGFloatValue:35 forProperty:v24 / v12];
        }

        goto LABEL_16;
      }

      v22 = [MEMORY[0x277D6C2E8] fontWithPlatformFont:{objc_msgSend(s, "objectForKeyedSubscript:", nextObject2)}];
      [p setObject:objc_msgSend(v22 forProperty:{"fontName"), 16}];
      [v22 pointSize];
      v12 = v23;
      [p setCGFloatValue:17 forProperty:?];
      if (([p containsProperty:19] & 1) == 0)
      {
        [p setIntValue:0 forProperty:19];
      }

      if (([p containsProperty:20] & 1) == 0)
      {
        [p setIntValue:0 forProperty:20];
      }

      if (([p containsProperty:22] & 1) == 0)
      {
        [p setIntValue:0 forProperty:22];
      }

      if (([p containsProperty:31] & 1) == 0)
      {
        [p setFloatValue:31 forProperty:0.0];
      }

      if (([p containsProperty:26] & 1) == 0)
      {
        pCopy2 = p;
        v18 = 0;
        v16 = 26;
LABEL_15:
        [pCopy2 setIntValue:v18 forProperty:v16];
      }

LABEL_16:
      nextObject2 = [keyEnumerator nextObject];
      if (!nextObject2)
      {
        return;
      }
    }

    v13 = [objc_msgSend(s objectForKeyedSubscript:{nextObject2), "intValue"}];
    if (v13 == 9)
    {
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }

    if (v13)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    if ([nextObject2 isEqualToString:v10])
    {
      v16 = 26;
    }

    else
    {
      v16 = 22;
    }

    pCopy2 = p;
    v18 = v15;
    goto LABEL_15;
  }
}

+ (id)mapCharacterPropertiesFromNS:(id)s
{
  v4 = +[TSSPropertyMap propertyMap];
  [TSWPPropertyConverter mapCharacterPropertiesFromNS:s toWP:v4];
  return v4;
}

+ (void)mapCharacterPropertiesFromStyles:(id *)styles styleCount:(unsigned int)count toNS:(id)s stickyFont:(id *)font scale:(double)scale
{
  if (count)
  {
    countCopy = count;
    v14 = count - 1;
    do
    {
      v15 = styles[v14];
      if (v15)
      {
        [self mapCharacterPropertiesFromStyle:v15 toNS:s stickyFont:font scale:scale];
      }

      --v14;
    }

    while (v14 != -1);
    if (count != 1)
    {
      v16 = [objc_alloc(MEMORY[0x277D6C2E8]) initWithCTFont:{TSWPCreateFontForStylesWithScale(styles, countCopy, (scale * 100.0))}];
      if (v16)
      {
        v18 = v16;
        platformFont = [v16 platformFont];
        [s setObject:platformFont forKeyedSubscript:*MEMORY[0x277D740A8]];
      }
    }
  }
}

+ (id)propertyMapToDictionary:(id)dictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__TSWPPropertyConverter_propertyMapToDictionary___block_invoke;
  v6[3] = &unk_279D49FA0;
  v6[4] = dictionary;
  v6[5] = dictionary;
  [dictionary enumeratePropertiesAndObjectsUsingBlock:v6];
  return dictionary;
}

id *__49__TSWPPropertyConverter_propertyMapToDictionary___block_invoke(id *result, int a2, uint64_t a3, void *a4)
{
  v5 = result;
  if (a2 <= 25)
  {
    switch(a2)
    {
      case 16:
        [result[4] floatValueForProperty:17];
        v9 = v8;
        v10 = ([v5[4] intValueForProperty:19] & 0x7FFFFFFF) != 0;
        v11 = ([v5[4] intValueForProperty:20] & 0x7FFFFFFF) != 0;
        v12 = [objc_msgSend(MEMORY[0x277D6C2E8] fontWithName:a4 size:{v9), "convertFontToBold:italic:", v10, v11}];
        if (v12)
        {
          v13 = [v12 platformFont];
          [v5[5] setObject:v13 forKeyedSubscript:*MEMORY[0x277D740A8]];
        }

        break;
      case 18:
        objc_opt_class();
        result = TSUDynamicCast();
        if (!result)
        {
          return result;
        }

        v6 = [result platformColor];
        v7 = MEMORY[0x277D740C0];
        goto LABEL_27;
      case 22:
        break;
      default:
        return result;
    }

    v14 = [a4 integerValue];
    v15 = 9;
    if (v14 != 2)
    {
      v15 = 1;
    }

    if (v14)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v16];
    v7 = MEMORY[0x277D741F0];
LABEL_27:
    v20 = v5[5];
    v21 = *v7;

    return [v20 setObject:v6 forKeyedSubscript:v21];
  }

  if (a2 == 26)
  {
    v17 = [a4 integerValue];
    v18 = 9;
    if (v17 != 2)
    {
      v18 = 1;
    }

    if (v17)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v19];
    v7 = MEMORY[0x277D74150];
    goto LABEL_27;
  }

  if (a2 == 37 || a2 == 98)
  {
    objc_opt_class();
    result = TSUDynamicCast();
    if (result)
    {
      v6 = [result platformColor];
      v7 = MEMORY[0x277D74068];
      goto LABEL_27;
    }
  }

  return result;
}

+ (void)mapCharacterPropertiesFromStyle:(id)style secondaryStyle:(id)secondaryStyle toNS:(id)s stickyFont:(id *)font scale:(double)scale
{
  v43 = *MEMORY[0x277D85DE8];
  if (!style || !s)
  {
    return;
  }

  v40 = 0;
  if ([style valueForProperty:16] || objc_msgSend(secondaryStyle, "valueForProperty:", 16))
  {
    styleCopy2 = style;
    secondaryStyleCopy2 = secondaryStyle;
    v13 = secondaryStyle ? 2 : 1;
    v14 = [objc_alloc(MEMORY[0x277D6C2E8]) initWithCTFont:{TSWPCreateFontForStylesWithScale(&styleCopy2, v13, (scale * 100.0))}];
    v40 = v14;
    if (v14)
    {
      v15 = v14;
      platformFont = [v14 platformFont];
      [s setObject:platformFont forKeyedSubscript:*MEMORY[0x277D740A8]];
      if (font)
      {
        *font = v15;
      }

      v40 = 0;
    }
  }

  for (i = 0; i != 80; i += 16)
  {
    if ([style definesProperty:{*(sMappedColorProperties + i + 8), v40, styleCopy2, secondaryStyleCopy2, v43}])
    {
      objc_opt_class();
      [style valueForProperty:*(sMappedColorProperties + i + 8)];
      v18 = TSUDynamicCast();
      if (v18)
      {
        platformColor = [v18 platformColor];
        [s setObject:platformColor forKeyedSubscript:*(sMappedColorProperties + i)];
      }
    }
  }

  for (j = 0; j != 48; j += 16)
  {
    if (![style definesProperty:*(sMappedProperties + j + 8)])
    {
      continue;
    }

    v21 = String(*(sMappedProperties + j + 8));
    switch(v21)
    {
      case 2:
        [style floatValueForProperty:*(sMappedProperties + j + 8)];
        v25 = [MEMORY[0x277CCABB0] numberWithFloat:?];
        goto LABEL_27;
      case 1:
        v24 = [style intValueForProperty:*(sMappedProperties + j + 8)];
        v25 = [MEMORY[0x277CCABB0] numberWithInt:v24];
LABEL_27:
        [s setValue:v25 forKey:*(sMappedProperties + j)];
        continue;
      case 0:
        v22 = [style valueForProperty:*(sMappedProperties + j + 8)];
        if (v22)
        {
          v23 = v22;
          if (v22 != [MEMORY[0x277CBEB68] null])
          {
            [s setObject:v23 forKeyedSubscript:*(sMappedProperties + j)];
          }
        }

        break;
    }
  }

  if ([style definesProperty:22])
  {
    v26 = [style intValueForProperty:22];
    if (v26 == 2)
    {
      v27 = 9;
    }

    else
    {
      v27 = 1;
    }

    if (v26)
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    v29 = [MEMORY[0x277CCABB0] numberWithInt:v28];
    [s setObject:v29 forKeyedSubscript:*MEMORY[0x277D741F0]];
  }

  if ([style definesProperty:26])
  {
    v30 = [style intValueForProperty:26];
    if (v30 == 2)
    {
      v31 = 9;
    }

    else
    {
      v31 = 1;
    }

    if (v30)
    {
      v32 = v31;
    }

    else
    {
      v32 = 0;
    }

    v33 = [MEMORY[0x277CCABB0] numberWithInt:v32];
    [s setObject:v33 forKeyedSubscript:*MEMORY[0x277D74150]];
  }

  if ([style definesProperty:35])
  {
    [style floatValueForProperty:35];
    v35 = v34;
    v36 = 12.0;
    if (font && *font)
    {
      [*font pointSize];
    }

    v37 = [MEMORY[0x277CCABB0] numberWithDouble:v36 * v35];
    [s setObject:v37 forKeyedSubscript:*MEMORY[0x277D740D0]];
  }

  styleCopy2 = style;
  secondaryStyleCopy2 = secondaryStyle;
  v38 = TSWPResolvePropertyForStyles(&styleCopy2, 2uLL, 41, 0);
  if (v38)
  {
    intValue = [v38 intValue];
  }

  else
  {
    intValue = 0;
  }

  [self mapFontFeaturesFromStyle:style secondaryStyle:secondaryStyle toNS:s ioFont:&v40 ligatures:intValue];
  if (font)
  {
    *font = v40;
  }
}

@end