@interface PNRStringsFileReaderResult
- (BOOL)isEqualTo:(id)to;
- (BOOL)isPlaceHolderForEmpty;
- (BOOL)shouldOrderCityFirstForLanguage:(id)language phoneNumberInCC:(id)c;
- (PNRStringsFileReaderResult)initWithCountry:(id)country region:(id)region city:(id)city;
- (id)aggregateStringWhileInCountry:(id)country forLanguage:(id)language ccOfNumber:(id)number;
- (id)separatorForLanguage:(id)language;
- (int64_t)score;
@end

@implementation PNRStringsFileReaderResult

- (PNRStringsFileReaderResult)initWithCountry:(id)country region:(id)region city:(id)city
{
  countryCopy = country;
  regionCopy = region;
  cityCopy = city;
  v15.receiver = self;
  v15.super_class = PNRStringsFileReaderResult;
  v12 = [(PNRStringsFileReaderResult *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_country, country);
    objc_storeStrong(&v13->_region, region);
    objc_storeStrong(&v13->_city, city);
  }

  return v13;
}

- (BOOL)isEqualTo:(id)to
{
  toCopy = to;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = toCopy;
    country = [(PNRStringsFileReaderResult *)self country];
    country2 = [v5 country];
    if ([country isEqualToString:country2])
    {
      region = [(PNRStringsFileReaderResult *)self region];
      region2 = [v5 region];
      if ([region isEqualToString:region2])
      {
        city = [(PNRStringsFileReaderResult *)self city];
        city2 = [v5 city];
        v12 = [city isEqualToString:city2];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (int64_t)score
{
  country = [(PNRStringsFileReaderResult *)self country];

  if (country)
  {
    v4 = 10;
  }

  else
  {
    v4 = 1;
  }

  region = [(PNRStringsFileReaderResult *)self region];
  v6 = 2 * v4;
  if (region)
  {
    v4 *= 10;
  }

  else
  {
    v6 = 0;
  }

  if (country)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = v6;
  }

  city = [(PNRStringsFileReaderResult *)self city];

  v9 = 3 * v4;
  if (!city)
  {
    v9 = 0;
  }

  return v7 + v9;
}

- (id)separatorForLanguage:(id)language
{
  v16 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [&unk_28703B938 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    v7 = @" ";
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v12 != v6)
      {
        objc_enumerationMutation(&unk_28703B938);
      }

      if ([*(*(&v11 + 1) + 8 * v8) isEqualToString:languageCopy])
      {
        break;
      }

      if (v5 == ++v8)
      {
        v5 = [&unk_28703B938 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        v7 = @", ";
        break;
      }
    }
  }

  else
  {
    v7 = @", ";
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)shouldOrderCityFirstForLanguage:(id)language phoneNumberInCC:(id)c
{
  v17 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [&unk_28703B950 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(&unk_28703B950);
        }

        if ([*(*(&v12 + 1) + 8 * i) isEqualToString:languageCopy])
        {
          v9 = 0;
          goto LABEL_11;
        }
      }

      v6 = [&unk_28703B950 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)aggregateStringWhileInCountry:(id)country forLanguage:(id)language ccOfNumber:(id)number
{
  countryCopy = country;
  languageCopy = language;
  v10 = [(PNRStringsFileReaderResult *)self shouldOrderCityFirstForLanguage:languageCopy phoneNumberInCC:number];
  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
  city = [(PNRStringsFileReaderResult *)self city];
  if ([city length])
  {
    region = [(PNRStringsFileReaderResult *)self region];
    city2 = [(PNRStringsFileReaderResult *)self city];
    v15 = [region isEqualToString:city2];

    if (v15)
    {
      goto LABEL_5;
    }

    city = [(PNRStringsFileReaderResult *)self city];
    [v11 addObject:city];
  }

LABEL_5:
  region2 = [(PNRStringsFileReaderResult *)self region];
  v17 = [region2 length];

  if (v17)
  {
    region3 = [(PNRStringsFileReaderResult *)self region];
    if (v10)
    {
      [v11 addObject:region3];
    }

    else
    {
      [v11 insertObject:region3 atIndex:0];
    }
  }

  country = [(PNRStringsFileReaderResult *)self country];
  v20 = [country length];

  if (v20)
  {
    country2 = [(PNRStringsFileReaderResult *)self country];
    v22 = [country2 componentsSeparatedByString:@":"];

    if ([v22 count] == 2)
    {
      v23 = [v22 objectAtIndexedSubscript:0];
      if ([countryCopy caseInsensitiveCompare:v23] && (objc_msgSend(v23, "caseInsensitiveCompare:", @"CN") || objc_msgSend(countryCopy, "caseInsensitiveCompare:", @"HK") && objc_msgSend(countryCopy, "caseInsensitiveCompare:", @"MO")))
      {

        v23 = [v22 objectAtIndexedSubscript:1];
        if (v10)
        {
          [v11 addObject:v23];
        }

        else
        {
          [v11 insertObject:v23 atIndex:0];
        }
      }
    }
  }

  v24 = [(PNRStringsFileReaderResult *)self separatorForLanguage:languageCopy];
  v25 = [v11 componentsJoinedByString:v24];

  return v25;
}

- (BOOL)isPlaceHolderForEmpty
{
  country = [(PNRStringsFileReaderResult *)self country];
  if ([country isEqualToString:@":NONE"])
  {
    region = [(PNRStringsFileReaderResult *)self region];
    if ([region isEqualToString:@"NONE"])
    {
      city = [(PNRStringsFileReaderResult *)self city];
      v6 = [city isEqualToString:@"NONE"];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end