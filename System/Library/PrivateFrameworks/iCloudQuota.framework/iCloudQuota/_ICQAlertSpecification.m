@interface _ICQAlertSpecification
+ (id)alertSpecificationDictionarySampleForLevel:(int64_t)a3;
+ (id)alertSpecificationSampleForLevel:(int64_t)a3;
- (_ICQAlertSpecification)init;
- (_ICQAlertSpecification)initWithServerDictionary:(id)a3;
- (id)linkForButtonIndex:(int64_t)a3;
- (void)_setLinks:(id)a3 defaultIndex:(unint64_t)a4;
- (void)setLink:(id)a3 forButtonIndex:(int64_t)a4;
- (void)setLink:(id)a3 forButtonIndex:(int64_t)a4 defaultButton:(BOOL)a5;
- (void)setServerDict:(id)a3;
@end

@implementation _ICQAlertSpecification

- (_ICQAlertSpecification)init
{
  v6.receiver = self;
  v6.super_class = _ICQAlertSpecification;
  v2 = [(_ICQAlertSpecification *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    linkForButtonIndex = v2->_linkForButtonIndex;
    v2->_linkForButtonIndex = v3;
  }

  return v2;
}

- (_ICQAlertSpecification)initWithServerDictionary:(id)a3
{
  v4 = a3;
  v5 = [(_ICQAlertSpecification *)self init];
  v6 = v5;
  if (v5)
  {
    [(_ICQAlertSpecification *)v5 setServerDict:v4];
  }

  return v6;
}

- (id)linkForButtonIndex:(int64_t)a3
{
  v4 = [(_ICQAlertSpecification *)self linkForButtonIndex];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v6 = [v4 objectForKey:v5];

  return v6;
}

- (void)setLink:(id)a3 forButtonIndex:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  if ((a4 - 4) >= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = v6;
    v8 = [(_ICQAlertSpecification *)self linkForButtonIndex];
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    if (v10)
    {
      [v8 setObject:v10 forKey:v9];
    }

    else
    {
      [v8 removeObjectForKey:v9];
    }

    v7 = v10;
  }

  MEMORY[0x2821F96F8](v6, v7);
}

- (void)setLink:(id)a3 forButtonIndex:(int64_t)a4 defaultButton:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  if (v5)
  {
    [(_ICQAlertSpecification *)self setDefaultButtonIndex:a4];
  }

  [(_ICQAlertSpecification *)self setLink:v8 forButtonIndex:a4];
}

- (void)_setLinks:(id)a3 defaultIndex:(unint64_t)a4
{
  v12 = a3;
  v6 = [v12 count];
  if (v6 == 1)
  {
    goto LABEL_7;
  }

  if (v6 == 2)
  {
LABEL_6:
    v10 = [v12 objectAtIndexedSubscript:1];
    [(_ICQAlertSpecification *)self setLink:v10 forButtonIndex:2 defaultButton:a4 == 1];

LABEL_7:
    v11 = [v12 objectAtIndexedSubscript:0];
    [(_ICQAlertSpecification *)self setLink:v11 forButtonIndex:1 defaultButton:a4 == 0];

    v8 = v12;
    goto LABEL_8;
  }

  v7 = v6 == 3;
  v8 = v12;
  if (v7)
  {
    v9 = [v12 objectAtIndexedSubscript:2];
    [(_ICQAlertSpecification *)self setLink:v9 forButtonIndex:3 defaultButton:a4 == 2];

    goto LABEL_6;
  }

LABEL_8:
}

- (void)setServerDict:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_storeStrong(&self->_serverDict, a3);
  v6 = [v5 objectForKeyedSubscript:@"title"];
  [(_ICQAlertSpecification *)self setTitle:v6];

  v7 = [v5 objectForKeyedSubscript:@"mesg"];
  [(_ICQAlertSpecification *)self setMessage:v7];

  v8 = [v5 objectForKeyedSubscript:@"altMesg"];
  [(_ICQAlertSpecification *)self setAltMessage:v8];

  v9 = [v5 objectForKeyedSubscript:@"hideOnLock"];
  v37 = self;
  [(_ICQAlertSpecification *)self setDisableLockScreenAlert:_ICQBooleanForServerObjectDefault(v9, 0)];

  v10 = [v5 objectForKeyedSubscript:@"actions"];
  v11 = v10;
  v38 = v5;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [v5 objectForKeyedSubscript:@"Actions"];
  }

  v13 = v12;

  v14 = v13;
  v15 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v14, "count")}];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v14;
  v16 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = 0;
    v39 = -1;
    v19 = *v42;
    while (1)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v42 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v41 + 1) + 8 * i);
        v22 = _ICQLinkForServerMessageParameter(v21);
        if (v22)
        {
          [v15 addObject:v22];
          v23 = v21;
          v24 = [v23 objectForKeyedSubscript:@"btnDefault"];
          v25 = v24;
          if (v24)
          {
            v26 = v24;
          }

          else
          {
            v26 = [v23 objectForKeyedSubscript:@"BtnDefault"];
          }

          v27 = v26;

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v28 = [v27 BOOLValue];

            if ((v28 & 1) == 0)
            {
              goto LABEL_26;
            }

            goto LABEL_25;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v29 = [v27 isEqualToString:@"0"];

            if (v29)
            {
              goto LABEL_26;
            }

            goto LABEL_25;
          }

          v30 = [v23 objectForKeyedSubscript:@"btnAction"];
          v31 = v30;
          if (v30)
          {
            v32 = v30;
          }

          else
          {
            v32 = [v23 objectForKeyedSubscript:@"BtnAction"];
          }

          v33 = v32;

          if ([v33 isEqualToString:@"CHANGE_STORAGE_PLAN"])
          {

            goto LABEL_25;
          }

          v34 = [v33 isEqualToString:@"MANAGE_STORAGE"];

          if (v34)
          {
LABEL_25:
            v39 = v18;
          }

LABEL_26:
          ++v18;
        }
      }

      v17 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
      if (!v17)
      {
        goto LABEL_31;
      }
    }
  }

  v39 = -1;
LABEL_31:

  v35 = [v15 copy];
  [(_ICQAlertSpecification *)v37 _setLinks:v35 defaultIndex:v39];

  v36 = *MEMORY[0x277D85DE8];
}

+ (id)alertSpecificationSampleForLevel:(int64_t)a3
{
  if (a3 == 3)
  {
    if (AlertSpecificationSampleForFullLevel_onceToken != -1)
    {
      +[_ICQAlertSpecification(ICQDebugging) alertSpecificationSampleForLevel:];
    }

    v3 = &AlertSpecificationSampleForFullLevel_sAlertSpecification;
    goto LABEL_9;
  }

  if (a3 == 2)
  {
    if (AlertSpecificationSampleForAlmostFullLevel_onceToken != -1)
    {
      +[_ICQAlertSpecification(ICQDebugging) alertSpecificationSampleForLevel:];
    }

    v3 = &AlertSpecificationSampleForAlmostFullLevel_sAlertSpecification;
LABEL_9:
    v4 = *v3;
    goto LABEL_11;
  }

  v4 = 0;
LABEL_11:

  return v4;
}

+ (id)alertSpecificationDictionarySampleForLevel:(int64_t)a3
{
  if ((a3 - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return &unk_288443EA0;
  }
}

@end