@interface SFSSymbolAssetInfo
+ (id)localeAgnosticInfo:(id)info allowsPrivate:(BOOL)private;
+ (id)localeSpecificInfo:(id)info locale:(id)locale;
- (SFSSymbolAssetInfo)initWithName:(id)name bundle:(id)bundle andType:(int64_t)type;
@end

@implementation SFSSymbolAssetInfo

- (SFSSymbolAssetInfo)initWithName:(id)name bundle:(id)bundle andType:(int64_t)type
{
  nameCopy = name;
  bundleCopy = bundle;
  v15.receiver = self;
  v15.super_class = SFSSymbolAssetInfo;
  v10 = [(SFSSymbolAssetInfo *)&v15 init];
  name = v10->name;
  v10->name = nameCopy;
  v12 = nameCopy;

  bundle = v10->bundle;
  v10->bundle = bundleCopy;

  v10->bundleType = type;
  return v10;
}

+ (id)localeSpecificInfo:(id)info locale:(id)locale
{
  infoCopy = info;
  localeCopy = locale;
  if (!localeCopy)
  {
    localeCopy = [MEMORY[0x277CBEAF8] currentLocale];
  }

  name = [infoCopy name];
  v8 = [&unk_2842F3000 objectForKeyedSubscript:name];
  v9 = v8;
  if (v8)
  {
    integerValue = [v8 integerValue];
    v11 = [(@ *)&unk_2842F86B8 objectForKeyedSubscript:name];
    v12 = v11;
    if (integerValue <= 2)
    {
      if (integerValue)
      {
        if (integerValue != 1)
        {
          if (integerValue != 2)
          {
            goto LABEL_21;
          }

          v13 = resolveNumeralForLocale(v11, localeCopy);
          if (!v13)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_14:
        v13 = resolveLanguageForLocale(v12, localeCopy);
        if (!v13)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

LABEL_19:
      v13 = resolveDirectionForLocale(v12, localeCopy);
      if (v13)
      {
        goto LABEL_20;
      }

LABEL_21:

      goto LABEL_22;
    }

    switch(integerValue)
    {
      case 3:
        v13 = resolveLanguageForLocale(v11, localeCopy);
        if (!v13)
        {
          goto LABEL_19;
        }

        break;
      case 4:
        v13 = resolveNumeralForLocale(v11, localeCopy);
        if (!v13)
        {
          goto LABEL_19;
        }

        break;
      case 5:
        v13 = resolveNumeralForLocale(v11, localeCopy);
        if (!v13)
        {
          goto LABEL_14;
        }

        break;
      default:
        goto LABEL_21;
    }

LABEL_20:
    v14 = infoCopy[1];
    infoCopy[1] = v13;
    v15 = v13;

    goto LABEL_21;
  }

LABEL_22:

  return infoCopy;
}

+ (id)localeAgnosticInfo:(id)info allowsPrivate:(BOOL)private
{
  privateCopy = private;
  infoCopy = info;
  if (localeAgnosticInfo_allowsPrivate__once != -1)
  {
    +[SFSSymbolAssetInfo localeAgnosticInfo:allowsPrivate:];
  }

  v6 = [localeAgnosticInfo_allowsPrivate___ResolvedCoreGlyphsNameToBundleType objectForKeyedSubscript:infoCopy];
  if (v6)
  {
    v7 = v6;
    v8 = SFSResolveNameAndStatus(infoCopy, v6, privateCopy);
    goto LABEL_13;
  }

  v9 = [&unk_2842F86E0 objectForKeyedSubscript:infoCopy];
  v10 = [localeAgnosticInfo_allowsPrivate___ResolvedCoreGlyphsNameToBundleType objectForKeyedSubscript:v9];
  if (v10)
  {
    v7 = v10;
    v8 = SFSResolveNameAndStatus(v9, v10, privateCopy);
  }

  else
  {
    if (privateCopy)
    {
      v11 = [&unk_2842F8730 objectForKeyedSubscript:infoCopy];

      v12 = [localeAgnosticInfo_allowsPrivate___ResolvedCoreGlyphsNameToBundleType objectForKeyedSubscript:v11];
      if (v12)
      {
        v7 = v12;
        v8 = SFSResolveNameAndStatus(v11, v12, 1);
      }

      else
      {
        v14 = [&unk_2842F8758 objectForKeyedSubscript:infoCopy];
        v7 = [localeAgnosticInfo_allowsPrivate___ResolvedCoreGlyphsNameToBundleType objectForKeyedSubscript:v14];
        if (v7)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
          {
            [SFSSymbolAssetInfo localeAgnosticInfo:infoCopy allowsPrivate:v14];
          }

          v8 = SFSResolveNameAndStatus(v14, v7, 1);
        }

        else
        {

          v8 = 0;
        }
      }

      goto LABEL_12;
    }

    v7 = 0;
    v8 = 0;
  }

  v11 = v9;
LABEL_12:

LABEL_13:

  return v8;
}

+ (void)localeAgnosticInfo:(uint64_t)a1 allowsPrivate:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_fault_impl(&dword_22E44F000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Client requested a temporary SFSymbol alias '%@' and should migrate to the latest name '%@'", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end