@interface OKSettings
+ (BOOL)exportClassSettings:(Class)a3 toJavaScriptContext:(id)a4;
+ (BOOL)isApplyingSettings;
+ (id)_newSettingGetterBlockForKey:(id)a3 ofType:(unint64_t)a4 optionalSubType:(unint64_t)a5 optionalClass:(Class)a6 optionalMapping:(id)a7;
+ (id)_newSettingSetterBlockForKey:(id)a3 ofType:(unint64_t)a4 optionalSubType:(unint64_t)a5 optionalClass:(Class)a6 optionalMapping:(id)a7;
+ (id)objectFromClass:(Class)a3 withSettings:(id)a4 andResolution:(id)a5;
+ (id)transactionsManager;
+ (void)applySettings:(id)a3 toObject:(id)a4 withResolution:(id)a5;
+ (void)applyUpdateBlockOnce:(id)a3 forKey:(id)a4;
+ (void)applyValue:(id)a3 forKey:(id)a4 ofType:(unint64_t)a5 toObject:(id)a6;
+ (void)beginApplyingSettings;
+ (void)commitApplyingSettings;
+ (void)registerApplyingSettingsUpdateBlock:(id)a3 forKey:(id)a4;
+ (void)resetAndApplySettings:(id)a3 toObject:(id)a4 withResolution:(id)a5;
+ (void)resetObject:(id)a3 notRespondingToSettingsKeys:(id)a4 withResolution:(id)a5;
+ (void)resetObject:(id)a3 respondingToSettingsKeys:(id)a4 withResolution:(id)a5;
- (BOOL)hasPendingTransaction;
- (OKSettings)init;
- (id)pendingTransaction;
- (void)beginTransaction;
- (void)commitTransaction;
- (void)dealloc;
- (void)registerUpdateBlock:(id)a3 forKey:(id)a4;
@end

@implementation OKSettings

+ (id)transactionsManager
{
  if (transactionsManager_onceToken != -1)
  {
    +[OKSettings transactionsManager];
  }

  return transactionsManager_transactionsManager;
}

OKSettings *__33__OKSettings_transactionsManager__block_invoke()
{
  result = objc_alloc_init(OKSettings);
  transactionsManager_transactionsManager = result;
  return result;
}

- (OKSettings)init
{
  v4.receiver = self;
  v4.super_class = OKSettings;
  v2 = [(OKSettings *)&v4 init];
  if (v2)
  {
    v2->_transactions = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  return v2;
}

- (void)dealloc
{
  transactions = self->_transactions;
  if (transactions)
  {

    self->_transactions = 0;
  }

  v4.receiver = self;
  v4.super_class = OKSettings;
  [(OKSettings *)&v4 dealloc];
}

- (void)beginTransaction
{
  transactions = self->_transactions;
  objc_sync_enter(transactions);
  [(NSMutableArray *)self->_transactions addObject:objc_alloc_init(OKSettingsTransaction)];

  objc_sync_exit(transactions);
}

- (BOOL)hasPendingTransaction
{
  v2 = self;
  transactions = self->_transactions;
  objc_sync_enter(transactions);
  LOBYTE(v2) = [(NSMutableArray *)v2->_transactions count]!= 0;
  objc_sync_exit(transactions);
  return v2;
}

- (id)pendingTransaction
{
  transactions = self->_transactions;
  objc_sync_enter(transactions);
  v4 = [(NSMutableArray *)self->_transactions lastObject];
  objc_sync_exit(transactions);
  return v4;
}

- (void)registerUpdateBlock:(id)a3 forKey:(id)a4
{
  transactions = self->_transactions;
  objc_sync_enter(transactions);
  [-[OKSettings pendingTransaction](self "pendingTransaction")];

  objc_sync_exit(transactions);
}

- (void)commitTransaction
{
  v15 = *MEMORY[0x277D85DE8];
  transactions = self->_transactions;
  objc_sync_enter(transactions);
  v4 = [(OKSettings *)self pendingTransaction];
  if ([(NSMutableArray *)self->_transactions count]< 2)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [v4 items];
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = *v11;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v10 + 1) + 8 * i);
          if ([v9 updateBlock])
          {
            (*([v9 updateBlock] + 16))();
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }

  else
  {
    [-[NSMutableArray objectAtIndex:](self->_transactions objectAtIndex:{-[NSMutableArray count](self->_transactions, "count") - 2), "mergeWithTransaction:", v4}];
  }

  [(NSMutableArray *)self->_transactions removeLastObject];
  objc_sync_exit(transactions);
}

+ (void)resetAndApplySettings:(id)a3 toObject:(id)a4 withResolution:(id)a5
{
  +[OKSettings beginApplyingSettings];
  +[OKSettings resetObject:notRespondingToSettingsKeys:withResolution:](OKSettings, "resetObject:notRespondingToSettingsKeys:withResolution:", a4, [a3 allKeys], a5);
  [OKSettings applySettings:a3 toObject:a4 withResolution:a5];

  +[OKSettings commitApplyingSettings];
}

+ (void)resetObject:(id)a3 notRespondingToSettingsKeys:(id)a4 withResolution:(id)a5
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277CBEB18] array];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v7 = [a4 countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v46;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v46 != v9)
        {
          objc_enumerationMutation(a4);
        }

        v11 = *(*(&v45 + 1) + 8 * i);
        if ([v11 rangeOfString:@"."] == 0x7FFFFFFFFFFFFFFFLL)
        {
          if ([v11 hasPrefix:@"@"])
          {
            v11 = [v11 substringFromIndex:1];
          }

          [v6 addObject:v11];
        }
      }

      v8 = [a4 countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v8);
  }

  v12 = a3;
  v13 = [objc_opt_class() supportedSettings];
  v14 = [v13 allKeys];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __69__OKSettings_resetObject_notRespondingToSettingsKeys_withResolution___block_invoke;
  v44[3] = &unk_279C8EE58;
  v44[4] = v13;
  v15 = [v14 sortedArrayUsingComparator:v44];
  +[OKSettings beginApplyingSettings];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v16 = [v15 countByEnumeratingWithState:&v40 objects:v49 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v41;
    v38 = *v41;
    v39 = v6;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v41 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v40 + 1) + 8 * j);
        if (([v6 containsObject:v20] & 1) == 0)
        {
          v21 = [v13 objectForKey:v20];
          v22 = [v21 objectForKey:@"enabled"];
          if (!v22 || [v22 BOOLValue])
          {
            v23 = [objc_msgSend(v21 objectForKey:{@"type", "unsignedIntegerValue"}];
            v24 = [v21 objectForKey:@"default"];
            if (v24)
            {
              v25 = v24;
              if ((v23 - 301) <= 0x12A && [v24 isEqual:{objc_msgSend(MEMORY[0x277CBEB68], "null")}])
              {
                v26 = [MEMORY[0x277CBEB68] null];
              }

              else
              {
                v27 = [objc_msgSend(v21 objectForKey:{@"subType", "unsignedIntegerValue"}];
                v28 = v17;
                v29 = v15;
                v30 = v13;
                v31 = [v21 objectForKey:@"class"];
                v32 = [v21 objectForKey:@"mapping"];
                v33 = v31;
                v13 = v30;
                v15 = v29;
                v17 = v28;
                v12 = a3;
                v26 = [OKSettingsUtility valueForObject:v25 ofType:v23 optionalSubType:v27 optionalClass:v33 optionalMapping:v32 resolution:a5];
              }

              [a1 applyValue:v26 forKey:v20 ofType:v23 toObject:v12];
            }

            v34 = [v21 objectForKey:@"defaultBlock"];
            v18 = v38;
            v6 = v39;
            if (v34)
            {
              (*(v34 + 16))(v34, v12);
            }
          }
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v40 objects:v49 count:16];
    }

    while (v17);
  }

  +[OKSettings commitApplyingSettings];
}

uint64_t __69__OKSettings_resetObject_notRespondingToSettingsKeys_withResolution___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_msgSend(objc_msgSend(*(a1 + 32) objectForKey:{a2), "objectForKey:", @"priority", "integerValue"}];
  v6 = [objc_msgSend(objc_msgSend(*(a1 + 32) objectForKey:{a3), "objectForKey:", @"priority", "integerValue"}];
  if (!(v5 | v6))
  {
    return -1;
  }

  if (v5 == v6)
  {
    return 0;
  }

  if (v5 < v6)
  {
    return 1;
  }

  return -1;
}

