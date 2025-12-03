@interface BYGreenController
- (BOOL)_shouldWriteInformedDefaultPlist;
- (BOOL)_shouldWriteInitialPlist;
- (BOOL)_skuRegionCodeIsAmbiguous;
- (BOOL)_writeFilesWithPlist:(id)plist desiredPlistState:(int)state;
- (BYGreenController)init;
- (id)_skuRegionCode;
- (int)_readPlistState;
- (unint64_t)_effectivePlaceForLocaleRegionCode:(id)code;
- (void)_skuRegionCode;
- (void)writeInformedDefaultPlistIfNecessaryForLocaleRegionCode:(id)code;
- (void)writeInitialPlistIfNecessary;
@end

@implementation BYGreenController

- (BYGreenController)init
{
  v6.receiver = self;
  v6.super_class = BYGreenController;
  v2 = [(BYGreenController *)&v6 init];
  v3 = v2;
  if (v2)
  {
    relevantGreenKeys = v2->_relevantGreenKeys;
    v2->_relevantGreenKeys = &unk_1F30A78B0;

    [(BYGreenController *)v3 setPlistStateCache:0xFFFFFFFFLL];
  }

  return v3;
}

- (void)writeInitialPlistIfNecessary
{
  v10 = *MEMORY[0x1E69E9840];
  if ([(BYGreenController *)self _shouldWriteInitialPlist])
  {
    _skuRegionCodeIsAmbiguous = [(BYGreenController *)self _skuRegionCodeIsAmbiguous];
    autoupdatingCurrentLocale = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    countryCode = [autoupdatingCurrentLocale countryCode];
    v6 = [(BYGreenController *)self _writePlistForLocaleRegionCode:countryCode desiredPlistState:!_skuRegionCodeIsAmbiguous];

    v7 = _BYLoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67109120;
      v9[1] = v6;
      _os_log_impl(&dword_1B862F000, v7, OS_LOG_TYPE_DEFAULT, "green file initial did write with success %d", v9, 8u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)writeInformedDefaultPlistIfNecessaryForLocaleRegionCode:(id)code
{
  v12 = *MEMORY[0x1E69E9840];
  codeCopy = code;
  if ([(BYGreenController *)self _shouldWriteInformedDefaultPlist])
  {
    v5 = [(BYGreenController *)self _writePlistForLocaleRegionCode:codeCopy desiredPlistState:1];
    [(BYGreenController *)self setPlistStateCache:1];
    v6 = _BYLoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412546;
      v9 = codeCopy;
      v10 = 1024;
      v11 = v5;
      _os_log_impl(&dword_1B862F000, v6, OS_LOG_TYPE_DEFAULT, "green write informed defaults completed for %@ with success %d", &v8, 0x12u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (int)_readPlistState
{
  v15 = *MEMORY[0x1E69E9840];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  _greenPlistFilePath = [(BYGreenController *)self _greenPlistFilePath];
  v5 = [defaultManager fileExistsAtPath:_greenPlistFilePath];

  if (v5)
  {
    v6 = MEMORY[0x1E695DF20];
    _greenPlistFilePath2 = [(BYGreenController *)self _greenPlistFilePath];
    v8 = [v6 dictionaryWithContentsOfFile:_greenPlistFilePath2];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 objectForKeyedSubscript:@"state"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        intValue = [v9 intValue];
      }

      else
      {
        intValue = 0;
      }
    }

    else
    {
      intValue = 0;
    }

    v11 = _BYLoggingFacility();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14[0] = 67109120;
      v14[1] = intValue;
      _os_log_impl(&dword_1B862F000, v11, OS_LOG_TYPE_DEFAULT, "green file already exists with state %d", v14, 8u);
    }
  }

  else
  {
    v8 = _BYLoggingFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14[0]) = 0;
      _os_log_impl(&dword_1B862F000, v8, OS_LOG_TYPE_DEFAULT, "green file does not exist", v14, 2u);
    }

    intValue = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return intValue;
}

- (BOOL)_shouldWriteInitialPlist
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  _greenPlistFilePath = [(BYGreenController *)self _greenPlistFilePath];
  v5 = [defaultManager fileExistsAtPath:_greenPlistFilePath];

  if (v5)
  {
    v6 = MEMORY[0x1E695DF20];
    _greenPlistFilePath2 = [(BYGreenController *)self _greenPlistFilePath];
    v8 = [v6 dictionaryWithContentsOfFile:_greenPlistFilePath2];

    v9 = [v8 objectForKey:@"state"];
    v10 = v9 == 0;

    v11 = _BYLoggingFacility();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v12)
      {
        v18 = 0;
        v13 = "green file already exists with state key";
        v14 = &v18;
LABEL_10:
        _os_log_impl(&dword_1B862F000, v11, OS_LOG_TYPE_DEFAULT, v13, v14, 2u);
      }
    }

    else if (v12)
    {
      *buf = 0;
      v13 = "green file already exists without state key";
      v14 = buf;
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  v8 = _BYLoggingFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&dword_1B862F000, v8, OS_LOG_TYPE_DEFAULT, "green file does not exist", v16, 2u);
  }

  v10 = 1;
