@interface PVEffectDebugViewOptions
+ (NSArray)persistedProperties;
+ (PVEffectDebugViewOptions)optionsWithDictionary:(id)a3;
+ (PVEffectDebugViewOptions)optionsWithDictionary:(id)a3 propertyToKeyMap:(id)a4;
+ (PVEffectDebugViewOptions)optionsWithUserDefaults:(id)a3 propertyToKeyMap:(id)a4;
+ (id)keyPathsForValuesAffectingAnyPersistedPropertyChanged;
+ (id)options;
+ (id)propertyToDefaultKeyMap;
+ (id)remapKeysToPropertyKeys:(id)a3 propertyToKeyMap:(id)a4;
- (PVEffectDebugViewOptions)init;
- (id)description;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation PVEffectDebugViewOptions

- (void)dealloc
{
  v3 = +[PVEffectDebugViewOptions persistedProperties];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = *"";
  v5[2] = __35__PVEffectDebugViewOptions_dealloc__block_invoke;
  v5[3] = &unk_279AA54D8;
  v5[4] = self;
  [v3 enumerateObjectsUsingBlock:v5];

  v4.receiver = self;
  v4.super_class = PVEffectDebugViewOptions;
  [(PVEffectDebugViewOptions *)&v4 dealloc];
}

+ (id)options
{
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [a1 propertyToDefaultKeyMap];
  v5 = [a1 optionsWithUserDefaults:v3 propertyToKeyMap:v4];

  return v5;
}

+ (PVEffectDebugViewOptions)optionsWithUserDefaults:(id)a3 propertyToKeyMap:(id)a4
{
  v6 = a4;
  v7 = [a3 dictionaryRepresentation];
  v8 = [a1 optionsWithDictionary:v7 propertyToKeyMap:v6];

  return v8;
}

+ (id)remapKeysToPropertyKeys:(id)a3 propertyToKeyMap:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v6, "count")}];
  v9 = [a1 persistedProperties];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = *"";
  v16[2] = __69__PVEffectDebugViewOptions_remapKeysToPropertyKeys_propertyToKeyMap___block_invoke;
  v16[3] = &unk_279AA7E08;
  v17 = v7;
  v10 = v8;
  v18 = v10;
  v19 = v6;
  v11 = v6;
  v12 = v7;
  [v9 enumerateObjectsUsingBlock:v16];

  v13 = v19;
  v14 = v10;

  return v10;
}

void __69__PVEffectDebugViewOptions_remapKeysToPropertyKeys_propertyToKeyMap___block_invoke(id *a1, void *a2)
{
  v5 = a2;
  v3 = [a1[4] objectForKeyedSubscript:?];
  if (!v3)
  {
    v3 = v5;
  }

  v4 = [a1[6] objectForKeyedSubscript:v3];
  [a1[5] setObject:v4 forKeyedSubscript:v5];
}

+ (PVEffectDebugViewOptions)optionsWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [a1 propertyToDefaultKeyMap];
  v6 = [a1 optionsWithDictionary:v4 propertyToKeyMap:v5];

  return v6;
}

+ (PVEffectDebugViewOptions)optionsWithDictionary:(id)a3 propertyToKeyMap:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setPropertyToKeyMap:v5];
  v8 = [v7 saveToUserDefaultsOnUpdate];
  [v7 setSaveToUserDefaultsOnUpdate:0];
  v9 = [PVEffectDebugViewOptions remapKeysToPropertyKeys:v6 propertyToKeyMap:v5];

  [v7 setValuesForKeysWithDictionary:v9];
  [v7 setSaveToUserDefaultsOnUpdate:v8];

  return v7;
}