+ (void)resetObject:(id)a3 respondingToSettingsKeys:(id)a4 withResolution:(id)a5
{
  v61 = *MEMORY[0x277D85DE8];
  v7 = [a4 filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x277CCAC30], "predicateWithBlock:", &__block_literal_global_89)}];
  v8 = [MEMORY[0x277CBEB18] arrayWithArray:a4];
  v42 = v7;
  [v8 removeObjectsInArray:v7];
  v48 = a3;
  v9 = [objc_opt_class() supportedSettings];
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __66__OKSettings_resetObject_respondingToSettingsKeys_withResolution___block_invoke_2;
  v57[3] = &unk_279C8EE58;
  v43 = v9;
  v57[4] = v9;
  v47 = v8;
  v10 = [v8 sortedArrayUsingComparator:v57];
  +[OKSettings beginApplyingSettings];
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v10;
  v11 = [v10 countByEnumeratingWithState:&v53 objects:v60 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = @"enabled";
    v14 = @"type";
    v15 = *v54;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v54 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v53 + 1) + 8 * i);
        if ([v47 containsObject:v17])
        {
          v18 = [v43 objectForKey:v17];
          v19 = [v18 objectForKey:v13];
          if (!v19 || [v19 BOOLValue])
          {
            v20 = [objc_msgSend(v18 objectForKey:{v14), "unsignedIntegerValue"}];
            v21 = [v18 objectForKey:@"default"];
            if (v21)
            {
              v22 = v21;
              if ((v20 - 301) <= 0x12A && [v21 isEqual:{objc_msgSend(MEMORY[0x277CBEB68], "null")}])
              {
                v23 = [MEMORY[0x277CBEB68] null];
              }

              else
              {
                v41 = [objc_msgSend(v18 objectForKey:{@"subType", "unsignedIntegerValue"}];
                v24 = v15;
                v25 = v14;
                v26 = v13;
                v27 = v12;
                v28 = [v18 objectForKey:@"class"];
                v29 = [v18 objectForKey:@"mapping"];
                v30 = v28;
                v12 = v27;
                v13 = v26;
                v14 = v25;
                v15 = v24;
                v23 = [OKSettingsUtility valueForObject:v22 ofType:v20 optionalSubType:v41 optionalClass:v30 optionalMapping:v29 resolution:a5];
              }

              [a1 applyValue:v23 forKey:v17 ofType:v20 toObject:v48];
            }

            v31 = [v18 objectForKey:@"defaultBlock"];
            if (v31)
            {
              (*(v31 + 16))(v31, v48);
            }
          }
        }
      }

      v12 = [obj countByEnumeratingWithState:&v53 objects:v60 count:16];
    }

    while (v12);
  }

  if ([v42 count])
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v32 = [v42 countByEnumeratingWithState:&v49 objects:v59 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v50;
      v35 = MEMORY[0x277D62808];
      do
      {
        for (j = 0; j != v33; ++j)
        {
          if (*v50 != v34)
          {
            objc_enumerationMutation(v42);
          }

          v37 = *(*(&v49 + 1) + 8 * j);
          v38 = [objc_msgSend(v37 componentsSeparatedByString:{@".", "firstObject"}];
          v39 = [v48 settingObjectForKey:v38];
          if (v39)
          {
            v40 = v39;
            v58 = [v37 substringFromIndex:{objc_msgSend(v37, "rangeOfString:", @"."}];
            [a1 resetObject:v40 respondingToSettingsKeys:objc_msgSend(MEMORY[0x277CBEA60] withResolution:{"arrayWithObjects:count:", &v58, 1), a5}];
          }

          else if (*v35 >= 4)
          {
            [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Settings/OKSettings.m" line:503 andFormat:@"Cannot find setting object %@ to apply setting path %@", v38, v37];
          }
        }

        v33 = [v42 countByEnumeratingWithState:&v49 objects:v59 count:16];
      }

      while (v33);
    }
  }

  +[OKSettings commitApplyingSettings];
}

uint64_t __66__OKSettings_resetObject_respondingToSettingsKeys_withResolution___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 stringByReplacingOccurrencesOfString:@"@" withString:&stru_287AC35A0];
  v6 = [a3 stringByReplacingOccurrencesOfString:@"@" withString:&stru_287AC35A0];
  v7 = [objc_msgSend(objc_msgSend(*(a1 + 32) objectForKey:{v5), "objectForKey:", @"priority", "integerValue"}];
  v8 = [objc_msgSend(objc_msgSend(*(a1 + 32) objectForKey:{v6), "objectForKey:", @"priority", "integerValue"}];
  if (!(v7 | v8))
  {
    return -1;
  }

  if (v7 == v8)
  {
    return 0;
  }

  if (v7 < v8)
  {
    return 1;
  }

  return -1;
}

+ (void)applyValue:(id)a3 forKey:(id)a4 ofType:(unint64_t)a5 toObject:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"setSetting%@:", objc_msgSend(a4, "stringByCapitalizingFirstCharacter")];
  v13 = NSSelectorFromString(v12);
  if (objc_opt_respondsToSelector())
  {
    if (a3)
    {
      if (a5 - 101 <= 0xC6)
      {
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v33 = __48__OKSettings_applyValue_forKey_ofType_toObject___block_invoke;
        v34 = &unk_279C8EEA0;
        v35 = a6;
        v36 = v13;
        if (a5 > 107)
        {
          if (a5 <= 203)
          {
            if (a5 <= 201)
            {
              if (a5 != 108)
              {
                if (a5 == 201)
                {
                  [a3 CGRectValue];
LABEL_44:
                  v28 = v14;
                  v29 = v15;
                  v30 = v16;
                  v31 = v17;
                  goto LABEL_48;
                }

                goto LABEL_45;
              }

              goto LABEL_32;
            }

            if (a5 == 202)
            {
              [a3 CGPointValue];
            }

            else
            {
              [a3 CGSizeValue];
            }

LABEL_42:
            v28 = v22;
            v29 = v23;
            goto LABEL_48;
          }

          if (a5 <= 205)
          {
            if (a5 == 204)
            {
              [a3 UIEdgeInsetsValue];
              goto LABEL_44;
            }

            [a3 CLLocationCoordinate2DValue];
            goto LABEL_42;
          }

          if (a5 == 206)
          {
            [a3 MKCoordinateRegionValue];
            goto LABEL_44;
          }

          if (a5 == 207)
          {
            [a3 UIOffsetValue];
            goto LABEL_42;
          }

LABEL_45:
          if (*MEMORY[0x277D62808] >= 4)
          {
            [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Settings/OKSettings.m" line:691 andFormat:@"Unsupported value type %@", a5, v26, v27];
          }

          goto LABEL_49;
        }

        if (a5 <= 103)
        {
          if (a5 == 101)
          {
            LOBYTE(v28) = [a3 BOOLValue];
            goto LABEL_48;
          }

          if (a5 == 102)
          {
            [a3 floatValue];
            LODWORD(v28) = v25;
            goto LABEL_48;
          }

          if (a5 != 103)
          {
            goto LABEL_45;
          }
        }

        else
        {
          if (a5 > 105)
          {
LABEL_32:
            v21 = [a3 unsignedIntegerValue];
            goto LABEL_33;
          }

          if (a5 != 104)
          {
            v21 = [a3 integerValue];
LABEL_33:
            v28 = v21;
            goto LABEL_48;
          }
        }

        [a3 doubleValue];
        v28 = v24;
LABEL_48:
        v33(v32, &v28);
        goto LABEL_49;
      }

      if (a5 - 301 > 0x12A)
      {
        if (*MEMORY[0x277D62808] >= 4)
        {
          [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Settings/OKSettings.m" line:711 andFormat:@"An error ocurred applying value to %@: %@ of type %ld is out of range", objc_opt_class(), a5, a4];
        }
      }

      else
      {
        if ([a3 isEqual:{objc_msgSend(MEMORY[0x277CBEB68], "null")}])
        {
          v18 = a6;
          v19 = v13;
          v20 = 0;
        }

        else
        {
          v18 = a6;
          v19 = v13;
          v20 = a3;
        }

        [v18 performSelector:v19 withObject:v20];
      }
    }

    else if (*MEMORY[0x277D62808] >= 4)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Settings/OKSettings.m" line:716 andFormat:@"An error ocurred applying value to %@: %@ of type %ld cannot be converted", objc_opt_class(), a4, a5];
    }
  }

  else if (*MEMORY[0x277D62808] >= 4)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Settings/OKSettings.m" line:721 andFormat:@"An error ocurred applying value to %@: Cannot find selector @%@ for property %@", objc_opt_class(), v12, a4];
  }

LABEL_49:
}

uint64_t __48__OKSettings_applyValue_forKey_ofType_toObject___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:{objc_msgSend(*(a1 + 32), "methodSignatureForSelector:", *(a1 + 40))}];
  [v4 setSelector:*(a1 + 40)];
  [v4 setTarget:*(a1 + 32)];
  [v4 setArgument:a2 atIndex:2];

  return [v4 invoke];
}

