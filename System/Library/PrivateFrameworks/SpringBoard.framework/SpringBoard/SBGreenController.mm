@interface SBGreenController
- (BOOL)_writeGreenValuesToDisk:(id)disk withState:(unint64_t)state;
- (SBGreenController)init;
- (id)_defaultValuesDictionaryAndState:(unint64_t *)state;
- (id)_deviceRegionCode;
- (unint64_t)_effectivePlaceIsAmbiguous:(BOOL *)ambiguous;
- (void)_readFileStateFromDisk;
- (void)performPreBuddyWork;
@end

@implementation SBGreenController

- (SBGreenController)init
{
  v6.receiver = self;
  v6.super_class = SBGreenController;
  v2 = [(SBGreenController *)&v6 init];
  v3 = v2;
  if (v2)
  {
    relevantGreenKeys = v2->_relevantGreenKeys;
    v2->_relevantGreenKeys = &unk_28336DE18;

    v3->_fileExistenceState = 0;
  }

  return v3;
}

- (void)performPreBuddyWork
{
  [(SBGreenController *)self _readFileStateFromDisk];
  if (self->_fileExistenceState - 1 <= 1)
  {
    v4 = 0;
    v3 = [(SBGreenController *)self _defaultValuesDictionaryAndState:&v4];
    [(SBGreenController *)self _writeGreenValuesToDisk:v3 withState:v4];
  }
}

- (void)_readFileStateFromDisk
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [defaultManager fileExistsAtPath:@"/var/mobile/Library/Application Support/com.apple.palette.green.plist"];

  v5 = 3;
  if (!v4)
  {
    v5 = 1;
  }

  self->_fileExistenceState = v5;
  if (v4)
  {
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:@"/var/mobile/Library/Application Support/com.apple.palette.green.plist"];
    v7 = [v6 objectForKey:@"state"];

    v8 = SBLogGreen();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
    if (v7)
    {
      if (v9)
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_INFO, "Read non-empty file from disk", buf, 2u);
      }

      v10 = 3;
    }

    else if (v9)
    {
      *v13 = 0;
      v10 = 2;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_INFO, "Empty on disk", v13, 2u);
    }

    else
    {
      v10 = 2;
    }

    self->_fileExistenceState = v10;
  }

  else
  {
    v11 = SBLogGreen();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_INFO, "File not on disk", v12, 2u);
    }

    self->_fileExistenceState = 1;
  }
}

- (id)_defaultValuesDictionaryAndState:(unint64_t *)state
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSArray count](self->_relevantGreenKeys, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_relevantGreenKeys;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    v10 = MEMORY[0x277CBEC28];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 setObject:v10 forKey:*(*(&v14 + 1) + 8 * i)];
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v13 = 0;
  if (([(SBGreenController *)self _effectivePlaceIsAmbiguous:&v13]& 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    [v5 setValue:MEMORY[0x277CBEC38] forKey:@"key2"];
  }

  if (state)
  {
    *state = v13 ^ 1;
  }

  return v5;
}

- (BOOL)_writeGreenValuesToDisk:(id)disk withState:(unint64_t)state
{
  v34 = *MEMORY[0x277D85DE8];
  diskCopy = disk;
  v7 = diskCopy;
  if (diskCopy)
  {
    v8 = [diskCopy mutableCopy];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:state];
    [v8 setObject:v9 forKey:@"state"];

    v32 = 0;
    v25 = v8;
    v10 = [MEMORY[0x277CCAC58] dataWithPropertyList:v8 format:200 options:0 error:&v32];
    v23 = v32;
    if (v10)
    {
      v24 = [v10 writeToFile:@"/var/mobile/Library/Application Support/com.apple.palette.green.plist" options:268435457 error:0];
    }

    else
    {
      v24 = 0;
    }

    v12 = state << 6;
    v31 = state << 6;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    selfCopy = self;
    v13 = self->_relevantGreenKeys;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = 0;
      v17 = *v28;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v28 != v17)
          {
            objc_enumerationMutation(v13);
          }

          v19 = [v7 objectForKey:*(*(&v27 + 1) + 8 * i)];
          bOOLValue = [v19 BOOLValue];

          if (bOOLValue)
          {
            v12 |= 1 << v16;
            v31 = v12;
          }

          ++v16;
        }

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v27 objects:v33 count:16];
      }

      while (v15);
    }

    v21 = [MEMORY[0x277CBEA90] dataWithBytes:&v31 length:1];
    [v21 writeToFile:@"/var/mobile/Library/Application Support/com.apple.palette.green.bin" options:268435457 error:0];

    self = selfCopy;
    v11 = v24;
  }

  else
  {
    v11 = 0;
  }

  [(SBGreenController *)self _readFileStateFromDisk];

  return v11;
}

- (unint64_t)_effectivePlaceIsAmbiguous:(BOOL *)ambiguous
{
  _deviceRegionCode = [(SBGreenController *)self _deviceRegionCode];
  if ([_deviceRegionCode isEqualToString:@"CH"])
  {
    v5 = 0;
    v6 = 0;
  }

  else if ([_deviceRegionCode isEqualToString:@"TA"])
  {
    v6 = 0;
    v5 = 1;
  }

  else if ([_deviceRegionCode isEqualToString:@"ZA"])
  {
    v6 = 0;
    v5 = 2;
  }

  else if (([_deviceRegionCode isEqualToString:@"ZP"] & 1) != 0 || objc_msgSend(_deviceRegionCode, "isEqualToString:", &stru_283094718))
  {
    autoupdatingCurrentLocale = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
    countryCode = [autoupdatingCurrentLocale countryCode];

    if ([countryCode isEqualToString:@"CN"])
    {
      v5 = 0;
    }

    else if ([countryCode isEqualToString:@"TW"])
    {
      v5 = 1;
    }

    else if ([countryCode isEqualToString:@"HK"])
    {
      v5 = 2;
    }

    else if ([countryCode isEqualToString:@"MO"])
    {
      v5 = 2;
    }

    else
    {
      v5 = 3;
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
    v5 = 3;
  }

  if (ambiguous)
  {
    *ambiguous = v6;
  }

  return v5;
}

- (id)_deviceRegionCode
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = MGCopyAnswerWithError();
  if (v2)
  {
    v3 = v2;
    v4 = [MEMORY[0x277CCACA8] stringWithString:v2];
    CFRelease(v3);
  }

  else
  {
    v5 = SBLogGreen();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v8 = 0;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "MG returned NULL; %d", buf, 8u);
    }

    v4 = &stru_283094718;
  }

  return v4;
}

@end