- (PVEffectDebugViewOptions)init
{
  v31[1] = *MEMORY[0x277D85DE8];
  v27.receiver = self;
  v27.super_class = PVEffectDebugViewOptions;
  v2 = [(PVEffectDebugViewOptions *)&v27 init];
  if (v2)
  {
    v3 = +[PVEffectDebugViewOptions persistedProperties];
    v22 = MEMORY[0x277D85DD0];
    v23 = *"";
    v24 = __32__PVEffectDebugViewOptions_init__block_invoke;
    v25 = &unk_279AA54D8;
    v4 = v2;
    v26 = v4;
    [v3 enumerateObjectsUsingBlock:&v22];

    v5 = [MEMORY[0x277D75348] magentaColor];
    [(PVEffectDebugViewOptions *)v4 setDocumentBoundingBoxColor:v5];

    v6 = [MEMORY[0x277D75348] yellowColor];
    [(PVEffectDebugViewOptions *)v4 setOutputROIColor:v6];

    v7 = [MEMORY[0x277D75348] cyanColor];
    [(PVEffectDebugViewOptions *)v4 setObjectAlignedBoundingBoxColor:v7];

    v8 = [MEMORY[0x277D75348] greenColor];
    v31[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
    [(PVEffectDebugViewOptions *)v4 setTextBoundingBoxColors:v9];

    v10 = [MEMORY[0x277D75348] orangeColor];
    [(PVEffectDebugViewOptions *)v4 setHitAreaShapeColor:v10];

    v11 = [MEMORY[0x277D75348] cyanColor];
    [(PVEffectDebugViewOptions *)v4 setMidpointColor:v11];

    v12 = [MEMORY[0x277D75348] lightGrayColor];
    [(PVEffectDebugViewOptions *)v4 setOriginColor:v12];

    v13 = [MEMORY[0x277D75348] blueColor];
    v14 = [MEMORY[0x277D75348] redColor];
    v30[0] = v14;
    v30[1] = v13;
    v30[2] = v13;
    v30[3] = v13;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:4];
    [(PVEffectDebugViewOptions *)v4 setCornerPointColors:v15];

    v16 = [MEMORY[0x277D75348] colorWithRed:0.215686275 green:0.431372549 blue:0.0 alpha:1.0];
    v17 = [MEMORY[0x277D75348] redColor];
    v29[0] = v17;
    v29[1] = v16;
    v29[2] = v16;
    v29[3] = v16;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:4];
    [(PVEffectDebugViewOptions *)v4 setTextCornerPointColors:v18];

    v19 = [MEMORY[0x277D75348] yellowColor];
    v28 = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
    [(PVEffectDebugViewOptions *)v4 setHitAreaPointColors:v20];

    [(PVEffectDebugViewOptions *)v4 setSaveToUserDefaultsOnUpdate:1];
  }

  return v2;
}

void __32__PVEffectDebugViewOptions_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 setValue:MEMORY[0x277CBEC38] forKey:v4];
  [*(a1 + 32) addObserver:*(a1 + 32) forKeyPath:v4 options:1 context:0];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v8 = a5;
  if (self->_saveToUserDefaultsOnUpdate)
  {
    v16 = v8;
    v9 = [(NSDictionary *)self->_propertyToKeyMap objectForKeyedSubscript:a3];
    if (v9)
    {
      v10 = *MEMORY[0x277CCA2F0];
      v11 = [v16 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v13 = [v16 objectForKeyedSubscript:v10];
        v14 = [v13 BOOLValue];

        v15 = [MEMORY[0x277CBEBD0] standardUserDefaults];
        [v15 setBool:v14 forKey:v9];
      }
    }

    v8 = v16;
  }
}

+ (NSArray)persistedProperties
{
  if (persistedProperties_onceToken != -1)
  {
    +[PVEffectDebugViewOptions persistedProperties];
  }

  v3 = persistedProperties_s_persistedProperties;

  return v3;
}

void __47__PVEffectDebugViewOptions_persistedProperties__block_invoke()
{
  v0 = persistedProperties_s_persistedProperties;
  persistedProperties_s_persistedProperties = &unk_28732D838;
}

+ (id)propertyToDefaultKeyMap
{
  if (propertyToDefaultKeyMap_onceToken != -1)
  {
    +[PVEffectDebugViewOptions propertyToDefaultKeyMap];
  }

  v3 = propertyToDefaultKeyMap_s_propertyToDefaultKeyMap;

  return v3;
}