+ (void)applySettings:(id)a3 toObject:(id)a4 withResolution:(id)a5
{
  v56 = *MEMORY[0x277D85DE8];
  v7 = [a3 allKeys];
  v8 = [v7 filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x277CCAC30], "predicateWithBlock:", &__block_literal_global_118)}];
  v40 = a3;
  v9 = [MEMORY[0x277CBEB18] arrayWithArray:{objc_msgSend(a3, "allKeys")}];
  v36 = v8;
  [v9 removeObjectsInArray:v8];
  v42 = a4;
  v10 = [objc_opt_class() supportedSettings];
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __52__OKSettings_applySettings_toObject_withResolution___block_invoke_2;
  v51[3] = &unk_279C8EE58;
  v51[4] = v10;
  v11 = [v9 sortedArrayUsingComparator:v51];
  +[OKSettings beginApplyingSettings];
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v11;
  v12 = [v11 countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = @"@";
    v15 = *v48;
    v37 = v10;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v48 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v47 + 1) + 8 * i);
        v18 = v17;
        if ([v17 hasPrefix:v14])
        {
          v18 = [v17 substringFromIndex:1];
        }

        v19 = [v10 objectForKey:v18];
        if (v19)
        {
          v20 = v19;
          v21 = [v19 objectForKey:@"enabled"];
          if (!v21 || [v21 BOOLValue])
          {
            v22 = [objc_msgSend(v20 objectForKey:{@"type", "unsignedIntegerValue"}];
            v23 = v14;
            v24 = [objc_msgSend(v20 objectForKey:{@"subType", "unsignedIntegerValue"}];
            v25 = [v20 objectForKey:@"class"];
            v26 = [v20 objectForKey:@"mapping"];
            v10 = v37;
            v27 = v24;
            v14 = v23;
            [a1 applyValue:+[OKSettingsUtility valueForKey:ofType:settings:optionalSubType:optionalClass:optionalMapping:resolution:](OKSettingsUtility forKey:"valueForKey:ofType:settings:optionalSubType:optionalClass:optionalMapping:resolution:" ofType:v18 toObject:{v22, v40, v27, v25, v26, a5), v18, v22, v42}];
          }
        }

        else if (*MEMORY[0x277D62808] >= 4)
        {
          [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Settings/OKSettings.m" line:792 andFormat:@"An error ocurred applying settings to %@: %@ is not supported", objc_opt_class(), v17];
        }
      }

      v13 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
    }

    while (v13);
  }

  if ([v36 count])
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v28 = [v36 countByEnumeratingWithState:&v43 objects:v54 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v44;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v44 != v30)
          {
            objc_enumerationMutation(v36);
          }

          v32 = *(*(&v43 + 1) + 8 * j);
          v33 = [objc_msgSend(v32 componentsSeparatedByString:{@".", "firstObject"}];
          v34 = [v42 settingObjectForKey:v33];
          if (v34)
          {
            v35 = v34;
            v52 = [v32 substringFromIndex:{objc_msgSend(v32, "rangeOfString:", @"."}];
            v53 = [v40 objectForKey:v32];
            [a1 applySettings:objc_msgSend(MEMORY[0x277CBEAC0] toObject:"dictionaryWithObjects:forKeys:count:" withResolution:{&v53, &v52, 1), v35, a5}];
          }

          else if (*MEMORY[0x277D62808] >= 4)
          {
            [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Settings/OKSettings.m" line:811 andFormat:@"Cannot find setting object %@ to apply setting path %@", v33, v32];
          }
        }

        v29 = [v36 countByEnumeratingWithState:&v43 objects:v54 count:16];
      }

      while (v29);
    }
  }

  +[OKSettings commitApplyingSettings];
}

uint64_t __52__OKSettings_applySettings_toObject_withResolution___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 stringByReplacingOccurrencesOfString:@"@" withString:&stru_287AC35A0];
  v6 = [a3 stringByReplacingOccurrencesOfString:@"@" withString:&stru_287AC35A0];
  v7 = [objc_msgSend(objc_msgSend(*(a1 + 32) objectForKey:{v5), "objectForKey:", @"priority", "integerValue"}];
  v8 = [objc_msgSend(objc_msgSend(*(a1 + 32) objectForKey:{v6), "objectForKey:", @"priority", "integerValue"}];
  if (!(v7 | v8))
  {
    return -1;
  }

  if (v7 == v8)
  {
    return 0;
  }

  if (v7 < v8)
  {
    return 1;
  }

  return -1;
}

+ (id)_newSettingGetterBlockForKey:(id)a3 ofType:(unint64_t)a4 optionalSubType:(unint64_t)a5 optionalClass:(Class)a6 optionalMapping:(id)a7
{
  v9 = NSSelectorFromString([MEMORY[0x277CCACA8] stringWithFormat:@"setting%@", objc_msgSend(a3, "stringByCapitalizingFirstCharacter")]);
  if (a4 <= 303)
  {
    if (a4 > 201)
    {
      if (a4 <= 205)
      {
        if (a4 > 203)
        {
          if (a4 == 204)
          {
            v26[0] = MEMORY[0x277D85DD0];
            v26[1] = 3221225472;
            v26[2] = __96__OKSettings__newSettingGetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_12;
            v26[3] = &__block_descriptor_40_e23__OKEdgeInsets_dddd_8__0l;
            v26[4] = v9;
            v10 = v26;
          }

          else
          {
            v25[0] = MEMORY[0x277D85DD0];
            v25[1] = 3221225472;
            v25[2] = __96__OKSettings__newSettingGetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_13;
            v25[3] = &__block_descriptor_40_e31__OKLocationCoordinate2D_dd_8__0l;
            v25[4] = v9;
            v10 = v25;
          }
        }

        else if (a4 == 202)
        {
          v28[0] = MEMORY[0x277D85DD0];
          v28[1] = 3221225472;
          v28[2] = __96__OKSettings__newSettingGetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_10;
          v28[3] = &__block_descriptor_40_e16__CGPoint_dd_8__0l;
          v28[4] = v9;
          v10 = v28;
        }

        else
        {
          v27[0] = MEMORY[0x277D85DD0];
          v27[1] = 3221225472;
          v27[2] = __96__OKSettings__newSettingGetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_11;
          v27[3] = &__block_descriptor_40_e15__CGSize_dd_8__0l;
          v27[4] = v9;
          v10 = v27;
        }

        return [v10 copy];
      }

      if (a4 > 300)
      {
        if (a4 == 301)
        {
          v22[0] = MEMORY[0x277D85DD0];
          v22[1] = 3221225472;
          v22[2] = __96__OKSettings__newSettingGetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_16;
          v22[3] = &__block_descriptor_40_e15___NSNumber_8__0l;
          v22[4] = v9;
          v10 = v22;
        }

        else if (a4 == 302)
        {
          v21[0] = MEMORY[0x277D85DD0];
          v21[1] = 3221225472;
          v21[2] = __96__OKSettings__newSettingGetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_17;
          v21[3] = &__block_descriptor_40_e15___NSString_8__0l;
          v21[4] = v9;
          v10 = v21;
        }

        else
        {
          v19[0] = MEMORY[0x277D85DD0];
          v19[1] = 3221225472;
          v19[2] = __96__OKSettings__newSettingGetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_19;
          v19[3] = &__block_descriptor_40_e15___NSString_8__0l;
          v19[4] = v9;
          v10 = v19;
        }

        return [v10 copy];
      }

      if (a4 == 206)
      {
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __96__OKSettings__newSettingGetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_14;
        v24[3] = &__block_descriptor_40_e41_____CLLocationCoordinate2D_dd____dd__8__0l;
        v24[4] = v9;
        v10 = v24;
        return [v10 copy];
      }

      if (a4 == 207)
      {
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __96__OKSettings__newSettingGetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_15;
        v23[3] = &__block_descriptor_40_e17__UIOffset_dd_8__0l;
        v23[4] = v9;
        v10 = v23;
        return [v10 copy];
      }
    }

    else if (a4 <= 104)
    {
      if (a4 > 102)
      {
        if (a4 == 103)
        {
          v35[0] = MEMORY[0x277D85DD0];
          v35[1] = 3221225472;
          v35[2] = __96__OKSettings__newSettingGetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_3;
          v35[3] = &__block_descriptor_40_e5_d8__0l;
          v35[4] = v9;
          v10 = v35;
        }

        else
        {
          v34[0] = MEMORY[0x277D85DD0];
          v34[1] = 3221225472;
          v34[2] = __96__OKSettings__newSettingGetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_4;
          v34[3] = &__block_descriptor_40_e5_d8__0l;
          v34[4] = v9;
          v10 = v34;
        }

        return [v10 copy];
      }

      if (a4 == 101)
      {
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __96__OKSettings__newSettingGetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke;
        v37[3] = &__block_descriptor_40_e5_B8__0l;
        v37[4] = v9;
        v10 = v37;
        return [v10 copy];
      }

      if (a4 == 102)
      {
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __96__OKSettings__newSettingGetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_2;
        v36[3] = &__block_descriptor_40_e5_f8__0l;
        v36[4] = v9;
        v10 = v36;
        return [v10 copy];
      }
    }

    else
    {
      if (a4 <= 106)
      {
        if (a4 == 105)
        {
          v33[0] = MEMORY[0x277D85DD0];
          v33[1] = 3221225472;
          v33[2] = __96__OKSettings__newSettingGetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_5;
          v33[3] = &__block_descriptor_40_e5_q8__0l;
          v33[4] = v9;
          v10 = v33;
        }

        else
        {
          v32[0] = MEMORY[0x277D85DD0];
          v32[1] = 3221225472;
          v32[2] = __96__OKSettings__newSettingGetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_6;
          v32[3] = &__block_descriptor_40_e5_Q8__0l;
          v32[4] = v9;
          v10 = v32;
        }

        return [v10 copy];
      }

      switch(a4)
      {
        case 0x6BuLL:
          v31[0] = MEMORY[0x277D85DD0];
          v31[1] = 3221225472;
          v31[2] = __96__OKSettings__newSettingGetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_7;
          v31[3] = &unk_279C8EF68;
          v31[5] = v9;
          v31[4] = a7;
          v10 = v31;
          return [v10 copy];
        case 0x6CuLL:
          v30[0] = MEMORY[0x277D85DD0];
          v30[1] = 3221225472;
          v30[2] = __96__OKSettings__newSettingGetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_8;
          v30[3] = &unk_279C8EF90;
          v30[5] = v9;
          v30[4] = a7;
          v10 = v30;
          return [v10 copy];
        case 0xC9uLL:
          v29[0] = MEMORY[0x277D85DD0];
          v29[1] = 3221225472;
          v29[2] = __96__OKSettings__newSettingGetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_9;
          v29[3] = &__block_descriptor_40_e36__CGRect__CGPoint_dd__CGSize_dd__8__0l;
          v29[4] = v9;
          v10 = v29;
          return [v10 copy];
      }
    }

    goto LABEL_48;
  }

  if (a4 <= 401)
  {
    if (a4 <= 306)
    {
      if (a4 == 304)
      {
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __96__OKSettings__newSettingGetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_20;
        v18[3] = &__block_descriptor_40_e14___UIColor_8__0l;
        v18[4] = v9;
        v10 = v18;
      }

      else if (a4 == 305)
      {
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __96__OKSettings__newSettingGetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_21;
        v17[3] = &__block_descriptor_40_e18___NSIndexPath_8__0l;
        v17[4] = v9;
        v10 = v17;
      }

      else
      {
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __96__OKSettings__newSettingGetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_22;
        v16[3] = &__block_descriptor_40_e27___OKPresentationWidget_8__0l;
        v16[4] = v9;
        v10 = v16;
      }

      return [v10 copy];
    }

    if (a4 - 307 < 2)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __96__OKSettings__newSettingGetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_23;
      v15[3] = &__block_descriptor_40_e26____OKSettingsSupport__8__0l;
      v15[4] = v9;
      v10 = v15;
      return [v10 copy];
    }

    if (a4 == 309)
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __96__OKSettings__newSettingGetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_18;
      v20[3] = &__block_descriptor_40_e25___NSAttributedString_8__0l;
      v20[4] = v9;
      v10 = v20;
      return [v10 copy];
    }

    if (a4 != 401)
    {
      goto LABEL_48;
    }

LABEL_22:
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __96__OKSettings__newSettingGetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_24;
    v14[3] = &__block_descriptor_40_e14___NSArray_8__0l;
    v14[4] = v9;
    v10 = v14;
    return [v10 copy];
  }

  if (a4 - 403 < 5)
  {
    goto LABEL_22;
  }

  if (a4 - 501 < 5)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __96__OKSettings__newSettingGetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_26;
    v12[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
    v12[4] = v9;
    v10 = v12;
    return [v10 copy];
  }

  if (a4 == 402)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __96__OKSettings__newSettingGetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_25;
    v13[3] = &__block_descriptor_40_e14___NSArray_8__0l;
    v13[4] = v9;
    v10 = v13;
    return [v10 copy];
  }

