@interface PLRevGeoPlace
+ (id)_newFilterSortedPlaceInfos:(id)infos usingPlaceAnnotation:(id)annotation outFoundOrderType:(unint64_t *)type outPreviousOrderType:(unint64_t *)orderType;
+ (id)placeWithMapItem:(id)item placeAnnotation:(id)annotation;
+ (unint64_t)_dominantOrderTypeForPlaceType:(id)type lastOrderType:(unint64_t)orderType;
- (PLRevGeoPlace)initWithCoder:(id)coder;
- (PLRevGeoPlace)initWithPlaceInfosForOrderType:(id)type;
- (id)bestPlaceInfoForOrderType:(unint64_t)type;
@end

@implementation PLRevGeoPlace

- (PLRevGeoPlace)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:PLRevGeoPlacePlaceInfosMapKey];

  if (v8)
  {
    self = [(PLRevGeoPlace *)self initWithPlaceInfosForOrderType:v8];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)bestPlaceInfoForOrderType:(unint64_t)type
{
  placeInfosForOrderType = self->_placeInfosForOrderType;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
  v5 = [(NSDictionary *)placeInfosForOrderType objectForKeyedSubscript:v4];
  firstObject = [v5 firstObject];

  return firstObject;
}

- (PLRevGeoPlace)initWithPlaceInfosForOrderType:(id)type
{
  typeCopy = type;
  v9.receiver = self;
  v9.super_class = PLRevGeoPlace;
  v6 = [(PLRevGeoPlace *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_placeInfosForOrderType, type);
  }

  return v7;
}

+ (unint64_t)_dominantOrderTypeForPlaceType:(id)type lastOrderType:(unint64_t)orderType
{
  intValue = [type intValue];
  if (intValue > 7)
  {
    if ((intValue - 8) >= 4)
    {
      if (intValue == 12 || intValue == 15)
      {
        return 2;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v14 = 4;
      v15 = 9;
      v16 = 14;
      if (orderType <= 0xB)
      {
        v16 = 0;
      }

      if (orderType >= 0xA)
      {
        v15 = v16;
      }

      if (orderType >= 5)
      {
        v14 = v15;
      }

      if (orderType >= 3)
      {
        return v14;
      }

      else
      {
        return 1;
      }
    }
  }

  else
  {
    v6 = 5;
    v7 = 3;
    v8 = 6;
    if (orderType >= 7)
    {
      v8 = 8 * (orderType < 0xA);
    }

    if (orderType >= 5)
    {
      v7 = v8;
    }

    v9 = 14;
    if (intValue != 7)
    {
      v9 = 0;
    }

    if (intValue != 6)
    {
      v7 = v9;
    }

    if (intValue != 4)
    {
      v6 = v7;
    }

    v10 = 12;
    v11 = 10;
    v12 = 7;
    if (intValue != 3)
    {
      v12 = 0;
    }

    if (intValue != 2)
    {
      v11 = v12;
    }

    if (intValue != 1)
    {
      v10 = v11;
    }

    if (intValue <= 3)
    {
      return v10;
    }

    else
    {
      return v6;
    }
  }
}

+ (id)placeWithMapItem:(id)item placeAnnotation:(id)annotation
{
  v62 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  annotationCopy = annotation;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__112180;
  v57 = __Block_byref_object_dispose__112181;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__PLRevGeoPlace_placeWithMapItem_placeAnnotation___block_invoke;
  aBlock[3] = &unk_1E75777E0;
  aBlock[4] = &v53;
  v6 = _Block_copy(aBlock);
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __50__PLRevGeoPlace_placeWithMapItem_placeAnnotation___block_invoke_2;
  v51[3] = &unk_1E7577808;
  v51[4] = &v53;
  v35 = _Block_copy(v51);
  v50 = 0;
  sortedPlaceInfos = [itemCopy sortedPlaceInfos];
  v8 = [sortedPlaceInfos count] == 0;

  if (v8)
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    backupPlaceInfos = [itemCopy backupPlaceInfos];
    v20 = [backupPlaceInfos countByEnumeratingWithState:&v41 objects:v60 count:16];
    if (v20)
    {
      v21 = *v42;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v42 != v21)
          {
            objc_enumerationMutation(backupPlaceInfos);
          }

          v23 = *(*(&v41 + 1) + 8 * i);
          v24 = v50;
          if (v24 <= [v23 dominantOrderType])
          {
            v6[2](v6, v23, [v23 dominantOrderType]);
          }
        }

        v20 = [backupPlaceInfos countByEnumeratingWithState:&v41 objects:v60 count:16];
      }

      while (v20);
    }
  }

  else
  {
    v49 = 0;
    sortedPlaceInfos2 = [itemCopy sortedPlaceInfos];
    v10 = [PLRevGeoPlace _newFilterSortedPlaceInfos:sortedPlaceInfos2 usingPlaceAnnotation:annotationCopy outFoundOrderType:&v50 outPreviousOrderType:&v49];

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v45 objects:v61 count:16];
    if (v12)
    {
      v13 = *v46;
      do
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v46 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v45 + 1) + 8 * j);
          placeType = [v15 placeType];
          v17 = [self _dominantOrderTypeForPlaceType:placeType lastOrderType:v49];

          v6[2](v6, v15, v17);
          v49 = v17;
        }

        v12 = [v11 countByEnumeratingWithState:&v45 objects:v61 count:16];
      }

      while (v12);
    }

    v18 = [v54[5] objectForKeyedSubscript:&unk_1F0FBED88];
    v35[2](v35, v18, 1);
    v35[2](v35, v18, 3);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  finalPlaceInfos = [itemCopy finalPlaceInfos];
  v26 = [finalPlaceInfos countByEnumeratingWithState:&v37 objects:v59 count:16];
  if (v26)
  {
    v27 = *v38;
    do
    {
      for (k = 0; k != v26; ++k)
      {
        if (*v38 != v27)
        {
          objc_enumerationMutation(finalPlaceInfos);
        }

        v29 = *(*(&v37 + 1) + 8 * k);
        v30 = v50;
        if (v30 <= [v29 dominantOrderType])
        {
          v6[2](v6, v29, [v29 dominantOrderType]);
        }
      }

      v26 = [finalPlaceInfos countByEnumeratingWithState:&v37 objects:v59 count:16];
    }

    while (v26);
  }

  v31 = [PLRevGeoPlace alloc];
  v32 = [(PLRevGeoPlace *)v31 initWithPlaceInfosForOrderType:v54[5]];

  _Block_object_dispose(&v53, 8);

  return v32;
}

