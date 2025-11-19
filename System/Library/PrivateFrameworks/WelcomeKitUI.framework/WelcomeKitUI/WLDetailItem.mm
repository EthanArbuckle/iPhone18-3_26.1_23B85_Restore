@interface WLDetailItem
+ (id)contexts:(id)a3;
+ (id)importDescriptionForType:(int64_t)a3 import:(unint64_t)a4 total:(unint64_t)a5;
+ (id)items:(id)a3;
+ (id)items:(id)a3 size:(unint64_t *)a4;
- (WLDetailItem)initWithType:(int64_t)a3 count:(unint64_t)a4 secondaryText:(id)a5 alternativeTextUsed:(BOOL)a6 symbolFilled:(BOOL)a7 symbolTintColor:(id)a8;
@end

@implementation WLDetailItem

- (WLDetailItem)initWithType:(int64_t)a3 count:(unint64_t)a4 secondaryText:(id)a5 alternativeTextUsed:(BOOL)a6 symbolFilled:(BOOL)a7 symbolTintColor:(id)a8
{
  v9 = a7;
  v12 = a5;
  v13 = a8;
  v21.receiver = self;
  v21.super_class = WLDetailItem;
  v14 = [(WLDetailItem *)&v21 init];
  v15 = v14;
  if (v14)
  {
    [(WLDetailItem *)v14 setSecondaryText:v12];
    [(WLDetailItem *)v15 setSymbolTintColor:v13];
    switch(a3)
    {
      case 0:
        if (v9)
        {
          v16 = @"message.fill";
        }

        else
        {
          v16 = @"message";
        }

        goto LABEL_47;
      case 1:
        if (v9)
        {
          v16 = @"person.2.fill";
        }

        else
        {
          v16 = @"person.2";
        }

        goto LABEL_47;
      case 2:
        if (v9)
        {
          v16 = @"person.2.fill";
        }

        else
        {
          v16 = @"person.2";
        }

        goto LABEL_47;
      case 3:
        [(WLDetailItem *)v15 setSymbol:@"calendar"];
        goto LABEL_48;
      case 4:
        if (v9)
        {
          v16 = @"bookmark.fill";
        }

        else
        {
          v16 = @"bookmark";
        }

        goto LABEL_47;
      case 5:
        if (v9)
        {
          v16 = @"folder.fill";
        }

        else
        {
          v16 = @"folder";
        }

        goto LABEL_47;
      case 6:
        if (v9)
        {
          v16 = @"photo.fill";
        }

        else
        {
          v16 = @"photo";
        }

        goto LABEL_47;
      case 7:
        if (v9)
        {
          v16 = @"photo.fill";
        }

        else
        {
          v16 = @"photo";
        }

        goto LABEL_47;
      case 8:
        if (v9)
        {
          v16 = @"photo.fill.on.rectangle.fill";
        }

        else
        {
          v16 = @"photo.on.rectangle";
        }

        goto LABEL_47;
      case 9:
        if (v9)
        {
          v16 = @"waveform.circle.fill";
        }

        else
        {
          v16 = @"waveform.circle";
        }

        goto LABEL_47;
      case 10:
        if (v9)
        {
          v17 = @"app.badge.fill";
        }

        else
        {
          v17 = @"app.badge";
        }

        goto LABEL_35;
      case 11:
        if (v9)
        {
          v16 = @"envelope.fill";
        }

        else
        {
          v16 = @"envelope";
        }

        goto LABEL_47;
      case 12:
        if (v9)
        {
          v16 = @"app.badge.fill";
        }

        else
        {
          v16 = @"app.badge";
        }

LABEL_47:
        [(WLDetailItem *)v15 setSymbol:v16];
LABEL_48:
        v19 = WLLocalizedString();
        [(WLDetailItem *)v15 setText:v19];

        break;
      case 14:
        [(WLDetailItem *)v15 setSymbol:@"textformat.size"];
        goto LABEL_36;
      case 15:
        [(WLDetailItem *)v15 setSymbol:@"dot.arrowtriangles.up.right.down.left.circle"];
        goto LABEL_36;
      case 16:
        if (v9)
        {
          v17 = @"simcard.fill";
        }

        else
        {
          v17 = @"simcard";
        }

LABEL_35:
        [(WLDetailItem *)v15 setSymbol:v17];
LABEL_36:
        v18 = WLLocalizedString();
        [(WLDetailItem *)v15 setText:v18];

        [(WLDetailItem *)v15 setSecondaryText:0];
        break;
      default:
        break;
    }
  }

  return v15;
}