LABEL_48:
  if (*MEMORY[0x277D62808] >= 4)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Settings/OKSettings.m" line:1373 andFormat:@"Not supported type %d", a4];
  }

  return 0;
}

uint64_t __96__OKSettings__newSettingGetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke(uint64_t a1)
{
  v2 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  v3 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:{objc_msgSend(v2, "methodSignatureForSelector:", *(a1 + 32))}];
  [v3 setSelector:*(a1 + 32)];
  [v3 setTarget:v2];
  [v3 invoke];
  v5 = 0;
  [v3 getReturnValue:&v5];
  return v5;
}

float __96__OKSettings__newSettingGetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_2(uint64_t a1)
{
  v2 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  v3 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:{objc_msgSend(v2, "methodSignatureForSelector:", *(a1 + 32))}];
  [v3 setSelector:*(a1 + 32)];
  [v3 setTarget:v2];
  [v3 invoke];
  v5 = 0.0;
  [v3 getReturnValue:&v5];
  return v5;
}

double __96__OKSettings__newSettingGetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_3(uint64_t a1)
{
  v2 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  v3 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:{objc_msgSend(v2, "methodSignatureForSelector:", *(a1 + 32))}];
  [v3 setSelector:*(a1 + 32)];
  [v3 setTarget:v2];
  [v3 invoke];
  v5 = 0.0;
  [v3 getReturnValue:&v5];
  return v5;
}

double __96__OKSettings__newSettingGetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_4(uint64_t a1)
{
  v2 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  v3 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:{objc_msgSend(v2, "methodSignatureForSelector:", *(a1 + 32))}];
  [v3 setSelector:*(a1 + 32)];
  [v3 setTarget:v2];
  [v3 invoke];
  v5 = 0.0;
  [v3 getReturnValue:&v5];
  return v5;
}

uint64_t __96__OKSettings__newSettingGetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_5(uint64_t a1)
{
  v2 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  v3 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:{objc_msgSend(v2, "methodSignatureForSelector:", *(a1 + 32))}];
  [v3 setSelector:*(a1 + 32)];
  [v3 setTarget:v2];
  [v3 invoke];
  v5 = 0;
  [v3 getReturnValue:&v5];
  return v5;
}

uint64_t __96__OKSettings__newSettingGetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_6(uint64_t a1)
{
  v2 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  v3 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:{objc_msgSend(v2, "methodSignatureForSelector:", *(a1 + 32))}];
  [v3 setSelector:*(a1 + 32)];
  [v3 setTarget:v2];
  [v3 invoke];
  v5 = 0;
  [v3 getReturnValue:&v5];
  return v5;
}

uint64_t __96__OKSettings__newSettingGetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_7(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  v3 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:{objc_msgSend(v2, "methodSignatureForSelector:", *(a1 + 40))}];
  [v3 setSelector:*(a1 + 40)];
  [v3 setTarget:v2];
  [v3 invoke];
  v16 = 0;
  [v3 getReturnValue:&v16];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [*(a1 + 32) allKeys];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v13;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v13 != v7)
    {
      objc_enumerationMutation(v4);
    }

    v9 = *(*(&v12 + 1) + 8 * v8);
    v10 = [objc_msgSend(*(a1 + 32) objectForKey:{v9), "unsignedIntegerValue"}];
    if (v10 == v16)
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

void *__96__OKSettings__newSettingGetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_8(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  v3 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:{objc_msgSend(v2, "methodSignatureForSelector:", *(a1 + 40))}];
  [v3 setSelector:*(a1 + 40)];
  [v3 setTarget:v2];
  [v3 invoke];
  v17 = 0;
  [v3 getReturnValue:&v17];
  v4 = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [*(a1 + 32) allKeys];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = v17;
        if (([objc_msgSend(*(a1 + 32) objectForKey:{v10), "unsignedIntegerValue"}] & v11) != 0)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

double __96__OKSettings__newSettingGetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_9(uint64_t a1)
{
  v2 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  v3 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:{objc_msgSend(v2, "methodSignatureForSelector:", *(a1 + 32))}];
  [v3 setSelector:*(a1 + 32)];
  [v3 setTarget:v2];
  [v3 invoke];
  memset(v5, 0, sizeof(v5));
  [v3 getReturnValue:v5];
  return *v5;
}

double __96__OKSettings__newSettingGetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_10(uint64_t a1)
{
  v2 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  v3 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:{objc_msgSend(v2, "methodSignatureForSelector:", *(a1 + 32))}];
  [v3 setSelector:*(a1 + 32)];
  [v3 setTarget:v2];
  [v3 invoke];
  v5[0] = 0;
  v5[1] = 0;
  [v3 getReturnValue:v5];
  return *v5;
}

double __96__OKSettings__newSettingGetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_11(uint64_t a1)
{
  v2 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  v3 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:{objc_msgSend(v2, "methodSignatureForSelector:", *(a1 + 32))}];
  [v3 setSelector:*(a1 + 32)];
  [v3 setTarget:v2];
  [v3 invoke];
  v5[0] = 0;
  v5[1] = 0;
  [v3 getReturnValue:v5];
  return *v5;
}