void __50__PLRevGeoPlace_placeWithMapItem_placeAnnotation___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    v18 = v5;
    v6 = [v5 name];
    v7 = [v6 length];

    v5 = v18;
    if (v7)
    {
      v8 = *(*(*(a1 + 32) + 8) + 40);
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
      v10 = [v8 objectForKeyedSubscript:v9];

      if (!v10)
      {
        v10 = [MEMORY[0x1E695DF70] array];
        v11 = *(*(*(a1 + 32) + 8) + 40);
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
        [v11 setObject:v10 forKeyedSubscript:v12];
      }

      v13 = [v18 name];
      v14 = _placeInfosIndexOfPlaceInfoWithName(v10, v13);

      if (v14 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v15 = [PLRevGeoPlaceInfo alloc];
        v16 = [v18 name];
        v17 = [(PLRevGeoPlaceInfo *)v15 initWithPlaceName:v16];

        [v10 addObject:v17];
      }

      else
      {
        v17 = [v10 objectAtIndex:v14];
      }

      [v18 areaInSquareMeters];
      [(PLRevGeoPlaceInfo *)v17 addPlaceInfoArea:?];

      v5 = v18;
    }
  }
}

void __50__PLRevGeoPlace_placeWithMapItem_placeAnnotation___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = *(*(*(a1 + 32) + 8) + 40);
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v8 = [v6 objectForKeyedSubscript:v7];

  if (v8)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        v13 = 0;
        do
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v16 + 1) + 8 * v13) placeName];
          v15 = _placeInfosIndexOfPlaceInfoWithName(v8, v14);
          if (v15 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [v8 removeObjectAtIndex:v15];
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }
  }
}

+ (id)_newFilterSortedPlaceInfos:(id)infos usingPlaceAnnotation:(id)annotation outFoundOrderType:(unint64_t *)type outPreviousOrderType:(unint64_t *)orderType
{
  infosCopy = infos;
  annotationCopy = annotation;
  placeLevel = [annotationCopy placeLevel];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __104__PLRevGeoPlace__newFilterSortedPlaceInfos_usingPlaceAnnotation_outFoundOrderType_outPreviousOrderType___block_invoke;
  v19[3] = &unk_1E75777B8;
  v19[4] = &v21;
  v19[5] = self;
  v20 = placeLevel;
  v19[6] = type;
  v13 = [infosCopy indexOfObjectPassingTest:v19];
  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = infosCopy;
  }

  else
  {
    v15 = [infosCopy count];
    v16 = objc_alloc(MEMORY[0x1E695DEC8]);
    v17 = [infosCopy subarrayWithRange:{v13, v15 - v13}];
    v14 = [v16 initWithArray:v17];

    if (orderType)
    {
      *orderType = v22[3];
    }
  }

  _Block_object_dispose(&v21, 8);

  return v14;
}

BOOL __104__PLRevGeoPlace__newFilterSortedPlaceInfos_usingPlaceAnnotation_outFoundOrderType_outPreviousOrderType___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 40);
  v7 = a2;
  v8 = [v7 placeType];
  v9 = [v6 _dominantOrderTypeForPlaceType:v8 lastOrderType:*(*(*(a1 + 32) + 8) + 24)];

  v10 = [v7 placeType];

  v11 = [v10 intValue];
  v12 = *(a1 + 56);

  if (v11 == v12)
  {
    v13 = *(a1 + 48);
    if (v13)
    {
      *v13 = v9;
    }

    *a4 = 1;
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = v9;
  }

  return v11 == v12;
}

@end