@interface APOdmlPFLUtilities
+ (float)convertToFloat:(id)float;
+ (id)convertToArray:(float *)array count:(unint64_t)count;
+ (id)keyForTypes:(id)types placementType:(unint64_t)type assetManagerType:(unint64_t)managerType;
+ (id)pluginStringForPlacementType:(unint64_t)type;
@end

@implementation APOdmlPFLUtilities

+ (float)convertToFloat:(id)float
{
  floatCopy = float;
  v6 = objc_msgSend_count(floatCopy, v4, v5);
  v9 = malloc_type_malloc(4 * v6, 0x100004052888210uLL);
  for (i = 0; i < objc_msgSend_count(floatCopy, v7, v8); ++i)
  {
    v12 = objc_msgSend_objectAtIndexedSubscript_(floatCopy, v11, i);
    objc_msgSend_floatValue(v12, v13, v14);
    v9[i] = v15;
  }

  return v9;
}

+ (id)convertToArray:(float *)array count:(unint64_t)count
{
  arrayCopy = array;
  for (i = objc_msgSend_array(MEMORY[0x277CBEB18], a2, array);
  {
    *&v9 = *arrayCopy;
    v10 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v6, v7, v9);
    objc_msgSend_addObject_(i, v11, v10);

    ++arrayCopy;
  }

  return i;
}

+ (id)keyForTypes:(id)types placementType:(unint64_t)type assetManagerType:(unint64_t)managerType
{
  v7 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], a2, types);
  objc_msgSend_appendString_(v7, v8, @"_");
  v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v9, @"%lu", type);
  objc_msgSend_appendString_(v7, v11, v10);

  objc_msgSend_appendString_(v7, v12, @"_");
  v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v13, @"%lu", managerType);
  objc_msgSend_appendString_(v7, v15, v14);

  v18 = objc_msgSend_copy(v7, v16, v17);

  return v18;
}

+ (id)pluginStringForPlacementType:(unint64_t)type
{
  v3 = kAPOdmlDESPluginSRPPluginName;
  if (type)
  {
    v3 = kAPOdmlDESPluginSLPPluginName;
  }

  return *v3;
}

@end