double __96__OKSettings__newSettingGetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_12(uint64_t a1)
{
  v2 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  v3 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:{objc_msgSend(v2, "methodSignatureForSelector:", *(a1 + 32))}];
  [v3 setSelector:*(a1 + 32)];
  [v3 setTarget:v2];
  [v3 invoke];
  memset(v5, 0, sizeof(v5));
  [v3 getReturnValue:v5];
  return *v5;
}

double __96__OKSettings__newSettingGetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_13(uint64_t a1)
{
  v2 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  v3 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:{objc_msgSend(v2, "methodSignatureForSelector:", *(a1 + 32))}];
  [v3 setSelector:*(a1 + 32)];
  [v3 setTarget:v2];
  [v3 invoke];
  v5[0] = 0;
  v5[1] = 0;
  [v3 getReturnValue:v5];
  return *v5;
}

double __96__OKSettings__newSettingGetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_14(uint64_t a1)
{
  v2 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  v3 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:{objc_msgSend(v2, "methodSignatureForSelector:", *(a1 + 32))}];
  [v3 setSelector:*(a1 + 32)];
  [v3 setTarget:v2];
  [v3 invoke];
  memset(v5, 0, sizeof(v5));
  [v3 getReturnValue:v5];
  return *v5;
}

double __96__OKSettings__newSettingGetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_15(uint64_t a1)
{
  v2 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  v3 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:{objc_msgSend(v2, "methodSignatureForSelector:", *(a1 + 32))}];
  [v3 setSelector:*(a1 + 32)];
  [v3 setTarget:v2];
  [v3 invoke];
  v5[0] = 0;
  v5[1] = 0;
  [v3 getReturnValue:v5];
  return *v5;
}

uint64_t __96__OKSettings__newSettingGetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_16(uint64_t a1)
{
  v2 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  v3 = *(a1 + 32);

  return [v2 performSelector:v3];
}

uint64_t __96__OKSettings__newSettingGetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_17(uint64_t a1)
{
  v2 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  v3 = *(a1 + 32);

  return [v2 performSelector:v3];
}

uint64_t __96__OKSettings__newSettingGetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_18(uint64_t a1)
{
  v2 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  v3 = *(a1 + 32);

  return [v2 performSelector:v3];
}

uint64_t __96__OKSettings__newSettingGetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_19(uint64_t a1)
{
  v1 = [objc_msgSend(objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v1 absoluteString];
}

uint64_t __96__OKSettings__newSettingGetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_20(uint64_t a1)
{
  v2 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  v3 = *(a1 + 32);

  return [v2 performSelector:v3];
}

uint64_t __96__OKSettings__newSettingGetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_21(uint64_t a1)
{
  v2 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  v3 = *(a1 + 32);

  return [v2 performSelector:v3];
}

uint64_t __96__OKSettings__newSettingGetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_22(uint64_t a1)
{
  v2 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  v3 = *(a1 + 32);

  return [v2 performSelector:v3];
}

uint64_t __96__OKSettings__newSettingGetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_23(uint64_t a1)
{
  v2 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  v3 = *(a1 + 32);

  return [v2 performSelector:v3];
}

uint64_t __96__OKSettings__newSettingGetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_24(uint64_t a1)
{
  v2 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  v3 = *(a1 + 32);

  return [v2 performSelector:v3];
}

void *__96__OKSettings__newSettingGetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_25(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = [objc_msgSend(objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  v2 = [MEMORY[0x277CBEB18] array];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v1);
        }

        [v2 addObject:{objc_msgSend(*(*(&v8 + 1) + 8 * v6++), "absoluteString")}];
      }

      while (v4 != v6);
      v4 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  return v2;
}

uint64_t __96__OKSettings__newSettingGetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_26(uint64_t a1)
{
  v2 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  v3 = *(a1 + 32);

  return [v2 performSelector:v3];
}

+ (id)_newSettingSetterBlockForKey:(id)a3 ofType:(unint64_t)a4 optionalSubType:(unint64_t)a5 optionalClass:(Class)a6 optionalMapping:(id)a7
{
  if (a4 > 303)
  {
    if (a4 <= 308)
    {
      if (a4 > 306)
      {
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __96__OKSettings__newSettingSetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_23;
        v11[3] = &unk_279C8F4B0;
        v11[8] = a4;
        v11[9] = a5;
        v11[4] = a6;
        v11[5] = a7;
        v11[6] = a3;
        v11[7] = a1;
        v7 = v11;
      }

      else if (a4 == 304)
      {
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __96__OKSettings__newSettingSetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_20;
        v14[3] = &unk_279C8F438;
        v14[8] = 304;
        v14[9] = a5;
        v14[4] = a6;
        v14[5] = a7;
        v14[6] = a3;
        v14[7] = a1;
        v7 = v14;
      }

      else if (a4 == 305)
      {
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __96__OKSettings__newSettingSetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_21;
        v13[3] = &unk_279C8F460;
        v13[8] = 305;
        v13[9] = a5;
        v13[4] = a6;
        v13[5] = a7;
        v13[6] = a3;
        v13[7] = a1;
        v7 = v13;
      }

      else
      {
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __96__OKSettings__newSettingSetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_22;
        v12[3] = &unk_279C8F488;
        v12[8] = 306;
        v12[9] = a5;
        v12[4] = a6;
        v12[5] = a7;
        v12[6] = a3;
        v12[7] = a1;
        v7 = v12;
      }

      return [v7 copy];
    }

    if (a4 - 401 < 7)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __96__OKSettings__newSettingSetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_24;
      v10[3] = &unk_279C8F2A8;
      v10[8] = a4;
      v10[9] = a5;
      v10[4] = a6;
      v10[5] = a7;
      v10[6] = a3;
      v10[7] = a1;
      v7 = v10;
      return [v7 copy];
    }

    if (a4 - 501 < 5)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __96__OKSettings__newSettingSetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_25;
      v9[3] = &unk_279C8F4D8;
      v9[8] = a4;
      v9[9] = a5;
      v9[4] = a6;
      v9[5] = a7;
      v9[6] = a3;
      v9[7] = a1;
      v7 = v9;
      return [v7 copy];
    }

    if (a4 == 309)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __96__OKSettings__newSettingSetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_18;
      v16[3] = &unk_279C8F410;
      v16[8] = 309;
      v16[9] = a5;
      v16[4] = a6;
      v16[5] = a7;
      v16[6] = a3;
      v16[7] = a1;
      v7 = v16;
      return [v7 copy];
    }
  }

  else if (a4 > 201)
  {
    if (a4 <= 205)
    {
      if (a4 > 203)
      {
        if (a4 == 204)
        {
          v22[0] = MEMORY[0x277D85DD0];
          v22[1] = 3221225472;
          v22[2] = __96__OKSettings__newSettingSetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_12;
          v22[3] = &unk_279C8F348;
          v22[4] = a3;
          v22[5] = a1;
          v22[6] = 204;
          v7 = v22;
        }

        else
        {
          v21[0] = MEMORY[0x277D85DD0];
          v21[1] = 3221225472;
          v21[2] = __96__OKSettings__newSettingSetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_13;
          v21[3] = &unk_279C8F370;
          v21[4] = a3;
          v21[5] = a1;
          v21[6] = 205;
          v7 = v21;
        }
      }

      else if (a4 == 202)
      {
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __96__OKSettings__newSettingSetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_10;
        v24[3] = &unk_279C8F2F8;
        v24[4] = a3;
        v24[5] = a1;
        v24[6] = 202;
        v7 = v24;
      }

      else
      {
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __96__OKSettings__newSettingSetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_11;
        v23[3] = &unk_279C8F320;
        v23[4] = a3;
        v23[5] = a1;
        v23[6] = 203;
        v7 = v23;
      }

      return [v7 copy];
    }

    if (a4 > 300)
    {
      if (a4 == 301)
      {
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __96__OKSettings__newSettingSetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_16;
        v18[3] = &unk_279C8F3E8;
        v18[8] = 301;
        v18[9] = a5;
        v18[4] = a6;
        v18[5] = a7;
        v18[6] = a3;
        v18[7] = a1;
        v7 = v18;
      }

      else if (a4 == 302)
      {
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __96__OKSettings__newSettingSetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_17;
        v17[3] = &unk_279C8F280;
        v17[8] = 302;
        v17[9] = a5;
        v17[4] = a6;
        v17[5] = a7;
        v17[6] = a3;
        v17[7] = a1;
        v7 = v17;
      }

      else
      {
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __96__OKSettings__newSettingSetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_19;
        v15[3] = &unk_279C8F280;
        v15[8] = 303;
        v15[9] = a5;
        v15[4] = a6;
        v15[5] = a7;
        v15[6] = a3;
        v15[7] = a1;
        v7 = v15;
      }

      return [v7 copy];
    }

    if (a4 == 206)
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __96__OKSettings__newSettingSetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_14;
      v20[3] = &unk_279C8F398;
      v20[4] = a3;
      v20[5] = a1;
      v20[6] = 206;
      v7 = v20;
      return [v7 copy];
    }

    if (a4 == 207)
    {
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __96__OKSettings__newSettingSetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_15;
      v19[3] = &unk_279C8F3C0;
      v19[4] = a3;
      v19[5] = a1;
      v19[6] = 207;
      v7 = v19;
      return [v7 copy];
    }
  }

  else if (a4 <= 104)
  {
    if (a4 > 102)
    {
      if (a4 == 103)
      {
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __96__OKSettings__newSettingSetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_3;
        v31[3] = &unk_279C8F208;
        v31[4] = a3;
        v31[5] = a1;
        v31[6] = 103;
        v7 = v31;
      }

      else
      {
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __96__OKSettings__newSettingSetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_4;
        v30[3] = &unk_279C8F208;
        v30[4] = a3;
        v30[5] = a1;
        v30[6] = 104;
        v7 = v30;
      }

      return [v7 copy];
    }

    if (a4 == 101)
    {
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __96__OKSettings__newSettingSetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke;
      v33[3] = &unk_279C8F1B8;
      v33[4] = a3;
      v33[5] = a1;
      v33[6] = 101;
      v7 = v33;
      return [v7 copy];
    }

    if (a4 == 102)
    {
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __96__OKSettings__newSettingSetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_2;
      v32[3] = &unk_279C8F1E0;
      v32[4] = a3;
      v32[5] = a1;
      v32[6] = 102;
      v7 = v32;
      return [v7 copy];
    }
  }

  else
  {
    if (a4 <= 106)
    {
      if (a4 == 105)
      {
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __96__OKSettings__newSettingSetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_5;
        v29[3] = &unk_279C8F230;
        v29[4] = a3;
        v29[5] = a1;
        v29[6] = 105;
        v7 = v29;
      }

      else
      {
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __96__OKSettings__newSettingSetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_6;
        v28[3] = &unk_279C8F258;
        v28[4] = a3;
        v28[5] = a1;
        v28[6] = 106;
        v7 = v28;
      }

      return [v7 copy];
    }

    switch(a4)
    {
      case 0x6BuLL:
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __96__OKSettings__newSettingSetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_7;
        v27[3] = &unk_279C8F280;
        v27[8] = 107;
        v27[9] = a5;
        v27[4] = a6;
        v27[5] = a7;
        v27[6] = a3;
        v27[7] = a1;
        v7 = v27;
        return [v7 copy];
      case 0x6CuLL:
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __96__OKSettings__newSettingSetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_8;
        v26[3] = &unk_279C8F2A8;
        v26[8] = 108;
        v26[9] = a5;
        v26[4] = a6;
        v26[5] = a7;
        v26[6] = a3;
        v26[7] = a1;
        v7 = v26;
        return [v7 copy];
      case 0xC9uLL:
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __96__OKSettings__newSettingSetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_9;
        v25[3] = &unk_279C8F2D0;
        v25[4] = a3;
        v25[5] = a1;
        v25[6] = 201;
        v7 = v25;
        return [v7 copy];
    }
  }

  if (*MEMORY[0x277D62808] >= 4)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Settings/OKSettings.m" line:1790 andFormat:@"Not supported type %d", a7, a4];
  }

  return 0;
}