LABEL_12:

  return v10;
}

- (BOOL)_shouldWriteInformedDefaultPlist
{
  v8 = *MEMORY[0x1E69E9840];
  LODWORD(_readPlistState) = [(BYGreenController *)self plistStateCache];
  if (_readPlistState == -1)
  {
    _readPlistState = [(BYGreenController *)self _readPlistState];
    [(BYGreenController *)self setPlistStateCache:_readPlistState];
  }

  if (_readPlistState >= 2)
  {
    v4 = _BYLoggingFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 67109120;
      v7[1] = _readPlistState;
      _os_log_impl(&dword_1B862F000, v4, OS_LOG_TYPE_DEFAULT, "green write informed defaults unnecessary. already in state %d", v7, 8u);
    }
  }

  result = _readPlistState < 2;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)_writeFilesWithPlist:(id)plist desiredPlistState:(int)state
{
  v33 = *MEMORY[0x1E69E9840];
  plistCopy = plist;
  if (plistCopy)
  {
    v31 = 0;
    v7 = [MEMORY[0x1E696AE40] dataWithPropertyList:plistCopy format:200 options:0 error:&v31];
    v24 = v31;
    if (v7)
    {
      _greenPlistFilePath = [(BYGreenController *)self _greenPlistFilePath];
      v23 = [v7 writeToFile:_greenPlistFilePath options:268435457 error:0];
    }

    else
    {
      v23 = 0;
    }

    v10 = state << 6;
    v30 = state << 6;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    selfCopy = self;
    v11 = self->_relevantGreenKeys;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = *v27;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v27 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v17 = [plistCopy objectForKey:*(*(&v26 + 1) + 8 * i)];
          bOOLValue = [v17 BOOLValue];

          if (bOOLValue)
          {
            v10 |= 1 << v14;
            v30 = v10;
          }

          ++v14;
        }

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v26 objects:v32 count:16];
      }

      while (v13);
    }

    v19 = [MEMORY[0x1E695DEF0] dataWithBytes:&v30 length:1];
    _greenBinaryFilePath = [(BYGreenController *)selfCopy _greenBinaryFilePath];
    [v19 writeToFile:_greenBinaryFilePath atomically:1];

    v9 = v23;
  }

  else
  {
    v9 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)_skuRegionCode
{
  v7 = 0;
  v2 = MGCopyAnswerWithError();
  if (v2)
  {
    v3 = v2;
    v4 = [MEMORY[0x1E696AEC0] stringWithString:v2];
    CFRelease(v3);
  }

  else
  {
    v5 = _BYLoggingFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(BYGreenController *)&v7 _skuRegionCode];
    }

    v4 = &stru_1F309EFF0;
  }

  return v4;
}

- (BOOL)_skuRegionCodeIsAmbiguous
{
  _skuRegionCode = [(BYGreenController *)self _skuRegionCode];
  if ([_skuRegionCode isEqualToString:@"ZP"])
  {
    v3 = 1;
  }

  else
  {
    v3 = [_skuRegionCode isEqualToString:&stru_1F309EFF0];
  }

  return v3;
}

- (unint64_t)_effectivePlaceForLocaleRegionCode:(id)code
{
  codeCopy = code;
  _skuRegionCode = [(BYGreenController *)self _skuRegionCode];
  if ([_skuRegionCode isEqualToString:@"CH"])
  {
LABEL_2:
    v6 = 0;
    goto LABEL_7;
  }

  if ([_skuRegionCode isEqualToString:@"TA"])
  {
LABEL_4:
    v6 = 1;
    goto LABEL_7;
  }

  if ([_skuRegionCode isEqualToString:@"ZA"])
  {
    goto LABEL_6;
  }

  if (([_skuRegionCode isEqualToString:@"ZP"] & 1) == 0 && !objc_msgSend(_skuRegionCode, "isEqualToString:", &stru_1F309EFF0))
  {
    v6 = 3;
    goto LABEL_7;
  }

  if ([codeCopy isEqualToString:@"CN"])
  {
    goto LABEL_2;
  }

  if ([codeCopy isEqualToString:@"TW"])
  {
    goto LABEL_4;
  }

  if ([codeCopy isEqualToString:@"HK"])
  {
LABEL_6:
    v6 = 2;
    goto LABEL_7;
  }

  if ([codeCopy isEqualToString:@"MO"])
  {
    v6 = 2;
  }

  else
  {
    v6 = 3;
  }

LABEL_7:

  return v6;
}

- (void)_skuRegionCode
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *self;
  v4[0] = 67109120;
  v4[1] = v2;
  _os_log_error_impl(&dword_1B862F000, a2, OS_LOG_TYPE_ERROR, "green region code MG returned NULL; %d", v4, 8u);
  v3 = *MEMORY[0x1E69E9840];
}

@end