void __51__PVEffectDebugViewOptions_propertyToDefaultKeyMap__block_invoke()
{
  v0 = [MEMORY[0x277CBEB38] dictionary];
  [v0 setObject:@"kPVEffectDebugViewEnabled" forKeyedSubscript:@"enabled"];
  [v0 setObject:@"kPVEffectDebugViewOption_ShowDocumentBoundingBox" forKeyedSubscript:@"showDocumentBoundingBox"];
  [v0 setObject:@"kPVEffectDebugViewOption_ShowOutputROI" forKeyedSubscript:@"showOutputROI"];
  [v0 setObject:@"kPVEffectDebugViewOption_ShowObjectAlignedBoundingBox" forKeyedSubscript:@"showObjectAlignedBoundingBox"];
  [v0 setObject:@"kPVEffectDebugViewOption_ShowTextBoundingBoxes" forKeyedSubscript:@"showTextBoundingBoxes"];
  [v0 setObject:@"kPVEffectDebugViewOption_ShowHitAreaShape" forKeyedSubscript:@"showHitAreaShape"];
  [v0 setObject:@"kPVEffectDebugViewOption_ShowOrigin" forKeyedSubscript:@"showOrigin"];
  [v0 setObject:@"kPVEffectDebugViewOption_ShowMidpoint" forKeyedSubscript:@"showMidpoint"];
  [v0 setObject:@"kPVEffectDebugViewOption_ShowCornerPoints" forKeyedSubscript:@"showCornerPoints"];
  [v0 setObject:@"kPVEffectDebugViewOption_ShowTextCornerPoints" forKeyedSubscript:@"showTextCornerPoints"];
  [v0 setObject:@"kPVEffectDebugViewOption_ShowHitAreaPoints" forKeyedSubscript:@"showHitAreaPoints"];
  [v0 setObject:@"kPVEffectDebugViewOption_ShowUserRects" forKeyedSubscript:@"showUserRects"];
  [v0 setObject:@"kPVEffectDebugViewOption_ShowUserPoints" forKeyedSubscript:@"showUserPoints"];
  v1 = propertyToDefaultKeyMap_s_propertyToDefaultKeyMap;
  propertyToDefaultKeyMap_s_propertyToDefaultKeyMap = v0;
}

+ (id)keyPathsForValuesAffectingAnyPersistedPropertyChanged
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [a1 persistedProperties];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v21.receiver = self;
  v21.super_class = PVEffectDebugViewOptions;
  v4 = [(PVEffectDebugViewOptions *)&v21 description];
  v5 = [v3 stringWithFormat:@"%@\n", v4];
  v6 = [v5 mutableCopy];

  v7 = +[PVEffectDebugViewOptions persistedProperties];
  v8 = [v7 count];

  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v20[3] = 0;
  v9 = +[PVEffectDebugViewOptions persistedProperties];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = *"";
  v19[2] = __39__PVEffectDebugViewOptions_description__block_invoke;
  v19[3] = &unk_279AA7E30;
  v19[4] = v20;
  [v9 enumerateObjectsUsingBlock:v19];

  v10 = +[PVEffectDebugViewOptions persistedProperties];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = *"";
  v14[2] = __39__PVEffectDebugViewOptions_description__block_invoke_2;
  v14[3] = &unk_279AA7E58;
  v17 = v20;
  v11 = v6;
  v15 = v11;
  v16 = self;
  v18 = v8 - 1;
  [v10 enumerateObjectsUsingBlock:v14];

  v12 = v11;
  _Block_object_dispose(v20, 8);

  return v12;
}

void __39__PVEffectDebugViewOptions_description__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 length] > *(*(*(a1 + 32) + 8) + 24))
  {
    *(*(*(a1 + 32) + 8) + 24) = [v3 length];
  }
}

void __39__PVEffectDebugViewOptions_description__block_invoke_2(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = *(*(*(a1 + 48) + 8) + 24);
  v6 = a2;
  v11 = [v6 stringByPaddingToLength:v5 + 4 withString:@" " startingAtIndex:0];
  v7 = *(a1 + 32);
  v8 = [&stru_2872E16E0 stringByPaddingToLength:4 withString:@" " startingAtIndex:0];
  v9 = [*(a1 + 40) valueForKey:v6];

  if (*(a1 + 56) <= a3)
  {
    v10 = &stru_2872E16E0;
  }

  else
  {
    v10 = @"\n";
  }

  [v7 appendFormat:@"%@%@%@%@", v8, v11, v9, v10];
}

@end