uint64_t __96__OKSettings__newSettingSetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke(void *a1, uint64_t a2)
{
  v4 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  [v4 setUserSettingObject:+[OKSettingsUtility normalizedObjectFromValue:](OKSettingsUtility forKey:{"normalizedObjectFromValue:", v5), a1[4]}];
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];

  return [v6 applyValue:v5 forKey:v7 ofType:v8 toObject:v4];
}

uint64_t __96__OKSettings__newSettingSetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_2(void *a1, float a2)
{
  v4 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  *&v5 = a2;
  v6 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
  [v4 setUserSettingObject:+[OKSettingsUtility normalizedObjectFromValue:](OKSettingsUtility forKey:{"normalizedObjectFromValue:", v6), a1[4]}];
  v8 = a1[4];
  v7 = a1[5];
  v9 = a1[6];

  return [v7 applyValue:v6 forKey:v8 ofType:v9 toObject:v4];
}

uint64_t __96__OKSettings__newSettingSetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_3(void *a1, double a2)
{
  v4 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:a2];
  [v4 setUserSettingObject:+[OKSettingsUtility normalizedObjectFromValue:](OKSettingsUtility forKey:{"normalizedObjectFromValue:", v5), a1[4]}];
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];

  return [v6 applyValue:v5 forKey:v7 ofType:v8 toObject:v4];
}

uint64_t __96__OKSettings__newSettingSetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_4(void *a1, double a2)
{
  v4 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:a2];
  [v4 setUserSettingObject:+[OKSettingsUtility normalizedObjectFromValue:](OKSettingsUtility forKey:{"normalizedObjectFromValue:", v5), a1[4]}];
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];

  return [v6 applyValue:v5 forKey:v7 ofType:v8 toObject:v4];
}

uint64_t __96__OKSettings__newSettingSetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_5(void *a1, uint64_t a2)
{
  v4 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  [v4 setUserSettingObject:+[OKSettingsUtility normalizedObjectFromValue:](OKSettingsUtility forKey:{"normalizedObjectFromValue:", v5), a1[4]}];
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];

  return [v6 applyValue:v5 forKey:v7 ofType:v8 toObject:v4];
}

uint64_t __96__OKSettings__newSettingSetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_6(void *a1, uint64_t a2)
{
  v4 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  [v4 setUserSettingObject:+[OKSettingsUtility normalizedObjectFromValue:](OKSettingsUtility forKey:{"normalizedObjectFromValue:", v5), a1[4]}];
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];

  return [v6 applyValue:v5 forKey:v7 ofType:v8 toObject:v4];
}

uint64_t __96__OKSettings__newSettingSetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_7(void *a1, uint64_t a2)
{
  v4 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  v5 = [OKSettingsUtility valueForObject:a2 ofType:a1[8] optionalSubType:a1[9] optionalClass:a1[4] optionalMapping:a1[5] resolution:0];
  [v4 setUserSettingObject:+[OKSettingsUtility normalizedObjectFromValue:](OKSettingsUtility forKey:{"normalizedObjectFromValue:", v5), a1[6]}];
  v7 = a1[6];
  v6 = a1[7];
  v8 = a1[8];

  return [v6 applyValue:v5 forKey:v7 ofType:v8 toObject:v4];
}

uint64_t __96__OKSettings__newSettingSetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_8(void *a1, uint64_t a2)
{
  v4 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  v5 = [OKSettingsUtility normalizedObjectFromValue:[OKSettingsUtility valueForObject:a2 ofType:a1[8] optionalSubType:a1[9] optionalClass:a1[4] optionalMapping:a1[5] resolution:0]];
  [v4 setUserSettingObject:+[OKSettingsUtility normalizedObjectFromValue:](OKSettingsUtility forKey:{"normalizedObjectFromValue:", v5), a1[6]}];
  v7 = a1[6];
  v6 = a1[7];
  v8 = a1[8];

  return [v6 applyValue:v5 forKey:v7 ofType:v8 toObject:v4];
}

uint64_t __96__OKSettings__newSettingSetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_9(void *a1, double a2, double a3, double a4, double a5)
{
  v10 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  v11 = [MEMORY[0x277CCAE60] valueWithCGRect:{a2, a3, a4, a5}];
  [v10 setUserSettingObject:+[OKSettingsUtility normalizedObjectFromValue:](OKSettingsUtility forKey:{"normalizedObjectFromValue:", v11), a1[4]}];
  v13 = a1[4];
  v12 = a1[5];
  v14 = a1[6];

  return [v12 applyValue:v11 forKey:v13 ofType:v14 toObject:v10];
}

uint64_t __96__OKSettings__newSettingSetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_10(void *a1, double a2, double a3)
{
  v6 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  v7 = [MEMORY[0x277CCAE60] valueWithCGPoint:{a2, a3}];
  [v6 setUserSettingObject:+[OKSettingsUtility normalizedObjectFromValue:](OKSettingsUtility forKey:{"normalizedObjectFromValue:", v7), a1[4]}];
  v9 = a1[4];
  v8 = a1[5];
  v10 = a1[6];

  return [v8 applyValue:v7 forKey:v9 ofType:v10 toObject:v6];
}

uint64_t __96__OKSettings__newSettingSetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_11(void *a1, double a2, double a3)
{
  v6 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  v7 = [MEMORY[0x277CCAE60] valueWithCGSize:{a2, a3}];
  [v6 setUserSettingObject:+[OKSettingsUtility normalizedObjectFromValue:](OKSettingsUtility forKey:{"normalizedObjectFromValue:", v7), a1[4]}];
  v9 = a1[4];
  v8 = a1[5];
  v10 = a1[6];

  return [v8 applyValue:v7 forKey:v9 ofType:v10 toObject:v6];
}

