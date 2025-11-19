@interface APOdmlPFLUtilities
+ (float)convertToFloat:(id)a3;
+ (id)convertToArray:(float *)a3 count:(unint64_t)a4;
+ (id)keyForTypes:(id)a3 placementType:(unint64_t)a4 assetManagerType:(unint64_t)a5;
+ (id)pluginStringForPlacementType:(unint64_t)a3;
@end

@implementation APOdmlPFLUtilities

+ (float)convertToFloat:(id)a3
{
  v3 = a3;
  v6 = objc_msgSend_count(v3, v4, v5);
  v9 = malloc_type_malloc(4 * v6, 0x100004052888210uLL);
  for (i = 0; i < objc_msgSend_count(v3, v7, v8); ++i)
  {
    v12 = objc_msgSend_objectAtIndexedSubscript_(v3, v11, i);
    objc_msgSend_floatValue(v12, v13, v14);
    v9[i] = v15;
  }

  return v9;
}

+ (id)convertToArray:(float *)a3 count:(unint64_t)a4
{
  v5 = a3;
  for (i = objc_msgSend_array(MEMORY[0x277CBEB18], a2, a3);
  {
    *&v9 = *v5;
    v10 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v6, v7, v9);
    objc_msgSend_addObject_(i, v11, v10);

    ++v5;
  }

  return i;
}

+ (id)keyForTypes:(id)a3 placementType:(unint64_t)a4 assetManagerType:(unint64_t)a5
{
  v7 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], a2, a3);
  objc_msgSend_appendString_(v7, v8, @"_");
  v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v9, @"%lu", a4);
  objc_msgSend_appendString_(v7, v11, v10);

  objc_msgSend_appendString_(v7, v12, @"_");
  v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v13, @"%lu", a5);
  objc_msgSend_appendString_(v7, v15, v14);

  v18 = objc_msgSend_copy(v7, v16, v17);

  return v18;
}

+ (id)pluginStringForPlacementType:(unint64_t)a3
{
  v3 = kAPOdmlDESPluginSRPPluginName;
  if (a3)
  {
    v3 = kAPOdmlDESPluginSLPPluginName;
  }

  return *v3;
}

@end