+ (id)contexts:(id)a3
{
  v25[17] = *MEMORY[0x277D85DE8];
  v24[0] = &unk_2882DF448;
  v3 = a3;
  v23 = [v3 message];
  v25[0] = v23;
  v24[1] = &unk_2882DF460;
  v22 = [v3 contact];
  v25[1] = v22;
  v24[2] = &unk_2882DF478;
  v21 = [v3 callHistory];
  v25[2] = v21;
  v24[3] = &unk_2882DF490;
  v20 = [v3 calendar];
  v25[3] = v20;
  v24[4] = &unk_2882DF4A8;
  v19 = [v3 bookmark];
  v25[4] = v19;
  v24[5] = &unk_2882DF4C0;
  v18 = [v3 file];
  v25[5] = v18;
  v24[6] = &unk_2882DF4D8;
  v17 = [v3 image];
  v25[6] = v17;
  v24[7] = &unk_2882DF4F0;
  v16 = [v3 video];
  v25[7] = v16;
  v24[8] = &unk_2882DF508;
  v4 = [v3 album];
  v25[8] = v4;
  v24[9] = &unk_2882DF520;
  v5 = [v3 voiceMemo];
  v25[9] = v5;
  v24[10] = &unk_2882DF538;
  v6 = [v3 account];
  v25[10] = v6;
  v24[11] = &unk_2882DF550;
  v7 = [v3 application];
  v25[11] = v7;
  v24[12] = &unk_2882DF568;
  v8 = [v3 placeholder];
  v25[12] = v8;
  v24[13] = &unk_2882DF598;
  v9 = [v3 accessibilitySetting];
  v25[13] = v9;
  v24[14] = &unk_2882DF5B0;
  v10 = [v3 displaySetting];
  v25[14] = v10;
  v24[15] = &unk_2882DF5C8;
  v11 = [v3 container];
  v25[15] = v11;
  v24[16] = &unk_2882DF580;
  v12 = [v3 sim];

  v25[16] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:17];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)items:(id)a3 size:(unint64_t *)a4
{
  v25 = a4;
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[WLDetailItem order];
  v27 = v4;
  v32 = [WLDetailItem contexts:v4];
  v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v6 setNumberStyle:1];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v5;
  v34 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (!v34)
  {
    v33 = 0;
    goto LABEL_30;
  }

  v33 = 0;
  v31 = *v36;
  v7 = 0x277CCA000uLL;
  do
  {
    for (i = 0; i != v34; ++i)
    {
      if (*v36 != v31)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v35 + 1) + 8 * i);
      v10 = [v9 integerValue];
      v11 = [v32 objectForKey:v9];
      if ([v11 importCount] || objc_msgSend(v11, "importErrorCount"))
      {
        v12 = [*(v7 + 2992) numberWithUnsignedLongLong:{objc_msgSend(v11, "importCount")}];
        v13 = [v6 stringFromNumber:v12];

        if (v10 == 12 && ![v11 importCount] && objc_msgSend(v11, "importErrorCount"))
        {

          v13 = 0;
        }

        if ([v11 importCount])
        {
          v14 = 1;
        }

        else
        {
          v14 = (v10 - 14) >= 3;
        }

        if (v14)
        {
          v15 = -[WLDetailItem initWithType:count:secondaryText:alternativeTextUsed:symbolFilled:symbolTintColor:]([WLDetailItem alloc], "initWithType:count:secondaryText:alternativeTextUsed:symbolFilled:symbolTintColor:", v10, [v11 importCount], v13, 0, 1, 0);
          [v29 addObject:v15];
        }

        else
        {
          v15 = 0;
        }

        if ([v11 importErrorCount])
        {
          v16 = v7;
          v17 = [*(v7 + 2992) numberWithUnsignedLongLong:{objc_msgSend(v11, "importErrorCount")}];
          v18 = [v6 stringFromNumber:v17];

          v19 = [WLDetailItem alloc];
          v20 = [v11 importErrorCount];
          v21 = [MEMORY[0x277D75348] tertiaryLabelColor];
          v22 = [(WLDetailItem *)v19 initWithType:v10 count:v20 secondaryText:v18 alternativeTextUsed:1 symbolFilled:0 symbolTintColor:v21];

          if (v10 == 10 || v10 == 12)
          {
            v7 = v16;
LABEL_25:

            goto LABEL_26;
          }

          [v28 addObject:v22];
          v7 = v16;
        }

        else
        {
          v18 = v13;
          v22 = v15;
        }

        v33 += [v11 size];
        goto LABEL_25;
      }

LABEL_26:
    }

    v34 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  }

  while (v34);
LABEL_30:

  [v26 addObject:v29];
  if ([v28 count])
  {
    [v26 addObject:v28];
  }

  if (v25)
  {
    *v25 = v33;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v26;
}

