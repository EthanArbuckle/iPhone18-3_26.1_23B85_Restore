@interface PNRStringsFileReaderResult
- (BOOL)isEqualTo:(id)a3;
- (BOOL)isPlaceHolderForEmpty;
- (BOOL)shouldOrderCityFirstForLanguage:(id)a3 phoneNumberInCC:(id)a4;
- (PNRStringsFileReaderResult)initWithCountry:(id)a3 region:(id)a4 city:(id)a5;
- (id)aggregateStringWhileInCountry:(id)a3 forLanguage:(id)a4 ccOfNumber:(id)a5;
- (id)separatorForLanguage:(id)a3;
- (int64_t)score;
@end

@implementation PNRStringsFileReaderResult

- (PNRStringsFileReaderResult)initWithCountry:(id)a3 region:(id)a4 city:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PNRStringsFileReaderResult;
  v12 = [(PNRStringsFileReaderResult *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_country, a3);
    objc_storeStrong(&v13->_region, a4);
    objc_storeStrong(&v13->_city, a5);
  }

  return v13;
}

- (BOOL)isEqualTo:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(PNRStringsFileReaderResult *)self country];
    v7 = [v5 country];
    if ([v6 isEqualToString:v7])
    {
      v8 = [(PNRStringsFileReaderResult *)self region];
      v9 = [v5 region];
      if ([v8 isEqualToString:v9])
      {
        v10 = [(PNRStringsFileReaderResult *)self city];
        v11 = [v5 city];
        v12 = [v10 isEqualToString:v11];
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
  v3 = [(PNRStringsFileReaderResult *)self country];

  if (v3)
  {
    v4 = 10;
  }

  else
  {
    v4 = 1;
  }

  v5 = [(PNRStringsFileReaderResult *)self region];
  v6 = 2 * v4;
  if (v5)
  {
    v4 *= 10;
  }

  else
  {
    v6 = 0;
  }

  if (v3)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = v6;
  }

  v8 = [(PNRStringsFileReaderResult *)self city];

  v9 = 3 * v4;
  if (!v8)
  {
    v9 = 0;
  }

  return v7 + v9;
}

- (id)separatorForLanguage:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a3;
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

      if ([*(*(&v11 + 1) + 8 * v8) isEqualToString:v3])
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

- (BOOL)shouldOrderCityFirstForLanguage:(id)a3 phoneNumberInCC:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
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

        if ([*(*(&v12 + 1) + 8 * i) isEqualToString:v4])
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

- (id)aggregateStringWhileInCountry:(id)a3 forLanguage:(id)a4 ccOfNumber:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(PNRStringsFileReaderResult *)self shouldOrderCityFirstForLanguage:v9 phoneNumberInCC:a5];
  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
  v12 = [(PNRStringsFileReaderResult *)self city];
  if ([v12 length])
  {
    v13 = [(PNRStringsFileReaderResult *)self region];
    v14 = [(PNRStringsFileReaderResult *)self city];
    v15 = [v13 isEqualToString:v14];

    if (v15)
    {
      goto LABEL_5;
    }

    v12 = [(PNRStringsFileReaderResult *)self city];
    [v11 addObject:v12];
  }

LABEL_5:
  v16 = [(PNRStringsFileReaderResult *)self region];
  v17 = [v16 length];

  if (v17)
  {
    v18 = [(PNRStringsFileReaderResult *)self region];
    if (v10)
    {
      [v11 addObject:v18];
    }

    else
    {
      [v11 insertObject:v18 atIndex:0];
    }
  }

  v19 = [(PNRStringsFileReaderResult *)self country];
  v20 = [v19 length];

  if (v20)
  {
    v21 = [(PNRStringsFileReaderResult *)self country];
    v22 = [v21 componentsSeparatedByString:@":"];

    if ([v22 count] == 2)
    {
      v23 = [v22 objectAtIndexedSubscript:0];
      if ([v8 caseInsensitiveCompare:v23] && (objc_msgSend(v23, "caseInsensitiveCompare:", @"CN") || objc_msgSend(v8, "caseInsensitiveCompare:", @"HK") && objc_msgSend(v8, "caseInsensitiveCompare:", @"MO")))
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

  v24 = [(PNRStringsFileReaderResult *)self separatorForLanguage:v9];
  v25 = [v11 componentsJoinedByString:v24];

  return v25;
}

- (BOOL)isPlaceHolderForEmpty
{
  v3 = [(PNRStringsFileReaderResult *)self country];
  if ([v3 isEqualToString:@":NONE"])
  {
    v4 = [(PNRStringsFileReaderResult *)self region];
    if ([v4 isEqualToString:@"NONE"])
    {
      v5 = [(PNRStringsFileReaderResult *)self city];
      v6 = [v5 isEqualToString:@"NONE"];
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