uint64_t __96__OKSettings__newSettingSetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_12(void *a1, double a2, double a3, double a4, double a5)
{
  v10 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  v11 = [MEMORY[0x277CCAE60] valueWithUIEdgeInsets:{a2, a3, a4, a5}];
  [v10 setUserSettingObject:+[OKSettingsUtility normalizedObjectFromValue:](OKSettingsUtility forKey:{"normalizedObjectFromValue:", v11), a1[4]}];
  v13 = a1[4];
  v12 = a1[5];
  v14 = a1[6];

  return [v12 applyValue:v11 forKey:v13 ofType:v14 toObject:v10];
}

uint64_t __96__OKSettings__newSettingSetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_13(void *a1, double a2, double a3)
{
  v6 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  v7 = [MEMORY[0x277CCAE60] valueWithCLLocationCoordinate2D:{a2, a3}];
  [v6 setUserSettingObject:+[OKSettingsUtility normalizedObjectFromValue:](OKSettingsUtility forKey:{"normalizedObjectFromValue:", v7), a1[4]}];
  v9 = a1[4];
  v8 = a1[5];
  v10 = a1[6];

  return [v8 applyValue:v7 forKey:v9 ofType:v10 toObject:v6];
}

uint64_t __96__OKSettings__newSettingSetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_14(void *a1, double a2, double a3, double a4, double a5)
{
  v10 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  v11 = [MEMORY[0x277CCAE60] valueWithMKCoordinateRegion:{a2, a3, a4, a5}];
  [v10 setUserSettingObject:+[OKSettingsUtility normalizedObjectFromValue:](OKSettingsUtility forKey:{"normalizedObjectFromValue:", v11), a1[4]}];
  v13 = a1[4];
  v12 = a1[5];
  v14 = a1[6];

  return [v12 applyValue:v11 forKey:v13 ofType:v14 toObject:v10];
}

uint64_t __96__OKSettings__newSettingSetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_15(void *a1, double a2, double a3)
{
  v6 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  v7 = [MEMORY[0x277CCAE60] valueWithUIOffset:{a2, a3}];
  [v6 setUserSettingObject:+[OKSettingsUtility normalizedObjectFromValue:](OKSettingsUtility forKey:{"normalizedObjectFromValue:", v7), a1[4]}];
  v9 = a1[4];
  v8 = a1[5];
  v10 = a1[6];

  return [v8 applyValue:v7 forKey:v9 ofType:v10 toObject:v6];
}

uint64_t __96__OKSettings__newSettingSetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_16(void *a1, uint64_t a2)
{
  v4 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  v5 = [OKSettingsUtility valueForObject:a2 ofType:a1[8] optionalSubType:a1[9] optionalClass:a1[4] optionalMapping:a1[5] resolution:0];
  [v4 setUserSettingObject:+[OKSettingsUtility normalizedObjectFromValue:](OKSettingsUtility forKey:{"normalizedObjectFromValue:", v5), a1[6]}];
  v7 = a1[6];
  v6 = a1[7];
  v8 = a1[8];

  return [v6 applyValue:v5 forKey:v7 ofType:v8 toObject:v4];
}

uint64_t __96__OKSettings__newSettingSetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_17(void *a1, uint64_t a2)
{
  v4 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  v5 = [OKSettingsUtility valueForObject:a2 ofType:a1[8] optionalSubType:a1[9] optionalClass:a1[4] optionalMapping:a1[5] resolution:0];
  [v4 setUserSettingObject:+[OKSettingsUtility normalizedObjectFromValue:](OKSettingsUtility forKey:{"normalizedObjectFromValue:", v5), a1[6]}];
  v7 = a1[6];
  v6 = a1[7];
  v8 = a1[8];

  return [v6 applyValue:v5 forKey:v7 ofType:v8 toObject:v4];
}

uint64_t __96__OKSettings__newSettingSetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_18(void *a1, uint64_t a2)
{
  v4 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  v5 = [OKSettingsUtility valueForObject:a2 ofType:a1[8] optionalSubType:a1[9] optionalClass:a1[4] optionalMapping:a1[5] resolution:0];
  [v4 setUserSettingObject:+[OKSettingsUtility normalizedObjectFromValue:](OKSettingsUtility forKey:{"normalizedObjectFromValue:", v5), a1[6]}];
  v7 = a1[6];
  v6 = a1[7];
  v8 = a1[8];

  return [v6 applyValue:v5 forKey:v7 ofType:v8 toObject:v4];
}

uint64_t __96__OKSettings__newSettingSetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_19(void *a1, uint64_t a2)
{
  v4 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  v5 = [OKSettingsUtility valueForObject:a2 ofType:a1[8] optionalSubType:a1[9] optionalClass:a1[4] optionalMapping:a1[5] resolution:0];
  [v4 setUserSettingObject:+[OKSettingsUtility normalizedObjectFromValue:](OKSettingsUtility forKey:{"normalizedObjectFromValue:", v5), a1[6]}];
  v7 = a1[6];
  v6 = a1[7];
  v8 = a1[8];

  return [v6 applyValue:v5 forKey:v7 ofType:v8 toObject:v4];
}

uint64_t __96__OKSettings__newSettingSetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_20(void *a1, uint64_t a2)
{
  v4 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  v5 = [OKSettingsUtility valueForObject:a2 ofType:a1[8] optionalSubType:a1[9] optionalClass:a1[4] optionalMapping:a1[5] resolution:0];
  [v4 setUserSettingObject:+[OKSettingsUtility normalizedObjectFromValue:](OKSettingsUtility forKey:{"normalizedObjectFromValue:", v5), a1[6]}];
  v7 = a1[6];
  v6 = a1[7];
  v8 = a1[8];

  return [v6 applyValue:v5 forKey:v7 ofType:v8 toObject:v4];
}

uint64_t __96__OKSettings__newSettingSetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_21(void *a1, uint64_t a2)
{
  v4 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  v5 = [OKSettingsUtility valueForObject:a2 ofType:a1[8] optionalSubType:a1[9] optionalClass:a1[4] optionalMapping:a1[5] resolution:0];
  [v4 setUserSettingObject:+[OKSettingsUtility normalizedObjectFromValue:](OKSettingsUtility forKey:{"normalizedObjectFromValue:", v5), a1[6]}];
  v7 = a1[6];
  v6 = a1[7];
  v8 = a1[8];

  return [v6 applyValue:v5 forKey:v7 ofType:v8 toObject:v4];
}

uint64_t __96__OKSettings__newSettingSetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_22(void *a1, uint64_t a2)
{
  v4 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  v5 = [OKSettingsUtility valueForObject:a2 ofType:a1[8] optionalSubType:a1[9] optionalClass:a1[4] optionalMapping:a1[5] resolution:0];
  [v4 setUserSettingObject:+[OKSettingsUtility normalizedObjectFromValue:](OKSettingsUtility forKey:{"normalizedObjectFromValue:", v5), a1[6]}];
  v7 = a1[6];
  v6 = a1[7];
  v8 = a1[8];

  return [v6 applyValue:v5 forKey:v7 ofType:v8 toObject:v4];
}

uint64_t __96__OKSettings__newSettingSetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_23(void *a1, uint64_t a2)
{
  v4 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  v5 = [OKSettingsUtility valueForObject:a2 ofType:a1[8] optionalSubType:a1[9] optionalClass:a1[4] optionalMapping:a1[5] resolution:0];
  [v4 setUserSettingObject:+[OKSettingsUtility normalizedObjectFromValue:](OKSettingsUtility forKey:{"normalizedObjectFromValue:", v5), a1[6]}];
  v7 = a1[6];
  v6 = a1[7];
  v8 = a1[8];

  return [v6 applyValue:v5 forKey:v7 ofType:v8 toObject:v4];
}

uint64_t __96__OKSettings__newSettingSetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_24(void *a1, uint64_t a2)
{
  v4 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  v5 = [OKSettingsUtility valueForObject:a2 ofType:a1[8] optionalSubType:a1[9] optionalClass:a1[4] optionalMapping:a1[5] resolution:0];
  [v4 setUserSettingObject:+[OKSettingsUtility normalizedObjectFromValue:](OKSettingsUtility forKey:{"normalizedObjectFromValue:", v5), a1[6]}];
  v7 = a1[6];
  v6 = a1[7];
  v8 = a1[8];

  return [v6 applyValue:v5 forKey:v7 ofType:v8 toObject:v4];
}

uint64_t __96__OKSettings__newSettingSetterBlockForKey_ofType_optionalSubType_optionalClass_optionalMapping___block_invoke_25(void *a1, uint64_t a2)
{
  v4 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  v5 = [OKSettingsUtility valueForObject:a2 ofType:a1[8] optionalSubType:a1[9] optionalClass:a1[4] optionalMapping:a1[5] resolution:0];
  [v4 setUserSettingObject:+[OKSettingsUtility normalizedObjectFromValue:](OKSettingsUtility forKey:{"normalizedObjectFromValue:", v5), a1[6]}];
  v7 = a1[6];
  v6 = a1[7];
  v8 = a1[8];

  return [v6 applyValue:v5 forKey:v7 ofType:v8 toObject:v4];
}