+ (id)items:(id)a3
{
  v56 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[WLDetailItem order];
  v39 = v3;
  v5 = [WLDetailItem contexts:v3];
  v6 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_2882DF550, &unk_2882DF5C8, 0}];
  v49 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_2882DF598, &unk_2882DF5B0, &unk_2882DF580, 0}];
  v43 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_2882DF4D8, &unk_2882DF4F0, &unk_2882DF520, 0}];
  v45 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v48 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v38 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v38 setNumberStyle:1];
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v4;
  v7 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
  if (v7)
  {
    v8 = v7;
    v50 = *v52;
    v41 = v6;
    v42 = v5;
    do
    {
      v9 = 0;
      v46 = v8;
      do
      {
        if (*v52 != v50)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v51 + 1) + 8 * v9);
        v11 = [v10 integerValue];
        v12 = [v5 objectForKeyedSubscript:v10];
        if ([v12 importCount] || objc_msgSend(v12, "importErrorCount"))
        {
          if ([v49 containsObject:v10])
          {
            if (v11 == 16 && [v12 importErrorCount])
            {
              v13 = WLLocalizedString();
              v14 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"DETAIL_ITEM_WARNING_DESCRIPTION_FOR_SIM"];
              v15 = WLLocalizedString();

              v16 = [[WLDetailItem alloc] initWithType:16 secondaryText:v13 detailText:v15 showDetailDisclosureButton:1 failed:1];
              [v45 addObject:v16];

LABEL_17:
              goto LABEL_18;
            }

            v13 = WLLocalizedString();
          }

          else
          {
            if ([v12 importErrorCount] && (objc_msgSend(v6, "containsObject:", v10) & 1) == 0)
            {
              v20 = MEMORY[0x277CCACA8];
              v21 = WLLocalizedString();
              v13 = [v20 localizedStringWithFormat:v21, objc_msgSend(v12, "importErrorCount") + objc_msgSend(v12, "importCount")];

              v22 = objc_alloc_init(MEMORY[0x277CCAB68]);
              v23 = +[WLDetailItem importDescriptionForType:import:total:](WLDetailItem, "importDescriptionForType:import:total:", v11, [v12 importCount], objc_msgSend(v12, "importErrorCount") + objc_msgSend(v12, "importCount"));
              v44 = v23;
              if ([v23 length])
              {
                [v22 appendString:v23];
              }

              else
              {
                v40 = MEMORY[0x277CCACA8];
                v24 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"DETAIL_ITEM_WARNING_DESCRIPTION_TRANFERRED_%lld_%lld"];
                v25 = WLLocalizedString();
                v26 = [v40 localizedStringWithFormat:v25, objc_msgSend(v12, "importCount"), objc_msgSend(v12, "importErrorCount") + objc_msgSend(v12, "importCount")];
                [v22 appendString:v26];
              }

              [v22 appendString:@"\n\n"];
              v6 = v41;
              if ([v43 containsObject:v10])
              {
                v27 = MEMORY[0x277CCACA8];
                v28 = WLLocalizedString();
                v29 = [v27 localizedStringWithFormat:v28, objc_msgSend(v12, "importErrorCount")];
                [v22 appendString:v29];
              }

              else
              {
                v30 = MEMORY[0x277CCACA8];
                if (v11 == 8)
                {
                  v31 = @"DETAIL_ITEM_WARNING_DESCRITPION_IMPORTED_PHOTO_ALBUM_%lld";
                }

                else
                {
                  v31 = @"DETAIL_ITEM_WARNING_DESCRITPION_IMPORTED_%lld";
                }

                v28 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:v31];
                v29 = WLLocalizedString();
                v32 = [v30 localizedStringWithFormat:v29, objc_msgSend(v12, "importErrorCount")];
                [v22 appendString:v32];
              }

              v5 = v42;

              [v22 appendString:@" "];
              v33 = WLLocalizedString();
              [v22 appendString:v33];

              v16 = [[WLDetailItem alloc] initWithType:v11 secondaryText:v13 detailText:v22 showDetailDisclosureButton:1 failed:0];
              [v45 addObject:v16];

              v8 = v46;
              goto LABEL_17;
            }

            v17 = MEMORY[0x277CCACA8];
            v18 = WLLocalizedString();
            v37 = [v12 importCount];
            v19 = v17;
            v8 = v46;
            v13 = [v19 localizedStringWithFormat:v18, v37];
          }

          v16 = [[WLDetailItem alloc] initWithType:v11 secondaryText:v13 detailText:0 showDetailDisclosureButton:0 failed:0];
          [v48 addObject:v16];
          goto LABEL_17;
        }

LABEL_18:

        ++v9;
      }

      while (v8 != v9);
      v34 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
      v8 = v34;
    }

    while (v34);
  }

  [v45 addObjectsFromArray:v48];
  v35 = *MEMORY[0x277D85DE8];

  return v45;
}

+ (id)importDescriptionForType:(int64_t)a3 import:(unint64_t)a4 total:(unint64_t)a5
{
  if (a3 <= 0xF && ((0xCFFFu >> a3) & 1) != 0)
  {
    v7 = off_279EB8D18[a3];
    v8 = MEMORY[0x277CCACA8];
    v9 = WLLocalizedString();
    v10 = [v8 localizedStringWithFormat:v9, a4, a5];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end