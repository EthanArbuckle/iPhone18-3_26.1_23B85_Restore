@interface RTMapItemExtendedAttributesMO
+ (id)managedObjectWithExtendedAttributes:(id)a3 managedObject:(id)a4 inManagedObjectContext:(id)a5;
@end

@implementation RTMapItemExtendedAttributesMO

+ (id)managedObjectWithExtendedAttributes:(id)a3 managedObject:(id)a4 inManagedObjectContext:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    if (v7)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v19 = __Block_byref_object_copy__99;
      v20 = __Block_byref_object_dispose__99;
      v21 = 0;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __106__RTMapItemExtendedAttributesMO_managedObjectWithExtendedAttributes_managedObject_inManagedObjectContext___block_invoke;
      v13[3] = &unk_2788C5DA0;
      v17 = buf;
      v14 = v8;
      v15 = v9;
      v16 = v7;
      [v15 performBlockAndWait:v13];
      v10 = *(*&buf[8] + 40);

      _Block_object_dispose(buf, 8);
      goto LABEL_8;
    }
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "+[RTMapItemExtendedAttributesMO managedObjectWithExtendedAttributes:managedObject:inManagedObjectContext:]";
      *&buf[12] = 1024;
      *&buf[14] = 31;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: managedObjectContext (in %s:%d)", buf, 0x12u);
    }
  }

  v10 = 0;
LABEL_8:

  return v10;
}

void __106__RTMapItemExtendedAttributesMO_managedObjectWithExtendedAttributes_managedObject_inManagedObjectContext___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2;
  if (!v2)
  {
    v3 = [[RTMapItemExtendedAttributesMO alloc] initWithContext:*(a1 + 40)];
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), v3);
  if (!v2)
  {
  }

  v4 = [*(a1 + 48) identifier];
  [*(*(*(a1 + 56) + 8) + 40) setIdentifier:v4];

  v5 = [*(a1 + 48) addressIdentifier];
  [*(*(*(a1 + 56) + 8) + 40) setAddressIdentifier:v5];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 48), "isMe")}];
  [*(*(*(a1 + 56) + 8) + 40) setIsMe:v6];

  v7 = MEMORY[0x277CCABB0];
  [*(a1 + 48) wifiConfidence];
  v8 = [v7 numberWithDouble:?];
  [*(*(*(a1 + 56) + 8) + 40) setWifiConfidence:v8];

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 48), "wifiFingerprintLabelType")}];
  [*(*(*(a1 + 56) + 8) + 40) setWifiFingerprintLabelType:v9];
}

@end