+ (BOOL)exportClassSettings:(Class)a3 toJavaScriptContext:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = [(objc_class *)a3 supportedSettings];
  v28 = NSStringFromClass(a3);
  v29 = a4;
  cls = a3;
  [a4 setObject:a3 forKeyedSubscript:?];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v33 = [v6 countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (!v33)
  {
    return 1;
  }

  v31 = *MEMORY[0x277CD4620];
  v32 = *v37;
  v30 = *MEMORY[0x277CD4628];
  v26 = *MEMORY[0x277CD4610];
  v27 = *MEMORY[0x277CD4618];
  while (2)
  {
    v7 = 0;
    do
    {
      if (*v37 != v32)
      {
        objc_enumerationMutation(v6);
      }

      v8 = *(*(&v36 + 1) + 8 * v7);
      v9 = [v6 objectForKey:v8];
      v10 = [v9 objectForKey:@"enabled"];
      if (!v10 || [v10 BOOLValue])
      {
        v11 = [objc_msgSend(v9 objectForKey:{@"type", "unsignedIntegerValue"}];
        v12 = [objc_msgSend(v9 objectForKey:{@"subType", "unsignedIntegerValue"}];
        v13 = [v9 objectForKey:@"class"];
        v14 = [v9 objectForKey:@"mapping"];
        v15 = [v9 objectForKey:@"jsExport"];
        v16 = [MEMORY[0x277CBEB38] dictionary];
        if (([v15 isEqualToString:@"readonly"] & 1) != 0 || objc_msgSend(v15, "isEqualToString:", @"readwrite"))
        {
          v17 = NSSelectorFromString([MEMORY[0x277CCACA8] stringWithFormat:@"setting%@", objc_msgSend(v8, "stringByCapitalizingFirstCharacter")]);
          if (!class_respondsToSelector(cls, v17))
          {
            if (*MEMORY[0x277D62808] >= 4)
            {
              [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Settings/OKSettings.m" line:1846 andFormat:@"An error ocurred exporting settings of %@ to JavaScript: Selector %@ cannot be found", cls, NSStringFromSelector(v17)];
            }

            return 0;
          }

          v18 = [a1 _newSettingGetterBlockForKey:v8 ofType:v11 optionalSubType:v12 optionalClass:v13 optionalMapping:v14];
          if (!v18)
          {
            if (*MEMORY[0x277D62808] >= 4)
            {
              [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Settings/OKSettings.m" line:1839 andFormat:@"An error ocurred exporting settings of %@ to JavaScript: Getter cannot be constructed", cls, v25];
            }

            return 0;
          }

          v19 = v18;
          [v16 setObject:v18 forKey:v31];
        }

        if (([v15 isEqualToString:@"writeonly"] & 1) == 0 && !objc_msgSend(v15, "isEqualToString:", @"readwrite"))
        {
          goto LABEL_18;
        }

        v20 = NSSelectorFromString([MEMORY[0x277CCACA8] stringWithFormat:@"setSetting%@:", objc_msgSend(v8, "stringByCapitalizingFirstCharacter")]);
        if (class_respondsToSelector(cls, v20))
        {
          v21 = [a1 _newSettingSetterBlockForKey:v8 ofType:v11 optionalSubType:v12 optionalClass:v13 optionalMapping:v14];
          if (v21)
          {
            v22 = v21;
            [v16 setObject:v21 forKey:v30];

LABEL_18:
            if ([v16 count])
            {
              v40[0] = v27;
              v40[1] = v26;
              v41[0] = MEMORY[0x277CBEC28];
              v41[1] = MEMORY[0x277CBEC38];
              [v16 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v41, v40, 2)}];
              [objc_msgSend(objc_msgSend(v29 objectForKeyedSubscript:{v28), "objectForKeyedSubscript:", @"prototype", "defineProperty:descriptor:", v8, v16}];
            }

            goto LABEL_20;
          }

          if (*MEMORY[0x277D62808] >= 4)
          {
            [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Settings/OKSettings.m" line:1869 andFormat:@"An error ocurred exporting settings of %@ to JavaScript: Setter cannot be constructed", cls, v25];
          }
        }

        else if (*MEMORY[0x277D62808] >= 4)
        {
          [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Settings/OKSettings.m" line:1876 andFormat:@"An error ocurred exporting settings of %@ to JavaScript: Selector %@ cannot be found", cls, NSStringFromSelector(v20)];
        }

        return 0;
      }

LABEL_20:
      ++v7;
    }

    while (v33 != v7);
    v23 = [v6 countByEnumeratingWithState:&v36 objects:v42 count:16];
    result = 1;
    v33 = v23;
    if (v23)
    {
      continue;
    }

    return result;
  }
}

+ (id)objectFromClass:(Class)a3 withSettings:(id)a4 andResolution:(id)a5
{
  v42 = *MEMORY[0x277D85DE8];
  if (([(objc_class *)a3 conformsToProtocol:&unk_287AFD5D0]& 1) != 0 || [(objc_class *)a3 instancesRespondToSelector:sel_initWithSettings_])
  {
    v32 = a3;
    v6 = [(objc_class *)a3 supportedSettings];
    v7 = [MEMORY[0x277CBEB38] dictionary];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v8 = [a4 allKeys];
    v9 = [v8 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (!v9)
    {
      return [[v32 alloc] initWithSettings:v7];
    }

    v10 = v9;
    v11 = @".";
    v36 = *v38;
    while (1)
    {
      v12 = 0;
      do
      {
        if (*v38 != v36)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v37 + 1) + 8 * v12);
        if ([v13 rangeOfString:v11] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v27 = [a4 objectForKey:v13];
          v28 = v7;
          v29 = v13;
          goto LABEL_16;
        }

        v14 = v13;
        if ([v13 hasPrefix:@"@"])
        {
          v14 = [v13 substringFromIndex:1];
        }

        v15 = [v6 objectForKey:v14];
        if (v15)
        {
          v16 = v15;
          v17 = [v15 objectForKey:@"enabled"];
          if (!v17 || [v17 BOOLValue])
          {
            v34 = [objc_msgSend(v16 objectForKey:{@"type", "unsignedIntegerValue"}];
            v18 = [objc_msgSend(v16 objectForKey:{@"subType", "unsignedIntegerValue"}];
            v19 = v10;
            v20 = v11;
            v21 = v7;
            v22 = v8;
            v23 = v6;
            v24 = [v16 objectForKey:@"class"];
            v25 = [v16 objectForKey:@"mapping"];
            v26 = v24;
            v6 = v23;
            v8 = v22;
            v7 = v21;
            v11 = v20;
            v10 = v19;
            v27 = [OKSettingsUtility valueForKey:v14 ofType:v34 settings:a4 optionalSubType:v18 optionalClass:v26 optionalMapping:v25 resolution:a5];
            v28 = v7;
            v29 = v14;
LABEL_16:
            [v28 setObject:v27 forKey:v29];
          }
        }

        else if (*MEMORY[0x277D62808] >= 4)
        {
          [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Settings/OKSettings.m" line:1933 andFormat:@"An error ocurred creating an object from settings: %@ is not supported", v13];
        }

        ++v12;
      }

      while (v10 != v12);
      v30 = [v8 countByEnumeratingWithState:&v37 objects:v41 count:16];
      v10 = v30;
      if (!v30)
      {
        return [[v32 alloc] initWithSettings:v7];
      }
    }
  }

  if (*MEMORY[0x277D62808] >= 4)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Settings/OKSettings.m" line:1942 andFormat:@"An error ocurred creating an object from settings: Class %@ does not respond to initializer", a3];
  }

  return 0;
}

+ (void)beginApplyingSettings
{
  v2 = +[OKSettings transactionsManager];

  [v2 beginTransaction];
}

+ (BOOL)isApplyingSettings
{
  v2 = +[OKSettings transactionsManager];

  return [v2 hasPendingTransaction];
}

+ (void)registerApplyingSettingsUpdateBlock:(id)a3 forKey:(id)a4
{
  v6 = +[OKSettings transactionsManager];

  [v6 registerUpdateBlock:a3 forKey:a4];
}

+ (void)applyUpdateBlockOnce:(id)a3 forKey:(id)a4
{
  if ([a1 isApplyingSettings])
  {

    [a1 registerApplyingSettingsUpdateBlock:a3 forKey:a4];
  }

  else
  {
    v7 = *(a3 + 2);

    v7(a3);
  }
}

+ (void)commitApplyingSettings
{
  v2 = +[OKSettings transactionsManager];

  [v2 commitTransaction];
}

@end