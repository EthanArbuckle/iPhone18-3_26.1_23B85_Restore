Class __initMKMapItem_block_invoke()
{
  if (!MapKitLibrary_frameworkLibrary)
  {
    MapKitLibrary_frameworkLibrary = dlopen("/System/Library/Frameworks/MapKit.framework/MapKit", 2);
    if (!MapKitLibrary_frameworkLibrary)
    {
      __assert_rtn("MapKitLibrary", "STMapItem.m", 22, "frameworkLibrary");
    }
  }

  result = objc_getClass("MKMapItem");
  classMKMapItem = result;
  if (!result)
  {
    __assert_rtn("initMKMapItem_block_invoke", "STMapItem.m", 23, "classMKMapItem");
  }

  return result;
}

id initINVocabularyUpdater()
{
  if (initINVocabularyUpdater_sOnce != -1)
  {
    dispatch_once(&initINVocabularyUpdater_sOnce, &__block_literal_global_346);
  }

  v1 = classINVocabularyUpdater;

  return v1;
}

Class __initINVocabularyUpdater_block_invoke()
{
  if (!IntentsLibrary_frameworkLibrary)
  {
    IntentsLibrary_frameworkLibrary = dlopen("/System/Library/Frameworks/Intents.framework/Intents", 2);
    if (!IntentsLibrary_frameworkLibrary)
    {
      __assert_rtn("IntentsLibrary", "STGenericIntentUtilities.m", 28, "frameworkLibrary");
    }
  }

  result = objc_getClass("INVocabularyUpdater");
  classINVocabularyUpdater = result;
  if (!result)
  {
    __assert_rtn("initINVocabularyUpdater_block_invoke", "STGenericIntentUtilities.m", 29, "classINVocabularyUpdater");
  }

  getINVocabularyUpdaterClass = INVocabularyUpdaterFunction;
  return result;
}

id initHKQuantity()
{
  if (initHKQuantity_sOnce != -1)
  {
    dispatch_once(&initHKQuantity_sOnce, &__block_literal_global_1494);
  }

  v1 = classHKQuantity;

  return v1;
}

Class __initHKQuantity_block_invoke()
{
  if (HealthKitLibrary_sOnce != -1)
  {
    dispatch_once(&HealthKitLibrary_sOnce, &__block_literal_global_64);
  }

  result = objc_getClass("HKQuantity");
  classHKQuantity = result;
  getHKQuantityClass = HKQuantityFunction;
  return result;
}

void *__HealthKitLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/HealthKit.framework/HealthKit", 2);
  HealthKitLibrary_sLib = result;
  return result;
}

__CFString *STStringFromGenericIntentResponseCode(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = MEMORY[0x277CCACA8];
    v3 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
    v1 = [v2 stringWithFormat:@"INVALID_STGenericIntentResponseCode_%@", v3];
  }

  else
  {
    v1 = off_279C52670[a1];
  }

  return v1;
}