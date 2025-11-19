@interface PKTray
+ (id)filter:(id)a3 withBlock:(id)a4;
+ (id)trayWithString:(id)a3 andMediaSource:(id)a4;
+ (id)traysWithMediaSourceSupported:(id)a3 printerInputTrays:(id)a4;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (NSString)localizedName;
- (NSString)name;
- (PKTray)initWithCoder:(id)a3;
- (PKTray)initWithString:(id)a3 andMediaSource:(id)a4;
- (PKTray)initWithUserCodableDictionary:(id)a3;
- (id)mediaName;
- (void)dealloc;
@end

@implementation PKTray

+ (id)traysWithMediaSourceSupported:(id)a3 printerInputTrays:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __58__PKTray_traysWithMediaSourceSupported_printerInputTrays___block_invoke;
  v13[3] = &unk_279A93478;
  v8 = v6;
  v14 = v8;
  v9 = v7;
  v15 = v9;
  [v5 enumerateObjectsUsingBlock:v13];
  v10 = v15;
  v11 = v9;

  return v9;
}

void __58__PKTray_traysWithMediaSourceSupported_printerInputTrays___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v8 = a2;
  if ([*(a1 + 32) count] <= a3)
  {
    v6 = &stru_28719ACE8;
  }

  else
  {
    v5 = [*(a1 + 32) objectAtIndexedSubscript:a3];
    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v5 encoding:4];
  }

  v7 = [PKTray trayWithString:v6 andMediaSource:v8];
  [*(a1 + 40) addObject:v7];
}

+ (id)filter:(id)a3 withBlock:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if (v6[2](v6, v12))
        {
          [v7 addObject:{v12, v14}];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return v7;
}

+ (id)trayWithString:(id)a3 andMediaSource:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[PKTray alloc] initWithString:v5 andMediaSource:v6];

  return v7;
}

- (PKTray)initWithString:(id)a3 andMediaSource:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v20 = a3;
  v21 = a4;
  v23.receiver = self;
  v23.super_class = PKTray;
  v19 = [(PKTray *)&v23 init];
  if (v19)
  {
    v17 = v20;
    v18 = v21;
    v22 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
    v6 = [v17 componentsSeparatedByString:@""];;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v8)
    {
      v9 = *v25;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = [*(*(&v24 + 1) + 8 * i) componentsSeparatedByString:@"="];
          if ([v11 count] == 2)
          {
            v12 = [v11 objectAtIndexedSubscript:0];
            v13 = [v12 lowercaseString];

            v14 = [v11 objectAtIndexedSubscript:1];
            if (!v13)
            {
              v13 = @"unreadable-key";
            }

            if (v14)
            {
              v15 = v14;
            }

            else
            {
              v15 = @"unreadable-value";
            }

            [v22 setObject:v15 forKeyedSubscript:v13];
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v8);
    }

    if (v18)
    {
      [v22 setObject:v18 forKeyedSubscript:@"media-source"];
    }

    [(PKTray *)v19 setTrayDict:v22];
  }

  return v19;
}

- (void)dealloc
{
  [(PKTray *)self setTrayDict:0];
  v3.receiver = self;
  v3.super_class = PKTray;
  [(PKTray *)&v3 dealloc];
}

- (NSString)name
{
  v2 = [(PKTray *)self trayDict];
  v3 = [v2 objectForKeyedSubscript:@"media-source"];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"Unknown";
  }

  return v4;
}

- (NSString)localizedName
{
  v2 = [(PKTray *)self name];
  v3 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.framework.PrintKit"];
  v4 = [v3 localizedStringForKey:v2 value:v2 table:@"InputSlots"];

  return v4;
}

- (id)mediaName
{
  v2 = [(PKTray *)self trayDict];
  v3 = [v2 objectForKeyedSubscript:@"medianame"];

  return v3;
}

- (BOOL)isEmpty
{
  v2 = [(PKTray *)self trayDict];
  v3 = [v2 objectForKeyedSubscript:@"status"];

  if (v3)
  {
    v4 = ([v3 intValue] & 7) == 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(PKTray *)self trayDict];
  v5 = [v3 stringWithFormat:@"PKTray<%p> %@", self, v4];

  return v5;
}

- (PKTray)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PKTray;
  v5 = [(PKTray *)&v10 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [v4 decodeDictionaryWithKeysOfClass:v6 objectsOfClass:objc_opt_class() forKey:@"trayDict"];
    trayDict = v5->_trayDict;
    v5->_trayDict = v7;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(PKTray *)self trayDict];
    v6 = [v4 trayDict];
    v7 = [v5 isEqualToDictionary:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (PKTray)initWithUserCodableDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKTray;
  v5 = [(PKTray *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    trayDict = v5->_trayDict;
    v5->_trayDict = v6;
  }

  return v5;
}

@end